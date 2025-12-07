uint64_t sub_100026BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v44 = a5;
  v45 = a6;
  v42 = a4;
  v37 = a1;
  v38 = a3;
  v36 = a2;
  v6 = type metadata accessor for NDOWarrantyRequestGenerator(0);
  v43 = *(v6 - 8);
  v40 = *(v43 + 64);
  v7 = __chkstk_darwin(v6 - 8);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v35 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v35 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v16 = sub_10001A078(&qword_1000A7398, &qword_10007C2D0);
  v17 = v16 - 8;
  v18 = __chkstk_darwin(v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v35 - v21;
  v23 = *(v11 + 16);
  v23(&v35 - v21, v37, v10);
  *&v22[*(v17 + 56)] = v36;
  *&v22[*(v17 + 72)] = v38;
  sub_10001CB74(v22, v20, &qword_1000A7398, &qword_10007C2D0);
  v37 = *&v20[*(v17 + 56)];

  v24 = v15;
  (*(v11 + 32))(v15, v20, v10);
  v25 = v35;
  v26 = v24;
  v23(v35, v24, v10);
  sub_10005D434(v46);
  v27 = v39;
  NDOWarrantyRequestGenerator.init(serialNumbers:warrantyURL:payloadProvider:)(v37, v25, v46, v39);
  sub_100001E10(v44, v46);
  v28 = v41;
  sub_100027BF4(v27, v41);
  v29 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v30 = swift_allocObject();
  sub_100027C58(v28, v30 + v29);
  v31 = sub_10001A078(&qword_1000A73A0, &qword_10007C2D8);
  swift_allocObject();
  v32 = NDOMappingLoader.init(client:retryOnUnauthorized:requestGenerator:mapper:)();
  v33 = v45;
  v45[3] = v31;
  v33[4] = sub_100027D20();
  *v33 = v32;
  sub_100027D84(v27);
  (*(v11 + 8))(v26, v10);
  return sub_1000035B8(v22, &qword_1000A7398, &qword_10007C2D0);
}

uint64_t sub_100026FA4@<X0>(uint64_t a1@<X8>)
{
  result = static NDOResponseMapper.Warranty.decodeSaveAndPostDarwinNotification(_:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100026FD4()
{
  v0 = sub_10001A078(&qword_1000A7390, &qword_10007D980);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - v2;
  v4 = sub_10005BF18();
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_10005C9F4();
  swift_beginAccess();
  sub_100001E10(v5, v9);
  v6 = sub_1000276D0(v3, v9);
  sub_100001E74(v9);
  result = (*(v1 + 8))(v3, v0);
  qword_1000A9E48 = v6;
  return result;
}

uint64_t sub_100027114()
{
  v0 = type metadata accessor for NDORemoveWarrantyActionHandler();
  sub_100027DE0(v0, qword_1000A9E58);
  sub_100027B34(v0, qword_1000A9E58);
  return NDORemoveWarrantyActionHandler.init(deletionFunc:)();
}

void sub_10002717C(uint64_t a1)
{
  v1 = *sub_10005EBDC();
  if (v1)
  {
    sub_100027E88(0, &qword_1000A73B0, FLFollowUpController_ptr);
    sub_100027E44(&qword_1000A73B8, &qword_1000A73B0, FLFollowUpController_ptr, &protocol conformance descriptor for FLFollowUpController);
    type metadata accessor for NDOPostFollowUpActionHandler();
    swift_allocObject();
    v2 = v1;
    v3 = NDOPostFollowUpActionHandler.init(controller:executeWithResolver:)();
  }

  else
  {
    v3 = 0;
  }

  qword_1000A9E78 = v3;
}

void sub_1000272A4(uint64_t a1)
{
  v1 = *sub_10005EBDC();
  if (v1)
  {
    type metadata accessor for NDODismissFollowUpActionHandler();
    swift_allocObject();
    v2 = v1;
    v1 = NDODismissFollowUpActionHandler.init(clearFollowUp:)();
  }

  qword_1000A9E88 = v1;
}

uint64_t sub_100027378()
{
  v0 = sub_10005DEA0();
  swift_beginAccess();
  v1 = sub_10001A078(&qword_1000A73C0, &qword_10007C2E0);
  v4[3] = v1;
  v4[4] = swift_getOpaqueTypeConformance2();
  v2 = sub_100027B84(v4);
  (*(*(v1 - 8) + 16))(v2, v0, v1);
  type metadata accessor for NDOUpdateConfigActionHandler();
  swift_allocObject();
  result = NDOUpdateConfigActionHandler.init(configLoader:)();
  qword_1000A9E98 = result;
  return result;
}

uint64_t sub_100027450()
{
  v0 = objc_allocWithZone(UNUserNotificationCenter);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithBundleIdentifier:v1];

  v5[12] = sub_100027E88(0, &qword_1000A73C8, UNUserNotificationCenter_ptr);
  v5[13] = sub_100027E44(&qword_1000A73D0, &qword_1000A73C8, UNUserNotificationCenter_ptr, &protocol conformance descriptor for UNUserNotificationCenter);
  v5[9] = v2;
  v3 = sub_10005C220();
  swift_beginAccess();
  sub_10001EC4C(v3, v5);
  type metadata accessor for NDOShowNotificationActionHandler();
  swift_allocObject();
  result = NDOShowNotificationActionHandler.init(userNotificationCenter:keyValueStore:)();
  qword_1000A9EA8 = result;
  return result;
}

id sub_100027568()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v3[12] = sub_100027E88(0, &qword_1000A73D8, LSApplicationWorkspace_ptr);
    v3[13] = sub_100027E44(&qword_1000A73E0, &qword_1000A73D8, LSApplicationWorkspace_ptr, &protocol conformance descriptor for LSApplicationWorkspace);
    v3[9] = v1;
    v2 = sub_10005C220();
    swift_beginAccess();
    sub_10001EC4C(v2, v3);
    sub_10001A078(&qword_1000A73E8, &qword_10007C2E8);
    swift_allocObject();
    result = NDOShowAlertActionHandler.init(createNotification:waitForNotificationResponse:applicationWorkspace:keyValueStore:)();
    qword_1000A9EB8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

CFUserNotificationRef sub_1000276A0@<X0>(const __CFAllocator *a1@<X0>, CFOptionFlags a2@<X1>, SInt32 *a3@<X2>, const __CFDictionary *a4@<X3>, CFUserNotificationRef *a5@<X8>, CFTimeInterval a6@<D0>)
{
  result = CFUserNotificationCreate(a1, a6, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_1000276D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NDOCompositionLayer();
  v9 = sub_10001A078(&qword_1000A7390, &qword_10007D980);
  v19[3] = v9;
  v19[4] = swift_getOpaqueTypeConformance2();
  v10 = sub_100027B84(v19);
  (*(*(v9 - 8) + 16))(v10, a1, v9);
  v11 = sub_100049C1C();
  (*(v5 + 16))(v7, v11, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "making NDODownloadWarrantyActionHandler", v14, 2u);
  }

  (*(v5 + 8))(v7, v4);
  sub_100001E10(a2, v18);
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  sub_100005734(v18, v15 + 24);
  sub_100001E10(v19, v18);
  type metadata accessor for NDODownloadWarrantyActionHandler();
  swift_allocObject();
  v16 = NDODownloadWarrantyActionHandler.init(configLoader:loaderProvider:)();
  sub_100001E74(v19);
  return v16;
}

unint64_t sub_10002793C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001A078(&qword_1000A73F0, &unk_1000810D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001CB74(v4, &v13, &qword_1000A73F8, &qword_10007C300);
      v5 = v13;
      v6 = v14;
      result = sub_10001CEA0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100027ED0(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100027A6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A7388, &unk_1000810B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100027ADC()
{
  result = qword_1000A6F50;
  if (!qword_1000A6F50)
  {
    type metadata accessor for NDOErrors();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6F50);
  }

  return result;
}

uint64_t sub_100027B34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100027B6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_100027B84(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100027BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOWarrantyRequestGenerator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027C58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOWarrantyRequestGenerator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100027D20()
{
  result = qword_1000A73A8;
  if (!qword_1000A73A8)
  {
    sub_10001EFA0(&qword_1000A73A0, &qword_10007C2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A73A8);
  }

  return result;
}

uint64_t sub_100027D84(uint64_t a1)
{
  v2 = type metadata accessor for NDOWarrantyRequestGenerator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_100027DE0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100027E44(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100027E88(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100027E88(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *sub_100027ED0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void type metadata accessor for CFUserNotification()
{
  if (!qword_1000A7400)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000A7400);
    }
  }
}

uint64_t sub_100027F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027F94@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.singularFooter.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100028000@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.hasSingularFooter.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100028030@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.pluralFooter.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002809C@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.hasPluralFooter.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000280CC(uint64_t a1)
{
  v2 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100028230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100028300@<X0>(_BYTE *a2@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.hasURL.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100028330@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.hasURLKey.getter();
  *a1 = result & 1;
  return result;
}

__n128 NDODWFooterModel.Link.init(label:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 32);
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v6 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v6;
  *(a4 + 48) = v4;
  return result;
}

uint64_t sub_100028384()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1000283B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
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

uint64_t sub_10002848C(uint64_t a1)
{
  v2 = sub_100028710();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000284C8(uint64_t a1)
{
  v2 = sub_100028710();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NDODWFooterModel.Link.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), v6 = 0, (v5 & 1) != 0))
  {
    v7 = *(a1 + 2);
    v12[0] = *(a1 + 1);
    v12[1] = v7;
    v13 = *(a1 + 48);
    v8 = *(a2 + 32);
    v10[0] = *(a2 + 16);
    v10[1] = v8;
    v11 = *(a2 + 48);
    v6 = static NDOAction.__derived_enum_equals(_:_:)(v12, v10);
  }

  return v6 & 1;
}

uint64_t NDOLinkModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A7420, &qword_10007C518);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100001F3C(a1, a1[3]);
  sub_100028710();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v12 = *(v3 + 16);
    v13 = v9;
    v14 = *(v3 + 48);
    v11[15] = 1;
    sub_10001DC10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100028710()
{
  result = qword_1000AA080[0];
  if (!qword_1000AA080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AA080);
  }

  return result;
}

uint64_t NDODWFooterModel.Link.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  sub_1000287C0();
  return dispatch thunk of Hashable.hash(into:)();
}

unint64_t sub_1000287C0()
{
  result = qword_1000A7428;
  if (!qword_1000A7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7428);
  }

  return result;
}

Swift::Int NDODWFooterModel.Link.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double NDOLinkModel.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100028AD4(a2, v6);
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

Swift::Int sub_1000288D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100028954(uint64_t a1)
{
  String.hash(into:)();
  sub_1000287C0();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000289BC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100028A50(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v13[0] = *(a1 + 1);
  v13[1] = v6;
  v14 = *(a1 + 48);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 2);
  v15[0] = *(a2 + 1);
  v15[1] = v9;
  v16 = *(a2 + 48);
  if (v4 == v7 && v5 == v8 || (v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), v11 = 0, (v10 & 1) != 0))
  {
    v11 = static NDOAction.__derived_enum_equals(_:_:)(v13, v15);
  }

  return v11 & 1;
}

uint64_t sub_100028AD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A7438, &unk_10007C870);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_100001F3C(a1, a1[3]);
  sub_100028710();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  LOBYTE(v18) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  sub_10001E490();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v20;
  v16 = v19;
  v17 = v18;
  result = sub_100001E74(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  v15 = v16;
  *(a2 + 16) = v17;
  *(a2 + 32) = v15;
  *(a2 + 48) = v13;
  return result;
}

unint64_t sub_100028CE4()
{
  result = qword_1000A7430;
  if (!qword_1000A7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7430);
  }

  return result;
}

__n128 sub_100028D38(uint64_t a1, uint64_t a2)
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

uint64_t sub_100028D54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100028D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100028E10()
{
  result = qword_1000AA390[0];
  if (!qword_1000AA390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AA390);
  }

  return result;
}

unint64_t sub_100028E68()
{
  result = qword_1000AA4A0;
  if (!qword_1000AA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AA4A0);
  }

  return result;
}

unint64_t sub_100028EC0()
{
  result = qword_1000AA4A8[0];
  if (!qword_1000AA4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AA4A8);
  }

  return result;
}

uint64_t sub_100028F20@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_100028F50(uint64_t a1)
{
  v2 = sub_1000290DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100028F8C(uint64_t a1)
{
  v2 = sub_1000290DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDODWSupportModel.encode(to:)(void *a1)
{
  v2 = sub_10001A078(&qword_1000A7440, &qword_10007C880);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100001F3C(a1, a1[3]);
  sub_1000290DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1000290DC()
{
  result = qword_1000AA530[0];
  if (!qword_1000AA530[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AA530);
  }

  return result;
}

unint64_t sub_1000291C8()
{
  result = qword_1000A7448;
  if (!qword_1000A7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7448);
  }

  return result;
}

unint64_t sub_100029240()
{
  result = qword_1000AA840;
  if (!qword_1000AA840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AA840);
  }

  return result;
}

unint64_t sub_100029298()
{
  result = qword_1000AA848[0];
  if (!qword_1000AA848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AA848);
  }

  return result;
}

uint64_t sub_1000292EC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100029354(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1000293DC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDODeviceListRequestGenerator(0) + 20);

  return sub_100001E10(v3, a1);
}

uint64_t type metadata accessor for NDODeviceListRequestGenerator(uint64_t a1)
{
  result = qword_1000AA8D0;
  if (!qword_1000AA8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NDODeviceListRequestGenerator.init(deviceListURL:payloadProvider:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for NDODeviceListRequestGenerator(0) + 20);

  return sub_100005734(a2, v7);
}

NSURLRequest_optional __swiftcall NDODeviceListRequestGenerator.generateRequest(isRetry:)(Swift::Bool isRetry)
{
  v29 = type metadata accessor for JSONEncodingOptions();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest();
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(NSMutableURLRequest);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = [v9 initWithURL:v11];

  v14 = String._bridgeToObjectiveC()();
  [v13 setHTTPMethod:v14];

  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  [v13 addValue:v15 forHTTPHeaderField:v16];

  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  [v13 setValue:v17 forHTTPHeaderField:v18];

  Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.init()();
  v19 = (v1 + *(type metadata accessor for NDODeviceListRequestGenerator(0) + 20));
  sub_100001F3C(v19, v19[3]);
  dispatch thunk of RequestPayloadProvider.requestMeta()();
  Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.meta.setter();
  sub_100001F3C(v19, v19[3]);
  dispatch thunk of RequestPayloadProvider.requestCommon()();
  Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.common.setter();
  JSONEncodingOptions.init()();
  sub_100029930();
  v20 = Message.jsonUTF8Data(options:)();
  v22 = v21;
  (*(v27 + 8))(v3, v29);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100003EBC(v20, v22);
  [v13 setHTTPBody:{isa, v27}];

  sub_100001F3C(v19, v19[3]);
  dispatch thunk of RequestPayloadProvider.addHeaders(to:isRetry:)();
  (*(v28 + 8))(v8, v6);
  v26 = v13;
  result.value._internal = v24;
  result.value.super.isa = v26;
  result.is_nil = v25;
  return result;
}

unint64_t sub_100029930()
{
  result = qword_1000A7450;
  if (!qword_1000A7450)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7450);
  }

  return result;
}

uint64_t sub_1000299B0(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = sub_100029A34();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100029A34()
{
  result = qword_1000A74B0;
  if (!qword_1000A74B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000A74B0);
  }

  return result;
}

