uint64_t sub_1007AD1C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__date;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1007AD2C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__date;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1000342E0(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v14[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(v14[0], v4);
}

double sub_1007AD560(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__date;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  swift_endAccess();
  return result;
}

uint64_t sub_1007AD5FC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__source;
  swift_beginAccess();
  return sub_1000082B4(v5 + v3, a1, &qword_100AE2AA0, &unk_100954D20);
}

uint64_t sub_1007AD6D4(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AE2AA0, &unk_100954D20);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__source;
  swift_beginAccess();
  sub_1000082B4(v1 + v6, v5, &qword_100AE2AA0, &unk_100954D20);
  v7 = sub_1007B3BAC(v5, a1);
  sub_100004F84(v5, &qword_100AE2AA0, &unk_100954D20);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000082B4(a1, v5, &qword_100AE2AA0, &unk_100954D20);
    swift_beginAccess();
    sub_1003E48E0(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_100004F84(a1, &qword_100AE2AA0, &unk_100954D20);
}

double sub_1007AD8DC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__source;
  swift_beginAccess();
  sub_1007B3EE8(a2, a1 + v4);
  swift_endAccess();
  return result;
}

uint64_t sub_1007AD948()
{
  swift_getKeyPath();
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__shouldSubmitOnDisappear);
}

void sub_1007AD9F0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__shouldSubmitOnDisappear);
}

void sub_1007ADAA0(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__shouldSubmitOnDisappear) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__shouldSubmitOnDisappear) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1007ADBB8()
{
  swift_getKeyPath();
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

double sub_1007ADC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__delegate + 8) = a3;
  swift_unknownObjectWeakAssign();
  return result;
}

uint64_t sub_1007ADC94@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v2);
  v39 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v34 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v40 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v38 = v34 - v11;
  __chkstk_darwin(v12);
  v14 = v34 - v13;
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  v18 = *(v1 + 16);
  v19 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleDate;
  swift_beginAccess();
  sub_1000082B4(v18 + v19, v6, &unk_100AD4790, &unk_10093B4E0);
  v20 = *(v8 + 48);
  if (v20(v6, 1, v7) == 1)
  {
    sub_100004F84(v6, &unk_100AD4790, &unk_10093B4E0);
  }

  else
  {
    v34[1] = v2;
    v35 = *(v8 + 32);
    v35(v17, v6, v7);
    v36 = v14;
    v37 = v17;
    sub_100492EAC(v14);
    swift_allocObject();
    swift_weakInit();
    v21 = v39;
    NSManagedObjectContext.performAndWait<A>(_:)();

    if (v20(v21, 1, v7) == 1)
    {
      v22 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
      swift_beginAccess();
      v23 = v38;
      (*(v8 + 16))(v38, v18 + v22, v7);
      v24 = v20(v21, 1, v7);
      v25 = v35;
      if (v24 != 1)
      {
        sub_100004F84(v21, &unk_100AD4790, &unk_10093B4E0);
      }
    }

    else
    {
      v23 = v38;
      v25 = v35;
      v35(v38, v21, v7);
    }

    v26 = v40;
    sub_100492EAC(v40);
    v27 = *(v8 + 8);
    v27(v23, v7);
    sub_1000342E0(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v28 = v36;
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27(v26, v7);
    v27(v28, v7);
    if ((v29 & 1) == 0)
    {
      v32 = v41;
      v25(v41, v37, v7);
      v31 = v32;
      v30 = 0;
      return (*(v8 + 56))(v31, v30, 1, v7);
    }

    v27(v37, v7);
  }

  v30 = 1;
  v31 = v41;
  return (*(v8 + 56))(v31, v30, 1, v7);
}

double sub_1007AE118()
{
  swift_getKeyPath();
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

void sub_1007AE1C4(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaDates) = a2;
}

uint64_t sub_1007AE208()
{
  swift_getKeyPath();
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaType);
}

void sub_1007AE2B0(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaType);
  if (v2 == 3)
  {
    if (a1 != 3)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }
  }

  else if (v2 != a1)
  {
    goto LABEL_3;
  }

  *(v1 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaType) = a1;
}

uint64_t sub_1007AE3D8()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsKey();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v55 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EntryDateSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AE36E8, &unk_100968430);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v53 - v9;
  v11 = sub_1000F24EC(&qword_100AE2AA0, &unk_100954D20);
  __chkstk_darwin(v11 - 8);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  swift_getKeyPath();
  v60 = v0;
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__source;
  swift_beginAccess();
  (*(v5 + 104))(v15, enum case for EntryDateSource.moment(_:), v4);
  (*(v5 + 56))(v15, 0, 1, v4);
  v17 = *(v8 + 56);
  sub_1000082B4(v1 + v16, v10, &qword_100AE2AA0, &unk_100954D20);
  sub_1000082B4(v15, &v10[v17], &qword_100AE2AA0, &unk_100954D20);
  v18 = *(v5 + 48);
  if (v18(v10, 1, v4) != 1)
  {
    v19 = v58;
    sub_1000082B4(v10, v58, &qword_100AE2AA0, &unk_100954D20);
    if (v18(&v10[v17], 1, v4) != 1)
    {
      v20 = v54;
      (*(v5 + 32))(v54, &v10[v17], v4);
      sub_1000342E0(&qword_100AE36F0, &type metadata accessor for EntryDateSource, &protocol conformance descriptor for EntryDateSource);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v20, v4);
      sub_100004F84(v15, &qword_100AE2AA0, &unk_100954D20);
      v22(v19, v4);
      sub_100004F84(v10, &qword_100AE2AA0, &unk_100954D20);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_100004F84(v15, &qword_100AE2AA0, &unk_100954D20);
    (*(v5 + 8))(v19, v4);
LABEL_6:
    sub_100004F84(v10, &qword_100AE36E8, &unk_100968430);
    return 0;
  }

  sub_100004F84(v15, &qword_100AE2AA0, &unk_100954D20);
  if (v18(&v10[v17], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_100004F84(v10, &qword_100AE2AA0, &unk_100954D20);
LABEL_8:
  sub_1000065A8(0, &qword_100AE1A30, NSUserDefaults_ptr);
  v23 = static NSUserDefaults.shared.getter();
  v25 = v55;
  v24 = v56;
  v26 = v57;
  (*(v56 + 104))(v55, enum case for SettingsKey.alwaysUseMomentDate(_:), v57);
  SettingsKey.rawValue.getter();
  (*(v24 + 8))(v25, v26);
  v27 = String._bridgeToObjectiveC()();

  v28 = [v23 BOOLForKey:v27];

  if ((v28 & 1) == 0)
  {
    v29 = *(sub_1007B376C() + 2);

    if (v29 <= 2)
    {
      v30 = sub_1007B376C();
      v31 = sub_100891094(v30);

      v59[2] = v31;
      v32 = *(v1 + 16);
      v33 = OBJC_IVAR____TtC7Journal14EntryViewModel_id;
      v34 = *(v32 + OBJC_IVAR____TtC7Journal14EntryViewModel_id);
      v35 = [v34 description];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      LOBYTE(v34) = sub_100286DEC(v59, v36, v38);

      if (v34)
      {
        v39 = *(v32 + v33);
        v40 = [v39 description];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = sub_1007B376C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_10009BCC8(0, *(v44 + 2) + 1, 1, v44);
        }

        v46 = *(v44 + 2);
        v45 = *(v44 + 3);
        if (v46 >= v45 >> 1)
        {
          v44 = sub_10009BCC8((v45 > 1), v46 + 1, 1, v44);
        }

        *(v44 + 2) = v46 + 1;
        v47 = &v44[2 * v46];
        *(v47 + 4) = v41;
        *(v47 + 5) = v43;
        v48 = [objc_opt_self() standardUserDefaults];
        isa = Array._bridgeToObjectiveC()().super.isa;

        v50 = String._bridgeToObjectiveC()();
        [v48 setObject:isa forKey:v50];

        v51 = *(sub_1007B376C() + 2);

        if (v51 == 3)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1007AEB5C@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v7 - 8);
  v9 = v12 - v8;
  sub_1007ADC94(v12 - v8);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 48))(v9, 1, v10);
  sub_100004F84(v9, &unk_100AD4790, &unk_10093B4E0);
  swift_getKeyPath();
  v13 = v1;
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1007AF14C()
{
  v1[3] = v0;
  v1[4] = type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v2;

  return _swift_task_switch(sub_1007AF1E8, v3, v2);
}

uint64_t sub_1007AF1E8()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(*(v1 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaDates) + 16))
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
    v5 = static MainActor.shared.getter();
    v0[8] = v5;
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_1007AF3A0;
    v7 = v0[3];

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v6, v4, &type metadata for () + 1, v5, &protocol witness table for MainActor, &unk_100968390, v7, v4);
  }
}

uint64_t sub_1007AF3A0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10063D208, v3, v2);
}

uint64_t sub_1007AF4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v4 = type metadata accessor for Calendar();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v5 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = sub_1000F24EC(&unk_100AEE0A0, &unk_100943F50);
  v3[41] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AD5B20, qword_1009521A0);
  v3[42] = v6;
  v3[43] = *(v6 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[58] = v7;
  v3[59] = *(v7 - 8);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[68] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[69] = v9;
  v3[70] = v8;

  return _swift_task_switch(sub_1007AF8A8, v9, v8);
}

void sub_1007AF8A8()
{
  v234 = v0;
  *(v0 + 192) = _swiftEmptySetSingleton;
  v214 = (v0 + 192);
  v1 = *(*(*(v0 + 232) + 16) + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v1 >> 62)
  {
    v150 = *(*(v0 + 232) + 16);
    v151 = _CocoaArrayWrapper.endIndex.getter();
    v152 = v150;
    v2 = v151;
    v205 = v152;
    if (v151)
    {
      goto LABEL_3;
    }

LABEL_91:
    v226 = _swiftEmptyArrayStorage;
    v213 = 3;
    v149 = _swiftEmptySetSingleton;
LABEL_92:
    *(v0 + 568) = v149;
    v153 = *(v0 + 464);
    v154 = *(v0 + 472);
    v155 = *(v0 + 456);
    sub_1006040D4(v149, v155);
    v156 = *(v154 + 48);
    if (v156(v155, 1, v153) == 1)
    {
      sub_100004F84(*(v0 + 456), &unk_100AD4790, &unk_10093B4E0);
    }

    else
    {
      v229 = v149;
      v232 = v156;
      v157 = *(v0 + 464);
      v158 = *(v0 + 400);
      v224 = *(*(v0 + 472) + 32);
      v224(*(v0 + 528), *(v0 + 456), v157);
      static Calendar.current.getter();
      swift_allocObject();
      swift_weakInit();
      NSManagedObjectContext.performAndWait<A>(_:)();

      v159 = v156(v158, 1, v157);
      v160 = *(v0 + 496);
      if (v159 == 1)
      {
        v161 = v156;
        v162 = *(v0 + 464);
        v163 = *(v0 + 472);
        v164 = *(v0 + 400);
        v165 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
        swift_beginAccess();
        (*(v163 + 16))(v160, v205 + v165, v162);
        if (v161(v164, 1, v162) != 1)
        {
          sub_100004F84(*(v0 + 400), &unk_100AD4790, &unk_10093B4E0);
        }
      }

      else
      {
        v224(v160, *(v0 + 400), *(v0 + 464));
      }

      v166 = *(v0 + 528);
      v167 = *(v0 + 496);
      v169 = *(v0 + 464);
      v168 = *(v0 + 472);
      v170 = *(v0 + 264);
      v171 = *(v0 + 240);
      v172 = *(v0 + 248);
      v225 = Calendar.isDate(_:inSameDayAs:)();
      v173 = *(v168 + 8);
      v173(v167, v169);
      (*(v172 + 8))(v170, v171);
      v173(v166, v169);
      v149 = v229;
      v156 = v232;
      if (v225)
      {
        goto LABEL_110;
      }
    }

    v174 = *(v0 + 464);
    v175 = *(v0 + 392);
    sub_1007ADC94(v175);
    if (v156(v175, 1, v174) == 1)
    {
      v176 = (v0 + 392);
LABEL_103:
      sub_100004F84(*v176, &unk_100AD4790, &unk_10093B4E0);
      goto LABEL_104;
    }

    v177 = *(v0 + 464);
    v178 = *(v0 + 384);
    v179 = *(*(v0 + 472) + 32);
    v179(*(v0 + 488), *(v0 + 392), v177);
    sub_1006040D4(v149, v178);
    if (v156(v178, 1, v177) == 1)
    {
      v176 = (v0 + 384);
      (*(*(v0 + 472) + 8))(*(v0 + 488), *(v0 + 464));
      goto LABEL_103;
    }

    v192 = *(v0 + 472);
    v191 = *(v0 + 480);
    v193 = *(v0 + 464);
    v195 = *(v0 + 248);
    v194 = *(v0 + 256);
    v196 = *(v0 + 240);
    v197 = *(v0 + 488);
    v179(v191, *(v0 + 384), v193);
    static Calendar.current.getter();
    v198 = Calendar.isDate(_:inSameDayAs:)();
    (*(v195 + 8))(v194, v196);
    v199 = *(v192 + 8);
    v199(v191, v193);
    v199(v197, v193);
    if ((v198 & 1) == 0)
    {
LABEL_104:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v180 = v226;
      }

      else
      {
        v180 = sub_100692AC0(v226);
      }

      *(v0 + 576) = v180;
      v181 = *(v180 + 2);
      v182 = *(*(v0 + 296) + 80);
      v233[0] = v180 + ((v182 + 32) & ~v182);
      v233[1] = v181;
      v183 = v180;
      sub_1007B2758(v233);
      v184 = *(v0 + 232);
      swift_getKeyPath();
      v185 = swift_task_alloc();
      *(v185 + 16) = v184;
      *(v185 + 24) = v183;
      *(v0 + 584) = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel___observationRegistrar;
      *(v0 + 200) = v184;
      *(v0 + 592) = sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v186 = *(v184 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaType);
      if (v186 == 3)
      {
        v187 = v213;
        if (v213 != 3)
        {
LABEL_108:
          v188 = *(v0 + 232);
          v189 = v187;
          swift_getKeyPath();
          v190 = swift_task_alloc();
          *(v190 + 16) = v188;
          *(v190 + 24) = v189;
          *(v0 + 208) = v188;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_116:
          v202 = *(v0 + 544);
          v203 = **(v0 + 224);

          v204 = swift_task_alloc();
          *(v0 + 600) = v204;
          *v204 = v0;
          v204[1] = sub_1007B131C;

          sub_1007AC8C8(v202, &protocol witness table for MainActor, v203);
          return;
        }
      }

      else
      {
        v201 = v186 == v213;
        v187 = v213;
        if (!v201)
        {
          goto LABEL_108;
        }
      }

      *(v184 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaType) = v187;
      goto LABEL_116;
    }

LABEL_110:

    v200 = *(v0 + 8);

    v200();
    return;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v205 = *(*(v0 + 232) + 16);
  if (!v2)
  {
    goto LABEL_91;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = *(v0 + 472);
    v207 = *(v0 + 328);
    v219 = v1 & 0xC000000000000001;
    v206 = (*(v0 + 344) + 56);
    v4 = (v3 + 48);
    v209 = *(v0 + 296);
    v208 = *(v0 + 288);
    v215 = (v3 + 32);
    v222 = (v3 + 16);
    v223 = (v3 + 56);
    v221 = (v3 + 8);

    v5 = 0;
    v226 = _swiftEmptyArrayStorage;
    v213 = 3;
    v212 = v1;
    v220 = v2;
    v227 = v4;
    v211 = v0;
    while (1)
    {
      v228 = v5;
      if (v219)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v1 + 8 * v5 + 32);
      }

      v10 = v9;
      type metadata accessor for PhotoAsset(0);
      v11 = swift_dynamicCastClass();
      v230 = v10;
      if (!v11)
      {
        goto LABEL_28;
      }

      v12 = v11;
      v13 = OBJC_IVAR____TtC7Journal10PhotoAsset_metadata;
      if (*(v11 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata))
      {
        v14 = v10;
      }

      else
      {
        v15 = *(v11 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
        if (v15)
        {
          v16 = v10;
          v17 = [v15 assetMetaData];
          if (v17)
          {
            v18 = *(v0 + 328);
            v216 = *(v0 + 336);
            v19 = v17;
            v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v22 = v21;

            *v18 = v20;
            v4 = v227;
            *(v207 + 8) = v22;
            swift_storeEnumTagMultiPayload();
            sub_1000F24EC(&unk_100AEE0B0, &unk_100943F60);
            v23 = swift_allocObject();
            (*v206)(v23 + *(*v23 + 104), 1, 1, v216);
            *(v23 + *(*v23 + 112)) = xmmword_100941EE0;
            sub_100021CEC(v18, v23 + *(*v23 + 120), &unk_100AEE0A0, &unk_100943F50);
            *(v12 + v13) = v23;
          }

          if (!*(v12 + v13))
          {
LABEL_22:
            v35 = *(v0 + 368);
            v36 = type metadata accessor for PhotoLibraryAssetMetadata();
            (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
LABEL_23:
            v37 = *(v0 + 464);
            v38 = *(v0 + 440);
            sub_100004F84(*(v0 + 368), &qword_100AD5B20, qword_1009521A0);
            (*v223)(v38, 1, 1, v37);
LABEL_24:
            v39 = *(v0 + 464);
            v41 = *(v0 + 440);
            v40 = *(v0 + 448);
            v42 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
            swift_beginAccess();
            sub_1000082B4(v12 + v42, v40, &unk_100AD4790, &unk_10093B4E0);
            v10 = v230;

            v30 = *v4;
            if ((*v4)(v41, 1, v39) != 1)
            {
              sub_100004F84(*(v0 + 440), &unk_100AD4790, &unk_10093B4E0);
            }

            goto LABEL_26;
          }
        }

        else
        {
          v34 = v10;
          if (!*(v12 + v13))
          {
            goto LABEL_22;
          }
        }
      }

      v24 = *(v0 + 368);

      sub_100046ADC(v24);

      v25 = type metadata accessor for PhotoLibraryAssetMetadata();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v24, 1, v25) == 1)
      {
        goto LABEL_23;
      }

      v27 = *(v0 + 464);
      v28 = *(v0 + 440);
      v29 = *(v0 + 368);
      PhotoLibraryAssetMetadata.date.getter();
      (*(v26 + 8))(v29, v25);
      v30 = *v4;
      if ((*v4)(v28, 1, v27) == 1)
      {
        goto LABEL_24;
      }

      v31 = *(v0 + 464);
      v33 = *(v0 + 440);
      v32 = *(v0 + 448);
      v10 = v230;

      (*v215)(v32, v33, v31);
      (*v223)(v32, 0, 1, v31);
LABEL_26:
      v43 = *(v0 + 464);
      v44 = *(v0 + 448);
      v45 = 1;
      if (v30(v44, 1, v43) != 1)
      {
        goto LABEL_48;
      }

      sub_100004F84(v44, &unk_100AD4790, &unk_10093B4E0);
      v4 = v227;
LABEL_28:
      type metadata accessor for LivePhotoAsset(0);
      v46 = swift_dynamicCastClass();
      if (!v46)
      {
        goto LABEL_45;
      }

      v47 = v46;
      v48 = OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata;
      if (*(v46 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata))
      {
        v49 = v10;
      }

      else
      {
        v50 = *(v46 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
        if (v50)
        {
          v51 = v10;
          v52 = [v50 assetMetaData];
          if (v52)
          {
            v53 = *(v0 + 328);
            v54 = *(v0 + 336);
            v55 = v52;
            v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v58 = v57;

            *v53 = v56;
            *(v207 + 8) = v58;
            v4 = v227;
            swift_storeEnumTagMultiPayload();
            sub_1000F24EC(&unk_100AEE0B0, &unk_100943F60);
            v59 = swift_allocObject();
            (*v206)(v59 + *(*v59 + 104), 1, 1, v54);
            *(v59 + *(*v59 + 112)) = xmmword_100941EE0;
            sub_100021CEC(v53, v59 + *(*v59 + 120), &unk_100AEE0A0, &unk_100943F50);
            *(v47 + v48) = v59;
          }

          if (!*(v47 + v48))
          {
LABEL_39:
            v71 = *(v0 + 360);
            v72 = type metadata accessor for PhotoLibraryAssetMetadata();
            (*(*(v72 - 8) + 56))(v71, 1, 1, v72);
LABEL_40:
            v73 = *(v0 + 464);
            v74 = *(v0 + 424);
            sub_100004F84(*(v0 + 360), &qword_100AD5B20, qword_1009521A0);
            (*v223)(v74, 1, 1, v73);
LABEL_41:
            v75 = *(v0 + 464);
            v77 = *(v0 + 424);
            v76 = *(v0 + 432);
            v78 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
            swift_beginAccess();
            sub_1000082B4(v47 + v78, v76, &unk_100AD4790, &unk_10093B4E0);

            v66 = *v4;
            if ((*v4)(v77, 1, v75) != 1)
            {
              sub_100004F84(*(v0 + 424), &unk_100AD4790, &unk_10093B4E0);
            }

            goto LABEL_43;
          }
        }

        else
        {
          v70 = v10;
          if (!*(v47 + v48))
          {
            goto LABEL_39;
          }
        }
      }

      v60 = *(v0 + 360);

      sub_100046ADC(v60);

      v61 = type metadata accessor for PhotoLibraryAssetMetadata();
      v62 = *(v61 - 8);
      if ((*(v62 + 48))(v60, 1, v61) == 1)
      {
        goto LABEL_40;
      }

      v63 = *(v0 + 464);
      v64 = *(v0 + 424);
      v65 = *(v0 + 360);
      PhotoLibraryAssetMetadata.date.getter();
      (*(v62 + 8))(v65, v61);
      v66 = *v4;
      if ((*v4)(v64, 1, v63) == 1)
      {
        goto LABEL_41;
      }

      v67 = *(v0 + 464);
      v69 = *(v0 + 424);
      v68 = *(v0 + 432);

      (*v215)(v68, v69, v67);
      (*v223)(v68, 0, 1, v67);
LABEL_43:
      v43 = *(v0 + 464);
      v44 = *(v0 + 432);
      v45 = 1;
      if (v66(v44, 1, v43) != 1)
      {
LABEL_48:
        v217 = 0;
        v83 = 0;
        goto LABEL_65;
      }

      sub_100004F84(v44, &unk_100AD4790, &unk_10093B4E0);
      v4 = v227;
      v10 = v230;
LABEL_45:
      type metadata accessor for VideoAsset(0);
      v79 = swift_dynamicCastClass();
      if (!v79)
      {

        goto LABEL_7;
      }

      v80 = v79;
      v81 = OBJC_IVAR____TtC7Journal10VideoAsset_metadata;
      if (*(v79 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata))
      {
        v82 = v10;
      }

      else
      {
        v84 = *(v79 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
        if (v84)
        {
          v85 = v10;
          v86 = [v84 assetMetaData];
          if (v86)
          {
            v87 = *(v0 + 328);
            v88 = *(v0 + 336);
            v89 = v86;
            v90 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v92 = v91;

            *v87 = v90;
            *(v207 + 8) = v92;
            v4 = v227;
            swift_storeEnumTagMultiPayload();
            sub_1000F24EC(&unk_100AEE0B0, &unk_100943F60);
            v93 = swift_allocObject();
            (*v206)(v93 + *(*v93 + 104), 1, 1, v88);
            *(v93 + *(*v93 + 112)) = xmmword_100941EE0;
            sub_100021CEC(v87, v93 + *(*v93 + 120), &unk_100AEE0A0, &unk_100943F50);
            *(v80 + v81) = v93;
          }

          if (!*(v80 + v81))
          {
LABEL_58:
            v105 = *(v0 + 352);
            v106 = type metadata accessor for PhotoLibraryAssetMetadata();
            (*(*(v106 - 8) + 56))(v105, 1, 1, v106);
LABEL_59:
            v107 = *(v0 + 464);
            v108 = *(v0 + 408);
            sub_100004F84(*(v0 + 352), &qword_100AD5B20, qword_1009521A0);
            (*v223)(v108, 1, 1, v107);
LABEL_60:
            v109 = *(v0 + 464);
            v111 = *(v0 + 408);
            v110 = *(v0 + 416);
            v112 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
            swift_beginAccess();
            sub_1000082B4(v80 + v112, v110, &unk_100AD4790, &unk_10093B4E0);

            v100 = *v4;
            if ((*v4)(v111, 1, v109) != 1)
            {
              sub_100004F84(*(v0 + 408), &unk_100AD4790, &unk_10093B4E0);
            }

            goto LABEL_62;
          }
        }

        else
        {
          v104 = v10;
          if (!*(v80 + v81))
          {
            goto LABEL_58;
          }
        }
      }

      v94 = *(v0 + 352);

      sub_100046ADC(v94);

      v95 = type metadata accessor for PhotoLibraryAssetMetadata();
      v96 = *(v95 - 8);
      if ((*(v96 + 48))(v94, 1, v95) == 1)
      {
        goto LABEL_59;
      }

      v97 = *(v0 + 464);
      v98 = *(v0 + 408);
      v99 = *(v0 + 352);
      PhotoLibraryAssetMetadata.date.getter();
      (*(v96 + 8))(v99, v95);
      v100 = *v4;
      if ((*v4)(v98, 1, v97) == 1)
      {
        goto LABEL_60;
      }

      v101 = *(v0 + 464);
      v103 = *(v0 + 408);
      v102 = *(v0 + 416);

      (*v215)(v102, v103, v101);
      (*v223)(v102, 0, 1, v101);
LABEL_62:
      v43 = *(v0 + 464);
      v44 = *(v0 + 416);
      if (v100(v44, 1, v43) == 1)
      {

        sub_100004F84(v44, &unk_100AD4790, &unk_10093B4E0);
        goto LABEL_7;
      }

      v217 = 1;
      v45 = 0;
      v83 = 1;
LABEL_65:
      v113 = *(v0 + 520);
      v115 = *(v0 + 504);
      v114 = *(v0 + 512);
      (*v215)(*(v0 + 536), v44, v43);
      sub_100492EAC(v113);
      v116 = *v222;
      (*v222)(v115, v113, v43);
      v117 = sub_10028B4B8(v114, v115);
      v118 = *v221;
      (*v221)(v114, v43);
      if (v117)
      {
        v119 = v213;
        if (v213 > 1)
        {
          if (v213 != 2)
          {
LABEL_74:
            v119 = v83;
          }
        }

        else
        {
          if (v213)
          {
            if ((v45 & 1) == 0)
            {
              goto LABEL_74;
            }
          }

          else if ((v217 & 1) == 0)
          {
            goto LABEL_74;
          }

          v119 = 2;
        }

        v213 = v119;
        v120 = *(v0 + 520);
        v121 = *(v0 + 464);
        v122 = *(v0 + 312);
        v218 = swift_allocBox();
        v124 = v123;
        v125 = OBJC_IVAR____TtC7Journal5Asset_id;
        v126 = type metadata accessor for UUID();
        (*(*(v126 - 8) + 16))(v124, &v230[v125], v126);
        v116((v124 + *(v208 + 20)), v120, v121);
        *(v124 + *(v208 + 24)) = 0;
        swift_beginAccess();
        sub_1007B38F8(v124, v122);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v127 = v226;
        }

        else
        {
          v127 = sub_1003E6F24(0, *(v226 + 2) + 1, 1, v226);
        }

        v129 = *(v127 + 2);
        v128 = *(v127 + 3);
        v210 = v118;
        if (v129 >= v128 >> 1)
        {
          v127 = sub_1003E6F24((v128 > 1), v129 + 1, 1, v127);
        }

        v130 = *(v0 + 312);
        v131 = *(v0 + 280);
        v132 = *(v211 + 272);
        *(v127 + 2) = v129 + 1;
        v226 = v127;
        sub_1007B39D0(v130, v127 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v129);
        v133 = type metadata accessor for TaskPriority();
        v134 = *(v133 - 8);
        (*(v134 + 56))(v131, 1, 1, v133);
        v135 = swift_allocObject();
        v135[2] = 0;
        v136 = v135 + 2;
        v135[3] = 0;
        v135[4] = v218;
        v135[5] = v230;
        sub_1000082B4(v131, v132, &qword_100AD5170, &unk_100943680);
        v137 = v132;
        v0 = v211;
        LODWORD(v131) = (*(v134 + 48))(v137, 1, v133);
        v231 = v230;

        v138 = *(v211 + 272);
        if (v131 == 1)
        {
          sub_100004F84(*(v211 + 272), &qword_100AD5170, &unk_100943680);
          if (*v136)
          {
            goto LABEL_81;
          }

LABEL_83:
          v139 = 0;
          v141 = 0;
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v134 + 8))(v138, v133);
          if (!*v136)
          {
            goto LABEL_83;
          }

LABEL_81:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v139 = dispatch thunk of Actor.unownedExecutor.getter();
          v141 = v140;
          swift_unknownObjectRelease();
        }

        v142 = **(v211 + 224);
        v143 = swift_allocObject();
        *(v143 + 16) = &unk_1009683D0;
        *(v143 + 24) = v135;

        if (v141 | v139)
        {
          v144 = v214 - 22;
          *(v214 - 22) = 0;
          *(v214 - 21) = 0;
          *(v211 + 32) = v139;
          *(v211 + 40) = v141;
        }

        else
        {
          v144 = 0;
        }

        v145 = *(v211 + 536);
        v146 = *(v211 + 520);
        v147 = *(v211 + 464);
        v148 = *(v211 + 280);
        *(v211 + 120) = 1;
        *(v211 + 128) = v144;
        *(v211 + 136) = v142;
        swift_task_create();

        sub_100004F84(v148, &qword_100AD5170, &unk_100943680);
        v210(v146, v147);
        v210(v145, v147);

        goto LABEL_6;
      }

      v6 = *(v0 + 536);
      v7 = *(v0 + 520);
      v8 = *(v0 + 464);

      v118(v7, v8);
      v118(v6, v8);
