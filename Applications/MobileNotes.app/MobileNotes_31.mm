uint64_t (*sub_1004166A8(uint64_t *a1))()
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
  return sub_10017D9DC;
}

uint64_t sub_100416724(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  v5 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v5;
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = sub_10027F214;

  return CreateTableIntent.perform()(a1);
}

unint64_t sub_1004167D0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1002E001C(a1, a2, v4);
}

uint64_t sub_100416848@<X0>(uint64_t *a1@<X8>)
{
  v56 = a1;
  v1 = sub_10015DA04(&unk_1006BCAC0, &unk_1005395D0);
  __chkstk_darwin(v1 - 8);
  v55 = &v48[-v2];
  v72 = type metadata accessor for InputConnectionBehavior();
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v73 = &v48[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10015DA04(&unk_1006BE0D0, &unk_100531E40);
  v5 = __chkstk_darwin(v4 - 8);
  v54 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v69 = &v48[-v7];
  v8 = sub_10015DA04(&qword_1006BCB40, &unk_100539240);
  __chkstk_darwin(v8 - 8);
  v61 = &v48[-v9];
  v10 = sub_10015DA04(&qword_1006BE030, &qword_100531E50);
  __chkstk_darwin(v10 - 8);
  v60 = &v48[-v11];
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for LocalizedStringResource();
  v67 = v18;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v59 = &v48[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = sub_10015DA04(&qword_1006BCB48, &unk_100531ED0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v13 + 104);
  v49 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v57 = v12;
  v22(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  v50 = v22;
  v58 = v13 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22(v15, v21, v12);
  v23 = v60;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = *(v19 + 56);
  v66 = v19 + 56;
  v68 = v24;
  v24(v23, 0, 1, v18);
  v25 = type metadata accessor for String.IntentInputOptions();
  v77 = 0;
  v78 = 0;
  v26 = *(v25 - 8);
  v51 = *(v26 + 56);
  v52 = v26 + 56;
  v51(v61, 1, 1, v25);
  v62 = type metadata accessor for IntentDialog();
  v27 = *(v62 - 8);
  v63 = *(v27 + 56);
  v64 = v27 + 56;
  v63(v69, 1, 1, v62);
  v71 = enum case for InputConnectionBehavior.default(_:);
  v65 = *(v74 + 104);
  v74 += 104;
  v28 = v72;
  v65(v73);
  v53 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = v49;
  v30 = v57;
  v31 = v50;
  v50(v15, v49, v57);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31(v15, v29, v30);
  v32 = v60;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v68(v32, 0, 1, v67);
  v77 = 0;
  v78 = 0;
  v51(v61, 1, 1, v25);
  v33 = v69;
  v63(v69, 1, 1, v62);
  (v65)(v73, v71, v28);
  v70 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v61 = sub_10015DA04(&unk_1006BE580, &unk_100531E80);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34 = v57;
  v31(v15, v29, v57);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31(v15, v29, v34);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v68(v32, 0, 1, v67);
  v35 = type metadata accessor for NoteEntity(0);
  (*(*(v35 - 8) + 56))(v55, 1, 1, v35);
  v36 = v62;
  v37 = v63;
  v63(v33, 1, 1, v62);
  v37(v54, 1, 1, v36);
  v77 = sub_10026EE08();
  v78 = v38;
  v79 = v39;
  v80 = v40;
  v81 = v41;
  (v65)(v73, v71, v72);
  sub_1001797CC();
  v42 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  v82 = 1;
  sub_10015DA04(&qword_1006C34B0, &unk_1005348C0);
  v75 = 0xD000000000000021;
  v76 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v43 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40, &unk_100531E60);
  v75 = 0xD000000000000024;
  v76 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v45 = v82;
  v46 = v56;
  v47 = v70;
  *v56 = v53;
  v46[1] = v47;
  v46[3] = 0;
  v46[4] = 0;
  v46[2] = v42;
  *(v46 + 40) = v45;
  v46[6] = v43;
  v46[7] = result;
  return result;
}

uint64_t sub_1004173D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100417438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10041749C()
{
  result = qword_1006C7F90;
  if (!qword_1006C7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7F90);
  }

  return result;
}

uint64_t sub_100417538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100417588()
{
  result = qword_1006C7F98;
  if (!qword_1006C7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7F98);
  }

  return result;
}

unint64_t sub_1004175E0()
{
  result = qword_1006C7FA0;
  if (!qword_1006C7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7FA0);
  }

  return result;
}

Swift::Int sub_100417694(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10015DA04(&unk_1006C16F0, &qword_10053D0D0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        v16 = ~v11;
        while (1)
        {
          v17 = (*(v3 + 48) + 16 * v12);
          if (*v17 == v9 && v17[1] == v8)
          {
            break;
          }

          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (result)
          {
            break;
          }

          v12 = (v12 + 1) & v16;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        *(v5 + 8 * v13) = v15 | v14;
        v19 = (*(v3 + 48) + 16 * v12);
        *v19 = v9;
        v19[1] = v8;
        v20 = *(v3 + 16);
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v22;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10041780C(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006BDCE0, &qword_100534C88);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10015DA04(&qword_1006BDCE8, &qword_100534C90);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100006038(v9, v5, &qword_1006BDCE0, &qword_100534C88);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1004167D0(*v5, v12);
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
      v18 = type metadata accessor for CSVType();
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

uint64_t sub_1004179F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006C7FD0, &qword_10054A418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100417A68(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_100417AE8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

double sub_100417B5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_100417CC8(void *a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamNavigationController_sheetController) = 0;
  if (_UISolariumEnabled())
  {
    v2 = [objc_opt_self() ic_isVision];
  }

  else
  {
    v2 = 1;
  }

  *(v1 + OBJC_IVAR___ICActivityStreamNavigationController_isNonSolarium) = v2;
  *(v1 + OBJC_IVAR___ICActivityStreamNavigationController_preferredCompactContentWidth) = 0x4081C00000000000;
  *(v1 + OBJC_IVAR___ICActivityStreamNavigationController_additionalSafeAreaTopInset) = 0x4038000000000000;
  *(v1 + OBJC_IVAR___ICActivityStreamNavigationController_isCapturingActivityStreamSummaryEvent) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamNavigationController_object) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamNavigationController_selection) = 0;
  v3 = OBJC_IVAR___ICActivityStreamNavigationController_viewModeDurations;
  *(v1 + v3) = sub_10001ED40(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR___ICActivityStreamNavigationController_timeOfLastViewModeChange;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___unfilteredHeaderView) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___filteredHeaderView) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___dockedDetent) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamNavigationController_halfHeightRatio) = 0x400599999999999ALL;
  *(v1 + OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___halfHeightDetent) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100417E98()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105.receiver = v0;
  v105.super_class = ObjectType;
  objc_msgSendSuper2(&v105, "viewDidLoad");
  if ([objc_opt_self() ic_isVision])
  {
    [v0 setAdditionalSafeAreaInsets:{24.0, 0.0, 0.0, 0.0}];
  }

  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = v6;
  v8 = v0[OBJC_IVAR___ICActivityStreamNavigationController_isNonSolarium];
  v9 = objc_opt_self();
  v10 = &selRef_ICBackgroundColor;
  if (!v8)
  {
    v10 = &selRef_clearColor;
  }

  v11 = [v9 *v10];
  [v7 setBackgroundColor:v11];

  v12 = [v0 view];
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = v12;
  v102 = v5;
  v14 = sub_100418AFC();
  v15 = [v0 view];
  if (!v15)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v16 = v15;
  v17 = [v15 subviews];

  v103 = sub_1000054A4(0, &qword_1006C95E0, UIView_ptr);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v101 = v2;
  if (v18 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v100 = v3;

  [v13 insertSubview:v14 atIndex:v19 > 1];

  v104 = sub_10015DA04(&unk_1006BD390, &unk_100532CB0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100531E10;
  v21 = OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___unfilteredHeaderView;
  v22 = [*&v0[OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___unfilteredHeaderView] topAnchor];
  v23 = [v0 view];
  if (!v23)
  {
    goto LABEL_31;
  }

  v24 = v23;
  v25 = [v23 safeAreaLayoutGuide];

  v26 = [v25 topAnchor];
  v27 = [v22 constraintEqualToAnchor:v26];

  *(v20 + 32) = v27;
  v28 = [*&v0[v21] leadingAnchor];
  v29 = [v0 view];
  if (!v29)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v30 = v29;
  v31 = [v29 safeAreaLayoutGuide];

  v32 = [v31 leadingAnchor];
  v33 = [v28 constraintEqualToAnchor:v32];

  *(v20 + 40) = v33;
  v34 = [*&v0[v21] trailingAnchor];
  v35 = [v0 view];
  if (!v35)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v36 = v35;
  v37 = objc_opt_self();
  v38 = [v36 safeAreaLayoutGuide];

  v39 = [v38 trailingAnchor];
  v40 = [v34 constraintEqualToAnchor:v39];

  *(v20 + 48) = v40;
  v41 = [*&v0[v21] heightAnchor];
  v42 = [v41 constraintGreaterThanOrEqualToConstant:56.0];

  *(v20 + 56) = v42;
  v43 = sub_1000054A4(0, &qword_1006C5D90, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v37 activateConstraints:isa];

  v45 = &OBJC_IVAR___ICActivityStreamNavigationController_isNonSolarium;
  if (v0[OBJC_IVAR___ICActivityStreamNavigationController_hasInteractiveSizing] != 1)
  {
    goto LABEL_22;
  }

  v46 = [v0 view];
  if (!v46)
  {
    goto LABEL_34;
  }

  v47 = v46;
  v48 = sub_10001F27C();
  v49 = [v0 view];
  if (!v49)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v50 = v49;
  v51 = [v49 subviews];

  v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = v37;
  if (v52 >> 62)
  {
    v53 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v47 insertSubview:v48 atIndex:v53 > 1];

  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_10054A160;
  v55 = OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___filteredHeaderView;
  v56 = [*&v0[OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___filteredHeaderView] topAnchor];
  v57 = [v0 view];
  if (!v57)
  {
    goto LABEL_36;
  }

  v58 = v57;
  v59 = [v57 safeAreaLayoutGuide];

  v60 = [v59 topAnchor];
  v61 = [v56 constraintEqualToAnchor:v60];

  *(v54 + 32) = v61;
  v62 = [*&v0[v55] leadingAnchor];
  v63 = [v0 view];
  if (!v63)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v64 = v63;
  v65 = [v63 safeAreaLayoutGuide];

  v66 = [v65 leadingAnchor];
  v67 = [v62 constraintEqualToAnchor:v66];

  *(v54 + 40) = v67;
  v68 = [*&v0[v55] trailingAnchor];
  v69 = [v0 view];
  if (!v69)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v70 = v69;
  v71 = [v69 safeAreaLayoutGuide];

  v72 = [v71 trailingAnchor];
  v73 = [v68 constraintEqualToAnchor:v72];

  *(v54 + 48) = v73;
  v74 = [*&v0[v55] heightAnchor];
  v75 = [v74 constraintGreaterThanOrEqualToConstant:64.0];

  *(v54 + 56) = v75;
  v76 = [*&v0[v21] heightAnchor];
  v77 = [v76 constraintGreaterThanOrEqualToConstant:56.0];

  *(v54 + 64) = v77;
  v78 = Array._bridgeToObjectiveC()().super.isa;

  [v99 activateConstraints:v78];

  v45 = &OBJC_IVAR___ICActivityStreamNavigationController_isNonSolarium;
LABEL_22:
  v79 = sub_10001F27C();
  v80 = objc_allocWithZone(UITapGestureRecognizer);
  v81 = v0;
  v82 = [v80 initWithTarget:v81 action:"handleTap:"];
  [v79 addGestureRecognizer:v82];

  v83 = *&v0[v21];
  v84 = objc_allocWithZone(UITapGestureRecognizer);
  v85 = v83;
  v86 = [v84 initWithTarget:v81 action:"handleTap:"];

  [v85 addGestureRecognizer:v86];
  v87 = objc_opt_self();
  v88 = [v87 defaultCenter];
  [v88 addObserver:v81 selector:"willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

  v89 = [v87 defaultCenter];
  [v89 addObserver:v81 selector:"analyticsSessionWillEnd" name:ICNASessionWillEndNotification object:0];

  [*&v81[v45[10]] layoutIfNeeded];
  [*&v0[v21] layoutIfNeeded];
  v90 = OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController;
  if (!*&v81[OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController])
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v91 = objc_allocWithZone(type metadata accessor for ActivityStreamViewController(0));
      v92 = swift_unknownObjectRetain();
      v93 = sub_1001927FC(v92);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_100534670;
      *(v94 + 32) = v93;
      sub_1000054A4(0, &unk_1006C8180, UIViewController_ptr);
      v95 = v93;
      v96 = Array._bridgeToObjectiveC()().super.isa;

      [v81 setViewControllers:v96];

      swift_unknownObjectRelease();
      v97 = *&v81[v90];
      *&v81[v90] = v95;
    }
  }
}

char *sub_100418AFC()
{
  v1 = OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___unfilteredHeaderView;
  v2 = *(v0 + OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___unfilteredHeaderView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___unfilteredHeaderView);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = *(v0 + OBJC_IVAR___ICActivityStreamNavigationController_hasInteractiveSizing);
    v6 = objc_allocWithZone(type metadata accessor for ActivityStreamHeaderView());
    v7 = v5;
    v8 = v0;
    v9 = sub_100181070(Strong, v7);
    swift_unknownObjectRelease();
    v10 = v9;
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v9) = *(v8 + OBJC_IVAR___ICActivityStreamNavigationController_isNonSolarium);
    v11 = objc_opt_self();
    v12 = &selRef_ICBackgroundColor;
    if (!v9)
    {
      v12 = &selRef_clearColor;
    }

    v13 = [v11 *v12];
    [v10 setBackgroundColor:v13];

    v14 = *(v8 + v1);
    *(v8 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

void sub_100418C68(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10015DA04(&unk_1006C1710, &qword_10053BA80);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewWillAppear:", a1 & 1);
  Date.init()();
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR___ICActivityStreamNavigationController_timeOfLastViewModeChange;
  swift_beginAccess();
  sub_10023A078(v6, &v1[v8]);
  swift_endAccess();
  v9 = OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController;
  v10 = *&v1[OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController];
  if (v10)
  {
    v11 = *&v1[OBJC_IVAR___ICActivityStreamNavigationController_object];
    v12 = v11;
    v13 = v10;
    sub_100193AF0(v11);

    v14 = *&v1[v9];
    if (v14)
    {
      v15 = *&v1[OBJC_IVAR___ICActivityStreamNavigationController_selection];
      swift_getKeyPath();
      swift_getKeyPath();
      v18[1] = v15;
      v16 = v15;
      v17 = v14;
      static Published.subscript.setter();
    }
  }

  sub_100418E28();
}

void sub_100418E28()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([objc_opt_self() ic_isVision] & 1) != 0 || _UISolariumEnabled())
  {
    v10 = *&v0[OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController];
    if (!v10)
    {
      goto LABEL_9;
    }

    v11 = v10;
    v12 = [v0 navigationBar];
    [v12 bounds];
    v14 = v13;
  }

  else
  {
    v15 = *&v0[OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController];
    if (!v15)
    {
      goto LABEL_9;
    }

    v11 = v15;
    v16 = [v0 view];
    if (!v16)
    {
      goto LABEL_31;
    }

    v17 = v16;
    [v16 safeAreaInsets];
    v19 = v18;

    v20 = sub_100418AFC();
    [v20 frame];
    v22 = v21;

    v14 = v19 + v22;
  }

  *&v11[OBJC_IVAR___ICActivityStreamViewController_topInset] = v14;
  sub_100193390();

LABEL_9:
  v64 = v3;
  v23 = [v1 splitViewController];
  if (v23)
  {
    v24 = v23;
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      v27 = sub_100418AFC();
      v28 = [v26 shouldRenderAsOverlay];
      v29 = OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView_isCloseButtonHidden;
      v27[OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView_isCloseButtonHidden] = v28;
      v30 = sub_1001803AC();
      [v30 setHidden:v27[v29]];

      v24 = v30;
    }
  }

  v31 = *&v1[OBJC_IVAR___ICActivityStreamNavigationController_sheetController];
  if (v31)
  {
    v65 = v31;
    v32 = sub_100418AFC();
    v33 = OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView_isCloseButtonHidden;
    v32[OBJC_IVAR____TtC11MobileNotes24ActivityStreamHeaderView_isCloseButtonHidden] = 0;
    v34 = sub_1001803AC();
    [v34 setHidden:v32[v33]];

    v35 = OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController;
    v36 = *&v1[OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController];
    if (v36)
    {
      v37 = [v36 view];
      if (v37)
      {
        v38 = v37;
        [v65 _currentPresentedViewFrame];
        v40 = v39;
        v41 = [v1 view];
        if (v41)
        {
          v42 = v41;
          [v41 safeAreaInsets];
          v44 = v43;

          v45 = v40 - v44;
          v46 = sub_10001F27C();
          [v46 frame];
          v48 = v47;

          v49 = v45 - v48;
          if (v49 > 20.0)
          {
            v50 = *&v1[v35];
            if (v50)
            {
              v51 = v50;
              sub_1001935A8();
            }

            [*&v1[OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___filteredHeaderView] setAlpha:0.0];
          }

          [v38 alpha];
          if (v49 <= 20.0 == (v52 != 0.0))
          {
            v53 = objc_opt_self();
            v54 = swift_allocObject();
            *(v54 + 16) = v1;
            *(v54 + 24) = v49 <= 20.0;
            v70 = sub_10041BE74;
            v71 = v54;
            aBlock = _NSConcreteStackBlock;
            v67 = 1107296256;
            v68 = sub_10028DCE8;
            v69 = &unk_10065DC58;
            v55 = _Block_copy(&aBlock);
            v56 = v1;

            [v53 animateWithDuration:v55 animations:0.25];
            _Block_release(v55);
          }

          sub_1000054A4(0, &qword_1006BE9E0, OS_dispatch_queue_ptr);
          v57 = static OS_dispatch_queue.main.getter();
          v58 = swift_allocObject();
          *(v58 + 16) = v1;
          v70 = sub_10041BE80;
          v71 = v58;
          aBlock = _NSConcreteStackBlock;
          v67 = 1107296256;
          v68 = sub_10028DCE8;
          v69 = &unk_10065DCA8;
          v59 = _Block_copy(&aBlock);
          v60 = v1;

          static DispatchQoS.unspecified.getter();
          aBlock = _swiftEmptyArrayStorage;
          sub_10041BE90(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10015DA04(&unk_1006C3F20, &unk_10053C1D0);
          sub_100243E84();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v59);
          (*(v64 + 8))(v5, v2);
          (*(v63[0] + 8))(v9, v63[1]);
          return;
        }

        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }
    }
  }

  else
  {
    v61 = *&v1[OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController];
    if (!v61)
    {
      return;
    }

    v65 = v61;
    sub_1001935A8();
  }

  v62 = v65;
}

void sub_100419564()
{
  v1 = *&v0[OBJC_IVAR___ICActivityStreamNavigationController_object];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController];
    if (v2)
    {
      v10 = v2;
      v3 = v1;
      v4 = [v0 view];
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = v4;
      v11 = [v4 ic_viewControllerManager];

      if (v11)
      {
        if (([v11 isSplitViewExpandingOrCollapsing] & 1) == 0)
        {
          v7 = [v10 eventReporter];
          [v7 startActivityStreamSummaryEventForObject:v3];

          v8 = sub_10001ED40(_swiftEmptyArrayStorage);
          v9 = OBJC_IVAR___ICActivityStreamNavigationController_viewModeDurations;
          swift_beginAccess();
          *&v0[v9] = v8;

          v0[OBJC_IVAR___ICActivityStreamNavigationController_isCapturingActivityStreamSummaryEvent] = 1;
          return;
        }

        v6 = v11;
      }

      else
      {

        v6 = v10;
      }
    }
  }
}

void sub_1004198B4(void *a1, double a2, double a3)
{
  v4 = v3;
  v20.receiver = v3;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v18 = sub_10041BF10;
  v19 = v8;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1001B8B10;
  v17 = &unk_10065DBB8;
  v9 = _Block_copy(&v14);
  v10 = v4;

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v18 = sub_10041BE58;
  v19 = v11;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1001B8B10;
  v17 = &unk_10065DC08;
  v12 = _Block_copy(&v14);
  v13 = v10;

  [a1 animateAlongsideTransition:v9 completion:v12];
  _Block_release(v12);
  _Block_release(v9);
}

id sub_100419A5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController);
  if (v3)
  {
    v4 = v3;
    sub_100193390();
  }

  result = *(a2 + OBJC_IVAR___ICActivityStreamNavigationController_sheetController);
  if (result)
  {

    return [result invalidateDetents];
  }

  return result;
}

void sub_100419B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_10001F27C();
    ActivityStreamDockView.update()();

    [*&v4[OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___filteredHeaderView] layoutIfNeeded];
    v6 = *&v4[OBJC_IVAR___ICActivityStreamNavigationController_sheetController];
    if (v6)
    {
      [v6 invalidateDetents];
    }

    sub_100419BF0();
  }
}

void sub_100419BF0()
{
  v1 = *&v0[OBJC_IVAR___ICActivityStreamNavigationController_sheetController];
  if (!v1)
  {
    return;
  }

  v2 = v0;
  sub_10015DA04(&unk_1006BD390, &unk_100532CB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100534670;
  v4 = objc_opt_self();
  v5 = v1;
  *(v3 + 32) = [v4 largeDetent];
  v29 = v3;
  if (v2[OBJC_IVAR___ICActivityStreamNavigationController_hasInteractiveSizing] != 1)
  {
    v11 = 0;
    i = -1;
    goto LABEL_11;
  }

  v6 = sub_10041A47C(&OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___dockedDetent, &unk_10065DAB0, sub_10041BA54, &unk_10065DAC8);
  sub_10030F82C(0, 0, v6);

  v7 = [v2 view];
  if (!v7)
  {
    goto LABEL_30;
  }

  v8 = v7;
  v9 = [v7 ic_hasCompactHeight];

  if ((v9 & 1) == 0)
  {
    v3 = sub_10041A47C(&OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___halfHeightDetent, &unk_10065DA60, sub_10041BA24, &unk_10065DA78);
    if (v29 >> 62)
    {
      goto LABEL_27;
    }

    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_9;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  for (i = 0; ; i = 1)
  {
    v3 = v29;
    v11 = 1;
LABEL_11:
    sub_1000054A4(0, &qword_1006C3FF0, UISheetPresentationControllerDetent_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v5 setDetents:isa];

    v13 = OBJC_IVAR___ICActivityStreamNavigationController_indexOfCurrentDetent;
    v14 = *&v2[OBJC_IVAR___ICActivityStreamNavigationController_indexOfCurrentDetent];
    if (v14 < 0)
    {
      goto LABEL_16;
    }

    if (v3 >> 62)
    {
      break;
    }

    v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 - 1;
    if (!__OFSUB__(v15, 1))
    {
      goto LABEL_14;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_28;
    }

LABEL_9:
    sub_10030F82C(1, 1, v3);
  }

  v28 = _CocoaArrayWrapper.endIndex.getter();
  v16 = v28 - 1;
  if (__OFSUB__(v28, 1))
  {
    goto LABEL_26;
  }

LABEL_14:
  if (v16 < v14 || [v5 _indexOfCurrentDetent] != *&v2[v13])
  {
LABEL_16:
    [v5 _setIndexOfCurrentDetent:v11];
    sub_10041ABC8();
    *&v2[v13] = v11;
  }

  [v5 _setIndexOfLastUndimmedDetent:i];
  v17 = [v2 view];
  if (!v17)
  {
    goto LABEL_29;
  }

  v18 = v17;
  v19 = [v17 ic_hasCompactHeight];

  if (v19)
  {
    v20 = 0.0;
    v21 = 568.0;
    goto LABEL_22;
  }

  v22 = [v2 view];
  if (!v22)
  {
    goto LABEL_31;
  }

  v23 = v22;
  [v22 intrinsicContentSize];
  v25 = v24;
  v27 = v26;

  v21 = v25;
  v20 = v27;
LABEL_22:
  [v2 setPreferredContentSize:{v21, v20}];
}

double sub_10041A0C8(uint64_t a1)
{
  sub_10041ABC8();
  v2 = OBJC_IVAR___ICActivityStreamNavigationController_viewModeDurations;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 0.0;
  if (*(v3 + 16))
  {
    v5 = sub_1002ED08C();
    if (v6)
    {
      v4 = *(*(v3 + 56) + 8 * v5);
    }
  }

  swift_endAccess();
  return v4;
}

void sub_10041A150(void *a1)
{
  v2 = v1;
  if ([a1 state] != 3)
  {
    return;
  }

  v14 = sub_10041A394();
  if (!v14)
  {
    return;
  }

  v3 = sub_10041A394();
  v4 = sub_10041A47C(&OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___dockedDetent, &unk_10065DAB0, sub_10041BA54, &unk_10065DAC8);
  v5 = v4;
  if (v3)
  {
    sub_1000054A4(0, &qword_1006C3FF0, UISheetPresentationControllerDetent_ptr);
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      v7 = [v2 view];
      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = v7;
      v9 = [v7 ic_hasCompactHeight];

      if (!v9)
      {
        v13 = sub_10041A47C(&OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___halfHeightDetent, &unk_10065DA60, sub_10041BA24, &unk_10065DA78);
        goto LABEL_14;
      }

LABEL_12:
      v13 = [objc_opt_self() largeDetent];
LABEL_14:
      v11 = v14;
      v14 = v13;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v10 = sub_10041A394();
  v11 = sub_10041A47C(&OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___halfHeightDetent, &unk_10065DA60, sub_10041BA24, &unk_10065DA78);
  if (!v10)
  {
LABEL_15:

    goto LABEL_16;
  }

  sub_1000054A4(0, &qword_1006C3FF0, UISheetPresentationControllerDetent_ptr);
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    goto LABEL_12;
  }

LABEL_16:
  sub_10041A598(v14);
}

unint64_t sub_10041A394()
{
  v1 = OBJC_IVAR___ICActivityStreamNavigationController_sheetController;
  result = *(v0 + OBJC_IVAR___ICActivityStreamNavigationController_sheetController);
  if (result)
  {
    v3 = [result detents];
    sub_1000054A4(0, &qword_1006C3FF0, UISheetPresentationControllerDetent_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = *(v0 + v1);
    if (v5)
    {
      result = [v5 _indexOfCurrentDetent];
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_7;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(v4 + 8 * result + 32);
LABEL_7:
        v7 = v6;

        return v7;
      }

      __break(1u);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_10041A47C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *&v4[*a1];
  if (v6)
  {
    v7 = *&v4[*a1];
  }

  else
  {
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v4;
    v18[4] = a3;
    v18[5] = v11;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_10041B37C;
    v18[3] = a4;
    v12 = _Block_copy(v18);
    v13 = v4;

    v14 = [v10 _detentWithContainerViewBlock:v12];
    _Block_release(v12);
    v15 = *&v4[v5];
    *&v4[v5] = v14;
    v7 = v14;

    v6 = 0;
  }

  v16 = v6;
  return v7;
}

void sub_10041A598(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR___ICActivityStreamNavigationController_sheetController];
  if (v2)
  {
    v16 = v2;
    v4 = [v16 detents];
    sub_1000054A4(0, &qword_1006C3FF0, UISheetPresentationControllerDetent_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = sub_1004AEB58(a1, v5);
    LOBYTE(a1) = v7;

    if (a1)
    {
    }

    else
    {
      sub_10041ABC8();
      *&v1[OBJC_IVAR___ICActivityStreamNavigationController_indexOfCurrentDetent] = v6;
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      v9[2] = v16;
      v9[3] = v6;
      v9[4] = v1;
      v21 = sub_10041BE44;
      v22 = v9;
      aBlock = _NSConcreteStackBlock;
      v18 = 1107296256;
      v19 = sub_10028DCE8;
      v20 = &unk_10065DB18;
      v10 = _Block_copy(&aBlock);
      v11 = v16;
      v12 = v1;

      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      v21 = sub_10041BE50;
      v22 = v13;
      aBlock = _NSConcreteStackBlock;
      v18 = 1107296256;
      v19 = sub_100417B5C;
      v20 = &unk_10065DB68;
      v14 = _Block_copy(&aBlock);
      v15 = v12;

      [v8 animateWithDuration:v10 animations:v14 completion:0.3];
      _Block_release(v14);
      _Block_release(v10);
    }
  }
}

uint64_t sub_10041A8C4()
{
  if (!*(v0 + OBJC_IVAR___ICActivityStreamNavigationController_sheetController))
  {
    return 5;
  }

  if (*(v0 + OBJC_IVAR___ICActivityStreamNavigationController_hasInteractiveSizing) != 1)
  {
    return 4;
  }

  v1 = sub_10041A394();
  v2 = sub_10041A47C(&OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___dockedDetent, &unk_10065DAB0, sub_10041BA54, &unk_10065DAC8);
  v3 = v2;
  if (v1)
  {
    sub_1000054A4(0, &qword_1006C3FF0, UISheetPresentationControllerDetent_ptr);
    v4 = static NSObject.== infix(_:_:)();

    if (v4)
    {
      return 1;
    }
  }

  else
  {
  }

  v6 = sub_10041A394();
  v7 = sub_10041A47C(&OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___halfHeightDetent, &unk_10065DA60, sub_10041BA24, &unk_10065DA78);
  v8 = v7;
  if (v6)
  {
    sub_1000054A4(0, &qword_1006C3FF0, UISheetPresentationControllerDetent_ptr);
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      return 2;
    }
  }

  else
  {
  }

  return 3;
}

void sub_10041AA34(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {
        return;
      }

      v5 = [objc_opt_self() largeDetent];
      goto LABEL_15;
    }

    v1 = &OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___halfHeightDetent;
    v2 = &unk_10065DA60;
    v3 = &unk_10065DA78;
    v4 = sub_10041BA24;
LABEL_14:
    v5 = sub_10041A47C(v1, v2, v4, v3);
LABEL_15:
    v7 = v5;
    sub_10041A598(v5);

    return;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      return;
    }

    v1 = &OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___dockedDetent;
    v2 = &unk_10065DAB0;
    v3 = &unk_10065DAC8;
    v4 = sub_10041BA54;
    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong hideActivityStreamWithCompletion:0];

    swift_unknownObjectRelease();
  }
}