uint64_t sub_100029AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A74E0, &qword_10007CA40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 NDOPromoModel.init(iconUrl:title:subtitle:callToActionLabel:action:deleteAction:protoHashValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12)
{
  *&v15[7] = *a11;
  *&v15[23] = *(a11 + 16);
  v15[39] = *(a11 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  v12 = *a10;
  v13 = a10[1];
  *(a9 + 96) = *(a10 + 32);
  *(a9 + 64) = v12;
  *(a9 + 80) = v13;
  *(a9 + 129) = *&v15[32];
  result = *&v15[16];
  *(a9 + 113) = *&v15[16];
  *(a9 + 97) = *v15;
  *(a9 + 144) = a12;
  return result;
}

uint64_t sub_100029B8C()
{
  v1 = *v0;
  v2 = 0x6C72556E6F6369;
  v3 = 0x63416574656C6564;
  if (v1 != 5)
  {
    v3 = 0x7361486F746F7270;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x6E6F69746361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100029C78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10002A304(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100029CAC(uint64_t a1)
{
  v2 = sub_10002A7EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100029CE8(uint64_t a1)
{
  v2 = sub_10002A7EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOPromoModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A74E8, &qword_10007CA48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100001F3C(a1, a1[3]);
  sub_10002A7EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = *(v3 + 80);
    v14 = *(v3 + 64);
    v15 = v9;
    v16 = *(v3 + 96);
    v13 = 4;
    sub_10001DC10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = *(v3 + 120);
    v14 = *(v3 + 104);
    v15 = v10;
    v16 = *(v3 + 136);
    v13 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void NDOPromoModel.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  if (*(v1 + 136) == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
  }

  Hasher._combine(_:)(*(v1 + 144));
}

Swift::Int NDOPromoModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  if (*(v0 + 136) == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
  }

  Hasher._combine(_:)(*(v0 + 144));
  return Hasher._finalize()();
}

double NDOPromoModel.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10002A840(a2, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v10;
    v6 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v6;
    v7 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
  }

  return result;
}

Swift::Int sub_10002A21C(uint64_t a1)
{
  Hasher.init(_seed:)();
  NDOPromoModel.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10002A304(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010008BDC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x63416574656C6564 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7361486F746F7270 && a2 == 0xEE0065756C615668)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

BOOL _s8ndoagent13NDOPromoModelV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != *(a2 + 48) || a1[7] != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 5);
  v27[0] = *(a1 + 4);
  v27[1] = v6;
  v28 = *(a1 + 96);
  v7 = *(a2 + 80);
  v25[0] = *(a2 + 64);
  v25[1] = v7;
  v26 = *(a2 + 96);
  if ((static NDOAction.__derived_enum_equals(_:_:)(v27, v25) & 1) == 0)
  {
    return 0;
  }

  v9 = a1[13];
  v8 = a1[14];
  v11 = a1[15];
  v10 = a1[16];
  v12 = *(a1 + 136);
  v14 = *(a2 + 104);
  v13 = *(a2 + 112);
  v16 = *(a2 + 120);
  v15 = *(a2 + 128);
  v17 = *(a2 + 136);
  if (v12 == 255)
  {
    if (v17 == 255)
    {
      return a1[18] == *(a2 + 144);
    }
  }

  else
  {
    v24 = a1[13];
    if (v17 != 255)
    {
      sub_100021230(v9, v8, v11, v10, v12);
      sub_100021230(v9, v8, v11, v10, v12);
      sub_10002B254();
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10002B180(v24, v8, v11, v10, v12);
      sub_10002B16C(v9, v8, v11, v10, v12);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      return a1[18] == *(a2 + 144);
    }

    v20 = *(a2 + 120);
    v21 = *(a2 + 128);
    sub_100021230(v9, v8, v11, v10, v12);
    sub_100021230(v9, v8, v11, v10, v12);
    sub_10002B180(v9, v8, v11, v10, v12);
    v16 = v20;
    v15 = v21;
  }

  v22 = v16;
  v23 = v15;
  sub_10002B240(v14, v13, v16, v15, v17);
  sub_10002B16C(v9, v8, v11, v10, v12);
  sub_10002B16C(v14, v13, v22, v23, v17);
  return 0;
}

unint64_t sub_10002A7EC()
{
  result = qword_1000AA8E0[0];
  if (!qword_1000AA8E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AA8E0);
  }

  return result;
}

void sub_10002A840(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = sub_10001A078(&qword_1000A74F8, &qword_10007CF18);
  v5 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v26 - v6;
  sub_100001F3C(a1, a1[3]);
  sub_10002A7EC();
  v43 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100001E74(a1);
  }

  else
  {
    v8 = v5;
    v41 = a2;
    LOBYTE(v54) = 0;
    v9 = v42;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v40 = v11;
    LOBYTE(v54) = 1;
    *&v39 = KeyedDecodingContainer.decode(_:forKey:)();
    *(&v39 + 1) = v12;
    LOBYTE(v54) = 2;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v38 = v14;
    LOBYTE(v54) = 3;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = v16;
    v29 = v15;
    LOBYTE(v44) = 4;
    sub_10001E490();
    v32 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = v55;
    v30 = *(&v56 + 1);
    v28 = v56;
    v31 = v54;
    v72 = v57;
    LOBYTE(v44) = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v13;
    v34 = v55;
    v35 = v54;
    v17 = *(&v56 + 1);
    v33 = v56;
    LOBYTE(v13) = v57;
    v73 = 6;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v8 + 8))(v43, v9);
    *&v44 = v10;
    *(&v44 + 1) = v40;
    v45 = v39;
    v19 = v38;
    *&v46 = v27;
    *(&v46 + 1) = v38;
    v20 = v30;
    *&v47 = v29;
    *(&v47 + 1) = v37;
    *&v48 = v31;
    *(&v48 + 1) = v36;
    *&v49 = v28;
    *(&v49 + 1) = v30;
    LOBYTE(v50) = v72;
    *(&v50 + 1) = v35;
    *&v51 = v34;
    *(&v51 + 1) = v33;
    *&v52 = v17;
    BYTE8(v52) = v13;
    v53 = v18;
    sub_10002B1D8(&v44, &v54);
    sub_100001E74(a1);
    v54 = v10;
    v55 = v40;
    v56 = v39;
    v57 = v27;
    v58 = v19;
    v59 = v29;
    v60 = v37;
    v61 = v31;
    v62 = v36;
    v63 = v28;
    v64 = v20;
    v65 = v72;
    v66 = v35;
    v67 = v34;
    v68 = v33;
    v69 = v17;
    v70 = v13;
    v71 = v18;
    sub_10002B210(&v54);
    v21 = v51;
    v22 = v41;
    *(v41 + 96) = v50;
    *(v22 + 112) = v21;
    *(v22 + 128) = v52;
    *(v22 + 144) = v53;
    v23 = v47;
    *(v22 + 32) = v46;
    *(v22 + 48) = v23;
    v24 = v49;
    *(v22 + 64) = v48;
    *(v22 + 80) = v24;
    v25 = v45;
    *v22 = v44;
    *(v22 + 16) = v25;
  }
}

unint64_t sub_10002ADBC()
{
  result = qword_1000A74F0;
  if (!qword_1000A74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A74F0);
  }

  return result;
}

uint64_t sub_10002AE10(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 7)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10002AE24(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_10002AE58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_10002AEA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDOPromoModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDOPromoModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002B068()
{
  result = qword_1000AABF0[0];
  if (!qword_1000AABF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AABF0);
  }

  return result;
}

unint64_t sub_10002B0C0()
{
  result = qword_1000AAD00;
  if (!qword_1000AAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AAD00);
  }

  return result;
}

unint64_t sub_10002B118()
{
  result = qword_1000AAD08[0];
  if (!qword_1000AAD08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AAD08);
  }

  return result;
}

void sub_10002B16C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_10002B180(result, a2, a3, a4, a5);
  }
}

void sub_10002B180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 6u)
  {
  }
}

void sub_10002B240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_100021230(a1, a2, a3, a4, a5);
  }
}

unint64_t sub_10002B254()
{
  result = qword_1000A7500;
  if (!qword_1000A7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7500);
  }

  return result;
}

uint64_t sub_10002B2DC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v422 = a2;
  v423 = a3;
  v452 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData();
  *&v504 = *(v452 - 8);
  __chkstk_darwin(v452);
  v439 = &v366 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v463 = type metadata accessor for Logger();
  v411 = *(v463 - 8);
  v4 = __chkstk_darwin(v463);
  v410 = &v366 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v399 = &v366 - v7;
  v8 = __chkstk_darwin(v6);
  v418 = &v366 - v9;
  v10 = __chkstk_darwin(v8);
  v451 = &v366 - v11;
  v12 = __chkstk_darwin(v10);
  v393 = &v366 - v13;
  v14 = __chkstk_darwin(v12);
  v377 = &v366 - v15;
  __chkstk_darwin(v14);
  v374 = &v366 - v16;
  v390 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType();
  v502 = *(v390 - 8);
  v17 = __chkstk_darwin(v390);
  v372 = &v366 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v391 = &v366 - v19;
  v389 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData();
  v499 = *(v389 - 8);
  v20 = __chkstk_darwin(v389);
  v388 = &v366 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v394 = &v366 - v22;
  v436 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction();
  v498 = *(v436 - 8);
  v23 = __chkstk_darwin(v436);
  v421 = &v366 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v373 = &v366 - v26;
  __chkstk_darwin(v25);
  v413 = &v366 - v27;
  v427 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink();
  v28 = *(v427 - 8);
  v29 = __chkstk_darwin(v427);
  v402 = &v366 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v409 = &v366 - v31;
  v392 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter();
  v32 = *(v392 - 8);
  __chkstk_darwin(v392);
  v397 = &v366 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v501 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit();
  v440 = *(v501 - 8);
  __chkstk_darwin(v501);
  v500 = &v366 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v465 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData();
  *&v503 = *(v465 - 8);
  v35 = __chkstk_darwin(v465);
  v457 = &v366 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v456 = &v366 - v38;
  v39 = __chkstk_darwin(v37);
  v455 = &v366 - v40;
  __chkstk_darwin(v39);
  v454 = &v366 - v41;
  v443 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink();
  v42 = *(v443 - 8);
  __chkstk_darwin(v443);
  v442 = &v366 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v424 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData();
  v44 = *(v424 - 8);
  __chkstk_darwin(v424);
  v430 = &v366 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10001A078(&qword_1000A7508, &qword_10007CF50);
  __chkstk_darwin(v46 - 8);
  v429 = &v366 - v47;
  v445 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data();
  v48 = *(v445 - 8);
  v49 = __chkstk_darwin(v445);
  v381 = &v366 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v384 = &v366 - v52;
  v53 = __chkstk_darwin(v51);
  v453 = &v366 - v54;
  __chkstk_darwin(v53);
  v466 = &v366 - v55;
  v490 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItemType();
  v56 = *(v490 - 8);
  v57 = __chkstk_darwin(v490);
  v489 = &v366 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v488 = &v366 - v59;
  v496 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem();
  v60 = *(v496 - 8);
  __chkstk_darwin(v496);
  v467 = &v366 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v426 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection();
  v62 = *(v426 - 8);
  __chkstk_darwin(v426);
  v437 = &v366 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.sections.getter();
  v408 = *(result + 16);
  if (!v408)
  {

    v358 = _swiftEmptyArrayStorage;
    v71 = v410;
    v70 = v411;
    v69 = v463;
LABEL_144:
    v359 = sub_100049C1C();
    (*(v70 + 16))(v71, v359, v69);

    v360 = Logger.logObject.getter();
    v361 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v360, v361))
    {
      v362 = swift_slowAlloc();
      *v362 = 134217984;
      *(v362 + 4) = *(v358 + 2);

      _os_log_impl(&_mh_execute_header, v360, v361, "Populated %ld sections", v362, 0xCu);

      (*(v70 + 8))(v71, v69);
    }

    else
    {

      (*(v70 + 8))(v71, v69);
    }

    return v358;
  }

  v65 = 0;
  v407 = result + ((*(v62 + 80) + 32) & ~*(v62 + 80));
  v487 = (v56 + 104);
  v486 = (v56 + 8);
  v464 = (v48 + 48);
  v450 = (v48 + 32);
  v449 = (v48 + 16);
  v448 = (v48 + 88);
  v446 = (v48 + 8);
  v444 = (v48 + 96);
  v382 = (v32 + 32);
  v383 = (v32 + 8);
  v431 = (v498 + 1);
  v386 = (v502 + 88);
  v387 = (v499 + 8);
  v367 = (v498 + 2);
  v380 = (v502 + 8);
  v435 = xmmword_10007CF40;
  v417 = xmmword_10007CF20;
  v478 = xmmword_10007CF30;
  v438 = xmmword_10007C340;
  *(&v66 + 1) = 5;
  v398 = xmmword_10007BF00;
  *&v66 = 136315138;
  v378 = v66;
  v416 = (v44 + 32);
  v485 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_DWItemType.dwSupport(_:);
  v414 = (v44 + 8);
  v447 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data.dwPromoData(_:);
  v434 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data.dwCoverageData(_:);
  v415 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data.linkData(_:);
  v401 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data.dwSupportAppData(_:);
  v395 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data.dwFooterData(_:);
  v385 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.openPath(_:);
  v379 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.startWeb(_:);
  v375 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.startAms(_:);
  v371 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.openDeviceWarranty(_:);
  v370 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.userDismiss(_:);
  v369 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.userReject(_:);
  v368 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.dismissCcPromo(_:);
  *&v66 = 134217984;
  v396 = v66;
  v406 = v62 + 16;
  v484 = v60 + 16;
  v459 = (v411 + 16);
  v458 = (v411 + 8);
  v483 = (v60 + 8);
  v420 = v28 + 16;
  v428 = (v28 + 8);
  v400 = (v28 + 32);
  v441 = v42 + 16;
  v419 = _swiftEmptyArrayStorage;
  v461 = v42;
  v477 = (v42 + 8);
  v476 = (v503 + 8);
  v499 = v440 + 16;
  v498 = (v440 + 8);
  v433 = (v504 + 32);
  v432 = (v504 + 8);
  v403 = (v62 + 8);
  v404 = result;
  v67 = v429;
  v68 = v467;
  v376 = v28;
  v492 = v60;
  v405 = v62;
LABEL_5:
  if (v65 >= *(result + 16))
  {
    goto LABEL_150;
  }

  v72 = *(v62 + 72);
  v425 = v65;
  (*(v62 + 16))(v437, v407 + v72 * v65, v426);
  v507 = _swiftEmptyArrayStorage;
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWSection.items.getter();
  v73 = result;
  v493 = *(result + 16);
  if (!v493)
  {

    v75 = _swiftEmptyArrayStorage;
    goto LABEL_132;
  }

  v74 = 0;
  v491 = result + ((*(v60 + 80) + 32) & ~*(v60 + 80));
  v75 = _swiftEmptyArrayStorage;
  v76 = v445;
  v468 = result;
  while (1)
  {
    if (v74 >= *(v73 + 16))
    {
      __break(1u);
      goto LABEL_149;
    }

    v497 = v75;
    v78 = *(v60 + 72);
    v495 = v74;
    (*(v60 + 16))(v68, v491 + v78 * v74, v496);
    v79 = v488;
    Com_Apple_Sse_Ocean_Ndo_Api_DWItem.type.getter();
    v80 = v68;
    v81 = v489;
    v82 = v490;
    (*v487)(v489, v485, v490);
    sub_100032194(&qword_1000A7510, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItemType, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWItemType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v83 = *v486;
    (*v486)(v81, v82);
    v84 = v83(v79, v82);
    if (v506.logoUrl.value._countAndFlagsBits == v505.logoUrl.value._countAndFlagsBits)
    {
      NDODWCoverageModel.CoverageLink.Action.Benefits.init(label:value:)(*&v84, *&v86);
      swift_beginAccess();
      v75 = v497;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_100031D20(0, *(v75 + 2) + 1, 1, v75);
      }

      v60 = v492;
      v68 = v467;
      v89 = *(v75 + 2);
      v88 = *(v75 + 3);
      if (v89 >= v88 >> 1)
      {
        v75 = sub_100031D20((v88 > 1), v89 + 1, 1, v75);
      }

      *(v75 + 2) = v89 + 1;
      v90 = &v75[120 * v89];
      *(v90 + 2) = 0u;
      *(v90 + 3) = 0u;
      *(v90 + 4) = 0u;
      *(v90 + 5) = 0u;
      *(v90 + 6) = 0u;
      *(v90 + 7) = 0u;
      *(v90 + 8) = 0u;
      v90[144] = 4;
      v507 = v75;
      swift_endAccess();
      goto LABEL_18;
    }

    Com_Apple_Sse_Ocean_Ndo_Api_DWItem.data.getter();
    v68 = v80;
    if ((*v464)(v67, 1, v76) == 1)
    {
      v91 = v67;
      sub_1000035B8(v67, &qword_1000A7508, &qword_10007CF50);
      v92 = sub_100049C1C();
      v93 = v451;
      v94 = v463;
      (*v459)(v451, v92, v463);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();
      v97 = os_log_type_enabled(v95, v96);
      v60 = v492;
      if (v97)
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v95, v96, "Skipping item due to missing data", v98, 2u);
      }

      (*v458)(v93, v94);
      result = (*v483)(v68, v496);
      v75 = v497;
      v77 = v495;
      v67 = v91;
      goto LABEL_9;
    }

    v99 = v466;
    (*v450)(v466, v67, v76);
    v100 = v76;
    v101 = *v449;
    v102 = v453;
    (*v449)(v453, v99, v100);
    v103 = (*v448)(v102, v100);
    v60 = v492;
    if (v103 == v447)
    {
      (*v444)(v102, v100);
      v104 = v439;
      (*v433)(v439, v102, v452);
      sub_10001A078(&qword_1000A7290, &qword_10007BF10);
      v105 = swift_allocObject();
      *(v105 + 16) = v435;
      *(v105 + 32) = swift_getKeyPath();
      *(v105 + 40) = swift_getKeyPath();
      *(v105 + 48) = swift_getKeyPath();
      sub_100032194(&qword_1000A7520, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
      v106 = Message.ensure(_:)();

      v76 = v100;
      if ((v106 & 1) == 0 || (v107 = v421, Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.action.getter(), sub_10002E7E8(v107, v422, v423, v512), (*v431)(v107, v436), v513 == 255))
      {
        (*v432)(v104, v452);
        (*v446)(v466, v100);
        result = (*v483)(v80, v496);
        v75 = v497;
        goto LABEL_52;
      }

      v521[0] = v512[0];
      v521[1] = v512[1];
      v522 = v513;
      v108 = Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.title.getter();
      v110 = v109;
      v111 = Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.subTitle.getter();
      v113 = v112;
      v114 = Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.buttonTitle.getter();
      NDODWPromoModel.init(title:subtitle:buttonTitle:action:)(v108, v110, v111, v113, v114, v115, v521, &v505);
      swift_beginAccess();
      v75 = v497;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_100031D20(0, *(v75 + 2) + 1, 1, v75);
      }

      v117 = *(v75 + 2);
      v116 = *(v75 + 3);
      v76 = v445;
      v73 = v468;
      if (v117 >= v116 >> 1)
      {
        v75 = sub_100031D20((v116 > 1), v117 + 1, 1, v75);
      }

      v506.coverageExpirationLabel = v505.coverageExpirationLabel;
      v506.productName = v505.productName;
      v506.serialNumberLabel = v505.serialNumberLabel;
      LOBYTE(v506.warrantyTitle._countAndFlagsBits) = v505.warrantyTitle._countAndFlagsBits;
      logoUrl = v505.logoUrl;
      v506.coverageLabel = v505.coverageLabel;
      v506.logoUrl = v505.logoUrl;
      *(v75 + 2) = v117 + 1;
      v119 = &v75[120 * v117];
      v120 = *&v506.warrantyOverview._rawValue;
      v121 = v506.warrantyTitle;
      v122 = v506.serialNumberLabel;
      *(v119 + 5) = v506.productName;
      *(v119 + 6) = v122;
      *(v119 + 7) = v121;
      *(v119 + 8) = v120;
      coverageExpirationLabel = v506.coverageExpirationLabel;
      *(v119 + 3) = v506.coverageLabel;
      *(v119 + 4) = coverageExpirationLabel;
      *(v119 + 2) = logoUrl;
      v119[144] = 3;
      v507 = v75;
      swift_endAccess();
      (*v432)(v439, v452);
      goto LABEL_67;
    }

    if (v103 == v434)
    {
      break;
    }

    v75 = v497;
    if (v103 == v415)
    {
      v76 = v445;
      (*v444)(v102, v445);
      v185 = v402;
      (*v400)(v402, v102, v427);
      sub_10001A078(&qword_1000A7290, &qword_10007BF10);
      v186 = swift_allocObject();
      *(v186 + 16) = v438;
      *(v186 + 32) = swift_getKeyPath();
      sub_100032194(&qword_1000A7418, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      v187 = Message.ensure(_:)();

      v73 = v468;
      if (v187)
      {
        v188 = v421;
        Com_Apple_Sse_Ocean_Ndo_Api_CTLink.action.getter();
        sub_10002E7E8(v188, v422, v423, v514);
        (*v431)(v188, v436);
        if (v515 != 255)
        {
          v523[0] = v514[0];
          v523[1] = v514[1];
          v524 = v515;
          v189 = Com_Apple_Sse_Ocean_Ndo_Api_CTLink.linkLabel.getter();
          NDODWFooterModel.Link.init(label:action:)(v189, v190, v523, v516);
          v191 = v516[0];
          v192 = v516[1];
          v503 = v518;
          v504 = v517;
          v193 = v519;
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_100031D20(0, *(v75 + 2) + 1, 1, v75);
          }

          v195 = *(v75 + 2);
          v194 = *(v75 + 3);
          if (v195 >= v194 >> 1)
          {
            v75 = sub_100031D20((v194 > 1), v195 + 1, 1, v75);
          }

          *(v75 + 2) = v195 + 1;
          v196 = &v75[120 * v195];
          *(v196 + 4) = v191;
          *(v196 + 5) = v192;
          v197 = v503;
          *(v196 + 3) = v504;
          *(v196 + 4) = v197;
          v196[80] = v193;
          v198 = v506.logoUrl;
          coverageLabel = v506.coverageLabel;
          v200 = v506.coverageExpirationLabel;
          *(v196 + 8) = *(&v506.coverageExpirationLabel._object + 7);
          *(v196 + 113) = v200;
          *(v196 + 97) = coverageLabel;
          *(v196 + 81) = v198;
          v196[144] = 2;
          v507 = v75;
          swift_endAccess();
          (*v428)(v402, v427);
          goto LABEL_61;
        }
      }

      (*v428)(v185, v427);
LABEL_67:
      (*v446)(v466, v76);
LABEL_18:
      result = (*v483)(v68, v496);
      goto LABEL_19;
    }

    v73 = v468;
    if (v103 == v401)
    {
      v201 = *v446;
      v76 = v445;
      (*v446)(v466, v445);
      (*v483)(v68, v496);
      result = (v201)(v102, v76);
      goto LABEL_19;
    }

    if (v103 != v395)
    {
      v297 = sub_100049C1C();
      v298 = v393;
      (*v459)(v393, v297, v463);
      v299 = v384;
      v300 = v466;
      v301 = v445;
      v101(v384, v466, v445);
      v302 = Logger.logObject.getter();
      v303 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v302, v303))
      {
        v304 = swift_slowAlloc();
        LODWORD(v504) = v303;
        v305 = v304;
        v306 = swift_slowAlloc();
        v506.logoUrl.value._countAndFlagsBits = v306;
        *v305 = v378;
        v101(v381, v299, v301);
        v307 = String.init<A>(describing:)();
        v309 = v308;
        v310 = v299;
        v311 = *v446;
        (*v446)(v310, v301);
        v312 = sub_10001FEC8(v307, v309, &v506.logoUrl.value._countAndFlagsBits);
        v75 = v497;

        *(v305 + 4) = v312;
        _os_log_impl(&_mh_execute_header, v302, v504, "Should not hit unknown default case, data: %s", v305, 0xCu);
        sub_100001E74(v306);

        (*v458)(v393, v463);
        v311(v466, v301);
      }

      else
      {

        v313 = v299;
        v311 = *v446;
        (*v446)(v313, v301);
        (*v458)(v298, v463);
        v311(v300, v301);
      }

      (*v483)(v467, v496);
      v76 = v301;
      result = (v311)(v453, v301);
      v67 = v429;
      v60 = v492;
      v68 = v467;