LABEL_6:
      v1 = v212;
      v4 = v227;
LABEL_7:
      v5 = v228 + 1;
      if (v220 == v228 + 1)
      {

        v149 = *v214;
        goto LABEL_92;
      }
    }
  }

  __break(1u);
}

void sub_1007B131C(uint64_t a1)
{
  v3 = *v2;
  v3[76] = a1;
  v3[77] = v1;

  if (v1)
  {
  }

  else
  {

    v4 = v3[70];
    v5 = v3[69];

    _swift_task_switch(sub_1007B1460, v5, v4);
  }
}

void sub_1007B1460()
{
  v9 = v0;
  v1 = v0[77];
  v2 = v0[76];

  v8 = v2;

  sub_1007B1C8C(&v8, v3);
  if (v1)
  {
  }

  else
  {

    v4 = v8;
    if (*(v8 + 2))
    {
      v5 = v0[29];
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v5;
      *(v6 + 24) = v4;
      v0[27] = v5;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
    }

    v7 = v0[1];

    v7();
  }
}

uint64_t sub_1007B173C(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a1;
  v6[12] = a6;
  v6[8] = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  v6[9] = v7;
  v6[13] = swift_projectBox();

  return _swift_task_switch(sub_1007B17BC, 0, 0);
}

uint64_t sub_1007B17BC()
{
  if (qword_100ACFB90 != -1)
  {
    swift_once();
  }

  v1 = qword_100B2F628;
  v0[14] = v0[8];
  v0[15] = v1;
  v0[16] = [objc_opt_self() currentTraitCollection];
  v0[17] = type metadata accessor for MainActor();
  v0[18] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[19] = v3;
  v0[20] = v2;

  return _swift_task_switch(sub_1007B18B8, v3, v2);
}

uint64_t sub_1007B18B8(uint64_t a1)
{
  v2 = *(v1 + 96);
  v8 = *(v1 + 120);
  v3 = static MainActor.shared.getter();
  *(v1 + 168) = v3;
  v4 = swift_task_alloc();
  *(v1 + 176) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = 6;
  *(v4 + 32) = 0;
  *(v4 + 40) = 1;
  *(v4 + 48) = v8;
  v5 = swift_task_alloc();
  *(v1 + 184) = v5;
  v6 = sub_1000F24EC(&qword_100AE4D18, &qword_1009683F0);
  *v5 = v1;
  v5[1] = sub_1007B1A00;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 80, v3, &protocol witness table for MainActor, 0xD00000000000003BLL, 0x80000001009004A0, sub_1006877A4, v4, v6);
}

uint64_t sub_1007B1A00()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_1007B1B60, v3, v2);
}

uint64_t sub_1007B1B60()
{

  *(v0 + 192) = *(v0 + 80);

  return _swift_task_switch(sub_1007B1BDC, 0, 0);
}

uint64_t sub_1007B1BDC()
{
  v1 = v0[24];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  swift_beginAccess();
  v5 = *(v3 + 24);
  v6 = *(v2 + v5);
  *(v2 + v5) = v1;

  swift_beginAccess();
  sub_1007B38F8(v2, v4);
  v7 = v0[1];

  return v7();
}

void sub_1007B1C8C(double **a1, __n128 a2)
{
  v3 = *(type metadata accessor for CanvasDatePickerViewModel.MediaDate(0) - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1002050E8(v4);
  }

  v5 = *(v4 + 2);
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_1007B2758(v6);
  *a1 = v4;
}

char *sub_1007B1D34()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__shouldSubmitOnDisappear))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__shouldSubmitOnDisappear) = 0;
  }

  swift_getKeyPath();
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if (*&result[OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker])
    {

      sub_1003E8698();
    }

    v5 = *&v4[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator];

    swift_unknownObjectRetain();
    sub_100177384(1, v5, v1, v4);

    return swift_unknownObjectRelease_n();
  }

  return result;
}

double sub_1007B1F38()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__shouldSubmitOnDisappear) == 1)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      if (*(Strong + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
      {

        sub_1003E8698();
      }

      v5 = *&v4[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator];

      swift_unknownObjectRetain();
      sub_100177384(1, v5, v1, v4);

      swift_unknownObjectRelease_n();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1007B2138()
{

  v1 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel_maximumDate;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__date, v2);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__source, &qword_100AE2AA0, &unk_100954D20);
  sub_100038534(v0 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__delegate);

  v4 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

void sub_1007B22B4(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1007B23F4(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1007B23F4(uint64_t a1)
{
  if (!qword_100AF0C88)
  {
    type metadata accessor for EntryDateSource();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100AF0C88);
    }
  }
}

void sub_1007B24A4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_1007B2540(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1007B2540(uint64_t a1)
{
  if (!qword_100AF1A68)
  {
    sub_1000065A8(255, &qword_100AE9450, UIImage_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100AF1A68);
    }
  }
}

unint64_t sub_1007B25F4()
{
  result = qword_100AF1AA0;
  if (!qword_100AF1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1AA0);
  }

  return result;
}

uint64_t sub_1007B2660(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1007B3F8C;

  return v6(a1);
}

void sub_1007B2758(unint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 2) = v5;
      }

      v7 = *(type metadata accessor for CanvasDatePickerViewModel.MediaDate(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1007B2A84(v8, v9, a1, v4);
      v6[2] = 0.0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1007B2884(0, v2, 1, a1);
  }
}

void sub_1007B2884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    while (1)
    {
      sub_1007B38F8(v23, v17);
      sub_1007B38F8(v20, v13);
      v24 = static Date.> infix(_:_:)();
      sub_1003FD790(v13, v25);
      sub_1003FD790(v17, v26);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_1007B39D0(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      sub_1007B39D0(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1007B2A84(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  v116 = *(v9 - 8);
  __chkstk_darwin(v9);
  v110 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v119 = &v105 - v12;
  __chkstk_darwin(v13);
  v15 = &v105 - v14;
  __chkstk_darwin(v16);
  v18 = &v105 - v17;
  v118 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_129:
      v100 = sub_100204C44(a4);
    }

    v121 = v100;
    a4 = *(v100 + 2);
    if (a4 >= 2)
    {
      while (*v118)
      {
        v101 = v100[2 * a4];
        v102 = v100;
        v103 = v100[2 * a4 + 3];
        sub_1007B32E4(*v118 + *(v116 + 72) * *&v101, *v118 + *(v116 + 72) * *&v100[2 * a4 + 2], *v118 + *(v116 + 72) * *&v103, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (*&v103 < *&v101)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_100204C44(v102);
        }

        if (a4 - 2 >= *(v102 + 2))
        {
          goto LABEL_123;
        }

        v104 = &v102[2 * a4];
        *v104 = v101;
        v104[1] = v103;
        v121 = v102;
        sub_100204BB8(a4 - 1);
        v100 = v121;
        a4 = *(v121 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v107 = a4;
  v120 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v111 = v21;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = *v118;
      v25 = v22;
      v26 = *(v116 + 72);
      v5 = *v118 + v26 * v23;
      sub_1007B38F8(v5, v18);
      sub_1007B38F8(v24 + v26 * v25, v15);
      LODWORD(v115) = static Date.> infix(_:_:)();
      sub_1003FD790(v15, v27);
      sub_1003FD790(v18, v28);
      v106 = v25;
      v29 = v25 + 2;
      v117 = v26;
      v30 = v24 + v26 * v29;
      v31 = v115;
      while (v19 != v29)
      {
        sub_1007B38F8(v30, v18);
        sub_1007B38F8(v5, v15);
        v32 = static Date.> infix(_:_:)() & 1;
        sub_1003FD790(v15, v33);
        sub_1003FD790(v18, v34);
        ++v29;
        v30 += v117;
        v5 += v117;
        if ((v31 & 1) != v32)
        {
          v35 = v31;
          v19 = v29 - 1;
          goto LABEL_11;
        }
      }

      v35 = v31;
LABEL_11:
      v22 = v106;
      a4 = v107;
      if (v35)
      {
        if (v19 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v19)
        {
          v105 = v6;
          v36 = v117 * (v19 - 1);
          v37 = v19 * v117;
          v115 = v19;
          v38 = v19;
          v39 = v106;
          v40 = v106 * v117;
          do
          {
            if (v39 != --v38)
            {
              v41 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v41 + v40;
              sub_1007B39D0(v41 + v40, v110);
              if (v40 < v36 || v5 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1007B39D0(v110, v41 + v36);
            }

            ++v39;
            v36 -= v117;
            v37 -= v117;
            v40 += v117;
          }

          while (v39 < v38);
          v6 = v105;
          v22 = v106;
          a4 = v107;
          v19 = v115;
        }
      }
    }

    v42 = v118[1];
    if (v19 < v42)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v42)
        {
          v43 = v118[1];
        }

        else
        {
          v43 = v22 + a4;
        }

        if (v43 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v43)
        {
          break;
        }
      }
    }

    v44 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_35:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v111;
    }

    else
    {
      v21 = sub_1003E4B80(0, *(v111 + 2) + 1, 1, v111);
    }

    a4 = *(v21 + 2);
    v45 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      v21 = sub_1003E4B80((v45 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v46 = &v21[2 * a4];
    *(v46 + 4) = v22;
    *(v46 + 5) = v44;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    v112 = v44;
    if (a4)
    {
      while (1)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v49 = *(v21 + 4);
          v50 = *(v21 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_54:
          if (v52)
          {
            goto LABEL_113;
          }

          v65 = &v21[2 * v5];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_116;
          }

          v71 = &v21[2 * v48 + 4];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_120;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v75 = &v21[2 * v5];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_68:
        if (v70)
        {
          goto LABEL_115;
        }

        v78 = &v21[2 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_118;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v21;
        v87 = *&v21[2 * a4 + 4];
        v5 = *&v21[2 * v48 + 5];
        sub_1007B32E4(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v21[2 * v48 + 4], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100204C44(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[2 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v121 = v86;
        sub_100204BB8(v48);
        v21 = v121;
        v5 = *(v121 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v21[2 * v5 + 4];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_111;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_112;
      }

      v60 = &v21[2 * v5];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_114;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_117;
      }

      if (v64 >= v56)
      {
        v82 = &v21[2 * v48 + 4];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_121;
        }

        if (v51 < v85)
        {
          v48 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v19 = v118[1];
    v20 = v112;
    a4 = v107;
    if (v112 >= v19)
    {
      goto LABEL_96;
    }
  }

  v105 = v6;
  v106 = v22;
  a4 = *v118;
  v89 = *(v116 + 72);
  v90 = *v118 + v89 * (v19 - 1);
  v91 = v19;
  v92 = -v89;
  v93 = v22 - v91;
  v115 = v91;
  v109 = v89;
  v5 = a4 + v91 * v89;
  v112 = v43;
LABEL_86:
  v113 = v5;
  v114 = v93;
  v117 = v90;
  v94 = v90;
  while (1)
  {
    sub_1007B38F8(v5, v18);
    sub_1007B38F8(v94, v15);
    v95 = static Date.> infix(_:_:)();
    sub_1003FD790(v15, v96);
    sub_1003FD790(v18, v97);
    if ((v95 & 1) == 0)
    {
LABEL_85:
      v90 = v117 + v109;
      v93 = v114 - 1;
      v44 = v112;
      v5 = v113 + v109;
      if (++v115 != v112)
      {
        goto LABEL_86;
      }

      v6 = v105;
      v22 = v106;
      if (v112 < v106)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!a4)
    {
      break;
    }

    v98 = v119;
    sub_1007B39D0(v5, v119);
    swift_arrayInitWithTakeFrontToBack();
    sub_1007B39D0(v98, v94);
    v94 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_85;
    }
  }

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
}

void sub_1007B32E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v46 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  __chkstk_darwin(v46);
  v45 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v41 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41[1] = v4;
    v24 = a4 + v17;
    if (v17 < 1)
    {
      v27 = a4 + v17;
    }

    else
    {
      v25 = -v13;
      v26 = a4 + v17;
      v27 = v24;
      v43 = v25;
      v44 = a4;
      do
      {
        v41[0] = v27;
        v28 = a2;
        v29 = a2 + v25;
        while (1)
        {
          v31 = v47;
          if (v28 <= a1)
          {
            v50 = v28;
            v48 = v41[0];
            goto LABEL_59;
          }

          v42 = v27;
          v47 += v25;
          v32 = v26 + v25;
          sub_1007B38F8(v32, v11);
          v33 = v29;
          v34 = v29;
          v35 = v11;
          v36 = v45;
          sub_1007B38F8(v34, v45);
          v37 = static Date.> infix(_:_:)();
          v38 = v36;
          v11 = v35;
          sub_1003FD790(v38, v39);
          sub_1003FD790(v35, v40);
          if (v37)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v47 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
          }

          else
          {
            v29 = v33;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v44;
          v25 = v43;
          if (!v30)
          {
            a2 = v28;
            goto LABEL_58;
          }
        }

        if (v31 < v28 || v47 >= v28)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v42;
          v25 = v43;
        }

        else
        {
          v27 = v42;
          v25 = v43;
          a2 = v33;
          if (v31 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v44);
    }

LABEL_58:
    v50 = a2;
    v48 = v27;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < v47)
    {
      do
      {
        sub_1007B38F8(a2, v11);
        v20 = v45;
        sub_1007B38F8(a4, v45);
        v21 = static Date.> infix(_:_:)();
        sub_1003FD790(v20, v22);
        sub_1003FD790(v11, v23);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v50 = a1;
      }

      while (a4 < v18 && a2 < v47);
    }
  }

LABEL_59:
  sub_100204DF4(&v50, &v49, &v48);
}

double *sub_1007B376C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 arrayForKey:v1];

  if (v2)
  {
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_100584B0C(v3);

    if (v4)
    {
      return v4;
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1007B384C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100032EC8;

  return sub_1007AF4E4(a1, a2, v2);
}

uint64_t sub_1007B38F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1007B398C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaDates) = *(v0 + 24);
}

uint64_t sub_1007B39D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007B3A34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1007B173C(a1, v9, v4, v5, v7, v6);
}

uint64_t sub_1007B3AF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032ECC;

  return sub_1007B2660(a1, v4);
}

