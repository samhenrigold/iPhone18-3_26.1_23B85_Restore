unint64_t _s11MusicJSCore15JSIdentifierSetC11ContentKindO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FA628, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100D12D54()
{
  result = qword_1011BECA0;
  if (!qword_1011BECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BECA0);
  }

  return result;
}

unint64_t sub_100D12DAC()
{
  result = qword_1011BECA8;
  if (!qword_1011BECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BECA8);
  }

  return result;
}

unint64_t sub_100D12E04()
{
  result = qword_1011BECB0;
  if (!qword_1011BECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BECB0);
  }

  return result;
}

unint64_t sub_100D12E5C()
{
  result = qword_1011BECB8;
  if (!qword_1011BECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BECB8);
  }

  return result;
}

unint64_t sub_100D12EB4()
{
  result = qword_1011BECC0;
  if (!qword_1011BECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BECC0);
  }

  return result;
}

void sub_100D12F08(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  v5 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v5;
}

void sub_100D12F60(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
}

double sub_100D12FBC@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;

  return result;
}

uint64_t getEnumTagSinglePayload for JSIdentifierSet.ContentKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSIdentifierSet.ContentKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100D13248(void *a1, SEL *a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 *a2];
}

void JSViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = a1;
  v23[1] = a2;
  sub_1000189C0(a3, v24);
  if (v24[3])
  {
    sub_1000189C0(v24, v22);

    if (swift_dynamicCast())
    {
      v12 = v21[4];
      v11 = v21[5];
      if (a1 == 0xD000000000000017 && 0x8000000100E5F130 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v13 = OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName;
LABEL_7:
        v14 = (v3 + v13);
        swift_beginAccess();
        *v14 = v12;
        v14[1] = v11;

LABEL_8:
        sub_10000959C(v22);
        sub_1000095E8(v24, &unk_101183F30, qword_100EBF960);

        return;
      }

      if (a1 == 0xD00000000000001CLL && 0x8000000100E6F390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        static String.Encoding.utf8.getter();
        v15 = String.data(using:allowLossyConversion:)();
        v17 = v16;

        (*(v8 + 8))(v10, v7);
        v18 = (v3 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData);
        swift_beginAccess();
        v19 = *v18;
        v20 = v18[1];
        *v18 = v15;
        v18[1] = v17;
        sub_100029CA4(v19, v20);
        goto LABEL_8;
      }

      if (a1 == 0x6169726F74696465 && a2 == 0xEB0000000044496CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v13 = OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID;
        goto LABEL_7;
      }
    }

    sub_10000959C(v22);
  }

  else
  {
  }

  sub_1000095E8(v23, &unk_1011C0D90, &unk_100F11470);
}

uint64_t *JSViewModel.init(type:)(uint64_t *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v3 = 0;
  v3[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t JSViewModel.playActivityFeatureName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSViewModel.playActivityRecommendationData.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData;
  swift_beginAccess();
  v2 = *v1;
  sub_10002D6A4(*v1, *(v1 + 8));
  return v2;
}

uint64_t JSViewModel.editorialID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_100D13904(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_100D13970@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_10002D6A4(v4, v5);
}

uint64_t sub_100D139C8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_10002D6A4(v2, v3);
  return sub_100029CA4(v5, v6);
}

double sub_100D13A44(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t *JSViewModel.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_100EFDB60;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v5 = 0;
  *(v5 + 1) = 0;
  return JSObject.init(type:)(a1);
}

double sub_100D13B1C()
{

  sub_100029CA4(*(v0 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData), *(v0 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData + 8));

  return result;
}

id JSViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(void *a1, uint64_t a2, char a3, void (*a4)(char *, __n128), uint64_t a5)
{
  objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
  v10 = a1;
  v11 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v10);
  if (v11)
  {
    v12 = v11;
    v13 = JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v12, a2, a3 & 1, a4, a5);
    v14 = v13;

    if (v13)
    {
    }
  }

  else
  {

    return 0;
  }

  return v13;
}

char *JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(void *a1, uint64_t a2, char a3, void (*a4)(char *, __n128), uint64_t a5)
{
  v6 = v5;
  v12 = [a1 itemKind];
  if (!v12)
  {

    return 0;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v17 == v16)
  {
    v20 = 2;
LABEL_20:

    goto LABEL_21;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    v20 = 2;
LABEL_21:

    v45[0] = _swiftEmptyArrayStorage;
    memset(&v45[1], 0, 24);
    v45[4] = 1;
    v46 = 0;
    objc_allocWithZone(type metadata accessor for JSContainerDetail());
    v26 = a1;
    v27 = JSContainerDetail.init(type:kind:containerStoreItemMetadata:mediaAPIDictionary:)(v45, v20, a1, a2);
    v28 = objc_allocWithZone(v6);
    v21 = JSContainerDetailComponentController.init(containerDetail:isUsingMediaAPI:headerConfigurationHandler:)(v27, a3 & 1, a4, a5);

    return v21;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v22 == v16)
  {
    goto LABEL_19;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
LABEL_16:
    v20 = 3;
    goto LABEL_21;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v25 == v16)
  {
    goto LABEL_19;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    goto LABEL_16;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v31 == v16)
  {
    goto LABEL_19;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
    goto LABEL_16;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v33 == v16)
  {
LABEL_19:
    v20 = 3;
    goto LABEL_20;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_16;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v35 == v16)
  {
    v20 = 0;
    goto LABEL_20;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v44)
  {
    v20 = 0;
    goto LABEL_21;
  }

  if (qword_1011BDBE8 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000060E4(v36, qword_10121D580);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v39 = 136446466;
    v40 = sub_100D14234(v6);
    v42 = sub_1000105AC(v40, v41, v45);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2082;
    v43 = sub_1000105AC(v14, v16, v45);

    *(v39 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s initialized with unsupported itemKind: %{public}s", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

char *JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(char *, __n128), uint64_t a6, __n128 a7)
{
  v8 = v7;
  v11 = a4;
  v14 = a1;
  v20[0] = _swiftEmptyArrayStorage;
  memset(&v20[1], 0, 24);
  v20[4] = 1;
  v21 = 0;
  objc_allocWithZone(type metadata accessor for JSContainerDetail());
  v15 = a2;
  v16 = JSContainerDetail.init(type:kind:containerStoreItemMetadata:mediaAPIDictionary:)(v20, v14, a2, a3);
  v17 = objc_allocWithZone(v8);
  v18 = JSContainerDetailComponentController.init(containerDetail:isUsingMediaAPI:headerConfigurationHandler:)(v16, v11, a5, a6);

  return v18;
}

char *JSContainerDetailComponentController.__allocating_init(containerDetail:isUsingMediaAPI:headerConfigurationHandler:)(void *a1, uint64_t a2, void (*a3)(char *, __n128), uint64_t a4)
{
  v7 = a2;
  v9 = objc_allocWithZone(v4);
  return JSContainerDetailComponentController.init(containerDetail:isUsingMediaAPI:headerConfigurationHandler:)(a1, v7, a3, a4);
}

char *JSContainerDetailComponentController.init(containerDetail:isUsingMediaAPI:headerConfigurationHandler:)(void *a1, char a2, void (*a3)(char *, __n128), uint64_t a4)
{
  v5 = v4;
  sub_10010FC20(&qword_1011BEEB0, "T%\n");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = 0x65646F4D77656976;
  *(inited + 40) = 0xE90000000000006CLL;
  *(inited + 48) = a1;
  v11 = a1;
  v12 = sub_100CE6614(inited);
  swift_setDeallocating();
  sub_100D1462C(inited + 32);
  v13 = v11[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind];
  v14 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
  swift_beginAccess();
  v15 = *&v11[v14];
  if (v15 && (v16 = [v15 name]) != 0)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  v21 = v13 & 0xFE;
  v22 = "playlistDetailController";
  if (a2)
  {
    v22 = "albumDetailController";
  }

  v23 = 0xD00000000000001DLL;
  if ((a2 & 1) == 0)
  {
    v23 = 0xD000000000000015;
  }

  v24 = v21 == 2;
  if (v21 == 2)
  {
    v25 = v22;
  }

  else
  {
    v25 = "e11JSViewModel";
  }

  if (v24)
  {
    v26 = v23;
  }

  else
  {
    v26 = 0xD000000000000018;
  }

  v27 = v25 | 0x8000000000000000;
  *(v5 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail) = v11;
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100EBC6B0;
  *(v28 + 56) = sub_10010FC20(&qword_1011BEEC0, &qword_100F12B48);
  *(v28 + 32) = v12;
  v31[0] = v28;
  v31[1] = 0;
  v31[2] = 0;
  v31[3] = v26;
  v31[4] = v27;
  v32 = 0;
  v29 = sub_100DCD450(v31, v5, v18, v20, a3, a4);

  return v29;
}

uint64_t sub_100D1462C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BEEB8, &unk_100F12B38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for JSContainerDetailComponentController(uint64_t a1)
{
  result = qword_1011BEEF0;
  if (!qword_1011BEEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *JSMetricsController.shared.unsafeMutableAddressor()
{
  if (qword_1011BDB40 != -1)
  {
    swift_once();
  }

  return &static JSMetricsController.shared;
}

uint64_t Metrics.Event.init(action:source:targetModel:location:actionDetails:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Metrics.Event(0);
  v13 = v12[6];
  v14 = v12[7];
  v15 = v12[8];
  result = sub_100D16DDC(a1, a6);
  *(a6 + v12[5]) = a2;
  *(a6 + v13) = a3;
  *(a6 + v14) = a4;
  *(a6 + v15) = a5;
  return result;
}

uint64_t Metrics.Event.Action.stringValue.getter()
{
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100D16E60(v0, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x62694C6F54646461;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v8 = type metadata accessor for URL();
      (*(*(v8 - 8) + 8))(v2, v8);
      return 0xD000000000000014;
    case 2:
      v6 = 0x4C6275726373;
      return v6 & 0xFFFFFFFFFFFFLL | 0x7279000000000000;
    case 3:
      sub_100D16EC4(v2);
      return 0xD000000000000011;
    case 4:
      sub_100D16EC4(v2);
      return 0x79726F7473;
    case 5:
      sub_100D16EC4(v2);
      return 0x614C64726F636572;
    case 6:
    case 36:
      return 0xD00000000000001BLL;
    case 7:
      return result;
    case 8:
      return 0x616C506F54646461;
    case 9:
      return 0x6146747369747261;
    case 10:
      return 0xD000000000000011;
    case 11:
    case 12:
      return 0x79616C506F747561;
    case 13:
      return 0x616C506E69676562;
    case 14:
      return 0x64456C65636E6163;
    case 15:
      return 0x726F62616C6C6F63;
    case 16:
      return 0x7453657461657263;
    case 17:
      return 0xD00000000000001CLL;
    case 18:
      return 0xD00000000000001ELL;
    case 19:
      return 0xD000000000000022;
    case 20:
    case 38:
      return 0xD000000000000012;
    case 21:
      return 0x64616F6C6E776F64;
    case 22:
      return 1953064037;
    case 23:
      return 0x657469726F766166;
    case 24:
      return 0x69726F7661666E75;
    case 25:
      return 1702125928;
    case 26:
      v9 = 1701079400;
      goto LABEL_55;
    case 27:
      v7 = 1701079400;
      goto LABEL_60;
    case 28:
      return 0x6C6C4179616C70;
    case 29:
      return 0x6574614C79616C70;
    case 30:
      return 0x7478654E79616C70;
    case 31:
      return 0xD000000000000010;
    case 32:
      v5 = 2036427888;
      goto LABEL_43;
    case 33:
      return 0x77656976657270;
    case 34:
      return 0x7463616572;
    case 35:
      return 0x6F4465766F6D6572;
    case 37:
      return 0xD000000000000011;
    case 39:
      return 0x6F4374726F706572;
    case 40:
      return 0x7469644565766173;
    case 41:
      return 0x6572616873;
    case 42:
      return 0x616C506572616873;
    case 43:
      v6 = 0x4C6572616873;
      return v6 & 0xFFFFFFFFFFFFLL | 0x7279000000000000;
    case 44:
      return 0x74736948776F6873;
    case 45:
      v9 = 2003789939;
LABEL_55:
      result = v9 | 0x6972794C00000000;
      break;
    case 46:
      v7 = 2003789939;
LABEL_60:
      result = v7 | 0x654E705500000000;
      break;
    case 47:
      result = 0x41656C6666756873;
      break;
    case 48:
      result = 0xD000000000000015;
      break;
    case 49:
      result = 1735289203;
      break;
    case 50:
      v5 = 1735289203;
LABEL_43:
      result = v5 | 0x6361725400000000;
      break;
    case 51:
      result = 0x6F466C6169636F73;
      break;
    case 52:
      result = 0x6E776F44706F7473;
      break;
    case 53:
      result = 0x75626C4177656976;
      break;
    case 54:
      result = 0x6974724177656976;
      break;
    case 55:
      result = 0x6465724377656976;
      break;
    case 56:
      result = 0x65746F4E77656976;
      break;
    case 57:
      result = 0xD000000000000017;
      break;
    case 58:
      result = 0xD000000000000016;
      break;
    default:
      result = 1801675106;
      break;
  }

  return result;
}

uint64_t Metrics.Event.Action.actionType.getter()
{
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100D16E60(v0, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 0x1E)
  {
    result = 1;
    if (((1 << EnumCaseMultiPayload) & 0x1E0000) != 0)
    {
      return 3;
    }

    if (((1 << EnumCaseMultiPayload) & 0x60002000) != 0)
    {
      return result;
    }

    if (EnumCaseMultiPayload == 5)
    {
      sub_100D16EC4(v2);
      return 2;
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 8))(v2, v5);
    return 2;
  }

  else
  {
    sub_100D16EC4(v2);
    return 0;
  }
}

uint64_t Metrics.Event.Action.targetIdentifier.getter()
{
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v2 = v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100D16E60(v0, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if ((EnumCaseMultiPayload - 17) < 4)
    {
      return 0x65736F6C63;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v8[1] = *v2;
        return dispatch thunk of CustomStringConvertible.description.getter();
      }

      goto LABEL_14;
    }

    v5 = *v2;
    v6 = [v5 identifiers];
    v7 = MPIdentifierSet.bestStoreIdentifier.getter();

    return v7;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
      {
        return *v2;
      }

LABEL_14:
      sub_100D16EC4(v2);
      return 0;
    }

    if (*v2)
    {
      return 0;
    }

    else
    {
      return 0x686372616553;
    }
  }
}

unint64_t Metrics.Event.Source.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E6F74747562;
  v2 = 0x6B63617274;
  v3 = 0x7475426B63617274;
  if (a1 != 3)
  {
    v3 = 0xD000000000000015;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000010;
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

Swift::Int sub_100D15290()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100D15384(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100D15464(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D15554@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore7MetricsV5EventV6SourceO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100D15584@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F74747562;
  v5 = 0xE500000000000000;
  v6 = 0x6B63617274;
  v7 = 0xEB000000006E6F74;
  v8 = 0x7475426B63617274;
  result = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = 0x8000000100E5BF30;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000100E5BF50;
  }

  if (*v1 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
  return result;
}

BOOL Metrics.Event.Destination.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FAD50, v2);

  return v3 != 0;
}

Swift::Int sub_100D1567C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100D156E0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_100D1572C(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FAD88, *a1);

  *a2 = v3 != 0;
}

uint64_t Metrics.Event.source.setter(char a1)
{
  result = type metadata accessor for Metrics.Event(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

void *Metrics.Event.targetModel.getter()
{
  v1 = *(v0 + *(type metadata accessor for Metrics.Event(0) + 24));
  v2 = v1;
  return v1;
}

void Metrics.Event.targetModel.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Metrics.Event(0) + 24);

  *(v1 + v3) = a1;
}

double Metrics.Event.location.getter()
{
  type metadata accessor for Metrics.Event(0);

  return result;
}

void Metrics.Event.location.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Metrics.Event(0) + 28);

  *(v1 + v3) = a1;
}

double Metrics.Event.actionDetails.getter()
{
  type metadata accessor for Metrics.Event(0);

  return result;
}

void Metrics.Event.actionDetails.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Metrics.Event(0) + 32);

  *(v1 + v3) = a1;
}

unint64_t Metrics.Event.metricsDictionary.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = (&v29 - v8);
  v10 = *(v0 + *(type metadata accessor for Metrics.Event(0) + 24));
  if (v10)
  {
    v11 = v10;
    v12 = sub_100060CB0(_swiftEmptyArrayStorage);
    v13 = MPModelObject.metricsDictionary.getter();
    if (v13)
    {
      v14 = v13;
      *&v31 = 0x746567726174;
      *(&v31 + 1) = 0xE600000000000000;
      AnyHashable.init<A>(_:)();
      v32 = sub_10010FC20(&unk_1011BE660, &unk_100ECAF60);
      *&v31 = v14;
      sub_100016270(&v31, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v12;
      sub_10006800C(v30, v33, isUniquelyReferenced_nonNull_native);

      sub_10001621C(v33);
      v12 = v29;
    }

    else
    {
    }
  }

  else
  {
    v12 = 0;
  }

  sub_100D16E60(v1, v9);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100D16EC4(v9);
LABEL_10:
    v18 = Metrics.Event.Action.targetIdentifier.getter();
    if (!v19)
    {
      goto LABEL_17;
    }

    v20 = v18;
    v21 = v19;
    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v12)
  {
    v16 = *v9;
    *&v31 = 0xD000000000000014;
    *(&v31 + 1) = 0x8000000100E6F500;
    AnyHashable.init<A>(_:)();
    v32 = &type metadata for Int;
    *&v31 = v16;
    sub_100016270(&v31, v30);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v29 = v12;
    sub_10006800C(v30, v33, v17);
    sub_10001621C(v33);
    v12 = v29;
    goto LABEL_10;
  }

  v22 = Metrics.Event.Action.targetIdentifier.getter();
  if (v23)
  {
    v20 = v22;
    v21 = v23;
LABEL_15:
    v12 = sub_100060CB0(_swiftEmptyArrayStorage);
LABEL_16:
    *&v31 = 0x6449746567726174;
    *(&v31 + 1) = 0xE800000000000000;
    AnyHashable.init<A>(_:)();
    v32 = &type metadata for String;
    *&v31 = v20;
    *(&v31 + 1) = v21;
    sub_100016270(&v31, v30);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v29 = v12;
    sub_10006800C(v30, v33, v24);
    sub_10001621C(v33);
    v12 = v29;
    goto LABEL_17;
  }

  v12 = 0;