void sub_10041ABC8()
{
  v1 = v0;
  v2 = sub_10015DA04(&unk_1006C1710, &qword_10053BA80);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v1 view];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 window];

    if (v14)
    {

      v15 = OBJC_IVAR___ICActivityStreamNavigationController_timeOfLastViewModeChange;
      swift_beginAccess();
      sub_100239F98(&v1[v15], v7);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_1000073B4(v7, &unk_1006C1710, &qword_10053BA80);
      }

      else
      {
        (*(v9 + 32))(v11, v7, v8);
        sub_10041A8C4();
        v16 = OBJC_IVAR___ICActivityStreamNavigationController_viewModeDurations;
        swift_beginAccess();
        v17 = *&v1[v16];
        v18 = 0.0;
        if (*(v17 + 16))
        {
          v19 = sub_1002ED08C();
          if (v20)
          {
            v18 = *(*(v17 + 56) + 8 * v19);
          }
        }

        swift_endAccess();
        v21 = sub_10041A8C4();
        Date.timeIntervalSinceNow.getter();
        v23 = v18 + fabs(v22);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = *&v1[v16];
        *&v1[v16] = 0x8000000000000000;
        sub_1002E7330(v21, isUniquelyReferenced_nonNull_native, v23);
        *&v1[v16] = v26;
        swift_endAccess();
        Date.init()();
        (*(v9 + 8))(v11, v8);
        (*(v9 + 56))(v5, 0, 1, v8);
        swift_beginAccess();
        sub_10023A078(v5, &v1[v15]);
        swift_endAccess();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10041AF44(void *a1, uint64_t a2, char *a3)
{
  [a1 _setIndexOfCurrentDetent:a2];
  v4 = [a3 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 window];

    if (v6)
    {
      [v6 layoutIfNeeded];
    }

    v7 = *&a3[OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController];
    if (v7)
    {
      v8 = v7;
      sub_100193390();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10041B024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController);
  if (v2)
  {
    v3 = v2;
    sub_100193390();
  }
}

void sub_10041B080(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController;
  v5 = *(a1 + OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController);
  if (v5)
  {
    v6 = [v5 view];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = 1.0;
    if (a2)
    {
      v8 = 0.0;
    }

    [v6 setAlpha:v8];
  }

  v9 = sub_10001F27C();
  v10 = v9;
  if ((a2 & 1) == 0 || (v11 = 1.0, !*(a1 + OBJC_IVAR___ICActivityStreamNavigationController_selection)))
  {
    v11 = 0.0;
  }

  [v9 setAlpha:v11];

  if (_UISolariumEnabled())
  {
    v12 = *(a1 + v4);
    if (!v12)
    {
      return;
    }

    if ((a2 & 1) != 0 && *(a1 + OBJC_IVAR___ICActivityStreamNavigationController_selection))
    {
      v13 = v12;
    }

    else
    {
      v16 = objc_opt_self();
      v13 = v12;
      v17 = [v16 mainBundle];
      v18 = String._bridgeToObjectiveC()();
      v19 = [v17 localizedStringForKey:v18 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v20 = String._bridgeToObjectiveC()();

    [v13 setTitle:v20];
  }

  else
  {
    v14 = sub_100418AFC();
    if ((a2 & 1) == 0 || (v15 = 0.0, !*(a1 + OBJC_IVAR___ICActivityStreamNavigationController_selection)))
    {
      v15 = 1.0;
    }

    v20 = v14;
    [v14 setAlpha:v15];
  }
}

void sub_10041B298(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController);
  if (v1)
  {
    v2 = v1;
    sub_100193390();
  }
}

void sub_10041B2F4(uint64_t a1, uint64_t a2)
{
  if (_UISolariumEnabled())
  {

    static ActivityStream.Layout.dockedHeaderHeight.getter();
  }

  else
  {
    if (*(a2 + OBJC_IVAR___ICActivityStreamNavigationController_selection))
    {
      v3 = sub_10001F27C();
    }

    else
    {
      v3 = sub_100418AFC();
    }

    v4 = v3;
    [v3 frame];
  }
}

double sub_10041B37C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_10041B678(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___ICActivityStreamNavigationController_indexOfCurrentDetent;
  v7 = *(v2 + OBJC_IVAR___ICActivityStreamNavigationController_indexOfCurrentDetent);
  sub_10041ABC8();
  *(v2 + v6) = a2;
  v8 = *(v2 + OBJC_IVAR___ICActivityStreamNavigationController_object);
  if (!v8)
  {
    return;
  }

  if (v7 <= a2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v27 = v8;
  v10 = [a1 detents];
  sub_1000054A4(0, &qword_1006C3FF0, UISheetPresentationControllerDetent_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v7 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_27:
    __break(1u);
    return;
  }

  v12 = *(v11 + 8 * v7 + 32);
LABEL_9:
  v13 = v12;

  sub_1000054A4(0, &qword_1006C1730, NSObject_ptr);
  v14 = sub_10041A47C(&OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___dockedDetent, &unk_10065DAB0, sub_10041BA54, &unk_10065DAC8);
  v15 = static NSObject.== infix(_:_:)();

  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v17 = sub_10041A47C(&OBJC_IVAR___ICActivityStreamNavigationController____lazy_storage___halfHeightDetent, &unk_10065DA60, sub_10041BA24, &unk_10065DA78);
    v18 = static NSObject.== infix(_:_:)();

    if (v18)
    {
      v16 = 3;
    }

    else
    {
      v19 = [objc_opt_self() largeDetent];
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  v21 = OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController;
  v22 = *(v3 + OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController);
  if (v22)
  {
    v23 = [v22 eventReporter];
    if (v23)
    {
      v24 = v23;
      [v23 submitCollabActivityBrowseEventForObject:v27 contextPath:0 clickContext:v9 mode:v16 isCurrentUserMentioned:0 hasRecentUpdates:0];
    }

    v25 = *(v3 + v21);
    if (v25)
    {
      v26 = v25;
      sub_100193390();
    }
  }
}

unint64_t sub_10041B9D0()
{
  result = qword_1006C8170;
  if (!qword_1006C8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8170);
  }

  return result;
}

void sub_10041BA5C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 ic_hasCompactHeight];

    if (v3)
    {
      v4 = *&v0[OBJC_IVAR___ICActivityStreamNavigationController_object];
      if (v4)
      {
        v5 = *&v0[OBJC_IVAR___ICActivityStreamNavigationController_selection];
        if (v5)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            objc_opt_self();
            v6 = swift_dynamicCastObjCClass();
            if (v6)
            {
              v7 = v6;
              v8 = v4;
              v9 = v5;
              v10 = [v7 noteEditorViewController];
              [v10 showActivityStreamToolbarForObject:v8 selection:v9 animated:1];

              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10041BBC0(void *a1)
{
  v3 = sub_10015DA04(&unk_1006C1710, &qword_10053BA80);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = *&v1[OBJC_IVAR___ICActivityStreamNavigationController_sheetController];
    *&v1[OBJC_IVAR___ICActivityStreamNavigationController_sheetController] = v6;
    v8 = v6;
    v9 = a1;

    sub_100419BF0();
    v10 = [v8 _indexOfCurrentDetent];
    sub_10041ABC8();
    *&v1[OBJC_IVAR___ICActivityStreamNavigationController_indexOfCurrentDetent] = v10;
    Date.init()();
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
    v12 = OBJC_IVAR___ICActivityStreamNavigationController_timeOfLastViewModeChange;
    swift_beginAccess();
    sub_10023A078(v5, &v1[v12]);
    swift_endAccess();
    [v8 setPrefersScrollingExpandsWhenScrolledToEdge:0];
    [v8 setPrefersGrabberVisible:v1[OBJC_IVAR___ICActivityStreamNavigationController_hasInteractiveSizing]];
    [v8 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    [v8 setPrefersEdgeAttachedInCompactHeight:1];
    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 ic_hasCompactHeight];

      if (v15 && *&v1[OBJC_IVAR___ICActivityStreamNavigationController_selection] && swift_unknownObjectWeakLoadStrong())
      {
        objc_opt_self();
        v16 = swift_dynamicCastObjCClass();
        if (!v16)
        {

          swift_unknownObjectRelease();
          return;
        }

        v17 = [v16 noteEditorViewController];
        [v17 hideActivityStreamToolbarAnimated:1];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10041BE90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10041BF14(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static ICArchiveExporterConfiguration.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC910 != -1)
  {
    swift_once();
  }

  v2 = static ICArchiveCreator.default;
  v4 = qword_1006EF9F8;
  v3 = unk_1006EFA00;
  v6 = qword_1006EFA08;
  v5 = qword_1006EFA10;

  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v8 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  result = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  *a1 = 0;
  *(a1 + 8) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v6;
  *(a1 + 48) = v5;
  *(a1 + 56) = IsAlexandriaDemoModeEnabled;
  *(a1 + 57) = v8;
  *(a1 + 58) = result;
  *(a1 + 59) = 0;
  return result;
}

uint64_t sub_10041C404(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10041C4F8(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    sub_10015DA04(&qword_1006BE790, &qword_100536880);
    ICObjectReferences.title.getter();
    if (v1)
    {
      v2 = String._bridgeToObjectiveC()();

      v3 = [v2 ic_sanitizedFilenameString];

      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        return v4;
      }
    }
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 localizedStringForKey:v10 value:0 table:0];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

uint64_t sub_10041C678()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C81A8);
  sub_10002597C(v0, qword_1006C81A8);
  return static Logger.archiving.getter();
}

uint64_t sub_10041C6C4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  sub_100025918(v4, qword_1006C81C0);
  sub_10002597C(v4, qword_1006C81C0);
  if (qword_1006BC940 != -1)
  {
    swift_once();
  }

  v5 = sub_10002597C(v0, qword_1006C81A8);
  (*(v1 + 16))(v3, v5, v0);
  return OSSignposter.init(logger:)();
}

uint64_t ICArchiveExporter.__allocating_init(objectProvider:configuration:fileManager:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_10042D92C(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

uint64_t ICArchiveExporter.init(objectProvider:configuration:fileManager:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10042D92C(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

double sub_10041C900()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = swift_allocObject();
  swift_weakInit();
  v8 = sub_10042E0E8;
  v9 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10041C404;
  ObjectType = &unk_10065DEE8;
  v3 = _Block_copy(aBlock);

  v4 = [v1 addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:0 queue:0 usingBlock:v3];
  _Block_release(v3);

  ObjectType = swift_getObjectType();
  aBlock[0] = v4;
  swift_beginAccess();
  sub_10000A49C(aBlock, v0 + 128, &qword_1006BE7A0, &unk_100535E20);
  swift_endAccess();
  return result;
}

double sub_10041CA6C()
{
  v1 = (v0 + 16);
  v2 = *v0;
  v3 = [objc_opt_self() defaultCenter];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = *(v2 + 80);
  v5[3] = *(v2 + 88);
  v5[4] = v4;
  v11 = sub_10042E0F0;
  v12 = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10041C404;
  ObjectType = &unk_10065DF60;
  v6 = _Block_copy(aBlock);

  v7 = [v3 addObserverForName:UIApplicationDidReceiveMemoryWarningNotification object:0 queue:0 usingBlock:v6];
  _Block_release(v6);

  ObjectType = swift_getObjectType();
  aBlock[0] = v7;
  swift_beginAccess();
  sub_10000A49C(aBlock, v1, &qword_1006BE7A0, &unk_100535E20);
  swift_endAccess();
  return result;
}

uint64_t *ICArchiveExporter.deinit()
{
  sub_10041CC84();
  swift_unknownObjectRelease();
  sub_10042D99C(v0[4], v0[5], v0[6], v0[7], v0[8], v0[9]);
  swift_unknownObjectRelease();
  sub_1000073B4((v0 + 16), &qword_1006BE7A0, &unk_100535E20);
  return v0;
}

void sub_10041CC84()
{
  swift_beginAccess();
  sub_100006038(v0 + 128, v6, &qword_1006BE7A0, &unk_100535E20);
  v1 = [objc_opt_self() defaultCenter];
  sub_100006038(v6, &v4, &qword_1006BE7A0, &unk_100535E20);
  if (v5)
  {
    sub_10001FA64(&v4, &v2);
    sub_10017CC60(&v2, v3);
    [v1 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    sub_100009F60(&v2);
  }

  sub_1000073B4(v6, &qword_1006BE7A0, &unk_100535E20);
}

uint64_t ICArchiveExporter.__deallocating_deinit()
{
  ICArchiveExporter.deinit();

  return swift_deallocClassInstance();
}

void ICArchiveExporter.createArchive(for:at:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ICArchiveExporter.createArchive(for:progress:)(a1, a3, v9);
  if (!v3)
  {
    swift_getObjectType();
    dispatch thunk of ICFileManaging.removeItem(at:)();
    dispatch thunk of ICFileManaging.copyItem(at:to:)();
    ICArchiveExporter.removeArchive(at:)(v9);
    (*(v7 + 8))(v9, v6);
  }
}

void sub_10041CF60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[0] = a3;
  v6 = sub_10015DA04(&qword_1006BCC20, &qword_100531F40);
  __chkstk_darwin(v6);
  v8 = v16 - v7;
  v9 = swift_allocBox();
  v11 = v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v11, 1, 1, v12);
  v21 = 0;
  v16[4] = v11;
  v17 = v3;
  v18 = a1;
  v19 = a2;
  v20 = &v21;
  type metadata accessor for ICModernObjectProvider();
  sub_10042DCA4(&qword_1006C8298, &type metadata accessor for ICModernObjectProvider, &protocol conformance descriptor for ICModernObjectProvider);
  v14 = v16[1];
  dispatch thunk of ICObjectProviding.performAndWait(task:)();
  if (v14)
  {
    goto LABEL_4;
  }

  v15 = v16[0];
  sub_100006038(v11, v8, &qword_1006BCC20, &qword_100531F40);
  if ((*(v13 + 48))(v8, 1, v12) != 1)
  {
    (*(v13 + 32))(v15, v8, v12);
LABEL_4:
    sub_10041D98C(v9, &v21, v3);

    return;
  }

  __break(1u);
}

void ICArchiveExporter.createArchive(for:progress:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v16 = a3;
  v5 = sub_10015DA04(&qword_1006BCC20, &qword_100531F40);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = swift_allocBox();
  v10 = v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v10, 1, 1, v11);
  v24 = 0;
  v19 = v10;
  v20 = v3;
  v13 = v18;
  v21 = a1;
  v22 = v17;
  v23 = &v24;
  dispatch thunk of ICObjectProviding.performAndWait(task:)();
  if (v13)
  {
    goto LABEL_4;
  }

  v14 = v16;
  sub_100006038(v10, v7, &qword_1006BCC20, &qword_100531F40);
  if ((*(v12 + 48))(v7, 1, v11) != 1)
  {
    (*(v12 + 32))(v14, v7, v11);
LABEL_4:
    sub_10041DFDC(v8, &v24, v3);

    return;
  }

  __break(1u);
}

uint64_t sub_10041D36C(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  if (qword_1006BC940 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10002597C(v9, qword_1006C81A8);
  v10 = *(v4 + 16);
  v26 = a1;
  v10(v8, a1, v3);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v27 = v4;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v1;
    v28 = v23;
    *v14 = 136315138;
    sub_10042DCA4(&qword_1006C0FF8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v4 + 8);
    v18(v8, v3);
    v19 = sub_100009D88(v15, v17, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Removing archive… {url: %s}", v14, 0xCu);
    sub_100009F60(v23);
  }

  else
  {

    v18 = *(v4 + 8);
    v18(v8, v3);
  }

  swift_getObjectType();
  v20 = v25;
  URL.deletingLastPathComponent()();
  dispatch thunk of ICFileManaging.removeItem(at:)();
  return (v18)(v20, v3);
}

uint64_t ICArchiveExporter.removeArchive(at:)(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  if (qword_1006BC940 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10002597C(v9, qword_1006C81A8);
  v10 = *(v4 + 16);
  v26 = a1;
  v10(v8, a1, v3);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v27 = v4;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v1;
    v28 = v23;
    *v14 = 136315138;
    sub_10042DCA4(&qword_1006C0FF8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v4 + 8);
    v18(v8, v3);
    v19 = sub_100009D88(v15, v17, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Removing archive… {url: %s}", v14, 0xCu);
    sub_100009F60(v23);
  }

  else
  {

    v18 = *(v4 + 8);
    v18(v8, v3);
  }

  swift_getObjectType();
  v20 = v25;
  URL.deletingLastPathComponent()();
  dispatch thunk of ICFileManaging.removeItem(at:)();
  return (v18)(v20, v3);
}

void sub_10041D98C(uint64_t a1, uint64_t a2, void *a3)
{
  v46 = a3;
  v48 = a2;
  v3 = sub_10015DA04(&qword_1006BCC20, &qword_100531F40);
  v4 = __chkstk_darwin(v3 - 8);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v45 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v45 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v45 - v13;
  __chkstk_darwin(v12);
  v16 = &v45 - v15;
  v17 = swift_projectBox();
  swift_beginAccess();
  v18 = v9;
  sub_100006038(v17, v7, &qword_1006BCC20, &qword_100531F40);
  v19 = *(v9 + 48);
  if (v19(v7, 1, v8) == 1)
  {
    sub_1000073B4(v7, &qword_1006BCC20, &qword_100531F40);
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
    if ((*v48 & 1) == 0)
    {
      sub_10041D36C(v16);
      v32 = v45;
      if (qword_1006BC940 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10002597C(v33, qword_1006C81A8);
      (*(v9 + 16))(v32, v16, v8);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v49[0] = v37;
        *v36 = 136315138;
        sub_10042DCA4(&qword_1006C0FF8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v18;
        v41 = v40;
        v42 = *(v39 + 8);
        v42(v32, v8);
        v43 = sub_100009D88(v38, v41, v49);

        *(v36 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v34, v35, "Failed to create archive — removing temporary files {url: %s}", v36, 0xCu);
        sub_100009F60(v37);

        v42(v16, v8);
      }

      else
      {

        v44 = *(v9 + 8);
        v44(v32, v8);
        v44(v16, v8);
      }

      return;
    }

    (*(v9 + 8))(v16, v8);
  }

  if (qword_1006BC940 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10002597C(v20, qword_1006C81A8);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v21, v22))
  {

    goto LABEL_11;
  }

  v48 = v9;
  v23 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v50 = v46;
  *v23 = 136315138;
  swift_beginAccess();
  v24 = v17;
  v25 = v47;
  sub_100006038(v24, v47, &qword_1006BCC20, &qword_100531F40);
  v26 = v19(v25, 1, v8);

  if (v26 != 1)
  {
    v27 = v48;
    (*(v48 + 32))(v14, v25, v8);
    sub_10042DCA4(&qword_1006C0FF8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v27 + 8))(v14, v8);
    v31 = sub_100009D88(v28, v30, &v50);

    *(v23 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v21, v22, "Created archive {url: %s}", v23, 0xCu);
    sub_100009F60(v46);

LABEL_11:

    return;
  }

  __break(1u);
}

void sub_10041DFDC(uint64_t a1, uint64_t a2, void *a3)
{
  v46 = a3;
  v48 = a2;
  v3 = sub_10015DA04(&qword_1006BCC20, &qword_100531F40);
  v4 = __chkstk_darwin(v3 - 8);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v45 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v45 = &v45 - v14;
  __chkstk_darwin(v13);
  v16 = &v45 - v15;
  v17 = swift_projectBox();
  swift_beginAccess();
  v18 = v9;
  sub_100006038(v17, v7, &qword_1006BCC20, &qword_100531F40);
  v19 = *(v9 + 48);
  if (v19(v7, 1, v8) == 1)
  {
    sub_1000073B4(v7, &qword_1006BCC20, &qword_100531F40);
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
    if ((*v48 & 1) == 0)
    {
      ICArchiveExporter.removeArchive(at:)(v16);
      v32 = v45;
      if (qword_1006BC940 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10002597C(v33, qword_1006C81A8);
      (*(v9 + 16))(v32, v16, v8);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v49[0] = v37;
        *v36 = 136315138;
        sub_10042DCA4(&qword_1006C0FF8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v18;
        v41 = v40;
        v42 = *(v39 + 8);
        v42(v32, v8);
        v43 = sub_100009D88(v38, v41, v49);

        *(v36 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v34, v35, "Failed to create archive — removing temporary files {url: %s}", v36, 0xCu);
        sub_100009F60(v37);

        v42(v16, v8);
      }

      else
      {

        v44 = *(v9 + 8);
        v44(v32, v8);
        v44(v16, v8);
      }

      return;
    }

    (*(v9 + 8))(v16, v8);
  }

  if (qword_1006BC940 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10002597C(v20, qword_1006C81A8);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v21, v22))
  {

    goto LABEL_11;
  }

  v48 = v9;
  v23 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v50 = v46;
  *v23 = 136315138;
  swift_beginAccess();
  v24 = v17;
  v25 = v47;
  sub_100006038(v24, v47, &qword_1006BCC20, &qword_100531F40);
  v26 = v19(v25, 1, v8);

  if (v26 != 1)
  {
    v27 = v48;
    (*(v48 + 32))(v12, v25, v8);
    sub_10042DCA4(&qword_1006C0FF8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v27 + 8))(v12, v8);
    v31 = sub_100009D88(v28, v30, &v50);

    *(v23 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v21, v22, "Created archive {url: %s}", v23, 0xCu);
    sub_100009F60(v46);

LABEL_11:

    return;
  }

  __break(1u);
}

uint64_t sub_10041E62C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v81 = a4;
  v82 = a5;
  v90 = a1;
  v7 = sub_10015DA04(&qword_1006BE790, &qword_100536880);
  v80 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v72 - v8;
  v10 = type metadata accessor for OSSignposter();
  v84 = *(v10 - 8);
  v85 = v10;
  __chkstk_darwin(v10);
  v83 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignpostID();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v72 - v16;
  v18 = sub_10015DA04(&qword_1006BCC20, &qword_100531F40);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = v72 - v23;
  v25 = __chkstk_darwin(v22);
  v91 = v72 - v26;
  __chkstk_darwin(v25);
  v28 = v72 - v27;
  v89 = a2;
  v29 = v92;
  result = sub_10041F738(a3, v72 - v27);
  if (!v29)
  {
    v74 = v15;
    v75 = v24;
    v73 = v21;
    v76 = v17;
    v77 = a3;
    v88 = 0;
    v31 = type metadata accessor for URL();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v28, 0, 1, v31);
    v33 = v28;
    v34 = v90;
    sub_10000A49C(v33, v90, &qword_1006BCC20, &qword_100531F40);
    v92 = *(v89 + 96);
    v35 = v91;
    v36 = v31;
    sub_100006038(v34, v91, &qword_1006BCC20, &qword_100531F40);
    v78 = *(v32 + 48);
    v79 = v32 + 48;
    result = v78(v35, 1, v31);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      swift_getObjectType();
      v37 = v88;
      dispatch thunk of ICFileManaging.createDirectory(at:withIntermediateDirectories:)();
      v88 = v37;
      if (v37)
      {
        return (*(v32 + 8))(v35, v31);
      }

      v72[0] = *(v32 + 8);
      v72[1] = v32 + 8;
      (v72[0])(v35, v31);
      if (qword_1006BC948 != -1)
      {
        goto LABEL_27;
      }

      while (1)
      {
        v38 = v85;
        v39 = sub_10002597C(v85, qword_1006C81C0);
        v40 = v83;
        v41 = v84;
        v42 = *(v84 + 16);
        v92 = v39;
        v42(v83);
        v43 = v75;
        sub_100006038(v90, v75, &qword_1006BCC20, &qword_100531F40);
        result = v78(v43, 1, v36);
        if (result == 1)
        {
          break;
        }

        URL._bridgeToObjectiveC()(v44);
        OSSignposter.logHandle.getter();
        v45 = v76;
        OSSignpostID.init(log:object:)();
        (*(v41 + 8))(v40, v38);
        v85 = v36;
        (v72[0])(v43, v36);
        v46 = OSSignposter.logHandle.getter();
        v47 = static os_signpost_type_t.begin.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          v49 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, v47, v49, "Create Archive", "", v48, 2u);
        }

        (*(v86 + 16))(v74, v45, v87);
        type metadata accessor for OSSignpostIntervalState();
        swift_allocObject();
        v84 = OSSignpostIntervalState.init(id:isOpen:)();
        v36 = *(v77 + 16);
        if (!v36)
        {
          v50 = 0;
LABEL_15:
          if (qword_1006BC940 != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for Logger();
          sub_10002597C(v57, qword_1006C81A8);
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.debug.getter();
          v60 = os_log_type_enabled(v58, v59);
          v62 = v81;
          v61 = v82;
          v64 = v86;
          v63 = v87;
          v65 = v90;
          if (v60)
          {
            v66 = swift_slowAlloc();
            *v66 = 134217984;
            *(v66 + 4) = v50;
            _os_log_impl(&_mh_execute_header, v58, v59, "Exporting notes… {noteCount: %ld}", v66, 0xCu);
          }

          [v62 setTotalUnitCount:v50];
          v67 = v65;
          v68 = v73;
          sub_100006038(v67, v73, &qword_1006BCC20, &qword_100531F40);
          result = v78(v68, 1, v85);
          if (result != 1)
          {
            v69 = v88;
            sub_100420290(v68, v77, v62);
            v70 = v76;
            if (v69)
            {
              (v72[0])(v68, v85);
            }

            else
            {
              (v72[0])(v68, v85);
              NSProgress.throwIfCancelled()();
              if (!v71)
              {
                *v61 = 1;
              }
            }

            sub_100423514(v84, "Create Archive");

            return (*(v64 + 8))(v70, v63);
          }

          goto LABEL_30;
        }

        v50 = 0;
        v51 = v80 + 16;
        v92 = *(v80 + 16);
        v52 = v77 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
        v91 = *(v80 + 72);
        v53 = (v80 + 8);
        while (1)
        {
          v54 = v51;
          v92(v9, v52, v7);
          v55 = ICObjectReferences.recursiveNoteCount.getter();
          (*v53)(v9, v7);
          v56 = __OFADD__(v50, v55);
          v50 += v55;
          if (v56)
          {
            break;
          }

          v52 += v91;
          --v36;
          v51 = v54;
          if (!v36)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_27:
        swift_once();
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_10041EE9C(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v80 = a1;
  v74 = a4;
  v7 = *a2;
  v72 = a5;
  v73 = v7;
  v8 = type metadata accessor for OSSignposter();
  v76 = *(v8 - 8);
  v77 = v8;
  __chkstk_darwin(v8);
  v75 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostID();
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v64 - v14;
  v16 = sub_10015DA04(&qword_1006BCC20, &qword_100531F40);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v64 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v64 - v24;
  __chkstk_darwin(v23);
  v27 = v64 - v26;
  v28 = v81;
  result = sub_10041FC04(a3, v64 - v26);
  if (v28)
  {
    return result;
  }

  v66 = v19;
  v67 = v22;
  v65 = v13;
  v81 = 0;
  v68 = v15;
  v69 = a3;
  v30 = type metadata accessor for URL();
  v31 = *(v30 - 8);
  (*(v31 + 56))(v27, 0, 1, v30);
  v32 = v80;
  sub_10000A49C(v27, v80, &qword_1006BCC20, &qword_100531F40);
  sub_100006038(v32, v25, &qword_1006BCC20, &qword_100531F40);
  v70 = *(v31 + 48);
  v71 = v31 + 48;
  result = v70(v25, 1, v30);
  if (result == 1)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  swift_getObjectType();
  v33 = v81;
  dispatch thunk of ICFileManaging.createDirectory(at:withIntermediateDirectories:)();
  v81 = v33;
  if (v33)
  {
    return (*(v31 + 8))(v25, v30);
  }

  v34 = *(v31 + 8);
  v64[1] = v31 + 8;
  (v34)(v25, v30);
  if (qword_1006BC948 != -1)
  {
    swift_once();
  }

  v64[0] = a2;
  v35 = v77;
  v36 = sub_10002597C(v77, qword_1006C81C0);
  v37 = v75;
  v38 = v76;
  v76[2](v75, v36, v35);
  v39 = v67;
  sub_100006038(v80, v67, &qword_1006BCC20, &qword_100531F40);
  result = v70(v39, 1, v30);
  if (result == 1)
  {
    goto LABEL_22;
  }

  URL._bridgeToObjectiveC()(v40);
  OSSignposter.logHandle.getter();
  v41 = v68;
  OSSignpostID.init(log:object:)();
  (v38[1])(v37, v35);
  v76 = v34;
  (v34)(v39, v30);
  v42 = OSSignposter.logHandle.getter();
  v43 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, v43, v45, "Create Archive", "", v44, 2u);
  }

  v77 = v30;

  (*(v78 + 16))(v65, v41, v79);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v46 = OSSignpostIntervalState.init(id:isOpen:)();
  v82 = 0;
  v83 = v69;
  __chkstk_darwin(v46);
  v47 = *(v73 + 88);
  v64[-2] = *(v73 + 80);
  v64[-1] = v47;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ICObjectReferences();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v48 = v81;
  Sequence.reduce<A>(_:_:)();
  v49 = v84;
  if (qword_1006BC940 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_10002597C(v50, qword_1006C81A8);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  v53 = os_log_type_enabled(v51, v52);
  v54 = v74;
  v55 = v80;
  if (v53)
  {
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    *(v56 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v51, v52, "Exporting notes… {noteCount: %ld}", v56, 0xCu);
  }

  [v54 setTotalUnitCount:v49];
  v57 = v55;
  v58 = v66;
  sub_100006038(v57, v66, &qword_1006BCC20, &qword_100531F40);
  result = v70(v58, 1, v77);
  v59 = v79;
  if (result == 1)
  {
    goto LABEL_23;
  }

  sub_100421384(v58, v69, v54);
  v60 = (v78 + 8);
  v61 = v72;
  v62 = v68;
  if (v48)
  {
    (v76)(v58, v77);
    sub_100423514(v46, "Create Archive");

    return (*v60)(v62, v59);
  }

  else
  {
    (v76)(v58, v77);
    NSProgress.throwIfCancelled()();
    if (!v63)
    {
      *v61 = 1;
    }

    sub_100423514(v46, "Create Archive");

    return (*v60)(v62, v59);
  }
}

uint64_t sub_10041F738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v49 = a2;
  v3 = type metadata accessor for UUID();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v42 - v11;
  v13 = __chkstk_darwin(v10);
  v43 = &v42 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v42 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v42 - v19;
  __chkstk_darwin(v18);
  v22 = &v42 - v21;
  v23 = *(v2 + 24);
  swift_getObjectType();
  if (v23 == 1)
  {
    v24 = v52;
    result = dispatch thunk of ICFileManaging.url(for:)();
    if (!v24)
    {
      v52 = 0;
      URL.appendingPathComponent(_:isDirectory:)();
      v26 = *(v47 + 8);
      v27 = v17;
      v28 = v48;
      v26(v27, v48);
      UUID.init()();
      UUID.uuidString.getter();
      (*(v44 + 8))(v5, v45);
      URL.appendingPathComponent(_:isDirectory:)();

      v26(v20, v28);
      sub_10041C4F8(v46);
      v29 = String._bridgeToObjectiveC()();

      v30 = [v29 ic_sanitizedFilenameString];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      URL.appendingPathComponent(_:isDirectory:)();

      return (v26)(v22, v28);
    }
  }

  else
  {
    v31 = v52;
    result = dispatch thunk of ICFileManaging.url(for:)();
    if (!v31)
    {
      URL.appendingPathComponent(_:isDirectory:)();
      v32 = v48;
      v33 = *(v47 + 8);
      v33(v9, v48);
      UUID.init()();
      UUID.uuidString.getter();
      (*(v44 + 8))(v5, v45);
      v34 = v43;
      URL.appendingPathComponent(_:isDirectory:)();

      v33(v12, v32);
      sub_10041C4F8(v46);
      v35 = String._bridgeToObjectiveC()();
      v36 = [v35 ic_sanitizedFilenameString];

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v50 = v37;
      v51 = v39;
      v40._countAndFlagsBits = 46;
      v40._object = 0xE100000000000000;
      String.append(_:)(v40);
      v41._countAndFlagsBits = 0x6372617365746F6ELL;
      v41._object = 0xEC00000065766968;
      String.append(_:)(v41);

      URL.appendingPathComponent(_:isDirectory:)();

      return (v33)(v34, v32);
    }
  }

  return result;
}

uint64_t sub_10041FC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v47 = *v2;
  v48 = a1;
  v4 = type metadata accessor for UUID();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v41 - v12;
  v14 = __chkstk_darwin(v11);
  v44 = &v41 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v41 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v41 - v20;
  __chkstk_darwin(v19);
  v43 = &v41 - v22;
  v23 = *(v2 + 24);
  swift_getObjectType();
  if (v23 == 1)
  {
    result = dispatch thunk of ICFileManaging.url(for:)();
    if (!v3)
    {
      v42 = 0;
      URL.appendingPathComponent(_:isDirectory:)();
      v25 = *(v49 + 8);
      v26 = v18;
      v27 = v50;
      v25(v26, v50);
      UUID.init()();
      UUID.uuidString.getter();
      (*(v45 + 8))(v6, v46);
      v28 = v43;
      URL.appendingPathComponent(_:isDirectory:)();

      v25(v21, v27);
      sub_1000054A4(0, &qword_1006C82B8, ICArchive_ptr);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      static ICArchive.archiveTitle<A>(for:)(v48);
      v29 = String._bridgeToObjectiveC()();

      v30 = [v29 ic_sanitizedFilenameString];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      URL.appendingPathComponent(_:isDirectory:)();

      return (v25)(v28, v27);
    }
  }

  else
  {
    result = dispatch thunk of ICFileManaging.url(for:)();
    if (!v3)
    {
      v42 = 0;
      URL.appendingPathComponent(_:isDirectory:)();
      v31 = v50;
      v32 = *(v49 + 8);
      v32(v10, v50);
      UUID.init()();
      UUID.uuidString.getter();
      (*(v45 + 8))(v6, v46);
      v33 = v44;
      URL.appendingPathComponent(_:isDirectory:)();

      v32(v13, v31);
      sub_1000054A4(0, &qword_1006C82B8, ICArchive_ptr);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      static ICArchive.archiveTitle<A>(for:)(v48);
      v34 = String._bridgeToObjectiveC()();
      v35 = [v34 ic_sanitizedFilenameString];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v51 = v36;
      v52 = v38;
      v39._countAndFlagsBits = 46;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);
      v40._countAndFlagsBits = 0x6372617365746F6ELL;
      v40._object = 0xEC00000065766968;
      String.append(_:)(v40);

      URL.appendingPathComponent(_:isDirectory:)();

      return (v32)(v33, v31);
    }
  }

  return result;
}

uint64_t sub_1004201D8@<X0>(uint64_t *a1@<X0>, void *a4@<X8>)
{
  v5 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ICObjectReferences();
  result = ICObjectReferences.recursiveNoteCount.getter();
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    *a4 = v5 + result;
  }

  return result;
}

