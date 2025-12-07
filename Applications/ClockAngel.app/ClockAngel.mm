id sub_1000022E4(_BYTE *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int8x16_t a9, uint64_t a10)
{
  v16 = [_SUITimeFormatData instanceForLocale:a10];
  v17 = v16;
  if (*a9.i64 > 600.0 && a7 != 0)
  {
    if (*a9.i64 <= 36000.0)
    {
      [v16 abbreviatedHourMinuteDateFormatter];
    }

    else
    {
      [v16 abbreviatedHourDateFormatter];
    }
    v29 = ;
    v30 = [(__CFString *)v29 stringFromTimeInterval:*a9.i64];
    goto LABEL_52;
  }

  v64 = a1;
  v66 = v16;
  v19 = v16;
  v20 = v19;
  v21 = *a9.i64;
  v22 = *a9.i64 / 0x3C;
  if (a5)
  {
    v23 = v22 - 60 * (((v22 * 0x888888888888889uLL) >> 64) >> 1);
    v24 = v21 / 0xE10;
  }

  else
  {
    v24 = 0;
    v23 = *a9.i64 / 0x3C;
  }

  v65 = a8;
  if (v24)
  {
    v25 = 1;
  }

  else
  {
    v25 = a2;
  }

  v26 = [v19 singleWidthNumberFormatter];
  v63 = v25;
  if (v25 == 1)
  {
    v27 = [NSNumber numberWithUnsignedInteger:v24];
    v28 = [v26 stringFromNumber:v27];

LABEL_19:
    v31 = [v20 doubleWidthNumberFormatter];

    v26 = v31;
    goto LABEL_20;
  }

  v28 = &stru_100104028;
  if (a6)
  {
    goto LABEL_19;
  }

LABEL_20:
  v32 = [NSNumber numberWithUnsignedInteger:v23];
  v33 = [v26 stringFromNumber:v32];

  if (a4)
  {
    v35 = v21 - 60 * v22;
    v36 = [v20 doubleWidthNumberFormatter];
    v37 = [NSNumber numberWithUnsignedInteger:v35];
    v38 = [v36 stringFromNumber:v37];
  }

  else
  {
    v38 = &stru_100104028;
  }

  if (a3)
  {
    *v34.i64 = *a9.i64 - trunc(*a9.i64);
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    v40 = (*vbslq_s8(vnegq_f64(v39), v34, a9).i64 * 100.0);
    v41 = [v20 doubleWidthNumberFormatter];
    v42 = [NSNumber numberWithUnsignedInteger:v40];
    v43 = [v41 stringFromNumber:v42];
  }

  else
  {
    v43 = &stru_100104028;
  }

  v44 = v28;
  v45 = v33;
  v46 = v38;
  v47 = v43;

  v29 = v28;
  v48 = v33;
  v49 = v38;
  v50 = v43;
  if (v63)
  {
    if (!a4 || a7)
    {
      v51 = [v20 formatHourMin];
    }

    else
    {
      if (a3)
      {
        [v20 formatHourMinSecSubsec];
      }

      else
      {
        [v20 formatHourMinSec];
      }
      v51 = ;
    }
  }

  else if (a4)
  {
    if (a7 || (a3 & 1) == 0)
    {
      v51 = [v20 formatMinSec];
    }

    else
    {
      v51 = [v20 formatMinSecSubsec];
    }
  }

  else
  {
    v51 = [v20 formatMin];
  }

  v52 = v51;
  if (v64)
  {
    *v64 = v63;
  }

  if ((v63 & 1) == 0)
  {
    v53 = [NSString stringWithFormat:@"HH%@", v51];

    v52 = v53;
  }

  v54 = [v52 stringByReplacingOccurrencesOfString:@"HH" withString:@"%1$@"];

  v55 = [v54 stringByReplacingOccurrencesOfString:@"H" withString:@"%1$@"];

  v56 = [v55 stringByReplacingOccurrencesOfString:@"mm" withString:@"%2$@"];

  v57 = [v56 stringByReplacingOccurrencesOfString:@"m" withString:@"%2$@"];

  v58 = [v57 stringByReplacingOccurrencesOfString:@"ss" withString:@"%3$@"];

  v59 = [v58 stringByReplacingOccurrencesOfString:@"SS" withString:@"%4$@"];

  if (v65)
  {
    v17 = v66;
    if ([(__CFString *)v50 length])
    {

      v50 = @"−−";
    }

    v60 = 60.0;
    v61 = *a9.i64;
    if (*a9.i64 >= 60.0 && [(__CFString *)v49 length:60.0])
    {

      v49 = @"−−";
    }
  }

  else
  {
    v17 = v66;
  }

  v30 = [NSString stringWithFormat:v59, v60, v61, v29, v48, v49, v50];

LABEL_52:

  return v30;
}

void sub_100002994(id a1)
{
  qword_100119B08 = objc_alloc_init(NSLock);

  _objc_release_x1();
}

double sub_100002E3C(double a1)
{
  v1 = a1;
  v2 = a1 * 1000.0;
  if (v2 <= 1.84467441e19)
  {
    v3 = dword_1000CFD08[(121 * (v2 - 100 * ((v2 / 0x64) & 0x3FFFFFFF))) >> 12];
    return ((10 * (arc4random_uniform(3u) + v3)) + floor(v1 * 10.0) * 100.0) / 1000.0;
  }

  return v1;
}

id sub_10000305C(uint64_t a1, void *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003120;
  v6[3] = &unk_1000FF598;
  v7 = *(a1 + 32);
  v3 = [a2 na_firstObjectPassingTest:v6];
  v4 = [NAFuture futureWithResult:v3];

  return v4;
}

id sub_100003120(uint64_t a1, void *a2)
{
  v3 = [a2 timerIDString];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100003164(uint64_t a1, void *a2)
{
  v4 = [a2 timerByUpdatingWithState:*(a1 + 40)];
  v3 = [*(a1 + 32) updateTimer:v4];
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for Application();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for AppDelegate();
  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, v6, v8);

  return 0;
}

