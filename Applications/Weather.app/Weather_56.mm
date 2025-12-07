uint64_t sub_100607FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28[1] = a2;
  v28[2] = a4;
  v30 = a3;
  v32 = a1;
  v33 = a5;
  v31 = type metadata accessor for Locale();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CCBC28, &qword_100A73260);
  __chkstk_darwin(v7 - 8);
  v9 = v28 - v8;
  v10 = sub_10022C350(&qword_100CCBC30, &qword_100A6B4B0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v28 - v12;
  v14 = sub_10022C350(&qword_100CCBC38, &qword_100A6B4B8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v28 - v19;
  v28[0] = swift_allocObject();
  sub_10000C70C(0, &qword_100CCBBE8, NSDimension_ptr);
  static MeasurementFormatUnitUsage.asProvided.getter();
  v21 = sub_10022C350(&qword_100CAECF0, &unk_100A3E810);
  sub_10001B350(v9, 1, 1, v21);
  static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
  sub_1000180EC(v9, &qword_100CCBC28, &qword_100A73260);
  (*(v11 + 8))(v13, v10);

  Locale.init(identifier:)();
  Measurement<>.FormatStyle.locale(_:)();
  (*(v29 + 8))(v6, v31);
  v22 = *(v15 + 8);
  v22(v17, v14);
  sub_10022C350(&qword_100CCBC18, &qword_100A6B4A8);
  sub_100006F64(&qword_100CCBC40, &qword_100CCBC38, &qword_100A6B4B8, &protocol conformance descriptor for Measurement<A><>.FormatStyle);
  v23 = v28[0];
  Measurement<>.formatted<A>(_:)();
  v22(v20, v14);
  v24 = v33;
  *v33 = v23;
  v25 = enum case for JSON.string(_:);
  v26 = type metadata accessor for JSON();
  return (*(*(v26 - 8) + 104))(v24, v25, v26);
}

void *sub_1006083D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10022C350(&qword_100CCBC00, &qword_100A6B498);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v2;
  sub_10060BDCC(a1, 1, &v4);
  return v4;
}

uint64_t sub_10060847C(void *a1)
{
  v2 = type metadata accessor for JSONText();
  __chkstk_darwin(v2 - 8);
  sub_1000161C0(a1, a1[3]);
  dispatch thunk of LocationsOfInterestManagerType.locations.getter();
  sub_10022C350(&qword_100CA64A8, &unk_100A675E0);
  sub_10060C7A4();
  JSONText.init(_:)();
  v3 = objc_allocWithZone(type metadata accessor for JSONTextViewController());
  return JSONTextViewController.init(jsonText:)();
}

id sub_100608564(uint64_t a1)
{
  sub_10000C70C(0, &qword_100CAC5F8, UIAlertController_ptr);
  v2 = sub_100604878(0xD000000000000023, 0x8000000100AD7940, 0xD000000000000057, 0x8000000100AD7970, 1);
  sub_10000C70C(0, &qword_100CAC600, UIAlertAction_ptr);
  sub_100035B30(a1, v7);
  v3 = swift_allocObject();
  sub_100013188(v7, v3 + 16);
  v4 = sub_100604930(0x7465736552, 0xE500000000000000, 2, sub_10060C864, v3);
  [v2 addAction:v4];

  v5 = sub_100604930(0x6C65636E6143, 0xE600000000000000, 0, 0, 0);
  [v2 addAction:v5];

  return v2;
}

void *sub_1006086C4(uint64_t a1, void *a2)
{
  v3 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CCBBA0, &qword_100A6B448);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v10)
  {
    sub_100013188(&v9, v11);
    v7 = type metadata accessor for TaskPriority();
    sub_10001B350(v5, 1, 1, v7);
    sub_100035B30(v11, &v9);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    sub_100013188(&v9, v8 + 32);
    sub_1006C0138();

    return sub_100006F14(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100608818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for SyncedData();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1006088D8, 0, 0);
}

uint64_t sub_1006088D8()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000161C0(v1, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100608994;
  v5 = v0[5];

  return dispatch thunk of CoherenceDataManagerType.removeAll()(v5, v2, v3);
}

uint64_t sub_100608994()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100608AEC, 0, 0);
}

id sub_100608B1C(uint64_t a1)
{
  sub_10000C70C(0, &qword_100CAC5F8, UIAlertController_ptr);
  v2 = sub_100604878(0xD00000000000001FLL, 0x8000000100AD77A0, 0xD0000000000000DCLL, 0x8000000100AD7840, 1);
  sub_10000C70C(0, &qword_100CAC600, UIAlertAction_ptr);
  sub_100035B30(a1, v7);
  v3 = swift_allocObject();
  sub_100013188(v7, v3 + 16);
  v4 = sub_100604930(0x65756E69746E6F43, 0xE800000000000000, 2, sub_10060C85C, v3);
  [v2 addAction:v4];

  v5 = sub_100604930(0x6C65636E6143, 0xE600000000000000, 0, 0, 0);
  [v2 addAction:v5];

  return v2;
}

void *sub_100608C80(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for URL();
  v41 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for CRCodableVersion();
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for MergeResult();
  v8 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CCBB98, &unk_100A9AD00);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v49 = type metadata accessor for SyncedData();
  v13 = *(v49 - 8);
  __chkstk_darwin(v49);
  v54 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v53 = &v38 - v16;
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CCBBA0, &qword_100A6B448);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v59)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_100013188(&v58, v60);
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CCBBA8, &qword_100A6B450);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!*(&v56 + 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v48 = v8;
  sub_100013188(&v55, &v58);
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CAFC60, &unk_100A6B640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!*(&v56 + 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = v6;
  v40 = v5;
  v39 = v3;
  sub_1000180EC(&v55, &qword_100CCBBB0, &qword_100A6B458);
  sub_1000161C0(v60, v60[3]);
  dispatch thunk of CoherenceDataManagerType.getSyncedData()();
  v19 = v49;
  result = sub_100024D10(v12, 1, v49);
  v20 = v45;
  if (result == 1)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  sub_10060CE70(&qword_100CCBBB8, 255, &type metadata accessor for SyncedData, &protocol conformance descriptor for SyncedData);
  CRType.copy()();
  v21 = *(v13 + 8);
  v43 = v13 + 8;
  v42 = v21;
  v21(v12, v19);
  SyncedData.init()();
  v50 = sub_10060CE70(&qword_100CCBBC0, 255, &type metadata accessor for SyncedData, &protocol conformance descriptor for SyncedData);
  v22 = 0;
  v23 = 0;
  v24 = (v48 + 8);
  LODWORD(v48) = enum case for CRCodableVersion.version2(_:);
  v47 = (v18 + 104);
  v46 = (v18 + 8);
  v25 = 0x100000;
  v26 = v44;
  do
  {
    v27 = v51;
    CRStruct_2.merge(_:)();
    (*v24)(v27, v52);
    if (v25 != 0x100000 && !(v23 + 1000 * (v22 / 0x3E8)))
    {
      type metadata accessor for CRContext();
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      v28 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
      sub_1000180EC(&v55, &qword_100CCBBC8, &qword_100A6B460);
      (*v47)(v20, v48, v26);
      sub_10060CE70(&qword_100CCBBD0, 255, &type metadata accessor for SyncedData, &protocol conformance descriptor for SyncedData);
      v29 = v26;
      v30 = CRDT.serializedData(_:version:)();
      v32 = v31;
      (*v46)(v20, v29);

      switch(v32 >> 62)
      {
        case 1uLL:
          LODWORD(v33) = HIDWORD(v30) - v30;
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            __break(1u);
LABEL_17:
            __break(1u);
LABEL_18:
            sub_1000161C0(&v58, v59);
            dispatch thunk of SyncedDataContextProviderType.coherenceDataStorageURL.getter();
            Data.write(to:options:)();
            (*(v41 + 8))(v40, v39);
            exit(0);
          }

          v33 = v33;
LABEL_12:
          if (v33 >= 0x100000)
          {
            goto LABEL_18;
          }

LABEL_13:
          sub_10030F778(v30, v32);
          v26 = v44;
          v20 = v45;
          v19 = v49;
          break;
        case 2uLL:
          v35 = *(v30 + 16);
          v34 = *(v30 + 24);
          v36 = __OFSUB__(v34, v35);
          v33 = v34 - v35;
          if (!v36)
          {
            goto LABEL_12;
          }

          goto LABEL_17;
        default:
          goto LABEL_13;
      }
    }

    --v23;
    ++v22;
    --v25;
  }

  while (v25);
  v37 = v42;
  v42(v54, v19);
  v37(v53, v19);
  sub_100006F14(&v58);
  return sub_100006F14(v60);
}

void sub_10060947C(SEL *a1)
{
  v2 = [objc_allocWithZone(TFCrashSimulator) init];
  [v2 *a1];
}

uint64_t sub_1006094DC()
{
  v0 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 URLsForDirectory:13 inDomains:1];

  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10002B30C(v15, v2);

  result = sub_100024D10(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    (*(v4 + 32))(v12, v2, v3);
    DebugCacheRegistry.registerContentsOfDirectory(_:)();
    type metadata accessor for AppGroup();
    static AppGroup.weather.getter();
    AppGroup.containerURL.getter();

    URL.appendingPathComponent(_:isDirectory:)();
    DebugCacheRegistry.registerContentsOfDirectory(_:)();
    v17 = *(v4 + 8);
    v17(v6, v3);
    URL.appendingPathComponent(_:isDirectory:)();
    DebugCacheRegistry.registerContentsOfDirectory(_:)();
    v17(v6, v3);
    v17(v9, v3);
    return (v17)(v12, v3);
  }

  return result;
}

void *sub_1006097C0(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB50, &qword_100A6B408);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB58, &qword_100A6B410);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v17;
  if (v17 != 3)
  {
    v4 = sub_100604A38();
    v5 = sub_10002D7F8(v20, v21);
    v6 = __chkstk_darwin(v5);
    v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v9 + 16))(v8, v6);
    v10 = sub_10002D7F8(v18, v19);
    v11 = __chkstk_darwin(v10);
    v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13, v11);
    v15 = sub_10060C4D0(*v8, *v13, v3, v4);
    sub_100006F14(v18);
    sub_100006F14(v20);
    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100609A40()
{
  type metadata accessor for DebugLocationViewController();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for LocalPresetsViewController(0);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for DebugLocationManager();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCBB50, &qword_100A6B408);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCBB58, &qword_100A6B410);
  RegistrationContainer.register<A>(_:name:factory:)();
}

void *sub_100609B88(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for DebugLocationManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    v5 = objc_allocWithZone(type metadata accessor for DebugLocationViewController());
    return sub_100863AF4(v3, v4, v6, v7);
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*sub_100609CA0(void *a1))(uint64_t *__return_ptr)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v3)
  {
    v2 = objc_allocWithZone(type metadata accessor for LocalPresetsViewController(0));
    return sub_100396FB0(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100609D40(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA718, &unk_100A4FE10);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v2[3])
  {
    type metadata accessor for DebugLocationManager();
    swift_allocObject();
    return sub_10068E5A4(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100609DD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DiagnosticRecorder(0);
  swift_allocObject();
  result = sub_1009A2110();
  a1[3] = v2;
  a1[4] = &off_100C78B10;
  *a1 = result;
  return result;
}

uint64_t sub_100609E28@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DiagnosticSummaryFactory();
  v3 = swift_allocObject();
  sub_10022C350(&qword_100CCBB60, &qword_100A6B418);
  swift_allocObject();
  result = Cache.init()();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_100C4EA00;
  *a1 = v3;
  return result;
}

void *sub_100609EA8(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB40, &qword_100A6B3F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v6[3])
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for NotificationStore();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB48, &qword_100A6B400);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5[3])
  {
    v4 = objc_allocWithZone(type metadata accessor for DebugNotificationSubscriptionsViewController());
    return sub_100485DEC(v6, v3, v5);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10060A068()
{
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_10060A0C8(uint64_t a1)
{
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.projectedValue.getter();
  return v2;
}

uint64_t sub_10060A12C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for NavigationView();
  sub_10022E824(&qword_100CCBD18, &qword_100A6B550);
  sub_10022E824(&qword_100CCBD20, &qword_100A6B558);
  swift_getTupleTypeMetadata3();
  v4 = type metadata accessor for TupleView();
  swift_getWitnessTable(&protocol conformance descriptor for TupleView<A>, v4);
  v5 = type metadata accessor for VStack();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v15[-v10];
  v16 = v2;
  v17 = v3;
  v18 = v1;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v5);
  sub_1000833D8(v8, v5, WitnessTable);
  v13 = *(v6 + 8);
  v13(v8, v5);
  sub_1000833D8(v11, v5, WitnessTable);
  return (v13)(v11, v5);
}

uint64_t sub_10060A354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v95 = a4;
  v7 = sub_10022C350(&qword_100CB66A0, &qword_100A4A060);
  v90 = *(v7 - 8);
  v91 = v7;
  __chkstk_darwin(v7);
  v89 = &v69 - v8;
  v92 = sub_10022C350(&qword_100CCBD20, &qword_100A6B558);
  __chkstk_darwin(v92);
  v94 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v88 = &v69 - v11;
  __chkstk_darwin(v12);
  v93 = &v69 - v13;
  v14 = type metadata accessor for SegmentedPickerStyle();
  v15 = *(v14 - 8);
  v74 = v14;
  v75 = v15;
  __chkstk_darwin(v14);
  v73 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&qword_100CCBD28, &qword_100A6B560);
  __chkstk_darwin(v17 - 8);
  v69 = &v69 - v18;
  v19 = sub_10022C350(&qword_100CCBD30, &qword_100A6B568);
  v20 = *(v19 - 8);
  v71 = v19;
  v72 = v20;
  __chkstk_darwin(v19);
  v22 = &v69 - v21;
  v23 = sub_10022C350(&qword_100CCBD38, &qword_100A6B570);
  v77 = *(v23 - 8);
  v78 = v23;
  __chkstk_darwin(v23);
  v25 = &v69 - v24;
  v96 = sub_10022C350(&qword_100CCBD18, &qword_100A6B550);
  __chkstk_darwin(v96);
  v87 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v76 = &v69 - v28;
  __chkstk_darwin(v29);
  v86 = &v69 - v30;
  v31 = type metadata accessor for NavigationView();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v69 - v36;
  v100 = a2;
  v101 = a3;
  v102 = a1;
  NavigationView.init(content:)();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for NavigationView<A>, v31);
  v84 = v37;
  v79 = WitnessTable;
  sub_1000833D8(v34, v31, WitnessTable);
  v80 = v32;
  v39 = *(v32 + 8);
  v85 = v34;
  v70 = v31;
  v81 = v39;
  v82 = v32 + 8;
  v39(v34, v31);
  v41 = type metadata accessor for UnitWidthView(0, a2, a3, v40);
  sub_10060A014(v41, &State.projectedValue.getter);
  v107 = xmmword_100A6B330;
  LOBYTE(v108) = 0;
  v109 = _swiftEmptyArrayStorage;
  v97 = a2;
  v98 = a3;
  v83 = a1;
  v99 = a1;
  sub_10022C350(&qword_100CCBBD8, &qword_100A6B478);
  sub_10022C350(&qword_100CCBD40, &unk_100A6B578);
  sub_100006F64(&qword_100CCBD48, &qword_100CCBBD8, &qword_100A6B478, &protocol conformance descriptor for Measurement<A><>.FormatStyle.UnitWidth);
  sub_10060CB4C();
  Picker.init(selection:label:content:)();
  v42 = v73;
  SegmentedPickerStyle.init()();
  sub_100006F64(&qword_100CCBD58, &qword_100CCBD30, &qword_100A6B568, &protocol conformance descriptor for Picker<A, B, C>);
  v43 = v71;
  v44 = v74;
  View.pickerStyle<A>(_:)();
  (*(v75 + 8))(v42, v44);
  (*(v72 + 8))(v22, v43);
  sub_10022C350(&qword_100CA4060, &qword_100A2E120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v32) = static Edge.Set.leading.getter();
  *(inited + 32) = v32;
  v46 = static Edge.Set.trailing.getter();
  *(inited + 33) = v46;
  v47 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v32)
  {
    v47 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v46)
  {
    v47 = Edge.Set.init(rawValue:)();
  }

  v48 = v89;
  v49 = v86;
  v50 = v76;
  (*(v77 + 32))(v76, v25, v78);
  v51 = v50 + *(v96 + 36);
  *v51 = v47;
  *(v51 + 8) = 0u;
  *(v51 + 24) = 0u;
  *(v51 + 40) = 1;
  sub_1002005E4(v50, v49);
  sub_10060A0C8(v41);
  Toggle.init(isOn:label:)();
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_100A3BBA0;
  v53 = static Edge.Set.leading.getter();
  *(v52 + 32) = v53;
  v54 = static Edge.Set.trailing.getter();
  *(v52 + 33) = v54;
  v55 = static Edge.Set.bottom.getter();
  *(v52 + 34) = v55;
  v56 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v53)
  {
    v56 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v54)
  {
    v56 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  v57 = v49;
  if (Edge.Set.init(rawValue:)() != v55)
  {
    v56 = Edge.Set.init(rawValue:)();
  }

  v58 = v88;
  (*(v90 + 32))(v88, v48, v91);
  v60 = v92;
  v59 = v93;
  v61 = v58 + *(v92 + 36);
  *v61 = v56;
  *(v61 + 8) = 0u;
  *(v61 + 24) = 0u;
  *(v61 + 40) = 1;
  sub_10060CBC8(v58, v59);
  v62 = v84;
  v63 = v85;
  v64 = v70;
  (*(v80 + 16))(v85, v84, v70);
  *&v107 = v63;
  v65 = v87;
  sub_100200648(v57, v87);
  *(&v107 + 1) = v65;
  v66 = v94;
  sub_1005C1F54(v59, v94, &qword_100CCBD20, &qword_100A6B558);
  v108 = v66;
  v106[0] = v64;
  v106[1] = v96;
  v106[2] = v60;
  v103 = v79;
  v104 = sub_10060CC38();
  v105 = sub_10060CD54();
  sub_10012E24C(&v107, 3, v106);
  sub_1000180EC(v59, &qword_100CCBD20, &qword_100A6B558);
  sub_1002006AC(v57);
  v67 = v81;
  v81(v62, v64);
  sub_1000180EC(v66, &qword_100CCBD20, &qword_100A6B558);
  sub_1002006AC(v65);
  return v67(v63, v64);
}