void sub_100420290(uint64_t a1, int64_t a2, uint64_t a3)
{
  v122 = a3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for ICArchiveModel(0);
  __chkstk_darwin(v117);
  v118 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_10015DA04(&qword_1006C82A0, &qword_10054A760);
  v11 = *(v141 - 8);
  v12 = __chkstk_darwin(v141);
  v140 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v139 = &v112 - v14;
  v125 = sub_10015DA04(&qword_1006BE790, &qword_100536880);
  v130 = *(v125 - 8);
  v15 = __chkstk_darwin(v125);
  v16 = __chkstk_darwin(v15);
  v128 = &v112 - v17;
  v18 = __chkstk_darwin(v16);
  v138 = &v112 - v19;
  __chkstk_darwin(v18);
  v152 = (&v112 - v21);
  if (*(v3 + 104))
  {
    goto LABEL_93;
  }

  v143 = v11;
  v114 = v7;
  v115 = v6;
  v123 = a1;
  *(v3 + 104) = 1;
  v22 = *(v3 + 16);
  v23 = *(a2 + 16);
  v24 = _swiftEmptyArrayStorage;
  v124 = v3;
  v120 = a2;
  v116 = v20;
  v113 = v9;
  v121 = v23;
  if (!v23)
  {
    goto LABEL_10;
  }

  *&v144 = _swiftEmptyArrayStorage;

  v25 = v23;
  sub_1001897E4(0, v23, 0);
  v24 = v144;
  v26 = a2 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
  v27 = *(v130 + 72);
  v28 = v142;
  do
  {
    sub_10042DCEC();
    if (v28)
    {
      v142 = v28;

LABEL_50:

LABEL_51:
      v70 = v124;
      goto LABEL_52;
    }

    *&v144 = v24;
    v30 = v24[2];
    v29 = v24[3];
    v6 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      sub_1001897E4((v29 > 1), v30 + 1, 1);
      v24 = v144;
    }

    v24[2] = v6;
    v31 = &v24[4 * v30];
    v32 = v148;
    *(v31 + 2) = v147;
    *(v31 + 3) = v32;
    v26 += v27;
    --v25;
  }

  while (v25);
  v142 = 0;

LABEL_10:
  v33 = v24[2];
  v129 = v22;
  if (v33)
  {
    v34 = (v24 + 4);
    v35 = _swiftEmptyArrayStorage;
    v6 = &qword_1006BE7A0;
    while (1)
    {
      sub_100006038(v34, &v150, &qword_1006BE7A0, &unk_100535E20);
      v147 = v150;
      v148 = v151;
      if (*(&v151 + 1))
      {
        sub_10015DA04(&qword_1006BF338, &unk_10054A770);
        if (swift_dynamicCast())
        {
          if (*(&v145 + 1))
          {
            sub_100192680(&v144, &v147);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_1001CBB48(0, v35[2] + 1, 1, v35);
            }

            v37 = v35[2];
            v36 = v35[3];
            if (v37 >= v36 >> 1)
            {
              v35 = sub_1001CBB48((v36 > 1), v37 + 1, 1, v35);
            }

            v35[2] = v37 + 1;
            sub_100192680(&v147, &v35[5 * v37 + 4]);
            v6 = &qword_1006BE7A0;
            goto LABEL_14;
          }
        }

        else
        {
          v146 = 0;
          v144 = 0u;
          v145 = 0u;
        }
      }

      else
      {
        sub_1000073B4(&v147, &qword_1006BE7A0, &unk_100535E20);
        v144 = 0u;
        v145 = 0u;
        v146 = 0;
      }

      sub_1000073B4(&v144, &qword_1006C82A8, &qword_10054A768);
LABEL_14:
      v34 += 32;
      if (!--v33)
      {

        goto LABEL_26;
      }
    }
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_26:
  *&v144 = _swiftEmptyArrayStorage;
  v38 = v35[2];
  if (v38)
  {
    v6 = (v35 + 4);
    do
    {
      sub_1002EC1FC(v6, &v147);
      v39 = *(&v148 + 1);
      v40 = v149;
      sub_10017CC60(&v147, *(&v148 + 1));
      v41 = (*(v40 + 24))(v39, v40);
      sub_100009F60(&v147);
      sub_1002DC388(v41);
      v6 += 40;
      --v38;
    }

    while (v38);
  }

  v119 = v144;
  v42 = _swiftEmptyArrayStorage;
  v43 = v125;
  v44 = v152;
  if (v121)
  {
    v136 = *(v130 + 16);
    v127 = (*(v130 + 80) + 32) & ~*(v130 + 80);
    v45 = v120 + v127;
    v46 = *(v130 + 72);
    v135 = enum case for ICObjectReferences.Types.folder<A>(_:);
    v134 = (v143 + 104);
    v133 = (v143 + 8);
    v126 = (v130 + 8);
    v137 = v130 + 16;
    v131 = (v130 + 32);
    v47 = v121;
    v132 = v46;
    do
    {
      v143 = v47;
      v152 = v42;
      v136(v44, v45, v43);
      v48 = v139;
      v49 = v43;
      ICObjectReferences.type.getter();
      v50 = v140;
      v51 = v141;
      (*v134)(v140, v135, v141);
      sub_1000054A4(0, &qword_1006BFEC0, NSManagedObjectID_ptr);
      sub_1001C607C();
      v52 = static ICObjectReferences.Types.== infix(_:_:)();
      v53 = *v133;
      (*v133)(v50, v51);
      v53(v48, v51);
      if (v52)
      {
        v54 = *v131;
        (*v131)(v138, v44, v49);
        v42 = v152;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v147 = v42;
        if (isUniquelyReferenced_nonNull_native)
        {
          v43 = v49;
        }

        else
        {
          sub_1001897C4(0, v42[2] + 1, 1);
          v43 = v125;
          v42 = v147;
        }

        v57 = v42[2];
        v56 = v42[3];
        if (v57 >= v56 >> 1)
        {
          sub_1001897C4((v56 > 1), v57 + 1, 1);
          v43 = v125;
          v42 = v147;
        }

        v42[2] = v57 + 1;
        v58 = v42 + v127 + v57 * v132;
        v6 = v132;
        v54(v58, v138, v43);
      }

      else
      {
        (*v126)(v44, v49);
        v43 = v49;
        v42 = v152;
        v6 = v132;
      }

      v45 += v6;
      v47 = v143 - 1;
    }

    while (v143 != 1);
  }

  v59 = v42[2];
  if (!v59)
  {

    v62 = _swiftEmptyArrayStorage;
LABEL_53:
    v71 = v62[2];
    v70 = v124;
    if (!v71)
    {

      v73 = _swiftEmptyArrayStorage;
LABEL_69:
      v76 = v73[2];
      if (v76)
      {
        *&v144 = _swiftEmptyArrayStorage;
        sub_100189444(0, v76, 0);
        v77 = v144;
        v78 = (v73 + 4);
        do
        {
          sub_1002EC1FC(v78, &v147);
          v79 = *(&v148 + 1);
          v80 = v149;
          sub_10017CC60(&v147, *(&v148 + 1));
          v81 = (*(v80 + 8))(v79, v80);
          v83 = v82;
          sub_100009F60(&v147);
          *&v144 = v77;
          v85 = v77[2];
          v84 = v77[3];
          if (v85 >= v84 >> 1)
          {
            sub_100189444((v84 > 1), v85 + 1, 1);
            v77 = v144;
          }

          v77[2] = v85 + 1;
          v86 = &v77[2 * v85];
          v86[4] = v81;
          v86[5] = v83;
          v78 += 40;
          --v76;
        }

        while (v76);

        v70 = v124;
      }

      else
      {

        v77 = _swiftEmptyArrayStorage;
      }

      if (*(v70 + 24) != 1)
      {
        v95 = *(v70 + 40);
        v96 = *(v70 + 48);
        v97 = *(v70 + 56);
        v98 = *(v70 + 64);
        v99 = *(v70 + 72);
        v152 = *(v70 + 32);
        sub_10042DDA8(v152, v95, v96, v97, v98, v99);
        v143 = sub_10026F868(v119);

        if (!v77[2])
        {

          v77 = 0;
        }

        v100 = v117;
        v101 = *(v117 + 24);
        v102 = v118;
        Date.init()();
        v103 = type metadata accessor for Date();
        (*(*(v103 - 8) + 56))(v102 + v101, 0, 1, v103);
        *v102 = 0;
        *(v102 + 8) = 1;
        v104 = (v102 + v100[7]);
        *v104 = v152;
        v104[1] = v95;
        v104[2] = v96;
        v104[3] = v97;
        v6 = v102;
        v104[4] = v98;
        v104[5] = v99;
        *(v102 + v100[8]) = v143;
        *(v102 + v100[9]) = v77;
        if (qword_1006BC8C8 != -1)
        {
          goto LABEL_94;
        }

        goto LABEL_86;
      }

      goto LABEL_78;
    }

    v72 = (v62 + 4);
    v73 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100006038(v72, &v150, &qword_1006BE7A0, &unk_100535E20);
      v147 = v150;
      v148 = v151;
      if (*(&v151 + 1))
      {
        sub_10015DA04(&qword_1006BF338, &unk_10054A770);
        if (swift_dynamicCast())
        {
          if (*(&v145 + 1))
          {
            sub_100192680(&v144, &v147);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v73 = sub_1001CBB48(0, v73[2] + 1, 1, v73);
            }

            v75 = v73[2];
            v74 = v73[3];
            if (v75 >= v74 >> 1)
            {
              v73 = sub_1001CBB48((v74 > 1), v75 + 1, 1, v73);
            }

            v73[2] = v75 + 1;
            sub_100192680(&v147, &v73[5 * v75 + 4]);
            v70 = v124;
            goto LABEL_57;
          }
        }

        else
        {
          v146 = 0;
          v144 = 0u;
          v145 = 0u;
        }
      }

      else
      {
        sub_1000073B4(&v147, &qword_1006BE7A0, &unk_100535E20);
        v144 = 0u;
        v145 = 0u;
        v146 = 0;
      }

      sub_1000073B4(&v144, &qword_1006C82A8, &qword_10054A768);
LABEL_57:
      v72 += 32;
      if (!--v71)
      {

        goto LABEL_69;
      }
    }
  }

  *&v144 = _swiftEmptyArrayStorage;

  sub_1001897E4(0, v59, 0);
  v60 = v125;
  v61 = 0;
  v62 = v144;
  v152 = (v42 + ((*(v130 + 80) + 32) & ~*(v130 + 80)));
  v143 = v130 + 16;
  v63 = (v130 + 8);
  while (v61 < v42[2])
  {
    v64 = v128;
    (*(v130 + 16))(v128, v152 + *(v130 + 72) * v61, v60);
    v65 = v142;
    sub_10042E374();
    v142 = v65;
    if (v65)
    {

      (*v63)(v64, v60);

      goto LABEL_50;
    }

    (*v63)(v64, v60);
    *&v144 = v62;
    v67 = v62[2];
    v66 = v62[3];
    v6 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      sub_1001897E4((v66 > 1), v67 + 1, 1);
      v60 = v125;
      v62 = v144;
    }

    ++v61;
    v62[2] = v6;
    v68 = &v62[4 * v67];
    v69 = v148;
    *(v68 + 2) = v147;
    *(v68 + 3) = v69;
    if (v59 == v61)
    {

      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  swift_once();
LABEL_86:
  sub_10042DCA4(&qword_1006C82B0, type metadata accessor for ICArchiveModel, &unk_10054D638);
  v105 = v142;
  v106 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v142 = v105;
  v70 = v124;
  if (v105)
  {
    sub_10042DE48(v6, type metadata accessor for ICArchiveModel);
    goto LABEL_52;
  }

  v108 = v106;
  v109 = v107;
  swift_getObjectType();
  v110 = v113;
  URL.appendingPathComponent(_:isDirectory:)();
  v111 = v142;
  dispatch thunk of ICFileManaging.createFile(at:contents:)();
  v142 = v111;
  if (v111)
  {
    sub_10019671C(v108, v109);
    (*(v114 + 8))(v110, v115);
    sub_10042DE48(v118, type metadata accessor for ICArchiveModel);
    goto LABEL_51;
  }

  sub_10019671C(v108, v109);
  (*(v114 + 8))(v110, v115);
  sub_10042DE48(v118, type metadata accessor for ICArchiveModel);
  v70 = v124;
LABEL_78:
  v87 = v121;
  if (v121)
  {
    v88 = *(v130 + 16);
    v89 = v120 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
    v90 = *(v130 + 72);
    v91 = (v130 + 8);
    v92 = v125;
    v93 = v116;
    while (1)
    {
      v88(v93, v89, v92);
      v94 = v142;
      sub_100422264(v93, v123, v122);
      v142 = v94;
      if (v94)
      {
        break;
      }

      (*v91)(v93, v92);
      v89 += v90;
      if (!--v87)
      {
        goto LABEL_52;
      }
    }

    (*v91)(v93, v92);
  }

LABEL_52:
  *(v70 + 104) = 0;
}