uint64_t sub_1000032D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003338@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_1000032D4(a1, a2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000033BC(uint64_t a1)
{
  v2 = sub_1000032D4(&qword_100113860, &qword_1000D0290);
  __chkstk_darwin(v2 - 8);
  sub_100003F98(a1, &v5 - v3);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t variable initialization expression of AlarmAlertCoverSheet.slideTransition()
{
  static AnyTransition.move(edge:)();
  static AnyTransition.scale.getter();
  v0 = AnyTransition.combined(with:)();

  return v0;
}

uint64_t variable initialization expression of Atomic.lock()
{
  type metadata accessor for CPUnfairLock();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_100003558(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003578(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1000035EC@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_100003618@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_100003644(void *a1, uint64_t *a2)
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

void *sub_1000036C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000036F0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000037B8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003830(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000038B0@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003900@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100004338(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1000039D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003AA8(uint64_t a1)
{
  v2 = sub_1000039D0(&qword_1001138D0, type metadata accessor for Role, &unk_1000D0464);
  v3 = sub_1000039D0(&qword_1001138D8, type metadata accessor for Role, &unk_1000D0404);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003B64(uint64_t a1)
{
  v2 = sub_1000039D0(&qword_1001137F0, type metadata accessor for SBUISystemApertureElementIdentifier, &unk_1000D017C);
  v3 = sub_1000039D0(&qword_1001137F8, type metadata accessor for SBUISystemApertureElementIdentifier, &unk_1000D0124);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003CB0@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003CF8(uint64_t a1)
{
  v2 = sub_1000039D0(&qword_100113900, type metadata accessor for Key, &unk_1000D0800);
  v3 = sub_1000039D0(&qword_100113908, type metadata accessor for Key, &unk_1000D0754);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003DC0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100003DFC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003E50(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100003EC4(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100003F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100113860, &qword_1000D0290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100004008(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000401C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000403C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AlarmKitButton.SizeCategory(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Frame(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Frame(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100004338(uint64_t a1)
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

void sub_100004384(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100004528@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = [objc_opt_self() mtOrange];
  result = Color.init(uiColor:)();
  *a1 = 0x69662E6D72616C61;
  a1[1] = 0xEA00000000006C6CLL;
  a1[2] = v3;
  a1[3] = result;
  return result;
}

uint64_t sub_10000459C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + 6;
  v4 = *a1;
  sub_10002B00C((a1 + 1), &v14);
  sub_10002B00C(v3, v15);
  v13 = v4;
  v5 = v4;
  LOBYTE(v4) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v15[40] = v4;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = 0;
  sub_10002CFC4(&v13, v12, &qword_100114D68, &qword_1000D20D8);
  sub_10002CFC4(v12, a2, &qword_100114D68, &qword_1000D20D8);
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  *(a2 + 152) = v5;
  *(a2 + 160) = sub_10002DB3C;
  *(a2 + 168) = 0;
  *(a2 + 176) = 256;
  v10 = v5;
  sub_10002B128(sub_10002DB3C, 0);
  sub_10002D02C(&v13, &qword_100114D68, &qword_1000D20D8);

  sub_10002B130(sub_10002DB3C, 0);
  return sub_10002D02C(v12, &qword_100114D68, &qword_1000D20D8);
}

double sub_100004700@<D0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_10000459C(v1, a1 + 24);
  *(a1 + 208) = static Edge.Set.horizontal.getter();
  result = 0.0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 257;
  return result;
}

uint64_t sub_100004758@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v67 = a4;
  v68 = a3;
  v66 = a2;
  v60 = a5;
  v6 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v56 = &v56 - v14;
  v15 = type metadata accessor for RunningCountdownView(0);
  __chkstk_darwin(v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1000032D4(&qword_100113FD8, &qword_1000D63D0);
  v18 = __chkstk_darwin(v59);
  v69 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v58 = &v56 - v21;
  __chkstk_darwin(v20);
  v65 = &v56 - v22;
  LocalizedStringKey.init(stringLiteral:)();
  v23 = Text.init(_:tableName:bundle:comment:)();
  v62 = v24;
  v63 = v23;
  v26 = v25;
  v64 = v27;
  if (qword_100113660 != -1)
  {
    swift_once();
  }

  v28 = qword_10011F698;
  v29 = objc_opt_self();
  v61 = v28;

  v30 = [v29 mtOrange];
  v57 = Color.init(uiColor:)();
  v71 = v26 & 1;
  v70 = 1;
  v31 = [a1 snoozeFireDate];
  if (v31)
  {
    v32 = v31;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = *(v10 + 32);
    v33(v8, v13, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    v34 = v56;
    v33(v56, v8, v9);
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    v34 = v56;
    Date.init()();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_10002D02C(v8, &qword_100115E40, &unk_1000D1280);
    }
  }

  v35 = v67;
  if ((v67 & 0x100) != 0)
  {
    if (qword_100113658 != -1)
    {
      swift_once();
    }

    v36 = &qword_10011F690;
    v37 = 0x4048000000000000;
  }

  else
  {
    if (qword_100113678 != -1)
    {
      swift_once();
    }

    v36 = &qword_10011F6B0;
    v37 = 0x4047800000000000;
  }

  v38 = v37;
  v39 = *v36;
  v40 = [v29 mtOrange];
  v41 = Color.init(uiColor:)();
  (*(v10 + 32))(v17, v34, v9);
  v17[v15[5]] = 0;
  *&v17[v15[6]] = v38;
  *&v17[v15[7]] = v39;
  *&v17[v15[8]] = v41;
  v17[v15[9]] = (v35 & 0x100) == 0;
  v17[v15[10]] = 0;
  type metadata accessor for EnvironmentDelegate(0);
  sub_100025228(&qword_100113FE0, type metadata accessor for EnvironmentDelegate, &unk_1000D6294);
  v42 = StateObject.wrappedValue.getter();
  v43 = static ObservableObject.environmentStore.getter();
  v44 = v58;
  sub_1000255CC(v17, v58, type metadata accessor for RunningCountdownView);
  v45 = (v44 + *(v59 + 36));
  *v45 = v43;
  v45[1] = v42;
  v46 = v65;
  sub_10002C7C4(v44, v65, &qword_100113FD8, &qword_1000D63D0);
  v47 = v70;
  v48 = v71;
  v49 = v69;
  sub_10002CFC4(v46, v69, &qword_100113FD8, &qword_1000D63D0);
  v51 = v62;
  v50 = v63;
  v53 = v60;
  v52 = v61;
  *v60 = v63;
  v53[1] = v51;
  *(v53 + 16) = v48;
  v53[3] = v64;
  v53[4] = v52;
  v53[5] = v57;
  v53[6] = 0;
  *(v53 + 56) = v47;
  v54 = sub_1000032D4(&qword_100113FE8, &qword_1000D1290);
  sub_10002CFC4(v49, v53 + *(v54 + 48), &qword_100113FD8, &qword_1000D63D0);
  sub_100025AFC(v50, v51, v48 & 1);

  sub_10002D02C(v46, &qword_100113FD8, &qword_1000D63D0);
  sub_10002D02C(v49, &qword_100113FD8, &qword_1000D63D0);
  sub_100025B0C(v50, v51, v48 & 1);
}

uint64_t sub_100004E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 25);
  *a1 = static VerticalAlignment.firstTextBaseline.getter();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v8 = sub_1000032D4(&qword_100113FD0, &qword_1000D1278);
  if (v7)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  return sub_100004758(v3, v4, v5, v9 | v6, (a1 + *(v8 + 44)));
}

uint64_t sub_100004EC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_1000032D4(&qword_100113FF0, &qword_1000D1298);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  static Font.Weight.medium.getter();
  v9 = enum case for Font.Design.rounded(_:);
  v10 = type metadata accessor for Font.Design();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v5, v9, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  v12 = static Font.system(size:weight:design:)();
  sub_10002D02C(v5, &qword_100113E08, &qword_1000D10F0);
  v13 = *(v1 + 72);
  v14 = *(v1 + 80);
  sub_100025B1C((v2 + 48), *(v2 + 72));
  v15 = (*(v14 + 56))(v13, v14);
  v16 = *(v1 + 72);
  v17 = *(v1 + 80);
  sub_100025B1C((v2 + 48), *(v2 + 72));
  v18 = (*(v17 + 80))(v16, v17);
  sub_100025B60(v2, v28);
  v19 = swift_allocObject();
  v20 = v28[3];
  *(v19 + 48) = v28[2];
  *(v19 + 64) = v20;
  *(v19 + 80) = v28[4];
  *(v19 + 96) = v29;
  v21 = v28[1];
  *(v19 + 16) = v28[0];
  *(v19 + 32) = v21;
  height = CGSizeZero.height;
  v23 = *(v6 + 36);
  v24 = enum case for BlendMode.plusLighter(_:);
  v25 = type metadata accessor for BlendMode();
  (*(*(v25 - 8) + 104))(&v8[v23], v24, v25);
  *v8 = 0x4049000000000000;
  *(v8 + 1) = v12;
  *(v8 + 2) = 0x6B72616D78;
  *(v8 + 3) = 0xE500000000000000;
  *(v8 + 4) = *&CGSizeZero.width;
  *(v8 + 5) = height;
  *(v8 + 6) = v15;
  *(v8 + 7) = v18;
  v8[64] = 1;
  *(v8 + 65) = v28[0];
  *(v8 + 17) = *(v28 + 3);
  *(v8 + 9) = sub_100025B98;
  *(v8 + 10) = v19;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100025BC8();
  View.accessibilityLabel(_:)();

  return sub_10002D02C(v8, &qword_100113FF0, &qword_1000D1298);
}

uint64_t sub_100005248()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for AlarmAlertPlatter(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000295C4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1000053A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin(v3);
  v56 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1000032D4(&qword_100114960, &qword_1000D1D28);
  __chkstk_darwin(v65);
  v6 = &v49 - v5;
  v66 = sub_1000032D4(&qword_100114968, &qword_1000D1D30);
  v60 = *(v66 - 8);
  __chkstk_darwin(v66);
  v57 = &v49 - v7;
  v61 = sub_1000032D4(&qword_100114970, &qword_1000D1D38);
  __chkstk_darwin(v61);
  v64 = &v49 - v8;
  v63 = type metadata accessor for CountdownPlatter(0);
  __chkstk_darwin(v63);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  __chkstk_darwin(v11 - 8);
  v55 = &v49 - v12;
  v13 = type metadata accessor for OpaqueAlarm(0);
  __chkstk_darwin(v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v54 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  v19 = type metadata accessor for AlarmPresentationState();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v2;
  sub_100025564(v2, v15, type metadata accessor for OpaqueAlarm);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100025A9C(v15, type metadata accessor for OpaqueAlarm);
  }

  else
  {
    v50 = v10;
    v23 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v51 = v22;
    v52 = v20;
    v24 = *(v20 + 32);
    v53 = v19;
    v24(v22, v15, v19);
    v25 = v54;
    (*(v54 + 32))(v18, &v15[v23], v16);
    v26 = v55;
    AlarmAttributes.metadata.getter();
    v27 = type metadata accessor for MTAlarmCustomContent();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      sub_10002D02C(v26, &unk_100118100, &qword_1000D1250);
    }

    else
    {
      MTAlarmCustomContent.type.getter();
      (*(v28 + 8))(v26, v27);
      v29 = AlarmType.rawValue.getter();
      if (v29 == AlarmType.rawValue.getter())
      {
        v30 = v25;
        v31 = v50;
        (*(v25 + 16))(v50, v18, v16);
        v32 = v63;
        v33 = v51;
        v34 = v52;
        v35 = v53;
        (*(v52 + 16))(v31 + *(v63 + 20), v51, v53);
        v36 = v62;
        sub_100005C80((v31 + v32[6]));
        v37 = *(v36 + *(type metadata accessor for AlarmAlertPlatter(0) + 24));
        *(v31 + v32[7]) = 0x4028000000000000;
        *(v31 + v32[8]) = v37;
        sub_100025564(v31, v64, type metadata accessor for CountdownPlatter);
        swift_storeEnumTagMultiPayload();
        sub_100025228(&qword_100114998, type metadata accessor for CountdownPlatter, &unk_1000D6860);
        v38 = sub_1000297DC();
        v68 = v65;
        v69 = v38;
        swift_getOpaqueTypeConformance2();
        _ConditionalContent<>.init(storage:)();
        sub_100025A9C(v31, type metadata accessor for CountdownPlatter);
        (*(v30 + 8))(v18, v16);
        return (*(v34 + 8))(v33, v35);
      }
    }

    (*(v25 + 8))(v18, v16);
    (*(v52 + 8))(v51, v53);
  }

  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v40 = sub_1000032D4(&qword_100114978, &qword_1000D1D40);
  sub_100005E8C(v62, &v6[*(v40 + 44)]);
  v41 = static Edge.Set.horizontal.getter();
  v42 = v65;
  v43 = &v6[*(v65 + 36)];
  *v43 = v41;
  *(v43 + 8) = 0u;
  *(v43 + 24) = 0u;
  v43[40] = 1;
  v44 = v56;
  static AccessibilityChildBehavior.contain.getter();
  v45 = sub_1000297DC();
  v46 = v57;
  View.accessibilityElement(children:)();
  (*(v58 + 8))(v44, v59);
  sub_10002D02C(v6, &qword_100114960, &qword_1000D1D28);
  v47 = v60;
  v48 = v66;
  (*(v60 + 16))(v64, v46, v66);
  swift_storeEnumTagMultiPayload();
  sub_100025228(&qword_100114998, type metadata accessor for CountdownPlatter, &unk_1000D6860);
  v68 = v42;
  v69 = v45;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v47 + 8))(v46, v48);
}

uint64_t sub_100005C40(uint64_t a1, char a2)
{
  result = type metadata accessor for AlarmAlertPlatter(0);
  if (*(a1 + *(result + 20)))
  {
    return dispatch thunk of ActivityScene.idleTimerDisabled.setter();
  }

  return result;
}

void *sub_100005C80@<X0>(void *a1@<X8>)
{
  if (sub_100005248())
  {
    v2 = objc_opt_self();
    v3 = [v2 mtOrange];
    Color.init(uiColor:)();
    v4 = Color.opacity(_:)();

    v5 = [v2 mtOrange];
    Color.init(uiColor:)();
    v6 = Color.opacity(_:)();

    static Color.white.getter();
    v7 = Color.opacity(_:)();

    static Color.white.getter();
    v8 = Color.opacity(_:)();

    a1[3] = &type metadata for LowLuminanceSessionUiConfig;
    a1[4] = &off_100103578;
  }

  else
  {
    type metadata accessor for CGColor(0);
    _CGColorInitTrampoline.init(_colorLiteralRed:green:blue:alpha:)();
    v4 = Color.init(_:)();
    v9 = [objc_opt_self() mtOrange];
    Color.init(uiColor:)();
    v6 = Color.opacity(_:)();

    v7 = static Color.white.getter();
    v10 = [objc_opt_self() systemExtraLightGrayColor];
    Color.init(uiColor:)();
    v8 = Color.opacity(_:)();

    a1[3] = &type metadata for TimerLockScreenSessionUiConfig;
    a1[4] = &off_100103508;
  }

  result = swift_allocObject();
  result[2] = v4;
  result[3] = v6;
  result[4] = v7;
  result[5] = v8;
  *a1 = result;
  return result;
}

uint64_t sub_100005E8C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = sub_1000032D4(&qword_1001149A0, &qword_1000D1D50);
  v4 = __chkstk_darwin(v3 - 8);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47 = &v40 - v6;
  v7 = type metadata accessor for AlarmAlertPlatter(0);
  v46 = *(v7 - 8);
  v45 = *(v46 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000032D4(&qword_1001149A8, &qword_1000D1D58);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  v16 = sub_1000032D4(&qword_1001149B0, &qword_1000D1D60);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  v44 = sub_1000032D4(&qword_1001149B8, &qword_1000D1D68);
  v41 = *(v44 - 8);
  v19 = v41;
  v20 = __chkstk_darwin(v44);
  v43 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v42 = &v40 - v22;
  *v18 = static VerticalAlignment.bottom.getter();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v23 = &v18[*(sub_1000032D4(&qword_1001149C0, &qword_1000D1D70) + 44)];
  sub_1000063FC(v15);
  sub_10002CFC4(v15, v13, &qword_1001149A8, &qword_1000D1D58);
  sub_10002CFC4(v13, v23, &qword_1001149A8, &qword_1000D1D58);
  v24 = v23 + *(sub_1000032D4(&qword_1001149C8, &qword_1000D1D78) + 48);
  *v24 = 0x4028000000000000;
  *(v24 + 8) = 0;
  sub_10002D02C(v15, &qword_1001149A8, &qword_1000D1D58);
  sub_10002D02C(v13, &qword_1001149A8, &qword_1000D1D58);
  v18[*(sub_1000032D4(&qword_1001149D0, &qword_1000D1D80) + 36)] = 0;
  static Color.black.getter();
  v25 = Color.opacity(_:)();

  v26 = static Edge.Set.all.getter();
  v27 = &v18[*(v16 + 36)];
  *v27 = v25;
  v27[8] = v26;
  sub_100025564(a1, v9, type metadata accessor for AlarmAlertPlatter);
  v28 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v29 = swift_allocObject();
  sub_1000255CC(v9, v29 + v28, type metadata accessor for AlarmAlertPlatter);
  sub_100029910();
  v30 = v42;
  View.onTapGesture(count:perform:)();

  sub_10002D02C(v18, &qword_1001149B0, &qword_1000D1D60);
  v31 = v47;
  sub_1000073CC(v47);
  v32 = *(v19 + 16);
  v34 = v43;
  v33 = v44;
  v32(v43, v30, v44);
  v35 = v48;
  sub_10002CFC4(v31, v48, &qword_1001149A0, &qword_1000D1D50);
  v36 = v49;
  v32(v49, v34, v33);
  v37 = sub_1000032D4(&qword_100114A18, &qword_1000D1DA0);
  sub_10002CFC4(v35, &v36[*(v37 + 48)], &qword_1001149A0, &qword_1000D1D50);
  sub_10002D02C(v31, &qword_1001149A0, &qword_1000D1D50);
  v38 = *(v41 + 8);
  v38(v30, v33);
  sub_10002D02C(v35, &qword_1001149A0, &qword_1000D1D50);
  return (v38)(v34, v33);
}

uint64_t sub_1000063FC@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v85 = sub_1000032D4(&qword_100114A48, &qword_1000D1DC8);
  __chkstk_darwin(v85);
  v86 = &v63 - v1;
  v80 = sub_1000032D4(&qword_100114A50, &qword_1000D1DD0);
  __chkstk_darwin(v80);
  v79 = (&v63 - v2);
  v84 = sub_1000032D4(&qword_100114A58, &qword_1000D1DD8);
  __chkstk_darwin(v84);
  v82 = &v63 - v3;
  v4 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  __chkstk_darwin(v4 - 8);
  v76 = &v63 - v5;
  v6 = type metadata accessor for AlarmPresentationState.Mode();
  v73 = *(v6 - 8);
  v74 = v6;
  __chkstk_darwin(v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for AlarmKitAlertLabelView(0);
  v9 = __chkstk_darwin(v81);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v63 - v12;
  v14 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v78 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v75 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v63 - v17;
  v19 = type metadata accessor for AlarmPresentationState();
  v77 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v63 - v23;
  v25 = type metadata accessor for OpaqueAlarm(0);
  __chkstk_darwin(v25);
  v27 = (&v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100025564(v83, v27, type metadata accessor for OpaqueAlarm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *v27;
      v30 = static Color.orange.getter();
      type metadata accessor for AlarmAlertAnimation();
      v31 = swift_allocObject();
      v32 = v29;
      v33 = v79;
      *v79 = v30;
      v33[1] = 0x4047800000000000;
      v33[2] = v31;
      v33[3] = v32;

      v34 = v32;
      swift_storeEnumTagMultiPayload();

      v35 = v34;
      sub_1000032D4(&qword_100114A70, &qword_1000D1DE0);
      sub_100025228(&qword_100113F68, type metadata accessor for AlarmKitAlertLabelView, &unk_1000D1BE8);
      sub_10002DAD8(&qword_100114A68, &qword_100114A70, &qword_1000D1DE0, &protocol conformance descriptor for TupleView<A>);
      v36 = v82;
      _ConditionalContent<>.init(storage:)();
      sub_10002CFC4(v36, v86, &qword_100114A58, &qword_1000D1DD8);
      swift_storeEnumTagMultiPayload();
      sub_100029BE4();
      _ConditionalContent<>.init(storage:)();

      return sub_10002D02C(v36, &qword_100114A58, &qword_1000D1DD8);
    }

    else
    {
      sub_100025A9C(v27, type metadata accessor for OpaqueAlarm);
      swift_storeEnumTagMultiPayload();
      sub_100029BE4();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v63 = v8;
    v69 = v11;
    v83 = v13;
    v38 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v39 = v77;
    v40 = *(v77 + 32);
    v67 = v77 + 32;
    v66 = v40;
    v40(v24, v27, v19);
    v41 = v78;
    v65 = *(v78 + 32);
    v65(v18, v27 + v38, v14);
    v42 = v75;
    (*(v41 + 16))(v75, v18, v14);
    v43 = *(v39 + 16);
    v72 = v19;
    v43(v22, v24, v19);
    v44 = AlarmPresentationState.alarmLabel.getter();
    v70 = v24;
    v71 = v18;
    v68 = v22;
    if (!v45)
    {
      v46 = v63;
      AlarmPresentationState.mode.getter();
      v47 = sub_10000AAEC(v46);
      v49 = v48;
      (*(v73 + 8))(v46, v74);
      v45 = v49;
      v44 = v47;
    }

    v50 = v76;
    v51 = v42;
    v52 = v69;
    *(v69 + 1) = v44;
    *(v52 + 16) = v45;
    *v52 = 0;
    *(v52 + 32) = AlarmAttributes.tintColor.getter();
    v53 = v14;
    AlarmAttributes.metadata.getter();
    v54 = type metadata accessor for MTAlarmCustomContent();
    v55 = *(v54 - 8);
    if ((*(v55 + 48))(v50, 1, v54) == 1)
    {
      sub_10002D02C(v50, &unk_100118100, &qword_1000D1250);
      v56 = 1;
    }

    else
    {
      MTAlarmCustomContent.type.getter();
      (*(v55 + 8))(v50, v54);
      v57 = AlarmType.rawValue.getter();
      v56 = v57 != AlarmType.rawValue.getter();
    }

    v58 = v83;
    v59 = v72;
    *(v52 + 24) = v56;
    v60 = v81;
    v61 = v52 + *(v81 + 32);
    v64 = v53;
    v65(v61, v51, v53);
    v66(v52 + *(v60 + 36), v68, v59);
    sub_1000255CC(v52, v58, type metadata accessor for AlarmKitAlertLabelView);
    sub_100025564(v58, v79, type metadata accessor for AlarmKitAlertLabelView);
    swift_storeEnumTagMultiPayload();
    sub_1000032D4(&qword_100114A70, &qword_1000D1DE0);
    sub_100025228(&qword_100113F68, type metadata accessor for AlarmKitAlertLabelView, &unk_1000D1BE8);
    sub_10002DAD8(&qword_100114A68, &qword_100114A70, &qword_1000D1DE0, &protocol conformance descriptor for TupleView<A>);
    v62 = v82;
    _ConditionalContent<>.init(storage:)();
    sub_10002CFC4(v62, v86, &qword_100114A58, &qword_1000D1DD8);
    swift_storeEnumTagMultiPayload();
    sub_100029BE4();
    _ConditionalContent<>.init(storage:)();
    sub_10002D02C(v62, &qword_100114A58, &qword_1000D1DD8);
    sub_100025A9C(v58, type metadata accessor for AlarmKitAlertLabelView);
    (*(v78 + 8))(v71, v64);
    return (*(v77 + 8))(v70, v59);
  }
}

uint64_t sub_100006E80()
{
  v1 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v4 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for OpaqueAlarm(0);
  __chkstk_darwin(v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100025564(v0, v13, type metadata accessor for OpaqueAlarm);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100025A9C(v13, type metadata accessor for OpaqueAlarm);
    goto LABEL_3;
  }

  v18 = sub_1000032D4(&unk_100115E00, &qword_1000D1D10);
  (*(v8 + 32))(v10, &v13[*(v18 + 48)], v7);
  AlarmAttributes.metadata.getter();
  v19 = type metadata accessor for MTAlarmCustomContent();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v6, 1, v19) == 1)
  {
    (*(v8 + 8))(v10, v7);
    sub_10002D02C(v6, &unk_100118100, &qword_1000D1250);
LABEL_17:
    v27 = type metadata accessor for AlarmPresentationState();
    return (*(*(v27 - 8) + 8))(v13, v27);
  }

  v23 = MTAlarmCustomContent.type.getter();
  if (v23 == 1)
  {
    (*(v8 + 8))(v10, v7);
    (*(v20 + 8))(v6, v19);
    v26 = type metadata accessor for AlarmPresentationState();
    (*(*(v26 - 8) + 8))(v13, v26);
    v14 = 4;
    goto LABEL_4;
  }

  if (v23)
  {
    (*(v8 + 8))(v10, v7);
    (*(v20 + 8))(v6, v19);
    goto LABEL_17;
  }

  v24 = MTAlarmCustomContent.isSleepAlarm.getter();
  (*(v8 + 8))(v10, v7);
  if (v24 != 2 && (v24 & 1) != 0)
  {
    (*(v20 + 8))(v6, v19);
    v25 = type metadata accessor for AlarmPresentationState();
    (*(*(v25 - 8) + 8))(v13, v25);
    v14 = 2;
    goto LABEL_4;
  }

  (*(v20 + 8))(v6, v19);
  v28 = type metadata accessor for AlarmPresentationState();
  (*(*(v28 - 8) + 8))(v13, v28);
LABEL_3:
  v14 = 1;
LABEL_4:
  v15 = [objc_opt_self() mtURLForSection:v14];
  if (v15)
  {
    v16 = v15;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v3, v17, 1, v21);
  type metadata accessor for MTSUtilities();
  dispatch thunk of static MTSUtilities.launchClockAppIfPossible(_:)();
  return sub_10002D02C(v3, &unk_100119A20, &qword_1000D1DC0);
}

uint64_t sub_1000073CC@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v33 = sub_1000032D4(&qword_100114A20, &qword_1000D1DA8);
  __chkstk_darwin(v33);
  v35 = &v27 - v2;
  v30 = sub_1000032D4(&qword_100114A28, &qword_1000D1DB0);
  __chkstk_darwin(v30);
  v4 = &v27 - v3;
  v34 = sub_1000032D4(&qword_100114A30, &qword_1000D1DB8);
  __chkstk_darwin(v34);
  v32 = &v27 - v5;
  v31 = type metadata accessor for AlarmKitPlatterControls(0);
  __chkstk_darwin(v31);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v27 - v9;
  v11 = type metadata accessor for AlarmPresentationState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OpaqueAlarm(0);
  __chkstk_darwin(v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v1;
  sub_100025564(v1, v17, type metadata accessor for OpaqueAlarm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *v17;
      if (qword_100113620 != -1)
      {
        swift_once();
      }

      v20 = qword_10011F4F8;
      v37[4] = type metadata accessor for AlarmCoordinator();
      v37[5] = &off_1001023C0;
      v37[1] = v20;

      sub_100005C80(v38);
      v37[0] = v19;
      sub_100025CA8(v37, v4);
      swift_storeEnumTagMultiPayload();
      sub_100025228(&qword_100113F70, type metadata accessor for AlarmKitPlatterControls, &unk_1000D1B98);
      sub_100029B60();
      v21 = v32;
      _ConditionalContent<>.init(storage:)();
      sub_10002CFC4(v21, v35, &qword_100114A30, &qword_1000D1DB8);
      swift_storeEnumTagMultiPayload();
      sub_100029AAC(&qword_100114A38, &qword_100114A30, &qword_1000D1DB8, sub_100029B60);
      _ConditionalContent<>.init(storage:)();
      sub_10002D02C(v21, &qword_100114A30, &qword_1000D1DB8);
      return sub_100029BB4(v37);
    }

    else
    {
      sub_100025A9C(v17, type metadata accessor for OpaqueAlarm);
      swift_storeEnumTagMultiPayload();
      sub_100029AAC(&qword_100114A38, &qword_100114A30, &qword_1000D1DB8, sub_100029B60);
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    v23 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v12 + 32))(v14, v17, v11);
    v24 = v28;
    (*(v8 + 32))(v10, &v17[v23], v28);
    (*(v8 + 16))(v7, v10, v24);
    v25 = v31;
    (*(v12 + 16))(&v7[*(v31 + 20)], v14, v11);
    v7[*(v25 + 24)] = *(v29 + *(type metadata accessor for AlarmAlertPlatter(0) + 24));
    sub_100025564(v7, v4, type metadata accessor for AlarmKitPlatterControls);
    swift_storeEnumTagMultiPayload();
    sub_100025228(&qword_100113F70, type metadata accessor for AlarmKitPlatterControls, &unk_1000D1B98);
    sub_100029B60();
    v26 = v32;
    _ConditionalContent<>.init(storage:)();
    sub_10002CFC4(v26, v35, &qword_100114A30, &qword_1000D1DB8);
    swift_storeEnumTagMultiPayload();
    sub_100029AAC(&qword_100114A38, &qword_100114A30, &qword_1000D1DB8, sub_100029B60);
    _ConditionalContent<>.init(storage:)();
    sub_10002D02C(v26, &qword_100114A30, &qword_1000D1DB8);
    sub_100025A9C(v7, type metadata accessor for AlarmKitPlatterControls);
    (*(v8 + 8))(v10, v28);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_100007B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1000053A4(a2);
  sub_100025564(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAlertPlatter);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1000255CC(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AlarmAlertPlatter);
  v8 = (a2 + *(sub_1000032D4(&qword_100114950, &qword_1000D1D18) + 36));
  *v8 = sub_1000295D0;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;
  sub_100025564(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAlertPlatter);
  v9 = swift_allocObject();
  sub_1000255CC(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6, type metadata accessor for AlarmAlertPlatter);
  result = sub_1000032D4(&qword_100114958, &qword_1000D1D20);
  v11 = (a2 + *(result + 36));
  *v11 = 0;
  v11[1] = 0;
  v11[2] = sub_100029770;
  v11[3] = v9;
  return result;
}

uint64_t sub_100007CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v57 = sub_1000032D4(&qword_100113FF0, &qword_1000D1298);
  __chkstk_darwin(v57);
  v4 = &v53 - v3;
  v5 = sub_1000032D4(&qword_100114010, &qword_1000D6310);
  v6 = __chkstk_darwin(v5 - 8);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = &v53 - v8;
  v9 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v53 - v10;
  v12 = sub_1000032D4(&qword_100114018, &qword_1000D12B0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v53 - v14;
  v16 = sub_1000032D4(&qword_100114020, &qword_1000D12B8);
  v17 = __chkstk_darwin(v16 - 8);
  v56 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v53 - v19;
  if ([*a1 allowsSnooze])
  {
    static Font.Weight.semibold.getter();
    v55 = v12;
    v21 = type metadata accessor for Font.Design();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    v54 = static Font.system(size:weight:design:)();
    sub_10002D02C(v11, &qword_100113E08, &qword_1000D10F0);
    v22 = *(a1 + 72);
    v23 = *(a1 + 80);
    sub_100025B1C((a1 + 48), v22);
    v24 = (*(v23 + 8))(v22, v23);
    v26 = *(a1 + 72);
    v25 = *(a1 + 80);
    sub_100025B1C((a1 + 48), v26);
    v27 = (*(v25 + 32))(v26, v25);
    sub_100025CA8(a1, &v68);
    v28 = swift_allocObject();
    v29 = v71;
    *(v28 + 48) = v70;
    *(v28 + 64) = v29;
    *(v28 + 80) = v72;
    *(v28 + 96) = v73;
    v30 = v69;
    *(v28 + 16) = v68;
    *(v28 + 32) = v30;
    width = CGSizeZero.width;
    height = CGSizeZero.height;
    *&v61 = 0x4049000000000000;
    *(&v61 + 1) = v54;
    *&v62 = 8026746;
    *(&v62 + 1) = 0xE300000000000000;
    *&v63 = CGSizeZero.width;
    *(&v63 + 1) = height;
    *&v64 = v24;
    *(&v64 + 1) = v27;
    LOBYTE(v65) = 1;
    *(&v65 + 1) = *v67;
    DWORD1(v65) = *&v67[3];
    *(&v65 + 1) = sub_100025D5C;
    v66 = v28;
    LocalizedStringKey.init(stringLiteral:)();
    sub_100025C54();
    View.accessibilityLabel(_:)();

    v70 = v63;
    v71 = v64;
    v72 = v65;
    v73 = v66;
    v68 = v61;
    v69 = v62;
    sub_100025D8C(&v68);
    sub_10002C7C4(v15, v20, &qword_100114018, &qword_1000D12B0);
    (*(v13 + 56))(v20, 0, 1, v55);
  }

  else
  {
    (*(v13 + 56))(v20, 1, 1, v12);
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  static Font.Weight.semibold.getter();
  v33 = type metadata accessor for Font.Design();
  (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
  v34 = static Font.system(size:weight:design:)();
  sub_10002D02C(v11, &qword_100113E08, &qword_1000D10F0);
  v35 = *(a1 + 72);
  v36 = *(a1 + 80);
  sub_100025B1C((a1 + 48), v35);
  v37 = (*(v36 + 56))(v35, v36);
  v38 = *(a1 + 72);
  v39 = *(a1 + 80);
  sub_100025B1C((a1 + 48), v38);
  v40 = (*(v39 + 80))(v38, v39);
  sub_100025CA8(a1, &v68);
  v41 = swift_allocObject();
  v42 = v71;
  *(v41 + 48) = v70;
  *(v41 + 64) = v42;
  *(v41 + 80) = v72;
  *(v41 + 96) = v73;
  v43 = v69;
  *(v41 + 16) = v68;
  *(v41 + 32) = v43;
  v44 = *(v57 + 36);
  v45 = enum case for BlendMode.plusLighter(_:);
  v46 = type metadata accessor for BlendMode();
  (*(*(v46 - 8) + 104))(&v4[v44], v45, v46);
  *v4 = 0x4049000000000000;
  *(v4 + 1) = v34;
  *(v4 + 2) = 0x6B72616D78;
  *(v4 + 3) = 0xE500000000000000;
  *(v4 + 4) = width;
  *(v4 + 5) = height;
  *(v4 + 6) = v37;
  *(v4 + 7) = v40;
  v4[64] = 1;
  *(v4 + 65) = v68;
  *(v4 + 17) = *(&v68 + 3);
  *(v4 + 9) = sub_100025CE4;
  *(v4 + 10) = v41;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100025BC8();
  v47 = v58;
  View.accessibilityLabel(_:)();

  sub_10002D02C(v4, &qword_100113FF0, &qword_1000D1298);
  v48 = v56;
  sub_10002CFC4(v20, v56, &qword_100114020, &qword_1000D12B8);
  v49 = v59;
  sub_10002CFC4(v47, v59, &qword_100114010, &qword_1000D6310);
  v50 = v60;
  sub_10002CFC4(v48, v60, &qword_100114020, &qword_1000D12B8);
  v51 = sub_1000032D4(&qword_100114028, &qword_1000D12C0);
  sub_10002CFC4(v49, v50 + *(v51 + 48), &qword_100114010, &qword_1000D6310);
  sub_10002D02C(v47, &qword_100114010, &qword_1000D6310);
  sub_10002D02C(v20, &qword_100114020, &qword_1000D12B8);
  sub_10002D02C(v49, &qword_100114010, &qword_1000D6310);
  return sub_10002D02C(v48, &qword_100114020, &qword_1000D12B8);
}

uint64_t sub_100008544(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  sub_100025B1C((a1 + 8), *(a1 + 32));
  v4 = [*a1 alarmIDString];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  a2(v5, v7);
}

uint64_t sub_1000085DC@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_1000032D4(&qword_100114008, &unk_1000D12A0);
  return sub_100007CE4(v2, a2 + *(v4 + 44));
}

uint64_t sub_100008630(void *a1)
{
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000032D4(&qword_100114030, &qword_1000D12C8);
  __chkstk_darwin(v6);
  v8 = v15 - v7;
  *v8 = static VerticalAlignment.lastTextBaseline.getter();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v9 = sub_1000032D4(&qword_100114038, &qword_1000D12D0);
  sub_100008844(a1, &v8[*(v9 + 44)]);
  KeyPath = swift_getKeyPath();
  v11 = &v8[*(sub_1000032D4(&qword_100114040, &qword_1000D1308) + 36)];
  *v11 = KeyPath;
  *(v11 + 1) = 1;
  v11[16] = 0;
  static Alignment.bottomLeading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = &v8[*(v6 + 36)];
  v13 = v15[1];
  *v12 = v15[0];
  *(v12 + 1) = v13;
  *(v12 + 2) = v15[2];
  static AccessibilityChildBehavior.combine.getter();
  sub_100025E44();
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v2);
  return sub_10002D02C(v8, &qword_100114030, &qword_1000D12C8);
}

uint64_t sub_100008844@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = type metadata accessor for Text.DateStyle();
  __chkstk_darwin(v3 - 8);
  v81 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  __chkstk_darwin(v5 - 8);
  v78 = &v74 - v6;
  v7 = type metadata accessor for Date();
  v76 = *(v7 - 8);
  v77 = v7;
  __chkstk_darwin(v7);
  v80 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1000032D4(&qword_100114078, &qword_1000D1320);
  v9 = __chkstk_darwin(v74);
  v82 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v74 - v11;
  v79 = a1;
  v13 = [a1 displayTitle];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v84 = v14;
  v85 = v16;
  sub_100025FB4();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  if (qword_100113680 != -1)
  {
    swift_once();
  }

  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;
  sub_100025B0C(v17, v19, v21 & 1);

  v75 = objc_opt_self();
  v27 = [v75 mtOrange];
  Color.init(uiColor:)();
  v28 = Text.foregroundColor(_:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_100025B0C(v22, v24, v26 & 1);

  KeyPath = swift_getKeyPath();
  v36 = &v12[*(sub_1000032D4(&qword_100114080, &qword_1000D1358) + 36)];
  v37 = *(sub_1000032D4(&qword_100114088, &qword_1000D1360) + 28);
  v38 = enum case for Text.TruncationMode.tail(_:);
  v39 = type metadata accessor for Text.TruncationMode();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = swift_getKeyPath();
  *v12 = v28;
  *(v12 + 1) = v30;
  v12[16] = v32 & 1;
  *(v12 + 3) = v34;
  *(v12 + 4) = KeyPath;
  *(v12 + 5) = 0x3FE6666666666666;
  *&v12[*(v74 + 36)] = 256;
  type metadata accessor for Utilities();
  v40 = v79;
  v41 = [v79 hour];
  v42 = [v40 minute];
  v43 = v78;
  sub_10008A33C(v41, v42, v78);
  v44 = v76;
  v45 = v77;
  v46 = *(v76 + 48);
  if (v46(v43, 1, v77) == 1)
  {
    Date.init()();
    if (v46(v43, 1, v45) != 1)
    {
      sub_10002D02C(v43, &qword_100115E40, &unk_1000D1280);
    }
  }

  else
  {
    (*(v44 + 32))(v80, v43, v45);
  }

  static Text.DateStyle.time.getter();
  v47 = Text.init(_:style:)();
  v49 = v48;
  v51 = v50;
  if (qword_100113688 != -1)
  {
    swift_once();
  }

  v52 = Text.font(_:)();
  v54 = v53;
  v56 = v55;
  sub_100025B0C(v47, v49, v51 & 1);

  v57 = [v75 mtOrange];
  Color.init(uiColor:)();
  Color.opacity(_:)();

  v58 = Text.foregroundColor(_:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  sub_100025B0C(v52, v54, v56 & 1);

  v65 = swift_getKeyPath();
  v66 = v12;
  v67 = v12;
  v68 = v82;
  sub_10002CFC4(v67, v82, &qword_100114078, &qword_1000D1320);
  v69 = v83;
  sub_10002CFC4(v68, v83, &qword_100114078, &qword_1000D1320);
  v70 = sub_1000032D4(&qword_100114090, &qword_1000D1398);
  v71 = v69 + *(v70 + 48);
  *v71 = v58;
  *(v71 + 8) = v60;
  *(v71 + 16) = v62 & 1;
  *(v71 + 24) = v64;
  *(v71 + 32) = v65;
  *(v71 + 40) = xmmword_1000D08A0;
  v72 = v69 + *(v70 + 64);
  *v72 = 0x4014000000000000;
  *(v72 + 8) = 0;
  sub_100025AFC(v58, v60, v62 & 1);

  sub_10002D02C(v66, &qword_100114078, &qword_1000D1320);
  sub_100025B0C(v58, v60, v62 & 1);

  return sub_10002D02C(v68, &qword_100114078, &qword_1000D1320);
}

uint64_t sub_100008F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a4;
  v61 = a5;
  v8 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v52 - v9;
  v11 = sub_1000032D4(&qword_100113E10, &qword_1000D10F8);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = sub_1000032D4(&qword_100113E18, &qword_1000D1100);
  __chkstk_darwin(v14);
  v60 = &v52 - v15;
  v16 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v59 = &v52 - v18;
  v57 = sub_1000032D4(&qword_100113E20, &qword_1000D1108);
  __chkstk_darwin(v57);
  v20 = (&v52 - v19);
  v21 = sub_1000032D4(&qword_100113E28, &qword_1000D1110);
  v22 = __chkstk_darwin(v21);
  v24 = &v52 - v23;
  v63 = v14;
  v64 = v11;
  v62 = v22;
  if (a3)
  {
    *&v67 = a1;
    *(&v67 + 1) = a2;
    v56 = v24;
    swift_retain_n();
    sub_1000032D4(&qword_100113E30, &qword_1000D1118);
    State.wrappedValue.getter();
    v25 = v17;
    v53 = v17;
    v26 = v66;
    swift_getKeyPath();
    v55 = a3;
    *&v67 = v26;
    v54 = sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel, &unk_1000D5AC0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
    swift_beginAccess();
    v28 = type metadata accessor for AlarmKitCompressedIcon.TimerAnimationRepresentable(0);
    v29 = v28[5];
    v30 = type metadata accessor for AlarmPresentationState();
    (*(*(v30 - 8) + 16))(v20 + v29, v26 + v27, v30);

    v52 = a1;
    *&v67 = a1;
    *(&v67 + 1) = a2;
    State.wrappedValue.getter();
    v31 = *(v25 + 16);
    v31(v20 + v28[6], v65 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v16);

    *&v67 = a1;
    *(&v67 + 1) = a2;
    State.wrappedValue.getter();
    v32 = v65;
    swift_getKeyPath();
    *&v67 = v32;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = *(v32 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__activeApertureMode);

    *v20 = v55;
    *(v20 + v28[7]) = v33;
    *(v20 + v28[8]) = v58;
    *&v67 = v52;
    *(&v67 + 1) = a2;
    State.wrappedValue.getter();
    v34 = v59;
    v31(v59, v65 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v16);

    v35 = AlarmAttributes.tintColor.getter();
    (*(v53 + 8))(v34, v16);
    *(v20 + *(sub_1000032D4(&qword_100113E90, &qword_1000D1170) + 36)) = v35;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v36 = (v20 + *(v57 + 36));
    v37 = v68;
    *v36 = v67;
    v36[1] = v37;
    v36[2] = v69;
    sub_1000250B4();
    v38 = v56;
    View.accessibilityHidden(_:)();
    sub_10002D02C(v20, &qword_100113E20, &qword_1000D1108);
    v39 = &qword_100113E28;
    v40 = &qword_1000D1110;
    sub_10002CFC4(v38, v60, &qword_100113E28, &qword_1000D1110);
    swift_storeEnumTagMultiPayload();
    sub_100026648(&qword_100113E78, &qword_100113E28, &qword_1000D1110, sub_1000250B4);
    sub_100025290();
    _ConditionalContent<>.init(storage:)();

    v41 = v38;
  }

  else
  {
    v58 = v13;
    v42 = v59;
    v43 = v17;
    if (qword_100113700 != -1)
    {
      swift_once();
    }

    v44 = qword_10011F738;
    *&v67 = a1;
    *(&v67 + 1) = a2;

    sub_1000032D4(&qword_100113E30, &qword_1000D1118);
    State.wrappedValue.getter();
    v45 = v43;
    (*(v43 + 16))(v42, v66 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v16);

    v46 = AlarmAttributes.tintColor.getter();
    (*(v45 + 8))(v42, v16);
    v47 = type metadata accessor for Font.Design();
    (*(*(v47 - 8) + 56))(v10, 1, 1, v47);
    v48 = static Font.system(size:weight:design:)();
    sub_10002D02C(v10, &qword_100113E08, &qword_1000D10F0);
    KeyPath = swift_getKeyPath();
    *&v67 = v44;
    *(&v67 + 1) = v46;
    *&v68 = KeyPath;
    *(&v68 + 1) = v48;
    sub_1000032D4(&qword_100113E38, &qword_1000D1150);
    sub_100024F44();
    v50 = v58;
    View.accessibilityHidden(_:)();

    v39 = &qword_100113E10;
    v40 = &qword_1000D10F8;
    sub_10002CFC4(v50, v60, &qword_100113E10, &qword_1000D10F8);
    swift_storeEnumTagMultiPayload();
    sub_100026648(&qword_100113E78, &qword_100113E28, &qword_1000D1110, sub_1000250B4);
    sub_100025290();
    _ConditionalContent<>.init(storage:)();
    v41 = v50;
  }

  return sub_10002D02C(v41, v39, v40);
}

id sub_1000097B4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = *v2;
  result = sub_1000BE460(0);
  if (result)
  {
    v10 = result;
    v11 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v12 = *(a2 + 20);
    v13 = type metadata accessor for AlarmPresentationState();
    (*(*(v13 - 8) + 16))(v7, &v4[v12], v13);
    v14 = *(a2 + 24);
    v15 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v15 - 8) + 16))(&v7[v11], &v4[v14], v15);
    v16 = type metadata accessor for OpaqueAlarm(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
    v17 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
    swift_beginAccess();
    sub_10002B138(v7, v8 + v17);
    swift_endAccess();
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000099E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100025228(&qword_1001148C0, type metadata accessor for AlarmKitCompressedIcon.TimerAnimationRepresentable, &unk_1000D1978);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100009A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100025228(&qword_1001148C0, type metadata accessor for AlarmKitCompressedIcon.TimerAnimationRepresentable, &unk_1000D1978);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100009B10(uint64_t a1)
{
  sub_100025228(&qword_1001148C0, type metadata accessor for AlarmKitCompressedIcon.TimerAnimationRepresentable, &unk_1000D1978);
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_100009B74(uint64_t a1@<X8>)
{
  v96 = a1;
  v76 = type metadata accessor for Locale();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for AlarmPresentationState.Mode.Paused();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for TimerRunningCompressedTrailingView(0);
  __chkstk_darwin(v87);
  v83 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for AlarmPresentationState.Mode.Countdown();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v84 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1000032D4(&qword_100113EB8, &qword_1000D11C8);
  __chkstk_darwin(v93);
  v95 = (&v73 - v6);
  v85 = sub_1000032D4(&qword_100113EC0, &qword_1000D11D0);
  __chkstk_darwin(v85);
  v8 = (&v73 - v7);
  v94 = sub_1000032D4(&qword_100113EC8, &qword_1000D11D8);
  __chkstk_darwin(v94);
  v86 = &v73 - v9;
  v92 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v73 - v10;
  v11 = type metadata accessor for AlarmPresentationState.Mode();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AlarmPresentationState();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v1;
  v19 = v1[1];
  *&v88 = *v1;
  *&v101 = v88;
  *(&v101 + 1) = v19;
  *(&v88 + 1) = v19;
  v89 = sub_1000032D4(&qword_100113E30, &qword_1000D1118);
  State.wrappedValue.getter();
  v20 = v98;
  swift_getKeyPath();
  *&v101 = v20;
  sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel, &unk_1000D5AC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  (*(v16 + 16))(v18, v20 + v21, v15);

  AlarmPresentationState.mode.getter();
  (*(v16 + 8))(v18, v15);
  v22 = *(v12 + 88);
  v97 = v11;
  v23 = v22(v14, v11);
  if (v23 == enum case for AlarmPresentationState.Mode.alert(_:))
  {
    if (qword_100113700 != -1)
    {
      swift_once();
    }

    v24 = qword_10011F738;
    v101 = v88;

    State.wrappedValue.getter();
    v25 = v91;
    v26 = v90;
    v27 = v92;
    (*(v91 + 16))(v90, v98 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v92);

    v28 = AlarmAttributes.tintColor.getter();
    (*(v25 + 8))(v26, v27);
    *v8 = v24;
    v8[1] = v28;
    swift_storeEnumTagMultiPayload();

    sub_1000032D4(&qword_100113E50, &qword_1000D1158);
    sub_100024FFC();
    sub_100025228(&qword_100113EE8, type metadata accessor for TimerRunningCompressedTrailingView, &unk_1000D60B4);
    v29 = v86;
    _ConditionalContent<>.init(storage:)();
    sub_10002CFC4(v29, v95, &qword_100113EC8, &qword_1000D11D8);
    swift_storeEnumTagMultiPayload();
    sub_1000032D4(&qword_100113ED8, &qword_1000D11E0);
    sub_1000253D4();
    sub_100025490();
    _ConditionalContent<>.init(storage:)();

    sub_10002D02C(v29, &qword_100113EC8, &qword_1000D11D8);
    goto LABEL_5;
  }

  if (v23 == enum case for AlarmPresentationState.Mode.countdown(_:))
  {
    (*(v12 + 96))(v14, v97);
    v30 = v81;
    v31 = v14;
    v32 = v82;
    (*(v81 + 32))(v84, v31, v82);
    v33 = v87;
    v34 = v83;
    AlarmPresentationState.Mode.Countdown.fireDate.getter();
    v101 = v88;
    State.wrappedValue.getter();
    v35 = v91;
    v36 = v90;
    v37 = v92;
    (*(v91 + 16))(v90, v98 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v92);

    v38 = AlarmAttributes.tintColor.getter();
    (*(v35 + 8))(v36, v37);
    v39 = v80;
    Strong = swift_unknownObjectWeakLoadStrong();
    v41 = v39[3];
    *(v34 + *(v33 + 24)) = v38;
    v42 = swift_allocObject();
    *(v42 + 16) = Strong;
    *(v42 + 24) = v41;
    *v34 = sub_10002555C;
    *(v34 + 8) = v42;
    *(v34 + 16) = 0;
    sub_100025564(v34, v8, type metadata accessor for TimerRunningCompressedTrailingView);
    swift_storeEnumTagMultiPayload();
    sub_1000032D4(&qword_100113E50, &qword_1000D1158);
    sub_100024FFC();
    sub_100025228(&qword_100113EE8, type metadata accessor for TimerRunningCompressedTrailingView, &unk_1000D60B4);
    v43 = v86;
    _ConditionalContent<>.init(storage:)();
    sub_10002CFC4(v43, v95, &qword_100113EC8, &qword_1000D11D8);
    swift_storeEnumTagMultiPayload();
    sub_1000032D4(&qword_100113ED8, &qword_1000D11E0);
    sub_1000253D4();
    sub_100025490();
    _ConditionalContent<>.init(storage:)();
    sub_10002D02C(v43, &qword_100113EC8, &qword_1000D11D8);
    sub_100025A9C(v34, type metadata accessor for TimerRunningCompressedTrailingView);
    (*(v30 + 8))(v84, v32);
    return;
  }

  if (v23 != enum case for AlarmPresentationState.Mode.paused(_:))
  {
    v98 = 0u;
    v99 = 0u;
    v100 = 1;
    sub_100025380();
    _ConditionalContent<>.init(storage:)();
    v60 = v103;
    v61 = v102;
    v62 = v95;
    *v95 = v101;
    v62[1] = v61;
    *(v62 + 32) = v60;
    swift_storeEnumTagMultiPayload();
    sub_1000032D4(&qword_100113ED8, &qword_1000D11E0);
    sub_1000253D4();
    sub_100025490();
    _ConditionalContent<>.init(storage:)();
LABEL_5:
    (*(v12 + 8))(v14, v97);
    return;
  }

  (*(v12 + 96))(v14, v97);
  v44 = v78;
  v45 = v77;
  v46 = v79;
  (*(v78 + 32))(v77, v14, v79);
  AlarmPresentationState.Mode.Paused.totalCountdownDuration.getter();
  v48 = v47;
  AlarmPresentationState.Mode.Paused.previouslyElapsedDuration.getter();
  v50 = sub_10002551C(v48 - v49);
  if (v50 > 1.0)
  {
    v51 = v50;
  }

  else
  {
    v51 = 1.0;
  }

  v52 = v74;
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v54 = (*(v75 + 8))(v52, v76);
  *v54.i64 = v51;
  v55 = sub_1000022A8(0, 0, 1, 1, 0, 0, 0, isa, v54);

  if (v55)
  {
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    if (v51 <= 36000.0)
    {
      if (v51 <= 600.0)
      {
        goto LABEL_24;
      }

      if (qword_100113648 != -1)
      {
        swift_once();
      }

      v59 = [qword_10011F520 stringFromTimeInterval:v51];
      if (!v59)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (qword_100113640 != -1)
      {
        swift_once();
      }

      v59 = [qword_10011F518 stringFromTimeInterval:v51];
      if (!v59)
      {
        goto LABEL_24;
      }
    }

    v63 = v59;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v58 = v65;
LABEL_24:
    v101 = v88;
    State.wrappedValue.getter();
    v66 = v91;
    v67 = v90;
    v68 = v92;
    (*(v91 + 16))(v90, v98 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v92);

    v69 = AlarmAttributes.tintColor.getter();
    (*(v66 + 8))(v67, v68);
    *&v98 = v51;
    *(&v98 + 1) = v56;
    *&v99 = v58;
    *(&v99 + 1) = v69;
    v100 = 0;
    sub_100025380();

    _ConditionalContent<>.init(storage:)();
    v70 = v103;
    v71 = v102;
    v72 = v95;
    *v95 = v101;
    v72[1] = v71;
    *(v72 + 32) = v70;
    swift_storeEnumTagMultiPayload();
    sub_1000032D4(&qword_100113ED8, &qword_1000D11E0);
    sub_1000253D4();
    sub_100025490();
    _ConditionalContent<>.init(storage:)();

    (*(v44 + 8))(v45, v46);
    return;
  }

  __break(1u);
}

uint64_t sub_10000AAEC(uint64_t a1)
{
  v61 = a1;
  v1 = sub_1000032D4(&qword_100113FB8, &qword_1000D1258);
  __chkstk_darwin(v1 - 8);
  v51 = &v49 - v2;
  v3 = sub_1000032D4(&unk_100115DF0, &qword_1000D1260);
  __chkstk_darwin(v3 - 8);
  v53 = &v49 - v4;
  v5 = sub_1000032D4(&qword_100113FC0, &qword_1000D1268);
  v6 = __chkstk_darwin(v5 - 8);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v49 - v8;
  v9 = type metadata accessor for LocalizedStringResource();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = __chkstk_darwin(v9);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v54 = &v49 - v13;
  __chkstk_darwin(v12);
  v14 = type metadata accessor for AlarmPresentation.Alert();
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AlarmPresentation();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v49 - v23;
  __chkstk_darwin(v22);
  v26 = &v49 - v25;
  v27 = type metadata accessor for AlarmPresentationState.Mode();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v30, v61, v27);
  v60 = v28;
  v61 = v27;
  v31 = (*(v28 + 88))(v30, v27);
  if (v31 == enum case for AlarmPresentationState.Mode.alert(_:))
  {
    sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    AlarmAttributes.presentation.getter();
    AlarmPresentation.alert.getter();
    (*(v18 + 8))(v26, v17);
    AlarmPresentation.Alert.title.getter();
    (*(v58 + 8))(v16, v59);
LABEL_14:
    v44 = String.init(localized:)();
    goto LABEL_15;
  }

  if (v31 == enum case for AlarmPresentationState.Mode.countdown(_:))
  {
    sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    AlarmAttributes.presentation.getter();
    v32 = v53;
    AlarmPresentation.countdown.getter();
    (*(v18 + 8))(v24, v17);
    v33 = type metadata accessor for AlarmPresentation.Countdown();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v32, 1, v33) != 1)
    {
      v41 = v55;
      AlarmPresentation.Countdown.title.getter();
      (*(v34 + 8))(v32, v33);
      v43 = v56;
      v42 = v57;
      (*(v56 + 56))(v41, 0, 1, v57);
      (*(v43 + 32))(v54, v41, v42);
      goto LABEL_14;
    }

    sub_10002D02C(v32, &unk_100115DF0, &qword_1000D1260);
    v36 = v55;
    v35 = v56;
    v37 = v57;
    (*(v56 + 56))(v55, 1, 1, v57);
LABEL_9:
    LocalizedStringResource.init(stringLiteral:)();
    if ((*(v35 + 48))(v36, 1, v37) != 1)
    {
      sub_10002D02C(v36, &qword_100113FC0, &qword_1000D1268);
    }

    goto LABEL_14;
  }

  if (v31 == enum case for AlarmPresentationState.Mode.paused(_:))
  {
    sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    AlarmAttributes.presentation.getter();
    v38 = v51;
    AlarmPresentation.paused.getter();
    (*(v18 + 8))(v21, v17);
    v39 = type metadata accessor for AlarmPresentation.Paused();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v38, 1, v39) != 1)
    {
      v45 = v52;
      AlarmPresentation.Paused.title.getter();
      (*(v40 + 8))(v38, v39);
      v47 = v56;
      v46 = v57;
      (*(v56 + 56))(v45, 0, 1, v57);
      (*(v47 + 32))(v50, v45, v46);
      goto LABEL_14;
    }

    sub_10002D02C(v38, &qword_100113FB8, &qword_1000D1258);
    v35 = v56;
    v37 = v57;
    v36 = v52;
    (*(v56 + 56))(v52, 1, 1, v57);
    goto LABEL_9;
  }

  v44 = 0;
LABEL_15:
  (*(v60 + 8))(v30, v61);
  return v44;
}

uint64_t sub_10000B2C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000032D4(&qword_1001148D0, &qword_1000D1C90);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  if (*(a1 + 24) == 1)
  {
    v10 = *(a1 + 32);
    type metadata accessor for AlarmAlertAnimation();
    v11 = swift_allocObject();
    swift_retain_n();

    v12 = 0x4047800000000000;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v11 = 0;
  }

  *v9 = static VerticalAlignment.firstTextBaseline.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v13 = sub_1000032D4(&qword_1001148D8, &qword_1000D1C98);
  sub_10000B4A0(a1, &v9[*(v13 + 44)]);
  sub_10002CFC4(v9, v7, &qword_1001148D0, &qword_1000D1C90);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v11;
  v14 = sub_1000032D4(&qword_1001148E0, &qword_1000D1CA0);
  sub_10002CFC4(v7, a2 + *(v14 + 48), &qword_1001148D0, &qword_1000D1C90);
  sub_100029410(v10, v12, v11);
  sub_100029450(v10, v12, v11);
  sub_10002D02C(v9, &qword_1001148D0, &qword_1000D1C90);
  sub_10002D02C(v7, &qword_1001148D0, &qword_1000D1C90);
  return sub_100029450(v10, v12, v11);
}