uint64_t sub_10060AD78@<X0>(void (**a1)(char *, uint64_t, unint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v29 = a4;
  v28 = sub_10022C350(&qword_100CCBBD8, &qword_100A6B478);
  v7 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v26 - v8;
  v10 = *(a2 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = *a1;
  v19 = type metadata accessor for UnitWidthView(0, a2, a3, v18);
  sub_10060A014(v19, &State.wrappedValue.getter);
  v20 = sub_10060A068();
  if (v20)
  {
    v21 = 0x53555F6E65;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0;
  }

  v17(v9, v21, v22);

  (*(v7 + 8))(v9, v28);
  v23 = v27;
  sub_1000833D8(v13, a2, v27);
  v24 = *(v10 + 8);
  v24(v13, a2);
  sub_1000833D8(v16, a2, v23);
  return (v24)(v16, a2);
}

uint64_t sub_10060AFC4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();

  sub_10022C350(&qword_100CCBD70, &qword_100A6B5A0);
  sub_100006F64(&qword_100CCBD78, &qword_100CCBD70, &qword_100A6B5A0, &protocol conformance descriptor for [A]);
  sub_100006F64(&qword_100CCBD48, &qword_100CCBBD8, &qword_100A6B478, &protocol conformance descriptor for Measurement<A><>.FormatStyle.UnitWidth);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10060B0E0@<X0>(uint64_t a1@<X8>)
{
  sub_10060B13C();
  sub_10002D5A4();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10060B13C()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CCBBD8, &qword_100A6B478);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = __chkstk_darwin(v6);
  (*(v4 + 16))(&v20 - v8, v1, v2, v7);
  sub_10000C70C(0, &qword_100CCBBE8, NSDimension_ptr);
  static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
  sub_100006F64(&qword_100CCBD80, &qword_100CCBBD8, &qword_100A6B478, &protocol conformance descriptor for Measurement<A><>.FormatStyle.UnitWidth);
  v9 = sub_100004660();
  v10 = *(v4 + 8);
  v11 = sub_100021CEC();
  v10(v11);
  if (v9)
  {
    v12 = sub_100003940();
    v10(v12);
    return 0x776F7272614ELL;
  }

  else
  {
    static Measurement<>.FormatStyle.UnitWidth.abbreviated.getter();
    v14 = sub_100004660();
    v15 = sub_100021CEC();
    v10(v15);
    if (v14)
    {
      v16 = sub_100003940();
      v10(v16);
      return 0x6169766572626241;
    }

    else
    {
      static Measurement<>.FormatStyle.UnitWidth.wide.getter();
      v17 = sub_100004660();
      v18 = sub_100021CEC();
      v10(v18);
      v19 = sub_100003940();
      v10(v19);
      if (v17)
      {
        return 1701079383;
      }

      else
      {
        return 0x6E776F6E6B6E55;
      }
    }
  }
}

void sub_10060B384(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x8000000100AD7B00;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

id sub_10060B3B8(uint64_t a1, uint64_t a2)
{
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a2)
  {
    sub_10000C70C(0, &qword_100CCBC70, UIActivity_ptr);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = [v2 initWithActivityItems:v4.super.isa applicationActivities:v5.super.isa];

  return v6;
}

void sub_10060B464(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_1000038D8();
  v6 = type metadata accessor for ElevationData(v5);
  __chkstk_darwin(v6 - 8);
  sub_1000037D8();
  v49 = v8 - v7;
  v9 = type metadata accessor for Date();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v48 = v14 - v13;
  v15 = *v2;
  sub_10022C350(&qword_100CCBD90, &unk_100A6B5B0);
  sub_100003940();
  v45 = a2;
  v16 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v15 + 16))
  {
LABEL_29:

LABEL_30:
    *v3 = v16;
    return;
  }

  v42 = v2;
  v17 = 0;
  v18 = v15;
  sub_100008A78();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v43 = v11;
  v46 = (v11 + 32);
  v24 = v16 + 8;
  v44 = v15;
  if ((v20 & v19) == 0)
  {
LABEL_4:
    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v17 >= v23)
      {
        break;
      }

      v26 = v18[v17];
      ++v25;
      if (v26)
      {
        v21 = (v26 - 1) & v26;
        goto LABEL_9;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_30;
    }

    v41 = 1 << *(v15 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      sub_10004E798(v41);
    }

    else
    {
      *v18 = -1 << v41;
    }

    *(v15 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v21 &= v21 - 1;
LABEL_9:
    v47 = *(v11 + 72);
    v27 = sub_1000287E0();
    v28(v27);
    v29 = sub_100022EE8();
    if (v45)
    {
      sub_10060CEB8(v29, v30);
    }

    else
    {
      sub_10060CE0C(v29, v30);
    }

    sub_10060CE70(&qword_100CA39C8, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    sub_100016C48();
    v34 = (v33 << v31) & ~v24[v32];
    if (!v34)
    {
      break;
    }

    v35 = __clz(__rbit64(v34)) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v24 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    (*v46)(v16[6] + v47 * v35, v48, v9);
    sub_10060CEB8(v49, v16[7] + v15 * v35);
    ++v16[2];
    v11 = v43;
    v15 = v44;
    if (!v21)
    {
      goto LABEL_4;
    }
  }

  sub_100022F00();
  while (++v36 != v38 || (v37 & 1) == 0)
  {
    v39 = v36 == v38;
    if (v36 == v38)
    {
      v36 = 0;
    }

    v37 |= v39;
    v40 = v24[v36];
    if (v40 != -1)
    {
      v35 = __clz(__rbit64(~v40)) + (v36 << 6);
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_10060B828(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = type metadata accessor for JSON();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10022C350(&qword_100CCBC00, &qword_100A6B498);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v9;
    return result;
  }

  v38 = v2;
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
  v39 = (v5 + 16);
  v40 = v7;
  v41 = v5;
  v43 = (v5 + 32);
  v16 = result + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      sub_1006A76B8(0, (v36 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    v21 = *(v7 + 56);
    v22 = (*(v7 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = *(v41 + 72);
    v26 = v21 + v25 * v20;
    if (v42)
    {
      (*v43)(v44, v26, v45);
    }

    else
    {
      (*v39)(v44, v26, v45);
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v27 = -1 << *(v9 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v9 + 48) + 16 * v30);
    *v35 = v24;
    v35[1] = v23;
    result = (*v43)(*(v9 + 56) + v25 * v30, v44, v45);
    ++*(v9 + 16);
    v7 = v40;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v16 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_10060BBA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10022C350(&qword_100CCBD88, &qword_100A6B5A8);
  sub_100021CEC();
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v5 + 16))
  {
LABEL_28:

LABEL_29:
    *v3 = v6;
    return;
  }

  v31 = v3;
  v7 = 0;
  sub_100008A78();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v13 = v6 + 8;
  if ((v9 & v8) == 0)
  {
LABEL_4:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = *(v5 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_9;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_29;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      sub_10004E798(v30);
    }

    else
    {
      *v5 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_9:
    v17 = v14 | (v7 << 6);
    v18 = *(*(v5 + 48) + 8 * v17);
    v19 = *(*(v5 + 56) + 8 * v17);
    if ((a2 & 1) == 0)
    {
    }

    static Hasher._hash(seed:_:)();
    sub_100016C48();
    v23 = (v22 << v20) & ~v13[v21];
    if (!v23)
    {
      break;
    }

    v24 = __clz(__rbit64(v23)) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(v6[6] + 8 * v24) = v18;
    *(v6[7] + 8 * v24) = v19;
    ++v6[2];
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  sub_100022F00();
  while (++v25 != v27 || (v26 & 1) == 0)
  {
    v28 = v25 == v27;
    if (v25 == v27)
    {
      v25 = 0;
    }

    v26 |= v28;
    v29 = v13[v25];
    if (v29 != -1)
    {
      v24 = __clz(__rbit64(~v29)) + (v25 << 6);
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_10060BDCC(uint64_t a1, char a2, void *a3)
{
  v50 = a3;
  v6 = type metadata accessor for JSON();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CCBC08, &unk_100A98440);
  __chkstk_darwin(v10);
  v48 = v40 - v13;
  v47 = *(a1 + 16);
  if (!v47)
  {
  }

  v40[1] = v3;
  v41 = a1;
  v14 = 0;
  v46 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v44 = v7;
  v45 = v15;
  v49 = (v7 + 32);
  v42 = v9;
  v43 = v6;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v48;
    sub_1005C1F54(v46 + *(v12 + 72) * v14, v48, &qword_100CCBC08, &unk_100A98440);
    v18 = *v17;
    v19 = *(v17 + 1);
    v53 = *v17;
    v54 = v19;
    v20 = *v49;
    (*v49)(v9, &v17[v45], v6);
    v21 = *v50;
    v23 = sub_100031B34();
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_19;
    }

    v27 = v22;
    if (v21[3] < v26)
    {
      break;
    }

    if (a2)
    {
      if (v22)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_10022C350(&qword_100CCBC10, &qword_100A6B4A0);
      _NativeDictionary.copy()();
      if (v27)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v30 = *v50;
    *(*v50 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    v31 = (v30[6] + 16 * v23);
    *v31 = v18;
    v31[1] = v19;
    v6 = v43;
    v32 = v30[7] + *(v44 + 72) * v23;
    v9 = v42;
    v20(v32, v42, v43);
    v33 = v30[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_20;
    }

    ++v14;
    v30[2] = v35;
    a2 = 1;
    a1 = v41;
    v12 = v16;
    if (v47 == v14)
    {
    }
  }

  sub_10060B828(v26, a2 & 1);
  v28 = sub_100031B34();
  if ((v27 & 1) != (v29 & 1))
  {
    goto LABEL_21;
  }

  v23 = v28;
  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v36 = swift_allocError();
  swift_willThrow();

  v55 = v36;
  swift_errorRetain();
  sub_10022C350(&qword_100CD8220, &qword_100A4A330);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v44 + 8))(v42, v43);
  }

LABEL_22:
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v38._object = 0x8000000100AD7A10;
  v38._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v38);
  _print_unlocked<A, B>(_:_:)();
  v39._countAndFlagsBits = 39;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10060C258(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v10);
  v15 = type metadata accessor for DiagnosticRecorder(0);
  v16 = &off_100C78B10;
  v14[0] = a1;
  v13[3] = type metadata accessor for DiagnosticSummaryFactory();
  v13[4] = &off_100C4EA00;
  v13[0] = a2;
  sub_10022C350(&qword_100CA2D40, &unk_100A41F80);
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static UnfairLock.Options.dataSynchronization.getter();
  sub_10060CE70(&qword_100CA2D48, 255, &type metadata accessor for UnfairLock.Options, &protocol conformance descriptor for UnfairLock.Options);
  sub_10022C350(&qword_100CA2D50, &qword_100A2C490);
  sub_100006F64(&qword_100CA2D58, &qword_100CA2D50, &qword_100A2C490, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(a5 + 104) = UnfairLock.init(options:)();
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  sub_100035B30(v14, a5 + 16);
  sub_100035B30(v13, a5 + 56);
  *(a5 + 121) = a3;
  *(a5 + 96) = a4;
  sub_1000161C0(v14, v15);
  v11 = a4;
  sub_1009A1B40();

  sub_100006F14(v13);
  sub_100006F14(v14);
  return a5;
}

uint64_t sub_10060C4D0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v25 = type metadata accessor for DiagnosticRecorder(0);
  v26 = &off_100C78B10;
  v24[0] = a1;
  v22 = type metadata accessor for DiagnosticSummaryFactory();
  v23 = &off_100C4EA00;
  v21[0] = a2;
  type metadata accessor for DiagnosticManager();
  v8 = swift_allocObject();
  v9 = sub_10002D7F8(v24, v25);
  v10 = __chkstk_darwin(v9);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = sub_10002D7F8(v21, v22);
  v15 = __chkstk_darwin(v14);
  v17 = (v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = sub_10060C258(*v12, *v17, a3, a4, v8);
  sub_100006F14(v21);
  sub_100006F14(v24);
  return v19;
}

unint64_t sub_10060C7A4()
{
  result = qword_100CCBB90;
  if (!qword_100CCBB90)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CA64A8, &unk_100A675E0);
    v4[0] = sub_10060CE70(&qword_100CC7ED8, 255, &type metadata accessor for LocationOfInterest, &protocol conformance descriptor for LocationOfInterest);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CCBB90);
  }

  return result;
}

uint64_t sub_10060C86C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000926F8;

  return sub_100608818(a1, v4, v5, v1 + 32);
}

void sub_10060C94C(uint64_t a1)
{
  sub_10013DB50();
  if (v1 <= 0x3F)
  {
    sub_10060CA78(319, &qword_100CCBD08, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_10060CA78(319, &qword_100CCBD10, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_100081C98();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10060CA78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_10022E824(&qword_100CCBBD8, &qword_100A6B478);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_10060CB4C()
{
  result = qword_100CCBD50;
  if (!qword_100CCBD50)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = sub_10022E824(&qword_100CCBD40, &unk_100A6B578);
    v4[0] = &protocol witness table for Text;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CCBD50);
  }

  return result;
}

uint64_t sub_10060CBC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CCBD20, &qword_100A6B558);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10060CC38()
{
  result = qword_100CCBD60;
  if (!qword_100CCBD60)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = sub_10022E824(&qword_100CCBD18, &qword_100A6B550);
    v4[2] = sub_10022E824(&qword_100CCBD30, &qword_100A6B568);
    v4[3] = type metadata accessor for SegmentedPickerStyle();
    v4[4] = sub_100006F64(&qword_100CCBD58, &qword_100CCBD30, &qword_100A6B568, &protocol conformance descriptor for Picker<A, B, C>);
    v4[5] = &protocol witness table for SegmentedPickerStyle;
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCBD60);
  }

  return result;
}

unint64_t sub_10060CD54()
{
  result = qword_100CCBD68;
  if (!qword_100CCBD68)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCBD20, &qword_100A6B558);
    v4[0] = sub_100006F64(&qword_100CB6698, &qword_100CB66A0, &qword_100A4A060, &protocol conformance descriptor for Toggle<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCBD68);
  }

  return result;
}