void sub_100421384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v5;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ICArchiveModel(0);
  v15 = __chkstk_darwin(v14);
  if (v5[13])
  {
    __break(1u);
LABEL_58:
    swift_once();
    goto LABEL_53;
  }

  v96 = a1;
  v97 = a3;
  v94 = v15;
  v91 = v13;
  v95 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v11;
  v93 = v10;
  *(v5 + 104) = 1;
  *&v104 = a2;
  v17 = v5[2];
  v100 = v4;
  v19 = *(v9 + 80);
  v18 = *(v9 + 88);
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v18;
  v20[4] = v17;
  v21 = swift_unknownObjectRetain();
  v98 = a2;
  ObjectType = &v83;
  __chkstk_darwin(v21);
  v109 = v5;
  *(&v83 - 4) = v19;
  *(&v83 - 3) = v18;
  *(&v83 - 2) = sub_10042DF64;
  *(&v83 - 1) = v20;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ICObjectReferences();
  v22 = type metadata accessor for Array();
  v23 = sub_10015DA04(&qword_1006BE7A0, &unk_100535E20);
  v24 = sub_10015DA04(&unk_1006C9B40, &unk_1005397F0);
  WitnessTable = swift_getWitnessTable();
  v26 = v100;
  v27 = sub_10041BF14(sub_10042DEC8, (&v83 - 6), v22, v23, v24, WitnessTable, &protocol self-conformance witness table for Error, &v101);
  if (v26)
  {

    v28 = v109;
    goto LABEL_56;
  }

  v84 = 0;
  v86 = v24;
  v87 = v17;
  v88 = v18;
  v89 = v19;
  v90 = v22;
  v100 = v27;

  v29 = *(v100 + 16);
  ObjectType = v23;
  v85 = WitnessTable;
  if (v29)
  {
    v30 = v100 + 32;
    v31 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100006038(v30, &v107, &qword_1006BE7A0, &unk_100535E20);
      v104 = v107;
      v105 = v108;
      if (*(&v108 + 1))
      {
        sub_10015DA04(&qword_1006BF338, &unk_10054A770);
        if (swift_dynamicCast())
        {
          if (*(&v102 + 1))
          {
            sub_100192680(&v101, &v104);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v31 = sub_1001CBB48(0, v31[2] + 1, 1, v31);
            }

            v33 = v31[2];
            v32 = v31[3];
            if (v33 >= v32 >> 1)
            {
              v31 = sub_1001CBB48((v32 > 1), v33 + 1, 1, v31);
            }

            v31[2] = v33 + 1;
            sub_100192680(&v104, &v31[5 * v33 + 4]);
            goto LABEL_8;
          }
        }

        else
        {
          v103 = 0;
          v101 = 0u;
          v102 = 0u;
        }
      }

      else
      {
        sub_1000073B4(&v104, &qword_1006BE7A0, &unk_100535E20);
        v101 = 0u;
        v102 = 0u;
        v103 = 0;
      }

      sub_1000073B4(&v101, &qword_1006C82A8, &qword_10054A768);
LABEL_8:
      v30 += 32;
      if (!--v29)
      {

        goto LABEL_20;
      }
    }
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_20:
  *&v101 = _swiftEmptyArrayStorage;
  v34 = v31[2];
  v35 = v90;
  if (v34)
  {
    v36 = (v31 + 4);
    do
    {
      sub_1002EC1FC(v36, &v104);
      v37 = *(&v105 + 1);
      v38 = v106;
      sub_10017CC60(&v104, *(&v105 + 1));
      v39 = (*(v38 + 24))(v37, v38);
      sub_100009F60(&v104);
      sub_1002DC388(v39);
      v36 += 40;
      --v34;
    }

    while (v34);
  }

  v100 = v101;
  v41 = v98;
  *&v104 = v98;
  __chkstk_darwin(v40);
  v42 = v89;
  v43 = v88;
  *(&v83 - 2) = v89;
  *(&v83 - 1) = v43;

  swift_getWitnessTable();
  v44 = v84;
  *&v104 = _ArrayProtocol.filter(_:)();
  v45 = swift_allocObject();
  v45[2] = v42;
  v45[3] = v43;
  v45[4] = v87;
  v46 = swift_unknownObjectRetain();
  __chkstk_darwin(v46);
  *(&v83 - 4) = v42;
  *(&v83 - 3) = v43;
  *(&v83 - 2) = sub_10042E3BC;
  *(&v83 - 1) = v45;
  ObjectType = sub_10041BF14(sub_10042E38C, (&v83 - 6), v35, ObjectType, v86, v85, &protocol self-conformance witness table for Error, &v101);
  if (v44)
  {

    v28 = v109;
    goto LABEL_56;
  }

  v89 = 0;

  v47 = ObjectType[2];
  if (!v47)
  {

    v49 = _swiftEmptyArrayStorage;
    v52 = v41;
    v53 = _swiftEmptyArrayStorage[2];
    if (v53)
    {
      goto LABEL_40;
    }

    goto LABEL_46;
  }

  v48 = (ObjectType + 4);
  v49 = _swiftEmptyArrayStorage;
  do
  {
    sub_100006038(v48, &v107, &qword_1006BE7A0, &unk_100535E20);
    v104 = v107;
    v105 = v108;
    if (!*(&v108 + 1))
    {
      sub_1000073B4(&v104, &qword_1006BE7A0, &unk_100535E20);
      v101 = 0u;
      v102 = 0u;
      v103 = 0;
LABEL_28:
      sub_1000073B4(&v101, &qword_1006C82A8, &qword_10054A768);
      goto LABEL_29;
    }

    sub_10015DA04(&qword_1006BF338, &unk_10054A770);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v103 = 0;
      v101 = 0u;
      v102 = 0u;
      goto LABEL_28;
    }

    if (!*(&v102 + 1))
    {
      goto LABEL_28;
    }

    sub_100192680(&v101, &v104);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_1001CBB48(0, v49[2] + 1, 1, v49);
    }

    v51 = v49[2];
    v50 = v49[3];
    if (v51 >= v50 >> 1)
    {
      v49 = sub_1001CBB48((v50 > 1), v51 + 1, 1, v49);
    }

    v49[2] = v51 + 1;
    sub_100192680(&v104, &v49[5 * v51 + 4]);
LABEL_29:
    v48 += 32;
    --v47;
  }

  while (v47);

  v52 = v98;
  v53 = v49[2];
  if (!v53)
  {
LABEL_46:

    v54 = _swiftEmptyArrayStorage;
    goto LABEL_47;
  }

LABEL_40:
  *&v101 = _swiftEmptyArrayStorage;
  sub_100189444(0, v53, 0);
  v54 = v101;
  v55 = (v49 + 4);
  do
  {
    sub_1002EC1FC(v55, &v104);
    v56 = *(&v105 + 1);
    v57 = v106;
    sub_10017CC60(&v104, *(&v105 + 1));
    v58 = (*(v57 + 8))(v56, v57);
    v60 = v59;
    sub_100009F60(&v104);
    *&v101 = v54;
    v62 = v54[2];
    v61 = v54[3];
    if (v62 >= v61 >> 1)
    {
      sub_100189444((v61 > 1), v62 + 1, 1);
      v54 = v101;
    }

    v54[2] = v62 + 1;
    v63 = &v54[2 * v62];
    v63[4] = v58;
    v63[5] = v60;
    v55 += 40;
    --v53;
  }

  while (v53);

  v52 = v98;
LABEL_47:
  v28 = v109;
  v65 = v96;
  v64 = v97;
  v66 = v100;
  if (v109[3])
  {

    goto LABEL_49;
  }

  v68 = v109[5];
  v69 = v109[6];
  v70 = v109[7];
  v71 = v109[8];
  v72 = v109[9];
  ObjectType = v109[4];
  sub_10042DDA8(ObjectType, v68, v69, v70, v71, v72);
  v88 = sub_10026F868(v66);

  if (!v54[2])
  {

    v54 = 0;
  }

  v73 = v94;
  v74 = v94[6];
  v10 = v95;
  Date.init()();
  v75 = type metadata accessor for Date();
  (*(*(v75 - 8) + 56))(v10 + v74, 0, 1, v75);
  *v10 = 0;
  *(v10 + 8) = 1;
  v76 = (v10 + v73[7]);
  *v76 = ObjectType;
  v76[1] = v68;
  v76[2] = v69;
  v76[3] = v70;
  v76[4] = v71;
  v76[5] = v72;
  *(v10 + v73[8]) = v88;
  *(v10 + v73[9]) = v54;
  if (qword_1006BC8C8 != -1)
  {
    goto LABEL_58;
  }

LABEL_53:
  sub_10042DCA4(&qword_1006C82B0, type metadata accessor for ICArchiveModel, &unk_10054D638);
  v77 = v89;
  v78 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v28 = v109;
  v65 = v96;
  v64 = v97;
  if (v77)
  {
    sub_10042DE48(v10, type metadata accessor for ICArchiveModel);
  }

  else
  {
    v80 = v78;
    v81 = v79;
    v100 = v109[12];
    ObjectType = swift_getObjectType();
    v82 = v91;
    URL.appendingPathComponent(_:isDirectory:)();
    dispatch thunk of ICFileManaging.createFile(at:contents:)();
    v89 = 0;
    sub_10019671C(v80, v81);
    (*(v92 + 8))(v82, v93);
    v67 = sub_10042DE48(v95, type metadata accessor for ICArchiveModel);
    v52 = v98;
LABEL_49:
    *&v104 = v52;
    __chkstk_darwin(v67);
    *(&v83 - 4) = v28;
    *(&v83 - 3) = v65;
    *(&v83 - 2) = v64;
    swift_getWitnessTable();
    Sequence.forEach(_:)();
  }

LABEL_56:
  *(v28 + 104) = 0;
}

uint64_t sub_1004220A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for ICObjectReferences.Types();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  type metadata accessor for ICObjectReferences();
  ICObjectReferences.type.getter();
  (*(v4 + 104))(v7, enum case for ICObjectReferences.Types.folder<A>(_:), v3);
  v10 = static ICObjectReferences.Types.== infix(_:_:)();
  v11 = *(v4 + 8);
  v11(v7, v3);
  v11(v9, v3);
  return v10 & 1;
}

uint64_t sub_100422264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v35 = a2;
  v4 = sub_10015DA04(&qword_1006BE790, &qword_100536880);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v31 - v6;
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  if (qword_1006BC948 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002597C(v14, qword_1006C81C0);
  v34 = a1;
  ICObjectReferences.identifier.getter();
  v15 = v38;
  v16 = [v38 description];
  v37 = v13;
  if (v16)
  {
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String._bridgeToObjectiveC()();

    v13 = v37;
  }

  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:object:)();
  v17 = OSSignposter.logHandle.getter();
  v18 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v19 = v8;
    v20 = v7;
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v22, "Export Object", "", v21, 2u);
    v7 = v20;
    v8 = v19;
    v13 = v37;
  }

  (*(v8 + 16))(v11, v13, v7);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v23 = OSSignpostIntervalState.init(id:isOpen:)();
  v24 = v32;
  v25 = v34;
  (*(v5 + 16))(v32, v34, v4);
  v26 = (*(v5 + 88))(v24, v4);
  if (v26 == enum case for ICObjectReferences.account<A>(_:))
  {
    (*(v5 + 8))(v24, v4);
    v27 = objc_autoreleasePoolPush();
    v28 = "Account to be exported does not exist anymore — skipping";
    v29 = sub_1004237A4;
LABEL_16:
    sub_100426A34(v33, v25, v35, v36, v29, v28);
    objc_autoreleasePoolPop(v27);
    sub_100423514(v23, "Export Object");

    return (*(v8 + 8))(v37, v7);
  }

  if (v26 == enum case for ICObjectReferences.folder<A>(_:))
  {
    (*(v5 + 8))(v24, v4);
    v27 = objc_autoreleasePoolPush();
    v28 = "Folder to be exported does not exist anymore — skipping";
    v29 = sub_100424468;
    goto LABEL_16;
  }

  if (v26 == enum case for ICObjectReferences.note<A>(_:))
  {
    (*(v5 + 8))(v24, v4);
    v27 = objc_autoreleasePoolPush();
    v28 = "Note to be exported does not exist anymore — skipping";
    v29 = sub_100424E74;
    goto LABEL_16;
  }

  if (v26 == enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v5 + 8))(v24, v4);
    v27 = objc_autoreleasePoolPush();
    v28 = "Object to be exported does not exist anymore — skipping";
    v29 = sub_100426CA4;
    goto LABEL_16;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100422760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v36 = a2;
  v41 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for ICObjectReferences();
  v34 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v33 = &v33 - v6;
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = type metadata accessor for OSSignpostID();
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  if (qword_1006BC948 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for OSSignposter();
  sub_10002597C(v16, qword_1006C81C0);
  v40 = v4;
  ICObjectReferences.identifier.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of CustomStringConvertible.description.getter();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  String._bridgeToObjectiveC()();

  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:object:)();
  v17 = OSSignposter.logHandle.getter();
  v18 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v20, "Export Object", "", v19, 2u);
  }

  v22 = v38;
  v21 = v39;
  (*(v38 + 16))(v13, v15, v39);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v23 = OSSignpostIntervalState.init(id:isOpen:)();
  v25 = v33;
  v24 = v34;
  v27 = v40;
  v26 = v41;
  (*(v34 + 16))(v33, v41, v40);
  v28 = (*(v24 + 88))(v25, v27);
  if (v28 == enum case for ICObjectReferences.account<A>(_:))
  {
    (*(v24 + 8))(v25, v27);
    v29 = objc_autoreleasePoolPush();
    v30 = "Account to be exported does not exist anymore — skipping";
    v31 = sub_100423CD0;
LABEL_13:
    sub_1004241B8(v35, v26, v36, v37, &v42, v31, v30);
    objc_autoreleasePoolPop(v29);
    sub_100423514(v23, "Export Object");

    return (*(v22 + 8))(v15, v21);
  }

  if (v28 == enum case for ICObjectReferences.folder<A>(_:))
  {
    (*(v24 + 8))(v25, v40);
    v29 = objc_autoreleasePoolPush();
    v30 = "Folder to be exported does not exist anymore — skipping";
    v31 = sub_100424990;
    goto LABEL_13;
  }

  if (v28 == enum case for ICObjectReferences.note<A>(_:))
  {
    (*(v24 + 8))(v25, v40);
    v29 = objc_autoreleasePoolPush();
    v30 = "Note to be exported does not exist anymore — skipping";
    v31 = sub_100425D18;
    goto LABEL_13;
  }

  if (v28 == enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v24 + 8))(v25, v40);
    v29 = objc_autoreleasePoolPush();
    v30 = "Object to be exported does not exist anymore — skipping";
    v31 = sub_100428E3C;
    goto LABEL_13;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100422D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a3;
  v72 = a6;
  v10 = type metadata accessor for URL();
  v11 = __chkstk_darwin(v10);
  v74 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v78 = &v71 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v71 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v71 - v19;
  __chkstk_darwin(v18);
  v23 = &v71 - v22;
  v85 = a5;
  v86 = a1;
  v79 = a4;
  v87 = a2;
  if (a5)
  {
    v73 = v21;
    v24 = String._bridgeToObjectiveC()();
    v25 = [v24 ic_sanitizedFilenameString];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    URL.appendingPathComponent(_:isDirectory:)();

    v26 = String._bridgeToObjectiveC()();
    v27 = [v26 ic_sanitizedFilenameString];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    URL.appendingPathExtension(_:)();

    v28 = v73;
    v29 = *(v73 + 8);
    v29(v20, v10);
    v30 = *(v84 + 88);
    v31 = *(v84 + 96);
    swift_getObjectType();
    v83 = v30;
    v84 = v31;
    v32 = v88;
    dispatch thunk of ICFileManaging.createDirectory(at:withIntermediateDirectories:)();
    v33 = v32;
    if (!v32)
    {
      return (*(v28 + 32))(v72, v23, v10);
    }

    v29(v23, v10);
  }

  else
  {
    v82 = v10;
    v28 = v21;
    v34 = String._bridgeToObjectiveC()();
    v35 = [v34 ic_sanitizedFilenameString];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    URL.appendingPathComponent(_:isDirectory:)();

    v36 = *(v84 + 88);
    v37 = *(v84 + 96);
    swift_getObjectType();
    v83 = v36;
    v84 = v37;
    v38 = v88;
    dispatch thunk of ICFileManaging.createDirectory(at:withIntermediateDirectories:)();
    v33 = v38;
    if (!v38)
    {
      return (*(v28 + 32))(v72, v17, v82);
    }

    v29 = *(v28 + 8);
    v10 = v82;
    v29(v17, v82);
  }

  v94 = v33;
  swift_errorRetain();
  v39 = sub_10015DA04(&unk_1006C9B40, &unk_1005397F0);
  v80 = sub_1000054A4(0, &unk_1006C4560, NSError_ptr);
  v81 = v39;
  if (!swift_dynamicCast())
  {
  }

  v40 = v93[0];
  if ([v93[0] code] != 516)
  {
  }

  v88 = 0;
  v71 = v20;
  v82 = v10;

  v76 = v40;
  v77 = ICAttachmentNameMaxLength;
  v73 = v28;
  v75 = v28 + 8;
  for (i = 2; ; ++i)
  {
    v90 = i;
    v91 = 32;
    v92 = 0xE100000000000000;
    v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v42);

    v43 = v91;
    v44 = v92;
    v45 = String._bridgeToObjectiveC()();
    v46 = [v45 ic_sanitizedFilenameString];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = String.count.getter();
    v51 = __OFSUB__(v77, v50);
    result = v77 - v50;
    if (v51)
    {
      break;
    }

    sub_10042D890(result, v47, v49);

    v53 = static String._fromSubstring(_:)();
    v55 = v54;

    if (v85)
    {
      v91 = v53;
      v92 = v55;

      v56._countAndFlagsBits = v43;
      v56._object = v44;
      String.append(_:)(v56);

      v57 = v71;
      URL.appendingPathComponent(_:isDirectory:)();

      v58 = String._bridgeToObjectiveC()();
      v59 = [v58 ic_sanitizedFilenameString];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v78;
      URL.appendingPathExtension(_:)();

      v61 = v82;
      v29(v57, v82);
      swift_getObjectType();
      v62 = v88;
      dispatch thunk of ICFileManaging.createDirectory(at:withIntermediateDirectories:)();
      v63 = v62;
      if (!v62)
      {

        (*(v73 + 32))(v72, v60, v61);
      }

      v29(v60, v61);
    }

    else
    {
      v91 = v53;
      v92 = v55;

      v64._countAndFlagsBits = v43;
      v64._object = v44;
      String.append(_:)(v64);

      v65 = v74;
      URL.appendingPathComponent(_:isDirectory:)();

      swift_getObjectType();
      v66 = v88;
      dispatch thunk of ICFileManaging.createDirectory(at:withIntermediateDirectories:)();
      v63 = v66;
      if (!v66)
      {
        v70 = v82;

        (*(v73 + 32))(v72, v65, v70);
      }

      v29(v65, v82);
    }

    v67 = v76;
    v91 = v63;
    swift_errorRetain();
    if (!swift_dynamicCast() || (v68 = v90, v69 = [v90 code], v68, v69 != 516))
    {
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    v88 = 0;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100423514(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006BC948 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10002597C(v10, qword_1006C81C0);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v3 + 88))(v5, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, v18, v13, v14, 2u);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_1004237A4(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v56 = a3;
  v54 = a2;
  v6 = sub_10015DA04(&qword_1006BE790, &qword_100536880);
  v53 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  NSProgress.throwIfCancelled()();
  if (!v16)
  {
    v55 = a4;
    v48 = v13;
    v49 = v6;
    v50 = v10;
    v51 = v8;
    v57 = v15;
    v52 = 0;
    v17 = a1[3];
    v18 = a1[4];
    sub_10017CC60(a1, v17);
    v19 = (*(v18 + 16))(v17, v18);
    v21 = a1;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v23 = [objc_opt_self() mainBundle];
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 localizedStringForKey:v24 value:0 table:0];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v27;

      v19 = v26;
    }

    v29 = v51;
    v28 = v52;
    v30 = v60;
    if (*(v60 + 24))
    {
      v31 = 0;
    }

    else
    {
      v31 = 0x746E756F636361;
    }

    if (*(v60 + 24))
    {
      v32 = 0;
    }

    else
    {
      v32 = 0xE700000000000000;
    }

    sub_100422D34(v19, v22, v56, v31, v32, v57);
    if (v28)
    {
    }

    else
    {

      if (*(v30 + 25) != 1)
      {
        v40 = *(v30 + 96);
        v52 = *(v30 + 88);
        v56 = v40;
        v41 = v48;
        URL.appendingPathComponent(_:isDirectory:)();
        v42 = v21[3];
        v43 = v21[4];
        sub_10017CC60(v21, v42);
        v44 = *(v30 + 40);
        v58[0] = *(v30 + 24);
        v58[1] = v44;
        v59[0] = *(v30 + 56);
        *(v59 + 13) = *(v30 + 69);
        v45 = (*(v43 + 96))(v58, v42, v43);
        v47 = v46;
        swift_getObjectType();
        dispatch thunk of ICFileManaging.createFile(at:contents:)();
        (*(v50 + 8))(v41, v9);
        sub_10019671C(v45, v47);
      }

      v52 = v9;
      v33 = *(v54 + 16);
      v34 = v49;
      if (v33)
      {
        v35 = v53 + 16;
        v56 = *(v53 + 16);
        v36 = v54 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v54 = *(v53 + 72);
        v37 = (v53 + 8);
        do
        {
          v38 = v35;
          v56(v29, v36, v34);
          v39 = objc_autoreleasePoolPush();
          sub_100422264(v29, v57, v55);
          objc_autoreleasePoolPop(v39);
          (*v37)(v29, v34);
          v36 += v54;
          --v33;
          v35 = v38;
        }

        while (v33);
      }

      (*(v50 + 8))(v57, v52);
    }
  }
}

void sub_100423CD0(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v46 = a2;
  v47 = a3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  NSProgress.throwIfCancelled()();
  if (!v15)
  {
    v40 = v12;
    v41 = a4;
    v44 = 0;
    v45 = v14;
    v42 = v9;
    v43 = v8;
    v16 = a1[3];
    v17 = a1[4];
    sub_10017CC60(a1, v16);
    v18 = (*(v17 + 16))(v16, v17);
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v21 = [objc_opt_self() mainBundle];
      v22 = String._bridgeToObjectiveC()();
      v23 = [v21 localizedStringForKey:v22 value:0 table:0];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v25;

      v18 = v24;
    }

    if (*(v5 + 24))
    {
      v26 = 0;
    }

    else
    {
      v26 = 0x746E756F636361;
    }

    if (*(v5 + 24))
    {
      v27 = 0;
    }

    else
    {
      v27 = 0xE700000000000000;
    }

    v28 = v44;
    v29 = v45;
    sub_100422D34(v18, v20, v47, v26, v27, v45);
    if (v28)
    {
    }

    else
    {

      if (*(v5 + 25) == 1)
      {
        v31 = v41;
        v32 = v46;
      }

      else
      {
        v47 = *(v5 + 96);
        v33 = v40;
        URL.appendingPathComponent(_:isDirectory:)();
        v34 = a1[3];
        v35 = a1[4];
        sub_10017CC60(a1, v34);
        v36 = *(v5 + 40);
        v48[0] = *(v5 + 24);
        v48[1] = v36;
        v49[0] = *(v5 + 56);
        *(v49 + 13) = *(v5 + 69);
        v37 = (*(v35 + 96))(v48, v34, v35);
        v39 = v38;
        swift_getObjectType();
        dispatch thunk of ICFileManaging.createFile(at:contents:)();
        v31 = v41;
        v32 = v46;
        (*(v42 + 8))(v33, v43);
        v30 = sub_10019671C(v37, v39);
        v29 = v45;
      }

      v50 = v32;
      __chkstk_darwin(v30);
      *(&v40 - 4) = v5;
      *(&v40 - 3) = v29;
      *(&v40 - 2) = v31;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for ICObjectReferences();
      type metadata accessor for Array();
      swift_getWitnessTable();
      Sequence.forEach(_:)();
      (*(v42 + 8))(v29, v43);
    }
  }
}

void sub_1004241B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void *, uint64_t, uint64_t, uint64_t), const char *a7)
{
  v23 = a5;
  dispatch thunk of ICObjectProviding.object(for:)();
  if (v7)
  {
    *v23 = v7;
    return;
  }

  if (v18)
  {
    sub_10015DA04(&qword_1006BF338, &unk_10054A770);
    if (swift_dynamicCast())
    {
      if (*(&v20 + 1))
      {
        sub_100192680(&v19, v22);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        type metadata accessor for ICObjectReferences();
        v12 = ICObjectReferences.children.getter();
        a6(v22, v12, a3, a4);
        sub_100009F60(v22);

        return;
      }
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }
  }

  else
  {
    sub_1000073B4(v17, &qword_1006BE7A0, &unk_100535E20);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
  }

  sub_1000073B4(&v19, &qword_1006C82A8, &qword_10054A768);
  if (qword_1006BC940 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10002597C(v13, qword_1006C81A8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, a7, v16, 2u);
  }
}