uint64_t sub_10000B4A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v88 = type metadata accessor for AlarmKitAlertSecondaryLabel(0);
  __chkstk_darwin(v88);
  v92 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1000032D4(&qword_1001148E8, &qword_1000D1CA8);
  v4 = __chkstk_darwin(v90);
  v94 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v91 = &v79 - v7;
  __chkstk_darwin(v6);
  v93 = &v79 - v8;
  v79 = sub_1000032D4(&qword_1001148F0, &qword_1000D1CB0);
  __chkstk_darwin(v79);
  v10 = &v79 - v9;
  v80 = sub_1000032D4(&qword_1001148F8, &qword_1000D1CB8);
  __chkstk_darwin(v80);
  v83 = &v79 - v11;
  v82 = sub_1000032D4(&qword_100114900, &qword_1000D1CC0);
  __chkstk_darwin(v82);
  v85 = &v79 - v12;
  v84 = sub_1000032D4(&qword_100114908, &qword_1000D1CC8);
  v13 = __chkstk_darwin(v84);
  v87 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v81 = &v79 - v16;
  __chkstk_darwin(v15);
  v86 = &v79 - v17;
  v18 = a1[2];
  *&v96 = a1[1];
  *(&v96 + 1) = v18;
  sub_100025FB4();

  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  v24 = *a1;
  v89 = a1;
  if (!v24)
  {
    if (*(a1 + 24) == 1)
    {
      if (qword_100113680 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_100113698 == -1)
    {
LABEL_6:

      goto LABEL_7;
    }

    swift_once();
    goto LABEL_6;
  }

LABEL_7:

  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;
  sub_100025B0C(v19, v21, v23 & 1);

  v30 = v89;
  v31 = Text.foregroundColor(_:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_100025B0C(v25, v27, v29 & 1);

  v38 = &v10[*(v79 + 36)];
  v39 = *(sub_1000032D4(&qword_100114088, &qword_1000D1360) + 28);
  v40 = enum case for Text.TruncationMode.tail(_:);
  v41 = type metadata accessor for Text.TruncationMode();
  (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
  *v38 = swift_getKeyPath();
  *v10 = v31;
  *(v10 + 1) = v33;
  v10[16] = v35 & 1;
  *(v10 + 3) = v37;
  KeyPath = swift_getKeyPath();
  v43 = v10;
  v44 = v83;
  sub_10002C7C4(v43, v83, &qword_1001148F0, &qword_1000D1CB0);
  v45 = v44 + *(v80 + 36);
  *v45 = KeyPath;
  *(v45 + 8) = 1;
  *(v45 + 16) = 0;
  v46 = swift_getKeyPath();
  v47 = v44;
  v48 = v85;
  sub_10002C7C4(v47, v85, &qword_1001148F8, &qword_1000D1CB8);
  v49 = (v48 + *(v82 + 36));
  *v49 = v46;
  v49[1] = 0x3FE6666666666666;
  LOBYTE(v46) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v81;
  sub_10002C7C4(v48, v81, &qword_100114900, &qword_1000D1CC0);
  v59 = v58 + *(v84 + 36);
  *v59 = v46;
  *(v59 + 8) = v51;
  *(v59 + 16) = v53;
  *(v59 + 24) = v55;
  *(v59 + 32) = v57;
  *(v59 + 40) = 0;
  v60 = v86;
  sub_10002C7C4(v58, v86, &qword_100114908, &qword_1000D1CC8);
  v61 = type metadata accessor for AlarmKitAlertLabelView(0);
  v62 = *(v61 + 32);
  v63 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v64 = v92;
  (*(*(v63 - 8) + 16))(v92, v30 + v62, v63);
  v65 = *(v61 + 36);
  v66 = *(v88 + 20);
  v67 = type metadata accessor for AlarmPresentationState();
  (*(*(v67 - 8) + 16))(v64 + v66, v30 + v65, v67);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v68 = v91;
  sub_1000255CC(v64, v91, type metadata accessor for AlarmKitAlertSecondaryLabel);
  v69 = (v68 + *(v90 + 36));
  v70 = v101;
  v69[4] = v100;
  v69[5] = v70;
  v69[6] = v102;
  v71 = v97;
  *v69 = v96;
  v69[1] = v71;
  v72 = v99;
  v69[2] = v98;
  v69[3] = v72;
  v73 = v93;
  sub_10002C7C4(v68, v93, &qword_1001148E8, &qword_1000D1CA8);
  v74 = v87;
  sub_10002CFC4(v60, v87, &qword_100114908, &qword_1000D1CC8);
  v75 = v94;
  sub_10002CFC4(v73, v94, &qword_1001148E8, &qword_1000D1CA8);
  v76 = v95;
  sub_10002CFC4(v74, v95, &qword_100114908, &qword_1000D1CC8);
  v77 = sub_1000032D4(&qword_100114910, &qword_1000D1CD0);
  sub_10002CFC4(v75, v76 + *(v77 + 48), &qword_1001148E8, &qword_1000D1CA8);
  sub_10002D02C(v73, &qword_1001148E8, &qword_1000D1CA8);
  sub_10002D02C(v60, &qword_100114908, &qword_1000D1CC8);
  sub_10002D02C(v75, &qword_1001148E8, &qword_1000D1CA8);
  return sub_10002D02C(v74, &qword_100114908, &qword_1000D1CC8);
}

uint64_t sub_10000BD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v64 = type metadata accessor for AlarmKitCountdownLabelView(0);
  __chkstk_darwin(v64);
  v66 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1000032D4(&qword_100113EF8, &qword_1000D11E8);
  __chkstk_darwin(v65);
  v68 = &v59 - v6;
  v67 = sub_1000032D4(&qword_100113F00, &qword_1000D11F0);
  __chkstk_darwin(v67);
  v72 = &v59 - v7;
  v76 = sub_1000032D4(&qword_100113F08, &qword_1000D11F8);
  v75 = *(v76 - 8);
  v8 = __chkstk_darwin(v76);
  v70 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v59 - v10;
  v11 = type metadata accessor for AlarmPresentationState.Mode();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AlarmPresentationState();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  *&v80 = a1;
  *(&v80 + 1) = a2;
  v71 = a2;
  v19 = sub_1000032D4(&qword_100113E30, &qword_1000D1118);
  State.wrappedValue.getter();
  v20 = v79[3];
  swift_getKeyPath();
  *&v80 = v20;
  v73 = sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel, &unk_1000D5AC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  v63 = *(v16 + 16);
  v63(v18, v20 + v21, v15);

  AlarmPresentationState.mode.getter();
  v22 = *(v16 + 8);
  v22(v18, v15);
  LOBYTE(v21) = AlarmPresentationState.Mode.isAlerting.getter();
  (*(v12 + 8))(v14, v11);
  v23 = 1;
  if ((v21 & 1) == 0)
  {
    *&v80 = v74;
    v24 = v74;
    *(&v80 + 1) = v71;
    v25 = v19;
    v26 = v71;
    v60 = v15;
    v61 = v25;
    State.wrappedValue.getter();
    v27 = v79[0];
    v28 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes;
    v29 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    v30 = v27 + v28;
    v31 = v66;
    (*(*(v29 - 8) + 16))(v66, v30, v29);

    *&v80 = v24;
    *(&v80 + 1) = v26;
    State.wrappedValue.getter();
    v32 = v79[0];
    swift_getKeyPath();
    v62 = v22;
    *&v80 = v32;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
    swift_beginAccess();
    v34 = v60;
    v35 = v63;
    v63(&v31[*(v64 + 20)], v32 + v33, v60);

    static Alignment.trailing.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v36 = v31;
    v37 = v68;
    sub_1000255CC(v36, v68, type metadata accessor for AlarmKitCountdownLabelView);
    v38 = (v37 + *(v65 + 36));
    v39 = v85;
    v38[4] = v84;
    v38[5] = v39;
    v38[6] = v86;
    v40 = v81;
    *v38 = v80;
    v38[1] = v40;
    v41 = v83;
    v38[2] = v82;
    v38[3] = v41;
    LOBYTE(v33) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = v37;
    v51 = v72;
    sub_10002C7C4(v50, v72, &qword_100113EF8, &qword_1000D11E8);
    v52 = v51 + *(v67 + 36);
    *v52 = v33;
    *(v52 + 8) = v43;
    *(v52 + 16) = v45;
    *(v52 + 24) = v47;
    *(v52 + 32) = v49;
    *(v52 + 40) = 0;
    v78[0] = v74;
    v78[1] = v26;
    State.wrappedValue.getter();
    v53 = v78[3];
    swift_getKeyPath();
    v78[0] = v53;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v54 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
    swift_beginAccess();
    v35(v18, v53 + v54, v34);

    v55 = v70;
    AlarmPresentationState.mode.getter();
    v62(v18, v34);
    sub_10002C7C4(v51, v55, &qword_100113F00, &qword_1000D11F0);
    v56 = v55;
    v57 = v69;
    sub_10002C7C4(v56, v69, &qword_100113F08, &qword_1000D11F8);
    sub_10002C7C4(v57, v77, &qword_100113F08, &qword_1000D11F8);
    v23 = 0;
  }

  return (*(v75 + 56))(v77, v23, 1, v76);
}

__n128 sub_10000C608@<Q0>(uint64_t a1@<X8>)
{
  sub_10000C754(v14);
  v12 = v14[1];
  v13 = v14[0];
  v2 = v15;
  v3 = v16;
  if (qword_100113688 != -1)
  {
    swift_once();
  }

  v4 = qword_10011F6C0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v14[0]) = v3;

  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  AlarmAttributes.tintColor.getter();
  v6 = Color.opacity(_:)();

  v7 = swift_getKeyPath();
  v8 = v14[0];
  v9 = swift_getKeyPath();
  v17 = 0;
  v10 = swift_getKeyPath();
  result = v13;
  *a1 = v13;
  *(a1 + 16) = v12;
  *(a1 + 32) = v2;
  *(a1 + 33) = v8;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v4;
  *(a1 + 56) = v7;
  *(a1 + 64) = v6;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 80) = v9;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = v10;
  *(a1 + 112) = 0x3FE6666666666666;
  return result;
}

uint64_t sub_10000C754@<X0>(_OWORD *a1@<X8>)
{
  v63 = a1;
  v1 = type metadata accessor for Text.DateStyle();
  __chkstk_darwin(v1 - 8);
  v58 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Alarm.Schedule.Relative.Time();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  __chkstk_darwin(v5 - 8);
  v57 = &v54 - v6;
  v7 = type metadata accessor for Date();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v56 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlarmPresentationState.Mode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for AlarmPresentationState.Mode.Alert();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  __chkstk_darwin(v15 - 8);
  v17 = &v54 - v16;
  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  AlarmAttributes.metadata.getter();
  v18 = type metadata accessor for MTAlarmCustomContent();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10002D02C(v17, &unk_100118100, &qword_1000D1250);
    goto LABEL_11;
  }

  v20 = MTAlarmCustomContent.type.getter();
  (*(v19 + 8))(v17, v18);
  if (v20 == 1)
  {
    v64 = 0u;
    v65 = 0u;
    LOBYTE(v66) = 1;
    sub_1000032D4(&qword_1001152B0, &qword_1000D2428);
    sub_10002D4C4();
    _ConditionalContent<>.init(storage:)();
    v64 = v67;
    v65 = v68;
    v66 = v69;
LABEL_17:
    sub_1000032D4(&qword_100115298, &qword_1000D2420);
    sub_10002D438();
    result = _ConditionalContent<>.init(storage:)();
LABEL_18:
    v39 = v68;
    v40 = v69;
    v41 = v70;
    v42 = v63;
    *v63 = v67;
    v42[1] = v39;
    *(v42 + 32) = v40;
    *(v42 + 33) = v41;
    return result;
  }

  if (v20)
  {
LABEL_11:
    type metadata accessor for AlarmKitAlertSecondaryLabel(0);
    v32 = AlarmPresentationState.localizedAppName.getter();
    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0;
    }

    v35 = 0xE000000000000000;
    if (v33)
    {
      v35 = v33;
    }

    *&v67 = v34;
    *(&v67 + 1) = v35;
    sub_100025FB4();
    *&v64 = Text.init<A>(_:)();
    *(&v64 + 1) = v37;
    *&v65 = v36 & 1;
    *(&v65 + 1) = v38;
    v66 = 256;
    goto LABEL_17;
  }

  type metadata accessor for AlarmKitAlertSecondaryLabel(0);
  AlarmPresentationState.mode.getter();
  if ((*(v10 + 88))(v12, v9) != enum case for AlarmPresentationState.Mode.alert(_:))
  {
    (*(v10 + 8))(v12, v9);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
LABEL_23:
    *&v64 = v43;
    *(&v64 + 1) = v44;
    *&v65 = v45;
    *(&v65 + 1) = v46;
    LOBYTE(v66) = 0;
    sub_10002CF3C(v43, v44, v45, v46);
    sub_1000032D4(&qword_1001152B0, &qword_1000D2428);
    sub_10002D4C4();
    _ConditionalContent<>.init(storage:)();
    v51 = v67;
    v52 = v68;
    v53 = v69;
    v64 = v67;
    v65 = v68;
    v66 = v69;
    sub_10002D540(v67, *(&v67 + 1), v68, *(&v68 + 1), v69);
    sub_1000032D4(&qword_100115298, &qword_1000D2420);
    sub_10002D438();
    _ConditionalContent<>.init(storage:)();
    sub_10002CF80(v43, v44, v45, v46);
    sub_10002D54C(v51, *(&v51 + 1), v52, *(&v52 + 1), v53);
    result = sub_10002CF80(v43, v44, v45, v46);
    goto LABEL_18;
  }

  (*(v10 + 96))(v12, v9);
  v21 = v59;
  v22 = v61;
  (*(v59 + 32))(v14, v12, v61);
  type metadata accessor for Utilities();
  AlarmPresentationState.Mode.Alert.time.getter();
  v23 = Alarm.Schedule.Relative.Time.hour.getter();
  v24 = *(v60 + 8);
  v25 = v62;
  result = v24(v4, v62);
  if (v23 < 0)
  {
    __break(1u);
  }

  else
  {
    AlarmPresentationState.Mode.Alert.time.getter();
    v27 = Alarm.Schedule.Relative.Time.minute.getter();
    result = v24(v4, v25);
    if ((v27 & 0x8000000000000000) == 0)
    {
      v28 = v57;
      sub_10008A33C(v23, v27, v57);
      v30 = v54;
      v29 = v55;
      v31 = *(v54 + 48);
      if (v31(v28, 1, v55) == 1)
      {
        Date.init()();
        if (v31(v28, 1, v29) != 1)
        {
          sub_10002D02C(v28, &qword_100115E40, &unk_1000D1280);
        }
      }

      else
      {
        (*(v30 + 32))(v56, v28, v29);
      }

      static Text.DateStyle.time.getter();
      v43 = Text.init(_:style:)();
      v44 = v47;
      v49 = v48;
      v46 = v50;
      (*(v21 + 8))(v14, v22);
      v45 = v49 & 1;
      sub_100025AFC(v43, v44, v45);

      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000CFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v41 = a4;
  v6 = sub_1000032D4(&qword_100113F10, &qword_1000D1200);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - v7;
  v40 = sub_1000032D4(&qword_100113F18, &qword_1000D1208);
  v9 = __chkstk_darwin(v40);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  v39 = sub_1000032D4(&qword_100113F20, &qword_1000D1210);
  __chkstk_darwin(v39);
  v15 = &v38 - v14;
  v16 = sub_1000032D4(&qword_100113F28, &qword_1000D1218);
  __chkstk_darwin(v16 - 8);
  v18 = &v38 - v17;
  v19 = sub_1000032D4(&qword_100113F30, &qword_1000D1220);
  v20 = __chkstk_darwin(v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v38 - v23;
  v25 = a3 & 0xFFFFFF00;
  if (a3)
  {
    sub_10000DF7C(a1, v38, v25 | 1, v8);
    static Alignment.trailing.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10002C7C4(v8, v11, &qword_100113F10, &qword_1000D1200);
    v26 = &v11[*(v40 + 36)];
    v27 = v47;
    *(v26 + 4) = v46;
    *(v26 + 5) = v27;
    *(v26 + 6) = v48;
    v28 = v43;
    *v26 = v42;
    *(v26 + 1) = v28;
    v29 = v45;
    *(v26 + 2) = v44;
    *(v26 + 3) = v29;
    sub_10002C7C4(v11, v13, &qword_100113F18, &qword_1000D1208);
    sub_10002CFC4(v13, v15, &qword_100113F18, &qword_1000D1208);
    swift_storeEnumTagMultiPayload();
    sub_100025634();
    sub_1000258A4();
    _ConditionalContent<>.init(storage:)();
    v30 = v13;
    v31 = &qword_100113F18;
    v32 = &qword_1000D1208;
  }

  else
  {
    sub_10000D41C(a1, v38, v25, v18);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10002C7C4(v18, v22, &qword_100113F28, &qword_1000D1218);
    v33 = &v22[*(v19 + 36)];
    v34 = v47;
    *(v33 + 4) = v46;
    *(v33 + 5) = v34;
    *(v33 + 6) = v48;
    v35 = v43;
    *v33 = v42;
    *(v33 + 1) = v35;
    v36 = v45;
    *(v33 + 2) = v44;
    *(v33 + 3) = v36;
    sub_10002C7C4(v22, v24, &qword_100113F30, &qword_1000D1220);
    sub_10002CFC4(v24, v15, &qword_100113F30, &qword_1000D1220);
    swift_storeEnumTagMultiPayload();
    sub_100025634();
    sub_1000258A4();
    _ConditionalContent<>.init(storage:)();
    v30 = v24;
    v31 = &qword_100113F30;
    v32 = &qword_1000D1220;
  }

  return sub_10002D02C(v30, v31, v32);
}

uint64_t sub_10000D41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v67 = a3;
  v85 = a4;
  v86 = type metadata accessor for AlarmKitPlatterControls(0);
  __chkstk_darwin(v86);
  v68 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1000032D4(&qword_100113FB0, &qword_1000D1248);
  __chkstk_darwin(v83);
  v84 = &v63 - v7;
  v8 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  __chkstk_darwin(v8 - 8);
  v71 = &v63 - v9;
  v10 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v80 = *(v10 - 8);
  v81 = v10;
  __chkstk_darwin(v10);
  v75 = &v63 - v11;
  v72 = type metadata accessor for AlarmKitAlertLabelView(0);
  v12 = __chkstk_darwin(v72);
  v79 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v73 = &v63 - v14;
  v82 = sub_1000032D4(&qword_100113F60, &qword_1000D1230);
  v15 = __chkstk_darwin(v82);
  v70 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v74 = &v63 - v17;
  v18 = type metadata accessor for AlarmPresentationState.Mode();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AlarmPresentationState();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v78 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v63 - v26;
  v76 = a1;
  v77 = a2;
  v90 = a1;
  v91 = a2;
  v66 = sub_1000032D4(&qword_100113E30, &qword_1000D1118);
  State.wrappedValue.getter();
  v28 = v87;
  swift_getKeyPath();
  v90 = v28;
  v65 = sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel, &unk_1000D5AC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  v64 = *(v23 + 16);
  v64(v27, v28 + v29, v22);

  AlarmPresentationState.mode.getter();
  v69 = v23;
  (*(v23 + 8))(v27, v22);
  LOBYTE(v29) = AlarmPresentationState.Mode.isAlerting.getter();
  v30 = *(v19 + 8);
  v63 = v18;
  v30(v21, v18);
  if (v29)
  {
    v32 = v76;
    v31 = v77;
    v87 = v76;
    v88 = v77;
    State.wrappedValue.getter();
    (*(v80 + 16))(v75, v89 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v81);

    v87 = v32;
    v88 = v31;
    State.wrappedValue.getter();
    v33 = v89;
    swift_getKeyPath();
    v77 = v22;
    v87 = v33;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
    swift_beginAccess();
    v64(v78, v33 + v34, v77);

    v35 = AlarmPresentationState.alarmLabel.getter();
    if (v36)
    {
      v37 = v84;
      v38 = v82;
      v39 = v75;
    }

    else
    {
      AlarmPresentationState.mode.getter();
      v39 = v75;
      v42 = sub_10000AAEC(v21);
      v44 = v43;
      v30(v21, v63);
      v36 = v44;
      v35 = v42;
      v37 = v84;
      v38 = v82;
    }

    v45 = v79;
    *(v79 + 1) = v35;
    v45[2] = v36;
    *v45 = 0;
    v46 = v81;
    v45[4] = AlarmAttributes.tintColor.getter();
    v47 = v71;
    AlarmAttributes.metadata.getter();
    v48 = type metadata accessor for MTAlarmCustomContent();
    v49 = v39;
    v50 = *(v48 - 8);
    if ((*(v50 + 48))(v47, 1, v48) == 1)
    {
      sub_10002D02C(v47, &unk_100118100, &qword_1000D1250);
      v51 = 1;
    }

    else
    {
      v52 = v47;
      MTAlarmCustomContent.type.getter();
      v53 = v49;
      (*(v50 + 8))(v52, v48);
      v54 = AlarmType.rawValue.getter();
      v55 = v54 == AlarmType.rawValue.getter();
      v49 = v53;
      v51 = !v55;
    }

    v57 = v79;
    v56 = v80;
    v79[24] = v51;
    v58 = v72;
    (*(v56 + 32))(&v57[*(v72 + 32)], v49, v46);
    (*(v69 + 32))(&v57[*(v58 + 36)], v78, v77);
    v59 = v57;
    v60 = v73;
    sub_1000255CC(v59, v73, type metadata accessor for AlarmKitAlertLabelView);
    v61 = v70;
    sub_1000255CC(v60, v70, type metadata accessor for AlarmKitAlertLabelView);
    *(v61 + *(v38 + 36)) = 0;
    v62 = v74;
    sub_10002C7C4(v61, v74, &qword_100113F60, &qword_1000D1230);
    sub_10002CFC4(v62, v37, &qword_100113F60, &qword_1000D1230);
    swift_storeEnumTagMultiPayload();
    sub_1000257A8();
    sub_100025228(&qword_100113F70, type metadata accessor for AlarmKitPlatterControls, &unk_1000D1B98);
    _ConditionalContent<>.init(storage:)();
    return sub_10002D02C(v62, &qword_100113F60, &qword_1000D1230);
  }

  else
  {
    v40 = v68;
    sub_10000DDAC(v67 & 0xFFFFFF01, v68);
    sub_100025564(v40, v84, type metadata accessor for AlarmKitPlatterControls);
    swift_storeEnumTagMultiPayload();
    sub_1000257A8();
    sub_100025228(&qword_100113F70, type metadata accessor for AlarmKitPlatterControls, &unk_1000D1B98);
    _ConditionalContent<>.init(storage:)();
    return sub_100025A9C(v40, type metadata accessor for AlarmKitPlatterControls);
  }
}

uint64_t sub_10000DDAC@<X0>(unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a3 >> 8;
  sub_1000032D4(&qword_100113E30, &qword_1000D1118);
  State.wrappedValue.getter();
  v6 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes;
  v7 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v7 - 8) + 16))(a4, v13 + v6, v7);

  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel, &unk_1000D5AC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  v9 = type metadata accessor for AlarmKitPlatterControls(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for AlarmPresentationState();
  (*(*(v11 - 8) + 16))(a4 + v10, v13 + v8, v11);

  *(a4 + *(v9 + 24)) = v5;
  return result;
}

uint64_t sub_10000DF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v43 = a4;
  v42 = sub_1000032D4(&qword_100113FA0, &qword_1000D1240);
  __chkstk_darwin(v42);
  v35 = v33 - v6;
  v39 = sub_1000032D4(&qword_100113FC8, &qword_1000D1270);
  __chkstk_darwin(v39);
  v41 = v33 - v7;
  v40 = type metadata accessor for AlarmKitPlatterControls(0);
  __chkstk_darwin(v40);
  v34 = (v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for AlarmPresentationState.Mode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AlarmPresentationState();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v38 = a2;
  v47 = a1;
  v48 = a2;
  v33[1] = sub_1000032D4(&qword_100113E30, &qword_1000D1118);
  State.wrappedValue.getter();
  v17 = v44;
  swift_getKeyPath();
  v47 = v17;
  v33[0] = sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel, &unk_1000D5AC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  v19 = *(v14 + 16);
  v19(v16, v17 + v18, v13);

  AlarmPresentationState.mode.getter();
  (*(v14 + 8))(v16, v13);
  LOBYTE(v18) = AlarmPresentationState.Mode.isAlerting.getter();
  (*(v10 + 8))(v12, v9);
  if (v18)
  {
    v20 = v34;
    sub_10000DDAC(v36 & 0xFFFFFF01, v34);
    sub_100025564(v20, v41, type metadata accessor for AlarmKitPlatterControls);
    swift_storeEnumTagMultiPayload();
    sub_100025228(&qword_100113F70, type metadata accessor for AlarmKitPlatterControls, &unk_1000D1B98);
    sub_1000259E0();
    _ConditionalContent<>.init(storage:)();
    return sub_100025A9C(v20, type metadata accessor for AlarmKitPlatterControls);
  }

  else
  {
    v36 >>= 8;
    v23 = v37;
    v22 = v38;
    v44 = v37;
    v45 = v38;
    State.wrappedValue.getter();
    v24 = v46;
    v25 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes;
    v26 = type metadata accessor for AlarmKitCountdownView(0);
    v34 = v19;
    v27 = v26[5];
    v28 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    v29 = v35;
    (*(*(v28 - 8) + 16))(&v35[v27], v24 + v25, v28);

    v44 = v23;
    v45 = v22;
    State.wrappedValue.getter();
    v30 = v46;
    swift_getKeyPath();
    v44 = v30;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
    swift_beginAccess();
    v34((v29 + v26[6]), v30 + v31, v13);

    *v29 = sub_1000A9C68;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    *(v29 + v26[7]) = v36;
    v32 = v41;
    *(v29 + *(v42 + 36)) = 0;
    sub_10002CFC4(v29, v32, &qword_100113FA0, &qword_1000D1240);
    swift_storeEnumTagMultiPayload();
    sub_100025228(&qword_100113F70, type metadata accessor for AlarmKitPlatterControls, &unk_1000D1B98);
    sub_1000259E0();
    _ConditionalContent<>.init(storage:)();
    return sub_10002D02C(v29, &qword_100113FA0, &qword_1000D1240);
  }
}

Swift::Int sub_10000E5C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000E63C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10000E694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v117 = type metadata accessor for AlarmKitStopButton(0);
  v3 = __chkstk_darwin(v117);
  v120 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v114 = &v98 - v6;
  __chkstk_darwin(v5);
  v118 = &v98 - v7;
  v8 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v9 = __chkstk_darwin(v8 - 8);
  v116 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v107 = &v98 - v11;
  v123 = type metadata accessor for AlarmPresentationState();
  v125 = *(v123 - 8);
  v12 = __chkstk_darwin(v123);
  v126 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v98 - v14;
  v15 = type metadata accessor for AlarmKitButton(0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v109 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v108 = &v98 - v19;
  v20 = sub_1000032D4(&qword_1001141F8, &qword_1000D14C8);
  __chkstk_darwin(v20 - 8);
  v22 = &v98 - v21;
  v23 = type metadata accessor for AlarmButton();
  v112 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v110 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v111 = &v98 - v26;
  v27 = type metadata accessor for AlarmPresentationState.Mode();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000032D4(&qword_100114920, &qword_1000D1CE0);
  v32 = __chkstk_darwin(v31 - 8);
  v115 = &v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v98 - v34;
  v113 = type metadata accessor for AlarmKitPlatterControls(0);
  v121 = *(v113 + 20);
  AlarmPresentationState.mode.getter();
  v124 = a1;
  v105 = sub_10000F1FC(v30);
  v36 = v105;
  v37 = *(v28 + 8);
  v37(v30, v27);
  v38 = v36 == 5;
  v39 = v125;
  v122 = v35;
  if (v38)
  {
    goto LABEL_4;
  }

  v104 = v16;
  v40 = v124;
  v41 = v121;
  AlarmPresentationState.mode.getter();
  sub_10000F8DC(v30, v22);
  v37(v30, v27);
  v42 = v112;
  if ((*(v112 + 48))(v22, 1, v23) == 1)
  {
    sub_10002D02C(v22, &qword_1001141F8, &qword_1000D14C8);
    v39 = v125;
    v35 = v122;
    v16 = v104;
LABEL_4:
    (*(v16 + 56))(v35, 1, 1, v15);
    v43 = *(v39 + 16);
    v44 = v39;
    v45 = v113;
    goto LABEL_9;
  }

  v46 = v23;
  v47 = v42;
  v48 = v42 + 32;
  v49 = *(v42 + 32);
  v50 = v111;
  v101 = v48;
  v100 = v49;
  v49(v111, v22, v46);
  v51 = v40 + v41;
  v52 = v106;
  v103 = *(v125 + 16);
  v103(v106, v51, v123);
  v53 = *(v47 + 16);
  v102 = v46;
  v53(v110, v50, v46);
  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v54 = v107;
  AlarmAttributes.metadata.getter();
  v55 = type metadata accessor for MTAlarmCustomContent();
  v56 = *(v55 - 8);
  v57 = (*(v56 + 48))(v54, 1, v55);
  if (v57 == 1)
  {
    sub_10002D02C(v54, &unk_100118100, &qword_1000D1250);
    v99 = 0;
  }

  else
  {
    v99 = MTAlarmCustomContent.type.getter();
    (*(v56 + 8))(v54, v55);
  }

  v58 = v15;
  v59 = v124;
  v60 = AlarmAttributes.tintColor.getter();
  v45 = v113;
  v61 = *(v59 + *(v113 + 24));
  v62 = v109;
  (*(v125 + 32))(v109, v52, v123);
  v62[v58[5]] = v105;
  v63 = v102;
  v100(&v62[v58[6]], v110, v102);
  v64 = &v62[v58[7]];
  *v64 = v99;
  v64[8] = v57 == 1;
  *&v62[v58[8]] = v60;
  v62[v58[9]] = v61;
  v65 = &v62[v58[10]];
  *v65 = 0;
  *(v65 + 1) = 0;
  v66 = &v62[v58[11]];
  v67 = objc_opt_self();
  v68 = [v67 mtOrange];
  v110 = Color.init(uiColor:)();
  v69 = [v67 mtOrange];
  Color.init(uiColor:)();
  v70 = Color.opacity(_:)();

  v71 = static Color.white.getter();
  static Color.white.getter();
  v72 = v63;
  v73 = Color.opacity(_:)();
  v44 = v125;

  *(v66 + 3) = &type metadata for StandardSessionUiConfig;
  *(v66 + 4) = &off_1001035E8;
  v74 = swift_allocObject();
  *v66 = v74;
  v74[2] = v110;
  v74[3] = v70;
  v74[4] = v71;
  v74[5] = v73;
  (*(v112 + 8))(v111, v72);
  v75 = v62;
  v76 = v108;
  sub_1000255CC(v75, v108, type metadata accessor for AlarmKitButton);
  v77 = v76;
  v78 = v122;
  sub_1000255CC(v77, v122, type metadata accessor for AlarmKitButton);
  (*(v104 + 56))(v78, 0, 1, v58);
  v43 = v103;
LABEL_9:
  v79 = v123;
  v80 = v124;
  v43(v126, v124 + v121, v123);
  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v81 = v116;
  AlarmAttributes.metadata.getter();
  v82 = type metadata accessor for MTAlarmCustomContent();
  v83 = *(v82 - 8);
  v84 = (*(v83 + 48))(v81, 1, v82);
  if (v84 == 1)
  {
    sub_10002D02C(v81, &unk_100118100, &qword_1000D1250);
    v85 = 0;
  }

  else
  {
    v85 = MTAlarmCustomContent.type.getter();
    (*(v83 + 8))(v81, v82);
  }

  v86 = v122;
  v87 = *(v80 + *(v45 + 24));
  v88 = v114;
  (*(v44 + 32))(v114, v126, v79);
  v89 = v117;
  v90 = v118;
  v91 = v88 + *(v117 + 20);
  *v91 = v85;
  *(v91 + 8) = v84 == 1;
  *(v88 + v89[6]) = 0;
  *(v88 + v89[7]) = v87;
  v92 = (v88 + v89[8]);
  *v92 = 0;
  v92[1] = 0;
  sub_1000255CC(v88, v90, type metadata accessor for AlarmKitStopButton);
  v93 = v115;
  sub_10002CFC4(v86, v115, &qword_100114920, &qword_1000D1CE0);
  v94 = v120;
  sub_100025564(v90, v120, type metadata accessor for AlarmKitStopButton);
  v95 = v119;
  sub_10002CFC4(v93, v119, &qword_100114920, &qword_1000D1CE0);
  v96 = sub_1000032D4(&qword_100114928, &qword_1000D1CE8);
  sub_100025564(v94, v95 + *(v96 + 48), type metadata accessor for AlarmKitStopButton);
  sub_100025A9C(v90, type metadata accessor for AlarmKitStopButton);
  sub_10002D02C(v86, &qword_100114920, &qword_1000D1CE0);
  sub_100025A9C(v94, type metadata accessor for AlarmKitStopButton);
  return sub_10002D02C(v93, &qword_100114920, &qword_1000D1CE0);
}

uint64_t sub_10000F1FC(uint64_t a1)
{
  v47 = a1;
  v1 = type metadata accessor for AlarmPresentation.Alert.SecondaryButtonBehavior();
  v43 = *(v1 - 8);
  v44 = v1;
  __chkstk_darwin(v1);
  v39 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000032D4(&qword_1001142F8, &qword_1000D1580);
  __chkstk_darwin(v41);
  v42 = &v39 - v3;
  v4 = sub_1000032D4(&qword_100114300, &qword_1000D1588);
  v5 = __chkstk_darwin(v4 - 8);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v39 - v8;
  __chkstk_darwin(v7);
  v45 = &v39 - v10;
  v11 = type metadata accessor for AlarmPresentation.Alert();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AlarmPresentation();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AlarmPresentationState.Mode();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22, v47, v19);
  v23 = *(v20 + 88);
  v46 = v22;
  v47 = v19;
  v24 = v23(v22, v19);
  if (v24 == enum case for AlarmPresentationState.Mode.alert(_:))
  {
    sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    AlarmAttributes.presentation.getter();
    AlarmPresentation.alert.getter();
    (*(v16 + 8))(v18, v15);
    v25 = v45;
    AlarmPresentation.Alert.secondaryButtonBehavior.getter();
    (*(v12 + 8))(v14, v11);
    v27 = v43;
    v26 = v44;
    (*(v43 + 104))(v9, enum case for AlarmPresentation.Alert.SecondaryButtonBehavior.countdown(_:), v44);
    (*(v27 + 56))(v9, 0, 1, v26);
    v28 = *(v41 + 48);
    v29 = v25;
    v30 = v42;
    sub_10002CFC4(v29, v42, &qword_100114300, &qword_1000D1588);
    sub_10002CFC4(v9, v30 + v28, &qword_100114300, &qword_1000D1588);
    v31 = *(v27 + 48);
    if (v31(v30, 1, v26) == 1)
    {
      sub_10002D02C(v9, &qword_100114300, &qword_1000D1588);
      sub_10002D02C(v45, &qword_100114300, &qword_1000D1588);
      if (v31(v30 + v28, 1, v26) == 1)
      {
        sub_10002D02C(v30, &qword_100114300, &qword_1000D1588);
        v32 = 3;
        goto LABEL_16;
      }

LABEL_9:
      sub_10002D02C(v30, &qword_1001142F8, &qword_1000D1580);
      v32 = 4;
      goto LABEL_16;
    }

    v33 = v40;
    sub_10002CFC4(v30, v40, &qword_100114300, &qword_1000D1588);
    if (v31(v30 + v28, 1, v26) == 1)
    {
      sub_10002D02C(v9, &qword_100114300, &qword_1000D1588);
      sub_10002D02C(v45, &qword_100114300, &qword_1000D1588);
      (*(v27 + 8))(v33, v26);
      goto LABEL_9;
    }

    v34 = v39;
    (*(v27 + 32))(v39, v30 + v28, v26);
    sub_100025228(&qword_100114308, &type metadata accessor for AlarmPresentation.Alert.SecondaryButtonBehavior, &protocol conformance descriptor for AlarmPresentation.Alert.SecondaryButtonBehavior);
    v35 = v33;
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v37 = *(v27 + 8);
    v37(v34, v26);
    sub_10002D02C(v9, &qword_100114300, &qword_1000D1588);
    sub_10002D02C(v45, &qword_100114300, &qword_1000D1588);
    v37(v35, v26);
    sub_10002D02C(v30, &qword_100114300, &qword_1000D1588);
    if (v36)
    {
      v32 = 3;
    }

    else
    {
      v32 = 4;
    }
  }

  else if (v24 == enum case for AlarmPresentationState.Mode.countdown(_:))
  {
    v32 = 1;
  }

  else if (v24 == enum case for AlarmPresentationState.Mode.paused(_:))
  {
    v32 = 2;
  }

  else
  {
    v32 = 5;
  }

LABEL_16:
  (*(v20 + 8))(v46, v47);
  return v32;
}

uint64_t sub_10000F8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = a1;
  v2 = sub_1000032D4(&qword_100113FB8, &qword_1000D1258);
  __chkstk_darwin(v2 - 8);
  v39 = &v38 - v3;
  v4 = sub_1000032D4(&unk_100115DF0, &qword_1000D1260);
  __chkstk_darwin(v4 - 8);
  v40 = &v38 - v5;
  v41 = type metadata accessor for AlarmPresentation.Alert();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlarmPresentation();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v38 - v15;
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  v19 = type metadata accessor for AlarmPresentationState.Mode();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22, v44, v19);
  v23 = *(v20 + 88);
  v42 = v22;
  v44 = v19;
  v24 = v23(v22, v19);
  if (v24 != enum case for AlarmPresentationState.Mode.alert(_:))
  {
    v25 = v43;
    if (v24 == enum case for AlarmPresentationState.Mode.countdown(_:))
    {
      sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
      AlarmAttributes.presentation.getter();
      v26 = v40;
      AlarmPresentation.countdown.getter();
      (*(v10 + 8))(v16, v9);
      v27 = type metadata accessor for AlarmPresentation.Countdown();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v26, 1, v27) != 1)
      {
        AlarmPresentation.Countdown.pauseButton.getter();
        (*(v28 + 8))(v26, v27);
        return (*(v20 + 8))(v42, v44);
      }

      v29 = &unk_100115DF0;
      v30 = &qword_1000D1260;
      v31 = v26;
    }

    else
    {
      if (v24 != enum case for AlarmPresentationState.Mode.paused(_:))
      {
LABEL_10:
        v35 = type metadata accessor for AlarmButton();
        (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
        return (*(v20 + 8))(v42, v44);
      }

      sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
      AlarmAttributes.presentation.getter();
      v32 = v39;
      AlarmPresentation.paused.getter();
      (*(v10 + 8))(v13, v9);
      v33 = type metadata accessor for AlarmPresentation.Paused();
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v32, 1, v33) != 1)
      {
        AlarmPresentation.Paused.resumeButton.getter();
        (*(v34 + 8))(v32, v33);
        v37 = type metadata accessor for AlarmButton();
        (*(*(v37 - 8) + 56))(v25, 0, 1, v37);
        return (*(v20 + 8))(v42, v44);
      }

      v29 = &qword_100113FB8;
      v30 = &qword_1000D1258;
      v31 = v32;
    }

    sub_10002D02C(v31, v29, v30);
    goto LABEL_10;
  }

  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  AlarmAttributes.presentation.getter();
  AlarmPresentation.alert.getter();
  (*(v10 + 8))(v18, v9);
  AlarmPresentation.Alert.secondaryButton.getter();
  (*(v6 + 8))(v8, v41);
  return (*(v20 + 8))(v42, v44);
}