uint64_t sub_10060CE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElevationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10060CE70(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10060CEB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElevationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10060CFB0(uint64_t a1)
{
  v1 = type metadata accessor for ChartKind();
  if (v2 <= 0x3F)
  {
    sub_10060D338(319, &qword_100CA51A8, &type metadata accessor for Array);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v5 = type metadata accessor for DetailChartExtrema();
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_10060D27C(319);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_10060D2E0();
      if (v8 > 0x3F)
      {
        return v5;
      }

      v5 = type metadata accessor for ChartDateStep(319);
      if (v9 > 0x3F)
      {
        return v5;
      }

      v5 = type metadata accessor for ChartViewModel.Background(319);
      if (v10 > 0x3F)
      {
        return v5;
      }

      v5 = type metadata accessor for ChartDarkeningScrim();
      if (v11 > 0x3F)
      {
        return v5;
      }

      sub_100118BF4(319, &qword_100CC2610, &type metadata accessor for Array);
      if (v12 > 0x3F)
      {
        return v5;
      }

      v5 = type metadata accessor for Date();
      if (v13 > 0x3F)
      {
        return v5;
      }

      sub_10060D338(319, &unk_100CCBEE0, &type metadata accessor for Optional);
      if (v14 > 0x3F)
      {
        return v5;
      }

      v5 = type metadata accessor for ChartPeakMarkStyle();
      if (v15 > 0x3F)
      {
        return v5;
      }

      else
      {
        v1 = type metadata accessor for ChartViewModelInterpolationMode();
        if (v16 <= 0x3F)
        {
          v1 = type metadata accessor for ChartPastDataTreatment();
          if (v17 <= 0x3F)
          {
            sub_100118BF4(319, &qword_100CA45C0, &type metadata accessor for Optional);
            v1 = v18;
            if (v19 <= 0x3F)
            {
              v1 = sub_10013DB50();
              if (v20 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_10060D27C(uint64_t a1)
{
  if (!qword_100CCBED0)
  {
    sub_10022E824(&qword_100CBAE30, &qword_100A50750);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CCBED0);
    }
  }
}

void sub_10060D2E0()
{
  if (!qword_100CCBED8)
  {
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &qword_100CCBED8);
    }
  }
}

void sub_10060D338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DetailChartDataElement();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10060D3D0(uint64_t a1)
{
  sub_10060D428(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_10060D428(uint64_t a1)
{
  if (!qword_100CCC000)
  {
    sub_10022E824(&unk_100CB2CF0, &unk_100A2D7F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CCC000);
    }
  }
}

void sub_10060D4A0(double a1@<D0>, double a2@<D1>, double a3@<D2>, unint64_t a4@<X0>, unint64_t a5@<X1>, uint64_t a6@<X2>, char *a7@<X3>, uint64_t a8@<X4>, uint64_t a9@<X5>, uint64_t a10@<X6>, void (*a11)(uint64_t, uint64_t)@<X7>, char *a12@<X8>, uint64_t a13, unsigned __int8 a14, void (*a15)(void), void (*a16)(void), void (*a17)(uint64_t, uint64_t), unint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void), uint64_t a22, uint64_t a23, void (*a24)(char *, uint64_t, uint64_t), unsigned __int8 a25, void (*a26)(uint64_t, uint64_t), uint64_t a27, void (*a28)(char *, uint64_t, uint64_t), uint64_t a29, uint64_t a30, void (*a31)(char *, char *, uint64_t), uint64_t a32, void (**a33)(unint64_t, uint64_t, uint64_t), uint64_t a34, unint64_t a35, uint64_t a36, unint64_t a37, uint64_t a38, uint64_t a39)
{
  v231 = a11;
  v253 = a10;
  v233 = a9;
  v250 = a8;
  v234 = a7;
  v235 = a6;
  v251 = a5;
  v249 = a4;
  v224 = a27;
  v225 = a26;
  v226 = a19;
  v227 = a17;
  v228 = a16;
  v229 = a15;
  v244 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v252 = v43;
  __chkstk_darwin(v44);
  sub_100003848();
  v247 = v45;
  __chkstk_darwin(v46);
  sub_10000E70C();
  sub_100003918(v47);
  v237 = type metadata accessor for ChartPastDataTreatment();
  sub_1000037C4();
  v236 = v48;
  __chkstk_darwin(v49);
  sub_1000037D8();
  sub_100003918(v51 - v50);
  type metadata accessor for ChartViewModelInterpolationMode();
  sub_1000037C4();
  v239 = v53;
  v240 = v52;
  __chkstk_darwin(v52);
  sub_1000037D8();
  v230 = v55 - v54;
  v56 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v57 = sub_100003810(v56);
  __chkstk_darwin(v57);
  sub_100003848();
  v248 = v58;
  __chkstk_darwin(v59);
  sub_10000E70C();
  sub_100003918(v60);
  v246 = type metadata accessor for ChartPeakMarkStyle();
  sub_1000037C4();
  v223 = v61;
  __chkstk_darwin(v62);
  sub_1000037D8();
  v243 = v64 - v63;
  v65 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  v66 = sub_100003810(v65);
  __chkstk_darwin(v66);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003908();
  __chkstk_darwin(v68);
  sub_10000E70C();
  v242 = v69;
  v245 = type metadata accessor for ChartDarkeningScrim();
  sub_1000037C4();
  v222 = v70;
  __chkstk_darwin(v71);
  sub_1000037D8();
  v241 = v73 - v72;
  v74 = type metadata accessor for ChartViewModel.Background(0);
  v75 = sub_100003810(v74);
  __chkstk_darwin(v75);
  sub_1000037D8();
  v78 = v77 - v76;
  v79 = type metadata accessor for ChartDateStep(0);
  v80 = sub_100003810(v79);
  __chkstk_darwin(v80);
  sub_1000037D8();
  v83 = v82 - v81;
  v84 = type metadata accessor for DetailChartExtrema();
  sub_1000037C4();
  v86 = v85;
  __chkstk_darwin(v87);
  sub_1000037D8();
  v90 = v89 - v88;
  v91 = type metadata accessor for Date();
  sub_1000037C4();
  v93 = v92;
  __chkstk_darwin(v94);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v95);
  v97 = &v194 - v96;
  __chkstk_darwin(v98);
  v100 = &v194 - v99;
  type metadata accessor for ChartKind();
  sub_1000037C4();
  __chkstk_darwin(v101);
  sub_1000037D8();
  v104 = v103 - v102;
  v197 = v105;
  v106 = *(v105 + 16);
  v215 = v104;
  v216 = v107;
  v205 = v105 + 16;
  v203 = v106;
  v106();
  v218 = v93;
  v108 = *(v93 + 16);
  v217 = v100;
  v213 = (v93 + 16);
  v212 = v108;
  v108(v100, v234, v91);
  v198 = v86;
  v109 = *(v86 + 16);
  v219 = v90;
  v110 = v90;
  v111 = v252;
  v238 = v84;
  v204 = v86 + 16;
  v202 = v109;
  v109(v110, v233, v84);
  sub_100008A9C();
  v220 = v83;
  sub_100610594(v231, v83, v112);
  sub_100010588();
  v221 = v78;
  v113 = v78;
  v114 = v201;
  sub_100610594(v229, v113, v115);
  v116 = v222 + 16;
  v117 = *(v222 + 16);
  v117(v241, v228, v245);
  sub_100035AD0(v227, v242, &qword_100CAB930, &qword_100A3A7C0);
  v118 = v223 + 16;
  v119 = *(v223 + 16);
  v120 = v244;
  v119(v243, v226, v246);
  sub_1003DF9A4(v250, v114);
  sub_1000038B4(v114, 1, v120);
  v209 = v118;
  v208 = v119;
  v207 = v116;
  if (v121)
  {
    sub_1000180EC(v114, &qword_100CAB930, &qword_100A3A7C0);
    v122 = v210;
    sub_10001B350(v210, 1, 1, v91);
    static WeatherClock.date.getter();
    sub_1000038B4(v122, 1, v91);
    v124 = v218;
    v125 = v97;
    if (!v121)
    {
      sub_1000180EC(v122, &unk_100CB2CF0, &unk_100A2D7F0);
    }
  }

  else
  {
    v123 = v210;
    DetailChartDataElement.date.getter();
    (*(v111 + 8))(v114, v120);
    sub_1000185D0();
    v124 = v218;
    (*(v218 + 32))(v97, v123, v91);
    v125 = v97;
  }

  v210 = a20;
  v201 = a18;
  v200 = a14;
  v199 = a13;
  v126 = v211;
  sub_1002F5488(v250, v211);
  v127 = v244;
  sub_1000038B4(v126, 1, v244);
  v128 = v236;
  v206 = v117;
  if (v121)
  {
    sub_1000180EC(v126, &qword_100CAB930, &qword_100A3A7C0);
    v129 = v248;
    sub_10001B350(v248, 1, 1, v91);
    v132 = v214;
    static WeatherClock.date.getter();
    sub_1000038B4(v129, 1, v91);
    v133 = v240;
    if (!v121)
    {
      sub_1000180EC(v129, &unk_100CB2CF0, &unk_100A2D7F0);
    }
  }

  else
  {
    v130 = v248;
    DetailChartDataElement.date.getter();
    (*(v252 + 8))(v126, v127);
    sub_1000185D0();
    v131 = *(v124 + 32);
    v132 = v214;
    v131(v214, v130, v91);
    v133 = v240;
  }

  (*(v239 + 16))(v230, v225, v133);
  v134 = v237;
  (*(v128 + 16))(v232, v224, v237);
  v135 = v215;
  ChartKind.showSecondLine.getter();
  v136 = v251;
  *a12 = v249;
  *(a12 + 1) = v136;
  v137 = type metadata accessor for ChartViewModel(0);
  (v203)(&a12[v137[5]], v135, v216);
  v138 = v212;
  v212(&a12[v137[18]], v217, v91);
  v139 = v250;
  *&a12[v137[6]] = v250;
  v202(&a12[v137[7]], v219, v238);
  *&a12[v137[8]] = v253;
  v140 = &a12[v137[10]];
  *v140 = a1;
  v140[1] = a2;
  sub_100008A9C();
  sub_100610594(v220, &a12[v141], v142);
  v143 = &a12[v137[13]];
  *v143 = v199;
  v143[8] = v200 & 1;
  sub_100010588();
  sub_100610594(v221, &a12[v144], v145);
  *&a12[v137[15]] = a3;
  v206(&a12[v137[16]], v241, v245);
  sub_100035AD0(v242, &a12[v137[21]], &qword_100CAB930, &qword_100A3A7C0);
  *&a12[v137[22]] = v201;
  v208(&a12[v137[23]], v243, v246);
  *&a12[v137[24]] = v210;
  v146 = &a12[v137[19]];
  v211 = v125;
  v138(v146, v125, v91);
  v138(&a12[v137[20]], v132, v91);
  sub_10000C70C(0, &qword_100CA53F0, NSDateFormatter_ptr);

  v147 = static NSDateFormatter.prevailingPeriodSymbols.getter();
  v148 = 0;
  v213 = v137;
  *&a12[v137[17]] = v147;
  v149 = *(v139 + 16);
  v253 = v149 - 1;
  v150 = v244;
  v151 = v247;
  if (v149 >= 2)
  {
    sub_10000EBFC();
    while (1)
    {
      v148 = v152 + 1;
      if (__OFADD__(v152, 1))
      {
        break;
      }

      sub_100020938();
      if (v153 == v154)
      {
        goto LABEL_13;
      }
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_13:
  v254 = _swiftEmptyArrayStorage;
  sub_1006A7AB4();
  if ((v148 & 0x8000000000000000) == 0)
  {
    v155 = v254;
    v196 = a12;
    v195 = v91;
    if (v148)
    {
      v156 = 0;
      v157 = v252;
      v158 = v250;
      v251 = (*(v252 + 80) + 32) & ~*(v252 + 80);
      v249 = v250 + v251;
      v248 = v252 + 16;
      v159 = (v252 + 32);
      do
      {
        if (v156 >= v253)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (__OFADD__(v156, 2))
        {
          v160 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v160 = v156 + 2;
        }

        if (v156 < 0)
        {
          goto LABEL_45;
        }

        if (v156 >= *(v158 + 16))
        {
          goto LABEL_46;
        }

        v161 = v158;
        v162 = *(v157 + 72);
        (*(v157 + 16))(v151, v249 + v162 * v156, v150);
        v254 = v155;
        v164 = v155[2];
        v163 = v155[3];
        if (v164 >= v163 >> 1)
        {
          sub_100049A18(v163);
          sub_1006A7AB4();
          v161 = v250;
          v155 = v254;
        }

        v155[2] = v164 + 1;
        (*v159)(v155 + v251 + v164 * v162, v151, v150);
        v156 = v160;
        --v148;
        v157 = v252;
        v158 = v161;
      }

      while (v148);
      v165 = v194;
      if (v160 < v253)
      {
        v166 = v251;
        goto LABEL_29;
      }

LABEL_41:

      v134 = v237;
      v128 = v236;
    }

    else
    {
      v158 = v250;
      if (v149 >= 2)
      {
        v160 = 0;
        v157 = v252;
        v166 = (*(v252 + 80) + 32) & ~*(v252 + 80);
        v165 = v194;
LABEL_29:
        v249 = v158 + v166;
        v247 = (v157 + 32);
        v248 = v157 + 16;
        v167 = v160;
        v251 = v166;
        while (1)
        {
          v168 = __OFADD__(v167, 2);
          if (v160 < 0)
          {
            break;
          }

          if (v167 >= *(v158 + 16))
          {
            goto LABEL_49;
          }

          v169 = *(v157 + 72);
          (*(v157 + 16))(v165, v249 + v169 * v167, v150);
          v254 = v155;
          v170 = v150;
          v172 = v155[2];
          v171 = v155[3];
          if (v172 >= v171 >> 1)
          {
            sub_100049A18(v171);
            sub_1006A7AB4();
            v155 = v254;
          }

          v155[2] = v172 + 1;
          (*v247)(v155 + v251 + v172 * v169, v165, v170);
          v157 = v252;
          v173 = (v167 + 2) >= v253 || v168;
          v167 += 2;
          v150 = v170;
          v158 = v250;
          if (v173 == 1)
          {
            goto LABEL_41;
          }
        }

LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    v252 = a38;
    v253 = a39;
    v250 = a36;
    v251 = a37;
    v248 = a34;
    v249 = a35;
    v247 = a33;
    v244 = a32;
    v212 = a31;
    v210 = a30;
    v209 = a29;
    v208 = a28;
    LODWORD(v207) = a25;
    v206 = a24;
    v205 = a23;
    v204 = a22;
    v203 = a21;
    (*(v128 + 8))(v224, v134);
    (*(v239 + 8))(v225, v240);
    v225 = *(v223 + 8);
    v225(v226, v246);
    sub_1000180EC(v227, &qword_100CAB930, &qword_100A3A7C0);
    v227 = *(v222 + 8);
    v227(v228, v245);
    sub_10001C7F4();
    v228 = v174;
    sub_1006105F4(v229, v175);
    sub_1000287F4();
    v229 = v176;
    sub_1006105F4(v231, v177);
    v231 = *(v198 + 8);
    v231(v233, v238);
    v178 = *(v218 + 8);
    v179 = v195;
    v178(v234, v195);
    v180 = *(v197 + 8);
    v181 = v216;
    v180(v235, v216);
    v178(v214, v179);
    v178(v211, v179);
    v225(v243, v246);
    sub_1000180EC(v242, &qword_100CAB930, &qword_100A3A7C0);
    v227(v241, v245);
    sub_1006105F4(v221, v228);
    sub_1006105F4(v220, v229);
    v231(v219, v238);
    v178(v217, v179);
    v180(v215, v181);
    v182 = v213;
    v183 = v196;
    *(v196 + v213[25]) = v155;
    (*(v236 + 32))(v183 + v182[27], v232, v237);
    *(v183 + v182[9]) = v203;
    sub_1000179EC((v183 + v182[11]));
    *(v184 + 16) = v206;
    *(v184 + 24) = v207;
    (*(v239 + 32))(v183 + v182[26], v230, v240);
    sub_1000179EC((v183 + v182[28]));
    sub_1000179EC((v183 + v182[29]));
    v185 = (v183 + v182[30]);
    v187 = v247;
    v186 = v248;
    *v185 = v244;
    v185[1] = v187;
    v188 = (v183 + v182[31]);
    *v188 = v186;
    v189 = v250;
    v188[1] = v249;
    v190 = (v183 + v182[32]);
    v192 = v251;
    v191 = v252;
    *v190 = v189;
    v190[1] = v192;
    v193 = (v183 + v182[33]);
    *v193 = v191;
    v193[1] = v253;
    return;
  }

LABEL_50:
  __break(1u);
}

void sub_10060E78C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v125 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v128 = v51;
  __chkstk_darwin(v52);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_10000E70C();
  v113 = v54;
  ChartKind.showSecondLine.getter();
  *a9 = a1;
  *(a9 + 1) = a2;
  v55 = type metadata accessor for ChartViewModel(0);
  v56 = v55[5];
  type metadata accessor for ChartKind();
  sub_100003928();
  v124 = a3;
  v120 = v58;
  (*(v57 + 16))(&a9[v56], a3);
  v59 = v55[18];
  v60 = type metadata accessor for Date();
  sub_100003928();
  v118 = v61;
  v62 = *(v61 + 16);
  v123 = a4;
  v62(&a9[v59], a4, v60);
  *&a9[v55[6]] = a5;
  v63 = v55[7];
  type metadata accessor for DetailChartExtrema();
  sub_100003928();
  v122 = a6;
  v117 = v65;
  (*(v64 + 16))(&a9[v63], a6);
  *&a9[v55[8]] = a7;
  v66 = &a9[v55[10]];
  *v66 = a10;
  v66[1] = a11;
  sub_100008A9C();
  v121 = a8;
  sub_100610594(a8, &a9[v67], v68);
  v69 = &a9[v55[13]];
  *v69 = a13;
  v69[8] = a14 & 1;
  sub_100010588();
  sub_100610594(a15, &a9[v70], v71);
  *&a9[v55[15]] = a12;
  v72 = v55[16];
  v73 = type metadata accessor for ChartDarkeningScrim();
  sub_100003928();
  (*(v74 + 16))(&a9[v72], a16, v73);
  sub_100035AD0(a17, &a9[v55[21]], &qword_100CAB930, &qword_100A3A7C0);
  *&a9[v55[22]] = a18;
  v75 = v55[23];
  type metadata accessor for ChartPeakMarkStyle();
  sub_100003928();
  v116 = v77;
  (*(v76 + 16))(&a9[v75], a19);
  *&a9[v55[24]] = a20;
  v62(&a9[v55[19]], a21, v60);
  v119 = v60;
  v62(&a9[v55[20]], a22, v60);
  sub_10000C70C(0, &qword_100CA53F0, NSDateFormatter_ptr);

  v78 = 0;
  *&a9[v55[17]] = static NSDateFormatter.prevailingPeriodSymbols.getter();
  v79 = *(a5 + 16);
  v130 = v79 - 1;
  if (v79 >= 2)
  {
    sub_10000EBFC();
    while (1)
    {
      v78 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      sub_100020938();
      if (v81 == v82)
      {
        goto LABEL_5;
      }
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_5:
  sub_1006A7AB4();
  if ((v78 & 0x8000000000000000) == 0)
  {
    v115 = v55;
    if (v78)
    {
      v83 = 0;
      v84 = v128;
      v85 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v86 = v125;
      do
      {
        if (v83 >= v130)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v87 = v83 + 2;
        if (__OFADD__(v83, 2))
        {
          v88 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v88 = v83 + 2;
        }

        if (v83 < 0)
        {
          goto LABEL_35;
        }

        if (v83 >= *(a5 + 16))
        {
          goto LABEL_36;
        }

        v89 = *(v84 + 72);
        (*(v84 + 16))(v114, a5 + v85 + v89 * v83, v125);
        v91 = _swiftEmptyArrayStorage[2];
        v90 = _swiftEmptyArrayStorage[3];
        if (v91 >= v90 >> 1)
        {
          sub_100049A18(v90);
          sub_1006A7AB4();
        }

        _swiftEmptyArrayStorage[2] = v91 + 1;
        (*(v128 + 32))(_swiftEmptyArrayStorage + v85 + v91 * v89, v114, v125);
        v83 = v88;
        --v78;
        v84 = v128;
      }

      while (v78);
      if (v88 < v130)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v86 = v125;
      v84 = v128;
      if (v79 >= 2)
      {
        v87 = 0;
        v85 = (*(v128 + 80) + 32) & ~*(v128 + 80);
LABEL_21:
        v126 = (v84 + 32);
        while (1)
        {
          v92 = __OFADD__(v87, 2);
          if ((v87 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v87 >= *(a5 + 16))
          {
            goto LABEL_39;
          }

          v93 = *(v84 + 72);
          (*(v84 + 16))(v113, a5 + v85 + v93 * v87, v86);
          v95 = _swiftEmptyArrayStorage[2];
          v94 = _swiftEmptyArrayStorage[3];
          if (v95 >= v94 >> 1)
          {
            sub_100049A18(v94);
            sub_1006A7AB4();
          }

          _swiftEmptyArrayStorage[2] = v95 + 1;
          (*v126)(_swiftEmptyArrayStorage + v85 + v95 * v93, v113, v86);
          v96 = (v87 + 2) >= v130 || v92;
          v87 += 2;
          v84 = v128;
          if (v96 == 1)
          {
            goto LABEL_33;
          }
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

LABEL_33:

    v97 = *(v118 + 8);
    v97(a22, v119);
    v97(a21, v119);
    sub_10000E73C();
    v98(a19, v116);
    sub_1000180EC(a17, &qword_100CAB930, &qword_100A3A7C0);
    sub_10000E73C();
    v99(a16, v73);
    sub_10001C7F4();
    sub_1006105F4(a15, v100);
    sub_1000287F4();
    sub_1006105F4(v121, v101);
    sub_10000E73C();
    v102(v122, v117);
    v97(v123, v119);
    sub_10000E73C();
    v103(v124, v120);
    *&a9[v115[25]] = _swiftEmptyArrayStorage;
    v104 = v115[27];
    type metadata accessor for ChartPastDataTreatment();
    sub_1000037E8();
    (*(v105 + 32))(&a9[v104], a29);
    *&a9[v115[9]] = a23;
    v106 = &a9[v115[11]];
    *v106 = a24;
    *(v106 + 1) = a25;
    *(v106 + 2) = a26;
    v106[24] = a27;
    v107 = v115[26];
    type metadata accessor for ChartViewModelInterpolationMode();
    sub_1000037E8();
    (*(v108 + 32))(&a9[v107], a28);
    sub_1000179EC(&a9[v115[28]]);
    sub_1000179EC(&a9[v115[29]]);
    v109 = &a9[v115[30]];
    *v109 = a34;
    *(v109 + 1) = a35;
    v110 = &a9[v115[31]];
    *v110 = a36;
    *(v110 + 1) = a37;
    v111 = &a9[v115[32]];
    *v111 = a38;
    *(v111 + 1) = a39;
    v112 = &a9[v115[33]];
    *v112 = a40;
    *(v112 + 1) = a41;
    return;
  }

LABEL_40:
  __break(1u);
}

uint64_t sub_10060F100@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of SessionEventsAndDataCoordinator.lastPushedTemperatureUnit();
  *a1 = result;
  return result;
}

uint64_t sub_10060F134@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1008B9FF0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10060F16C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100549A38(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10060F1A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1005C96DC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10060F204(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for Date();
  sub_1000037C4();
  v59 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v58 = v7 - v6;
  v8 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v58 - v10;
  v12 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_100003848();
  v60 = v14;
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  __chkstk_darwin(v18);
  v20 = &v58 - v19;
  v21 = type metadata accessor for ChartViewModel.Background(0);
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  v26 = sub_10022C350(&qword_100CCC070, &qword_100A6B900);
  sub_100003810(v26);
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v58 - v28;
  v31 = &v58 + *(v30 + 56) - v28;
  sub_100610594(a1, &v58 - v28, type metadata accessor for ChartViewModel.Background);
  sub_100610594(a2, v31, type metadata accessor for ChartViewModel.Background);
  v32 = sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
  sub_1000038B4(v29, 1, v32);
  if (v37)
  {
    sub_1000038B4(v31, 1, v32);
    if (v37)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_100010588();
    sub_100610594(v29, v25, v35);
    v36 = *(v32 + 48);
    sub_1000038B4(v31, 1, v32);
    if (!v37)
    {
      sub_100237E84(v25 + v36, v20);
      sub_100237E84(&v31[v36], v17);
      v38 = static Color.== infix(_:_:)();
      if (v38)
      {
        v39 = *(v8 + 48);
        sub_100035AD0(v20, v11, &unk_100CB2CF0, &unk_100A2D7F0);
        sub_100035AD0(v17, &v11[v39], &unk_100CB2CF0, &unk_100A2D7F0);
        v40 = v61;
        sub_1000038B4(v11, 1, v61);
        if (v37)
        {

          v41 = sub_10003C310();
          sub_1000180EC(v41, v42, &unk_100A2D7F0);
          sub_1000180EC(v20, &unk_100CB2CF0, &unk_100A2D7F0);
          sub_1000038B4(&v11[v39], 1, v40);
          if (v37)
          {
            sub_1000180EC(v11, &unk_100CB2CF0, &unk_100A2D7F0);
            goto LABEL_5;
          }
        }

        else
        {
          v48 = v60;
          sub_100035AD0(v11, v60, &unk_100CB2CF0, &unk_100A2D7F0);
          sub_1000038B4(&v11[v39], 1, v40);
          if (!v49)
          {
            v53 = v59;
            v54 = &v11[v39];
            v55 = v58;
            (*(v59 + 32))(v58, v54, v40);
            sub_10061064C(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            v56 = dispatch thunk of static Equatable.== infix(_:_:)();

            v57 = *(v53 + 8);
            v57(v55, v40);
            sub_1000180EC(v17, &unk_100CB2CF0, &unk_100A2D7F0);
            sub_1000180EC(v20, &unk_100CB2CF0, &unk_100A2D7F0);
            v57(v60, v40);
            sub_1000180EC(v11, &unk_100CB2CF0, &unk_100A2D7F0);
            if ((v56 & 1) == 0)
            {
              goto LABEL_22;
            }

LABEL_5:
            sub_10001C7F4();
            sub_1006105F4(v29, v33);
            return 1;
          }

          v50 = sub_10003C310();
          sub_1000180EC(v50, v51, &unk_100A2D7F0);
          sub_1000180EC(v20, &unk_100CB2CF0, &unk_100A2D7F0);
          (*(v59 + 8))(v48, v40);
        }

        v46 = qword_100CA4F80;
        v47 = &unk_100A580C0;
        v45 = v11;
      }

      else
      {

        v43 = sub_10003C310();
        sub_1000180EC(v43, v44, &unk_100A2D7F0);
        v45 = v20;
        v46 = &unk_100CB2CF0;
        v47 = &unk_100A2D7F0;
      }

      sub_1000180EC(v45, v46, v47);
LABEL_22:
      sub_10001C7F4();
      sub_1006105F4(v29, v52);
      return 0;
    }

    sub_1000180EC(v25 + v36, &unk_100CB2CF0, &unk_100A2D7F0);
  }

  sub_1000180EC(v29, &qword_100CCC070, &qword_100A6B900);
  return 0;
}

uint64_t sub_10060F7C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100309F2C();
  *a1 = result;
  return result;
}

unint64_t sub_10060F7F0()
{
  result = qword_100CCC028;
  if (!qword_100CCC028)
  {
    result = swift_getWitnessTable(byte_100A6B740, &type metadata for ChartViewModel.PeakMarkerLabelPosition, v0, v1);
    atomic_store(result, &qword_100CCC028);
  }

  return result;
}

unint64_t sub_10060F848()
{
  result = qword_100CCC030;
  if (!qword_100CCC030)
  {
    result = swift_getWitnessTable(byte_100A6B710, &type metadata for ChartViewModel.PeakMarkerLabelPosition, v0, v1);
    atomic_store(result, &qword_100CCC030);
  }

  return result;
}

unint64_t sub_10060F8A0()
{
  result = qword_100CCC038;
  if (!qword_100CCC038)
  {
    result = swift_getWitnessTable(byte_100A6B768, &type metadata for ChartViewModel.PeakMarkerLabelPosition, v0, v1);
    atomic_store(result, &qword_100CCC038);
  }

  return result;
}

unint64_t sub_10060F8F8()
{
  result = qword_100CCC040;
  if (!qword_100CCC040)
  {
    result = swift_getWitnessTable(a1_22, &type metadata for ChartViewModel.PeakMarkerLabelPosition, v0, v1);
    atomic_store(result, &qword_100CCC040);
  }

  return result;
}

uint64_t sub_10060F94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  v15 = sub_10022C350(&qword_100CCC048, &qword_100A6B8F8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v63 - v17;
  v19 = type metadata accessor for ChartViewModel(0);
  sub_10001136C(v19[5]);
  if ((static ChartKind.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100037BE0(v19[6]);
  sub_1009E9B70();
  if ((v20 & 1) == 0)
  {
    goto LABEL_58;
  }

  v64 = v6;
  v21 = v19[8];
  v22 = *(a2 + v21);
  if (*(a1 + v21))
  {
    if (!v22)
    {
      goto LABEL_58;
    }

    sub_1009E9B70();
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  else if (v22)
  {
    goto LABEL_58;
  }

  v25 = v19[10];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v26 == *v28 && v27 == v28[1];
  if (!v29)
  {
    goto LABEL_58;
  }

  v30 = v19[12];
  if ((sub_1005C0D58(a1 + v30, a2 + v30) & 1) == 0 || (sub_1005C0D58(a1 + v30, a2 + v30) & 1) == 0)
  {
    goto LABEL_58;
  }

  v31 = v19[21];
  v32 = *(v15 + 48);
  sub_100035AD0(a1 + v31, v18, &qword_100CAB930, &qword_100A3A7C0);
  sub_100035AD0(a2 + v31, &v18[v32], &qword_100CAB930, &qword_100A3A7C0);
  sub_1000038B4(v18, 1, v4);
  if (!v29)
  {
    sub_100035AD0(v18, v14, &qword_100CAB930, &qword_100A3A7C0);
    sub_1000038B4(&v18[v32], 1, v4);
    if (!v33)
    {
      v36 = v64;
      (*(v64 + 32))(v10, &v18[v32], v4);
      sub_10061064C(&qword_100CCC050, &type metadata accessor for DetailChartDataElement, &protocol conformance descriptor for DetailChartDataElement);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v36 + 8);
      v38(v10, v4);
      v39 = sub_10003C310();
      (v38)(v39);
      sub_1000180EC(v18, &qword_100CAB930, &qword_100A3A7C0);
      if (v37)
      {
        goto LABEL_25;
      }

LABEL_58:
      v60 = 0;
      return v60 & 1;
    }

    v34 = sub_10003C310();
    v35(v34);
LABEL_23:
    sub_1000180EC(v18, &qword_100CCC048, &qword_100A6B8F8);
    goto LABEL_58;
  }

  sub_1000038B4(&v18[v32], 1, v4);
  if (!v29)
  {
    goto LABEL_23;
  }

  sub_1000180EC(v18, &qword_100CAB930, &qword_100A3A7C0);
LABEL_25:
  sub_100037BE0(v19[22]);
  sub_1009E9B70();
  if ((v40 & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_10001136C(v19[19]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_10001136C(v19[20]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100037BE0(v19[17]);
  sub_1001CAA30();
  if ((v41 & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100037BE0(v19[25]);
  sub_1009E9B70();
  if ((v42 & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_10001136C(v19[26]);
  if ((static ChartViewModelInterpolationMode.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100004680(v19[28]);
  v45 = v29 && v43 == v44;
  if (!v45 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100004680(v19[29]);
  v48 = v29 && v46 == v47;
  if (!v48 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100004680(v19[30]);
  v51 = v29 && v49 == v50;
  if (!v51 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100004680(v19[31]);
  v54 = v29 && v52 == v53;
  if (!v54 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  v55 = v19[32];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 8);
  v58 = (a2 + v55);
  v59 = v58[1];
  v60 = (v57 | v59) == 0;
  if (v57 && v59)
  {
    if (*v56 == *v58 && v57 == v59)
    {
      v60 = 1;
    }

    else
    {
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v60 & 1;
}

uint64_t sub_10060FE04()
{
  v1 = v0;
  v2 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for ChartViewModel(0);
  v10 = *(v0 + v9[6]);
  v11 = *(v10 + 16);
  v63 = v2;
  v52 = v4;
  v57 = v10;
  v58 = v9;
  if (v11)
  {

    sub_10000369C(0, v11, 0);
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v14 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v59 = *(v12 + 56);
    v62 = v13;
    v15 = (v12 - 8);
    do
    {
      v62(v8, v14, v2);
      v16 = DetailChartDataElement.accessibilityDateString.getter();
      v18 = v17;
      (*v15)(v8, v2);
      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        sub_10000369C((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
      v14 += v59;
      --v11;
      v2 = v63;
    }

    while (v11);
    v9 = v58;
    v1 = v0;
    v4 = v52;
  }

  else
  {
  }

  v22 = objc_allocWithZone(AXCategoricalDataAxisDescriptor);
  v23 = sub_100610470();
  sub_10000C70C(0, &qword_100CCC058, AXNumericDataAxisDescriptor_ptr);
  v24 = (v1 + v9[31]);
  v25 = *v24;
  v26 = v24[1];
  swift_bridgeObjectRetain_n();

  v60 = v25;
  v55 = v26;
  v27 = AXNumericDataAxisDescriptor.init(title:range:gridlinePositions:valueDescriptionProvider:)();
  v53 = ChartKind.isContinuous.getter();
  v28 = *(v57 + 16);
  if (v28)
  {
    v50 = v23;
    specialized ContiguousArray.reserveCapacity(_:)();
    v29 = sub_10000C70C(0, &qword_100CCC060, AXDataPoint_ptr);
    sub_10004E7B8(v29);
    v30 = (v4 - 8);
    do
    {
      v62(v8, v23, v63);
      DetailChartDataElement.accessibilityDateString.getter();
      DetailChartDataElement.value.getter();
      v31._countAndFlagsBits = sub_10000CD18();
      AXDataPoint.init(x:y:additionalValues:label:)(v31, v65, v32, _swiftEmptyArrayStorage);
      (*v30)(v8, v63);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v23 += v1;
      --v28;
    }

    while (v28);
    v9 = v58;
    v1 = v0;
    v23 = v50;
  }

  v33 = &_s10Foundation16AttributedStringVAA0bC8ProtocolAAMc_ptr;
  v34 = objc_allocWithZone(AXDataSeriesDescriptor);
  v35 = sub_1006104F0(v60, v55, v53 & 1);
  sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100A3BD20;
  *(v36 + 32) = v35;
  v64 = v36;
  v61 = v35;
  if (ChartKind.showSecondLine.getter())
  {
    v37 = (v1 + v9[32]);
    if (v37[1])
    {
      v54 = *v37;
      v56 = v37[1];

      v38 = ChartKind.isContinuous.getter();
      v39 = v38;
      v40 = *(v57 + 16);
      if (v40)
      {
        v49 = v38;
        v51 = v23;
        specialized ContiguousArray.reserveCapacity(_:)();
        v41 = sub_10000C70C(0, &qword_100CCC060, AXDataPoint_ptr);
        sub_10004E7B8(v41);
        do
        {
          v62(v8, v23, v63);
          DetailChartDataElement.accessibilityDateString.getter();
          DetailChartDataElement.secondValue.getter();
          v42._countAndFlagsBits = sub_10000CD18();
          AXDataPoint.init(x:y:additionalValues:label:)(v42, v66, v43, _swiftEmptyArrayStorage);
          (*(v52 - 8))(v8, v63);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v23 += v1;
          --v40;
        }

        while (v40);
        v23 = v51;
        v33 = &_s10Foundation16AttributedStringVAA0bC8ProtocolAAMc_ptr;
        v39 = v49;
      }

      v44 = objc_allocWithZone(v33[118]);
      sub_1006104F0(v54, v56, v39 & 1);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  sub_10000C70C(0, &qword_100CCC068, AXChartDescriptor_ptr);

  v45 = v23;
  v46 = v27;
  v47 = AXChartDescriptor.init(title:summary:xAxis:yAxis:additionalAxes:series:)();

  return v47;
}

id sub_100610470()
{
  v1 = String._bridgeToObjectiveC()();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v0 initWithTitle:v1 categoryOrder:isa];

  return v3;
}

id sub_1006104F0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  sub_10000C70C(0, &qword_100CCC060, AXDataPoint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v3 initWithName:v5 isContinuous:a3 & 1 dataPoints:isa];

  return v7;
}

uint64_t sub_100610594(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1006105F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10061064C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100610770()
{
  sub_10022C350(&qword_100CAC610, &unk_100A56560);
  sub_100003828();
  __chkstk_darwin(v0);
  v2 = &v6 - v1;
  Image.init(_internalSystemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v3 = type metadata accessor for SymbolRenderingMode();
  sub_10001B350(v2, 0, 1, v3);
  v4 = Image.symbolRenderingMode(_:)();

  sub_10030FE60(v2);
  return v4;
}

uint64_t sub_100610848()
{
  sub_10022C350(&qword_100CA5570, &unk_100A2FA70);
  sub_1000037C4();
  v49 = v0;
  v50 = v1;
  sub_100003828();
  __chkstk_darwin(v2);
  v47 = &v41 - v3;
  v46 = sub_10022C350(&qword_100CA5578, &unk_100A41670);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v7 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v43 = sub_10022C350(&qword_100CA5580, &unk_100A2FA80);
  sub_1000037C4();
  v45 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for Tips.MaxDisplayCount();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA5588, &unk_100A41680);
  sub_1000037C4();
  v42 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v41 - v28;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v20 + 8))(v24, v18);
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v13, v7);
  v51 = v18;
  v52 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v51 = v7;
  v52 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  v33 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  v36 = v43;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v51 = v35;
  v52 = v36;
  v53 = v32;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v34;
  v38 = v49;
  v39 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v50 + 8))(v37, v38);
  (*(v48 + 8))(v31, v35);
  (*(v45 + 8))(v17, v36);
  (*(v42 + 8))(v29, v25);
  return v39;
}

uint64_t sub_100610CFC()
{
  v0 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_100007074(v0, qword_100D90550);
  sub_10000703C(v0, qword_100D90550);
  sub_10022C350(&qword_100CA55A8, &qword_100A2FAA0);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100610E4C()
{
  v0 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  if (qword_100CA2350 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v0, qword_100D90550);
  swift_beginAccess();
  (*(v2 + 16))(v5, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v12, v6);
  v14 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v14;
}

uint64_t sub_100611078@<X0>(uint64_t *a2@<X8>)
{
  sub_10023594C();
  result = Tip.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1006110BC()
{
  result = qword_100CCC078;
  if (!qword_100CCC078)
  {
    result = swift_getWitnessTable(byte_100A6B918, &type metadata for WorkUpdatedTip, v0, v1);
    atomic_store(result, &qword_100CCC078);
  }

  return result;
}

uint64_t sub_100611110(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1000105A0();
  sub_100611CC8(v3, v4, byte_100A6BB6C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 17);
}

uint64_t sub_1006111A0(uint64_t result, uint64_t a2)
{
  v3 = result & 1;
  if (*(v2 + 17) == (result & 1))
  {
    *(v2 + 17) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v6[2] = v2;
    v7 = v3;
    sub_100611248(v5, sub_100611C90, v6);
  }

  return result;
}

void sub_100611300()
{
  type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_10001C80C();
  v2 = sub_100040690();
  *v0 = static OS_dispatch_queue.main.getter();
  v3 = sub_100008AB4();
  v4(v3);
  _dispatchPreconditionTest(_:)();
  v5 = sub_100006354();
  v6(v5);
  if (v2)
  {
    sub_100198888(1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1006113E8()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10001C80C();
  v7 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  sub_1000037C4();
  __chkstk_darwin(v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v28 - v19;
  if (!*(v2 + 16))
  {
    v34 = v9;
    v35 = v7;
    v21 = *(v2 + 40);
    v29 = *(v2 + 32);
    *(v2 + 16) = 1;
    v22 = v18;
    sub_100040690();
    v33 = v5;
    v30 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v23 = *(v22 + 8);
    v31 = v22 + 8;
    v32 = v23;
    v23(v16, v13);
    v24 = swift_allocObject();
    v25 = v29;
    v24[2] = v2;
    v24[3] = v25;
    v24[4] = v21;
    aBlock[4] = sub_100611CBC;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000742F0;
    aBlock[3] = &unk_100C62D80;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100611CC8(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v27 = v30;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v26);

    (*(v33 + 8))(v1, v3);
    (*(v34 + 8))(v12, v35);
    v32(v20, v13);
  }
}

uint64_t sub_1006117B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;

  sub_10095D5E4(sub_100611D10, v5);
}

uint64_t sub_100611848()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() setFrameStallSkipRequest:1];
  v5[1] = 0;

  Transaction.animation.setter();
  static os_signpost_type_t.event.getter();
  if (qword_100CA2710 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v1 + 8))(v3, v0);
  sub_1001CAEBC();
  withTransaction<A>(_:_:)();
}

_BYTE *storeEnumTagSinglePayload for WireframeContentManager.ContentLoadState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100611AE0()
{
  result = qword_100CCC210;
  if (!qword_100CCC210)
  {
    result = swift_getWitnessTable(byte_100A6BB44, &type metadata for WireframeContentManager.ContentLoadState, v0, v1);
    atomic_store(result, &qword_100CCC210);
  }

  return result;
}

uint64_t sub_100611B34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CCC218, &qword_100A6BC40);
  type metadata accessor for WireframeContentManager(0);
  sub_100006F64(&qword_100CCC220, &qword_100CCC218, &qword_100A6BC40, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_1000105A0();
  sub_100611CC8(v4, v5, byte_100A6BB6C);
  View.environment<A>(_:)();
  type metadata accessor for VisibilityState(0);
  swift_allocObject();

  sub_1004459FC(v6);
  State.init(wrappedValue:)();
  result = sub_10022C350(&qword_100CCC228, &qword_100A6BC48);
  v8 = (a2 + *(result + 36));
  *v8 = v9;
  v8[1] = v10;
  v8[2] = sub_100198620;
  v8[3] = a1;
  return result;
}

uint64_t sub_100611CC8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100611D4C()
{
  result = qword_100CCC230;
  if (!qword_100CCC230)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = sub_10022E824(&qword_100CCC228, &qword_100A6BC48);
    v4[2] = sub_10022E824(&qword_100CCC218, &qword_100A6BC40);
    v4[3] = type metadata accessor for WireframeContentManager(255);
    v4[4] = sub_100006F64(&qword_100CCC220, &qword_100CCC218, &qword_100A6BC40, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[5] = sub_100611CC8(&qword_100CC1948, type metadata accessor for WireframeContentManager, byte_100A6BB6C);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100611E98();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCC230);
  }

  return result;
}

unint64_t sub_100611E98()
{
  result = qword_100CCC238;
  if (!qword_100CCC238)
  {
    result = swift_getWitnessTable(byte_100A4F624, &type metadata for VisibilityModifier, v0, v1);
    atomic_store(result, &qword_100CCC238);
  }

  return result;
}

void *sub_100611EEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCC2F8, &qword_100A6BCE0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v29)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4C50, &qword_100A2EEE0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC5640, &unk_100A6B660);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v28)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4BD8, &qword_100A2EE80);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v20 = v29;
  v21 = v30;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4460, &unk_100A6B650);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v8 = v25;
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v5;
  v10 = v26;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4468, &unk_100A4FE60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v24)
  {
    v11 = type metadata accessor for ListModule();
    ObjectType = swift_getObjectType();
    v13 = sub_10002D7F8(v27, v28);
    v14 = __chkstk_darwin(v13);
    v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16, v14);
    v18 = sub_1008740C0(v20, v21, v9, v6, v16, v7, v8, &v23, v11, ObjectType, &type metadata for ContentStatusBannerViewFactory, v10, &off_100C78818);
    result = sub_100006F14(v27);
    v19 = v22;
    v22[3] = v11;
    v19[4] = &off_100C719F0;
    *v19 = v18;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100612274(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = Tracker.chain(name:identifier:)();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006122F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (result)
  {
    a2[3] = &type metadata for ListTracker;
    a2[4] = &off_100C539E0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10061237C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v25;
  if (!v25)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v26;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCC2F0, &qword_100A6BCD8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v24)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA720, &unk_100A4FE20);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v22[3])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB2FD8, &qword_100A45760);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v7 = result;
    v8 = sub_10002D7F8(v23, v24);
    v9 = __chkstk_darwin(v8);
    v11 = (&v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = sub_10002D7F8(v20, v21);
    v14 = __chkstk_darwin(v13);
    v16 = (&v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = sub_1006132A0(v5, v6, *v11, v22, *v16, v7);
    sub_100006F14(v20);
    result = sub_100006F14(v23);
    *a2 = v18;
    a2[1] = &off_100C645C0;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10061269C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ListInputFactory();
  result = swift_allocObject();
  *(result + 16) = 3;
  a1[3] = v2;
  a1[4] = &off_100C59158;
  *a1 = result;
  return result;
}

void *sub_1006126EC(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v22;
  v4 = v23;
  v6 = v21;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCC300, &qword_100A6BCE8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v18, v19);
  v16 = type metadata accessor for ListInputFactory();
  v17 = &off_100C59158;
  v15[0] = v7;
  sub_100035B30(v15, v14);
  v8 = swift_allocObject();
  sub_100013188(v14, v8 + 16);

  sub_100006F14(v15);
  sub_100006F14(v18);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100613290;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC5638, &unk_100A60C50);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v19)
  {
    v10 = *sub_1000161C0(v18, v19);
    v16 = type metadata accessor for ListViewModelFactory(0);
    v17 = &off_100C5CAD0;
    v15[0] = v10;
    sub_100035B30(v15, v14);
    v11 = swift_allocObject();
    sub_100013188(v14, v11 + 16);

    sub_100006F14(v15);
    sub_100006F14(v18);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10009F868;
    *(v12 + 24) = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100613298;
    *(v13 + 24) = v11;
    sub_10022C350(&qword_100CA4C50, &qword_100A2EEE0);
    swift_allocObject();
    return sub_10024B65C(v3, v6, v5, v4, sub_1005DCAD0, 0, sub_10009F81C, v12, sub_1000E87D0, v13);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_100612A84(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v24;
  v4 = v25;
  v6 = v23;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95D8, &qword_100A67850);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v20, v21);
  active = type metadata accessor for ActiveLocationInputFactory();
  v19 = &off_100C4F948;
  v17[0] = v7;
  sub_100035B30(v17, v16);
  v8 = swift_allocObject();
  sub_100013188(v16, v8 + 16);

  sub_100006F14(v17);
  sub_100006F14(v20);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1005DE3B0;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000E7EFC;
  *(v10 + 24) = v9;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95E0, &qword_100A67858);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v11 = *sub_1000161C0(v20, v21);
    active = type metadata accessor for ActiveLocationModelFactory();
    v19 = &off_100C4F938;
    v17[0] = v11;
    sub_100035B30(v17, v16);
    v12 = swift_allocObject();
    sub_100013188(v16, v12 + 16);

    sub_100006F14(v17);
    sub_100006F14(v20);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1005DE3B8;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1000E7F08;
    *(v14 + 24) = v10;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000E8AE8;
    *(v15 + 24) = v13;
    sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
    swift_allocObject();
    return sub_10009CDA0(v3, v6, v5, v4, sub_1000D5B6C, 0, sub_10009F81C, v14, sub_1000E87D0, v15);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100612E18@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void *sub_100612E68(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v19;
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v21;
  v4 = v22;
  v6 = v20;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBE58, &qword_100A6B630);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v17, v18);
  v15 = type metadata accessor for WeatherConditionBackgroundModelInputFactory(0);
  v16 = &off_100C74B10;
  *&v14 = v7;
  sub_100035B30(&v14, v13);
  v8 = swift_allocObject();
  sub_100013188(v13, v8 + 16);

  sub_100006F14(&v14);
  sub_100006F14(v17);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100110E20;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA738, &qword_100A4FE40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    sub_100035B30(v17, &v14);
    v10 = swift_allocObject();
    sub_100013188(&v14, v10 + 16);
    sub_100006F14(v17);
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1001140B4;
    *(v11 + 24) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1001141C0;
    *(v12 + 24) = v11;
    sub_10022C350(&qword_100CA4BD8, &qword_100A2EE80);
    swift_allocObject();
    return sub_1000EEA3C(v3, v6, v5, v4, sub_1001715F4, 0, sub_100613288, v9, sub_1000E87D0, v12);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_100613134@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA740, &qword_100A4FE48);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v12)
  {
    v4 = sub_10002D7F8(v11, v12);
    v5 = __chkstk_darwin(v4);
    v7 = (&v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = sub_10009B7DC(0, *v7);
    sub_100006F14(v11);
    *(v9 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_forceTileGradientPresentationContext) = 1;
    result = type metadata accessor for WeatherConditionBackgroundModelInputFactory(0);
    a2[3] = result;
    a2[4] = &off_100C74B10;
    *a2 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006132A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v34[3] = &type metadata for ListTracker;
  v34[4] = &off_100C539E0;
  v34[0] = a3;
  v11 = type metadata accessor for LocalSearchRequestManager();
  v33[3] = v11;
  v33[4] = &off_100C6CB98;
  v33[0] = a5;
  type metadata accessor for ListInteractor();
  v12 = swift_allocObject();
  v13 = sub_10002D7F8(v34, &type metadata for ListTracker);
  v14 = __chkstk_darwin(v13);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v17 + 16))(v16, v14);
  v18 = sub_10002D7F8(v33, v11);
  v19 = __chkstk_darwin(v18);
  v21 = &v30[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v21, v19);
  v23 = *v16;
  v24 = *v21;
  v32[3] = &type metadata for ListTracker;
  v32[4] = &off_100C539E0;
  v31[4] = &off_100C6CB98;
  v32[0] = v23;
  v31[3] = v11;
  v31[0] = v24;
  v12[2] = a1;
  v12[3] = a2;
  sub_100035B30(v32, (v12 + 4));
  sub_100035B30(a4, (v12 + 9));
  sub_100035B30(v31, (v12 + 14));
  v12[19] = a6;
  swift_beginAccess();
  v25 = v12[12];
  v26 = v12[13];
  sub_10002D7F8((v12 + 9), v25);
  v27 = *(v26 + 16);

  v27(v28, &off_100C64598, v25, v26);
  swift_endAccess();

  sub_100006F14(a4);
  sub_100006F14(v31);
  sub_100006F14(v32);
  sub_100006F14(v33);
  sub_100006F14(v34);
  return v12;
}

uint64_t sub_100613620()
{
  sub_10022C350(&qword_100CAC610, &unk_100A56560);
  sub_100003828();
  __chkstk_darwin(v0);
  v2 = &v6 - v1;
  Image.init(_internalSystemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v3 = type metadata accessor for SymbolRenderingMode();
  sub_10001B350(v2, 0, 1, v3);
  v4 = Image.symbolRenderingMode(_:)();

  sub_10030FE60(v2);
  return v4;
}

uint64_t sub_1006136F8()
{
  sub_10022C350(&qword_100CA5570, &unk_100A2FA70);
  sub_1000037C4();
  v49 = v0;
  v50 = v1;
  sub_100003828();
  __chkstk_darwin(v2);
  v47 = &v41 - v3;
  v46 = sub_10022C350(&qword_100CA5578, &unk_100A41670);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v7 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v43 = sub_10022C350(&qword_100CA5580, &unk_100A2FA80);
  sub_1000037C4();
  v45 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for Tips.MaxDisplayCount();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA5588, &unk_100A41680);
  sub_1000037C4();
  v42 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v41 - v28;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v20 + 8))(v24, v18);
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v13, v7);
  v51 = v18;
  v52 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v51 = v7;
  v52 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  v33 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  v36 = v43;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v51 = v35;
  v52 = v36;
  v53 = v32;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v34;
  v38 = v49;
  v39 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v50 + 8))(v37, v38);
  (*(v48 + 8))(v31, v35);
  (*(v45 + 8))(v17, v36);
  (*(v42 + 8))(v29, v25);
  return v39;
}

uint64_t sub_100613BAC()
{
  v0 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_100007074(v0, qword_100D90568);
  sub_10000703C(v0, qword_100D90568);
  sub_10022C350(&qword_100CA55A8, &qword_100A2FAA0);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100613CFC()
{
  v0 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  if (qword_100CA2358 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v0, qword_100D90568);
  swift_beginAccess();
  (*(v2 + 16))(v5, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v12, v6);
  v14 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v14;
}

uint64_t sub_100613F28@<X0>(uint64_t *a2@<X8>)
{
  sub_1002359A0();
  result = Tip.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100613F6C()
{
  result = qword_100CCC320;
  if (!qword_100CCC320)
  {
    result = swift_getWitnessTable(byte_100A6BD18, &type metadata for HomeUpdatedTip, v0, v1);
    atomic_store(result, &qword_100CCC320);
  }

  return result;
}

uint64_t sub_100613FC0()
{
  v1 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  if (*(v0 + 32))
  {
    v8 = *(v0 + 32);
  }

  else
  {
    (*(v3 + 104))(v7, enum case for Font.TextStyle.largeTitle(_:), v1);
    static Font.Weight.medium.getter();
    v8 = static Font.system(_:weight:)();
    (*(v3 + 8))(v7, v1);
    *(v0 + 32) = v8;
  }

  return v8;
}

uint64_t sub_1006140D8()
{
  v1 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  if (*(v0 + 48))
  {
    v15 = *(v0 + 48);
  }

  else
  {
    (*(v10 + 104))(v14, enum case for Font.TextStyle.largeTitle(_:), v8);
    static Font.Weight.medium.getter();
    static Font.system(_:weight:)();
    (*(v10 + 8))(v14, v8);
    (*(v3 + 104))(v7, enum case for Font.Leading.tight(_:), v1);
    v15 = Font.leading(_:)();

    (*(v3 + 8))(v7, v1);
    *(v0 + 48) = v15;
  }

  return v15;
}

double sub_1006142B4()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  *(v0 + 64) = 0x4010000000000000;
  *(v0 + 72) = 0;
  return 4.0;
}

uint64_t sub_1006142D8()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v1 = sub_100613FC0();
    *(v0 + 80) = v1;
  }

  return v1;
}

void sub_1006143E8()
{
  type metadata accessor for UVIndexChartHeaderStyle();
  v0 = swift_allocObject();
  sub_1004669B4();
  qword_100D90580 = v0;
}

void LocationSearchEntity.init(id:name:placemark:isLocal:)()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for LocalizedStringResource();
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_10022C350(&qword_100CA2DA8, &unk_100A6BEF0);
  sub_100004698();
  v12 = EntityProperty<>.init(title:)();
  sub_10022C350(&qword_100CA2DB0, &unk_100A2C500);

  v13 = sub_10001C828();
  sub_10002880C(v13);
  v14 = EntityProperty<>.init(title:)();

  EntityProperty.wrappedValue.setter();
  v15 = v3;
  EntityProperty.wrappedValue.setter();

  *v9 = v7;
  *(v9 + 8) = v5;
  *(v9 + 16) = v12;
  *(v9 + 24) = v14;
  *(v9 + 32) = v1;
  sub_10000536C();
}

void static LocationSearchEntity.makeCurrentLocation()()
{
  sub_10000C778();
  v1 = v0;
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v4 = [objc_opt_self() mainBundle];
  v17._object = 0x8000000100AD7FB0;
  v5._countAndFlagsBits = 0x7461636F4C20794DLL;
  v5._object = 0xEB000000006E6F69;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0xD000000000000046;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v17);

  sub_10000C70C(0, &qword_100CADA18, CLPlacemark_ptr);
  v8 = [objc_allocWithZone(CLLocation) initWithLatitude:0.0 longitude:0.0];

  v9 = sub_1001476E4(v8, v7._countAndFlagsBits, v7._object, 0);
  v10 = static Location.currentLocationID.getter();
  v12 = v11;
  sub_10022C350(&qword_100CA2DA8, &unk_100A6BEF0);
  sub_100004698();
  v13 = EntityProperty<>.init(title:)();
  sub_10022C350(&qword_100CA2DB0, &unk_100A2C500);

  v14 = sub_10001C828();
  sub_10002880C(v14);
  v15 = EntityProperty<>.init(title:)();

  EntityProperty.wrappedValue.setter();
  v16 = v9;
  EntityProperty.wrappedValue.setter();

  *v1 = v10;
  *(v1 + 8) = v12;
  *(v1 + 16) = v13;
  *(v1 + 24) = v15;
  *(v1 + 32) = 1;
  sub_10000536C();
}

void static LocationSearchEntity.makeFromLocationEntity(_:)()
{
  sub_10000C778();
  v1 = v0;
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  LocationEntity.id.getter();
  sub_10002D5A4();
  sub_100008AC8();
  v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v6 = v5;

  v7._countAndFlagsBits = 58;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  LocationEntity.name.getter();
  sub_100008AC8();
  v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  LocationEntity.name.getter();
  v12 = LocationEntity.placemark.getter();
  sub_10022C350(&qword_100CA2DA8, &unk_100A6BEF0);
  sub_100004698();
  v13 = EntityProperty<>.init(title:)();
  sub_10022C350(&qword_100CA2DB0, &unk_100A2C500);

  v14 = sub_10001C828();
  sub_10002880C(v14);
  v15 = EntityProperty<>.init(title:)();

  EntityProperty.wrappedValue.setter();
  v16 = v12;
  EntityProperty.wrappedValue.setter();

  *v1 = v4;
  *(v1 + 8) = v6;
  *(v1 + 16) = v13;
  *(v1 + 24) = v15;
  *(v1 + 32) = 0;
  sub_10000536C();
}

uint64_t LocationSearchEntity.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*LocationSearchEntity.name.modify(void *a1))()
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = EntityProperty.wrappedValue.modify();
  return sub_100614B1C;
}

void LocationSearchEntity.placemark.setter(void *a1)
{
  v1 = a1;
  EntityProperty.wrappedValue.setter();
}

uint64_t (*LocationSearchEntity.placemark.modify(void *a1))()
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = EntityProperty.wrappedValue.modify();
  return sub_100615B0C;
}

void sub_100614C18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100614C88()
{
  result = LocationSearchEntityQuery.init()();
  static LocationSearchEntity.defaultQuery = result;
  unk_100D90590 = v1;
  qword_100D90598 = v2;
  return result;
}

uint64_t *LocationSearchEntity.defaultQuery.unsafeMutableAddressor()
{
  if (qword_100CA2368 != -1)
  {
    sub_100014B08(&qword_100CA2368);
  }

  return &static LocationSearchEntity.defaultQuery;
}

uint64_t static LocationSearchEntity.defaultQuery.getter()
{
  if (qword_100CA2368 != -1)
  {
    sub_100014B08(&qword_100CA2368);
  }

  v0 = static LocationSearchEntity.defaultQuery;

  return v0;
}

uint64_t LocationSearchEntity.displayRepresentation.getter()
{
  v1 = sub_10022C350(&qword_100CBCC00, &unk_100A6BF00);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  v3 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100022E2C();
  type metadata accessor for LocalizedStringResource();
  sub_100016C5C();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000037D8();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
  LocalizedStringResource.init(stringInterpolation:)();
  sub_100003934();
  sub_10001B350(v10, v11, v12, v0);
  type metadata accessor for DisplayRepresentation.Image();
  sub_100003934();
  sub_10001B350(v13, v14, v15, v16);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

void static LocationSearchEntity.typeDisplayRepresentation.getter()
{
  sub_10000C778();
  v2 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_100022E2C();
  v8 = type metadata accessor for Locale();
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000037D8();
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_1000037D8();
  type metadata accessor for LocalizedStringResource();
  sub_100016C5C();
  __chkstk_darwin(v12);
  sub_1000037D8();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v0, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_100003934();
  sub_10001B350(v13, v14, v15, v1);
  TypeDisplayRepresentation.init(name:numericFormat:)();
  sub_10000536C();
}

uint64_t LocationSearchEntity.urlRepresentationParameter.getter()
{
  v1 = 0x3D6C61636F4C7369;
  if ((*(v0 + 32) & 1) == 0)
  {
    EntityProperty.wrappedValue.getter();
    v2 = [v15 location];

    if (v2)
    {
      [v2 coordinate];
      v3 = Double.description.getter();
      v5 = v4;
      [v2 coordinate];
      v6 = Double.description.getter();
      v8 = v7;
      _StringGuts.grow(_:)(21);

      v9._countAndFlagsBits = v3;
      v9._object = v5;
      String.append(_:)(v9);

      v10._countAndFlagsBits = 0x3D676E6C26;
      v10._object = 0xE500000000000000;
      String.append(_:)(v10);
      v11._countAndFlagsBits = v6;
      v11._object = v8;
      String.append(_:)(v11);

      v12._countAndFlagsBits = 0x3D7974696326;
      v12._object = 0xE600000000000000;
      String.append(_:)(v12);
      EntityProperty.wrappedValue.getter();
      String.append(_:)(v14);

      return 1031037292;
    }
  }

  return v1;
}

uint64_t static LocationSearchEntity.makeFromIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v61 = a3;
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = sub_10022C350(&qword_100CAD9F8, &unk_100A6BF10);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v14 = sub_10022C350(&qword_100CADA00, &unk_100A3CD80);
  sub_1000037C4();
  v60 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  v19 = sub_10022C350(&qword_100CADA08, &unk_100A6BF20);
  sub_1000037C4();
  v21 = v20;
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  sub_10022C350(&qword_100CADA10, &qword_100A3CD90);
  Regex.init(_regexString:version:)();
  Regex.wholeMatch(in:)();
  v56 = v9;
  v57 = v24;
  v58 = v21;
  v59 = v19;
  v55 = a1;
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    (*(v58 + 8))(v57, v59);
    result = sub_100332D80(v13);
LABEL_3:
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_4;
  }

  (*(v60 + 32))(v18, v13, v14);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v52 = Double.init(_:)();
  v54 = v31;
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v51 = Double.init(_:)();
  v33 = v32;
  swift_getKeyPath();
  v53 = v14;
  Regex.Match.subscript.getter();

  v34 = v59;
  if (v64)
  {
    v35 = static String._fromSubstring(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v27 = a2;
  v38 = v57;
  v39 = v58;
  if (v54 & 1) != 0 || (v33)
  {

    v49 = sub_100049A28();
    v50(v49);
    result = (*(v39 + 8))(v38, v34);
    goto LABEL_3;
  }

  v41 = *&v51;
  v40 = *&v52;
  sub_10000C70C(0, &qword_100CADA18, CLPlacemark_ptr);
  v42 = [objc_allocWithZone(CLLocation) initWithLatitude:v40 longitude:v41];

  v43 = sub_1001476E4(v42, v35, v37, 0);
  if (!v37)
  {
    v35 = 11565;
  }

  v44 = 0xE200000000000000;
  if (v37)
  {
    v44 = v37;
  }

  v56 = v44;
  sub_10022C350(&qword_100CA2DA8, &unk_100A6BEF0);
  sub_100004698();
  v28 = EntityProperty<>.init(title:)();
  sub_10022C350(&qword_100CA2DB0, &unk_100A2C500);

  v45 = sub_10001C828();
  sub_10002880C(v45);
  v29 = EntityProperty<>.init(title:)();
  v62 = v35;
  v63 = v56;

  EntityProperty.wrappedValue.setter();
  v62 = v43;
  v46 = v43;
  EntityProperty.wrappedValue.setter();

  v47 = sub_100049A28();
  v48(v47);
  (*(v39 + 8))(v38, v59);

  v26 = v55;
LABEL_4:
  v30 = v61;
  *v61 = v26;
  v30[1] = v27;
  v30[2] = v28;
  v30[3] = v29;
  *(v30 + 32) = 0;
  return result;
}

uint64_t sub_100615818@<X0>(void *a1@<X8>)
{
  LocationSearchEntity.defaultQuery.unsafeMutableAddressor();
  v2 = unk_100D90590;
  v3 = qword_100D90598;
  *a1 = static LocationSearchEntity.defaultQuery;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_10061587C()
{
  v1 = LocationSearchEntity.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1006158DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000926F8;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1006159A4(uint64_t a1)
{
  v2 = sub_10015E074();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1006159F0(uint64_t a1)
{
  v2 = sub_10015E288();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100615A3C()
{
  result = qword_100CCC440;
  if (!qword_100CCC440)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationSearchEntityQuery, &type metadata for LocationSearchEntityQuery, v0, v1);
    atomic_store(result, &qword_100CCC440);
  }

  return result;
}

unint64_t sub_100615A94()
{
  result = qword_100CCC468;
  if (!qword_100CCC468)
  {
    v3 = sub_10022E824(&qword_100CCC470, &qword_100A6C148);
    result = swift_getWitnessTable(&protocol conformance descriptor for EmptyResolverSpecification<A>, v3, v0, v1);
    atomic_store(result, &qword_100CCC468);
  }

  return result;
}

uint64_t sub_100615B10(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      return 1;
    }

    return static VerticalSizingBehaviorKey.defaultValue.getter();
  }

  if (a4)
  {
    return static VerticalSizingBehaviorKey.defaultValue.getter();
  }

  return a1 == a3;
}

uint64_t static ExternalSearchQuery.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return static VerticalSizingBehaviorKey.defaultValue.getter();
  }

  if (a4)
  {
    return static VerticalSizingBehaviorKey.defaultValue.getter();
  }

  return 1;
}