LABEL_63:
      v73 = v468;
LABEL_19:
      v77 = v495;
      goto LABEL_10;
    }

    v202 = v445;
    (*v444)(v102, v445);
    v203 = v397;
    v204 = v102;
    v205 = v392;
    (*v382)(v397, v204, v392);
    v482 = sub_10001A078(&qword_1000A7290, &qword_10007BF10);
    v206 = swift_allocObject();
    *(v206 + 16) = v438;
    *(v206 + 32) = swift_getKeyPath();
    sub_100032194(&qword_1000A7528, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
    v207 = Message.ensure(_:)();

    if ((v207 & 1) == 0)
    {
      (*v383)(v203, v205);
      (*v446)(v466, v202);
      result = (*v483)(v68, v496);
      v76 = v202;
      goto LABEL_52;
    }

    v208 = Com_Apple_Sse_Ocean_Ndo_Api_DWFooter.links.getter();
    v209 = *(v208 + 16);
    if (v209)
    {
      v210 = *(v376 + 80);
      v480 = v208;
      v211 = (v208 + ((v210 + 32) & ~v210));
      *&v504 = *(v376 + 72);
      *&v503 = *(v376 + 16);
      v494 = _swiftEmptyArrayStorage;
      v212 = v394;
      v213 = v427;
      v214 = v409;
      (v503)(v409, v211, v427);
      while (1)
      {
        v215 = swift_allocObject();
        *(v215 + 16) = v438;
        *(v215 + 32) = swift_getKeyPath();
        sub_100032194(&qword_1000A7418, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
        v216 = Message.ensure(_:)();

        if ((v216 & 1) == 0)
        {
          goto LABEL_75;
        }

        v502 = v211;
        v217 = v413;
        Com_Apple_Sse_Ocean_Ndo_Api_CTLink.action.getter();
        v218 = swift_allocObject();
        *(v218 + 16) = v438;
        *(v218 + 32) = swift_getKeyPath();
        sub_100032194(&qword_1000A7538, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
        v219 = v436;
        v220 = Message.ensure(_:)();

        if ((v220 & 1) == 0)
        {
          break;
        }

        v221 = swift_allocObject();
        *(v221 + 16) = v398;
        *(v221 + 32) = swift_getKeyPath();
        *(v221 + 40) = swift_getKeyPath();
        v222 = Message.ensureOneOf(_:)();

        if ((v222 & 1) == 0)
        {
          break;
        }

        Com_Apple_Sse_Ocean_Ndo_Api_CTAction.data.getter();
        v223 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.hasURL.getter();
        v224 = *v387;
        v225 = v389;
        (*v387)(v212, v389);
        Com_Apple_Sse_Ocean_Ndo_Api_CTAction.data.getter();
        if (v223)
        {
          v481._rawValue = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.url.getter();
          v227 = v226;
          v224(v212, v225);
        }

        else
        {
          v228 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.urlKey.getter();
          v230 = v229;
          v224(v212, v225);
          v481._rawValue = v422(v228, v230);
          v227 = v231;
        }

        Com_Apple_Sse_Ocean_Ndo_Api_CTAction.data.getter();
        v232 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.additionalHeaders.getter();
        v224(v212, v225);
        v233 = v388;
        Com_Apple_Sse_Ocean_Ndo_Api_CTAction.data.getter();
        v234 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.bodyPayLoad.getter();
        v224(v233, v225);
        v235._countAndFlagsBits = v481._rawValue;
        v235._object = v227;
        v236._countAndFlagsBits = v232;
        v236._object = v234;
        v528 = NDODWCoverageModel.CoverageLink.Action.Benefits.init(label:value:)(v235, v236);
        countAndFlagsBits = v528.label._countAndFlagsBits;
        object = v528.label._object;
        v239 = v528.value._countAndFlagsBits;
        v240 = v528.value._object;
        v241 = v391;
        Com_Apple_Sse_Ocean_Ndo_Api_CTAction.type.getter();
        v242 = (*v386)(v241, v390);
        if (v242 == v385)
        {
          v243 = 2;
          v212 = v394;
          v244 = v436;
          v245 = v413;
          v213 = v427;
        }

        else
        {
          v212 = v394;
          v244 = v436;
          v245 = v413;
          v213 = v427;
          v246 = v380;
          if (v242 == v379)
          {
            v243 = 0;
          }

          else if (v242 == v375)
          {
            v243 = 1;
          }

          else if (v242 == v371)
          {
            v243 = 3;
          }

          else if (v242 == v370)
          {
            v243 = 5;
          }

          else if (v242 == v369)
          {
            v243 = 6;
          }

          else
          {
            if (v242 != v368)
            {
              v259 = v436;

              v260 = sub_100049C1C();
              (*v459)(v374, v260, v463);
              v261 = v373;
              v262 = v259;
              (*v367)(v373, v245, v259);
              v263 = Logger.logObject.getter();
              v264 = static os_log_type_t.error.getter();
              v481._rawValue = v263;
              if (os_log_type_enabled(v263, v264))
              {
                v265 = swift_slowAlloc();
                *v265 = v396;
                v266 = v372;
                Com_Apple_Sse_Ocean_Ndo_Api_CTAction.type.getter();
                v479 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.rawValue.getter();
                v267 = v390;
                (*v380)(v266, v390);
                v268 = *v431;
                (*v431)(v261, v262);
                *(v265 + 4) = v479;
                v269 = v264;
                rawValue = v481._rawValue;
                _os_log_impl(&_mh_execute_header, v481._rawValue, v269, "Should not hit unknown default case, action type: %ld", v265, 0xCu);
                v246 = v380;
              }

              else
              {
                v268 = *v431;
                (*v431)(v261, v262);
                v267 = v390;
                rawValue = v481._rawValue;
              }

              (*v458)(v374, v463);
              (*v246)(v391, v267);
              v268(v413, v262);
              v214 = v409;
              v75 = v497;
              goto LABEL_74;
            }

            v243 = 4;
          }
        }

        v525[0] = countAndFlagsBits;
        v525[1] = object;
        v525[2] = v239;
        v525[3] = v240;
        v526 = v243;
        (*v431)(v245, v244);
        v247 = v409;
        v248 = Com_Apple_Sse_Ocean_Ndo_Api_CTLink.linkLabel.getter();
        v250 = NDODWFooterModel.Link.init(label:action:)(v248, v249, v525, v510);
        (*v428)(v247, v213, v250);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v211 = v502;
        if (isUniquelyReferenced_nonNull_native)
        {
          v75 = v497;
          v252 = v494;
        }

        else
        {
          v252 = sub_100031AD4(0, *(v494 + 2) + 1, 1, v494);
          v75 = v497;
        }

        v254 = *(v252 + 2);
        v253 = *(v252 + 3);
        if (v254 >= v253 >> 1)
        {
          v252 = sub_100031AD4((v253 > 1), v254 + 1, 1, v252);
        }

        *(v252 + 2) = v254 + 1;
        v494 = v252;
        v255 = &v252[56 * v254];
        v256 = v510[0];
        v257 = v510[1];
        v258 = v510[2];
        v255[80] = v511;
        *(v255 + 3) = v257;
        *(v255 + 4) = v258;
        *(v255 + 2) = v256;
        v214 = v409;
LABEL_76:
        v211 += v504;
        if (!--v209)
        {

          v67 = v429;
          v73 = v468;
          v314 = v494;
          goto LABEL_121;
        }

        (v503)(v214, v211, v213);
      }

      (*v431)(v217, v219);
      v213 = v427;
      v214 = v409;
LABEL_74:
      v211 = v502;
LABEL_75:
      (*v428)(v214, v213);
      goto LABEL_76;
    }

    v314 = _swiftEmptyArrayStorage;
    v73 = v468;
LABEL_121:
    v494 = v314;
    v315 = *(v314 + 2);
    v506.logoUrl.value._countAndFlagsBits = Com_Apple_Sse_Ocean_Ndo_Api_DWFooter.content.getter();
    v506.logoUrl.value._object = v316;
    v505.logoUrl.value._countAndFlagsBits = 16421;
    v505.logoUrl.value._object = 0xE200000000000000;
    sub_100032090();
    v317 = StringProtocol.components<A>(separatedBy:)();

    v318 = *(v317 + 16);

    v60 = v492;
    v68 = v467;
    if (v315 == v318 - 1)
    {
      v319._countAndFlagsBits = Com_Apple_Sse_Ocean_Ndo_Api_DWFooter.content.getter();
      v320._countAndFlagsBits = v494;
      v529 = NDODWCoverageModel.CoverageLink.Action.Benefits.init(label:value:)(v319, v320);
      v321 = v529.label._countAndFlagsBits;
      v322 = v529.label._object;
      v323 = v529.value._countAndFlagsBits;
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_100031D20(0, *(v75 + 2) + 1, 1, v75);
      }

      v325 = *(v75 + 2);
      v324 = *(v75 + 3);
      if (v325 >= v324 >> 1)
      {
        v75 = sub_100031D20((v324 > 1), v325 + 1, 1, v75);
      }

      *(v75 + 2) = v325 + 1;
      v326 = &v75[120 * v325];
      *(v326 + 4) = v321;
      *(v326 + 5) = v322;
      *(v326 + 6) = v323;
      v327 = v506.logoUrl;
      *(v326 + 72) = v506.coverageLabel;
      *(v326 + 56) = v327;
      v328 = v506.coverageExpirationLabel;
      productName = v506.productName;
      v330 = v506.serialNumberLabel;
      *(v326 + 17) = v506.warrantyTitle._countAndFlagsBits;
      *(v326 + 120) = v330;
      *(v326 + 104) = productName;
      *(v326 + 88) = v328;
      v326[144] = 1;
      v507 = v75;
      swift_endAccess();
      (*v383)(v397, v392);
LABEL_61:
      v76 = v445;
      (*v446)(v466, v445);
      result = (*v483)(v68, v496);
LABEL_52:
      v77 = v495;
LABEL_9:
      v73 = v468;
      goto LABEL_10;
    }

    v331 = sub_100049C1C();
    v332 = v377;
    v333 = v463;
    (*v459)(v377, v331, v463);
    v334 = Logger.logObject.getter();
    v335 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v334, v335))
    {
      v336 = swift_slowAlloc();
      *v336 = 0;
      _os_log_impl(&_mh_execute_header, v334, v335, "Incorrect number of links for the number of format specifiers, skipping footer item", v336, 2u);
    }

    (*v458)(v332, v333);
    (*v383)(v397, v392);
    v76 = v445;
    (*v446)(v466, v445);
    result = (*v483)(v68, v496);
    v77 = v495;
    v67 = v429;