void *sub_10000FEE8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AlarmPresentationState();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  static Color.white.getter();
  v4 = type metadata accessor for AlarmKitButton(0);
  AlarmButton.init(text:textColor:systemImageName:)();
  v5 = type metadata accessor for AlarmKitStopButton(0);
  v6 = (v1 + v5[5]);
  v7 = *v6;
  LOBYTE(v6) = *(v6 + 8);
  v8 = *(v1 + v5[6]);
  v9 = v5[8];
  v10 = *(v1 + v5[7]);
  *(a1 + v4[5]) = 0;
  v11 = a1 + v4[7];
  *v11 = v7;
  *(v11 + 8) = v6;
  *(a1 + v4[8]) = v8;
  *(a1 + v4[9]) = v10;
  *(a1 + v4[10]) = *(v1 + v9);
  v12 = (a1 + v4[11]);
  v13 = objc_opt_self();

  v14 = [v13 mtOrange];
  v15 = Color.init(uiColor:)();
  v16 = [v13 mtOrange];
  Color.init(uiColor:)();
  v17 = Color.opacity(_:)();

  v18 = static Color.white.getter();
  static Color.white.getter();
  v19 = Color.opacity(_:)();

  v12[3] = &type metadata for StandardSessionUiConfig;
  v12[4] = &off_1001035E8;
  result = swift_allocObject();
  *v12 = result;
  result[2] = v15;
  result[3] = v17;
  result[4] = v18;
  result[5] = v19;
  return result;
}

uint64_t sub_1000100D0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = type metadata accessor for LocalizedStringResource();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = type metadata accessor for BlendMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000032D4(&qword_1001140D0, &qword_1000D13E8);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_1000032D4(&qword_1001140D8, &qword_1000D13F0);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  sub_100010418(v1, v14);
  if (*(v1 + *(type metadata accessor for AlarmKitButton(0) + 20)))
  {
    v18 = &enum case for BlendMode.normal(_:);
  }

  else
  {
    v18 = &enum case for BlendMode.plusLighter(_:);
  }

  (*(v9 + 104))(v11, *v18, v8);
  (*(v9 + 32))(&v17[*(v15 + 36)], v11, v8);
  sub_10002C7C4(v14, v17, &qword_1001140D0, &qword_1000D13E8);
  AlarmButton.text.getter();
  v19 = v27;
  v20 = v28;
  (*(v27 + 16))(v5, v7, v28);
  v21 = Text.init(_:)();
  v23 = v22;
  v25 = v24;
  sub_10002645C();
  View.accessibilityLabel(_:)();
  sub_100025B0C(v21, v23, v25 & 1);

  (*(v19 + 8))(v7, v20);
  return sub_10002D02C(v17, &qword_1001140D8, &qword_1000D13F0);
}

uint64_t sub_100010418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = type metadata accessor for LocalizedStringResource();
  v87 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v86 = &v77[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v77[-v6];
  v8 = type metadata accessor for LargeActionButton(0);
  __chkstk_darwin(v8);
  v10 = &v77[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_1000032D4(&qword_100114118, &qword_1000D1408);
  __chkstk_darwin(v88);
  v89 = &v77[-v11];
  v94 = sub_1000032D4(&qword_100114108, &qword_1000D1400);
  __chkstk_darwin(v94);
  v13 = &v77[-v12];
  v93 = sub_1000032D4(&qword_100114128, &qword_1000D1410);
  __chkstk_darwin(v93);
  v90 = &v77[-v14];
  v15 = type metadata accessor for AlarmKitButton(0);
  v92 = *(v15 - 1);
  v16 = *(v92 + 64);
  __chkstk_darwin(v15);
  v91 = &v77[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v77[-v18];
  v20 = (a1 + v15[10]);
  v21 = *v20;
  if (*v20)
  {
    v80 = v20[1];
    v81 = v21;
    v22 = v15[6];
    v83 = v7;
    AlarmButton.text.getter();
    v82 = v22;
    v79 = AlarmButton.textColor.getter();
    v23 = *(a1 + v15[8]);
    v84 = v3;
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = static Color.clear.getter();
    }

    v27 = *(a1 + v15[9]);
    v85 = v13;
    v78 = v27;
    v28 = v24;
    if (v27 <= 2 || v27 > 4 || v27 == 3)
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v54 = 1;
    }

    v55 = v91;
    sub_100025564(a1, v91, type metadata accessor for AlarmKitButton);
    v56 = (*(v92 + 80) + 16) & ~*(v92 + 80);
    v57 = swift_allocObject();
    sub_1000255CC(v55, v57 + v56, type metadata accessor for AlarmKitButton);
    v58 = v87;
    v59 = v84;
    (*(v87 + 32))(v10, v83, v84);
    *&v10[v8[5]] = v79;
    *&v10[v8[6]] = v28;
    v10[v8[7]] = v54 & 1;
    v60 = &v10[v8[8]];
    *v60 = sub_10002DB58;
    v60[1] = v57;
    v61 = &v10[v8[9]];
    v96 = 0;
    State.init(wrappedValue:)();
    v62 = v98;
    *v61 = v97;
    *(v61 + 1) = v62;
    v96 = 0;
    State.init(wrappedValue:)();
    LOBYTE(v61) = v97;
    v63 = v98;
    v96 = 0;
    State.init(wrappedValue:)();
    v64 = v97;
    v65 = v98;
    v66 = v10;
    v67 = v89;
    sub_1000255CC(v66, v89, type metadata accessor for LargeActionButton);
    v68 = &v67[*(v88 + 36)];
    v69 = v80;
    *v68 = v81;
    *(v68 + 1) = v69;
    v68[16] = v61;
    *(v68 + 3) = v63;
    v68[32] = v64;
    *(v68 + 5) = v65;
    v97 = 0;
    v98 = 0xE000000000000000;
    v70 = v86;
    AlarmButton.text.getter();
    v71 = LocalizedStringResource.key.getter();
    v73 = v72;
    (*(v58 + 8))(v70, v59);
    v74._countAndFlagsBits = v71;
    v74._object = v73;
    String.append(_:)(v74);

    v75._countAndFlagsBits = 45;
    v75._object = 0xE100000000000000;
    String.append(_:)(v75);
    v96 = v78;
    _print_unlocked<A, B>(_:_:)();
    sub_1000266FC();
    v76 = v85;
    View.accessibilityIdentifier(_:)();

    sub_10002D02C(v67, &qword_100114118, &qword_1000D1408);
    sub_10002CFC4(v76, v90, &qword_100114108, &qword_1000D1400);
    swift_storeEnumTagMultiPayload();
    sub_100025C54();
    sub_100026648(&qword_100114100, &qword_100114108, &qword_1000D1400, sub_1000266FC);
    _ConditionalContent<>.init(storage:)();
    return sub_10002D02C(v76, &qword_100114108, &qword_1000D1400);
  }

  else
  {
    v25 = *(a1 + v15[5]);
    static Font.Weight.medium.getter();
    if (v25)
    {
      v26 = type metadata accessor for Font.Design();
      (*(*(v26 - 8) + 56))(v19, 1, 1, v26);
    }

    else
    {
      v29 = enum case for Font.Design.rounded(_:);
      v30 = type metadata accessor for Font.Design();
      v31 = *(v30 - 8);
      (*(v31 + 104))(v19, v29, v30);
      (*(v31 + 56))(v19, 0, 1, v30);
    }

    v32 = static Font.system(size:weight:design:)();
    sub_10002D02C(v19, &qword_100113E08, &qword_1000D10F0);
    v33 = AlarmButton.systemImageName.getter();
    v35 = v34;
    v36 = *(a1 + v15[8]);
    if (v36)
    {

      v37 = Color.opacity(_:)();
    }

    else
    {
      v38 = (a1 + v15[11]);
      v39 = v32;
      v41 = v38[3];
      v40 = v38[4];
      sub_100025B1C(v38, v41);
      v36 = (*(v40 + 56))(v41, v40);
      v42 = v33;
      v43 = v38[3];
      v44 = v38[4];
      sub_100025B1C(v38, v43);
      v45 = *(v44 + 80);
      v46 = v43;
      v32 = v39;
      v47 = v44;
      v33 = v42;
      v37 = v45(v46, v47);
    }

    v48 = v37;
    v49 = v91;
    sub_100025564(a1, v91, type metadata accessor for AlarmKitButton);
    v50 = (*(v92 + 80) + 16) & ~*(v92 + 80);
    v51 = swift_allocObject();
    sub_1000255CC(v49, v51 + v50, type metadata accessor for AlarmKitButton);
    v52 = v90;
    v90->width = 50.0;
    *&v52->height = v32;
    *&v52[1].width = v33;
    v52[1].height = v35;
    v52[2] = CGSizeZero;
    *&v52[3].width = v36;
    *&v52[3].height = v48;
    LOBYTE(v52[4].width) = 1;
    *&v52[4].height = sub_100026960;
    *&v52[5].width = v51;
    swift_storeEnumTagMultiPayload();
    sub_100025C54();
    sub_100026648(&qword_100114100, &qword_100114108, &qword_1000D1400, sub_1000266FC);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100010EB0()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for UUID();
  v45 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100113630 != -1)
  {
    swift_once();
  }

  v8 = qword_10011F508;
  v9 = type metadata accessor for AlarmKitButton(0);
  v10 = *(v0 + v9[5]);
  AlarmPresentationState.alarmID.getter();
  v43 = AlarmPresentationState.bundleID.getter();
  v46 = v11;
  v12 = v0 + v9[7];
  v41 = *v12;
  v42 = *(v12 + 8);
  AlarmPresentationState.mode.getter();
  v40 = AlarmPresentationState.Mode.isAlerting.getter();
  (*(v2 + 8))(v4, v1);
  v13 = *(v0 + v9[9]);
  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v44 = v8;
  v47 = v8;
  type metadata accessor for AlarmAndTimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v14._object = 0x80000001000D7D50;
  v14._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v14);
  LOBYTE(v47) = v10;
  _print_unlocked<A, B>(_:_:)();
  v15._countAndFlagsBits = 0x616C6120726F6620;
  v15._object = 0xEF203A6469206D72;
  String.append(_:)(v15);
  sub_100025228(&qword_100118110, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._object = 0x80000001000D7D70;
  v17._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v17);
  v18 = 0xEE00746361706D6FLL;
  v19 = 0x43746E6569626D41;
  v20 = 0x657263536B636F4CLL;
  v21 = 0xEA00000000006E65;
  if (v13 != 5)
  {
    v20 = 0x726F707075736E55;
    v21 = 0xEB00000000646574;
  }

  v22 = 0xE600000000000000;
  v23 = 0x72656E6E6142;
  if (v13 != 3)
  {
    v23 = 0x657263536C6C7546;
    v22 = 0xEA00000000006E65;
  }

  if (v13 <= 4)
  {
    v20 = v23;
    v21 = v22;
  }

  v24 = 0xEB000000006C6C75;
  v25 = 0x46746E6569626D41;
  if (v13 != 1)
  {
    v25 = 0x6572757472657041;
    v24 = 0xE800000000000000;
  }

  if (v13)
  {
    v19 = v25;
    v18 = v24;
  }

  if (v13 <= 2)
  {
    v26 = v19;
  }

  else
  {
    v26 = v20;
  }

  if (v13 <= 2)
  {
    v27 = v18;
  }

  else
  {
    v27 = v21;
  }

  v28 = objc_opt_self();
  v29._countAndFlagsBits = v26;
  v29._object = v27;
  String.append(_:)(v29);

  v30 = String._bridgeToObjectiveC()();

  [v28 logInfo:v30];

  if (v46)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        sub_10007D6CC(v7, v43, v46, v41, v42);
      }

      else if (v10 == 3)
      {
        sub_10007D1D0(v7, v43, v46, v41, v42);
      }

      else
      {
        sub_10007D234(v7, v43, v46);
      }

      goto LABEL_31;
    }

    if (v10)
    {
      sub_10007D4CC(v7, v43, v46, v41, v42);
      goto LABEL_31;
    }

    if (v40)
    {
      sub_10007D8CC(v7, v43, v46, v41, v42);
LABEL_31:

      return (*(v45 + 8))(v7, v5);
    }

    if ((v42 & 1) == 0)
    {
      if (v41 == 1)
      {
        if (qword_100113628 != -1)
        {
          swift_once();
        }

        v37 = UUID.uuidString.getter();
        sub_100079614(v37, v38);
        goto LABEL_43;
      }

      if (!v41)
      {
        if (qword_100113620 != -1)
        {
          swift_once();
        }

        v35 = UUID.uuidString.getter();
        sub_100076EA4(v35, v36);
LABEL_43:

        goto LABEL_31;
      }
    }

    AlarmManager.stop(id:ownerID:)();
    goto LABEL_31;
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(73);
  v31._countAndFlagsBits = 0xD000000000000047;
  v31._object = 0x80000001000D7D90;
  String.append(_:)(v31);
  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v32);

  v33 = String._bridgeToObjectiveC()();

  [v28 logError:v33];

  return (*(v45 + 8))(v7, v5);
}

uint64_t sub_10001155C@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v79 = type metadata accessor for AlarmKitStopSlider(0);
  v70 = *(v79 - 8);
  v72 = *(v70 + 64);
  v1 = __chkstk_darwin(v79);
  v73 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v71 = &v67 - v3;
  v4 = sub_1000032D4(&qword_100113FC0, &qword_1000D1268);
  __chkstk_darwin(v4 - 8);
  v82 = &v67 - v5;
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for LocalizedStringResource();
  v67 = *(v12 - 8);
  v13 = v67;
  v14 = __chkstk_darwin(v12);
  v81 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = &v67 - v16;
  v17 = type metadata accessor for GlassActionSlider(0);
  v18 = __chkstk_darwin(v17);
  v20 = (&v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v75 = &v67 - v21;
  v74 = sub_1000032D4(&qword_100114098, &qword_1000D13A0);
  __chkstk_darwin(v74);
  v76 = &v67 - v22;
  v78 = sub_1000032D4(&qword_1001140A0, &qword_1000D13A8);
  __chkstk_darwin(v78);
  v77 = &v67 - v23;
  v69 = Image.init(systemName:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v7 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = v82;
  LocalizedStringResource.init(stringLiteral:)();
  v25 = *(v13 + 56);
  v26 = v12;
  v25(v24, 0, 1, v12);
  v27 = v83;
  v28 = v71;
  sub_100025564(v83, v71, type metadata accessor for AlarmKitStopSlider);
  v29 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v70 = swift_allocObject();
  sub_1000255CC(v28, v70 + v29, type metadata accessor for AlarmKitStopSlider);
  v30 = v27;
  v31 = v73;
  sub_100025564(v30, v73, type metadata accessor for AlarmKitStopSlider);
  v32 = v26;
  v33 = v67;
  v72 = swift_allocObject();
  sub_1000255CC(v31, v72 + v29, type metadata accessor for AlarmKitStopSlider);
  v34 = (v20 + v17[10]);
  *&v85 = 0;
  State.init(wrappedValue:)();
  v35 = *(&v86 + 1);
  *v34 = v86;
  v34[1] = v35;
  v36 = v17[11];
  *(v20 + v36) = swift_getKeyPath();
  sub_1000032D4(&qword_1001140A8, &qword_1000D13E0);
  swift_storeEnumTagMultiPayload();
  v37 = v20 + v17[12];
  __asm { FMOV            V0.2D, #10.0 }

  v85 = _Q0;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  v43 = v87;
  *v37 = v86;
  *(v37 + 2) = v43;
  v44 = v20 + v17[13];
  LOBYTE(v85) = 0;
  State.init(wrappedValue:)();
  v45 = *(&v86 + 1);
  *v44 = v86;
  *(v44 + 1) = v45;
  *v20 = v69;
  v46 = v68;
  (*(v33 + 16))(v20 + v17[5]);
  v47 = *(v33 + 48);
  v48 = v82;
  if (v47() == 1)
  {
    v49 = *(v33 + 32);
    v49(v81, v46, v32);
    if ((v47)(v48, 1, v32) != 1)
    {
      sub_10002D02C(v48, &qword_100113FC0, &qword_1000D1268);
    }

    v50 = v81;
  }

  else
  {
    (*(v33 + 8))(v46, v32);
    v49 = *(v33 + 32);
    v51 = v81;
    v49(v81, v48, v32);
    v50 = v51;
  }

  v49(v20 + v17[6], v50, v32);
  *(v20 + v17[7]) = 13;
  v52 = (v20 + v17[8]);
  v53 = v70;
  *v52 = sub_1000260C8;
  v52[1] = v53;
  v54 = (v20 + v17[9]);
  v55 = v72;
  *v54 = sub_1000261E0;
  v54[1] = v55;
  v56 = v75;
  sub_1000255CC(v20, v75, type metadata accessor for GlassActionSlider);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v57 = v76;
  sub_1000255CC(v56, v76, type metadata accessor for GlassActionSlider);
  v58 = (v57 + *(v74 + 36));
  v59 = v87;
  *v58 = v86;
  v58[1] = v59;
  v58[2] = v88;
  v84 = 0;
  State.init(wrappedValue:)();
  LOBYTE(v56) = v85;
  v60 = *(&v85 + 1);
  v84 = 0;
  State.init(wrappedValue:)();
  v61 = v85;
  v62 = *(&v85 + 1);
  v63 = v77;
  sub_10002C7C4(v57, v77, &qword_100114098, &qword_1000D13A0);
  v64 = v63 + *(v78 + 36);
  *v64 = &type metadata for AnimationConstants.LeftButtonAnimation;
  *(v64 + 8) = &off_100103BB0;
  *(v64 + 16) = v56;
  *(v64 + 24) = v60;
  *(v64 + 32) = v61;
  *(v64 + 40) = v62;
  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  v65._countAndFlagsBits = 0x2D706F7453;
  v65._object = 0xE500000000000000;
  String.append(_:)(v65);
  v84 = *(v83 + *(v79 + 24));
  _print_unlocked<A, B>(_:_:)();
  sub_1000262C0();
  View.accessibilityIdentifier(_:)();

  return sub_10002D02C(v63, &qword_1001140A0, &qword_1000D13A8);
}

uint64_t sub_100011F3C()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v44 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100113630 != -1)
  {
    swift_once();
  }

  v8 = qword_10011F508;
  AlarmPresentationState.alarmID.getter();
  v41 = AlarmPresentationState.bundleID.getter();
  v10 = v9;
  v11 = type metadata accessor for AlarmKitStopSlider(0);
  v12 = v0 + *(v11 + 20);
  v40 = *v12;
  v43 = *(v12 + 8);
  AlarmPresentationState.mode.getter();
  v42 = AlarmPresentationState.Mode.isAlerting.getter();
  (*(v2 + 8))(v4, v1);
  v13 = *(v0 + *(v11 + 24));
  v46 = 0;
  v47 = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v45 = v8;
  type metadata accessor for AlarmAndTimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v14._object = 0x80000001000D7D50;
  v14._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v14);
  LOBYTE(v45) = 0;
  _print_unlocked<A, B>(_:_:)();
  v15._countAndFlagsBits = 0x616C6120726F6620;
  v15._object = 0xEF203A6469206D72;
  String.append(_:)(v15);
  sub_100025228(&qword_100118110, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._object = 0x80000001000D7D70;
  v17._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v17);
  v18 = 0xEE00746361706D6FLL;
  v19 = 0x43746E6569626D41;
  v20 = 0x657263536B636F4CLL;
  v21 = 0xEA00000000006E65;
  if (v13 != 5)
  {
    v20 = 0x726F707075736E55;
    v21 = 0xEB00000000646574;
  }

  v22 = 0xE600000000000000;
  v23 = 0x72656E6E6142;
  if (v13 != 3)
  {
    v23 = 0x657263536C6C7546;
    v22 = 0xEA00000000006E65;
  }

  if (v13 <= 4)
  {
    v20 = v23;
    v21 = v22;
  }

  v24 = 0xEB000000006C6C75;
  v25 = 0x46746E6569626D41;
  if (v13 != 1)
  {
    v25 = 0x6572757472657041;
    v24 = 0xE800000000000000;
  }

  if (v13)
  {
    v19 = v25;
    v18 = v24;
  }

  v26 = v13 <= 2;
  if (v13 <= 2)
  {
    v27 = v19;
  }

  else
  {
    v27 = v20;
  }

  if (v26)
  {
    v28 = v18;
  }

  else
  {
    v28 = v21;
  }

  v29 = objc_opt_self();
  v30._countAndFlagsBits = v27;
  v30._object = v28;
  String.append(_:)(v30);

  v31 = String._bridgeToObjectiveC()();

  [v29 logInfo:v31];

  if (v10)
  {
    if (v42)
    {
      sub_10007D8CC(v7, v41, v10, v40, v43);
LABEL_30:

      return (*(v44 + 8))(v7, v5);
    }

    if ((v43 & 1) == 0)
    {
      if (v40 == 1)
      {
        if (qword_100113628 != -1)
        {
          swift_once();
        }

        v38 = UUID.uuidString.getter();
        sub_100079614(v38, v39);
        goto LABEL_35;
      }

      if (!v40)
      {
        if (qword_100113620 != -1)
        {
          swift_once();
        }

        v35 = UUID.uuidString.getter();
        sub_100076EA4(v35, v36);
LABEL_35:

        goto LABEL_30;
      }
    }

    AlarmManager.stop(id:ownerID:)();
    goto LABEL_30;
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  _StringGuts.grow(_:)(73);
  v32._countAndFlagsBits = 0xD000000000000047;
  v32._object = 0x80000001000D7D90;
  String.append(_:)(v32);
  v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v33);

  v34 = String._bridgeToObjectiveC()();

  [v29 logError:v34];

  return (*(v44 + 8))(v7, v5);
}

uint64_t sub_100012558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1000032D4(&qword_100114930, &qword_1000D1CF0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = sub_1000032D4(&qword_100114938, &qword_1000D1CF8);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = sub_1000032D4(&qword_100114940, &qword_1000D1D00);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v27 = v2[1];
  v28 = v27;
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.getter();
  v16 = 0.0;
  if (v26)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 150.0;
  }

  v18 = sub_1000032D4(&qword_100114948, &qword_1000D1D08);
  (*(*(v18 - 8) + 16))(v7, a1, v18);
  v19 = &v7[*(v5 + 44)];
  *v19 = 0;
  *(v19 + 1) = v17;
  v26 = v2[2];
  v27 = v26;
  State.wrappedValue.getter();
  if (v25)
  {
    v16 = 1.0;
  }

  sub_10002C7C4(v7, v11, &qword_100114930, &qword_1000D1CF0);
  *&v11[*(v9 + 44)] = v16;
  v20 = swift_allocObject();
  v21 = v2[1];
  *(v20 + 1) = *v2;
  *(v20 + 2) = v21;
  *(v20 + 3) = v2[2];
  sub_10002C7C4(v11, v15, &qword_100114938, &qword_1000D1CF8);
  v22 = &v15[*(v13 + 44)];
  *v22 = sub_1000294F0;
  v22[1] = v20;
  v22[2] = 0;
  v22[3] = 0;
  sub_10002C7C4(v15, v24, &qword_100114940, &qword_1000D1D00);
  sub_10002CFC4(&v28, &v26, &qword_100114140, &qword_1000D7290);
  return sub_10002CFC4(&v27, &v26, &qword_100114140, &qword_1000D7290);
}

uint64_t sub_10001284C(uint64_t a1)
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();

  (*(*(a1 + 8) + 16))();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10001295C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  GeometryProxy.size.getter();
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_1000032D4(&qword_100114A78, &qword_1000D1DE8);
  sub_100012A2C(a1, a2 + *(v5 + 44));
  v6 = static Color.black.getter();
  LOBYTE(a1) = static Edge.Set.all.getter();
  v7 = a2 + *(sub_1000032D4(&qword_100114A80, &qword_1000D1DF0) + 36);
  *v7 = v6;
  v7[8] = a1;
  LOBYTE(v6) = static Edge.Set.vertical.getter();
  result = sub_1000032D4(&qword_100114A88, &qword_1000D1DF8);
  *(a2 + *(result + 36)) = v6;
  return result;
}

uint64_t sub_100012A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1000032D4(&qword_100114A90, &qword_1000D1E00);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v47[-v11];
  v13 = sub_1000032D4(&qword_100114A98, &qword_1000D1E08);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v47[-v17];
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v19 = a2 + *(sub_1000032D4(&qword_100114AA0, &qword_1000D1E10) + 44);
  *v18 = static VerticalAlignment.top.getter();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v20 = sub_1000032D4(&qword_100114AA8, &qword_1000D1E18);
  sub_100012E04(a1, &v18[*(v20 + 44)]);
  v48 = a1;
  sub_1000032D4(&qword_100114AB0, &qword_1000D1E20);
  sub_10002DAD8(&qword_100114AB8, &qword_100114AB0, &qword_1000D1E20, &protocol conformance descriptor for HStack<A>);
  GlassEffectContainer.init(spacing:content:)();
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v21 = &v12[*(v7 + 44)];
  *v21 = a1;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  sub_10002CFC4(v18, v16, &qword_100114A98, &qword_1000D1E08);
  sub_10002CFC4(v12, v10, &qword_100114A90, &qword_1000D1E00);
  sub_10002CFC4(v16, v19, &qword_100114A98, &qword_1000D1E08);
  v26 = sub_1000032D4(&qword_100114AC0, &qword_1000D1E28);
  v27 = v19 + *(v26 + 48);
  *v27 = 0;
  *(v27 + 8) = 1;
  sub_10002CFC4(v10, v19 + *(v26 + 64), &qword_100114A90, &qword_1000D1E00);
  sub_10002D02C(v12, &qword_100114A90, &qword_1000D1E00);
  sub_10002D02C(v18, &qword_100114A98, &qword_1000D1E08);
  sub_10002D02C(v10, &qword_100114A90, &qword_1000D1E00);
  sub_10002D02C(v16, &qword_100114A98, &qword_1000D1E08);
  LOBYTE(v19) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = a2 + *(sub_1000032D4(&qword_100114AC8, &qword_1000D1E30) + 36);
  *v36 = v19;
  *(v36 + 8) = v29;
  *(v36 + 16) = v31;
  *(v36 + 24) = v33;
  *(v36 + 32) = v35;
  *(v36 + 40) = 0;
  LOBYTE(v19) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  result = sub_1000032D4(&qword_100114AD0, &qword_1000D1E38);
  v46 = a2 + *(result + 36);
  *v46 = v19;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  return result;
}