uint64_t sub_1007B3BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryDateSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AE2AA0, &unk_100954D20);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000F24EC(&qword_100AE36E8, &unk_100968430);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1000082B4(a1, &v21 - v12, &qword_100AE2AA0, &unk_100954D20);
  sub_1000082B4(a2, &v13[v15], &qword_100AE2AA0, &unk_100954D20);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000082B4(v13, v10, &qword_100AE2AA0, &unk_100954D20);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1000342E0(&qword_100AE36F0, &type metadata accessor for EntryDateSource, &protocol conformance descriptor for EntryDateSource);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100004F84(v13, &qword_100AE2AA0, &unk_100954D20);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100004F84(v13, &qword_100AE36E8, &unk_100968430);
    v17 = 1;
    return v17 & 1;
  }

  sub_100004F84(v13, &qword_100AE2AA0, &unk_100954D20);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1007B3EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE2AA0, &unk_100954D20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1007B3FC8()
{
  result = qword_100AF1AF8;
  if (!qword_100AF1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1AF8);
  }

  return result;
}

uint64_t sub_1007B4050()
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
  sub_100006118(v6, qword_100B31080);
  sub_10000617C(v6, qword_100B31080);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1007B4230(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1000F24EC(&qword_100AE46A0, &qword_100944EE8);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  type metadata accessor for JournalEntity(0);
  v2[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v6;
  v2[15] = v5;

  return _swift_task_switch(sub_1007B441C, v6, v5);
}

uint64_t sub_1007B441C()
{
  if (qword_100ACFED0 != -1)
  {
    swift_once();
  }

  v1 = qword_100B2FA60;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v2) = sub_100885D80(ObjectType, v2);
    swift_unknownObjectRelease();
    if (v2)
    {

      sub_1001928AC();
      swift_allocError();
      *v4 = 4;
LABEL_11:
      swift_willThrow();
LABEL_14:

      v15 = v0[1];
LABEL_15:

      return v15();
    }
  }

  v5 = [objc_opt_self() sharedApplication];
  v6 = sub_100510628();
  v0[16] = v6;

  if (!v6)
  {

    sub_1001928AC();
    swift_allocError();
    *v13 = 0;
    goto LABEL_11;
  }

  v7 = v0[12];
  IntentParameter.wrappedValue.getter();
  v8 = sub_100236610();
  v0[17] = v8;
  sub_100542920(v7);
  if (!v8)
  {

    goto LABEL_13;
  }

  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[8];
  sub_1001EDCD8(&v8[OBJC_IVAR____TtC7Journal14EntryViewModel_uuid], v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = v0[8];

    sub_100004F84(v12, &qword_100AD1420, &unk_10093C080);
LABEL_13:
    sub_1001928AC();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();

    goto LABEL_14;
  }

  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  if (sub_10005AAB0(1) & 1) != 0 || (sub_10005AAB0(16))
  {
    v18 = v0[10];
    v17 = v0[11];
    v19 = v0[9];
    v20 = v0[4];

    (*(v18 + 16))(v20, v17, v19);
    v21 = type metadata accessor for AppLaunchAction(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
    sub_1001F05E8(v20);
    sub_100004F84(v20, &qword_100AE46A0, &qword_100944EE8);
    v22 = v0[16];
    v23 = v0[11];
    v24 = v0[9];
    v25 = v0[10];
    static IntentResult.result<>()();

    (*(v25 + 8))(v23, v24);

    v15 = v0[1];
    goto LABEL_15;
  }

  v26 = v0[13];

  if (v26)
  {
    swift_getObjectType();
    v27 = dispatch thunk of Actor.unownedExecutor.getter();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v0[18] = v27;
  v0[19] = v29;

  return _swift_task_switch(sub_1007B4878, v27, v29);
}

uint64_t sub_1007B4878()
{
  v1 = v0[17];
  (*(v0[6] + 104))(v0[7], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[5]);

  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1007B4970;
  v3 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v2, v3, sub_100163FAC, v1, &type metadata for () + 1);
}

void sub_1007B4970()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v3 = v2[18];
    v4 = v2[19];

    _swift_task_switch(sub_1007B4AC4, v3, v4);
  }
}

uint64_t sub_1007B4AC4()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_1007B4B28, v1, v2);
}

uint64_t sub_1007B4B28()
{
  v1 = v0[4];

  v2 = sub_1000F24EC(&qword_100AD62A0, &unk_100944EF0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for CanvasContentInputType(0);
  *v1 = 0;
  *(v1 + 1) = 0;
  (*(*(v5 - 8) + 56))(&v1[v3], 1, 1, v5);
  v6 = type metadata accessor for WidgetFamily();
  (*(*(v6 - 8) + 56))(&v1[v4], 1, 1, v6);
  v7 = type metadata accessor for AppLaunchAction(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
  sub_1001F05E8(v1);
  sub_100004F84(v1, &qword_100AE46A0, &qword_100944EE8);
  v8 = v0[16];
  v9 = v0[11];
  v10 = v0[9];
  v11 = v0[10];
  static IntentResult.result<>()();

  (*(v11 + 8))(v9, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1007B4D30(uint64_t a1)
{
  v2 = type metadata accessor for JournalEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_100542868(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_100542920(a1);
}

void (*sub_1007B4DC0(uint64_t *a1))(void *a1)
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
  return sub_1002A8020;
}

unint64_t sub_1007B4E3C()
{
  result = qword_100AF1B00;
  if (!qword_100AF1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1B00);
  }

  return result;
}

unint64_t sub_1007B4E94()
{
  result = qword_100AF1B08;
  if (!qword_100AF1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1B08);
  }

  return result;
}

uint64_t sub_1007B4F54@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD0AB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10000617C(v2, qword_100B31080);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1007B4FFC(uint64_t a1)
{
  v2 = sub_1005428CC();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_1007B503C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032ECC;

  return sub_1007B4230(a1, v4);
}

uint64_t sub_1007B50DC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1007B5150();
  *a2 = result;
  return result;
}

uint64_t sub_1007B5104(uint64_t a1)
{
  v2 = sub_10054297C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1007B5150()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v30 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000F24EC(&qword_100AE8938, &qword_10095CD10);
  __chkstk_darwin(v2 - 8);
  v29 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v28 = v25 - v5;
  v6 = sub_1000F24EC(&qword_100AED208, &qword_1009629E0);
  __chkstk_darwin(v6 - 8);
  v27 = v25 - v7;
  v8 = sub_1000F24EC(&qword_100AD9E60, &qword_1009497A0);
  __chkstk_darwin(v8 - 8);
  v26 = v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v25[1] = sub_1000F24EC(&qword_100AF1B10, &qword_100968668);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for JournalEntity(0);
  (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v28, 1, 1, v22);
  v23(v29, 1, 1, v22);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_1007B56D8(&qword_100AD9C98, &unk_100949584);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t sub_1007B56D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for JournalEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1007B571C(uint64_t a1)
{
  v1 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-v2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1000A0564();
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;

    sub_1003E9628(0, 0, v3, &unk_1009686E8, v11);
  }
}

void sub_1007B58F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView) setHidden:1];
    v5 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView;
    [*&v4[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView] setAlpha:1.0];
    [*&v4[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel] setAlpha:1.0];
    [*&v4[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel] setAlpha:1.0];
    [*&v4[v5] setAlpha:1.0];
    [*&v4[v5] setImage:a2];
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [v6 blackColor];
    [v7 setBackgroundColor:v8];
  }
}

double sub_1007B5A38()
{
  v1 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v5 = *((swift_isaMask & *v4) + 0x58);
  v6 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v7 = v4;
  v5(7, v6);

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;

  sub_1003E9628(0, 0, v3, &unk_10095F870, v11);

  return result;
}

id sub_1007B5C00()
{
  v1 = v0;
  v62 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel) setHidden:0];
  v2 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel) setHidden:0];
  v63 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView;
  v3 = *(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView);
  v4 = [v3 superview];
  if (v4)
  {
    v5 = v4;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v3 leadingAnchor];
    v7 = [v5 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    [v8 setConstant:8.0];
    if (v8)
    {
      [v8 setActive:1];
    }
  }

  else
  {
    v8 = 0;
    v5 = v3;
  }

  v9 = *(v1 + v63);
  v10 = [v9 superview];
  if (v10)
  {
    v11 = v10;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v9 topAnchor];
    v13 = [v11 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:8.0];
    if (v14)
    {
      [v14 setActive:1];
    }
  }

  else
  {
    v14 = 0;
    v11 = v9;
  }

  v15 = *(v1 + v63);
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [v15 heightAnchor];
  v17 = [v15 widthAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 multiplier:1.0];

  [v18 setActive:1];
  v19 = *(v1 + v63);
  v20 = sub_100028DA0(0, 1, 8.0);

  v21 = *(v1 + v63);
  v22 = *(v1 + v62);
  v23 = v21;
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [v22 leadingAnchor];
  v25 = [v23 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  [v26 setConstant:8.0];
  [v26 setActive:1];

  v27 = [*(v1 + v62) bottomAnchor];
  v28 = [*(v1 + v63) centerYAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  [v29 setActive:1];
  v30 = *(v1 + v62);
  v31 = [v30 superview];
  if (v31)
  {
    v32 = v31;
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [v30 trailingAnchor];
    v34 = [v32 trailingAnchor];
    v35 = [v33 constraintLessThanOrEqualToAnchor:v34];

    [v35 setConstant:-8.0];
    if (v35)
    {
      [v35 setActive:1];
    }

    v36 = &selRef_setSuggestedName_;
  }

  else
  {
    v35 = 0;
    v32 = v30;
    v36 = &selRef_setSuggestedName_;
  }

  [*(v1 + v62) setTextAlignment:0];
  v37 = *(v1 + v62);
  v38 = [v37 superview];
  if (v38)
  {
    v39 = v38;
    [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [v37 topAnchor];
    v41 = [v39 topAnchor];
    v42 = [v40 constraintGreaterThanOrEqualToAnchor:v41];

    [v42 setConstant:8.0];
    if (v42)
    {
      [v42 setActive:1];
    }
  }

  else
  {
    v42 = 0;
    v39 = v37;
  }

  v43 = *(v1 + v63);
  v44 = *(v1 + v2);
  v45 = v43;
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  v46 = [v44 v36[232]];
  v47 = [v45 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  [v48 setConstant:8.0];
  [v48 setActive:1];

  v49 = [*(v1 + v2) topAnchor];
  v50 = [*(v1 + v63) centerYAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  [v51 setActive:1];
  v52 = *(v1 + v2);
  v53 = [v52 superview];
  if (v53)
  {
    v54 = v53;
    [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
    v55 = [v52 trailingAnchor];
    v56 = [v54 trailingAnchor];
    v57 = [v55 constraintLessThanOrEqualToAnchor:v56];

    [v57 setConstant:-8.0];
    if (v57)
    {
      [v57 setActive:1];
    }
  }

  else
  {
    v57 = 0;
    v54 = v52;
  }

  v58 = *(v1 + v2);
  v59 = sub_100028DA0(2, 1, 8.0);

  v60 = *(v1 + v2);

  return [v60 setTextAlignment:0];
}

id sub_1007B6470()
{
  v1 = v0;
  v66 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel) setHidden:0];
  v2 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel) setHidden:0];
  v3 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView);
  v5 = [v4 superview];
  v6 = &selRef_setSuggestedName_;
  if (v5)
  {
    v7 = v5;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v4 leadingAnchor];
    v9 = [v7 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];

    [v10 setConstant:8.0];
    if (v10)
    {
      [v10 setActive:1];
    }

    v6 = &selRef_setSuggestedName_;
  }

  else
  {
    v10 = 0;
    v7 = v4;
  }

  v11 = *(v1 + v3);
  v12 = [v11 superview];
  if (v12)
  {
    v13 = v12;
    [v11 v6[278]];
    v14 = [v11 topAnchor];
    v15 = [v13 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    [v16 setConstant:8.0];
    if (v16)
    {
      [v16 setActive:1];
    }

    v6 = &selRef_setSuggestedName_;
  }

  else
  {
    v16 = 0;
    v13 = v11;
  }

  v17 = *(v1 + v3);
  [v17 v6[278]];
  v18 = [v17 heightAnchor];
  v19 = [v17 widthAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 multiplier:1.0];

  [v20 setActive:1];
  v21 = *(v1 + v3);
  v22 = sub_100028DA0(0, 1, 8.0);

  v23 = *(v1 + v3);
  v24 = *(v1 + v66);
  v25 = v23;
  [v24 v6[278]];
  v26 = [v24 leadingAnchor];
  v27 = [v25 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  [v28 setConstant:12.0];
  [v28 setActive:1];

  v29 = [*(v1 + v66) bottomAnchor];
  v65 = v3;
  v30 = [*(v1 + v3) centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  [v31 setActive:1];
  v32 = *(v1 + v66);
  v33 = [v32 superview];
  if (v33)
  {
    v34 = v33;
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [v32 trailingAnchor];
    v36 = [v34 trailingAnchor];
    v37 = [v35 constraintLessThanOrEqualToAnchor:v36];

    [v37 setConstant:-12.0];
    if (v37)
    {
      [v37 setActive:1];
    }

    v38 = v2;

    v39 = &selRef_setSuggestedName_;
  }

  else
  {
    v37 = 0;
    v34 = v32;
    v38 = v2;
    v39 = &selRef_setSuggestedName_;
  }

  [*(v1 + v66) setTextAlignment:0];
  v40 = *(v1 + v38);
  v41 = [v40 superview];
  if (v41)
  {
    v42 = v41;
    [v40 v39[278]];
    v43 = [v40 topAnchor];
    v44 = [v42 topAnchor];
    v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44];

    [v45 setConstant:12.0];
    if (v45)
    {
      [v45 setActive:1];
    }

    v39 = &selRef_setSuggestedName_;
  }

  else
  {
    v45 = 0;
    v42 = v40;
  }

  v46 = *(v1 + v65);
  v47 = *(v1 + v38);
  v48 = v46;
  [v47 v39[278]];
  v49 = [v47 leadingAnchor];
  v50 = [v48 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  [v51 setConstant:12.0];
  [v51 setActive:1];

  v52 = [*(v1 + v38) topAnchor];
  v53 = [*(v1 + v65) centerYAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  [v54 setActive:1];
  v55 = *(v1 + v38);
  v56 = [v55 superview];
  if (v56)
  {
    v57 = v56;
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    v58 = [v55 trailingAnchor];
    v59 = [v57 trailingAnchor];
    v60 = [v58 constraintLessThanOrEqualToAnchor:v59];

    [v60 setConstant:-12.0];
    if (v60)
    {
      [v60 setActive:1];
    }
  }

  else
  {
    v60 = 0;
    v57 = v55;
  }

  v61 = *(v1 + v38);
  v62 = sub_100028DA0(2, 1, 8.0);

  v63 = *(v1 + v38);

  return [v63 setTextAlignment:0];
}

void sub_1007B6CD8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel) setHidden:0];
  v3 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel) setHidden:0];
  v4 = qword_100AD03C8;
  v5 = *(v0 + v2);
  if (v4 != -1)
  {
    swift_once();
  }

  [v5 setFont:qword_100B303C0];

  v6 = *(v1 + v2);
  v7 = [v6 superview];
  v8 = &selRef_setSuggestedName_;
  if (v7)
  {
    v9 = v7;
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v6 topAnchor];
    v11 = [v9 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:25.0];
    if (v12)
    {
      [v12 setActive:1];
    }

    v8 = &selRef_setSuggestedName_;
  }

  else
  {
    v12 = 0;
    v9 = v6;
  }

  v13 = *(v1 + v2);
  v14 = [v13 superview];
  if (v14)
  {
    v15 = v14;
    [v13 v8[278]];
    v16 = [v13 leadingAnchor];
    v17 = [v15 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    [v18 setConstant:20.0];
    if (v18)
    {
      [v18 setActive:1];
    }

    v8 = &selRef_setSuggestedName_;
  }

  else
  {
    v18 = 0;
    v15 = v13;
  }

  v19 = *(v1 + v2);
  v20 = [v19 superview];
  if (v20)
  {
    v21 = v20;
    [v19 v8[278]];
    v22 = [v19 trailingAnchor];
    v23 = [v21 trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    [v24 setConstant:-20.0];
    if (v24)
    {
      [v24 setActive:1];
    }

    v8 = &selRef_setSuggestedName_;
  }

  else
  {
    v24 = 0;
    v21 = v19;
  }

  [*(v1 + v2) setTextAlignment:1];
  v25 = *(v1 + v3);
  v26 = sub_100028DA0(0, 1, 25.0);

  v27 = *(v1 + v3);
  v28 = [v27 superview];
  if (v28)
  {
    v29 = v28;
    [v27 v8[278]];
    v30 = [v27 leadingAnchor];
    v31 = [v29 leadingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    [v32 setConstant:20.0];
    if (v32)
    {
      [v32 setActive:1];
    }

    v8 = &selRef_setSuggestedName_;
  }

  else
  {
    v32 = 0;
    v29 = v27;
  }

  v33 = *(v1 + v3);
  v34 = [v33 superview];
  if (v34)
  {
    v35 = v34;
    [v33 v8[278]];
    v36 = [v33 trailingAnchor];
    v37 = [v35 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    [v38 setConstant:-20.0];
    if (v38)
    {
      [v38 setActive:1];
    }

    v8 = &selRef_setSuggestedName_;
  }

  else
  {
    v38 = 0;
    v35 = v33;
  }

  [*(v1 + v3) setTextAlignment:1];
  v39 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView;
  v40 = *(v1 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView);
  v41 = [v40 superview];
  if (v41)
  {
    v42 = v41;
    [v40 v8[278]];
    v43 = [v40 leadingAnchor];
    v44 = [v42 leadingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    [v45 setConstant:20.0];
    if (v45)
    {
      [v45 setActive:1];
    }

    v8 = &selRef_setSuggestedName_;
  }

  else
  {
    v45 = 0;
    v42 = v40;
  }

  v46 = *(v1 + v2);
  v47 = *(v1 + v39);
  v48 = v46;
  [v47 v8[278]];
  v49 = [v47 topAnchor];
  v50 = v8;
  v51 = [v48 bottomAnchor];
  v52 = [v49 constraintEqualToAnchor:v51];

  [v52 setConstant:15.0];
  [v52 setActive:1];

  v53 = *(v1 + v39);
  v54 = [v53 superview];
  if (v54)
  {
    v55 = v54;
    [v53 *(v50 + 2224)];
    v56 = [v53 trailingAnchor];
    v57 = [v55 trailingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];

    [v58 setConstant:-20.0];
    if (v58)
    {
      [v58 setActive:1];
    }

    v50 = 0x100AAA000;
  }

  else
  {
    v58 = 0;
    v55 = v53;
  }

  v59 = *(v1 + v3);
  v60 = *(v1 + v39);
  v61 = v59;
  [v60 *(v50 + 2224)];
  v62 = [v60 bottomAnchor];
  v63 = [v61 topAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  [v64 setConstant:-15.0];
  [v64 setActive:1];
}

void *sub_1007B757C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutAsset);
  v2 = v1;
  return v1;
}

double sub_1007B75AC()
{
  v0 = type metadata accessor for Calendar();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DateComponents();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  WorkoutIconAssetMetadata.startTime.getter();
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    Date.init()();
    if (v18(v10, 1, v11) != 1)
    {
      sub_100004F84(v10, &unk_100AD4790, &unk_10093B4E0);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
  }

  WorkoutIconAssetMetadata.endTime.getter();
  if (v18(v7, 1, v11) == 1)
  {
    Date.init()();
    if (v18(v7, 1, v11) != 1)
    {
      sub_100004F84(v7, &unk_100AD4790, &unk_10093B4E0);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v7, v11);
  }

  static Calendar.current.getter();
  sub_1000F24EC(&qword_100AD3BF0, &qword_100962260);
  v19 = type metadata accessor for Calendar.Component();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100940080;
  (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.second(_:), v19);
  sub_10005FF80(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  v23 = v29;
  Calendar.dateComponents(_:from:to:)();

  (*(v32 + 8))(v2, v33);
  v24 = DateComponents.second.getter();
  LOBYTE(v22) = v25;
  (*(v30 + 8))(v23, v31);
  v26 = *(v12 + 8);
  v26(v14, v11);
  v26(v17, v11);
  result = v24;
  if (v22)
  {
    return 0.0;
  }

  return result;
}

void sub_1007B7AAC()
{

  v1 = *(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutAsset);
}

id sub_1007B7B1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutActivityGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1007B7BD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1000907DC(a1, v4, v5, v6);
}

void sub_1007B7C88()
{
  v1 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_labelTextProvider;
  type metadata accessor for WorkoutActivityGridView.LabelTextProvider();
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = 0;
  *(v0 + v4) = v5;
  *(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutAsset) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1007B7D90()
{
  v1 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  if (*(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) <= 1u && *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType))
  {
    v2 = 1;
LABEL_17:

    return v2 & 1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
    if (*(v0 + v1) == 3)
    {
      v2 = 1;
      goto LABEL_17;
    }

    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      if (*(v0 + v1) > 6u)
      {
        v2 = 1;
        goto LABEL_17;
      }

      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        if (*(v0 + v1) > 3u || *(v0 + v1))
        {
          v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        else
        {
          v2 = 1;
        }

        goto LABEL_17;
      }
    }
  }

  v2 = 1;
  return v2 & 1;
}

double sub_1007B81D8(uint64_t a1)
{
  v1 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v1 - 8);
  v3 = &v34 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC7Journal18VideoAssetGridView_durationLabel;
    v8 = [*(Strong + OBJC_IVAR____TtC7Journal18VideoAssetGridView_durationLabel) superview];
    if (v8)
    {

      [v6 bringSubviewToFront:*&v6[v7]];
    }

    else
    {
      v9 = qword_100AD03B8;
      v10 = *&v6[v7];
      if (v9 != -1)
      {
        swift_once();
      }

      [v10 setFont:qword_100B303B0];

      v11 = *&v6[v7];
      v12 = objc_opt_self();
      v13 = v11;
      v14 = [v12 whiteColor];
      [v13 setTextColor:v14];

      [*&v6[v7] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
      [*&v6[v7] setAdjustsFontForContentSizeCategory:1];
      [*&v6[v7] setAdjustsFontSizeToFitWidth:1];
      [v6 addSubview:*&v6[v7]];
      v15 = *&v6[v7];
      v16 = [v15 superview];
      v17 = &selRef_setSuggestedName_;
      if (v16)
      {
        v18 = v16;
        [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
        v19 = [v15 trailingAnchor];
        v20 = [v18 trailingAnchor];
        v21 = [v19 constraintEqualToAnchor:v20];

        [v21 setConstant:-8.0];
        if (v21)
        {
          [v21 setActive:1];
        }

        v17 = &selRef_setSuggestedName_;
      }

      else
      {
        v21 = 0;
        v18 = v15;
      }

      v22 = *&v6[v7];
      v23 = [v22 superview];
      if (v23)
      {
        v24 = v23;
        [v22 v17[278]];
        v25 = [v22 leadingAnchor];
        v26 = [v24 leadingAnchor];
        v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26];

        [v27 setConstant:8.0];
        if (v27)
        {
          [v27 setActive:1];
        }
      }

      else
      {
        v27 = 0;
        v24 = v22;
      }

      v28 = *&v6[v7];
      v29 = sub_100028DA0(0, 1, 6.0);
    }

    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v3, 1, 1, v30);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v32 = static MainActor.shared.getter();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = &protocol witness table for MainActor;
    v33[4] = v31;

    sub_1004EC158(0, 0, v3, &unk_100968718, v33);
  }

  return result;
}