LABEL_10:
    v74 = v77 + 1;
    if (v74 == v493)
    {

LABEL_132:
      v337 = *(v75 + 2);
      v338 = sub_100049C1C();
      v339 = *v459;
      if (v337)
      {
        v339(v418, v338, v463);
        v340 = Logger.logObject.getter();
        v341 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v340, v341))
        {
          v342 = swift_slowAlloc();
          *v342 = v396;
          *(v342 + 4) = *(v75 + 2);
          _os_log_impl(&_mh_execute_header, v340, v341, "Populated section with %ld items", v342, 0xCu);
        }

        (*v458)(v418, v463);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100032194(&qword_1000A7518, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
        Message.getOptional<A>(_:_:)();

        v343 = v506.logoUrl.value._countAndFlagsBits;
        v344 = v506.logoUrl.value._object;
        swift_getKeyPath();
        swift_getKeyPath();

        Message.getOptional<A>(_:_:)();

        v345.value._countAndFlagsBits = v343;
        v345.value._object = v344;
        NDODWSection.init(header:items:footer:)(&v520, v345, v75, v505.logoUrl);
        v346 = v419;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v346 = sub_1000319AC(0, *(v346 + 2) + 1, 1, v346);
        }

        v67 = v429;
        v348 = *(v346 + 2);
        v347 = *(v346 + 3);
        v69 = v463;
        if (v348 >= v347 >> 1)
        {
          v346 = sub_1000319AC((v347 > 1), v348 + 1, 1, v346);
        }

        (*v403)(v437, v426);
        *(v346 + 2) = v348 + 1;
        v419 = v346;
        v349 = &v346[56 * v348];
        id = v520.id;
        header = v520.header;
        footer = v520.footer;
        v349[5].value._countAndFlagsBits = v520.items._rawValue;
        v349[3] = header;
        v349[4] = footer;
        v349[2].value = id;
      }

      else
      {
        v353 = v399;
        v354 = v463;
        v339(v399, v338, v463);
        v355 = Logger.logObject.getter();
        v356 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v355, v356))
        {
          v357 = swift_slowAlloc();
          *v357 = 0;
          _os_log_impl(&_mh_execute_header, v355, v356, "Skipping section that has no valid items", v357, 2u);
        }

        (*v458)(v353, v354);
        (*v403)(v437, v426);

        v69 = v354;
      }

      v65 = v425 + 1;
      v71 = v410;
      v70 = v411;
      result = v404;
      v62 = v405;
      if (v425 + 1 == v408)
      {

        v358 = v419;
        goto LABEL_144;
      }

      goto LABEL_5;
    }
  }

  v124 = v445;
  (*v444)(v102, v445);
  v125 = v430;
  v126 = v424;
  (*v416)(v430, v102, v424);
  v482 = sub_10001A078(&qword_1000A7290, &qword_10007BF10);
  v127 = swift_allocObject();
  *(v127 + 16) = v417;
  *(v127 + 32) = swift_getKeyPath();
  *(v127 + 40) = swift_getKeyPath();
  *(v127 + 48) = swift_getKeyPath();
  *(v127 + 56) = swift_getKeyPath();
  *(v127 + 64) = swift_getKeyPath();
  v128 = sub_100032194(&qword_1000A7540, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
  v129 = Message.ensure(_:)();

  v75 = v497;
  if ((v129 & 1) == 0)
  {
    (*v414)(v125, v126);
    (*v446)(v466, v124);
    result = (*v483)(v68, v496);
    v67 = v429;
    v76 = v124;
    goto LABEL_63;
  }

  v412 = v128;
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.links.getter();
  v480 = *(result + 16);
  if (!v480)
  {

    v481._rawValue = _swiftEmptyArrayStorage;
LABEL_109:
    swift_getKeyPath();
    swift_getKeyPath();
    Message.getOptional<A>(_:_:)();

    *&v503 = v505.logoUrl.value._object;
    *&v504 = v505.logoUrl.value._countAndFlagsBits;
    v502 = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.coverageLabel.getter();
    v494 = v271;
    v272 = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.coverageExpirationLabel.getter();
    v274 = v273;
    v275 = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.productName.getter();
    v277 = v276;
    v278 = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.serialNumberLabel.getter();
    v280 = v279;
    v281 = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.warrantyTitle.getter();
    v283 = v282;
    warrantyOverview = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.warrantyOverview.getter();
    warrantyTitle._countAndFlagsBits = v281;
    warrantyTitle._object = v283;
    serialNumberLabel._countAndFlagsBits = v278;
    serialNumberLabel._object = v280;
    v284.value._countAndFlagsBits = v504;
    v284.value._object = v503;
    v285._countAndFlagsBits = v502;
    v285._object = v494;
    v286._countAndFlagsBits = v272;
    v286._object = v274;
    v287._countAndFlagsBits = v275;
    v287._object = v277;
    NDODWCoverageModel.init(logoUrl:coverageLabel:coverageExpirationLabel:productName:serialNumberLabel:warrantyTitle:warrantyOverview:links:)(&v506, v284, v285, v286, v287, serialNumberLabel, warrantyTitle, warrantyOverview, v481);
    swift_beginAccess();
    v75 = v497;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = sub_100031D20(0, *(v75 + 2) + 1, 1, v75);
    }

    v288 = v424;
    v67 = v429;
    v60 = v492;
    v68 = v467;
    v73 = v468;
    v290 = *(v75 + 2);
    v289 = *(v75 + 3);
    if (v290 >= v289 >> 1)
    {
      v75 = sub_100031D20((v289 > 1), v290 + 1, 1, v75);
    }

    v505 = v506;
    v291 = v506.logoUrl;
    *(v75 + 2) = v290 + 1;
    v292 = &v75[120 * v290];
    v293 = *&v505.warrantyOverview._rawValue;
    v294 = v505.warrantyTitle;
    v295 = v505.serialNumberLabel;
    *(v292 + 5) = v505.productName;
    *(v292 + 6) = v295;
    *(v292 + 7) = v294;
    *(v292 + 8) = v293;
    v296 = v505.coverageExpirationLabel;
    *(v292 + 3) = v505.coverageLabel;
    *(v292 + 4) = v296;
    *(v292 + 2) = v291;
    v292[144] = 0;
    v507 = v75;
    swift_endAccess();
    (*v414)(v430, v288);
    v76 = v445;
    (*v446)(v466, v445);
    goto LABEL_18;
  }

  v130 = 0;
  v131 = v461;
  v479 = result + ((*(v461 + 80) + 32) & ~*(v461 + 80));
  v132 = _swiftEmptyArrayStorage;
  v133 = v443;
  v134 = v442;
  v135 = v441;
  v136 = result;
  v460 = result;
  while (v130 < *(v136 + 16))
  {
    v137 = *(v131 + 72);
    v494 = v130;
    (*(v131 + 16))(v134, v479 + v137 * v130, v133);
    v138 = swift_allocObject();
    *(v138 + 16) = v478;
    *(v138 + 32) = swift_getKeyPath();
    *(v138 + 40) = swift_getKeyPath();
    *(v138 + 48) = swift_getKeyPath();
    *(v138 + 56) = swift_getKeyPath();
    sub_100032194(&qword_1000A7548, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
    v139 = Message.ensure(_:)();

    if (v139)
    {
      v481._rawValue = v132;
      v475 = Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink.label.getter();
      v474 = v140;
      v141 = v454;
      Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink.sheetData.getter();
      v473 = Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.title.getter();
      v472 = v142;
      v143 = *v476;
      v144 = v465;
      (*v476)(v141, v465);
      v145 = v455;
      Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink.sheetData.getter();
      v470 = Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.subTitle.getter();
      v469 = v146;
      v143(v145, v144);
      v147 = v456;
      Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink.sheetData.getter();
      v148 = Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.benefits.getter();
      v149 = v147;
      v150 = v148;
      v471 = v143;
      v143(v149, v144);
      v151 = *(v150 + 16);
      if (v151)
      {
        v506.logoUrl.value._countAndFlagsBits = _swiftEmptyArrayStorage;
        sub_1000320E4(0, v151, 0);
        v152 = v506.logoUrl.value._countAndFlagsBits;
        v153 = *(v440 + 80);
        v462 = v150;
        v154 = v150 + ((v153 + 32) & ~v153);
        *&v503 = *(v440 + 72);
        v502 = *(v440 + 16);
        do
        {
          v155 = v500;
          v156 = v501;
          (v502)(v500, v154, v501);
          *&v504 = Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit.title.getter();
          v158 = v157;
          v505.logoUrl.value._countAndFlagsBits = Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit.content.getter();
          sub_10001A078(&qword_1000A7550, &qword_10007D428);
          sub_100032104();
          v159 = BidirectionalCollection<>.joined(separator:)();
          v161 = v160;

          v162._countAndFlagsBits = v504;
          v162._object = v158;
          v163._countAndFlagsBits = v159;
          v163._object = v161;
          v527 = NDODWCoverageModel.CoverageLink.Action.Benefits.init(label:value:)(v162, v163);
          v164 = v527.label._countAndFlagsBits;
          v165 = v527.label._object;
          *&v504 = v527.value._countAndFlagsBits;
          v166 = v527.value._object;
          (*v498)(v155, v156);
          v506.logoUrl.value._countAndFlagsBits = v152;
          v168 = v152[2];
          v167 = v152[3];
          if (v168 >= v167 >> 1)
          {
            sub_1000320E4((v167 > 1), v168 + 1, 1);
            v152 = v506.logoUrl.value._countAndFlagsBits;
          }

          v152[2] = v168 + 1;
          v169 = &v152[4 * v168];
          v169[4] = v164;
          v169[5] = v165;
          v169[6] = v504;
          v169[7] = v166;
          v154 += v503;
          --v151;
        }

        while (v151);

        v144 = v465;
        v133 = v443;
        v134 = v442;
        v170 = v441;
      }

      else
      {
        v170 = v135;

        v152 = _swiftEmptyArrayStorage;
      }

      v171 = v457;
      Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink.sheetData.getter();
      v172 = Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.footer.getter();
      v174 = v173;
      v471(v171, v144);
      v175._countAndFlagsBits = v473;
      v175._object = v472;
      v176._countAndFlagsBits = v470;
      v176._object = v469;
      v177._countAndFlagsBits = v172;
      v177._object = v174;
      NDODWCoverageModel.CoverageLink.Action.init(title:subTitle:benefits:footer:)(&v508, v175, v176, v152, v177);
      v178._countAndFlagsBits = v475;
      v178._object = v474;
      NDODWCoverageModel.CoverageLink.init(label:action:)(&v509, v178, &v508);
      (*v477)(v134, v133);
      v132 = v481._rawValue;
      result = swift_isUniquelyReferenced_nonNull_native();
      v136 = v460;
      if ((result & 1) == 0)
      {
        result = sub_100031BF8(0, v132[2] + 1, 1, v132);
        v132 = result;
      }

      v135 = v170;
      v180 = v132[2];
      v179 = v132[3];
      v131 = v461;
      if (v180 >= v179 >> 1)
      {
        result = sub_100031BF8((v179 > 1), v180 + 1, 1, v132);
        v132 = result;
      }

      v132[2] = v180 + 1;
      v181 = &v132[9 * v180];
      *(v181 + 2) = v509.label;
      title = v509.action.title;
      subTitle = v509.action.subTitle;
      v184 = *&v509.action.benefits._rawValue;
      v181[12] = v509.action.footer._object;
      *(v181 + 4) = subTitle;
      *(v181 + 5) = v184;
      *(v181 + 3) = title;
    }

    else
    {
      result = (*v477)(v134, v133);
    }

    v130 = v494 + 1;
    if (v494 + 1 == v480)
    {

      v481._rawValue = v132;
      goto LABEL_109;
    }
  }

LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_10002E51C@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.hasCoverageLabel.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E54C@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.hasCoverageExpirationLabel.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E57C@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.hasProductName.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E5AC@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.hasSerialNumberLabel.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E5DC@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.hasWarrantyTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E60C@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink.hasLabel.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E68C@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.hasTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E6BC@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.hasSubTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E6EC@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.hasFooter.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E71C@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.appleLogoURL.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002E788@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.hasAppleLogoURL.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E7B8@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWFooter.hasContent.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E7E8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v63 = a3;
  v64 = a2;
  v68 = a4;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction();
  v59 = *(v5 - 8);
  __chkstk_darwin(v5);
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v60 = *(v7 - 8);
  v61 = v7;
  __chkstk_darwin(v7);
  v62 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = __chkstk_darwin(v9);
  v57 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v65 = &v57 - v12;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v57 - v18;
  sub_10001A078(&qword_1000A7290, &qword_10007BF10);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10007C340;
  *(v20 + 32) = swift_getKeyPath();
  sub_100032194(&qword_1000A7538, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v21 = Message.ensure(_:)();

  if ((v21 & 1) == 0)
  {
    goto LABEL_24;
  }

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10007BF00;
  *(v23 + 32) = swift_getKeyPath();
  *(v23 + 40) = swift_getKeyPath();
  v24 = Message.ensureOneOf(_:)();

  if ((v24 & 1) == 0)
  {
    goto LABEL_24;
  }

  Com_Apple_Sse_Ocean_Ndo_Api_CTAction.data.getter();
  v25 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.hasURL.getter();
  v26 = *(v14 + 8);
  v26(v19, v13);
  Com_Apple_Sse_Ocean_Ndo_Api_CTAction.data.getter();
  if (v25)
  {
    v64 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.url.getter();
    v28 = v27;
    v26(v19, v13);
  }

  else
  {
    v29 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.urlKey.getter();
    v31 = v30;
    v26(v19, v13);
    v64 = v64(v29, v31);
    v28 = v32;
  }

  Com_Apple_Sse_Ocean_Ndo_Api_CTAction.data.getter();
  v33 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.additionalHeaders.getter();
  v26(v19, v13);
  Com_Apple_Sse_Ocean_Ndo_Api_CTAction.data.getter();
  v34 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionData.bodyPayLoad.getter();
  v26(v17, v13);
  v35._countAndFlagsBits = v64;
  v35._object = v28;
  v36._countAndFlagsBits = v33;
  v36._object = v34;
  v69 = NDODWCoverageModel.CoverageLink.Action.Benefits.init(label:value:)(v35, v36);
  countAndFlagsBits = v69.label._countAndFlagsBits;
  object = v69.label._object;
  v39 = v69.value._countAndFlagsBits;
  v40 = v69.value._object;
  v41 = v65;
  Com_Apple_Sse_Ocean_Ndo_Api_CTAction.type.getter();
  result = (*(v66 + 88))(v41, v67);
  if (result != enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.openPath(_:))
  {
    if (result == enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.startWeb(_:))
    {
      v42 = 0;
      goto LABEL_25;
    }

    if (result == enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.startAms(_:))
    {
      v42 = 1;
      goto LABEL_25;
    }

    if (result == enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.openDeviceWarranty(_:))
    {
      v42 = 3;
      goto LABEL_25;
    }

    if (result == enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.userDismiss(_:))
    {
      v42 = 5;
      goto LABEL_25;
    }

    if (result == enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.userReject(_:))
    {
      v42 = 6;
      goto LABEL_25;
    }

    if (result == enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.dismissCcPromo(_:))
    {
      v42 = 4;
      goto LABEL_25;
    }

    v43 = sub_100049C1C();
    v45 = v60;
    v44 = v61;
    (*(v60 + 16))(v62, v43, v61);
    v46 = v58;
    v47 = v59;
    v48 = v5;
    (*(v59 + 16))(v58, a1, v5);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      v52 = v57;
      Com_Apple_Sse_Ocean_Ndo_Api_CTAction.type.getter();
      v64 = Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.rawValue.getter();
      v53 = v46;
      v54 = v66;
      v55 = v67;
      (*(v66 + 8))(v52, v67);
      (*(v47 + 8))(v53, v48);
      *(v51 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v49, v50, "Should not hit unknown default case, action type: %ld", v51, 0xCu);
      v44 = v61;
    }

    else
    {
      (*(v47 + 8))(v46, v5);
      v54 = v66;
      v55 = v67;
    }

    (*(v45 + 8))(v62, v44);
    result = (*(v54 + 8))(v65, v55);
LABEL_24:
    countAndFlagsBits = 0;
    object = 0;
    v39 = 0;
    v40 = 0;
    v42 = -1;
    goto LABEL_25;
  }

  v42 = 2;
LABEL_25:
  v56 = v68;
  *v68 = countAndFlagsBits;
  v56[1] = object;
  v56[2] = v39;
  v56[3] = v40;
  *(v56 + 32) = v42;
  return result;
}

uint64_t sub_10002EF34@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.hasTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002EF64@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.hasSubTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002EF94@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.hasButtonTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002EFC4@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWSection.header.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002F030@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWSection.hasHeader.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002F060@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWSection.footer.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002F0CC@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_DWSection.hasFooter.getter();
  *a1 = result & 1;
  return result;
}