LABEL_17:
  sub_100D16E60(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v7, v2);
    if (!v12)
    {
      v12 = sub_100060CB0(_swiftEmptyArrayStorage);
    }

    *&v31 = 0x72556E6F69746361;
    *(&v31 + 1) = 0xE90000000000006CLL;
    AnyHashable.init<A>(_:)();
    v25 = URL.absoluteString.getter();
    v32 = &type metadata for String;
    *&v31 = v25;
    *(&v31 + 1) = v26;
    sub_100016270(&v31, v30);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v29 = v12;
    sub_10006800C(v30, v33, v27);
    sub_10001621C(v33);
    (*(v3 + 8))(v5, v2);
    return v29;
  }

  else
  {
    sub_100D16EC4(v7);
  }

  return v12;
}

_OWORD *Metrics.NativeEvent.init(targetId:targetType:actionType:actionDetails:contentDictionary:)@<X0>(_OWORD *a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = sub_100016270(a1, a6);
  *(a6 + 32) = a2;
  *(a6 + 33) = a3;
  *(a6 + 34) = a4;
  *(a6 + 40) = a5;
  return result;
}

unint64_t sub_100D15F58()
{
  v1 = v0;
  sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EC6C60;
  *(inited + 32) = 0x6449746567726174;
  *(inited + 40) = 0xE800000000000000;
  sub_10000DD18(v1, inited + 48);
  *(inited + 80) = 0x7954746567726174;
  *(inited + 88) = 0xEA00000000006570;
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      v3 = 0x8000000100E59CD0;
      v4 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xE900000000000070;
      v4 = 0x6954656C62627562;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x6E6F74747562;
  }

  *(inited + 96) = v4;
  *(inited + 104) = v3;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x79546E6F69746361;
  *(inited + 136) = 0xEA00000000006570;
  v5 = *(v1 + 33);
  if (v5 <= 1)
  {
    if (*(v1 + 33))
    {
      v6 = 0xE400000000000000;
      v7 = 2036427888;
    }

    else
    {
      v6 = 0xE600000000000000;
      v7 = 0x7463656C6573;
    }
  }

  else if (v5 == 2)
  {
    v6 = 0xE800000000000000;
    v7 = 0x657461676976616ELL;
  }

  else if (v5 == 3)
  {
    v6 = 0xE700000000000000;
    v7 = 0x7373696D736964;
  }

  else
  {
    v6 = 0xEB00000000657461;
    v7 = 0x726F62616C6C6F63;
  }

  *(inited + 144) = v7;
  *(inited + 152) = v6;
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 176), "actionDetails");
  *(inited + 190) = -4864;
  v8 = *(v1 + 34);
  v9 = 0x8000000100E6CF50;
  if ((v8 & 1) == 0)
  {
    v9 = 0xEC00000079726172;
  }

  v10 = 0x62694C6F54646461;
  if (v8)
  {
    v10 = 0xD000000000000011;
  }

  v11 = v8 == 2;
  if (v8 == 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  if (v11)
  {
    v9 = 0xE000000000000000;
  }

  *(inited + 192) = v12;
  *(inited + 200) = v9;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x8000000100E6F6E0;
  v13 = *(v1 + 40);
  *(inited + 264) = sub_10010FC20(&unk_1011BE660, &unk_100ECAF60);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = sub_100060CB0(_swiftEmptyArrayStorage);
  }

  *(inited + 240) = v14;

  v15 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
  swift_arrayDestroy();
  return v15;
}

uint64_t Metrics.TargetType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E6F74747562;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x6954656C62627562;
}

uint64_t Metrics.ActionType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7463656C6573;
  v2 = 0x657461676976616ELL;
  v3 = 0x7373696D736964;
  if (a1 != 3)
  {
    v3 = 0x726F62616C6C6F63;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 2036427888;
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

uint64_t Metrics.ActionDetails.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x62694C6F54646461;
  }
}

uint64_t sub_100D16364(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x8000000100E59CD0;
  if (v2 == 1)
  {
    v5 = 0x8000000100E59CD0;
  }

  else
  {
    v3 = 0x6954656C62627562;
    v5 = 0xE900000000000070;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E6F74747562;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x6954656C62627562;
    v4 = 0xE900000000000070;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F74747562;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE600000000000000;
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

Swift::Int sub_100D16464()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100D1650C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100D165A0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D16644@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore7MetricsV10TargetTypeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100D16674(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x8000000100E59CD0;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x6954656C62627562;
    v4 = 0xE900000000000070;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F74747562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_100D166E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100D167C8(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100D16894(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D16970@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore7MetricsV10ActionTypeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100D169A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x7463656C6573;
  v5 = 0xE800000000000000;
  v6 = 0x657461676976616ELL;
  v7 = 0xE700000000000000;
  v8 = 0x7373696D736964;
  if (v2 != 3)
  {
    v8 = 0x726F62616C6C6F63;
    v7 = 0xEB00000000657461;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 2036427888;
    v3 = 0xE400000000000000;
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

MusicJSCore::Metrics::ActionDetails_optional __swiftcall Metrics.ActionDetails.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FAEC0, v2);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_Metrics_ActionDetails_trackAddToLibrary;
  }

  else
  {
    v4.value = MusicJSCore_Metrics_ActionDetails_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100D16A90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x62694C6F54646461;
  }

  if (v2)
  {
    v4 = 0xEC00000079726172;
  }

  else
  {
    v4 = 0x8000000100E6CF50;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x62694C6F54646461;
  }

  if (*a2)
  {
    v6 = 0x8000000100E6CF50;
  }

  else
  {
    v6 = 0xEC00000079726172;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100D16B44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100D16BD4(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100D16C50(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100D16CDC(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FAEC0, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_100D16D3C(unint64_t *a1@<X8>)
{
  v2 = 0x8000000100E6CF50;
  v3 = 0x62694C6F54646461;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEC00000079726172;
  }

  *a1 = v3;
  a1[1] = v2;
}

char *sub_100D16D88()
{
  v0 = objc_allocWithZone(type metadata accessor for JSMetricsController());
  result = sub_100D16F7C();
  static JSMetricsController.shared = result;
  return result;
}

uint64_t sub_100D16DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metrics.Event.Action(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D16E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metrics.Event.Action(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D16EC4(uint64_t a1)
{
  v2 = type metadata accessor for Metrics.Event.Action(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static JSMetricsController.shared.getter()
{
  if (qword_1011BDB40 != -1)
  {
    swift_once();
  }

  v1 = static JSMetricsController.shared;

  return v1;
}

char *sub_100D16F7C()
{
  *(v0 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_playStartNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_playEndNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carPlayMetricsRecordingState) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_isHostingSharePlayTogetherSession) = 0;
  v1 = [objc_allocWithZone(CARSessionStatus) init];
  *(v0 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carSessionStatus) = v1;
  [v1 waitForSessionInitialization];
  v14[0] = _swiftEmptyArrayStorage;
  v14[1] = 1;
  memset(&v14[2], 0, 24);
  v15 = 0;
  v2 = JSObject.init(type:)(v14);
  v3 = MPCPlayActivityUtilitiesPlayStartNotification;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v5 = v2;
  *(v5 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_playStartNotificationObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v3, 0, 1, 1, sub_100D19978, v4);

  v6 = MPCPlayActivityUtilitiesPlayEndNotification;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *(v5 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_playEndNotificationObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v6, 0, 1, 1, sub_100D19980, v7);

  v8 = *(v5 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carSessionStatus);
  [v8 addSessionObserver:v5];

  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v9 = static JSBridge.shared;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v10 = swift_allocObject();
  *(v10 + 16) = 0xD000000000000011;
  *(v10 + 24) = 0x8000000100E6F720;
  *(v10 + 32) = v5;
  *(v10 + 40) = v9;
  *(v10 + 48) = 1;
  v11 = v5;
  v12 = v9;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CF9E54, v10);

  return v11;
}

void sub_100D17260(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carSessionStatus);

    v5 = [v4 currentSession];
    if (v5)
    {

      if (qword_1011BDB40 != -1)
      {
        swift_once();
      }

      if ((*(static JSMetricsController.shared + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carPlayMetricsRecordingState) & 1) == 0)
      {
        *(static JSMetricsController.shared + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carPlayMetricsRecordingState) = 1;
      }
    }
  }
}

void sub_100D1733C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100D17398();
  }
}

double sub_100D17398()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = Notification.userInfo.getter();
  if (!v8)
  {

    return result;
  }

  v9 = v8;
  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16) || (v10 = sub_1000160B4(v39), (v11 & 1) == 0))
  {

LABEL_13:

    sub_10001621C(v39);
    return result;
  }

  sub_10000DD18(*(v9 + 56) + 32 * v10, v40);
  sub_10001621C(v39);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return result;
  }

  v12 = v2;
  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16) || (v13 = sub_1000160B4(v39), (v14 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_10000DD18(*(v9 + 56) + 32 * v13, v40);
  sub_10001621C(v39);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return result;
  }

  v15 = v3;
  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16) || (v16 = sub_1000160B4(v39), (v17 & 1) == 0))
  {
    sub_10001621C(v39);
    goto LABEL_21;
  }

  sub_10000DD18(*(v9 + 56) + 32 * v16, v40);
  sub_10001621C(v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v18 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_22;
  }

  v18 = v4;
  v19 = v6;
LABEL_22:
  AnyHashable.init<A>(_:)();
  if (*(v9 + 16) && (v21 = sub_1000160B4(v39), (v22 & 1) != 0))
  {
    sub_10000DD18(*(v9 + 56) + 32 * v21, v40);
    sub_10001621C(v39);

    v23 = sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      goto LABEL_28;
    }
  }

  else
  {

    sub_10001621C(v39);
  }

  v23 = sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
LABEL_28:
  sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6D69547472617473;
  *(inited + 16) = xmmword_100EBEF50;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v12;
  *(inited + 72) = &type metadata for Double;
  *(inited + 80) = 0x656D6954646E65;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v15;
  *(inited + 120) = &type metadata for Double;
  *(inited + 128) = 0x6553646572616873;
  *(inited + 136) = 0xEF64496E6F697373;
  *(inited + 144) = v18;
  *(inited + 152) = v19;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0xD00000000000001DLL;
  *(inited + 184) = 0x8000000100E6F740;
  sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
  *(inited + 216) = v23;
  *(inited + 192) = isa;
  v25 = isa;
  v26 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
  swift_arrayDestroy();
  if (*(v1 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carPlayMetricsRecordingState) == 1)
  {
    v27 = sub_1003647E0(v26);

    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v28 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100EBDC20;
    *(v29 + 56) = ObjectType;
    *(v29 + 32) = v1;
    *(v29 + 88) = sub_10010FC20(&unk_1011BE660, &unk_100ECAF60);
    *(v29 + 64) = v27;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = _swiftEmptyArrayStorage;
    *(v30 + 32) = 0xD00000000000001FLL;
    *(v30 + 40) = 0x8000000100E6F5A0;
    *(v30 + 48) = v1;
    *(v30 + 56) = v28;
    *(v30 + 64) = 0;
    v31 = v1;
    v32 = v28;
LABEL_36:
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v30);

    return result;
  }

  if (*(v1 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_isHostingSharePlayTogetherSession) == 1)
  {
    v33 = sub_1003647E0(v26);

    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v34 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100EBDC20;
    *(v35 + 56) = ObjectType;
    *(v35 + 32) = v1;
    *(v35 + 88) = sub_10010FC20(&unk_1011BE660, &unk_100ECAF60);
    *(v35 + 64) = v33;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 24) = _swiftEmptyArrayStorage;
    *(v30 + 32) = 0xD000000000000024;
    *(v30 + 40) = 0x8000000100E6F5C0;
    *(v30 + 48) = v1;
    *(v30 + 56) = v34;
    *(v30 + 64) = 0;
    v36 = v1;
    v37 = v34;
    goto LABEL_36;
  }

  return result;
}

Swift::Void __swiftcall JSMetricsController.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v39 - v6;
  if (countAndFlagsBits == 0x764564726F636572 && object == 0xEB00000000746E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_10000DD18(arguments._rawValue + 32, v41);
      if (swift_dynamicCast())
      {
        v9 = v39;
        v8 = v40;
        Array.subscript.getter(&type metadata for Any + 8, v41);
        if (v42)
        {
          sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
          if (swift_dynamicCast())
          {
            v10 = v39;
            Array.subscript.getter(&type metadata for Any + 8, v41);
            if (v42)
            {
              if (swift_dynamicCast())
              {
                v11 = v39;
                Array.subscript.getter(&type metadata for Any + 8, v41);
                if (v42)
                {
                  if (swift_dynamicCast())
                  {
                    v12 = v39;
                    v13 = v40;
                    v14 = *MetricsReportingController.shared.unsafeMutableAddressor();
                    v15 = swift_allocObject();
                    v15[2] = v12;
                    v15[3] = v13;
                    v15[4] = v2;
                    v16 = *((swift_isaMask & *v14) + 0xE0);
                    v17 = v14;
                    v18 = v2;
                    v16(v9, v8, v10, 2, 0, 0, v11, sub_100D19248, v15);

LABEL_13:

                    return;
                  }

                  goto LABEL_34;
                }

                goto LABEL_32;
              }

LABEL_34:

              goto LABEL_35;
            }

            goto LABEL_32;
          }

          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }
  }

  else if (countAndFlagsBits == 0xD000000000000015 && 0x8000000100E6F520 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_10000DD18(arguments._rawValue + 32, v41);
      if (swift_dynamicCast())
      {
        v20 = v39;
        v19 = v40;
        Array.subscript.getter(&type metadata for Any + 8, v41);
        if (v42)
        {
          sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
          if (swift_dynamicCast())
          {
            v21 = v39;
            Array.subscript.getter(&type metadata for Any + 8, v41);
            if (v42)
            {
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_34;
              }

              v22 = v39;
              Array.subscript.getter(&type metadata for Any + 8, v41);
              if (v42)
              {
                if (swift_dynamicCast())
                {
                  v23 = v39;
                  v24 = v40;
                  v25 = *MetricsReportingController.shared.unsafeMutableAddressor();
                  v26 = swift_allocObject();
                  v26[2] = v23;
                  v26[3] = v24;
                  v26[4] = v2;
                  v27 = *((swift_isaMask & *v25) + 0xE8);
                  v28 = v2;
                  v29 = v25;
                  v27(v20, v19, v21, v22, sub_100D191CC, v26);

                  goto LABEL_13;
                }

                goto LABEL_34;
              }
            }

LABEL_32:

            goto LABEL_33;
          }

LABEL_35:

          return;
        }

LABEL_33:

        sub_1000095E8(v41, &unk_101183F30, qword_100EBF960);
      }
    }
  }

  else if (countAndFlagsBits == 0xD000000000000015 && 0x8000000100E6F540 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(arguments._rawValue + 2) == 1)
    {
      sub_10000DD18(arguments._rawValue + 32, v41);
      if (swift_dynamicCast())
      {
        v30 = v39;
        v31 = v40;
        static TaskPriority.background.getter();
        v32 = type metadata accessor for TaskPriority();
        (*(*(v32 - 8) + 56))(v7, 0, 1, v32);
        v33 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v34 = swift_allocObject();
        v34[2] = 0;
        v34[3] = 0;
        v34[4] = v33;
        v34[5] = v30;
        v34[6] = v31;
        sub_10035EB10(0, 0, v7, &unk_100F12B90, v34);

        sub_1000095E8(v7, &unk_101181520, &qword_100EBCC60);
      }
    }
  }

  else if (countAndFlagsBits == 0xD00000000000001DLL && 0x8000000100E6F560 == object || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(arguments._rawValue + 2) == 1)
  {
    sub_10000DD18(arguments._rawValue + 32, v41);
    sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
    if (swift_dynamicCast())
    {
      v35 = v39;
      v36 = MetricsReportingController.shared.unsafeMutableAddressor();
      v37 = *((swift_isaMask & **v36) + 0xF0);
      v38 = *v36;
      v37(v35);
    }
  }
}

double sub_100D1825C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(void))
{
  ObjectType = swift_getObjectType();
  v12 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v12 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = ObjectType;
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v14 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100EBDC20;
    *(v15 + 32) = a4;
    *(v15 + 88) = &type metadata for String;
    *(v15 + 56) = v13;
    *(v15 + 64) = a2;
    *(v15 + 72) = a3;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = _swiftEmptyArrayStorage;
    *(v16 + 32) = 0xD000000000000017;
    *(v16 + 40) = 0x8000000100E6F700;
    *(v16 + 48) = a4;
    *(v16 + 56) = v14;
    *(v16 + 64) = 0;
    v17 = a4;

    v18 = v14;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(a6, v16);
  }

  return result;
}

uint64_t sub_100D18404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return _swift_task_switch(sub_100D18428, 0, 0);
}

