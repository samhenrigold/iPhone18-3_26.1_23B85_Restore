void sub_100001BB0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TransactionPickerServiceViewController(0);
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 reporterForSubject:v1];
  if (v3)
  {
  }

  else
  {
    [v2 beginSubjectReporting:v1];

    AnalyticsSession.refreshSessionID()();
  }

  sub_100001FB4();
}

void sub_100001D4C(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TransactionPickerServiceViewController(0);
  objc_msgSendSuper2(&v6, "viewDidDisappear:", a1 & 1);
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 reporterForSubject:v3];
  if (v5)
  {

    [v4 endSubjectReporting:v3];
  }
}

id sub_100001F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v6 = a4(isCurrentExecutor);

  return v6;
}

void sub_100001FB4()
{
  v1 = v0;
  v2 = sub_100003FFC(&qword_100019108, &qword_10000FC80);
  __chkstk_darwin(v2 - 8);
  v4 = v42 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_logger], v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "TransactionPickerViewController - someone requested transaction picker", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  sub_100002574(v4);
  v12 = objc_allocWithZone(sub_100003FFC(&qword_100019110, &qword_10000FC88));
  v13 = UIHostingController.init(rootView:)();
  v14 = *&v1[OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_hostingController];
  *&v1[OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_hostingController] = v13;
  v15 = v13;

  v16 = [v15 view];
  if (v16)
  {
    [v1 addChildViewController:v15];
    v17 = [v1 view];
    if (v17)
    {
      v18 = v17;
      [v17 addSubview:v16];

      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      sub_100003FFC(&qword_100019118, &unk_10000FC90);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10000FA50;
      v20 = [v16 topAnchor];
      v21 = [v1 view];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 topAnchor];

        v24 = [v20 constraintEqualToAnchor:v23];
        *(v19 + 32) = v24;
        v25 = [v16 leadingAnchor];
        v26 = [v1 view];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 leadingAnchor];

          v29 = [v25 constraintEqualToAnchor:v28];
          *(v19 + 40) = v29;
          v30 = [v16 trailingAnchor];
          v31 = [v1 view];
          if (v31)
          {
            v32 = v31;
            v33 = [v31 trailingAnchor];

            v34 = [v30 constraintEqualToAnchor:v33];
            *(v19 + 48) = v34;
            v35 = [v16 bottomAnchor];
            v36 = [v1 view];
            if (v36)
            {
              v37 = v36;
              v38 = objc_opt_self();
              v39 = [v37 bottomAnchor];

              v40 = [v35 constraintEqualToAnchor:v39];
              *(v19 + 56) = v40;
              sub_100004444();
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v38 activateConstraints:isa];

              return;
            }

            goto LABEL_23;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  if ([v1 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45[0] = v43;
  v45[1] = v44;
  if (*(&v44 + 1))
  {
    sub_100003FFC(&qword_1000190F8, &qword_10000FC70);
    if (swift_dynamicCast())
    {
      [v42[1] cancelled];
      swift_unknownObjectRelease();
    }
  }

  else
  {

    sub_1000041D4(v45);
  }
}

uint64_t sub_100002574@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_100003FFC(&qword_1000190C0, &qword_10000FC48);
  __chkstk_darwin(v1 - 8);
  v23 = &v23 - v2;
  v27 = sub_100003FFC(&qword_1000190C8, &qword_10000FC50);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v23 - v3;
  v4 = sub_100003FFC(&qword_1000190D0, &qword_10000FC58);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = type metadata accessor for DataRestrictedTransactionPickerView();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FinanceStore.DataType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FinanceStore();
  static FinanceStore.shared.getter();
  (*(v12 + 104))(v14, enum case for FinanceStore.DataType.financialData(_:), v11);
  v15 = FinanceStore.isDataRestricted(for:)();

  (*(v12 + 8))(v14, v11);
  v16 = v26;
  if ((v15 & 1) != 0 || (sub_100003324() & 1) == 0)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    DataRestrictedTransactionPickerView.init(cancelAction:)();
    (*(v8 + 16))(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_100004168(&qword_1000190D8, &type metadata accessor for DataRestrictedTransactionPickerView, &protocol conformance descriptor for DataRestrictedTransactionPickerView);
    sub_10000407C();
    _ConditionalContent<>.init(storage:)();
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v17 = type metadata accessor for AppProtectionShieldState();
    (*(*(v17 - 8) + 56))(v23, 1, 1, v17);
    *(swift_allocObject() + 16) = v16;
    type metadata accessor for TransactionPickerView();
    sub_100004168(&qword_1000190E8, &type metadata accessor for TransactionPickerView, &protocol conformance descriptor for TransactionPickerView);
    v18 = v16;
    v19 = v24;
    AppProtectionShieldView.init(forceShieldState:shieldType:dismissAction:showAuthOnAppear:content:)();
    v20 = v25;
    v21 = v27;
    (*(v25 + 16))(v6, v19, v27);
    swift_storeEnumTagMultiPayload();
    sub_100004168(&qword_1000190D8, &type metadata accessor for DataRestrictedTransactionPickerView, &protocol conformance descriptor for DataRestrictedTransactionPickerView);
    sub_10000407C();
    _ConditionalContent<>.init(storage:)();
    return (*(v20 + 8))(v19, v21);
  }
}

uint64_t sub_100002ACC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  TransactionPickerView.init(confirmAction:cancelAction:)();
}