uint64_t *sub_10002F0FC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v254 = a2;
  v255 = a3;
  v3 = type metadata accessor for Logger();
  v208 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v208 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v208 - v8;
  v10 = __chkstk_darwin(v7);
  v233 = &v208 - v11;
  v12 = __chkstk_darwin(v10);
  v248 = &v208 - v13;
  __chkstk_darwin(v12);
  v15 = &v208 - v14;
  v211 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction();
  countAndFlagsBits = *(v211 - 8);
  __chkstk_darwin(v211);
  v210 = &v208 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData();
  object = *(v232 - 8);
  __chkstk_darwin(v232);
  v220 = &v208 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData();
  v277 = *(v259 - 8);
  __chkstk_darwin(v259);
  v247 = &v208 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction();
  v274 = *(v253 - 8);
  __chkstk_darwin(v253);
  v252 = &v208 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink();
  v273 = *(v263 - 8);
  v20 = __chkstk_darwin(v263);
  v236 = &v208 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v250 = &v208 - v22;
  v269 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData();
  v281 = *(v269 - 8);
  __chkstk_darwin(v269);
  v275 = &v208 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10001A078(&qword_1000A7560, &qword_10007D430);
  __chkstk_darwin(v24 - 8);
  v271 = &v208 - v25;
  v26 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v214 = &v208 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v219 = &v208 - v31;
  v32 = __chkstk_darwin(v30);
  v276 = &v208 - v33;
  __chkstk_darwin(v32);
  v284 = &v208 - v34;
  v35 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v286 = &v208 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection();
  v227 = *(v239 - 8);
  __chkstk_darwin(v239);
  v244 = &v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.sections.getter();
  v226 = result[2];
  if (!v226)
  {

    v202 = _swiftEmptyArrayStorage;
    goto LABEL_71;
  }

  v40 = 0;
  v225 = result + ((*(v227 + 80) + 32) & ~*(v227 + 80));
  v224 = v227 + 16;
  v280 = v36 + 16;
  v279 = (v27 + 48);
  v268 = (v27 + 32);
  v41 = (v27 + 16);
  v267 = (v27 + 88);
  v266 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data.ccBannerData(_:);
  v258 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data.ccDeviceData(_:);
  v262 = (v208 + 16);
  v243 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data.linkData(_:);
  v42 = (v27 + 8);
  v272 = (v208 + 8);
  v230 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data.ccPromoData(_:);
  v283 = v36;
  v278 = (v36 + 8);
  v264 = (v27 + 96);
  v218 = (object + 4);
  v261 = v273 + 8;
  v251 = (v274 + 8);
  v209 = (countAndFlagsBits + 8);
  v217 = (object + 1);
  v229 = v273 + 32;
  v242 = (v277 + 32);
  v241 = (v277 + 8);
  v257 = (v281 + 32);
  v260 = xmmword_10007CF30;
  v240 = xmmword_10007CF40;
  *(&v43 + 1) = 3;
  v228 = xmmword_10007C340;
  *&v43 = 136315138;
  v212 = v43;
  v256 = (v281 + 8);
  *&v43 = 134217984;
  v213 = v43;
  v221 = (v227 + 8);
  v222 = result;
  v237 = _swiftEmptyArrayStorage;
  v249 = v3;
  v44 = v248;
  v45 = v275;
  v277 = v26;
  v274 = v35;
  v46 = v227;
  v223 = v6;
  v216 = v9;
  v231 = v15;
  v270 = v41;
  v265 = v42;
  while (1)
  {
    if (v40 >= result[2])
    {
      goto LABEL_76;
    }

    v47 = *(v46 + 72);
    v238 = v40;
    (*(v46 + 16))(v244, &v225[v47 * v40], v239);
    v311 = _swiftEmptyArrayStorage;
    result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.items.getter();
    countAndFlagsBits = result[2];
    if (countAndFlagsBits)
    {
      break;
    }

    v273 = _swiftEmptyArrayStorage;
    v51 = v262;
LABEL_59:

    v177 = *(v273 + 2);
    v178 = sub_100049C1C();
    v179 = *v51;
    if (v177)
    {
      v179(v233, v178, v3);
      v180 = Logger.logObject.getter();
      v181 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        *v182 = v213;
        *(v182 + 4) = *(v273 + 2);
        _os_log_impl(&_mh_execute_header, v180, v181, "Populated section with %ld items", v182, 0xCu);
      }

      (*v272)(v233, v3);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100032194(&qword_1000A7568, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
      Message.getOptional<A>(_:_:)();

      object = v300.value._object;
      countAndFlagsBits = v300.value._countAndFlagsBits;
      v183 = v273;

      LODWORD(v281) = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.isExpandable.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      Message.getOptional<A>(_:_:)();

      v184 = v287;
      v185 = BYTE4(v287);
      swift_getKeyPath();
      swift_getKeyPath();
      Message.getOptional<A>(_:_:)();

      v186 = v289;
      swift_getKeyPath();
      swift_getKeyPath();
      Message.getOptional<A>(_:_:)();

      v310 = v185;
      v187 = v184 | (v185 << 32);
      v188.value._countAndFlagsBits = countAndFlagsBits;
      v188.value._object = object;
      NDOSection.init(header:items:isExpandable:expandThreshold:expandLabel:footer:)(&v325, v188, v183, v281 & 1, v187, v186, v299);
      v189 = v237;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v189 = sub_100031E40(0, *(v189 + 2) + 1, 1, v189);
      }

      v6 = v223;
      v26 = v277;
      v191 = *(v189 + 2);
      v190 = *(v189 + 3);
      v237 = v189;
      v44 = v248;
      v3 = v249;
      v35 = v274;
      if (v191 >= v190 >> 1)
      {
        v237 = sub_100031E40((v190 > 1), v191 + 1, 1, v237);
      }

      (*v221)(v244, v239);
      v192 = v237;
      *(v237 + 2) = v191 + 1;
      v193 = &v192[72 * v191];
      *(v193 + 2) = *&v325.isExpanded;
      v194 = *&v325.id._object;
      v195 = *&v325.header.value._object;
      v196 = *&v325.footer.value._object;
      *(v193 + 12) = v325.collapsedItems._rawValue;
      *(v193 + 4) = v195;
      *(v193 + 5) = v196;
      *(v193 + 3) = v194;

      v45 = v275;
    }

    else
    {
      v197 = v216;
      v179(v216, v178, v3);
      v198 = Logger.logObject.getter();
      v199 = static os_log_type_t.default.getter();
      v200 = os_log_type_enabled(v198, v199);
      v6 = v223;
      if (v200)
      {
        v201 = swift_slowAlloc();
        *v201 = 0;
        _os_log_impl(&_mh_execute_header, v198, v199, "Skipping section that has no valid items", v201, 2u);
        v45 = v275;
      }

      (*v272)(v197, v3);
      (*v221)(v244, v239);

      v26 = v277;
    }

    v40 = v238 + 1;
    v46 = v227;
    result = v222;
    if (v238 + 1 == v226)
    {

      v202 = v237;
LABEL_71:
      v203 = sub_100049C1C();
      v204 = v208;
      (*(v208 + 16))(v6, v203, v3);

      v205 = Logger.logObject.getter();
      v206 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        *v207 = 134217984;
        *(v207 + 4) = *(v202 + 2);

        _os_log_impl(&_mh_execute_header, v205, v206, "Populated %ld sections", v207, 0xCu);

        (*(v204 + 8))(v6, v3);
      }

      else
      {

        (*(v204 + 8))(v6, v3);
      }

      return v202;
    }
  }

  v48 = 0;
  v49 = v283;
  v281 = result + ((*(v283 + 80) + 32) & ~*(v283 + 80));
  v273 = _swiftEmptyArrayStorage;
  v50 = v271;
  v51 = v262;
  object = result;
  while (v48 < result[2])
  {
    (*(v49 + 16))(v286, &v281[*(v49 + 72) * v48], v35);
    Com_Apple_Sse_Ocean_Ndo_Api_CCItem.data.getter();
    if ((*v279)(v50, 1, v26) == 1)
    {
      sub_1000035B8(v50, &qword_1000A7560, &qword_10007D430);
      v52 = sub_100049C1C();
      (*v51)(v44, v52, v3);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Skipping item due to missing data", v55, 2u);
        v45 = v275;
      }

      (*v272)(v44, v3);
      (*v278)(v286, v35);
      v26 = v277;
      goto LABEL_9;
    }

    v56 = v284;
    (*v268)(v284, v50, v26);
    v57 = *v270;
    v58 = v276;
    (*v270)(v276, v56, v26);
    v59 = (*v267)(v58, v26);
    if (v59 == v266)
    {
      (*v264)(v58, v26);
      (*v257)(v45, v58, v269);
      sub_10001A078(&qword_1000A7290, &qword_10007BF10);
      v60 = swift_allocObject();
      *(v60 + 16) = v260;
      *(v60 + 32) = swift_getKeyPath();
      *(v60 + 40) = swift_getKeyPath();
      *(v60 + 48) = swift_getKeyPath();
      *(v60 + 56) = swift_getKeyPath();
      sub_100032194(&qword_1000A7580, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
      v61 = Message.ensure(_:)();

      if ((v61 & 1) == 0 || (v62 = v250, Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.link.getter(), v63 = v252, Com_Apple_Sse_Ocean_Ndo_Api_CTLink.action.getter(), v64 = *v261, (*v261)(v62, v263), sub_10002E7E8(v63, v254, v255, v312), v65 = v63, v45 = v275, (*v251)(v65, v253), v313 == 255))
      {
        (*v256)(v45, v269);
        v26 = v277;
        (*v265)(v284, v277);
        v35 = v274;
        (*v278)(v286, v274);
        v50 = v271;
      }

      else
      {
        v326[0] = v312[0];
        v326[1] = v312[1];
        v327 = v313;
        *&v246 = Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.logoURL.getter();
        *&v245 = v66;
        v67 = Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.title.getter();
        v69 = v68;
        v70 = Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.subTitle.getter();
        v72 = v71;
        v73 = v250;
        Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.link.getter();
        v74 = Com_Apple_Sse_Ocean_Ndo_Api_CTLink.linkLabel.getter();
        v76 = v75;
        v64(v73, v263);
        NDOPlacardModel.init(iconUrl:title:subtitle:subtitleLinkText:action:)(v246, v245, v67, v69, v70, v72, v74, v76, &v289, v326);
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v273 = sub_100031F68(0, *(v273 + 2) + 1, 1, v273);
        }

        v26 = v277;
        v78 = *(v273 + 2);
        v77 = *(v273 + 3);
        v44 = v248;
        v3 = v249;
        v50 = v271;
        v35 = v274;
        v51 = v262;
        if (v78 >= v77 >> 1)
        {
          v273 = sub_100031F68((v77 > 1), v78 + 1, 1, v273);
        }

        v304 = v293;
        v305 = v294;
        LOBYTE(v306) = v295;
        v300 = v289;
        v301 = v290;
        v302 = v291;
        v303 = v292;
        sub_1000321DC(&v300);
        v79 = v273;
        *(v273 + 2) = v78 + 1;
        v80 = &v79[152 * v78];
        v81 = v301;
        *(v80 + 2) = v300;
        *(v80 + 3) = v81;
        v82 = v302;
        v83 = v303;
        v84 = v305;
        *(v80 + 6) = v304;
        *(v80 + 7) = v84;
        *(v80 + 4) = v82;
        *(v80 + 5) = v83;
        v85 = v306;
        v86 = v307;
        v87 = v308;
        *(v80 + 22) = v309;
        *(v80 + 9) = v86;
        *(v80 + 10) = v87;
        *(v80 + 8) = v85;
        v311 = v79;
        swift_endAccess();
        v45 = v275;
        (*v256)(v275, v269);
        (*v265)(v284, v26);
        (*v278)(v286, v35);
      }

      goto LABEL_9;
    }

    if (v59 == v258)
    {
      v88 = v276;
      (*v264)(v276, v26);
      v89 = v247;
      (*v242)(v247, v88, v259);
      sub_10001A078(&qword_1000A7290, &qword_10007BF10);
      v90 = swift_allocObject();
      *(v90 + 16) = v240;
      *(v90 + 32) = swift_getKeyPath();
      *(v90 + 40) = swift_getKeyPath();
      *(v90 + 48) = swift_getKeyPath();
      sub_100032194(&qword_1000A7578, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
      v91 = v89;
      LOBYTE(v89) = Message.ensure(_:)();

      v35 = v274;
      if ((v89 & 1) == 0 || (v92 = v252, Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.action.getter(), sub_10002E7E8(v92, v254, v255, v314), (*v251)(v92, v253), v315 == 255))
      {
        (*v241)(v91, v259);
        v26 = v277;
        (*v265)(v284, v277);
        (*v278)(v286, v35);
LABEL_41:
        v45 = v275;
        v50 = v271;
LABEL_57:
        v51 = v262;
        goto LABEL_9;
      }

      v328[0] = v314[0];
      v328[1] = v314[1];
      v329 = v315;
      swift_getKeyPath();
      swift_getKeyPath();
      Message.getOptional<A>(_:_:)();

      *&v246 = v300.value._object;
      v93 = v300.value._countAndFlagsBits;
      *&v245 = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.title.getter();
      v235 = v94;
      v95 = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.serialNumber.getter();
      v234 = v96;
      swift_getKeyPath();
      swift_getKeyPath();
      Message.getOptional<A>(_:_:)();

      v97 = v299.value._countAndFlagsBits;
      v98 = v299.value._object;
      swift_getKeyPath();
      swift_getKeyPath();
      Message.getOptional<A>(_:_:)();

      NDODeviceModel.init(iconUrl:title:serialNumber:subtitle:callToActionLabel:action:)(v93, v246, v245, v235, v95, v234, v97, v98, &v289, v287, v288, v328);
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v273 = sub_100031F68(0, *(v273 + 2) + 1, 1, v273);
      }

      v26 = v277;
      v51 = v262;
      v100 = *(v273 + 2);
      v99 = *(v273 + 3);
      v44 = v248;
      v3 = v249;
      v50 = v271;
      v35 = v274;
      if (v100 >= v99 >> 1)
      {
        v273 = sub_100031F68((v99 > 1), v100 + 1, 1, v273);
      }

      v304 = v293;
      v305 = v294;
      v306 = v295;
      LOBYTE(v307) = v296;
      v300 = v289;
      v301 = v290;
      v302 = v291;
      v303 = v292;
      sub_100032188(&v300);
      v101 = v273;
      *(v273 + 2) = v100 + 1;
      v102 = &v101[152 * v100];
      v103 = v301;
      *(v102 + 2) = v300;
      *(v102 + 3) = v103;
      v104 = v302;
      v105 = v303;
      v106 = v305;
      *(v102 + 6) = v304;
      *(v102 + 7) = v106;
      *(v102 + 4) = v104;
      *(v102 + 5) = v105;
      v107 = v306;
      v108 = v307;
      v109 = v308;
      *(v102 + 22) = v309;
      *(v102 + 9) = v108;
      *(v102 + 10) = v109;
      *(v102 + 8) = v107;
      v311 = v101;
      swift_endAccess();
      (*v241)(v247, v259);
    }

    else
    {
      v110 = v276;
      v35 = v274;
      if (v59 == v243)
      {
        v111 = v276;
        (*v264)(v276, v26);
        v112 = v236;
        (*v229)(v236, v111, v263);
        sub_10001A078(&qword_1000A7290, &qword_10007BF10);
        v113 = swift_allocObject();
        *(v113 + 16) = v228;
        *(v113 + 32) = swift_getKeyPath();
        sub_100032194(&qword_1000A7418, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
        v114 = Message.ensure(_:)();

        if ((v114 & 1) == 0 || (v115 = v252, Com_Apple_Sse_Ocean_Ndo_Api_CTLink.action.getter(), sub_10002E7E8(v115, v254, v255, v319), (*v251)(v115, v253), v320 == 255))
        {
          (*v261)(v112, v263);
          (*v265)(v284, v26);
          (*v278)(v286, v35);
        }

        else
        {
          v332[0] = v319[0];
          v332[1] = v319[1];
          v333 = v320;
          v116 = Com_Apple_Sse_Ocean_Ndo_Api_CTLink.linkLabel.getter();
          NDODWFooterModel.Link.init(label:action:)(v116, v117, v332, v321);
          v118 = v321[0];
          v119 = v321[1];
          v245 = v322;
          v246 = v323;
          v120 = v324;
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v273 = sub_100031F68(0, *(v273 + 2) + 1, 1, v273);
          }

          v122 = *(v273 + 2);
          v121 = *(v273 + 3);
          if (v122 >= v121 >> 1)
          {
            v273 = sub_100031F68((v121 > 1), v122 + 1, 1, v273);
          }

          v300.value._countAndFlagsBits = v118;
          v300.value._object = v119;
          v301 = v245;
          v302 = v246;
          LOBYTE(v303) = v120;
          sub_100032168(&v300);
          v123 = v273;
          *(v273 + 2) = v122 + 1;
          v124 = &v123[152 * v122];
          v125 = v301;
          *(v124 + 2) = v300;
          *(v124 + 3) = v125;
          v126 = v302;
          v127 = v303;
          v128 = v305;
          *(v124 + 6) = v304;
          *(v124 + 7) = v128;
          *(v124 + 4) = v126;
          *(v124 + 5) = v127;
          v129 = v306;
          v130 = v307;
          v131 = v308;
          *(v124 + 22) = v309;
          *(v124 + 9) = v130;
          *(v124 + 10) = v131;
          *(v124 + 8) = v129;
          v311 = v123;
          swift_endAccess();
          (*v261)(v236, v263);
          v26 = v277;
          (*v265)(v284, v277);
          (*v278)(v286, v35);
          v3 = v249;
        }

        v45 = v275;
        v50 = v271;
        goto LABEL_9;
      }

      if (v59 != v230)
      {
        v162 = sub_100049C1C();
        (*v51)(v231, v162, v3);
        v163 = v219;
        v57(v219, v284, v26);
        v164 = Logger.logObject.getter();
        LODWORD(v245) = static os_log_type_t.error.getter();
        v165 = os_log_type_enabled(v164, v245);
        v166 = v265;
        *&v246 = v265 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v165)
        {
          v167 = swift_slowAlloc();
          v235 = v167;
          v168 = swift_slowAlloc();
          v300.value._countAndFlagsBits = v168;
          *v167 = v212;
          v57(v214, v163, v26);
          v169 = String.init<A>(describing:)();
          v171 = v170;
          v172 = v163;
          v173 = *v166;
          (*v166)(v172, v26);
          v174 = sub_10001FEC8(v169, v171, &v300.value._countAndFlagsBits);
          v3 = v249;

          v175 = v235;
          *(v235 + 1) = v174;
          _os_log_impl(&_mh_execute_header, v164, v245, "Should not hit unknown default case, data: %s", v175, 0xCu);
          sub_100001E74(v168);
          v45 = v275;
        }

        else
        {

          v176 = v163;
          v173 = *v166;
          (*v166)(v176, v26);
        }

        (*v272)(v231, v3);
        v173(v284, v26);
        (*v278)(v286, v274);
        v50 = v271;
        v173(v276, v26);
        v44 = v248;
        v35 = v274;
        goto LABEL_57;
      }

      (*v264)(v276, v26);
      v132 = v220;
      (*v218)(v220, v110, v232);
      sub_10001A078(&qword_1000A7290, &qword_10007BF10);
      v133 = swift_allocObject();
      *(v133 + 16) = v260;
      *(v133 + 32) = swift_getKeyPath();
      *(v133 + 40) = swift_getKeyPath();
      *(v133 + 48) = swift_getKeyPath();
      *(v133 + 56) = swift_getKeyPath();
      sub_100032194(&qword_1000A7570, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
      v134 = Message.ensure(_:)();

      if ((v134 & 1) == 0 || (v135 = v250, Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.link.getter(), v136 = v252, Com_Apple_Sse_Ocean_Ndo_Api_CTLink.action.getter(), v137 = *v261, (*v261)(v135, v263), sub_10002E7E8(v136, v254, v255, v316), v138 = *v251, (*v251)(v136, v253), v317 == 255))
      {
        (*v217)(v132, v232);
        (*v265)(v284, v26);
        v35 = v274;
        (*v278)(v286, v274);
        v3 = v249;
        goto LABEL_41;
      }

      v330[0] = v316[0];
      v330[1] = v316[1];
      v331 = v317;
      *&v246 = Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.logoURL.getter();
      *&v245 = v139;
      v140 = Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.title.getter();
      v234 = v141;
      v235 = v140;
      v142 = Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.subTitle.getter();
      v215 = v143;
      v144 = v250;
      Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.link.getter();
      v145 = Com_Apple_Sse_Ocean_Ndo_Api_CTLink.linkLabel.getter();
      v147 = v146;
      v137(v144, v263);
      v148 = v210;
      Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.dismissAction.getter();
      v149 = v252;
      Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction.action.getter();
      (*v209)(v148, v211);
      sub_10002E7E8(v149, v254, v255, v318);
      v138(v149, v253);
      v150 = Com_Apple_Sse_Ocean_Ndo_Api_CCItem.hashValue.getter();
      NDOPromoModel.init(iconUrl:title:subtitle:callToActionLabel:action:deleteAction:protoHashValue:)(v246, v245, v235, v234, v142, v215, v145, v147, &v300, v330, v318, v150);
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v273 = sub_100031F68(0, *(v273 + 2) + 1, 1, v273);
      }

      v35 = v274;
      v152 = *(v273 + 2);
      v151 = *(v273 + 3);
      v44 = v248;
      v3 = v249;
      v50 = v271;
      v26 = v277;
      v51 = v262;
      if (v152 >= v151 >> 1)
      {
        v273 = sub_100031F68((v151 > 1), v152 + 1, 1, v273);
      }

      v295 = v306;
      v296 = v307;
      v297 = v308;
      v298 = v309;
      v291 = v302;
      v292 = v303;
      v293 = v304;
      v294 = v305;
      v289 = v300;
      v290 = v301;
      sub_100032178(&v289);
      v153 = v273;
      *(v273 + 2) = v152 + 1;
      v154 = &v153[152 * v152];
      v155 = v290;
      *(v154 + 2) = v289;
      *(v154 + 3) = v155;
      v156 = v291;
      v157 = v292;
      v158 = v294;
      *(v154 + 6) = v293;
      *(v154 + 7) = v158;
      *(v154 + 4) = v156;
      *(v154 + 5) = v157;
      v159 = v295;
      v160 = v296;
      v161 = v297;
      *(v154 + 22) = v298;
      *(v154 + 9) = v160;
      *(v154 + 10) = v161;
      *(v154 + 8) = v159;
      v311 = v153;
      swift_endAccess();
      (*v217)(v220, v232);
    }

    (*v265)(v284, v26);
    (*v278)(v286, v35);
    v45 = v275;
LABEL_9:
    ++v48;
    v49 = v283;
    result = object;
    if (countAndFlagsBits == v48)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_100031260@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.hasTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031290@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.hasSubTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000312C0@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.hasLogoURL.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031340@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.hasTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031370@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.hasImageURL.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000313A0@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.hasSerialNumber.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000313D0@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.imageURL.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003143C@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.subTitle.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000314A8@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.hasSubTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000314D8@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.ctaLabel.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100031544@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.hasCtaLabel.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031574@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.hasTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000315A4@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.hasSubTitle.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000315D4@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.hasLogoURL.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031654@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.header.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000316C0@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.hasHeader.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000316F0@<X0>(_DWORD *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.expandThreshold.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100031744@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.hasExpandThreshold.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031774@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.expandLabel.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000317E0@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.hasExpandLabel.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031810@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.footer.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003187C@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.hasFooter.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000318AC@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Sse_Ocean_Ndo_Api_CTAction.hasType.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000318DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

char *sub_1000319AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A75B8, &qword_10007D978);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100031AD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A75A8, &qword_10007D960);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100031BF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A7598, &qword_10007D950);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100031D20(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A75B0, &unk_10007D968);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100031E40(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A7590, &qword_10007D948);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100031F68(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A7588, &qword_10007D940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100032090()
{
  result = qword_1000A7530;
  if (!qword_1000A7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7530);
  }

  return result;
}

char *sub_1000320E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003228C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_100032104()
{
  result = qword_1000A7558;
  if (!qword_1000A7558)
  {
    sub_10001EFA0(&qword_1000A7550, &qword_10007D428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7558);
  }

  return result;
}

uint64_t sub_100032194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1000321EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000321F8(uint64_t *a1, int a2)
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