uint64_t sub_1007B8690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  v4[35] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[36] = v7;
  v4[37] = *(v7 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = type metadata accessor for MainActor();
  v4[40] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[41] = v9;
  v4[42] = v8;

  return _swift_task_switch(sub_1000B43D8, v9, v8);
}

uint64_t sub_1007B8878()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = v2[41];
    v4 = v2[42];
    v5 = sub_1007B9338;
  }

  else
  {
    v6 = v2[43];

    v3 = v2[41];
    v4 = v2[42];
    v5 = sub_1007B89AC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1007B89AC()
{
  v13 = v0[34];
  v1 = v0[31];
  v15 = v0[33];
  v16 = v0[32];
  v2 = v0[29];
  v3 = v0[30];

  v4 = v0[55];
  v5 = v0[57];
  sub_100005508();
  v6 = v0[56];
  v14 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v4;
  v9[4] = v6;
  v9[5] = v5;
  v0[12] = sub_1007B98DC;
  v0[13] = v9;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100006C7C;
  v0[11] = &unk_100A7DD20;
  v10 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[27] = _swiftEmptyArrayStorage;
  sub_100006BA4(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v3 + 8))(v1, v2);
  (*(v15 + 8))(v13, v16);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1007B8C60()
{
  v1 = v0[40];
  v2 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v0[50] = [v2 initWithURL:v4 options:0];

  sub_1000F24EC(&qword_100AD8860, &unk_1009481A0);
  v6 = static AVPartialAsyncProperty<A>.duration.getter();
  v0[51] = v6;
  v7 = swift_task_alloc();
  v0[52] = v7;
  *v7 = v0;
  v7[1] = sub_1007B8D7C;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 58, v6, v1, &protocol witness table for MainActor);
}

uint64_t sub_1007B8D7C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_1007B9218;
  }

  else
  {

    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_1007B8EC0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1007B8EC0()
{
  v1 = v0[50];

  v2 = v0[58];
  v0[61] = v0[59];
  v3 = v0[60];
  v0[53] = v2;
  v0[54] = v3;
  v4 = v0[41];
  v5 = v0[42];

  return _swift_task_switch(sub_1007B8F40, v4, v5);
}

uint64_t sub_1007B8F40()
{
  v1 = v0[53];
  v13 = v0[54];
  v18 = v0[36];
  v19 = v0[38];
  v2 = v0[34];
  v15 = v0[33];
  v3 = v0[31];
  v16 = v0[32];
  v17 = v0[37];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[61];

  sub_100005508();
  v14 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v1;
  v9[4] = v6;
  v9[5] = v13;
  v0[6] = sub_1000B5F58;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006C7C;
  v0[5] = &unk_100A7DCD0;
  v10 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[26] = _swiftEmptyArrayStorage;
  sub_100006BA4(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v5 + 8))(v3, v4);
  (*(v15 + 8))(v2, v16);
  (*(v17 + 8))(v19, v18);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1007B9218()
{
  v1 = v0[50];

  v2 = v0[41];
  v3 = v0[42];

  return _swift_task_switch(sub_1007B9284, v2, v3);
}

uint64_t sub_1007B9284()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1007B9338()
{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1007B93FC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Notification.userInfo.getter();
  if (v6)
  {
    v7 = v6;
    v24 = 0xD000000000000019;
    v25 = 0x80000001008E5300;
    AnyHashable.init<A>(_:)();
    if (*(v7 + 16) && (v8 = sub_100361EDC(v26), (v9 & 1) != 0))
    {
      sub_10000BA20(*(v7 + 56) + 32 * v8, v27);
      sub_100177B94(v26);

      sub_1000F24EC(&qword_100AD60A0, &qword_100943DB0);
      if (swift_dynamicCast())
      {
        v10 = v24;
        v11 = *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset);
        if (v11)
        {
          (*(v3 + 16))(v5, v11 + OBJC_IVAR____TtC7Journal5Asset_id, v2);
          v12 = v11;
          v13 = UUID.uuidString.getter();
          v15 = v14;
          v16 = (*(v3 + 8))(v5, v2);
          v26[0] = v13;
          v26[1] = v15;
          __chkstk_darwin(v16);
          *(&v23 - 2) = v26;
          LOBYTE(v13) = sub_100194FF0(sub_100124B50, (&v23 - 4), v10);

          if ((v13 & 1) != 0 || (*(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_isLoaded) & 1) == 0)
          {
          }

          else
          {
            v17 = (v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction);
            v18 = *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction);
            v19 = *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction + 8);
            *v17 = 0;
            v17[1] = 0;
            sub_100004DF8(v18, v19);
            sub_1000999CC();
            sub_100815D10();
          }
        }

        else
        {

          v20 = (v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction);
          v21 = *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction);
          v22 = *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction + 8);
          *v20 = 0;
          v20[1] = 0;
          sub_100004DF8(v21, v22);
          sub_1000999CC();
          sub_100815D10();
        }
      }
    }

    else
    {

      sub_100177B94(v26);
    }
  }
}

id sub_1007B987C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoAssetGridView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1007B98E0()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for AssetTypesVC();
  v20.receiver = v0;
  v20.super_class = v5;
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v6 = String._bridgeToObjectiveC()();
  [v1 setTitle:v6];

  if (![v1 tableView])
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = objc_allocWithZone(sub_1000F24EC(&qword_100AF1CD8, &qword_100968800));
  v8 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  v9 = *&v1[OBJC_IVAR____TtC7Journal12AssetTypesVC_dataSource];
  *&v1[OBJC_IVAR____TtC7Journal12AssetTypesVC_dataSource] = v8;

  v10 = [v1 tableView];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(UIRefreshControl) init];
  [v11 setRefreshControl:v12];

  v13 = [v1 tableView];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = [v13 refreshControl];

  if (v15)
  {
    [v15 addTarget:v1 action:"refreshData" forControlEvents:4096];
  }

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  type metadata accessor for MainActor();
  v17 = v1;
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;
  sub_1003E9628(0, 0, v4, &unk_100968808, v19);
}

id sub_1007B9B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(UITableViewCell) initWithStyle:3 reuseIdentifier:0];
  UITableViewCell.defaultContentConfiguration()();
  sub_10012B8BC();
  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() _systemImageNamed:v9];

  UIListContentConfiguration.image.setter();
  AssetType.rawValue.getter();
  UIListContentConfiguration.text.setter();
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  if (qword_100ACF9C8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v20;
  if (*(v20 + 16) && (v12 = sub_100362044(a3), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {
    v14 = 0;
  }

  v20 = v14;
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x73656972746E6520;
  v16._object = 0xE800000000000000;
  String.append(_:)(v16);
  UIListContentConfiguration.secondaryText.setter();
  v19[3] = v4;
  v19[4] = &protocol witness table for UIListContentConfiguration;
  v17 = sub_10001A770(v19);
  (*(v5 + 16))(v17, v7, v4);
  UITableViewCell.contentConfiguration.setter();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_1007B9E8C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AF1CC8, &qword_1009687A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  v6 = type metadata accessor for AssetType();
  sub_1007BA7DC();
  sub_1007BA830();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A5AE70);
  if (qword_100ACF9C8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v16;
  v8 = *(v16 + 16);
  if (v8)
  {
    v9 = sub_1003E754C(*(v16 + 16), 0);
    sub_1001C268C(&v16, v9 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v8, v7);
    v11 = v10;
    sub_100014FF8(v16);
    if (v11 == v8)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

LABEL_7:
  LOBYTE(v16) = 1;
  result = NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  v13 = *(v1 + OBJC_IVAR____TtC7Journal12AssetTypesVC_dataSource);
  if (v13)
  {
    v14 = v13;

    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1007BA110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1007BA1A8, v6, v5);
}

uint64_t sub_1007BA1A8()
{
  if (qword_100ACF9C8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1007BA26C;

  return sub_100179B44();
}

uint64_t sub_1007BA26C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_1007BA38C, v3, v2);
}

id sub_1007BA38C()
{
  v1 = *(v0 + 16);
  sub_1007B9E8C();
  result = [v1 tableView];
  if (result)
  {
    v3 = result;

    v4 = [v3 refreshControl];

    [v4 endRefreshing];
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1007BA70C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetTypesVC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1007BA788()
{
  result = qword_100AF1CC0;
  if (!qword_100AF1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1CC0);
  }

  return result;
}

unint64_t sub_1007BA7DC()
{
  result = qword_100AF1CD0;
  if (!qword_100AF1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1CD0);
  }

  return result;
}

unint64_t sub_1007BA830()
{
  result = qword_100ADFEE0;
  if (!qword_100ADFEE0)
  {
    type metadata accessor for AssetType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFEE0);
  }

  return result;
}

uint64_t sub_1007BA888(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1007BA110(a1, v4, v5, v6);
}

uint64_t sub_1007BA93C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1007BA110(a1, v4, v5, v6);
}

void sub_1007BA9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34 = a5;
  v8 = sub_1000F24EC(&unk_100AF1CE0, &unk_100968810);
  __chkstk_darwin(v8 - 8);
  v10 = &v31.i8[-v9];
  v11 = type metadata accessor for PresentationIntent.Kind();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31.i8[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for PresentationIntent();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31.i8[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10005D974(a1, v36);
  if (v37)
  {
    v33 = a2;
    sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
    if (swift_dynamicCast())
    {
      v32 = a3;
      v19 = v35;
      [v35 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
      if (swift_dynamicCast())
      {
        v20 = v35;
        [v19 firstLineHeadIndent];
        *v22.i64 = *v21.i64 - trunc(*v21.i64);
        v23.f64[0] = NAN;
        v23.f64[1] = NAN;
        v31 = vnegq_f64(v23);
        v24 = *vbslq_s8(v31, v22, v21).i64 + -0.1;
        [v19 headIndent];
        if (fabs(v24) >= 0.01 || (*v26.i64 = *v25.i64 - trunc(*v25.i64), fabs(*vbslq_s8(v31, v26, v25).i64 + -0.1) >= 0.01))
        {
          v29 = v32;
          v30 = v33;
          v28 = v34;
        }

        else
        {
          [v20 setFirstLineHeadIndent:0.0];
          [v20 setHeadIndent:0.0];
          (*(v12 + 104))(v14, enum case for PresentationIntent.Kind.blockQuote(_:), v11);
          (*(v16 + 56))(v10, 1, 1, v15);
          PresentationIntent.init(_:identity:parent:)();
          isa = PresentationIntent._bridgeToObjectiveC()().super.isa;
          v28 = v34;
          v29 = v32;
          v30 = v33;
          [v34 addAttribute:NSPresentationIntentAttributeName value:isa range:{v33, v32}];

          (*(v16 + 8))(v18, v15);
        }

        [v20 setParagraphSpacingBefore:10.0];
        [v28 addAttribute:NSParagraphStyleAttributeName value:v20 range:{v30, v29}];
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1000261D4(v36);
  }
}

void sub_1007BAE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(id, uint64_t, uint64_t))
{
  v8 = *a5 + 1;
  if (__OFADD__(*a5, 1))
  {
    __break(1u);
  }

  else
  {
    v17 = v6;
    v18 = v7;
    *a5 = v8;
    sub_10005D974(a1, v15);
    if (v16)
    {
      sub_1000065A8(0, &qword_100ADC5F0, NSTextParagraphAnchoredAttachment_ptr);
      if (swift_dynamicCast())
      {
        v11 = [v14 textAttachment];
        swift_getObjectType();
        v12 = swift_conformsToProtocol2();
        if (v12)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          a6(v11, v12, *a5);
        }
      }
    }

    else
    {
      sub_1000261D4(v15);
    }
  }
}

void sub_1007BAF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_10005D974(a1, v10);
  if (v11)
  {
    sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
    if (swift_dynamicCast())
    {
      if (sub_1004173E4())
      {
        v8 = [objc_opt_self() blackColor];
        [a5 addAttribute:NSForegroundColorAttributeName value:v8 range:{a2, a3}];
      }
    }
  }

  else
  {
    sub_1000261D4(v10);
  }
}

void sub_1007BB00C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6)
{
  sub_10005D974(a1, v12);
  if (v13)
  {
    sub_1000065A8(0, &qword_100AD2A78, UIFont_ptr);
    if (swift_dynamicCast())
    {
      v10 = [v11 fontWithSize:a4];
      [a6 addAttribute:NSFontAttributeName value:v10 range:{a2, a3}];
    }
  }

  else
  {
    sub_1000261D4(v12);
  }
}

void sub_1007BB104(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:a1];
  v8 = [a1 length];
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1007BB6C4;
  *(v10 + 24) = v9;
  v37 = sub_10007E150;
  v38 = v10;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10007E0A4;
  v36 = &unk_100A7DE78;
  v11 = _Block_copy(&aBlock);
  v12 = v7;

  [a1 enumerateAttribute:NSParagraphStyleAttributeName inRange:0 options:v8 usingBlock:{0, v11}];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_7;
  }

  v32 = -1;
  v14 = NSParagraphAttachmentAttributeName;
  v15 = [a1 length];
  v16 = swift_allocObject();
  v16[2] = &v32;
  v16[3] = a2;
  v16[4] = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1007BB6CC;
  *(v17 + 24) = v16;
  v37 = sub_100673DC8;
  v38 = v17;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10007E0A4;
  v36 = &unk_100A7DEF0;
  v18 = _Block_copy(&aBlock);

  [a1 enumerateAttribute:v14 inRange:0 options:v15 usingBlock:{0, v18}];
  _Block_release(v18);
  v19 = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v20 = [a1 length];
  v21 = swift_allocObject();
  *(v21 + 16) = v12;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1007BB6D8;
  *(v22 + 24) = v21;
  v37 = sub_100673DC8;
  v38 = v22;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10007E0A4;
  v36 = &unk_100A7DF68;
  v23 = _Block_copy(&aBlock);
  v24 = v12;

  [a1 enumerateAttribute:NSForegroundColorAttributeName inRange:0 options:v20 usingBlock:{0, v23}];
  _Block_release(v23);
  v25 = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v26 = [a1 length];
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1007BB6E0;
  *(v28 + 24) = v27;
  v37 = sub_100673DC8;
  v38 = v28;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10007E0A4;
  v36 = &unk_100A7DFE0;
  v29 = _Block_copy(&aBlock);
  v24;

  [a1 enumerateAttribute:NSFontAttributeName inRange:0 options:v26 usingBlock:{0, v29}];
  _Block_release(v29);
  v30 = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
LABEL_9:
    __break(1u);
  }
}

char *sub_1007BB6FC(void *a1)
{
  if ([v1 isEditable])
  {
    [a1 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000065A8(0, &qword_100ADB9C0, NSMutableAttributedString_ptr);
    if (swift_dynamicCast())
    {
      v2 = v25;
      if ([v2 length] < 1)
      {
        goto LABEL_22;
      }

      v3 = [v2 string];
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      v7 = sub_1000961EC(v4, v6);
      v9 = v8;

      if (!v9)
      {
        goto LABEL_22;
      }

      if (v7 == 10 && v9 == 0xE100000000000000)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      result = [v2 length];
      if (__OFSUB__(result, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      v12 = [v2 attributesAtIndex:result - 1 effectiveRange:0];
      type metadata accessor for Key(0);
      sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
      v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v13 + 16) || (v15 = sub_100051964(NSParagraphStyleAttributeName, v14), (v16 & 1) == 0))
      {

        goto LABEL_22;
      }

      sub_10000BA20(*(v13 + 56) + 32 * v15, v26);

      sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
      if (swift_dynamicCast())
      {
        [v25 firstLineHeadIndent];
        *v18.i64 = *v17.i64 - trunc(*v17.i64);
        v19.f64[0] = NAN;
        v19.f64[1] = NAN;
        v24 = vnegq_f64(v19);
        v20 = *vbslq_s8(v24, v18, v17).i64 + -0.1;
        [v25 headIndent];
        if (fabs(v20) >= 0.01)
        {
          goto LABEL_20;
        }

        *v22.i64 = *v21.i64 - trunc(*v21.i64);
        if (fabs(*vbslq_s8(v24, v22, v21).i64 + -0.1) >= 0.01)
        {
          goto LABEL_20;
        }

        result = [v2 length];
        if (!__OFSUB__(result, 1))
        {
          [v2 deleteCharactersInRange:{result - 1, 1}];
LABEL_20:

          goto LABEL_22;
        }

        goto LABEL_24;
      }

LABEL_22:

      return v2;
    }
  }

  return a1;
}

void sub_1007BBA50()
{
  sub_1000F24EC(&unk_100AD9200, &qword_1009488B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940080;
  *(inited + 32) = NSFontAttributeName;
  v2 = NSFontAttributeName;
  v3 = [v0 traitCollection];
  v4 = sub_10010BBF4(v3);

  *(inited + 64) = sub_1000065A8(0, &qword_100AD2A78, UIFont_ptr);
  *(inited + 40) = v4;
  sub_10007BDBC(inited);
  swift_setDeallocating();
  sub_100004F84(inited + 32, &unk_100AD9210, &qword_10094C510);
  v5 = *&v0[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
  if (v5 && (v6 = *(v5 + OBJC_IVAR____TtC7Journal14EntryViewModel_prompts)) != 0)
  {
    v7 = v6;
    v8 = [v7 string];
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    v9 = objc_allocWithZone(NSAttributedString);
    type metadata accessor for Key(0);
    sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v11 = [v9 initWithString:v8 attributes:isa];

    [v0 setAttributedPlaceholder:v11];
  }

  else
  {
    if (qword_100AD0590 != -1)
    {
      swift_once();
    }

    v12 = objc_allocWithZone(NSAttributedString);
    v13 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
    v14 = Dictionary._bridgeToObjectiveC()().super.isa;

    v11 = [v12 initWithString:v13 attributes:v14];

    [v0 setAttributedPlaceholder:v11];
  }

  v15 = [v0 _placeholderLabel];
  if (v15)
  {
    v16 = v15;
    v17 = [v0 isEditable];
    v18 = 0.0;
    if (v17)
    {
      v18 = 1.0;
    }

    [v16 setAlpha:v18];
  }
}

id sub_1007BBDA8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 textStorage];
  result = [v11 string];
  if (result)
  {
    v13 = result;

    v14 = [v3 selectedRange];
    v16 = [v13 paragraphRangeForRange:{v14, v15}];
    v18 = [v13 substringWithRange:{v16, v17}];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v26[0] = v19;
    v26[1] = v21;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_1000777B4();
    v22 = StringProtocol.trimmingCharacters(in:)();
    v24 = v23;
    (*(v7 + 8))(v10, v6);

    v25 = sub_1007BE9DC(v22, v24, a1, a2);

    return (v25 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1007BBF88(int a1)
{
  v2 = v1;
  LODWORD(v67) = a1;
  v3 = type metadata accessor for CharacterSet();
  v66 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor];
  *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor] = 0;

  v7 = [v1 textStorage];
  v8 = [v7 string];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;

  v10 = [v2 selectedRange];
  v68 = [v9 paragraphRangeForRange:{v10, v11}];
  v69 = v12;
  v13 = [v9 substringWithRange:?];
  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [v2 typingAttributes];
  type metadata accessor for Key(0);
  v18 = v17;
  sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = *(v19 + 16);
  v22 = &selRef_setRegion_;
  v70 = NSParagraphStyleAttributeName;
  if (v21 && (v23 = sub_100051964(NSParagraphStyleAttributeName, v20), (v24 & 1) != 0))
  {
    sub_10000BA20(*(v19 + 56) + 32 * v23, &v74);

    sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
    if (swift_dynamicCast())
    {
      v64 = v18;
      v25 = *&v72[0];
      [*&v72[0] mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v26 = sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
      if (swift_dynamicCast())
      {
        v63 = v26;
        v62 = v25;
        v27 = *&v72[0];
        if ((v67 & 1) != 0 && (*(v2 + OBJC_IVAR____TtC7Journal15JournalTextView_removeListsNextClear) & 1) == 0 && v69 == 1)
        {
          v67 = OBJC_IVAR____TtC7Journal15JournalTextView_removeListsNextClear;
          *&v74 = v65;
          *(&v74 + 1) = v15;
          static CharacterSet.whitespaces.getter();
          sub_1000777B4();
          v28 = StringProtocol.trimmingCharacters(in:)();
          v30 = v29;
          (*(v66 + 8))(v5, v3);

          v31 = HIBYTE(v30) & 0xF;
          if ((v30 & 0x2000000000000000) == 0)
          {
            v31 = v28 & 0xFFFFFFFFFFFFLL;
          }

          if (v31)
          {
            v32 = [v27 textLists];
            sub_1000065A8(0, &qword_100AD4290, NSTextList_ptr);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();

            *(v2 + v67) = 1;
LABEL_31:
            v44 = v70;
            sub_1000065A8(0, &qword_100AD4290, NSTextList_ptr);
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v27 setTextLists:isa];

            [v27 setFirstLineHeadIndent:0.0];
            [v27 setHeadIndent:0.0];
            v75 = v63;
            *&v74 = v27;
            v46 = v27;
            v47 = [v2 typingAttributes];
            v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v73 = v48;
            if (v75)
            {
              sub_10002432C(&v74, v72);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v71 = v48;
              sub_100048100(v72, v44, isUniquelyReferenced_nonNull_native);
              v73 = v71;
            }

            else
            {
              sub_100004F84(&v74, &qword_100AD13D0, &unk_100942DB0);
              sub_100080694(v72);
              sub_100004F84(v72, &qword_100AD13D0, &unk_100942DB0);
            }

            v60 = Dictionary._bridgeToObjectiveC()().super.isa;

            [v2 setTypingAttributes:v60];

            v22 = &selRef_setRegion_;
            goto LABEL_14;
          }
        }

        else
        {
        }

        *(v2 + OBJC_IVAR____TtC7Journal15JournalTextView_removeListsNextClear) = 0;
        goto LABEL_31;
      }

      v22 = &selRef_setRegion_;
    }

    else
    {

      v22 = &selRef_setRegion_;
    }
  }

  else
  {
  }

LABEL_14:
  v33 = [v2 typingAttributes];
  v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v34 + 16) && (v36 = sub_100051964(NSForegroundColorAttributeName, v35), (v37 & 1) != 0))
  {
    sub_10000BA20(*(v34 + 56) + 32 * v36, &v74);

    v38 = sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
    if (swift_dynamicCast())
    {
      v39 = *&v72[0];
      sub_1000065A8(0, &unk_100AD43A0, NSObject_ptr);
      if (qword_100AD0370 != -1)
      {
        swift_once();
      }

      if (static NSObject.== infix(_:_:)())
      {
        if (qword_100AD0AC0 != -1)
        {
          swift_once();
        }

        v75 = v38;
        *&v74 = qword_100B31098;
        v40 = qword_100B31098;
        v41 = [v2 typingAttributes];
        v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v73 = v42;
        if (v75)
        {
          sub_10002432C(&v74, v72);
          v43 = swift_isUniquelyReferenced_nonNull_native();
          v71 = v42;
          sub_100048100(v72, NSForegroundColorAttributeName, v43);
          v73 = v71;
        }

        else
        {
          sub_100004F84(&v74, &qword_100AD13D0, &unk_100942DB0);
          sub_100080694(v72);
          sub_100004F84(v72, &qword_100AD13D0, &unk_100942DB0);
        }

        v50 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v2 setTypingAttributes:v50];

        v22 = &selRef_setRegion_;
      }

      else
      {
      }
    }
  }

  else
  {
  }

  v51 = sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
  v52 = sub_100047F28();
  sub_1000065A8(0, &qword_100AD4290, NSTextList_ptr);
  v53 = Array._bridgeToObjectiveC()().super.isa;

  [v52 v22[97]];

  sub_1000F24EC(&unk_100AD9200, &qword_1009488B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940080;
  v55 = v70;
  *(inited + 32) = v70;
  *(inited + 64) = v51;
  *(inited + 40) = v52;
  v56 = v55;
  v57 = v52;
  sub_10007BDBC(inited);
  swift_setDeallocating();
  sub_100004F84(inited + 32, &unk_100AD9210, &qword_10094C510);
  v58 = [v2 textStorage];
  v59 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v58 addAttributes:v59 range:{v68, v69}];
}