void sub_100424468(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v56 = a3;
  v54 = a2;
  v6 = sub_10015DA04(&qword_1006BE790, &qword_100536880);
  v53 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  NSProgress.throwIfCancelled()();
  if (!v16)
  {
    v55 = a4;
    v48 = v13;
    v49 = v6;
    v50 = v10;
    v51 = v8;
    v57 = v15;
    v52 = 0;
    v17 = a1[3];
    v18 = a1[4];
    sub_10017CC60(a1, v17);
    v19 = (*(v18 + 16))(v17, v18);
    v21 = a1;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v23 = [objc_opt_self() mainBundle];
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 localizedStringForKey:v24 value:0 table:0];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v27;

      v19 = v26;
    }

    v29 = v51;
    v28 = v52;
    v30 = v60;
    if (*(v60 + 24))
    {
      v31 = 0;
    }

    else
    {
      v31 = 0x7265646C6F66;
    }

    if (*(v60 + 24))
    {
      v32 = 0;
    }

    else
    {
      v32 = 0xE600000000000000;
    }

    sub_100422D34(v19, v22, v56, v31, v32, v57);
    if (v28)
    {
    }

    else
    {

      if (*(v30 + 25) != 1)
      {
        v40 = *(v30 + 96);
        v52 = *(v30 + 88);
        v56 = v40;
        v41 = v48;
        URL.appendingPathComponent(_:isDirectory:)();
        v42 = v21[3];
        v43 = v21[4];
        sub_10017CC60(v21, v42);
        v44 = *(v30 + 40);
        v58[0] = *(v30 + 24);
        v58[1] = v44;
        v59[0] = *(v30 + 56);
        *(v59 + 13) = *(v30 + 69);
        v45 = (*(v43 + 96))(v58, v42, v43);
        v47 = v46;
        swift_getObjectType();
        dispatch thunk of ICFileManaging.createFile(at:contents:)();
        (*(v50 + 8))(v41, v9);
        sub_10019671C(v45, v47);
      }

      v52 = v9;
      v33 = *(v54 + 16);
      v34 = v49;
      if (v33)
      {
        v35 = v53 + 16;
        v56 = *(v53 + 16);
        v36 = v54 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v54 = *(v53 + 72);
        v37 = (v53 + 8);
        do
        {
          v38 = v35;
          v56(v29, v36, v34);
          v39 = objc_autoreleasePoolPush();
          sub_100422264(v29, v57, v55);
          objc_autoreleasePoolPop(v39);
          (*v37)(v29, v34);
          v36 += v54;
          --v33;
          v35 = v38;
        }

        while (v33);
      }

      (*(v50 + 8))(v57, v52);
    }
  }
}

void sub_100424990(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v46 = a2;
  v47 = a3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  NSProgress.throwIfCancelled()();
  if (!v15)
  {
    v40 = v12;
    v41 = a4;
    v44 = 0;
    v45 = v14;
    v42 = v9;
    v43 = v8;
    v16 = a1[3];
    v17 = a1[4];
    sub_10017CC60(a1, v16);
    v18 = (*(v17 + 16))(v16, v17);
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v21 = [objc_opt_self() mainBundle];
      v22 = String._bridgeToObjectiveC()();
      v23 = [v21 localizedStringForKey:v22 value:0 table:0];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v25;

      v18 = v24;
    }

    if (*(v5 + 24))
    {
      v26 = 0;
    }

    else
    {
      v26 = 0x7265646C6F66;
    }

    if (*(v5 + 24))
    {
      v27 = 0;
    }

    else
    {
      v27 = 0xE600000000000000;
    }

    v28 = v44;
    v29 = v45;
    sub_100422D34(v18, v20, v47, v26, v27, v45);
    if (v28)
    {
    }

    else
    {

      if (*(v5 + 25) == 1)
      {
        v31 = v41;
        v32 = v46;
      }

      else
      {
        v47 = *(v5 + 96);
        v33 = v40;
        URL.appendingPathComponent(_:isDirectory:)();
        v34 = a1[3];
        v35 = a1[4];
        sub_10017CC60(a1, v34);
        v36 = *(v5 + 40);
        v48[0] = *(v5 + 24);
        v48[1] = v36;
        v49[0] = *(v5 + 56);
        *(v49 + 13) = *(v5 + 69);
        v37 = (*(v35 + 96))(v48, v34, v35);
        v39 = v38;
        swift_getObjectType();
        dispatch thunk of ICFileManaging.createFile(at:contents:)();
        v31 = v41;
        v32 = v46;
        (*(v42 + 8))(v33, v43);
        v30 = sub_10019671C(v37, v39);
        v29 = v45;
      }

      v50 = v32;
      __chkstk_darwin(v30);
      *(&v40 - 4) = v5;
      *(&v40 - 3) = v29;
      *(&v40 - 2) = v31;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for ICObjectReferences();
      type metadata accessor for Array();
      swift_getWitnessTable();
      Sequence.forEach(_:)();
      (*(v42 + 8))(v29, v43);
    }
  }
}

void sub_100424E74(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v133 = a3;
  v134 = a2;
  v136 = a1;
  v131 = type metadata accessor for NoteMetadata(0);
  __chkstk_darwin(v131);
  v132 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for URL();
  v135 = *(v138 - 8);
  v6 = __chkstk_darwin(v138);
  v130 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v121 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v121 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v121 - v15;
  __chkstk_darwin(v14);
  v18 = &v121 - v17;
  v19 = sub_10015DA04(&qword_1006BE790, &qword_100536880);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v121 - v24;
  NSProgress.throwIfCancelled()();
  if (v27)
  {
    return;
  }

  v121 = v13;
  v125 = v16;
  v129 = v18;
  v122 = v10;
  v123 = v20;
  v124 = v23;
  v143 = v19;
  v137 = 0;
  v28 = v139;
  v128 = *(v139 + 25);
  v29 = v138;
  v30 = v136;
  if (v128 == 1)
  {
    sub_1002EC1FC(v136, v144);
    sub_10015DA04(&qword_1006BF338, &unk_10054A770);
    sub_1000054A4(0, &qword_1006C1420, ICNote_ptr);
    v26 = swift_dynamicCast();
    if (v26)
    {
      v31 = v147;
      v32 = [v147 isPasswordProtectedAndLocked];

      if (v32)
      {
        return;
      }
    }
  }

  v33 = v28;
  v126 = a4;
  __chkstk_darwin(v26);
  v34 = &v121;
  *(&v121 - 2) = type metadata accessor for ICModernObjectProvider();
  *(&v121 - 1) = sub_10042DCA4(&qword_1006C8298, &type metadata accessor for ICModernObjectProvider, &protocol conformance descriptor for ICModernObjectProvider);
  swift_getKeyPath();
  v35 = v134;
  v36 = *(v134 + 16);
  v127 = v36;
  if (v36)
  {
    v144[0] = _swiftEmptyArrayStorage;
    sub_1001895A4(0, v36, 0);
    v37 = v144[0];
    v38 = *(v123 + 16);
    v34 = (v35 + ((*(v123 + 80) + 32) & ~*(v123 + 80)));
    v140 = *(v123 + 72);
    v141 = v38;
    isa = (v123 + 16);
    v39 = (v123 + 8);
    do
    {
      v40 = v143;
      v141(v25, v34, v143);
      swift_getAtKeyPath();
      v41 = v147;
      (*v39)(v25, v40);
      v144[0] = v37;
      v43 = v37[2];
      v42 = v37[3];
      if (v43 >= v42 >> 1)
      {
        sub_1001895A4((v42 > 1), v43 + 1, 1);
        v37 = v144[0];
      }

      v37[2] = v43 + 1;
      v37[v43 + 4] = v41;
      v34 = (v34 + v140);
      --v36;
    }

    while (v36);

    v29 = v138;
    v46 = v139;
    v47 = v135;
    v30 = v136;
    v48 = v37[2];
    if (v48)
    {
LABEL_11:
      v49 = 0;
      v50 = v37 + 4;
      while (1)
      {
        v51 = *v50++;
        v52 = __OFADD__(v49, v51);
        v49 += v51;
        if (v52)
        {
          break;
        }

        if (!--v48)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
    v47 = v135;
    v46 = v33;
    v48 = _swiftEmptyArrayStorage[2];
    if (v48)
    {
      goto LABEL_11;
    }
  }

  v49 = 0;
LABEL_17:

  if (__OFADD__(v49, 1))
  {
    __break(1u);
    goto LABEL_59;
  }

  v53.super.isa = NSProgress.addingChild(totalUnitCount:pendingUnitCount:)(v49 + 1, 1).super.isa;
  if (v128 == 1)
  {
    if (*(v46 + 24))
    {
      v54 = v30[3];
      v55 = v30[4];
      sub_10017CC60(v30, v54);
      v56 = (*(v55 + 8))(v54, v55);
      v57 = v121;
      v58 = v137;
      sub_100422D34(v56, v59, v133, 0, 0xE000000000000000, v121);
      v137 = v58;
      if (v58)
      {

LABEL_33:

        return;
      }

      isa = v53.super.isa;

      v73 = v129;
      (*(v47 + 32))(v129, v57, v29);
      v67 = 0xE400000000000000;
      v65 = 1702129518;
      goto LABEL_36;
    }

    v67 = 0xE400000000000000;
    v65 = 1702129518;
    v75 = v137;
    v76 = v133;
    v73 = v129;
    v74 = v125;
    goto LABEL_32;
  }

  v60 = v30[3];
  v61 = v30[4];
  sub_10017CC60(v30, v60);
  (*(v61 + 16))(v60, v61);
  if (v62)
  {
    v63 = String._bridgeToObjectiveC()();

    v64 = [v63 ic_sanitizedFilenameString];

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    v68 = HIBYTE(v67) & 0xF;
    if ((v67 & 0x2000000000000000) == 0)
    {
      v68 = v65 & 0xFFFFFFFFFFFFLL;
    }

    if (v68)
    {
      goto LABEL_28;
    }
  }

  v69 = [objc_opt_self() mainBundle];
  v70 = String._bridgeToObjectiveC()();
  v71 = [v69 localizedStringForKey:v70 value:0 table:0];

  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v72;

LABEL_28:
  v73 = v129;
  v74 = v125;
  if (*(v46 + 24))
  {
    isa = v53.super.isa;
    (*(v47 + 16))(v129, v133, v29);
LABEL_36:
    v144[0] = v65;
    v144[1] = v67;
    v77._countAndFlagsBits = 6581550;
    v77._object = 0xE300000000000000;
    String.append(_:)(v77);
    goto LABEL_37;
  }

  v75 = v137;
  v76 = v133;
LABEL_32:
  sub_100422D34(v65, v67, v76, 1702129518, 0xE400000000000000, v74);
  v137 = v75;
  if (v75)
  {
    goto LABEL_33;
  }

  isa = v53.super.isa;

  (*(v47 + 32))(v73, v74, v29);
LABEL_37:
  v78 = v122;
  URL.appendingPathComponent(_:isDirectory:)();

  v79 = v30[3];
  v80 = v30[4];
  sub_10017CC60(v30, v79);
  v81 = *(v46 + 40);
  v145[0] = *(v46 + 24);
  v145[1] = v81;
  *v146 = *(v46 + 56);
  *&v146[13] = *(v46 + 69);
  v82 = v137;
  v83 = (*(v80 + 96))(v145, v79, v80);
  if (v82)
  {
    v85 = *(v135 + 8);
    v86 = v138;
    v85(v78, v138);

    v85(v73, v86);
    return;
  }

  v87 = v83;
  v88 = v84;
  ObjectType = swift_getObjectType();
  dispatch thunk of ICFileManaging.createFile(at:contents:)();
  v137 = 0;
  sub_10019671C(v87, v88);
  v90 = v138;
  if (v128 != 1)
  {
    v25 = v124;
    goto LABEL_44;
  }

  v141 = ObjectType;
  sub_1002EC1FC(v30, v144);
  sub_10015DA04(&qword_1006BF338, &unk_10054A770);
  sub_1000054A4(0, &qword_1006C1420, ICNote_ptr);
  v91 = swift_dynamicCast();
  v25 = v124;
  if (!v91)
  {
    goto LABEL_44;
  }

  v30 = v147;
  v92 = v132;
  sub_100247E00(v30, v132);
  sub_10042DCA4(&qword_1006BF4D0, type metadata accessor for NoteMetadata, &unk_100538468);
  v93 = v137;
  v44 = Message.serializedData(partial:)();
  v34 = v93;
  if (v93)
  {

    sub_10042DE48(v92, type metadata accessor for NoteMetadata);
    v94 = *(v135 + 8);
    v94(v122, v90);
    v94(v129, v90);
    return;
  }

LABEL_55:
  v116 = v44;
  v117 = v45;
  v118 = v130;
  URL.appendingPathComponent(_:isDirectory:)();
  v140 = v117;
  dispatch thunk of ICFileManaging.createFile(at:contents:)();
  v137 = v34;
  if (v34)
  {

    sub_10019671C(v116, v140);
    v119 = *(v135 + 8);
    v120 = v138;
    v119(v118, v138);
    sub_10042DE48(v132, type metadata accessor for NoteMetadata);
    v119(v122, v120);
    v119(v129, v120);
    return;
  }

  sub_10019671C(v116, v140);

  (*(v135 + 8))(v118, v138);
  sub_10042DE48(v132, type metadata accessor for NoteMetadata);
LABEL_44:
  v95 = v145[0];
  v96 = isa;
  v97 = [(objc_class *)isa completedUnitCount];
  v98 = v143;
  v99 = v134;
  if (__OFADD__(v97, 1))
  {
LABEL_59:
    __break(1u);
    return;
  }

  [(objc_class *)v96 setCompletedUnitCount:v97 + 1];
  v100 = v96;
  if (v127)
  {
    v101 = v123 + 16;
    v102 = *(v123 + 16);
    v103 = v99 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
    v104 = *(v123 + 72);
    v105 = (v123 + 8);
    do
    {
      v107 = v101;
      v102(v25, v103, v98);
      v108 = objc_autoreleasePoolPush();
      v109 = v25;
      v110 = v108;
      if (v95)
      {
        v106 = v137;
        sub_10042B25C(v109, v129, v100);
        if (v106)
        {
LABEL_51:
          v111 = v143;
          objc_autoreleasePoolPop(v110);

          (*v105)(v124, v111);
          v112 = *(v135 + 8);
          v113 = v138;
          v112(v122, v138);
          v112(v129, v113);
          return;
        }
      }

      else
      {
        v106 = v137;
        sub_100422264(v109, v129, v100);
        if (v106)
        {
          goto LABEL_51;
        }
      }

      v137 = v106;
      v98 = v143;
      objc_autoreleasePoolPop(v110);
      v25 = v124;
      (*v105)(v124, v98);
      v103 += v104;
      --v127;
      v101 = v107;
    }

    while (v127);
  }

  sub_10042C674([v126 completedUnitCount]);

  v114 = *(v135 + 8);
  v115 = v138;
  v114(v122, v138);
  v114(v129, v115);
}

void sub_100425D18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v128 = a3;
  v129 = a2;
  isa = *v5;
  v131 = a1;
  v127 = type metadata accessor for NoteMetadata(0);
  __chkstk_darwin(v127);
  v8 = &v116[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for URL();
  v132 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v116[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v15 = &v116[-v14];
  v16 = __chkstk_darwin(v13);
  v18 = &v116[-v17];
  v19 = __chkstk_darwin(v16);
  v21 = &v116[-v20];
  __chkstk_darwin(v19);
  v23 = &v116[-v22];
  NSProgress.throwIfCancelled()();
  if (!v25)
  {
    v120 = v21;
    v122 = v18;
    v118 = v12;
    v119 = v8;
    v125 = a4;
    v124 = v23;
    v133 = 0;
    v126 = v5;
    v26 = *(v5 + 25);
    v27 = isa;
    v28 = v131;
    v29 = v15;
    if (v26 != 1 || (sub_1002EC1FC(v131, v134), sub_10015DA04(&qword_1006BF338, &unk_10054A770), sub_1000054A4(0, &qword_1006C1420, ICNote_ptr), v24 = swift_dynamicCast(), (v24 & 1) == 0) || (v30 = v137, v31 = [v137 isPasswordProtectedAndLocked], v30, (v31 & 1) == 0))
    {
      v32 = v28;
      v121 = v29;
      v123 = v9;
      v134[0] = v129;
      __chkstk_darwin(v24);
      v33 = *(v27 + 10);
      v34 = *(v27 + 11);
      *&v116[-16] = v33;
      *&v116[-8] = v34;
      KeyPath = swift_getKeyPath();
      v36 = __chkstk_darwin(KeyPath);
      v37 = &v116[-48];
      *&v116[-32] = v33;
      *&v116[-24] = v34;
      *&v116[-16] = v36;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for ICObjectReferences();
      v38 = type metadata accessor for Array();
      WitnessTable = swift_getWitnessTable();
      v40 = v133;
      v42 = sub_10041BF14(sub_10042DDFC, &v116[-48], v38, &type metadata for Int, &type metadata for Never, WitnessTable, &protocol witness table for Never, v41);
      v133 = v40;

      v44 = v42;
      v45 = *(v42 + 16);
      if (v45)
      {
        v46 = 0;
        v47 = (v42 + 32);
        v48 = v126;
        while (1)
        {
          v49 = *v47++;
          v50 = __OFADD__(v46, v49);
          v46 = (v46 + v49);
          if (v50)
          {
            break;
          }

          if (!--v45)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      v46 = 0;
      v48 = v126;
LABEL_11:

      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      v51 = 1702129518;
      isa = NSProgress.addingChild(totalUnitCount:pendingUnitCount:)(v46 + 1, 1).super.isa;
      v117 = v26;
      if (v26 == 1)
      {
        if (v48[24] == 1)
        {
          v52 = v32[3];
          v53 = v32[4];
          sub_10017CC60(v32, v52);
          v54 = (*(v53 + 8))(v52, v53);
          v55 = v120;
          v56 = v133;
          sub_100422D34(v54, v57, v128, 0, 0xE000000000000000, v120);
          v133 = v56;
          if (v56)
          {

LABEL_27:

            return;
          }

          v122 = v38;
          v75 = v32;

          v77 = v55;
          v72 = v124;
          (*(v132 + 32))(v124, v77, v123);
          v65 = 0xE400000000000000;
          goto LABEL_30;
        }

        v65 = 0xE400000000000000;
        v63 = 1702129518;
        v71 = v132;
        v76 = v133;
        v72 = v124;
        v73 = v128;
        v74 = v122;
        goto LABEL_26;
      }

      v58 = v32[3];
      v59 = v32[4];
      sub_10017CC60(v32, v58);
      (*(v59 + 16))(v58, v59);
      if (v60)
      {
        v61 = String._bridgeToObjectiveC()();

        v62 = [v61 ic_sanitizedFilenameString];

        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        v66 = HIBYTE(v65) & 0xF;
        if ((v65 & 0x2000000000000000) == 0)
        {
          v66 = v63 & 0xFFFFFFFFFFFFLL;
        }

        if (v66)
        {
          goto LABEL_22;
        }
      }

      v67 = [objc_opt_self() mainBundle];
      v68 = String._bridgeToObjectiveC()();
      v69 = [v67 localizedStringForKey:v68 value:0 table:0];

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v70;

LABEL_22:
      v71 = v132;
      v72 = v124;
      v73 = v128;
      v74 = v122;
      if (v48[24])
      {
        v122 = v38;
        v75 = v32;
        (*(v132 + 16))(v124, v128, v123);
        v51 = v63;
LABEL_30:
        v134[0] = v51;
        v134[1] = v65;
        v78._countAndFlagsBits = 6581550;
        v78._object = 0xE300000000000000;
        String.append(_:)(v78);
        goto LABEL_31;
      }

      v76 = v133;
LABEL_26:
      sub_100422D34(v63, v65, v73, 1702129518, 0xE400000000000000, v74);
      v133 = v76;
      if (v76)
      {
        goto LABEL_27;
      }

      v122 = v38;
      v75 = v32;
      (*(v71 + 32))(v72, v74, v123);

LABEL_31:
      v79 = v121;
      URL.appendingPathComponent(_:isDirectory:)();

      v80 = v126;
      v81 = *(v126 + 88);
      v131 = *(v126 + 96);
      v82 = v72;
      v83 = v75;
      v84 = v75[3];
      v85 = v75[4];
      sub_10017CC60(v75, v84);
      v86 = *(v80 + 40);
      v135[0] = *(v80 + 24);
      v135[1] = v86;
      v136[0] = *(v80 + 56);
      *(v136 + 13) = *(v80 + 69);
      v87 = v133;
      v88 = (*(v85 + 96))(v135, v84, v85);
      if (v87)
      {
        v90 = *(v132 + 8);
        v91 = v123;
        v90(v79, v123);

        v90(v82, v91);
        return;
      }

      v92 = v88;
      v93 = v89;
      v94 = v83;
      ObjectType = swift_getObjectType();
      dispatch thunk of ICFileManaging.createFile(at:contents:)();
      v133 = 0;
      v26 = v81;
      sub_10019671C(v92, v93);
      v96 = v132;
      if (v117 != 1)
      {
        v101 = v125;
        v46 = isa;
        goto LABEL_43;
      }

      v128 = ObjectType;
      sub_1002EC1FC(v94, v134);
      sub_10015DA04(&qword_1006BF338, &unk_10054A770);
      sub_1000054A4(0, &qword_1006C1420, ICNote_ptr);
      v97 = swift_dynamicCast();
      v46 = isa;
      if ((v97 & 1) == 0)
      {
LABEL_42:
        v101 = v125;
LABEL_43:
        v106 = [(objc_class *)v46 completedUnitCount];
        v107 = v46;
        v108 = v129;
        if (!__OFADD__(v106, 1))
        {
          v109 = [(objc_class *)v107 setCompletedUnitCount:v106 + 1];
          v134[0] = v108;
          __chkstk_darwin(v109);
          v110 = v124;
          *&v116[-32] = v126;
          *&v116[-24] = v110;
          *&v116[-16] = v107;
          swift_getWitnessTable();
          v111 = v133;
          Sequence.forEach(_:)();
          v133 = v111;
          if (v111)
          {
            v112 = *(v96 + 8);
            v113 = v123;
            v112(v121, v123);

            v112(v110, v113);
          }

          else
          {
            sub_10042C78C([v101 completedUnitCount]);

            v114 = *(v96 + 8);
            v115 = v123;
            v114(v121, v123);
            v114(v110, v115);
          }

          return;
        }

LABEL_49:
        __break(1u);
        return;
      }

      v48 = v137;
      v32 = v119;
      sub_100247E00(v48, v119);
      sub_10042DCA4(&qword_1006BF4D0, type metadata accessor for NoteMetadata, &unk_100538468);
      v98 = v133;
      v44 = Message.serializedData(partial:)();
      v37 = v98;
      if (v98)
      {

        sub_10042DE48(v32, type metadata accessor for NoteMetadata);
        v99 = *(v132 + 8);
        v100 = v123;
        v99(v121, v123);
        v99(v124, v100);
        return;
      }

LABEL_39:
      v102 = v44;
      v103 = v43;
      v133 = v26;
      URL.appendingPathComponent(_:isDirectory:)();
      dispatch thunk of ICFileManaging.createFile(at:contents:)();
      v133 = v37;
      if (v37)
      {
        sub_10019671C(v102, v103);

        v104 = *(v132 + 8);
        v105 = v123;
        v104(v118, v123);
        sub_10042DE48(v32, type metadata accessor for NoteMetadata);
        v104(v121, v105);
        v104(v124, v105);
        return;
      }

      sub_10019671C(v102, v103);

      v96 = v132;
      (*(v132 + 8))(v118, v123);
      sub_10042DE48(v32, type metadata accessor for NoteMetadata);
      goto LABEL_42;
    }
  }
}

void sub_100426A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t), const char *a6)
{
  type metadata accessor for ICModernObjectProvider();
  sub_10042DCA4(&qword_1006C8298, &type metadata accessor for ICModernObjectProvider, &protocol conformance descriptor for ICModernObjectProvider);
  dispatch thunk of ICObjectProviding.object(for:)();
  if (!v6)
  {
    if (v16[3])
    {
      sub_10015DA04(&qword_1006BF338, &unk_10054A770);
      if (swift_dynamicCast())
      {
        if (*(&v18 + 1))
        {
          sub_100192680(&v17, v20);
          sub_10015DA04(&qword_1006BE790, &qword_100536880);
          v11 = ICObjectReferences.children.getter();
          a5(v20, v11, a3, a4);
          sub_100009F60(v20);

          return;
        }
      }

      else
      {
        v19 = 0;
        v17 = 0u;
        v18 = 0u;
      }
    }

    else
    {
      sub_1000073B4(v16, &qword_1006BE7A0, &unk_100535E20);
      v17 = 0u;
      v18 = 0u;
      v19 = 0;
    }

    sub_1000073B4(&v17, &qword_1006C82A8, &qword_10054A768);
    if (qword_1006BC940 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10002597C(v12, qword_1006C81A8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, a6, v15, 2u);
    }
  }
}

void sub_100426CA4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v324 = a3;
  v316 = a2;
  v322 = a1;
  v5 = sub_10015DA04(&qword_1006BCC20, &qword_100531F40);
  v6 = __chkstk_darwin(v5 - 8);
  v306 = &v296 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v310 = &v296 - v8;
  v317 = sub_10015DA04(&qword_1006BE790, &qword_100536880);
  v313 = *(v317 - 8);
  v9 = __chkstk_darwin(v317);
  v308 = &v296 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v318 = &v296 - v11;
  v309 = type metadata accessor for String.Encoding();
  v311 = *(v309 - 8);
  __chkstk_darwin(v309);
  v307 = &v296 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v319 = v13;
  v320 = v14;
  v15 = __chkstk_darwin(v13);
  v303 = &v296 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v312 = &v296 - v18;
  v19 = __chkstk_darwin(v17);
  v314 = &v296 - v20;
  v21 = __chkstk_darwin(v19);
  *&v304 = &v296 - v22;
  v23 = __chkstk_darwin(v21);
  v305 = &v296 - v24;
  v25 = __chkstk_darwin(v23);
  v315 = &v296 - v26;
  v27 = __chkstk_darwin(v25);
  v321 = &v296 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v296 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v296 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v296 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v296 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v296 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v296 - v45;
  __chkstk_darwin(v44);
  v48 = &v296 - v47;
  NSProgress.throwIfCancelled()();
  if (v49)
  {
    return;
  }

  v301 = v40;
  v302 = v37;
  v297 = v31;
  v298 = v34;
  v299 = v43;
  v300 = v46;
  v331 = 0;
  v323 = a4;
  if (*(v325 + 24) == 1)
  {
    v50 = *(v325 + 25);
    v51 = v322;
    v52 = v48;
    if (v50 == 2)
    {
      sub_1002EC1FC(v322, v328);
      sub_10015DA04(&qword_1006BF338, &unk_10054A770);
      sub_1000054A4(0, &unk_1006C2C90, ICAttachment_ptr);
      if (swift_dynamicCast())
      {
        v53 = v326;
        v54 = [v326 isTable];

        if (v54)
        {
          return;
        }
      }
    }

    sub_1002EC1FC(v51, v328);
    v55 = sub_10015DA04(&qword_1006BF338, &unk_10054A770);
    v56 = sub_1000054A4(0, &unk_1006C2C90, ICAttachment_ptr);
    if (swift_dynamicCast())
    {
      v57 = v326;
      v58 = [v326 parentAttachment];

      if (v58)
      {

        return;
      }
    }

    v312 = v56;
    v66 = *(v51 + 24);
    v65 = *(v51 + 32);
    sub_10017CC60(v51, v66);
    v315 = (*(v65 + 88))(v66, v65);
    v68 = v67;
    v69 = *(v51 + 24);
    v70 = *(v51 + 32);
    sub_10017CC60(v51, v69);
    v71 = (*(v70 + 80))(v69, v70);
    LODWORD(v321) = v50;
    v314 = v55;
    if (v72 >> 60 != 15)
    {
      if (v68)
      {
        v310 = *(v325 + 96);
        v73 = v71;
        v74 = v72;
        swift_getObjectType();

        URL.appendingPathComponent(_:isDirectory:)();
        v315 = v68;

        v75 = v331;
        dispatch thunk of ICFileManaging.createFile(at:contents:)();
        if (v75)
        {
          v310 = v74;
          v331 = v73;
          (*(v320 + 8))(v52, v319);
          if (qword_1006BC940 != -1)
          {
            goto LABEL_149;
          }

          while (1)
          {
            v76 = type metadata accessor for Logger();
            sub_10002597C(v76, qword_1006C81A8);
            swift_errorRetain();
            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.error.getter();

            v79 = os_log_type_enabled(v77, v78);
            v68 = v315;
            if (v79)
            {
              v80 = swift_slowAlloc();
              v81 = swift_slowAlloc();
              v328[0] = v81;
              *v80 = 136315138;
              swift_getErrorValue();
              v82 = Error.localizedDescription.getter();
              v84 = sub_100009D88(v82, v83, v328);

              *(v80 + 4) = v84;
              v51 = v322;
              _os_log_impl(&_mh_execute_header, v77, v78, "Cannot export attachment fallback PDF file — skipping {error: %s}", v80, 0xCu);
              sub_100009F60(v81);
              v68 = v315;

              sub_1001C60E4(v331, v310);
            }

            else
            {
              sub_1001C60E4(v331, v310);
            }

            v120 = 0;
            v118 = v323;
            v119 = v317;
LABEL_56:
            v113 = v318;
LABEL_57:
            if (v321 != 1)
            {
              goto LABEL_67;
            }

            sub_1002EC1FC(v51, v328);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_67;
            }

            v177 = v326;
            if (([v326 isAudio] & 1) == 0)
            {

LABEL_67:

              goto LABEL_68;
            }

            v331 = v120;
            v178 = [v177 attachmentModel];
            objc_opt_self();
            v179 = swift_dynamicCastObjCClass();
            v180 = v177;
            if (v179)
            {
              break;
            }

LABEL_119:
            v120 = v331;
LABEL_68:
            v331 = v120;
            v196 = [v118 completedUnitCount];
            if (!__OFADD__(v196, 1))
            {
              [v118 setCompletedUnitCount:v196 + 1];
              v197 = *(v316 + 16);
              if (v197)
              {
                v198 = v313 + 16;
                v322 = *(v313 + 16);
                v199 = v316 + ((*(v313 + 80) + 32) & ~*(v313 + 80));
                v321 = *(v313 + 72);
                v200 = (v313 + 8);
                while (1)
                {
                  v201 = v198;
                  (v322)(v113, v199, v119);
                  v202 = v119;
                  v203 = objc_autoreleasePoolPush();
                  v204 = v331;
                  sub_100422264(v113, v324, v118);
                  v331 = v204;
                  if (v204)
                  {
                    break;
                  }

                  objc_autoreleasePoolPop(v203);
                  (*v200)(v113, v202);
                  v199 += v321;
                  --v197;
                  v118 = v323;
                  v119 = v202;
                  v198 = v201;
                  if (!v197)
                  {
                    return;
                  }
                }

                objc_autoreleasePoolPop(v203);
                (*v200)(v113, v202);
              }

              return;
            }

LABEL_148:
            __break(1u);
LABEL_149:
            swift_once();
          }

          v181 = v179;
          v314 = v180;
          v315 = v68;
          v321 = v178;
          v182 = *(v51 + 24);
          v183 = *(v51 + 32);
          sub_10017CC60(v51, v182);
          v184 = (*(v183 + 8))(v182, v183);
          v328[0] = 0x7263736E6172745FLL;
          v328[1] = 0xEF7478742E747069;
          v326 = v184;
          v327 = v185;
          v326 = String.init<A>(_:)();
          v327 = v186;
          String.append<A>(contentsOf:)();
          v187 = v324;
          URL.appendingPathComponent(_:isDirectory:)();

          v188 = [v181 audioDocument];
          if (!v188)
          {
            goto LABEL_154;
          }

          v189 = v188;
          v190 = [v188 transcriptAsPlainText];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v191 = v307;
          static String.Encoding.utf8.getter();
          v192 = String.data(using:allowLossyConversion:)();
          v159 = v193;
          v187 = v311 + 1;
          v312 = v311[1];
          v162 = (v312)(v191, v309);
          v311 = v187;
          if (v159 >> 60 == 15)
          {
LABEL_100:
            v229 = *(v322 + 24);
            v230 = *(v322 + 32);
            sub_10017CC60(v322, v229);
            v231 = (*(v230 + 8))(v229, v230);
            strcpy(v328, "_summary.txt");
            BYTE5(v328[1]) = 0;
            HIWORD(v328[1]) = -5120;
            v326 = v231;
            v327 = v232;
            v326 = String.init<A>(_:)();
            v327 = v233;
            String.append<A>(contentsOf:)();
            v187 = v324;
            URL.appendingPathComponent(_:isDirectory:)();

            v234 = [v181 audioDocument];
            if (!v234)
            {
              goto LABEL_155;
            }

            v235 = v234;

            v236 = [v235 recordingSummaryAsPlainText];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            static String.Encoding.utf8.getter();
            v187 = v191;
            v237 = String.data(using:allowLossyConversion:)();
            v239 = v238;

            (v312)(v187, v309);
            v51 = v300;
            if (v239 >> 60 == 15)
            {

              v240 = v299;
LABEL_118:
              v250 = v319;
              v251 = *(v320 + 8);
              v251(v240, v319);
              v251(v51, v250);
              v118 = v323;
              goto LABEL_119;
            }

            v241 = v239 >> 62;
            v242 = v299;
            v243 = v321;
            if ((v239 >> 62) > 1)
            {
              if (v241 != 2)
              {
                goto LABEL_115;
              }

              v246 = *(v237 + 16);
              v245 = *(v237 + 24);
              v213 = __OFSUB__(v245, v246);
              v244 = v245 - v246;
              if (!v213)
              {
LABEL_112:
                if (v244 >= 1)
                {
                  swift_getObjectType();
                  v247 = v331;
                  dispatch thunk of ICFileManaging.createFile(at:contents:)();
                  v331 = v247;
                  if (v247)
                  {

                    sub_1001C60E4(v237, v239);
                    v248 = v319;
                    v249 = *(v320 + 8);
                    v249(v242, v319);
                    v249(v51, v248);
                    return;
                  }

                  goto LABEL_117;
                }

LABEL_115:

LABEL_117:
                sub_1001C60E4(v237, v239);
                v240 = v242;
                goto LABEL_118;
              }

              __break(1u);
            }

            else if (!v241)
            {
              v244 = BYTE6(v239);
              goto LABEL_112;
            }

            LODWORD(v244) = HIDWORD(v237) - v237;
            if (__OFSUB__(HIDWORD(v237), v237))
            {
              goto LABEL_153;
            }

            v244 = v244;
            goto LABEL_112;
          }

          v194 = v159 >> 62;
          if ((v159 >> 62) > 1)
          {
            if (v194 != 2)
            {
LABEL_99:
              sub_1001C60E4(v192, v159);
              goto LABEL_100;
            }

            v212 = *(v192 + 16);
            v211 = *(v192 + 24);
            v213 = __OFSUB__(v211, v212);
            v195 = v211 - v212;
            if (v213)
            {
              __break(1u);
              goto LABEL_85;
            }
          }

          else if (v194)
          {
            LODWORD(v195) = HIDWORD(v192) - v192;
            if (__OFSUB__(HIDWORD(v192), v192))
            {
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
              goto LABEL_156;
            }

            v195 = v195;
          }

          else
          {
            v195 = BYTE6(v159);
          }

          if (v195 >= 1)
          {
            swift_getObjectType();
            v227 = v300;
            v228 = v331;
            dispatch thunk of ICFileManaging.createFile(at:contents:)();
            v331 = v228;
            if (v228)
            {
              (*(v320 + 8))(v227, v319);

              sub_1001C60E4(v192, v159);

              return;
            }

            v119 = v317;
            v113 = v318;
            v191 = v307;
          }

          goto LABEL_99;
        }

        (*(v320 + 8))(v52, v319);
        v137 = v73;
        v138 = v74;
        goto LABEL_44;
      }

      sub_1001C60E4(v71, v72);
    }

    v101 = *(v51 + 24);
    v102 = *(v51 + 32);
    sub_10017CC60(v51, v101);
    v103 = (*(v102 + 72))(v101, v102);
    if (v104 >> 60 == 15)
    {
      if (v68)
      {
        v105 = *(v51 + 24);
        v106 = *(v51 + 32);
        sub_10017CC60(v51, v105);
        v107 = *(v106 + 48);

        v108 = v310;
        v107(v105, v106);
        v110 = v319;
        v109 = v320;
        v111 = (*(v320 + 48))(v108, 1, v319);
        v112 = v325;
        v113 = v318;
        if (v111 == 1)
        {
          sub_1000073B4(v108, &qword_1006BCC20, &qword_100531F40);
          v114 = *(v51 + 24);
          v115 = *(v51 + 32);
          sub_10017CC60(v51, v114);
          v116 = (*(v115 + 56))(v114, v115);
          if (v117 >> 60 == 15)
          {

            v118 = v323;
            v119 = v317;
            v120 = v331;
            goto LABEL_57;
          }

          v164 = v116;
          v165 = v117;
          v310 = *(v112 + 96);
          swift_getObjectType();
          v166 = v297;
          URL.appendingPathComponent(_:isDirectory:)();

          v167 = v331;
          dispatch thunk of ICFileManaging.createFile(at:contents:)();
          v120 = v167;
          if (!v167)
          {
            (*(v320 + 8))(v166, v319);
            sub_1001C60E4(v164, v165);
            v51 = v322;
            v118 = v323;
            v119 = v317;
            goto LABEL_57;
          }

          (*(v320 + 8))(v166, v319);
          sub_1001C60E4(v164, v165);
          v51 = v322;
        }

        else
        {
          (*(v109 + 32))(v302, v108, v110);
          v139 = *(v112 + 96);
          v308 = *(v112 + 88);
          v310 = v139;
          swift_getObjectType();
          v140 = v298;
          URL.appendingPathComponent(_:isDirectory:)();

          v141 = v331;
          dispatch thunk of ICFileManaging.copyItem(at:to:)();
          v120 = v141;
          if (!v141)
          {
            v205 = *(v320 + 8);
            v205(v140, v110);
            v205(v302, v110);
            v118 = v323;
            v119 = v317;
            goto LABEL_57;
          }

          v142 = *(v320 + 8);
          v142(v140, v110);
          v142(v302, v110);
        }

        v331 = 0;
        if (qword_1006BC940 != -1)
        {
          swift_once();
        }

        v168 = type metadata accessor for Logger();
        sub_10002597C(v168, qword_1006C81A8);
        swift_errorRetain();
        v169 = Logger.logObject.getter();
        v170 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v169, v170))
        {
          v171 = swift_slowAlloc();
          v172 = v68;
          v173 = swift_slowAlloc();
          v328[0] = v173;
          *v171 = 136315138;
          swift_getErrorValue();
          v174 = Error.localizedDescription.getter();
          v176 = sub_100009D88(v174, v175, v328);

          *(v171 + 4) = v176;
          v51 = v322;
          _os_log_impl(&_mh_execute_header, v169, v170, "Cannot export attachment media file — skipping {error: %s}", v171, 0xCu);
          sub_100009F60(v173);
          v68 = v172;
        }

        else
        {
        }
      }
    }

    else
    {
      if (v68)
      {
        v310 = *(v325 + 96);
        v121 = v104;
        v122 = v103;
        swift_getObjectType();

        v123 = v301;
        URL.appendingPathComponent(_:isDirectory:)();
        v315 = v68;
        v124 = v123;
        v125 = v122;
        v126 = v121;

        v127 = v331;
        dispatch thunk of ICFileManaging.createFile(at:contents:)();
        if (v127)
        {
          (*(v320 + 8))(v124, v319);
          if (qword_1006BC940 != -1)
          {
            swift_once();
          }

          v128 = type metadata accessor for Logger();
          sub_10002597C(v128, qword_1006C81A8);
          swift_errorRetain();
          v129 = Logger.logObject.getter();
          v130 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            v328[0] = v132;
            *v131 = 136315138;
            swift_getErrorValue();
            v331 = v129;
            v133 = Error.localizedDescription.getter();
            v135 = sub_100009D88(v133, v134, v328);

            *(v131 + 4) = v135;
            v51 = v322;
            v136 = v331;
            _os_log_impl(&_mh_execute_header, v331, v130, "Cannot export attachment fallback image file — skipping {error: %s}", v131, 0xCu);
            sub_100009F60(v132);

            sub_1001C60E4(v125, v126);
          }

          else
          {
            sub_1001C60E4(v125, v126);
          }

          v120 = 0;
          v118 = v323;
          v119 = v317;
          goto LABEL_47;
        }

        (*(v320 + 8))(v124, v319);
        v137 = v125;
        v138 = v121;
LABEL_44:
        sub_1001C60E4(v137, v138);
        v118 = v323;
        v119 = v317;
        v120 = 0;
LABEL_47:
        v113 = v318;
        v68 = v315;
        goto LABEL_57;
      }

      sub_1001C60E4(v103, v104);
    }

    v118 = v323;
    v119 = v317;
    v120 = v331;
    goto LABEL_56;
  }

  v59 = v322;
  v60 = *(v322 + 24);
  v61 = *(v322 + 32);
  sub_10017CC60(v322, v60);
  v62 = (*(v61 + 16))(v60, v61);
  if (v63)
  {
    v64 = v63;
  }

  else
  {
    v85 = [objc_opt_self() mainBundle];
    v86 = String._bridgeToObjectiveC()();
    v87 = [v85 localizedStringForKey:v86 value:0 table:0];

    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v89;

    v62 = v88;
  }

  v90 = v325;
  v91 = v331;
  sub_100422D34(v62, v64, v324, 0x656D686361747461, 0xEA0000000000746ELL, v321);
  if (v91)
  {
  }

  else
  {
    v311 = v64;
    URL.appendingPathComponent(_:isDirectory:)();
    v92 = *(v90 + 96);
    v324 = *(v90 + 88);
    v318 = v92;
    v93 = v59[3];
    v94 = v59[4];
    sub_10017CC60(v59, v93);
    v95 = *(v90 + 40);
    v329[0] = *(v90 + 24);
    v329[1] = v95;
    v330[0] = *(v90 + 56);
    *(v330 + 13) = *(v90 + 69);
    v96 = 0;
    v97 = (*(v94 + 96))(v329, v93, v94);
    v99 = v98;
    ObjectType = swift_getObjectType();
    dispatch thunk of ICFileManaging.createFile(at:contents:)();
    v310 = ObjectType;
    sub_10019671C(v97, v99);
    v143 = sub_1000054A4(0, &qword_1006C82B8, ICArchive_ptr);
    v144 = v322;
    v145 = *(v322 + 24);
    v146 = *(v322 + 32);
    v147 = sub_10017CC60(v322, v145);
    sub_1003E97D0(v147, v143, v145, v146);
    if (!v148)
    {
      v159 = v314;
      goto LABEL_121;
    }

    v331 = 0;
    v149 = String._bridgeToObjectiveC()();

    v150 = [v149 ic_sanitizedFilenameString];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v151 = v144[3];
    v152 = v144[4];
    sub_10017CC60(v144, v151);
    v153 = v306;
    v154 = v151;
    v155 = v320;
    (*(v152 + 48))(v154, v152);
    v156 = v153;
    v157 = v319;
    v158 = (*(v155 + 48))(v153, 1, v319);
    v159 = v314;
    if (v158 == 1)
    {
      sub_1000073B4(v156, &qword_1006BCC20, &qword_100531F40);
      v160 = v144[3];
      v161 = v144[4];
      sub_10017CC60(v144, v160);
      v162 = (*(v161 + 56))(v160, v161);
      if (v163 >> 60 == 15)
      {

        v96 = v331;
        goto LABEL_121;
      }

LABEL_85:
      v214 = v162;
      v215 = v163;
      v216 = v303;
      URL.appendingPathComponent(_:isDirectory:)();

      v217 = v331;
      dispatch thunk of ICFileManaging.createFile(at:contents:)();
      if (!v217)
      {
        (*(v320 + 8))(v216, v319);
        sub_1001C60E4(v214, v215);
        v96 = 0;
        goto LABEL_121;
      }

      (*(v320 + 8))(v216, v319);
      sub_1001C60E4(v214, v215);
    }

    else
    {
      v206 = v305;
      (*(v155 + 32))(v305, v156, v157);
      v207 = v304;
      URL.appendingPathComponent(_:isDirectory:)();

      v208 = v331;
      dispatch thunk of ICFileManaging.copyItem(at:to:)();
      v209 = v155;
      v96 = v208;
      if (!v208)
      {
        v226 = *(v209 + 8);
        v226(v207, v157);
        v226(v206, v157);
        goto LABEL_121;
      }

      v210 = *(v209 + 8);
      v210(v207, v157);
      v210(v206, v157);
    }

    v331 = 0;
    if (qword_1006BC940 != -1)
    {
      goto LABEL_151;
    }

    while (1)
    {
      v218 = type metadata accessor for Logger();
      sub_10002597C(v218, qword_1006C81A8);
      swift_errorRetain();
      v219 = Logger.logObject.getter();
      v220 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v219, v220))
      {
        v221 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        v328[0] = v222;
        *v221 = 136315138;
        swift_getErrorValue();
        v223 = Error.localizedDescription.getter();
        v225 = sub_100009D88(v223, v224, v328);

        *(v221 + 4) = v225;
        _os_log_impl(&_mh_execute_header, v219, v220, "Cannot export attachment media file — skipping {error: %s}", v221, 0xCu);
        sub_100009F60(v222);
      }

      else
      {
      }

      v96 = v331;