uint64_t sub_100D18428()
{
  v1 = MetricsReportingController.shared.unsafeMutableAddressor();
  v2 = *v1;
  *(v0 + 64) = *v1;
  v3 = *((swift_isaMask & *v2) + 0xF8);
  v2;
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_100D18564;

  return v6();
}

uint64_t sub_100D18564()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100D18678, 0, 0);
}

uint64_t sub_100D18678()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[6];
    v3 = v0[7];
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      if (qword_1011BDB08 != -1)
      {
        swift_once();
        v4 = v0[6];
        v3 = v0[7];
      }

      v6 = static JSBridge.shared;
      sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100EBDC20;
      v8 = type metadata accessor for JSMetricsController();
      *(v7 + 32) = v2;
      *(v7 + 88) = &type metadata for String;
      *(v7 + 56) = v8;
      *(v7 + 64) = v4;
      *(v7 + 72) = v3;
      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      *(v9 + 24) = _swiftEmptyArrayStorage;
      *(v9 + 32) = 0xD000000000000017;
      *(v9 + 40) = 0x8000000100E6F700;
      *(v9 + 48) = v2;
      *(v9 + 56) = v6;
      *(v9 + 64) = 0;
      v10 = v2;

      v11 = v6;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v9);
    }
  }

  v12 = v0[1];

  return v12();
}

Swift::Void __swiftcall JSMetricsController.recordNativeEvent(_:)(Swift::OpaquePointer a1)
{
  ObjectType = swift_getObjectType();
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v4 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBDC20;
  *(v5 + 56) = ObjectType;
  *(v5 + 32) = v1;
  *(v5 + 88) = sub_10010FC20(&unk_1011BE660, &unk_100ECAF60);
  *(v5 + 64) = a1;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = _swiftEmptyArrayStorage;
  *(v6 + 32) = 0xD000000000000011;
  *(v6 + 40) = 0x8000000100E6F580;
  *(v6 + 48) = v1;
  *(v6 + 56) = v4;
  *(v6 + 64) = 0;
  v7 = v1;

  v8 = v4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05168, v6);
}

double JSMetricsController.recordNativeEvent(_:)()
{
  ObjectType = swift_getObjectType();
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v2 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100EBDC20;
  *(v3 + 56) = ObjectType;
  *(v3 + 32) = v0;
  v4 = v0;
  v5 = sub_100D15F58();
  *(v3 + 88) = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
  *(v3 + 64) = v5;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = _swiftEmptyArrayStorage;
  *(v6 + 32) = 0xD000000000000011;
  *(v6 + 40) = 0x8000000100E6F580;
  *(v6 + 48) = v4;
  *(v6 + 56) = v2;
  *(v6 + 64) = 0;
  v7 = v4;
  v8 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v6);

  return result;
}

Swift::Void __swiftcall JSMetricsController.recordCarPlayMetricsNativeEvent(_:)(Swift::OpaquePointer a1)
{
  ObjectType = swift_getObjectType();
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v4 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBDC20;
  *(v5 + 56) = ObjectType;
  *(v5 + 32) = v1;
  *(v5 + 88) = sub_10010FC20(&unk_1011BE660, &unk_100ECAF60);
  *(v5 + 64) = a1;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = _swiftEmptyArrayStorage;
  *(v6 + 32) = 0xD00000000000001FLL;
  *(v6 + 40) = 0x8000000100E6F5A0;
  *(v6 + 48) = v1;
  *(v6 + 56) = v4;
  *(v6 + 64) = 0;
  v7 = v1;

  v8 = v4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v6);
}

Swift::Void __swiftcall JSMetricsController.recordCarBluetoothMetricsNativeEvent(_:)(Swift::OpaquePointer a1)
{
  ObjectType = swift_getObjectType();
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v4 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBDC20;
  *(v5 + 56) = ObjectType;
  *(v5 + 32) = v1;
  *(v5 + 88) = sub_10010FC20(&unk_1011BE660, &unk_100ECAF60);
  *(v5 + 64) = a1;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = _swiftEmptyArrayStorage;
  *(v6 + 32) = 0xD000000000000024;
  *(v6 + 40) = 0x8000000100E6F5C0;
  *(v6 + 48) = v1;
  *(v6 + 56) = v4;
  *(v6 + 64) = 0;
  v7 = v1;

  v8 = v4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v6);
}

void JSMetricsController.sessionDidConnect(_:)()
{
  if ((*(v0 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carPlayMetricsRecordingState) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carPlayMetricsRecordingState) = 1;
  }
}

double sub_100D18EEC()
{

  return result;
}

unint64_t _s11MusicJSCore7MetricsV5EventV6SourceO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FACB8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100D19008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metrics.Event.Action(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t _s11MusicJSCore7MetricsV10TargetTypeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FADC0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t _s11MusicJSCore7MetricsV10ActionTypeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FAE28, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100D19104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_100D18404(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100D19208()
{

  return swift_deallocObject();
}

unint64_t sub_100D19288()
{
  result = qword_1011BEF10;
  if (!qword_1011BEF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BEF10);
  }

  return result;
}

unint64_t sub_100D192E0()
{
  result = qword_1011BEF18;
  if (!qword_1011BEF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BEF18);
  }

  return result;
}

unint64_t sub_100D19338()
{
  result = qword_1011BEF20;
  if (!qword_1011BEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BEF20);
  }

  return result;
}

unint64_t sub_100D19390()
{
  result = qword_1011BEF28;
  if (!qword_1011BEF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BEF28);
  }

  return result;
}

unint64_t sub_100D193E8()
{
  result = qword_1011BEF30;
  if (!qword_1011BEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BEF30);
  }

  return result;
}

void sub_100D19474(uint64_t a1)
{
  type metadata accessor for Metrics.Event.Action(319);
  if (v1 <= 0x3F)
  {
    sub_100D19560(319);
    if (v2 <= 0x3F)
    {
      sub_10003920C(319, &unk_1011BEFB0, &qword_1011BE628, &qword_100F11C50);
      if (v3 <= 0x3F)
      {
        sub_10003920C(319, &unk_1011BEFC0, &unk_1011BE660, &unk_100ECAF60);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100D19560(uint64_t a1)
{
  if (!qword_1011BEFA0)
  {
    sub_100009F78(255, &unk_101186F00, MPModelObject_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011BEFA0);
    }
  }
}

void sub_100D195C8(uint64_t a1)
{
  sub_100D19728(319, &qword_1011BF080, sub_100D196D8);
  if (v1 <= 0x3F)
  {
    sub_100D19728(319, &qword_1011BF090, &type metadata accessor for URL);
    if (v2 <= 0x3F)
    {
      sub_100D19774();
      if (v3 <= 0x3F)
      {
        sub_100D197A4();
        if (v4 <= 0x3F)
        {
          sub_100D197D4();
          if (v5 <= 0x3F)
          {
            sub_100D19804();
            if (v6 <= 0x3F)
            {
              sub_100D1985C();
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100D196D8()
{
  if (!qword_1011BF088)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011BF088);
    }
  }
}

void sub_100D19728(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_100D19774()
{
  result = qword_1011BF098;
  if (!qword_1011BF098)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1011BF098);
  }

  return result;
}

void *sub_100D197A4()
{
  result = qword_1011BF0A0;
  if (!qword_1011BF0A0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1011BF0A0);
  }

  return result;
}

void *sub_100D197D4()
{
  result = qword_1011BF0A8;
  if (!qword_1011BF0A8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1011BF0A8);
  }

  return result;
}

void sub_100D19804()
{
  if (!qword_1011BF0B0)
  {
    v0 = sub_100009F78(0, &qword_1011BF0B8, MPModelRecordLabel_ptr);
    if (!v1)
    {
      atomic_store(v0, &qword_1011BF0B0);
    }
  }
}

void *sub_100D1985C()
{
  result = qword_1011BF0C0;
  if (!qword_1011BF0C0)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1011BF0C0);
  }

  return result;
}

unint64_t sub_100D19924()
{
  result = qword_1011BF190;
  if (!qword_1011BF190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BF190);
  }

  return result;
}

void sub_100D199AC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenu;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *JSMenuItem.submenu.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenu;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t JSMenuItem.description.getter()
{
  v1 = v0;
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  _print_unlocked<A, B>(_:_:)();
  v10._countAndFlagsBits = 8251;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  swift_beginAccess();

  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  v11._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v11);

  v12 = OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenu;
  swift_beginAccess();
  if (*(v1 + v12))
  {
    v13._countAndFlagsBits = 0x757320736168203BLL;
    v13._object = 0xED0000756E656D62;
    String.append(_:)(v13);
  }

  v14._countAndFlagsBits = 62;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0;
}

void JSMenuItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_1000189C0(a3, v14);
  if (v14[3])
  {
    sub_1000189C0(v14, v12);

    if (swift_dynamicCast())
    {
      v6 = v11;
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = (v3 + OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_title);
        swift_beginAccess();
        *v7 = v10;
LABEL_20:
        v7[1] = v6;

        goto LABEL_21;
      }
    }

    type metadata accessor for JSMenu(0);
    if (swift_dynamicCast())
    {
      if (a1 == 0x756E656D627573 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenu;
        swift_beginAccess();
        v9 = *(v3 + v8);
        *(v3 + v8) = v10;

LABEL_21:
        sub_10000959C(v12);
        sub_1000095E8(v14, &unk_101183F30, qword_100EBF960);

        return;
      }
    }

    if (swift_dynamicCast())
    {
      v6 = v11;
      if (a1 == 0x54756E656D627573 && a2 == 0xEC000000656C7469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = (v3 + OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenuTitle);
        swift_beginAccess();
        *v7 = v10;
        goto LABEL_20;
      }
    }

    sub_10000959C(v12);
  }

  else
  {
  }

  sub_1000095E8(v13, &unk_1011C0D90, &unk_100F11470);
}

uint64_t *JSMenuItem.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_title];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenu] = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenuTitle];
  *v5 = 0;
  *(v5 + 1) = 0;
  return JSObject.init(type:)(a1);
}

uint64_t *JSMenuItem.init(type:)(uint64_t *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_title);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenu) = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSMenuItem_submenuTitle);
  *v3 = 0;
  v3[1] = 0;
  return JSObject.init(type:)(a1);
}

double sub_100D19F8C()
{

  return result;
}

id JSMenuItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMenuItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *JSCreditsSection.__allocating_init(items:title:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(type metadata accessor for JSCreditsSection());
  v7 = &v6[OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_title];
  *v7 = 0;
  v7[1] = 0;
  *&v6[OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_items] = _swiftEmptyArrayStorage;
  v6[OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_isUpdatingFromJS] = 0;
  v8 = &v6[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *&v6[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_100EFDB60;
  v9 = &v6[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v9 = 0;
  v9[1] = 0;
  v10 = [objc_allocWithZone(NSUUID) init];
  v11 = [v10 UUIDString];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = &v6[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
  *v15 = v12;
  v15[1] = v14;
  v6[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] = 1;
  v21.receiver = v6;
  v21.super_class = type metadata accessor for JSObject();
  v16 = objc_msgSendSuper2(&v21, "init");
  v17 = OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_items;
  swift_beginAccess();
  *&v16[v17] = a1;
  v18 = v16;

  v19 = &v18[OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_title];
  swift_beginAccess();
  *v19 = a2;
  *(v19 + 1) = a3;

  return v18;
}

double sub_100D1A284(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_title);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t JSCreditsSection.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_100D1A348(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_items;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double JSCreditsSection.items.getter()
{
  swift_beginAccess();

  return result;
}

void JSCreditsSection.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_isUpdatingFromJS;
  v8 = *(v3 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_isUpdatingFromJS);
  *(v3 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_isUpdatingFromJS) = 1;
  v14[0] = a1;
  v14[1] = a2;
  sub_1000189C0(a3, v15);
  if (!v15[3])
  {

    goto LABEL_17;
  }

  sub_1000189C0(v15, v13);

  sub_10010FC20(&qword_1011BF1F0, &unk_100F13050);
  if (!swift_dynamicCast())
  {
LABEL_9:
    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v10 = (v3 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_title);
        swift_beginAccess();
        *v10 = v11;
        v10[1] = v12;
        goto LABEL_14;
      }
    }

    sub_10000959C(v13);
LABEL_17:
    JSViewModel.updateProperty(_:value:)(a1, a2, a3);
    sub_1000095E8(v14, &unk_1011C0D90, &unk_100F11470);
    goto LABEL_18;
  }

  if ((a1 != 0x736D657469 || a2 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_9;
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_items;
  swift_beginAccess();
  *(v3 + v9) = v11;
LABEL_14:

  sub_10000959C(v13);
  sub_1000095E8(v15, &unk_101183F30, qword_100EBF960);

LABEL_18:
  *(v3 + v7) = v8;
}

uint64_t *JSCreditsSection.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_title];
  *v4 = 0;
  v4[1] = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_items] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_isUpdatingFromJS] = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_100EFDB60;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v6 = 0;
  v6[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t *JSCreditsSection.init(type:)(uint64_t *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_title);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_items) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSCreditsSection_isUpdatingFromJS) = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v4 = 0;
  v4[1] = 0;
  return JSObject.init(type:)(a1);
}

double sub_100D1A770()
{

  return result;
}