uint64_t sub_100012E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v259 = a2;
  v5 = type metadata accessor for Color.RGBColorSpace();
  v257 = *(v5 - 8);
  v258 = v5;
  __chkstk_darwin(v5);
  v256 = &v201 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Font._StylisticAlternative();
  v229 = *(v7 - 8);
  v230 = v7;
  __chkstk_darwin(v7);
  v228 = &v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032D4(&qword_100114338, &qword_1000D15B8);
  __chkstk_darwin(v9 - 8);
  v272 = &v201 - v10;
  v240 = sub_1000032D4(&qword_100114340, &qword_1000D15C0);
  v235 = *(v240 - 8);
  __chkstk_darwin(v240);
  v232 = &v201 - v11;
  v231 = sub_1000032D4(&qword_100114AF0, &qword_1000D1E58);
  __chkstk_darwin(v231);
  v239 = &v201 - v12;
  v236 = sub_1000032D4(&qword_100114AF8, &qword_1000D1E60);
  __chkstk_darwin(v236);
  v238 = &v201 - v13;
  v234 = sub_1000032D4(&qword_100114B00, &qword_1000D1E68);
  __chkstk_darwin(v234);
  v237 = &v201 - v14;
  v233 = sub_1000032D4(&qword_100114B08, &qword_1000D1E70);
  __chkstk_darwin(v233);
  v243 = &v201 - v15;
  v241 = sub_1000032D4(&qword_100114B10, &qword_1000D1E78);
  __chkstk_darwin(v241);
  v244 = &v201 - v16;
  v242 = sub_1000032D4(&qword_100114B18, &qword_1000D1E80);
  __chkstk_darwin(v242);
  v247 = &v201 - v17;
  v245 = sub_1000032D4(&qword_100114B20, &qword_1000D1E88);
  __chkstk_darwin(v245);
  v250 = &v201 - v18;
  v249 = sub_1000032D4(&qword_100114B28, &qword_1000D1E90);
  __chkstk_darwin(v249);
  v248 = &v201 - v19;
  v246 = sub_1000032D4(&qword_100114B30, &qword_1000D1E98);
  __chkstk_darwin(v246);
  v251 = &v201 - v20;
  v252 = sub_1000032D4(&qword_100114B38, &qword_1000D1EA0);
  __chkstk_darwin(v252);
  v253 = &v201 - v21;
  v22 = sub_1000032D4(&qword_100114B40, &qword_1000D1EA8);
  v23 = __chkstk_darwin(v22 - 8);
  v255 = &v201 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v254 = &v201 - v25;
  v26 = type metadata accessor for AlarmAlertFullScreenAmbient(0);
  v225 = *(v26 - 8);
  __chkstk_darwin(v26);
  v226 = v27;
  v271 = &v201 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Font.Context();
  v203 = *(v28 - 8);
  v204 = v28;
  __chkstk_darwin(v28);
  v202 = (&v201 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v269 = type metadata accessor for DynamicTypeSize();
  v275 = *(v269 - 8);
  __chkstk_darwin(v269);
  v268 = &v201 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_1000032D4(&qword_100114B48, &qword_1000D1EB0);
  __chkstk_darwin(v208);
  v32 = &v201 - v31;
  v33 = sub_1000032D4(&qword_100114B50, &qword_1000D1EB8);
  v212 = *(v33 - 8);
  v213 = v33;
  __chkstk_darwin(v33);
  v211 = &v201 - v34;
  v210 = sub_1000032D4(&qword_100114B58, &qword_1000D1EC0);
  __chkstk_darwin(v210);
  v264 = &v201 - v35;
  v214 = sub_1000032D4(&qword_100114B60, &qword_1000D1EC8);
  __chkstk_darwin(v214);
  v266 = &v201 - v36;
  v217 = sub_1000032D4(&qword_100114B68, &qword_1000D1ED0);
  __chkstk_darwin(v217);
  v267 = &v201 - v37;
  v38 = sub_1000032D4(&qword_100114B70, &qword_1000D1ED8);
  v218 = *(v38 - 8);
  v219 = v38;
  __chkstk_darwin(v38);
  v216 = &v201 - v39;
  v215 = sub_1000032D4(&qword_100114B78, &qword_1000D1EE0);
  __chkstk_darwin(v215);
  v221 = &v201 - v40;
  v220 = sub_1000032D4(&qword_100114B80, &qword_1000D1EE8);
  __chkstk_darwin(v220);
  v222 = &v201 - v41;
  v223 = sub_1000032D4(&qword_100114B88, &qword_1000D1EF0);
  __chkstk_darwin(v223);
  v224 = &v201 - v42;
  v43 = sub_1000032D4(&qword_100114B90, &qword_1000D1EF8);
  v44 = __chkstk_darwin(v43 - 8);
  v227 = &v201 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v270 = &v201 - v46;
  v47 = type metadata accessor for AlarmPresentationState.Mode();
  v206 = *(v47 - 8);
  v207 = v47;
  __chkstk_darwin(v47);
  v49 = &v201 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v51 = __chkstk_darwin(v50 - 8);
  v209 = &v201 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v55 = &v201 - v54;
  __chkstk_darwin(v53);
  v57 = &v201 - v56;
  v58 = *(v26 + 20);
  v59 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v274 = v58;
  v263 = v59;
  AlarmAttributes.metadata.getter();
  v60 = type metadata accessor for MTAlarmCustomContent();
  v61 = *(v60 - 8);
  v261 = *(v61 + 48);
  v262 = v61 + 48;
  v62 = v261(v57, 1, v60);
  v273 = v26;
  v260 = v61;
  if (v62 == 1)
  {
    sub_10002D02C(v57, &unk_100118100, &qword_1000D1250);
LABEL_3:
    v63 = 0;
    goto LABEL_6;
  }

  v64 = MTAlarmCustomContent.isSleepAlarm.getter();
  (*(v61 + 8))(v57, v60);
  if (v64 == 2)
  {
    v63 = 0;
  }

  else
  {
    if ((v64 & 1) == 0)
    {
      goto LABEL_3;
    }

    v194 = (a1 + v273[15]);
    v196 = *v194;
    v195 = v194[1];
    *&v289 = v196;
    *(&v289 + 1) = v195;
    sub_1000032D4(&qword_100114C60, &qword_1000D1F58);
    State.wrappedValue.getter();
    v197 = v279;
    if (qword_100113610 != -1)
    {
      swift_once();
    }

    v198 = sub_10005926C();
    if (!v198 || (v199 = v198, v200 = [v198 isAuthorizedForWidgetUpdates], v199, (v200 & 1) == 0))
    {

      goto LABEL_3;
    }

    swift_getKeyPath();
    *&v289 = v197;
    sub_100025228(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v63 = *(v197 + 48);
  }

LABEL_6:
  AlarmAttributes.metadata.getter();
  if (v261(v55, 1, v60) == 1)
  {
    sub_10002D02C(v55, &unk_100118100, &qword_1000D1250);
  }

  else
  {
    v65 = MTAlarmCustomContent.isSleepAlarm.getter();
    (*(v260 + 8))(v55, v60);
    if (v65 != 2 && (v65 & 1) != 0)
    {
      v66 = sub_10001FB00();
LABEL_12:
      v68 = v66;
      v69 = v67;
      goto LABEL_14;
    }
  }

  v66 = AlarmPresentationState.alarmLabel.getter();
  if (v67)
  {
    goto LABEL_12;
  }

  AlarmPresentationState.mode.getter();
  v68 = sub_10000AAEC(v49);
  v69 = v70;
  (*(v206 + 8))(v49, v207);
LABEL_14:
  *v32 = static HorizontalAlignment.leading.getter();
  *(v32 + 1) = 0;
  v32[16] = 1;
  v71 = &v32[*(sub_1000032D4(&qword_100114B98, &qword_1000D1F00) + 44)];
  v265 = a1;
  sub_100014BCC(v63, a1, v68, v69, v71);

  KeyPath = swift_getKeyPath();
  v73 = &v32[*(sub_1000032D4(&qword_100114BA0, &qword_1000D1F08) + 36)];
  *v73 = KeyPath;
  *(v73 + 1) = 2;
  v73[16] = 0;
  if (qword_1001136A8 != -1)
  {
    swift_once();
  }

  v74 = qword_10011F6E0;
  v75 = swift_getKeyPath();
  v76 = &v32[*(v208 + 36)];
  *v76 = v75;
  v76[1] = v74;
  v77 = v275;
  v78 = *(v275 + 104);
  v79 = v268;
  LODWORD(v206) = enum case for DynamicTypeSize.large(_:);
  v80 = v269;
  v207 = v275 + 104;
  v205 = v78;
  v78(v268);
  sub_100029D04();

  v81 = v211;
  View.dynamicTypeSize(_:)();
  v82 = *(v77 + 8);
  v275 = v77 + 8;
  v208 = v82;
  v82(v79, v80);
  sub_10002D02C(v32, &qword_100114B48, &qword_1000D1EB0);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v83 = v264;
  (*(v212 + 32))(v264, v81, v213);
  v84 = &v83[*(v210 + 36)];
  v85 = v284;
  *(v84 + 4) = v283;
  *(v84 + 5) = v85;
  *(v84 + 6) = v285;
  v86 = v280;
  *v84 = v279;
  *(v84 + 1) = v86;
  v87 = v282;
  *(v84 + 2) = v281;
  *(v84 + 3) = v87;
  static Alignment.top.getter();
  _FrameLayout.init(width:height:alignment:)();
  v88 = v83;
  v89 = v266;
  sub_10002C7C4(v88, v266, &qword_100114B58, &qword_1000D1EC0);
  v90 = (v89 + *(v214 + 36));
  v91 = v287;
  *v90 = v286;
  v90[1] = v91;
  v90[2] = v288;
  v92 = v273;
  v93 = v265;
  v94 = (v265 + v273[10]);
  v95 = *v94;
  v96 = *(v94 + 1);
  LODWORD(v214) = v95;
  LOBYTE(v289) = v95;
  v213 = v96;
  *(&v289 + 1) = v96;
  v264 = sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.getter();
  v97 = v217;
  v98 = v260;
  if (v277)
  {
    v99 = v202;
    sub_10001D9E8(type metadata accessor for AlarmAlertFullScreenAmbient, v202);
    v100 = Font.platformFont(in:)();
    CapHeight = CTFontGetCapHeight(v100);

    (*(v203 + 8))(v99, v204);
  }

  else
  {
    CapHeight = 50.0;
  }

  v102 = v271;
  v103 = v209;
  v104 = v267;
  sub_10002C7C4(v266, v267, &qword_100114B60, &qword_1000D1EC8);
  v105 = (v104 + *(v97 + 36));
  *v105 = 0.0;
  v105[1] = CapHeight;
  AlarmAttributes.metadata.getter();
  if (v261(v103, 1, v60) == 1)
  {
    sub_10002D02C(v103, &unk_100118100, &qword_1000D1250);
  }

  else
  {
    MTAlarmCustomContent.isSleepAlarm.getter();
    (*(v98 + 8))(v103, v60);
  }

  v106 = v272;
  sub_100029EA0();
  v107 = v216;
  v108 = v267;
  View.hyphenationFactor(_:)();
  sub_10002D02C(v108, &qword_100114B68, &qword_1000D1ED0);
  v109 = v93 + v92[13];
  v110 = *v109;
  v111 = *(v109 + 8);
  LOBYTE(v289) = v110;
  *(&v289 + 1) = v111;
  State.wrappedValue.getter();
  if (v277)
  {
    v112 = 1.0;
  }

  else
  {
    v112 = 0.0;
  }

  v113 = v221;
  (*(v218 + 32))(v221, v107, v219);
  *(v113 + *(v215 + 36)) = v112;
  if (qword_100113748 != -1)
  {
    swift_once();
  }

  v114 = qword_10011F788;
  v115 = v222;
  sub_10002C7C4(v113, v222, &qword_100114B78, &qword_1000D1EE0);
  *(v115 + *(v220 + 36)) = v114;
  sub_100025564(v93, v102, type metadata accessor for AlarmAlertFullScreenAmbient);
  v116 = (*(v225 + 80) + 16) & ~*(v225 + 80);
  v266 = *(v225 + 80);
  v263 = v116 + v226;
  v117 = swift_allocObject();
  v267 = v116;
  sub_1000255CC(v102, v117 + v116, type metadata accessor for AlarmAlertFullScreenAmbient);
  v118 = v224;
  sub_10002C7C4(v115, v224, &qword_100114B80, &qword_1000D1EE8);
  v119 = (v118 + *(v223 + 36));
  *v119 = sub_10002A2B0;
  v119[1] = v117;
  v119[2] = 0;
  v119[3] = 0;
  v274 = v114;

  LocalizedStringKey.init(stringLiteral:)();
  sub_10002A2DC();
  View.accessibilityLabel(_:)();

  sub_10002D02C(v118, &qword_100114B88, &qword_1000D1EF0);
  static TimeZone.autoupdatingCurrent.getter();
  v120 = type metadata accessor for TimeZone();
  v121 = *(v120 - 8);
  v261 = *(v121 + 56);
  v262 = v120;
  v260 = v121 + 56;
  v261(v106, 0, 1);
  v122 = Text.init(dateFormatTemplate:timeZone:)();
  v124 = v123;
  v126 = v125;
  if (qword_1001136B0 != -1)
  {
    swift_once();
  }

  Font.monospacedDigit()();
  v128 = v228;
  v127 = v229;
  v129 = v230;
  (*(v229 + 104))(v228, enum case for Font._StylisticAlternative.three(_:), v230);
  Font._stylisticAlternative(_:)();

  (*(v127 + 8))(v128, v129);
  v130 = Text.font(_:)();
  v132 = v131;
  LOBYTE(v128) = v133;
  v135 = v134;

  sub_100025B0C(v122, v124, v126 & 1);

  *&v289 = v130;
  *(&v289 + 1) = v132;
  v136 = v128 & 1;
  LOBYTE(v290) = v128 & 1;
  *(&v290 + 1) = v135;
  v137 = v268;
  v138 = v269;
  v205(v268, v206, v269);
  v139 = v232;
  View.dynamicTypeSize(_:)();
  (v208)(v137, v138);
  sub_100025B0C(v130, v132, v136);

  static Alignment.bottomTrailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v140 = v239;
  (*(v235 + 32))(v239, v139, v240);
  v141 = &v140[*(v231 + 36)];
  v142 = v294;
  *(v141 + 4) = v293;
  *(v141 + 5) = v142;
  *(v141 + 6) = v295;
  v143 = v290;
  *v141 = v289;
  *(v141 + 1) = v143;
  v144 = v292;
  *(v141 + 2) = v291;
  *(v141 + 3) = v144;
  v145 = static Color.white.getter();
  v146 = swift_getKeyPath();
  v147 = v140;
  v148 = v238;
  sub_10002C7C4(v147, v238, &qword_100114AF0, &qword_1000D1E58);
  v149 = (v148 + *(v236 + 36));
  *v149 = v146;
  v149[1] = v145;
  v150 = swift_getKeyPath();
  v151 = v237;
  sub_10002C7C4(v148, v237, &qword_100114AF8, &qword_1000D1E60);
  v152 = v151 + *(v234 + 36);
  *v152 = v150;
  *(v152 + 8) = 1;
  *(v152 + 16) = 0;
  v153 = swift_getKeyPath();
  v154 = v151;
  v155 = v243;
  sub_10002C7C4(v154, v243, &qword_100114B00, &qword_1000D1E68);
  v156 = v155 + *(v233 + 36);
  *v156 = v153;
  *(v156 + 8) = 1;
  (*(v257 + 104))(v256, enum case for Color.RGBColorSpace.sRGBLinear(_:), v258);
  v157 = 0.0;
  v158 = Color.init(_:white:opacity:)();
  v159 = v155;
  v160 = v244;
  sub_10002C7C4(v159, v244, &qword_100114B08, &qword_1000D1E70);
  v161 = (v160 + *(v241 + 36));
  *v161 = v158;
  v161[1] = 0x3FF0000000000000;
  v161[2] = 0;
  v161[3] = 0;
  v162 = swift_getKeyPath();
  v163 = v160;
  v164 = v247;
  sub_10002C7C4(v163, v247, &qword_100114B10, &qword_1000D1E78);
  v165 = (v164 + *(v242 + 36));
  *v165 = v162;
  v165[1] = 0x3FE6666666666666;
  v277 = v214;
  v278 = v213;
  State.wrappedValue.getter();
  if (v276)
  {
    v166 = 0.0;
  }

  else
  {
    v166 = 50.0;
  }

  v167 = v164;
  v168 = v250;
  sub_10002C7C4(v167, v250, &qword_100114B18, &qword_1000D1E80);
  v169 = v168 + *(v245 + 36);
  *v169 = 0;
  *(v169 + 8) = v166;
  v170 = v265;
  v171 = v265 + v273[12];
  v172 = *v171;
  v173 = *(v171 + 8);
  v277 = v172;
  v278 = v173;
  State.wrappedValue.getter();
  if (v276)
  {
    v157 = 1.0;
  }

  v174 = v248;
  sub_10002C7C4(v168, v248, &qword_100114B20, &qword_1000D1E88);
  *(v174 + *(v249 + 36)) = v157;
  v175 = v251;
  sub_10002C7C4(v174, v251, &qword_100114B28, &qword_1000D1E90);
  *(v175 + *(v246 + 36)) = v274;
  v176 = v170;
  v177 = v271;
  sub_100025564(v176, v271, type metadata accessor for AlarmAlertFullScreenAmbient);
  v178 = swift_allocObject();
  sub_1000255CC(v177, v178 + v267, type metadata accessor for AlarmAlertFullScreenAmbient);
  v179 = v253;
  sub_10002C7C4(v175, v253, &qword_100114B30, &qword_1000D1E98);
  v180 = (v179 + *(v252 + 36));
  *v180 = sub_10002A4F0;
  v180[1] = v178;
  v180[2] = 0;
  v180[3] = 0;

  v181 = v272;
  static TimeZone.autoupdatingCurrent.getter();
  (v261)(v181, 0, 1, v262);
  v182 = Text.init(dateFormatTemplate:timeZone:)();
  v184 = v183;
  LOBYTE(v177) = v185;
  sub_10002A51C();
  v186 = v254;
  View.accessibilityLabel(_:)();
  sub_100025B0C(v182, v184, v177 & 1);

  sub_10002D02C(v179, &qword_100114B38, &qword_1000D1EA0);
  v187 = v270;
  v188 = v227;
  sub_10002CFC4(v270, v227, &qword_100114B90, &qword_1000D1EF8);
  v189 = v255;
  sub_10002CFC4(v186, v255, &qword_100114B40, &qword_1000D1EA8);
  v190 = v259;
  sub_10002CFC4(v188, v259, &qword_100114B90, &qword_1000D1EF8);
  v191 = sub_1000032D4(&qword_100114C58, &qword_1000D1F50);
  v192 = v190 + *(v191 + 48);
  *v192 = 0;
  *(v192 + 8) = 1;
  sub_10002CFC4(v189, v190 + *(v191 + 64), &qword_100114B40, &qword_1000D1EA8);
  sub_10002D02C(v186, &qword_100114B40, &qword_1000D1EA8);
  sub_10002D02C(v187, &qword_100114B90, &qword_1000D1EF8);
  sub_10002D02C(v189, &qword_100114B40, &qword_1000D1EA8);
  return sub_10002D02C(v188, &qword_100114B90, &qword_1000D1EF8);
}

uint64_t sub_100014BCC@<X0>(char a1@<W0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1000032D4(&qword_100114C70, &qword_1000D1F88);
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  v13 = sub_1000032D4(&qword_100114C78, &qword_1000D1F90);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v62 = sub_1000032D4(&qword_100114C80, &qword_1000D1F98);
  __chkstk_darwin(v62);
  v61 = &v54 - v16;
  v17 = sub_1000032D4(&qword_100114C88, &qword_1000D1FA0);
  v18 = __chkstk_darwin(v17 - 8);
  __chkstk_darwin(v18);
  if (a1)
  {
    v56 = a3;
    v57 = v20;
    v21 = &v54 - v19;
    v22 = static VerticalAlignment.center.getter();
    sub_10001523C(&v75);
    v54 = v75;
    v58 = v13;
    v59 = a5;
    v23 = v76;
    v24 = BYTE8(v76);
    v25 = v77;
    v60 = v10;
    v69 = 1;
    v68 = BYTE8(v76);
    v26 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    v70 = v22;
    LOBYTE(v71[0]) = 1;
    *(v71 + 8) = v54;
    *(&v71[1] + 1) = v23;
    LOBYTE(v72) = v24;
    *(&v72 + 1) = v25;
    *&v73 = KeyPath;
    *(&v73 + 1) = v26;
    *v21 = static VerticalAlignment.center.getter();
    *(v21 + 1) = 0;
    v21[16] = 1;
    v55 = v21;
    *&v54 = &v21[*(sub_1000032D4(&qword_100114CA8, &qword_1000D1FB0) + 44)];
    *&v75 = v56;
    *(&v75 + 1) = a4;
    sub_100025FB4();

    v28 = Text.init<A>(_:)();
    v30 = v29;
    LOBYTE(v26) = v31;
    v32 = [objc_opt_self() mtOrange];
    Color.init(uiColor:)();
    v33 = Text.foregroundColor(_:)();
    v56 = v15;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    sub_100025B0C(v28, v30, v26 & 1);

    *&v75 = v33;
    *(&v75 + 1) = v35;
    LOBYTE(v76) = v37 & 1;
    *(&v76 + 1) = v39;
    v40 = v54;
    View.lineLimit(_:reservesSpace:)();
    sub_100025B0C(v33, v35, v37 & 1);

    *(v40 + *(sub_1000032D4(&qword_100114CB0, &qword_1000D1FB8) + 36)) = 256;
    v65 = v71[1];
    v66 = v72;
    v67 = v73;
    v63 = v70;
    v64 = v71[0];
    v41 = &qword_1000D1FA0;
    v42 = v55;
    v43 = v57;
    sub_10002CFC4(v55, v57, &qword_100114C88, &qword_1000D1FA0);
    v44 = v66;
    v74[2] = v65;
    v74[3] = v66;
    v45 = v67;
    v74[4] = v67;
    v47 = v63;
    v46 = v64;
    v74[0] = v63;
    v74[1] = v64;
    v48 = v61;
    *(v61 + 2) = v65;
    v48[3] = v44;
    v48[4] = v45;
    *v48 = v47;
    v48[1] = v46;
    v49 = sub_1000032D4(&qword_100114CB8, &qword_1000D1FC0);
    sub_10002CFC4(v43, v48 + *(v49 + 48), &qword_100114C88, &qword_1000D1FA0);
    sub_10002CFC4(&v70, &v75, &qword_100114CC0, &qword_1000D1FC8);
    sub_10002CFC4(v74, &v75, &qword_100114CC0, &qword_1000D1FC8);
    sub_10002D02C(v43, &qword_100114C88, &qword_1000D1FA0);
    v77 = v65;
    v78 = v66;
    v79 = v67;
    v75 = v63;
    v76 = v64;
    sub_10002D02C(&v75, &qword_100114CC0, &qword_1000D1FC8);
    sub_10002CFC4(v48, v56, &qword_100114C80, &qword_1000D1F98);
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100114C98, &qword_100114C80, &qword_1000D1F98, &protocol conformance descriptor for TupleView<A>);
    sub_10002DAD8(&qword_100114CA0, &qword_100114C70, &qword_1000D1F88, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10002D02C(&v70, &qword_100114CC0, &qword_1000D1FC8);
    sub_10002D02C(v48, &qword_100114C80, &qword_1000D1F98);
    v50 = v42;
    v51 = &qword_100114C88;
  }

  else
  {
    *v12 = static VerticalAlignment.firstTextLineCenter.getter();
    *(v12 + 1) = 0x4020000000000000;
    v12[16] = 0;
    v52 = sub_1000032D4(&qword_100114C90, &qword_1000D1FA8);
    sub_100015458(a3, a4, a2, &v12[*(v52 + 44)]);
    v41 = &qword_1000D1F88;
    sub_10002CFC4(v12, v15, &qword_100114C70, &qword_1000D1F88);
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100114C98, &qword_100114C80, &qword_1000D1F98, &protocol conformance descriptor for TupleView<A>);
    sub_10002DAD8(&qword_100114CA0, &qword_100114C70, &qword_1000D1F88, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    v50 = v12;
    v51 = &qword_100114C70;
  }

  return sub_10002D02C(v50, v51, v41);
}

uint64_t sub_10001523C@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for AlarmAlertFullScreenAmbient(0);
  sub_1000032D4(&qword_100114C60, &qword_1000D1F58);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_100025228(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v12 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName + 8);

  if (v3)
  {
    v3 = Image.init(systemName:)();
  }

  State.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100025FB4();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v8 &= 1u;
  sub_100025AFC(v4, v6, v8);

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  sub_100025B0C(v4, v6, v8);
}

uint64_t sub_100015458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1000032D4(&qword_100114CC8, &qword_1000D2020);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  v14 = static Color.secondary.getter();
  type metadata accessor for AlarmAlertAnimation();
  v15 = swift_allocObject();
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0x4010000000000000;
  v13[16] = 0;
  v16 = sub_1000032D4(&qword_100114CD0, &qword_1000D2028);
  sub_100015608(a1, a2, a3, &v13[*(v16 + 44)]);
  sub_10002CFC4(v13, v11, &qword_100114CC8, &qword_1000D2020);
  *a4 = v14;
  a4[1] = 0x4047800000000000;
  a4[2] = v15;
  v17 = sub_1000032D4(&qword_100114CD8, &qword_1000D2030);
  sub_10002CFC4(v11, a4 + *(v17 + 48), &qword_100114CC8, &qword_1000D2020);

  sub_10002D02C(v13, &qword_100114CC8, &qword_1000D2020);
  sub_10002D02C(v11, &qword_100114CC8, &qword_1000D2020);
}

uint64_t sub_100015608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35[1] = a3;
  v7 = sub_1000032D4(&qword_100114CE0, &qword_1000D2038);
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = v35 - v8;
  v10 = sub_1000032D4(&qword_100114CE8, &qword_1000D2040);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v35 - v14;
  v41 = a1;
  v42 = a2;
  sub_100025FB4();

  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  static Color.secondary.getter();
  v37 = Text.foregroundColor(_:)();
  v38 = v21;
  v23 = v22;
  v36 = v24;

  sub_100025B0C(v16, v18, v20 & 1);

  v25 = AlarmPresentationState.bundleID.getter();
  if (!v26)
  {
    goto LABEL_7;
  }

  if (v25 != 0xD000000000000015 || v26 != 0x80000001000D7F20)
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      v27 = 1;
      goto LABEL_8;
    }

LABEL_7:
    *v9 = static VerticalAlignment.center.getter();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v29 = sub_1000032D4(&qword_100114CF0, &qword_1000D2048);
    sub_100015960(&v9[*(v29 + 44)]);
    sub_10002C7C4(v9, v15, &qword_100114CE0, &qword_1000D2038);
    v27 = 0;
    goto LABEL_8;
  }

  v27 = 1;
LABEL_8:
  (*(v39 + 56))(v15, v27, 1, v40);
  sub_10002CFC4(v15, v13, &qword_100114CE8, &qword_1000D2040);
  v31 = v37;
  v30 = v38;
  *a4 = v37;
  *(a4 + 8) = v23;
  v32 = v36 & 1;
  *(a4 + 16) = v36 & 1;
  *(a4 + 24) = v30;
  v33 = sub_1000032D4(&qword_100114CF8, &qword_1000D2050);
  sub_10002CFC4(v13, a4 + *(v33 + 48), &qword_100114CE8, &qword_1000D2040);
  sub_100025AFC(v31, v23, v32);

  sub_10002D02C(v15, &qword_100114CE8, &qword_1000D2040);
  sub_10002D02C(v13, &qword_100114CE8, &qword_1000D2040);
  sub_100025B0C(v31, v23, v32);
}

uint64_t sub_100015960@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_1000032D4(&qword_100114310, &qword_1000D1590);
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v3 = &v25 - v2;
  v4 = AlarmPresentationState.localizedAppName.getter();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0xE000000000000000;
  if (v5)
  {
    v7 = v5;
  }

  v28 = v6;
  v29 = v7;
  sub_100025FB4();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  static Color.secondary.getter();
  Color.opacity(_:)();

  v13 = Text.foregroundColor(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_100025B0C(v8, v10, v12 & 1);

  v28 = v13;
  v29 = v15;
  v17 &= 1u;
  v30 = v17;
  v31 = v19;
  View.lineLimit(_:reservesSpace:)();
  sub_100025B0C(v13, v15, v17);

  v20 = static Font.title3.getter();
  KeyPath = swift_getKeyPath();
  v22 = v27;
  (*(v25 + 32))(v27, v3, v26);
  result = sub_1000032D4(&qword_100114318, &qword_1000D1598);
  v24 = (v22 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = v20;
  return result;
}

uint64_t sub_100015B70(uint64_t a1)
{
  if (qword_100113718 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F750);
  withAnimation<A>(_:_:)();
  if (qword_100113720 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F758);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_100015CA4(uint64_t a1)
{
  if (qword_100113708 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F740);
  withAnimation<A>(_:_:)();
  if (qword_100113710 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F748);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_100015DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x403C000000000000;
  *(a2 + 16) = 0;
  v4 = sub_1000032D4(&qword_100114AD8, &qword_1000D1E40);
  return sub_100015E30(a1, a2 + *(v4 + 44));
}

uint64_t sub_100015E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v3 = type metadata accessor for SlideTransition();
  v146 = *(v3 - 8);
  v147 = v3;
  v4 = __chkstk_darwin(v3);
  v144 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v145 = &v114 - v6;
  v7 = type metadata accessor for AlarmPresentation.Alert();
  v136 = *(v7 - 8);
  v137 = v7;
  __chkstk_darwin(v7);
  v135 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for AlarmPresentation();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v132 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for AlarmKitStopButton(0);
  __chkstk_darwin(v138);
  v141 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1000032D4(&qword_100114280, &qword_1000D1520);
  v11 = __chkstk_darwin(v140);
  v143 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v139 = &v114 - v14;
  __chkstk_darwin(v13);
  v142 = &v114 - v15;
  v16 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v17 = __chkstk_darwin(v16 - 8);
  v130 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v122 = &v114 - v19;
  v151 = type metadata accessor for AlarmPresentationState();
  v156 = *(v151 - 8);
  v20 = __chkstk_darwin(v151);
  v154 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v121 = &v114 - v22;
  v123 = type metadata accessor for AlarmKitButton(0);
  __chkstk_darwin(v123);
  v126 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000032D4(&qword_1001142D8, &qword_1000D1568);
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v125 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v124 = &v114 - v28;
  v29 = sub_1000032D4(&qword_1001141F8, &qword_1000D14C8);
  v30 = __chkstk_darwin(v29 - 8);
  v129 = &v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v114 - v32;
  v34 = type metadata accessor for AlarmButton();
  v152 = *(v34 - 8);
  v153 = v34;
  v35 = __chkstk_darwin(v34);
  v127 = &v114 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v128 = &v114 - v37;
  v38 = type metadata accessor for AlarmPresentationState.Mode();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v114 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000032D4(&qword_100114AE0, &qword_1000D1E48);
  v43 = __chkstk_darwin(v42 - 8);
  v131 = &v114 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v46 = &v114 - v45;
  v47 = *(type metadata accessor for AlarmAlertFullScreenAmbient(0) + 20);
  AlarmPresentationState.mode.getter();
  v149 = a1;
  v155 = v47;
  v48 = sub_10000F1FC(v41);
  v49 = *(v39 + 8);
  v49(v41, v38);
  v50 = v156;
  v150 = v46;
  if (v48 == 5)
  {
    goto LABEL_4;
  }

  v120 = v25;
  v119 = v24;
  v51 = v149;
  AlarmPresentationState.mode.getter();
  sub_10000F8DC(v41, v33);
  v49(v41, v38);
  v52 = v152;
  v53 = v153;
  if ((*(v152 + 48))(v33, 1, v153) == 1)
  {
    sub_10002D02C(v33, &qword_1001141F8, &qword_1000D14C8);
    v50 = v156;
    v46 = v150;
    v24 = v119;
    v25 = v120;
LABEL_4:
    (*(v25 + 56))(v46, 1, 1, v24);
    v54 = *(v50 + 16);
    v55 = v149;
    v56 = v151;
    v57 = v130;
    goto LABEL_11;
  }

  v58 = *(v52 + 32);
  v59 = v128;
  v117 = v52 + 32;
  v116 = v58;
  v58(v128, v33, v53);
  v60 = v121;
  v118 = *(v156 + 16);
  v118(v121, v51, v151);
  (*(v52 + 16))(v127, v59, v53);
  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v61 = v122;
  AlarmAttributes.metadata.getter();
  v62 = type metadata accessor for MTAlarmCustomContent();
  v63 = *(v62 - 8);
  v64 = (*(v63 + 48))(v61, 1, v62);
  if (v64 == 1)
  {
    sub_10002D02C(v61, &unk_100118100, &qword_1000D1250);
    v115 = 0;
  }

  else
  {
    v115 = MTAlarmCustomContent.type.getter();
    (*(v63 + 8))(v61, v62);
  }

  v65 = v126;
  v66 = v64 == 1;
  v55 = v149;
  v67 = AlarmAttributes.tintColor.getter();
  (*(v156 + 32))(v65, v60, v151);
  v68 = v123;
  *(v65 + *(v123 + 20)) = v48;
  v69 = v153;
  v116(v65 + v68[6], v127, v153);
  v70 = v65 + v68[7];
  *v70 = v115;
  *(v70 + 8) = v66;
  *(v65 + v68[8]) = v67;
  *(v65 + v68[9]) = 1;
  v71 = (v65 + v68[10]);
  *v71 = &type metadata for AnimationConstants.RightButtonAnimation;
  v71[1] = &off_100103B88;
  v72 = (v65 + v68[11]);
  v73 = objc_opt_self();
  v74 = [v73 mtOrange];
  v75 = Color.init(uiColor:)();
  v76 = [v73 mtOrange];
  Color.init(uiColor:)();
  v77 = Color.opacity(_:)();

  v78 = static Color.white.getter();
  static Color.white.getter();
  v79 = v65;
  v80 = Color.opacity(_:)();

  v72[3] = &type metadata for StandardSessionUiConfig;
  v72[4] = &off_1001035E8;
  v81 = swift_allocObject();
  *v72 = v81;
  v81[2] = v75;
  v81[3] = v77;
  v81[4] = v78;
  v81[5] = v80;
  if (qword_100113748 != -1)
  {
    swift_once();
  }

  v82 = qword_10011F788;
  (*(v152 + 8))(v128, v69);
  v83 = v125;
  sub_100025564(v65, v125, type metadata accessor for AlarmKitButton);
  v84 = v119;
  *(v83 + *(v119 + 36)) = v82;

  sub_100025A9C(v79, type metadata accessor for AlarmKitButton);
  v85 = v83;
  v86 = v124;
  sub_10002C7C4(v85, v124, &qword_1001142D8, &qword_1000D1568);
  v87 = v86;
  v88 = v150;
  sub_10002C7C4(v87, v150, &qword_1001142D8, &qword_1000D1568);
  (*(v120 + 56))(v88, 0, 1, v84);
  v57 = v130;
  v56 = v151;
  v54 = v118;
LABEL_11:
  v89 = v56;
  v54(v154, v55);
  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  AlarmAttributes.metadata.getter();
  v90 = type metadata accessor for MTAlarmCustomContent();
  v91 = *(v90 - 8);
  v92 = (*(v91 + 48))(v57, 1, v90);
  if (v92 == 1)
  {
    sub_10002D02C(v57, &unk_100118100, &qword_1000D1250);
    v93 = 0;
  }

  else
  {
    v93 = MTAlarmCustomContent.type.getter();
    (*(v91 + 8))(v57, v90);
  }

  v94 = v132;
  AlarmAttributes.presentation.getter();
  v95 = v135;
  AlarmPresentation.alert.getter();
  (*(v133 + 8))(v94, v134);
  v96 = v129;
  AlarmPresentation.Alert.secondaryButton.getter();
  (*(v136 + 8))(v95, v137);
  LODWORD(v95) = (*(v152 + 48))(v96, 1, v153);
  sub_10002D02C(v96, &qword_1001141F8, &qword_1000D14C8);
  if (v95 == 1)
  {
    v97 = AlarmAttributes.tintColor.getter();
  }

  else
  {
    v97 = 0;
  }

  v98 = v141;
  (*(v156 + 32))(v141, v154, v89);
  v99 = v138;
  v100 = v98 + *(v138 + 20);
  *v100 = v93;
  *(v100 + 8) = v92 == 1;
  *(v98 + v99[6]) = v97;
  *(v98 + v99[7]) = 1;
  v101 = (v98 + v99[8]);
  *v101 = &type metadata for AnimationConstants.LeftButtonAnimation;
  v101[1] = &off_100103BB0;
  v102 = v145;
  SlideTransition.init()();
  v104 = v146;
  v103 = v147;
  (*(v146 + 16))(v144, v102, v147);
  sub_100025228(&qword_1001142F0, &type metadata accessor for SlideTransition, &protocol conformance descriptor for SlideTransition);
  v105 = AnyTransition.init<A>(_:)();
  (*(v104 + 8))(v102, v103);
  v106 = v139;
  sub_1000255CC(v98, v139, type metadata accessor for AlarmKitStopButton);
  *(v106 + *(v140 + 36)) = v105;
  v107 = v142;
  sub_10002C7C4(v106, v142, &qword_100114280, &qword_1000D1520);
  v108 = v150;
  v109 = v131;
  sub_10002CFC4(v150, v131, &qword_100114AE0, &qword_1000D1E48);
  v110 = v143;
  sub_10002CFC4(v107, v143, &qword_100114280, &qword_1000D1520);
  v111 = v148;
  sub_10002CFC4(v109, v148, &qword_100114AE0, &qword_1000D1E48);
  v112 = sub_1000032D4(&qword_100114AE8, &qword_1000D1E50);
  sub_10002CFC4(v110, v111 + *(v112 + 48), &qword_100114280, &qword_1000D1520);
  sub_10002D02C(v107, &qword_100114280, &qword_1000D1520);
  sub_10002D02C(v108, &qword_100114AE0, &qword_1000D1E48);
  sub_10002D02C(v110, &qword_100114280, &qword_1000D1520);
  return sub_10002D02C(v109, &qword_100114AE0, &qword_1000D1E48);
}

uint64_t sub_100016E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100025564(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAlertFullScreenAmbient);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1000255CC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AlarmAlertFullScreenAmbient);
  *a2 = sub_100029CD0;
  *(a2 + 8) = v7;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_100016FB4@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&qword_100113780, &qword_1000D08D0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for AlarmAlertCoverSheet(0);
  sub_10002CFC4(v1 + *(v10 + 32), v9, &qword_100113780, &qword_1000D08D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10002C7C4(v9, a1, &qword_100113860, &qword_1000D0290);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100017218@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_1000032D4(&qword_100115E90, &qword_1000D1430);
  __chkstk_darwin(v1 - 8);
  v3 = v16 - v2;
  v4 = type metadata accessor for NSNotificationCenter.Publisher();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032D4(&qword_100114148, &qword_1000D1438);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - v10;
  v12 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  sub_100025228(&qword_100114150, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  Publisher.map<A>(_:)();
  (*(v5 + 8))(v7, v4);
  sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v16[1] = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  sub_10002DAD8(&qword_100114158, &qword_100114148, &qword_1000D1438, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_100026A94();
  Publisher.receive<A>(on:options:)();
  sub_10002D02C(v3, &qword_100115E90, &qword_1000D1430);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10001755C@<X0>(_BYTE *a1@<X8>)
{
  result = static AccessibilitySettings.prefersActionSliderAlternative.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100017588()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000032D4(&qword_1001141B0, &qword_1000D1488);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_1000032D4(&qword_100113860, &qword_1000D0290);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  sub_100016FB4((&v23 - v14));
  (*(v1 + 104))(v13, enum case for UserInterfaceSizeClass.compact(_:), v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_10002CFC4(v15, v6, &qword_100113860, &qword_1000D0290);
  sub_10002CFC4(v13, &v6[v16], &qword_100113860, &qword_1000D0290);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_10002CFC4(v6, v10, &qword_100113860, &qword_1000D0290);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_100025228(&qword_1001141B8, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v1 + 8);
      v21(v20, v0);
      sub_10002D02C(v13, &qword_100113860, &qword_1000D0290);
      sub_10002D02C(v15, &qword_100113860, &qword_1000D0290);
      v21(v10, v0);
      sub_10002D02C(v6, &qword_100113860, &qword_1000D0290);
      return v18 & 1;
    }

    sub_10002D02C(v13, &qword_100113860, &qword_1000D0290);
    sub_10002D02C(v15, &qword_100113860, &qword_1000D0290);
    (*(v1 + 8))(v10, v0);
    goto LABEL_6;
  }

  sub_10002D02C(v13, &qword_100113860, &qword_1000D0290);
  sub_10002D02C(v15, &qword_100113860, &qword_1000D0290);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_10002D02C(v6, &qword_1001141B0, &qword_1000D1488);
    v18 = 0;
    return v18 & 1;
  }

  sub_10002D02C(v6, &qword_100113860, &qword_1000D0290);
  v18 = 1;
  return v18 & 1;
}

uint64_t AlarmAlertCoverSheet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AlarmAlertCoverSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_100025564(v1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAlertCoverSheet);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1000255CC(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AlarmAlertCoverSheet);
  v8 = sub_1000032D4(&qword_1001139D8, &qword_1000D08D8);
  sub_100017218(a1 + *(v8 + 52));
  sub_100025564(v1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAlertCoverSheet);
  v9 = swift_allocObject();
  result = sub_1000255CC(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6, type metadata accessor for AlarmAlertCoverSheet);
  *a1 = sub_100017D74;
  *(a1 + 8) = v7;
  *(a1 + 16) = 1;
  v11 = (a1 + *(v8 + 56));
  *v11 = sub_10001B81C;
  v11[1] = v9;
  return result;
}