LABEL_121:
      v187 = objc_autoreleasePoolPush();
      v252 = v322;
      v253 = v325;
      sub_100038678(v322, v325);
      if (v96)
      {
        break;
      }

      objc_autoreleasePoolPop(v187);
      v254 = objc_autoreleasePoolPush();
      sub_1000389A8(v252, v253);
      v331 = 0;
      v255 = v252;

      objc_autoreleasePoolPop(v254);
      v256 = v252[3];
      v257 = v252[4];
      sub_10017CC60(v255, v256);
      v258 = (*(v257 + 64))(v256, v257);
      v260 = 0;
      v262 = v258 + 56;
      v261 = *(v258 + 56);
      v322 = v258;
      v263 = 1 << *(v258 + 32);
      v264 = -1;
      if (v263 < 64)
      {
        v264 = ~(-1 << v263);
      }

      v265 = v264 & v261;
      v266 = (v263 + 63) >> 6;
      v267 = v319;
      v268 = v320;
      v306 = (v320 + 16);
      v311 = (v320 + 8);
      *&v259 = 136315138;
      v304 = v259;
      v269 = v323;
      v270 = v312;
      v309 = v258 + 56;
      v307 = v266;
      while (v265)
      {
        v51 = v260;
LABEL_132:
        v272 = __clz(__rbit64(v265));
        v265 &= v265 - 1;
        (*(v268 + 16))(v159, *(v322 + 48) + *(v268 + 72) * (v272 | (v51 << 6)), v267);
        URL.lastPathComponent.getter();
        URL.appendingPathComponent(_:isDirectory:)();
        v159 = v314;

        v273 = v331;
        dispatch thunk of ICFileManaging.copyItem(at:to:)();
        v331 = v273;
        if (v273)
        {
          v274 = *v311;
          (*v311)(v270, v267);
          v274(v159, v267);
          if (qword_1006BC940 != -1)
          {
            swift_once();
          }

          v275 = type metadata accessor for Logger();
          sub_10002597C(v275, qword_1006C81A8);
          swift_errorRetain();
          v276 = Logger.logObject.getter();
          v277 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v276, v277))
          {
            v278 = swift_slowAlloc();
            v279 = swift_slowAlloc();
            v328[0] = v279;
            *v278 = v304;
            swift_getErrorValue();
            LODWORD(v305) = v277;
            v280 = Error.localizedDescription.getter();
            v282 = sub_100009D88(v280, v281, v328);

            *(v278 + 4) = v282;
            v283 = v320;
            _os_log_impl(&_mh_execute_header, v276, v305, "Cannot export attachment asset file — skipping {error: %s}", v278, 0xCu);
            sub_100009F60(v279);

            v159 = v314;

            v268 = v283;

            v331 = 0;
            v260 = v51;
            v269 = v323;
            v267 = v319;
            v270 = v312;
          }

          else
          {

            v331 = 0;
            v260 = v51;
            v269 = v323;
            v267 = v319;
            v268 = v320;
            v270 = v312;
            v159 = v314;
          }
        }

        else
        {
          v271 = *v311;
          (*v311)(v270, v267);
          v271(v159, v267);
          v260 = v51;
          v269 = v323;
        }

        v262 = v309;
        v266 = v307;
      }

      while (1)
      {
        v51 = v260 + 1;
        if (__OFADD__(v260, 1))
        {
          __break(1u);
          goto LABEL_148;
        }

        if (v51 >= v266)
        {
          break;
        }

        v265 = *(v262 + 8 * v51);
        ++v260;
        if (v265)
        {
          goto LABEL_132;
        }
      }

      v284 = [v269 completedUnitCount];
      if (!__OFADD__(v284, 1))
      {
        [v269 setCompletedUnitCount:v284 + 1];
        v285 = v317;
        v286 = *(v316 + 16);
        v287 = v308;
        if (v286)
        {
          v288 = v313 + 16;
          v324 = *(v313 + 16);
          v289 = v316 + ((*(v313 + 80) + 32) & ~*(v313 + 80));
          v322 = *(v313 + 72);
          v290 = (v313 + 8);
          while (1)
          {
            v291 = v288;
            (v324)(v287, v289, v285);
            v292 = objc_autoreleasePoolPush();
            v293 = v331;
            sub_100422264(v287, v321, v269);
            v331 = v293;
            if (v293)
            {
              break;
            }

            objc_autoreleasePoolPop(v292);
            (*v290)(v287, v285);
            v269 = v323;
            v289 += v322;
            --v286;
            v288 = v291;
            if (!v286)
            {
              goto LABEL_145;
            }
          }

          objc_autoreleasePoolPop(v292);
          (*v290)(v287, v285);
        }

LABEL_145:
        v294 = *v311;
        v295 = v319;
        (*v311)(v315, v319);
        v294(v321, v295);
        return;
      }

      __break(1u);
LABEL_151:
      swift_once();
    }

LABEL_156:
    objc_autoreleasePoolPop(v187);
    __break(1u);
  }
}