void sub_100002BEC(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_9:
    sub_1000041D4(&v9);
    return;
  }

  v4 = Strong;
  v5 = [Strong _remoteViewControllerProxy];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_9;
  }

  sub_100003FFC(&qword_1000190F8, &qword_10000FC70);
  if (swift_dynamicCast())
  {
    sub_100002E14(sub_100002D40, 0, a1);
    v6 = Array<A>.xpcValue.getter();

    [v7 foundWithTransactions:v6];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100002D40(uint64_t a1)
{
  v2 = type metadata accessor for InternalTransaction();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Transaction.init(internalTransaction:)();
}

unint64_t *sub_100002E14(void (*a1)(unint64_t), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v42 = a1;
  v43 = a2;
  v41 = type metadata accessor for InternalTransaction();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Transaction();
  v9 = *(v40 - 8);
  __chkstk_darwin(v40);
  v47 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v11)
  {
    v39 = v8;
    v49 = &_swiftEmptyArrayStorage;
    v44 = v6;
    sub_10000423C(0, v11, 0);
    v13 = v44;
    v48 = v49;
    v14 = a3 + 56;
    v15 = _HashTable.startBucket.getter();
    v16 = 0;
    v37 = v13 + 16;
    v38 = (v13 + 8);
    v35 = v9 + 32;
    v36 = v9;
    v32 = a3 + 64;
    v33 = v11;
    v34 = a3 + 56;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a3 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v14 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v45 = v16;
      v19 = *(a3 + 36);
      v20 = a3;
      v21 = *(a3 + 48) + *(v13 + 72) * v15;
      v9 = v39;
      a3 = v41;
      (*(v13 + 16))(v39, v21, v41);
      v42(v9);
      v46 = v4;
      if (v4)
      {
        goto LABEL_27;
      }

      (*v38)(v9, a3);
      v22 = v48;
      v49 = v48;
      v9 = v48[2];
      v23 = v48[3];
      a3 = v9 + 1;
      if (v9 >= v23 >> 1)
      {
        sub_10000423C((v23 > 1), v9 + 1, 1);
        v22 = v49;
      }

      v22[2] = a3;
      v24 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v48 = v22;
      (*(v36 + 32))(v22 + v24 + *(v36 + 72) * v9, v47, v40);
      v17 = 1 << *(v20 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      a3 = v20;
      v14 = v34;
      v25 = *(v34 + 8 * v18);
      if ((v25 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (v19 != *(a3 + 36))
      {
        goto LABEL_26;
      }

      v26 = v25 & (-2 << (v15 & 0x3F));
      if (v26)
      {
        v17 = __clz(__rbit64(v26)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v18 << 6;
        v28 = v18 + 1;
        v29 = (v32 + 8 * v18);
        while (v28 < (v17 + 63) >> 6)
        {
          v30 = *v29++;
          v9 = v30;
          v27 += 64;
          ++v28;
          if (v30)
          {
            sub_100004434(v15, v19, 0);
            v17 = __clz(__rbit64(v9)) + v27;
            goto LABEL_4;
          }
        }

        sub_100004434(v15, v19, 0);
      }

LABEL_4:
      v4 = v46;
      v16 = v45 + 1;
      v15 = v17;
      v13 = v44;
      if (v45 + 1 == v33)
      {
        return v48;
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
    (*v38)(v9, a3);

    __break(1u);
  }

  return result;
}

uint64_t sub_10000321C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v7 = 0u;
    v8 = 0u;
    return sub_1000041D4(&v7);
  }

  v2 = Strong;
  v3 = [Strong _remoteViewControllerProxy];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *v5 = 0u;
    v6 = 0u;
  }

  v7 = *v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    return sub_1000041D4(&v7);
  }

  sub_100003FFC(&qword_1000190F8, &qword_10000FC70);
  result = swift_dynamicCast();
  if (result)
  {
    [v5[0] cancelled];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100003324()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for XPCEntitlements();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCEntitlementChecker();
  swift_allocObject();
  XPCEntitlementChecker.init()();
  [v0 _hostAuditToken];
  XPCEntitlementChecker.entitlements(auditToken:)();
  v9 = XPCEntitlements.isTransactionPickerEnabled.getter();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
  }

  else
  {
    (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_logger, v1);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Not entitled to use Transaction Picker", v12, 2u);
    }

    (*(v2 + 8))(v4, v1);
  }

  return v9 & 1;
}

id sub_100003594(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  Logger.init(subsystem:category:)();
  *&v3[OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_hostingController] = 0;
  v7 = OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_analyticsSession;
  type metadata accessor for AnalyticsSession();
  swift_allocObject();
  *&v3[v7] = AnalyticsSession.init()();
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for TransactionPickerServiceViewController(0);
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_100003780(void *a1)
{
  Logger.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_hostingController] = 0;
  v3 = OBJC_IVAR____TtC16FinanceUIService38TransactionPickerServiceViewController_analyticsSession;
  type metadata accessor for AnalyticsSession();
  swift_allocObject();
  *&v1[v3] = AnalyticsSession.init()();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TransactionPickerServiceViewController(0);
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_100003914()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransactionPickerServiceViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TransactionPickerServiceViewController(uint64_t a1)
{
  result = qword_100019020;
  if (!qword_100019020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003A2C(uint64_t a1)
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

void type metadata accessor for PKAnalyticsSubject()
{
  if (!qword_100019090)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100019090);
    }
  }
}