uint64_t sub_100615B60(uint64_t a1, __int16 a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, char a14, uint64_t a15)
{
  if ((a2 & 0x100) != 0)
  {
    a1 = *(a15 + 16);
    v25 = *(a15 + 24);
  }

  else
  {
    v25 = a2;
  }

  if (a3 == 2)
  {
    a3 = *(a15 + 25);
  }

  if (a4 == 2)
  {
    a4 = *(a15 + 26);
  }

  if (a5 == 3)
  {
    a5 = *(a15 + 27);
  }

  v28 = a4;
  v29 = a5;
  v26 = a3;
  if (a7)
  {
    v24 = a7;
  }

  else
  {
    a6 = *(a15 + 32);
    v24 = *(a15 + 40);
  }

  v16 = a10;
  v31 = a8;
  v17 = a9;
  if (a9 == 1)
  {
    a8 = *(a15 + 48);
    v17 = *(a15 + 56);
  }

  if (a10 == 2)
  {
    v16 = *(a15 + 64);
  }

  v19 = a13;
  v20 = a12;
  if (!a12)
  {
    a11 = *(a15 + 72);
    v20 = *(a15 + 80);
  }

  v21 = a14;
  if (a13 == 2)
  {
    v19 = *(a15 + 88);
  }

  if (a14 == 2)
  {
    v21 = *(a15 + 89);
  }

  type metadata accessor for ListViewState._Storage();
  swift_allocObject();
  v22 = sub_100042DA8(a1, v25 & 1, v26 & 1, v28 & 1, v29, a6, v24, a8, v17, v16 & 1, a11, v20, v19 & 1, v21 & 1);

  sub_100088528(v31, a9);

  return v22;
}