void sub_100428E3C(void *a1, uint64_t a2, NSObject *a3, void *a4)
{
  v5 = v4;
  v271 = a3;
  v272 = a1;
  v273 = v5;
  v266 = *v5;
  v267 = a2;
  v260 = type metadata accessor for String.Encoding();
  v262 = *(v260 - 8);
  __chkstk_darwin(v260);
  v259 = &v246 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&qword_1006BCC20, &qword_100531F40);
  v9 = __chkstk_darwin(v8 - 8);
  v258 = &v246 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v261 = &v246 - v11;
  v12 = type metadata accessor for URL();
  v268 = *(v12 - 8);
  v269 = v12;
  v13 = __chkstk_darwin(v12);
  v263 = (&v246 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v264 = &v246 - v16;
  v17 = __chkstk_darwin(v15);
  v255 = &v246 - v18;
  v19 = __chkstk_darwin(v17);
  *&v256 = &v246 - v20;
  v21 = __chkstk_darwin(v19);
  v257 = &v246 - v22;
  v23 = __chkstk_darwin(v21);
  v265 = (&v246 - v24);
  v25 = __chkstk_darwin(v23);
  v270 = &v246 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v246 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v246 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v246 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v246 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v246 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v246 - v43;
  __chkstk_darwin(v42);
  v46 = &v246 - v45;
  NSProgress.throwIfCancelled()();
  if (v47)
  {
    return;
  }

  v252 = v44;
  v253 = v46;
  v248 = v38;
  v249 = v41;
  v247 = v35;
  v250 = v29;
  v251 = v32;
  v254 = a4;
  v279 = 0;
  v48 = v273;
  if (*(v273 + 24) != 1)
  {
    v56 = v272;
    v57 = v272[3];
    v58 = v272[4];
    sub_10017CC60(v272, v57);
    v59 = (*(v58 + 16))(v57, v58);
    if (v60)
    {
      v61 = v60;
    }

    else
    {
      v83 = [objc_opt_self() mainBundle];
      v84 = String._bridgeToObjectiveC()();
      v85 = [v83 localizedStringForKey:v84 value:0 table:0];

      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v87;

      v59 = v86;
    }

    v88 = v279;
    sub_100422D34(v59, v61, v271, 0x656D686361747461, 0xEA0000000000746ELL, v270);
    if (v88)
    {

      return;
    }

    v261 = v61;
    URL.appendingPathComponent(_:isDirectory:)();
    v89 = v48[12];
    v271 = v48[11];
    v262 = v89;
    v90 = v56[3];
    v91 = v56[4];
    sub_10017CC60(v56, v90);
    v92 = *(v48 + 5);
    v277[0] = *(v48 + 3);
    v277[1] = v92;
    v278[0] = *(v48 + 7);
    *(v278 + 13) = *(v48 + 69);
    v93 = (*(v91 + 96))(v277, v90, v91);
    v95 = v94;
    ObjectType = swift_getObjectType();
    dispatch thunk of ICFileManaging.createFile(at:contents:)();
    v279 = 0;
    v260 = ObjectType;
    sub_10019671C(v93, v95);
    v126 = sub_1000054A4(0, &qword_1006C82B8, ICArchive_ptr);
    v32 = v56;
    v127 = v56[3];
    v128 = v56[4];
    v129 = sub_10017CC60(v56, v127);
    sub_1003E97D0(v129, v126, v127, v128);
    v130 = v269;
    if (!v131)
    {
      goto LABEL_113;
    }

    v132 = String._bridgeToObjectiveC()();

    v133 = [v132 ic_sanitizedFilenameString];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v134 = *(v32 + 24);
    v135 = *(v32 + 32);
    sub_10017CC60(v32, v134);
    v136 = v258;
    (*(v135 + 48))(v134, v135);
    v137 = v268;
    if ((*(v268 + 48))(v136, 1, v130) != 1)
    {
      v174 = v257;
      (*(v137 + 32))(v257, v136, v130);
      v175 = v256;
      URL.appendingPathComponent(_:isDirectory:)();
      v176 = v174;

      v177 = v279;
      dispatch thunk of ICFileManaging.copyItem(at:to:)();
      v279 = v177;
      v70 = v273;
      if (!v177)
      {
        v196 = *(v137 + 8);
        v197 = v175;
        v198 = v269;
        v196(v197, v269);
        v196(v176, v198);
        goto LABEL_114;
      }

      v178 = *(v137 + 8);
      v179 = v175;
      v180 = v269;
      v178(v179, v269);
      v178(v176, v180);
LABEL_80:
      v279 = 0;
      if (qword_1006BC940 != -1)
      {
        goto LABEL_130;
      }

      while (1)
      {
        v188 = type metadata accessor for Logger();
        sub_10002597C(v188, qword_1006C81A8);
        swift_errorRetain();
        v189 = Logger.logObject.getter();
        v190 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v189, v190))
        {
          v191 = swift_slowAlloc();
          v192 = swift_slowAlloc();
          v276[0] = v192;
          *v191 = 136315138;
          swift_getErrorValue();
          v193 = Error.localizedDescription.getter();
          v195 = sub_100009D88(v193, v194, v276);

          *(v191 + 4) = v195;
          _os_log_impl(&_mh_execute_header, v189, v190, "Cannot export attachment media file — skipping {error: %s}", v191, 0xCu);
          sub_100009F60(v192);
          v32 = v272;

          v70 = v273;
        }

        else
        {
        }

LABEL_114:
        v163 = objc_autoreleasePoolPush();
        v223 = v279;
        sub_100038678(v32, v70);
        if (v223)
        {
          goto LABEL_135;
        }

        objc_autoreleasePoolPop(v163);
        v224 = objc_autoreleasePoolPush();
        sub_1000389A8(v32, v70);

        objc_autoreleasePoolPop(v224);
        v225 = *(v32 + 24);
        v226 = *(v32 + 32);
        sub_10017CC60(v32, v225);
        v227 = (*(v226 + 64))(v225, v226);
        v229 = 0;
        v231 = (v227 + 56);
        v230 = *(v227 + 56);
        v279 = v227;
        v232 = 1 << *(v227 + 32);
        v233 = -1;
        if (v232 < 64)
        {
          v233 = ~(-1 << v232);
        }

        v67 = v233 & v230;
        v234 = (v232 + 63) >> 6;
        v235 = v268;
        v258 = (v268 + 16);
        v272 = (v268 + 8);
        *&v228 = 136315138;
        v256 = v228;
        v65 = v263;
        v261 = (v227 + 56);
        v259 = v234;
        while (v67)
        {
          v32 = v229;
LABEL_123:
          v237 = __clz(__rbit64(v67));
          v67 &= v67 - 1;
          v238 = v264;
          v239 = v269;
          (*(v235 + 16))(v264, *(v279 + 48) + *(v235 + 72) * (v237 | (v32 << 6)), v269);
          URL.lastPathComponent.getter();
          URL.appendingPathComponent(_:isDirectory:)();

          dispatch thunk of ICFileManaging.copyItem(at:to:)();
          v236 = *v272;
          (*v272)(v238, v239);
          v236(v65, v239);
          v229 = v32;
          v70 = v273;
          v235 = v268;
          v231 = v261;
          v234 = v259;
        }

        while (1)
        {
          v32 = v229 + 1;
          if (__OFADD__(v229, 1))
          {
            __break(1u);
            goto LABEL_127;
          }

          if (v32 >= v234)
          {
            break;
          }

          v67 = *&v231[8 * v32];
          ++v229;
          if (v67)
          {
            goto LABEL_123;
          }
        }

        v240 = v254;
        v241 = [v254 completedUnitCount];
        if (!__OFADD__(v241, 1))
        {
          v242 = [v240 setCompletedUnitCount:v241 + 1];
          v276[0] = v267;
          __chkstk_darwin(v242);
          v243 = v270;
          *(&v246 - 4) = v70;
          *(&v246 - 3) = v243;
          *(&v246 - 2) = v240;
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          type metadata accessor for ICObjectReferences();
          type metadata accessor for Array();
          swift_getWitnessTable();
          Sequence.forEach(_:)();
          v244 = *v272;
          v245 = v269;
          (*v272)(v265, v269);
          v244(v243, v245);
          return;
        }

        __break(1u);
LABEL_130:
        swift_once();
      }
    }

    sub_1000073B4(v136, &qword_1006BCC20, &qword_100531F40);
    v138 = *(v32 + 24);
    v139 = *(v32 + 32);
    sub_10017CC60(v32, v138);
    v140 = (*(v139 + 56))(v138, v139);
    if (v141 >> 60 == 15)
    {

      goto LABEL_113;
    }

LABEL_78:
    v184 = v140;
    v185 = v141;
    v186 = v255;
    URL.appendingPathComponent(_:isDirectory:)();

    v187 = v279;
    dispatch thunk of ICFileManaging.createFile(at:contents:)();
    v279 = v187;
    if (v187)
    {
      (*(v268 + 8))(v186, v130);
      sub_1001C60E4(v184, v185);
      v70 = v273;
      goto LABEL_80;
    }

    (*(v268 + 8))(v186, v130);
    sub_1001C60E4(v184, v185);
LABEL_113:
    v70 = v273;
    goto LABEL_114;
  }

  LODWORD(v270) = *(v273 + 25);
  v49 = v272;
  if (v270 == 2)
  {
    sub_1002EC1FC(v272, v276);
    sub_10015DA04(&qword_1006BF338, &unk_10054A770);
    sub_1000054A4(0, &unk_1006C2C90, ICAttachment_ptr);
    if (swift_dynamicCast())
    {
      v50 = v274;
      v51 = [v274 isTable];

      if (v51)
      {
        return;
      }
    }
  }

  sub_1002EC1FC(v49, v276);
  v52 = sub_10015DA04(&qword_1006BF338, &unk_10054A770);
  v53 = sub_1000054A4(0, &unk_1006C2C90, ICAttachment_ptr);
  if (swift_dynamicCast())
  {
    v54 = v274;
    v55 = [v274 parentAttachment];

    if (v55)
    {

      return;
    }
  }

  v263 = v53;
  v62 = v49[3];
  v63 = v49[4];
  sub_10017CC60(v49, v62);
  v265 = (*(v63 + 88))(v62, v63);
  v65 = v64;
  v66 = v49[3];
  v67 = v49[4];
  sub_10017CC60(v49, v66);
  v68 = (*(v67 + 80))(v66, v67);
  v264 = v52;
  if (v69 >> 60 == 15)
  {
LABEL_23:
    v97 = v49[3];
    v98 = v49[4];
    sub_10017CC60(v49, v97);
    v99 = (*(v98 + 72))(v97, v98);
    if (v100 >> 60 != 15)
    {
      v111 = v99;
      v112 = v100;
      if (v65)
      {
        v67 = swift_getObjectType();

        v32 = v252;
        URL.appendingPathComponent(_:isDirectory:)();

        v113 = v279;
        dispatch thunk of ICFileManaging.createFile(at:contents:)();
        v279 = v113;
        v82 = v267;
        if (!v113)
        {
          (*(v268 + 8))(v32, v269);
          sub_1001C60E4(v111, v112);
          goto LABEL_46;
        }

        (*(v268 + 8))(v32, v269);
        if (qword_1006BC940 != -1)
        {
          swift_once();
        }

        v114 = type metadata accessor for Logger();
        sub_10002597C(v114, qword_1006C81A8);
        v67 = v279;
        swift_errorRetain();
        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v115, v116))
        {
          v67 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v276[0] = v32;
          *v67 = 136315138;
          swift_getErrorValue();
          v265 = v115;
          v117 = Error.localizedDescription.getter();
          v119 = v65;
          v120 = sub_100009D88(v117, v118, v276);

          *(v67 + 4) = v120;
          v65 = v119;
          v121 = v265;
          _os_log_impl(&_mh_execute_header, v265, v116, "Cannot export attachment fallback image file — skipping {error: %s}", v67, 0xCu);
          sub_100009F60(v32);
          v82 = v267;

          sub_1001C60E4(v111, v112);
        }

        else
        {
          sub_1001C60E4(v111, v112);
        }

        goto LABEL_45;
      }

      sub_1001C60E4(v99, v100);
      goto LABEL_55;
    }

    if (v65)
    {
      v101 = v49[3];
      v102 = v49[4];
      sub_10017CC60(v49, v101);
      v103 = *(v102 + 48);

      v104 = v261;
      v103(v101, v102);
      v105 = v268;
      v67 = v269;
      if ((*(v268 + 48))(v104, 1, v269) == 1)
      {
        sub_1000073B4(v104, &qword_1006BCC20, &qword_100531F40);
        v106 = v49[3];
        v107 = v49[4];
        sub_10017CC60(v49, v106);
        v108 = (*(v107 + 56))(v106, v107);
        v70 = v273;
        if (v109 >> 60 == 15)
        {

          v110 = v254;
LABEL_56:
          v82 = v267;
          goto LABEL_57;
        }

        v142 = v108;
        v143 = v109;
        v32 = v273[12];
        swift_getObjectType();
        v67 = v247;
        URL.appendingPathComponent(_:isDirectory:)();
        v265 = v65;

        v144 = v279;
        dispatch thunk of ICFileManaging.createFile(at:contents:)();
        v279 = v144;
        v82 = v267;
        if (!v144)
        {
          (*(v268 + 8))(v67, v269);
          sub_1001C60E4(v142, v143);
          v110 = v254;
          v70 = v273;
          v65 = v265;
          goto LABEL_57;
        }

        (*(v268 + 8))(v67, v269);
        sub_1001C60E4(v142, v143);
        v65 = v265;
      }

      else
      {
        v122 = v249;
        (*(v105 + 32))(v249, v104, v67);
        v32 = v105;
        v261 = v273[12];
        swift_getObjectType();
        v123 = v248;
        URL.appendingPathComponent(_:isDirectory:)();

        v124 = v279;
        dispatch thunk of ICFileManaging.copyItem(at:to:)();
        v279 = v124;
        if (!v124)
        {
          v152 = *(v105 + 8);
          v152(v123, v67);
          v152(v122, v67);
          goto LABEL_55;
        }

        v125 = *(v105 + 8);
        v125(v123, v67);
        v125(v122, v67);
      }

      v279 = 0;
      if (qword_1006BC940 != -1)
      {
        swift_once();
      }

      v145 = type metadata accessor for Logger();
      sub_10002597C(v145, qword_1006C81A8);
      swift_errorRetain();
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v276[0] = v67;
        *v148 = 136315138;
        swift_getErrorValue();
        v149 = Error.localizedDescription.getter();
        v32 = v65;
        v151 = sub_100009D88(v149, v150, v276);

        *(v148 + 4) = v151;
        v65 = v32;
        _os_log_impl(&_mh_execute_header, v146, v147, "Cannot export attachment media file — skipping {error: %s}", v148, 0xCu);
        sub_100009F60(v67);
      }

      else
      {
      }
    }

LABEL_55:
    v110 = v254;
    v70 = v273;
    goto LABEL_56;
  }

  v32 = v68;
  v70 = v69;
  if (!v65)
  {
    sub_1001C60E4(v68, v69);
    goto LABEL_23;
  }

  v67 = swift_getObjectType();

  v71 = v253;
  URL.appendingPathComponent(_:isDirectory:)();

  v72 = v279;
  dispatch thunk of ICFileManaging.createFile(at:contents:)();
  v279 = v72;
  if (!v72)
  {
    (*(v268 + 8))(v71, v269);
    sub_1001C60E4(v32, v70);
    goto LABEL_55;
  }

  (*(v268 + 8))(v71, v269);
  v67 = v267;
  if (qword_1006BC940 != -1)
  {
    goto LABEL_128;
  }

  while (1)
  {
    v73 = type metadata accessor for Logger();
    sub_10002597C(v73, qword_1006C81A8);
    swift_errorRetain();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v265 = v65;
      v78 = v77;
      v276[0] = v77;
      *v76 = 136315138;
      swift_getErrorValue();
      v79 = Error.localizedDescription.getter();
      v67 = v32;
      v32 = sub_100009D88(v79, v80, v276);

      *(v76 + 4) = v32;
      v81 = v267;
      _os_log_impl(&_mh_execute_header, v74, v75, "Cannot export attachment fallback PDF file — skipping {error: %s}", v76, 0xCu);
      sub_100009F60(v78);
      v65 = v265;

      sub_1001C60E4(v67, v70);

      v82 = v81;
LABEL_45:
      v279 = 0;
LABEL_46:
      v110 = v254;
      v70 = v273;
    }

    else
    {
      sub_1001C60E4(v32, v70);

      v279 = 0;
      v110 = v254;
      v70 = v273;
      v82 = v67;
    }

LABEL_57:
    if (v270 != 1 || (sub_1002EC1FC(v272, v276), (swift_dynamicCast() & 1) == 0))
    {

      v65 = v271;
      goto LABEL_67;
    }

    v32 = v82;
    v265 = v65;
    v153 = v274;
    v154 = [v274 isAudio];
    v65 = v271;
    if (!v154)
    {

      v82 = v32;
      goto LABEL_67;
    }

    v155 = [v153 attachmentModel];
    objc_opt_self();
    v156 = swift_dynamicCastObjCClass();
    if (v156)
    {
      break;
    }

    v110 = v254;
LABEL_110:
    v82 = v32;
LABEL_67:
    v172 = [v110 completedUnitCount];
    if (!__OFADD__(v172, 1))
    {
      v173 = [v110 setCompletedUnitCount:v172 + 1];
      v276[0] = v82;
      __chkstk_darwin(v173);
      *(&v246 - 4) = v70;
      *(&v246 - 3) = v65;
      *(&v246 - 2) = v110;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for ICObjectReferences();
      type metadata accessor for Array();
      swift_getWitnessTable();
      Sequence.forEach(_:)();
      return;
    }

LABEL_127:
    __break(1u);
LABEL_128:
    swift_once();
  }

  v157 = v156;
  v270 = v155;
  v158 = v272[3];
  v159 = v272[4];
  sub_10017CC60(v272, v158);
  v160 = (*(v159 + 8))(v158, v159);
  v276[0] = 0x7263736E6172745FLL;
  v276[1] = 0xEF7478742E747069;
  v274 = v160;
  v275 = v161;
  v274 = String.init<A>(_:)();
  v275 = v162;
  String.append<A>(contentsOf:)();
  v163 = v65;
  URL.appendingPathComponent(_:isDirectory:)();

  v164 = [v157 audioDocument];
  if (!v164)
  {
    goto LABEL_133;
  }

  v165 = v164;
  v166 = [v164 transcriptAsPlainText];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v167 = v259;
  static String.Encoding.utf8.getter();
  v130 = String.data(using:allowLossyConversion:)();
  v169 = v168;
  v163 = v262 + 1;
  v264 = v262[1];
  v140 = (v264)(v167, v260);
  v262 = v163;
  if (v169 >> 60 == 15)
  {
LABEL_92:
    v201 = v272[3];
    v202 = v272[4];
    sub_10017CC60(v272, v201);
    v203 = (*(v202 + 8))(v201, v202);
    strcpy(v276, "_summary.txt");
    BYTE5(v276[1]) = 0;
    HIWORD(v276[1]) = -5120;
    v274 = v203;
    v275 = v204;
    v274 = String.init<A>(_:)();
    v275 = v205;
    String.append<A>(contentsOf:)();
    v65 = v271;
    v163 = v271;
    URL.appendingPathComponent(_:isDirectory:)();

    v206 = [v157 audioDocument];
    if (!v206)
    {
      goto LABEL_134;
    }

    v207 = v206;

    v208 = [v207 recordingSummaryAsPlainText];

    v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v209 = v259;
    static String.Encoding.utf8.getter();
    v210 = String.data(using:allowLossyConversion:)();
    v212 = v211;

    (v264)(v209, v260);
    if (v212 >> 60 == 15)
    {

LABEL_95:
      v213 = v269;
      v67 = v251;
LABEL_109:
      v222 = *(v268 + 8);
      v222(v250, v213);
      v222(v67, v213);
      v110 = v254;
      v70 = v273;
      goto LABEL_110;
    }

    v214 = v212 >> 62;
    v67 = v251;
    if ((v212 >> 62) > 1)
    {
      v213 = v269;
      if (v214 != 2)
      {
        goto LABEL_108;
      }

      v217 = *(v210 + 16);
      v216 = *(v210 + 24);
      v183 = __OFSUB__(v216, v217);
      v215 = v216 - v217;
      if (!v183)
      {
LABEL_105:
        if (v215 > 0)
        {
          swift_getObjectType();
          v218 = v250;
          v219 = v279;
          dispatch thunk of ICFileManaging.createFile(at:contents:)();
          v279 = v219;
          if (v219)
          {

            sub_1001C60E4(v210, v212);
            v220 = v269;
            v221 = *(v268 + 8);
            v221(v218, v269);
            v221(v251, v220);
            return;
          }

          sub_1001C60E4(v210, v212);
          goto LABEL_95;
        }

LABEL_108:

        sub_1001C60E4(v210, v212);
        goto LABEL_109;
      }

      __break(1u);
    }

    else
    {
      v213 = v269;
      if (!v214)
      {
        v215 = BYTE6(v212);
        goto LABEL_105;
      }
    }

    LODWORD(v215) = HIDWORD(v210) - v210;
    if (__OFSUB__(HIDWORD(v210), v210))
    {
      goto LABEL_132;
    }

    v215 = v215;
    goto LABEL_105;
  }

  v170 = v169 >> 62;
  if ((v169 >> 62) > 1)
  {
    if (v170 != 2)
    {
LABEL_91:
      sub_1001C60E4(v130, v169);
      goto LABEL_92;
    }

    v182 = *(v130 + 16);
    v181 = *(v130 + 24);
    v183 = __OFSUB__(v181, v182);
    v171 = v181 - v182;
    if (!v183)
    {
LABEL_87:
      if (v171 >= 1)
      {
        swift_getObjectType();
        v199 = v251;
        v200 = v279;
        dispatch thunk of ICFileManaging.createFile(at:contents:)();
        v279 = v200;
        if (v200)
        {
          (*(v268 + 8))(v199, v269);

          sub_1001C60E4(v130, v169);

          return;
        }

        v32 = v267;
      }

      goto LABEL_91;
    }

    __break(1u);
    goto LABEL_78;
  }

  if (!v170)
  {
    v171 = BYTE6(v169);
    goto LABEL_87;
  }

  LODWORD(v171) = HIDWORD(v130) - v130;
  if (!__OFSUB__(HIDWORD(v130), v130))
  {
    v171 = v171;
    goto LABEL_87;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  objc_autoreleasePoolPop(v163);
  __break(1u);
}

uint64_t sub_10042AF78@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ICObjectReferences();
  result = ICObjectReferences.recursiveAttachmentCount.getter();
  *a3 = result;
  return result;
}

void sub_10042B010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_10042B098(a2, a1, a3, a4, &v9);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_10042B098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = a5;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  v17 = *(v11 + 16);
  if (*(a1 + 24) != 1)
  {
    v17(v14, a3, v10);
    sub_100422760(a2, v14, a4);
    v18 = v5;
    if (!v5)
    {
      return (*(v11 + 8))(v14, v10);
    }

    v16 = v14;
LABEL_6:
    result = (*(v11 + 8))(v16, v10);
    *v21 = v18;
    return result;
  }

  v17(&v20 - v15, a3, v10);
  sub_10042BB3C(a2, v16, a4);
  v18 = v5;
  if (v5)
  {
    goto LABEL_6;
  }

  v14 = v16;
  return (*(v11 + 8))(v14, v10);
}

void sub_10042B25C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v56 = a3;
  v67 = a1;
  v68 = type metadata accessor for URLResourceValues();
  *&v63 = *(v68 - 8);
  __chkstk_darwin(v68);
  v70 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10015DA04(&qword_1006BCC20, &qword_100531F40);
  v6 = __chkstk_darwin(v5 - 8);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v53 - v8;
  v9 = sub_10015DA04(&qword_1006BE790, &qword_100536880);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v54 = &v53 - v19;
  v20 = __chkstk_darwin(v18);
  v55 = &v53 - v21;
  __chkstk_darwin(v20);
  v23 = &v53 - v22;
  v24 = *(v14 + 16);
  v64 = a2;
  v69 = v24;
  v24(&v53 - v22, a2, v13);
  (*(v10 + 16))(v12, v67, v9);
  if ((*(v10 + 88))(v12, v9) == enum case for ICObjectReferences.attachment<A>(_:))
  {
    v53 = v23;
    (*(v10 + 8))(v12, v9);
    v25 = [objc_opt_self() defaultManager];
    v26 = v66;
    v27 = NSFileManager.contentsOfDirectory(at:)();
    if (v26)
    {
      (*(v14 + 8))(v53, v13);
    }

    else
    {
      v28 = v27;

      v29 = v28;
      v62 = *(v28 + 16);
      v65 = v14;
      if (v62)
      {
        v30 = 0;
        v66 = NSURLIsDirectoryKey;
        v64 = v28 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
        v60 = (v63 + 8);
        v61 = (v14 + 8);
        v63 = xmmword_100531E30;
        while (v30 < *(v29 + 16))
        {
          v31 = v29;
          v32 = v13;
          v69(v17, v64 + *(v65 + 72) * v30, v13);
          sub_10015DA04(&qword_1006C2840, &unk_10053F8F8);
          inited = swift_initStackObject();
          *(inited + 16) = v63;
          v34 = v66;
          *(inited + 32) = v66;
          v35 = v34;
          sub_10045859C(inited);
          swift_setDeallocating();
          sub_10042DE48(inited + 32, type metadata accessor for URLResourceKey);
          v36 = v70;
          URL.resourceValues(forKeys:)();

          v37 = URLResourceValues.isDirectory.getter();
          (*v60)(v36, v68);
          if (v37 != 2 && (v37 & 1) != 0)
          {

            v38 = v65;
            v39 = v59;
            v13 = v32;
            (*(v65 + 32))(v59, v17, v32);
            v40 = 0;
            goto LABEL_13;
          }

          ++v30;
          v13 = v32;
          (*v61)(v17, v32);
          v29 = v31;
          if (v62 == v30)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_12:

        v40 = 1;
        v38 = v65;
        v39 = v59;
LABEL_13:
        (*(v38 + 56))(v39, v40, 1, v13);
        v41 = v57;
        sub_100006038(v39, v57, &qword_1006BCC20, &qword_100531F40);
        v42 = (*(v38 + 48))(v41, 1, v13);
        v43 = v58;
        v44 = v67;
        if (v42 == 1)
        {
          sub_1000073B4(v41, &qword_1006BCC20, &qword_100531F40);
          v71 = 0;
          v45 = v53;
          if (*(v43 + 24) & 1) != 0 && *(v43 + 25) == 2 && (v46 = objc_autoreleasePoolPush(), sub_10042C8D4(v43, v44, &v71), objc_autoreleasePoolPop(v46), (v71))
          {
            sub_1000073B4(v39, &qword_1006BCC20, &qword_100531F40);
            (*(v38 + 8))(v45, v13);
          }

          else
          {
            if (*(v43 + 25) == 1)
            {
              v50 = 0x656D686361747461;
            }

            else
            {
              v50 = 0x656D686361747441;
            }

            v51 = v54;
            sub_100422D34(v50, 0xEB0000000073746ELL, v45, 0, 0, v54);

            sub_100422264(v44, v51, v56);
            v52 = *(v38 + 8);
            v52(v51, v13);
            sub_1000073B4(v39, &qword_1006BCC20, &qword_100531F40);
            v52(v45, v13);
          }
        }

        else
        {
          v47 = v55;
          (*(v38 + 32))(v55, v41, v13);
          sub_100422264(v44, v47, v56);
          v48 = v53;
          v49 = *(v38 + 8);
          v49(v47, v13);
          sub_1000073B4(v39, &qword_1006BCC20, &qword_100531F40);
          v49(v48, v13);
        }
      }
    }
  }

  else
  {
    (*(v14 + 8))(v23, v13);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_10042BB3C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v58 = a3;
  v68 = a2;
  v66 = a1;
  v67 = type metadata accessor for URLResourceValues();
  v59 = *(v67 - 8);
  __chkstk_darwin(v67);
  v72 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10015DA04(&qword_1006BCC20, &qword_100531F40);
  v6 = __chkstk_darwin(v5 - 8);
  v60 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = &v55 - v8;
  strcpy(v74, "identifier title hasMedia children ");
  v61 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75[0] = AssociatedTypeWitness;
  v75[1] = sub_10017992C(&qword_1006C0318, &unk_10054A7C0);
  v75[2] = &type metadata for Bool;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ICObjectReferences();
  v75[3] = type metadata accessor for Array();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v63 = *(TupleTypeMetadata - 8);
  __chkstk_darwin(TupleTypeMetadata);
  v11 = &v55 - v10;
  v12 = type metadata accessor for ICObjectReferences();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v55 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v56 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v57 = &v55 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v55 - v23;
  __chkstk_darwin(v22);
  v26 = &v55 - v25;
  v70 = *(v17 + 16);
  v71 = v17 + 16;
  v70(&v55 - v25, v68, v16);
  (*(v13 + 16))(v15, v66, v12);
  if ((*(v13 + 88))(v15, v12) != enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v17 + 8))(v26, v16);
    (*(v13 + 8))(v15, v12);
    return;
  }

  v55 = v26;
  v73 = v17;
  v69 = v16;
  (*(v13 + 96))(v15, v12);
  v27 = swift_projectBox();
  (*(v63 + 16))(v11, v27, TupleTypeMetadata);

  (*(*(AssociatedTypeWitness - 8) + 8))(v11, AssociatedTypeWitness);

  v28 = [objc_opt_self() defaultManager];
  v29 = v65;
  v30 = NSFileManager.contentsOfDirectory(at:)();
  if (v29)
  {
    (*(v73 + 8))(v55, v69);

    return;
  }

  v31 = v30;

  v32 = v69;
  TupleTypeMetadata = *(v31 + 16);
  if (TupleTypeMetadata)
  {
    v33 = 0;
    v68 = v31 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v34 = (v59 + 8);
    v63 = v73 + 8;
    v65 = xmmword_100531E30;
    while (v33 < *(v31 + 16))
    {
      v70(v24, v68 + *(v73 + 72) * v33, v32);
      sub_10015DA04(&qword_1006C2840, &unk_10053F8F8);
      inited = swift_initStackObject();
      *(inited + 16) = v65;
      *(inited + 32) = NSURLIsDirectoryKey;
      v36 = NSURLIsDirectoryKey;
      sub_10045859C(inited);
      swift_setDeallocating();
      sub_10042DE48(inited + 32, type metadata accessor for URLResourceKey);
      v37 = v72;
      URL.resourceValues(forKeys:)();

      v38 = URLResourceValues.isDirectory.getter();
      (*v34)(v37, v67);
      if (v38 != 2 && (v38 & 1) != 0)
      {

        v39 = v73;
        v32 = v69;
        (*(v73 + 32))(v62, v24, v69);
        v40 = 0;
        goto LABEL_13;
      }

      ++v33;
      v32 = v69;
      (*v63)(v24, v69);
      if (TupleTypeMetadata == v33)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v40 = 1;
    v39 = v73;
LABEL_13:
    v41 = v62;
    (*(v39 + 56))(v62, v40, 1, v32);
    v42 = v41;
    v43 = v60;
    sub_100006038(v42, v60, &qword_1006BCC20, &qword_100531F40);
    v44 = (*(v39 + 48))(v43, 1, v32);
    v45 = v61;
    v46 = v66;
    v47 = v55;
    if (v44 == 1)
    {
      sub_1000073B4(v43, &qword_1006BCC20, &qword_100531F40);
      v76 = 0;
      if (*(v45 + 24) == 1 && *(v45 + 25) == 2)
      {
        v48 = objc_autoreleasePoolPush();
        sub_10042CB54(v45, v46, &v76, v75);
        objc_autoreleasePoolPop(v48);
        if (v76)
        {
          sub_1000073B4(v62, &qword_1006BCC20, &qword_100531F40);
          (*(v39 + 8))(v47, v32);
          return;
        }
      }

      if (*(v45 + 25) == 1)
      {
        v52 = 0x656D686361747461;
      }

      else
      {
        v52 = 0x656D686361747441;
      }

      v53 = v56;
      sub_100422D34(v52, 0xEB0000000073746ELL, v47, 0, 0, v56);

      sub_100422760(v46, v53, v58);
      v54 = v62;
      v50 = *(v39 + 8);
      v50(v53, v32);
      v51 = v54;
    }

    else
    {
      v49 = v57;
      (*(v39 + 32))(v57, v43, v32);
      sub_100422760(v46, v49, v58);
      v50 = *(v39 + 8);
      v50(v49, v32);
      v51 = v62;
    }

    sub_1000073B4(v51, &qword_1006BCC20, &qword_100531F40);
    v50(v47, v32);
  }
}