uint64_t sub_100017BA4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  GeometryProxy.size.getter();
  v5 = v4;
  *a2 = static Alignment.center.getter();
  a2[1] = v6;
  v7 = sub_1000032D4(&qword_100114160, &qword_1000D1440);
  sub_100017DA0(a1, a2 + *(v7 + 44), v5);
  v8 = static Color.black.getter();
  LOBYTE(a1) = static Edge.Set.all.getter();
  v9 = a2 + *(sub_1000032D4(&qword_100114168, &qword_1000D1448) + 36);
  *v9 = v8;
  v9[8] = a1;
  LOBYTE(v8) = static Edge.Set.vertical.getter();
  *(a2 + *(sub_1000032D4(&qword_100114170, &qword_1000D1450) + 36)) = v8;
  v10 = *(sub_1000032D4(&qword_100114178, &qword_1000D1458) + 36);
  v11 = enum case for ColorScheme.dark(_:);
  v12 = type metadata accessor for ColorScheme();
  v15 = *(v12 - 8);
  (*(v15 + 104))(a2 + v10, v11, v12);
  v13 = *(v15 + 56);

  return v13(a2 + v10, 0, 1, v12);
}

uint64_t sub_100017D28(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100017DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a4@<D1>)
{
  v40 = a2;
  v6 = sub_1000032D4(&qword_100114180, &qword_1000D1460);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v39 = sub_1000032D4(&qword_100114188, &qword_1000D1468);
  v9 = *(v39 - 8);
  __chkstk_darwin(v39);
  v11 = &v39 - v10;
  v12 = sub_1000032D4(&qword_100114190, &qword_1000D1470);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v16 = sub_1000032D4(&qword_100114198, &qword_1000D1478);
  sub_100018098(a1, &v8[*(v16 + 44)], a4);
  static Edge.Set.horizontal.getter();
  sub_10002DAD8(&qword_1001141A0, &qword_100114180, &qword_1000D1460, &protocol conformance descriptor for VStack<A>);
  View.scenePadding(_:)();
  sub_10002D02C(v8, &qword_100114180, &qword_1000D1460);
  v17 = static Edge.Set.horizontal.getter();
  sub_100017588();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  (*(v9 + 32))(v15, v11, v39);
  v26 = &v15[*(v13 + 44)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v40;
  sub_10002C7C4(v15, v40, &qword_100114190, &qword_1000D1470);
  result = sub_1000032D4(&qword_1001141A8, &qword_1000D1480);
  v38 = v36 + *(result + 36);
  *v38 = v27;
  *(v38 + 8) = v29;
  *(v38 + 16) = v31;
  *(v38 + 24) = v33;
  *(v38 + 32) = v35;
  *(v38 + 40) = 0;
  return result;
}

uint64_t sub_100018098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  v160 = a2;
  v159 = sub_1000032D4(&qword_1001141C0, &qword_1000D1490);
  __chkstk_darwin(v159);
  v141 = &v130 - v5;
  v157 = sub_1000032D4(&qword_1001141C8, &qword_1000D1498);
  __chkstk_darwin(v157);
  v158 = &v130 - v6;
  v135 = sub_1000032D4(&qword_1001141D0, &qword_1000D14A0);
  v7 = __chkstk_darwin(v135);
  v138 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v137 = &v130 - v9;
  v10 = sub_1000032D4(&qword_1001141D8, &qword_1000D14A8);
  __chkstk_darwin(v10 - 8);
  v131 = &v130 - v11;
  v130 = sub_1000032D4(&qword_1001141E0, &qword_1000D14B0);
  v12 = __chkstk_darwin(v130);
  v134 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v132 = &v130 - v15;
  __chkstk_darwin(v14);
  v133 = &v130 - v16;
  v17 = sub_1000032D4(&qword_1001141E8, &qword_1000D14B8);
  v18 = __chkstk_darwin(v17 - 8);
  v136 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v143 = (&v130 - v20);
  v156 = sub_1000032D4(&qword_1001141F0, &qword_1000D14C0);
  __chkstk_darwin(v156);
  v140 = &v130 - v21;
  v22 = sub_1000032D4(&qword_1001141F8, &qword_1000D14C8);
  __chkstk_darwin(v22 - 8);
  v139 = &v130 - v23;
  v24 = type metadata accessor for AlarmButton();
  v144 = *(v24 - 8);
  v145 = v24;
  __chkstk_darwin(v24);
  v142 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for AlarmPresentationState.Mode();
  v152 = *(v163 - 8);
  __chkstk_darwin(v163);
  v162 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000032D4(&qword_100114200, &qword_1000D14D0);
  v28 = __chkstk_darwin(v27 - 8);
  v155 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v154 = &v130 - v30;
  v31 = type metadata accessor for AlarmAlertCoverSheet(0);
  v147 = *(v31 - 8);
  __chkstk_darwin(v31);
  v148 = v32;
  v150 = &v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000032D4(&qword_100114208, &qword_1000D14D8);
  __chkstk_darwin(v33 - 8);
  v35 = &v130 - v34;
  v36 = sub_1000032D4(&qword_100114210, &qword_1000D14E0);
  v37 = v36 - 8;
  __chkstk_darwin(v36);
  v39 = &v130 - v38;
  v40 = sub_1000032D4(&qword_100114218, &qword_1000D14E8);
  __chkstk_darwin(v40);
  v42 = &v130 - v41;
  v146 = sub_1000032D4(&qword_100114220, &qword_1000D14F0);
  __chkstk_darwin(v146);
  v44 = &v130 - v43;
  v149 = sub_1000032D4(&qword_100114228, &qword_1000D14F8);
  v45 = __chkstk_darwin(v149);
  v153 = &v130 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v49 = &v130 - v48;
  __chkstk_darwin(v47);
  v161 = &v130 - v50;
  *v35 = static HorizontalAlignment.center.getter();
  *(v35 + 1) = 0;
  v35[16] = 0;
  v51 = sub_1000032D4(&qword_100114230, &unk_1000D1500);
  sub_100019334(a1, &v35[*(v51 + 44)]);
  v151 = v31;
  v52 = *(v31 + 40);
  v53 = a1;
  v54 = (a1 + v52);
  v55 = *v54;
  v56 = *(v54 + 1);
  LOBYTE(v181) = v55;
  *(&v181 + 1) = v56;
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.getter();
  if (LOBYTE(v170))
  {
    v57 = 1.0;
  }

  else
  {
    v57 = 0.0;
  }

  sub_10002C7C4(v35, v39, &qword_100114208, &qword_1000D14D8);
  *&v39[*(v37 + 44)] = v57;
  if (qword_100113748 != -1)
  {
    swift_once();
  }

  v58 = qword_10011F788;
  sub_10002C7C4(v39, v42, &qword_100114210, &qword_1000D14E0);
  *&v42[*(v40 + 36)] = v58;
  v59 = v150;
  sub_100025564(v53, v150, type metadata accessor for AlarmAlertCoverSheet);
  v60 = (*(v147 + 80) + 16) & ~*(v147 + 80);
  v61 = swift_allocObject();
  sub_1000255CC(v59, v61 + v60, type metadata accessor for AlarmAlertCoverSheet);
  sub_10002C7C4(v42, v44, &qword_100114218, &qword_1000D14E8);
  v62 = &v44[*(v146 + 36)];
  *v62 = sub_100026AFC;
  v62[1] = v61;
  v62[2] = 0;
  v62[3] = 0;

  v63 = static Alignment.center.getter();
  v65 = v64;
  static Color.black.getter();
  v66 = (v53 + *(v151 + 44));
  v67 = *v66;
  v68 = *(v66 + 1);
  *&v181 = v67;
  v150 = v68;
  *(&v181 + 1) = v68;
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  State.wrappedValue.getter();
  pow((fmax(v170, 0.3) + -0.3) / 0.7, 1.3);
  v69 = Color.opacity(_:)();

  sub_10002C7C4(v44, v49, &qword_100114220, &qword_1000D14F0);
  v70 = &v49[*(v149 + 36)];
  *v70 = v69;
  v70[1] = v63;
  v70[2] = v65;
  v71 = v161;
  sub_10002C7C4(v49, v161, &qword_100114228, &qword_1000D14F8);
  v72 = v162;
  AlarmPresentationState.mode.getter();
  v73 = sub_10000F1FC(v72);
  v74 = *(v152 + 8);
  v74(v72, v163);
  v75 = v53;
  if (v73 == 5)
  {
    goto LABEL_9;
  }

  v76 = v162;
  AlarmPresentationState.mode.getter();
  v77 = v139;
  sub_10000F8DC(v76, v139);
  v74(v76, v163);
  v78 = v77;
  v80 = v144;
  v79 = v145;
  if ((*(v144 + 48))(v78, 1, v145) == 1)
  {
    sub_10002D02C(v78, &qword_1001141F8, &qword_1000D14C8);
LABEL_9:
    v81 = v141;
    sub_10001AABC(v141);
    sub_10002CFC4(v81, v158, &qword_1001141C0, &qword_1000D1490);
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100114240, &qword_1001141F0, &qword_1000D14C0, &protocol conformance descriptor for ViewThatFits<A>);
    sub_100026B28();
    v82 = v154;
    _ConditionalContent<>.init(storage:)();
    sub_10002D02C(v81, &qword_1001141C0, &qword_1000D1490);
    goto LABEL_13;
  }

  v83 = *(v80 + 32);
  v84 = v142;
  v83(v142, v78, v79);
  v85 = static Axis.Set.horizontal.getter();
  v86 = v140;
  *v140 = v85;
  v87 = static VerticalAlignment.center.getter();
  v88 = v143;
  *v143 = v87;
  v88[1] = 0x4034000000000000;
  *(v88 + 16) = 0;
  v89 = v131;
  v163 = v75;
  sub_10001BDB4(v73, v84, v131);
  static Alignment.center.getter();
  if (a3 * 0.25 > 362.0)
  {
    static os_log_type_t.fault.getter();
    v90 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  v91 = sub_1000032D4(&qword_100114298, &qword_1000D1530);
  v92 = v143 + *(v91 + 44);
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v93 = v132;
  sub_10002C7C4(v89, v132, &qword_1001141D8, &qword_1000D14A8);
  v94 = (v93 + *(v130 + 36));
  v95 = v186;
  v94[4] = v185;
  v94[5] = v95;
  v94[6] = v187;
  v96 = v182;
  *v94 = v181;
  v94[1] = v96;
  v97 = v184;
  v94[2] = v183;
  v94[3] = v97;
  v98 = v133;
  sub_10002C7C4(v93, v133, &qword_1001141E0, &qword_1000D14B0);
  v99 = v134;
  sub_10002CFC4(v98, v134, &qword_1001141E0, &qword_1000D14B0);
  *v92 = 0;
  v92[8] = 0;
  v100 = sub_1000032D4(&qword_1001142A0, &qword_1000D1538);
  sub_10002CFC4(v99, &v92[*(v100 + 48)], &qword_1001141E0, &qword_1000D14B0);
  v101 = &v92[*(v100 + 64)];
  *v101 = 0;
  v101[8] = 0;
  sub_10002D02C(v98, &qword_1001141E0, &qword_1000D14B0);
  v102 = sub_10002D02C(v99, &qword_1001141E0, &qword_1000D14B0);
  __chkstk_darwin(v102);
  sub_1000032D4(&qword_1001142A8, &qword_1000D1540);
  sub_10002DAD8(&qword_1001142B0, &qword_1001142A8, &qword_1000D1540, &protocol conformance descriptor for VStack<A>);
  v103 = v137;
  GlassEffectContainer.init(spacing:content:)();
  v104 = static Alignment.top.getter();
  v106 = v105;
  static Color.black.getter();
  v170 = v67;
  v171 = v150;
  State.wrappedValue.getter();
  v107 = fmax(*&v165, 0.3);
  v108 = &v86[*(sub_1000032D4(&qword_1001142B8, &qword_1000D1548) + 44)];
  pow((v107 + -0.3) / 0.7, 1.3);
  *&v109 = COERCE_DOUBLE(Color.opacity(_:)());

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v110 = v188;
  v111 = v189;
  v112 = v190;
  v113 = v191;
  v114 = v192;
  v115 = v193;
  v180 = v189;
  v179 = v191;
  *&v165 = v109;
  *(&v165 + 1) = v188;
  LOBYTE(v166) = v189;
  *(&v166 + 1) = v190;
  LOBYTE(v167) = v191;
  *(&v167 + 1) = v192;
  *&v168 = v193;
  *(&v168 + 1) = v104;
  v169 = v106;
  v116 = v103 + *(v135 + 36);
  v117 = v168;
  *(v116 + 32) = v167;
  *(v116 + 48) = v117;
  *(v116 + 64) = v106;
  v118 = v166;
  *v116 = v165;
  *(v116 + 16) = v118;
  v170 = *&v109;
  v171 = v110;
  v172 = v111;
  v173 = v112;
  v174 = v113;
  v175 = v114;
  v176 = v115;
  v177 = v104;
  v178 = v106;
  sub_10002CFC4(&v165, &v164, &qword_1001142C0, &qword_1000D1550);
  sub_10002D02C(&v170, &qword_1001142C0, &qword_1000D1550);
  v119 = v143;
  v120 = v136;
  sub_10002CFC4(v143, v136, &qword_1001141E8, &qword_1000D14B8);
  v121 = v138;
  sub_10002CFC4(v103, v138, &qword_1001141D0, &qword_1000D14A0);
  sub_10002CFC4(v120, v108, &qword_1001141E8, &qword_1000D14B8);
  v122 = sub_1000032D4(&qword_1001142C8, &qword_1000D1558);
  sub_10002CFC4(v121, v108 + *(v122 + 48), &qword_1001141D0, &qword_1000D14A0);
  sub_10002D02C(v103, &qword_1001141D0, &qword_1000D14A0);
  sub_10002D02C(v119, &qword_1001141E8, &qword_1000D14B8);
  sub_10002D02C(v121, &qword_1001141D0, &qword_1000D14A0);
  sub_10002D02C(v120, &qword_1001141E8, &qword_1000D14B8);
  v123 = v140;
  sub_10002CFC4(v140, v158, &qword_1001141F0, &qword_1000D14C0);
  swift_storeEnumTagMultiPayload();
  sub_10002DAD8(&qword_100114240, &qword_1001141F0, &qword_1000D14C0, &protocol conformance descriptor for ViewThatFits<A>);
  sub_100026B28();
  v82 = v154;
  _ConditionalContent<>.init(storage:)();
  sub_10002D02C(v123, &qword_1001141F0, &qword_1000D14C0);
  (*(v144 + 8))(v142, v145);
  v71 = v161;
LABEL_13:
  v124 = v153;
  sub_10002CFC4(v71, v153, &qword_100114228, &qword_1000D14F8);
  v125 = v155;
  sub_10002CFC4(v82, v155, &qword_100114200, &qword_1000D14D0);
  v126 = v160;
  sub_10002CFC4(v124, v160, &qword_100114228, &qword_1000D14F8);
  v127 = sub_1000032D4(&qword_100114290, &qword_1000D1528);
  v128 = v126 + *(v127 + 48);
  *v128 = 0;
  *(v128 + 8) = 1;
  sub_10002CFC4(v125, v126 + *(v127 + 64), &qword_100114200, &qword_1000D14D0);
  sub_10002D02C(v82, &qword_100114200, &qword_1000D14D0);
  sub_10002D02C(v71, &qword_100114228, &qword_1000D14F8);
  sub_10002D02C(v125, &qword_100114200, &qword_1000D14D0);
  return sub_10002D02C(v124, &qword_100114228, &qword_1000D14F8);
}

uint64_t sub_100019334@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v201 = a2;
  v3 = sub_1000032D4(&qword_100114310, &qword_1000D1590);
  v194 = *(v3 - 8);
  v195 = v3;
  __chkstk_darwin(v3);
  v192 = &v163 - v4;
  v190 = sub_1000032D4(&qword_100114318, &qword_1000D1598);
  __chkstk_darwin(v190);
  v193 = &v163 - v5;
  v191 = sub_1000032D4(&qword_100114320, &qword_1000D15A0);
  __chkstk_darwin(v191);
  v196 = &v163 - v6;
  v7 = sub_1000032D4(&qword_100114328, &qword_1000D15A8);
  __chkstk_darwin(v7);
  v197 = &v163 - v8;
  v9 = sub_1000032D4(&qword_100114330, &qword_1000D15B0);
  v10 = __chkstk_darwin(v9 - 8);
  v200 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v199 = &v163 - v12;
  v13 = type metadata accessor for Color.RGBColorSpace();
  v186 = *(v13 - 8);
  v187 = v13;
  __chkstk_darwin(v13);
  v185 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DynamicTypeSize();
  v178 = *(v15 - 8);
  v179 = v15;
  __chkstk_darwin(v15);
  v177 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000032D4(&qword_100114338, &qword_1000D15B8);
  __chkstk_darwin(v17 - 8);
  v203 = &v163 - v18;
  v19 = sub_1000032D4(&qword_100114340, &qword_1000D15C0);
  v175 = *(v19 - 8);
  v176 = v19;
  __chkstk_darwin(v19);
  v173 = &v163 - v20;
  v170 = sub_1000032D4(&qword_100114348, &qword_1000D15C8);
  __chkstk_darwin(v170);
  v172 = &v163 - v21;
  v169 = sub_1000032D4(&qword_100114350, &qword_1000D15D0);
  __chkstk_darwin(v169);
  v171 = &v163 - v22;
  v168 = sub_1000032D4(&qword_100114358, &qword_1000D15D8);
  __chkstk_darwin(v168);
  v174 = &v163 - v23;
  v180 = sub_1000032D4(&qword_100114360, &qword_1000D15E0);
  __chkstk_darwin(v180);
  v182 = &v163 - v24;
  v25 = sub_1000032D4(&qword_100114368, &qword_1000D15E8);
  __chkstk_darwin(v25 - 8);
  v184 = &v163 - v26;
  v183 = sub_1000032D4(&qword_100114370, &qword_1000D15F0);
  v27 = __chkstk_darwin(v183);
  v189 = &v163 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v181 = &v163 - v30;
  __chkstk_darwin(v29);
  v204 = &v163 - v31;
  v32 = type metadata accessor for AlarmPresentationState.Mode();
  v166 = *(v32 - 8);
  __chkstk_darwin(v32);
  v165 = &v163 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v34 - 8);
  v36 = &v163 - v35;
  v37 = sub_1000032D4(&qword_100114378, &qword_1000D15F8);
  v38 = __chkstk_darwin(v37 - 8);
  v188 = &v163 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v205 = &v163 - v40;
  v41 = static VerticalAlignment.firstTextLineCenter.getter();
  LOBYTE(v206) = 0;
  sub_10001A754(&v212);
  v219 = v213[1];
  v220[0] = v213[2];
  *(v220 + 9) = *(&v213[2] + 9);
  v217 = v212;
  v218 = v213[0];
  v221[2] = v213[1];
  v222[0] = v213[2];
  *(v222 + 9) = *(&v213[2] + 9);
  v221[0] = v212;
  v221[1] = v213[0];
  sub_10002CFC4(&v217, v210, &qword_100114380, &qword_1000D1600);
  sub_10002D02C(v221, &qword_100114380, &qword_1000D1600);
  *(&v216[1] + 7) = v218;
  *(&v216[2] + 7) = v219;
  *(&v216[3] + 7) = v220[0];
  v216[4] = *(v220 + 9);
  *(v216 + 7) = v217;
  v42 = v206;
  v43 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v44 = sub_100017588();
  v198 = v7;
  if (v44)
  {
    static Font.Weight.medium.getter();
    v45 = type metadata accessor for Font.Design();
    (*(*(v45 - 8) + 56))(v36, 1, 1, v45);
  }

  else
  {
    static Font.Weight.semibold.getter();
    v164 = v46;
    v47 = v42;
    v48 = enum case for Font.Design.rounded(_:);
    v49 = v43;
    v50 = v41;
    v51 = v32;
    v52 = a1;
    v53 = type metadata accessor for Font.Design();
    v54 = *(v53 - 8);
    v55 = v48;
    v42 = v47;
    (*(v54 + 104))(v36, v55, v53);
    v56 = v53;
    a1 = v52;
    v32 = v51;
    v41 = v50;
    v43 = v49;
    (*(v54 + 56))(v36, 0, 1, v56);
  }

  v57 = static Font.system(size:weight:design:)();
  sub_10002D02C(v36, &qword_100113E08, &qword_1000D10F0);
  v58 = swift_getKeyPath();
  *(&v213[1] + 1) = v216[1];
  *(&v213[2] + 1) = v216[2];
  *(&v213[3] + 1) = v216[3];
  *(&v213[4] + 1) = v216[4];
  *&v212 = v41;
  *(&v212 + 1) = 0x4020000000000000;
  LOBYTE(v213[0]) = v42;
  *(v213 + 1) = v216[0];
  *(&v213[5] + 1) = KeyPath;
  *&v214 = v43;
  *(&v214 + 1) = v58;
  v215 = v57;
  v59 = AlarmPresentationState.alarmLabel.getter();
  if (v60)
  {
    v61 = v60;
  }

  else
  {
    type metadata accessor for AlarmAlertCoverSheet(0);
    v62 = v165;
    AlarmPresentationState.mode.getter();
    v63 = sub_10000AAEC(v62);
    v61 = v64;
    (*(v166 + 8))(v62, v32);
    v59 = v63;
  }

  v202 = a1;
  v206 = v59;
  v207 = v61;
  sub_1000032D4(&qword_100114388, &qword_1000D1638);
  sub_100026E3C();
  KeyPath = sub_100025FB4();
  View.accessibilityLabel<A>(_:)();

  v210[5] = v213[4];
  v210[6] = v213[5];
  v210[7] = v214;
  v211 = v215;
  v210[2] = v213[1];
  v210[3] = v213[2];
  v210[4] = v213[3];
  v210[0] = v212;
  v210[1] = v213[0];
  sub_10002D02C(v210, &qword_100114388, &qword_1000D1638);
  v65 = v203;
  static TimeZone.autoupdatingCurrent.getter();
  v165 = type metadata accessor for TimeZone();
  v66 = *(v165 - 1);
  v164 = *(v66 + 56);
  v166 = v66 + 56;
  v164(v65, 0, 1, v165);
  v67 = Text.init(dateFormatTemplate:timeZone:)();
  v69 = v68;
  v71 = v70;
  if (sub_100017588())
  {
    v72 = 151.0;
  }

  else
  {
    v72 = 209.0;
  }

  v73 = String._bridgeToObjectiveC()();
  CTFontCreateWithNameAndOptions(v73, v72, 0, 0x20000uLL);

  Font.init(_:)();
  v74 = Text.font(_:)();
  v76 = v75;
  v78 = v77;
  v80 = v79;

  sub_100025B0C(v67, v69, v71 & 1);

  v206 = v74;
  v207 = v76;
  v78 &= 1u;
  v208 = v78;
  v209 = v80;
  v82 = v177;
  v81 = v178;
  v83 = v179;
  (*(v178 + 104))(v177, enum case for DynamicTypeSize.large(_:), v179);
  v84 = v173;
  View.dynamicTypeSize(_:)();
  (*(v81 + 8))(v82, v83);
  sub_100025B0C(v74, v76, v78);

  v85 = static Color.white.getter();
  v86 = swift_getKeyPath();
  v87 = v172;
  (*(v175 + 32))(v172, v84, v176);
  v88 = (v87 + *(v170 + 36));
  *v88 = v86;
  v88[1] = v85;
  v89 = swift_getKeyPath();
  v90 = v171;
  sub_10002C7C4(v87, v171, &qword_100114348, &qword_1000D15C8);
  v91 = v90 + *(v169 + 36);
  *v91 = v89;
  *(v91 + 8) = 1;
  *(v91 + 16) = 0;
  v92 = swift_getKeyPath();
  v93 = v90;
  v94 = v174;
  sub_10002C7C4(v93, v174, &qword_100114350, &qword_1000D15D0);
  v95 = (v94 + *(v168 + 36));
  *v95 = v92;
  v95[1] = 0x3FE6666666666666;
  (*(v186 + 104))(v185, enum case for Color.RGBColorSpace.sRGBLinear(_:), v187);
  v96 = Color.init(_:white:opacity:)();
  v97 = v182;
  sub_10002C7C4(v94, v182, &qword_100114358, &qword_1000D15D8);
  v98 = (v97 + *(v180 + 36));
  *v98 = v96;
  v98[1] = 0x3FF0000000000000;
  v98[2] = 0;
  v98[3] = 0;
  v99 = v203;
  static TimeZone.autoupdatingCurrent.getter();
  v164(v99, 0, 1, v165);
  v100 = Text.init(dateFormatTemplate:timeZone:)();
  v102 = v101;
  LOBYTE(v74) = v103;
  sub_100026FD8();
  v104 = v184;
  View.accessibilityLabel(_:)();
  sub_100025B0C(v100, v102, v74 & 1);

  sub_10002D02C(v97, &qword_100114360, &qword_1000D15E0);
  LOBYTE(v100) = static Edge.Set.top.getter();
  sub_100017588();
  EdgeInsets.init(_all:)();
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v112 = v111;
  v113 = v181;
  sub_10002C7C4(v104, v181, &qword_100114368, &qword_1000D15E8);
  v114 = v113 + *(v183 + 36);
  *v114 = v100;
  *(v114 + 8) = v106;
  *(v114 + 16) = v108;
  *(v114 + 24) = v110;
  *(v114 + 32) = v112;
  *(v114 + 40) = 0;
  sub_10002C7C4(v113, v204, &qword_100114370, &qword_1000D15F0);
  v115 = AlarmPresentationState.localizedAppName.getter();
  if (v116)
  {
    v117 = v115;
  }

  else
  {
    v117 = 0;
  }

  v118 = 0xE000000000000000;
  if (v116)
  {
    v118 = v116;
  }

  v206 = v117;
  v207 = v118;
  v119 = Text.init<A>(_:)();
  v121 = v120;
  v123 = v122;
  static Color.secondary.getter();
  Color.opacity(_:)();

  v124 = Text.foregroundColor(_:)();
  v126 = v125;
  v128 = v127;
  v130 = v129;

  sub_100025B0C(v119, v121, v123 & 1);

  v206 = v124;
  v207 = v126;
  v208 = v128 & 1;
  v209 = v130;
  v131 = v192;
  View.lineLimit(_:reservesSpace:)();
  sub_100025B0C(v124, v126, v128 & 1);

  v132 = static Font.title3.getter();
  v133 = swift_getKeyPath();
  v134 = v193;
  (*(v194 + 32))(v193, v131, v195);
  v135 = (v134 + *(v190 + 36));
  *v135 = v133;
  v135[1] = v132;
  LOBYTE(v132) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v137 = v136;
  v139 = v138;
  v141 = v140;
  v143 = v142;
  v144 = v196;
  sub_10002C7C4(v134, v196, &qword_100114318, &qword_1000D1598);
  v145 = v144 + *(v191 + 36);
  *v145 = v132;
  *(v145 + 8) = v137;
  *(v145 + 16) = v139;
  *(v145 + 24) = v141;
  *(v145 + 32) = v143;
  *(v145 + 40) = 0;
  v146 = AlarmPresentationState.bundleID.getter();
  if (v147)
  {
    if (v146 == 0xD000000000000015 && v147 == 0x80000001000D7F20)
    {

      v148 = 0.0;
    }

    else
    {
      v151 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v151)
      {
        v148 = 0.0;
      }

      else
      {
        v148 = 1.0;
      }
    }

    v150 = v197;
    v149 = v198;
  }

  else
  {
    v148 = 1.0;
    v150 = v197;
    v149 = v198;
  }

  sub_10002C7C4(v144, v150, &qword_100114320, &qword_1000D15A0);
  *(v150 + *(v149 + 36)) = v148;
  v152 = AlarmPresentationState.bundleID.getter();
  if (v153)
  {
    if (v152 != 0xD000000000000015 || v153 != 0x80000001000D7F20)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  sub_1000272BC();
  v154 = v199;
  View.accessibilityHidden(_:)();
  sub_10002D02C(v150, &qword_100114328, &qword_1000D15A8);
  v155 = v188;
  sub_10002CFC4(v205, v188, &qword_100114378, &qword_1000D15F8);
  v156 = v204;
  v157 = v189;
  sub_10002CFC4(v204, v189, &qword_100114370, &qword_1000D15F0);
  v158 = v200;
  sub_10002CFC4(v154, v200, &qword_100114330, &qword_1000D15B0);
  v159 = v201;
  *v201 = 0;
  *(v159 + 8) = 1;
  v160 = sub_1000032D4(&qword_100114410, &unk_1000D1660);
  sub_10002CFC4(v155, v159 + v160[12], &qword_100114378, &qword_1000D15F8);
  sub_10002CFC4(v157, v159 + v160[16], &qword_100114370, &qword_1000D15F0);
  sub_10002CFC4(v158, v159 + v160[20], &qword_100114330, &qword_1000D15B0);
  v161 = v159 + v160[24];
  *v161 = 0;
  v161[8] = 1;
  sub_10002D02C(v154, &qword_100114330, &qword_1000D15B0);
  sub_10002D02C(v156, &qword_100114370, &qword_1000D15F0);
  sub_10002D02C(v205, &qword_100114378, &qword_1000D15F8);
  sub_10002D02C(v158, &qword_100114330, &qword_1000D15B0);
  sub_10002D02C(v157, &qword_100114370, &qword_1000D15F0);
  return sub_10002D02C(v155, &qword_100114378, &qword_1000D15F8);
}

uint64_t sub_10001A754@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AlarmPresentationState.Mode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = static Color.secondary.getter();
  v7 = sub_100017588();
  type metadata accessor for AlarmAlertAnimation();
  v8 = swift_allocObject();
  v9 = AlarmPresentationState.alarmLabel.getter();
  if (!v10)
  {
    type metadata accessor for AlarmAlertCoverSheet(0);
    AlarmPresentationState.mode.getter();
    v11 = sub_10000AAEC(v5);
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v10 = v13;
    v9 = v11;
  }

  if (v7)
  {
    v14 = 40.0;
  }

  else
  {
    v14 = 60.0;
  }

  v25 = v9;
  v26 = v10;
  sub_100025FB4();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  KeyPath = swift_getKeyPath();
  v19 &= 1u;
  LOBYTE(v25) = v19;
  v24[8] = 0;
  *a1 = v6;
  *(a1 + 8) = v14;
  *(a1 + 16) = v8;
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = 2;
  *(a1 + 72) = 0;

  sub_100025AFC(v15, v17, v19);

  sub_100025B0C(v15, v17, v19);
}