uint64_t sub_100003B2C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003BA4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003C24@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003C68@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003CB0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003CDC(uint64_t a1)
{
  v2 = sub_100004168(&qword_1000190B0, type metadata accessor for PKAnalyticsSubject, &unk_10000FBC0);
  v3 = sub_100004168(&qword_1000190B8, type metadata accessor for PKAnalyticsSubject, &unk_10000FB68);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003E28()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100003E64(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003EB8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100003F2C(void *a1, uint64_t *a2)
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

uint64_t sub_100003FFC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004044()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000407C()
{
  result = qword_1000190E0;
  if (!qword_1000190E0)
  {
    sub_1000040E0(&qword_1000190C8, &qword_10000FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000190E0);
  }

  return result;
}

uint64_t sub_1000040E0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004128()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000041D4(uint64_t a1)
{
  v2 = sub_100003FFC(&qword_1000190F0, &unk_10000FC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10000423C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000425C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000425C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003FFC(&qword_100019100, &qword_10000FC78);
  v10 = *(type metadata accessor for Transaction() - 8);
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
  v15 = *(type metadata accessor for Transaction() - 8);
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

uint64_t sub_100004434(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_100004444()
{
  result = qword_100019120;
  if (!qword_100019120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019120);
  }

  return result;
}

__n128 sub_100004494(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000044A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000044E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100004554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  static Color.clear.getter();
  sub_100003FFC(&qword_100019128, &qword_10000FD38);
  State.projectedValue.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;

  View.installWalletAlert(isPresented:completion:)();

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  v10 = (a5 + *(sub_100003FFC(&qword_100019130, &unk_10000FD40) + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = sub_100004844;
  v10[3] = v9;
}

uint64_t sub_1000046E8(void (*a1)(uint64_t), uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_1000047D0(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return (*(v1 + 16))();
  }

  return result;
}

uint64_t sub_100004804()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100004858()
{
  result = qword_100019138;
  if (!qword_100019138)
  {
    sub_1000040E0(&qword_100019130, &unk_10000FD40);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019138);
  }

  return result;
}

void sub_100004918(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InstallWalletRemoteViewController(0);
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_hostingController];
  if (v3)
  {
    v4 = v3;
    if ([v1 isViewLoaded])
    {
      [v4 setModalPresentationStyle:5];
      [v1 presentViewController:v4 animated:0 completion:0];

      return;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100004CC4(int a1, id a2, void *a3)
{
  v4 = v3;
  [a2 setSwipeDismissalStyle:0];
  if (a3)
  {
    sub_100003FFC(&qword_100019190, &qword_10000FDB0);
    type metadata accessor for XPCEntitlementChecker();
    swift_allocObject();
    v7 = a3;
    XPCEntitlementChecker.init()();
    sub_100005904();
    FinanceXPCConnection.init(endpoint:entitlementChecker:)();
    FinanceXPCConnection.resume()();
    *(v4 + OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_daemonConnection) = v10;

    v8 = sub_100004E58(a2, v10);

    v9 = *(v4 + OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_hostingController);
    *(v4 + OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_hostingController) = v8;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id sub_100004E58(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v4;

  State.init(wrappedValue:)();
  v6 = objc_allocWithZone(sub_100003FFC(&qword_1000191A0, &qword_10000FDB8));
  *(v6 + *((swift_isaMask & *v6) + qword_100019C40 + 16)) = a1;

  swift_unknownObjectRetain();
  v7 = UIHostingController.init(rootView:)();
  result = [v7 view];
  if (result)
  {
    v9 = result;
    [result setBackgroundColor:0];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100005000(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v7[5] = sub_100006754;
  v7[6] = 0;

  sub_10000C2C8(0, 0, v5, &unk_10000FDD0, v7);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_hostingController);
    v10 = Strong;
    v11 = v9;

    if (v9)
    {
      [v11 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

uint64_t sub_1000052A4()
{
  v1 = OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_10000532C()
{
  if (*&v0[OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_daemonConnection])
  {
    v3 = *&v0[OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_daemonConnection];
    sub_100003FFC(&qword_100019190, &qword_10000FDB0);
    sub_100005904();
    FinanceXPCConnection.invalidate()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstallWalletRemoteViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InstallWalletRemoteViewController(uint64_t a1)
{
  result = qword_100019180;
  if (!qword_100019180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100005530(uint64_t a1, uint64_t a2, void *a3)
{
  Logger.init(subsystem:category:)();
  *&v3[OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_hostingController] = 0;
  *&v3[OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_daemonConnection] = 0;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for InstallWalletRemoteViewController(0);
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id sub_1000056F4(void *a1)
{
  Logger.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_hostingController] = 0;
  *&v1[OBJC_IVAR____TtC16FinanceUIService33InstallWalletRemoteViewController_daemonConnection] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InstallWalletRemoteViewController(0);
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_100005868(uint64_t a1)
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

unint64_t sub_100005904()
{
  result = qword_100019198;
  if (!qword_100019198)
  {
    sub_1000040E0(&qword_100019190, &qword_10000FDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019198);
  }

  return result;
}

uint64_t sub_100005968()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000059A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000059EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005CBC;

  return sub_10000C8B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100005AB4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100005AFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005BC4;

  return sub_10000C8B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100005BC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100005CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_100005D84, 0, 0);
}

uint64_t sub_100005D84()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  Logger.init(subsystem:category:)();
  v0[2] = v3;
  v4 = swift_allocObject();
  v0[9] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[10] = v5;
  v6 = sub_100003FFC(&qword_1000191B0, &qword_10000FE18);
  v7 = sub_100006C00();
  *v5 = v0;
  v5[1] = sub_100005EE0;

  return FinanceXPCConnection.execute<A>(_:)(v7, sub_100006BB0, v4, v6, &type metadata for () + 8, v7);
}

uint64_t sub_100005EE0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100006078;
  }

  else
  {

    v2 = sub_100005FFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100005FFC()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100006078()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "electAccountsUI XPC error: %@", v3, 0xCu);
    sub_100006C64(v4);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v6 = v0[1];

  return v6();
}

uint64_t ClientToServiceXPCConnection<>.updated(accountSelectionResult:)(uint64_t a1)
{
  v3 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for AccountSelectionResult();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  (*(v7 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;
  v12[5] = sub_1000064DC;
  v12[6] = v10;

  sub_10000C2C8(0, 0, v5, &unk_10000FE00, v12);
}

void sub_1000063F8(void *a1)
{
  v2 = AccountSelectionResult.xpcValue.getter();
  [a1 updated:v2];
}

uint64_t sub_100006454()
{
  v1 = type metadata accessor for AccountSelectionResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000064DC(void *a1)
{
  type metadata accessor for AccountSelectionResult();
  v2 = AccountSelectionResult.xpcValue.getter();
  [a1 updated:v2];
}

uint64_t sub_100006570(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005CBC;

  return sub_100005CC0(a1, v4, v5, v6, v7, v8);
}

uint64_t ClientToServiceXPCConnection<>.cancelled()()
{
  v1 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v5[5] = sub_100006754;
  v5[6] = 0;

  sub_10000C2C8(0, 0, v3, &unk_10000FE08, v5);
}

{
  return sub_10000C7A4(&unk_1000153A0, sub_100006754, &unk_10000FDD0);
}

uint64_t ClientToServiceXPCConnection<>.failed(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = v4;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = sub_100006A40;
  v13[6] = v11;
  swift_retain_n();
  v14 = a1;
  sub_100006B18(a2, a3);
  sub_10000C2C8(0, 0, v10, &unk_10000FE10, v13);
}

id sub_1000068D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [a1 failedWith:a2];
  if (a3)
  {

    v7 = ClientToServiceXPCConnection.connection.getter();
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v10[4] = sub_100006B60;
    v10[5] = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10000C5B8;
    v10[3] = &unk_100014E50;
    v9 = _Block_copy(v10);

    [v7 scheduleSendBarrierBlock:v9];
    _Block_release(v9);

    return sub_100006BA0(a3, a4);
  }

  return result;
}

uint64_t sub_1000069F0()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100006A50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005BC4;

  return sub_100005CC0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100006B18(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100006B28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006B88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BA0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100006BB0(void *a1)
{
  (*(v1 + 16))(*a1);
  sub_100003FFC(&qword_1000191C8, &qword_10000FE28);
  return CheckedContinuation.resume(returning:)();
}

unint64_t sub_100006C00()
{
  result = qword_1000191B8;
  if (!qword_1000191B8)
  {
    sub_1000040E0(&qword_1000191B0, &qword_10000FE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000191B8);
  }

  return result;
}

uint64_t sub_100006C64(uint64_t a1)
{
  v2 = sub_100003FFC(&qword_1000191C0, &qword_10000FE20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100006F98()
{
  v1 = v0;
  v2 = type metadata accessor for DeviceType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 isViewLoaded])
  {
    goto LABEL_9;
  }

  v6 = *&v1[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_controllerState];
  if (v6 == 1)
  {
    return;
  }

  if (!v6)
  {
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v7 = v6;
  static DeviceInfo.deviceType.getter();
  v8 = DeviceType.isiPad.getter();
  (*(v3 + 8))(v5, v2);
  if (v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [v7 setModalPresentationStyle:v9];
  [v1 presentViewController:v7 animated:1 completion:0];
  sub_100008CE0(v6);
}

void sub_100007184(uint64_t a1, void *a2, void *a3)
{
  v63 = a3;
  v5 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  __chkstk_darwin(v5 - 8);
  v56 = &v49 - v6;
  v55 = type metadata accessor for Logger();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v59 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for OrderImportPreview();
  v52 = *(v53 - 8);
  v8 = __chkstk_darwin(v53);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v51 = &v49 - v11;
  __chkstk_darwin(v10);
  v60 = &v49 - v12;
  v13 = type metadata accessor for SaveOrderUIInfoKeys();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v49 - v18;
  [a2 setSwipeDismissalStyle:0];
  v58 = a2;
  [a2 setLaunchingInterfaceOrientation:1];
  if (a1)
  {
    v20 = *(v14 + 104);
    v20(v19, enum case for SaveOrderUIInfoKeys.data(_:), v13);
    v21 = SaveOrderUIInfoKeys.rawValue.getter();
    v23 = v22;
    v24 = *(v14 + 8);
    v24(v19, v13);
    v64 = v21;
    v65 = v23;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v25 = sub_10000BB48(v66), (v26 & 1) != 0))
    {
      sub_100008D44(*(a1 + 56) + 32 * v25, v67);
      sub_100008CF0(v66);
      if (swift_dynamicCast())
      {
        v61 = v65;
        v62 = v64;
        v20(v17, enum case for SaveOrderUIInfoKeys.sourceApplication(_:), v13);
        v27 = SaveOrderUIInfoKeys.rawValue.getter();
        v29 = v28;
        v24(v17, v13);
        v67[0] = v27;
        v67[1] = v29;
        AnyHashable.init<A>(_:)();
        if (*(a1 + 16) && (v30 = sub_10000BB48(v66), (v31 & 1) != 0))
        {
          sub_100008D44(*(a1 + 56) + 32 * v30, v67);
          sub_100008CF0(v66);
          swift_dynamicCast();
        }

        else
        {
          sub_100008CF0(v66);
        }

        v32 = v57;
        v33 = v61;
        if (v63)
        {
          sub_100003FFC(&qword_100019190, &qword_10000FDB0);
          v34 = type metadata accessor for XPCEntitlementChecker();
          swift_allocObject();
          v35 = v63;
          v36 = XPCEntitlementChecker.init()();
          v66[3] = v34;
          v66[4] = &protocol witness table for XPCEntitlementChecker;
          v66[0] = v36;
          sub_100005904();
          FinanceXPCConnection.init(endpoint:entitlementChecker:)();
          v37 = v67[0];
          v66[0] = v67[0];
          FinanceXPCConnection.resume()();
          *(v32 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection) = v37;

          v38 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v39 = swift_allocObject();
          *(v39 + 16) = v38;
          *(v39 + 24) = v37;
          type metadata accessor for FinanceStore();

          sub_100008E20(v62, v33);

          static FinanceStore.shared.getter();
          v40 = v60;
          OrderImportPreview.init(orderData:sourceApplication:financeStore:completion:)();

          v41 = v52;
          v42 = *(v52 + 16);
          v43 = v51;
          v44 = v53;
          v42(v51, v40, v53);
          v45 = objc_allocWithZone(sub_100003FFC(qword_100019228, &qword_10000FEB0));
          *&v45[*((swift_isaMask & *v45) + qword_100019C40 + 16)] = v58;
          v63 = v35;
          v42(v50, v43, v44);
          swift_unknownObjectRetain();
          v46 = UIHostingController.init(rootView:)();
          sub_100008ED0(v62, v61);

          v47 = *(v41 + 8);
          v47(v43, v44);
          v47(v60, v44);
          v48 = *(v32 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_controllerState);
          *(v32 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_controllerState) = v46;
          sub_100008CE0(v48);
          return;
        }
      }
    }

    else
    {
      sub_100008CF0(v66);
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100007BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100007CB4(a1, a3);
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_controllerState);
    v9 = v7;
    sub_100008F24(v8);

    if (v8 >= 2)
    {
      [v8 dismissViewControllerAnimated:1 completion:0];
    }

    sub_100008CE0(v8);
  }
}

uint64_t sub_100007CB4(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v3 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  __chkstk_darwin(v3 - 8);
  v58 = &v55 - v4;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v55 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v55 - v14;
  __chkstk_darwin(v13);
  v17 = &v55 - v16;
  v18 = type metadata accessor for OrderImportPreview.ImportResult();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, a1, v18);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for OrderImportPreview.ImportResult.error(_:))
  {
    (*(v19 + 96))(v21, v18);
    (*(v6 + 16))(v12, v56 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_log, v5);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    v25 = v6;
    if (os_log_type_enabled(v23, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "ImportRemoteViewController - Error: %@", v26, 0xCu);
      sub_100006C64(v27);
    }

    (*(v25 + 8))(v12, v5);
    v29 = _convertErrorToNSError(_:)();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = 0;
    v31 = v57;
    v30[4] = 0;
    v30[5] = v31;
    v32 = type metadata accessor for TaskPriority();
    v33 = v58;
    (*(*(v32 - 8) + 56))(v58, 1, 1, v32);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v31;
    v34[5] = sub_100008F84;
    v34[6] = v30;
    swift_retain_n();

    sub_10000C2C8(0, 0, v33, &unk_10000FEC0, v34);
  }

  if (v22 == enum case for OrderImportPreview.ImportResult.cancelled(_:))
  {
    (*(v6 + 16))(v15, v56 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_log, v5);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "ImportRemoteViewController - User cancelled add", v38, 2u);
    }

    (*(v6 + 8))(v15, v5);
    v39 = type metadata accessor for TaskPriority();
    v40 = v58;
    (*(*(v39 - 8) + 56))(v58, 1, 1, v39);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v57;
    v41[5] = sub_100006754;
    v41[6] = 0;

    v42 = &unk_10000FEC8;
LABEL_13:
    sub_10000C2C8(0, 0, v40, v42, v41);
  }

  v43 = *(v6 + 16);
  v44 = v56 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_log;
  if (v22 == enum case for OrderImportPreview.ImportResult.orderAdded(_:))
  {
    v43(v17, v44, v5);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "ImportRemoteViewController - Successfully added order", v47, 2u);
    }

    (*(v6 + 8))(v17, v5);
    v48 = type metadata accessor for TaskPriority();
    v40 = v58;
    (*(*(v48 - 8) + 56))(v58, 1, 1, v48);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v57;
    v41[5] = sub_10000CD74;
    v41[6] = 0;

    v42 = &unk_10000FED0;
    goto LABEL_13;
  }

  v43(v9, v44, v5);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "ImportRemoteViewController - Unknown result type", v51, 2u);
  }

  (*(v6 + 8))(v9, v5);
  v52 = type metadata accessor for TaskPriority();
  v53 = v58;
  (*(*(v52 - 8) + 56))(v58, 1, 1, v52);
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = v57;
  v54[5] = sub_100006754;
  v54[6] = 0;

  sub_10000C2C8(0, 0, v53, &unk_10000FEB8, v54);

  return (*(v19 + 8))(v21, v18);
}

uint64_t sub_10000866C()
{
  v1 = OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100008CE0(*(v0 + OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_controllerState));
}

id sub_1000086F4()
{
  if (*&v0[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection])
  {
    v3 = *&v0[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection];
    sub_100003FFC(&qword_100019190, &qword_10000FDB0);
    sub_100005904();
    FinanceXPCConnection.invalidate()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportRemoteViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ImportRemoteViewController(uint64_t a1)
{
  result = qword_100019218;
  if (!qword_100019218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000088F8(uint64_t a1, uint64_t a2, void *a3)
{
  Logger.init(subsystem:category:)();
  *&v3[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_controllerState] = 0;
  *&v3[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection] = 0;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for ImportRemoteViewController(0);
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id sub_100008ABC(void *a1)
{
  Logger.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_controllerState] = 0;
  *&v1[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ImportRemoteViewController(0);
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_100008C30(uint64_t a1)
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

void sub_100008CE0(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_100008D44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100008DA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008DD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008E20(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100008E74()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008ED0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_100008F24(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_100008F34()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100008FF4(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100009418(a3);
}

id sub_1000090E4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for RemoteHostingController(0, *((swift_isaMask & *v4) + qword_100019C40), *((swift_isaMask & *v4) + qword_100019C40 + 8), a4);
  v8.receiver = v4;
  v8.super_class = v6;
  objc_msgSendSuper2(&v8, "viewDidDisappear:", a1 & 1);
  return [*(v4 + *((swift_isaMask & *v4) + qword_100019C40 + 16)) deactivate];
}

void sub_1000091C0(void *a1, uint64_t a2, char a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1;
  sub_1000090E4(a3, v7, v5, v6);
}

id sub_100009338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RemoteHostingController(0, *((swift_isaMask & *v4) + qword_100019C40), *((swift_isaMask & *v4) + qword_100019C40 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

Swift::Int AccountSelectionUIError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000095B0(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t sub_1000095F4()
{
  result = qword_1000192B0;
  if (!qword_1000192B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000192B0);
  }

  return result;
}

unint64_t sub_10000964C()
{
  result = qword_1000192B8;
  if (!qword_1000192B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000192B8);
  }

  return result;
}

uint64_t sub_1000096A0(uint64_t a1)
{
  v2 = sub_10000BEC8();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000096DC(uint64_t a1)
{
  v2 = sub_10000BEC8();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_100009724()
{
  result = qword_1000192C0;
  if (!qword_1000192C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000192C0);
  }

  return result;
}

uint64_t sub_1000097AC(unsigned int *a1, int a2)
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

_WORD *sub_100009800(_WORD *result, int a2, int a3)
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

void sub_10000988C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_subject];
  v6 = objc_opt_self();
  v7 = [v6 reporterForSubject:v5];
  if (v7)
  {

    static Logger.bankConnect.getter();
    v8 = v0;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = sub_10000B5A0(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Analytics session for %s has already been started", v11, 0xCu);
      sub_10000BE7C(v12);
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    [v6 beginSubjectReporting:v5];
    AnalyticsSession.refreshSessionID()();
  }
}

void sub_100009AA0(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SelectAccountsViewController(0);
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  sub_10000988C();
  if (![v1 isViewLoaded])
  {
    goto LABEL_6;
  }

  v3 = *&v1[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_controllerState];
  if (v3 == 1)
  {
    return;
  }

  if (!v3)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v4 = v3;
  [v4 setModalPresentationStyle:0];
  [v1 presentViewController:v4 animated:1 completion:0];
  sub_100008CE0(v3);
}

id sub_100009C08(char a1)
{
  v3 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for SelectAccountsViewController(0);
  v11.receiver = v1;
  v11.super_class = v6;
  objc_msgSendSuper2(&v11, "viewWillDisappear:", a1 & 1);
  result = [objc_opt_self() endSubjectReporting:*&v1[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_subject]];
  v8 = *&v1[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_daemonConnection];
  if (v8)
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = sub_100006754;
    v10[6] = 0;

    sub_10000C2C8(0, 0, v5, &unk_100010208, v10);
  }

  return result;
}

void sub_100009D9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

void sub_100009E7C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for SelectAccountsUIInfoKeys();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 setSwipeDismissalStyle:0];
  [a2 setStatusBarHidden:1 withDuration:0.3];
  [a2 setDismissalAnimationStyle:2];
  if (!a3 || !a1)
  {
    goto LABEL_14;
  }

  (*(v9 + 104))(v11, enum case for SelectAccountsUIInfoKeys.sourceApplication(_:), v8);
  v12 = a3;
  v13 = SelectAccountsUIInfoKeys.rawValue.getter();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  v30 = v13;
  v31 = v15;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v16 = sub_10000BB48(v32);
  if ((v17 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_100008D44(*(a1 + 56) + 32 * v16, v33);
  sub_100008CF0(v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    while (1)
    {
LABEL_10:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v19 = v30;
  v18 = v31;
  v20 = objc_allocWithZone(LSApplicationRecord);

  v21 = sub_10000B4C4(v19, v18, 0);
  sub_100003FFC(&qword_1000191B0, &qword_10000FE18);
  v22 = type metadata accessor for XPCEntitlementChecker();
  swift_allocObject();
  v23 = v12;
  v24 = v21;
  v25 = XPCEntitlementChecker.init()();
  v32[3] = v22;
  v32[4] = &protocol witness table for XPCEntitlementChecker;
  v32[0] = v25;
  sub_100006C00();
  FinanceXPCConnection.init(endpoint:entitlementChecker:)();
  v26 = v33[0];
  v32[0] = v33[0];
  FinanceXPCConnection.resume()();
  *(v4 + OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_daemonConnection) = v26;

  if (!v24)
  {
    __break(1u);
LABEL_9:
    sub_100008CF0(v32);
    goto LABEL_10;
  }

  v27 = sub_10000A324(v24, a2, v26);

  v28 = *(v4 + OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_controllerState);
  *(v4 + OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_controllerState) = v27;
  sub_100008CE0(v28);
}

uint64_t sub_10000A324(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SelectAccountsView();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v24 - v12;
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = v16;
  v18 = a1;

  SelectAccountsView.init(applicationRecord:completion:)();
  v19 = *(v7 + 16);
  v19(v13, v15, v6);
  v20 = objc_allocWithZone(sub_100003FFC(&qword_100019318, qword_1000101D0));
  *(v20 + *((swift_isaMask & *v20) + qword_100019C40 + 16)) = a2;
  v19(v10, v13, v6);
  swift_unknownObjectRetain();
  v21 = UIHostingController.init(rootView:)();
  v22 = *(v7 + 8);
  v22(v13, v6);
  v22(v15, v6);
  return v21;
}

void sub_10000A588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v41 = a2;
  v40 = type metadata accessor for AccountSelectionResult();
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v40);
  v7 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v42 = type metadata accessor for AccountSelectionValues();
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for SelectAccountsResult();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a1, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == enum case for SelectAccountsResult.updated(_:))
  {
    (*(v16 + 96))(v18, v15);
    v20 = v39;
    v21 = v18;
    v22 = v42;
    (*(v39 + 32))(v11, v21, v42);
    (*(v20 + 16))(v9, v11, v22);
    v23 = v40;
    (*(v4 + 104))(v9, enum case for AccountSelectionResult.values(_:), v40);
    (*(v4 + 16))(v7, v9, v23);
    v24 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v25 = swift_allocObject();
    (*(v4 + 32))(v25 + v24, v7, v23);
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v41;
    v27[5] = sub_10000BE0C;
    v27[6] = v25;

    sub_10000C2C8(0, 0, v14, &unk_1000101F0, v27);

    (*(v4 + 8))(v9, v23);
    (*(v20 + 8))(v11, v42);
  }

  else
  {
    v28 = v14;
    v29 = v41;
    if (v19 == enum case for SelectAccountsResult.cancelled(_:))
    {
      v30 = type metadata accessor for TaskPriority();
      (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v29;
      v31[5] = sub_100006754;
      v31[6] = 0;

      sub_10000C2C8(0, 0, v14, &unk_1000101F8, v31);
    }

    else
    {
      sub_100009724();
      swift_allocError();
      v32 = _convertErrorToNSError(_:)();
      v33 = swift_allocObject();
      v33[2] = v32;
      v33[3] = 0;
      v33[4] = 0;
      v33[5] = v29;
      v34 = type metadata accessor for TaskPriority();
      (*(*(v34 - 8) + 56))(v28, 1, 1, v34);
      v35 = swift_allocObject();
      v35[2] = 0;
      v35[3] = 0;
      v35[4] = v29;
      v35[5] = sub_100006A40;
      v35[6] = v33;
      swift_retain_n();
      sub_10000C2C8(0, 0, v28, &unk_10000FE00, v35);

      (*(v16 + 8))(v18, v15);
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = *(Strong + OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_controllerState);
    v38 = Strong;
    sub_100008F24(v37);

    if (v37 >= 2)
    {
      [v37 dismissViewControllerAnimated:1 completion:0];
    }

    sub_100008CE0(v37);
  }
}

void sub_10000AD44()
{
  v1 = OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100008CE0(*(v0 + OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_controllerState));

  v3 = *(v0 + OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_subject);
}

id sub_10000ADEC()
{
  if (*&v0[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_daemonConnection])
  {
    v3 = *&v0[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_daemonConnection];
    sub_100003FFC(&qword_1000191B0, &qword_10000FE18);
    sub_100006C00();
    FinanceXPCConnection.invalidate()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelectAccountsViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SelectAccountsViewController(uint64_t a1)
{
  result = qword_100019308;
  if (!qword_100019308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10000B010(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  Logger.init(subsystem:category:)();
  *&v3[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_controllerState] = 0;
  *&v3[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_daemonConnection] = 0;
  v7 = OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_session;
  type metadata accessor for AnalyticsSession();
  swift_allocObject();
  *&v3[v7] = AnalyticsSession.init()();
  v8 = OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_subject;
  *&v4[v8] = String._bridgeToObjectiveC()();
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = type metadata accessor for SelectAccountsViewController(0);
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_10000B238(void *a1)
{
  v2 = v1;
  Logger.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_controllerState] = 0;
  *&v1[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_daemonConnection] = 0;
  v4 = OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_session;
  type metadata accessor for AnalyticsSession();
  swift_allocObject();
  *&v1[v4] = AnalyticsSession.init()();
  v5 = OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_subject;
  *&v2[v5] = String._bridgeToObjectiveC()();
  v8.receiver = v2;
  v8.super_class = type metadata accessor for SelectAccountsViewController(0);
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_10000B408(uint64_t a1)
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

id sub_10000B4C4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

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

unint64_t sub_10000B5A0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000B66C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100008D44(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000BE7C(v11);
  return v7;
}

unint64_t sub_10000B66C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000B778(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000B778(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000B7C4(a1, a2);
  sub_10000B8F4(&off_100014B50);
  return v3;
}

char *sub_10000B7C4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000B9E0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000B9E0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000B8F4(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000BA54(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000B9E0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100003FFC(&qword_100019320, &qword_100010200);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000BA54(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003FFC(&qword_100019320, &qword_100010200);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_10000BB48(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000BB8C(a1, v4);
}

unint64_t sub_10000BB8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000BC54(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100008CF0(v8);
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

uint64_t sub_10000BCB0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BCE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BD30()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000BD84()
{
  v1 = type metadata accessor for AccountSelectionResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10000BE0C(void *a1)
{
  type metadata accessor for AccountSelectionResult();

  sub_1000063F8(a1);
}

uint64_t sub_10000BE7C(void *a1)
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

unint64_t sub_10000BEC8()
{
  result = qword_100019328;
  if (!qword_100019328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019328);
  }

  return result;
}

uint64_t sub_10000BF40(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_10000BFD0()
{
  v0 = sub_100003FFC(&qword_100019338, &qword_100010268);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  WindowGroup.init(id:title:lazyContent:)();
  sub_10000C22C();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10000C0FC()
{
  result = _set_user_dir_suffix();
  if (!result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000C1AC();
  static App.main()();
  return 0;
}

unint64_t sub_10000C1AC()
{
  result = qword_100019330;
  if (!qword_100019330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019330);
  }

  return result;
}

unint64_t sub_10000C22C()
{
  result = qword_100019340;
  if (!qword_100019340)
  {
    sub_1000040E0(&qword_100019338, &qword_100010268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019340);
  }

  return result;
}

uint64_t sub_10000C2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000D0E4(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D4B4(v11, &qword_1000191A8, &unk_10000FDC0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000D4B4(a3, &qword_1000191A8, &unk_10000FDC0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000D4B4(a3, &qword_1000191A8, &unk_10000FDC0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000C5B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t ClientToServiceXPCConnection<>.failed(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = v4;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = sub_100008EC0;
  v13[6] = v11;
  swift_retain_n();
  swift_errorRetain();
  sub_100006B18(a2, a3);
  sub_10000C2C8(0, 0, v10, &unk_100010278, v13);
}

uint64_t sub_10000C7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = a2;
  v10[6] = 0;

  sub_10000C2C8(0, 0, v8, a3, v10);
}

uint64_t sub_10000C8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10000C974, 0, 0);
}

uint64_t sub_10000C974()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  Logger.init(subsystem:category:)();
  v0[2] = v3;
  v4 = swift_allocObject();
  v0[9] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[10] = v5;
  v6 = sub_100003FFC(&qword_100019190, &qword_10000FDB0);
  v7 = sub_100005904();
  *v5 = v0;
  v5[1] = sub_10000CAD0;

  return FinanceXPCConnection.execute<A>(_:)(v7, sub_100006BB0, v4, v6, &type metadata for () + 8, v7);
}

uint64_t sub_10000CAD0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10000CBEC;
  }

  else
  {

    v2 = sub_100005FFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000CBEC()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "SaveOrderUI XPC error: %@", v3, 0xCu);
    sub_10000D4B4(v4, &qword_1000191C0, &qword_10000FE20);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v6 = v0[1];

  return v6();
}

void sub_10000CD84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FinanceError();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = a2;
  swift_errorRetain();
  sub_100003FFC(&qword_100019348, &qword_100010288);
  if (swift_dynamicCast())
  {
    (*(v9 + 8))(v11, v8);
    v12 = _convertErrorToNSError(_:)();
  }

  else
  {
    sub_10000D03C();
    swift_allocError();
    (*(v9 + 104))(v13, enum case for FinanceError.unknown(_:), v8);
    v12 = _convertErrorToNSError(_:)();
  }

  [a1 failedWith:v12];

  if (a3)
  {

    v14 = ClientToServiceXPCConnection.connection.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    aBlock[4] = sub_100006B60;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C5B8;
    aBlock[3] = &unk_100015458;
    v16 = _Block_copy(aBlock);

    [v14 scheduleSendBarrierBlock:v16];
    _Block_release(v16);

    sub_100006BA0(a3, a4);
  }
}

uint64_t sub_10000CFEC()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10000D03C()
{
  result = qword_100019350;
  if (!qword_100019350)
  {
    type metadata accessor for FinanceError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019350);
  }

  return result;
}

uint64_t sub_10000D094()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D0CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000D0E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D154(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000D24C;

  return v6(a1);
}

uint64_t sub_10000D24C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000D344(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005CBC;

  return sub_10000D154(a1, v4);
}

uint64_t sub_10000D3FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005BC4;

  return sub_10000D154(a1, v4);
}

uint64_t sub_10000D4B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003FFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D528(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000D54C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D5A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10000D5FC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_10000D62C(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v39 = a3;
  v40 = a2;
  v41 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v11 = OBJC_IVAR____TtC16FinanceUIService27FinanceRemoteViewController_log;
  v12 = *(v6 + 16);
  v12(&v38 - v9, &v4[OBJC_IVAR____TtC16FinanceUIService27FinanceRemoteViewController_log], v5);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Configuring view in FinanceUIService", v15, 2u);
  }

  v16 = *(v6 + 8);
  v16(v10, v5);
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  v48 = sub_10000EA00;
  v49 = v17;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v47 = sub_10000DB28;
  *(&v47 + 1) = &unk_100015650;
  v18 = _Block_copy(&aBlock);
  v19 = v4;

  v20 = [v19 _remoteViewControllerProxyWithErrorHandler:v18];
  _Block_release(v18);
  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  aBlock = v44;
  v47 = v45;
  sub_10000E958(&aBlock, &v44);
  if (!*(&v45 + 1))
  {
    sub_10000D4B4(&v44, &qword_1000190F0, &unk_10000FC60);
    goto LABEL_14;
  }

  sub_100003FFC(&qword_100019398, &unk_100010350);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v28 = &v4[v11];
    v29 = v42;
    v12(v42, v28, v5);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Could not create remote ViewController configuration proxy", v32, 2u);
    }

    v16(v29, v5);
    goto LABEL_23;
  }

  v21 = v41;
  if (!v41)
  {
    __break(1u);
    return;
  }

  v22 = v43;
  v23 = [v41 xpcEndpoint];
  v24 = v40;
  if (v23)
  {
    v25 = v23;
    v26 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
    v27 = v26;
    if (v26)
    {
      [v26 _setEndpoint:v25];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0;
  }

  v33 = [v21 userInfo];
  if (v33)
  {
    v34 = v33;
    v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v35 = 0;
  }

  (*((swift_isaMask & *v19) + 0x70))(v35, v22, v27);

  if (!v24)
  {
    sub_10000D4B4(&aBlock, &qword_1000190F0, &unk_10000FC60);
    swift_unknownObjectRelease();

    return;
  }

  v36 = v39;

  v24(v37);
  swift_unknownObjectRelease();

  sub_100006BA0(v24, v36);
LABEL_23:
  sub_10000D4B4(&aBlock, &qword_1000190F0, &unk_10000FC60);
}

void sub_10000DB28(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_10000DCD8(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = OBJC_IVAR____TtC16FinanceUIService27FinanceRemoteViewController_log;
  v12 = *(v6 + 16);
  v12(&v30 - v9, &v4[OBJC_IVAR____TtC16FinanceUIService27FinanceRemoteViewController_log], v5);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Activating view in FinanceUIService", v15, 2u);
  }

  v16 = *(v6 + 8);
  v16(v10, v5);
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  v39 = sub_10000E918;
  v40 = v17;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v38 = sub_10000DB28;
  *(&v38 + 1) = &unk_1000155D8;
  v18 = _Block_copy(&aBlock);
  v19 = v4;

  v20 = [v19 _remoteViewControllerProxyWithErrorHandler:v18];
  _Block_release(v18);
  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  aBlock = v35;
  v38 = v36;
  sub_10000E958(&aBlock, &v35);
  if (!*(&v36 + 1))
  {
    sub_10000D4B4(&v35, &qword_1000190F0, &unk_10000FC60);
    goto LABEL_12;
  }

  sub_100003FFC(&qword_100019398, &unk_100010350);
  if (!swift_dynamicCast())
  {
LABEL_12:
    v25 = &v4[v11];
    v26 = v34;
    v12(v34, v25, v5);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Could not create remote ViewController activation proxy", v29, 2u);
    }

    v16(v26, v5);
    return sub_10000D4B4(&aBlock, &qword_1000190F0, &unk_10000FC60);
  }

  result = v33;
  if (!v33)
  {
    __break(1u);
    return result;
  }

  v22 = v32;
  if (!v32)
  {
    sub_10000D4B4(&aBlock, &qword_1000190F0, &unk_10000FC60);
    return swift_unknownObjectRelease();
  }

  v23 = v31;

  v22(v24);
  swift_unknownObjectRelease();
  sub_100006BA0(v22, v23);
  return sub_10000D4B4(&aBlock, &qword_1000190F0, &unk_10000FC60);
}

uint64_t sub_10000E0F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    (*(v8 + 16))(v10, a2 + OBJC_IVAR____TtC16FinanceUIService27FinanceRemoteViewController_log, v7);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, a4, v13, 0xCu);
      sub_10000D4B4(v14, &qword_1000191C0, &qword_10000FE20);
    }

    else
    {
    }

    (*(v8 + 8))(v10, v7);
  }

  else
  {
  }
}

id sub_10000E748()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanceRemoteViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FinanceRemoteViewController(uint64_t a1)
{
  result = qword_100019388;
  if (!qword_100019388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E840(uint64_t a1)
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

uint64_t sub_10000E8D0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E940(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E958(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003FFC(&qword_1000190F0, &unk_10000FC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E9C8()
{

  return _swift_deallocObject(v0, 24, 7);
}