uint64_t sub_100032240(uint64_t result, int a2, int a3)
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

char *sub_10003228C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A75A0, &qword_10007D958);
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

uint64_t static NDOAgentSwiftHelpers.getAmsProperties(for:completion:)(void *a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v7 = sub_10001A078(&qword_1000A7390, &qword_10007D980);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v11 = sub_10001A078(&qword_1000A75C0, &qword_10007D988);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = v3;

  v15 = a1;
  if ([v15 requestType] == 3)
  {
    v16 = sub_10001A078(&qword_1000A75C8, qword_10007D990);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    sub_100034748(v13, 0, v15, a2, a3);

    return sub_1000035B8(v13, &qword_1000A75C0, &qword_10007D988);
  }

  else
  {
    v18 = sub_10005BF18();
    swift_beginAccess();
    (*(v8 + 16))(v10, v18, v7);
    v19 = swift_allocObject();
    v19[2] = sub_100032660;
    v19[3] = v14;
    v19[4] = v15;
    v19[5] = v3;
    v20 = v15;

    swift_getOpaqueTypeConformance2();
    dispatch thunk of NDOLoader.load(with:)();

    return (*(v8 + 8))(v10, v7);
  }
}

void sub_1000326F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id NDOAgentSwiftHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOAgentSwiftHelpers();
  return objc_msgSendSuper2(&v2, "init");
}

id NDOAgentSwiftHelpers.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NDOAgentSwiftHelpers();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100032810()
{
  v0 = sub_100033000();
  if (!v0)
  {
    return 0;
  }

  if (v0[2] != 2)
  {
    goto LABEL_7;
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
  }

  else
  {
LABEL_7:
    v1 = 0;
  }

  return v1;
}

uint64_t sub_100032894(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, void *a4)
{
  v52 = a4;
  v56 = a3;
  v57 = a2;
  v53 = type metadata accessor for Logger();
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001A078(&qword_1000A71A0, qword_10007B370);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = type metadata accessor for URL();
  v50 = *(v9 - 8);
  v51 = v9;
  __chkstk_darwin(v9);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001A078(&qword_1000A75C0, &qword_10007D988);
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - v12;
  v14 = sub_10001A078(&unk_1000A7EA0, &qword_10007F110);
  __chkstk_darwin(v14);
  v16 = (&v47 - v15);
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001CB74(a1, v16, &unk_1000A7EA0, &qword_10007F110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58 = *v16;
    v21 = v58;
    sub_10001A078(&unk_1000A7980, &qword_10007D9E0);
    swift_willThrowTypedImpl();
    v22 = sub_10001A078(&qword_1000A75C8, qword_10007D990);
    (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
    swift_errorRetain();
    v57(v13, v21);

    return sub_1000035B8(v13, &qword_1000A75C0, &qword_10007D988);
  }

  (*(v18 + 32))(v20, v16, v17);
  v24 = v52;
  v25 = [v52 requestType];
  v47 = v18;
  v48 = v20;
  if (!v25)
  {
    v27 = v24;
    Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageCentralAmsURL.getter();
    goto LABEL_9;
  }

  if (v25 == 1)
  {
    v27 = v24;
    Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageDetailsAmsURL.getter();
LABEL_9:
    v29 = 0;
    v26 = v53;
    goto LABEL_10;
  }

  v26 = v53;
  if (v25 != 2)
  {
    goto LABEL_12;
  }

  v27 = v24;
  sub_100035038(v24);
  v29 = v28;
LABEL_10:
  URL.init(string:)();

  v31 = v50;
  v30 = v51;
  if ((*(v50 + 48))(v8, 1, v51) != 1)
  {
    v38 = v49;
    (*(v31 + 32))(v49, v8, v30);
    v39 = sub_10001A078(&qword_1000A75C8, qword_10007D990);
    v40 = v17;
    v41 = *(v39 + 48);
    (*(v31 + 16))(v13, v38, v30);
    v13[v41] = v29 & 1;
    (*(*(v39 - 8) + 56))(v13, 0, 1, v39);
    v57(v13, 0);
    sub_1000035B8(v13, &qword_1000A75C0, &qword_10007D988);
    (*(v31 + 8))(v38, v30);
    return (*(v47 + 8))(v48, v40);
  }

  sub_1000035B8(v8, &qword_1000A71A0, qword_10007B370);
  v24 = v27;
LABEL_12:
  v32 = sub_100049C1C();
  (*(v55 + 16))(v54, v32, v26);
  v33 = v24;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = v17;
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    *(v37 + 4) = [v33 requestType];

    _os_log_impl(&_mh_execute_header, v34, v35, "Unable to get %lu AMS url", v37, 0xCu);
    v17 = v36;
  }

  else
  {

    v34 = v33;
  }

  v42 = v57;

  (*(v55 + 8))(v54, v26);
  v43 = sub_10001A078(&qword_1000A75C8, qword_10007D990);
  (*(*(v43 - 8) + 56))(v13, 1, 1, v43);
  v44 = type metadata accessor for NDOErrors();
  sub_100027ADC();
  v45 = swift_allocError();
  (*(*(v44 - 8) + 104))(v46, enum case for NDOErrors.failedToLoadAmsUrl(_:), v44);
  v42(v13, v45);

  sub_1000035B8(v13, &qword_1000A75C0, &qword_10007D988);
  return (*(v47 + 8))(v48, v17);
}

void *sub_100033000()
{
  v0 = sub_1000331D8();
  if (!v0)
  {
    return 0;
  }

  if (!v0[2])
  {

    return 0;
  }

  v1 = v0[4];
  v2 = v0[5];

  v18[0] = 47;
  v18[1] = 0xE100000000000000;
  __chkstk_darwin(v3);
  v16[2] = v18;
  v4 = sub_1000333B8(0x7FFFFFFFFFFFFFFFLL, 1, sub_10003551C, v16, v1, v2, &v17);
  v5 = v4[2];
  if (!v5)
  {

    return _swiftEmptyArrayStorage;
  }

  v18[0] = _swiftEmptyArrayStorage;
  result = sub_100033930(0, v5, 0);
  v7 = 0;
  v8 = v18[0];
  v9 = v4 + 7;
  while (v7 < v4[2])
  {

    v10 = static String._fromSubstring(_:)();
    v12 = v11;

    v18[0] = v8;
    v14 = *(v8 + 16);
    v13 = *(v8 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_100033930((v13 > 1), v14 + 1, 1);
      v8 = v18[0];
    }

    ++v7;
    *(v8 + 16) = v14 + 1;
    v15 = v8 + 16 * v14;
    *(v15 + 32) = v10;
    *(v15 + 40) = v12;
    v9 += 4;
    if (v5 == v7)
    {

      return v8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000331D8()
{
  v1 = [v0 universalLinkPath];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v21[0] = 63;
  v21[1] = 0xE100000000000000;
  __chkstk_darwin(v6);
  v19[2] = v21;
  v7 = sub_1000333B8(1, 1, sub_10003551C, v19, v3, v5, &v20);
  v8 = v7[2];
  if (!v8)
  {

    return _swiftEmptyArrayStorage;
  }

  v21[0] = _swiftEmptyArrayStorage;
  result = sub_100033930(0, v8, 0);
  v10 = 0;
  v11 = v21[0];
  v12 = v7 + 7;
  while (v10 < v7[2])
  {

    v13 = static String._fromSubstring(_:)();
    v15 = v14;

    v21[0] = v11;
    v17 = *(v11 + 16);
    v16 = *(v11 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_100033930((v16 > 1), v17 + 1, 1);
      v11 = v21[0];
    }

    ++v10;
    *(v11 + 16) = v17 + 1;
    v18 = v11 + 16 * v17;
    *(v18 + 32) = v13;
    *(v18 + 40) = v15;
    v12 += 4;
    if (v8 == v10)
    {

      return v11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000333B8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100033778(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100033778((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100033778(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100033778(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100033778((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_100033778(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A75F8, &qword_10007D9D8);
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

uint64_t sub_100033884(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

char *sub_100033930(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100033950(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100033950(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A6FA0, &qword_10007D9D0);
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

uint64_t sub_100033A5C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NDOAgentInternalDebugHelpers();
  v7 = static NDOAgentInternalDebugHelpers.debugAMSPayload()();
  if (v8 >> 60 == 15)
  {
    type metadata accessor for NDOCompositionLayer();
    sub_10005D434(v31);
    v30 = v31[4];
    v32 = sub_100001F3C(v31, v31[3]);
    v9 = [a1 serialNumber];
    if (v9)
    {
      v10 = v9;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v29 = 0;
    }

    v23 = [a1 additionalBody];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100032810();
    v24 = sub_1000331D8();
    if (v24)
    {
      if (v24[2] == 2)
      {
        v25 = v24[7];
        v26 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v26 = v24[6] & 0xFFFFFFFFFFFFLL;
        }

        if (v26)
        {
        }
      }
    }

    v11 = dispatch thunk of RequestPayloadProvider.amsBodyPayload(serialNumber:extraPayload:ulCode:ulParams:)();

    sub_100001E74(v31);
  }

  else
  {
    v11 = v7;
    v12 = v8;
    v13 = sub_100049C1C();
    (*(v4 + 16))(v6, v13, v3);
    sub_100034F60(v11, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    sub_100035024(v11, v12);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      LODWORD(v30) = v15;
      v17 = v16;
      v29 = swift_slowAlloc();
      v31[0] = v29;
      *v17 = 136315138;
      sub_100034F60(v11, v12);
      v18 = Data.description.getter();
      v32 = v1;
      v19 = v18;
      v21 = v20;
      sub_100035024(v11, v12);
      v22 = sub_10001FEC8(v19, v21, v31);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v14, v30, "AMS Payload override: %s", v17, 0xCu);
      sub_100001E74(v29);
    }

    (*(v4 + 8))(v6, v3);
  }

  return v11;
}

uint64_t sub_100033E2C(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = a3;
  v5 = sub_10001A078(&qword_1000A75C0, &qword_10007D988);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - v6;
  v8 = sub_10001A078(&qword_1000A75C8, qword_10007D990);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Logger();
  __chkstk_darwin(v15);
  v16 = sub_100033A5C(a2);
  v18 = v17;
  v19 = [objc_allocWithZone(NDORequestProperties) init];
  v40 = v16;
  v20 = v18;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v22 = [v19 signatureHeadersForBody:isa];

  if (v22)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_100001F80(_swiftEmptyArrayStorage);
  }

  sub_10001CB74(a1, v7, &qword_1000A75C0, &qword_10007D988);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000035B8(v7, &qword_1000A75C0, &qword_10007D988);
    v23 = objc_allocWithZone(NDOAMSProperties);
    v24 = v40;
    sub_100034F60(v40, v20);
    v25 = Dictionary._bridgeToObjectiveC()().super.isa;

    v26 = Data._bridgeToObjectiveC()().super.isa;
    v27 = [v23 initWithUrl:0 signatureHeaders:v25 bodyData:v26];

    sub_100003EBC(v24, v20);
    (*(v41 + 16))(v41, v27, 0);

    return sub_100003EBC(v24, v20);
  }

  else
  {
    sub_100034FB4(v7, v14);
    sub_10001CB74(v14, v12, &qword_1000A75C8, qword_10007D990);
    v29 = v14[*(v8 + 48)];
    v30 = objc_allocWithZone(NDOAMSProperties);
    v31 = v40;
    sub_100034F60(v40, v20);
    URL._bridgeToObjectiveC()(v32);
    v34 = v33;
    v35 = type metadata accessor for URL();
    (*(*(v35 - 8) + 8))(v12, v35);
    v36 = Dictionary._bridgeToObjectiveC()().super.isa;

    v37 = Data._bridgeToObjectiveC()().super.isa;
    v38 = [v30 initWithUrl:v34 signatureHeaders:v36 bodyData:v37 presentModally:v29];

    sub_100003EBC(v31, v20);
    (*(v41 + 16))(v41, v38, 0);

    sub_100003EBC(v31, v20);
    return sub_1000035B8(v14, &qword_1000A75C8, qword_10007D990);
  }
}

uint64_t sub_100034440(void *a1, uint64_t a2, const void *a3)
{
  v6 = sub_10001A078(&qword_1000A7390, &qword_10007D980);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = sub_10001A078(&qword_1000A75C0, &qword_10007D988);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = sub_100034ED8;
  v14[4] = v13;
  v14[5] = a2;
  _Block_copy(a3);

  v15 = a1;
  if ([v15 requestType] == 3)
  {
    v16 = sub_10001A078(&qword_1000A75C8, qword_10007D990);
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    _Block_copy(a3);
    sub_100033E2C(v12, v15, a3);
    _Block_release(a3);

    sub_1000035B8(v12, &qword_1000A75C0, &qword_10007D988);
  }

  else
  {
    v17 = sub_10005BF18();
    swift_beginAccess();
    (*(v7 + 16))(v9, v17, v6);
    v18 = swift_allocObject();
    v18[2] = sub_100035514;
    v18[3] = v14;
    v18[4] = v15;
    v18[5] = a2;
    v19 = v15;

    swift_getOpaqueTypeConformance2();
    dispatch thunk of NDOLoader.load(with:)();

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_100034748(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id, uint64_t), uint64_t a5)
{
  v61 = a5;
  v62 = a4;
  v59 = a1;
  v60 = a3;
  v6 = sub_10001A078(&qword_1000A75C0, &qword_10007D988);
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - v7;
  v9 = sub_10001A078(&qword_1000A75C8, qword_10007D990);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v56 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  if (a2)
  {
    swift_errorRetain();
    v21 = sub_100049C1C();
    (*(v17 + 16))(v20, v21, v16);
    swift_errorRetain();
    v22 = v60;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    v25 = v16;
    if (os_log_type_enabled(v23, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 134218242;
      *(v26 + 4) = [v22 requestType];

      *(v26 + 12) = 2112;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to get %lu AMS url, error: %@", v26, 0x16u);
      sub_1000035B8(v27, &qword_1000A6F40, &qword_10007E690);
    }

    else
    {

      v23 = v22;
    }

    (*(v17 + 8))(v20, v25);
    swift_errorRetain();
    v62(0, a2);
  }

  else
  {
    v57 = v10;
    v58 = v8;
    v29 = v59;
    v31 = sub_100033A5C(v60);
    v33 = v32;
    v34 = [objc_allocWithZone(NDORequestProperties) init];
    isa = Data._bridgeToObjectiveC()().super.isa;
    v36 = [v34 signatureHeadersForBody:isa];

    if (v36)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      sub_100001F80(_swiftEmptyArrayStorage);
    }

    v37 = v29;
    v38 = v13;
    v40 = v57;
    v39 = v58;
    sub_10001CB74(v37, v58, &qword_1000A75C0, &qword_10007D988);
    if ((*(v40 + 48))(v39, 1, v9) == 1)
    {
      sub_1000035B8(v39, &qword_1000A75C0, &qword_10007D988);
      v41 = objc_allocWithZone(NDOAMSProperties);
      v42 = v31;
      sub_100034F60(v31, v33);
      v43 = Dictionary._bridgeToObjectiveC()().super.isa;

      v44 = Data._bridgeToObjectiveC()().super.isa;
      v45 = [v41 initWithUrl:0 signatureHeaders:v43 bodyData:v44];

      sub_100003EBC(v42, v33);
      v62(v45, 0);

      return sub_100003EBC(v42, v33);
    }

    else
    {
      sub_100034FB4(v39, v15);
      sub_10001CB74(v15, v13, &qword_1000A75C8, qword_10007D990);
      v46 = v15[*(v9 + 48)];
      v47 = objc_allocWithZone(NDOAMSProperties);
      sub_100034F60(v31, v33);
      v48 = v38;
      URL._bridgeToObjectiveC()(v49);
      v51 = v50;
      v52 = type metadata accessor for URL();
      (*(*(v52 - 8) + 8))(v48, v52);
      v53 = Dictionary._bridgeToObjectiveC()().super.isa;

      v54 = Data._bridgeToObjectiveC()().super.isa;
      v55 = [v47 initWithUrl:v51 signatureHeaders:v53 bodyData:v54 presentModally:v46];

      sub_100003EBC(v31, v33);
      v62(v55, 0);

      sub_100003EBC(v31, v33);
      return sub_1000035B8(v15, &qword_1000A75C8, qword_10007D990);
    }
  }
}

uint64_t sub_100034EE0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100034F20()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100034F60(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100034FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A75C8, qword_10007D990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035024(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003EBC(result, a2);
  }

  return result;
}

uint64_t sub_100035038(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100033000();
  if (!v6)
  {
    goto LABEL_12;
  }

  if (!v6[2])
  {
    goto LABEL_11;
  }

  v8 = v6[4];
  v7 = v6[5];

  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  v41 = v8;
  v42 = v7;

  v10._countAndFlagsBits = 47;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);

  v11 = v42;
  if (!v42)
  {
LABEL_12:
    v18 = sub_100049C1C();
    (*(v3 + 16))(v5, v18, v2);
    v19 = a1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v40 = v23;
      *v22 = 136315138;
      v24 = [v19 universalLinkPath];
      if (v24)
      {
        v39 = v21;
        v25 = v24;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        LOBYTE(v21) = v39;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v41 = v26;
      v42 = v28;
      sub_10001A078(&unk_1000A7600, &qword_10007D9E8);
      v29 = String.init<A>(describing:)();
      v31 = sub_10001FEC8(v29, v30, &v40);

      *(v22 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "Attempting to get universal properties for invalid universal link path: %s", v22, 0xCu);
      sub_100001E74(v23);
    }

    (*(v3 + 8))(v5, v2);
    return Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageCentralAmsURL.getter();
  }

  v12 = v41;
  v13 = sub_100032810();
  if (!v14)
  {
LABEL_11:

    goto LABEL_12;
  }

  v15 = v14;
  v16 = v13;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v12 && v11 == v17)
  {

    return Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageCentralAmsURL.getter();
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {

    return Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageCentralAmsURL.getter();
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v12 && v11 == v34)
  {

LABEL_25:

    return Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.universalLinkSheetAmsURL.getter();
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
    goto LABEL_25;
  }

  v36 = Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.universalLinkSheetCodes.getter();
  v41 = v16;
  v42 = v15;
  __chkstk_darwin(v36);
  *&v38[-16] = &v41;
  v37 = sub_100033884(sub_1000354A0, &v38[-32], v36);

  if ((v37 & 1) == 0)
  {
    return Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageCentralAmsURL.getter();
  }

  return Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.universalLinkSheetAmsURL.getter();
}

uint64_t sub_1000354BC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_100035538@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() sharedProvider];
  v3 = type metadata accessor for NDOAPIDeviceInfoAdapter();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  a1[3] = v3;
  result = sub_10003561C();
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_1000355B0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

unint64_t sub_10003561C()
{
  result = qword_1000A7610;
  if (!qword_1000A7610)
  {
    type metadata accessor for NDOAPIDeviceInfoAdapter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7610);
  }

  return result;
}

uint64_t sub_100035670(void *a1, char a2)
{
  v4 = [a1 serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(*v2 + 112))([a1 deviceType]);
  v5 = [a1 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [a1 productID];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = [a1 color];
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = [a1 enclosureColor];
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = [a1 coverGlassColor];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 stringValue];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  [a1 isAltAccountWatch];
  [a1 isActiveWatch];
  return RequestDeviceInfo.init(serialNumber:primary:deviceType:deviceName:deviceModel:deviceColor:deviceEnclosureColor:deviceCoverGlassColor:isTinkerPaired:isActiveWatch:)();
}

id sub_1000358B0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    v6 = MobileGestalt_copy_deviceClass_obj();

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if (v7 == 0x447974696C616552 && v9 == 0xED00006563697665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        countAndFlagsBits = 0x4E4F49534956;
      }

      else
      {
        countAndFlagsBits = String.uppercased()()._countAndFlagsBits;
      }
    }

    else
    {
      countAndFlagsBits = 0x4E574F4E4B4E55;
      v11 = sub_100049C1C();
      (*(v1 + 16))(v3, v11, v0);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Unknown device class", v14, 2u);
      }

      (*(v1 + 8))(v3, v0);
    }

    return countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100035AF0(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0x53444F50524941;
    }

    if (a1 == 4)
    {
      return 0x59414C50534944;
    }
  }

  else
  {
    if (!a1)
    {
      return (*(*v1 + 104))(v5);
    }

    if (a1 == 1)
    {
      return 0x4843544157;
    }
  }

  v9 = sub_100049C1C();
  (*(v4 + 16))(v7, v9, v3);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v10, v11, "Unsupported device type: %lu", v12, 0xCu);
  }

  (*(v4 + 8))(v7, v3);
  v15 = 0;
  v16 = 0xE000000000000000;
  v13._countAndFlagsBits = 0x5F4E574F4E4B4E55;
  v13._object = 0xE800000000000000;
  String.append(_:)(v13);
  v14[1] = a1;
  type metadata accessor for NDODeviceType();
  _print_unlocked<A, B>(_:_:)();
  return v15;
}

void *sub_100035D44()
{
  v18 = type metadata accessor for RequestDeviceInfo();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_allocWithZone(NDOStudioDisplayProvider) init];
  v4 = [v3 devices];

  sub_100036478();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    return _swiftEmptyArrayStorage;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v19 = _swiftEmptyArrayStorage;
  result = sub_1000364C4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v19;
    v10 = v5;
    v17 = v5 & 0xC000000000000001;
    v11 = v5;
    v12 = v6;
    do
    {
      if (v17)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v10 + 8 * v8 + 32);
      }

      v14 = v13;
      sub_100035670(v13, 0);

      v19 = v9;
      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        sub_1000364C4((v15 > 1), v16 + 1, 1);
        v9 = v19;
      }

      ++v8;
      v9[2] = v16 + 1;
      (*(v0 + 32))(v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v16, v2, v18);
      v10 = v11;
    }

    while (v12 != v8);

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100035FA0()
{
  v1 = v0;
  sub_10001A078(&qword_1000A7618, &qword_10007D9F0);
  type metadata accessor for RequestDeviceInfo();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10007AE00;
  v3 = *(v0 + 16);
  v4 = [v3 defaultDevice];
  sub_100035670(v4, 1);

  v5 = [v3 pairedWatches];
  sub_100036478();
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_1000367E8(v6, v1);

  sub_1000366BC(v7);
  v8 = [v3 pairedBTDevices];
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_1000367E8(v9, v1);

  sub_1000366BC(v10);
  v11 = sub_100035D44();
  sub_1000366BC(v11);
  return v2;
}