void sub_1007BC9B8()
{
  v1 = [v0 traitCollection];
  v2 = sub_10010BBF4(v1);

  v3 = [v0 inputDelegate];
  if (v3)
  {
    [v3 textWillChange:v0];
    swift_unknownObjectRelease();
  }

  v4 = [v0 textStorage];
  [v4 beginEditing];

  v5 = [v0 textStorage];
  v6 = [v0 textStorage];
  v7 = [v6 length];

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1007C829C;
  *(v9 + 24) = v8;
  v39 = sub_100673DC8;
  v40 = v9;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v37 = sub_10007E0A4;
  v38 = &unk_100A7E8A0;
  v10 = _Block_copy(&aBlock);
  v11 = v0;
  v12 = v2;

  [v5 enumerateAttribute:NSFontAttributeName inRange:0 options:v7 usingBlock:{0x100000, v10}];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v14 = [v11 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v15 + 16))
  {

    v18 = v12;
    goto LABEL_13;
  }

  v17 = sub_100051964(NSFontAttributeName, v16);
  v18 = v12;
  if ((v19 & 1) == 0)
  {

    goto LABEL_13;
  }

  sub_10000BA20(*(v15 + 56) + 32 * v17, &aBlock);

  sub_1000065A8(0, &qword_100AD2A78, UIFont_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v27 = &selRef_initWithName_managedObjectModel_;
    v26 = v18;
    goto LABEL_14;
  }

  v20 = [v34[0] fontDescriptor];
  v21 = [v20 symbolicTraits];

  if (!v21)
  {

    goto LABEL_13;
  }

  v22 = [v12 fontDescriptor];
  v23 = [v12 fontDescriptor];
  v24 = [v23 symbolicTraits];

  v25 = [v22 fontDescriptorWithSymbolicTraits:v24 | v21];
  if (!v25)
  {

    v18 = v12;
    goto LABEL_13;
  }

  v26 = [objc_opt_self() fontWithDescriptor:v25 size:0.0];

  v18 = v12;
  v27 = &selRef_initWithName_managedObjectModel_;
LABEL_14:
  v38 = sub_1000065A8(0, &qword_100AD2A78, UIFont_ptr);
  *&aBlock = v26;
  v28 = [v11 v27[445]];
  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = v29;
  if (v38)
  {
    sub_10002432C(&aBlock, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100048100(v34, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
    v35 = v29;
  }

  else
  {
    sub_100004F84(&aBlock, &qword_100AD13D0, &unk_100942DB0);
    sub_100080694(v34);
    sub_100004F84(v34, &qword_100AD13D0, &unk_100942DB0);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 setTypingAttributes:isa];

  v32 = [v11 textStorage];
  [v32 endEditing];

  v33 = [v11 inputDelegate];
  if (v33)
  {
    [v33 textDidChange:v11];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1007BCFCC()
{
  v1 = v0;
  v2 = type metadata accessor for JournalFeatureFlags();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isFirstResponder])
  {
    return;
  }

  if (v1[OBJC_IVAR____TtC7Journal15JournalTextView_isShowingFormattingController])
  {
    return;
  }

  v7 = *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
  if (!v7)
  {
    return;
  }

  v8 = objc_opt_self();

  v9 = [v8 currentTraitCollection];
  type metadata accessor for CustomAttributeProviderConcrete(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  Logger.init(subsystem:category:)();
  v11 = v10 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
  *(v11 + 4) = 0;
  *v11 = 2;
  v12 = sub_100789EB0(v9, v10, v7);

  if (!v12)
  {
    return;
  }

  (*(v3 + 104))(v6, enum case for JournalFeatureFlags.enhancedSync(_:), v2);
  v13 = JournalFeatureFlags.isEnabled.getter();
  (*(v3 + 8))(v6, v2);
  v36 = v12;
  if ((v13 & 1) == 0)
  {
    v15 = [v8 currentTraitCollection];
    v16 = v12;
    v17 = [v16 string];
    if (!v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = String._bridgeToObjectiveC()();
    }

    v18 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v17];

    v19 = [objc_opt_self() labelColor];
    v20 = sub_10010BBF4(v15);
    v21 = [v16 length];
    v35 = v15;
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v22 = v21;
      v23 = swift_allocObject();
      v23[2] = v20;
      v23[3] = v19;
      v23[4] = 0x4020000000000000;
      v23[5] = 0;
      v23[6] = v18;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_1007868E0;
      *(v24 + 24) = v23;
      v43 = sub_1007C82F8;
      v44 = v24;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v41 = sub_10007F714;
      v42 = &unk_100A7E828;
      v25 = _Block_copy(&aBlock);
      v26 = v20;
      v27 = v19;
      v14 = v18;

      [v16 enumerateAttributesInRange:0 options:v22 usingBlock:{0, v25}];

      _Block_release(v25);
      LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

      if ((v25 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    return;
  }

  v14 = v12;
LABEL_11:
  v28 = sub_1007BB6FC(v14);
  [v1 setAttributedText:v28];
  v29 = sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
  v30 = sub_100047F28();
  v42 = v29;
  *&aBlock = v30;
  v31 = [v1 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
  v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = v32;
  if (v42)
  {
    sub_10002432C(&aBlock, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v32;
    sub_100048100(v38, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
    v39 = v37;
  }

  else
  {
    sub_100004F84(&aBlock, &qword_100AD13D0, &unk_100942DB0);
    sub_100080694(v38);
    sub_100004F84(v38, &qword_100AD13D0, &unk_100942DB0);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 setTypingAttributes:isa];
}

void sub_1007BD5CC()
{
  v1 = v0;
  v2 = [v0 textStorage];
  [v2 beginEditing];

  v3 = [v1 textStorage];
  v6.value.location = 0;
  v6.value.length = 0;
  v6.is_nil = 1;
  NSMutableAttributedString.ensureListIntegrity(range:)(v6);

  v4 = [v1 textStorage];
  [v4 endEditing];
}

char *sub_1007BD68C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for JournalFeatureFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(v3) initWithFrame:a2 textContainer:{0.0, 0.0, 0.0, 0.0}];
  *&v10[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry] = a1;
  v11 = v10;

  if (!a2)
  {
    (*(v7 + 104))(v9, enum case for JournalFeatureFlags.enhancedSync(_:), v6);
    v12 = JournalFeatureFlags.isEnabled.getter();
    v13 = (*(v7 + 8))(v9, v6);
    if ((v12 & 1) == 0)
    {
      (*((swift_isaMask & *v11) + 0x170))(v13);
    }
  }

  sub_1007BBA50();

  return v11;
}

uint64_t sub_1007BD844()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF1CF0);
  sub_10000617C(v0, qword_100AF1CF0);
  return Logger.init(subsystem:category:)();
}

void sub_1007BD8C8(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryView;
  v5 = *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryView];
  if (v5)
  {
    if (a1)
    {
      sub_1000065A8(0, &qword_100ADC670, UIView_ptr);
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  [a1 removeFromSuperview];
  v9 = OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryTopConstraint;
  v10 = *&v2[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryTopConstraint];
  if (v10)
  {
    [v10 constant];
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = type metadata accessor for JournalTextView();
  v56.receiver = v2;
  v56.super_class = v13;
  objc_msgSendSuper2(&v56, "textContainerInset");
  v55.receiver = v2;
  v55.super_class = v13;
  objc_msgSendSuper2(&v55, "setTextContainerInset:", v12);
  v14 = *&v2[v4];
  if (v14)
  {
    v15 = v14;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v2 addSubview:v15];
    if ([v15 respondsToSelector:"_accessibilitySetSortPriority:"])
    {
      [v15 _accessibilitySetSortPriority:1000];
      v16 = [v15 subviews];
      sub_1000065A8(0, &qword_100ADC670, UIView_ptr);
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = v9;
      if (v17 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v19 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          [v20 _accessibilitySetSortPriority:1000];

          ++v19;
          if (v22 == i)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

LABEL_24:

      v9 = v54;
    }

    v23 = [v15 topAnchor];
    v24 = [v2 contentLayoutGuide];
    v25 = [v24 topAnchor];

    [v2 textContainerInset];
    v26 = [v23 constraintEqualToAnchor:v25 constant:?];

    v27 = *&v2[v9];
    *&v2[v9] = v26;

    v28 = [v15 layoutMarginsGuide];
    v29 = [v28 leftAnchor];

    v30 = [v2 frameLayoutGuide];
    v31 = [v30 leftAnchor];

    [v2 textContainerInset];
    v33 = [v29 constraintEqualToAnchor:v31 constant:v32];

    v34 = OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryLeftConstraint;
    v35 = *&v2[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryLeftConstraint];
    *&v2[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryLeftConstraint] = v33;

    v36 = [v2 frameLayoutGuide];
    v37 = [v36 rightAnchor];

    v38 = [v15 layoutMarginsGuide];
    v39 = [v38 rightAnchor];

    [v2 textContainerInset];
    v41 = [v37 constraintEqualToAnchor:v39 constant:v40];

    v42 = OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryRightConstraint;
    v43 = *&v2[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryRightConstraint];
    *&v2[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryRightConstraint] = v41;

    sub_1000F24EC(&unk_100AD4780, &unk_100941070);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100941D70;
    v45 = *&v2[v9];
    if (v45)
    {
      v46 = v44;
      *(v44 + 32) = v45;
      v47 = *&v2[v34];
      if (v47)
      {
        *(v44 + 40) = v47;
        v48 = *&v2[v42];
        if (v48)
        {
          v49 = objc_opt_self();
          *(v46 + 48) = v48;
          sub_1000065A8(0, &qword_100AD8000, NSLayoutConstraint_ptr);
          v50 = v45;
          v51 = v47;
          v52 = v48;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v49 activateConstraints:isa];

          return;
        }

LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }
}

id sub_1007BDED4()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryTopConstraint];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryView];
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      [v0 bounds];
      Width = CGRectGetWidth(v23);
      [v0 textContainerInset];
      v7 = Width - v6;
      [v0 textContainerInset];
      v9 = v7 - v8;
      [v3 constant];
      v11 = v10;
      LODWORD(v12) = 1148846080;
      LODWORD(v13) = 1112014848;
      [v4 systemLayoutSizeFittingSize:v9 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v12, v13}];
      v15 = ceil(v11 + v14);
      [v0 textContainerInset];
      if (v16 != v15)
      {
        v17 = type metadata accessor for JournalTextView();
        v21.receiver = v0;
        v21.super_class = v17;
        objc_msgSendSuper2(&v21, "textContainerInset");
        v20.receiver = v0;
        v20.super_class = v17;
        objc_msgSendSuper2(&v20, "setTextContainerInset:", v15);
      }
    }
  }

  v18 = type metadata accessor for JournalTextView();
  v22.receiver = v0;
  v22.super_class = v18;
  return objc_msgSendSuper2(&v22, "layoutSubviews");
}

uint64_t sub_1007BE024(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5, _BYTE *a6)
{
  if (*(a1 + 16) && (v10 = sub_100051964(NSFontAttributeName, a2), (v11 & 1) != 0))
  {
    sub_10000BA20(*(a1 + 56) + 32 * v10, &v16);
    sub_100004F84(&v16, &qword_100AD13D0, &unk_100942DB0);
    *a5 = 1;
    if (!*(a1 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    sub_100004F84(&v16, &qword_100AD13D0, &unk_100942DB0);
    if (!*(a1 + 16))
    {
      goto LABEL_8;
    }
  }

  v13 = sub_100051964(NSForegroundColorAttributeName, v12);
  if (v14)
  {
    sub_10000BA20(*(a1 + 56) + 32 * v13, &v16);
    result = sub_100004F84(&v16, &qword_100AD13D0, &unk_100942DB0);
    *a6 = 1;
    goto LABEL_9;
  }

LABEL_8:
  v16 = 0u;
  v17 = 0u;
  result = sub_100004F84(&v16, &qword_100AD13D0, &unk_100942DB0);
LABEL_9:
  if (*a5 == 1 && *a6 == 1)
  {
    *a4 = 1;
  }

  return result;
}

void sub_1007BE254()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = type metadata accessor for JournalTextView();
  objc_msgSendSuper2(&v35, "deleteBackward");
  v2 = [v0 textStorage];
  v3 = [v2 length];

  if (v3 < 1)
  {
    v25 = [v1 typingAttributes];
    type metadata accessor for Key(0);
    sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
    v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v26 + 16) || (v28 = sub_100051964(NSParagraphStyleAttributeName, v27), (v29 & 1) == 0))
    {

      return;
    }

    sub_10000BA20(*(v26 + 56) + 32 * v28, v34);

    sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v11 = v33;
    v30 = [v33 textLists];
    sub_1000065A8(0, &qword_100AD4290, NSTextList_ptr);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v31 >> 62))
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:

      if (v32 >= 1)
      {
        sub_1007BBF88(0);
      }

      return;
    }

LABEL_24:
    v32 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_18;
  }

  v4 = [v1 textStorage];
  v5 = [v4 string];
  if (!v5)
  {
    __break(1u);
    goto LABEL_26;
  }

  v6 = v5;

  v7 = [v1 selectedRange];
  v9 = [v6 paragraphRangeForRange:{v7, v8}];
  v11 = v10;

  if (__OFADD__(v9, v11))
  {
    __break(1u);
    goto LABEL_24;
  }

  v12 = [v1 textStorage];
  v13 = [v12 length];

  if (v13 >= &v11[v9])
  {
    if (!v11)
    {
LABEL_12:
      sub_1007BBF88(1);
      return;
    }

    if (v11 == 1)
    {
      v14 = [v1 textStorage];
      v15 = [v14 attributedSubstringFromRange:{v9, 1}];

      v16 = [v15 string];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_1000961EC(v17, v19);
      v22 = v21;

      if (v22)
      {
        v23 = sub_10057714C(v20, v22);
        if ((v23 & 0x100000000) == 0)
        {
          v24 = v23;

          if ((v24 - 14) > 0xFFFFFFFB || (v24 - 8232) < 2 || v24 == 133)
          {
            goto LABEL_12;
          }

          return;
        }

LABEL_26:
        __break(1u);
      }
    }
  }
}

void sub_1007BE64C()
{
  v1 = [v0 textStorage];
  v2 = [v1 string];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String.count.getter();

  if (v3 >= 1)
  {
    v4 = [v0 textStorage];
    v5 = [v4 string];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = sub_1000961EC(v6, v8);
    v11 = v10;

    if (v11)
    {
      if (v9 == 10 && v11 == 0xE100000000000000)
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

      v13 = String.count.getter();
      v14 = [v0 textStorage];
      v15 = [v0 typingAttributes];
      type metadata accessor for Key(0);
      sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v17 = [v0 selectedRange];
      [v14 setAttributes:isa range:{v17, v18}];

      v19 = [v0 textStorage];
      v20 = [v0 typingAttributes];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = Dictionary._bridgeToObjectiveC()().super.isa;

      v21 = [v0 textStorage];
      v22 = [v21 length];

      if (__OFSUB__(v22, v13))
      {
        __break(1u);
      }

      else
      {
        [v19 setAttributes:v23 range:{&v22[-v13], v13}];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1007BE9DC(uint64_t a1, unint64_t a2, uint64_t a3, NSString a4)
{
  if (!a2)
  {
    return 0;
  }

  result = sub_1000F5D40(a1, a2);
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = v8;
  v11 = [v4 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v12 + 16) || (v56 = v4, v14 = sub_100051964(NSParagraphStyleAttributeName, v13), (v15 & 1) == 0))
  {

    goto LABEL_24;
  }

  sub_10000BA20(*(v12 + 56) + 32 * v14, &v59);

  sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:

    return 0;
  }

  [v57[0] mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v16 = sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v54 = v57[0];
  v55 = v16;
  v17 = [v4 textStorage];
  result = [v17 string];
  if (!result)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v18 = result;

  v19 = [v18 paragraphRangeForRange:{a3, a4}];
  v21 = v20;

  v52 = &v21[v19];
  if (__OFADD__(v19, v21))
  {
    __break(1u);
    goto LABEL_31;
  }

  v22 = [v4 textStorage];
  v23 = [v22 string];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = String.count.getter();

  v25 = [v4 textStorage];
  v26 = [v25 string];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a4 = v28;

  v29 = sub_1000961EC(v27, a4);
  v31 = v30;

  if (v31)
  {
    result = sub_10057714C(v29, v31);
    if ((result & 0x100000000) != 0)
    {
LABEL_35:
      __break(1u);
      return result;
    }

    v32 = result;

    if ((v32 - 14) <= 0xFFFFFFFB && (v32 - 8232) >= 2 && v32 != 133)
    {
      goto LABEL_15;
    }
  }

  if (v24 == v52)
  {
LABEL_15:
    v33 = [v4 textStorage];
    v34 = [v33 attributesAtIndex:v19 effectiveRange:0];

    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = [v4 textStorage];
    v35 = objc_allocWithZone(NSAttributedString);
    a4 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v37 = [v35 initWithString:a4 attributes:isa];

    [v53 appendAttributedString:v37];
  }

  v38 = [v4 textStorage];
  v21 = [v38 length];

  if (__OFADD__(v19, v10))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v21 >= &v10[v19])
  {
    v39 = [v4 textStorage];
    [v39 deleteCharactersInRange:{v19, v10}];
  }

  [v4 setSelectedRange:{v19, 0}];
  v40 = [v4 textStorage];
  result = [v40 string];
  if (!result)
  {
    goto LABEL_34;
  }

  v41 = result;

  v21 = [v41 paragraphRangeForRange:{v19, 0}];
  a4 = v42;

  v19 = v9;
  v10 = v57[0];
  v43 = [v57[0] textLists];
  sub_1000065A8(0, &qword_100AD4290, NSTextList_ptr);
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v59 = v44;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_32:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v45 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setTextLists:v45];

  v46 = [v56 textStorage];
  [v46 addAttribute:NSParagraphStyleAttributeName value:v10 range:{v21, a4}];

  v60 = v55;
  *&v59 = v10;
  v47 = v10;
  v48 = [v56 typingAttributes];
  v49 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = v49;
  if (v60)
  {
    sub_10002432C(&v59, v57);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100048100(v57, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
    v58 = v49;
  }

  else
  {
    sub_100004F84(&v59, &qword_100AD13D0, &unk_100942DB0);
    sub_100080694(v57);
    sub_100004F84(v57, &qword_100AD13D0, &unk_100942DB0);
  }

  v51 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v56 setTypingAttributes:v51];

  return 1;
}

double sub_1007BF264()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for JournalTextView();
  objc_msgSendSuper2(&v18, "accessibilityFrame");
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryView];
  if (v9)
  {
    [v9 accessibilityFrame];
    v24.origin.x = v2;
    v24.origin.y = v4;
    v24.size.width = v6;
    v24.size.height = v8;
    v20 = CGRectIntersection(v19, v24);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    if (!CGRectIsNull(v20))
    {
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      if (CGRectGetHeight(v21) > 4.0)
      {
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        memset(&slice, 0, sizeof(slice));
        v14 = CGRectGetHeight(v22) + -4.0;
        memset(&v16, 0, sizeof(v16));
        v23.origin.x = v2;
        v23.origin.y = v4;
        v23.size.width = v6;
        v23.size.height = v8;
        CGRectDivide(v23, &slice, &v16, v14, CGRectMinYEdge);
        return v16.origin.x;
      }
    }
  }

  return v2;
}