id JSCreditsSection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSCreditsSection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*JSSocialLightIdentityCreator.title.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t (*JSSocialLightIdentityCreator.$title.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__title;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void (*JSSocialLightIdentityCreator.subtitle.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t (*JSSocialLightIdentityCreator.$subtitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__subtitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void (*JSSocialLightIdentityCreator.inputFieldTitle.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A360A8;
}

uint64_t (*JSSocialLightIdentityCreator.$inputFieldTitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__inputFieldTitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36370;
}

uint64_t sub_100D1AF48(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return static Published.subscript.setter();
}

uint64_t sub_100D1AFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return static Published.subscript.setter();
}

void (*JSSocialLightIdentityCreator.inputFieldSubtitle.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

double sub_100D1B0FC(void *a1)
{
  swift_beginAccess();
  sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.getter();
  swift_endAccess();
  return result;
}

uint64_t sub_100D1B178(uint64_t a1, void *a2)
{
  v3 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*JSSocialLightIdentityCreator.$inputFieldSubtitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__inputFieldSubtitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void JSSocialLightIdentityCreator.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a1;
  v9[1] = a2;
  sub_1000189C0(a3, v10);
  if (v10[3])
  {
    sub_1000189C0(v10, v8);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x6569467475706E69 && a2 == 0xEF656C746954646CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000012 && 0x8000000100E6F7D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v7 = v3;
        static Published.subscript.setter();
        sub_10000959C(v8);
        sub_1000095E8(v10, &unk_101183F30, qword_100EBF960);

        return;
      }
    }

    sub_10000959C(v8);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  sub_1000095E8(v9, &unk_1011C0D90, &unk_100F11470);
}

uint64_t *JSSocialLightIdentityCreator.init(type:)(uint64_t *a1)
{
  v3 = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__title;
  v15 = 0;
  v16 = 0xE000000000000000;
  Published.init(initialValue:)();
  v8 = *(v4 + 32);
  v8(v1 + v7, v6, v3);
  v9 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__subtitle;
  v15 = 0;
  v16 = 0xE000000000000000;
  Published.init(initialValue:)();
  v8(v1 + v9, v6, v3);
  v10 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__inputFieldTitle;
  v15 = 0;
  v16 = 0xE000000000000000;
  Published.init(initialValue:)();
  v8(v1 + v10, v6, v3);
  v11 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__inputFieldSubtitle;
  v15 = 0;
  v16 = 0xE000000000000000;
  Published.init(initialValue:)();
  v8(v1 + v11, v6, v3);
  v12 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v13 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v13 = 0;
  v13[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_100D1B8E4()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__title;
  v2 = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v5(v0 + OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__subtitle, v2);
  v5(v0 + OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__inputFieldTitle, v2);
  v3 = v0 + OBJC_IVAR____TtC11MusicJSCore28JSSocialLightIdentityCreator__inputFieldSubtitle;

  return (v5)(v3, v2);
}

uint64_t sub_100D1BAD4@<X0>(uint64_t *a1@<X8>)
{
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for JSSocialLightIdentityCreator(uint64_t a1)
{
  result = qword_1011BF268;
  if (!qword_1011BF268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D1BB54(uint64_t a1)
{
  sub_1003CF7FC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id JSMusicVideoItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMusicVideoItem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSMusicVideoItem(uint64_t a1)
{
  result = qword_1011BF2A0;
  if (!qword_1011BF2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *JSScreen.__allocating_init(rootElementSizing:isRequiredForInitialSetup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  return JSScreen.init(rootElementSizing:isRequiredForInitialSetup:)(a1, a2, v4);
}

uint64_t *JSScreen.init(rootElementSizing:isRequiredForInitialSetup:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 120);
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    ObjectType = swift_getObjectType();
    v14 = (*(a2 + 64))(ObjectType, a2);
    sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
    inited = swift_initStackObject();
    v40 = xmmword_100EBDC20;
    *(inited + 16) = xmmword_100EBDC20;
    *(inited + 32) = 0x6F69736E656D6964;
    *(inited + 40) = 0xEA0000000000736ELL;
    [v14 bounds];
    v17 = v16;
    v19 = v18;
    [objc_msgSend(v14 "fixedCoordinateSpace")];
    v21 = v20;
    v23 = v22;
    swift_unknownObjectRelease();
    v24 = UIScreen.Dimensions.JSSerialized.getter(v17, v19, v21, v23);
    v25 = sub_10010FC20(&qword_1011BF2B0, &qword_100F1BFA0);
    *(inited + 48) = v24;
    *(inited + 72) = v25;
    *(inited + 80) = 0x656C616373;
    *(inited + 88) = 0xE500000000000000;
    [v14 scale];
    v27 = [objc_allocWithZone(NSNumber) initWithDouble:v26];
    *(inited + 120) = sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
    *(inited + 96) = v27;
    v28 = sub_10010BC60(inited);
    swift_setDeallocating();
    sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
    swift_arrayDestroy();
    v29 = type metadata accessor for JSWindow();
    v30 = objc_allocWithZone(v29);
    v31 = swift_unknownObjectRetain();
    v32 = sub_100DE4A5C(v31, a2, a3 & 1);
    swift_unknownObjectRelease();
    *(v4 + OBJC_IVAR____TtC11MusicJSCore8JSScreen_mainWindow) = v32;
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v33 = swift_allocObject();
    *(v33 + 16) = v40;
    v34 = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
    *(v33 + 32) = v28;
    *(v33 + 88) = v29;
    *(v33 + 56) = v34;
    *(v33 + 64) = v32;
    v41[0] = v33;
    v41[1] = a3 & 1;
    memset(&v41[2], 0, 24);
    v42 = 0;
    v35 = v32;
    v36 = JSObject.init(type:)(v41);
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = *(a2 + 16);
    v39 = v36;

    v38(sub_100D1C394, v37, ObjectType, a2);

    swift_unknownObjectRelease();

    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100D1C178(uint64_t a1, double a2, double a3, double a4, double a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v11 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100EBDC20;
    *(v12 + 56) = type metadata accessor for JSScreen();
    *(v12 + 32) = v10;
    v13 = v10;
    v14 = UIScreen.Dimensions.JSSerialized.getter(a2, a3, a4, a5);
    *(v12 + 88) = sub_10010FC20(&qword_1011BF2B0, &qword_100F1BFA0);
    *(v12 + 64) = v14;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = _swiftEmptyArrayStorage;
    *(v15 + 32) = 0xD000000000000014;
    *(v15 + 40) = 0x8000000100E6F8F0;
    *(v15 + 48) = v13;
    *(v15 + 56) = v11;
    *(v15 + 64) = 0;
    v16 = v13;
    v17 = v11;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CE6890, v15);
  }
}

void sub_100D1C3FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011801C0, &qword_100EDD960);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_1000160F8(*(a1 + 48) + 40 * v12, v35);
    v13 = *(*(a1 + 56) + 8 * v12);
    v37 = v13;
    v23 = v35[0];
    v25 = v35[1];
    v27 = v36;
    *&v34[0] = v13;
    type metadata accessor for JSSocialProfile(0);
    v14 = v13;
    swift_dynamicCast();
    v30 = v23;
    v31 = v25;
    v32 = v27;
    sub_100016270(&v29, v33);
    v24 = v30;
    v26 = v31;
    v28 = v32;
    sub_100016270(v33, v34);
    v15 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~v7[v17 >> 6]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = v7[v18];
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~v7[v17 >> 6])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v26;
    *(v10 + 32) = v28;
    sub_100016270(v34, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100D1C6BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011801C0, &qword_100EDD960);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100016270(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100016270(v29, v30);
    v14 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
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
        v21 = v7[v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_100016270(v30, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100D1C97C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&unk_101180220, &unk_100F10E60);
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
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_100016270(&v22, v24);
        sub_100016270(v24, v25);
        sub_100016270(v25, &v23);
        v16 = sub_100019C10(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          sub_10000959C(v10);
          sub_100016270(&v23, v10);
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
          sub_100016270(&v23, (v2[7] + 32 * v16));
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

void sub_100D1CBD0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011801C0, &qword_100EDD960);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100016270(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100016270(v29, v30);
    v14 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
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
        v21 = v7[v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_100016270(v30, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100D1CE88(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011BDEB8, &unk_100F132D0);
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(*(a1 + 56) + 8 * v12);
        sub_100009F78(0, &qword_101189A20, NSNumber_ptr);

        v17 = v16;
        swift_dynamicCast();
        v18 = sub_100019C10(v15, v14);
        if (v19)
        {
          v8 = (v2[6] + 16 * v18);
          *v8 = v15;
          v8[1] = v14;
          v9 = v18;

          *(v2[7] + 8 * v9) = v24;
          swift_unknownObjectRelease();
          v7 = v10;
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

          *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
          v20 = (v2[6] + 16 * v18);
          *v20 = v15;
          v20[1] = v14;
          *(v2[7] + 8 * v18) = v24;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

char *JSCapabilitiesController.init()()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_areNotificationsEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isUnifiedMessagesEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_allowsConnectContentNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_allowsRadioContentNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_allowsSubscriptionContentNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_hasUserRequestedSubscriptionHiddenObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isCloudLibraryEnabledDidChangeNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_notificationSettingsDidChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_mliSessionIDDidChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_mliDidCompleteTransferDidChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_mliReviewDidChangeObserver) = 0;
  v2 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v3 = objc_opt_self();

  v106 = [v3 sharedManager];
  v4 = [objc_opt_self() sharedCloudController];
  v105 = v4;
  if (v4)
  {
    LOBYTE(v4) = [v4 isCloudLibraryEnabled];
  }

  v103 = v4;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isCloudLibraryEnabled) = v4;
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7 = UnifiedMessages.MLI.sessionIDKey.unsafeMutableAddressor();
  v8 = *(v7 + 1);
  v117 = *v7;
  v118 = v8;
  sub_100009838();

  NSUserDefaults.subscript.getter(&v120);

  if (v121)
  {
    sub_100016270(&v120, &v113);
  }

  else
  {
    v114 = &type metadata for String;
    *&v113 = 0;
    *(&v113 + 1) = 0xE000000000000000;
  }

  v9 = [v5 standardUserDefaults];
  UnifiedMessages.MLI.didCompleteTransferKey.unsafeMutableAddressor();

  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 BOOLForKey:v10];

  v12 = [v5 standardUserDefaults];
  v13 = UnifiedMessages.MLI.mliReviewKey.unsafeMutableAddressor();
  v14 = *(v13 + 1);
  v117 = *v13;
  v118 = v14;

  NSUserDefaults.subscript.getter(&v120);

  if (v121)
  {
    sub_100016270(&v120, &v111);
  }

  else
  {
    v112 = &type metadata for String;
    *&v111 = 0;
    *(&v111 + 1) = 0xE000000000000000;
  }

  sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
  v15 = swift_allocObject();
  *(v15 + 32) = 0xD000000000000022;
  *(v15 + 16) = xmmword_100EE9520;
  *(v15 + 40) = 0x8000000100E6F940;
  v104 = NSUserDefaults.mobileiPod.unsafeMutableAddressor();
  v16 = *v104;
  if (*v104)
  {
    v17 = v16;
    v18 = NSUserDefaults.hasUserRequestedSubscriptionHidden.getter();

    LOBYTE(v16) = v18 & 1;
  }

  *(v15 + 48) = v16;
  *(v15 + 72) = &type metadata for Bool;
  strcpy((v15 + 80), "canShowSocial");
  *(v15 + 94) = -4864;
  ApplicationCapabilities.Controller.capabilities.getter(v115);
  v19 = v116;

  sub_100014984(v115);
  v20 = sub_10048BBDC(3, v19);

  *(v15 + 96) = v20 & 1;
  *(v15 + 120) = &type metadata for Bool;
  strcpy((v15 + 128), "canShowRadio");
  *(v15 + 141) = 0;
  *(v15 + 142) = -5120;
  ApplicationCapabilities.Controller.capabilities.getter(&v117);
  v21 = v119;

  sub_100014984(&v117);
  v22 = sub_10048BBDC(4, v21);

  *(v15 + 144) = v22 & 1;
  *(v15 + 168) = &type metadata for Bool;
  *(v15 + 176) = 0xD00000000000001ALL;
  *(v15 + 184) = 0x8000000100E6F970;
  ApplicationCapabilities.Controller.capabilities.getter(&v120);
  v23 = v122;

  sub_100014984(&v120);
  v24 = sub_10048BBDC(2, v23);

  *(v15 + 192) = v24 & 1;
  *(v15 + 216) = &type metadata for Bool;
  *(v15 + 224) = 0xD000000000000015;
  *(v15 + 232) = 0x8000000100E5D170;
  *(v15 + 240) = v103;
  *(v15 + 264) = &type metadata for Bool;
  *(v15 + 272) = 0xD000000000000021;
  *(v15 + 280) = 0x8000000100E6F990;
  v25 = [v106 cachedAccountNotificationsShowInLibrarySwitch];
  v26 = [v25 isToggled];

  *(v15 + 288) = v26;
  *(v15 + 312) = &type metadata for Bool;
  *(v15 + 320) = 0xD00000000000001CLL;
  *(v15 + 328) = 0x8000000100E6F9C0;
  *(v15 + 336) = 1;
  *(v15 + 360) = &type metadata for Bool;
  strcpy((v15 + 368), "mliSessionID");
  *(v15 + 381) = 0;
  *(v15 + 382) = -5120;
  sub_10000DD18(&v113, v15 + 384);
  *(v15 + 416) = 0xD000000000000016;
  *(v15 + 424) = 0x8000000100E62C90;
  *(v15 + 432) = v11;
  *(v15 + 456) = &type metadata for Bool;
  *(v15 + 464) = 0x6569766552696C6DLL;
  *(v15 + 472) = 0xE900000000000077;
  sub_10000DD18(&v111, v15 + 480);
  *(v15 + 512) = 0xD000000000000018;
  *(v15 + 520) = 0x8000000100E6F9E0;
  *(v15 + 552) = &type metadata for Bool;
  *(v15 + 528) = 0;
  v27 = sub_10010BC60(v15);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100EBC6B0;
  *(v28 + 56) = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
  *(v28 + 32) = v27;
  v123[0] = v28;
  v123[1] = 1;
  memset(&v123[2], 0, 24);
  v124 = 0;
  v29 = JSObject.init(type:)(v123);
  v30 = qword_1011BDB08;
  v31 = v29;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = static JSBridge.shared;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v33 = swift_allocObject();
  *(v33 + 16) = 0xD000000000000016;
  *(v33 + 24) = 0x8000000100E6FA00;
  *(v33 + 32) = v31;
  *(v33 + 40) = v32;
  *(v33 + 48) = 1;
  v34 = v31;
  v35 = v32;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CF9E54, v33);

  v36 = [objc_opt_self() currentNotificationCenter];
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  v109 = sub_100D1FAC0;
  v110 = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  v108 = &unk_1010FFD78;
  v38 = _Block_copy(aBlock);

  [v36 getNotificationSettingsWithCompletionHandler:v38];
  _Block_release(v38);

  v39 = ICUserNotificationSettingsDidChangeNotification;
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v34 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_notificationSettingsDidChangeObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v39, 0, 1, 0, sub_100D1FAF8, v40);

  v41 = *ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange.unsafeMutableAddressor();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v2;
  swift_allocObject();
  swift_retain_n();
  *(v34 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_allowsConnectContentNotificationObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v41, v2, 1, 1, sub_100D1FB00, v43);

  v44 = *ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange.unsafeMutableAddressor();
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v2;
  swift_allocObject();
  swift_retain_n();
  *(v34 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_allowsRadioContentNotificationObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v44, v2, 1, 1, sub_100D1FB08, v46);

  v47 = *ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange.unsafeMutableAddressor();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v2;
  swift_allocObject();
  swift_retain_n();
  *(v34 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_allowsSubscriptionContentNotificationObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v47, v2, 1, 1, sub_100D1FB10, v49);

  v50 = *v104;
  if (*v104)
  {
    sub_10010FC20(&qword_101183B78, &unk_100EBF5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    v52 = v50;
    v53 = NSUserDefaults.MobileiPod.suiteName.unsafeMutableAddressor();
    v54 = *v53;
    v55 = v53[1];
    v56 = sub_100011A68();

    v58 = UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(v54, v55, v57, &type metadata for NSUserDefaults.MobileiPod, v56);
    v60 = v59;
    v62 = v61;
    v64 = v63;
    *(inited + 56) = &type metadata for UserDefaultsKeyValueTrigger;
    *(inited + 64) = &protocol witness table for UserDefaultsKeyValueTrigger;
    v65 = swift_allocObject();
    *(inited + 32) = v65;
    v65[2] = v58;
    v65[3] = v60;
    v65[4] = v62;
    v65[5] = v64;
    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = v52;
    type metadata accessor for Whitetail.Binding();
    swift_allocObject();

    v68 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 0, sub_100D1FB38, v67);

    *(v34 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_hasUserRequestedSubscriptionHiddenObserver) = v68;
  }

  v69 = MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification;
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *(v34 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isCloudLibraryEnabledDidChangeNotificationObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v69, 0, 1, 1, sub_100D1FB18, v70);

  type metadata accessor for Whitetail.Binding();
  UIScreen.Dimensions.size.getter();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v108 = &type metadata for UserDefaultsKeyValueTrigger;
  v109 = &protocol witness table for UserDefaultsKeyValueTrigger;
  v79 = swift_allocObject();
  aBlock[0] = v79;
  v79[2] = v72;
  v79[3] = v74;
  v79[4] = v76;
  v79[5] = v78;
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();

  *(v34 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_mliSessionIDDidChangeObserver) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(aBlock, 0, sub_100D1FB20, v80);

  UIScreen.Dimensions.size.getter();
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v108 = &type metadata for UserDefaultsKeyValueTrigger;
  v109 = &protocol witness table for UserDefaultsKeyValueTrigger;
  v89 = swift_allocObject();
  aBlock[0] = v89;
  v89[2] = v82;
  v89[3] = v84;
  v89[4] = v86;
  v89[5] = v88;
  v90 = swift_allocObject();
  swift_unknownObjectWeakInit();

  *(v34 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_mliDidCompleteTransferDidChangeObserver) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(aBlock, 0, sub_100D1FB28, v90);

  UIScreen.Dimensions.size.getter();
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v108 = &type metadata for UserDefaultsKeyValueTrigger;
  v109 = &protocol witness table for UserDefaultsKeyValueTrigger;
  v99 = swift_allocObject();
  aBlock[0] = v99;
  v99[2] = v92;
  v99[3] = v94;
  v99[4] = v96;
  v99[5] = v98;
  v100 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v101 = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(aBlock, 0, sub_100D1FB30, v100);

  sub_10000959C(&v111);
  sub_10000959C(&v113);

  *(v34 + OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_mliReviewDidChangeObserver) = v101;

  return v34;
}

double JSCapabilitiesController.areNotificationsEnabled.setter(char a1)
{
  v3 = a1 & 1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_areNotificationsEnabled;
  swift_beginAccess();
  v7 = v1[v5];
  v1[v5] = a1;
  if (v7 != v3)
  {
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v8 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100EBDC20;
    *(v9 + 56) = ObjectType;
    *(v9 + 32) = v1;
    v10 = v1[v5];
    *(v9 + 88) = &type metadata for Bool;
    *(v9 + 64) = v10;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = _swiftEmptyArrayStorage;
    *(v11 + 32) = 0xD00000000000001DLL;
    *(v11 + 40) = 0x8000000100E6FA50;
    *(v11 + 48) = v1;
    *(v11 + 56) = v8;
    *(v11 + 64) = 0;
    v12 = v1;
    v13 = v8;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05168, v11);
  }

  return result;
}

void sub_100D1E128(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = Notification.userInfo.getter();
  if (!v4)
  {

    v9 = 0u;
    v10 = 0u;
    goto LABEL_12;
  }

  v5 = v4;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_1000160B4(v8), (v7 & 1) == 0))
  {

    sub_10001621C(v8);
    v9 = 0u;
    v10 = 0u;
    goto LABEL_10;
  }

  sub_10000DD18(*(v5 + 56) + 32 * v6, &v9);
  sub_10001621C(v8);

  if (!*(&v10 + 1))
  {
LABEL_10:

LABEL_12:
    sub_1000095E8(&v9, &unk_101183F30, qword_100EBF960);
    return;
  }

  if (swift_dynamicCast())
  {
    JSCapabilitiesController.areNotificationsEnabled.setter(v8[0]);
  }
}

double sub_100D1E270(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v5 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100EBDC20;
    *(v6 + 56) = type metadata accessor for JSCapabilitiesController();
    *(v6 + 32) = v4;
    v7 = v4;
    ApplicationCapabilities.Controller.capabilities.getter(v13);
    v8 = v14;

    sub_100014984(v13);
    v9 = sub_10048BBDC(3, v8);

    *(v6 + 88) = &type metadata for Bool;
    *(v6 + 64) = v9 & 1;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = _swiftEmptyArrayStorage;
    *(v10 + 32) = 0xD000000000000013;
    *(v10 + 40) = 0x8000000100E6FDB0;
    *(v10 + 48) = v7;
    *(v10 + 56) = v5;
    *(v10 + 64) = 0;
    v11 = v7;
    v12 = v5;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v10);
  }

  return result;
}

double sub_100D1E430(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v5 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100EBDC20;
    *(v6 + 56) = type metadata accessor for JSCapabilitiesController();
    *(v6 + 32) = v4;
    v7 = v4;
    ApplicationCapabilities.Controller.capabilities.getter(v13);
    v8 = v14;

    sub_100014984(v13);
    v9 = sub_10048BBDC(4, v8);

    *(v6 + 88) = &type metadata for Bool;
    *(v6 + 64) = v9 & 1;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = _swiftEmptyArrayStorage;
    *(v10 + 32) = 0xD000000000000012;
    *(v10 + 40) = 0x8000000100E6FD90;
    *(v10 + 48) = v7;
    *(v10 + 56) = v5;
    *(v10 + 64) = 0;
    v11 = v7;
    v12 = v5;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v10);
  }

  return result;
}