uint64_t sub_1000361D4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void type metadata accessor for NDODeviceType()
{
  if (!qword_1000A7708)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000A7708);
    }
  }
}

void *sub_1000362A0(void *result, int64_t a2, char a3, void *a4)
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
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

  sub_10001A078(&qword_1000A7618, &qword_10007D9F0);
  v10 = *(type metadata accessor for RequestDeviceInfo() - 8);
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
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for RequestDeviceInfo() - 8);
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

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_100036478()
{
  result = qword_1000A7620;
  if (!qword_1000A7620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A7620);
  }

  return result;
}

void *sub_1000364C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000364E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000364E4(void *result, int64_t a2, char a3, void *a4)
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
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

  sub_10001A078(&qword_1000A7618, &qword_10007D9F0);
  v10 = *(type metadata accessor for RequestDeviceInfo() - 8);
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
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for RequestDeviceInfo() - 8);
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

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1000366BC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1000362A0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for RequestDeviceInfo();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000367E8(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v35 = type metadata accessor for RequestDeviceInfo();
  v4 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v29[1] = v2;
    v40 = _swiftEmptyArrayStorage;
    sub_1000364C4(0, v7, 0);
    v39 = v40;
    v9 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v33 = v4 + 32;
    v34 = v4;
    v30 = a1 + 72;
    v31 = v7;
    v32 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v15 = *(a1 + 36);
      v37 = v11;
      v38 = v15;
      v16 = *(*(a1 + 56) + 8 * v10);
      sub_100035670(v16, 0);

      v17 = v39;
      v40 = v39;
      v18 = a1;
      v20 = v39[2];
      v19 = v39[3];
      if (v20 >= v19 >> 1)
      {
        sub_1000364C4((v19 > 1), v20 + 1, 1);
        v17 = v40;
      }

      v17[2] = v20 + 1;
      v21 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v39 = v17;
      result = (*(v34 + 32))(v17 + v21 + *(v34 + 72) * v20, v6, v35);
      v12 = 1 << *(v18 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v9 = v32;
      v22 = *(v32 + 8 * v14);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v18;
      if (v38 != *(v18 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v31;
      }

      else
      {
        v24 = v14 << 6;
        v25 = v14 + 1;
        v13 = v31;
        v26 = (v30 + 8 * v14);
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_100036AF0(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_100036AF0(v10, v38, 0);
      }

LABEL_4:
      v11 = v37 + 1;
      v10 = v12;
      if (v37 + 1 == v13)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100036AF0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100036B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100049C1C();
  (*(v11 + 16))(v13, v14, v10);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *&v24 = a3;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Creating config loader", v17, 2u);
    a3 = v24;
  }

  (*(v11 + 8))(v13, v10);
  v24 = *(a3 + 24);
  v18 = v24;
  v19 = sub_100001F3C(a3, v24);
  *(&v26[1] + 8) = v24;
  v20 = sub_100027B84(v26);
  (*(*(v18 - 8) + 16))(v20, v19, v18);
  sub_100036DFC(a2, v28);
  sub_100001E74(v26);
  sub_100001E10(a2, v27);
  sub_10001EC4C(a3, v26);
  sub_100001E10(a4, v25);
  v21 = swift_allocObject();
  sub_100005734(v27, v21 + 16);
  sub_100036FF4(v26, (v21 + 56));
  sub_100005734(v25, v21 + 104);
  sub_100001E10(a1, v26);
  sub_100001E10(v28, v27);
  type metadata accessor for NDOConfigLoader();
  swift_allocObject();
  v22 = NDOConfigLoader.init(plistLoader:localConfigLoader:remoteConfigLoaderForUrl:)();
  result = sub_100001E74(v28);
  *a5 = v22;
  return result;
}

unint64_t sub_100036DFC@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_100049C1C();
  (*(v6 + 16))(v8, v9, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Creating local config loader", v12, 2u);
  }

  (*(v6 + 8))(v8, v5);
  sub_100001E10(a1, v17);
  static NDOResponseMapper.Config.checkTTLAndDecode(keyValueReader:)();
  v13 = sub_10001A078(&qword_1000A7770, &qword_10007DAB8);
  swift_allocObject();
  v14 = NDOMappingLoader.init(client:retryOnUnauthorized:requestGenerator:mapper:)();
  a3[3] = v13;
  result = sub_10003875C();
  a3[4] = result;
  *a3 = v14;
  return result;
}

_OWORD *sub_100036FF4(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_10003704C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100049C1C();
  (*(v11 + 16))(v13, v14, v10);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v20 = a2;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Creating remote config loader", v17, 2u);
    a2 = v20;
  }

  (*(v11 + 8))(v13, v10);
  sub_100001E10(a2, v23);
  sub_10001EC4C(a3, v22);
  sub_100001E10(a4, v21);
  v18 = swift_allocObject();
  sub_100005734(v23, v18 + 16);
  sub_100036FF4(v22, (v18 + 56));
  sub_100005734(v21, v18 + 104);
  sub_100001E10(a1, v22);
  type metadata accessor for NDOConfigLoader();
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  swift_allocObject();
  result = NDOConfigLoader.init(plistLoader:localConfigLoader:remoteConfigLoaderForUrl:)();
  *a5 = result;
  return result;
}

unint64_t sub_1000372A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v38 = a6;
  v37 = a5;
  v34 = a2;
  v35 = a1;
  v39 = a7;
  v36 = type metadata accessor for URL();
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v36);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100049C1C();
  (*(v13 + 16))(v15, v16, v12);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Creating remote config loader", v19, 2u);
    v11 = v33;
  }

  (*(v13 + 8))(v15, v12);
  sub_100001E10(v34, v43);
  v20 = v36;
  (*(v9 + 16))(v11, v35, v36);
  sub_100001E10(a4, v42);
  sub_10001EC4C(a3, v41);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v9 + 32))(v23 + v21, v11, v20);
  sub_100005734(v42, v23 + v22);
  sub_100036FF4(v41, (v23 + ((v22 + 47) & 0xFFFFFFFFFFFFFFF8)));
  v24 = a3[3];
  v25 = a3[5];
  v26 = sub_100001F3C(a3, v24);
  v40[3] = v24;
  v40[4] = v25;
  v27 = sub_100027B84(v40);
  (*(*(v24 - 8) + 16))(v27, v26, v24);
  static NDOResponseMapper.Config.decodeAndSaveTTL(keyValueWriter:)();
  sub_100001E74(v40);
  v28 = sub_10001A078(&qword_1000A7770, &qword_10007DAB8);
  swift_allocObject();
  v29 = NDOMappingLoader.init(client:retryOnUnauthorized:requestGenerator:mapper:)();
  v30 = v39;
  v39[3] = v28;
  result = sub_10003875C();
  v30[4] = result;
  *v30 = v29;
  return result;
}

id sub_10003766C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NDOConstants.localConfigURL.getter();
  v4 = objc_allocWithZone(NSURLRequest);
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v8 = [v4 initWithURL:v6];

  (*(v1 + 8))(v3, v0);
  return v8;
}

id sub_10003776C(int a1, uint64_t a2, void *a3, void *a4)
{
  v82 = a4;
  v76 = a1;
  v88 = type metadata accessor for Logger();
  v90 = *(v88 - 8);
  v5 = __chkstk_darwin(v88);
  v79 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v5);
  v78 = &v73 - v8;
  __chkstk_darwin(v7);
  v86 = &v73 - v9;
  v85 = type metadata accessor for JSONEncodingOptions();
  v83 = *(v85 - 8);
  v10 = __chkstk_darwin(v85);
  v77 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v84 = &v73 - v12;
  v80 = type metadata accessor for NDOKeyValueStoreKey();
  v13 = *(v80 - 8);
  __chkstk_darwin(v80);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Environment();
  __chkstk_darwin(v16 - 8);
  v81 = (&v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta();
  __chkstk_darwin(v18 - 8);
  v92 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest();
  v87 = *(v92 - 8);
  v19 = __chkstk_darwin(v92);
  v74 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v73 - v21;
  v23 = objc_allocWithZone(NSMutableURLRequest);
  URL._bridgeToObjectiveC()(v24);
  v26 = v25;
  v27 = [v23 initWithURL:v25];

  v28 = String._bridgeToObjectiveC()();
  [v27 setHTTPMethod:v28];

  v29 = String._bridgeToObjectiveC()();
  v30 = String._bridgeToObjectiveC()();
  [v27 addValue:v29 forHTTPHeaderField:v30];

  v31 = String._bridgeToObjectiveC()();
  v32 = String._bridgeToObjectiveC()();
  v89 = v27;
  [v27 addValue:v31 forHTTPHeaderField:v32];

  Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.init()();
  v33 = a3[3];
  v75 = a3;
  sub_100001F3C(a3, v33);
  dispatch thunk of RequestPayloadProvider.requestMeta()();
  v91 = v22;
  Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.meta.setter();
  sub_100001F3C(v82, v82[3]);
  v34 = v80;
  (*(v13 + 104))(v15, enum case for NDOKeyValueStoreKey.environment(_:), v80);
  dispatch thunk of NDOKeyValueStoreReader.object(for:)();
  (*(v13 + 8))(v15, v34);
  if (v95)
  {
    if (swift_dynamicCast())
    {
      v35 = v93[0];
      v36 = v93[1];
      v37 = v90;
      v38 = v86;
      v39 = v84;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000035B8(v94, &qword_1000A6FD8, &unk_10007DAC0);
  }

  v37 = v90;
  v38 = v86;
  v39 = v84;
  v35 = 0;
  v36 = 0xE000000000000000;
LABEL_6:
  sub_100038330(v35, v36, v81);

  Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.env.setter();
  JSONEncodingOptions.init()();
  sub_1000387C0();
  v40 = Message.jsonUTF8Data(options:)();
  v41 = *(v83 + 8);
  v42 = v40;
  v44 = v43;
  v41(v39, v85);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100003EBC(v42, v44);
  [v89 setHTTPBody:isa];

  sub_100001F3C(v75, v75[3]);
  dispatch thunk of RequestPayloadProvider.addHeaders(to:isRetry:)();
  v46 = sub_100049C1C();
  v83 = *(v37 + 16);
  v84 = v46;
  v47 = v88;
  (v83)(v38);
  v48 = Logger.logObject.getter();
  LODWORD(v82) = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v82))
  {
    v81 = v41;
    v49 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v93[0] = v79;
    v80 = v49;
    *v49 = 136315138;
    v50 = v91;
    swift_beginAccess();
    v51 = v87 + 16;
    (*(v87 + 16))(v74, v50, v92);
    JSONEncodingOptions.init()();
    v52 = Message.jsonString(options:)();
    v54 = v53;
    v81(v77, v85);
    (*(v51 - 8))(v74, v92);
    v55 = sub_10001FEC8(v52, v54, v93);

    v56 = v80;
    *(v80 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v48, v82, "Config request body: %s", v56, 0xCu);
    sub_100001E74(v79);

    v57 = *(v37 + 8);
    v58 = v88;
    v57(v86, v88);
  }

  else
  {

    v57 = *(v37 + 8);
    v57(v38, v47);
    v58 = v47;
  }

  v59 = v78;
  (v83)(v78, v84, v58);
  v60 = v89;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v93[0] = v64;
    *v63 = 136315138;
    v65 = [v60 allHTTPHeaderFields];
    if (v65)
    {
      v66 = v65;
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      sub_100001F80(_swiftEmptyArrayStorage);
    }

    v68 = Dictionary.description.getter();
    v70 = v69;

    v71 = sub_10001FEC8(v68, v70, v93);

    *(v63 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v61, v62, "Config request headers: %s", v63, 0xCu);
    sub_100001E74(v64);

    v67 = v78;
  }

  else
  {

    v67 = v59;
  }

  v57(v67, v58);
  (*(v87 + 8))(v91, v92);
  return v60;
}

uint64_t sub_100038330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Environment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A078(&qword_1000A7788, &qword_10007DAD0);
  v8 = sub_10001A078(&qword_1000A7790, &qword_10007DAD8);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10007DA80;
  v12 = (v11 + v10);
  v13 = *(v8 + 48);
  *v12 = 29801;
  *(v12 + 1) = 0xE200000000000000;
  v30 = *(v5 + 104);
  v31 = v5 + 104;
  v30(&v12[v13], enum case for Com_Apple_Sse_Ocean_Ndo_Api_Environment.it(_:), v4);
  v14 = &v12[v9];
  v15 = *(v8 + 48);
  *v14 = 29813;
  *(v14 + 1) = 0xE200000000000000;
  v30(&v12[v9 + v15], enum case for Com_Apple_Sse_Ocean_Ndo_Api_Environment.uat(_:), v4);
  v16 = &v12[2 * v9];
  v17 = *(v8 + 48);
  *v16 = 0x746F6C6970;
  *(v16 + 1) = 0xE500000000000000;
  v30(&v16[v17], enum case for Com_Apple_Sse_Ocean_Ndo_Api_Environment.pilot(_:), v4);
  v18 = &v12[3 * v9];
  v19 = *(v8 + 48);
  *v18 = 7759204;
  *(v18 + 1) = 0xE300000000000000;
  v30(&v18[v19], enum case for Com_Apple_Sse_Ocean_Ndo_Api_Environment.dev(_:), v4);
  v20 = &v12[4 * v9];
  v21 = *(v8 + 48);
  *v20 = 1685025392;
  *(v20 + 1) = 0xE400000000000000;
  v22 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_Environment.prod(_:);
  v30(&v20[v21], enum case for Com_Apple_Sse_Ocean_Ndo_Api_Environment.prod(_:), v4);
  v23 = sub_100038818(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v23 + 16) && (v24 = sub_10001CEA0(v28, v29), (v25 & 1) != 0))
  {
    (*(v5 + 16))(v7, *(v23 + 56) + *(v5 + 72) * v24, v4);

    return (*(v5 + 32))(a3, v7, v4);
  }

  else
  {

    v27 = v30;

    return v27(a3, v22, v4);
  }
}

uint64_t sub_1000386C0()
{
  sub_100001E74(v0 + 2);
  sub_100001E74(v0 + 7);
  sub_100001E74(v0 + 13);

  return _swift_deallocObject(v0, 144, 7);
}

unint64_t sub_10003875C()
{
  result = qword_1000A7778;
  if (!qword_1000A7778)
  {
    sub_10001EFA0(&qword_1000A7770, &qword_10007DAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7778);
  }

  return result;
}