id sub_1007BF4D4(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    result = [v2 isEditing];
    if (!result)
    {
      return result;
    }

    sub_1000082B4(a2, v42, &qword_100AD13D0, &unk_100942DB0);
    v6 = v43;
    if (v43)
    {
      v7 = sub_10000CA14(v42, v43);
      v8 = *(v6 - 8);
      v9 = __chkstk_darwin(v7);
      v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      v12 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v8 + 8))(v11, v6);
      sub_10000BA7C(v42);
    }

    else
    {
      v12 = 0;
    }

    v13 = type metadata accessor for JournalTextView();
    v39.receiver = v2;
    v39.super_class = v13;
    v14 = objc_msgSendSuper2(&v39, "canPerformAction:withSender:", a1, v12);
    swift_unknownObjectRelease();
    if (v14)
    {
      return [v2 allowsEditingTextAttributes];
    }

    return 0;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      sub_1000082B4(a2, v42, &qword_100AD13D0, &unk_100942DB0);
      v15 = v43;
      if (v43)
      {
        v16 = sub_10000CA14(v42, v43);
        v17 = *(v15 - 8);
        v18 = __chkstk_darwin(v16);
        v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v17 + 16))(v20, v18);
        v21 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v17 + 8))(v20, v15);
        sub_10000BA7C(v42);
      }

      else
      {
        v21 = 0;
      }

      v33 = type metadata accessor for JournalTextView();
      v40.receiver = v2;
      v40.super_class = v33;
      v34 = objc_msgSendSuper2(&v40, "canPerformAction:withSender:", a1, v21);
      swift_unknownObjectRelease();
      if (v34)
      {
        v35 = [objc_opt_self() generalPasteboard];
        v36 = [v35 hasStrings];

        return v36;
      }

      return 0;
    }

    if (static Selector.== infix(_:_:)())
    {
      v22 = UITextView.selectedRanges.getter();
      v23 = *(v22 + 16) + 1;
      v24 = 40;
      do
      {
        if (!--v23)
        {

          return 0;
        }

        v25 = *(v22 + v24);
        v24 += 16;
      }

      while (v25 <= 0);

      return (([v2 isEditing] & 1) != 0);
    }

    if ((static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0)
    {
      sub_1000082B4(a2, v42, &qword_100AD13D0, &unk_100942DB0);
      v26 = v43;
      if (v43)
      {
        v27 = sub_10000CA14(v42, v43);
        v28 = *(v26 - 8);
        v29 = __chkstk_darwin(v27);
        v31 = &v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v28 + 16))(v31, v29);
        v32 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v28 + 8))(v31, v26);
        sub_10000BA7C(v42);
      }

      else
      {
        v32 = 0;
      }

      v37 = type metadata accessor for JournalTextView();
      v41.receiver = v2;
      v41.super_class = v37;
      v38 = objc_msgSendSuper2(&v41, "canPerformAction:withSender:", a1, v32);
      swift_unknownObjectRelease();
      return v38;
    }
  }

  result = [v2 isEditing];
  if (result)
  {
    return [v2 allowsEditingTextAttributes];
  }

  return result;
}

void sub_1007BFAA8(void *a1)
{
  v2 = v1;
  if (![a1 isEmpty])
  {
    goto LABEL_32;
  }

  sub_1000065A8(0, &unk_100AD43A0, NSObject_ptr);
  v4 = [a1 start];
  v5 = [v1 beginningOfDocument];
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_32;
  }

  v7 = [v2 interactions];
  sub_1000F24EC(&qword_100AF1DF8, &unk_100968850);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
LABEL_35:
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v8 & 0xC000000000000001;
  v28 = v2;
  v11 = v2;
  v12 = 0;
  v2 = &_s7SwiftUI9AnimationV9easeInOutACvgZ_ptr_0;
  while (v9 != v12)
  {
    if (v10)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      [v14 locationInView:v11];
      v16 = v15;
      v18 = v17;
      swift_unknownObjectRelease();
      if (v16 < 1.79769313e308 && v18 < 1.79769313e308)
      {
        v9 = v12;
        break;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    if (__OFADD__(v12++, 1))
    {
      goto LABEL_34;
    }
  }

  if (!(v8 >> 62))
  {
    if (v9 != *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  if (v9 == _CocoaArrayWrapper.endIndex.getter())
  {
LABEL_31:

    v2 = v28;
LABEL_32:
    sub_1000065A8(0, &unk_100ADC630, UIMenuElement_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v29.receiver = v2;
    v29.super_class = type metadata accessor for JournalTextView();
    objc_msgSendSuper2(&v29, "editMenuForTextRange:suggestedActions:", a1, isa);

    return;
  }

LABEL_22:
  if (v10)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v9 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    swift_unknownObjectRetain();
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
LABEL_38:
    swift_unknownObjectRelease();

    goto LABEL_39;
  }

  [v20 locationInView:v11];
  v22 = v21;
  v24 = v23;
  swift_unknownObjectRelease();

  if (v22 >= 1.79769313e308)
  {
LABEL_39:

    goto LABEL_40;
  }

  v2 = v28;
  if (v24 < 1.79769313e308)
  {

    [v11 textContainerInset];
    if (v24 < v25)
    {
      sub_1000065A8(0, &unk_100AD4D00, UIMenu_ptr);
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      v30.value.super.isa = 0;
      v30.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v30, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, (v8 + 32));
      return;
    }

    goto LABEL_32;
  }

LABEL_40:
  __break(1u);
}

void sub_1007BFF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, void *a6)
{
  v10 = [a5 textStorage];
  sub_1000082B4(a1, v19, &qword_100AD13D0, &unk_100942DB0);
  if (!v20)
  {
    sub_100004F84(v19, &qword_100AD13D0, &unk_100942DB0);
    goto LABEL_8;
  }

  sub_1000065A8(0, &qword_100AD2A78, UIFont_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v17 = a6;
    goto LABEL_9;
  }

  v11 = [v18 fontDescriptor];
  v12 = [v11 symbolicTraits];

  if (!v12 || (v13 = [a6 fontDescriptor], v14 = objc_msgSend(a6, "fontDescriptor"), v15 = objc_msgSend(v14, "symbolicTraits"), v14, v16 = objc_msgSend(v13, "fontDescriptorWithSymbolicTraits:", v15 | v12), v13, !v16))
  {

    goto LABEL_8;
  }

  v17 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];

LABEL_9:
  [v10 addAttribute:NSFontAttributeName value:v17 range:{a2, a3}];
}

id sub_1007C0124()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1007C01F4(id a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v7 + 16) || (v9 = sub_100051964(NSParagraphStyleAttributeName, v8), (v10 & 1) == 0))
  {

    return;
  }

  sub_10000BA20(*(v7 + 56) + 32 * v9, &v59);

  sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v11 = *&v57[0];
  v12 = [v3 textStorage];
  v13 = [v12 length];

  if (v13 == a1 && !a2)
  {
    v14 = [v3 textStorage];
    [v14 beginEditing];

    v15 = [v3 textStorage];
    v16 = [v3 typingAttributes];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = objc_allocWithZone(NSAttributedString);
    v18 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v20 = [v17 initWithString:v18 attributes:isa];

    [v15 appendAttributedString:v20];
    v21 = [v3 textStorage];
    [v21 endEditing];

    return;
  }

  [*&v57[0] firstLineHeadIndent];
  *v23.i64 = *v22.i64 - trunc(*v22.i64);
  v24.f64[0] = NAN;
  v24.f64[1] = NAN;
  v56 = vnegq_f64(v24);
  v25 = *vbslq_s8(v56, v23, v22).i64 + -0.1;
  [*&v57[0] headIndent];
  if (fabs(v25) >= 0.01)
  {
    goto LABEL_28;
  }

  *v27.i64 = *v26.i64 - trunc(*v26.i64);
  if (fabs(*vbslq_s8(v56, v27, v26).i64 + -0.1) >= 0.01)
  {
    goto LABEL_28;
  }

  v28 = [v3 typingAttributes];
  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v29 + 16) && (v31 = sub_100051964(NSForegroundColorAttributeName, v30), (v32 & 1) != 0))
  {
    sub_10000BA20(*(v29 + 56) + 32 * v31, &v59);

    sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
    if (swift_dynamicCast())
    {
      v33 = *&v57[0];
      goto LABEL_17;
    }
  }

  else
  {
  }

  v33 = 0;
LABEL_17:
  if (qword_100AD0AC0 == -1)
  {
    if (v33)
    {
      goto LABEL_19;
    }

LABEL_28:

    return;
  }

  swift_once();
  if (!v33)
  {
    goto LABEL_28;
  }

LABEL_19:
  v34 = qword_100B31098;
  v35 = sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
  v36 = v34;
  v37 = v35;
  LOBYTE(v35) = static NSObject.== infix(_:_:)();

  if ((v35 & 1) == 0)
  {
    goto LABEL_28;
  }

  v38 = [v3 textStorage];
  v39 = [v38 string];
  if (v39)
  {
    v40 = v39;

    v41 = [v3 selectedRange];
    v43 = [v40 paragraphRangeForRange:{v41, v42}];
    v54 = v44;
    v55 = v43;

    if (qword_100AD0370 != -1)
    {
      swift_once();
    }

    v60 = v37;
    *&v59 = qword_100B30368;
    v53 = qword_100B30368;
    v45 = [v3 typingAttributes];
    v46 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = v46;
    if (v60)
    {
      sub_10002432C(&v59, v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100048100(v57, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
      v58 = v46;
    }

    else
    {
      sub_100004F84(&v59, &qword_100AD13D0, &unk_100942DB0);
      sub_100080694(v57);
      sub_100004F84(v57, &qword_100AD13D0, &unk_100942DB0);
    }

    v48 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v3 setTypingAttributes:v48];

    v49 = [v3 textStorage];
    sub_1000F24EC(&unk_100AD9200, &qword_1009488B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940080;
    *(inited + 32) = NSForegroundColorAttributeName;
    *(inited + 64) = v37;
    *(inited + 40) = v53;
    v51 = NSForegroundColorAttributeName;
    sub_10007BDBC(inited);
    swift_setDeallocating();
    sub_100004F84(inited + 32, &unk_100AD9210, &qword_10094C510);
    v52 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v49 addAttributes:v52 range:{v55, v54}];
  }

  else
  {
    __break(1u);
  }
}

void sub_1007C08E4(void *a1)
{
  [a1 action];
  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    return;
  }

  [v1 selectedRange];
  if (v3)
  {
    v24[0] = [v1 selectedRange];
    v24[1] = v4;
    v5 = [v1 textStorage];
    v6 = [v5 attributesAtIndex:v24[0] effectiveRange:v24];

    type metadata accessor for Key(0);
    sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v6) = sub_1007C6D58(v7, v8);

    [a1 setState:v6 & 1];
    return;
  }

  v9 = [v1 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v10 + 16) || (v12 = sub_100051964(NSParagraphStyleAttributeName, v11), (v13 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_10000BA20(*(v10 + 56) + 32 * v12, v24);

  sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    [a1 setState:0];
    return;
  }

  [v23 firstLineHeadIndent];
  *v15.i64 = *v14.i64 - trunc(*v14.i64);
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v22 = vnegq_f64(v16);
  v17 = *vbslq_s8(v22, v15, v14).i64 + -0.1;
  [v23 headIndent];
  *v19.i64 = *v18.i64 - trunc(*v18.i64);
  v20 = fabs(v17) < 0.01;
  v21 = fabs(*vbslq_s8(v22, v19, v18).i64 + -0.1) < 0.01 && v20;
  [a1 setState:v21];
}

void sub_1007C0C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, void *a7, double **a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_1000082B4(a1, v40, &qword_100AD13D0, &unk_100942DB0);
    if (!v41)
    {
      sub_100004F84(v40, &qword_100AD13D0, &unk_100942DB0);
      return;
    }

    sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
    if (swift_dynamicCast())
    {
      [v39 firstLineHeadIndent];
      *v16.i64 = *v15.i64 - trunc(*v15.i64);
      v17.f64[0] = NAN;
      v17.f64[1] = NAN;
      v37 = vnegq_f64(v17);
      v18 = *vbslq_s8(v37, v16, v15).i64 + -0.1;
      [v39 headIndent];
      v36 = v19;
      v20 = *a6;
      v21 = NSNotFound.getter();
      if (fabs(v18) < 0.01)
      {
        *v22.i64 = *v36.i64 - trunc(*v36.i64);
        if (fabs(*vbslq_s8(v37, v22, v36).i64 + -0.1) < 0.01)
        {
          if (v20 == v21)
          {
            v23 = a3 + a2;
            goto LABEL_22;
          }

          v29 = *(a6 + 1);
          v30 = *a6 + v29;
          if (__OFADD__(*a6, v29))
          {
            __break(1u);
          }

          else
          {
            v23 = a2 + a3;
            if (!__OFADD__(a2, a3))
            {
              if (v30 <= v23)
              {
                v30 = a2 + a3;
              }

              if (*a6 < a2)
              {
                a2 = *a6;
              }

              a3 = v30 - a2;
              if (__OFSUB__(v30, a2))
              {
                __break(1u);
                return;
              }

LABEL_22:
              *a6 = a2;
              *(a6 + 1) = a3;
              if (v23 == a7[1] + *a7)
              {
                a6 = *a8;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *a8 = a6;
                if (isUniquelyReferenced_nonNull_native)
                {
LABEL_24:
                  v33 = *(a6 + 2);
                  v32 = *(a6 + 3);
                  if (v33 >= v32 >> 1)
                  {
                    *a8 = sub_1003E5668((v32 > 1), v33 + 1, 1, a6);
                  }

                  v34 = *a8;
                  *(v34 + 2) = v33 + 1;
                  v35 = &v34[2 * v33];
                  *(v35 + 4) = a2;
                  *(v35 + 5) = a3;
                  return;
                }

LABEL_31:
                a6 = sub_1003E5668(0, *(a6 + 2) + 1, 1, a6);
                *a8 = a6;
                goto LABEL_24;
              }

LABEL_27:

              return;
            }
          }

          __break(1u);
          goto LABEL_31;
        }
      }

      if (v20 == v21)
      {
        goto LABEL_27;
      }

      v38 = *a6;
      v24 = *a8;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v24;
      if ((v25 & 1) == 0)
      {
        v24 = sub_1003E5668(0, *(v24 + 2) + 1, 1, v24);
        *a8 = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_1003E5668((v26 > 1), v27 + 1, 1, v24);
        *a8 = v24;
      }

      *(v24 + 2) = v27 + 1;
      *&v24[2 * v27 + 4] = v38;
      v28 = NSNotFound.getter();

      *a6 = v28;
      a6[1] = 0.0;
    }
  }
}

BOOL sub_1007C0F60()
{
  v1 = [v0 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v2 + 16) && (v4 = sub_100051964(NSParagraphStyleAttributeName, v3), (v5 & 1) != 0))
  {
    sub_10000BA20(*(v2 + 56) + 32 * v4, v16);

    sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
    if (swift_dynamicCast())
    {
      [v15 firstLineHeadIndent];
      *v7.i64 = *v6.i64 - trunc(*v6.i64);
      v8.f64[0] = NAN;
      v8.f64[1] = NAN;
      v14 = vnegq_f64(v8);
      v9 = *vbslq_s8(v14, v7, v6).i64 + -0.1;
      [v15 headIndent];
      v13 = v10;

      if (fabs(v9) < 0.01)
      {
        *v11.i64 = *v13.i64 - trunc(*v13.i64);
        return fabs(*vbslq_s8(v14, v11, v13).i64 + -0.1) < 0.01;
      }
    }
  }

  else
  {
  }

  return 0;
}

void sub_1007C1110(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 textStorage];
  v7 = [v6 string];
  if (!v7)
  {
    goto LABEL_35;
  }

  v8 = v7;

  v9 = [v8 paragraphRangeForRange:{a1, a2}];
  v11 = v10;

  v12 = [v3 undoManager];
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    *(v14 + 24) = v11;
    type metadata accessor for JournalTextView();
    NSUndoManager.registerUndo<A>(withTarget:handler:)();
  }

  v15 = [v3 textStorage];
  [v15 beginEditing];

  v16 = [v3 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v17 + 16) && (v19 = sub_100051964(NSParagraphStyleAttributeName, v18), (v20 & 1) != 0))
  {
    sub_10000BA20(*(v17 + 56) + 32 * v19, &aBlock);

    sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
    if (swift_dynamicCast())
    {
      v21 = *&v65[0];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v21 = 0;
LABEL_10:
  v22 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v23 = v22;
  if (v21)
  {
    [v22 setParagraphStyle:v21];
  }

  else
  {
    [v22 setParagraphSpacingBefore:8.0];
  }

  [v23 setFirstLineHeadIndent:14.1];
  [v23 setHeadIndent:14.1];
  v62 = sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
  *&aBlock = v23;
  v24 = [v3 typingAttributes];
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v66 = v25;
  if (v62)
  {
    sub_10002432C(&aBlock, v65);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100048100(v65, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
    v66 = v25;
  }

  else
  {
    sub_100004F84(&aBlock, &qword_100AD13D0, &unk_100942DB0);
    sub_100080694(v65);
    sub_100004F84(v65, &qword_100AD13D0, &unk_100942DB0);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = &selRef_setSuggestedName_;
  [v3 setTypingAttributes:isa];

  v29 = [v3 typingAttributes];
  v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = sub_1007C6E84(v30, v31);

  if (!v32)
  {
    v30 = NSForegroundColorAttributeName;
    if (qword_100AD0370 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

  if (!v11)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v28 = (v59 + v11);
    if (!__OFADD__(v59, v11))
    {
      break;
    }

    __break(1u);
LABEL_33:
    swift_once();
LABEL_20:
    v33 = qword_100B30368;
    v62 = sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
    *&aBlock = v33;
    v34 = v33;
    v35 = [v3 typingAttributes];
    v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = v36;
    if (v62)
    {
      sub_10002432C(&aBlock, v65);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_100048100(v65, v30, v37);
      v66 = v36;
    }

    else
    {
      sub_100004F84(&aBlock, &qword_100AD13D0, &unk_100942DB0);
      sub_100080694(v65);
      sub_100004F84(v65, &qword_100AD13D0, &unk_100942DB0);
    }

    v30 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v3 v28[6]];

    if (!v11)
    {
      goto LABEL_26;
    }
  }

  v38 = [v3 textStorage];
  v39 = [v38 length];

  if (v39 < v28)
  {
LABEL_26:
    v40 = [v3 selectedTextRange];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 start];

      if (v42)
      {
        v43 = [v3 beginningOfDocument];
        v44 = [v3 offsetFromPosition:v43 toPosition:v42];

        v45 = objc_allocWithZone(NSMutableAttributedString);
        v46 = String._bridgeToObjectiveC()();
        v47 = [v45 initWithString:v46];

        v48 = [v3 typingAttributes];
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v47 setAttributes:v49 range:{0, 0}];

        v50 = [v3 textStorage];
        [v50 insertAttributedString:v47 atIndex:v44];
      }
    }

    v51 = 0;
    v52 = 0;
    goto LABEL_31;
  }

  v53 = [v3 textStorage];
  v52 = swift_allocObject();
  *(v52 + 16) = v3;
  v54 = swift_allocObject();
  v51 = sub_1007C822C;
  *(v54 + 16) = sub_1007C822C;
  *(v54 + 24) = v52;
  v63 = sub_1007C82F8;
  v64 = v54;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v61 = sub_10007F714;
  v62 = &unk_100A7E468;
  v55 = _Block_copy(&aBlock);
  v56 = v3;

  [v53 enumerateAttributesInRange:v59 options:v11 usingBlock:{0x100000, v55}];

  _Block_release(v55);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
LABEL_31:
    v58 = [v3 textStorage];
    [v58 endEditing];

    sub_100004DF8(v51, v52);
    return;
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1007C1A28(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v8 = &selRef_setRegion_;
  v9 = [v4 textStorage];
  v10 = [v9 string];
  if (v10)
  {
    v11 = v10;

    v12 = [v11 paragraphRangeForRange:{a1, a2}];
    v14 = v13;

    v15 = [v4 undoManager];
    if (v15)
    {
      v16 = v15;
      v17 = swift_allocObject();
      *(v17 + 16) = v12;
      *(v17 + 24) = v14;
      type metadata accessor for JournalTextView();
      NSUndoManager.registerUndo<A>(withTarget:handler:)();
    }

    v18 = [v4 textStorage];
    [v18 beginEditing];

    v19 = [v4 textStorage];
    v20 = &selRef_setSuggestedName_;
    v21 = [v19 length];

    if (v21 >= 1)
    {
      if (v14)
      {
        v22 = &v12[v14];
        if (__OFADD__(v12, v14))
        {
          __break(1u);
        }

        else
        {
          v23 = [v4 textStorage];
          v24 = [v23 length];

          if (v24 < v22)
          {
            goto LABEL_8;
          }

          v26 = [v4 textStorage];
          v21 = swift_allocObject();
          *(v21 + 16) = v4;
          *(v21 + 24) = ObjectType;
          v20 = swift_allocObject();
          v20[2] = sub_1007C8218;
          v20[3] = v21;
          v59 = sub_1007C82F8;
          v60 = v20;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v57 = sub_10007F714;
          v58 = &unk_100A7E1C0;
          v22 = _Block_copy(&aBlock);
          v3 = v60;
          v27 = v4;

          [v26 enumerateAttributesInRange:v12 options:v14 usingBlock:{0x100000, v22}];

          _Block_release(v22);
          LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

          if ((v26 & 1) == 0)
          {
            v25 = sub_1007C8218;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_41;
      }

LABEL_8:
      v25 = 0;
      v21 = 0;
LABEL_14:
      v28 = [v4 typingAttributes];
      type metadata accessor for Key(0);
      sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
      v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v29 + 16) && (v31 = sub_100051964(NSParagraphStyleAttributeName, v30), (v32 & 1) != 0))
      {
        sub_10000BA20(*(v29 + 56) + 32 * v31, &aBlock);

        sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
        if (swift_dynamicCast())
        {
          v33 = v54[0];
          [v54[0] mutableCopy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          v34 = sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
          if (swift_dynamicCast())
          {
            v53 = v25;
            [v54[0] setFirstLineHeadIndent:0.0];
            [v54[0] setHeadIndent:0.0];
            v58 = v34;
            *&aBlock = v54[0];
            v35 = v54[0];
            v36 = [v4 typingAttributes];
            v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v55 = v37;
            if (v58)
            {
              sub_10002432C(&aBlock, v54);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_100048100(v54, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
              v55 = v37;
            }

            else
            {
              sub_100004F84(&aBlock, &qword_100AD13D0, &unk_100942DB0);
              sub_100080694(v54);
              sub_100004F84(v54, &qword_100AD13D0, &unk_100942DB0);
            }

            v8 = &selRef_setRegion_;
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            [v4 setTypingAttributes:isa];

            v25 = v53;
          }

          else
          {
          }
        }
      }

      else
      {
      }

      v39 = [v4 typingAttributes];
      v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v40 + 16) && (v22 = NSForegroundColorAttributeName, v42 = sub_100051964(NSForegroundColorAttributeName, v41), (v43 & 1) != 0))
      {
        v51 = v25;
        sub_10000BA20(*(v40 + 56) + 32 * v42, &aBlock);

        v3 = sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
        if (swift_dynamicCast())
        {
          v20 = v54[0];
          sub_1000065A8(0, &unk_100AD43A0, NSObject_ptr);
          if (qword_100AD0370 == -1)
          {
LABEL_25:
            if (static NSObject.== infix(_:_:)())
            {
              if (qword_100AD0AC0 != -1)
              {
                swift_once();
              }

              v58 = v3;
              *&aBlock = qword_100B31098;
              v44 = qword_100B31098;
              v45 = [v4 typingAttributes];
              v46 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              v55 = v46;
              if (v58)
              {
                sub_10002432C(&aBlock, v54);
                v47 = swift_isUniquelyReferenced_nonNull_native();
                sub_100048100(v54, v22, v47);
                v55 = v46;
              }

              else
              {
                sub_100004F84(&aBlock, &qword_100AD13D0, &unk_100942DB0);
                sub_100080694(v54);
                sub_100004F84(v54, &qword_100AD13D0, &unk_100942DB0);
              }

              v50 = Dictionary._bridgeToObjectiveC()().super.isa;

              [v4 setTypingAttributes:v50];
            }

            v25 = v51;
            goto LABEL_31;
          }

LABEL_41:
          swift_once();
          goto LABEL_25;
        }

        v25 = v51;
      }

      else
      {
      }

LABEL_31:
      [v4 setNeedsLayout];
      v48 = [v4 v8[417]];
      [v48 endEditing];

      sub_100004DF8(v25, v21);
      return;
    }

    sub_1007BBF88(0);
    sub_100080784();
    v52 = [v4 textStorage];
    [v52 endEditing];
  }

  else
  {
    __break(1u);
  }
}

void sub_1007C22F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(a1 + 16) && (v9 = sub_100051964(NSParagraphStyleAttributeName, a2), (v10 & 1) != 0) && (sub_10000BA20(*(a1 + 56) + 32 * v9, v19), sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr), swift_dynamicCast()))
  {
    v11 = v18;
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v13 = v12;
  if (v11)
  {
    [v12 setParagraphStyle:v11];
  }

  else
  {
    [v12 setParagraphSpacingBefore:8.0];
  }

  [v13 setFirstLineHeadIndent:14.1];
  [v13 setHeadIndent:14.1];
  v14 = [a5 textStorage];
  [v14 addAttribute:NSParagraphStyleAttributeName value:v13 range:{a2, a3}];

  v16 = sub_1007C6E84(a1, v15);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = [a5 textStorage];
    if (qword_100AD0370 != -1)
    {
      swift_once();
    }

    [v17 addAttribute:? value:? range:?];
  }
}