uint64_t sub_10001A97C(uint64_t a1)
{
  if (qword_100113710 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  __chkstk_darwin(a1);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_10001AA3C(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_10001AABC@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v2 = type metadata accessor for AlarmKitStopButton(0);
  __chkstk_darwin(v2);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1000032D4(&qword_100114280, &qword_1000D1520);
  v5 = __chkstk_darwin(v83);
  v74 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v66 - v7;
  v81 = sub_1000032D4(&qword_1001142E8, &qword_1000D1578);
  __chkstk_darwin(v81);
  v82 = &v66 - v8;
  v9 = type metadata accessor for SlideTransition();
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = __chkstk_darwin(v9);
  v77 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v78 = &v66 - v12;
  v13 = type metadata accessor for AlarmAlertCoverSheet(0);
  v70 = *(v13 - 8);
  __chkstk_darwin(v13);
  v71 = v14;
  v72 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v66 - v19;
  v85 = type metadata accessor for AlarmPresentationState();
  v21 = *(v85 - 8);
  v22 = __chkstk_darwin(v85);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v67 = &v66 - v25;
  v68 = type metadata accessor for AlarmKitStopSlider(0);
  __chkstk_darwin(v68);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1000032D4(&qword_100114258, &qword_1000D1510);
  v28 = __chkstk_darwin(v76);
  v69 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v73 = &v66 - v30;
  if ((sub_100017588() & 1) != 0 && (v31 = v1 + *(v13 + 48), v32 = *v31, v33 = *(v31 + 8), v87 = v32, v88 = v33, sub_1000032D4(&qword_100114140, &qword_1000D7290), State.wrappedValue.getter(), (v86 & 1) == 0))
  {
    v49 = v67;
    (*(v21 + 16))(v67, v1, v85);
    sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    AlarmAttributes.metadata.getter();
    v50 = type metadata accessor for MTAlarmCustomContent();
    v51 = *(v50 - 8);
    v52 = (*(v51 + 48))(v20, 1, v50);
    if (v52 == 1)
    {
      sub_10002D02C(v20, &unk_100118100, &qword_1000D1250);
      v53 = 0;
    }

    else
    {
      v53 = MTAlarmCustomContent.type.getter();
      (*(v51 + 8))(v20, v50);
    }

    v54 = v72;
    sub_100025564(v1, v72, type metadata accessor for AlarmAlertCoverSheet);
    v55 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v56 = swift_allocObject();
    sub_1000255CC(v54, v56 + v55, type metadata accessor for AlarmAlertCoverSheet);
    (*(v21 + 32))(v27, v49, v85);
    v57 = v68;
    v58 = &v27[*(v68 + 20)];
    *v58 = v53;
    v58[8] = v52 == 1;
    v27[*(v57 + 24)] = 4;
    v59 = &v27[*(v57 + 28)];
    *v59 = sub_100026D94;
    v59[1] = v56;
    v60 = v78;
    SlideTransition.init()();
    v62 = v79;
    v61 = v80;
    (*(v79 + 16))(v77, v60, v80);
    sub_100025228(&qword_1001142F0, &type metadata accessor for SlideTransition, &protocol conformance descriptor for SlideTransition);
    v63 = AnyTransition.init<A>(_:)();
    (*(v62 + 8))(v60, v61);
    v64 = v69;
    sub_1000255CC(v27, v69, type metadata accessor for AlarmKitStopSlider);
    *(v64 + *(v76 + 36)) = v63;
    v46 = &qword_100114258;
    v47 = &qword_1000D1510;
    v48 = v73;
    sub_10002C7C4(v64, v73, &qword_100114258, &qword_1000D1510);
    sub_10002CFC4(v48, v82, &qword_100114258, &qword_1000D1510);
    swift_storeEnumTagMultiPayload();
    sub_100026BB4();
    sub_100026C9C();
  }

  else
  {
    v34 = v85;
    (*(v21 + 16))(v24, v1, v85);
    sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    AlarmAttributes.metadata.getter();
    v35 = type metadata accessor for MTAlarmCustomContent();
    v36 = *(v35 - 8);
    v37 = (*(v36 + 48))(v18, 1, v35);
    if (v37 == 1)
    {
      sub_10002D02C(v18, &unk_100118100, &qword_1000D1250);
      v38 = 0;
    }

    else
    {
      v38 = MTAlarmCustomContent.type.getter();
      (*(v36 + 8))(v18, v35);
    }

    (*(v21 + 32))(v4, v24, v34);
    v39 = &v4[v2[5]];
    *v39 = v38;
    v39[8] = v37 == 1;
    *&v4[v2[6]] = 0;
    v4[v2[7]] = 4;
    v40 = &v4[v2[8]];
    *v40 = &type metadata for AnimationConstants.LeftButtonAnimation;
    *(v40 + 1) = &off_100103BB0;
    v41 = v78;
    SlideTransition.init()();
    v43 = v79;
    v42 = v80;
    (*(v79 + 16))(v77, v41, v80);
    sub_100025228(&qword_1001142F0, &type metadata accessor for SlideTransition, &protocol conformance descriptor for SlideTransition);
    v44 = AnyTransition.init<A>(_:)();
    (*(v43 + 8))(v41, v42);
    v45 = v74;
    sub_1000255CC(v4, v74, type metadata accessor for AlarmKitStopButton);
    *(v45 + *(v83 + 36)) = v44;
    v46 = &qword_100114280;
    v47 = &qword_1000D1520;
    v48 = v75;
    sub_10002C7C4(v45, v75, &qword_100114280, &qword_1000D1520);
    sub_10002CFC4(v48, v82, &qword_100114280, &qword_1000D1520);
    swift_storeEnumTagMultiPayload();
    sub_100026BB4();
    sub_100026C9C();
  }

  _ConditionalContent<>.init(storage:)();
  return sub_10002D02C(v48, v46, v47);
}

uint64_t sub_10001B4F8(char *a1, uint64_t a2)
{
  type metadata accessor for AlarmAlertCoverSheet(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_10001B56C()
{
  v1 = type metadata accessor for AlarmAlertCoverSheet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for AlarmPresentationState();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  sub_100017D28((v0 + v3 + v1[6]));
  v9 = v1[7];
  sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for Font.Context();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[8];
  sub_1000032D4(&qword_100113780, &qword_1000D08D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for UserInterfaceSizeClass();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001B83C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v47 = a2;
  v48 = a1;
  v49 = a3;
  v5 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = type metadata accessor for AlarmButton();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AlarmPresentationState();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AlarmKitButton(0);
  __chkstk_darwin(v16);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v13 + 16);
  v42 = v15;
  v43 = v12;
  v19(v15, v4, v12);
  v44 = v11;
  v45 = v9;
  v20 = *(v9 + 16);
  v46 = v8;
  v20(v11, v47, v8);
  v21 = *(type metadata accessor for AlarmAlertCoverSheet(0) + 20);
  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v47 = v4;
  v41[1] = v21;
  AlarmAttributes.metadata.getter();
  v22 = type metadata accessor for MTAlarmCustomContent();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v7, 1, v22);
  if (v24 == 1)
  {
    sub_10002D02C(v7, &unk_100118100, &qword_1000D1250);
    v25 = 0;
  }

  else
  {
    v25 = MTAlarmCustomContent.type.getter();
    (*(v23 + 8))(v7, v22);
  }

  v26 = AlarmAttributes.tintColor.getter();
  (*(v13 + 32))(v18, v42, v43);
  v18[v16[5]] = v48;
  (*(v45 + 32))(&v18[v16[6]], v44, v46);
  v27 = &v18[v16[7]];
  *v27 = v25;
  v27[8] = v24 == 1;
  *&v18[v16[8]] = v26;
  v18[v16[9]] = 4;
  v28 = &v18[v16[10]];
  *v28 = &type metadata for AnimationConstants.RightButtonAnimation;
  *(v28 + 1) = &off_100103B88;
  v29 = &v18[v16[11]];
  v30 = objc_opt_self();
  v31 = [v30 mtOrange];
  v32 = Color.init(uiColor:)();
  v33 = [v30 mtOrange];
  Color.init(uiColor:)();
  v34 = Color.opacity(_:)();

  v35 = static Color.white.getter();
  static Color.white.getter();
  v36 = Color.opacity(_:)();

  *(v29 + 3) = &type metadata for StandardSessionUiConfig;
  *(v29 + 4) = &off_1001035E8;
  v37 = swift_allocObject();
  *v29 = v37;
  v37[2] = v32;
  v37[3] = v34;
  v37[4] = v35;
  v37[5] = v36;
  if (qword_100113748 != -1)
  {
    swift_once();
  }

  v38 = qword_10011F788;
  v39 = v49;
  sub_100025564(v18, v49, type metadata accessor for AlarmKitButton);
  *(v39 + *(sub_1000032D4(&qword_1001142D8, &qword_1000D1568) + 36)) = v38;

  return sub_100025A9C(v18, type metadata accessor for AlarmKitButton);
}

uint64_t sub_10001BD44@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  *a4 = static HorizontalAlignment.center.getter();
  *(a4 + 8) = 0x4038000000000000;
  *(a4 + 16) = 0;
  v7 = sub_1000032D4(&qword_1001142D0, &qword_1000D1560);
  return sub_10001BDB4(v5, a3, a4 + *(v7 + 44));
}

uint64_t sub_10001BDB4@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1000032D4(&qword_1001141C0, &qword_1000D1490);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = sub_1000032D4(&qword_1001142D8, &qword_1000D1568);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  sub_10001B83C(a1, a2, &v20 - v16);
  sub_10001AABC(v11);
  sub_10002CFC4(v17, v15, &qword_1001142D8, &qword_1000D1568);
  sub_10002CFC4(v11, v9, &qword_1001141C0, &qword_1000D1490);
  sub_10002CFC4(v15, a3, &qword_1001142D8, &qword_1000D1568);
  v18 = sub_1000032D4(&qword_1001142E0, &qword_1000D1570);
  sub_10002CFC4(v9, a3 + *(v18 + 48), &qword_1001141C0, &qword_1000D1490);
  sub_10002D02C(v11, &qword_1001141C0, &qword_1000D1490);
  sub_10002D02C(v17, &qword_1001142D8, &qword_1000D1568);
  sub_10002D02C(v9, &qword_1001141C0, &qword_1000D1490);
  return sub_10002D02C(v15, &qword_1001142D8, &qword_1000D1568);
}

uint64_t sub_10001BFBC(uint64_t a1, double a2)
{
  type metadata accessor for AlarmAlertCoverSheet(0);
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  return State.wrappedValue.setter();
}

uint64_t sub_10001C034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100025564(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAlertCoverSheet);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1000255CC(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AlarmAlertCoverSheet);
  v8 = sub_1000032D4(&qword_1001139D8, &qword_1000D08D8);
  sub_100017218(a2 + *(v8 + 52));
  sub_100025564(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAlertCoverSheet);
  v9 = swift_allocObject();
  result = sub_1000255CC(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6, type metadata accessor for AlarmAlertCoverSheet);
  *a2 = sub_10002DBB0;
  *(a2 + 8) = v7;
  *(a2 + 16) = 1;
  v11 = (a2 + *(v8 + 56));
  *v11 = sub_10002DBA4;
  v11[1] = v9;
  return result;
}

uint64_t sub_10001C1F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AlarmPresentationState();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 24);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_1000032D4(&qword_1001139E0, qword_1000D7170);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = sub_1000032D4(&qword_1001139E8, &qword_1000D0940);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_10001C3EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for AlarmPresentationState();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
    return result;
  }

  v16 = sub_1000032D4(&qword_1001139E0, qword_1000D7170);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_1000032D4(&qword_1001139E8, &qword_1000D0940);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