uint64_t sub_100615D24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6974696465 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1970169197 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100615DEC(char a1)
{
  if (a1)
  {
    return 1970169197;
  }

  else
  {
    return 0x676E6974696465;
  }
}

uint64_t sub_100615E1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_100615EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000E8AC();
  v49 = v24;
  v50 = v26;
  v47 = v27;
  v29 = v28;
  v48 = sub_10022C350(&qword_100CCC5D8, &qword_100A6CBC8);
  sub_1000037C4();
  v46 = v30;
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = &v44 - v32;
  v45 = sub_10022C350(&qword_100CCC5E0, &qword_100A6CBD0);
  sub_1000037C4();
  v35 = v34;
  sub_100003828();
  __chkstk_darwin(v36);
  sub_10001320C();
  v37 = sub_10022C350(&qword_100CCC5E8, &qword_100A6CBD8);
  sub_1000037C4();
  v39 = v38;
  sub_100003828();
  __chkstk_darwin(v40);
  v42 = &v44 - v41;
  sub_1000161C0(v29, v29[3]);
  sub_1006188D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v50)
  {
    sub_10061897C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v35 + 8))(v25, v45);
  }

  else
  {
    sub_1000168D0();
    sub_100618928();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v43 = v48;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v46 + 8))(v33, v43);
  }

  (*(v39 + 8))(v42, v37);
  sub_10000C8F4();
}