void sub_10042C674(char a1)
{
  v2 = v1;
  if ((*(v1 + 120) & 1) != 0 || (a1 & 0x1F) == 0)
  {
    if (qword_1006BC940 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10002597C(v3, qword_1006C81A8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Resetting context…", v6, 2u);
    }

    v7 = ICModernObjectProvider.context.getter();
    [v7 reset];

    *(v2 + 120) = 0;
  }
}

void sub_10042C78C(char a1)
{
  if ((*(v1 + 120) & 1) != 0 || (a1 & 0x1F) == 0)
  {
    type metadata accessor for ICModernObjectProvider();
    if (swift_dynamicCastClass())
    {
      v2 = v1;
      v3 = qword_1006BC940;
      swift_unknownObjectRetain();
      if (v3 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_10002597C(v4, qword_1006C81A8);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Resetting context…", v7, 2u);
      }

      v8 = ICModernObjectProvider.context.getter();
      [v8 reset];
      swift_unknownObjectRelease();

      v1 = v2;
    }

    *(v1 + 120) = 0;
  }
}

void sub_10042C8D4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  type metadata accessor for ICModernObjectProvider();
  sub_10042DCA4(&qword_1006C8298, &type metadata accessor for ICModernObjectProvider, &protocol conformance descriptor for ICModernObjectProvider);
  dispatch thunk of ICObjectProviding.object(for:)();
  if (!v3)
  {
    if (v10[3])
    {
      sub_10015DA04(&qword_1006BF338, &unk_10054A770);
      if (swift_dynamicCast())
      {
        if (*(&v12 + 1))
        {
          sub_100192680(&v11, v14);
          sub_1002EC1FC(v14, &v11);
          sub_1000054A4(0, &unk_1006C2C90, ICAttachment_ptr);
          if (swift_dynamicCast())
          {
            v5 = [v10[0] isTable];

            sub_100009F60(v14);
            if (v5)
            {
              *a3 = 1;
            }
          }

          else
          {
            sub_100009F60(v14);
          }

          return;
        }
      }

      else
      {
        v13 = 0;
        v11 = 0u;
        v12 = 0u;
      }
    }

    else
    {
      sub_1000073B4(v10, &qword_1006BE7A0, &unk_100535E20);
      v11 = 0u;
      v12 = 0u;
      v13 = 0;
    }

    sub_1000073B4(&v11, &qword_1006C82A8, &qword_10054A768);
    if (qword_1006BC940 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10002597C(v6, qword_1006C81A8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Object to be exported does not exist anymore — skipping", v9, 2u);
    }
  }
}

void sub_10042CB54(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  dispatch thunk of ICObjectProviding.object(for:)();
  if (v4)
  {
    *a4 = v4;
    return;
  }

  if (v12[3])
  {
    sub_10015DA04(&qword_1006BF338, &unk_10054A770);
    if (swift_dynamicCast())
    {
      if (*(&v14 + 1))
      {
        sub_100192680(&v13, v16);
        sub_1002EC1FC(v16, &v13);
        sub_1000054A4(0, &unk_1006C2C90, ICAttachment_ptr);
        if (swift_dynamicCast())
        {
          v7 = [v12[0] isTable];

          sub_100009F60(v16);
          if (v7)
          {
            *a3 = 1;
          }
        }

        else
        {
          sub_100009F60(v16);
        }

        return;
      }
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    sub_1000073B4(v12, &qword_1006BE7A0, &unk_100535E20);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  sub_1000073B4(&v13, &qword_1006C82A8, &qword_10054A768);
  if (qword_1006BC940 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10002597C(v8, qword_1006C81A8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Object to be exported does not exist anymore — skipping", v11, 2u);
  }
}

void sub_10042CDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  sub_100422760(a1, a3, a4);
  objc_autoreleasePoolPop(v7);
}

double sub_10042CE28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 120) = 1;
  }

  return result;
}

void sub_10042CFC8()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0 && (v1 = v0, v2 = [v0 snapshotManagedObjectContext], v1, v2))
  {
    swift_getObjectType();
    if (qword_1006BC910 != -1)
    {
      swift_once();
    }

    v3 = static ICArchiveCreator.default;
    v5 = qword_1006EF9F8;
    v4 = unk_1006EFA00;
    v6 = qword_1006EFA08;
    v7 = qword_1006EFA10;

    v8 = 0;
    v9 = v3;
    v10 = v5;
    v11 = v4;
    v12 = v6;
    v13 = v7;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v15 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v16 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v17 = 0;
    sub_10042DF8C(v2, &v8);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __break(1u);
  }
}

double sub_10042D194@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v26 = a2;
  v32 = sub_10015DA04(&qword_1006C8290, &unk_10054A750);
  __chkstk_darwin(v32);
  v5 = &v25 - v4;
  v6 = sub_10015DA04(&qword_1006BE790, &qword_100536880);
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v31 = &v25 - v7;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    v35 = a1 & 0xC000000000000001;
    v29 = (v27 + 32);
    v30 = (v27 + 48);
    v36 = _swiftEmptyArrayStorage;
    v28 = (v27 + 56);
    while (1)
    {
      if (v35)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v34 + 16))
        {
          goto LABEL_20;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = v6;
      v14 = [v10 managedObjectContext];
      if (v14)
      {
        v15 = v14;
        v16 = a1;
        __chkstk_darwin(v14);
        v17 = v33;
        *(&v25 - 2) = v11;
        *(&v25 - 1) = v17;
        v18 = v37;
        NSManagedObjectContext.performAndWait<A>(_:)();
        v37 = v18;

        v6 = v13;
        if ((*v30)(v5, 1, v13) != 1)
        {
          v19 = *v29;
          (*v29)(v31, v5, v13);
          v20 = v36;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_1001CBC90(0, v20[2] + 1, 1, v20);
          }

          v22 = v20[2];
          v21 = v20[3];
          v36 = v20;
          if (v22 >= v21 >> 1)
          {
            v36 = sub_1001CBC90((v21 > 1), v22 + 1, 1, v36);
          }

          v23 = v36;
          v36[2] = v22 + 1;
          v6 = v13;
          v19(&v23[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22], v31, v13);
          a1 = v16;
          goto LABEL_6;
        }
      }

      else
      {

        (*v28)(v5, 1, 1, v6);
      }

      sub_1000073B4(v5, &qword_1006C8290, &unk_10054A750);
LABEL_6:
      ++v9;
      if (v12 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v36 = _swiftEmptyArrayStorage;
LABEL_23:
  sub_10041CF60(v36, v26, v25);

  return result;
}

uint64_t sub_10042D890(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_10042D92C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  v5 = a2[1];
  *(v4 + 24) = *a2;
  *(v4 + 104) = 0;
  *(v4 + 112) = 32;
  *(v4 + 120) = 0;
  *(v4 + 16) = a1;
  *(v4 + 40) = v5;
  *(v4 + 56) = a2[2];
  *(v4 + 69) = *(a2 + 45);
  *(v4 + 88) = a3;
  *(v4 + 96) = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_10041CA6C();
  return v4;
}

double sub_10042D99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10042DAB4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_10042DAD8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10042DAF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 61))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_10042DB5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 61) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 61) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10042DCA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10042DDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_10042DE48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10042DF00(uint64_t a1, void *a2)
{
  result = (*(v2 + 32))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

id sub_10042DF8C(void *a1, _OWORD *a2)
{
  type metadata accessor for ICModernObjectProvider();
  swift_allocObject();
  v4 = a1;
  v5 = ICModernObjectProvider.init(context:)();
  v6 = [objc_opt_self() defaultManager];
  sub_10015DA04(&qword_1006C82C0, &unk_10054A7D0);
  v7 = swift_allocObject();
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  v8 = a2[1];
  *(v7 + 24) = *a2;
  *(v7 + 104) = 0;
  *(v7 + 112) = 32;
  *(v7 + 120) = 0;
  *(v7 + 16) = v5;
  *(v7 + 40) = v8;
  *(v7 + 56) = a2[2];
  *(v7 + 69) = *(a2 + 45);
  *(v7 + 88) = v6;
  *(v7 + 96) = &protocol witness table for NSFileManager;

  v9 = v6;
  sub_10041C900();

  v10 = type metadata accessor for ICArchiveExporterObjCBridge();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR___ICArchiveExporter_exporter] = v7;
  v14.receiver = v11;
  v14.super_class = v10;

  v12 = objc_msgSendSuper2(&v14, "init");

  return v12;
}

void sub_10042E0FC()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0 && (v1 = v0, v2 = [v0 snapshotManagedObjectContext], v1, v2))
  {
    if (qword_1006BC910 != -1)
    {
      swift_once();
    }

    v3 = static ICArchiveCreator.default;
    v5 = qword_1006EF9F8;
    v4 = unk_1006EFA00;
    v7 = qword_1006EFA08;
    v6 = qword_1006EFA10;

    v8 = 0;
    v9 = v3;
    v10 = v5;
    v11 = v4;
    v12 = v7;
    v13 = v6;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v15 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v16 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v17 = 256;
    sub_10042DF8C(v2, &v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_10042E22C()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0 && (v1 = v0, v2 = [v0 snapshotManagedObjectContext], v1, v2))
  {
    if (qword_1006BC910 != -1)
    {
      swift_once();
    }

    v3 = static ICArchiveCreator.default;
    v5 = qword_1006EF9F8;
    v4 = unk_1006EFA00;
    v7 = qword_1006EFA08;
    v6 = qword_1006EFA10;

    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v9 = 513;
    v10 = v3;
    v11 = v5;
    v12 = v4;
    v13 = v7;
    v14 = v6;
    v15 = IsAlexandriaDemoModeEnabled;
    v16 = 1;
    v17 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v18 = 0;
    sub_10042DF8C(v2, &v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10042E404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a1;
  v132 = a2;
  v126 = type metadata accessor for IconOnlyLabelStyle();
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v122 = &v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10015DA04(&qword_1006C82E0, &qword_10054A8C8);
  __chkstk_darwin(v119);
  v121 = (&v105 - v3);
  v127 = sub_10015DA04(&qword_1006C82E8, &qword_10054A8D0);
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v123 = &v105 - v4;
  v118 = sub_10015DA04(&qword_1006C82F0, &qword_10054A8D8);
  v5 = __chkstk_darwin(v118);
  v131 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v120 = &v105 - v8;
  __chkstk_darwin(v7);
  v130 = &v105 - v9;
  v111 = sub_10015DA04(&qword_1006C82F8, &qword_10054A8E0);
  __chkstk_darwin(v111);
  v11 = &v105 - v10;
  v112 = sub_10015DA04(&qword_1006C8300, &qword_10054A8E8);
  v12 = __chkstk_darwin(v112);
  v136 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v113 = &v105 - v15;
  __chkstk_darwin(v14);
  v139 = &v105 - v16;
  v17 = type metadata accessor for AvatarThumbnailView();
  v109 = *(v17 - 8);
  v110 = v17;
  __chkstk_darwin(v17);
  v19 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10015DA04(&qword_1006C8308, &qword_10054A8F0);
  v128 = *(v20 - 8);
  v129 = v20;
  v21 = __chkstk_darwin(v20);
  v135 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v138 = &v105 - v23;
  v24 = type metadata accessor for RoundedRectangle();
  v25 = v24 - 8;
  __chkstk_darwin(v24);
  v27 = (&v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_10015DA04(&qword_1006C8310, &qword_10054A8F8);
  __chkstk_darwin(v28);
  v30 = &v105 - v29;
  v31 = sub_10015DA04(&qword_1006C8318, &unk_10054A900);
  v32 = __chkstk_darwin(v31);
  v134 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = &v105 - v35;
  __chkstk_darwin(v34);
  v137 = &v105 - v37;
  static ActivityStream.Layout.colorBarWidth.getter();
  v39 = v38 * 0.5;
  v40 = *(v25 + 28);
  v41 = enum case for RoundedCornerStyle.continuous(_:);
  v42 = type metadata accessor for RoundedCornerStyle();
  (*(*(v42 - 8) + 104))(v27 + v40, v41, v42);
  *v27 = v39;
  v27[1] = v39;
  v43 = v106;
  if (*(v106 + 8))
  {
    v44 = *(v106 + 8);
    v133 = v44;
  }

  else
  {
    v44 = static Color.quaternary.getter();
    v133 = 0;
  }

  sub_10042F978(v27, v30);
  *&v30[*(v28 + 52)] = v44;
  *&v30[*(v28 + 56)] = 256;

  static ActivityStream.Layout.colorBarWidth.getter();
  static ActivityStream.Layout.avatarSize.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_1001F7498(v30, v36, &qword_1006C8310, &qword_10054A8F8);
  v45 = &v36[*(v31 + 36)];
  v46 = v148;
  *v45 = v147;
  *(v45 + 1) = v46;
  *(v45 + 2) = v149;
  sub_1001F7498(v36, v137, &qword_1006C8318, &unk_10054A900);
  static ActivityStream.Layout.colorBarSpacing.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v116 = v152;
  v117 = v150;
  v114 = v155;
  v115 = v154;
  v143 = 1;
  v142 = v151;
  v141 = v153;
  sub_10015DA04(&unk_1006BD390, &unk_100532CB0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100534670;
  v48 = *v43;
  *(v47 + 32) = *v43;
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 sharedThumbnailService];
  AvatarThumbnailView.init(thumbnailService:participants:)();
  static ActivityStream.Layout.avatarSize.getter();
  sub_10042FA9C(&qword_1006C8320, &type metadata accessor for AvatarThumbnailView, &protocol conformance descriptor for AvatarThumbnailView);
  v52 = v110;
  View.ic_frame(size:)();
  (*(v109 + 8))(v19, v52);
  static ActivityStream.Layout.avatarSpacing.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v109 = v158;
  v110 = v156;
  v107 = v161;
  v108 = v160;
  v146 = 1;
  v145 = v157;
  v144 = v159;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  sub_10015DA04(&qword_1006C8328, &qword_10054A910);
  sub_10042F39C(v43);
  v53 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v54 = &v11[*(v111 + 36)];
  *v54 = v53;
  *(v54 + 1) = v55;
  *(v54 + 2) = v56;
  *(v54 + 3) = v57;
  *(v54 + 4) = v58;
  v54[40] = 0;
  static ActivityStream.Layout.avatarSize.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v59 = v113;
  sub_1001F7498(v11, v113, &qword_1006C82F8, &qword_10054A8E0);
  v60 = (v59 + *(v112 + 36));
  v61 = v162[5];
  v60[4] = v162[4];
  v60[5] = v61;
  v60[6] = v162[6];
  v62 = v162[1];
  *v60 = v162[0];
  v60[1] = v62;
  v63 = v162[3];
  v60[2] = v162[2];
  v60[3] = v63;
  sub_1001F7498(v59, v139, &qword_1006C8300, &qword_10054A8E8);
  if ([objc_opt_self() deviceIsMac])
  {
    v64 = 0x4028000000000000;
  }

  else
  {
    v64 = 0x4010000000000000;
  }

  v65 = static VerticalAlignment.center.getter();
  v66 = v121;
  *v121 = v65;
  *(v66 + 8) = v64;
  *(v66 + 16) = 0;
  v67 = v66 + *(sub_10015DA04(&qword_1006C8330, &qword_10054A918) + 44);
  v68 = *(v43 + 32);
  v163 = *(v43 + 40);
  v69 = v163;
  v70 = swift_allocObject();
  v71 = *(v43 + 16);
  v70[1] = *v43;
  v70[2] = v71;
  v70[3] = *(v43 + 32);

  v72 = v50;

  v73 = v68;
  sub_100006038(&v163, v140, &qword_1006C8338, &qword_10054A920);
  sub_10015DA04(&qword_1006C8340, &unk_10054A928);
  sub_10042F9E4();
  Button.init(action:label:)();
  v140[0] = v73;
  v140[1] = v69;
  sub_10015DA04(&qword_1006C8350, &qword_10054A938);
  State.wrappedValue.getter();
  v74 = v67 + *(sub_10015DA04(&qword_1006C8358, &qword_10054A940) + 36);
  AnchorView.init(view:)();
  v75 = static Alignment.center.getter();
  v77 = v76;
  v78 = (v74 + *(sub_10015DA04(&qword_1006C8360, &qword_10054A948) + 36));
  *v78 = v75;
  v78[1] = v77;
  v79 = v122;
  IconOnlyLabelStyle.init()();
  sub_1000060B4(&qword_1006C8368, &qword_1006C82E0, &qword_10054A8C8, &protocol conformance descriptor for HStack<A>);
  sub_10042FA9C(&qword_1006BE3B8, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v80 = v123;
  v81 = v126;
  View.labelStyle<A>(_:)();
  (*(v124 + 8))(v79, v81);
  sub_1000073B4(v66, &qword_1006C82E0, &qword_10054A8C8);
  v82 = v120;
  v83 = &v120[*(v118 + 36)];
  v84 = *(sub_10015DA04(&qword_1006BE3D0, &qword_10054A950) + 28);
  v85 = enum case for Image.Scale.large(_:);
  v86 = type metadata accessor for Image.Scale();
  (*(*(v86 - 8) + 104))(v83 + v84, v85, v86);
  *v83 = swift_getKeyPath();
  (*(v125 + 32))(v82, v80, v127);
  v87 = v130;
  sub_1001F7498(v82, v130, &qword_1006C82F0, &qword_10054A8D8);
  v88 = v134;
  sub_100006038(v137, v134, &qword_1006C8318, &unk_10054A900);
  LODWORD(v123) = v143;
  LODWORD(v124) = v142;
  LODWORD(v125) = v141;
  v90 = v128;
  v89 = v129;
  v91 = *(v128 + 16);
  v92 = v135;
  v91(v135, v138, v129);
  LODWORD(v126) = v146;
  LODWORD(v127) = v145;
  LODWORD(v133) = v144;
  sub_100006038(v139, v136, &qword_1006C8300, &qword_10054A8E8);
  v93 = v131;
  sub_100006038(v87, v131, &qword_1006C82F0, &qword_10054A8D8);
  v94 = v88;
  v95 = v132;
  sub_100006038(v94, v132, &qword_1006C8318, &unk_10054A900);
  v96 = sub_10015DA04(&qword_1006C8370, &qword_10054A988);
  v97 = v95 + v96[12];
  *v97 = 0;
  *(v97 + 8) = v123;
  *(v97 + 16) = v117;
  *(v97 + 24) = v124;
  *(v97 + 32) = v116;
  *(v97 + 40) = v125;
  v98 = v114;
  *(v97 + 48) = v115;
  *(v97 + 56) = v98;
  v91((v95 + v96[16]), v92, v89);
  v99 = v95 + v96[20];
  *v99 = 0;
  *(v99 + 8) = v126;
  *(v99 + 16) = v110;
  *(v99 + 24) = v127;
  *(v99 + 32) = v109;
  *(v99 + 40) = v133;
  v100 = v107;
  *(v99 + 48) = v108;
  *(v99 + 56) = v100;
  v101 = v136;
  sub_100006038(v136, v95 + v96[24], &qword_1006C8300, &qword_10054A8E8);
  v102 = v95 + v96[28];
  *v102 = 0;
  *(v102 + 8) = 1;
  sub_100006038(v93, v95 + v96[32], &qword_1006C82F0, &qword_10054A8D8);
  sub_1000073B4(v87, &qword_1006C82F0, &qword_10054A8D8);
  sub_1000073B4(v139, &qword_1006C8300, &qword_10054A8E8);
  v103 = *(v90 + 8);
  v103(v138, v89);
  sub_1000073B4(v137, &qword_1006C8318, &unk_10054A900);
  sub_1000073B4(v93, &qword_1006C82F0, &qword_10054A8D8);
  sub_1000073B4(v101, &qword_1006C8300, &qword_10054A8E8);
  v103(v135, v89);
  return sub_1000073B4(v134, &qword_1006C8318, &unk_10054A900);
}

double sub_10042F39C(id *a1)
{
  v1 = *a1;
  v2 = [*a1 ic_participantName];
  if (!v2)
  {
    v2 = [v1 ic_emailAddress];
    if (!v2)
    {
      v2 = [v1 ic_phoneNumber];
      if (!v2)
      {
        v2 = [objc_opt_self() ic_ellipsisCharacterString];
      }
    }
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10019E0AC();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static ActivityStream.Layout.primaryFont.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_1001B39D4(v4, v6, v8 & 1);

  static Color.primary.getter();
  v14 = Text.foregroundColor(_:)();
  v16 = v15;
  v18 = v17;

  sub_1001B39D4(v9, v11, v13 & 1);

  View.hyphenationFactor(_:)();
  sub_1001B39D4(v14, v16, v18 & 1);

  return result;
}

void sub_10042F580(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_10015DA04(&qword_1006C8350, &qword_10054A938);
  State.wrappedValue.getter();
  v1();
}

__n128 sub_10042F5F0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE428, &qword_10053B7C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - v4;
  v6 = [objc_opt_self() mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 localizedStringForKey:v7 value:0 table:0];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *&v16[0] = v9;
  *(&v16[0] + 1) = v11;
  sub_10019E0AC();
  Label<>.init<A>(_:systemImage:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v3 + 32))(a1, v5, v2);
  v12 = a1 + *(sub_10015DA04(&qword_1006C8340, &unk_10054A928) + 36);
  v13 = v16[5];
  *(v12 + 64) = v16[4];
  *(v12 + 80) = v13;
  *(v12 + 96) = v16[6];
  v14 = v16[1];
  *v12 = v16[0];
  *(v12 + 16) = v14;
  result = v16[3];
  *(v12 + 32) = v16[2];
  *(v12 + 48) = result;
  return result;
}