double sub_100D1E5F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v5 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100EBDC20;
    *(v6 + 56) = type metadata accessor for JSCapabilitiesController();
    *(v6 + 32) = v4;
    v7 = v4;
    ApplicationCapabilities.Controller.capabilities.getter(v13);
    v8 = v14;

    sub_100014984(v13);
    v9 = sub_10048BBDC(2, v8);

    *(v6 + 88) = &type metadata for Bool;
    *(v6 + 64) = v9 & 1;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = _swiftEmptyArrayStorage;
    *(v10 + 32) = 0xD000000000000020;
    *(v10 + 40) = 0x8000000100E6FD60;
    *(v10 + 48) = v7;
    *(v10 + 56) = v5;
    *(v10 + 64) = 0;
    v11 = v7;
    v12 = v5;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v10);
  }

  return result;
}

double sub_100D1E7B0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v4 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100EBDC20;
    *(v5 + 56) = type metadata accessor for JSCapabilitiesController();
    *(v5 + 32) = v3;
    v6 = v3;
    v7 = NSUserDefaults.hasUserRequestedSubscriptionHidden.getter();
    *(v5 + 88) = &type metadata for Bool;
    *(v5 + 64) = v7 & 1;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = _swiftEmptyArrayStorage;
    *(v8 + 32) = 0xD000000000000028;
    *(v8 + 40) = 0x8000000100E6FCD0;
    *(v8 + 48) = v6;
    *(v8 + 56) = v4;
    *(v8 + 64) = 0;
    v9 = v6;
    v10 = v4;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v8);
  }

  return result;
}

void sub_100D1E940(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100D1E994();
  }
}

void sub_100D1E994()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() sharedCloudController];
  v11 = v2;
  if (v2)
  {
    v3 = [v2 isCloudLibraryEnabled];
    v4 = &v0[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isCloudLibraryEnabled];
    if (v3 != v0[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isCloudLibraryEnabled])
    {
      v5 = v3;
LABEL_6:
      *v4 = v5;
      if (qword_1011BDB08 != -1)
      {
        swift_once();
      }

      v6 = static JSBridge.shared;
      sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100EBDC20;
      *(v7 + 56) = ObjectType;
      *(v7 + 32) = v0;
      *(v7 + 88) = &type metadata for Bool;
      *(v7 + 64) = v5;
      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = _swiftEmptyArrayStorage;
      *(v8 + 32) = 0xD000000000000019;
      *(v8 + 40) = 0x8000000100E6FD40;
      *(v8 + 48) = v0;
      *(v8 + 56) = v6;
      *(v8 + 64) = 0;
      v9 = v0;
      v10 = v6;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v8);

      return;
    }
  }

  else
  {
    v4 = &v0[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isCloudLibraryEnabled];
    if (v0[OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isCloudLibraryEnabled])
    {
      v5 = 0;
      goto LABEL_6;
    }
  }
}

double sub_100D1EBA0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() standardUserDefaults];
    UnifiedMessages.MLI.sessionIDKey.unsafeMutableAddressor();

    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 stringForKey:v5];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0xE000000000000000;
    }

    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v10 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100EBDC20;
    v12 = type metadata accessor for JSCapabilitiesController();
    *(v11 + 32) = v3;
    *(v11 + 88) = &type metadata for String;
    *(v11 + 56) = v12;
    *(v11 + 64) = v7;
    *(v11 + 72) = v9;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = _swiftEmptyArrayStorage;
    *(v13 + 32) = 0xD000000000000012;
    *(v13 + 40) = 0x8000000100E6FD20;
    *(v13 + 48) = v3;
    *(v13 + 56) = v10;
    *(v13 + 64) = 0;
    v14 = v3;
    v15 = v10;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v13);
  }

  return result;
}

double sub_100D1EDB8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() standardUserDefaults];
    UnifiedMessages.MLI.didCompleteTransferKey.unsafeMutableAddressor();

    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 BOOLForKey:v5];

    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v7 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100EBDC20;
    *(v8 + 56) = type metadata accessor for JSCapabilitiesController();
    *(v8 + 32) = v3;
    *(v8 + 88) = &type metadata for Bool;
    *(v8 + 64) = v6;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = _swiftEmptyArrayStorage;
    *(v9 + 32) = 0xD00000000000001CLL;
    *(v9 + 40) = 0x8000000100E6FD00;
    *(v9 + 48) = v3;
    *(v9 + 56) = v7;
    *(v9 + 64) = 0;
    v10 = v3;
    v11 = v7;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v9);
  }

  return result;
}

double sub_100D1EFA4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() standardUserDefaults];
    UnifiedMessages.MLI.mliReviewKey.unsafeMutableAddressor();

    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 stringForKey:v5];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0xE000000000000000;
    }

    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v10 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100EBDC20;
    v12 = type metadata accessor for JSCapabilitiesController();
    *(v11 + 32) = v3;
    *(v11 + 88) = &type metadata for String;
    *(v11 + 56) = v12;
    *(v11 + 64) = v7;
    *(v11 + 72) = v9;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = _swiftEmptyArrayStorage;
    *(v13 + 32) = 0x4C4D657461647075;
    *(v13 + 40) = 0xEF77656976655249;
    *(v13 + 48) = v3;
    *(v13 + 56) = v10;
    *(v13 + 64) = 0;
    v14 = v3;
    v15 = v10;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v13);
  }

  return result;
}

uint64_t JSCapabilitiesController.areNotificationsEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_areNotificationsEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*JSCapabilitiesController.areNotificationsEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_areNotificationsEnabled;
  *(v4 + 32) = ObjectType;
  *(v4 + 40) = v6;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v6);
  return sub_100D1F2A8;
}

void sub_100D1F2A8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    JSCapabilitiesController.areNotificationsEnabled.setter(v3);
  }

  else
  {
    v4 = v2[5];
    v5 = v2[3];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      if (qword_1011BDB08 != -1)
      {
        swift_once();
      }

      v8 = v2[4];
      v7 = v2[5];
      v9 = v2[3];
      v10 = static JSBridge.shared;
      sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100EBDC20;
      *(v11 + 56) = v8;
      *(v11 + 32) = v9;
      v12 = v9[v7];
      *(v11 + 88) = &type metadata for Bool;
      *(v11 + 64) = v12;
      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = _swiftEmptyArrayStorage;
      *(v13 + 32) = 0xD00000000000001DLL;
      *(v13 + 40) = 0x8000000100E6FA50;
      *(v13 + 48) = v9;
      *(v13 + 56) = v10;
      *(v13 + 64) = 0;
      v14 = v9;
      v15 = v10;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v13);
    }
  }

  free(v2);
}

uint64_t JSCapabilitiesController.isUnifiedMessagesEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isUnifiedMessagesEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

NSString sub_100D1F48C()
{
  result = String._bridgeToObjectiveC()();
  static JSCapabilitiesController.Notifications.libraryBannerOptInDidChangeNotification = result;
  return result;
}

uint64_t *JSCapabilitiesController.Notifications.libraryBannerOptInDidChangeNotification.unsafeMutableAddressor()
{
  if (qword_1011BDB48 != -1)
  {
    swift_once();
  }

  return &static JSCapabilitiesController.Notifications.libraryBannerOptInDidChangeNotification;
}

id static JSCapabilitiesController.Notifications.libraryBannerOptInDidChangeNotification.getter()
{
  if (qword_1011BDB48 != -1)
  {
    swift_once();
  }

  v1 = static JSCapabilitiesController.Notifications.libraryBannerOptInDidChangeNotification;

  return v1;
}

void JSCapabilitiesController.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[0] = a1;
  v18[1] = a2;
  sub_1000189C0(a3, v19);
  if (v19[3])
  {
    sub_1000189C0(v19, v17);

    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000022 && 0x8000000100E6F940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = *NSUserDefaults.mobileiPod.unsafeMutableAddressor();
        if (v6)
        {
          v7 = v6;
          NSUserDefaults.hasUserRequestedSubscriptionHidden.setter(v16);
        }

        goto LABEL_15;
      }

      if (a1 == 0xD000000000000021 && 0x8000000100E6F990 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = [objc_opt_self() sharedManager];
        [v8 setCachedAccountNotificationsShowInLibraryEnabled:v16];

        sub_10010FC20(&qword_1011BF350, &qword_100F13268);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100EBC6B0;
        *(inited + 32) = 0xD00000000000002ALL;
        v10 = inited + 32;
        *(inited + 40) = 0x8000000100E6F910;
        *(inited + 48) = v16;
        v11 = sub_100067718(inited);
        swift_setDeallocating();
        sub_1000095E8(v10, &qword_1011BF358, &qword_100F13270);
        v12 = [objc_opt_self() defaultCenter];
        if (qword_1011BDB48 != -1)
        {
          swift_once();
        }

        v13 = static JSCapabilitiesController.Notifications.libraryBannerOptInDidChangeNotification;
        sub_100D1CBD0(v11);

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v12 postNotificationName:v13 object:v3 userInfo:isa];

        goto LABEL_15;
      }

      if (a1 == 0xD000000000000018 && 0x8000000100E6F9E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v15 = OBJC_IVAR____TtC11MusicJSCore24JSCapabilitiesController_isUnifiedMessagesEnabled;
        swift_beginAccess();
        *(v3 + v15) = v16;
LABEL_15:
        sub_10000959C(v17);
        sub_1000095E8(v19, &unk_101183F30, qword_100EBF960);

        return;
      }
    }

    sub_10000959C(v17);
  }

  else
  {
  }

  sub_1000095E8(v18, &unk_1011C0D90, &unk_100F11470);
}

double sub_100D1F930()
{

  return result;
}

uint64_t type metadata accessor for JSAlertComponentController(uint64_t a1)
{
  result = qword_1011BF3B0;
  if (!qword_1011BF3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *JSHTTPRequestCoordinator.shared.unsafeMutableAddressor()
{
  if (qword_1011BDB50 != -1)
  {
    swift_once();
  }

  return &static JSHTTPRequestCoordinator.shared;
}

uint64_t JSHTTPRequestCoordinator.scheduleAuthenticationAndRetry(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = sub_10000954C(a1, v2);

  return sub_100D215BC(v4, v1, v2, v3);
}

double sub_100D1FD24(void *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() sharedPrivacyInfo];
  v5 = [v4 privacyAcknowledgementRequiredForMusic];

  if (v5)
  {
    swift_beginAccess();
    v6 = *(v2 + 32);
    if (*(v6 + 16) && (v7 = sub_100CEC488(), (v8 & 1) != 0))
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      v24 = v9;
      swift_endAccess();
      v23 = a1;
      __chkstk_darwin();
      v21[2] = &v23;
      swift_bridgeObjectRetain_n();
      v10 = sub_100D2C2E0(sub_100D218A0, v21, v9);

      if (v10)
      {

        return result;
      }

      v17 = a1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v18 = v24;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v2 + 32);
      *(v2 + 32) = 0x8000000000000000;
      sub_100CEAAA0(v18, isUniquelyReferenced_nonNull_native, v20);
      v16 = v22;
    }

    else
    {
      swift_endAccess();
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100EBC6C0;
      *(v12 + 32) = a1;
      swift_beginAccess();
      v13 = a1;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v2 + 32);
      *(v2 + 32) = 0x8000000000000000;
      sub_100CEAAA0(v12, v14, v15);
      v16 = v24;
    }

    *(v2 + 32) = v16;
    swift_endAccess();
  }

  else
  {
    (*((swift_isaMask & *a1) + 0x68))();
  }

  return result;
}