void sub_10001C5D0(uint64_t a1)
{
  type metadata accessor for AlarmPresentationState();
  if (v1 <= 0x3F)
  {
    sub_10001C78C(319);
    if (v2 <= 0x3F)
    {
      sub_100027F54(319, &qword_100113A58, &protocol descriptor for AlarmAndTimerActionDelegate);
      if (v3 <= 0x3F)
      {
        sub_100027C70(319, &qword_100113A60, &type metadata accessor for Font.Context, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_10002BB84(319, &qword_100113A68, &qword_100113860, &qword_1000D0290, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_1000289D8(319, &qword_100113A70, &type metadata for Bool, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_1000289D8(319, &unk_100113A78, &type metadata for CGFloat, &type metadata accessor for State);
              if (v7 <= 0x3F)
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

void sub_10001C78C(uint64_t a1)
{
  if (!qword_100117F80[0])
  {
    type metadata accessor for MTAlarmCustomContent();
    sub_100025228(&qword_100115F10, &type metadata accessor for MTAlarmCustomContent, &protocol conformance descriptor for MTAlarmCustomContent);
    v1 = type metadata accessor for AlarmAttributes();
    if (!v2)
    {
      atomic_store(v1, qword_100117F80);
    }
  }
}

uint64_t sub_10001C820(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

double sub_10001C868@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  result = *&v10;
  *(a1 + 48) = v10;
  return result;
}

void sub_10001C908()
{
  sub_10002BB3C(0, &qword_100114D78, UIColor_ptr);

  v0 = UIColor.init(_:)();
  v1 = sub_10001CA78(3u, v0);

  if (!v1)
  {
    __break(1u);
  }
}

uint64_t sub_10001C988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002B1A8();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10001C9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002B1A8();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10001CA50(uint64_t a1)
{
  sub_10002B1A8();
  UIViewRepresentable.body.getter();
  __break(1u);
}

id sub_10001CA78(unsigned __int8 a1, void *a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v5 = objc_allocWithZone(BSUICAPackageView);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 initWithPackageName:v6 inBundle:v4];

  if (!v7)
  {
    v19 = objc_opt_self();
    _StringGuts.grow(_:)(48);
    type metadata accessor for AlarmAlertAnimation();
    _print_unlocked<A, B>(_:_:)();
    v20._countAndFlagsBits = 0xD00000000000002ELL;
    v20._object = 0x80000001000D7E00;
    String.append(_:)(v20);
    v21 = String._bridgeToObjectiveC()();

    [v19 logInfo:v21];

    return 0;
  }

  if (!a2)
  {

    return 0;
  }

  v8 = objc_opt_self();
  v9 = a2;
  v10 = [v8 traitCollectionWithUserInterfaceStyle:2];
  v11 = [v9 resolvedColorWithTraitCollection:v10];
  v12 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterMultiplyColor];
  v13 = [v11 CGColor];
  v14 = String._bridgeToObjectiveC()();
  [v12 setValue:v13 forKeyPath:v14];

  v15 = [v7 layer];
  sub_1000032D4(&qword_100114138, &unk_1000D1420);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000D08B0;
  *(v16 + 56) = sub_10002BB3C(0, &unk_100119A30, CAFilter_ptr);
  *(v16 + 32) = v12;
  v17 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setFilters:isa];

  return v7;
}

uint64_t sub_10001CE50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000032D4(&qword_100114D20, &qword_1000D2078);
  v3 = v2 - 8;
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = static Color.black.getter();
  v10 = static SafeAreaRegions.all.getter();
  v11 = static Edge.Set.all.getter();
  sub_10001D034(v8);
  v12 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = &v8[*(sub_1000032D4(&qword_100114D28, &qword_1000D2080) + 36)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  v22 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v23 = &v8[*(v3 + 44)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_10002CFC4(v8, v6, &qword_100114D20, &qword_1000D2078);
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  v28 = sub_1000032D4(&qword_100114D30, &qword_1000D2088);
  sub_10002CFC4(v6, a1 + *(v28 + 48), &qword_100114D20, &qword_1000D2078);

  sub_10002D02C(v8, &qword_100114D20, &qword_1000D2078);
  sub_10002D02C(v6, &qword_100114D20, &qword_1000D2078);
}

uint64_t sub_10001D034@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  __chkstk_darwin(v3 - 8);
  v5 = &v73 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v74 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for FullAmbientSnoozeCountdown(0);
  v9 = __chkstk_darwin(v81);
  v11 = (&v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v75 = &v73 - v12;
  v79 = sub_1000032D4(&qword_100114D38, &qword_1000D2090);
  __chkstk_darwin(v79);
  v80 = &v73 - v13;
  v14 = type metadata accessor for AlarmAlertFullScreen(0);
  v77 = *(v14 - 1);
  __chkstk_darwin(v14);
  v16 = (&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for OpaqueAlarm(0);
  __chkstk_darwin(v17);
  v19 = (&v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_1000032D4(&qword_100114D40, &qword_1000D2098);
  __chkstk_darwin(v78);
  v76 = &v73 - v20;
  if (sub_100088B60())
  {
    sub_100025564(v1, v19, type metadata accessor for OpaqueAlarm);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = *v19;
      v22 = type metadata accessor for FullAmbientAlarmView(0);
      sub_10002B00C(v1 + *(v22 + 20), (v16 + 1));
      sub_10002B00C(v1 + *(v22 + 24), (v16 + 6));
      *(v16 + v14[7]) = swift_getKeyPath();
      sub_1000032D4(&qword_100113778, &qword_1000CFD60);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for WeatherDataProvider(0);
      swift_allocObject();
      v23 = sub_10006ECE4();
      *v16 = v21;
      v24 = v14[8];
      static AnyTransition.move(edge:)();
      static AnyTransition.scale.getter();
      v25 = AnyTransition.combined(with:)();

      *(v16 + v24) = v25;
      v26 = v16 + v14[9];
      LOBYTE(v82) = 0;
      State.init(wrappedValue:)();
      v27 = v85;
      *v26 = v84;
      *(v26 + 1) = v27;
      v28 = v16 + v14[10];
      LOBYTE(v82) = 0;
      State.init(wrappedValue:)();
      v29 = v85;
      *v28 = v84;
      *(v28 + 1) = v29;
      v30 = v16 + v14[11];
      LOBYTE(v82) = 0;
      State.init(wrappedValue:)();
      v31 = v85;
      *v30 = v84;
      *(v30 + 1) = v31;
      v32 = v16 + v14[12];
      LOBYTE(v82) = 0;
      State.init(wrappedValue:)();
      v33 = v85;
      *v32 = v84;
      *(v32 + 1) = v33;
      v34 = v16 + v14[13];
      LOBYTE(v82) = 0;
      State.init(wrappedValue:)();
      v35 = v85;
      *v34 = v84;
      *(v34 + 1) = v35;
      v36 = v16 + v14[14];
      LOBYTE(v82) = 0;
      State.init(wrappedValue:)();
      v37 = v85;
      *v36 = v84;
      *(v36 + 1) = v37;
      v38 = v16 + v14[15];
      LOBYTE(v82) = 0;
      State.init(wrappedValue:)();
      v39 = v85;
      *v38 = v84;
      *(v38 + 1) = v39;
      v40 = v16 + v14[16];
      LOBYTE(v82) = 0;
      State.init(wrappedValue:)();
      v41 = v85;
      *v40 = v84;
      *(v40 + 1) = v41;
      v42 = v16 + v14[17];
      LOBYTE(v82) = 0;
      State.init(wrappedValue:)();
      v43 = v85;
      *v42 = v84;
      *(v42 + 1) = v43;
      v44 = v16 + v14[18];
      LOBYTE(v82) = 0;
      State.init(wrappedValue:)();
      v45 = v85;
      *v44 = v84;
      *(v44 + 1) = v45;
      v46 = v16 + v14[19];
      v82 = 0;
      v83 = 1;
      sub_1000032D4(&qword_100114D60, &qword_1000D20D0);
      State.init(wrappedValue:)();
      v47 = v85;
      v48 = v86;
      *v46 = v84;
      v46[8] = v47;
      *(v46 + 2) = v48;
      v49 = (v16 + v14[20]);
      v82 = v23;
      State.init(wrappedValue:)();
      v50 = v85;
      *v49 = v84;
      v49[1] = v50;
      v51 = v76;
      sub_1000255CC(v16, v76, type metadata accessor for AlarmAlertFullScreen);
      v52 = 0;
    }

    else
    {
      sub_100025A9C(v19, type metadata accessor for OpaqueAlarm);
      v52 = 1;
      v51 = v76;
    }

    (*(v77 + 56))(v51, v52, 1, v14);
    sub_10002CFC4(v51, v80, &qword_100114D40, &qword_1000D2098);
    swift_storeEnumTagMultiPayload();
    sub_10002B070();
    sub_100025228(&qword_100114D58, type metadata accessor for FullAmbientSnoozeCountdown, &unk_1000D21D8);
    _ConditionalContent<>.init(storage:)();
    return sub_10002D02C(v51, &qword_100114D40, &qword_1000D2098);
  }

  else
  {
    v77 = a1;
    v53 = sub_100088DE4();
    v55 = v54;
    v56 = sub_1000890A8();
    v76 = v57;
    sub_100089408(v5);
    v58 = *(v7 + 48);
    if (v58(v5, 1, v6) == 1)
    {
      v73 = v7;
      v59 = v56;
      v60 = v55;
      v61 = v53;
      v62 = v74;
      static Date.now.getter();
      v63 = v58(v5, 1, v6);
      v64 = v62;
      v53 = v61;
      v55 = v60;
      v56 = v59;
      v7 = v73;
      if (v63 != 1)
      {
        sub_10002D02C(v5, &qword_100115E40, &unk_1000D1280);
      }
    }

    else
    {
      v64 = v74;
      (*(v7 + 32))(v74, v5, v6);
    }

    v66 = type metadata accessor for FullAmbientAlarmView(0);
    v67 = v81;
    sub_10002B00C(v1 + *(v66 + 20), v11 + *(v81 + 28));
    sub_10002B00C(v1 + *(v66 + 24), v11 + v67[9]);
    *v11 = v53;
    v11[1] = v55;
    v68 = v76;
    v11[2] = v56;
    v11[3] = v68;
    (*(v7 + 32))(v11 + v67[6], v64, v6);
    v69 = v67[8];
    v70 = [objc_opt_self() mtOrange];
    *(v11 + v69) = Color.init(uiColor:)();
    v71 = v11 + v67[10];
    *v71 = sub_10002DB3C;
    *(v71 + 1) = 0;
    v71[16] = 0;
    v72 = v75;
    sub_1000255CC(v11, v75, type metadata accessor for FullAmbientSnoozeCountdown);
    sub_100025564(v72, v80, type metadata accessor for FullAmbientSnoozeCountdown);
    swift_storeEnumTagMultiPayload();
    sub_10002B070();
    sub_100025228(&qword_100114D58, type metadata accessor for FullAmbientSnoozeCountdown, &unk_1000D21D8);
    _ConditionalContent<>.init(storage:)();
    return sub_100025A9C(v72, type metadata accessor for FullAmbientSnoozeCountdown);
  }
}

uint64_t sub_10001D9E8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  v12 = a1(0);
  sub_10002CFC4(v2 + *(v12 + 28), v11, &qword_100113778, &qword_1000CFD60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for Font.Context();
    return (*(*(v13 - 8) + 32))(a2, v11, v13);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10001DBF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000032D4(&qword_100114D00, &qword_1000D2058);
  __chkstk_darwin(v2 - 8);
  v4 = (&v15 - v3);
  v5 = sub_1000032D4(&qword_100114D08, &qword_1000D2060);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  *v4 = static Alignment.center.getter();
  v4[1] = v8;
  v9 = sub_1000032D4(&qword_100114D10, &qword_1000D2068);
  sub_10001CE50(v4 + *(v9 + 44));
  if (sub_100088B60())
  {
    v10 = static Edge.Set.vertical.getter();
  }

  else
  {
    v10 = Edge.Set.init(rawValue:)();
  }

  v11 = v10;
  v12 = static SafeAreaRegions.all.getter();
  sub_10002C7C4(v4, v7, &qword_100114D00, &qword_1000D2058);
  v13 = &v7[*(v5 + 36)];
  *v13 = v12;
  v13[8] = v11;
  sub_10002C7C4(v7, a1, &qword_100114D08, &qword_1000D2060);
  result = sub_1000032D4(&qword_100114D18, &qword_1000D2070);
  *(a1 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_10001DD84@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000032D4(&qword_100115088, &qword_1000D2290);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = sub_1000032D4(&qword_100115090, &qword_1000D2298);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  *v15 = static VerticalAlignment.top.getter();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v16 = sub_1000032D4(&qword_100115098, &qword_1000D22A0);
  sub_10001DFDC(a1, &v15[*(v16 + 44)]);
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = sub_1000032D4(&qword_1001150A0, &qword_1000D22A8);
  sub_100020EC8(a1, &v9[*(v17 + 44)]);
  sub_10002CFC4(v15, v13, &qword_100115090, &qword_1000D2298);
  sub_10002CFC4(v9, v7, &qword_100115088, &qword_1000D2290);
  sub_10002CFC4(v13, a2, &qword_100115090, &qword_1000D2298);
  v18 = sub_1000032D4(&qword_1001150A8, &qword_1000D22B0);
  v19 = a2 + *(v18 + 48);
  *v19 = 0;
  *(v19 + 8) = 1;
  sub_10002CFC4(v7, a2 + *(v18 + 64), &qword_100115088, &qword_1000D2290);
  sub_10002D02C(v9, &qword_100115088, &qword_1000D2290);
  sub_10002D02C(v15, &qword_100115090, &qword_1000D2298);
  sub_10002D02C(v7, &qword_100115088, &qword_1000D2290);
  return sub_10002D02C(v13, &qword_100115090, &qword_1000D2298);
}

uint64_t sub_10001DFDC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v243 = a2;
  v3 = type metadata accessor for Color.RGBColorSpace();
  v241 = *(v3 - 8);
  v242 = v3;
  __chkstk_darwin(v3);
  v240 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Font._StylisticAlternative();
  v213 = *(v5 - 8);
  v214 = v5;
  __chkstk_darwin(v5);
  v212 = &v184 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&qword_100114338, &qword_1000D15B8);
  __chkstk_darwin(v7 - 8);
  v9 = &v184 - v8;
  v224 = sub_1000032D4(&qword_100114340, &qword_1000D15C0);
  v219 = *(v224 - 8);
  __chkstk_darwin(v224);
  v216 = &v184 - v10;
  v215 = sub_1000032D4(&qword_100114AF0, &qword_1000D1E58);
  __chkstk_darwin(v215);
  v223 = &v184 - v11;
  v220 = sub_1000032D4(&qword_100114AF8, &qword_1000D1E60);
  __chkstk_darwin(v220);
  v222 = &v184 - v12;
  v218 = sub_1000032D4(&qword_100114B00, &qword_1000D1E68);
  __chkstk_darwin(v218);
  v221 = &v184 - v13;
  v217 = sub_1000032D4(&qword_100114B08, &qword_1000D1E70);
  __chkstk_darwin(v217);
  v227 = &v184 - v14;
  v225 = sub_1000032D4(&qword_100114B10, &qword_1000D1E78);
  __chkstk_darwin(v225);
  v228 = &v184 - v15;
  v226 = sub_1000032D4(&qword_100114B18, &qword_1000D1E80);
  __chkstk_darwin(v226);
  v231 = &v184 - v16;
  v229 = sub_1000032D4(&qword_100114B20, &qword_1000D1E88);
  __chkstk_darwin(v229);
  v234 = &v184 - v17;
  v233 = sub_1000032D4(&qword_100114B28, &qword_1000D1E90);
  __chkstk_darwin(v233);
  v232 = &v184 - v18;
  v230 = sub_1000032D4(&qword_100114B30, &qword_1000D1E98);
  __chkstk_darwin(v230);
  v235 = &v184 - v19;
  v236 = sub_1000032D4(&qword_100114B38, &qword_1000D1EA0);
  __chkstk_darwin(v236);
  v237 = &v184 - v20;
  v21 = sub_1000032D4(&qword_100114B40, &qword_1000D1EA8);
  v22 = __chkstk_darwin(v21 - 8);
  v239 = &v184 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v238 = &v184 - v24;
  v25 = type metadata accessor for AlarmAlertFullScreen(0);
  v209 = *(v25 - 8);
  __chkstk_darwin(v25);
  v210 = v26;
  v27 = &v184 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Font.Context();
  v186 = *(v28 - 8);
  v187 = v28;
  __chkstk_darwin(v28);
  v185 = (&v184 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v249 = type metadata accessor for DynamicTypeSize();
  v252 = *(v249 - 8);
  __chkstk_darwin(v249);
  v248 = &v184 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_1000032D4(&qword_1001150F8, &qword_1000D2300);
  __chkstk_darwin(v191);
  v32 = &v184 - v31;
  v33 = sub_1000032D4(&qword_100115100, &qword_1000D2308);
  v189 = *(v33 - 8);
  v190 = v33;
  __chkstk_darwin(v33);
  v246 = &v184 - v34;
  v188 = sub_1000032D4(&qword_100115108, &qword_1000D2310);
  __chkstk_darwin(v188);
  v196 = &v184 - v35;
  v195 = sub_1000032D4(&qword_100115110, &qword_1000D2318);
  __chkstk_darwin(v195);
  v197 = &v184 - v36;
  v201 = sub_1000032D4(&qword_100115118, &qword_1000D2320);
  __chkstk_darwin(v201);
  v199 = &v184 - v37;
  v38 = sub_1000032D4(&qword_100115120, &qword_1000D2328);
  v202 = *(v38 - 8);
  v203 = v38;
  __chkstk_darwin(v38);
  v200 = &v184 - v39;
  v198 = sub_1000032D4(&qword_100115128, &qword_1000D2330);
  __chkstk_darwin(v198);
  v205 = &v184 - v40;
  v204 = sub_1000032D4(&qword_100115130, &qword_1000D2338);
  __chkstk_darwin(v204);
  v206 = &v184 - v41;
  v207 = sub_1000032D4(&qword_100115138, &qword_1000D2340);
  __chkstk_darwin(v207);
  v208 = &v184 - v42;
  v43 = sub_1000032D4(&qword_100115140, &qword_1000D2348);
  v44 = __chkstk_darwin(v43 - 8);
  v211 = &v184 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v250 = &v184 - v46;
  v47 = *a1;
  v48 = [*a1 isSleepAlarm];
  v244 = v47;
  if (v48)
  {
    v49 = (a1 + *(v25 + 80));
    v51 = *v49;
    v50 = v49[1];
    *&v266 = v51;
    *(&v266 + 1) = v50;
    sub_1000032D4(&qword_100114C60, &qword_1000D1F58);
    State.wrappedValue.getter();
    v52 = v256;
    if (qword_100113610 != -1)
    {
      swift_once();
    }

    v53 = sub_10005926C();
    if (v53)
    {
      v54 = v53;
      v55 = [v53 isAuthorizedForWidgetUpdates];

      if (v55)
      {
        swift_getKeyPath();
        *&v266 = v52;
        sub_100025228(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        LOBYTE(v55) = *(v52 + 48);
      }
    }

    else
    {
      LOBYTE(v55) = 0;
    }

    v47 = v244;
  }

  else
  {
    LOBYTE(v55) = 0;
  }

  v56 = [v47 isSleepAlarm];
  v251 = v25;
  v247 = v27;
  if (v56)
  {
    v57 = sub_10001FB00();
    v59 = v58;
  }

  else
  {
    v60 = [v47 displayTitle];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v61;

    v25 = v251;
  }

  v62 = v25;
  v245 = v9;
  *v32 = static HorizontalAlignment.leading.getter();
  *(v32 + 1) = 0;
  v32[16] = 1;
  v63 = sub_1000032D4(&qword_100115148, &qword_1000D2350);
  sub_10001FE88(v55, v57, v59, &v32[*(v63 + 44)]);

  KeyPath = swift_getKeyPath();
  v65 = &v32[*(sub_1000032D4(&qword_100115150, &qword_1000D2358) + 36)];
  *v65 = KeyPath;
  *(v65 + 1) = 2;
  v65[16] = 0;
  if (qword_1001136B8 != -1)
  {
    swift_once();
  }

  v66 = qword_10011F6F0;
  v67 = swift_getKeyPath();
  v68 = &v32[*(v191 + 36)];
  *v68 = v67;
  v68[1] = v66;
  v69 = v252;
  v70 = *(v252 + 104);
  v71 = v248;
  v193 = enum case for DynamicTypeSize.large(_:);
  v72 = v249;
  v194 = v252 + 104;
  v192 = v70;
  v70(v248);
  sub_10002C8C4();
  v184 = v66;

  View.dynamicTypeSize(_:)();
  v73 = *(v69 + 8);
  v252 = v69 + 8;
  v191 = v73;
  v73(v71, v72);
  sub_10002D02C(v32, &qword_1001150F8, &qword_1000D2300);
  v74 = a1 + v62[19];
  v75 = *v74;
  v76 = v74[8];
  v77 = *(v74 + 2);
  *&v266 = v75;
  BYTE8(v266) = v76;
  *&v267 = v77;
  sub_1000032D4(&qword_100115080, &qword_1000D2288);
  State.wrappedValue.getter();
  static Alignment.leading.getter();
  v78 = v247;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v79 = v196;
  (*(v189 + 32))(v196, v246, v190);
  v80 = (v79 + *(v188 + 36));
  v81 = v261;
  v80[4] = v260;
  v80[5] = v81;
  v80[6] = v262;
  v82 = v257;
  *v80 = v256;
  v80[1] = v82;
  v83 = v259;
  v80[2] = v258;
  v80[3] = v83;
  static Alignment.top.getter();
  _FrameLayout.init(width:height:alignment:)();
  v84 = v197;
  sub_10002C7C4(v79, v197, &qword_100115108, &qword_1000D2310);
  v85 = (v84 + *(v195 + 36));
  v86 = v264;
  *v85 = v263;
  v85[1] = v86;
  v85[2] = v265;
  v87 = a1 + v62[10];
  v88 = *v87;
  v89 = *(v87 + 1);
  LODWORD(v196) = v88;
  LOBYTE(v266) = v88;
  v195 = v89;
  *(&v266 + 1) = v89;
  v90 = sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.getter();
  if (v254)
  {
    v91 = v185;
    sub_10001D9E8(type metadata accessor for AlarmAlertFullScreen, v185);
    v92 = Font.platformFont(in:)();
    (*(v186 + 8))(v91, v187);
    CapHeight = CTFontGetCapHeight(v92);
  }

  else
  {
    CapHeight = 50.0;
  }

  v94 = v205;
  v95 = v199;
  sub_10002C7C4(v84, v199, &qword_100115110, &qword_1000D2318);
  v96 = (v95 + *(v201 + 36));
  *v96 = 0.0;
  v96[1] = CapHeight;
  [v244 isSleepAlarm];
  sub_10002CA60();
  v97 = v200;
  View.hyphenationFactor(_:)();
  sub_10002D02C(v95, &qword_100115118, &qword_1000D2320);
  v98 = a1 + v62[15];
  v99 = *v98;
  v100 = *(v98 + 1);
  LOBYTE(v266) = v99;
  *(&v266 + 1) = v100;
  v246 = v90;
  State.wrappedValue.getter();
  if (v254)
  {
    v101 = 1.0;
  }

  else
  {
    v101 = 0.0;
  }

  (*(v202 + 32))(v94, v97, v203);
  *&v94[*(v198 + 36)] = v101;
  if (qword_100113748 != -1)
  {
    swift_once();
  }

  v102 = qword_10011F788;
  v103 = v94;
  v104 = v206;
  sub_10002C7C4(v103, v206, &qword_100115128, &qword_1000D2330);
  *(v104 + *(v204 + 9)) = v102;
  sub_100025564(a1, v78, type metadata accessor for AlarmAlertFullScreen);
  v105 = (*(v209 + 80) + 16) & ~*(v209 + 80);
  v209 = *(v209 + 80);
  v205 = (v105 + v210);
  v106 = swift_allocObject();
  v210 = v105;
  sub_1000255CC(v78, v106 + v105, type metadata accessor for AlarmAlertFullScreen);
  v107 = v208;
  sub_10002C7C4(v104, v208, &qword_100115130, &qword_1000D2338);
  v108 = (v107 + *(v207 + 36));
  *v108 = sub_10002CC40;
  v108[1] = v106;
  v108[2] = 0;
  v108[3] = 0;
  v244 = v102;

  LocalizedStringKey.init(stringLiteral:)();
  sub_10002CC6C();
  View.accessibilityLabel(_:)();

  sub_10002D02C(v107, &qword_100115138, &qword_1000D2340);
  v109 = v245;
  static TimeZone.current.getter();
  v110 = type metadata accessor for TimeZone();
  v111 = *(v110 - 8);
  v207 = *(v111 + 56);
  v208 = v110;
  v206 = v111 + 56;
  (v207)(v109, 0, 1);
  v112 = Text.init(dateFormat:timeZone:)();
  v114 = v113;
  v204 = a1;
  v116 = v115;
  if (qword_1001136C0 != -1)
  {
    swift_once();
  }

  Font.monospacedDigit()();
  v118 = v212;
  v117 = v213;
  v119 = v214;
  (*(v213 + 104))(v212, enum case for Font._StylisticAlternative.three(_:), v214);
  Font._stylisticAlternative(_:)();

  (*(v117 + 8))(v118, v119);
  v120 = Text.font(_:)();
  v122 = v121;
  LOBYTE(v117) = v123;
  v125 = v124;

  sub_100025B0C(v112, v114, v116 & 1);

  *&v266 = v120;
  *(&v266 + 1) = v122;
  v126 = v117 & 1;
  LOBYTE(v267) = v117 & 1;
  *(&v267 + 1) = v125;
  v127 = v248;
  v128 = v249;
  v192(v248, v193, v249);
  v129 = v216;
  View.dynamicTypeSize(_:)();
  (v191)(v127, v128);
  sub_100025B0C(v120, v122, v126);

  static Alignment.bottomTrailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v130 = v223;
  (*(v219 + 32))(v223, v129, v224);
  v131 = &v130[*(v215 + 36)];
  v132 = v271;
  *(v131 + 4) = v270;
  *(v131 + 5) = v132;
  *(v131 + 6) = v272;
  v133 = v267;
  *v131 = v266;
  *(v131 + 1) = v133;
  v134 = v269;
  *(v131 + 2) = v268;
  *(v131 + 3) = v134;
  v135 = static Color.white.getter();
  v136 = swift_getKeyPath();
  v137 = v130;
  v138 = v222;
  sub_10002C7C4(v137, v222, &qword_100114AF0, &qword_1000D1E58);
  v139 = (v138 + *(v220 + 36));
  *v139 = v136;
  v139[1] = v135;
  v140 = swift_getKeyPath();
  v141 = v221;
  sub_10002C7C4(v138, v221, &qword_100114AF8, &qword_1000D1E60);
  v142 = v141 + *(v218 + 36);
  *v142 = v140;
  *(v142 + 8) = 1;
  *(v142 + 16) = 0;
  v143 = swift_getKeyPath();
  v144 = v141;
  v145 = v227;
  sub_10002C7C4(v144, v227, &qword_100114B00, &qword_1000D1E68);
  v146 = v145 + *(v217 + 36);
  *v146 = v143;
  *(v146 + 8) = 1;
  (*(v241 + 104))(v240, enum case for Color.RGBColorSpace.sRGBLinear(_:), v242);
  v147 = 0.0;
  v148 = Color.init(_:white:opacity:)();
  v149 = v145;
  v150 = v228;
  sub_10002C7C4(v149, v228, &qword_100114B08, &qword_1000D1E70);
  v151 = (v150 + *(v225 + 36));
  *v151 = v148;
  v151[1] = 0x3FF0000000000000;
  v151[2] = 0;
  v151[3] = 0;
  v152 = swift_getKeyPath();
  v153 = v150;
  v154 = v231;
  sub_10002C7C4(v153, v231, &qword_100114B10, &qword_1000D1E78);
  v155 = (v154 + *(v226 + 36));
  *v155 = v152;
  v155[1] = 0x3FE6666666666666;
  v254 = v196;
  v255 = v195;
  State.wrappedValue.getter();
  if (v253)
  {
    v156 = 0.0;
  }

  else
  {
    v156 = 50.0;
  }

  v157 = v154;
  v158 = v234;
  sub_10002C7C4(v157, v234, &qword_100114B18, &qword_1000D1E80);
  v159 = v158 + *(v229 + 36);
  *v159 = 0;
  *(v159 + 8) = v156;
  v160 = v204;
  v161 = v204 + *(v251 + 56);
  v162 = *v161;
  v163 = *(v161 + 1);
  v254 = v162;
  v255 = v163;
  State.wrappedValue.getter();
  if (v253)
  {
    v147 = 1.0;
  }

  v164 = v232;
  sub_10002C7C4(v158, v232, &qword_100114B20, &qword_1000D1E88);
  *(v164 + *(v233 + 36)) = v147;
  v165 = v235;
  sub_10002C7C4(v164, v235, &qword_100114B28, &qword_1000D1E90);
  *(v165 + *(v230 + 36)) = v244;
  v166 = v160;
  v167 = v247;
  sub_100025564(v166, v247, type metadata accessor for AlarmAlertFullScreen);
  v168 = swift_allocObject();
  sub_1000255CC(v167, v168 + v210, type metadata accessor for AlarmAlertFullScreen);
  v169 = v237;
  sub_10002C7C4(v165, v237, &qword_100114B30, &qword_1000D1E98);
  v170 = (v169 + *(v236 + 36));
  *v170 = sub_10002CE78;
  v170[1] = v168;
  v170[2] = 0;
  v170[3] = 0;

  v171 = v245;
  static TimeZone.current.getter();
  (v207)(v171, 0, 1, v208);
  v172 = Text.init(dateFormat:timeZone:)();
  v174 = v173;
  LOBYTE(v167) = v175;
  sub_10002A51C();
  v176 = v238;
  View.accessibilityLabel(_:)();
  sub_100025B0C(v172, v174, v167 & 1);

  sub_10002D02C(v169, &qword_100114B38, &qword_1000D1EA0);
  v177 = v250;
  v178 = v211;
  sub_10002CFC4(v250, v211, &qword_100115140, &qword_1000D2348);
  v179 = v239;
  sub_10002CFC4(v176, v239, &qword_100114B40, &qword_1000D1EA8);
  v180 = v243;
  sub_10002CFC4(v178, v243, &qword_100115140, &qword_1000D2348);
  v181 = sub_1000032D4(&qword_1001151A8, &qword_1000D2368);
  v182 = v180 + *(v181 + 48);
  *v182 = 0;
  *(v182 + 8) = 1;
  sub_10002CFC4(v179, v180 + *(v181 + 64), &qword_100114B40, &qword_1000D1EA8);
  sub_10002D02C(v176, &qword_100114B40, &qword_1000D1EA8);
  sub_10002D02C(v177, &qword_100115140, &qword_1000D2348);
  sub_10002D02C(v179, &qword_100114B40, &qword_1000D1EA8);
  return sub_10002D02C(v178, &qword_100115140, &qword_1000D2348);
}

uint64_t sub_10001FB00()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v11, v8);
  static Date.now.getter();
  v13 = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  static Locale.current.getter();
  v14 = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  v15 = [(objc_class *)isa hksp_dayPeriodForDate:v13 locale:v14];

  v16 = 0x65764520646F6F47;
  v17 = 0xEA00000000007468;
  v18 = 0x67694E20646F6F47;
  if (v15 == 2)
  {
    v18 = 0x74664120646F6F47;
    v17 = 0xEE006E6F6F6E7265;
  }

  if (v15 == 3)
  {
    v17 = 0xEC000000676E696ELL;
  }

  else
  {
    v16 = v18;
  }

  v19 = v15 >= 2;
  if (v15 >= 2)
  {
    v20 = v16;
  }

  else
  {
    v20 = 0x726F4D20646F6F47;
  }

  if (v19)
  {
    v21 = v17;
  }

  else
  {
    v21 = 0xEC000000676E696ELL;
  }

  v22 = [objc_opt_self() mainBundle];
  v29._object = 0x80000001000D7F40;
  v23._countAndFlagsBits = v20;
  v23._object = v21;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD000000000000014;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v29);

  v28 = v25;
  sub_100025FB4();
  v26 = StringProtocol.localizedUppercase.getter();

  return v26;
}

uint64_t sub_10001FE88@<X0>(char a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1000032D4(&qword_1001151B0, &qword_1000D2370);
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  v12 = sub_1000032D4(&qword_1001151B8, &qword_1000D2378);
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  v15 = sub_1000032D4(&qword_100114C88, &qword_1000D1FA0);
  v16 = __chkstk_darwin(v15 - 8);
  __chkstk_darwin(v16);
  if (a1)
  {
    v58 = a5;
    v54 = v18;
    v55 = a3;
    v19 = &v52 - v17;
    v20 = static VerticalAlignment.center.getter();
    v57 = v9;
    LOBYTE(v74) = 1;
    sub_10002050C(v68);
    *&v67[7] = v68[0];
    *&v67[23] = v68[1];
    *&v67[39] = v68[2];
    *&v67[55] = v68[3];
    v56 = v11;
    v21 = v74;
    v22 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    *(&v70[1] + 1) = *&v67[16];
    *(&v70[2] + 1) = *&v67[32];
    *(&v70[3] + 1) = *&v67[48];
    v69 = v20;
    LOBYTE(v70[0]) = v21;
    *(v70 + 1) = *v67;
    *&v70[4] = *&v67[63];
    *(&v70[4] + 1) = KeyPath;
    v71 = v22;
    *v19 = static VerticalAlignment.center.getter();
    *(v19 + 8) = 0;
    *(v19 + 16) = 1;
    v59 = v19;
    v53 = v19 + *(sub_1000032D4(&qword_100114CA8, &qword_1000D1FB0) + 44);
    *&v74 = v55;
    *(&v74 + 1) = a4;
    sub_100025FB4();

    v24 = Text.init<A>(_:)();
    v26 = v25;
    LOBYTE(v19) = v27;
    v28 = [objc_opt_self() mtOrange];
    Color.init(uiColor:)();
    v29 = Text.foregroundColor(_:)();
    v52 = v14;
    v30 = v29;
    v55 = v12;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    sub_100025B0C(v24, v26, v19 & 1);

    *&v74 = v30;
    *(&v74 + 1) = v32;
    LOBYTE(v75) = v34 & 1;
    *(&v75 + 1) = v36;
    v37 = v53;
    View.lineLimit(_:reservesSpace:)();
    sub_100025B0C(v30, v32, v34 & 1);

    *(v37 + *(sub_1000032D4(&qword_100114CB0, &qword_1000D1FB8) + 36)) = 256;
    v64 = v70[3];
    v65 = v70[4];
    v66 = v71;
    v60 = v69;
    v61 = v70[0];
    v62 = v70[1];
    v63 = v70[2];
    v38 = v54;
    sub_10002CFC4(v59, v54, &qword_100114C88, &qword_1000D1FA0);
    v39 = v64;
    v40 = v65;
    v72[4] = v64;
    v72[5] = v65;
    v41 = v66;
    v73 = v66;
    v42 = v61;
    v72[0] = v60;
    v72[1] = v61;
    v44 = v62;
    v43 = v63;
    v72[2] = v62;
    v72[3] = v63;
    v45 = v52;
    *v52 = v60;
    *(v45 + 16) = v42;
    *(v45 + 96) = v41;
    *(v45 + 32) = v44;
    *(v45 + 48) = v43;
    *(v45 + 64) = v39;
    *(v45 + 80) = v40;
    v46 = sub_1000032D4(&qword_1001151D8, &qword_1000D2388);
    sub_10002CFC4(v38, v45 + *(v46 + 48), &qword_100114C88, &qword_1000D1FA0);
    sub_10002CFC4(&v69, &v74, &qword_1001151E0, &qword_1000D2390);
    sub_10002CFC4(v72, &v74, &qword_1001151E0, &qword_1000D2390);
    sub_10002D02C(v38, &qword_100114C88, &qword_1000D1FA0);
    v78 = v64;
    v79 = v65;
    v80 = v66;
    v74 = v60;
    v75 = v61;
    v76 = v62;
    v77 = v63;
    sub_10002D02C(&v74, &qword_1001151E0, &qword_1000D2390);
    sub_10002CFC4(v45, v56, &qword_1001151B8, &qword_1000D2378);
    swift_storeEnumTagMultiPayload();
    sub_1000032D4(&qword_1001151C0, &qword_1000D2380);
    sub_10002DAD8(&qword_1001151C8, &qword_1001151B8, &qword_1000D2378, &protocol conformance descriptor for TupleView<A>);
    sub_10002DAD8(&qword_1001151D0, &qword_1001151C0, &qword_1000D2380, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10002D02C(&v69, &qword_1001151E0, &qword_1000D2390);
    sub_10002D02C(v45, &qword_1001151B8, &qword_1000D2378);
    return sub_10002D02C(v59, &qword_100114C88, &qword_1000D1FA0);
  }

  else
  {
    v48 = static VerticalAlignment.center.getter();
    sub_100020834(&v74);
    v49 = v75;
    v50 = *(&v75 + 1);
    v51 = v74;
    *v11 = v48;
    *(v11 + 1) = 0;
    v11[16] = 1;
    *(v11 + 24) = v51;
    v11[40] = v49;
    *(v11 + 6) = v50;
    swift_storeEnumTagMultiPayload();
    sub_1000032D4(&qword_1001151C0, &qword_1000D2380);
    sub_10002DAD8(&qword_1001151C8, &qword_1001151B8, &qword_1000D2378, &protocol conformance descriptor for TupleView<A>);
    sub_10002DAD8(&qword_1001151D0, &qword_1001151C0, &qword_1000D2380, &protocol conformance descriptor for HStack<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10002050C@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for AlarmAlertFullScreen(0);
  sub_1000032D4(&qword_100114C60, &qword_1000D1F58);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_100025228(&qword_100114C68, type metadata accessor for WeatherDataProvider, &unk_1000D4C20);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v21 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName + 8);

  if (v4)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
    Image.init(systemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v6);
    LocalizedStringKey.init(stringInterpolation:)();
    v7 = Text.init(_:tableName:bundle:comment:)();
    v9 = v8;
    v4 = v10;
    v12 = v11 & 1;
    sub_100025AFC(v7, v8, v11 & 1);
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v12 = 0;
  }

  State.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100025FB4();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10002CF3C(v7, v9, v12, v4);
  v17 &= 1u;
  sub_100025AFC(v13, v15, v17);

  sub_10002CF80(v7, v9, v12, v4);
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v12;
  *(a2 + 24) = v4;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17;
  *(a2 + 56) = v19;
  sub_100025B0C(v13, v15, v17);

  return sub_10002CF80(v7, v9, v12, v4);
}

uint64_t sub_100020834@<X0>(uint64_t *a3@<X8>)
{
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  if (qword_100113700 != -1)
  {
    swift_once();
  }

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  LocalizedStringKey.init(stringInterpolation:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Color.secondary.getter();
  v11 = Text.foregroundColor(_:)();
  v34 = v12;
  v35 = v11;
  v33 = v13;

  sub_100025B0C(v6, v8, v10 & 1);

  sub_100025FB4();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  v19 = [objc_opt_self() mtOrange];
  Color.init(uiColor:)();
  v20 = Text.foregroundColor(_:)();
  v22 = v21;
  v24 = v23;

  sub_100025B0C(v14, v16, v18 & 1);

  v25 = static Text.+ infix(_:_:)();
  v27 = v26;
  v29 = v28;
  v32 = v30;
  sub_100025B0C(v20, v22, v24 & 1);

  sub_100025B0C(v35, v34, v33 & 1);

  *a3 = v25;
  a3[1] = v27;
  *(a3 + 16) = v29 & 1;
  a3[3] = v32;
  return result;
}

uint64_t sub_100020AE8(uint64_t a1)
{
  if (qword_100113718 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F750);
  withAnimation<A>(_:_:)();
  if (qword_100113720 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F758);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_100020C1C(uint64_t a1)
{
  type metadata accessor for AlarmAlertFullScreen(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_100020C98(uint64_t a1)
{
  if (qword_100113708 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F740);
  withAnimation<A>(_:_:)();
  if (qword_100113710 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F748);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_100020DCC(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_100020E4C(uint64_t a1)
{
  type metadata accessor for AlarmAlertFullScreen(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_100020EC8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a2;
  v3 = sub_1000032D4(&qword_1001150B0, &qword_1000D22B8);
  v159 = *(v3 - 8);
  v160 = v3;
  __chkstk_darwin(v3);
  v143 = (v134 - v4);
  v5 = sub_1000032D4(&qword_1001150B8, &qword_1000D22C0);
  v6 = __chkstk_darwin(v5 - 8);
  v162 = v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v161 = v134 - v8;
  v156 = type metadata accessor for SlideTransition();
  v155 = *(v156 - 8);
  v9 = __chkstk_darwin(v156);
  v153 = v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v154 = v134 - v11;
  v12 = type metadata accessor for AlarmAlertFullScreen(0);
  v157 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v13;
  v15 = v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LargeActionButton(0);
  v17 = __chkstk_darwin(v16);
  v137 = v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v134 - v19;
  v21 = sub_1000032D4(&qword_1001150C0, &qword_1000D22C8);
  v22 = __chkstk_darwin(v21);
  v139 = v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v148 = v134 - v24;
  v166 = sub_1000032D4(&qword_1001150C8, &qword_1000D22D0);
  v25 = __chkstk_darwin(v166);
  v138 = v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v149 = v134 - v27;
  v165 = sub_1000032D4(&qword_1001150D0, &qword_1000D22D8);
  v28 = __chkstk_darwin(v165);
  v140 = v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v151 = v134 - v30;
  v167 = sub_1000032D4(&qword_1001150D8, &qword_1000D22E0);
  v31 = __chkstk_darwin(v167);
  v141 = v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v152 = v134 - v33;
  v168 = sub_1000032D4(&qword_1001150E0, &qword_1000D22E8);
  v34 = __chkstk_darwin(v168);
  v36 = v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34);
  v136 = v134 - v38;
  v39 = __chkstk_darwin(v37);
  v142 = v134 - v40;
  v41 = __chkstk_darwin(v39);
  v150 = v134 - v42;
  __chkstk_darwin(v41);
  v169 = v134 - v43;
  v147 = *a1;
  v44 = [v147 allowsSnooze];
  v158 = v36;
  v164 = v21;
  v45 = v12;
  if (v44)
  {
    [objc_allocWithZone(UIColor) initWithRed:0.17254902 green:0.17254902 blue:0.17254902 alpha:1.0];
  }

  else
  {
    v46 = [objc_opt_self() mtOrange];
  }

  v47 = Color.init(uiColor:)();
  LocalizedStringResource.init(stringLiteral:)();
  v48 = static Color.white.getter();
  v146 = type metadata accessor for AlarmAlertFullScreen;
  v144 = v15;
  sub_100025564(a1, v15, type metadata accessor for AlarmAlertFullScreen);
  v49 = *(v157 + 80);
  v170 = v14;
  v145 = (v49 + 16) & ~v49;
  v50 = a1;
  v51 = swift_allocObject();
  v157 = type metadata accessor for AlarmAlertFullScreen;
  sub_1000255CC(v15, v51 + ((v49 + 16) & ~v49), type metadata accessor for AlarmAlertFullScreen);
  *&v20[v16[5]] = v48;
  *&v20[v16[6]] = v47;
  v20[v16[7]] = 0;
  v52 = &v20[v16[8]];
  *v52 = sub_10002C6D8;
  v52[1] = v51;
  v53 = &v20[v16[9]];
  v171 = 0;
  State.init(wrappedValue:)();
  v54 = v173;
  *v53 = v172;
  *(v53 + 1) = v54;
  v55 = v50 + *(v45 + 48);
  v56 = *v55;
  v57 = *(v55 + 1);
  v172 = *v55;
  v173 = v57;
  v58 = sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.getter();
  if (v171)
  {
    v59 = 0.0;
  }

  else
  {
    v59 = 150.0;
  }

  v60 = v20;
  v61 = v148;
  sub_1000255CC(v60, v148, type metadata accessor for LargeActionButton);
  v62 = v61 + *(v164 + 36);
  *v62 = 0;
  *(v62 + 8) = v59;
  v135 = v45;
  v63 = v50 + *(v45 + 68);
  v64 = *v63;
  v65 = *(v63 + 1);
  v172 = v64;
  v173 = v65;
  State.wrappedValue.getter();
  if (v171)
  {
    v66 = 1.0;
  }

  else
  {
    v66 = 0.0;
  }

  v67 = v61;
  v68 = v149;
  sub_10002C7C4(v67, v149, &qword_1001150C0, &qword_1000D22C8);
  *(v68 + *(v166 + 36)) = v66;
  v172 = v56;
  v173 = v57;
  v148 = v58;
  v69 = v50;
  State.wrappedValue.getter();
  if (v171)
  {
    v70 = 1.0;
  }

  else
  {
    v70 = 0.8;
  }

  static UnitPoint.center.getter();
  v72 = v71;
  v74 = v73;
  v75 = v151;
  sub_10002C7C4(v68, v151, &qword_1001150C8, &qword_1000D22D0);
  v76 = v75 + *(v165 + 36);
  *v76 = v70;
  *(v76 + 8) = v70;
  *(v76 + 16) = v72;
  *(v76 + 24) = v74;
  v77 = v154;
  SlideTransition.init()();
  v78 = v155;
  v79 = v156;
  (*(v155 + 16))(v153, v77, v156);
  sub_100025228(&qword_1001142F0, &type metadata accessor for SlideTransition, &protocol conformance descriptor for SlideTransition);
  v80 = AnyTransition.init<A>(_:)();
  v81 = v77;
  v82 = v145;
  (*(v78 + 8))(v81, v79);
  v83 = v75;
  v84 = v144;
  v85 = v152;
  sub_10002C7C4(v83, v152, &qword_1001150D0, &qword_1000D22D8);
  *(v85 + *(v167 + 36)) = v80;
  sub_100025564(v69, v84, v146);
  v86 = v49;
  v87 = swift_allocObject();
  sub_1000255CC(v84, v87 + v82, v157);
  v88 = v150;
  sub_10002C7C4(v85, v150, &qword_1001150D8, &qword_1000D22E0);
  v89 = v169;
  v90 = (v88 + *(v168 + 36));
  *v90 = sub_10002C754;
  v90[1] = v87;
  v90[2] = 0;
  v90[3] = 0;
  sub_10002C7C4(v88, v89, &qword_1001150E0, &qword_1000D22E8);
  if ([v147 allowsSnooze])
  {
    v91 = [objc_opt_self() mtOrange];
    v92 = Color.init(uiColor:)();
    v93 = v137;
    LocalizedStringResource.init(stringLiteral:)();
    v94 = static Color.white.getter();
    sub_100025564(v69, v84, type metadata accessor for AlarmAlertFullScreen);
    v134[1] = v86;
    v95 = swift_allocObject();
    sub_1000255CC(v84, v95 + v82, type metadata accessor for AlarmAlertFullScreen);
    *(v93 + v16[5]) = v94;
    *(v93 + v16[6]) = v92;
    *(v93 + v16[7]) = 0;
    v96 = (v93 + v16[8]);
    *v96 = sub_10002C780;
    v96[1] = v95;
    v97 = v93 + v16[9];
    v171 = 0;
    State.init(wrappedValue:)();
    v98 = v173;
    *v97 = v172;
    *(v97 + 8) = v98;
    v99 = v135;
    v100 = v69 + *(v135 + 52);
    v101 = *v100;
    v102 = *(v100 + 8);
    v172 = *v100;
    v173 = v102;
    State.wrappedValue.getter();
    if (v171)
    {
      v103 = 0.0;
    }

    else
    {
      v103 = 150.0;
    }

    v104 = v139;
    sub_1000255CC(v93, v139, type metadata accessor for LargeActionButton);
    v105 = v104 + *(v164 + 36);
    *v105 = 0;
    *(v105 + 8) = v103;
    v106 = v69 + *(v99 + 72);
    v107 = *v106;
    v108 = *(v106 + 8);
    v172 = v107;
    v173 = v108;
    State.wrappedValue.getter();
    if (v171)
    {
      v109 = 1.0;
    }

    else
    {
      v109 = 0.0;
    }

    v110 = v104;
    v111 = v138;
    sub_10002C7C4(v110, v138, &qword_1001150C0, &qword_1000D22C8);
    *(v111 + *(v166 + 36)) = v109;
    v172 = v101;
    v173 = v102;
    State.wrappedValue.getter();
    if (v171)
    {
      v112 = 1.0;
    }

    else
    {
      v112 = 0.8;
    }

    static UnitPoint.center.getter();
    v114 = v113;
    v116 = v115;
    v117 = v140;
    sub_10002C7C4(v111, v140, &qword_1001150C8, &qword_1000D22D0);
    v118 = v117 + *(v165 + 36);
    *v118 = v112;
    *(v118 + 8) = v112;
    *(v118 + 16) = v114;
    *(v118 + 24) = v116;
    v119 = v161;
    if (qword_100113748 != -1)
    {
      swift_once();
    }

    v120 = qword_10011F788;
    v121 = v141;
    sub_10002C7C4(v117, v141, &qword_1001150D0, &qword_1000D22D8);
    *(v121 + *(v167 + 36)) = v120;
    sub_100025564(v69, v84, type metadata accessor for AlarmAlertFullScreen);
    v122 = swift_allocObject();
    sub_1000255CC(v84, v122 + v82, type metadata accessor for AlarmAlertFullScreen);
    v123 = v136;
    sub_10002C7C4(v121, v136, &qword_1001150D8, &qword_1000D22E0);
    v124 = (v123 + *(v168 + 36));
    *v124 = sub_10002C798;
    v124[1] = v122;
    v124[2] = 0;
    v124[3] = 0;
    v125 = v142;
    sub_10002C7C4(v123, v142, &qword_1001150E0, &qword_1000D22E8);
    v126 = v158;
    sub_10002CFC4(v125, v158, &qword_1001150E0, &qword_1000D22E8);
    v127 = v143;
    *v143 = 0x4038000000000000;
    *(v127 + 8) = 0;
    v128 = sub_1000032D4(&qword_1001150F0, &qword_1000D22F8);
    sub_10002CFC4(v126, v127 + *(v128 + 48), &qword_1001150E0, &qword_1000D22E8);

    sub_10002D02C(v125, &qword_1001150E0, &qword_1000D22E8);
    sub_10002D02C(v126, &qword_1001150E0, &qword_1000D22E8);
    sub_10002C7C4(v127, v119, &qword_1001150B0, &qword_1000D22B8);
    v129 = 0;
    v89 = v169;
  }

  else
  {
    v129 = 1;
    v119 = v161;
    v126 = v158;
  }

  (*(v159 + 56))(v119, v129, 1, v160);
  sub_10002CFC4(v89, v126, &qword_1001150E0, &qword_1000D22E8);
  v130 = v162;
  sub_10002CFC4(v119, v162, &qword_1001150B8, &qword_1000D22C0);
  v131 = v163;
  sub_10002CFC4(v126, v163, &qword_1001150E0, &qword_1000D22E8);
  v132 = sub_1000032D4(&qword_1001150E8, &qword_1000D22F0);
  sub_10002CFC4(v130, v131 + *(v132 + 48), &qword_1001150B8, &qword_1000D22C0);
  sub_10002D02C(v119, &qword_1001150B8, &qword_1000D22C0);
  sub_10002D02C(v89, &qword_1001150E0, &qword_1000D22E8);
  sub_10002D02C(v130, &qword_1001150B8, &qword_1000D22C0);
  return sub_10002D02C(v126, &qword_1001150E0, &qword_1000D22E8);
}

uint64_t sub_100021EF8(uint64_t a1)
{
  if (qword_100113728 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F760);
  withAnimation<A>(_:_:)();
  if (qword_100113730 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F768);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_10002202C(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_1000220AC(uint64_t a1)
{
  type metadata accessor for AlarmAlertFullScreen(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_100022128(uint64_t a1)
{
  if (qword_100113738 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F770);
  withAnimation<A>(_:_:)();
  if (qword_100113740 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F778);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_10002225C(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_1000222DC(uint64_t a1)
{
  type metadata accessor for AlarmAlertFullScreen(0);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

double sub_100022358@<D0>(double *a1@<X8>)
{
  GeometryProxy.size.getter();
  result = v2 + -42.0;
  *a1 = result;
  return result;
}

uint64_t sub_100022390(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for AlarmAlertFullScreen(0);
  sub_1000032D4(&qword_100115080, &qword_1000D2288);
  return State.wrappedValue.setter();
}

uint64_t sub_100022410(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  sub_100025B1C((a1 + 8), *(a1 + 32));
  v4 = [*a1 alarmIDString];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  a2(v5, v7);
}

uint64_t sub_1000224A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = sub_1000032D4(&qword_100115070, &qword_1000D2278);
  sub_10001DD84(v2, a2 + *(v6 + 44));
  sub_100025564(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAlertFullScreen);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1000255CC(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for AlarmAlertFullScreen);
  result = sub_1000032D4(&qword_100115078, &qword_1000D2280);
  v10 = (a2 + *(result + 36));
  *v10 = sub_100022358;
  v10[1] = 0;
  v10[2] = sub_10002C458;
  v10[3] = v8;
  return result;
}

uint64_t sub_100022624()
{
  type metadata accessor for EnvironmentDelegate(0);
  v0 = swift_allocObject();
  sub_1000032D4(&qword_100114130, &qword_1000D1418);
  Published.init(initialValue:)();
  v1 = (v0 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_countdownValue);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_apertureNeedsResize) = 0;
  return v0;
}

uint64_t sub_1000226BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000032D4(&qword_1001151F0, &qword_1000D23A0);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v30 - v9;
  v11 = sub_1000032D4(&qword_1001151F8, &qword_1000D23A8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v30 - v16;
  sub_10002299C(v15);
  *v10 = static VerticalAlignment.lastTextBaseline.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v18 = sub_1000032D4(&qword_100115200, &qword_1000D23B0);
  sub_100022B98(a1, &v10[*(v18 + 44)]);
  CTFontGetDescentForSystemFontOfSize();
  v20 = v19;
  v21 = &v10[*(sub_1000032D4(&qword_100115208, &qword_1000D23B8) + 36)];
  *v21 = 0;
  *(v21 + 1) = v20;
  static Edge.Set.horizontal.getter();
  memset(v30, 0, sizeof(v30));
  v31 = 1;
  sub_1000032D4(&qword_100115210, &qword_1000D23C0);
  SafeAreaPaddingModifier.init(edges:insets:)();
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v22 = &v10[*(v5 + 44)];
  *v22 = a1;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  sub_10002CFC4(v17, v14, &qword_1001151F8, &qword_1000D23A8);
  sub_10002CFC4(v10, v8, &qword_1001151F0, &qword_1000D23A0);
  sub_10002CFC4(v14, a2, &qword_1001151F8, &qword_1000D23A8);
  v27 = sub_1000032D4(&qword_100115218, &qword_1000D23C8);
  v28 = a2 + *(v27 + 48);
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_10002CFC4(v8, a2 + *(v27 + 64), &qword_1001151F0, &qword_1000D23A0);
  sub_10002D02C(v10, &qword_1001151F0, &qword_1000D23A0);
  sub_10002D02C(v17, &qword_1001151F8, &qword_1000D23A8);
  sub_10002D02C(v8, &qword_1001151F0, &qword_1000D23A0);
  return sub_10002D02C(v14, &qword_1001151F8, &qword_1000D23A8);
}

uint64_t sub_10002299C(uint64_t a1)
{
  v1 = static VerticalAlignment.center.getter();
  sub_100023370(v10);
  *&v9[7] = v10[0];
  *&v9[23] = v10[1];
  *&v9[39] = v10[2];
  *&v9[55] = v10[3];
  KeyPath = swift_getKeyPath();
  LOBYTE(v11[0]) = 0;
  if (qword_1001136B8 != -1)
  {
    swift_once();
  }

  v3 = qword_10011F6F0;
  *&v6[17] = *&v9[16];
  *&v6[33] = *&v9[32];
  *&v6[49] = *&v9[48];
  *&v5 = v1;
  *(&v5 + 1) = 0x4020000000000000;
  v6[0] = 0;
  *&v6[1] = *v9;
  *&v6[64] = *&v9[63];
  *&v6[72] = KeyPath;
  *&v7 = 2;
  BYTE8(v7) = 0;
  *&v8 = swift_getKeyPath();
  *(&v8 + 1) = v3;

  LocalizedStringKey.init(stringLiteral:)();
  sub_1000032D4(&qword_100115268, &qword_1000D2408);
  sub_10002D29C();
  View.accessibilityLabel(_:)();

  v11[4] = *&v6[48];
  v11[5] = *&v6[64];
  v11[6] = v7;
  v11[7] = v8;
  v11[0] = v5;
  v11[1] = *v6;
  v11[2] = *&v6[16];
  v11[3] = *&v6[32];
  return sub_10002D02C(v11, &qword_100115268, &qword_1000D2408);
}

uint64_t sub_100022B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for DynamicTypeSize();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000032D4(&qword_100115220, &qword_1000D23D0);
  __chkstk_darwin(v34);
  v8 = &v31 - v7;
  v35 = sub_1000032D4(&qword_100115228, &qword_1000D23D8);
  v33 = *(v35 - 8);
  v9 = __chkstk_darwin(v35);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v13 = sub_1000032D4(&qword_100115230, &qword_1000D23E0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  sub_100022F98();
  *v8 = static HorizontalAlignment.trailing.getter();
  *(v8 + 1) = 0xC034000000000000;
  v8[16] = 0;
  v19 = sub_1000032D4(&qword_100115238, &qword_1000D23E8);
  sub_100023660(a1, &v8[*(v19 + 44)]);
  (*(v4 + 104))(v6, enum case for DynamicTypeSize.large(_:), v3);
  sub_10002DAD8(&qword_100115240, &qword_100115220, &qword_1000D23D0, &protocol conformance descriptor for VStack<A>);
  View.dynamicTypeSize(_:)();
  (*(v4 + 8))(v6, v3);
  sub_10002D02C(v8, &qword_100115220, &qword_1000D23D0);
  v20 = v16;
  v31 = v16;
  sub_10002CFC4(v18, v16, &qword_100115230, &qword_1000D23E0);
  v21 = v32;
  v22 = v33;
  v23 = *(v33 + 16);
  v24 = v35;
  v23(v32, v12, v35);
  v25 = v20;
  v26 = v36;
  sub_10002CFC4(v25, v36, &qword_100115230, &qword_1000D23E0);
  v27 = sub_1000032D4(&qword_100115248, &qword_1000D23F0);
  v28 = v26 + *(v27 + 48);
  *v28 = 0x4034000000000000;
  *(v28 + 8) = 0;
  v23((v26 + *(v27 + 64)), v21, v24);
  v29 = *(v22 + 8);
  v29(v12, v24);
  sub_10002D02C(v18, &qword_100115230, &qword_1000D23E0);
  v29(v21, v24);
  return sub_10002D02C(v31, &qword_100115230, &qword_1000D23E0);
}

uint64_t sub_100022F98()
{
  v1 = v0;
  v2 = type metadata accessor for FullAmbientSnoozeCountdown(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = type metadata accessor for MediumActionButton(0);
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v1 + *(v3 + 44));
  v10 = v9[3];
  v11 = v9[4];
  sub_100025B1C(v9, v10);
  v12 = (*(v11 + 56))(v10, v11);
  if (qword_100113760 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Material();
  v14 = sub_10002D08C(v13, qword_10011F7B0);
  (*(*(v13 - 8) + 16))(&v8[v6[6]], v14, v13);
  if (qword_100113770 != -1)
  {
    swift_once();
  }

  v27 = xmmword_10011F840;
  v28 = unk_10011F850;
  v29 = xmmword_10011F860;
  v25 = xmmword_10011F820;
  v26 = *algn_10011F830;
  v15 = v6[8];
  v16 = enum case for BlendMode.normal(_:);
  v17 = type metadata accessor for BlendMode();
  (*(*(v17 - 8) + 104))(&v8[v15], v16, v17);
  sub_100025564(v1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullAmbientSnoozeCountdown);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_1000255CC(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for FullAmbientSnoozeCountdown);
  *v8 = 0x6B72616D78;
  *(v8 + 1) = 0xE500000000000000;
  *(v8 + 2) = v12;
  v20 = &v8[v6[7]];
  v21 = v29;
  v20[3] = v28;
  v20[4] = v21;
  v22 = v27;
  v20[1] = v26;
  v20[2] = v22;
  *v20 = v25;
  v8[v6[9]] = 1;
  v23 = &v8[v6[10]];
  *v23 = sub_10002D1F4;
  v23[1] = v19;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100025228(&qword_100115260, type metadata accessor for MediumActionButton, &unk_1000D6F28);
  View.accessibilityLabel(_:)();

  return sub_100025A9C(v8, type metadata accessor for MediumActionButton);
}

uint64_t sub_100023370@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  if (qword_100113700 != -1)
  {
    swift_once();
  }

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  LocalizedStringKey.init(stringInterpolation:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Color.secondary.getter();
  v28 = Text.foregroundColor(_:)();
  v29 = v11;
  v13 = v12;
  v27 = v14;

  sub_100025B0C(v6, v8, v10 & 1);

  sub_100025FB4();
  StringProtocol.localizedUppercase.getter();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  LOBYTE(v8) = v18;
  type metadata accessor for FullAmbientSnoozeCountdown(0);
  v19 = Text.foregroundColor(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_100025B0C(v15, v17, v8 & 1);

  *a2 = v28;
  *(a2 + 8) = v13;
  *(a2 + 16) = v27 & 1;
  *(a2 + 24) = v29;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v23 & 1;
  *(a2 + 56) = v25;
  sub_100025AFC(v28, v13, v27 & 1);

  sub_100025AFC(v19, v21, v23 & 1);

  sub_100025B0C(v19, v21, v23 & 1);

  sub_100025B0C(v28, v13, v27 & 1);
}