unint64_t sub_1000387C0()
{
  result = qword_1000A7780;
  if (!qword_1000A7780)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7780);
  }

  return result;
}

unint64_t sub_100038818(uint64_t a1)
{
  v2 = sub_10001A078(&qword_1000A7790, &qword_10007DAD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10001A078(&qword_1000A7798, &qword_10007DAE0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000389F4(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10001CEA0(*v5, v12);
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
      v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Environment();
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000389F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A7790, &qword_10007DAD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038A64()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_100001E74((v0 + v5));
  sub_100001E74((v0 + v6));

  return _swift_deallocObject(v0, v6 + 48, v3 | 7);
}

id sub_100038B10(int a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_10003776C(a1, v1 + v4, (v1 + v5), (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t NDOSection.id.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t NDOWarrantyProperties.coverageLabel.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t NDOWarrantyProperties.coverageExpirationLabel.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

BOOL NDOSection.isPlacardSection.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2 && (memmove(__dst, (v1 + 32), 0x98uLL), sub_100038CF0(__dst) == 2) && (sub_10000574C(__dst), v2 == 1))
  {
    return *(*(v0 + 64) + 16) == 1;
  }

  else
  {
    return 0;
  }
}

void __swiftcall NDOSection.init(header:items:isExpandable:expandThreshold:expandLabel:footer:)(ndoagent::NDOSection *__return_ptr retstr, Swift::String_optional header, Swift::OpaquePointer items, Swift::Bool isExpandable, Swift::Int32_optional expandThreshold, Swift::String_optional expandLabel, Swift::String_optional footer)
{
  countAndFlagsBits = footer.value._countAndFlagsBits;
  object = expandLabel.value._object;
  v9 = expandLabel.value._countAndFlagsBits;
  v10 = *&expandThreshold.value;
  v13 = header.value._object;
  v56 = retstr;
  v57 = header.value._countAndFlagsBits;
  v14 = type metadata accessor for UUID();
  v55 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  rawValue = items._rawValue;
  if (!isExpandable)
  {

    swift_bridgeObjectRetain_n();

    v10 = items._rawValue;
    if (!v13)
    {
      goto LABEL_12;
    }

LABEL_9:

    v21 = v57;
    v22 = v57;
    v23 = items._rawValue;
    v24 = v13;
    goto LABEL_19;
  }

  v17 = v13;

  LOBYTE(v63) = BYTE4(v10) & 1;
  if (!object || (v63 & 1) != 0 || (v18 = *(items._rawValue + 2), v10 >= v18))
  {

    v10 = items._rawValue;
    goto LABEL_11;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v54 = countAndFlagsBits;
    if (v18 == v10)
    {

      v20 = items._rawValue;
    }

    else
    {
      sub_1000399D0(items._rawValue, items._rawValue + 32, 0, (2 * v10) & 0x1FFFFFFFELL | 1);
      v20 = v19;
    }

    memset(v73, 0, sizeof(v73));
    v74 = 7;

    NDODWFooterModel.Link.init(label:action:)(v9, object, v73, v59);
    countAndFlagsBits = v59[0];
    v52 = v59[1];
    v53 = v61;
    v51 = v60;
    LOBYTE(items._rawValue) = v62;
    v10 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_22;
    }
  }

  v10 = sub_100031F68(0, *(v10 + 2) + 1, 1, v10);
LABEL_22:
  v42 = *(v10 + 2);
  v41 = *(v10 + 3);
  if (v42 >= v41 >> 1)
  {
    v10 = sub_100031F68((v41 > 1), v42 + 1, 1, v10);
  }

  *&v63 = countAndFlagsBits;
  *(&v63 + 1) = v52;
  v64 = v51;
  v65 = v53;
  LOBYTE(v66) = items._rawValue;
  sub_100032168(&v63);
  *(v10 + 2) = v42 + 1;
  v43 = v10 + 152 * v42;
  v44 = v64;
  *(v43 + 2) = v63;
  *(v43 + 3) = v44;
  v45 = v65;
  v46 = v66;
  v47 = v68;
  *(v43 + 6) = v67;
  *(v43 + 7) = v47;
  *(v43 + 4) = v45;
  *(v43 + 5) = v46;
  v48 = v69;
  v49 = v70;
  v50 = v71;
  *(v43 + 22) = v72;
  *(v43 + 9) = v49;
  *(v43 + 10) = v50;
  *(v43 + 8) = v48;
  countAndFlagsBits = v54;
  items._rawValue = rawValue;
LABEL_11:

  v13 = v17;
  if (v17)
  {
    goto LABEL_9;
  }

LABEL_12:
  v25 = *(items._rawValue + 2);
  if (v25)
  {
    *&v53 = v10;
    v54 = countAndFlagsBits;
    v55 = v13;
    *&v73[0] = _swiftEmptyArrayStorage;
    sub_100033930(0, v25, 0);
    v26 = 32;
    v27 = *&v73[0];
    do
    {
      v28 = *(items._rawValue + v26 + 112);
      v69 = *(items._rawValue + v26 + 96);
      v70 = v28;
      v71 = *(items._rawValue + v26 + 128);
      v72 = *(items._rawValue + v26 + 144);
      v29 = *(items._rawValue + v26 + 48);
      v65 = *(items._rawValue + v26 + 32);
      v66 = v29;
      v30 = *(items._rawValue + v26 + 80);
      v67 = *(items._rawValue + v26 + 64);
      v68 = v30;
      v31 = *(items._rawValue + v26 + 16);
      v63 = *(items._rawValue + v26);
      v64 = v31;
      sub_10003A630(&v63, v59);
      v59[0] = NDOItem.hashValue.getter();
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_10003A68C(&v63);
      *&v73[0] = v27;
      v36 = *(v27 + 16);
      v35 = *(v27 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_100033930((v35 > 1), v36 + 1, 1);
        v27 = *&v73[0];
      }

      *(v27 + 16) = v36 + 1;
      v37 = v27 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v26 += 152;
      --v25;
      items._rawValue = rawValue;
    }

    while (v25);

    v59[0] = v27;

    sub_100039964(v59);
    countAndFlagsBits = v54;
    v13 = v55;

    sub_10001A078(&qword_1000A7550, &qword_10007D428);
    sub_100032104();
    v22 = BidirectionalCollection<>.joined(separator:)();
    v24 = v38;

    v21 = v57;
    v23 = rawValue;
    v10 = v53;
  }

  else
  {

    UUID.init()();
    v22 = UUID.uuidString.getter();
    v23 = items._rawValue;
    v24 = v39;
    v55[1](v16, v14);
    v21 = v57;
  }

LABEL_19:
  v40 = v56;
  v56->isExpanded = 0;
  v40->id._countAndFlagsBits = v22;
  v40->id._object = v24;
  v40->header.value._countAndFlagsBits = v21;
  v40->header.value._object = v13;
  v40->footer.value._countAndFlagsBits = countAndFlagsBits;
  v40->footer.value._object = footer.value._object;
  v40->expandedItems._rawValue = v23;
  v40->collapsedItems._rawValue = v10;
}

uint64_t sub_1000391CC()
{
  v1 = *v0;
  v2 = 0x646E617078457369;
  v3 = 0x7265746F6F66;
  v4 = 0x6465646E61707865;
  if (v1 != 4)
  {
    v4 = 0x657370616C6C6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 1)
  {
    v5 = 0x726564616568;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100039290@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10003A8E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000392B8(uint64_t a1)
{
  v2 = sub_10003A83C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000392F4(uint64_t a1)
{
  v2 = sub_10003A83C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOSection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A77A0, &qword_10007DAE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100001F3C(a1, a1[3]);
  sub_10003A83C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 56);
    HIBYTE(v10) = 4;
    sub_10001A078(&qword_1000A77A8, &qword_10007DAF0);
    sub_10003B154(&qword_1000A77B0, sub_10003A890, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 64);
    HIBYTE(v10) = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 NDOSection.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10003AAE8(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10003961C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

Swift::Void __swiftcall NDOSection.removeItem(with:)(Swift::Int with)
{
  v3 = *(v1 + 56);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v8 = (v6 + 152 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v10 = v8[1];
        v66 = *v8;
        v67 = v10;
        v11 = v8[2];
        v12 = v8[3];
        v13 = v8[5];
        v70 = v8[4];
        v71 = v13;
        v68 = v11;
        v69 = v12;
        v14 = v8[6];
        v15 = v8[7];
        v16 = v8[8];
        v75 = *(v8 + 18);
        v73 = v15;
        v74 = v16;
        v72 = v14;
        v5 = v9 + 1;
        sub_10003A630(&v66, &v56);
        if (NDOItem.hashValue.getter() != with)
        {
          break;
        }

        sub_10003A68C(&v66);
        v8 = (v8 + 152);
        ++v9;
        if (v4 == v5)
        {
          goto LABEL_15;
        }
      }

      v54 = v7;
      v52 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10003A6E0(0, v7[2] + 1, 1);
        v7 = v54;
      }

      v18 = v7[2];
      v17 = v7[3];
      if (v18 >= v17 >> 1)
      {
        sub_10003A6E0((v17 > 1), v18 + 1, 1);
        v7 = v54;
      }

      v7[2] = v18 + 1;
      v19 = &v7[19 * v18];
      v20 = v67;
      *(v19 + 2) = v66;
      *(v19 + 3) = v20;
      v21 = v68;
      v22 = v69;
      v23 = v71;
      *(v19 + 6) = v70;
      *(v19 + 7) = v23;
      *(v19 + 4) = v21;
      *(v19 + 5) = v22;
      v24 = v72;
      v25 = v73;
      v26 = v74;
      v19[22] = v75;
      *(v19 + 9) = v25;
      *(v19 + 10) = v26;
      *(v19 + 8) = v24;
      v6 = v52;
    }

    while (v4 - 1 != v9);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  *(v1 + 56) = v7;
  v27 = *(v1 + 64);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = 0;
    v30 = v27 + 32;
    v31 = _swiftEmptyArrayStorage;
LABEL_17:
    v32 = (v30 + 152 * v29);
    v33 = v29;
    while (v33 < *(v27 + 16))
    {
      v34 = v32[1];
      v56 = *v32;
      v57 = v34;
      v35 = v32[2];
      v36 = v32[3];
      v37 = v32[5];
      v60 = v32[4];
      v61 = v37;
      v58 = v35;
      v59 = v36;
      v38 = v32[6];
      v39 = v32[7];
      v40 = v32[8];
      v65 = *(v32 + 18);
      v63 = v39;
      v64 = v40;
      v62 = v38;
      v29 = v33 + 1;
      sub_10003A630(&v56, &v54);
      if (NDOItem.hashValue.getter() != with)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v31;
        v53 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10003A6E0(0, v31[2] + 1, 1);
          v31 = v55;
        }

        v43 = v31[2];
        v42 = v31[3];
        if (v43 >= v42 >> 1)
        {
          sub_10003A6E0((v42 > 1), v43 + 1, 1);
          v31 = v55;
        }

        v31[2] = v43 + 1;
        v44 = &v31[19 * v43];
        v45 = v57;
        *(v44 + 2) = v56;
        *(v44 + 3) = v45;
        v46 = v58;
        v47 = v59;
        v48 = v61;
        *(v44 + 6) = v60;
        *(v44 + 7) = v48;
        *(v44 + 4) = v46;
        *(v44 + 5) = v47;
        v49 = v62;
        v50 = v63;
        v51 = v64;
        v44[22] = v65;
        *(v44 + 9) = v50;
        *(v44 + 10) = v51;
        *(v44 + 8) = v49;
        v30 = v53;
        if (v28 - 1 != v33)
        {
          goto LABEL_17;
        }

        goto LABEL_29;
      }

      sub_10003A68C(&v56);
      v32 = (v32 + 152);
      ++v33;
      if (v28 == v29)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    __break(1u);
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_29:

    *(v1 + 64) = v31;
  }
}

Swift::Int sub_100039964(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10003A828(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100039AC0(v5);
  *a1 = v2;
  return result;
}

void sub_1000399D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10001A078(&qword_1000A7588, &qword_10007D940);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 152);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

Swift::Int sub_100039AC0(uint64_t *a1)
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
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100039C88(v7, v8, a1, v4);
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
    return sub_100039BB8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100039BB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
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

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100039C88(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_10003A518(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10003A264((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10003A52C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10003A52C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10003A264((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10003A518(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10003A48C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10003A264(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
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

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_10003A48C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10003A518(v3);
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

char *sub_10003A52C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A77D8, &qword_10007DCF8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10003A6E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003A700(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003A700(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A7588, &qword_10007D940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10003A83C()
{
  result = qword_1000AAF90[0];
  if (!qword_1000AAF90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AAF90);
  }

  return result;
}

unint64_t sub_10003A890()
{
  result = qword_1000A77B8;
  if (!qword_1000A77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A77B8);
  }

  return result;
}

uint64_t sub_10003A8E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E617078457369 && a2 == 0xEA00000000006465;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465646E61707865 && a2 == 0xED0000736D657449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657370616C6C6F63 && a2 == 0xEE00736D65744964)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10003AAE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A77C0, &qword_10007DCF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_100001F3C(a1, a1[3]);
  sub_10003A83C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  LOBYTE(v40[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40[0]) = 1;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v10;
  LOBYTE(v40[0]) = 2;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v12;
  v30 = v11;
  LOBYTE(v40[0]) = 3;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v13;
  v14 = sub_10001A078(&qword_1000A77A8, &qword_10007DAF0);
  LOBYTE(v35) = 4;
  v15 = sub_10003B154(&qword_1000A77C8, sub_10003B1CC, &protocol conformance descriptor for <A> [A]);
  v29 = v14;
  v28 = v15;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v40[0];
  v41[0] = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LODWORD(v29) = v9 & 1;
  (*(v6 + 8))(v8, v5);
  v28 = v42;
  LOBYTE(v35) = v9 & 1;
  v16 = v32;
  v18 = v33;
  v17 = v34;
  *(&v35 + 1) = v32;
  *&v36 = v34;
  v19 = v30;
  *(&v36 + 1) = v30;
  *&v37 = v33;
  v20 = v27;
  v21 = v31;
  *(&v37 + 1) = v27;
  *&v38 = v31;
  *(&v38 + 1) = v26;
  v39 = v42;
  sub_10003B220(&v35, v40);
  sub_100001E74(a1);
  LOBYTE(v40[0]) = v29;
  v40[1] = v16;
  v40[2] = v17;
  v40[3] = v19;
  v40[4] = v18;
  v40[5] = v20;
  v40[6] = v21;
  v40[7] = v26;
  v40[8] = v28;
  result = sub_10003B258(v40);
  v23 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v23;
  *(a2 + 64) = v39;
  v24 = v36;
  *a2 = v35;
  *(a2 + 16) = v24;
  return result;
}

__n128 sub_10003AF70(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10003AF94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10003AFDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003B050()
{
  result = qword_1000AB220[0];
  if (!qword_1000AB220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AB220);
  }

  return result;
}

unint64_t sub_10003B0A8()
{
  result = qword_1000AB330;
  if (!qword_1000AB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB330);
  }

  return result;
}

unint64_t sub_10003B100()
{
  result = qword_1000AB338[0];
  if (!qword_1000AB338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AB338);
  }

  return result;
}

uint64_t sub_10003B154(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(&qword_1000A77A8, &qword_10007DAF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003B1CC()
{
  result = qword_1000A77D0;
  if (!qword_1000A77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A77D0);
  }

  return result;
}

uint64_t NDODWCoverageModel.warrantyTitle.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void __swiftcall NDODWCoverageModel.init(logoUrl:coverageLabel:coverageExpirationLabel:productName:serialNumberLabel:warrantyTitle:warrantyOverview:links:)(ndoagent::NDODWCoverageModel *__return_ptr retstr, Swift::String_optional logoUrl, Swift::String coverageLabel, Swift::String coverageExpirationLabel, Swift::String productName, Swift::String serialNumberLabel, Swift::String warrantyTitle, Swift::OpaquePointer warrantyOverview, Swift::OpaquePointer links)
{
  retstr->logoUrl = logoUrl;
  retstr->coverageLabel = coverageLabel;
  retstr->coverageExpirationLabel = coverageExpirationLabel;
  retstr->productName = productName;
  retstr->serialNumberLabel = serialNumberLabel;
  retstr->warrantyTitle = warrantyTitle;
  retstr->warrantyOverview = warrantyOverview;
  retstr->links = links;
}

unint64_t sub_10003B2F4()
{
  v1 = *v0;
  v2 = 0x6C72556F676F6CLL;
  v3 = 0x736B6E696CLL;
  if (v1 == 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x79746E6172726177;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 2)
  {
    v5 = 0x4E746375646F7270;
  }

  if (*v0)
  {
    v2 = 0x6567617265766F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003B410@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10003D28C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003B444(uint64_t a1)
{
  v2 = sub_10003D680();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003B480(uint64_t a1)
{
  v2 = sub_10003D680();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003B4C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10003B590(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10003B620(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v32 = a2 + 32;
  v33 = result + 32;
  v31 = *(result + 16);
  while (v3 != v2)
  {
    v4 = (v33 + 72 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    v9 = v4[5];
    v10 = v4[6];
    v37 = v4[7];
    v38 = v4[4];
    v11 = v4[8];
    v12 = (v32 + 72 * v3);
    v13 = v12[2];
    v14 = v12[3];
    v15 = v12[4];
    v16 = v12[5];
    v17 = v12[6];
    v35 = v12[7];
    v36 = v11;
    v34 = v12[8];
    v18 = v5 == *v12 && v6 == v12[1];
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    v19 = v7 == v13 && v8 == v14;
    if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    result = v38;
    if (v38 != v15 || v9 != v16)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    v21 = *(v10 + 16);
    if (v21 != *(v17 + 16))
    {
      return 0;
    }

    if (v21)
    {
      v22 = v10 == v17;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v10 + 56);
      v24 = (v17 + 56);
      while (v21)
      {
        result = *(v23 - 3);
        v25 = *(v23 - 1);
        v26 = *v23;
        v27 = *(v24 - 1);
        v28 = *v24;
        if (result != *(v24 - 3) || *(v23 - 2) != *(v24 - 2))
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v25 != v27 || v26 != v28)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v23 += 4;
        v24 += 4;
        if (!--v21)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
      break;
    }

LABEL_30:
    if ((v37 != v35 || v36 != v34) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    ++v3;
    result = 1;
    v2 = v31;
    if (v3 == v31)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}