void sub_100616158()
{
  sub_10000E8AC();
  v3 = v2;
  sub_10022C350(&qword_100CCC5A8, &qword_100A6CBB0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100003CB4();
  v5 = sub_10022C350(&qword_100CCC5B0, &qword_100A6CBB8);
  sub_1000037C4();
  v33 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_10001634C();
  sub_10022C350(&qword_100CCC5B8, &qword_100A6CBC0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_10001320C();
  v9 = v3[4];
  sub_10000E890(v3);
  v10 = sub_1006188D4();
  sub_100028824(&type metadata for ListToolbarMenuCategory.CodingKeys, v11, v10);
  if (v0)
  {
    goto LABEL_8;
  }

  v32 = v1;
  v12 = KeyedDecodingContainer.allKeys.getter();
  sub_100618010(v12, 0);
  v14 = v13;
  if (v16 == v15 >> 1)
  {
LABEL_7:
    type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    sub_10002094C(&unk_100C632C0);
    sub_100019BA8();
    sub_100022F14();
    (*(v25 + 104))(v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    v26 = sub_10004E7D8();
    v27(v26);
LABEL_8:
    sub_100006F14(v3);
LABEL_9:
    sub_10000C8F4();
    return;
  }

  sub_1000168B4();
  if (v21 < (v17 >> 1))
  {
    v22 = *(v20 + v18);
    sub_100618858(v18 + 1, v17 >> 1, v14, v20, v18, v19);
    sub_100013A38();
    swift_unknownObjectRelease();
    if (!v9)
    {
      if (v22)
      {
        sub_1000168D0();
        sub_100618928();
        sub_100008ADC();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        KeyedDecodingContainer.decode(_:forKey:)();
        swift_unknownObjectRelease();
        v28 = sub_1000046B4();
        v29(v28);
        v30 = sub_100006368();
      }

      else
      {
        sub_10061897C();
        sub_100008ADC();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_unknownObjectRelease();
        (*(v33 + 8))(v32, v5);
        v30 = sub_100014474();
      }

      v31(v30);
      sub_100006F14(v3);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1006165D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100615D24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100616600(uint64_t a1)
{
  v2 = sub_1006188D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10061663C(uint64_t a1)
{
  v2 = sub_1006188D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100616678(uint64_t a1)
{
  v2 = sub_10061897C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006166B4(uint64_t a1)
{
  v2 = sub_10061897C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006166F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100615E1C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100616720(uint64_t a1)
{
  v2 = sub_100618928();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10061675C(uint64_t a1)
{
  v2 = sub_100618928();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1006167B4(uint64_t a1@<X8>)
{
  sub_100616158();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
  }
}

uint64_t sub_100616808@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100759F10(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_10061685C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E75614C707061 && a2 == 0xE900000000000068;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6976614E72657375 && a2 == 0xEE006E6F69746167)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100616934(char a1)
{
  if (a1)
  {
    return 0x6976614E72657375;
  }

  else
  {
    return 0x636E75614C707061;
  }
}

uint64_t sub_10061697C(uint64_t a1)
{
  v2 = sub_100616E0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006169B8(uint64_t a1)
{
  v2 = sub_100616E0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006169FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10061685C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100616A24(uint64_t a1)
{
  v2 = sub_100616D64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100616A60(uint64_t a1)
{
  v2 = sub_100616D64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100616A9C(uint64_t a1)
{
  v2 = sub_100616DB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100616AD8(uint64_t a1)
{
  v2 = sub_100616DB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void ListSessionTrigger.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000E8AC();
  a23 = v26;
  a24 = v27;
  a10 = v28;
  v30 = v29;
  sub_10022C350(&qword_100CCC478, &qword_100A6C250);
  sub_1000037C4();
  v45 = v32;
  v46 = v31;
  sub_100003828();
  __chkstk_darwin(v33);
  sub_100003CB4();
  v44 = sub_10022C350(&qword_100CCC480, &qword_100A6C258);
  sub_1000037C4();
  v35 = v34;
  sub_100003828();
  __chkstk_darwin(v36);
  sub_10001634C();
  v37 = sub_10022C350(&qword_100CCC488, &qword_100A6C260);
  sub_1000037C4();
  v39 = v38;
  sub_100003828();
  __chkstk_darwin(v40);
  v42 = &v44 - v41;
  sub_10000E890(v30);
  sub_100616D64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v43 = (v39 + 8);
  if (a10)
  {
    sub_1000168D0();
    sub_100616DB8();
    sub_100037BEC(&type metadata for ListSessionTrigger.UserNavigationCodingKeys, &a14, v37);
    (*(v45 + 8))(v24, v46);
  }

  else
  {
    a13 = 0;
    sub_100616E0C();
    sub_100037BEC(&type metadata for ListSessionTrigger.AppLaunchCodingKeys, &a13, v37);
    (*(v35 + 8))(v25, v44);
  }

  (*v43)(v42, v37);
  sub_10000C8F4();
}

unint64_t sub_100616D64()
{
  result = qword_100CCC490;
  if (!qword_100CCC490)
  {
    result = swift_getWitnessTable(byte_100A6CB54, &type metadata for ListSessionTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC490);
  }

  return result;
}

unint64_t sub_100616DB8()
{
  result = qword_100CCC498;
  if (!qword_100CCC498)
  {
    result = swift_getWitnessTable(byte_100A6CB04, &type metadata for ListSessionTrigger.UserNavigationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC498);
  }

  return result;
}

unint64_t sub_100616E0C()
{
  result = qword_100CCC4A0;
  if (!qword_100CCC4A0)
  {
    result = swift_getWitnessTable(asc_100A6CAB4, &type metadata for ListSessionTrigger.AppLaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC4A0);
  }

  return result;
}

void ListSessionTrigger.init(from:)()
{
  sub_10000E8AC();
  v51 = v0;
  v3 = v2;
  v50 = sub_10022C350(&qword_100CCC4A8, &qword_100A6C268);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = sub_10022C350(&qword_100CCC4B0, &qword_100A6C270);
  sub_1000037C4();
  v47 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_10001634C();
  sub_10022C350(&qword_100CCC4B8, &unk_100A6C278);
  sub_1000037C4();
  v49 = v11;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_100003CB4();
  v13 = v3[4];
  sub_10000E890(v3);
  v14 = sub_100616D64();
  sub_100028824(&type metadata for ListSessionTrigger.CodingKeys, v15, v14);
  if (v0)
  {
    goto LABEL_10;
  }

  v45 = v8;
  v46 = v1;
  v51 = v3;
  v16 = v50;
  v17 = KeyedDecodingContainer.allKeys.getter();
  sub_100618010(v17, 0);
  v19 = v18;
  if (v21 == v20 >> 1)
  {
    goto LABEL_8;
  }

  sub_1000168B4();
  v44 = 0;
  if (v26 < (v22 >> 1))
  {
    v27 = *(v25 + v23);
    sub_100618858(v23 + 1, v22 >> 1, v19, v25, v23, v24);
    sub_100013A38();
    swift_unknownObjectRelease();
    if (!v13)
    {
      if (v27)
      {
        LODWORD(v47) = v27;
        sub_1000168D0();
        sub_100616DB8();
        sub_100008ADC();
        v28 = v44;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v28)
        {
          v29 = sub_100014474();
          v30(v29);
          swift_unknownObjectRelease();
          v3 = v51;
LABEL_10:
          sub_100006F14(v3);
LABEL_11:
          sub_10000C8F4();
          return;
        }

        swift_unknownObjectRelease();
        (*(v48 + 8))(v7, v16);
        v40 = sub_100014474();
        v41(v40);
LABEL_16:
        sub_100006F14(v51);
        goto LABEL_11;
      }

      sub_100616E0C();
      v36 = v46;
      sub_100008ADC();
      v37 = v44;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v37)
      {
        swift_unknownObjectRelease();
        (*(v47 + 8))(v36, v45);
        v42 = sub_100014474();
        v43(v42);
        goto LABEL_16;
      }

      v38 = sub_100014474();
      v39(v38);
      swift_unknownObjectRelease();
LABEL_9:
      v3 = v51;
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    sub_10002094C(&type metadata for ListSessionTrigger);
    sub_100019BA8();
    sub_100022F14();
    (*(v33 + 104))(v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    v34 = sub_10004E7D8();
    v35(v34);
    goto LABEL_9;
  }

  __break(1u);
}

void sub_100617288(_BYTE *a1@<X8>)
{
  ListSessionTrigger.init(from:)();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_1006172D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7551686372616573 && a2 == 0xEB00000000797265)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1006173A0(char a1)
{
  if (a1)
  {
    return 0x7551686372616573;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1006173E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006172D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100617408(uint64_t a1)
{
  v2 = sub_100618048();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100617444(uint64_t a1)
{
  v2 = sub_100618048();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100617480(uint64_t a1)
{
  v2 = sub_1006180F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006174BC(uint64_t a1)
{
  v2 = sub_1006180F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006174F8(uint64_t a1)
{
  v2 = sub_10061809C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100617534(uint64_t a1)
{
  v2 = sub_10061809C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void ExternalSearchQuery.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  a22 = v25;
  a23 = v26;
  v50 = v27;
  v51 = v23;
  v49 = v28;
  v30 = v29;
  v31 = sub_10022C350(&qword_100CCC4C0, &qword_100A6C288);
  sub_1000037C4();
  v48 = v32;
  sub_100003828();
  __chkstk_darwin(v33);
  v35 = &v46 - v34;
  sub_10022C350(&qword_100CCC4C8, &qword_100A6C290);
  sub_1000037C4();
  v46 = v37;
  v47 = v36;
  sub_100003828();
  __chkstk_darwin(v38);
  sub_100003CB4();
  v39 = sub_10022C350(&qword_100CCC4D0, &qword_100A6C298);
  sub_1000037C4();
  v41 = v40;
  sub_100003828();
  __chkstk_darwin(v42);
  v44 = &v46 - v43;
  sub_1000161C0(v30, v30[3]);
  sub_100618048();
  v45 = v50;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v45)
  {
    sub_1000168D0();
    sub_10061809C();
    sub_100037BEC(&type metadata for ExternalSearchQuery.SearchQueryCodingKeys, &a13, v39);
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v48 + 8))(v35, v31);
  }

  else
  {
    a12 = 0;
    sub_1006180F0();
    sub_100037BEC(&type metadata for ExternalSearchQuery.NoneCodingKeys, &a12, v39);
    (*(v46 + 8))(v24, v47);
  }

  (*(v41 + 8))(v44, v39);
  sub_10000C8F4();
}

void ExternalSearchQuery.init(from:)()
{
  sub_10000E8AC();
  v3 = v2;
  sub_10022C350(&qword_100CCC4F0, &qword_100A6C2A0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100003CB4();
  v5 = sub_10022C350(&qword_100CCC4F8, &qword_100A6C2A8);
  sub_1000037C4();
  v32 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_10001634C();
  sub_10022C350(&qword_100CCC500, &qword_100A6C2B0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_10001320C();
  v9 = v3[4];
  sub_10000E890(v3);
  v10 = sub_100618048();
  sub_100028824(&type metadata for ExternalSearchQuery.CodingKeys, v11, v10);
  if (v0)
  {
    goto LABEL_9;
  }

  v33 = v1;
  v12 = KeyedDecodingContainer.allKeys.getter();
  sub_100618010(v12, 0);
  v14 = v13;
  if (v16 == v15 >> 1)
  {
    v17 = v3;
LABEL_8:
    type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    sub_10002094C(&type metadata for ExternalSearchQuery);
    sub_100019BA8();
    sub_100022F14();
    (*(v25 + 104))(v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    v26 = sub_10004E7D8();
    v27(v26);
    v3 = v17;
LABEL_9:
    sub_100006F14(v3);
LABEL_10:
    sub_10000C8F4();
    return;
  }

  sub_1000168B4();
  if (v22 < (v18 >> 1))
  {
    v17 = v3;
    v34 = *(v21 + v19);
    sub_100618858(v19 + 1, v18 >> 1, v14, v21, v19, v20);
    sub_100013A38();
    swift_unknownObjectRelease();
    if (!v9)
    {
      if (v34)
      {
        sub_1000168D0();
        sub_10061809C();
        sub_100008ADC();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        KeyedDecodingContainer.decode(_:forKey:)();
        swift_unknownObjectRelease();
        v28 = sub_1000046B4();
        v29(v28);
        v30 = sub_100006368();
      }

      else
      {
        sub_1006180F0();
        sub_100008ADC();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_unknownObjectRelease();
        (*(v32 + 8))(v33, v5);
        v30 = sub_100014474();
      }

      v31(v30);
      sub_100006F14(v3);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_100617C8C(void *a1@<X8>)
{
  ExternalSearchQuery.init(from:)();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_100617CD4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static ExternalSearchQuery.read(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_100617D30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3F990;
  sub_1000103C4();
  *(v5 + 32) = 0xD000000000000010;
  *(v5 + 40) = v6;
  v7 = *(a1 + 24);
  *(v5 + 48) = *(a1 + 16);
  *(v5 + 56) = v7;
  sub_1000103C4();
  *(v8 + 72) = v9;
  *(v8 + 80) = 0xD000000000000019;
  *(v8 + 88) = v10;
  *(v8 + 96) = *(a1 + 25);
  sub_1000103C4();
  v11[15] = &type metadata for Bool;
  v11[16] = 0xD00000000000001CLL;
  v11[17] = v12;
  if (*(a1 + 27))
  {
    if (*(a1 + 27) == 1)
    {
      v13 = 0xEE006465696E6544;
      v14 = 0x6E6F697461636F6CLL;
    }

    else
    {
      sub_1000103C4();
      v14 = 0xD000000000000013;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    v14 = 0x6E6564646968;
  }

  *(inited + 144) = v14;
  *(inited + 152) = v13;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x6863726165537369;
  *(inited + 184) = 0xEB00000000676E69;
  *(inited + 192) = *(a1 + 64);
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0x697469736E617274;
  *(inited + 232) = 0xEF6449676E696E6FLL;
  v16 = *(a1 + 72);
  v15 = *(a1 + 80);
  v17 = sub_10022C350(&qword_100CA6078, &unk_100A30870);
  *(inited + 240) = v16;
  *(inited + 248) = v15;
  *(inited + 264) = v17;
  *(inited + 272) = 0x72656767697274;
  *(inited + 280) = 0xE700000000000000;
  *(inited + 288) = *(a1 + 88);
  sub_1000103C4();
  *(inited + 312) = v18;
  *(inited + 320) = 0xD00000000000001FLL;
  *(inited + 328) = v19;
  LOBYTE(v19) = *(a1 + 89);
  *(inited + 360) = &type metadata for Bool;
  *(inited + 336) = v19;

  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CCC590, &qword_100A6CBA8);
  a2[4] = sub_1006187A0();
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100617FD4(uint64_t a1)
{
  sub_100618804();

  return ShortDescribable.description.getter();
}

void sub_100618010(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1000105B8();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_100618048()
{
  result = qword_100CCC4D8;
  if (!qword_100CCC4D8)
  {
    result = swift_getWitnessTable(byte_100A6CA64, &type metadata for ExternalSearchQuery.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC4D8);
  }

  return result;
}

unint64_t sub_10061809C()
{
  result = qword_100CCC4E0;
  if (!qword_100CCC4E0)
  {
    result = swift_getWitnessTable(byte_100A6CA14, &type metadata for ExternalSearchQuery.SearchQueryCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC4E0);
  }

  return result;
}

unint64_t sub_1006180F0()
{
  result = qword_100CCC4E8;
  if (!qword_100CCC4E8)
  {
    result = swift_getWitnessTable(asc_100A6C9C4, &type metadata for ExternalSearchQuery.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC4E8);
  }

  return result;
}

unint64_t sub_100618148()
{
  result = qword_100CCC508;
  if (!qword_100CCC508)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListSessionTrigger, &type metadata for ListSessionTrigger, v0, v1);
    atomic_store(result, &qword_100CCC508);
  }

  return result;
}

unint64_t sub_100618224()
{
  result = qword_100CCC510;
  if (!qword_100CCC510)
  {
    result = swift_getWitnessTable(aE_58, &type metadata for ListSessionTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC510);
  }

  return result;
}

unint64_t sub_10061827C()
{
  result = qword_100CCC518;
  if (!qword_100CCC518)
  {
    result = swift_getWitnessTable(byte_100A6C774, &type metadata for ExternalSearchQuery.SearchQueryCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC518);
  }

  return result;
}

unint64_t sub_1006182D4()
{
  result = qword_100CCC520;
  if (!qword_100CCC520)
  {
    result = swift_getWitnessTable(byte_100A6C87C, &type metadata for ExternalSearchQuery.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC520);
  }

  return result;
}

unint64_t sub_10061832C()
{
  result = qword_100CCC528;
  if (!qword_100CCC528)
  {
    result = swift_getWitnessTable(aE_59, &type metadata for ListViewState, v0, v1);
    atomic_store(result, &qword_100CCC528);
  }

  return result;
}

unint64_t sub_100618384()
{
  result = qword_100CCC530;
  if (!qword_100CCC530)
  {
    result = swift_getWitnessTable(aE_60, &type metadata for ExternalSearchQuery.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC530);
  }

  return result;
}

unint64_t sub_1006183DC()
{
  result = qword_100CCC538;
  if (!qword_100CCC538)
  {
    result = swift_getWitnessTable(asc_100A6C7C4, &type metadata for ExternalSearchQuery.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC538);
  }

  return result;
}

unint64_t sub_100618434()
{
  result = qword_100CCC540;
  if (!qword_100CCC540)
  {
    result = swift_getWitnessTable(byte_100A6C6E4, &type metadata for ExternalSearchQuery.SearchQueryCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC540);
  }

  return result;
}

unint64_t sub_10061848C()
{
  result = qword_100CCC548;
  if (!qword_100CCC548)
  {
    result = swift_getWitnessTable(byte_100A6C70C, &type metadata for ExternalSearchQuery.SearchQueryCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC548);
  }

  return result;
}

unint64_t sub_1006184E4()
{
  result = qword_100CCC550;
  if (!qword_100CCC550)
  {
    result = swift_getWitnessTable(byte_100A6C7EC, &type metadata for ExternalSearchQuery.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC550);
  }

  return result;
}

unint64_t sub_10061853C()
{
  result = qword_100CCC558;
  if (!qword_100CCC558)
  {
    result = swift_getWitnessTable(byte_100A6C814, &type metadata for ExternalSearchQuery.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC558);
  }

  return result;
}

unint64_t sub_100618594()
{
  result = qword_100CCC560;
  if (!qword_100CCC560)
  {
    result = swift_getWitnessTable(byte_100A6C5DC, &type metadata for ListSessionTrigger.AppLaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC560);
  }

  return result;
}

unint64_t sub_1006185EC()
{
  result = qword_100CCC568;
  if (!qword_100CCC568)
  {
    result = swift_getWitnessTable(byte_100A6C604, &type metadata for ListSessionTrigger.AppLaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC568);
  }

  return result;
}

unint64_t sub_100618644()
{
  result = qword_100CCC570;
  if (!qword_100CCC570)
  {
    result = swift_getWitnessTable(aU_59, &type metadata for ListSessionTrigger.UserNavigationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC570);
  }

  return result;
}

unint64_t sub_10061869C()
{
  result = qword_100CCC578;
  if (!qword_100CCC578)
  {
    result = swift_getWitnessTable(byte_100A6C5B4, &type metadata for ListSessionTrigger.UserNavigationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC578);
  }

  return result;
}

unint64_t sub_1006186F4()
{
  result = qword_100CCC580;
  if (!qword_100CCC580)
  {
    result = swift_getWitnessTable(byte_100A6C62C, &type metadata for ListSessionTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC580);
  }

  return result;
}

unint64_t sub_10061874C()
{
  result = qword_100CCC588;
  if (!qword_100CCC588)
  {
    result = swift_getWitnessTable(asc_100A6C654, &type metadata for ListSessionTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC588);
  }

  return result;
}

unint64_t sub_1006187A0()
{
  result = qword_100CCC598;
  if (!qword_100CCC598)
  {
    v3 = sub_10022E824(&qword_100CCC590, &qword_100A6CBA8);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CCC598);
  }

  return result;
}

unint64_t sub_100618804()
{
  result = qword_100CCC5A0;
  if (!qword_100CCC5A0)
  {
    result = swift_getWitnessTable(byte_100A6C994, &type metadata for ListViewState, v0, v1);
    atomic_store(result, &qword_100CCC5A0);
  }

  return result;
}

uint64_t sub_100618858(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1006188D4()
{
  result = qword_100CCC5C0;
  if (!qword_100CCC5C0)
  {
    result = swift_getWitnessTable(byte_100A6CE64, &type metadata for ListToolbarMenuCategory.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC5C0);
  }

  return result;
}

unint64_t sub_100618928()
{
  result = qword_100CCC5C8;
  if (!qword_100CCC5C8)
  {
    result = swift_getWitnessTable(byte_100A6CE14, &type metadata for ListToolbarMenuCategory.MenuCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC5C8);
  }

  return result;
}

unint64_t sub_10061897C()
{
  result = qword_100CCC5D0;
  if (!qword_100CCC5D0)
  {
    result = swift_getWitnessTable(asc_100A6CDC4, &type metadata for ListToolbarMenuCategory.EditingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC5D0);
  }

  return result;
}

_BYTE *sub_1006189D0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100618ABC(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return static VerticalSizingBehaviorKey.defaultValue.getter();
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

_BYTE *sub_100618B08(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100618BB8()
{
  result = qword_100CCC5F0;
  if (!qword_100CCC5F0)
  {
    result = swift_getWitnessTable(aM_62, &type metadata for ListToolbarMenuCategory.MenuCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC5F0);
  }

  return result;
}

unint64_t sub_100618C10()
{
  result = qword_100CCC5F8;
  if (!qword_100CCC5F8)
  {
    result = swift_getWitnessTable(aE_61, &type metadata for ListToolbarMenuCategory.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC5F8);
  }

  return result;
}

unint64_t sub_100618C68()
{
  result = qword_100CCC600;
  if (!qword_100CCC600)
  {
    result = swift_getWitnessTable(asc_100A6CCBC, &type metadata for ListToolbarMenuCategory.EditingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC600);
  }

  return result;
}

unint64_t sub_100618CC0()
{
  result = qword_100CCC608;
  if (!qword_100CCC608)
  {
    result = swift_getWitnessTable(byte_100A6CCE4, &type metadata for ListToolbarMenuCategory.EditingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC608);
  }

  return result;
}

unint64_t sub_100618D18()
{
  result = qword_100CCC610;
  if (!qword_100CCC610)
  {
    result = swift_getWitnessTable(byte_100A6CC04, &type metadata for ListToolbarMenuCategory.MenuCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC610);
  }

  return result;
}

unint64_t sub_100618D70()
{
  result = qword_100CCC618;
  if (!qword_100CCC618)
  {
    result = swift_getWitnessTable(byte_100A6CC2C, &type metadata for ListToolbarMenuCategory.MenuCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC618);
  }

  return result;
}

unint64_t sub_100618DC8()
{
  result = qword_100CCC620;
  if (!qword_100CCC620)
  {
    result = swift_getWitnessTable(byte_100A6CD0C, &type metadata for ListToolbarMenuCategory.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC620);
  }

  return result;
}

unint64_t sub_100618E20()
{
  result = qword_100CCC628;
  if (!qword_100CCC628)
  {
    result = swift_getWitnessTable(byte_100A6CD34, &type metadata for ListToolbarMenuCategory.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCC628);
  }

  return result;
}

uint64_t sub_100618F5C()
{
  sub_10022C350(&qword_100CAC610, &unk_100A56560);
  sub_100003828();
  __chkstk_darwin(v0);
  v2 = &v6 - v1;
  Image.init(_internalSystemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v3 = type metadata accessor for SymbolRenderingMode();
  sub_10001B350(v2, 0, 1, v3);
  v4 = Image.symbolRenderingMode(_:)();

  sub_10030FE60(v2);
  return v4;
}

uint64_t sub_100619034()
{
  sub_10022C350(&qword_100CA5570, &unk_100A2FA70);
  sub_1000037C4();
  v49 = v0;
  v50 = v1;
  sub_100003828();
  __chkstk_darwin(v2);
  v47 = &v41 - v3;
  v46 = sub_10022C350(&qword_100CA5578, &unk_100A41670);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v7 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v43 = sub_10022C350(&qword_100CA5580, &unk_100A2FA80);
  sub_1000037C4();
  v45 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for Tips.MaxDisplayCount();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA5588, &unk_100A41680);
  sub_1000037C4();
  v42 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v41 - v28;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v20 + 8))(v24, v18);
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v13, v7);
  v51 = v18;
  v52 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v51 = v7;
  v52 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  v33 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  v36 = v43;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v51 = v35;
  v52 = v36;
  v53 = v32;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v34;
  v38 = v49;
  v39 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v50 + 8))(v37, v38);
  (*(v48 + 8))(v31, v35);
  (*(v45 + 8))(v17, v36);
  (*(v42 + 8))(v29, v25);
  return v39;
}

uint64_t sub_1006194E8()
{
  v0 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_100007074(v0, qword_100D905A0);
  sub_10000703C(v0, qword_100D905A0);
  sub_10022C350(&qword_100CA55A8, &qword_100A2FAA0);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100619638()
{
  v0 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  if (qword_100CA2370 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v0, qword_100D905A0);
  swift_beginAccess();
  (*(v2 + 16))(v5, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v12, v6);
  v14 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v14;
}

uint64_t sub_100619864@<X0>(uint64_t *a2@<X8>)
{
  sub_100235A9C();
  result = Tip.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1006198A8()
{
  result = qword_100CCC630;
  if (!qword_100CCC630)
  {
    result = swift_getWitnessTable(byte_100A6CF68, &type metadata for HomeAndWorkUpdatedTip, v0, v1);
    atomic_store(result, &qword_100CCC630);
  }

  return result;
}

uint64_t sub_1006198FC()
{
  if (*(v0 + 8))
  {
    v1 = *(v0 + 8);
  }

  else
  {
    v2 = [objc_opt_self() tertiarySystemFillColor];
    v1 = Color.init(uiColor:)();
    *(v0 + 8) = v1;
  }

  return v1;
}

double sub_100619964(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2388 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2398 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2390 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2380 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2378 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:

  return result;
}

void *sub_100619AD0(char a1, char a2, uint64_t a3)
{
  v80 = type metadata accessor for TipPriorityQueue.GridEntry(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v77 = &v73 - v10;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  v15 = type metadata accessor for LocationComponentViewModel(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  __chkstk_darwin(v21);
  sub_100013628();
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  __chkstk_darwin(v25);
  v27 = &v73 - v26;
  v28 = sub_10022C350(&qword_100CAC7F8, &qword_100A65EA0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  v33 = &v73 - v32;
  __chkstk_darwin(v34);
  v36 = &v73 - v35;
  sub_100619964(a1, a2);
  v38 = v37;
  v39 = OBJC_IVAR____TtCV7Weather24ElevatedAqiSevereContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v39, v14, &qword_100CA5008, &unk_100A2F7B0);
  v40 = type metadata accessor for LocationComponentContainerViewModel(0);
  if (sub_100024D10(v14, 1, v40) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008, &unk_100A2F7B0);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v41], v24, v42);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v24, v27, v43);
    sub_100566A5C(v38, v82);
    if ((v83 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v27, v33, v46);
      v44 = 0;
      v45 = v80;
      v47 = &v33[*(v80 + 20)];
      v48 = v82[1];
      *v47 = v82[0];
      *(v47 + 1) = v48;
      goto LABEL_7;
    }

    sub_1003169AC(v27, type metadata accessor for LocationComponentViewModel);
  }

  v44 = 1;
  v45 = v80;
LABEL_7:
  sub_10001B350(v33, v44, 1, v45);
  sub_1003168DC(v33, v36);
  sub_10031694C(a3 + *(v40 + 20) + OBJC_IVAR____TtCV7Weather24ElevatedAqiSevereContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v38, v84);
  sub_100924AFC(v3, v84, v81);
  sub_10031694C(*(a3 + 16) + *(v40 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v20, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v38, v85);
  v49 = v75;
  if (v86 & 1) != 0 || (sub_100011474(), v50 = v77, sub_1001B6FB0(v20, v77, v51), v52 = (v50 + *(v45 + 20)), v53 = v85[1], *v52 = v85[0], v52[1] = v53, sub_100035AD0(v36, v49, &qword_100CAC7F8, &qword_100A65EA0), sub_10001BD64(), v56 = v74, sub_10031694C(v54 + v55, v74, v57), sub_100566AB0(v38, v87), v58 = v78, (v88))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v56, v58, v59);
    v60 = (v58 + *(v45 + 20));
    v61 = v87[1];
    *v60 = v87[0];
    v60[1] = v61;
    sub_10001BD64();
    v64 = v76;
    sub_10031694C(v62 + v63, v76, v65);
    sub_100566AE8(v38, v89);
    if ((v90 & 1) == 0)
    {

      sub_100011474();
      v66 = v64;
      v67 = v79;
      sub_1001B6FB0(v66, v79, v68);
      v69 = (v67 + *(v45 + 20));
      v70 = v89[1];
      *v69 = v89[0];
      v69[1] = v70;
      v71 = sub_100924C14(v81, v50, v49, v58, v67);
      sub_1000180EC(v36, &qword_100CAC7F8, &qword_100A65EA0);
      return v71;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10061A154(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v116 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather24ElevatedAqiSevereContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100024D10(v5, 1, v6);
  v121 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008, &unk_100A2F7B0);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v16 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather24ElevatedAqiSevereContent8_Storage_airQuality, v21 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v24 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v27 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v118 = v13 + 2 * v14;
    v119 = v14;
    v30 = v14;
    v31 = swift_allocObject();
    v122 = xmmword_100A2D320;
    *(v31 + 16) = xmmword_100A2D320;
    v32 = a1;
    v33 = *(a1 + 16);
    v34 = v32;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v33 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v31 + v13 + v30, v7);
    *(v12 + 128) = sub_1001B38A0(v31);
    *(v12 + 136) = v35;
    *(v12 + 144) = v36;
    v120 = v15;
    v37 = swift_allocObject();
    sub_1000056EC(v37);
    v39 = v38 + v13;
    v40 = *(v34 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v39 + v119, v7);
    *(v12 + 152) = sub_1001B38A0(v31);
    *(v12 + 160) = v41;
    *(v12 + 168) = v42;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v13;
    v46 = v121;
    v47 = *(v121 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v48 = v119;
    sub_10031694C(v47 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v45 + v119, v7);
    *(v12 + 176) = sub_1001B38A0(v31);
    *(v12 + 184) = v49;
    *(v12 + 192) = v50;
    v51 = sub_10000C998();
    sub_1000056EC(v51);
    v53 = v52 + v13;
    v54 = *(v46 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v55 = v53 + v48;
    v56 = v48;
    sub_10031694C(v54 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v55, v7);
    *(v12 + 200) = sub_1001B38A0(v31);
    *(v12 + 208) = v57;
    *(v12 + 216) = v58;
    v59 = sub_10000C998();
    sub_100003E18(v59);
    v61 = v60 + v13;
    v62 = *(v46 + 16);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v60 + v13, v7);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v61 + v56, v7);
    *(v12 + 224) = sub_1001B38A0(v59);
    *(v12 + 232) = v63;
    *(v12 + 240) = v64;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v65 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v66 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v67 = *(v7 + 72);
    v68 = *(v7 + 80);
    v69 = v65;
    v70 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v70 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v71, v70 + v66, v72);
    *(v12 + 32) = sub_1001B38A0(v70);
    *(v12 + 40) = v73;
    *(v12 + 48) = v74;
    sub_100016B54();
    v75 = swift_allocObject();
    sub_1000056EC(v75);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather24ElevatedAqiSevereContent8_Storage_airQuality, v70 + v66, v7);
    *(v12 + 56) = sub_1001B38A0(v70);
    *(v12 + 64) = v76;
    *(v12 + 72) = v77;
    sub_100016B54();
    v78 = swift_allocObject();
    sub_1000056EC(v78);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v70 + v66, v7);
    *(v12 + 80) = sub_1001B38A0(v70);
    *(v12 + 88) = v79;
    *(v12 + 96) = v80;
    sub_100016B54();
    v81 = swift_allocObject();
    sub_1000056EC(v81);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v70 + v66, v7);
    *(v12 + 104) = sub_1001B38A0(v70);
    *(v12 + 112) = v82;
    *(v12 + 120) = v83;
    sub_100016B54();
    v120 = v69;
    v84 = swift_allocObject();
    sub_1000056EC(v84);
    sub_10031694C(v9, v85 + v66, v7);
    *(v12 + 128) = sub_1001B38A0(v70);
    *(v12 + 136) = v86;
    *(v12 + 144) = v87;
    v88 = v67;
    v119 = v68;
    v89 = v66 + 2 * v67;
    v90 = swift_allocObject();
    v116 = xmmword_100A2D320;
    *(v90 + 16) = xmmword_100A2D320;
    *&v122 = v9;
    v91 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v117 = v88;
    sub_10031694C(v91 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v90 + v66 + v88, v7);
    *(v12 + 152) = sub_1001B38A0(v90);
    *(v12 + 160) = v92;
    *(v12 + 168) = v93;
    v118 = v89;
    v94 = swift_allocObject();
    *(v94 + 16) = v116;
    v95 = v121;
    v96 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v96 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v94 + v66 + v88, v7);
    *(v12 + 176) = sub_1001B38A0(v94);
    *(v12 + 184) = v97;
    *(v12 + 192) = v98;
    v99 = swift_allocObject();
    *(v99 + 16) = 2;
    *(v99 + 24) = 4;
    v100 = *(v95 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v101 = v117;
    sub_10031694C(v100 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v99 + v66 + v117, v7);
    *(v12 + 200) = sub_1001B38A0(v99);
    *(v12 + 208) = v102;
    *(v12 + 216) = v103;
    v104 = swift_allocObject();
    v105 = sub_100017A70(v104) + v66;
    v106 = v121;
    v107 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v107 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v105 + v101, v7);
    *(v12 + 224) = sub_1001B38A0(v104);
    *(v12 + 232) = v108;
    *(v12 + 240) = v109;
    v110 = swift_allocObject();
    v111 = sub_100017A70(v110) + v66;
    v112 = *(v106 + 16);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v111, v7);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v111 + v101, v7);
    *(v12 + 248) = sub_1001B38A0(v110);
    *(v12 + 256) = v113;
    *(v12 + 264) = v114;
    sub_1003169AC(v122, v7);
  }

  return v12;
}

void sub_10061AA14()
{
  v33[0] = xmmword_100A3BB70;
  v33[1] = xmmword_100A2C3F0;
  v32[0] = xmmword_100A2C3F0;
  v32[1] = xmmword_100A3BBF0;
  v34 = v33;
  v35 = v32;
  v31[0] = xmmword_100A3BB70;
  v31[1] = xmmword_100A3BBA0;
  v30[0] = xmmword_100A3BBB0;
  v30[1] = xmmword_100A3BC00;
  v36 = v31;
  v37 = v30;
  v29[0] = xmmword_100A3BB70;
  v29[1] = xmmword_100A3BBD0;
  v28[0] = xmmword_100A2C3F0;
  v28[1] = xmmword_100A3BC00;
  v38 = v29;
  v39 = v28;
  v27[0] = xmmword_100A3BB70;
  v27[1] = xmmword_100A41B80;
  v26[0] = xmmword_100A3BBB0;
  v26[1] = xmmword_100A3BBF0;
  v40 = v27;
  v41 = v26;
  v25[0] = xmmword_100A2C3F0;
  v25[1] = xmmword_100A3BBC0;
  v24[0] = xmmword_100A2C3F0;
  v24[1] = xmmword_100A3BC10;
  v42 = v25;
  v43 = v24;
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BBB0;
  sub_10004E7E8(v23, v12, v13, v14, v15, v16, *(&v16 + 1), v17, *(&v17 + 1), v18, v19, v20, v21, v22);
  v16 = v0;
  v17 = v1;
  v44 = v2;
  v45 = &v16;
  sub_100013794(v3, v4, v5, v6, v7, v8, v9, v10, v0);
  qword_100D905C8 = v11;
}

void sub_10061AB1C()
{
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A2C3F0;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBA0;
  v11[0] = xmmword_100A3BBB0;
  v11[1] = xmmword_100A3BC20;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A3BB70;
  v10[1] = xmmword_100A3BBD0;
  v9[0] = xmmword_100A2C3F0;
  v9[1] = xmmword_100A3BC20;
  v19 = v10;
  v20 = v9;
  v8[0] = xmmword_100A3BBB0;
  v8[1] = xmmword_100A3BC00;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC10;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC30;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v23 = v6;
  v24 = v5;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BB80;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BB80;
  v25 = v4;
  v26 = v3;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC10;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC30;
  v27 = v2;
  v28 = v1;
  sub_100552E50();
  qword_100D905D0 = v0;
}

void sub_10061AC2C()
{
  v34[0] = xmmword_100A3BB70;
  v34[1] = xmmword_100A2C3F0;
  v33[0] = xmmword_100A3BC40;
  v33[1] = xmmword_100A3BB80;
  v35 = v34;
  v36 = v33;
  v32[0] = xmmword_100A3BB70;
  v32[1] = xmmword_100A3BBA0;
  v31[0] = xmmword_100A2C3F0;
  v31[1] = xmmword_100A3BB80;
  v37 = v32;
  v38 = v31;
  v29[0] = 0;
  v29[1] = 4;
  v30 = xmmword_100A3BBD0;
  v28[0] = xmmword_100A3BBD0;
  v28[1] = xmmword_100A3BC50;
  v39 = v29;
  v40 = v28;
  v27[0] = xmmword_100A2D320;
  v27[1] = xmmword_100A3BB70;
  v26[0] = xmmword_100A3BC40;
  v26[1] = xmmword_100A3BC50;
  v41 = v27;
  v42 = v26;
  v25[0] = xmmword_100A3BBD0;
  v25[1] = xmmword_100A3BB80;
  v24[0] = xmmword_100A3BBB0;
  v24[1] = xmmword_100A3BB80;
  v43 = v25;
  v44 = v24;
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BBB0;
  sub_10004E7E8(v23, v12, v13, v14, v15, v16, *(&v16 + 1), v17, *(&v17 + 1), v18, v19, v20, v21, v22);
  v16 = v0;
  v17 = v0;
  v45 = v1;
  v46 = &v16;
  sub_100013794(v2, v3, v4, v5, v6, v7, v8, v9, v10);
  qword_100D905D8 = v11;
}

void sub_10061AD34()
{
  v14[0] = xmmword_100A2D320;
  v14[1] = xmmword_100A3BBB0;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BC50;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3AEB0;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC50;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A3BC80;
  v10[1] = xmmword_100A2C3F0;
  v9[0] = xmmword_100A3BBD0;
  v9[1] = xmmword_100A3BC60;
  v19 = v10;
  v20 = v9;
  v8[0] = xmmword_100A3BC40;
  v8[1] = xmmword_100A3BC60;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BC50;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A3BBB0;
  v6[1] = xmmword_100A3BC50;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v23 = v6;
  v24 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC40;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC40;
  v25 = v4;
  v26 = v3;
  v2[0] = xmmword_100A3BC40;
  v2[1] = xmmword_100A3BBD0;
  v1[0] = xmmword_100A3BBD0;
  v1[1] = xmmword_100A3BBD0;
  v27 = v2;
  v28 = v1;
  sub_100552E50();
  qword_100D905E0 = v0;
}

void sub_10061AE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A2D320;
  v22[1] = xmmword_100A2C3F0;
  v21[0] = xmmword_100A3BC50;
  v21[1] = xmmword_100A3BC60;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3F970;
  v19[0] = xmmword_100A3BC60;
  v19[1] = xmmword_100A3BC40;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A41B90;
  v18[1] = xmmword_100A3BBB0;
  v17[0] = xmmword_100A3BBD0;
  v17[1] = xmmword_100A3BC60;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BC90;
  v16[1] = xmmword_100A3BD20;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BC60;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A3BC60;
  v14[1] = xmmword_100A3BC60;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BC40;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v11[0] = xmmword_100A3BBD0;
  v11[1] = xmmword_100A3BC40;
  v33 = v12;
  v34 = v11;
  v10[0] = xmmword_100A3BC50;
  v10[1] = xmmword_100A3BC40;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC60;
  v35 = v10;
  v36 = v9;
  sub_100013794(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D905E8 = v8;
}

uint64_t sub_10061AF64(uint64_t a1, void (*a2)(char *))
{
  v5 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003848();
  v34 = v7;
  __chkstk_darwin(v8);
  sub_100003878();
  v33 = v9;
  __chkstk_darwin(v10);
  sub_100013628();
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for LocationViewComponent(0);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v31 - v23;

  sub_1005D71C4(v25, a2);
  v32 = v26;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather38LocationElevatedAqiSevereConfiguration8_Storage_map, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10001B350(v24, 0, 1, v5);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather38LocationElevatedAqiSevereConfiguration8_Storage_airQuality, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather38LocationElevatedAqiSevereConfiguration8_Storage_severeAlert, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v24, v21, &qword_100CA5008, &unk_100A2F7B0);
  v27 = v33;
  sub_10031694C(v13, v33, type metadata accessor for LocationComponentContainerViewModel);
  v28 = v34;
  sub_10031694C(v2, v34, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for ElevatedAqiSevereContent._Storage(0);
  swift_allocObject();
  v29 = sub_1002BEE18(v32, v21, v27, v28);
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v13, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v24, &qword_100CA5008, &unk_100A2F7B0);
  return v29;
}

BOOL sub_10061B2A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v19 = type metadata accessor for MoonCalendarInput(0);
  if ((static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v20 = *(v19 + 32);
  v21 = *(v15 + 48);
  sub_1005C1F54(a1 + v20, v18, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1005C1F54(a2 + v20, &v18[v21], &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000038B4(v18, 1, v4);
  if (v22)
  {
    sub_1000038B4(&v18[v21], 1, v4);
    if (v22)
    {
      sub_1000180EC(v18, &unk_100CB2CF0, &unk_100A2D7F0);
      return 1;
    }

    goto LABEL_13;
  }

  sub_1005C1F54(v18, v14, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000038B4(&v18[v21], 1, v4);
  if (v22)
  {
    (*(v6 + 8))(v14, v4);
LABEL_13:
    sub_1000180EC(v18, qword_100CA4F80, &unk_100A580C0);
    return 0;
  }

  (*(v6 + 32))(v10, &v18[v21], v4);
  sub_100014B28();
  sub_1000E16B8(v24, v25, &protocol conformance descriptor for Date);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v6 + 8);
  v28 = sub_100003940();
  v27(v28);
  (v27)(v14, v4);
  sub_1000180EC(v18, &unk_100CB2CF0, &unk_100A2D7F0);
  return (v26 & 1) != 0;
}

uint64_t sub_10061B5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v3 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003848();
  v147 = v5;
  sub_10000386C();
  __chkstk_darwin(v6);
  v146 = &v131 - v7;
  sub_10000386C();
  __chkstk_darwin(v8);
  v153 = &v131 - v9;
  v10 = sub_1000038CC();
  v11 = type metadata accessor for TimeState(v10);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_1000037D8();
  v149 = v14 - v13;
  sub_1000038CC();
  v140 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v139 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v138 = v18 - v17;
  v19 = sub_1000038CC();
  v136 = type metadata accessor for WeatherData(v19);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000037D8();
  v137 = v22 - v21;
  v23 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  sub_100003810(v23);
  sub_100003828();
  __chkstk_darwin(v24);
  v161 = (&v131 - v25);
  v26 = sub_1000038CC();
  v150 = type metadata accessor for LocationWeatherDataState(v26);
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_100003848();
  v143 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  v144 = &v131 - v30;
  sub_1000038CC();
  v157 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v163 = v31;
  __chkstk_darwin(v32);
  sub_1000037D8();
  v35 = v34 - v33;
  type metadata accessor for Calendar();
  sub_1000037C4();
  v155 = v37;
  v156 = v36;
  __chkstk_darwin(v36);
  sub_1000037D8();
  v40 = v39 - v38;
  v41 = type metadata accessor for Location();
  sub_1000037C4();
  v43 = v42;
  __chkstk_darwin(v44);
  sub_100003848();
  v152 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  v48 = &v131 - v47;
  v49 = type metadata accessor for Date();
  sub_1000037C4();
  v158 = v50;
  __chkstk_darwin(v51);
  sub_100003848();
  v159 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  v151 = &v131 - v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  v160 = &v131 - v56;
  v57 = sub_10022C350(&qword_100CA75D0, &unk_100A4C620);
  sub_100003810(v57);
  sub_100003828();
  __chkstk_darwin(v58);
  v60 = &v131 - v59;
  v61 = type metadata accessor for MoonDetailViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v62);
  sub_1000037D8();
  v65 = v64 - v63;
  sub_1002B6FC4(a1, v60);
  v142 = v61;
  sub_1000038B4(v60, 1, v61);
  if (v76)
  {
    sub_1000180EC(v60, &qword_100CA75D0, &unk_100A4C620);
    v66 = type metadata accessor for MoonCalendarInput(0);
    return sub_10001B350(v162, 1, 1, v66);
  }

  v148 = v49;
  sub_10061D038(v60, v65);
  v134 = v43;
  v68 = *(v43 + 16);
  v135 = v41;
  v133 = v68;
  v68(v48, v65, v41);
  v141 = v48;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  v70 = v163 + 8;
  v69 = *(v163 + 8);
  v69(v35, v157);
  v71 = a1;
  v72 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v73 = Location.id.getter();
  v74 = v161;
  sub_1000864C0(v73, v75, v72);

  sub_1000038B4(v74, 1, v150);
  v154 = v40;
  v145 = v65;
  v77 = v71;
  v163 = v70;
  v132 = v35;
  if (v76)
  {
    sub_1000180EC(v161, &qword_100CA37B0, &unk_100A2D740);
  }

  else
  {
    v78 = v144;
    sub_10061D038(v161, v144);
    v79 = v143;
    sub_1000863A0(v78, v143);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v81 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
      v82 = *(v81 + 48);
      v83 = *(v81 + 64);
      v84 = v137;
      sub_10061D038(v79, v137);
      sub_10061D090(v79 + v83, type metadata accessor for NewsDataModel);
      sub_10061D090(v79 + v82, type metadata accessor for PreprocessedWeatherData);
      v85 = v138;
      WeatherDataModel.currentWeather.getter();
      v86 = v160;
      CurrentWeather.date.getter();
      (*(v139 + 8))(v85, v140);
      sub_10061D090(v84, type metadata accessor for WeatherData);
      sub_10061D090(v78, type metadata accessor for LocationWeatherDataState);
      v87 = v148;
      v88 = v158;
      v89 = v141;
      goto LABEL_11;
    }

    sub_10061D090(v78, type metadata accessor for LocationWeatherDataState);
    sub_10061D090(v79, type metadata accessor for LocationWeatherDataState);
  }

  v87 = v148;
  v90 = v149;
  v86 = v160;
  v89 = v141;
  sub_1000863A0(v77 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v149);
  v88 = v158;
  (*(v158 + 32))(v86, v90, v87);
LABEL_11:
  v92 = v152;
  v91 = v153;
  v93 = v159;
  sub_10061C3AC(v86, v153);
  sub_1000038B4(v91, 1, v87);
  if (v76)
  {
    v161 = v69;
    sub_1000180EC(v91, &unk_100CB2CF0, &unk_100A2D7F0);
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    sub_10000703C(v94, qword_100D90B68);
    v95 = v135;
    v133(v92, v89, v135);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v164 = v159;
      *v98 = 136446466;
      v99 = v92;
      v100 = v160;
      swift_beginAccess();
      sub_100014B28();
      sub_1000E16B8(v101, v102, &protocol conformance descriptor for Date);
      v103 = dispatch thunk of CustomStringConvertible.description.getter();
      v105 = sub_100078694(v103, v104, &v164);

      *(v98 + 4) = v105;
      *(v98 + 12) = 2082;
      v106 = v132;
      Location.timeZone.getter();
      sub_1000E16B8(&qword_100CCC818, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
      v107 = v157;
      v108 = dispatch thunk of CustomStringConvertible.description.getter();
      v110 = v109;
      v161(v106, v107);
      v111 = *(v134 + 8);
      v111(v99, v95);
      v112 = sub_100078694(v108, v110, &v164);
      v88 = v158;

      *(v98 + 14) = v112;
      _os_log_impl(&_mh_execute_header, v96, v97, "Failed to get currentMonth for date %{public}s, timeZone: %{public}s", v98, 0x16u);
      swift_arrayDestroy();
      v87 = v148;

      (*(v155 + 8))(v154, v156);
      v111(v141, v95);
      sub_10001F2EC();
      sub_10061D090(v145, v113);
      v114 = v162;
    }

    else
    {

      v121 = *(v134 + 8);
      v121(v92, v95);
      (*(v155 + 8))(v154, v156);
      v121(v89, v95);
      sub_10001F2EC();
      sub_10061D090(v145, v122);
      v114 = v162;
      v100 = v160;
    }

    v123 = type metadata accessor for MoonCalendarInput(0);
    sub_10001B350(v114, 1, 1, v123);
    return (*(v88 + 8))(v100, v87);
  }

  else
  {
    v115 = v89;
    v116 = *(v88 + 32);
    v117 = v151;
    v116(v151, v91, v87);
    v118 = v146;
    sub_1005C1F54(v145 + *(v142 + 24), v146, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1000038B4(v118, 1, v87);
    if (v119)
    {
      (*(v88 + 16))(v93, v117, v87);
      sub_1000038B4(v118, 1, v87);
      v120 = v118;
      v124 = v134;
      if (!v76)
      {
        sub_1000180EC(v120, &unk_100CB2CF0, &unk_100A2D7F0);
      }
    }

    else
    {
      v116(v93, v118, v87);
      v124 = v134;
    }

    v125 = v147;
    v126 = v145;
    v127 = v154;
    sub_10061C64C(v145, v86, v154, v115, v147);
    (*(v155 + 8))(v127, v156);
    sub_10001F2EC();
    sub_10061D090(v126, v128);
    v129 = v162;
    (*(v124 + 32))(v162, v115, v135);
    v130 = type metadata accessor for MoonCalendarInput(0);
    (*(v88 + 16))(v129 + v130[5], v86, v87);
    v116((v129 + v130[6]), v151, v87);
    v116((v129 + v130[7]), v159, v87);
    sub_100237E84(v125, v129 + v130[8]);
    sub_10001B350(v129, 0, 1, v130);
    return (*(v88 + 8))(v86, v87);
  }
}

uint64_t sub_10061C3AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v18 = type metadata accessor for Date();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DateComponents();
  v17 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA53E8, &unk_100A2F650);
  v7 = type metadata accessor for Calendar.Component();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100A2D320;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, enum case for Calendar.Component.year(_:), v7);
  v13(v12 + v9, enum case for Calendar.Component.month(_:), v7);
  sub_10004BCB0(v11);
  v14 = v18;
  (*(v2 + 16))(v4, v20, v18);
  Calendar.dateComponents(_:from:)();

  (*(v2 + 8))(v4, v14);
  Calendar.date(from:)();
  return (*(v17 + 8))(v6, v19);
}

uint64_t sub_10061C64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a4;
  v78 = a3;
  v79 = a5;
  v70 = a2;
  v6 = type metadata accessor for TimeZone();
  v68 = *(v6 - 8);
  v69 = v6;
  __chkstk_darwin(v6);
  v67 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Location();
  v74 = *(v8 - 8);
  v75 = v8;
  __chkstk_darwin(v8);
  v73 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DateComponents();
  v76 = *(v10 - 8);
  v77 = v10;
  __chkstk_darwin(v10);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v66 - v14;
  v16 = sub_10022C350(qword_100CA66A0, &unk_100A314C0);
  __chkstk_darwin(v16 - 8);
  v18 = &v66 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v71 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v66 - v23;
  __chkstk_darwin(v25);
  v27 = &v66 - v26;
  v28 = type metadata accessor for MoonDetailViewState(0);
  sub_1005C1F54(a1 + *(v28 + 20), v18, qword_100CA66A0, &unk_100A314C0);
  v29 = type metadata accessor for MoonDetailSelectedDate(0);
  v30 = sub_100024D10(v18, 1, v29);
  v80 = v20;
  if (v30 == 1)
  {
    sub_1000180EC(v18, qword_100CA66A0, &unk_100A314C0);
    (*(v20 + 16))(v27, v70, v19);
  }

  else
  {
    sub_10070B0DC(v24);
    sub_10061D090(v18, type metadata accessor for MoonDetailSelectedDate);
    (*(v20 + 32))(v27, v24, v19);
  }

  sub_10022C350(&qword_100CA53E8, &unk_100A2F650);
  v31 = type metadata accessor for Calendar.Component();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100A3BBA0;
  v36 = v35 + v34;
  v37 = *(v32 + 104);
  v37(v36, enum case for Calendar.Component.year(_:), v31);
  v37(v36 + v33, enum case for Calendar.Component.month(_:), v31);
  v37(v36 + 2 * v33, enum case for Calendar.Component.day(_:), v31);
  sub_10004BCB0(v35);
  Calendar.dateComponents(_:from:)();

  Calendar.date(from:)();
  v76[1](v12, v77);
  v38 = v27;
  if (sub_100024D10(v15, 1, v19) == 1)
  {
    sub_1000180EC(v15, &unk_100CB2CF0, &unk_100A2D7F0);
    v39 = v80;
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000703C(v40, qword_100D90B68);
    v41 = v71;
    (*(v39 + 16))(v71, v27, v19);
    v43 = v73;
    v42 = v74;
    v44 = v75;
    (*(v74 + 16))(v73, v72, v75);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v81 = v78;
      *v47 = 136446466;
      sub_1000E16B8(&qword_100CA5720, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      LODWORD(v72) = v46;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v41;
      v51 = v50;
      v52 = *(v39 + 8);
      v80 = v39 + 8;
      v76 = v52;
      v77 = v38;
      (v52)(v49, v19);
      v53 = sub_100078694(v48, v51, &v81);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2082;
      v54 = v67;
      Location.timeZone.getter();
      sub_1000E16B8(&qword_100CCC818, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
      v55 = v43;
      v56 = v69;
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      (*(v68 + 8))(v54, v56);
      (*(v42 + 8))(v55, v44);
      v60 = sub_100078694(v57, v59, &v81);

      *(v47 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v45, v72, "Failed to get selected day for date %{public}s, timeZone: %{public}s", v47, 0x16u);
      swift_arrayDestroy();

      (v76)(v77, v19);
    }

    else
    {

      (*(v42 + 8))(v43, v44);
      v64 = *(v39 + 8);
      v64(v41, v19);
      v64(v38, v19);
    }

    v63 = 1;
    v62 = v79;
  }

  else
  {
    v61 = v80;
    (*(v80 + 8))(v27, v19);
    v62 = v79;
    (*(v61 + 32))(v79, v15, v19);
    v63 = 0;
  }

  return sub_10001B350(v62, v63, 1, v19);
}

uint64_t type metadata accessor for MoonCalendarInput(uint64_t a1)
{
  result = qword_100CCC7D0;
  if (!qword_100CCC7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10061CF94(uint64_t a1)
{
  type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_10000BB3C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10061D038(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10061D090(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10061D0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v196 = a3;
  v170 = a2;
  v154 = a1;
  v190 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v190);
  v197 = &v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for NotificationsOptInState(0);
  __chkstk_darwin(v181);
  v195 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for NotificationsState(0);
  __chkstk_darwin(v189);
  v194 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v187);
  v193 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for EnvironmentState(0);
  __chkstk_darwin(v186);
  v192 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v185);
  v191 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v184);
  v177 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v171 = &v147 - v11;
  __chkstk_darwin(v12);
  v176 = &v147 - v13;
  v14 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  __chkstk_darwin(v14 - 8);
  v168 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v165 = &v147 - v17;
  __chkstk_darwin(v18);
  v166 = &v147 - v19;
  v182 = type metadata accessor for WeatherMapPresentationState(0);
  __chkstk_darwin(v182);
  v162 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v149);
  v183 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v150);
  v152 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  __chkstk_darwin(v23 - 8);
  *(&v157 + 1) = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v179 = &v147 - v26;
  v27 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  __chkstk_darwin(v27 - 8);
  v155 = &v147 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v178 = &v147 - v30;
  v31 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  __chkstk_darwin(v31 - 8);
  v153 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v180 = &v147 - v34;
  __chkstk_darwin(v35);
  v37 = &v147 - v36;
  v38 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  __chkstk_darwin(v38 - 8);
  v40 = &v147 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = (&v147 - v42);
  v44 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v44);
  v188 = &v147 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v48 = (&v147 - v47);
  v49 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  __chkstk_darwin(v49 - 8);
  v175 = &v147 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v158 = (&v147 - v52);
  v53 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  __chkstk_darwin(v53 - 8);
  v174 = &v147 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v57 = &v147 - v56;
  v58 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  __chkstk_darwin(v58 - 8);
  v172 = &v147 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v62 = &v147 - v61;
  v63 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  __chkstk_darwin(v63 - 8);
  v167 = &v147 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v67 = &v147 - v66;
  v68 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  __chkstk_darwin(v68 - 8);
  v163 = &v147 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v72 = &v147 - v71;
  v73 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  __chkstk_darwin(v73 - 8);
  v160 = &v147 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v75);
  v77 = &v147 - v76;
  v78 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  __chkstk_darwin(v78 - 8);
  *&v157 = &v147 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v156 = &v147 - v81;
  sub_10001B350(&v147 - v81, 1, 1, v185);
  v159 = v77;
  sub_10001B350(v77, 1, 1, v186);
  v161 = v72;
  v82 = v72;
  v83 = v154;
  sub_10001B350(v82, 1, 1, v187);
  v164 = v67;
  sub_10001B350(v67, 1, 1, v189);
  v169 = v62;
  sub_10001B350(v62, 1, 1, v181);
  v173 = v57;
  v84 = v57;
  v85 = v149;
  sub_10001B350(v84, 1, 1, v190);
  v147 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  sub_1000B7D3C();
  *v43 = v83;
  v86 = v150;
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v43, 0, 1, v86);
  v87 = type metadata accessor for SearchViewState(0);
  v151 = v37;
  sub_10001B350(v37, 1, 1, v87);
  sub_10001B350(v178, 1, 1, v85);
  sub_10001B350(v179, 1, 1, v182);
  v88 = *v48;
  sub_100095588();
  v89 = sub_100024D10(v40, 1, v86);
  v148 = v88;
  if (v89 == 1)
  {
    sub_1000B7D3C();
    v90 = sub_100024D10(v40, 1, v86);

    if (v90 != 1)
    {
      sub_1000180EC(v40, &qword_100CA6608, &unk_100A31430);
    }
  }

  else
  {
    sub_100620EDC();
  }

  LODWORD(v154) = *(v48 + v44[6]);
  v91 = [objc_opt_self() currentDevice];
  v92 = [v91 userInterfaceIdiom];

  sub_1000180EC(v43, &qword_100CA6608, &unk_100A31430);
  v93 = v158;
  if (v92 && *(v48 + v44[9] + 8) == 2)
  {
    v94 = 1;
  }

  else
  {
    v94 = *(v48 + v44[7]);
  }

  LODWORD(v152) = v94;
  v95 = v166;
  v96 = v153;
  sub_100051BBC();
  v97 = sub_100024D10(v96, 1, v87);
  v98 = v165;
  if (v97 == 1)
  {
    sub_100095588();
    if (sub_100024D10(v96, 1, v87) != 1)
    {
      sub_1000180EC(v96, &qword_100CA6600, &unk_100A5C400);
    }
  }

  else
  {
    v99 = v180;
    sub_100620EDC();
    sub_10001B350(v99, 0, 1, v87);
  }

  v100 = v155;
  sub_100051BBC();
  v101 = sub_100024D10(v100, 1, v85);
  v102 = v182;
  if (v101 == 1)
  {
    sub_1000B7D3C();
    v103 = sub_100024D10(v100, 1, v85) == 1;
    v104 = v100;
    v105 = v171;
    if (!v103)
    {
      sub_1000180EC(v104, &qword_100CA65F8, &dword_100A31420);
    }
  }

  else
  {
    sub_100620EDC();
    v105 = v171;
  }

  v106 = *(&v157 + 1);
  sub_100051BBC();
  if (sub_100024D10(v106, 1, v102) == 1)
  {
    sub_1000B7D3C();
    if (sub_100024D10(v106, 1, v102) != 1)
    {
      sub_1000180EC(v106, &qword_100CA65F0, &unk_100A5C3F0);
    }
  }

  else
  {
    sub_100620EDC();
  }

  v107 = *(v48 + v44[11]);
  sub_10009EEC0(v48, type metadata accessor for ViewState);
  *v93 = v148;
  sub_100620EDC();
  *(v93 + v44[6]) = v154;
  *(v93 + v44[7]) = v152;
  sub_100051BBC();
  sub_100620EDC();
  sub_100620EDC();
  *(v93 + v44[11]) = v107;
  sub_10001B350(v93, 0, 1, v44);
  sub_100095588();
  v108 = v184;
  if (sub_100024D10(v98, 1, v184) == 1)
  {
    v109 = v196;
    sub_1000B7D3C();
    v110 = sub_100024D10(v98, 1, v108);
    v111 = v186;
    if (v110 != 1)
    {
      sub_1000180EC(v98, &qword_100CA65E8, &unk_100A31410);
    }
  }

  else
  {
    sub_100620EDC();
    v109 = v196;
    v111 = v186;
  }

  v112 = v95;
  v113 = v184;
  sub_10001B350(v112, 0, 1, v184);
  sub_1000B7D3C();
  v114 = v168;
  sub_100051BBC();
  if (sub_100024D10(v114, 1, v113) == 1)
  {
    sub_1000180EC(v114, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_10009EEC0(v105, type metadata accessor for ModalViewState);
    sub_100620EDC();
  }

  v115 = v185;
  v116 = v167;
  v117 = v160;
  sub_100620EDC();
  v118 = *(v109 + 16);
  LODWORD(v184) = *(v109 + 24);
  v119 = v157;
  sub_100051BBC();
  v120 = sub_100024D10(v119, 1, v115);
  v196 = v118;
  if (v120 == 1)
  {
    sub_1000B7D3C();
    v121 = sub_100024D10(v119, 1, v115);

    if (v121 != 1)
    {
      sub_1000180EC(v119, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_100620EDC();
  }

  sub_100051BBC();
  if (sub_100024D10(v117, 1, v111) == 1)
  {
    swift_beginAccess();
    sub_1000B7D3C();
    v122 = sub_100024D10(v117, 1, v111);
    v124 = v189;
    v123 = v190;
    if (v122 != 1)
    {
      sub_1000180EC(v117, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_100620EDC();
    v124 = v189;
    v123 = v190;
  }

  v125 = v163;
  sub_100051BBC();
  v126 = v187;
  if (sub_100024D10(v125, 1, v187) == 1)
  {
    sub_1000B7D3C();
    v127 = sub_100024D10(v125, 1, v126);
    v128 = v172;
    if (v127 != 1)
    {
      sub_1000180EC(v125, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_100620EDC();
    v128 = v172;
  }

  sub_100051BBC();
  if (sub_100024D10(v116, 1, v124) == 1)
  {
    sub_1000B7D3C();
    v129 = sub_100024D10(v116, 1, v124);
    v130 = v174;
    if (v129 != 1)
    {
      sub_1000180EC(v116, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_100620EDC();
    v130 = v174;
  }

  sub_100051BBC();
  v131 = v181;
  if (sub_100024D10(v128, 1, v181) == 1)
  {
    sub_1000B7D3C();
    v132 = sub_100024D10(v128, 1, v131);
    v133 = v175;
    if (v132 != 1)
    {
      sub_1000180EC(v128, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_100620EDC();
    v133 = v175;
  }

  sub_100051BBC();
  if (sub_100024D10(v130, 1, v123) == 1)
  {
    sub_1000B7D3C();
    if (sub_100024D10(v130, 1, v123) != 1)
    {
      sub_1000180EC(v130, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_100620EDC();
  }

  sub_100051BBC();
  if (sub_100024D10(v133, 1, v44) == 1)
  {
    sub_1000B7D3C();
    if (sub_100024D10(v133, 1, v44) != 1)
    {
      sub_1000180EC(v133, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_100620EDC();
  }

  v134 = v177;
  sub_100620EDC();
  v136 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v135 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v138 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v137 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v139 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v141 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v140 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v142 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v146) = v139;
  sub_10003E038(v196, v184, v191, v192, v193, v194, v195, v197, v188, v134, v136, v135, v138, v137, v146, v141, v140, v142, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
  v144 = v143;

  return v144;
}

uint64_t sub_10061EA14(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v158 = a5;
  v176 = a4;
  v155 = a2;
  v196 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v196);
  v202 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for NotificationsOptInState(0);
  __chkstk_darwin(v195);
  v201 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for NotificationsState(0);
  __chkstk_darwin(v194);
  v200 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v193);
  v199 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for EnvironmentState(0);
  __chkstk_darwin(v192);
  v198 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v190);
  v197 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v168);
  v175 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v169 = &v152 - v14;
  __chkstk_darwin(v15);
  v174 = &v152 - v16;
  v17 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  __chkstk_darwin(v17 - 8);
  v166 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v165 = &v152 - v20;
  v184 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v184);
  v187 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v157);
  v185 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  __chkstk_darwin(v23 - 8);
  *(&v162 + 1) = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v182 = &v152 - v26;
  v27 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  __chkstk_darwin(v27 - 8);
  v160 = &v152 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v180 = &v152 - v30;
  v31 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  __chkstk_darwin(v31 - 8);
  v159 = &v152 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  *&v162 = &v152 - v34;
  __chkstk_darwin(v35);
  v179 = &v152 - v36;
  v37 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  __chkstk_darwin(v37 - 8);
  v39 = &v152 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v178 = &v152 - v41;
  v42 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  __chkstk_darwin(v42 - 8);
  v173 = &v152 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v154 = (&v152 - v45);
  v46 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  __chkstk_darwin(v46 - 8);
  v172 = &v152 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v191 = &v152 - v49;
  v50 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  __chkstk_darwin(v50 - 8);
  v171 = &v152 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v189 = &v152 - v53;
  v54 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  __chkstk_darwin(v54 - 8);
  v167 = &v152 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v188 = &v152 - v57;
  v58 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  __chkstk_darwin(v58 - 8);
  v164 = &v152 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v186 = &v152 - v61;
  v62 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  __chkstk_darwin(v62 - 8);
  v163 = &v152 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v183 = &v152 - v65;
  v66 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  __chkstk_darwin(v66 - 8);
  v161 = &v152 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v181 = &v152 - v69;
  v70 = sub_10022C350(&qword_100CA6698, &unk_100A314B0);
  __chkstk_darwin(v70 - 8);
  v72 = &v152 - v71;
  v177 = type metadata accessor for WeatherMapPresentationState(0);
  __chkstk_darwin(v177);
  v156 = &v152 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v76 = &v152 - v75;
  v77 = type metadata accessor for LocationViewerViewAction(0);
  __chkstk_darwin(v77);
  v79 = &v152 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v80);
  v170 = &v152 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v82);
  v84 = (&v152 - v83);
  v85 = sub_10022C350(&qword_100CA5CF8, &unk_100A302F0);
  __chkstk_darwin(v85 - 8);
  v87 = &v152 - v86;
  sub_100620480(a3, v176, &v152 - v86);
  v176 = a3;
  v155 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  sub_1000B7D3C();
  sub_1000B7D3C();
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v88 = 0;
  }

  else
  {
    v88 = *(v84 + v80[10]);
    sub_10009EEC0(v79, type metadata accessor for LocationViewerViewAction);
  }

  v89 = v80[10];
  v90 = v84 + v80[9];
  v91 = type metadata accessor for WeatherMapTrackingState(0);
  sub_10001B350(v72, 1, 1, v91);
  v153 = v89;
  sub_1000B0430(v88, v90, v87, v72, v76);
  sub_1000180EC(v72, &qword_100CA6698, &unk_100A314B0);
  sub_10001B350(v181, 1, 1, v190);
  sub_10001B350(v183, 1, 1, v192);
  sub_10001B350(v186, 1, 1, v193);
  sub_10001B350(v188, 1, 1, v194);
  sub_10001B350(v189, 1, 1, v195);
  sub_10001B350(v191, 1, 1, v196);
  v92 = v157;
  sub_10001B350(v178, 1, 1, v157);
  v93 = type metadata accessor for SearchViewState(0);
  sub_10001B350(v179, 1, 1, v93);
  sub_10001B350(v180, 1, 1, v184);
  v94 = v182;
  sub_1000B7D3C();
  sub_10001B350(v94, 0, 1, v177);
  v95 = *v84;
  sub_100095588();
  v96 = sub_100024D10(v39, 1, v92);
  v158 = v95;
  if (v96 == 1)
  {
    sub_1000B7D3C();
    v97 = sub_100024D10(v39, 1, v92);

    if (v97 != 1)
    {
      sub_1000180EC(v39, &qword_100CA6608, &unk_100A31430);
    }
  }

  else
  {
    sub_100620EDC();
  }

  LODWORD(v157) = *(v84 + v80[6]);
  v98 = [objc_opt_self() currentDevice];
  v99 = [v98 userInterfaceIdiom];

  sub_1000180EC(v178, &qword_100CA6608, &unk_100A31430);
  sub_10009EEC0(v76, type metadata accessor for WeatherMapPresentationState);
  sub_1000180EC(v87, &qword_100CA5CF8, &unk_100A302F0);
  if (v99 && *(v90 + 8) == 2)
  {
    v100 = 1;
  }

  else
  {
    v100 = *(v84 + v80[7]);
  }

  LODWORD(v178) = v100;
  v101 = *(&v162 + 1);
  v102 = v162;
  v103 = v159;
  sub_100051BBC();
  v104 = sub_100024D10(v103, 1, v93);
  v105 = v160;
  if (v104 == 1)
  {
    sub_100095588();
    if (sub_100024D10(v103, 1, v93) != 1)
    {
      sub_1000180EC(v103, &qword_100CA6600, &unk_100A5C400);
    }
  }

  else
  {
    sub_100620EDC();
    sub_10001B350(v102, 0, 1, v93);
  }

  sub_100051BBC();
  v106 = v105;
  v107 = v105;
  v108 = v184;
  v109 = sub_100024D10(v106, 1, v184);
  v110 = v192;
  if (v109 == 1)
  {
    sub_1000B7D3C();
    v111 = sub_100024D10(v107, 1, v108);
    v112 = v176;
    v113 = v177;
    if (v111 != 1)
    {
      sub_1000180EC(v107, &qword_100CA65F8, &dword_100A31420);
    }
  }

  else
  {
    sub_100620EDC();
    v112 = v176;
    v113 = v177;
  }

  sub_100051BBC();
  if (sub_100024D10(v101, 1, v113) == 1)
  {
    sub_1000B7D3C();
    v114 = v110;
    if (sub_100024D10(v101, 1, v113) != 1)
    {
      sub_1000180EC(v101, &qword_100CA65F0, &unk_100A5C3F0);
    }
  }

  else
  {
    sub_100620EDC();
    v114 = v110;
  }

  v115 = *(v84 + v80[11]);
  sub_10009EEC0(v84, type metadata accessor for ViewState);
  v116 = v154;
  *v154 = v158;
  sub_100620EDC();
  *(v116 + v80[6]) = v157;
  *(v116 + v80[7]) = v178;
  sub_100051BBC();
  sub_100620EDC();
  sub_100620EDC();
  *(v116 + v80[11]) = v115;
  sub_10001B350(v116, 0, 1, v80);
  v117 = v168;
  sub_10001B350(v165, 1, 1, v168);
  v118 = v169;
  sub_1000B7D3C();
  v119 = v166;
  sub_100051BBC();
  if (sub_100024D10(v119, 1, v117) == 1)
  {
    sub_1000180EC(v119, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_10009EEC0(v118, type metadata accessor for ModalViewState);
    sub_100620EDC();
  }

  v120 = v196;
  v121 = v194;
  v122 = v190;
  v123 = v161;
  sub_100620EDC();
  v124 = v112[2];
  LODWORD(v194) = *(v112 + 24);
  sub_100051BBC();
  v125 = sub_100024D10(v123, 1, v122);
  v196 = v124;
  if (v125 == 1)
  {
    sub_1000B7D3C();
    v126 = sub_100024D10(v123, 1, v122);

    v127 = v167;
    if (v126 != 1)
    {
      sub_1000180EC(v123, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_100620EDC();

    v127 = v167;
  }

  v128 = v163;
  sub_100051BBC();
  if (sub_100024D10(v128, 1, v114) == 1)
  {
    swift_beginAccess();
    sub_1000B7D3C();
    v129 = sub_100024D10(v128, 1, v114);
    v130 = v195;
    if (v129 != 1)
    {
      sub_1000180EC(v128, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_100620EDC();
    v130 = v195;
  }

  v131 = v164;
  sub_100051BBC();
  v132 = v193;
  if (sub_100024D10(v131, 1, v193) == 1)
  {
    sub_1000B7D3C();
    if (sub_100024D10(v131, 1, v132) != 1)
    {
      sub_1000180EC(v131, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_100620EDC();
  }

  sub_100051BBC();
  if (sub_100024D10(v127, 1, v121) == 1)
  {
    sub_1000B7D3C();
    if (sub_100024D10(v127, 1, v121) != 1)
    {
      sub_1000180EC(v127, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_100620EDC();
  }

  v133 = v171;
  sub_100051BBC();
  if (sub_100024D10(v133, 1, v130) == 1)
  {
    sub_1000B7D3C();
    if (sub_100024D10(v133, 1, v130) != 1)
    {
      sub_1000180EC(v133, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_100620EDC();
  }

  v134 = v172;
  sub_100051BBC();
  if (sub_100024D10(v134, 1, v120) == 1)
  {
    sub_1000B7D3C();
    v135 = sub_100024D10(v134, 1, v120);
    v136 = v170;
    if (v135 != 1)
    {
      sub_1000180EC(v134, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_100620EDC();
    v136 = v170;
  }

  v137 = v173;
  sub_100051BBC();
  if (sub_100024D10(v137, 1, v80) == 1)
  {
    sub_1000B7D3C();
    if (sub_100024D10(v137, 1, v80) != 1)
    {
      sub_1000180EC(v137, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_100620EDC();
  }

  v138 = v175;
  sub_100620EDC();
  v140 = *(v112 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v139 = *(v112 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v142 = *(v112 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v141 = *(v112 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v143 = *(v112 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v144 = v112;
  v146 = *(v112 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v145 = *(v112 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v147 = *(v144 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v151) = v143;
  sub_10003E038(v196, v194, v197, v198, v199, v200, v201, v202, v136, v138, v140, v139, v142, v141, v151, v146, v145, v147, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168);
  v149 = v148;

  return v149;
}

uint64_t sub_100620480@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v77 = a2;
  v86 = a1;
  v87 = a3;
  v3 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v3 - 8);
  v74 = &v73 - v4;
  v5 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v5 - 8);
  v76 = &v73 - v6;
  v78 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v78);
  v73 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v8 - 8);
  v80 = &v73 - v9;
  v81 = type metadata accessor for Location();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v85 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  __chkstk_darwin(v11 - 8);
  v13 = &v73 - v12;
  v14 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v14);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  __chkstk_darwin(v17 - 8);
  v19 = &v73 - v18;
  v20 = type metadata accessor for LocationModel();
  v83 = *(v20 - 8);
  v84 = v20;
  __chkstk_darwin(v20);
  v82 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Location.Identifier();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v73 - v27;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  __chkstk_darwin(active - 8);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B7D3C();
  v32 = 1;
  if (sub_100024D10(v31, 1, v22) != 1)
  {
    (*(v23 + 32))(v28, v31, v22);
    sub_1000B7D3C();
    static CurrentLocation.placeholderIdentifier.getter();
    v33 = static Location.Identifier.== infix(_:_:)();
    v34 = *(v23 + 8);
    v75 = v23 + 8;
    v35 = v34(v25, v22);
    if (v33)
    {
      sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
      type metadata accessor for CurrentLocation();
      swift_storeEnumTagMultiPayload();
      v36 = type metadata accessor for LocationOfInterest();
      sub_10001B350(v13, 1, 1, v36);
      LocationModelData.init(locationOfInterest:isPredictedLocation:)();
      v37 = v83;
      v38 = v84;
      (*(v83 + 13))(v19, enum case for LocationModel.current(_:), v84);
      sub_10001B350(v19, 0, 1, v38);
      v39 = v85;
    }

    else
    {
      __chkstk_darwin(v35);
      *(&v73 - 2) = v28;
      sub_100030C98(sub_100079458, (&v73 - 4), v40);
      v38 = v84;
      v39 = v85;
      v37 = v83;
    }

    sub_10009EEC0(v16, type metadata accessor for LocationsState);
    if (sub_100024D10(v19, 1, v38) == 1)
    {
      v34(v28, v22);
      v41 = &unk_100CE2F20;
      v42 = &unk_100A2D7D0;
LABEL_9:
      sub_1000180EC(v19, v41, v42);
LABEL_10:
      v32 = 1;
      goto LABEL_11;
    }

    v43 = v82;
    (*(v37 + 32))(v82, v19, v38);
    v44 = v80;
    LocationModel.location.getter();
    v19 = v44;
    v45 = v44;
    v46 = v81;
    if (sub_100024D10(v45, 1, v81) == 1)
    {
      (*(v37 + 8))(v43, v38);
      v34(v28, v22);
      v41 = &qword_100CA65D8;
      v42 = &unk_100A3D9D0;
      goto LABEL_9;
    }

    v83 = v28;
    v49 = v79;
    (*(v79 + 32))(v39, v19, v46);
    v50 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
    if (*(v86 + *(type metadata accessor for ViewState(0) + 40) + v50 + 1) != 128)
    {
      (*(v49 + 8))(v39, v46);
      (*(v37 + 8))(v43, v38);
      v34(v83, v22);
      goto LABEL_10;
    }

    v51 = *(v86 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

    v52 = Location.id.getter();
    v53 = v74;
    sub_1000864C0(v52, v54, v51);

    v55 = type metadata accessor for LocationWeatherDataState(0);
    if (sub_100024D10(v53, 1, v55) == 1)
    {
      sub_1000180EC(v53, &qword_100CA37B0, &unk_100A2D740);
      v56 = v76;
      sub_10001B350(v76, 1, 1, v78);
      v57 = v82;
    }

    else
    {
      v56 = v76;
      sub_1001A0D3C();
      sub_10009EEC0(v53, type metadata accessor for LocationWeatherDataState);
      v58 = sub_100024D10(v56, 1, v78);
      v57 = v82;
      if (v58 != 1)
      {
        v61 = v73;
        sub_100620EDC();
        v62 = v86 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        v63 = *(v62 + 3) == 4;
        v64 = v49;
        v65 = v57;
        v66 = v77;
        sub_1000161C0(v77 + 7, v77[10]);
        v68 = sub_100922C64(v61, v63, v67);
        v70 = v69;
        sub_1000161C0(v66 + 12, v66[15]);
        v71 = v22;
        v72 = v83;
        sub_100523678(v61 + *(v78 + 24), v68, v70, v83, v87);

        sub_10009EEC0(v61, type metadata accessor for WeatherData);
        (*(v64 + 8))(v85, v81);
        (*(v37 + 8))(v65, v84);
        v59 = v72;
        v60 = v71;
        goto LABEL_19;
      }
    }

    sub_1000180EC(v56, &qword_100CA3898, &qword_100A314D0);
    sub_1000161C0(v77 + 12, v77[15]);
    sub_1001A79EC(v87);
    (*(v49 + 8))(v39, v46);
    (*(v37 + 8))(v57, v38);
    v59 = v83;
    v60 = v22;
LABEL_19:
    v34(v59, v60);
    v32 = 0;
  }

LABEL_11:
  v47 = type metadata accessor for WeatherMapOverlayKind();
  return sub_10001B350(v87, v32, 1, v47);
}

uint64_t sub_100620EDC()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100620F34(uint64_t a1)
{
  v254 = type metadata accessor for TimeState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v260 = v3;
  v4 = sub_1000038CC();
  v253 = type metadata accessor for NotificationsOptInState(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v259 = v6;
  v7 = sub_1000038CC();
  v252 = type metadata accessor for NotificationsState(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000038E4();
  v258 = v9;
  v10 = sub_1000038CC();
  v250 = type metadata accessor for LocationsState(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  v257 = v12;
  v13 = sub_1000038CC();
  v249 = type metadata accessor for EnvironmentState(v13);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  v256 = v15;
  v16 = sub_1000038CC();
  v248 = type metadata accessor for AppConfigurationState(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000038E4();
  v255 = v18;
  v19 = sub_1000038CC();
  v234 = type metadata accessor for ModalViewState(v19);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_100003908();
  __chkstk_darwin(v22);
  sub_10000E70C();
  sub_100003990(v23);
  v24 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v26);
  sub_10000E70C();
  v231 = v27;
  v28 = sub_1000038CC();
  v218 = type metadata accessor for WeatherMapPresentationState(v28);
  sub_1000037E8();
  __chkstk_darwin(v29);
  sub_1000038E4();
  v229 = v30;
  v31 = sub_1000038CC();
  v243 = type metadata accessor for DisplayMetrics(v31);
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_1000038E4();
  v247 = v33;
  v34 = sub_1000038CC();
  v219 = type metadata accessor for ViewState.SecondaryViewState(v34);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_1000038E4();
  sub_100003990(v36);
  v37 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  v38 = sub_100003810(v37);
  __chkstk_darwin(v38);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_10000E70C();
  v245 = v40;
  v41 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  v42 = sub_100003810(v41);
  __chkstk_darwin(v42);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_10000E70C();
  v244 = v44;
  v45 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  v46 = sub_100003810(v45);
  __chkstk_darwin(v46);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v47);
  v246 = &v213 - v48;
  __chkstk_darwin(v49);
  sub_10000E70C();
  sub_100003990(v50);
  v51 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  v52 = sub_100003810(v51);
  __chkstk_darwin(v52);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v53);
  v55 = (&v213 - v54);
  v217 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v56);
  sub_100003848();
  v251 = v57;
  __chkstk_darwin(v58);
  sub_10000E70C();
  sub_100003990(v59);
  v60 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v61 = sub_100003810(v60);
  __chkstk_darwin(v61);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_10000E70C();
  sub_100003990(v63);
  v64 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v65 = sub_100003810(v64);
  __chkstk_darwin(v65);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v66);
  v68 = &v213 - v67;
  v69 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v70 = sub_100003810(v69);
  __chkstk_darwin(v70);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v71);
  v73 = &v213 - v72;
  v74 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v75 = sub_100003810(v74);
  __chkstk_darwin(v75);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v76);
  v78 = &v213 - v77;
  v79 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v80 = sub_100003810(v79);
  __chkstk_darwin(v80);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v81);
  v83 = &v213 - v82;
  v84 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v85 = sub_100003810(v84);
  __chkstk_darwin(v85);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v86);
  v88 = &v213 - v87;
  v89 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v90 = sub_100003810(v89);
  __chkstk_darwin(v90);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v91);
  v93 = &v213 - v92;
  v94 = sub_100622404(a1);
  v95 = sub_1006224F8();
  v221 = v93;
  sub_100003934();
  sub_10001B350(v96, v97, v98, v248);
  *(&v223 + 1) = v88;
  v99 = v219;
  sub_100003934();
  sub_10001B350(v100, v101, v102, v249);
  v227 = v83;
  v103 = v215;
  sub_100003934();
  sub_10001B350(v104, v105, v106, v250);
  v230 = v78;
  sub_100003934();
  sub_10001B350(v107, v108, v109, v252);
  v235 = v73;
  sub_100003934();
  sub_10001B350(v110, v111, v112, v253);
  v238 = v68;
  sub_100003934();
  sub_10001B350(v113, v114, v115, v254);
  sub_100022F3C();
  v242 = a1;
  v214 = v116;
  sub_100095158();
  *v55 = v95;
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v55, 0, 1, v99);
  v117 = type metadata accessor for SearchViewState(0);
  sub_100003934();
  sub_10001B350(v118, v119, v120, v117);
  sub_100003934();
  sub_10001B350(v121, v122, v123, v124);
  sub_100003934();
  v125 = v218;
  sub_10001B350(v126, v127, v128, v218);
  v129 = v216;
  sub_100095588();
  v130 = v129;
  v131 = sub_10000C7F0();
  sub_1000038B4(v131, v132, v99);
  if (v133)
  {
    v136 = v217;
    v135 = v103;
    sub_100095158();
    v134 = sub_100024D10(v130, 1, v99);
    swift_retain_n();

    if (v134 != 1)
    {
      sub_1000180EC(v130, &qword_100CA6608, &unk_100A31430);
    }
  }

  else
  {
    v135 = v103;
    v136 = v217;
    sub_10002885C();
    sub_1000A0890();
    swift_retain_n();
  }

  v137 = v135;
  LODWORD(v217) = *(v135 + v136[6]);
  v138 = [objc_opt_self() currentDevice];
  v139 = [v138 userInterfaceIdiom];
  v219 = v94;
  v140 = v137;

  v141 = v136;

  sub_1000180EC(v55, &qword_100CA6608, &unk_100A31430);
  v142 = v226;
  if (v139 && *(v140 + v136[9] + 8) == 2)
  {
    v143 = 1;
  }

  else
  {
    v143 = *(v140 + v136[7]);
  }

  LODWORD(v216) = v143;
  v144 = v236;
  v145 = v125;
  v146 = v220;
  sub_100051BBC();
  v147 = sub_1000175DC();
  sub_1000038B4(v147, v148, v117);
  v149 = v224;
  if (v133)
  {
    sub_100095588();
    v150 = sub_1000175DC();
    sub_1000038B4(v150, v151, v117);
    v152 = v146;
    v154 = v243;
    if (!v133)
    {
      sub_1000180EC(v152, &qword_100CA6600, &unk_100A5C400);
    }
  }

  else
  {
    v153 = v246;
    sub_1000A0890();
    sub_10001B350(v153, 0, 1, v117);
    v154 = v243;
  }

  v155 = v222;
  sub_100051BBC();
  sub_1000038B4(v155, 1, v154);
  v156 = v249;
  if (v133)
  {
    sub_100019808(v136[9]);
    sub_100095158();
    sub_1000038B4(v155, 1, v154);
    v157 = v223;
    if (!v133)
    {
      sub_1000180EC(v155, &qword_100CA65F8, &dword_100A31420);
    }
  }

  else
  {
    sub_100019BE8();
    sub_1000A0890();
    v157 = v223;
  }

  sub_100051BBC();
  if (sub_100024D10(v149, 1, v145) == 1)
  {
    sub_100019808(v136[10]);
    sub_100095158();
    sub_1000038B4(v149, 1, v145);
    v158 = v225;
    if (!v133)
    {
      sub_1000180EC(v149, &qword_100CA65F0, &unk_100A5C3F0);
    }
  }

  else
  {
    sub_1000046D8();
    sub_100003940();
    sub_1000A0890();
    v158 = v225;
  }

  v159 = *(v140 + v136[11]);
  sub_10009EF18(v140, type metadata accessor for ViewState);
  *v142 = v219;
  sub_10002885C();
  sub_1000A0890();
  *(v142 + v136[6]) = v217;
  *(v142 + v136[7]) = v216;
  sub_100051BBC();
  sub_100019BE8();
  sub_1000A0890();
  sub_1000046D8();
  sub_1000A0890();

  *(v142 + v136[11]) = v159;
  sub_10001B350(v142, 0, 1, v136);
  sub_100003934();
  v160 = v234;
  sub_10001B350(v161, v162, v163, v234);
  v164 = v242;
  sub_100095158();
  v165 = v233;
  sub_100051BBC();
  v166 = sub_10000C7F0();
  sub_1000038B4(v166, v167, v160);
  if (v133)
  {
    sub_1000180EC(v165, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_10009EF18(v144, type metadata accessor for ModalViewState);
    sub_100008B04();
    sub_1000A0890();
  }

  v168 = v254;
  v169 = v248;
  sub_100008B04();
  sub_1000A0890();
  v170 = *(v164 + 16);
  LODWORD(v246) = *(v164 + 24);
  sub_100051BBC();
  v171 = sub_1000175DC();
  sub_1000038B4(v171, v172, v169);
  v247 = v170;
  if (v133)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
    sub_100095158();
    v173 = sub_1000175DC();
    v175 = sub_100024D10(v173, v174, v169);

    v176 = v228;
    if (v175 != 1)
    {
      sub_1000180EC(v157, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_1000A0890();

    v176 = v228;
  }

  sub_100051BBC();
  v177 = sub_1000162A4();
  sub_1000038B4(v177, v178, v156);
  if (v133)
  {
    swift_beginAccess();
    sub_100095158();
    v179 = sub_1000162A4();
    sub_1000038B4(v179, v180, v156);
    v181 = v253;
    v182 = v232;
    if (!v133)
    {
      sub_1000180EC(v158, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_1000A0890();
    v181 = v253;
    v182 = v232;
  }

  sub_100051BBC();
  v183 = v250;
  sub_1000038B4(v176, 1, v250);
  if (v133)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
    sub_100095158();
    sub_1000038B4(v176, 1, v183);
    v184 = v237;
    v185 = v252;
    if (!v133)
    {
      sub_1000180EC(v176, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_1000A0890();
    v184 = v237;
    v185 = v252;
  }

  sub_100051BBC();
  sub_1000038B4(v182, 1, v185);
  if (v133)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
    sub_100095158();
    sub_1000038B4(v182, 1, v185);
    v186 = v239;
    if (!v133)
    {
      sub_1000180EC(v182, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_1000A0890();
    v186 = v239;
  }

  sub_100051BBC();
  v187 = sub_1000175DC();
  sub_1000038B4(v187, v188, v181);
  if (v133)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
    sub_100095158();
    v189 = sub_1000175DC();
    sub_1000038B4(v189, v190, v181);
    v191 = v240;
    if (!v133)
    {
      sub_1000180EC(v184, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_1000A0890();
    v191 = v240;
  }

  sub_100051BBC();
  v192 = sub_1000162A4();
  sub_1000038B4(v192, v193, v168);
  if (v133)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
    sub_100095158();
    v194 = sub_1000162A4();
    sub_1000038B4(v194, v195, v168);
    if (!v133)
    {
      sub_1000180EC(v186, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_1000A0890();
  }

  sub_100051BBC();
  v196 = sub_10000C7F0();
  sub_1000038B4(v196, v197, v141);
  if (v133)
  {
    sub_100022F3C();
    sub_100095158();
    v198 = sub_10000C7F0();
    sub_1000038B4(v198, v199, v141);
    if (!v133)
    {
      sub_1000180EC(v191, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_1000A0890();
  }

  sub_100008B04();
  v200 = v241;
  sub_1000A0890();
  v202 = *(v164 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v201 = *(v164 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v204 = *(v164 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v203 = *(v164 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v205 = *(v164 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v207 = *(v164 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v206 = *(v164 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v208 = *(v164 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v212) = v205;
  sub_10003E038(v247, v246, v255, v256, v257, v258, v259, v260, v251, v200, v202, v201, v204, v203, v212, v207, v206, v208, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229);
  v210 = v209;

  return v210;
}