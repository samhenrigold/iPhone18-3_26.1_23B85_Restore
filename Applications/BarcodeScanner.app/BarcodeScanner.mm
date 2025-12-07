uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t sub_100001D1C(uint64_t a1, uint64_t a2)
{
  if (qword_10000CB08[0] != -1)
  {
    sub_100004544();
  }

  return qword_10000CB00;
}

void sub_100001D54(id a1)
{
  qword_10000CB00 = os_log_create("com.apple.BarcodeScanner.LifeCycle", "BarcodeScannerLifeCycle");

  _objc_release_x1();
}

unint64_t sub_100002280()
{
  result = qword_10000C990;
  if (!qword_10000C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C990);
  }

  return result;
}

unint64_t sub_1000022D4()
{
  result = qword_10000C998;
  if (!qword_10000C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C998);
  }

  return result;
}

uint64_t sub_100002328()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_10000449C(v6, qword_10000D410);
  sub_100004464(v6, qword_10000D410);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100002518(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000260C, v4, v3);
}

uint64_t sub_10000260C()
{

  static Logger.intent.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "BarcodeScannerIntent performed successfully", v3, 2u);
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);
  v7 = [objc_opt_self() defaultCenter];
  [v7 postNotificationName:BCSDidLaunchFromControlNotification object:0];

  static IntentResult.result<>()();

  v8 = v0[1];

  return v8();
}

uint64_t (*sub_1000027B0(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100002824;
}

void sub_100002824(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100002874()
{
  result = qword_10000C9A0;
  if (!qword_10000C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C9A0);
  }

  return result;
}

unint64_t sub_1000028CC()
{
  result = qword_10000C9A8;
  if (!qword_10000C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C9A8);
  }

  return result;
}

unint64_t sub_100002968()
{
  result = qword_10000C9B0;
  if (!qword_10000C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C9B0);
  }

  return result;
}

uint64_t sub_100002A14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002AAC;

  return sub_100002518(a1);
}

uint64_t sub_100002AAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002BA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003CD0();
  *a1 = result;
  return result;
}

uint64_t sub_100002BE8(uint64_t a1)
{
  v2 = sub_100002968();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100002C24()
{
  v0 = sub_100003C88(&qword_10000CA38, &qword_100005718);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_10000449C(v10, qword_10000D428);
  sub_100004464(v10, qword_10000D428);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100002F0C()
{
  v0 = sub_100003C88(&qword_10000CA30, &qword_100005710);
  __chkstk_darwin(v0 - 8);
  v20 = &v18 - v1;
  v2 = sub_100003C88(&qword_10000CA38, &qword_100005718);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v19 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for LocalizedStringResource();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  sub_100003C88(&qword_10000CA40, &qword_100005720);
  v12 = *(sub_100003C88(&qword_10000CA48, &qword_100005728) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100005250;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v5 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v19);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v11 + 56))(v4, 1, 1, v10);
  v15 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v15 - 8) + 56))(v20, 1, 1, v15);
  DisplayRepresentation.init(title:subtitle:image:)();
  v16 = sub_1000041D4(v14);
  swift_setDeallocating();
  sub_10000438C(v14 + v13);
  result = swift_deallocClassInstance();
  qword_10000D440 = v16;
  return result;
}

unint64_t sub_100003330()
{
  result = qword_10000C9B8;
  if (!qword_10000C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C9B8);
  }

  return result;
}

Swift::Int sub_100003384()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000033E8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100003434@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100008710, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_1000034A8()
{
  result = qword_10000C9C0;
  if (!qword_10000C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C9C0);
  }

  return result;
}

unint64_t sub_100003500()
{
  result = qword_10000C9C8;
  if (!qword_10000C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C9C8);
  }

  return result;
}

unint64_t sub_100003564()
{
  result = qword_10000C9D0;
  if (!qword_10000C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C9D0);
  }

  return result;
}

unint64_t sub_1000035BC()
{
  result = qword_10000C9D8;
  if (!qword_10000C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C9D8);
  }

  return result;
}

unint64_t sub_100003614()
{
  result = qword_10000C9E0;
  if (!qword_10000C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C9E0);
  }

  return result;
}

unint64_t sub_10000366C()
{
  result = qword_10000C9E8;
  if (!qword_10000C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C9E8);
  }

  return result;
}

uint64_t sub_1000036FC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100004464(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_100003818()
{
  result = qword_10000C9F0;
  if (!qword_10000C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C9F0);
  }

  return result;
}

uint64_t sub_10000386C(uint64_t a1)
{
  v2 = sub_100003818();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000038BC()
{
  result = qword_10000C9F8;
  if (!qword_10000C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C9F8);
  }

  return result;
}

unint64_t sub_100003914()
{
  result = qword_10000CA00;
  if (!qword_10000CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CA00);
  }

  return result;
}

unint64_t sub_10000396C()
{
  result = qword_10000CA08;
  if (!qword_10000CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CA08);
  }

  return result;
}

uint64_t sub_1000039C0()
{
  if (qword_10000C988 != -1)
  {
    swift_once();
  }

  v1 = qword_10000D440;

  return _swift_bridgeObjectRetain(v1);
}

uint64_t sub_100003A1C(uint64_t a1)
{
  v2 = sub_10000366C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100003AAC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchCodeScannerAppEnum(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LaunchCodeScannerAppEnum(_WORD *result, int a2, int a3)
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

uint64_t sub_100003C40(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003AAC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003C88(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003CD0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100003C88(&qword_10000CA58, &qword_100005738);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = sub_100003C88(&qword_10000CA38, &qword_100005718);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21 = sub_100003C88(&qword_10000CA60, &qword_100005740);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26[0] = 1;
  v18 = type metadata accessor for IntentDialog();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_100003818();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t sub_100004170()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return sub_100004144(v0);
}

unint64_t sub_1000041D4(uint64_t a1)
{
  v2 = sub_100003C88(&qword_10000CA48, &qword_100005728);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003C88(&qword_10000CA50, &qword_100005730);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1000043F4(v8, v5);
      result = sub_100004170();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
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

uint64_t sub_10000438C(uint64_t a1)
{
  v2 = sub_100003C88(&qword_10000CA48, &qword_100005728);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000043F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003C88(&qword_10000CA48, &qword_100005728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004464(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000449C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100004558(void *a1)
{
  v1 = [a1 _bcs_privacyPreservingDescription];
  v2 = 138543362;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "BarcodeScanner: Failed to continue user activity %{public}@", &v2, 0xCu);
}