void sub_1007C2524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!*(a1 + 16))
  {
    return;
  }

  v9 = sub_100051964(NSParagraphStyleAttributeName, a2);
  if ((v10 & 1) == 0)
  {
    return;
  }

  sub_10000BA20(*(a1 + 56) + 32 * v9, v17);
  sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  [v16 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  [v16 setFirstLineHeadIndent:0.0];
  [v16 setHeadIndent:0.0];
  v11 = [a5 textStorage];
  [v11 addAttribute:NSParagraphStyleAttributeName value:v16 range:{a2, a3}];

  if (!*(a1 + 16) || (v13 = sub_100051964(NSForegroundColorAttributeName, v12), (v14 & 1) == 0) || (sub_10000BA20(*(a1 + 56) + 32 * v13, v17), sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr), (swift_dynamicCast() & 1) == 0))
  {
LABEL_17:

    return;
  }

  sub_1000065A8(0, &unk_100AD43A0, NSObject_ptr);
  if (qword_100AD0370 != -1)
  {
    swift_once();
  }

  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

    goto LABEL_17;
  }

  v15 = [a5 textStorage];
  if (qword_100AD0AC0 != -1)
  {
    swift_once();
  }

  [v15 addAttribute:NSForegroundColorAttributeName value:qword_100B31098 range:{a2, a3}];
}

uint64_t sub_1007C2818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for UITextFormattingViewController.ChangeValue.bold(_:) || v9 == enum case for UITextFormattingViewController.ChangeValue.italic(_:) || v9 == enum case for UITextFormattingViewController.ChangeValue.underline(_:) || v9 == enum case for UITextFormattingViewController.ChangeValue.strikethrough(_:))
  {
    sub_1007BE64C();
    return 1;
  }

  if (v9 == enum case for UITextFormattingViewController.ChangeValue.textColor(_:))
  {
    v15 = v2;
    (*(v5 + 96))(v8, v4);
    v16 = *v8;
    if (!sub_1004173E4() && !sub_100417348())
    {
      v44 = &v2[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor];
      v45 = *&v2[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor];
      if (v45)
      {
        v13 = 1;
        goto LABEL_39;
      }

      v53 = v16;
      v13 = 1;
      v52 = v16;
LABEL_47:
      *v44 = v52;
      goto LABEL_48;
    }

    v17 = [v2 selectedRange];
    [v2 selectedRange];
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      __break(1u);
    }

    else
    {
      v20 = [v2 textStorage];
      v21 = [v20 length];

      if (v21 >= v19)
      {
        [v2 selectedRange];
        if (v22 >= 1)
        {
          v23 = [v2 textStorage];
          v24 = [v23 attributesAtIndex:objc_msgSend(v2 effectiveRange:{"selectedRange"), 0}];

          type metadata accessor for Key(0);
          sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
          v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (qword_100AD0AC0 != -1)
          {
            swift_once();
          }

          v26 = qword_100B31098;
          v58 = sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
          *&v57 = v26;
          sub_10002432C(&v57, v55);
          v27 = v26;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v56 = v25;
          sub_100048100(v55, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
          v29 = v15;
          v30 = [v15 textStorage];
          v31.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v32 = [v15 selectedRange];
          [v30 setAttributes:v31.super.isa range:{v32, v33}];

          goto LABEL_38;
        }
      }

      v17 = NSForegroundColorAttributeName;
      if (qword_100AD0AC0 == -1)
      {
LABEL_27:
        v36 = qword_100B31098;
        v58 = sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
        *&v57 = v36;
        v37 = v36;
        v38 = [v2 typingAttributes];
        type metadata accessor for Key(0);
        sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
        v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v56 = v39;
        if (v58)
        {
          sub_10002432C(&v57, v55);
          v40 = swift_isUniquelyReferenced_nonNull_native();
          v54 = v39;
          sub_100048100(v55, v17, v40);
          v56 = v54;
        }

        else
        {
          sub_100004F84(&v57, &qword_100AD13D0, &unk_100942DB0);
          sub_100080694(v55);
          sub_100004F84(v55, &qword_100AD13D0, &unk_100942DB0);
        }

        v31.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v29 = v15;
        [v15 setTypingAttributes:v31.super.isa];
LABEL_38:

        v46 = *&v29[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor];
        *&v29[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor] = 0;

        v13 = 0;
        v44 = &v29[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor];
        v45 = *&v29[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor];
        if (v45)
        {
LABEL_39:
          sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
          v47 = v16;
          v48 = v45;
          v49 = static NSObject.== infix(_:_:)();

          v50 = v16;
          if ((v13 & 1) == 0)
          {

            v50 = 0;
          }

          v51 = *v44;
          *v44 = v50;

          if (v49)
          {

            return v13;
          }

LABEL_48:
          sub_1007BE64C();

          return v13;
        }

        v52 = 0;
        goto LABEL_47;
      }
    }

    swift_once();
    goto LABEL_27;
  }

  if (v9 == enum case for UITextFormattingViewController.ChangeValue.textList(_:))
  {
    (*(v5 + 8))(v8, v4);
    sub_1007BE64C();
    v34 = [v2 selectedRange];
    sub_1007C01F4(v34, v35);
    return 1;
  }

  if (v9 != enum case for UITextFormattingViewController.ChangeValue.toggleBlockquote(_:))
  {
    (*(v5 + 8))(v8, v4);
    return 1;
  }

  (*(v5 + 96))(v8, v4);
  v41 = *v8;
  v42 = [v2 selectedRange];
  if (v41 == 1)
  {
    sub_1007C1110(v42, v43);
  }

  else
  {
    sub_1007C1A28(v42, v43);
  }

  return 0;
}