Swift::Int sub_100D1FFBC(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100D2009C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100D201B4(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100D202B0(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100D2040C(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100D20504(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100D20618(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100D20754(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100D20874(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100D209E4(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100D20AD4(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t sub_100D20BA4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100D218F4(*a1);
  *a2 = result;
  return result;
}

void sub_100D20BD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5522759;
  v5 = 0xE500000000000000;
  v6 = 0x4843544150;
  v7 = 0xE300000000000000;
  v8 = 5526864;
  if (v2 != 4)
  {
    v8 = 0x4554454C4544;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 1145128264;
  if (v2 != 1)
  {
    v9 = 1414745936;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

Swift::Int sub_100D20C90()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100F135D8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100D20D18(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100F135D8[v2]);
  return Hasher._finalize()();
}

uint64_t sub_100D20D64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore29SpecialHTTPResponseStatusCodeO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

id JSDeferrableRequest.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSDeferrableRequest();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_100D20E6C()
{
  v1 = v0;
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[4] = sub_100CE594C(_swiftEmptyArrayStorage);
  v0[5] = 0;
  v2 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for PrivacyAcknowledgementObserver();
  swift_allocObject();
  v1[5] = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, sub_100D21940, v2);

  return v1;
}

double sub_100D20F20(char a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((a1 & 1) == 0)
    {
      sub_100D20F80();
    }
  }

  return result;
}

void sub_100D20F80()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (*(v1 + 16) && (v2 = sub_100CEC488(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v4 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  sub_100CE7BCC(0, v5);
  swift_endAccess();
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_14:

    return;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_100D01348(i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      v9 = v8;
      (*((swift_isaMask & *v8) + 0x68))();
    }

    goto LABEL_14;
  }

  __break(1u);
}

void *sub_100D210E8()
{
  type metadata accessor for JSHTTPRequestCoordinator();
  v0 = swift_allocObject();
  result = sub_100D20E6C();
  static JSHTTPRequestCoordinator.shared = v0;
  return result;
}

double static JSHTTPRequestCoordinator.shared.getter()
{
  if (qword_1011BDB50 != -1)
  {
    swift_once();
  }

  return result;
}

double JSHTTPRequestCoordinator.authenticationDelegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*JSHTTPRequestCoordinator.authenticationDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100D212B0;
}

void sub_100D212B0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

Swift::Int sub_100D21334()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100D213A8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_100D213FC(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FAF10, *a1);

  *a2 = v3 != 0;
}

uint64_t JSHTTPRequestCoordinator.deinit()
{
  sub_1000D8F2C(v0 + 16);

  return v0;
}

uint64_t JSHTTPRequestCoordinator.__deallocating_deinit()
{
  sub_1000D8F2C(v0 + 16);

  return swift_deallocClassInstance();
}

BOOL sub_100D214E8()
{
  v6 = String.lowercased()();
  v5[2] = &v6;
  if ((sub_10044AB94(sub_100A52F18, v5, &off_1010FAF48) & 1) != 0 || (v0._countAndFlagsBits = 0x2D79786F7270, v0._object = 0xE600000000000000, String.hasPrefix(_:)(v0)))
  {

    return 0;
  }

  else
  {
    v2._countAndFlagsBits = 761488755;
    v2._object = 0xE400000000000000;
    v3 = String.hasPrefix(_:)(v2);

    return !v3;
  }
}

uint64_t sub_100D215BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  v7 = sub_10001C8B8(v11);
  (*(*(a3 - 8) + 16))(v7, a1, a3);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(v11, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  return sub_10000959C(v11);
}

uint64_t _s11MusicJSCore29SpecialHTTPResponseStatusCodeO8rawValueACSgSi_tcfC_0(uint64_t result)
{
  if (result > 402)
  {
    if (result > 900)
    {
      if (result == 901)
      {
        return 6;
      }

      if (result == 950)
      {
        return 7;
      }
    }

    else
    {
      if (result == 403)
      {
        return 4;
      }

      if (result == 900)
      {
        return 5;
      }
    }
  }

  else if (result > 399)
  {
    if (result == 400)
    {
      return 2;
    }

    if (result == 401)
    {
      return 3;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (result == 200)
    {
      return 1;
    }
  }

  return 8;
}

unint64_t sub_100D21748()
{
  result = qword_1011BF3C0;
  if (!qword_1011BF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BF3C0);
  }

  return result;
}

unint64_t sub_100D217F4()
{
  result = qword_1011BF4A0;
  if (!qword_1011BF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BF4A0);
  }

  return result;
}

unint64_t sub_100D2184C()
{
  result = qword_1011BF4A8;
  if (!qword_1011BF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BF4A8);
  }

  return result;
}

unint64_t sub_100D218F4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FA7E8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t JSSubscriptionStatusResponse.EligibilityStatus.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0x656C626967696C65;
  }

  return 0x6967696C45746F6ELL;
}

uint64_t sub_100D219AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x656C626967696C65;
  if (v2 != 1)
  {
    v4 = 0x6967696C45746F6ELL;
    v3 = 0xEB00000000656C62;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656C626967696C65;
  if (*a2 != 1)
  {
    v8 = 0x6967696C45746F6ELL;
    v7 = 0xEB00000000656C62;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
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

Swift::Int sub_100D21AC0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100D21B6C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100D21C04(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D21CAC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore28JSSubscriptionStatusResponseC011EligibilityD0O8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100D21CDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x656C626967696C65;
  if (v2 != 1)
  {
    v5 = 0x6967696C45746F6ELL;
    v4 = 0xEB00000000656C62;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t JSSubscriptionStatusResponse.AccountStatus.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6373627553746F6ELL;
  v2 = 0x6269726373627573;
  v3 = 0x6564696C67;
  if (a1 != 3)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (!a1)
  {
    v1 = 0xD000000000000013;
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

Swift::Int sub_100D21E00()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100D21EF4(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100D21FD4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D220C4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore28JSSubscriptionStatusResponseC07AccountD0O8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100D220F4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006465626972;
  v4 = 0x6373627553746F6ELL;
  v5 = 0xEA00000000006465;
  v6 = 0x6269726373627573;
  v7 = 0xE500000000000000;
  v8 = 0x6564696C67;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x8000000100E5C850;
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

unint64_t JSSubscriptionStatusResponse.CarrierBundlingStatus.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x64656B6E696C6E75;
  v2 = 0x656C626967696C65;
  v3 = 0x6967696C45746F6ELL;
  if (a1 != 3)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000017;
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

Swift::Int sub_100D2225C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100D2234C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100D22428(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D22514@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore28JSSubscriptionStatusResponseC015CarrierBundlingD0O8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100D22544(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x64656B6E696C6E75;
  v5 = 0xE800000000000000;
  v6 = 0x656C626967696C65;
  v7 = 0xEB00000000656C62;
  v8 = 0x6967696C45746F6ELL;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000017;
    v3 = 0x8000000100E6D030;
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

unint64_t JSSubscriptionStatusResponse.Capability.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000012;
  if (a1 != 2)
  {
    v1 = 0xD000000000000014;
  }

  v2 = 0xD00000000000001DLL;
  if (!a1)
  {
    v2 = 0xD000000000000013;
  }

  if (a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

Swift::Int sub_100D22694()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100D22760(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100D22818(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D228E0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore28JSSubscriptionStatusResponseC10CapabilityO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100D22910(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "voiceActivatedCatalogPlayback";
  v4 = 0xD000000000000012;
  v5 = "anyCatalogPlayback";
  if (v2 != 3)
  {
    v5 = "cloudLibraryEligible";
  }

  if (v2 != 2)
  {
    v4 = 0xD000000000000014;
    v3 = v5;
  }

  v6 = 0xD00000000000001DLL;
  if (*v1)
  {
    v7 = "fullCatalogPlayback";
  }

  else
  {
    v6 = 0xD000000000000013;
    v7 = "needsManualVerification";
  }

  if (*v1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v6 = v4;
    v8 = v3;
  }

  *a1 = v6;
  a1[1] = v8 | 0x8000000000000000;
}

uint64_t *JSSubscriptionStatusResponse.__allocating_init(subscriptionStatus:isFinal:type:)(void *a1, uint64_t a2, __int128 *a3)
{
  v5 = a2;
  v7 = objc_allocWithZone(v3);
  return JSSubscriptionStatusResponse.init(subscriptionStatus:isFinal:type:)(a1, v5, a3);
}

uint64_t *JSSubscriptionStatusResponse.init(subscriptionStatus:isFinal:type:)(void *a1, char a2, __int128 *a3)
{
  v105 = *a3;
  v106 = a3[1];
  v104 = *(a3 + 4);
  v107 = *(a3 + 40);
  v5 = sub_10010BC60(_swiftEmptyArrayStorage);
  sub_100009F78(0, &qword_10118A3B8, ICUserIdentityStore_ptr);
  v6 = static ICUserIdentityStore.activeAccountDSID.getter();
  v111 = a1;
  if (v6)
  {
    v7 = v6;
    v8 = [v6 stringValue];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    *(&v115 + 1) = &type metadata for String;
    *&v114 = v9;
    *(&v114 + 1) = v11;
    sub_100016270(&v114, v112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113 = v5;
    sub_1006C5E68(v112, 0xD000000000000011, 0x8000000100E700A0, isUniquelyReferenced_nonNull_native);

    v5 = v113;
  }

  v13 = [a1 sessionIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    *(&v115 + 1) = &type metadata for String;
    *&v114 = v15;
    *(&v114 + 1) = v17;
    sub_100016270(&v114, v112);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v113 = v5;
    sub_1006C5E68(v112, 0xD000000000000011, 0x8000000100E70080, v18);
    v5 = v113;
  }

  v19 = [a1 statusType];
  v20 = [a1 reasonType];
  if (v19 == 3)
  {
    v21 = 0;
    v23 = 0x6564696C67;
    v24 = 0xE500000000000000;
    v22 = 3;
  }

  else if (v19 == 2)
  {
    if (v20 == 4)
    {
      v22 = 0;
      v21 = 0;
      v24 = 0x8000000100E5C850;
      v23 = 0xD000000000000013;
    }

    else
    {
      v21 = 0;
      v22 = 1;
      v23 = 0x6373627553746F6ELL;
      v24 = 0xED00006465626972;
    }
  }

  else if (v19 == 1)
  {
    v21 = 1;
    v22 = 2;
    v23 = 0x6269726373627573;
    v24 = 0xEA00000000006465;
  }

  else
  {
    v21 = 0;
    v23 = 0x6E776F6E6B6E75;
    v24 = 0xE700000000000000;
    v22 = 4;
  }

  v25 = 0x656C626967696C65;
  *(&v115 + 1) = &type metadata for String;
  *&v114 = v23;
  *(&v114 + 1) = v24;
  sub_100016270(&v114, v112);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v113 = v5;
  sub_1006C5E68(v112, 0x53746E756F636361, 0xED00007375746174, v26);
  v27 = v113;
  *(&v115 + 1) = &type metadata for Bool;
  LOBYTE(v114) = v21;
  sub_100016270(&v114, v112);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v113 = v27;
  sub_1006C5E68(v112, 0x7263736275537369, 0xEC00000064656269, v28);
  v29 = v113;
  v30 = [a1 carrierBundlingStatusType];
  if (v30 <= 1)
  {
    if (!v30)
    {
      v31 = 0x6E776F6E6B6E75;
      v33 = 0xE700000000000000;
      v32 = 4;
      goto LABEL_25;
    }

    if (v30 == 1)
    {
      v33 = 0xE800000000000000;
      v32 = 2;
      v31 = 0x656C626967696C65;
      goto LABEL_25;
    }

LABEL_86:
    *&v114 = 0;
    *(&v114 + 1) = 0xE000000000000000;
    v101 = v30;
    _StringGuts.grow(_:)(66);
    v102._countAndFlagsBits = 0xD000000000000040;
    v102._object = 0x8000000100E6FF30;
    String.append(_:)(v102);
    *&v112[0] = v101;
    type metadata accessor for ICMusicSubscriptionCarrierBundlingStatusType(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v30 == 4)
  {
    v33 = 0x8000000100E6D030;
    v32 = 1;
    v31 = 0xD000000000000017;
    goto LABEL_25;
  }

  if (v30 != 3)
  {
    if (v30 == 2)
    {
      v32 = 0;
      v31 = 0x64656B6E696C6E75;
      v33 = 0xE800000000000000;
      goto LABEL_25;
    }

    goto LABEL_86;
  }

  v31 = 0x6967696C45746F6ELL;
  v32 = 3;
  v33 = 0xEB00000000656C62;
LABEL_25:
  *(&v115 + 1) = &type metadata for String;
  *&v114 = v31;
  *(&v114 + 1) = v33;
  sub_100016270(&v114, v112);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v113 = v29;
  sub_1006C5E68(v112, 0xD000000000000015, 0x8000000100E6FF80, v34);
  v35 = v113;
  v109 = a3;
  if (v22 == 2)
  {
    goto LABEL_30;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    goto LABEL_31;
  }

  if (v32 == 2)
  {
LABEL_30:

    goto LABEL_31;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v37 & 1) == 0)
  {
    if (!v32)
    {
      goto LABEL_30;
    }

    v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v85)
    {
      goto LABEL_31;
    }

    if (v22 <= 1 && v22)
    {
    }

    else
    {
      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v86 & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    v38 = 0xEB00000000656C62;
    if (v32 == 3)
    {
    }

    else
    {
      v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v87 & 1) == 0)
      {
LABEL_77:
        v25 = 0x6E776F6E6B6E75;
        v38 = 0xE700000000000000;
        goto LABEL_32;
      }
    }

    v25 = 0x6967696C45746F6ELL;
    goto LABEL_32;
  }

LABEL_31:
  v38 = 0xE800000000000000;
LABEL_32:
  *(&v115 + 1) = &type metadata for String;
  *&v114 = v25;
  *(&v114 + 1) = v38;
  sub_100016270(&v114, v112);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v113 = v35;
  sub_1006C5E68(v112, 0xD000000000000011, 0x8000000100E6FFA0, v39);
  v110 = v113;
  v40 = [a1 capabilities];
  v41 = 0;
  v42 = _swiftEmptyArrayStorage;
  do
  {
    v44 = *(&off_1010FB338 + v41 + 32);
    if (v44 <= 1)
    {
      if (*(&off_1010FB338 + v41 + 32))
      {
        if ((v40 & 2) == 0)
        {
          goto LABEL_34;
        }

        v45 = 0xD00000000000001DLL;
        v46 = "fullCatalogPlayback";
      }

      else
      {
        if ((v40 & 1) == 0)
        {
          goto LABEL_34;
        }

        v45 = 0xD000000000000013;
        v46 = "needsManualVerification";
      }
    }

    else if (v44 == 2)
    {
      if ((v40 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      v45 = 0xD000000000000012;
      v46 = "voiceActivatedCatalogPlayback";
    }

    else if (v44 == 3)
    {
      if ((v40 & 0x100) == 0)
      {
        goto LABEL_34;
      }

      v45 = 0xD000000000000014;
      v46 = "anyCatalogPlayback";
    }

    else
    {
      if ((v40 & 0x10000) == 0)
      {
        goto LABEL_34;
      }

      v45 = 0xD000000000000014;
      v46 = "cloudLibraryEligible";
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_100498B7C(0, *(v42 + 2) + 1, 1, v42);
    }

    v48 = *(v42 + 2);
    v47 = *(v42 + 3);
    if (v48 >= v47 >> 1)
    {
      v42 = sub_100498B7C((v47 > 1), v48 + 1, 1, v42);
    }

    *(v42 + 2) = v48 + 1;
    v43 = &v42[16 * v48];
    *(v43 + 4) = v45;
    *(v43 + 5) = v46 | 0x8000000000000000;
LABEL_34:
    ++v41;
  }

  while (v41 != 5);
  *(&v115 + 1) = sub_10010FC20(&qword_101183BC8, &unk_100EBF620);
  *&v114 = v42;
  sub_100016270(&v114, v112);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v113 = v110;
  sub_1006C5E68(v112, 0x696C696261706163, 0xEC00000073656974, v49);
  v50 = v113;
  v51 = v111;
  v52 = [v111 isDiscoveryModeEligible];
  *(&v115 + 1) = &type metadata for Bool;
  LOBYTE(v114) = v52;
  sub_100016270(&v114, v112);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v113 = v50;
  sub_1006C5E68(v112, 0xD000000000000017, 0x8000000100E6FFC0, v53);
  v54 = v113;
  v55 = [v111 isHeadOfHousehold];
  *(&v115 + 1) = &type metadata for Bool;
  LOBYTE(v114) = v55;
  sub_100016270(&v114, v112);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v113 = v54;
  sub_1006C5E68(v112, 0xD000000000000011, 0x8000000100E6FFE0, v56);
  v57 = v113;
  v58 = [v111 reasonType] == 2;
  *(&v115 + 1) = &type metadata for Bool;
  LOBYTE(v114) = v58;
  sub_100016270(&v114, v112);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v113 = v57;
  sub_1006C5E68(v112, 0xD000000000000014, 0x8000000100E70000, v59);
  v60 = v113;
  v61 = [v111 hasFamily];
  *(&v115 + 1) = &type metadata for Bool;
  LOBYTE(v114) = v61;
  sub_100016270(&v114, v112);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v113 = v60;
  sub_1006C5E68(v112, 0x6C696D6146736168, 0xE900000000000079, v62);
  v63 = v113;
  v64 = [v111 hasFamilyGreaterThanOneMember];
  *(&v115 + 1) = &type metadata for Bool;
  LOBYTE(v114) = v64;
  sub_100016270(&v114, v112);
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v113 = v63;
  sub_1006C5E68(v112, 0xD000000000000010, 0x8000000100E70020, v65);
  v66 = v113;
  v67 = [v111 isMinorAccountHolder];
  *(&v115 + 1) = &type metadata for Bool;
  LOBYTE(v114) = v67;
  sub_100016270(&v114, v112);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v113 = v66;
  sub_1006C5E68(v112, 0x726F6E694D7369, 0xE700000000000000, v68);
  v69 = v113;
  v70 = [v111 termsStatusList];
  if (v70)
  {
    v71 = v70;
    sub_100009F78(0, &qword_1011BE9B0, ICMusicSubscriptionStatusTerms_ptr);
    v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v72 >> 62)
    {
      goto LABEL_80;
    }

    for (i = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v74 = 0;
      while (1)
      {
        if ((v72 & 0xC000000000000001) != 0)
        {
          v75 = sub_100D02178(v74, v72);
        }

        else
        {
          if (v74 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_79;
          }

          v75 = *(v72 + 8 * v74 + 32);
        }

        v76 = v75;
        v77 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          break;
        }

        if ([v75 type] == 1)
        {

          v79 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v76, "acceptedVersion")}];
          v80 = sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
          *(&v115 + 1) = v80;
          *&v114 = v79;
          sub_100016270(&v114, v112);
          v81 = swift_isUniquelyReferenced_nonNull_native();
          v113 = v69;
          sub_1006C5E68(v112, 0xD000000000000019, 0x8000000100E70040, v81);
          v82 = v113;
          v83 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v76, "currentVersion")}];
          *(&v115 + 1) = v80;
          *&v114 = v83;
          sub_100016270(&v114, v112);
          v84 = swift_isUniquelyReferenced_nonNull_native();
          v113 = v82;
          sub_1006C5E68(v112, 0xD000000000000017, 0x8000000100E70060, v84);

          v69 = v113;
          goto LABEL_82;
        }

        ++v74;
        if (v77 == i)
        {
          goto LABEL_81;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      ;
    }

LABEL_81:

LABEL_82:
    v78 = v109;
    v51 = v111;
  }

  else
  {
    v78 = v109;
  }

  v88 = [v51 responseDictionary];
  v89 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *(&v115 + 1) = sub_10010FC20(&unk_1011BE660, &unk_100ECAF60);
  *&v114 = v89;
  sub_100016270(&v114, v112);
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v113 = v69;
  sub_1006C5E68(v112, 0x6F70736552776172, 0xEF6174614465736ELL, v90);
  v91 = v113;
  *(&v115 + 1) = &type metadata for Bool;
  LOBYTE(v114) = a2 & 1;
  sub_100016270(&v114, v112);
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v113 = v91;
  sub_1006C5E68(v112, 0x6C616E69467369, 0xE700000000000000, v92);
  v93 = v113;
  *(v108 + OBJC_IVAR____TtC11MusicJSCore28JSSubscriptionStatusResponse_attributes) = v113;
  v94 = v107;
  v96 = v105;
  v95 = v106;
  v97 = v104;
  if (*(v78 + 40) == 255)
  {
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_100EBC6B0;
    *(v98 + 56) = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
    *(v98 + 32) = v93;

    v94 = 0;
    v95 = 0uLL;
    v96 = v98;
    v97 = 1;
  }

  v114 = v96;
  v115 = v95;
  v116 = v97;
  v117 = v94;

  sub_100D23D3C(v78, v112);
  v99 = JSObject.init(type:)(&v114);

  sub_100D23DAC(v78);

  return v99;
}

uint64_t JSSubscriptionStatusResponse.isMinor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore28JSSubscriptionStatusResponse_attributes);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_100019C10(0x726F6E694D7369, 0xE700000000000000);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_10000DD18(*(v1 + 56) + 32 * v2, v6);
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

unint64_t _s11MusicJSCore28JSSubscriptionStatusResponseC011EligibilityD0O8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FB0B8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t _s11MusicJSCore28JSSubscriptionStatusResponseC07AccountD0O8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FB120, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t _s11MusicJSCore28JSSubscriptionStatusResponseC015CarrierBundlingD0O8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FB1B8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t _s11MusicJSCore28JSSubscriptionStatusResponseC10CapabilityO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FB250, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100D23D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BF4B8, &qword_100F13640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D23DAC(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BF4B8, &qword_100F13640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100D23E18()
{
  result = qword_1011BF4C0;
  if (!qword_1011BF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BF4C0);
  }

  return result;
}

unint64_t sub_100D23E70()
{
  result = qword_1011BF4C8;
  if (!qword_1011BF4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BF4C8);
  }

  return result;
}

unint64_t sub_100D23EC8()
{
  result = qword_1011BF4D0;
  if (!qword_1011BF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BF4D0);
  }

  return result;
}

unint64_t sub_100D23F20()
{
  result = qword_1011BF4D8;
  if (!qword_1011BF4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BF4D8);
  }

  return result;
}

unint64_t sub_100D23F78()
{
  result = qword_1011BF4E0;
  if (!qword_1011BF4E0)
  {
    sub_1001109D0(&qword_1011BF4E8, &qword_100F138C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BF4E0);
  }

  return result;
}

void (*JSSearchLandingUpsell.marketingID.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A360A8;
}

uint64_t JSSearchLandingUpsell.$marketingID.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$marketingID.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__marketingID;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36370;
}

void (*JSSearchLandingUpsell.headline.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSSearchLandingUpsell.$headline.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$headline.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__headline;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void (*JSSearchLandingUpsell.subtitle.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSSearchLandingUpsell.$subtitle.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$subtitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__subtitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void (*JSSearchLandingUpsell.primaryButtonTitle.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSSearchLandingUpsell.$primaryButtonTitle.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$primaryButtonTitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__primaryButtonTitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void (*JSSearchLandingUpsell.accessoryButtonTitle.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSSearchLandingUpsell.$accessoryButtonTitle.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$accessoryButtonTitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__accessoryButtonTitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void (*JSSearchLandingUpsell.tallArtwork.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSSearchLandingUpsell.$tallArtwork.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BF558, &qword_100F13B40);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BF550, &unk_100F15650);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$tallArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011BF558, &qword_100F13B40);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__tallArtwork;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011BF550, &unk_100F15650);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void (*JSSearchLandingUpsell.wideArtwork.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSSearchLandingUpsell.$wideArtwork.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BF558, &qword_100F13B40);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BF550, &unk_100F15650);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$wideArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011BF558, &qword_100F13B40);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__wideArtwork;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011BF550, &unk_100F15650);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void (*JSSearchLandingUpsell.tallVideoArtwork.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSSearchLandingUpsell.$tallVideoArtwork.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BF580, &qword_100F13BE8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BF578, &qword_100F13BE0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$tallVideoArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011BF580, &qword_100F13BE8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__tallVideoArtwork;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011BF578, &qword_100F13BE0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void (*JSSearchLandingUpsell.wideVideoArtwork.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSSearchLandingUpsell.$wideVideoArtwork.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BF580, &qword_100F13BE8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BF578, &qword_100F13BE0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$wideVideoArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011BF580, &qword_100F13BE8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__wideVideoArtwork;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011BF578, &qword_100F13BE0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t JSSearchLandingUpsell.shouldDisplayCloseButton.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_100D260FC(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_100D2617C(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t JSSearchLandingUpsell.shouldDisplayCloseButton.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

void (*JSSearchLandingUpsell.shouldDisplayCloseButton.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSSearchLandingUpsell.$shouldDisplayCloseButton.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101182130, &unk_100EBF5B0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSearchLandingUpsell.$shouldDisplayCloseButton.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&unk_101182130, &unk_100EBF5B0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__shouldDisplayCloseButton;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

double JSSearchLandingUpsell.didSelectCloseButton(snapshotImpressions:pageDetailsProvider:)(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v7 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBDC20;
  *(v8 + 56) = ObjectType;
  *(v8 + 32) = v3;
  if (a1)
  {
    objc_allocWithZone(type metadata accessor for JSImpressionsBatch());
    v9 = a2;
    v10 = v3;

    v12 = sub_100D32680(v11, 0, a2);

    *(v8 + 88) = sub_100009F78(0, &qword_101197A30, NSObject_ptr);
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(v8 + 88) = sub_100009F78(0, &qword_101197A30, NSObject_ptr);
    v13 = v3;
  }

  v12 = [objc_allocWithZone(NSNull) init];
LABEL_8:
  *(v8 + 64) = v12;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = _swiftEmptyArrayStorage;
  *(v14 + 32) = 0xD00000000000001BLL;
  *(v14 + 40) = 0x8000000100E70140;
  *(v14 + 48) = v3;
  *(v14 + 56) = v7;
  *(v14 + 64) = 0;
  v15 = v3;
  v16 = v7;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CE6890, v14);

  return result;
}

double JSSearchLandingUpsell.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = a1;
  v11[1] = a2;
  sub_1000189C0(a3, v12);
  if (!v12[3])
  {

LABEL_8:
    JSViewModel.updateProperty(_:value:)(a1, a2, a3);
    sub_1000095E8(v11, &unk_1011C0D90, &unk_100F11470);
    return result;
  }

  sub_1000189C0(v12, v10);

  if (swift_dynamicCast())
  {
    if (a1 == 0x6E6974656B72616DLL && a2 == 0xEB00000000644967 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x656E696C64616568 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000012 && 0x8000000100E701C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000014 && 0x8000000100E6EC30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_50;
    }
  }

  type metadata accessor for JSArtwork(0);
  if (swift_dynamicCast())
  {
    if (a1 == 0x777472416C6C6174 && a2 == 0xEB000000006B726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x7774724165646977 && a2 == 0xEB000000006B726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_50;
    }
  }

  type metadata accessor for JSVideoArtwork();
  if (swift_dynamicCast())
  {
    if (a1 == 0xD000000000000010 && 0x8000000100E70180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000010 && 0x8000000100E701A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_50;
    }
  }

  if (!swift_dynamicCast() || (a1 != 0xD000000000000018 || 0x8000000100E70160 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10000959C(v10);
    goto LABEL_8;
  }

LABEL_50:
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v3;
  static Published.subscript.setter();
  sub_10000959C(v10);
  sub_1000095E8(v12, &unk_101183F30, qword_100EBF960);

  return result;
}

uint64_t *JSSearchLandingUpsell.init(type:)(uint64_t *a1)
{
  v40 = a1;
  v2 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin();
  v37 = &v33 - v3;
  v4 = sub_10010FC20(&qword_1011BF578, &qword_100F13BE0);
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin();
  v34 = &v33 - v5;
  v33 = sub_10010FC20(&qword_1011BF550, &unk_100F15650);
  v6 = *(v33 - 8);
  __chkstk_darwin();
  v8 = &v33 - v7;
  v9 = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v33 - v11;
  v13 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__marketingID;
  v41 = 0;
  v42 = 0xE000000000000000;
  Published.init(initialValue:)();
  v14 = *(v10 + 32);
  v14(v1 + v13, v12, v9);
  v15 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__headline;
  v41 = 0;
  v42 = 0xE000000000000000;
  Published.init(initialValue:)();
  v14(v1 + v15, v12, v9);
  v16 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__subtitle;
  v41 = 0;
  v42 = 0xE000000000000000;
  Published.init(initialValue:)();
  v14(v1 + v16, v12, v9);
  v17 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__primaryButtonTitle;
  v41 = 0;
  v42 = 0xE000000000000000;
  Published.init(initialValue:)();
  v14(v1 + v17, v12, v9);
  v18 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__accessoryButtonTitle;
  v41 = 0;
  v42 = 0xE000000000000000;
  Published.init(initialValue:)();
  v14(v1 + v18, v12, v9);
  v19 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__tallArtwork;
  v41 = 0;
  sub_10010FC20(&qword_1011BF540, &qword_100F15600);
  Published.init(initialValue:)();
  v20 = *(v6 + 32);
  v21 = v33;
  v20(v1 + v19, v8, v33);
  v22 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__wideArtwork;
  v41 = 0;
  Published.init(initialValue:)();
  v20(v1 + v22, v8, v21);
  v23 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__tallVideoArtwork;
  v41 = 0;
  sub_10010FC20(&qword_1011BF568, &qword_100F13B90);
  v24 = v34;
  Published.init(initialValue:)();
  v25 = v36;
  v26 = *(v35 + 32);
  v26(v1 + v23, v24, v36);
  v27 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__wideVideoArtwork;
  v41 = 0;
  Published.init(initialValue:)();
  v26(v1 + v27, v24, v25);
  v28 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__shouldDisplayCloseButton;
  LOBYTE(v41) = 0;
  v29 = v37;
  Published.init(initialValue:)();
  (*(v38 + 32))(v1 + v28, v29, v39);
  v30 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v31 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v31 = 0;
  v31[1] = 0;
  return JSObject.init(type:)(v40);
}

uint64_t sub_100D2725C()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__marketingID;
  v2 = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__headline, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__subtitle, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__primaryButtonTitle, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__accessoryButtonTitle, v2);
  v4 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__tallArtwork;
  v5 = sub_10010FC20(&qword_1011BF550, &unk_100F15650);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__wideArtwork, v5);
  v7 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__tallVideoArtwork;
  v8 = sub_10010FC20(&qword_1011BF578, &qword_100F13BE0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__wideVideoArtwork, v8);
  v10 = OBJC_IVAR____TtC11MusicJSCore21JSSearchLandingUpsell__shouldDisplayCloseButton;
  v11 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  v12 = *(*(v11 - 8) + 8);

  return v12(v0 + v10, v11);
}

uint64_t type metadata accessor for JSSearchLandingUpsell(uint64_t a1)
{
  result = qword_1011BF5C0;
  if (!qword_1011BF5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D276EC(uint64_t a1)
{
  sub_100005390(319, &qword_101187AF8, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_1000054CC(319, &qword_1011BF5D0, &qword_1011BF540, &qword_100F15600);
    if (v2 <= 0x3F)
    {
      sub_1000054CC(319, &qword_1011BF5D8, &qword_1011BF568, &qword_100F13B90);
      if (v3 <= 0x3F)
      {
        sub_100005390(319, &qword_10119ED80, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

id JSDevice.init(rootElementSizing:)(void *a1, id a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSDevice_mainScreen) = 0;
  v10 = sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    v49 = a2;
    a2 = [objc_opt_self() currentDeviceInfo];
    v12 = objc_allocWithZone(ICStoreRequestContext);
    v58 = UIScreen.Dimensions.size.getter;
    v59 = 0;
    aBlock = _NSConcreteStackBlock;
    v55 = 1107296256;
    v56 = sub_10006BD7C;
    v57 = &unk_1011004B8;
    v13 = _Block_copy(&aBlock);
    v11 = [v12 initWithBlock:v13];
    _Block_release(v13);

    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      v50 = v11;
      v51 = v3;
      v52 = v10;
      v53 = a1;
      v14 = [a2 productVersion];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
      inited = swift_initStackObject();
      *(inited + 32) = 0xD000000000000011;
      *(inited + 16) = xmmword_100EBCED0;
      *(inited + 40) = 0x8000000100E702E0;
      v19 = [objc_allocWithZone(NSNumber) initWithBool:*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor()];
      v20 = sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
      *(inited + 48) = v19;
      *(inited + 72) = v20;
      *(inited + 80) = 1684632935;
      *(inited + 88) = 0xE400000000000000;
      v21 = [a2 deviceGUID];
      if (v21)
      {
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = (inited + 96);
        *(inited + 120) = &type metadata for String;
        if (v25)
        {
          *v26 = v23;
          goto LABEL_8;
        }
      }

      else
      {
        v26 = (inited + 96);
        *(inited + 120) = &type metadata for String;
      }

      *v26 = 0;
      v25 = 0xE000000000000000;
LABEL_8:
      *(inited + 104) = v25;
      *(inited + 128) = 0x6C65646F6DLL;
      *(inited + 136) = 0xE500000000000000;
      v27 = [a2 deviceClassName];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      *(inited + 144) = v28;
      *(inited + 152) = v30;
      *(inited + 168) = &type metadata for String;
      strcpy((inited + 176), "systemVersion");
      *(inited + 190) = -4864;
      *(inited + 192) = v15;
      *(inited + 200) = v17;
      *(inited + 216) = &type metadata for String;
      strcpy((inited + 224), "buildVersion");
      *(inited + 237) = 0;
      *(inited + 238) = -5120;
      v31 = [a2 buildVersion];
      if (v31)
      {
        v32 = v31;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = (inited + 240);
        *(inited + 264) = &type metadata for String;
        a1 = v50;
        if (v35)
        {
          *v36 = v33;
          goto LABEL_13;
        }
      }

      else
      {
        v36 = (inited + 240);
        *(inited + 264) = &type metadata for String;
        a1 = v50;
      }

      *v36 = 0;
      v35 = 0xE000000000000000;
LABEL_13:
      *(inited + 248) = v35;
      *(inited + 272) = 0x6E65674172657375;
      *(inited + 280) = 0xE900000000000074;
      v37 = [a1 userAgent];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      *(inited + 312) = &type metadata for String;
      *(inited + 288) = v6;
      *(inited + 296) = v39;
      v40 = sub_10010BC60(inited);
      swift_setDeallocating();
      sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
      swift_arrayDestroy();
      sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
      v41 = swift_allocObject();
      *(v41 + 1) = xmmword_100EBC6B0;
      v41[7] = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
      v41[4] = v40;
      LOBYTE(v6) = 1;
      aBlock = v41;
      v55 = 1;
      v57 = 0;
      v58 = 0;
      v56 = 0;
      LOBYTE(v59) = 0;
      v42 = JSObject.init(type:)(&aBlock);
      v43 = qword_1011BDB08;
      v11 = v42;
      if (v43 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_19:
  swift_once();
LABEL_14:
  v44 = static JSBridge.shared;
  v45 = swift_allocObject();
  *(v45 + 16) = 0x656369766544;
  *(v45 + 24) = 0xE600000000000000;
  *(v45 + 32) = v11;
  *(v45 + 40) = v44;
  *(v45 + 48) = v6;
  v46 = v11;
  v47 = v44;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CF9E54, v45);

  if (v53)
  {
    JSDevice.configureWithRootElementSizing(_:isRequiredForInitialSetup:)(v53, v49, 1);
    swift_unknownObjectRelease();
  }

  return v46;
}

double JSDevice.configureWithRootElementSizing(_:isRequiredForInitialSetup:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC11MusicJSCore8JSDevice_mainScreen;
  if (!*&v4[OBJC_IVAR____TtC11MusicJSCore8JSDevice_mainScreen])
  {
    v10 = ObjectType;
    v11 = type metadata accessor for JSScreen();
    objc_allocWithZone(v11);
    v12 = swift_unknownObjectRetain();
    v13 = JSScreen.init(rootElementSizing:isRequiredForInitialSetup:)(v12, a2, a3 & 1);
    v14 = *&v4[v9];
    *&v4[v9] = v13;
    v15 = v13;

    if (a3)
    {
      if (qword_1011BDB08 != -1)
      {
        swift_once();
      }

      v16 = static JSBridge.shared;
      v30[3] = v11;
      v30[0] = v15;
      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      sub_1000189C0(v30, v29);
      v17 = swift_allocObject();
      *(v17 + 16) = 1;
      v18 = v29[1];
      *(v17 + 24) = v29[0];
      *(v17 + 40) = v18;
      *(v17 + 56) = 0x657263536E69616DLL;
      *(v17 + 64) = 0xEA00000000006E65;
      *(v17 + 72) = v4;
      *(v17 + 80) = v16;
      *(v17 + 88) = 1;
      v19 = v15;
      v20 = v4;
      v21 = v16;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05F88, v17);

      sub_100011DF0(v30);
    }

    else
    {
      if (qword_1011BDB08 != -1)
      {
        swift_once();
      }

      v22 = static JSBridge.shared;
      sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100EBDC20;
      *(v23 + 32) = v4;
      *(v23 + 88) = v11;
      *(v23 + 56) = v10;
      *(v23 + 64) = v15;
      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = _swiftEmptyArrayStorage;
      *(v24 + 32) = 0xD000000000000010;
      *(v24 + 40) = 0x8000000100E70300;
      *(v24 + 48) = v4;
      *(v24 + 56) = v22;
      *(v24 + 64) = 0;
      v25 = v4;
      v26 = v15;
      v27 = v25;
      v28 = v22;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CE6890, v24);
    }
  }

  return result;
}

double sub_100D28280(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v16);

  if (LOBYTE(v16[0]) != v2 && (*(v1 + OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle_isUpdatingFromJS) & 1) == 0)
  {
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v4 = static JSBridge.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v16);

    v16[3] = &type metadata for Bool;
    sub_100027010();
    sub_1000189C0(v16, v15);
    v5 = swift_allocObject();
    *(v5 + 16) = 1;
    v6 = v15[1];
    *(v5 + 24) = v15[0];
    *(v5 + 40) = v6;
    *(v5 + 56) = 0x656C67676F547369;
    *(v5 + 64) = 0xE900000000000064;
    *(v5 + 72) = v1;
    *(v5 + 80) = v4;
    *(v5 + 88) = 0;
    v7 = v1;
    v8 = v4;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05F88, v5);

    sub_1000095E8(v16, &unk_101183F30, qword_100EBF960);
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100EBDC20;
    *(v9 + 56) = type metadata accessor for JSSettingsItemToggle(0);
    *(v9 + 32) = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v7;
    static Published.subscript.getter(v16);

    v11 = v16[0];
    *(v9 + 88) = &type metadata for Bool;
    *(v9 + 64) = v11;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = _swiftEmptyArrayStorage;
    *(v12 + 32) = 0xD000000000000018;
    *(v12 + 40) = 0x8000000100E703B0;
    *(v12 + 48) = v10;
    *(v12 + 56) = v8;
    *(v12 + 64) = 0;
    v13 = v10;
    v14 = v8;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CE6890, v12);
  }

  return result;
}

uint64_t JSSettingsItemToggle.isToggled.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_100D285E8(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double sub_100D28668(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  v3 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  static Published.subscript.setter();
  return sub_100D28280(v3);
}

double JSSettingsItemToggle.isToggled.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  v2 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  static Published.subscript.setter();
  return sub_100D28280(v2);
}

double (*JSSettingsItemToggle.isToggled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((a1 + 9));

  *(a1 + 8) = *(a1 + 9);
  return sub_100D28894;
}

double sub_100D28894(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  static Published.subscript.getter((a1 + 9));

  v4 = *(a1 + 9);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;
  v5 = v3;
  static Published.subscript.setter();
  return sub_100D28280(v4);
}

double JSSettingsItemToggle.$isToggled.getter()
{
  swift_beginAccess();
  sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  Published.projectedValue.getter();
  swift_endAccess();
  return result;
}

uint64_t JSSettingsItemToggle.$isToggled.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101182130, &unk_100EBF5B0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSSettingsItemToggle.$isToggled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&unk_101182130, &unk_100EBF5B0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle__isToggled;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36374;
}

uint64_t JSSettingsItemToggle.description.getter()
{
  v1 = v0;
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  v16 = v1;
  _print_unlocked<A, B>(_:_:)();
  v10._countAndFlagsBits = 0x67676F547369203BLL;
  v10._object = 0xEF22203D2064656CLL;
  String.append(_:)(v10);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v16);

  if (v16)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v16)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 15906;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  return v17;
}