id sub_1007C3048@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v30 - v9;
  [v2 selectedRange];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [v2 selectedRange];
  [v2 selectedRange];
  v14 = &v12[v13];
  if (__OFADD__(v12, v13))
  {
    __break(1u);
  }

  result = [v2 attributedText];
  if (result)
  {
    v16 = result;
    v17 = [result length];

    if (v17 < v14)
    {
LABEL_5:
      v18 = [v2 typingAttributes];
      type metadata accessor for Key(0);
      sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      UITextFormattingViewController.FormattingDescriptor.init(attributes:)();
      sub_1007C0F60();
      UITextFormattingViewController.FormattingDescriptor._blockquote.setter();
      v19 = [v2 typingAttributes];
      v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v20 + 16) && (v22 = sub_100051964(NSStrikethroughStyleAttributeName, v21), (v23 & 1) != 0))
      {
        sub_10000BA20(*(v20 + 56) + 32 * v22, v32);
      }

      else
      {

        memset(v32, 0, sizeof(v32));
      }

      sub_100004F84(v32, &qword_100AD13D0, &unk_100942DB0);
      UITextFormattingViewController.FormattingDescriptor.strikethroughPresent.setter();
      return (*(v4 + 32))(v31, v10, v3);
    }

    result = [v2 attributedText];
    if (result)
    {
      [v2 selectedRange];
      UITextFormattingViewController.FormattingDescriptor.init(string:range:)();
      v24 = [v2 selectedRange];
      *&v32[0] = v24;
      *(&v32[0] + 1) = v25;
      v26 = [v2 textStorage];
      v27 = [v26 attributesAtIndex:v24 effectiveRange:v32];

      type metadata accessor for Key(0);
      sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
      v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1007C6D58(v28, v29);

      UITextFormattingViewController.FormattingDescriptor._blockquote.setter();
      v10 = v6;
      return (*(v4 + 32))(v31, v10, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1007C3554(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  if (!a1 || (objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) == 0))
  {
    if (qword_100AD0AB8 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_10000617C(v75, qword_100AF1CF0);
    swift_errorRetain();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v80 = _swift_stdlib_bridgeErrorToNSError();
        v81 = v80;
      }

      else
      {
        v80 = 0;
        v81 = 0;
      }

      *(v78 + 4) = v80;
      *v79 = v81;
      _os_log_impl(&_mh_execute_header, v76, v77, "Failed to load text for pasting: %@", v78, 0xCu);
      sub_100004F84(v79, &unk_100AD4BB0, &unk_100941E50);
    }

    [a3 setNoResult];
    v73 = 0;
    v74 = 0;
    goto LABEL_26;
  }

  v16 = v15;
  v84 = a8;
  v85 = a6;
  v94 = _swiftEmptyArrayStorage;
  v17 = *(a4 + 16);
  swift_unknownObjectRetain();
  v82 = a3;
  v83 = a7;
  if (v17)
  {
    v19 = sub_100051964(NSParagraphStyleAttributeName, v18);
    if (v20)
    {
      sub_10000BA20(*(a4 + 56) + 32 * v19, &aBlock);
      sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
      if (swift_dynamicCast())
      {
        v21 = [v87 textLists];
        sub_1000065A8(0, &qword_100AD4290, NSTextList_ptr);
        v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v94 = v22;
      }
    }
  }

  v23 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v16];
  v24 = [v23 length];
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1007C8278;
  *(v26 + 24) = v25;
  v92 = sub_100673DC8;
  v93 = v26;
  aBlock = _NSConcreteStackBlock;
  v89 = 1107296256;
  v90 = sub_10007E0A4;
  v91 = &unk_100A7E5D0;
  v27 = _Block_copy(&aBlock);
  v28 = v23;

  [v28 enumerateAttribute:NSLinkAttributeName inRange:0 options:v24 usingBlock:{0, v27}];
  _Block_release(v27);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
    goto LABEL_28;
  }

  v29 = [v28 length];

  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1007C8280;
  *(v31 + 24) = v30;
  v92 = sub_100673DC8;
  v93 = v31;
  aBlock = _NSConcreteStackBlock;
  v89 = 1107296256;
  v90 = sub_10007E0A4;
  v91 = &unk_100A7E648;
  v32 = _Block_copy(&aBlock);
  v33 = v28;

  [v33 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v29 usingBlock:{0, v32}];
  _Block_release(v32);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v35 = [v33 length];

  if ((v35 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v36 = swift_allocObject();
  *(v36 + 16) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1007C8288;
  *(v37 + 24) = v36;
  v92 = sub_100673DC8;
  v93 = v37;
  aBlock = _NSConcreteStackBlock;
  v89 = 1107296256;
  v90 = sub_10007E0A4;
  v91 = &unk_100A7E6C0;
  v38 = _Block_copy(&aBlock);
  v39 = v33;

  [v39 enumerateAttribute:NSFontAttributeName inRange:0 options:v35 usingBlock:{0, v38}];
  _Block_release(v38);
  v40 = swift_isEscapingClosureAtFileLocation();

  if (v40)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v41 = [v39 length];

  if ((v41 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v42 = swift_allocObject();
  v42[2] = a5;
  v42[3] = &v94;
  v42[4] = v85 + 16;
  v42[5] = v39;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1007C8290;
  *(v43 + 24) = v42;
  v92 = sub_100673DC8;
  v93 = v43;
  aBlock = _NSConcreteStackBlock;
  v89 = 1107296256;
  v90 = sub_10007E0A4;
  v91 = &unk_100A7E738;
  v44 = _Block_copy(&aBlock);
  v45 = v39;
  v46 = a5;

  [v45 enumerateAttribute:NSParagraphStyleAttributeName inRange:0 options:v41 usingBlock:{0, v44}];
  _Block_release(v44);
  v47 = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v86 = v42;
  v48 = NSAdaptiveImageGlyphAttributeName;
  v49 = [v45 length];

  [v45 removeAttribute:v48 range:{0, v49}];
  sub_1000F24EC(&unk_100AD9200, &qword_1009488B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  *(inited + 32) = NSForegroundColorAttributeName;
  v51 = sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
  *(inited + 40) = v83;
  *(inited + 64) = v51;
  *(inited + 72) = NSBackgroundColorAttributeName;
  v52 = objc_opt_self();
  v53 = NSForegroundColorAttributeName;
  v54 = v83;
  v55 = NSBackgroundColorAttributeName;
  v56 = [v52 clearColor];
  *(inited + 104) = v51;
  *(inited + 80) = v56;
  sub_10007BDBC(inited);
  swift_setDeallocating();
  sub_1000F24EC(&unk_100AD9210, &qword_10094C510);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v58 = [v45 length];

  [v45 addAttributes:isa range:{0, v58}];
  v59 = [v45 length];

  [v45 fixAttributesInRange:{0, v59}];
  v60 = v45;
  v61 = [v60 string];
  if (!v61)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = String._bridgeToObjectiveC()();
  }

  v62 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v61];

  v63 = [v52 labelColor];
  v64 = sub_10010BBF4(v84);
  v65 = [v60 length];
  if ((v65 & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  v66 = v65;
  v67 = swift_allocObject();
  v67[2] = v64;
  v67[3] = v63;
  v67[4] = 0x4020000000000000;
  v67[5] = 0;
  v67[6] = v62;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_1000804A0;
  *(v68 + 24) = v67;
  v92 = sub_1007C82F8;
  v93 = v68;
  aBlock = _NSConcreteStackBlock;
  v89 = 1107296256;
  v90 = sub_10007F714;
  v91 = &unk_100A7E7B0;
  v69 = _Block_copy(&aBlock);
  v70 = v64;
  v71 = v63;
  v72 = v62;

  [v60 enumerateAttributesInRange:0 options:v66 usingBlock:{0, v69}];

  _Block_release(v69);
  LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

  if ((v66 & 1) == 0)
  {
    [v82 setAttributedStringResult:v72];

    swift_unknownObjectRelease();

    v73 = sub_1007C8290;
    v74 = v86;
LABEL_26:
    sub_100004DF8(v73, v74);
    return;
  }

LABEL_34:
  __break(1u);
}

id sub_1007C41B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16[-v10];
  sub_1000082B4(a1, v16, &qword_100AD13D0, &unk_100942DB0);
  if (v17)
  {
    v12 = type metadata accessor for URL();
    v13 = swift_dynamicCast();
    (*(*(v12 - 8) + 56))(v11, v13 ^ 1u, 1, v12);
  }

  else
  {
    sub_100004F84(v16, &qword_100AD13D0, &unk_100942DB0);
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  type metadata accessor for URL();
  v14 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  result = sub_100004F84(v11, &unk_100AD6DD0, &qword_1009437C0);
  if (!v14)
  {
    return [a5 removeAttribute:NSLinkAttributeName range:{a2, a3}];
  }

  return result;
}

void sub_1007C439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1000082B4(a1, v9, &qword_100AD13D0, &unk_100942DB0);
  if (v10)
  {
    sub_1000065A8(0, &unk_100AF1DE0, NSTextAttachment_ptr);
    if (swift_dynamicCast())
    {

      [a5 deleteCharactersInRange:{a2, a3}];
    }
  }

  else
  {
    sub_100004F84(v9, &qword_100AD13D0, &unk_100942DB0);
  }
}

void sub_1007C446C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1000082B4(a1, v14, &qword_100AD13D0, &unk_100942DB0);
  if (!v15)
  {
    sub_100004F84(v14, &qword_100AD13D0, &unk_100942DB0);
    goto LABEL_5;
  }

  sub_1000065A8(0, &qword_100AD2A78, UIFont_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v8 = [v13 fontDescriptor];

  v9 = [v8 symbolicTraits];
  v10 = v9 & 3;
LABEL_6:
  sub_1000F24EC(&unk_100ADFBF0, &unk_10095D5F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  *(inited + 32) = xmmword_100968820;
  *(inited + 48) = 0;
  *(inited + 56) = v10;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  v12 = sub_100047788(UIFontTextStyleBody, inited, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  [a5 addAttribute:NSFontAttributeName value:v12 range:{a2, a3}];
}

void sub_1007C4620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned __int8 *a7, void *a8)
{
  sub_1000082B4(a1, v20, &qword_100AD13D0, &unk_100942DB0);
  if (v21)
  {
    sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
    if (swift_dynamicCast())
    {
      [v19 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
      if (swift_dynamicCast())
      {
        v12 = v19;
        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_100004F84(v20, &qword_100AD13D0, &unk_100942DB0);
  }

  sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
  v12 = sub_100047F28();
LABEL_7:
  sub_1000065A8(0, &qword_100AD4290, NSTextList_ptr);
  v13 = v12;

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setTextLists:isa];

  swift_beginAccess();
  v15 = *a7;
  v16 = v13;
  if (v15 == 1)
  {
    v17 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v17 setParagraphStyle:v13];
    [v17 setFirstLineHeadIndent:14.1];
    [v17 setHeadIndent:14.1];
    [v17 mutableCopy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
    if (swift_dynamicCast())
    {

      v16 = v18;
    }

    else
    {
      v16 = v13;
    }
  }

  [a8 addAttribute:NSParagraphStyleAttributeName value:v16 range:{a2, a3}];
}

id sub_1007C4900(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000082B4(a1, v10, &unk_100AD6DD0, &qword_1009437C0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100004F84(v10, &unk_100AD6DD0, &qword_1009437C0);
    if (qword_100AD0AB8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000617C(v15, qword_100AF1CF0);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v20 = _swift_stdlib_bridgeErrorToNSError();
        v21 = v20;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      *(v18 + 4) = v20;
      *v19 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to load URL for pasting: %@", v18, 0xCu);
      sub_100004F84(v19, &unk_100AD4BB0, &unk_100941E50);
    }

    return [a3 setNoResult];
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    URL.formatted()();
    sub_1000F24EC(&unk_100AD9200, &qword_1009488B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940050;
    *(inited + 32) = NSFontAttributeName;
    v23 = NSFontAttributeName;
    v34 = a3;
    v24 = sub_100047788(UIFontTextStyleBody, &off_100A5AE98, 0);
    sub_100047D60(&unk_100A5AEB8);
    v25 = sub_1000065A8(0, &qword_100AD2A78, UIFont_ptr);
    *(inited + 40) = v24;
    *(inited + 64) = v25;
    *(inited + 72) = NSForegroundColorAttributeName;
    *(inited + 104) = sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
    *(inited + 80) = a4;
    v26 = NSForegroundColorAttributeName;
    v27 = a4;
    sub_10007BDBC(inited);
    swift_setDeallocating();
    sub_1000F24EC(&unk_100AD9210, &qword_10094C510);
    swift_arrayDestroy();
    v28 = objc_allocWithZone(NSAttributedString);
    v29 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v31 = [v28 initWithString:v29 attributes:isa];

    [v34 setAttributedStringResult:v31];
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_1007C4E50(uint64_t a1, uint64_t a2)
{
  v25 = &type metadata for Int;
  *&v24 = 0;
  sub_10002432C(&v24, v23);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = a2;
  sub_100048100(v23, NSUnderlineStyleAttributeName, isUniquelyReferenced_nonNull_native);
  v4 = v26;
  v25 = &type metadata for Int;
  *&v24 = 0;
  sub_10002432C(&v24, v23);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_100048100(v23, NSStrikethroughStyleAttributeName, v5);
  v6 = v4;
  v26 = v4;
  v7 = *(v4 + 16);
  v8 = NSFontAttributeName;
  v10 = v8;
  if (v7 && (v11 = sub_100051964(v8, v9), (v12 & 1) != 0) && (sub_10000BA20(*(v6 + 56) + 32 * v11, &v24), v13 = sub_1000065A8(0, &qword_100AD2A78, UIFont_ptr), (swift_dynamicCast() & 1) != 0))
  {
    v14 = v23[0];
    v15 = [v23[0] fontDescriptor];
    v16 = [v14 fontDescriptor];
    v17 = [v16 symbolicTraits];

    v18 = [v15 fontDescriptorWithSymbolicTraits:v17 & 0xFFFFFFFC];
    if (v18)
    {
      v19 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];

      v14 = v19;
    }

    v25 = v13;
    *&v24 = v14;
    sub_10002432C(&v24, v23);
    v20 = v26;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_100048100(v23, v10, v21);

    v26 = v20;
  }

  else
  {
    sub_100080694(&v24);

    sub_100004F84(&v24, &qword_100AD13D0, &unk_100942DB0);
  }

  sub_100080694(&v24);
  sub_100004F84(&v24, &qword_100AD13D0, &unk_100942DB0);
  sub_100080694(&v24);
  sub_100004F84(&v24, &qword_100AD13D0, &unk_100942DB0);
  return v26;
}

Class sub_1007C5118(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = a2;
  v6 = v4();

  if (v6)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

void sub_1007C5234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (!*(a1 + 16) || (v7 = sub_100051964(NSParagraphStyleAttributeName, a2), (v8 & 1) == 0) || (sub_10000BA20(*(a1 + 56) + 32 * v7, v19), sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr), (swift_dynamicCast() & 1) == 0))
  {
    v15 = 0;
    goto LABEL_8;
  }

  [v18 firstLineHeadIndent];
  *v10.i64 = *v9.i64 - trunc(*v9.i64);
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v17 = vnegq_f64(v11);
  v12 = *vbslq_s8(v17, v10, v9).i64 + -0.1;
  [v18 headIndent];
  v16 = v13;

  if (fabs(v12) < 0.01)
  {
    *v14.i64 = *v16.i64 - trunc(*v16.i64);
    if (fabs(*vbslq_s8(v17, v14, v16).i64 + -0.1) < 0.01)
    {
      v15 = 1;
LABEL_8:
      *a5 = v15;
    }
  }
}

uint64_t sub_1007C53C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(a1 + 16) && (v7 = sub_100051964(NSStrikethroughStyleAttributeName, a2), (v8 & 1) != 0))
  {
    sub_10000BA20(*(a1 + 56) + 32 * v7, v10);
    return sub_100004F84(v10, &qword_100AD13D0, &unk_100942DB0);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    result = sub_100004F84(v10, &qword_100AD13D0, &unk_100942DB0);
    *a5 = 0;
  }

  return result;
}

void sub_1007C54BC(void *a1)
{
  if ([a1 propertyList])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_100004F84(v7, &qword_100AD13D0, &unk_100942DB0);
    return;
  }

  if (swift_dynamicCast())
  {
    if (v4 == 2)
    {
      if (qword_100ACF920 != -1)
      {
        swift_once();
      }

      v2 = [objc_allocWithZone(NSTextList) initWithMarkerFormat:qword_100B2F2E0 options:0 startingItemNumber:1];
      if (v2)
      {
LABEL_13:
        v3 = v2;
        sub_1007C5638(v3);
      }
    }

    else
    {
      if (v4 == 1)
      {
        v1 = &NSTextListMarkerHyphen;
      }

      else
      {
        if (v4)
        {
          return;
        }

        v1 = &NSTextListMarkerDisc;
      }

      v2 = [objc_allocWithZone(NSTextList) initWithMarkerFormat:*v1 options:0];
      if (v2)
      {
        goto LABEL_13;
      }
    }
  }
}

id sub_1007C5638(void *a1)
{
  v2 = v1;
  result = [v1 allowsEditingTextAttributes];
  if (result)
  {
    v131 = sub_100364568(_swiftEmptyArrayStorage);
    v130 = 1;
    v5 = &selRef_setRegion_;
    [v1 selectedRange];
    v118 = a1;
    v119 = v1;
    if (v6 >= 1)
    {
      result = [v1 attributedText];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v7 = result;
      v8 = [v1 selectedRange];
      v10 = v9;
      v11 = swift_allocObject();
      v11[2] = &v131;
      v11[3] = a1;
      v11[4] = &v130;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1007C6D4C;
      *(v12 + 24) = v11;
      v124 = sub_10007E150;
      v125 = v12;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v123 = sub_10007E0A4;
      *(&v123 + 1) = &unk_100A7E058;
      v13 = _Block_copy(&aBlock);
      v14 = a1;
      a1 = v125;
      v114 = v14;

      v116 = NSParagraphStyleAttributeName;
      [v7 enumerateAttribute:NSParagraphStyleAttributeName inRange:v8 options:v10 usingBlock:{0, v13}];

      _Block_release(v13);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v117 = v11;
        v16 = v131;
        v17 = v131 + 64;
        v18 = 1 << *(v131 + 32);
        v19 = -1;
        if (v18 < 64)
        {
          v19 = ~(-1 << v18);
        }

        v20 = v19 & *(v131 + 64);
        a1 = ((v18 + 63) >> 6);

        v21 = 0;
LABEL_9:
        if (v20)
        {
          goto LABEL_14;
        }

LABEL_10:
        while (1)
        {
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v24 >= a1)
          {

            v33 = sub_1007C6D4C;
            v5 = &selRef_setRegion_;
            a1 = v118;
            goto LABEL_21;
          }

          v20 = *(v17 + 8 * v24);
          ++v21;
          if (v20)
          {
            v21 = v24;
LABEL_14:
            while (1)
            {
              v25 = __clz(__rbit64(v20));
              v20 &= v20 - 1;
              v26 = v25 | (v21 << 6);
              v27 = *(*(v16 + 48) + 8 * v26);
              v28 = (*(v16 + 56) + 16 * v26);
              v29 = v28[1];
              v120 = *v28;
              isEscapingClosureAtFileLocation = v27;
              [isEscapingClosureAtFileLocation mutableCopy];
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
              sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
              if (swift_dynamicCast())
              {
                break;
              }

              if (!v20)
              {
                goto LABEL_10;
              }
            }

            v30 = v127;
            if ((v130 & 1) == 0)
            {
              sub_1000F24EC(&unk_100AD4780, &unk_100941070);
              v31 = swift_allocObject();
              *(v31 + 16) = xmmword_100941D50;
              *(v31 + 32) = v114;
              v32 = v114;
            }

            sub_1000065A8(0, &qword_100AD4290, NSTextList_ptr);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v30 setTextLists:isa];

            v23 = [v119 textStorage];
            [v23 addAttribute:NSParagraphStyleAttributeName value:v30 range:{v120, v29}];

            v2 = v119;
            goto LABEL_9;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v33 = 0;
    v117 = 0;
LABEL_21:
    [v2 v5[418]];
    if (v34 >= 1)
    {
      v35 = [v2 typingAttributes];
      type metadata accessor for Key(0);
      sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
      v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v36 + 16) && (v38 = sub_100051964(NSParagraphStyleAttributeName, v37), (v39 & 1) != 0))
      {
        sub_10000BA20(*(v36 + 56) + 32 * v38, &aBlock);

        sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
        if (swift_dynamicCast())
        {
          v121 = v33;
          v40 = v127;
          [v127 mutableCopy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          v41 = sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
          if (swift_dynamicCast())
          {
            v42 = v127;
            if ((v130 & 1) == 0)
            {
              sub_1000F24EC(&unk_100AD4780, &unk_100941070);
              v94 = swift_allocObject();
              *(v94 + 16) = xmmword_100941D50;
              *(v94 + 32) = v118;
              v95 = v118;
            }

            sub_1000065A8(0, &qword_100AD4290, NSTextList_ptr);
            v96 = Array._bridgeToObjectiveC()().super.isa;

            [v42 setTextLists:v96];

            *(&v123 + 1) = v41;
            *&aBlock = v42;
            v48 = v42;
            v97 = [v2 typingAttributes];
            v98 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v129 = v98;
            if (*(&v123 + 1))
            {
              sub_10002432C(&aBlock, &v127);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v126 = v98;
              sub_100048100(&v127, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
              v129 = v126;
            }

            else
            {
              sub_100004F84(&aBlock, &qword_100AD13D0, &unk_100942DB0);
              sub_100080694(&v127);
              sub_100004F84(&v127, &qword_100AD13D0, &unk_100942DB0);
            }

            v100 = Dictionary._bridgeToObjectiveC()().super.isa;

            [v2 setTypingAttributes:v100];

            sub_1007C6BD8(v48);
            goto LABEL_43;
          }

          v33 = v121;
          if (v130)
          {
            goto LABEL_72;
          }

LABEL_30:
          v121 = v33;
          v43 = sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
          v44 = sub_100047F28();
          sub_1000F24EC(&unk_100AD4780, &unk_100941070);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_100941D50;
          *(v45 + 32) = v118;
          sub_1000065A8(0, &qword_100AD4290, NSTextList_ptr);
          v46 = v118;
          v47 = Array._bridgeToObjectiveC()().super.isa;

          [v44 setTextLists:v47];

          *(&v123 + 1) = v43;
          *&aBlock = v44;
          v48 = v44;
          v49 = [v2 typingAttributes];
          v50 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v129 = v50;
          if (*(&v123 + 1))
          {
            sub_10002432C(&aBlock, &v127);
            v51 = swift_isUniquelyReferenced_nonNull_native();
            v126 = v50;
            sub_100048100(&v127, NSParagraphStyleAttributeName, v51);
            v129 = v126;
          }

          else
          {
            sub_100004F84(&aBlock, &qword_100AD13D0, &unk_100942DB0);
            sub_100080694(&v127);
            sub_100004F84(&v127, &qword_100AD13D0, &unk_100942DB0);
          }

          v66 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v2 setTypingAttributes:v66];

LABEL_43:
          v33 = v121;
          goto LABEL_72;
        }
      }

      else
      {
      }

      if (v130)
      {
LABEL_72:
        v92 = [v2 v5[418]];
        sub_1007C01F4(v92, v93);
        sub_1007BE64C();

        return sub_100004DF8(v33, v117);
      }

      goto LABEL_30;
    }

    v52 = [v2 v5[418]];
    v53 = [v2 textStorage];
    v54 = [v53 length];

    if (v54 < 1 || (v55 = [v2 textStorage], v56 = objc_msgSend(v55, "length"), v55, v52 >= v56))
    {
      v58 = NSParagraphStyleAttributeName;
      v60 = [v2 typingAttributes];
      type metadata accessor for Key(0);
      sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
      v61 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v61 + 16) || (v63 = sub_100051964(NSParagraphStyleAttributeName, v62), (v64 & 1) == 0))
      {

        v116 = 0;
        v5 = &selRef_setRegion_;
LABEL_68:
        v82 = sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
        v83 = sub_100047F28();
        sub_1000F24EC(&unk_100AD4780, &unk_100941070);
        v84 = swift_allocObject();
        *(v84 + 16) = xmmword_100941D50;
        *(v84 + 32) = a1;
        sub_1000065A8(0, &qword_100AD4290, NSTextList_ptr);
        v85 = a1;
        v86 = Array._bridgeToObjectiveC()().super.isa;

        [v83 setTextLists:v86];

        *(&v123 + 1) = v82;
        *&aBlock = v83;
        v87 = v83;
        v88 = [v2 typingAttributes];
        type metadata accessor for Key(0);
        sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
        v89 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v129 = v89;
        if (*(&v123 + 1))
        {
          sub_10002432C(&aBlock, &v127);
          v90 = swift_isUniquelyReferenced_nonNull_native();
          v126 = v89;
          sub_100048100(&v127, v58, v90);
          v129 = v126;
        }

        else
        {
          sub_100004F84(&aBlock, &qword_100AD13D0, &unk_100942DB0);
          sub_100080694(&v127);
          sub_100004F84(&v127, &qword_100AD13D0, &unk_100942DB0);
        }

        v91 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v2 setTypingAttributes:v91];

        sub_1007C6BD8(v87);
        goto LABEL_72;
      }

      sub_10000BA20(*(v61 + 56) + 32 * v63, &aBlock);

      sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
      v5 = &selRef_setRegion_;
      if (swift_dynamicCast())
      {
        v65 = v127;
        goto LABEL_50;
      }
    }

    else
    {
      v57 = [v2 textStorage];
      v58 = NSParagraphStyleAttributeName;
      v59 = [v57 attribute:NSParagraphStyleAttributeName atIndex:v52 effectiveRange:0];

      if (v59)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v127 = 0u;
        v128 = 0u;
      }

      v5 = &selRef_setRegion_;
      aBlock = v127;
      v123 = v128;
      if (*(&v128 + 1))
      {
        sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
        if (swift_dynamicCast())
        {
          v65 = v129;
LABEL_50:
          v67 = v65;
          [v67 mutableCopy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          v68 = sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
          v69 = swift_dynamicCast();

          v116 = v67;
          if (v69)
          {
            v110 = v127;
            v70 = [v67 textLists];
            v109 = sub_1000065A8(0, &qword_100AD4290, NSTextList_ptr);
            isEscapingClosureAtFileLocation = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v120 = v33;
            v111 = v68;
            v112 = v58;
            if (!(isEscapingClosureAtFileLocation >> 62))
            {
              v113 = isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8;
              v115 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_53;
            }

LABEL_90:
            v113 = isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8;
            v115 = _CocoaArrayWrapper.endIndex.getter();
LABEL_53:
            v71 = 0;
            while (1)
            {
              if (v115 == v71)
              {

                sub_1000F24EC(&unk_100AD4780, &unk_100941070);
                v101 = swift_allocObject();
                *(v101 + 16) = xmmword_100941D50;
                *(v101 + 32) = a1;
                v102 = a1;
                goto LABEL_82;
              }

              if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
              {
                v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v71 >= *(v113 + 16))
                {
                  goto LABEL_89;
                }

                v72 = *(isEscapingClosureAtFileLocation + 8 * v71 + 32);
              }

              v73 = v72;
              if (__OFADD__(v71, 1))
              {
                goto LABEL_88;
              }

              v74 = [v72 markerFormat];
              v75 = [a1 markerFormat];
              v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v78 = v77;
              if (v76 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v78 == v79)
              {
                break;
              }

              v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

              ++v71;
              a1 = v118;
              if (v81)
              {
                goto LABEL_81;
              }
            }

LABEL_81:

LABEL_82:
            v103 = Array._bridgeToObjectiveC()().super.isa;

            [v110 setTextLists:v103];

            *(&v123 + 1) = v111;
            *&aBlock = v110;
            v104 = v110;
            v2 = v119;
            v105 = [v119 typingAttributes];
            type metadata accessor for Key(0);
            sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
            v106 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v129 = v106;
            v5 = &selRef_setRegion_;
            v33 = v120;
            if (*(&v123 + 1))
            {
              sub_10002432C(&aBlock, &v127);
              v107 = swift_isUniquelyReferenced_nonNull_native();
              v126 = v106;
              sub_100048100(&v127, v112, v107);
              v129 = v126;
            }

            else
            {
              sub_100004F84(&aBlock, &qword_100AD13D0, &unk_100942DB0);
              sub_100080694(&v127);
              sub_100004F84(&v127, &qword_100AD13D0, &unk_100942DB0);
            }

            v108 = Dictionary._bridgeToObjectiveC()().super.isa;

            [v119 setTypingAttributes:v108];

            sub_1007C6BD8(v104);
            goto LABEL_72;
          }

          goto LABEL_68;
        }
      }

      else
      {
        sub_100004F84(&aBlock, &qword_100AD13D0, &unk_100942DB0);
      }
    }

    v116 = 0;
    goto LABEL_68;
  }

  return result;
}

double sub_1007C68F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, _BYTE *a7)
{
  sub_1000082B4(a1, v33, &qword_100AD13D0, &unk_100942DB0);
  if (v33[3])
  {
    sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
    if (swift_dynamicCast())
    {
      v27 = a7;
      v12 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33[0] = *a5;
      *a5 = 0x8000000000000000;
      sub_1002030E0(a2, a3, v12, isUniquelyReferenced_nonNull_native);

      *a5 = v33[0];

      v28 = v12;
      v14 = [v12 textLists];
      sub_1000065A8(0, &qword_100AD4290, NSTextList_ptr);
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v15 >> 62)
      {
LABEL_25:
        v29 = v15 & 0xFFFFFFFFFFFFFF8;
        v30 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v29 = v15 & 0xFFFFFFFFFFFFFF8;
        v30 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = 0;
      while (1)
      {
        if (v30 == v16)
        {

          *v27 = 0;
          return result;
        }

        if ((v15 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *(v29 + 16))
          {
            goto LABEL_24;
          }

          v17 = *(v15 + 8 * v16 + 32);
        }

        v18 = v17;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v19 = [v17 markerFormat];
        v20 = [a6 markerFormat];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
        if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
        {
          break;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v16;
        if (v26)
        {
          goto LABEL_21;
        }
      }

LABEL_21:
    }
  }

  else
  {
    sub_100004F84(v33, &qword_100AD13D0, &unk_100942DB0);
  }

  return result;
}

void sub_1007C6BD8(uint64_t a1)
{
  v3 = [v1 textStorage];
  v4 = [v3 length];

  if (v4 >= 1)
  {
    v5 = [v1 textStorage];
    v6 = [v5 string];
    if (v6)
    {
      v7 = v6;

      v8 = [v1 selectedRange];
      v10 = [v7 paragraphRangeForRange:{v8, v9}];
      v12 = v11;

      if (v12 >= 1)
      {
        v13 = [v1 textStorage];
        [v13 addAttribute:NSParagraphStyleAttributeName value:a1 range:{v10, v12}];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

BOOL sub_1007C6D58(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = sub_100051964(NSParagraphStyleAttributeName, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_10000BA20(*(a1 + 56) + 32 * v3, v16);
  sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  [v15 firstLineHeadIndent];
  *v6.i64 = *v5.i64 - trunc(*v5.i64);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v14 = vnegq_f64(v7);
  v8 = *vbslq_s8(v14, v6, v5).i64 + -0.1;
  [v15 headIndent];
  v13 = v9;

  *v10.i64 = *v13.i64 - trunc(*v13.i64);
  v11 = fabs(v8) < 0.01;
  return fabs(*vbslq_s8(v14, v10, v13).i64 + -0.1) < 0.01 && v11;
}

void *sub_1007C6E84(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = sub_100051964(NSForegroundColorAttributeName, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_10000BA20(*(a1 + 56) + 32 * v3, v12);
  sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = v11;
  if (qword_100AD0AC0 != -1)
  {
    swift_once();
  }

  v6 = qword_100B31098;
  v7 = static NSObject.== infix(_:_:)();

  if (v7 & 1) != 0 || (v8 = [objc_opt_self() blackColor], v9 = static NSObject.== infix(_:_:)(), v8, (v9))
  {

    return 0;
  }

  return v5;
}

void sub_1007C6FC4()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = v23 - v8;
  v10 = [v0 textStorage];
  v11 = [v10 string];
  if (v11)
  {
    v12 = v11;

    v13 = [v1 selectedRange];
    v15 = [v12 lineRangeForRange:{v13, v14}];
    v17 = [v12 substringWithRange:{v15, v16}];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    static CharacterSet.newlines.getter();
    CharacterSet.init(charactersIn:)();
    LOBYTE(v17) = CharacterSet.isSuperset(of:)();
    v21 = *(v3 + 8);
    v21(v5, v2);
    v21(v9, v2);
    if (v17)
    {
    }

    else
    {
      v23[0] = v18;
      v23[1] = v20;
      static CharacterSet.whitespaces.getter();
      sub_1000777B4();
      StringProtocol.trimmingCharacters(in:)();
      v21(v9, v2);

      v22 = String.count.getter();

      if (v22)
      {
        sub_1007BE64C();
LABEL_7:

        return;
      }
    }

    sub_1007BBF88(0);
    goto LABEL_7;
  }

  __break(1u);
}