void JSSettingsItemToggle.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle_isUpdatingFromJS;
  v7 = v3[OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle_isUpdatingFromJS];
  v3[OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle_isUpdatingFromJS] = 1;
  v11[0] = a1;
  v11[1] = a2;
  sub_1000189C0(a3, v12);
  if (!v12[3])
  {

    goto LABEL_9;
  }

  sub_1000189C0(v12, v10 + 2);

  if (!swift_dynamicCast() || ((v8 = BYTE1(v10[0]), a1 != 0x656C67676F547369) || a2 != 0xE900000000000064) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10000959C((v10 + 2));
LABEL_9:
    sub_1000095E8(v11, &unk_1011C0D90, &unk_100F11470);
    goto LABEL_10;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v10);

  v9 = v10[0];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v10[0]) = v8;
  v3;
  static Published.subscript.setter();
  sub_100D28280(v9);
  sub_10000959C((v10 + 2));
  sub_1000095E8(v12, &unk_101183F30, qword_100EBF960);

LABEL_10:
  v3[v6] = v7;
}

uint64_t *JSSettingsItemToggle.__allocating_init(type:)(uint64_t *a1)
{
  v3 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10[-v5];
  v7 = objc_allocWithZone(v1);
  v8 = OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle__isToggled;
  v10[15] = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(&v7[v8], v6, v3);
  v7[OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle_isUpdatingFromJS] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t *JSSettingsItemToggle.init(type:)(uint64_t *a1)
{
  v3 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle__isToggled;
  v9[15] = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle_isUpdatingFromJS) = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_100D29298()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle__isToggled;
  v2 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id JSSettingsItemToggle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSSettingsItemToggle(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSSettingsItemToggle(uint64_t a1)
{
  result = qword_1011BF648;
  if (!qword_1011BF648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D2942C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for JSSettingsItemToggle(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_100D29474(uint64_t a1)
{
  sub_100008E30();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100D2959C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;

  return result;
}

void JSBiographyItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = a1;
  v11[1] = a2;
  sub_1000189C0(a3, v12);
  if (v12[3])
  {
    sub_1000189C0(v12, v10);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore15JSBiographyItem_title;
LABEL_7:
        v7 = (v3 + v6);
        swift_beginAccess();
        *v7 = v8;
        v7[1] = v9;

        sub_10000959C(v10);
        sub_1000095E8(v12, &unk_101183F30, qword_100EBF960);

        return;
      }

      if (a1 == 0x656E696C64616568 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore15JSBiographyItem_headline;
        goto LABEL_7;
      }
    }

    sub_10000959C(v10);
  }

  else
  {
  }

  sub_1000095E8(v11, &unk_1011C0D90, &unk_100F11470);
}

uint64_t *JSBiographyItem.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore15JSBiographyItem_title];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore15JSBiographyItem_headline];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  return JSObject.init(type:)(a1);
}

uint64_t *JSBiographyItem.init(type:)(uint64_t *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore15JSBiographyItem_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore15JSBiographyItem_headline);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  return JSObject.init(type:)(a1);
}

double sub_100D2987C()
{

  return result;
}

id JSBiographyItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBiographyItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t *OS_os_log.jsBridge.unsafeMutableAddressor()
{
  if (qword_1011BDB60 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.jsBridge;
}

uint64_t *OS_os_log.scripting.unsafeMutableAddressor()
{
  if (qword_1011BDB58 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.scripting;
}

uint64_t sub_100D29A34()
{
  sub_100005AE4();
  result = OS_os_log.init(musicCategory:)(0x697263536176614ALL, 0xEA00000000007470);
  static OS_os_log.scripting = result;
  return result;
}

uint64_t sub_100D29AA4()
{
  sub_100005AE4();
  result = OS_os_log.init(musicCategory:)(0x656764697242534ALL, 0xE800000000000000);
  static OS_os_log.jsBridge = result;
  return result;
}

uint64_t sub_100D29BB0(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  sub_100006080(v8, a2);
  sub_1000060E4(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return Logger.init(_:)();
}

double property wrapper backing initializer of JSGroupedItemizedTextListViewModel.sections(uint64_t a1)
{
  sub_10010FC20(&qword_1011BF690, &qword_100F13E00);
  Published.init(initialValue:)();
  return result;
}

uint64_t JSGroupedItemizedTextListViewModel.sections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_100D29D48(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_100D29DC8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t JSGroupedItemizedTextListViewModel.sections.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

void (*JSGroupedItemizedTextListViewModel.sections.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10012FF30;
}

double JSGroupedItemizedTextListViewModel.$sections.getter()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011BF6A0, &qword_100F13E50);
  Published.projectedValue.getter();
  swift_endAccess();
  return result;
}

uint64_t JSGroupedItemizedTextListViewModel.$sections.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BF6A8, &qword_100F13E58);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BF6A0, &qword_100F13E50);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSGroupedItemizedTextListViewModel.$sections.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011BF6A8, &qword_100F13E58);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore34JSGroupedItemizedTextListViewModel__sections;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011BF6A0, &qword_100F13E50);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36374;
}

void JSGroupedItemizedTextListViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a1;
  v9[1] = a2;
  sub_1000189C0(a3, v10);
  if (v10[3])
  {
    sub_1000189C0(v10, v8);

    sub_10010FC20(&qword_1011BF690, &qword_100F13E00);
    if (swift_dynamicCast())
    {
      if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v7 = v3;
        static Published.subscript.setter();
        sub_10000959C(v8);
        sub_1000095E8(v10, &unk_101183F30, qword_100EBF960);

        return;
      }
    }

    sub_10000959C(v8);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  sub_1000095E8(v9, &unk_1011C0D90, &unk_100F11470);
}

uint64_t *JSGroupedItemizedTextListViewModel.__allocating_init(type:)(uint64_t *a1)
{
  v3 = sub_10010FC20(&qword_1011BF6A0, &qword_100F13E50);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v12 - v5;
  v7 = objc_allocWithZone(v1);
  v8 = OBJC_IVAR____TtC11MusicJSCore34JSGroupedItemizedTextListViewModel__sections;
  v12[1] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011BF690, &qword_100F13E00);
  Published.init(initialValue:)();
  (*(v4 + 32))(&v7[v8], v6, v3);
  v9 = &v7[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  *&v7[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_100EFDB60;
  v10 = &v7[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v10 = 0;
  *(v10 + 1) = 0;
  return JSObject.init(type:)(a1);
}

uint64_t *JSGroupedItemizedTextListViewModel.init(type:)(uint64_t *a1)
{
  v3 = sub_10010FC20(&qword_1011BF6A0, &qword_100F13E50);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC11MusicJSCore34JSGroupedItemizedTextListViewModel__sections;
  v11[1] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011BF690, &qword_100F13E00);
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v7, v6, v3);
  v8 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v9 = 0;
  v9[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_100D2A6BC()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore34JSGroupedItemizedTextListViewModel__sections;
  v2 = sub_10010FC20(&qword_1011BF6A0, &qword_100F13E50);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id JSGroupedItemizedTextListViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSGroupedItemizedTextListViewModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSGroupedItemizedTextListViewModel(uint64_t a1)
{
  result = qword_1011BF6D8;
  if (!qword_1011BF6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D2A82C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for JSGroupedItemizedTextListViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_100D2A874(uint64_t a1)
{
  sub_100D2A904(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100D2A904(uint64_t a1)
{
  if (!qword_1011BF6E8)
  {
    sub_1001109D0(&qword_1011BF690, &qword_100F13E00);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1011BF6E8);
    }
  }
}

void sub_100D2A980(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected;
  swift_beginAccess();
  v4 = v1[v3];
  if (v4 != v2)
  {
    if ((v1[OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isUpdatingFromJS] & 1) == 0)
    {
      if (qword_1011BDB08 != -1)
      {
        swift_once();
        LOBYTE(v4) = v1[v3];
      }

      v5 = static JSBridge.shared;
      v15 = &type metadata for Bool;
      v14[0] = v4;
      sub_100027010();
      sub_1000189C0(v14, v13);
      v6 = swift_allocObject();
      *(v6 + 16) = 1;
      v7 = v13[1];
      *(v6 + 24) = v13[0];
      *(v6 + 40) = v7;
      *(v6 + 56) = 0x7463656C65537369;
      *(v6 + 64) = 0xEA00000000006465;
      *(v6 + 72) = v1;
      *(v6 + 80) = v5;
      *(v6 + 88) = 0;
      v8 = v1;
      v9 = v5;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05F88, v6);

      sub_1000095E8(v14, &unk_101183F30, qword_100EBF960);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [objc_opt_self() defaultCenter];
      if (qword_1011BDC98 != -1)
      {
        swift_once();
      }

      [v12 postNotificationName:static JSOrderedPlaylistSelector.itemsDidChangeNotification object:v11];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t JSOrderedPlaylistSelectorItem.isSelected.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void JSOrderedPlaylistSelectorItem.isSelected.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_100D2A980(v4);
}

void (*JSOrderedPlaylistSelectorItem.isSelected.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_100D2ACBC;
}

void sub_100D2ACBC(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_100D2A980(v5);

  free(v1);
}

void JSOrderedPlaylistSelectorItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isUpdatingFromJS;
  v8 = *(v3 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isUpdatingFromJS);
  *(v3 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isUpdatingFromJS) = 1;
  v16[0] = a1;
  v16[1] = a2;
  sub_1000189C0(a3, v17);
  if (!v17[3])
  {

    goto LABEL_21;
  }

  sub_1000189C0(v17, v15);

  if (!swift_dynamicCast())
  {
LABEL_14:
    if (swift_dynamicCast() && (a1 == 0x7463656C65537369 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v11 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected;
      swift_beginAccess();
      v12 = *(v3 + v11);
      *(v3 + v11) = v13;
      sub_100D2A980(v12);
      goto LABEL_19;
    }

    sub_10000959C(v15);
LABEL_21:
    JSMediaItem.updateProperty(_:value:)(a1, a2, a3);
    sub_1000095E8(v16, &unk_1011C0D90, &unk_100F11470);
    goto LABEL_22;
  }

  if ((a1 != 0x656C746974 || a2 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v9 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_subtitleText;
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_titleText;
LABEL_7:
  v10 = (v3 + v9);
  swift_beginAccess();
  *v10 = v13;
  v10[1] = v14;

LABEL_19:
  sub_10000959C(v15);
  sub_1000095E8(v17, &unk_101183F30, qword_100EBF960);

LABEL_22:
  *(v3 + v7) = v8;
}

uint64_t *JSOrderedPlaylistSelectorItem.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_titleText];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_subtitleText];
  *v5 = 0;
  v5[1] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected] = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isUpdatingFromJS] = 0;
  return JSMediaItem.init(type:)(a1);
}

uint64_t *JSOrderedPlaylistSelectorItem.init(type:)(uint64_t *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_titleText);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_subtitleText);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isUpdatingFromJS) = 0;

  return JSMediaItem.init(type:)(a1);
}

uint64_t sub_100D2B080()
{

  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_delegate;

  return sub_1000D8F2C(v1);
}

uint64_t type metadata accessor for JSOrderedPlaylistSelectorItem(uint64_t a1)
{
  result = qword_1011BF720;
  if (!qword_1011BF720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *JSLocalStorage.init()()
{
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithSuiteName:v2];

  if (!v3)
  {
    v3 = [objc_opt_self() standardUserDefaults];
  }

  *(v0 + OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_scriptingUserDefaults) = v3;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_orderedKeys) = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_values;
  *(v0 + v4) = sub_10010BC60(_swiftEmptyArrayStorage);
  v7[0] = _swiftEmptyArrayStorage;
  v7[1] = 1;
  memset(&v7[2], 0, 24);
  v8 = 0;
  v5 = JSObject.init(type:)(v7);
  sub_100D2B320(1);

  return v5;
}

double sub_100D2B320(int a1)
{
  v4 = v1;
  ObjectType = swift_getObjectType();
  sub_100D2C42C();
  sub_100009838();
  NSUserDefaults.subscript.getter(&v62);
  if (!v63)
  {
    sub_100011DF0(&v62);
    goto LABEL_9;
  }

  LOBYTE(v2) = sub_10010FC20(&unk_1011BE790, &unk_100F13FB0);
  if (!swift_dynamicCast())
  {
LABEL_9:
    v9 = _swiftEmptyArrayStorage;
LABEL_17:
    v13 = sub_100CE5848(_swiftEmptyArrayStorage);
    goto LABEL_18;
  }

  if (!v61[2])
  {
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v6 = sub_100019C10(0x4B6465726564726FLL, 0xEB00000000737965);
  if ((v7 & 1) == 0)
  {

LABEL_12:
    v9 = _swiftEmptyArrayStorage;
    if (v61[2])
    {
      goto LABEL_13;
    }

LABEL_16:

    goto LABEL_17;
  }

  v8 = *(v61[7] + 8 * v6);
  swift_unknownObjectRetain();

  *&v62 = v8;
  sub_10010FC20(&qword_101183BC8, &unk_100EBF620);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = v61;
  if (!v61[2])
  {
    goto LABEL_16;
  }

LABEL_13:
  v10 = sub_100019C10(0x7365756C6176, 0xE600000000000000);
  if ((v11 & 1) == 0)
  {
    goto LABEL_16;
  }

  v12 = *(v61[7] + 8 * v10);
  swift_unknownObjectRetain();

  *&v62 = v12;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v13 = v61;
LABEL_18:
  v55 = v4;
  v56 = a1;
  v14 = v9[2];
  v58 = v13;
  if (!v14)
  {
    v59 = _swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v15 = 0;
  v16 = v9 + 5;
  v17 = (v14 - 1);
  v59 = _swiftEmptyArrayStorage;
  do
  {
    v18 = &v16[2 * v15];
    v19 = v15;
    while (1)
    {
      if (v19 >= v9[2])
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (*(v13 + 16))
      {
        break;
      }

LABEL_21:
      v19 = (v19 + 1);
      v18 += 2;
      if (v14 == v19)
      {
        goto LABEL_33;
      }
    }

    v3 = *(v18 - 1);
    v20 = *v18;

    sub_100019C10(v3, v20);
    if ((v21 & 1) == 0)
    {

      goto LABEL_21;
    }

    v2 = v59;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v62 = v59;
    p_ObjectType = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100015C04(0, v59[2] + 1, 1);
      v2 = v62;
    }

    v24 = v2[2];
    v23 = v2[3];
    if (v24 >= v23 >> 1)
    {
      sub_100015C04((v23 > 1), v24 + 1, 1);
      v2 = v62;
    }

    v15 = (v19 + 1);
    v2[2] = v24 + 1;
    v59 = v2;
    v25 = &v2[2 * v24];
    v25[4] = v3;
    v25[5] = v20;
    v17 = p_ObjectType;
    v13 = v58;
  }

  while (p_ObjectType != v19);
LABEL_33:

  v3 = sub_100CE5848(_swiftEmptyArrayStorage);
  v2 = 0;
  v19 = (v13 + 64);
  v26 = 1 << *(v13 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v13 + 64);
  v16 = ((v26 + 63) >> 6);
LABEL_36:
  v29 = v2;
  v57 = v3;
  if (!v28)
  {
    goto LABEL_38;
  }

  do
  {
    v2 = v29;
LABEL_41:
    p_ObjectType = &ObjectType;
    v30 = __clz(__rbit64(v28)) | (v2 << 6);
    v31 = (*(v13 + 48) + 16 * v30);
    v32 = *v31;
    v33 = v31[1];
    v34 = *(*(v13 + 56) + 8 * v30);
    v28 &= v28 - 1;
    *&v62 = *v31;
    *(&v62 + 1) = v33;
    __chkstk_darwin();
    v53[2] = &v62;

    swift_unknownObjectRetain();
    if (sub_10044AB94(sub_10044D034, v53, v59))
    {
      swift_unknownObjectRetain();
      v35 = v57;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      *&v62 = v35;
      sub_100CEA840(v34, v32, v33, v36);

      swift_unknownObjectRelease();
      v3 = v62;
      v13 = v58;
      goto LABEL_36;
    }

    swift_unknownObjectRelease();
    v29 = v2;
    v3 = v57;
    v13 = v58;
  }

  while (v28);
  while (1)
  {
LABEL_38:
    v2 = (v29 + 1);
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v2 >= v16)
    {
      break;
    }

    v28 = v19[v2];
    v29 = (v29 + 1);
    if (v28)
    {
      goto LABEL_41;
    }
  }

  LOBYTE(v2) = v56;
  v19 = v55;
  if ((v56 & 1) == 0)
  {
    v37 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_orderedKeys;
    swift_beginAccess();
    if (sub_100B6BF90(*(v19 + v37), v59))
    {
      swift_beginAccess();

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      sub_100D1C6BC(v3);
      v39 = Dictionary._bridgeToObjectiveC()().super.isa;

      v40 = [(objc_class *)isa isEqualToDictionary:v39];

      if (v40)
      {

        goto LABEL_51;
      }
    }
  }

  v41 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_orderedKeys;
  swift_beginAccess();
  v16 = v59;
  *(v19 + v41) = v59;

  sub_100D1C97C(v42);
  v44 = v43;
  v45 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_values;
  swift_beginAccess();
  *(v19 + v45) = v44;

  if (qword_1011BDB08 != -1)
  {
LABEL_54:
    swift_once();
  }

  v46 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100EBE260;
  *(v47 + 56) = ObjectType;
  *(v47 + 32) = v19;
  *(v47 + 88) = sub_10010FC20(&qword_101183BC8, &unk_100EBF620);
  *(v47 + 64) = v16;
  v48 = v19;

  *(v47 + 120) = sub_10010FC20(&unk_1011BE790, &unk_100F13FB0);
  *(v47 + 96) = v3;
  sub_100027010();
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  *(v49 + 24) = _swiftEmptyArrayStorage;
  *(v49 + 32) = 0x657461647075;
  *(v49 + 40) = 0xE600000000000000;
  *(v49 + 48) = v48;
  *(v49 + 56) = v46;
  *(v49 + 64) = v2 & 1;
  v50 = v48;
  v51 = v46;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CE6890, v49);
LABEL_51:

  return result;
}