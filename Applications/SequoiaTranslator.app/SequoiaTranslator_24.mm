uint64_t sub_100299094@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TranslationCardView(0);
  sub_10001F620(v1 + *(v10 + 32), v9, &qword_1003B23E0, &qword_1002D6770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100023BD4(v9, a1, &qword_1003AC848, &qword_1002D66A0);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

id sub_10029927C()
{
  sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v19 + 72);

  dispatch thunk of PersistedTranslation.displaySourceText.getter();

  v1 = objc_allocWithZone(NSAttributedString);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithString:v2];

  v4 = [v3 length];
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v19 + 72);

  dispatch thunk of PersistedTranslation.displayText.getter();

  v6 = objc_allocWithZone(NSAttributedString);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithString:v7];

  v9 = [v8 length];
  v10 = &UIFontTextStyleTitle1;
  if (v9 <= v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = v9;
  }

  if (v11 >= 50)
  {
    v10 = &UIFontTextStyleTitle3;
  }

  v12 = *v10;
  v13 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
  v14 = objc_opt_self();
  [v13 pointSize];
  v15 = [v14 systemFontOfSize:? weight:?];
  v16 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:v12];
  v17 = [v16 scaledFontForFont:v15 maximumPointSize:1.79769313e308];

  return v17;
}

uint64_t sub_100299598@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v106 = type metadata accessor for TranslationCardView(0);
  v94 = *(v106 - 1);
  __chkstk_darwin(v106);
  v101 = v2;
  v102 = v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005AD4(&qword_1003BC0D8, &qword_1002EDF38);
  __chkstk_darwin(v3);
  v5 = v88 - v4;
  v90 = sub_100005AD4(&qword_1003BC0E0, &qword_1002EDF40);
  __chkstk_darwin(v90);
  v7 = v88 - v6;
  v8 = sub_100005AD4(&qword_1003BC0E8, &qword_1002EDF48);
  __chkstk_darwin(v8);
  v10 = v88 - v9;
  v11 = sub_100005AD4(&qword_1003BC0F0, &qword_1002EDF50);
  v12 = __chkstk_darwin(v11 - 8);
  v104 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = v88 - v14;
  v91 = sub_100005AD4(&qword_1003BC0F8, &qword_1002EDF58);
  __chkstk_darwin(v91);
  v93 = v88 - v15;
  v105 = sub_100005AD4(&qword_1003BC100, &qword_1002EDF60);
  __chkstk_darwin(v105);
  v17 = v88 - v16;
  v18 = sub_100005AD4(&qword_1003BC108, &qword_1002EDF68);
  v96 = *(v18 - 8);
  v97 = v18;
  __chkstk_darwin(v18);
  v95 = v88 - v19;
  v20 = sub_100005AD4(&qword_1003BC110, &qword_1002EDF70);
  v99 = *(v20 - 8);
  v100 = v20;
  __chkstk_darwin(v20);
  v98 = v88 - v21;
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v22 = &v10[*(sub_100005AD4(&qword_1003BC118, &qword_1002EDF78) + 44)];
  *v22 = sub_10029A33C();
  v23 = sub_100005AD4(&qword_1003BC120, &qword_1002EDF80);
  sub_10029A7C4(v1, v22 + *(v23 + 44));
  LOBYTE(v22) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v10[*(sub_100005AD4(&qword_1003BC128, &qword_1002EDF88) + 36)];
  *v32 = v22;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  LOBYTE(v22) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = &v10[*(sub_100005AD4(&qword_1003BC130, &qword_1002EDF90) + 36)];
  *v41 = v22;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  LOBYTE(v22) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v42 = &v10[*(v8 + 36)];
  *v42 = v22;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  v88[2] = sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  v89 = v1;
  Bindable.wrappedValue.getter();
  v47 = v109;
  swift_getKeyPath();
  v109 = v47;
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = *(v47 + 243);

  if (v48 == 1)
  {
    v49 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v50 = Color.init(uiColor:)();
    v51 = static Edge.Set.all.getter();
    sub_10001F620(v10, v7, &qword_1003BC0E8, &qword_1002EDF48);
    v52 = &v7[*(sub_100005AD4(&qword_1003BC148, &qword_1002EDFC0) + 36)];
    *v52 = v50;
    v52[8] = v51;
    v88[1] = v8;
    v53 = &v7[*(v90 + 36)];
    v54 = *(type metadata accessor for RoundedRectangle() + 20);
    v55 = enum case for RoundedCornerStyle.continuous(_:);
    v56 = type metadata accessor for RoundedCornerStyle();
    (*(*(v56 - 8) + 104))(&v53[v54], v55, v56);
    __asm { FMOV            V0.2D, #10.0 }

    *v53 = _Q0;
    *&v53[*(sub_100005AD4(&qword_1003AC978, &qword_1002D68E8) + 36)] = 256;
    sub_10001F620(v7, v5, &qword_1003BC0E0, &qword_1002EDF40);
    swift_storeEnumTagMultiPayload();
    sub_1002A1938();
    sub_1002A1AA8();
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v7, &qword_1003BC0E0, &qword_1002EDF40);
  }

  else
  {
    sub_10001F620(v10, v5, &qword_1003BC0E8, &qword_1002EDF48);
    swift_storeEnumTagMultiPayload();
    sub_1002A1938();
    sub_1002A1AA8();
    _ConditionalContent<>.init(storage:)();
  }

  sub_100009EBC(v10, &qword_1003BC0E8, &qword_1002EDF48);
  v62 = v92;
  sub_100023BD4(v104, v92, &qword_1003BC0F0, &qword_1002EDF50);
  v63 = v89;
  Bindable.wrappedValue.getter();
  v64 = v109;
  swift_getKeyPath();
  v109 = v64;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v65 = *(v64 + 241);

  v66 = v93;
  sub_100023BD4(v62, v93, &qword_1003BC0F0, &qword_1002EDF50);
  *(v66 + *(v91 + 36)) = v65;
  v67 = v102;
  sub_1002A244C(v63, v102, type metadata accessor for TranslationCardView);
  v68 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v69 = swift_allocObject();
  sub_1002A28E0(v67, v69 + v68, type metadata accessor for TranslationCardView);
  sub_100023BD4(v66, v17, &qword_1003BC0F8, &qword_1002EDF58);
  v70 = &v17[*(v105 + 36)];
  *v70 = sub_1002A1C84;
  v70[1] = v69;
  v70[2] = 0;
  v70[3] = 0;
  v71 = *(v63 + v106[7]);
  if (v71)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v72 = v71;
    static Published.subscript.getter();

    sub_1002A244C(v63, v67, type metadata accessor for TranslationCardView);
    v73 = swift_allocObject();
    sub_1002A28E0(v67, v73 + v68, type metadata accessor for TranslationCardView);
    v74 = sub_1002A1D00();
    v75 = v95;
    View.onChange<A>(of:initial:_:)();

    sub_100009EBC(v17, &qword_1003BC100, &qword_1002EDF60);
    if (*(v63 + v106[9]))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v107[0] = v109;
      sub_1002A244C(v63, v67, type metadata accessor for TranslationCardView);
      v76 = swift_allocObject();
      sub_1002A28E0(v67, v76 + v68, type metadata accessor for TranslationCardView);
      v109 = v105;
      v110 = &type metadata for Bool;
      v111 = v74;
      v112 = &protocol witness table for Bool;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v78 = v97;
      v79 = v98;
      View.onChange<A>(of:initial:_:)();

      (*(v96 + 8))(v75, v78);
      v80 = v63 + v106[10];
      v81 = *v80;
      v82 = *(v80 + 8);
      v107[0] = v81;
      v108 = v82;
      sub_100005AD4(&qword_1003AC8F8, &qword_1002D6760);
      State.projectedValue.getter();
      type metadata accessor for GenderDisambiguationLearnMoreView();
      v109 = v78;
      v110 = &type metadata for Bool;
      v111 = OpaqueTypeConformance2;
      v112 = &protocol witness table for Bool;
      swift_getOpaqueTypeConformance2();
      sub_1002A2CF0(&qword_1003AC918, &type metadata accessor for GenderDisambiguationLearnMoreView, &protocol conformance descriptor for GenderDisambiguationLearnMoreView);
      v83 = v100;
      View.formSheet<A>(isPresented:content:)();

      return (*(v99 + 8))(v79, v83);
    }

    type metadata accessor for SceneContext(0);
    v85 = &qword_1003AC860;
    v86 = type metadata accessor for SceneContext;
    v87 = &unk_1002E8C28;
  }

  else
  {
    type metadata accessor for SharedTranslationOptions(0);
    v85 = &qword_1003AE918;
    v86 = type metadata accessor for SharedTranslationOptions;
    v87 = &unk_1002E997C;
  }

  sub_1002A2CF0(v85, v86, v87);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10029A33C()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005AD4(&qword_1003AC998, &qword_1002D6950);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_100005AD4(&qword_1003AC848, &qword_1002D66A0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  sub_100299094(&v23 - v14);
  (*(v1 + 104))(v13, enum case for UserInterfaceSizeClass.regular(_:), v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_10001F620(v15, v6, &qword_1003AC848, &qword_1002D66A0);
  sub_10001F620(v13, &v6[v16], &qword_1003AC848, &qword_1002D66A0);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
    sub_100009EBC(v15, &qword_1003AC848, &qword_1002D66A0);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_100009EBC(v6, &qword_1003AC848, &qword_1002D66A0);
LABEL_9:
      v24 = static VerticalAlignment.top.getter();
      v25 = 0;
      v26 = 1;
      sub_10005DC8C();
      return AnyLayout.init<A>(_:)();
    }

    goto LABEL_6;
  }

  sub_10001F620(v6, v10, &qword_1003AC848, &qword_1002D66A0);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
    sub_100009EBC(v15, &qword_1003AC848, &qword_1002D66A0);
    (*(v1 + 8))(v10, v0);
LABEL_6:
    sub_100009EBC(v6, &qword_1003AC998, &qword_1002D6950);
    goto LABEL_7;
  }

  v18 = &v6[v16];
  v19 = v23;
  (*(v1 + 32))(v23, v18, v0);
  sub_1002A2CF0(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v1 + 8);
  v21(v19, v0);
  sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
  sub_100009EBC(v15, &qword_1003AC848, &qword_1002D66A0);
  v21(v10, v0);
  sub_100009EBC(v6, &qword_1003AC848, &qword_1002D66A0);
  if (v20)
  {
    goto LABEL_9;
  }

LABEL_7:
  v24 = static HorizontalAlignment.leading.getter();
  v25 = 0;
  v26 = 1;
  sub_10005DC38();
  return AnyLayout.init<A>(_:)();
}

uint64_t sub_10029A7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v121 = sub_100005AD4(&qword_1003BC190, &unk_1002EE0C0);
  v3 = __chkstk_darwin(v121);
  v124 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v122 = (&v97 - v5);
  v6 = type metadata accessor for UserInterfaceSizeClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v100 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005AD4(&qword_1003AC998, &qword_1002D6950);
  v10 = __chkstk_darwin(v9);
  v117 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v97 - v12;
  v14 = sub_100005AD4(&qword_1003AC848, &qword_1002D66A0);
  v15 = __chkstk_darwin(v14 - 8);
  v114 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v126 = &v97 - v18;
  v19 = __chkstk_darwin(v17);
  v127 = &v97 - v20;
  v21 = __chkstk_darwin(v19);
  v106 = &v97 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v97 - v24;
  __chkstk_darwin(v23);
  v27 = &v97 - v26;
  v110 = type metadata accessor for Divider();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v29 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100005AD4(&qword_1003BC198, &qword_1002EE0D0);
  __chkstk_darwin(v107);
  v125 = &v97 - v30;
  v113 = sub_100005AD4(&qword_1003BC1A0, &qword_1002EE0D8);
  v31 = __chkstk_darwin(v113);
  v120 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v112 = &v97 - v34;
  __chkstk_darwin(v33);
  v118 = &v97 - v35;
  v36 = sub_100005AD4(&qword_1003BC1A8, &qword_1002EE0E0);
  v37 = __chkstk_darwin(v36 - 8);
  v119 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v97 - v39;
  *v40 = static HorizontalAlignment.leading.getter();
  *(v40 + 1) = 0x4010000000000000;
  v40[16] = 0;
  v41 = *(sub_100005AD4(&qword_1003BC1B0, &qword_1002EE0E8) + 44);
  v115 = v40;
  sub_10029B598(a1, &v40[v41]);
  v108 = v29;
  Divider.init()();
  LODWORD(v42) = static Edge.Set.vertical.getter();
  v128 = a1;
  sub_100299094(v27);
  v43 = v7[13];
  v101 = enum case for UserInterfaceSizeClass.compact(_:);
  v104 = v43;
  v43(v25);
  v44 = v7[7];
  v103 = v7 + 7;
  v102 = v44;
  v44(v25, 0, 1, v6);
  v111 = v9;
  v45 = *(v9 + 48);
  sub_10001F620(v27, v13, &qword_1003AC848, &qword_1002D66A0);
  sub_10001F620(v25, &v13[v45], &qword_1003AC848, &qword_1002D66A0);
  v116 = v7;
  v46 = v7[6];
  v47 = v46(v13, 1, v6);
  v105 = v46;
  if (v47 == 1)
  {
    sub_100009EBC(v25, &qword_1003AC848, &qword_1002D66A0);
    sub_100009EBC(v27, &qword_1003AC848, &qword_1002D66A0);
    if (v46(&v13[v45], 1, v6) == 1)
    {
      sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v99 = v27;
  sub_10001F620(v13, v106, &qword_1003AC848, &qword_1002D66A0);
  if (v46(&v13[v45], 1, v6) == 1)
  {
    sub_100009EBC(v25, &qword_1003AC848, &qword_1002D66A0);
    sub_100009EBC(v99, &qword_1003AC848, &qword_1002D66A0);
    (v116[1])(v106, v6);
LABEL_6:
    sub_100009EBC(v13, &qword_1003AC998, &qword_1002D6950);
    goto LABEL_8;
  }

  v48 = v116;
  v49 = v116[4];
  v98 = v42;
  v42 = v100;
  v49(v100, &v13[v45], v6);
  sub_1002A2CF0(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v50 = v106;
  v97 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = v48[1];
  v52 = v42;
  LOBYTE(v42) = v98;
  v51(v52, v6);
  sub_100009EBC(v25, &qword_1003AC848, &qword_1002D66A0);
  sub_100009EBC(v99, &qword_1003AC848, &qword_1002D66A0);
  v51(v50, v6);
  sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
LABEL_8:
  v53 = v117;
  v54 = v125;
  EdgeInsets.init(_all:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  (*(v109 + 32))(v54, v108, v110);
  v63 = v54 + *(v107 + 36);
  *v63 = v42;
  *(v63 + 8) = v56;
  *(v63 + 16) = v58;
  *(v63 + 24) = v60;
  *(v63 + 32) = v62;
  *(v63 + 40) = 0;
  LODWORD(v117) = static Edge.Set.horizontal.getter();
  v64 = v127;
  sub_100299094(v127);
  v65 = v126;
  v104(v126, v101, v6);
  v102(v65, 0, 1, v6);
  v66 = *(v111 + 48);
  sub_10001F620(v64, v53, &qword_1003AC848, &qword_1002D66A0);
  sub_10001F620(v65, v53 + v66, &qword_1003AC848, &qword_1002D66A0);
  v67 = v105;
  v68 = v105(v53, 1, v6);
  v69 = v114;
  if (v68 != 1)
  {
    sub_10001F620(v53, v114, &qword_1003AC848, &qword_1002D66A0);
    if (v67(v53 + v66, 1, v6) != 1)
    {
      v70 = v116;
      v71 = v100;
      (v116[4])(v100, v53 + v66, v6);
      sub_1002A2CF0(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v72 = v70[1];
      v72(v71, v6);
      sub_100009EBC(v126, &qword_1003AC848, &qword_1002D66A0);
      sub_100009EBC(v127, &qword_1003AC848, &qword_1002D66A0);
      v72(v69, v6);
      v54 = v125;
      sub_100009EBC(v53, &qword_1003AC848, &qword_1002D66A0);
      goto LABEL_15;
    }

    sub_100009EBC(v126, &qword_1003AC848, &qword_1002D66A0);
    sub_100009EBC(v127, &qword_1003AC848, &qword_1002D66A0);
    (v116[1])(v69, v6);
    goto LABEL_13;
  }

  sub_100009EBC(v65, &qword_1003AC848, &qword_1002D66A0);
  sub_100009EBC(v64, &qword_1003AC848, &qword_1002D66A0);
  if (v67(v53 + v66, 1, v6) != 1)
  {
LABEL_13:
    sub_100009EBC(v53, &qword_1003AC998, &qword_1002D6950);
    goto LABEL_15;
  }

  sub_100009EBC(v53, &qword_1003AC848, &qword_1002D66A0);
LABEL_15:
  EdgeInsets.init(_all:)();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v112;
  sub_100023BD4(v54, v112, &qword_1003BC198, &qword_1002EE0D0);
  v82 = v81 + *(v113 + 36);
  *v82 = v117;
  *(v82 + 8) = v74;
  *(v82 + 16) = v76;
  *(v82 + 24) = v78;
  *(v82 + 32) = v80;
  *(v82 + 40) = 0;
  v83 = v118;
  sub_100023BD4(v81, v118, &qword_1003BC1A0, &qword_1002EE0D8);
  v84 = static HorizontalAlignment.leading.getter();
  v85 = v122;
  *v122 = v84;
  *(v85 + 8) = 0;
  *(v85 + 16) = 0;
  v86 = sub_100005AD4(&qword_1003BC1B8, &qword_1002EE0F0);
  sub_10029D690(v128, v85 + *(v86 + 44));
  v87 = static Color.translateAccentColor.getter();
  KeyPath = swift_getKeyPath();
  v89 = (v85 + *(v121 + 36));
  *v89 = KeyPath;
  v89[1] = v87;
  v90 = v115;
  v91 = v119;
  sub_10001F620(v115, v119, &qword_1003BC1A8, &qword_1002EE0E0);
  v92 = v120;
  sub_10001F620(v83, v120, &qword_1003BC1A0, &qword_1002EE0D8);
  v93 = v124;
  sub_10001F620(v85, v124, &qword_1003BC190, &unk_1002EE0C0);
  v94 = v123;
  sub_10001F620(v91, v123, &qword_1003BC1A8, &qword_1002EE0E0);
  v95 = sub_100005AD4(&qword_1003BC1C0, &unk_1002EE128);
  sub_10001F620(v92, v94 + *(v95 + 48), &qword_1003BC1A0, &qword_1002EE0D8);
  sub_10001F620(v93, v94 + *(v95 + 64), &qword_1003BC190, &unk_1002EE0C0);
  sub_100009EBC(v85, &qword_1003BC190, &unk_1002EE0C0);
  sub_100009EBC(v83, &qword_1003BC1A0, &qword_1002EE0D8);
  sub_100009EBC(v90, &qword_1003BC1A8, &qword_1002EE0E0);
  sub_100009EBC(v93, &qword_1003BC190, &unk_1002EE0C0);
  sub_100009EBC(v92, &qword_1003BC1A0, &qword_1002EE0D8);
  return sub_100009EBC(v91, &qword_1003BC1A8, &qword_1002EE0E0);
}

uint64_t sub_10029B598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for TranslationCardView(0);
  v50 = *(v3 - 8);
  v49 = *(v50 + 64);
  __chkstk_darwin(v3 - 8);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003BC288, &qword_1002EE2F8);
  __chkstk_darwin(v5 - 8);
  v7 = &v46 - v6;
  v8 = sub_100005AD4(&qword_1003BC290, &qword_1002EE300);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v47 = &v46 - v13;
  __chkstk_darwin(v12);
  v51 = &v46 - v14;
  v15 = sub_100005AD4(&qword_1003BC298, &qword_1002EE308);
  v16 = __chkstk_darwin(v15 - 8);
  v48 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v46 - v18;
  *v19 = static VerticalAlignment.center.getter();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = sub_100005AD4(&qword_1003BC2A0, &qword_1002EE310);
  sub_10029BB64(&v19[*(v20 + 44)]);
  *v7 = static VerticalAlignment.bottom.getter();
  *(v7 + 1) = 0x4024000000000000;
  v7[16] = 0;
  v21 = sub_100005AD4(&qword_1003BC2A8, &qword_1002EE318);
  sub_10029BE60(a1, &v7[*(v21 + 44)]);
  sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  Bindable.wrappedValue.getter();
  v22 = v55;
  swift_getKeyPath();
  v55 = v22;
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v22 + 160);

  Bindable.wrappedValue.getter();
  v24 = v55;
  swift_getKeyPath();
  v55 = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v24 + 72);

  v26 = sub_10028AF00();

  if (v26 == 4)
  {
    v27 = 2;
  }

  else
  {
    v27 = v26;
  }

  v28 = v46;
  sub_1002A244C(a1, v46, type metadata accessor for TranslationCardView);
  v29 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v30 = swift_allocObject();
  sub_1002A28E0(v28, v30 + v29, type metadata accessor for TranslationCardView);
  v31 = static Color.sourceTextColor.getter();
  v32 = static VerticalAlignment.bottom.getter();
  v54 = 0;
  static Binding.constant(_:)();
  v33 = v55;
  v34 = v56;
  v35 = v57;
  LOBYTE(v54) = 1;
  v36 = v7;
  v37 = v47;
  sub_100023BD4(v36, v47, &qword_1003BC288, &qword_1002EE2F8);
  v38 = v37 + *(v9 + 44);
  *v38 = 0;
  *(v38 + 1) = v23;
  *(v38 + 2) = v27;
  *(v38 + 8) = sub_1002A2D40;
  *(v38 + 16) = v30;
  *(v38 + 24) = 0;
  *(v38 + 32) = v32;
  *(v38 + 40) = v31;
  *(v38 + 48) = v33;
  *(v38 + 56) = v34;
  *(v38 + 64) = v35;
  *(v38 + 72) = 0x4020000000000000;
  *(v38 + 80) = 0;
  *(v38 + 88) = 0;
  *(v38 + 96) = v54;
  v39 = v51;
  sub_100023BD4(v37, v51, &qword_1003BC290, &qword_1002EE300);
  v40 = v48;
  sub_10001F620(v19, v48, &qword_1003BC298, &qword_1002EE308);
  v41 = v52;
  sub_10001F620(v39, v52, &qword_1003BC290, &qword_1002EE300);
  v42 = v53;
  sub_10001F620(v40, v53, &qword_1003BC298, &qword_1002EE308);
  v43 = sub_100005AD4(&unk_1003BC360, &qword_1002EE500);
  sub_10001F620(v41, v42 + *(v43 + 48), &qword_1003BC290, &qword_1002EE300);
  v44 = v42 + *(v43 + 64);
  *v44 = 0;
  *(v44 + 8) = 0;
  sub_100009EBC(v39, &qword_1003BC290, &qword_1002EE300);
  sub_100009EBC(v19, &qword_1003BC298, &qword_1002EE308);
  sub_100009EBC(v41, &qword_1003BC290, &qword_1002EE300);
  return sub_100009EBC(v40, &qword_1003BC298, &qword_1002EE308);
}

uint64_t sub_10029BB64@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_100005AD4(&qword_1003AF510, &qword_1002DBC70);
  v2 = __chkstk_darwin(v1 - 8);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v26 - v4;
  sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  Bindable.wrappedValue.getter();
  v6 = v29;
  swift_getKeyPath();
  v29 = v6;
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + 72);

  v8 = sub_100298DEC(&dispatch thunk of PersistedTranslation.sourceLocale.getter);
  v10 = v9;

  v29 = v8;
  v30 = v10;
  sub_10001F278();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  LOBYTE(v10) = v14;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10002EA54(v11, v13, v10 & 1);

  v29 = v15;
  v30 = v17;
  v31 = v19 & 1;
  v32 = v21;
  View.accessibilityIdentifier(_:)();
  sub_10002EA54(v15, v17, v19 & 1);

  v22 = v27;
  sub_10001F620(v5, v27, &qword_1003AF510, &qword_1002DBC70);
  v23 = v28;
  sub_10001F620(v22, v28, &qword_1003AF510, &qword_1002DBC70);
  v24 = v23 + *(sub_100005AD4(&qword_1003BC358, &qword_1002EE4D0) + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_100009EBC(v5, &qword_1003AF510, &qword_1002DBC70);
  return sub_100009EBC(v22, &qword_1003AF510, &qword_1002DBC70);
}

uint64_t sub_10029BE60@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v126 = a2;
  v125 = type metadata accessor for Locale.Language();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for Locale();
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v122 = v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for LayoutDirection();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for TranslationCardView(0);
  v102 = *(v100 - 8);
  v6 = __chkstk_darwin(v100);
  v105 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v103 = v90 - v9;
  v104 = v10;
  __chkstk_darwin(v8);
  v101 = v90 - v11;
  v12 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v12 - 8);
  v127 = v90 - v13;
  v14 = type metadata accessor for AttributedString();
  __chkstk_darwin(v14 - 8);
  v99 = type metadata accessor for LanguageAwareText(0);
  __chkstk_darwin(v99);
  v16 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_100005AD4(&qword_1003BC2E8, &qword_1002EE418);
  __chkstk_darwin(v110);
  v108 = v90 - v17;
  v18 = sub_100005AD4(&qword_1003BC2F0, &qword_1002EE420);
  __chkstk_darwin(v18 - 8);
  v107 = v90 - v19;
  v106 = sub_100005AD4(&qword_1003BC2F8, &qword_1002EE428);
  __chkstk_darwin(v106);
  v111 = v90 - v20;
  v109 = sub_100005AD4(&qword_1003BC300, &qword_1002EE430);
  __chkstk_darwin(v109);
  v112 = v90 - v21;
  v113 = sub_100005AD4(&qword_1003BC308, &qword_1002EE438);
  __chkstk_darwin(v113);
  v114 = v90 - v22;
  v118 = sub_100005AD4(&qword_1003BC310, &qword_1002EE440);
  v117 = *(v118 - 8);
  v23 = __chkstk_darwin(v118);
  v116 = v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v115 = v90 - v25;
  v26 = sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  Bindable.wrappedValue.getter();
  v27 = v132;
  swift_getKeyPath();
  *&v132 = v27;
  v28 = sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = *(v27 + 168);
  v30 = v29;

  if (!v29)
  {
    sub_10000A2CC(0, &qword_1003AC720, NSAttributedString_ptr);
    AttributedString.init(stringLiteral:)();
    v29 = NSAttributedString.init(_:)();
  }

  v98 = v29;
  (*(v128 + 56))(v127, 1, 1, v130);
  v96 = sub_10029927C();
  Bindable.wrappedValue.getter();
  v31 = v132;
  swift_getKeyPath();
  *&v132 = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(v31 + 208);
  v95 = *(v31 + 200);
  v94 = v32;
  v93 = *(v31 + 216);

  v33 = (a1 + *(v100 + 20));
  v34 = *v33;
  v92 = v33[1];
  v100 = v34;
  swift_unknownObjectRetain();
  Bindable.wrappedValue.getter();
  v35 = v132;
  swift_getKeyPath();
  *&v132 = v35;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = *(v35 + 194);

  v129 = v28;
  if (v36)
  {
    v91 = 0;
  }

  else
  {
    v91 = [objc_opt_self() systemFillColor];
  }

  v37 = v101;
  sub_1002A244C(a1, v101, type metadata accessor for TranslationCardView);
  v38 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v102 = swift_allocObject();
  sub_1002A28E0(v37, v102 + v38, type metadata accessor for TranslationCardView);
  v39 = v103;
  sub_1002A244C(a1, v103, type metadata accessor for TranslationCardView);
  v101 = swift_allocObject();
  sub_1002A28E0(v39, v101 + v38, type metadata accessor for TranslationCardView);
  v103 = sub_10029D200();
  v97 = v26;
  Bindable.wrappedValue.getter();
  v40 = v132;
  swift_getKeyPath();
  *&v132 = v40;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v39) = *(v40 + 194);

  v90[1] = a1;
  v41 = v105;
  sub_1002A244C(a1, v105, type metadata accessor for TranslationCardView);
  v42 = swift_allocObject();
  sub_1002A28E0(v41, v42 + v38, type metadata accessor for TranslationCardView);
  *v16 = v98;
  *(v16 + 8) = xmmword_1002D8D70;
  v43 = v99;
  sub_100023BD4(v127, &v16[*(v99 + 24)], &qword_1003AFCE0, &qword_1002D5B00);
  *&v16[v43[7]] = v96;
  v16[v43[8]] = 0;
  *&v16[v43[9]] = 0;
  *&v16[v43[10]] = 0;
  v16[v43[11]] = 0;
  v44 = &v16[v43[12]];
  v45 = v94;
  *v44 = v95;
  *(v44 + 1) = v45;
  v44[16] = v93;
  v46 = &v16[v43[13]];
  v47 = v92;
  *v46 = v100;
  v46[1] = v47;
  *&v16[v43[14]] = v91;
  v16[v43[15]] = 0;
  v48 = &v16[v43[16]];
  v49 = v102;
  *v48 = sub_1002A3440;
  *(v48 + 1) = v49;
  v50 = &v16[v43[17]];
  v51 = v101;
  *v50 = sub_1002A2F78;
  v50[1] = v51;
  v52 = &v16[v43[18]];
  *v52 = 0;
  *(v52 + 1) = 0;
  *&v16[v43[19]] = v103;
  v16[v43[20]] = (v39 & 1) == 0;
  v53 = &v16[v43[21]];
  *v53 = sub_1002A3444;
  *(v53 + 1) = v42;
  type metadata accessor for LanguageAwareTextViewSizeThatFitsCache();
  LazyState.init(wrappedValue:)();
  static Font.title.getter();
  v54 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v56 = v16;
  v57 = v108;
  sub_1002A28E0(v56, v108, type metadata accessor for LanguageAwareText);
  v58 = (v57 + *(v110 + 36));
  *v58 = KeyPath;
  v58[1] = v54;
  sub_1002A2948();
  v59 = v107;
  View.accessibilityIdentifier(_:)();
  sub_100009EBC(v57, &qword_1003BC2E8, &qword_1002EE418);
  v60 = v59;
  v61 = v111;
  sub_100023BD4(v60, v111, &qword_1003BC2F0, &qword_1002EE420);
  *(v61 + *(v106 + 36)) = 0x3FF199999999999ALL;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v62 = v61;
  v63 = v112;
  sub_100023BD4(v62, v112, &qword_1003BC2F8, &qword_1002EE428);
  v64 = (v63 + *(v109 + 36));
  v65 = v137;
  v64[4] = v136;
  v64[5] = v65;
  v64[6] = v138;
  v66 = v133;
  *v64 = v132;
  v64[1] = v66;
  v67 = v135;
  v64[2] = v134;
  v64[3] = v67;
  v127 = swift_getKeyPath();
  Bindable.wrappedValue.getter();
  v68 = v131;
  swift_getKeyPath();
  v131 = v68;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v69 = *(v68 + 72);

  v70 = v122;
  dispatch thunk of PersistedTranslation.sourceLocale.getter();

  LOBYTE(v69) = Locale.isRTL()();
  v128 = *(v128 + 8);
  (v128)(v70, v130);
  v71 = v120;
  v72 = &enum case for LayoutDirection.rightToLeft(_:);
  if ((v69 & 1) == 0)
  {
    v72 = &enum case for LayoutDirection.leftToRight(_:);
  }

  v73 = v119;
  v74 = v121;
  (*(v120 + 104))(v119, *v72, v121);
  v75 = v114;
  v76 = &v114[*(v113 + 36)];
  v77 = sub_100005AD4(&qword_1003AA938, &unk_1002D4680);
  (*(v71 + 32))(&v76[*(v77 + 28)], v73, v74);
  *v76 = v127;
  sub_100023BD4(v63, v75, &qword_1003BC300, &qword_1002EE430);
  Bindable.wrappedValue.getter();
  v78 = v131;
  swift_getKeyPath();
  v131 = v78;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v79 = *(v78 + 72);

  dispatch thunk of PersistedTranslation.sourceLocale.getter();

  v80 = v123;
  Locale.language.getter();
  (v128)(v70, v130);
  sub_1002A2A30();
  v81 = v115;
  View.typesettingLanguage(_:isEnabled:)();
  (*(v124 + 8))(v80, v125);
  sub_100009EBC(v75, &qword_1003BC308, &qword_1002EE438);
  v82 = v117;
  v83 = *(v117 + 16);
  v84 = v116;
  v85 = v118;
  v83(v116, v81, v118);
  v86 = v126;
  v83(v126, v84, v85);
  v87 = &v86[*(sub_100005AD4(&qword_1003BC350, &qword_1002EE4A0) + 48)];
  *v87 = 0;
  v87[8] = 0;
  v88 = *(v82 + 8);
  v88(v81, v85);
  return (v88)(v84, v85);
}

void *sub_10029CE90(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[3] = &type metadata for TranslateFeatures;
  v29[4] = sub_100009DF8();
  LOBYTE(v29[0]) = 5;
  v9 = isFeatureEnabled(_:)();
  sub_100008664(v29);
  if (v9)
  {
    result = dispatch thunk of PersistedTranslation.disambiguableResult.getter();
    if (!result)
    {
      return result;
    }

    v11 = result;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v13 = [v11 sentenceWithUUID:isa];

    if (v13)
    {
      v14 = _LTDisambiguableSentence.menu(forLinkIndex:)(a3);

      return v14;
    }

    if (qword_1003A9238 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000078E8(v15, qword_1003D27B8);
    (*(v6 + 16))(v8, a2, v5);
    v16 = v11;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29[0] = v28;
      *v19 = 136446466;
      sub_1002A2CF0(&qword_1003AC7D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v6 + 8))(v8, v5);
      v23 = sub_10028D78C(v20, v22, v29);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2114;
      *(v19 + 14) = v16;
      v24 = v27;
      *v27 = v11;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to find sentence UUID %{public}s in result %{public}@", v19, 0x16u);
      sub_100009EBC(v24, &unk_1003AECA0, &unk_1002D3F10);

      sub_100008664(v28);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }

  return 0;
}

void *sub_10029D200()
{
  sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v4 + 194);

  if (v0)
  {
    return 0;
  }

  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v4 + 184);
  v2 = v1;

  return v1;
}

void sub_10029D348(uint64_t a1, char a2)
{
  v4 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000078E8(v7, qword_1003D28F0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "TTS play button action invoked", v10, 2u);
  }

  sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  Bindable.wrappedValue.getter();
  v11 = v19;
  if ((a2 & 1) == 0)
  {
    swift_getKeyPath();
    v19 = v11;
    sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [*(v11 + 72) setTtsPlaybackRateDouble:*&a1];
    v12 = sub_10003204C(*&a1);
    v13 = v12;
    v14 = *(v11 + 162);
    if (v14 == 4)
    {
      if (v12 != 4)
      {
LABEL_8:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v18 - 2) = v11;
        *(&v18 - 8) = v13;
        v19 = v11;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        goto LABEL_11;
      }
    }

    else if (v14 != v12)
    {
      goto LABEL_8;
    }

    *(v11 + 162) = v12;
  }

LABEL_11:
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v11;
  *(v17 + 40) = 1;
  sub_10005E36C(0, 0, v6, &unk_1002EE508, v17);
}

uint64_t sub_10029D690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v3 = sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  v133 = *(v3 - 8);
  __chkstk_darwin(v3);
  v131 = &v109 - v4;
  v5 = sub_100005AD4(&qword_1003AC9D8, &qword_1002D69B0);
  v121 = *(v5 - 8);
  v122 = v5;
  __chkstk_darwin(v5);
  v119 = &v109 - v6;
  v132 = type metadata accessor for TranslationCardView(0);
  v111 = *(v132 - 8);
  v7 = *(v111 + 64);
  __chkstk_darwin(v132);
  v112 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_100005AD4(&qword_1003BC1C8, &qword_1002EE138);
  __chkstk_darwin(v123);
  v113 = &v109 - v8;
  v9 = sub_100005AD4(&qword_1003BC1D0, &qword_1002EE140);
  v114 = *(v9 - 8);
  v115 = v9;
  __chkstk_darwin(v9);
  v124 = &v109 - v10;
  v11 = sub_100005AD4(&qword_1003BC1D8, &qword_1002EE148);
  v117 = *(v11 - 8);
  v118 = v11;
  __chkstk_darwin(v11);
  v125 = &v109 - v12;
  v127 = sub_100005AD4(&qword_1003BC1E0, &qword_1002EE150);
  v13 = __chkstk_darwin(v127);
  v116 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v120 = &v109 - v15;
  v126 = sub_100005AD4(&qword_1003BC1E8, &qword_1002EE158);
  __chkstk_darwin(v126);
  v17 = &v109 - v16;
  v18 = sub_100005AD4(&qword_1003BC1F0, &qword_1002EE160);
  v19 = __chkstk_darwin(v18 - 8);
  v130 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v136 = &v109 - v21;
  v22 = sub_100005AD4(&qword_1003BC1F8, &qword_1002EE168);
  v23 = v22 - 8;
  v24 = __chkstk_darwin(v22);
  v129 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v109 - v26;
  *v27 = static VerticalAlignment.lastTextBaseline.getter();
  *(v27 + 1) = 0;
  v27[16] = 1;
  v28 = &v27[*(sub_100005AD4(&qword_1003BC200, &qword_1002EE170) + 44)];
  *v28 = static HorizontalAlignment.leading.getter();
  *(v28 + 1) = 0x4010000000000000;
  v28[16] = 0;
  v29 = sub_100005AD4(&qword_1003BC208, &qword_1002EE178);
  sub_10029E938(a1, &v28[*(v29 + 44)]);
  LOBYTE(v28) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v30 = *(v23 + 44);
  v128 = v27;
  v31 = &v27[v30];
  *v31 = v28;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  Bindable.wrappedValue.getter();
  v36 = v147;
  swift_getKeyPath();
  *&v147 = v36;
  v135 = sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = *(v36 + 72);
  dispatch thunk of PersistedTranslation.translationResult.getter();

  sub_1000085CC(&v147, *(&v148 + 1));
  LOBYTE(v37) = TranslationResult.isLowConfidence.getter();

  sub_100008664(&v147);
  if (v37)
  {
    sub_100005AD4(&qword_1003AD990, &unk_1002EE2C0);
    v38 = type metadata accessor for TranslateTip(0);
    v39 = (*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1002D3160;
    if (qword_1003A9370 != -1)
    {
      swift_once();
    }

    v41 = sub_1000078E8(v38, qword_1003D2C48);
    sub_1002A244C(v41, v40 + v39, type metadata accessor for TranslateTip);
    v42 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v138 = 0;
    v137 = 0;
    v139 = v40;
    LOBYTE(v140) = v42;
    *(&v140 + 1) = v146;
    HIDWORD(v140) = *(&v146 + 3);
    v141 = v43;
    v142 = v44;
    v143 = v45;
    v144 = v46;
    v145 = 0;
LABEL_9:
    sub_100005AD4(&qword_1003BC248, &qword_1002EE2B8);
    sub_1002A21AC();
    _ConditionalContent<>.init(storage:)();
    v58 = v148;
    *v17 = v147;
    *(v17 + 1) = v58;
    *(v17 + 2) = v149;
    *(v17 + 24) = v150;
    swift_storeEnumTagMultiPayload();
    sub_100005AD4(&qword_1003BC230, &qword_1002EE2B0);
    sub_1002A2128();
    sub_1002A228C();
    v59 = v136;
    _ConditionalContent<>.init(storage:)();
    v60 = sub_100005AD4(&qword_1003BC210, &qword_1002EE1F8);
    (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
    goto LABEL_10;
  }

  Bindable.wrappedValue.getter();
  v47 = v147;
  swift_getKeyPath();
  *&v147 = v47;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = *(v47 + 242);

  if (v48 == 1)
  {
    sub_100005AD4(&qword_1003AD990, &unk_1002EE2C0);
    v49 = type metadata accessor for TranslateTip(0);
    v50 = (*(*(v49 - 8) + 80) + 32) & ~*(*(v49 - 8) + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1002D3160;
    if (qword_1003A9378 != -1)
    {
      swift_once();
    }

    v52 = sub_1000078E8(v49, qword_1003D2C60);
    sub_1002A244C(v52, v51 + v50, type metadata accessor for TranslateTip);
    v53 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v138 = 0;
    v137 = 1;
    v139 = v51;
    LOBYTE(v140) = v53;
    *(&v140 + 1) = v146;
    HIDWORD(v140) = *(&v146 + 3);
    v141 = v54;
    v142 = v55;
    v143 = v56;
    v144 = v57;
    v145 = 256;
    goto LABEL_9;
  }

  Bindable.wrappedValue.getter();
  v77 = v147;
  swift_getKeyPath();
  *&v147 = v77;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v78 = *(v77 + 192);

  if (v78 == 1)
  {
    Bindable.wrappedValue.getter();
    v79 = v147;
    swift_getKeyPath();
    *&v147 = v79;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(&v148 + 1) = &type metadata for TipsHelper.GenderDisambiguationTip;
    v110 = sub_10005CC6C();
    *&v149 = v110;
    v80 = v112;
    sub_1002A244C(a1, v112, type metadata accessor for TranslationCardView);
    v81 = (*(v111 + 80) + 16) & ~*(v111 + 80);
    v82 = swift_allocObject() + v81;
    sub_1002A28E0(v80, v82, type metadata accessor for TranslationCardView);
    v83 = v113;
    TipView.init<>(_:isPresented:arrowEdge:action:)();
    v84 = static Color.primary.getter();
    KeyPath = swift_getKeyPath();
    v86 = (v83 + *(v123 + 36));
    *v86 = KeyPath;
    v86[1] = v84;
    v87 = [objc_opt_self() systemGroupedBackgroundColor];
    *&v147 = Color.init(_:)();
    v88 = sub_1002A2044();
    View.tipBackground<A>(_:)();

    sub_100009EBC(v83, &qword_1003BC1C8, &qword_1002EE138);
    Solarium.init()();
    v89 = v119;
    static ViewInputPredicate.! prefix(_:)();
    v113 = sub_100005AD4(&qword_1003BC228, &qword_1002EE2A8);
    *&v147 = v123;
    *(&v147 + 1) = &type metadata for Color;
    *&v148 = v88;
    *(&v148 + 1) = &protocol witness table for Color;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v147 = &type metadata for Solarium;
    *(&v147 + 1) = &protocol witness table for Solarium;
    swift_getOpaqueTypeConformance2();
    v91 = v115;
    *&v147 = v115;
    *(&v147 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v92 = v122;
    v93 = v124;
    View.staticIf<A, B>(_:then:)();
    (*(v121 + 8))(v89, v92);
    (*(v114 + 8))(v93, v91);
    LOBYTE(v92) = static Edge.Set.bottom.getter();
    Bindable.wrappedValue.getter();
    v94 = v147;
    swift_getKeyPath();
    *&v147 = v94;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Tip.shouldDisplay.getter();
    EdgeInsets.init(_all:)();
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v103 = v116;
    (*(v117 + 32))(v116, v125, v118);
    v104 = v103 + v127[9];
    *v104 = v92;
    *(v104 + 8) = v96;
    *(v104 + 16) = v98;
    *(v104 + 24) = v100;
    *(v104 + 32) = v102;
    *(v104 + 40) = 0;
    v105 = v120;
    sub_100023BD4(v103, v120, &qword_1003BC1E0, &qword_1002EE150);
    sub_10001F620(v105, v17, &qword_1003BC1E0, &qword_1002EE150);
    swift_storeEnumTagMultiPayload();
    sub_100005AD4(&qword_1003BC230, &qword_1002EE2B0);
    sub_1002A2128();
    sub_1002A228C();
    v106 = v136;
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v105, &qword_1003BC1E0, &qword_1002EE150);
    v107 = sub_100005AD4(&qword_1003BC210, &qword_1002EE1F8);
    (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
  }

  else
  {
    v108 = sub_100005AD4(&qword_1003BC210, &qword_1002EE1F8);
    (*(*(v108 - 8) + 56))(v136, 1, 1, v108);
  }

LABEL_10:
  Bindable.wrappedValue.getter();
  v61 = v147;
  swift_getKeyPath();
  *&v147 = v61;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v127 = *(v61 + 72);

  Bindable.wrappedValue.getter();
  sub_100031DD8(v147 + 24, &v148);

  v62 = v131;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v133 + 8))(v62, v3);
  v63 = v140;
  v133 = v139;
  LOBYTE(v62) = v141;
  Bindable.wrappedValue.getter();
  v64 = v146;
  swift_getKeyPath();
  v146 = v64;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v61) = *(v64 + 193);

  v65 = (a1 + *(v132 + 24));
  v66 = *v65;
  v67 = v65[1];
  v157 = swift_getKeyPath();
  v158 = 0;
  v159 = 0;
  sub_10001AD18(v66, v67);
  type metadata accessor for PersistedTranslation();
  sub_1002A2CF0(&qword_1003AE628, &type metadata accessor for PersistedTranslation, &protocol conformance descriptor for NSManagedObject);
  *&v147 = ObservedObject.init(wrappedValue:)();
  *(&v147 + 1) = v68;
  v151 = v133;
  v152 = v63;
  v153 = v62;
  v154 = v61;
  v155 = v66;
  v156 = v67;
  v70 = v128;
  v69 = v129;
  sub_10001F620(v128, v129, &qword_1003BC1F8, &qword_1002EE168);
  v71 = v136;
  v72 = v130;
  sub_10001F620(v136, v130, &qword_1003BC1F0, &qword_1002EE160);
  sub_10027B74C(&v147, &v139);
  v73 = v134;
  sub_10001F620(v69, v134, &qword_1003BC1F8, &qword_1002EE168);
  v74 = sub_100005AD4(&qword_1003BC218, &qword_1002EE278);
  v75 = v73 + v74[12];
  *v75 = 0x4020000000000000;
  *(v75 + 8) = 0;
  sub_10001F620(v72, v73 + v74[16], &qword_1003BC1F0, &qword_1002EE160);
  sub_10027B74C(&v139, v73 + v74[20]);
  sub_1002A1F78(&v147);
  sub_100009EBC(v71, &qword_1003BC1F0, &qword_1002EE160);
  sub_100009EBC(v70, &qword_1003BC1F8, &qword_1002EE168);
  sub_1002A1F78(&v139);
  sub_100009EBC(v72, &qword_1003BC1F0, &qword_1002EE160);
  return sub_100009EBC(v69, &qword_1003BC1F8, &qword_1002EE168);
}

uint64_t sub_10029E938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v112 = type metadata accessor for Locale();
  v109 = *(v112 - 8);
  __chkstk_darwin(v112);
  v107 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for LayoutDirection();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v5 - 8);
  v99 = &v96 - v6;
  v7 = sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  v98 = *(v7 - 8);
  __chkstk_darwin(v7);
  v97 = &v96 - v8;
  v100 = sub_100005AD4(&qword_1003BC260, &qword_1002EE2D0);
  __chkstk_darwin(v100);
  v106 = &v96 - v9;
  v101 = sub_100005AD4(&qword_1003BC268, &qword_1002EE2D8);
  __chkstk_darwin(v101);
  v103 = &v96 - v10;
  v105 = sub_100005AD4(&qword_1003BC270, &qword_1002EE2E0);
  __chkstk_darwin(v105);
  v104 = &v96 - v11;
  v12 = sub_100005AD4(&qword_1003BC278, &qword_1002EE2E8);
  v123 = *(v12 - 8);
  v124 = v12;
  __chkstk_darwin(v12);
  v102 = &v96 - v13;
  v14 = sub_100005AD4(&qword_1003BC280, &qword_1002EE2F0);
  v15 = __chkstk_darwin(v14 - 8);
  v125 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v127 = &v96 - v17;
  v18 = type metadata accessor for TranslationCardView(0);
  v119 = *(v18 - 8);
  v118 = *(v119 + 64);
  __chkstk_darwin(v18 - 8);
  v117 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100005AD4(&qword_1003BC288, &qword_1002EE2F8);
  __chkstk_darwin(v20 - 8);
  v22 = &v96 - v21;
  v23 = sub_100005AD4(&qword_1003BC290, &qword_1002EE300);
  v24 = v23 - 8;
  v25 = __chkstk_darwin(v23);
  v122 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v96 - v28;
  __chkstk_darwin(v27);
  v128 = &v96 - v30;
  v31 = sub_100005AD4(&qword_1003BC298, &qword_1002EE308);
  v32 = __chkstk_darwin(v31 - 8);
  v121 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v96 - v34;
  *v35 = static VerticalAlignment.center.getter();
  *(v35 + 1) = 0;
  v35[16] = 1;
  v36 = *(sub_100005AD4(&qword_1003BC2A0, &qword_1002EE310) + 44);
  v120 = v35;
  sub_10029F894(&v35[v36]);
  *v22 = static VerticalAlignment.bottom.getter();
  *(v22 + 1) = 0x4024000000000000;
  v22[16] = 0;
  v37 = sub_100005AD4(&qword_1003BC2A8, &qword_1002EE318);
  sub_10029FB90(a1, &v22[*(v37 + 44)]);
  Bindable.wrappedValue.getter();
  v38 = v129[0];
  swift_getKeyPath();
  v129[0] = v38;
  v39 = sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v116 = *(v38 + 161);

  v113 = v7;
  Bindable.wrappedValue.getter();
  v40 = v129[0];
  swift_getKeyPath();
  v129[0] = v40;
  v115 = v39;
  v41 = 1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *(v40 + 72);

  v43 = sub_10028AF00();

  if (v43 == 4)
  {
    v44 = 2;
  }

  else
  {
    v44 = v43;
  }

  v114 = a1;
  v45 = v117;
  sub_1002A244C(a1, v117, type metadata accessor for TranslationCardView);
  v46 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v47 = swift_allocObject();
  sub_1002A28E0(v45, v47 + v46, type metadata accessor for TranslationCardView);
  v48 = static Color.translateAccentColor.getter();
  v49 = static VerticalAlignment.bottom.getter();
  v132 = 0;
  static Binding.constant(_:)();
  v50 = v129[0];
  v51 = v129[1];
  v52 = v129[2];
  LOBYTE(v132) = 1;
  sub_100023BD4(v22, v29, &qword_1003BC288, &qword_1002EE2F8);
  v53 = &v29[*(v24 + 44)];
  *v53 = 0;
  v53[1] = v116;
  v53[2] = v44;
  *(v53 + 1) = sub_1002A24BC;
  *(v53 + 2) = v47;
  v53[24] = 0;
  *(v53 + 4) = v49;
  *(v53 + 5) = v48;
  *(v53 + 6) = v50;
  *(v53 + 7) = v51;
  *(v53 + 8) = v52;
  *(v53 + 9) = 0x4020000000000000;
  v53[80] = 0;
  *(v53 + 11) = 0;
  v53[96] = v132;
  sub_100023BD4(v29, v128, &qword_1003BC290, &qword_1002EE300);
  v130 = &type metadata for TranslateFeatures;
  v131 = sub_100009DF8();
  LOBYTE(v129[0]) = 6;
  LOBYTE(v47) = isFeatureEnabled(_:)();
  sub_100008664(v129);
  if (v47)
  {
    v54 = v113;
    Bindable.wrappedValue.getter();
    v55 = v129[0];
    swift_getKeyPath();
    v129[0] = v55;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v56 = *(v55 + 72);

    sub_1000E522C(v57);
    v59 = v58;

    if (!v59)
    {
LABEL_9:
      v41 = 1;
      goto LABEL_14;
    }

    Bindable.wrappedValue.getter();
    v60 = v129[0];
    swift_getKeyPath();
    v129[0] = v60;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v61 = *(v60 + 72);
    dispatch thunk of PersistedTranslation.translationResult.getter();

    sub_1000085CC(v129, v130);
    v62 = dispatch thunk of TranslationResult.disambiguableResult.getter();
    if (v62)
    {
      v63 = v62;
      v64 = [v62 hasDisambiguationsOfType:1];

      sub_100008664(v129);
      if (v64)
      {

        goto LABEL_9;
      }
    }

    else
    {

      sub_100008664(v129);
    }

    v65 = v97;
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    (*(v98 + 8))(v65, v54);
    v66 = v109;
    (*(v109 + 56))(v99, 1, 1, v112);
    v67 = v106;
    SimpleExpandingText.init(_:isExpanded:_:buttonAction:)();
    v68 = static Font.headline.getter();
    KeyPath = swift_getKeyPath();
    v70 = (v67 + *(sub_100005AD4(&qword_1003BC2B8, &qword_1002EE3A8) + 36));
    *v70 = KeyPath;
    v70[1] = v68;
    v71 = static Color.tertiaryTranslateAccentColor.getter();
    v72 = swift_getKeyPath();
    v73 = (v67 + *(v100 + 36));
    *v73 = v72;
    v73[1] = v71;
    v74 = swift_getKeyPath();
    Bindable.wrappedValue.getter();
    v75 = v129[0];
    swift_getKeyPath();
    v129[0] = v75;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v76 = *(v75 + 72);

    v77 = v107;
    dispatch thunk of PersistedTranslation.targetLocale.getter();

    LOBYTE(v75) = Locale.isRTL()();
    (*(v66 + 8))(v77, v112);
    v78 = v110;
    v79 = &enum case for LayoutDirection.rightToLeft(_:);
    if ((v75 & 1) == 0)
    {
      v79 = &enum case for LayoutDirection.leftToRight(_:);
    }

    v80 = v108;
    v81 = v111;
    (*(v110 + 104))(v108, *v79, v111);
    v82 = v103;
    v83 = &v103[*(v101 + 36)];
    v84 = sub_100005AD4(&qword_1003AA938, &unk_1002D4680);
    (*(v78 + 32))(v83 + *(v84 + 28), v80, v81);
    *v83 = v74;
    sub_100023BD4(v67, v82, &qword_1003BC260, &qword_1002EE2D0);
    v85 = v104;
    sub_100023BD4(v82, v104, &qword_1003BC268, &qword_1002EE2D8);
    *(v85 + *(v105 + 36)) = 256;
    sub_1002A24EC();
    v86 = v102;
    View.accessibilityIdentifier(_:)();
    sub_100009EBC(v85, &qword_1003BC270, &qword_1002EE2E0);
    sub_100023BD4(v86, v127, &qword_1003BC278, &qword_1002EE2E8);
    v41 = 0;
  }

LABEL_14:
  v87 = v127;
  (*(v123 + 56))(v127, v41, 1, v124);
  v89 = v120;
  v88 = v121;
  sub_10001F620(v120, v121, &qword_1003BC298, &qword_1002EE308);
  v90 = v128;
  v91 = v122;
  sub_10001F620(v128, v122, &qword_1003BC290, &qword_1002EE300);
  v92 = v125;
  sub_10001F620(v87, v125, &qword_1003BC280, &qword_1002EE2F0);
  v93 = v126;
  sub_10001F620(v88, v126, &qword_1003BC298, &qword_1002EE308);
  v94 = sub_100005AD4(&qword_1003BC2B0, &qword_1002EE348);
  sub_10001F620(v91, v93 + *(v94 + 48), &qword_1003BC290, &qword_1002EE300);
  sub_10001F620(v92, v93 + *(v94 + 64), &qword_1003BC280, &qword_1002EE2F0);
  sub_100009EBC(v87, &qword_1003BC280, &qword_1002EE2F0);
  sub_100009EBC(v90, &qword_1003BC290, &qword_1002EE300);
  sub_100009EBC(v89, &qword_1003BC298, &qword_1002EE308);
  sub_100009EBC(v92, &qword_1003BC280, &qword_1002EE2F0);
  sub_100009EBC(v91, &qword_1003BC290, &qword_1002EE300);
  return sub_100009EBC(v88, &qword_1003BC298, &qword_1002EE308);
}

uint64_t sub_10029F894@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_100005AD4(&qword_1003AF510, &qword_1002DBC70);
  v2 = __chkstk_darwin(v1 - 8);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v26 - v4;
  sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  Bindable.wrappedValue.getter();
  v6 = v29;
  swift_getKeyPath();
  v29 = v6;
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + 72);

  v8 = sub_100298DEC(&dispatch thunk of PersistedTranslation.targetLocale.getter);
  v10 = v9;

  v29 = v8;
  v30 = v10;
  sub_10001F278();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  LOBYTE(v10) = v14;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10002EA54(v11, v13, v10 & 1);

  v29 = v15;
  v30 = v17;
  v31 = v19 & 1;
  v32 = v21;
  View.accessibilityIdentifier(_:)();
  sub_10002EA54(v15, v17, v19 & 1);

  v22 = v27;
  sub_10001F620(v5, v27, &qword_1003AF510, &qword_1002DBC70);
  v23 = v28;
  sub_10001F620(v22, v28, &qword_1003AF510, &qword_1002DBC70);
  v24 = v23 + *(sub_100005AD4(&qword_1003BC358, &qword_1002EE4D0) + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_100009EBC(v5, &qword_1003AF510, &qword_1002DBC70);
  return sub_100009EBC(v22, &qword_1003AF510, &qword_1002DBC70);
}

uint64_t sub_10029FB90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v135 = a2;
  v3 = type metadata accessor for Locale.Language();
  v133 = *(v3 - 8);
  v134 = v3;
  __chkstk_darwin(v3);
  v132 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for Locale();
  v136 = *(v138 - 8);
  __chkstk_darwin(v138);
  v131 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for LayoutDirection();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for TranslationCardView(0);
  v110 = *(v108 - 8);
  v7 = __chkstk_darwin(v108);
  v114 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v111 = &v97 - v10;
  v113 = v11;
  __chkstk_darwin(v9);
  v109 = &v97 - v12;
  v13 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v13 - 8);
  v15 = &v97 - v14;
  v16 = type metadata accessor for AttributedString();
  __chkstk_darwin(v16 - 8);
  v107 = type metadata accessor for LanguageAwareText(0);
  __chkstk_darwin(v107);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_100005AD4(&qword_1003BC2E8, &qword_1002EE418);
  __chkstk_darwin(v119);
  v117 = &v97 - v19;
  v20 = sub_100005AD4(&qword_1003BC2F0, &qword_1002EE420);
  __chkstk_darwin(v20 - 8);
  v116 = &v97 - v21;
  v115 = sub_100005AD4(&qword_1003BC2F8, &qword_1002EE428);
  __chkstk_darwin(v115);
  v120 = &v97 - v22;
  v118 = sub_100005AD4(&qword_1003BC300, &qword_1002EE430);
  __chkstk_darwin(v118);
  v121 = &v97 - v23;
  v122 = sub_100005AD4(&qword_1003BC308, &qword_1002EE438);
  __chkstk_darwin(v122);
  v123 = &v97 - v24;
  v127 = sub_100005AD4(&qword_1003BC310, &qword_1002EE440);
  v126 = *(v127 - 8);
  v25 = __chkstk_darwin(v127);
  v125 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v124 = &v97 - v27;
  v28 = sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  Bindable.wrappedValue.getter();
  v29 = v140;
  swift_getKeyPath();
  *&v140 = v29;
  v30 = sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = *(v29 + 176);
  v32 = v31;

  if (!v31)
  {
    sub_10000A2CC(0, &qword_1003AC720, NSAttributedString_ptr);
    AttributedString.init(stringLiteral:)();
    v31 = NSAttributedString.init(_:)();
  }

  v106 = v31;
  v33 = *(v136 + 56);
  v112 = v15;
  v33(v15, 1, 1, v138);
  v105 = sub_10029927C();
  Bindable.wrappedValue.getter();
  v34 = v140;
  swift_getKeyPath();
  *&v140 = v34;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = *(v34 + 232);
  v104 = *(v34 + 224);
  v103 = v35;
  v102 = *(v34 + 240);

  v36 = (a1 + *(v108 + 20));
  v37 = *v36;
  v100 = v36[1];
  v108 = v37;
  swift_unknownObjectRetain();
  Bindable.wrappedValue.getter();
  v38 = v140;
  swift_getKeyPath();
  *&v140 = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = *(v38 + 194);

  if (v39)
  {
    v99 = 0;
  }

  else
  {
    sub_10000A2CC(0, &qword_1003B2990, UIColor_ptr);
    v40 = static UIColor.translateAccentColor.getter();
    v99 = [v40 colorWithAlphaComponent:0.2];
  }

  Bindable.wrappedValue.getter();
  v41 = v140;
  swift_getKeyPath();
  *&v140 = v41;
  v137 = v30;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v98 = *(v41 + 194);

  v101 = v28;
  v42 = v109;
  sub_1002A244C(a1, v109, type metadata accessor for TranslationCardView);
  v43 = a1;
  v44 = (*(v110 + 80) + 16) & ~*(v110 + 80);
  v110 = swift_allocObject();
  sub_1002A28E0(v42, v110 + v44, type metadata accessor for TranslationCardView);
  v45 = v111;
  sub_1002A244C(v43, v111, type metadata accessor for TranslationCardView);
  v109 = swift_allocObject();
  sub_1002A28E0(v45, v109 + v44, type metadata accessor for TranslationCardView);
  Bindable.wrappedValue.getter();
  v46 = v140;
  swift_getKeyPath();
  *&v140 = v46;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = *(v46 + 194);

  v97 = v43;
  v48 = v114;
  sub_1002A244C(v43, v114, type metadata accessor for TranslationCardView);
  v49 = swift_allocObject();
  sub_1002A28E0(v48, v49 + v44, type metadata accessor for TranslationCardView);
  *v18 = v106;
  *(v18 + 8) = xmmword_1002D8D70;
  v50 = v107;
  sub_100023BD4(v112, &v18[*(v107 + 24)], &qword_1003AFCE0, &qword_1002D5B00);
  *&v18[v50[7]] = v105;
  v18[v50[8]] = 0;
  *&v18[v50[9]] = 0;
  *&v18[v50[10]] = 0;
  v18[v50[11]] = 0;
  v51 = &v18[v50[12]];
  v52 = v103;
  *v51 = v104;
  *(v51 + 1) = v52;
  v51[16] = v102;
  v53 = &v18[v50[13]];
  v54 = v100;
  *v53 = v108;
  v53[1] = v54;
  *&v18[v50[14]] = v99;
  v18[v50[15]] = (v98 & 1) == 0;
  v55 = &v18[v50[16]];
  v56 = v110;
  *v55 = sub_1002A28CC;
  *(v55 + 1) = v56;
  v57 = &v18[v50[17]];
  v58 = v109;
  *v57 = sub_1002A28D0;
  v57[1] = v58;
  v59 = &v18[v50[18]];
  *v59 = 0;
  *(v59 + 1) = 0;
  *&v18[v50[19]] = 0;
  v18[v50[20]] = (v47 & 1) == 0;
  v60 = &v18[v50[21]];
  *v60 = sub_1002A28DC;
  *(v60 + 1) = v49;
  type metadata accessor for LanguageAwareTextViewSizeThatFitsCache();
  LazyState.init(wrappedValue:)();
  static Font.title.getter();
  v61 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v63 = v18;
  v64 = v117;
  sub_1002A28E0(v63, v117, type metadata accessor for LanguageAwareText);
  v65 = (v64 + *(v119 + 36));
  *v65 = KeyPath;
  v65[1] = v61;
  sub_1002A2948();
  v66 = v116;
  View.accessibilityIdentifier(_:)();
  sub_100009EBC(v64, &qword_1003BC2E8, &qword_1002EE418);
  v67 = v66;
  v68 = v120;
  sub_100023BD4(v67, v120, &qword_1003BC2F0, &qword_1002EE420);
  *(v68 + *(v115 + 36)) = 0x3FF199999999999ALL;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v69 = v68;
  v70 = v121;
  sub_100023BD4(v69, v121, &qword_1003BC2F8, &qword_1002EE428);
  v71 = (v70 + *(v118 + 36));
  v72 = v145;
  v71[4] = v144;
  v71[5] = v72;
  v71[6] = v146;
  v73 = v141;
  *v71 = v140;
  v71[1] = v73;
  v74 = v143;
  v71[2] = v142;
  v71[3] = v74;
  v120 = swift_getKeyPath();
  Bindable.wrappedValue.getter();
  v75 = v139;
  swift_getKeyPath();
  v139 = v75;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v76 = *(v75 + 72);

  v77 = v131;
  dispatch thunk of PersistedTranslation.targetLocale.getter();

  LOBYTE(v76) = Locale.isRTL()();
  v136 = *(v136 + 8);
  (v136)(v77, v138);
  v78 = v129;
  v79 = &enum case for LayoutDirection.rightToLeft(_:);
  if ((v76 & 1) == 0)
  {
    v79 = &enum case for LayoutDirection.leftToRight(_:);
  }

  v80 = v128;
  v81 = v130;
  (*(v129 + 104))(v128, *v79, v130);
  v82 = v123;
  v83 = &v123[*(v122 + 36)];
  v84 = sub_100005AD4(&qword_1003AA938, &unk_1002D4680);
  (*(v78 + 32))(&v83[*(v84 + 28)], v80, v81);
  *v83 = v120;
  sub_100023BD4(v70, v82, &qword_1003BC300, &qword_1002EE430);
  Bindable.wrappedValue.getter();
  v85 = v139;
  swift_getKeyPath();
  v139 = v85;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v86 = *(v85 + 72);

  dispatch thunk of PersistedTranslation.targetLocale.getter();

  v87 = v132;
  Locale.language.getter();
  (v136)(v77, v138);
  sub_1002A2A30();
  v88 = v124;
  View.typesettingLanguage(_:isEnabled:)();
  (*(v133 + 8))(v87, v134);
  sub_100009EBC(v82, &qword_1003BC308, &qword_1002EE438);
  v89 = v126;
  v90 = *(v126 + 16);
  v91 = v125;
  v92 = v127;
  v90(v125, v88, v127);
  v93 = v135;
  v90(v135, v91, v92);
  v94 = &v93[*(sub_100005AD4(&qword_1003BC350, &qword_1002EE4A0) + 48)];
  *v94 = 0;
  v94[8] = 0;
  v95 = *(v89 + 8);
  v95(v88, v92);
  return (v95)(v91, v92);
}

void *sub_1002A0C4C(uint64_t a1, Swift::UInt a2)
{
  sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v7 + 72);

  v5 = sub_10029CE90(v4, a1, a2);

  return v5;
}

void sub_1002A0D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v19 = a4;
  v20 = a5;
  v17 = a2;
  v18 = a3;
  v16 = a1;
  v8 = type metadata accessor for DisambiguationResultModel.TextLocation();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  Bindable.wrappedValue.getter();
  v12 = v21;
  swift_getKeyPath();
  v21 = v12;
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + 96);
  v14 = *(v12 + 104);
  sub_10001AD18(v13, v14);

  if (v13)
  {
    Bindable.wrappedValue.getter();
    v15 = v21;
    (*(v9 + 104))(v11, *a7, v8);
    v13(v15, v11, v16, v17, v18, v19, v20);

    sub_100051D20(v13, v14);
    (*(v9 + 8))(v11, v8);
  }
}

double sub_1002A0F48(char a1, uint64_t a2)
{
  sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  Bindable.wrappedValue.getter();
  sub_10004B8A4(a1, a2);

  return result;
}

void sub_1002A0FB4(uint64_t a1, char a2)
{
  v4 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  Bindable.wrappedValue.getter();
  v7 = v15;
  if ((a2 & 1) == 0)
  {
    swift_getKeyPath();
    v15 = v7;
    sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [*(v7 + 72) setTtsPlaybackRateDouble:*&a1];
    v8 = sub_10003204C(*&a1);
    v9 = v8;
    v10 = *(v7 + 162);
    if (v10 == 4)
    {
      if (v8 != 4)
      {
LABEL_4:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v14 - 2) = v7;
        *(&v14 - 8) = v9;
        v15 = v7;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        goto LABEL_7;
      }
    }

    else if (v10 != v8)
    {
      goto LABEL_4;
    }

    *(v7 + 162) = v8;
  }

LABEL_7:
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v7;
  *(v13 + 40) = 0;
  sub_10005E36C(0, 0, v6, &unk_1002EE3E8, v13);
}

uint64_t sub_1002A1240(uint64_t a1, uint64_t a2)
{
  if (*(a2 + *(type metadata accessor for TranslationCardView(0) + 36)))
  {
    v2 = objc_opt_self();

    v3 = [v2 sharedApplication];
    [v3 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];

    sub_100005AD4(&qword_1003AC8F8, &qword_1002D6760);
    return State.wrappedValue.setter();
  }

  else
  {
    type metadata accessor for SceneContext(0);
    sub_1002A2CF0(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002A138C()
{
  sub_100005AD4(&qword_1003BC1D0, &qword_1002EE140);
  sub_100005EA8(&qword_1003BC1C8, &qword_1002EE138);
  sub_1002A2044();
  swift_getOpaqueTypeConformance2();
  return View.tipCornerRadius(_:antialiased:)();
}

void sub_1002A1444()
{
  sub_1002A1524();
  sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v2 + 88);
  v1 = v0;

  if (v0)
  {
    dispatch thunk of DisambiguationResultModel.didAppear()();
  }
}

void sub_1002A1524()
{
  v1 = *(v0 + *(type metadata accessor for TranslationCardView(0) + 28));
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    static Published.subscript.getter();

    if ((v8 & 1) == 0)
    {
      v3 = sub_10028C980(0, 1, 1, _swiftEmptyArrayStorage);
      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      if (v5 >= v4 >> 1)
      {
        v3 = sub_10028C980((v4 > 1), v5 + 1, 1, v3);
      }

      *(v3 + 2) = v5 + 1;
      *&v3[8 * v5 + 32] = 1;
    }

    sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
    Bindable.wrappedValue.getter();
    swift_getKeyPath();
    sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v8 + 88);
    v7 = v6;

    if (v6)
    {
      dispatch thunk of DisambiguationResultModel.excludedTypes.setter();
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for SharedTranslationOptions(0);
    sub_1002A2CF0(&qword_1003AE918, type metadata accessor for SharedTranslationOptions, &unk_1002E997C);
    EnvironmentObject.error()();
    __break(1u);
  }
}

void sub_1002A1738(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for TranslationCardView(0) + 36)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if ((v5 & 1) == 0)
    {
      sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
      Bindable.wrappedValue.getter();
      v1 = v5[17];
      v2 = v5[18];
      sub_100005B2C(v1, v2);

      if (v2)
      {
        sub_10000A958(v1, v2);
      }

      else
      {
        Bindable.wrappedValue.getter();
        swift_getKeyPath();
        sub_1002A2CF0(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v3 = v5[11];
        v4 = v3;

        if (v3)
        {
          dispatch thunk of DisambiguationResultModel.didAppear()();
        }
      }
    }
  }

  else
  {
    type metadata accessor for SceneContext(0);
    sub_1002A2CF0(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
    EnvironmentObject.error()();
    __break(1u);
  }
}

unint64_t sub_1002A1938()
{
  result = qword_1003BC138;
  if (!qword_1003BC138)
  {
    sub_100005EA8(&qword_1003BC0E0, &qword_1002EDF40);
    sub_1002A19F0();
    sub_10001BAEC(&qword_1003B18B8, &qword_1003AC978, &qword_1002D68E8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC138);
  }

  return result;
}

unint64_t sub_1002A19F0()
{
  result = qword_1003BC140;
  if (!qword_1003BC140)
  {
    sub_100005EA8(&qword_1003BC148, &qword_1002EDFC0);
    sub_1002A1AA8();
    sub_10001BAEC(&qword_1003ADB10, &qword_1003ADB18, &qword_1002D83B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC140);
  }

  return result;
}

unint64_t sub_1002A1AA8()
{
  result = qword_1003BC150;
  if (!qword_1003BC150)
  {
    sub_100005EA8(&qword_1003BC0E8, &qword_1002EDF48);
    sub_1002A1B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC150);
  }

  return result;
}

unint64_t sub_1002A1B34()
{
  result = qword_1003BC158;
  if (!qword_1003BC158)
  {
    sub_100005EA8(&qword_1003BC130, &qword_1002EDF90);
    sub_1002A1BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC158);
  }

  return result;
}

unint64_t sub_1002A1BC0()
{
  result = qword_1003BC160;
  if (!qword_1003BC160)
  {
    sub_100005EA8(&qword_1003BC128, &qword_1002EDF88);
    sub_10001BAEC(&qword_1003BC168, &qword_1003BC170, &qword_1002EDFC8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC160);
  }

  return result;
}

unint64_t sub_1002A1D00()
{
  result = qword_1003BC178;
  if (!qword_1003BC178)
  {
    sub_100005EA8(&qword_1003BC100, &qword_1002EDF60);
    sub_1002A1D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC178);
  }

  return result;
}

unint64_t sub_1002A1D8C()
{
  result = qword_1003BC180;
  if (!qword_1003BC180)
  {
    sub_100005EA8(&qword_1003BC0F8, &qword_1002EDF58);
    sub_1002A1E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC180);
  }

  return result;
}

unint64_t sub_1002A1E18()
{
  result = qword_1003BC188;
  if (!qword_1003BC188)
  {
    sub_100005EA8(&qword_1003BC0F0, &qword_1002EDF50);
    sub_1002A1938();
    sub_1002A1AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC188);
  }

  return result;
}

uint64_t sub_1002A1EC4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TranslationCardView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1002A1FD4(uint64_t a1)
{
  v3 = *(type metadata accessor for TranslationCardView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1002A1240(a1, v4);
}

unint64_t sub_1002A2044()
{
  result = qword_1003BC220;
  if (!qword_1003BC220)
  {
    sub_100005EA8(&qword_1003BC1C8, &qword_1002EE138);
    sub_10001BAEC(&qword_1003ACA40, &qword_1003AC9E0, &qword_1002D69B8, &protocol conformance descriptor for TipView<A>);
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878, &qword_1002D5BE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC220);
  }

  return result;
}

unint64_t sub_1002A2128()
{
  result = qword_1003BC238;
  if (!qword_1003BC238)
  {
    sub_100005EA8(&qword_1003BC230, &qword_1002EE2B0);
    sub_1002A21AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC238);
  }

  return result;
}

unint64_t sub_1002A21AC()
{
  result = qword_1003BC240;
  if (!qword_1003BC240)
  {
    sub_100005EA8(&qword_1003BC248, &qword_1002EE2B8);
    sub_1002A2238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC240);
  }

  return result;
}

unint64_t sub_1002A2238()
{
  result = qword_1003BC250;
  if (!qword_1003BC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC250);
  }

  return result;
}

unint64_t sub_1002A228C()
{
  result = qword_1003BC258;
  if (!qword_1003BC258)
  {
    sub_100005EA8(&qword_1003BC1E0, &qword_1002EE150);
    sub_100005EA8(&qword_1003BC1D0, &qword_1002EE140);
    sub_100005EA8(&qword_1003AC9D8, &qword_1002D69B0);
    sub_100005EA8(&qword_1003BC228, &qword_1002EE2A8);
    sub_100005EA8(&qword_1003BC1C8, &qword_1002EE138);
    sub_1002A2044();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC258);
  }

  return result;
}

uint64_t sub_1002A244C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002A24EC()
{
  result = qword_1003BC2C0;
  if (!qword_1003BC2C0)
  {
    sub_100005EA8(&qword_1003BC270, &qword_1002EE2E0);
    sub_1002A2578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC2C0);
  }

  return result;
}

unint64_t sub_1002A2578()
{
  result = qword_1003BC2C8;
  if (!qword_1003BC2C8)
  {
    sub_100005EA8(&qword_1003BC268, &qword_1002EE2D8);
    sub_1002A2630();
    sub_10001BAEC(&qword_1003AA930, &qword_1003AA938, &unk_1002D4680, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC2C8);
  }

  return result;
}

unint64_t sub_1002A2630()
{
  result = qword_1003BC2D0;
  if (!qword_1003BC2D0)
  {
    sub_100005EA8(&qword_1003BC260, &qword_1002EE2D0);
    sub_1002A26E8();
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878, &qword_1002D5BE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC2D0);
  }

  return result;
}

unint64_t sub_1002A26E8()
{
  result = qword_1003BC2D8;
  if (!qword_1003BC2D8)
  {
    sub_100005EA8(&qword_1003BC2B8, &qword_1002EE3A8);
    sub_1002A2CF0(&qword_1003BC2E0, &type metadata accessor for SimpleExpandingText, &protocol conformance descriptor for SimpleExpandingText);
    sub_10001BAEC(&qword_1003AA580, &qword_1003AA588, &unk_1002D4A60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC2D8);
  }

  return result;
}

uint64_t sub_1002A27D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B558;

  return sub_10004A464(a1, v4, v5, v6, v7);
}

uint64_t sub_1002A28E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002A2948()
{
  result = qword_1003BC318;
  if (!qword_1003BC318)
  {
    sub_100005EA8(&qword_1003BC2E8, &qword_1002EE418);
    sub_1002A2CF0(&qword_1003B2A40, type metadata accessor for LanguageAwareText, &unk_1002DFDC0);
    sub_10001BAEC(&qword_1003AA580, &qword_1003AA588, &unk_1002D4A60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC318);
  }

  return result;
}

unint64_t sub_1002A2A30()
{
  result = qword_1003BC320;
  if (!qword_1003BC320)
  {
    sub_100005EA8(&qword_1003BC308, &qword_1002EE438);
    sub_1002A2AE8();
    sub_10001BAEC(&qword_1003AA930, &qword_1003AA938, &unk_1002D4680, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC320);
  }

  return result;
}

unint64_t sub_1002A2AE8()
{
  result = qword_1003BC328;
  if (!qword_1003BC328)
  {
    sub_100005EA8(&qword_1003BC300, &qword_1002EE430);
    sub_1002A2B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC328);
  }

  return result;
}

unint64_t sub_1002A2B74()
{
  result = qword_1003BC330;
  if (!qword_1003BC330)
  {
    sub_100005EA8(&qword_1003BC2F8, &qword_1002EE428);
    sub_1002A2C2C();
    sub_10001BAEC(&qword_1003BC340, &qword_1003BC348, &qword_1002EE498, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC330);
  }

  return result;
}

unint64_t sub_1002A2C2C()
{
  result = qword_1003BC338;
  if (!qword_1003BC338)
  {
    sub_100005EA8(&qword_1003BC2F0, &qword_1002EE420);
    sub_1002A2948();
    sub_1002A2CF0(&qword_1003AA3E8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC338);
  }

  return result;
}

uint64_t sub_1002A2CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002A2D58(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, uint64_t))
{
  v6 = *(type metadata accessor for TranslationCardView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2 & 1, v7);
}

uint64_t sub_1002A2DF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41);
}

uint64_t sub_1002A2E30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B16C;

  return sub_10004A464(a1, v4, v5, v6, v7);
}

uint64_t sub_1002A3028()
{
  v1 = type metadata accessor for TranslationCardView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = sub_100005AD4(&qword_1003BC020, &unk_1002EDE90);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  swift_unknownObjectRelease();
  if (*(v0 + v2 + v1[6]))
  {
  }

  v6 = v1[8];
  sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1002A32B8()
{
  sub_100005EA8(&qword_1003BC110, &qword_1002EDF70);
  type metadata accessor for GenderDisambiguationLearnMoreView();
  sub_100005EA8(&qword_1003BC108, &qword_1002EDF68);
  sub_100005EA8(&qword_1003BC100, &qword_1002EDF60);
  sub_1002A1D00();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1002A2CF0(&qword_1003AC918, &type metadata accessor for GenderDisambiguationLearnMoreView, &protocol conformance descriptor for GenderDisambiguationLearnMoreView);
  return swift_getOpaqueTypeConformance2();
}

double sub_1002A3448@<D0>(_OWORD *a1@<X8>)
{
  sub_10027A9FC();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1002A3498(void *a1)
{
  sub_10027A9FC();

  return EnvironmentValues.subscript.setter();
}

void sub_1002A34F8(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_1002B2198, v8);
}

id sub_1002A35CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_1002A36B0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 194);
}

void sub_1002A3780(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 241);
}

void sub_1002A3864(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_100068910();
}

double sub_1002A38DC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002B2220(&qword_1003AC930, type metadata accessor for CardMetrics, &unk_1002D73AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

uint64_t sub_1002A39AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_1002A3A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void sub_1002A3A88(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_getKeyPath();
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = [*(a2 + 72) objectID];
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }
}

Swift::Int sub_1002A3BAC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    swift_getKeyPath();
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = [*(v2 + 72) objectID];
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  return Hasher._finalize()();
}

uint64_t sub_1002A3CA0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
  v48 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
  v49 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8];
  if (v49)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (LOBYTE(aBlock[0]) == 1)
    {

      sub_1000663B0(0);
    }

    goto LABEL_20;
  }

  v3 = &v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryHighlightRect];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v4 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryTextView];
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryTextView] = 0;

  v5 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController];
  if (!v5)
  {
    v14 = [v0 presentedViewController];
    if (v14)
    {
      v15 = v14;
      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000078E8(v16, qword_1003D27A0);
      v6 = v15;
      v8 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v8, v17))
      {
        goto LABEL_8;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136446210;
      swift_getObjectType();
      v20 = _typeName(_:qualified:)();
      v22 = sub_10028D78C(v20, v21, aBlock);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v8, v17, "Couldn't find dictionaryController to dismiss but have presented view controller: %{public}s; not attempting to dismiss it though since it might not be a dictionaryController", v18, 0xCu);
      sub_100008664(v19);
    }

    else
    {
      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000078E8(v23, qword_1003D27A0);
      v6 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v6, v24, "Unable to find any dictionary view controller to dismiss", v25, 2u);
      }
    }

    goto LABEL_19;
  }

  v6 = v5;
  v7 = [v6 presentingViewController];
  v8 = v6;
  if (v7)
  {
    v9 = v7;

    v8 = v9;
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1002B1D18;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_10038C3E8;
  v13 = _Block_copy(aBlock);

  [v8 dismissViewControllerAnimated:1 completion:v13];
  _Block_release(v13);
LABEL_8:

LABEL_19:
  sub_1002AD7A4(1, 1);
LABEL_20:
  v26 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore];
  if (v26 >> 62)
  {
    goto LABEL_54;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:

  if (v27)
  {
    v28 = 0;
    v29 = 0;
    v52 = v26 & 0xFFFFFFFFFFFFFF8;
    v53 = v26 & 0xC000000000000001;
    v50 = v26;
    v51 = v27;
    while (1)
    {
      if (v53)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v32 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }
      }

      else
      {
        if (v28 >= *(v52 + 16))
        {
          __break(1u);
LABEL_54:
          v27 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_22;
        }

        v31 = *(v26 + 8 * v28 + 32);

        v32 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_44;
        }
      }

      v33 = *(v2 + 1);
      v34 = v33 != 0;
      if (!v33)
      {
        goto LABEL_33;
      }

      v54 = v29;
      v35 = v2;
      v36 = *v2;
      swift_getKeyPath();
      aBlock[0] = v31;
      sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
      swift_bridgeObjectRetain_n();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v37 = [*(v31 + 72) identifier];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      if (v36 == v38 && v33 == v40)
      {
        break;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      swift_bridgeObjectRelease_n();
      if ((v41 & 1) == *(v31 + 241))
      {
        v42 = (v31 + 241);
        v34 = v41;
        v2 = v35;
        v26 = v50;
        v29 = v54;
        goto LABEL_39;
      }

      v34 = v41;
      v2 = v35;
      v29 = v54;
LABEL_37:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      aBlock[0] = v31;
      sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v26 = v50;
LABEL_40:
      v44 = *(v31 + 194);
      if (v34 == v44)
      {
        *(v31 + 194) = v34;
        sub_1000458A4(v44);
      }

      else
      {
        v30 = swift_getKeyPath();
        __chkstk_darwin(v30);
        aBlock[0] = v31;
        sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      ++v28;
      if (v32 == v51)
      {
        goto LABEL_45;
      }
    }

    swift_bridgeObjectRelease_n();
    v2 = v35;
    v26 = v50;
    v29 = v54;
LABEL_33:
    v41 = 1;
    if (*(v31 + 241))
    {
      v42 = (v31 + 241);
LABEL_39:
      *v42 = v41 & 1;
      goto LABEL_40;
    }

    goto LABEL_37;
  }

LABEL_45:

  if (v49)
  {
    if (v48 == 0xD000000000000025 && v49 == 0x80000001002FD660)
    {
      v45 = 1;
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v46 = v45;
  }

  else
  {
    v45 = 0;
    v46 = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = v45 & 1;
  swift_retain_n();
  static Published.subscript.setter();
  sub_100068910();

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = v46 & 1;

  static Published.subscript.setter();
  return sub_1002A8F4C(0);
}

uint64_t sub_1002A4620(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x616E6F6974636964;
  v4 = 0xEA00000000007972;
  if (v2 != 1)
  {
    v3 = 0x6F68706F7263696DLL;
    v4 = 0xEA0000000000656ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6472616F6279656BLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x616E6F6974636964;
  v8 = 0xEA00000000007972;
  if (*a2 != 1)
  {
    v7 = 0x6F68706F7263696DLL;
    v8 = 0xEA0000000000656ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6472616F6279656BLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
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

Swift::Int sub_1002A4734()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A47E0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002A4878(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002A4920@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002B1E90(*a1);
  *a2 = result;
  return result;
}

void sub_1002A4950(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA00000000007972;
  v5 = 0x616E6F6974636964;
  if (v2 != 1)
  {
    v5 = 0x6F68706F7263696DLL;
    v4 = 0xEA0000000000656ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6472616F6279656BLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

char *sub_1002A49B8(uint64_t a1)
{
  v68 = sub_100005AD4(&unk_1003BC4E0, &unk_1002E47F0);
  v65 = *(v68 - 8);
  __chkstk_darwin(v68);
  v63 = v52 - v3;
  v66 = sub_100005AD4(&unk_1003B8DA0, &qword_1002D7910);
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = v52 - v4;
  v5 = sub_100005AD4(&unk_1003BC4F0, &qword_1002EEAF8);
  v69 = *(v5 - 8);
  v70 = v5;
  __chkstk_darwin(v5);
  v67 = v52 - v6;
  v7 = sub_100005AD4(&qword_1003B23F0, &unk_1002D7900);
  __chkstk_darwin(v7 - 8);
  v9 = v52 - v8;
  v56 = sub_100005AD4(&qword_1003BC500, &qword_1002D9D80);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v11 = v52 - v10;
  v59 = sub_100005AD4(&qword_1003BC508, &qword_1002EEB00);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v13 = v52 - v12;
  v61 = sub_100005AD4(&qword_1003BC510, &unk_1002EEB08);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v15 = v52 - v14;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource] = 0;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v16 = sub_10011ED3C(_swiftEmptyArrayStorage);
    }

    else
    {
      v16 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v16 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_observers] = v16;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore] = _swiftEmptyArrayStorage;
  v17 = &v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
  *v17 = 0;
  v17[1] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController] = 0;
  v18 = &v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryHighlightRect];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryTextView] = 0;
  v19 = &v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pendingDictionaryModeIdentifier];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_entryCardStaticIdentifier];
  *v20 = 0xD000000000000018;
  v20[1] = 0x80000001002FD730;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pinComposeCardToKeyboard] = 0;
  v21 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_bottomInsetReasonToHeightMap;
  *&v1[v21] = sub_100292B54(_swiftEmptyArrayStorage);
  v22 = &v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_lastKnownKeyboardFrame];
  *v22 = 0u;
  v22[1] = 0u;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_keyboardIsVisible] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_translationViewModel] = a1;
  v23 = type metadata accessor for TranslationListController();
  v76.receiver = v1;
  v76.super_class = v23;

  v72 = objc_msgSendSuper2(&v76, "initWithNibName:bundle:", 0, 0);
  v73 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_translationViewModel;
  v24 = v72;
  v71 = a1;
  swift_beginAccess();
  v25 = v24;

  sub_100005AD4(&qword_1003B8CB0, qword_1002EDBC0);
  Published.projectedValue.getter();
  swift_endAccess();

  sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
  v26 = static OS_dispatch_queue.main.getter();
  aBlock[0] = v26;
  v27 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v28 = *(v27 - 8);
  v54 = *(v28 + 56);
  v55 = v28 + 56;
  v54(v9, 1, 1, v27);
  v53 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_10001BAEC(&qword_1003AEAE0, &qword_1003BC500, &qword_1002D9D80, &protocol conformance descriptor for Published<A>.Publisher);
  v52[1] = sub_100051450();
  v29 = v56;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v9, &qword_1003B23F0, &unk_1002D7900);

  (*(v57 + 8))(v11, v29);
  *(swift_allocObject() + 16) = v25;
  v30 = v25;
  sub_100005AD4(&qword_1003BC518, &qword_1002EEB18);
  sub_10001BAEC(&qword_1003BC520, &qword_1003BC508, &qword_1002EEB00, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v31 = v59;
  Publisher.map<A>(_:)();

  (*(v58 + 8))(v13, v31);
  v32 = swift_allocObject();
  v33 = v71;
  *(v32 + 16) = v30;
  *(v32 + 24) = v33;
  sub_10001BAEC(&unk_1003BC528, &qword_1003BC510, &unk_1002EEB08, &protocol conformance descriptor for Publishers.Map<A, B>);

  v34 = v30;
  v35 = v61;
  Publisher<>.sink(receiveValue:)();

  (*(v60 + 8))(v15, v35);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();

  sub_100005AD4(&unk_1003B8DF0, &unk_1002D7960);
  v36 = v63;
  Published.projectedValue.getter();
  swift_endAccess();

  v37 = static OS_dispatch_queue.main.getter();
  aBlock[0] = v37;
  v54(v9, 1, 1, v27);
  sub_10001BAEC(&qword_1003AD900, &unk_1003BC4E0, &unk_1002E47F0, v53);
  v38 = v62;
  v39 = v68;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v9, &qword_1003B23F0, &unk_1002D7900);

  (*(v65 + 8))(v36, v39);
  sub_10001BAEC(&qword_1003B8E00, &unk_1003B8DA0, &qword_1002D7910, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v40 = v66;
  v41 = v67;
  Publisher<>.removeDuplicates()();
  (*(v64 + 8))(v38, v40);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001BAEC(&qword_1003BC538, &unk_1003BC4F0, &qword_1002EEAF8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v42 = v70;
  Publisher<>.sink(receiveValue:)();

  (*(v69 + 8))(v41, v42);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v43 = [objc_opt_self() defaultCenter];
  v44 = [objc_opt_self() mainQueue];
  v45 = swift_allocObject();
  *(v45 + 16) = v34;
  aBlock[4] = sub_1002B2964;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100213518;
  aBlock[3] = &unk_10038C888;
  v46 = _Block_copy(aBlock);
  v47 = v34;

  v48 = [v43 addObserverForName:UIKeyboardWillChangeFrameNotification object:0 queue:v44 usingBlock:v46];
  _Block_release(v46);
  swift_unknownObjectRelease();

  v74[1] = &off_10038C338;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v49 = v47;

  sub_1000CC8A4(v74, v49);
  swift_endAccess();

  sub_100005AD4(&qword_1003AFCD0, &unk_1002DC350);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1002D3160;
  *(v50 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v50 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100005AD4(&qword_1003AFCD8, &unk_1002DC360);
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v49;
}

unint64_t sub_1002A5728@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *result;
  if (*result >> 62)
  {
    goto LABEL_37;
  }

  v4 = *((*result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v4)
  {
LABEL_32:
    *a3 = _swiftEmptyArrayStorage;
    return result;
  }

  v19 = a3;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    result = 0;
    v22 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore;
    v21 = v4;
    do
    {
      if (__OFADD__(result, 1))
      {
        goto LABEL_35;
      }

      v24 = result + 1;
      if ((v20 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (result >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v5 = *(v20 + 32 + 8 * result);
      }

      v25 = v5;
      v6 = *(a2 + v22);
      if (v6 >> 62)
      {
        a3 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        a3 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a3)
      {
        v7 = 0;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v9 = (v7 + 1);
            if (__OFADD__(v7, 1))
            {
              goto LABEL_33;
            }
          }

          else
          {
            if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_34;
            }

            v8 = *(v6 + 8 * v7 + 32);

            v9 = (v7 + 1);
            if (__OFADD__(v7, 1))
            {
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              result = _CocoaArrayWrapper.endIndex.getter();
              v4 = result;
              goto LABEL_3;
            }
          }

          swift_getKeyPath();
          sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v10 = [*(v8 + 72) identifier];
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v12;

          v14 = [v25 identifier];
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          if (v11 == v15 && v13 == v17)
          {

            goto LABEL_7;
          }

          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {

            goto LABEL_7;
          }

          ++v7;
        }

        while (v9 != a3);
      }

      sub_1002A9FAC(v25);

LABEL_7:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      a3 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      result = v24;
    }

    while (v24 != v21);
    a3 = v19;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A5AA0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore;
  v7 = *(a2 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore);
  if (v7 >> 62)
  {
    v13 = v5;
    v8 = _CocoaArrayWrapper.endIndex.getter();
    v5 = v13;
    if (!(v13 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(v5 >> 62))
    {
LABEL_3:
      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v14 = v5;
  v9 = _CocoaArrayWrapper.endIndex.getter();
  v5 = v14;
LABEL_4:
  *(a2 + v6) = v5;

  v10 = OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_newTranslationFromPunchOut;
  if (*(a3 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_newTranslationFromPunchOut))
  {
    v11 = 2;
  }

  else if (v8 < v9)
  {
    v11 = *(a2 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_keyboardIsVisible);
  }

  else
  {
    v11 = 0;
  }

  result = sub_1002A8F4C(v11);
  *(a3 + v10) = 0;
  return result;
}

void sub_1002A5B9C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      v5 = (Strong + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
      v6 = *(Strong + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8);
      *v5 = 0;
      v5[1] = 0;
      if (v6)
      {
        sub_1002A3CA0();
      }
    }

    v7 = v4;
    v8 = [v7 traitCollection];
    sub_1000E85EC();
    UITraitCollection.subscript.getter();

    v9 = v7;
    if ((v13 & 1) == 0)
    {
      v10 = [v7 parentViewController];

      if (!v10)
      {
LABEL_9:
        v11 = sub_10000A2CC(0, &qword_1003AFCF0, UIView_ptr);
        __chkstk_darwin(v11);
        v12 = v7;
        static Animation.default.getter();
        static UIView.animate(with:changes:completion:)();

        return;
      }

      v9 = [v10 navigationItem];

      [v9 setLargeTitleDisplayMode:0];
    }

    goto LABEL_9;
  }
}

void sub_1002A5D7C(char *a1, char a2, double a3)
{
  sub_1002AD208(2, 0, a3);
  if (a2)
  {
    v5 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView;
    v6 = *&a1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView];
    if (v6)
    {
      [v6 contentSize];
      v8 = *&a1[v5];
      if (!v8)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v9 = v7;
      [v8 frame];
      MaxY = CGRectGetMaxY(v36);
      v11 = *&a1[v5];
      if (!v11)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v12 = MaxY;
      [v11 adjustedContentInset];
      v14 = *&a1[v5];
      if (!v14)
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      v15 = v13;
      [v14 adjustedContentInset];
      v17 = v16;
      v18 = [a1 traitCollection];
      sub_1000E85EC();
      UITraitCollection.subscript.getter();

      if (v35)
      {
        goto LABEL_18;
      }

      v19 = [a1 parentViewController];
      if (!v19)
      {
        goto LABEL_18;
      }

      v20 = v19;
      v21 = [v19 navigationController];

      if (!v21)
      {
        goto LABEL_18;
      }

      v22 = [v21 navigationBar];

      if (!v22)
      {
        goto LABEL_18;
      }

      sub_1002C21EC();
      if ((v23 & 1) == 0)
      {
LABEL_17:

LABEL_18:
        sub_1002A6BD8(0);
        return;
      }

      sub_1002C23E4();
      if (v24 >= 0.0)
      {
        v25 = v9 - (v12 - v15 - v17);
        if (v25 >= 0.0 && v25 <= v24)
        {
          v27 = [a1 parentViewController];
          if (v27)
          {
            v28 = v27;
            v29 = [v27 navigationItem];

            [v29 setLargeTitleDisplayMode:2];
          }

          v30 = *&a1[v5];
          if (v30)
          {
            v31 = v30;
            [v31 contentOffset];
            v33 = v32;
            sub_1002C23E4();
            [v31 setContentOffset:0 animated:{0.0, v33 + v34 + 5.0}];

            return;
          }

          goto LABEL_29;
        }

        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }
}

void sub_1002A5FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = &Strong[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
    v6 = *&Strong[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8];
    *v5 = 0;
    *(v5 + 1) = 0;
    if (v6)
    {
      sub_1002A3CA0();
    }

    else
    {
    }
  }
}

void sub_1002A6088()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setAutoresizingMask:18];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v6];

  sub_1002A7924();
}

double sub_1002A6234(char a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranslationListController();
  v12.receiver = v1;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  sub_1002A8F4C(0);
  v8 = *(*&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_translationViewModel] + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_currentSelfLoggingInvocation);

  UUID.init()();
  v9 = OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_tabSessionId;
  swift_beginAccess();
  (*(v4 + 40))(v8 + v9, v6, v3);
  swift_endAccess();
  *(v8 + OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_hasLoggedGenderCoreAnalytics) = 0;

  return result;
}

void sub_1002A63D8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for TranslationListController();
  objc_msgSendSuper2(&v14, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ((sub_1002A6528() & 1) == 0)
  {
    if (qword_1003A9230 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000078E8(v8, qword_1003D27A0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Dismissing Dictionary Mode due to rotation/size change in a configuration we can't properly move the highlight", v11, 2u);
    }

    v12 = &v4[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
    v13 = *&v4[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8];
    *v12 = 0;
    *(v12 + 1) = 0;
    if (v13)
    {
      sub_1002A3CA0();
    }
  }
}

uint64_t sub_1002A6528()
{
  v1 = type metadata accessor for Locale();
  v2 = __chkstk_darwin(v1);
  v3 = __chkstk_darwin(v2);
  v7 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8);
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
  v9 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore);
  v41 = v5;
  v42 = v3;
  v39 = v6;
  v40 = &v38 - v4;
  if (v9 >> 62)
  {
LABEL_28:
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v10)
  {
LABEL_19:

LABEL_24:
    v35 = 0;
    return v35 & 1;
  }

  v11 = 0;
  v45 = v9 & 0xFFFFFFFFFFFFFF8;
  v46 = v9 & 0xC000000000000001;
  while (1)
  {
    if (v46)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v11 >= *(v45 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v12 = *(v9 + 8 * v11 + 32);

      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_18;
      }
    }

    swift_getKeyPath();
    v14 = OBJC_IVAR____TtC17SequoiaTranslator29CommittedTranslationViewModel___observationRegistrar;
    v47 = v12;
    v43 = sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
    v44 = v14;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = v12;
    v16 = [*(v12 + 72) identifier];
    v17 = v7;
    v18 = v8;
    v19 = v16;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v8 = v18;
    v7 = v17;
    if (v20 == v8 && v17 == v22)
    {

      goto LABEL_22;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      break;
    }

    ++v11;
    if (v13 == v10)
    {
      goto LABEL_19;
    }
  }

LABEL_22:

  swift_getKeyPath();
  v47 = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v15 + 72);
  v26 = v40;
  dispatch thunk of PersistedTranslation.sourceLocale.getter();
  v27 = v39;
  dispatch thunk of PersistedTranslation.targetLocale.getter();
  v28 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v30 = Locale._bridgeToObjectiveC()().super.isa;
  v31 = [v28 initWithSourceLocale:isa targetLocale:v30];

  v32 = v42;
  v33 = *(v41 + 8);
  v33(v27, v42);
  v33(v26, v32);
  v34 = [v31 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v34) = Locale.isRTL()();
  v33(v26, v32);
  if (v34)
  {

    goto LABEL_24;
  }

  v37 = [v31 targetLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v37) = Locale.isRTL()();

  v33(v26, v32);
  v35 = v37 ^ 1;
  return v35 & 1;
}

void sub_1002A6A70()
{
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pinComposeCardToKeyboard) != 1)
  {
    return;
  }

  sub_1002A6BD8(0);
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore);
  if (v1 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v2 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView;
  v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_16;
  }

  [v3 layoutIfNeeded];
  v4 = *(v0 + v2);
  if (!v4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v4 contentOffset];
  v7 = *(v0 + v2);
  if (!v7)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  v10 = v7;
  v11 = [v10 traitCollection];
  [v11 displayScale];
  v13 = v12;

  v14 = 16.0;
  if (v13 != 0.0)
  {
    v14 = sub_1000FBCB4(v13 * 16.0) / v13;
  }

  v15 = *(v0 + v2);
  if (!v15)
  {
    goto LABEL_18;
  }

  [v15 setContentOffset:0 animated:{v8, v9 + v14}];
}

uint64_t sub_1002A6BD8(char a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&unk_1003AB970, &unk_1002DD540);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource);
  if (v11)
  {
    v12 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_entryCardStaticIdentifier + 8);
    v18[0] = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_entryCardStaticIdentifier);
    v18[1] = v12;
    v13 = v11;

    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      result = (*(v8 + 32))(v10, v6, v7);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  IndexPath.init(row:section:)();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result != 1)
  {
    result = sub_100009EBC(v6, &unk_1003AB970, &unk_1002DD540);
  }

LABEL_7:
  v15 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
  if (v15)
  {
    v16 = v15;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v16 scrollToItemAtIndexPath:isa atScrollPosition:4 animated:a1 & 1];

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002A6E50(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView;
    v10 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
    if (!v10)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v11 = v8;
    v12 = v10;
    v13 = dispatch thunk of UICollectionViewDiffableDataSource.numberOfSections(in:)();

    if (v13 >= 1)
    {
      v14 = *(v2 + v9);
      if (!v14)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v15 = v14;
      v16 = dispatch thunk of UICollectionViewDiffableDataSource.collectionView(_:numberOfItemsInSection:)();

      if (v16 >= 1)
      {
        v17 = *(v2 + v9);
        if (!v17)
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        v18 = v17;
        v19 = dispatch thunk of UICollectionViewDiffableDataSource.collectionView(_:numberOfItemsInSection:)();

        if (!__OFSUB__(v19, 1))
        {
          IndexPath.init(item:section:)();
          v20 = *(v2 + v9);
          if (v20)
          {
            v21 = v20;
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            [v21 scrollToItemAtIndexPath:isa atScrollPosition:4 animated:a1 & 1];

            (*(v5 + 8))(v7, v4);
            return;
          }

          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_19;
      }
    }
  }

  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000078E8(v23, qword_1003D28C0);
  v28 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v28, v24, "Couldn't scroll to the last translation card", v25, 2u);
  }

  v26 = v28;
}

void *sub_1002A7118(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100005AD4(&qword_1003BC440, &unk_1002EE9B8);
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v12 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for UICollectionLayoutListConfiguration();
  v16 = *(v41 - 8);
  __chkstk_darwin(v41);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v12);
  UICollectionLayoutListConfiguration.init(appearance:)();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  sub_10000A2CC(0, &unk_1003B0730, NSCollectionLayoutSection_ptr);
  result = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  v20 = result;
  if (a1 == 1)
  {
    [result contentInsets];
    [v20 setContentInsets:0.0];
    v28 = v41;
LABEL_16:
    (*(v16 + 8))(v18, v28);
    return v20;
  }

  if (a1)
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000078E8(v34, qword_1003D28C0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    v37 = os_log_type_enabled(v35, v36);
    v28 = v41;
    if (v37)
    {
      v38 = swift_slowAlloc();
      *v38 = 134349056;
      *(v38 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to get section for index %{public}ld; data might be malformed", v38, 0xCu);
    }

    goto LABEL_16;
  }

  v21 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
  if (v21)
  {
    v22 = v21;
    v23 = [v22 traitCollection];
    [v23 displayScale];
    v25 = v24;

    v26 = 16.0;
    if (v25 != 0.0)
    {
      v26 = sub_1000FBCB4(v25 * 16.0) / v25;
    }

    [v20 setInterGroupSpacing:{v26, v39}];
    v27 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource);
    v29 = v40;
    v28 = v41;
    if (v27)
    {
      v30 = v27;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v31 = v9;
      v32 = v39;
      (*(v29 + 32))(v11, v31, v39);
      v42 = 0;
      v33 = *(NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)() + 16);

      if (!v33)
      {
        [v20 contentInsets];
        [v20 setContentInsets:0.0];
        [v20 contentInsets];
        [v20 setContentInsets:?];
      }

      (*(v29 + 8))(v11, v32);
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1002A7604(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *&result[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource];
    if (v4 && (v5 = v4, dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)(), v5, v19))
    {
      v6 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore];
      v17 = v3;
      if (v6 >> 62)
      {
        goto LABEL_29;
      }

      v3 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

      if (v3)
      {
        v7 = 0;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v9 = (v7 + 1);
            if (__OFADD__(v7, 1))
            {
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          else
          {
            if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_29:
              v3 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_6;
            }

            v8 = *(v6 + 8 * v7 + 32);

            v9 = (v7 + 1);
            if (__OFADD__(v7, 1))
            {
              goto LABEL_20;
            }
          }

          swift_getKeyPath();
          sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v10 = [*(v8 + 72) identifier];
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v12;

          if (v11 == v18 && v19 == v13)
          {

LABEL_27:

            v16 = sub_1002ADD68(v8);

            return v16;
          }

          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v15)
          {

            goto LABEL_27;
          }

          ++v7;
        }

        while (v9 != v3);
      }
    }

    else
    {
LABEL_21:
    }

    return 0;
  }

  return result;
}

void *sub_1002A78A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = sub_1002A7118(a1, a2);

  return v7;
}

void sub_1002A7924()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v30[4] = sub_1002B264C;
  v30[5] = v11;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 1107296256;
  v30[2] = sub_1002A3A0C;
  v30[3] = &unk_10038C758;
  v13 = _Block_copy(v30);
  v14 = [v12 initWithSectionProvider:v13];
  _Block_release(v13);

  v15 = [objc_allocWithZone(UICollectionView) initWithFrame:v14 collectionViewLayout:{v4, v6, v8, v10}];

  v16 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView;
  v17 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView];
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView] = v15;
  v18 = v15;

  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v18 setAutoresizingMask:18];

  v19 = *&v0[v16];
  if (!v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 systemGroupedBackgroundColor];
  [v21 setBackgroundColor:v22];

  v23 = *&v0[v16];
  if (!v23)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v23 setKeyboardDismissMode:2];
  v24 = *&v0[v16];
  if (!v24)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v24 setAllowsSelection:0];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!*&v0[v16])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = v25;
  [v25 addSubview:?];

  v27 = *&v0[v16];
  if (!v27)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v27 setTag:204];
  v28 = *&v0[v16];
  if (v28)
  {
    v29 = [v28 keyboardLayoutGuide];
    [v29 setUsesBottomSafeArea:0];

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_1002A7C00()
{
  v1 = sub_100005AD4(&qword_1003BC458, &qword_1002EE9C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v4);
  v34 = &v30 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v30 - v8;
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  *(swift_allocObject() + 16) = v0;
  sub_10000A2CC(0, &qword_1003BC460, UICollectionViewListCell_ptr);
  v12 = v0;
  v13 = v11;
  UICollectionView.CellRegistration.init(handler:)();
  *(swift_allocObject() + 16) = v12;
  v14 = v12;
  UICollectionView.CellRegistration.init(handler:)();
  v33 = *&v14[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView];
  if (v33)
  {
    v15 = *(v2 + 16);
    v16 = v34;
    v32 = v13;
    v15(v34, v13, v1);
    v17 = v35;
    v15(v35, v9, v1);
    v18 = *(v2 + 80);
    v19 = (v18 + 24) & ~v18;
    v20 = (v3 + v18 + v19) & ~v18;
    v21 = swift_allocObject();
    *(v21 + 16) = v14;
    v31 = v9;
    v22 = *(v2 + 32);
    v22(v21 + v19, v16, v1);
    v22(v21 + v20, v17, v1);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1002B24A4;
    *(v23 + 24) = v21;
    v24 = objc_allocWithZone(sub_100005AD4(&qword_1003BC468, &qword_1002EE9D0));
    v25 = v14;
    v26 = v33;
    v27 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v28 = *(v2 + 8);
    v28(v31, v1);
    v28(v32, v1);
    v29 = *&v25[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource];
    *&v25[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource] = v27;
  }

  else
  {
    __break(1u);
  }
}

void sub_1002A7F74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v27[2] = a4;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005AD4(&unk_1003BC4C0, &qword_1002DD790);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v27 - v16;
  v18 = *a3;
  if (IndexPath.section.getter())
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000078E8(v19, qword_1003D28C0);
    (*(v8 + 16))(v10, a2, v7);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134349056;
      v23 = IndexPath.section.getter();
      (*(v8 + 8))(v10, v7);
      *(v22 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v20, v21, "Malformed data: we are asked to configure a cell for a section that cannot exist: %{public}ld", v22, 0xCu);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    v27[1] = a1;
    if (v18)
    {
      __chkstk_darwin(0);
      v27[-2] = v18;
      v27[-1] = v24;
      type metadata accessor for TranslationCardView(0);
      sub_1002B2220(&qword_1003B07B0, type metadata accessor for TranslationCardView, &unk_1002EDEE8);

      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      UIHostingConfiguration.margins(_:_:)();
      v25 = *(v12 + 8);
      v25(v15, v11);
      v28[3] = v11;
      v28[4] = sub_10001BAEC(&qword_1003BC4D0, &unk_1003BC4C0, &qword_1002DD790, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
      v26 = sub_100050D60(v28);
      (*(v12 + 16))(v26, v17, v11);
      UICollectionViewCell.contentConfiguration.setter();

      v25(v17, v11);
    }
  }
}

uint64_t sub_1002A8378@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for SharedTranslationOptions(0);
  sub_1002B2220(&qword_1003AE918, type metadata accessor for SharedTranslationOptions, &unk_1002E997C);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  KeyPath = swift_getKeyPath();
  v9 = type metadata accessor for TranslationCardView(0);
  *(a3 + v9[8]) = KeyPath;
  sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CommittedTranslationViewModel(0);
  sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  v10 = a2;

  Bindable<A>.init(wrappedValue:)();
  v11 = (a3 + v9[5]);
  *v11 = a2;
  v11[1] = &off_10038C348;
  v12 = (a3 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a3 + v9[7]);
  *v13 = v5;
  v13[1] = v7;
  v14 = (a3 + v9[9]);
  type metadata accessor for SceneContext(0);
  sub_1002B2220(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
  *v14 = EnvironmentObject.init()();
  v14[1] = v15;
  v16 = a3 + v9[10];
  State.init(wrappedValue:)();
  *v16 = v19;
  *(v16 + 8) = v20;
  v17 = v9[11];
  result = Image.init(systemName:)();
  *(a3 + v17) = result;
  return result;
}

void sub_1002A8594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005AD4(&qword_1003BC470, &qword_1002EE9D8);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v28[-1] - v16;
  __chkstk_darwin(v15);
  v19 = &v28[-1] - v18;
  if (IndexPath.section.getter() == 1)
  {
    __chkstk_darwin(1);
    *(&v27 - 2) = a4;
    type metadata accessor for ComposeTranslationCardView(0);
    sub_1002B2220(&qword_1003BC478, type metadata accessor for ComposeTranslationCardView, &unk_1002D66A8);
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    UIHostingConfiguration.margins(_:_:)();
    v20 = *(v11 + 8);
    v20(v14, v10);
    UIHostingConfiguration.animatedSizeInvalidationDisabled()();
    v20(v17, v10);
    v28[3] = v10;
    v28[4] = sub_10001BAEC(&unk_1003BC480, &qword_1003BC470, &qword_1002EE9D8, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    v21 = sub_100050D60(v28);
    (*(v11 + 16))(v21, v19, v10);
    UICollectionViewCell.contentConfiguration.setter();
    v20(v19, v10);
  }

  else
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000078E8(v22, qword_1003D28C0);
    (*(v7 + 16))(v9, a2, v6);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134349056;
      v26 = IndexPath.section.getter();
      (*(v7 + 8))(v9, v6);
      *(v25 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v23, v24, "Malformed data: we are asked to configure a cell for a section that cannot exist: %{public}ld", v25, 0xCu);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_1002A89B8@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ConversationContext(0);
  sub_1002B2220(&unk_1003BC490, type metadata accessor for ConversationContext, &unk_1002D86C0);

  v3 = EnvironmentObject.init()();
  v5 = v4;
  type metadata accessor for SceneContext(0);
  sub_1002B2220(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
  v6 = EnvironmentObject.init()();
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = type metadata accessor for ComposeTranslationCardView(0);
  v11 = (a2 + v10[5]);
  *v11 = v3;
  v11[1] = v5;
  v12 = (a2 + v10[6]);
  *v12 = v6;
  v12[1] = v8;
  v13 = (a2 + v10[7]);
  type metadata accessor for ComposeTranslationViewModel(0);
  sub_1002B2220(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel, &unk_1002D73F8);
  *v13 = ObservedObject.init(wrappedValue:)();
  v13[1] = v14;
  v15 = (a2 + v10[8]);
  type metadata accessor for LanguagesService();
  sub_1002B2220(&unk_1003ABC30, &type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
  *v15 = ObservedObject.init(wrappedValue:)();
  v15[1] = v16;
  v17 = a2 + v10[9];
  *v17 = FocusState.init<>()() & 1;
  *(v17 + 1) = v18;
  v17[16] = v19 & 1;
  v20 = a2 + v10[10];
  State.init(wrappedValue:)();
  *v20 = v24;
  *(v20 + 1) = v25;
  v21 = a2 + v10[11];
  *v21 = KeyPath;
  *(v21 + 1) = 0;
  v21[16] = 0;
  sub_10005C738();
  result = ScaledMetric.init(wrappedValue:)();
  v23 = (a2 + v10[13]);
  *v23 = sub_10005B118;
  v23[1] = 0;
  return result;
}

uint64_t sub_1002A8C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (IndexPath.section.getter())
  {
    sub_10000A2CC(0, &qword_1003BC460, UICollectionViewListCell_ptr);
    return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  else
  {
    v11 = *(a5 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore);
    if (v11 >> 62)
    {
      goto LABEL_24;
    }

    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

    if (v12)
    {
      v13 = 0;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:

LABEL_21:

            sub_10000A2CC(0, &qword_1003BC460, UICollectionViewListCell_ptr);

            v22 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

            return v22;
          }
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_24:
            v12 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_5;
          }

          v14 = *(v11 + 8 * v13 + 32);

          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_19;
          }
        }

        swift_getKeyPath();
        sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v16 = [*(v14 + 72) identifier];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        if (v17 == a3 && v19 == a4)
        {
          goto LABEL_20;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {
          goto LABEL_21;
        }

        ++v13;
      }

      while (v15 != v12);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002A8F4C(int a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003BC440, &unk_1002EE9B8);
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v59 - v5;
  sub_1002B22FC();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10037D6A8);
  sub_100005AD4(&unk_1003BA780, &qword_1002D6240);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002D3160;
  v8 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_entryCardStaticIdentifier + 8);
  *(v7 + 32) = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_entryCardStaticIdentifier);
  *(v7 + 40) = v8;
  LOBYTE(v68[0]) = 1;

  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  v64 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore;
  v9 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore);
  swift_bridgeObjectRetain_n();
  v68[0] = sub_1002C08E8(v9);
  sub_1002B00F0(v68);
  v60 = a1;

  v10 = v68[0];
  v62 = v6;
  v63 = v4;
  v65 = v2;
  if (v68[0] < 0 || (v68[0] & 0x4000000000000000) != 0)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_14:

    goto LABEL_15;
  }

  v11 = *(v68[0] + 16);
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_4:
  v68[0] = _swiftEmptyArrayStorage;
  sub_1000C4B4C(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
LABEL_69:
    v36 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_38;
  }

  v12 = 0;
  v13 = v68[0];
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v10 + 8 * v12 + 32);
    }

    swift_getKeyPath();
    v67 = v14;
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = [*(v14 + 72) identifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v68[0] = v13;
    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1000C4B4C((v19 > 1), v20 + 1, 1);
      v13 = v68[0];
    }

    ++v12;
    *(v13 + 16) = v20 + 1;
    v21 = v13 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
  }

  while (v11 != v12);

  v2 = v65;
LABEL_15:
  LOBYTE(v68[0]) = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  v10 = *(v2 + v64);
  if (v10 >> 62)
  {
    goto LABEL_67;
  }

  v22 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
  v23 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pendingDictionaryModeIdentifier;

  if (v22)
  {
    v24 = 0;
    v25 = (v65 + v23);
    v66 = v10 & 0xC000000000000001;
    do
    {
      if (v66)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_31:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v24 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          v22 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_17;
        }

        v26 = *(v10 + 8 * v24 + 32);

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_31;
        }
      }

      swift_getKeyPath();
      v68[0] = v26;
      sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v28 = [*(v26 + 72) identifier];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = v25[1];
      if (v32)
      {
        if (v29 == *v25 && v32 == v31)
        {

          goto LABEL_34;
        }

        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v33)
        {

LABEL_34:
          v34 = 1;
          goto LABEL_35;
        }
      }

      else
      {
      }

      ++v24;
    }

    while (v27 != v22);
  }

  v34 = 0;
LABEL_35:
  v35 = v65;
  v2 = (v65 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
  if (!*(v65 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8))
  {
    v46 = 0;
    v48 = v62;
    v47 = v63;
    goto LABEL_58;
  }

  v10 = *(v65 + v64);
  v59 = v34;
  if (v10 >> 62)
  {
    goto LABEL_69;
  }

  v36 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_38:

  if (!v36)
  {
LABEL_53:

    v46 = 1;
    goto LABEL_57;
  }

  v37 = 0;
  v66 = v10 & 0xC000000000000001;
  while (1)
  {
    if (v66)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v37 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_66;
      }

      v38 = *(v10 + 8 * v37 + 32);

      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    swift_getKeyPath();
    v68[0] = v38;
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = [*(v38 + 72) identifier];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = v2[1];
    if (!v44)
    {

      goto LABEL_41;
    }

    if (v41 == *v2 && v44 == v43)
    {
      break;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {

      goto LABEL_56;
    }

LABEL_41:
    ++v37;
    if (v39 == v36)
    {
      goto LABEL_53;
    }
  }

LABEL_56:
  v46 = 0;
LABEL_57:
  v48 = v62;
  v47 = v63;
  v35 = v65;
  LOBYTE(v34) = v59;
LABEL_58:
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_1000078E8(v49, qword_1003D28C0);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    swift_beginAccess();
    v53 = *(NSDiffableDataSourceSnapshot.itemIdentifiers.getter() + 16);

    *(v52 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v50, v51, "Snapshot identifiers count: %ld", v52, 0xCu);
  }

  v54 = *(v35 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource);
  if (v54)
  {
    swift_beginAccess();
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = v60;
    *(v56 + 25) = v34;
    *(v56 + 26) = v46;
    v57 = v54;

    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  return (*(v61 + 8))(v48, v47);
}

uint64_t sub_1002A986C(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  v5 = __chkstk_darwin(v4 - 8);
  v39 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v36 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v38 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v36 - v14;
  __chkstk_darwin(v13);
  v17 = v36 - v16;
  v18 = *a1;
  v19 = *a2;
  swift_getKeyPath();
  v40 = v18;
  v36[1] = sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = [*(v18 + 72) creationDate];
  v37 = v17;
  v36[0] = v15;
  if (v20)
  {
    v21 = v20;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = *(v10 + 32);
    v22(v8, v15, v9);
    v23 = *(v10 + 56);
    v23(v8, 0, 1, v9);
    v22(v17, v8, v9);
  }

  else
  {
    v23 = *(v10 + 56);
    v23(v8, 1, 1, v9);
    static Date.now.getter();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_100009EBC(v8, &qword_1003B5130, &unk_1002E4220);
    }
  }

  swift_getKeyPath();
  v40 = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = [*(v19 + 72) creationDate];
  if (v24)
  {
    v25 = v36[0];
    v26 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = *(v10 + 32);
    v28 = v39;
    v27(v39, v25, v9);
    v23(v28, 0, 1, v9);
    v29 = v38;
    v27(v38, v28, v9);
    v30 = v37;
  }

  else
  {
    v31 = v39;
    v23(v39, 1, 1, v9);
    v29 = v38;
    static Date.now.getter();
    v32 = (*(v10 + 48))(v31, 1, v9);
    v30 = v37;
    if (v32 != 1)
    {
      sub_100009EBC(v31, &qword_1003B5130, &unk_1002E4220);
    }
  }

  v33 = static Date.< infix(_:_:)();
  v34 = *(v10 + 8);
  v34(v29, v9);
  v34(v30, v9);
  return v33 & 1;
}

void sub_1002A9CEC(uint64_t a1, char a2, char a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      if (a2 == 1)
      {
        sub_1002A6BD8(1);
      }

      else
      {
        sub_1002A6E50(1);
      }
    }

    v9 = &v8[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pendingDictionaryModeIdentifier];
    v10 = *&v8[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pendingDictionaryModeIdentifier + 8];
    if (v10 && (a3 & 1) != 0)
    {
      v11 = *v9;
      v12 = qword_1003A9230;

      if (v12 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000078E8(v13, qword_1003D27A0);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Entering dictionary mode on new translation now that the list has updated", v16, 2u);
      }

      v17 = &v8[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
      v18 = *&v8[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
      v19 = *&v8[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8];
      *v17 = v11;
      *(v17 + 1) = v10;
      if (!v19 || (v11 != v18 || v10 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        sub_1002A3CA0();
      }

      *v9 = 0;
      *(v9 + 1) = 0;
    }

    else
    {
      if ((a4 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000078E8(v20, qword_1003D27A0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Dismissing Dictionary Mode because the card in Dictionary Mode is no longer shown", v23, 2u);
      }

      v24 = &v8[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
      v25 = *&v8[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8];
      *v24 = 0;
      *(v24 + 1) = 0;
      if (v25)
      {
        sub_1002A3CA0();
      }

      else
      {
LABEL_25:
      }
    }
  }
}

uint64_t sub_1002A9FAC(void *a1)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for GenderTipManager.Registration(0);
  __chkstk_darwin(v3 - 8);
  v54 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CommittedTranslationViewModel(0);
  v6 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_translationViewModel];
  v7 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_translationViewModel;
  v51 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_translationViewModel;
  v52 = v5;
  v8 = *(v6 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_session);
  sub_100031DD8(v8 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store, &v56);
  v9 = *(v6 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_ttsManager);

  v10 = [v2 traitCollection];
  sub_1000E8640();
  UITraitCollection.subscript.getter();

  v11 = *&v2[v7];
  v50 = v55;
  v12 = *(v11 + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_dictionaryManager);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v58;
  v15 = v59;
  v17 = sub_1000E859C(&v56, v58);
  __chkstk_darwin(v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = v12;

  v22 = v53;
  v23 = v19;
  v24 = v22;
  v25 = sub_10005098C(v22, v8, v23, v9, 0, 0, v50, v12, sub_1002B22DC, v13, sub_1002B22E4, v14, v52, v16, v15);

  sub_100008664(&v56);

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v26 = v57;
  if (v57)
  {
    v27 = v56;
    if (v27 == dispatch thunk of PersistedTranslation.displaySourceText.getter() && v26 == v28)
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        if (qword_1003A9230 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_1000078E8(v39, qword_1003D27A0);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = v24;
          v44 = swift_slowAlloc();
          v56 = v44;
          *v42 = 136642819;
          v45 = sub_10028D78C(v27, v26, &v56);

          *(v42 + 4) = v45;
          _os_log_impl(&_mh_execute_header, v40, v41, "Compose card pending dictionary item source text does not match new translation, clearing request to go into Dictionary Mode; pending source text: %{sensitive}s", v42, 0xCu);
          sub_100008664(v44);
          v24 = v43;
        }

        else
        {
        }

        goto LABEL_17;
      }
    }

    if (qword_1003A9230 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000078E8(v30, qword_1003D27A0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Compose card pending dictionary item source text matches newly added translation source text; saving the identifier to go into Dictionary Mode when it's on screen", v33, 2u);
    }

    swift_getKeyPath();
    v56 = v25;
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = [*(v25 + 72) identifier];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = &v2[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pendingDictionaryModeIdentifier];
    *v38 = v35;
    v38[1] = v37;

LABEL_17:
    swift_getKeyPath();
    swift_getKeyPath();
    v56 = 0;
    v57 = 0;

    static Published.subscript.setter();
  }

  v46 = v24;

  v47 = v54;
  sub_10010993C(v46, 0, v54);
  sub_100109EB0(v47);

  sub_10005139C(v47);
  if (*&v2[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8])
  {
    sub_1002ABCFC(v25);
  }

  return v25;
}

void sub_1002AA6B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_1002AA760(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_1002AA760(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  v77 = a6;
  v14 = type metadata accessor for DisambiguationResultModel.TextLocation();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for DisambiguationResultModel.TextLocation.source(_:))
  {
    sub_100045EE4(a4, a5, 0);
    if (a3)
    {
LABEL_3:
      v19 = a3;
      v20 = [v7 presentedViewController];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 popoverPresentationController];

        if (v22)
        {
          [v22 setSourceView:0];
        }
      }

      v23 = [v8 presentedViewController];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 popoverPresentationController];

        if (v25)
        {
          [v25 setSourceView:v19];
        }
      }

      v26 = [v8 presentedViewController];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 popoverPresentationController];

        if (v28)
        {
          [v28 setPermittedArrowDirections:3];
        }
      }

      v29 = [v19 beginningOfDocument];
      v30 = [v19 positionFromPosition:v29 offset:a4];
      if (v30)
      {
        v31 = v30;
        v32 = [v19 positionFromPosition:v30 offset:a5];
        if (v32)
        {
          v33 = v32;
          v34 = [v19 textRangeFromPosition:v31 toPosition:v32];
          if (v34)
          {
            v75 = v34;
            [v19 firstRectForRange:v34];
            v36 = v35;
            v38 = v37;
            v40 = v39;
            v42 = v41;
            if (qword_1003A9230 != -1)
            {
              swift_once();
            }

            v43 = type metadata accessor for Logger();
            sub_1000078E8(v43, qword_1003D27A0);

            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.info.getter();

            v76 = v44;
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              v78 = v74;
              *v46 = 136446467;
              v79.origin.x = v36;
              v79.origin.y = v38;
              v79.size.width = v40;
              v79.size.height = v42;
              v47 = NSStringFromRect(v79);
              HIDWORD(v73) = v45;
              v48 = v47;
              v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v51 = v50;

              v52 = sub_10028D78C(v49, v51, &v78);

              *(v46 + 4) = v52;
              *(v46 + 12) = 2085;
              if (a7)
              {
                v53 = v77;
              }

              else
              {
                v53 = 0x3E6C696E3CLL;
              }

              if (a7)
              {
                v54 = a7;
              }

              else
              {
                v54 = 0xE500000000000000;
              }

              v55 = sub_10028D78C(v53, v54, &v78);

              *(v46 + 14) = v55;
              v56 = v76;
              _os_log_impl(&_mh_execute_header, v76, BYTE4(v73), "Setting popover rect to %{public}s for word %{sensitive}s", v46, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            v71 = [v8 presentedViewController];
            v72 = [v71 popoverPresentationController];

            [v72 setSourceRect:{v36, v38, v40, v42}];
LABEL_48:

LABEL_49:
            sub_1002AE778(v77, a7, v8);
            return;
          }
        }

        else
        {
          v33 = v31;
        }
      }

      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_1000078E8(v61, qword_1003D27A0);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v64 = 136446467;
        v65 = _NSRange.description.getter();
        v67 = sub_10028D78C(v65, v66, &v78);

        *(v64 + 4) = v67;
        *(v64 + 12) = 2085;
        if (a7)
        {
          v68 = v77;
        }

        else
        {
          v68 = 0x3E6C696E3CLL;
        }

        if (a7)
        {
          v69 = a7;
        }

        else
        {
          v69 = 0xE500000000000000;
        }

        v70 = sub_10028D78C(v68, v69, &v78);

        *(v64 + 14) = v70;
        _os_log_impl(&_mh_execute_header, v62, v63, "Failed to lookup range %{public}s in text view; word: %{sensitive}s", v64, 0x16u);
        swift_arrayDestroy();
      }

      goto LABEL_48;
    }

LABEL_27:
    if (qword_1003A9230 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1000078E8(v57, qword_1003D27A0);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Not moving popover after setting new word because there's no UITextView to get the location from", v60, 2u);
    }

    goto LABEL_49;
  }

  if (v18 == enum case for DisambiguationResultModel.TextLocation.target(_:))
  {
    sub_100046394(a4, a5, 0);
    if (a3)
    {
      goto LABEL_3;
    }

    goto LABEL_27;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002AAF7C(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1002AAFEC(a1, a2 & 1);
  }
}

void sub_1002AAFEC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DisambiguationResultModel.TextLocation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v10 - 8);
  v12 = &v104 - v11;
  if ((a2 & 1) == 0)
  {
    v65 = (v3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
    v66 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8);
    *v65 = 0;
    v65[1] = 0;
    if (v66)
    {
      sub_1002A3CA0();
    }

    return;
  }

  swift_getKeyPath();
  v111 = a1;
  sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(a1 + 88);
  if (!v13)
  {
    if (qword_1003A9230 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_1000078E8(v67, qword_1003D27A0);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "Can't find resultModel so unable to present dictionary", v70, 2u);
    }

    v71 = (v3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
    v72 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8);
    *v71 = 0;
    v71[1] = 0;
    if (v72)
    {
      sub_1002A3CA0();
    }

    return;
  }

  v107 = v7;
  type metadata accessor for DictionaryViewController(0);
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v108 = v13;
  v15 = [v14 init];
  v16 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController);
  *(v3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController) = v15;
  v110 = v15;

  v17 = [objc_opt_self() sharedApplication];
  [v17 sendAction:"resignFirstResponder" to:0 from:v3 forEvent:0];

  swift_getKeyPath();
  v111 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = v3;
  v19 = [*(a1 + 72) identifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v109 = v18;
  v23 = (v18 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
  v24 = *(v18 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
  v25 = *(v18 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8);
  *v23 = v20;
  v23[1] = v22;
  v105 = v23;
  if (!v25 || (v20 != v24 || v25 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_1002A3CA0();
  }

  swift_getKeyPath();
  v111 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = *(a1 + 72);
  dispatch thunk of PersistedTranslation.sourceLocale.getter();
  v27 = type metadata accessor for Locale();
  v28 = *(*(v27 - 8) + 56);
  v28(v12, 0, 1, v27);
  v29 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_sourceLocale;
  v30 = v110;
  swift_beginAccess();
  sub_10028C60C(v12, &v30[v29]);
  swift_endAccess();
  v106 = v26;
  dispatch thunk of PersistedTranslation.targetLocale.getter();
  v28(v12, 0, 1, v27);
  v31 = OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_targetLocale;
  swift_beginAccess();
  sub_10028C60C(v12, &v30[v31]);
  swift_endAccess();
  *&v30[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_delegate + 8] = &off_10038C360;
  swift_unknownObjectWeakAssign();
  v32 = v107;
  (*(v107 + 104))(v9, enum case for DisambiguationResultModel.TextLocation.target(_:), v6);
  v33 = dispatch thunk of DisambiguationResultModel.rangeOfFirstWordForDictionary(inLocation:)();
  v35 = v34;
  (*(v32 + 8))(v9, v6);
  v36 = dispatch thunk of DisambiguationResultModel.targetAttributedText.getter();
  v37 = [v36 attributedSubstringFromRange:{v33, v35}];

  v38 = [v37 string];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  sub_100046394(v33, v35, 0);
  if (qword_1003A9230 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_1000078E8(v42, qword_1003D27A0);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Not moving popover after setting new word because there's no UITextView to get the location from", v45, 2u);
  }

  v46 = v109;
  sub_1002AE778(v39, v41, v109);

  v47 = objc_allocWithZone(UINavigationController);
  v48 = [v47 initWithRootViewController:v110];
  [v48 setModalPresentationStyle:7];
  v49 = [v48 presentationController];
  if (v49)
  {
    v50 = v49;
    [v49 setDelegate:v46];
  }

  v51 = sub_1002AE8B4(a1);
  if (!v51)
  {

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "Failed to find cell for viewModel that will get Dictionary Mode, so can't display popover", v96, 2u);
    }

    v97 = v105;
    v98 = v105[1];
    *v105 = 0;
    v97[1] = 0;
    if (v98)
    {
      sub_1002A3CA0();
    }

    else
    {
    }

    return;
  }

  v52 = v51;
  v53 = &v46[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryHighlightRect];
  if ((v46[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryHighlightRect + 32] & 1) != 0 || (v54 = *&v46[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryTextView]) == 0)
  {
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Presenting dictionary but don't yet have source rect or text view; presenting from the bottom middle of the card, and it should reposition soon when the source rect comes in", v75, 2u);
    }

    v59 = [v52 contentView];
    [v59 frame];
    x = v113.origin.x;
    y = v113.origin.y;
    width = v113.size.width;
    height = v113.size.height;
    MidX = CGRectGetMidX(v113);
    v114.origin.x = x;
    v114.origin.y = y;
    v114.size.width = width;
    v114.size.height = height;
    MaxY = CGRectGetMaxY(v114);
    v82 = CGSizeZero.height;
    v83 = [v48 popoverPresentationController];
    if (v83)
    {
      v84 = v83;
      [v83 setSourceView:v59];
    }

    v85 = [v48 popoverPresentationController];
    [v85 setSourceRect:{MidX, MaxY, CGSizeZero.width, v82}];

    v86 = [v48 popoverPresentationController];
    if (!v86)
    {
      goto LABEL_38;
    }

    v64 = v86;
    [v86 setPermittedArrowDirections:1];
  }

  else
  {
    v56 = v53[2];
    v55 = v53[3];
    v58 = *v53;
    v57 = v53[1];
    v59 = v54;
    v60 = [v48 popoverPresentationController];
    if (v60)
    {
      v61 = v60;
      [v60 setSourceView:v59];
    }

    v62 = [v48 popoverPresentationController];
    [v62 setSourceRect:{v58, v57, v56, v55}];

    v63 = [v48 popoverPresentationController];
    if (!v63)
    {
      goto LABEL_38;
    }

    v64 = v63;
    [v63 setPermittedArrowDirections:3];
  }

LABEL_38:
  v87 = [v48 popoverPresentationController];
  if (v87)
  {
    v88 = v87;
    sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_1002D95A0;
    v90 = *&v46[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView];
    if (!v90)
    {
      __break(1u);
      return;
    }

    v91 = v89;
    v92 = v90;

    *(v91 + 32) = v92;
    sub_10000A2CC(0, &qword_1003AFCF0, UIView_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v88 setPassthroughViews:isa];
  }

  else
  {
  }

  v99 = [v48 popoverPresentationController];

  if (v99)
  {
    v100 = [v99 adaptiveSheetPresentationController];

    if (v100)
    {
      [v100 setDelegate:v46];
      [v100 _setShouldDismissWhenTappedOutside:0];
      sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_1002D5560;
      v102 = objc_opt_self();
      *(v101 + 32) = [v102 mediumDetent];
      *(v101 + 40) = [v102 largeDetent];
      sub_10000A2CC(0, &qword_1003AFCE8, UISheetPresentationControllerDetent_ptr);
      v103 = Array._bridgeToObjectiveC()().super.isa;

      [v100 setDetents:v103];

      [v100 setLargestUndimmedDetentIdentifier:UISheetPresentationControllerDetentIdentifierMedium];
      [v100 setPrefersGrabberVisible:1];
    }
  }

  [v46 presentViewController:v48 animated:1 completion:0];
}

void sub_1002ABCFC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8);
  v4 = v3 != 0;
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
  swift_getKeyPath();
  sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  swift_bridgeObjectRetain_n();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = [*(a1 + 72) identifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v5 == v7 && v3 == v9)
  {

    swift_bridgeObjectRelease_n();
LABEL_9:
    v11 = 1;
    if ((*(a1 + 241) & 1) == 0)
    {
      goto LABEL_11;
    }

    v12 = (a1 + 241);
    goto LABEL_13;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  swift_bridgeObjectRelease_n();
  if ((v11 & 1) != *(a1 + 241))
  {
    v4 = v11;
LABEL_11:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_14;
  }

  v12 = (a1 + 241);
  v4 = v11;
LABEL_13:
  *v12 = v11 & 1;
LABEL_14:
  v14 = *(a1 + 194);
  if (v4 == v14)
  {
    *(a1 + 194) = v4;
    sub_1000458A4(v14);
  }

  else
  {
    v15 = swift_getKeyPath();
    __chkstk_darwin(v15);
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1002AC034()
{
  v1 = v0;
  v2 = [v0 viewIfLoaded];
  v3 = [v2 window];

  if (v3)
  {

    Notification.object.getter();
    if (!v161)
    {
      sub_100009EBC(&aBlock, &unk_1003AB9C0, &unk_1002D36F0);
      return;
    }

    sub_10000A2CC(0, &unk_1003BC430, UIScreen_ptr);
    if (swift_dynamicCast())
    {
      v4 = v168;
      v5 = [v1 view];
      if (!v5)
      {
        __break(1u);
        goto LABEL_95;
      }

      v6 = v5;
      v7 = [v5 window];

      if (v7)
      {
        v8 = [v7 screen];

        aBlock = v8;
        v9 = _bridgeAnythingToObjectiveC<A>(_:)();
      }

      else
      {
        v9 = 0;
      }

      v10 = [v168 isEqual:v9];
      swift_unknownObjectRelease();
      if (!v10 || (v11 = Notification.userInfo.getter()) == 0)
      {

        return;
      }

      v12 = v11;
      *&v164 = COERCE_DOUBLE(static String._unconditionallyBridgeFromObjectiveC(_:)());
      v165 = v13;
      AnyHashable.init<A>(_:)();
      if (*(v12 + 16))
      {
        v14 = sub_10028DF68(&aBlock);
        if (v15)
        {
          sub_10000A37C(*(v12 + 56) + 32 * v14, &v168);
          sub_100078028(&aBlock);
          type metadata accessor for CGRect(0);
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_16:

            return;
          }

          v16 = *&v164;
          v17 = v165;
          v18 = v166;
          v19 = v167;
          v20 = [v1 view];
          if (v20)
          {
            v21 = v20;
            v22 = [v20 keyboardLayoutGuide];

            [v22 layoutFrame];
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;

            v31 = &v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_lastKnownKeyboardFrame];
            v177.origin.x = v24;
            v177.origin.y = v26;
            v177.size.width = v28;
            v177.size.height = v30;
            if (CGRectEqualToRect(*&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_lastKnownKeyboardFrame], v177))
            {
              goto LABEL_16;
            }

            *v31 = v24;
            v31[1] = v26;
            v31[2] = v28;
            v31[3] = v30;
            v32 = Notification.userInfo.getter();
            if (v32)
            {
              v33 = v32;
              *&v164 = COERCE_DOUBLE(static String._unconditionallyBridgeFromObjectiveC(_:)());
              v165 = v34;
              AnyHashable.init<A>(_:)();
              if (*(v33 + 16))
              {
                v35 = sub_10028DF68(&aBlock);
                if (v36)
                {
                  sub_10000A37C(*(v33 + 56) + 32 * v35, &v168);
                  sub_100078028(&aBlock);

                  if (*(&v169 + 1))
                  {
                    sub_10000A2CC(0, &qword_1003AED20, NSNumber_ptr);
                    if (swift_dynamicCast())
                    {
                      v37 = aBlock;
                      [aBlock doubleValue];
                      v150 = v38;

                      goto LABEL_30;
                    }

LABEL_29:
                    v150 = 0.0;
LABEL_30:
                    v39 = Notification.userInfo.getter();
                    v155 = v24;
                    v154 = v26;
                    v153 = v28;
                    if (v39)
                    {
                      v40 = v39;
                      *&v164 = COERCE_DOUBLE(static String._unconditionallyBridgeFromObjectiveC(_:)());
                      v165 = v41;
                      AnyHashable.init<A>(_:)();
                      if (*(v40 + 16))
                      {
                        v42 = sub_10028DF68(&aBlock);
                        if (v43)
                        {
                          sub_10000A37C(*(v40 + 56) + 32 * v42, &v168);
                          sub_100078028(&aBlock);

                          if (*(&v169 + 1))
                          {
                            sub_10000A2CC(0, &qword_1003AED20, NSNumber_ptr);
                            if (swift_dynamicCast())
                            {
                              v44 = aBlock;
                              v45 = [aBlock unsignedIntegerValue];

                              v46 = (v45 << 16) | 2;
                              goto LABEL_40;
                            }

LABEL_39:
                            v46 = 2;
LABEL_40:
                            v151 = v30;
                            v47 = [v4 coordinateSpace];
                            v48 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView;
                            v49 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView];
                            if (v49)
                            {
                              v50 = v47;
                              v148 = v49;
                              [v50 convertRect:v16 toCoordinateSpace:{v17, v18, v19}];
                              v55 = *&v1[v48];
                              if (v55)
                              {
                                v56 = v16;
                                v57 = v51;
                                v58 = v52;
                                v59 = v19;
                                v60 = v18;
                                v61 = v17;
                                v62 = v53;
                                v63 = v54;
                                [v55 bounds];
                                v178.origin.x = v57;
                                v178.origin.y = v58;
                                v178.size.width = v62;
                                v178.size.height = v63;
                                v171 = CGRectIntersection(v170, v178);
                                x = v171.origin.x;
                                y = v171.origin.y;
                                width = v171.size.width;
                                height = v171.size.height;
                                [v4 bounds];
                                v179.origin.x = v56;
                                v179.origin.y = v61;
                                v179.size.width = v60;
                                v179.size.height = v59;
                                v173 = CGRectIntersection(v172, v179);
                                IsEmpty = CGRectIsEmpty(v173);
                                v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_keyboardIsVisible] = !IsEmpty;
                                v67 = [v1 parentViewController];
                                v149 = v46;
                                if (v67)
                                {
                                  v68 = v67;
                                  v69 = [v67 navigationController];

                                  v70 = v151;
                                  if (v69)
                                  {
                                    v71 = [v69 navigationBar];

                                    sub_1002C21EC();
                                    v73 = v72;
                                  }

                                  else
                                  {
                                    v73 = 0;
                                  }
                                }

                                else
                                {
                                  v73 = 0;
                                  v70 = v151;
                                }

                                v74 = [v1 parentViewController];
                                v75 = 0.0;
                                if (v74)
                                {
                                  v76 = v74;
                                  v77 = [v74 navigationController];

                                  if (v77)
                                  {
                                    v78 = [v77 navigationBar];

                                    sub_1002C23E4();
                                    v75 = v79;
                                  }
                                }

                                if (qword_1003A9290 != -1)
                                {
                                  swift_once();
                                }

                                v80 = type metadata accessor for Logger();
                                sub_1000078E8(v80, qword_1003D28C0);
                                v81 = Logger.logObject.getter();
                                v82 = static os_log_type_t.debug.getter();
                                if (os_log_type_enabled(v81, v82))
                                {
                                  v83 = swift_slowAlloc();
                                  *v83 = 67109376;
                                  *(v83 + 4) = v73 & 1;
                                  *(v83 + 8) = 2048;
                                  *(v83 + 10) = v75;
                                  _os_log_impl(&_mh_execute_header, v81, v82, "Nav title is large? : %{BOOL}d with height: %f", v83, 0x12u);
                                }

                                v152 = v75;

                                v174.origin.x = v155;
                                v174.origin.y = v154;
                                v174.size.width = v153;
                                v174.size.height = v70;
                                v84 = CGRectGetHeight(v174);
                                v85 = x;
                                v175.origin.x = x;
                                v86 = y;
                                v175.origin.y = y;
                                v87 = width;
                                v175.size.width = width;
                                v175.size.height = height;
                                v88 = CGRectGetHeight(v175);
                                if (v84 > v88)
                                {
                                  v89 = v84;
                                }

                                else
                                {
                                  v89 = v88;
                                }

                                v90 = [v1 view];
                                if (v90)
                                {
                                  v91 = v90;
                                  [v90 bounds];
                                  v93 = v92;
                                  v95 = v94;
                                  v97 = v96;
                                  v99 = v98;

                                  v176.origin.x = v93;
                                  v176.origin.y = v95;
                                  v176.size.width = v97;
                                  v176.size.height = v99;
                                  v100 = CGRectGetHeight(v176);
                                  v101 = [v1 view];
                                  if (v101)
                                  {
                                    v102 = v101;
                                    [v101 safeAreaInsets];
                                    v104 = v103;

                                    v105 = [v1 view];
                                    if (v105)
                                    {
                                      v106 = v105;
                                      v107 = v100 - v104;
                                      [v105 safeAreaInsets];
                                      v109 = v108;

                                      v110 = v107 - v109 - v89;
                                      v111 = Logger.logObject.getter();
                                      v112 = static os_log_type_t.debug.getter();
                                      v113 = v87;
                                      if (os_log_type_enabled(v111, v112))
                                      {
                                        v114 = swift_slowAlloc();
                                        *v114 = 134217984;
                                        *(v114 + 4) = v110;
                                        _os_log_impl(&_mh_execute_header, v111, v112, "Initial available height: %f", v114, 0xCu);
                                      }

                                      if (v73)
                                      {
                                        v110 = v152 + v110;
                                        v115 = Logger.logObject.getter();
                                        v116 = static os_log_type_t.debug.getter();
                                        if (os_log_type_enabled(v115, v116))
                                        {
                                          v117 = swift_slowAlloc();
                                          *v117 = 134218240;
                                          *(v117 + 4) = v152;
                                          *(v117 + 12) = 2048;
                                          *(v117 + 14) = v110;
                                          _os_log_impl(&_mh_execute_header, v115, v116, "Accounting for large title (+%f): %f", v117, 0x16u);
                                        }
                                      }

                                      v118 = IsEmpty;
                                      v119 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore];
                                      if (v119 >> 62)
                                      {
                                        if (!_CocoaArrayWrapper.endIndex.getter())
                                        {
                                          goto LABEL_71;
                                        }
                                      }

                                      else if (!*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                      {
                                        goto LABEL_71;
                                      }

                                      v110 = v110 + -36.0;
                                      v120 = Logger.logObject.getter();
                                      v121 = static os_log_type_t.debug.getter();
                                      if (os_log_type_enabled(v120, v121))
                                      {
                                        v122 = swift_slowAlloc();
                                        *v122 = 134218240;
                                        *(v122 + 4) = 0x4042000000000000;
                                        *(v122 + 12) = 2048;
                                        *(v122 + 14) = v110;
                                        _os_log_impl(&_mh_execute_header, v120, v121, "Subtracting to show hint of prior cards (-%f): %f", v122, 0x16u);
                                      }

LABEL_71:
                                      v123 = [v1 parentViewController];
                                      if (v123)
                                      {
                                        v124 = v123;
                                        v125 = [v123 navigationItem];

                                        v126 = [objc_opt_self() currentTraitCollection];
                                        v127 = [v126 horizontalSizeClass];

                                        v128 = 2;
                                        if (IsEmpty)
                                        {
                                          v128 = 0;
                                        }

                                        if (v127 == 2)
                                        {
                                          v129 = 2;
                                        }

                                        else
                                        {
                                          v129 = v128;
                                        }

                                        [v125 setLargeTitleDisplayMode:v129];
                                      }

                                      v130 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_translationViewModel;
                                      if (IsEmpty)
                                      {
                                        v131 = 280.0;
                                      }

                                      else
                                      {
                                        v131 = v110 + 8.0;
                                      }

                                      v132 = *(*&v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_translationViewModel] + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
                                      swift_getKeyPath();
                                      aBlock = v132;
                                      sub_1002B2220(&qword_1003AC930, type metadata accessor for CardMetrics, &unk_1002D73AC);

                                      ObservationRegistrar.access<A, B>(_:keyPath:)();

                                      v133 = v132[2];

                                      if (v133 != v131)
                                      {
                                        v134 = Logger.logObject.getter();
                                        v135 = static os_log_type_t.debug.getter();
                                        if (os_log_type_enabled(v134, v135))
                                        {
                                          v136 = swift_slowAlloc();
                                          *v136 = 134217984;
                                          *(v136 + 4) = v131;
                                          _os_log_impl(&_mh_execute_header, v134, v135, "Setting height: %f", v136, 0xCu);
                                        }

                                        v137 = *(*&v1[v130] + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_cardMetrics);
                                        if (v137[2] == v131)
                                        {
                                          v137[2] = v131;
                                        }

                                        else
                                        {
                                          KeyPath = swift_getKeyPath();
                                          __chkstk_darwin(KeyPath);
                                          aBlock = v137;

                                          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                                        }

                                        v118 = IsEmpty;
                                      }

                                      if (!v118)
                                      {
                                        v1[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pinComposeCardToKeyboard] = 1;
                                      }

                                      v139 = [v1 view];
                                      if (v139)
                                      {
                                        v140 = v139;

                                        [v140 setNeedsLayout];

                                        v141 = objc_opt_self();
                                        v142 = swift_allocObject();
                                        *(v142 + 16) = v1;
                                        *(v142 + 24) = !IsEmpty;
                                        *(v142 + 32) = v85;
                                        *(v142 + 40) = v86;
                                        *(v142 + 48) = v113;
                                        *(v142 + 56) = height;
                                        v162 = sub_1002B22C0;
                                        v163 = v142;
                                        aBlock = _NSConcreteStackBlock;
                                        v159 = 1107296256;
                                        v160 = sub_100096948;
                                        v161 = &unk_10038C618;
                                        v143 = _Block_copy(&aBlock);
                                        v144 = v1;

                                        v145 = swift_allocObject();
                                        *(v145 + 16) = v144;
                                        v162 = sub_1002B22D4;
                                        v163 = v145;
                                        aBlock = _NSConcreteStackBlock;
                                        v159 = 1107296256;
                                        v160 = sub_1001D1870;
                                        v161 = &unk_10038C668;
                                        v146 = _Block_copy(&aBlock);
                                        v147 = v144;

                                        [v141 animateWithDuration:v149 delay:v143 options:v146 animations:v150 completion:0.0];
                                        _Block_release(v146);
                                        _Block_release(v143);

                                        swift_unknownObjectRelease();
                                        return;
                                      }

                                      goto LABEL_101;
                                    }

LABEL_100:
                                    __break(1u);
LABEL_101:
                                    __break(1u);
                                    return;
                                  }

LABEL_99:
                                  __break(1u);
                                  goto LABEL_100;
                                }

LABEL_98:
                                __break(1u);
                                goto LABEL_99;
                              }

LABEL_97:
                              __break(1u);
                              goto LABEL_98;
                            }

LABEL_96:
                            __break(1u);
                            goto LABEL_97;
                          }

LABEL_38:
                          sub_100009EBC(&v168, &unk_1003AB9C0, &unk_1002D36F0);
                          goto LABEL_39;
                        }
                      }

                      sub_100078028(&aBlock);
                    }

                    v168 = 0u;
                    v169 = 0u;
                    goto LABEL_38;
                  }

LABEL_28:
                  sub_100009EBC(&v168, &unk_1003AB9C0, &unk_1002D36F0);
                  goto LABEL_29;
                }
              }

              sub_100078028(&aBlock);
            }

            v168 = 0u;
            v169 = 0u;
            goto LABEL_28;
          }

LABEL_95:
          __break(1u);
          goto LABEL_96;
        }
      }

      sub_100078028(&aBlock);
    }
  }
}

void *sub_1002AD06C(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView;
  result = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
  if (result)
  {
    [result safeAreaInsets];
    if ((a2 & 1) == 0)
    {
      sub_1002AD7A4(0, 0);
      return sub_1002A6BD8(0);
    }

    result = *(a1 + v7);
    if (result)
    {
      [result safeAreaInsets];
      sub_1002AD208(0, 0, a6 - v11);
      return sub_1002A6BD8(0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002AD104(char a1, uint64_t a2)
{
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D28C0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "<<<<< End animation with %{BOOL}d", v7, 8u);
  }

  *(a2 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pinComposeCardToKeyboard) = 0;
}

void sub_1002AD208(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  if (a3 == 0.0)
  {
    v6 = a2 & 1;

    sub_1002AD7A4(a1, v6);
    return;
  }

  v8 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_bottomInsetReasonToHeightMap;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_10028E05C(a1);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      if (v12 == a3)
      {
        if (qword_1003A9290 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_1000078E8(v13, qword_1003D28C0);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v43[0] = v17;
          *v16 = 136446466;
          if (a1)
          {
            if (a1 == 1)
            {
              v18 = 0x616E6F6974636964;
            }

            else
            {
              v18 = 0x6F68706F7263696DLL;
            }

            if (a1 == 1)
            {
              v19 = 0xEA00000000007972;
            }

            else
            {
              v19 = 0xEA0000000000656ELL;
            }
          }

          else
          {
            v18 = 0x6472616F6279656BLL;
            v19 = 0xE800000000000000;
          }

          v40 = sub_10028D78C(v18, v19, v43);

          *(v16 + 4) = v40;
          *(v16 + 12) = 2050;
          *(v16 + 14) = a3;
          _os_log_impl(&_mh_execute_header, v14, v15, "Not changing bottom inset for reason %{public}s because the height %{public}f is already being used", v16, 0x16u);
          sub_100008664(v17);
        }

        return;
      }
    }

    else
    {
    }
  }

  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000078E8(v20, qword_1003D28C0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v43[0] = v24;
    *v23 = 136446466;
    if (a1)
    {
      if (a1 == 1)
      {
        v25 = 0x616E6F6974636964;
      }

      else
      {
        v25 = 0x6F68706F7263696DLL;
      }

      if (a1 == 1)
      {
        v26 = 0xEA00000000007972;
      }

      else
      {
        v26 = 0xEA0000000000656ELL;
      }
    }

    else
    {
      v25 = 0x6472616F6279656BLL;
      v26 = 0xE800000000000000;
    }

    v27 = sub_10028D78C(v25, v26, v43);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2050;
    *(v23 + 14) = a3;
    _os_log_impl(&_mh_execute_header, v21, v22, "Adding bottom inset reason to %{public}s with height %{public}f", v23, 0x16u);
    sub_100008664(v24);
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v4 + v8);
  *(v4 + v8) = 0x8000000000000000;
  sub_100291EE8(a1, isUniquelyReferenced_nonNull_native, a3);
  *(v4 + v8) = v42;
  swift_endAccess();

  v30 = COERCE_DOUBLE(sub_1002ADB40(v29));
  v32 = v31;

  if (v32)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v30;
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134349056;
    *(v36 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "Setting bottom inset to %{public}f", v36, 0xCu);
  }

  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v33;
  if (a2)
  {
    sub_10000A2CC(0, &qword_1003AFCF0, UIView_ptr);
    static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
  }

  else
  {

    sub_1002ADC50(v39);
  }
}

void sub_1002AD7A4(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_1003A9290 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D28C0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28[0] = v10;
    *v9 = 136446210;
    if (a1)
    {
      if (a1 == 1)
      {
        v11 = 0x616E6F6974636964;
      }

      else
      {
        v11 = 0x6F68706F7263696DLL;
      }

      if (a1 == 1)
      {
        v12 = 0xEA00000000007972;
      }

      else
      {
        v12 = 0xEA0000000000656ELL;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      v11 = 0x6472616F6279656BLL;
    }

    v13 = sub_10028D78C(v11, v12, v28);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Removing bottom inset reason %{public}s", v9, 0xCu);
    sub_100008664(v10);
  }

  v14 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_bottomInsetReasonToHeightMap;
  swift_beginAccess();
  if (*(*(v3 + v14) + 16))
  {

    sub_10028E05C(a1);
    v16 = v15;

    if (v16)
    {
      swift_beginAccess();
      sub_1002B1A60(a1);
      swift_endAccess();

      v18 = COERCE_DOUBLE(sub_1002ADB40(v17));
      v20 = v19;

      if (v20)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v18;
      }

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134349056;
        *(v24 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v22, v23, "Setting bottom inset to %{public}f", v24, 0xCu);
      }

      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      *(v26 + 16) = v25;
      *(v26 + 24) = v21;
      if (a2)
      {
        sub_10000A2CC(0, &qword_1003AFCF0, UIView_ptr);
        static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
      }

      else
      {

        sub_1002ADC50(v27);
      }
    }
  }
}

uint64_t sub_1002ADB40(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

void sub_1002ADC50(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
    v3 = Strong;
    v4 = v2;

    if (!v2)
    {
      __break(1u);
      goto LABEL_9;
    }

    [v4 contentInset];
    [v4 setContentInset:?];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    return;
  }

  v6 = *(v5 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
  v7 = v5;
  v8 = v6;

  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v8 verticalScrollIndicatorInsets];
  [v8 setVerticalScrollIndicatorInsets:?];
}

id sub_1002ADD68(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8))
  {
    return 0;
  }

  if (qword_1003A91F0 != -1)
  {
    v20 = a1;
    swift_once();
    a1 = v20;
  }

  v3 = a1;
  if (byte_1003D26A0)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;

    v6 = 0;
    v7 = sub_1002B29F0;
  }

  else
  {
    v8 = [objc_opt_self() mainBundle];
    v22._object = 0x80000001002F4780;
    v9._countAndFlagsBits = 0x4554454C4544;
    v9._object = 0xE600000000000000;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0xD000000000000013;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v22);

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v11;
    *(v5 + 24) = v3;

    v6 = String._bridgeToObjectiveC()();

    v7 = sub_1002B2118;
  }

  aBlock[4] = v7;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002A34F8;
  aBlock[3] = &unk_10038C528;
  v12 = _Block_copy(aBlock);
  v13 = [objc_opt_self() contextualActionWithStyle:1 title:v6 handler:v12];

  _Block_release(v12);

  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() _systemImageNamed:v14];

  [v13 setImage:v15];
  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1002D95A0;
  *(v16 + 32) = v13;
  sub_10000A2CC(0, &qword_1003AB960, UIContextualAction_ptr);
  v17 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [objc_opt_self() configurationWithActions:isa];

  [v19 _setSwipeActionsStyle:3];
  return v19;
}

void sub_1002AE118(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_100005AD4(&unk_1003BC420, &qword_1002EE910);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = a4;
    v40 = Strong;
    if (qword_1003A9228 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000078E8(v14, qword_1003D2788);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    v17 = os_log_type_enabled(v15, v16);
    v37 = v10;
    v38 = v9;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v36 = a3;
      v19 = v18;
      v20 = swift_slowAlloc();
      v42 = v20;
      *v19 = 136446210;
      swift_getKeyPath();
      v41 = a6;
      sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v21 = [*(a6 + 72) identifier];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = sub_10028D78C(v22, v24, &v42);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "User deleted card item %{public}s via swipe action", v19, 0xCu);
      sub_100008664(v20);

      a3 = v36;
    }

    v26 = v40;
    v27 = *&v40[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource];
    if (v27)
    {
      LOBYTE(v42) = 0;
      v28 = v27;
      UICollectionViewDiffableDataSource.snapshot(for:)();
      sub_100005AD4(&unk_1003BA780, &qword_1002D6240);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1002D3160;
      swift_getKeyPath();
      v42 = a6;
      sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v30 = [*(a6 + 72) identifier];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      *(v29 + 32) = v31;
      *(v29 + 40) = v33;
      v34 = v38;
      NSDiffableDataSourceSectionSnapshot.delete(_:)(v29);

      LOBYTE(v42) = 0;
      UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

      v26 = v40;
      (*(v37 + 8))(v12, v34);
    }

    (a3)(1);
    swift_getKeyPath();
    v42 = a6;
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v35 = *(a6 + 72);
    sub_1002B2B48(v35);
  }

  else
  {
    a3();
  }
}

id sub_1002AE638(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TranslationListController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1002AE778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController);
    if (v3)
    {
      v4 = &v3[OBJC_IVAR____TtC17SequoiaTranslator24DictionaryViewController_text];
      *v4 = a1;
      *(v4 + 1) = a2;

      oslog = v3;

      sub_1000E0A1C();
    }

    else
    {
      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000078E8(v5, qword_1003D27A0);
      oslog = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v6, "Got new word to define but don't have a dictionaryController to update the definition", v7, 2u);
      }
    }
  }
}

id sub_1002AE8B4(uint64_t a1)
{
  v3 = sub_100005AD4(&unk_1003AB970, &unk_1002DD540);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource);
  if (!v10)
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_7;
  }

  v22 = v1;
  swift_getKeyPath();
  v23 = a1;
  sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
  v11 = v10;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = [*(a1 + 72) identifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v23 = v13;
  v24 = v15;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_7:
    sub_100009EBC(v5, &unk_1003AB970, &unk_1002DD540);
    return 0;
  }

  result = (*(v7 + 32))(v9, v5, v6);
  v17 = *(v22 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
  if (!v17)
  {
    __break(1u);
    return result;
  }

  v18 = v17;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20 = [v18 cellForItemAtIndexPath:isa];

  (*(v7 + 8))(v9, v6);
  result = v20;
  if (!v20)
  {
    return 0;
  }

  return result;
}

void sub_1002AEB94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController;
      v7 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController];
      if (v7)
      {
        type metadata accessor for DictionaryViewController(0);
        v8 = v5;
        v9 = v7;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          v11 = *&v3[v6];
          *&v3[v6] = 0;
          goto LABEL_17;
        }
      }

      else
      {
      }
    }

    if (*&v3[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController])
    {
      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000078E8(v12, qword_1003D27A0);
      v11 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v11, v13))
      {
        goto LABEL_17;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
    }

    else
    {
      if (qword_1003A9230 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000078E8(v16, qword_1003D27A0);
      v11 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v11, v13))
      {
        goto LABEL_17;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
    }

    _os_log_impl(&_mh_execute_header, v11, v13, v15, v14, 2u);

LABEL_17:
  }
}

double sub_1002AEDC8(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_100005AD4(&unk_1003AB970, &unk_1002DD540);
  __chkstk_darwin(v7 - 8);
  v9 = &v49 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = __chkstk_darwin(v10);
  v12 = __chkstk_darwin(v11);
  if (a2 == 2)
  {
    v18 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8];
    if (v18)
    {
      v49 = v16;
      v50 = v15;
      v53 = a3;
      v54 = v9;
      v51 = a1;
      v52 = &v49 - v13;
      v57 = v12;
      v60 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode];
      v61 = v18;
      v19 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore];
      v55 = v14;
      if (v19 >> 62)
      {
LABEL_33:
        v20 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v56 = v3;

      if (v20)
      {
        v21 = 0;
        v58 = v19 & 0xFFFFFFFFFFFFFF8;
        v59 = v19 & 0xC000000000000001;
        while (1)
        {
          if (v59)
          {
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v23 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }
          }

          else
          {
            if (v21 >= *(v58 + 16))
            {
              __break(1u);
              goto LABEL_33;
            }

            v22 = *(v19 + 8 * v21 + 32);

            v23 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_19;
            }
          }

          swift_getKeyPath();
          aBlock = v22;
          sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v24 = [*(v22 + 72) identifier];
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v3 = v26;

          if (v25 == v60 && v61 == v3)
          {

            goto LABEL_23;
          }

          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v28)
          {
            break;
          }

          ++v21;
          if (v23 == v20)
          {
            goto LABEL_20;
          }
        }

LABEL_23:

        v30 = v55;
        v29 = v56;
        v31 = *&v56[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource];
        if (!v31)
        {

          v38 = v54;
          (*(v30 + 56))(v54, 1, 1, v57);
          goto LABEL_27;
        }

        swift_getKeyPath();
        aBlock = v22;
        v32 = v31;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v33 = [*(v22 + 72) identifier];
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        aBlock = v34;
        v63 = v36;
        v37 = v54;
        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
        v38 = v37;

        if ((*(v30 + 48))(v37, 1, v57) == 1)
        {

LABEL_27:
          sub_100009EBC(v38, &unk_1003AB970, &unk_1002DD540);
          return result;
        }

        v39 = *(v30 + 32);
        v40 = v52;
        v39(v52, v37, v57);
        if (v53)
        {
          v41 = v50;
          (*(v30 + 16))(v50, v40, v57);
          v42 = (*(v30 + 80) + 32) & ~*(v30 + 80);
          v43 = swift_allocObject();
          v44 = v51;
          *(v43 + 16) = v51;
          *(v43 + 24) = v29;
          v45 = v57;
          v39((v43 + v42), v41, v57);
          v66 = sub_1002B20A0;
          v67 = v43;
          aBlock = _NSConcreteStackBlock;
          v63 = 1107296256;
          v64 = sub_1002A39AC;
          v65 = &unk_10038C4D8;
          v46 = _Block_copy(&aBlock);
          v47 = v44;
          v48 = v56;

          [v53 animateAlongsideTransition:v46 completion:0];
          _Block_release(v46);

          (*(v30 + 8))(v40, v45);
        }

        else
        {
          (*(v30 + 8))(v40, v57);
        }
      }

      else
      {
LABEL_20:
      }
    }
  }

  return result;
}

void sub_1002AF39C(uint64_t a1, void *a2, uint64_t a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a2;
    v8 = [v6 adaptiveSheetPresentationController];
    [v8 frameOfPresentedViewInContainerView];
    Height = CGRectGetHeight(v18);
    v10 = *(a3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
    if (!v10)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v11 = Height;
    [v10 safeAreaInsets];
    v13 = v11 - v12;
    if (v11 - v12 <= 0.0)
    {
      v13 = 0.0;
    }

    sub_1002AD208(1, 0, v13);
  }

  v14 = *(a3 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView);
  if (!v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v15 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:0];
}

id sub_1002AF560(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
  v4 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode + 8);
  *v3 = 0;
  v3[1] = 0;
  if (v4)
  {
    sub_1002A3CA0();
  }

  if (qword_1003A9230 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D27A0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Force dismissing dictionary controller due to user pressing close button", v8, 2u);
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

void sub_1002AF6EC(void *a1)
{
  v2 = [a1 presentingViewController];
  v3 = [v2 transitionCoordinator];

  if (v3)
  {
    v4 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_bottomInsetReasonToHeightMap;
    swift_beginAccess();
    v5 = *&v1[v4];
    if (*(v5 + 16))
    {

      v6 = sub_10028E05C(1);
      if (v7)
      {
        v8 = *(*(v5 + 56) + 8 * v6);
      }

      else
      {
        v8 = 0;
      }

      v9 = v7 ^ 1;
    }

    else
    {
      v8 = 0;
      v9 = 1;
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v20 = sub_1002B1F1C;
    v21 = v10;
    aBlock = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_1002A39AC;
    v19 = &unk_10038C438;
    v11 = _Block_copy(&aBlock);
    v12 = v1;

    v13 = swift_allocObject();
    *(v13 + 16) = v8;
    *(v13 + 24) = v9 & 1;
    *(v13 + 32) = v12;
    v20 = sub_1002B1F80;
    v21 = v13;
    aBlock = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_1002A39AC;
    v19 = &unk_10038C488;
    v14 = _Block_copy(&aBlock);
    v15 = v12;

    [v3 animateAlongsideTransition:v11 completion:v14];
    _Block_release(v14);
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {

    sub_1002AD7A4(1, 1);
  }
}

unint64_t sub_1002AF9E4()
{
  result = qword_1003BC410;
  if (!qword_1003BC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC410);
  }

  return result;
}

unint64_t sub_1002AFA3C()
{
  result = qword_1003BC418;
  if (!qword_1003BC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC418);
  }

  return result;
}

double sub_1002AFA90(uint64_t a1, void *a2)
{
  v48 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v49[0];
  v50 = _swiftEmptyArrayStorage;
  if (v49[0] >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v45 = 0;
    v47 = v2 & 0xC000000000000001;
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v47)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_15;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = v2;
      v10 = [v6 identifier];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v49[0] = v11;
      v49[1] = v13;
      __chkstk_darwin(v14);
      v37[2] = v49;
      v15 = v45;
      LOBYTE(v10) = sub_1000B74D0(sub_1001CC138, v37, v48);
      v45 = v15;

      if (v10)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v2 = v9;
      ++v4;
      if (v8 == i)
      {
        v16 = v50;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v45 = 0;
  v16 = _swiftEmptyArrayStorage;
LABEL_18:

  if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
  {
    goto LABEL_51;
  }

  v17 = *(v16 + 16);
  if (v17)
  {
LABEL_21:
    v18 = 0;
    v41 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore;
    v42 = v16 & 0xC000000000000001;
    v38 = v16 + 32;
    v39 = v17;
    v40 = v16;
    while (1)
    {
      if (v42)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v16 + 16))
        {
          goto LABEL_50;
        }

        v19 = *(v38 + 8 * v18);
      }

      v48 = v19;
      v20 = __OFADD__(v18, 1);
      v21 = v18 + 1;
      if (v20)
      {
        goto LABEL_49;
      }

      v22 = *(v43 + v41);
      v16 = v22 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v44 = v21;

      if (v16)
      {
        break;
      }

LABEL_22:

LABEL_23:
      v16 = v40;
      v18 = v44;
      if (v44 == v39)
      {
        goto LABEL_52;
      }
    }

    v23 = 0;
    v46 = v22 & 0xFFFFFFFFFFFFFF8;
    v47 = v22 & 0xC000000000000001;
    while (1)
    {
      if (v47)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v23 >= *(v46 + 16))
        {
          goto LABEL_48;
        }

        v24 = *(v22 + 8 * v23 + 32);

        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v17 = _CocoaArrayWrapper.endIndex.getter();
          if (!v17)
          {
            break;
          }

          goto LABEL_21;
        }
      }

      swift_getKeyPath();
      v49[0] = v24;
      sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v26 = [*(v24 + 72) identifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = [v48 identifier];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      if (v27 == v31 && v29 == v33)
      {

LABEL_45:

        v35 = v48;
        sub_1000476D0(v48, 0);

        goto LABEL_23;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        goto LABEL_45;
      }

      ++v23;
      if (v25 == v16)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_52:

  return result;
}

double sub_1002AFF64@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1002AFFE4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002B007C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002B00F0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1002C1270(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1002B016C(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1002B016C(uint64_t *a1)
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
        type metadata accessor for CommittedTranslationViewModel(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1002B07C8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1002B0270(0, v2, 1, a1);
  }
}

void sub_1002B0270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  v9 = __chkstk_darwin(v8 - 8);
  v60 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v49 - v11;
  v12 = type metadata accessor for Date();
  v13 = __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v62 = &v49 - v17;
  __chkstk_darwin(v16);
  v65 = &v49 - v19;
  v50 = a2;
  if (a3 != a2)
  {
    v61 = (v18 + 32);
    v64 = (v18 + 56);
    v20 = *a4;
    v54 = (v18 + 48);
    v55 = v12;
    v56 = v15;
    v57 = (v18 + 8);
    v59 = v20;
    v21 = v20 + 8 * a3 - 8;
    v22 = a1 - a3;
LABEL_5:
    v52 = v21;
    v53 = a3;
    v23 = *(v59 + 8 * a3);
    v51 = v22;
    v24 = v22;
    v25 = v21;
    while (1)
    {
      v26 = *v25;
      swift_getKeyPath();
      v66 = v23;
      sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v27 = [*(v23 + 72) creationDate];
      v63 = v24;
      if (v27)
      {
        v28 = v62;
        v29 = v27;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v30 = *v61;
        v31 = v58;
        (*v61)(v58, v28, v12);
        v32 = *v64;
        (*v64)(v31, 0, 1, v12);
        v30(v65, v31, v12);
      }

      else
      {
        v32 = *v64;
        v33 = v58;
        (*v64)(v58, 1, 1, v12);
        static Date.now.getter();
        if ((*v54)(v33, 1, v12) != 1)
        {
          sub_100009EBC(v33, &qword_1003B5130, &unk_1002E4220);
        }
      }

      swift_getKeyPath();
      v66 = v26;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v34 = [*(v26 + 72) creationDate];
      if (v34)
      {
        v35 = v62;
        v36 = v34;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = v60;
        v38 = *v61;
        v39 = v35;
        v40 = v55;
        (*v61)(v60, v39, v55);
        v32(v37, 0, 1, v40);
        v41 = v56;
        v38(v56, v37, v40);
        v12 = v40;
      }

      else
      {
        v42 = v60;
        v12 = v55;
        v32(v60, 1, 1, v55);
        v41 = v56;
        static Date.now.getter();
        if ((*v54)(v42, 1, v12) != 1)
        {
          sub_100009EBC(v60, &qword_1003B5130, &unk_1002E4220);
        }
      }

      v43 = v65;
      v44 = static Date.< infix(_:_:)();
      v45 = *v57;
      (*v57)(v41, v12);
      v45(v43, v12);

      v46 = v63;
      if ((v44 & 1) == 0)
      {
LABEL_4:
        a3 = v53 + 1;
        v21 = v52 + 8;
        v22 = v51 - 1;
        if (v53 + 1 == v50)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v59)
      {
        break;
      }

      v47 = *v25;
      v23 = v25[1];
      *v25 = v23;
      v25[1] = v47;
      --v25;
      v48 = __CFADD__(v46, 1);
      v24 = v46 + 1;
      if (v48)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1002B07C8(id **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = v6;
  v143 = a4;
  v144 = a1;
  v9 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  v10 = __chkstk_darwin(v9 - 8);
  v159 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v156 = &v138 - v13;
  v14 = __chkstk_darwin(v12);
  v150 = &v138 - v15;
  __chkstk_darwin(v14);
  v148 = &v138 - v16;
  v17 = type metadata accessor for Date();
  v18 = __chkstk_darwin(v17);
  v155 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v163 = &v138 - v21;
  v22 = __chkstk_darwin(v20);
  v147 = &v138 - v23;
  v24 = __chkstk_darwin(v22);
  v161 = &v138 - v25;
  __chkstk_darwin(v24);
  v151 = &v138 - v27;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_106:
    v4 = *v144;
    if (!*v144)
    {
      goto LABEL_147;
    }

    v5 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_141;
    }

    v133 = v5;
LABEL_109:
    v167 = v133;
    v5 = *(v133 + 2);
    if (v5 >= 2)
    {
      while (*a3)
      {
        v134 = *&v133[16 * v5];
        v135 = v133;
        v136 = *&v133[16 * v5 + 24];
        sub_1002B16C8((*a3 + 8 * v134), (*a3 + 8 * *&v133[16 * v5 + 16]), (*a3 + 8 * v136), v4);
        if (v7)
        {
          goto LABEL_117;
        }

        if (v136 < v134)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v135 = sub_1002C08D4(v135);
        }

        if (v5 - 2 >= *(v135 + 2))
        {
          goto LABEL_135;
        }

        v137 = &v135[16 * v5];
        *v137 = v134;
        *(v137 + 1) = v136;
        v167 = v135;
        sub_1002C0848(v5 - 1);
        v133 = v167;
        v5 = *(v167 + 2);
        if (v5 <= 1)
        {
          goto LABEL_117;
        }
      }

      goto LABEL_145;
    }

LABEL_117:

    return;
  }

  v29 = 0;
  v160 = (v26 + 32);
  v164 = (v26 + 56);
  v153 = (v26 + 48);
  v158 = (v26 + 8);
  v30 = _swiftEmptyArrayStorage;
  v139 = a3;
  v154 = v17;
  while (1)
  {
    if (v29 + 1 >= v28)
    {
      v41 = v29 + 1;
      v53 = v143;
    }

    else
    {
      v152 = v28;
      v142 = v30;
      v31 = *a3;
      v5 = *(*a3 + 8 * (v29 + 1));
      v166 = v5;
      v4 = *(v31 + 8 * v29);
      v165 = v4;

      LODWORD(v149) = sub_1002A986C(&v166, &v165);
      if (v7)
      {

        return;
      }

      v141 = 0;

      v32 = v29 + 2;
      v140 = v29;
      v146 = 8 * v29;
      v33 = (v31 + 8 * v29 + 16);
      while (1)
      {
        v41 = v152;
        if (v152 == v32)
        {
          break;
        }

        v42 = *(v33 - 1);
        v43 = *v33;
        swift_getKeyPath();
        v166 = v43;
        sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v157 = v43;
        v44 = [*(v43 + 72) creationDate];
        if (v44)
        {
          v45 = v161;
          v46 = v44;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v47 = *v160;
          v48 = v148;
          (*v160)(v148, v45, v17);
          v49 = *v164;
          (*v164)(v48, 0, 1, v17);
          v47(v151, v48, v17);
        }

        else
        {
          v49 = *v164;
          v50 = v148;
          (*v164)(v148, 1, 1, v17);
          static Date.now.getter();
          if ((*v153)(v50, 1, v17) != 1)
          {
            sub_100009EBC(v50, &qword_1003B5130, &unk_1002E4220);
          }
        }

        swift_getKeyPath();
        v166 = v42;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v162 = v42;
        v51 = [*(v42 + 72) creationDate];
        if (v51)
        {
          v34 = v161;
          v35 = v51;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v36 = *v160;
          v37 = v150;
          (*v160)(v150, v34, v17);
          v49(v37, 0, 1, v17);
          v38 = v147;
          v36(v147, v37, v17);
        }

        else
        {
          v52 = v150;
          v49(v150, 1, 1, v17);
          v38 = v147;
          static Date.now.getter();
          if ((*v153)(v52, 1, v17) != 1)
          {
            sub_100009EBC(v150, &qword_1003B5130, &unk_1002E4220);
          }
        }

        v39 = v151;
        v5 = static Date.< infix(_:_:)();
        v4 = v158;
        v40 = *v158;
        (*v158)(v38, v17);
        v40(v39, v17);

        ++v32;
        ++v33;
        if ((v149 ^ v5))
        {
          v41 = v32 - 1;
          break;
        }
      }

      v7 = v141;
      a3 = v139;
      v53 = v143;
      v30 = v142;
      v29 = v140;
      v54 = v146;
      if (v149)
      {
        if (v41 < v140)
        {
          goto LABEL_140;
        }

        if (v140 < v41)
        {
          v55 = 8 * v41 - 8;
          v56 = v41;
          v57 = v140;
          do
          {
            if (v57 != --v56)
            {
              v58 = *a3;
              if (!*a3)
              {
                goto LABEL_144;
              }

              v59 = *(v58 + v54);
              *(v58 + v54) = *(v58 + v55);
              *(v58 + v55) = v59;
            }

            ++v57;
            v55 -= 8;
            v54 += 8;
          }

          while (v57 < v56);
        }
      }
    }

    v60 = a3[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v29))
      {
        goto LABEL_137;
      }

      if (v41 - v29 < v53)
      {
        v61 = v29 + v53;
        if (__OFADD__(v29, v53))
        {
          goto LABEL_138;
        }

        if (v61 >= v60)
        {
          v61 = a3[1];
        }

        if (v61 < v29)
        {
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          v133 = sub_1002C08D4(v5);
          goto LABEL_109;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v29)
    {
      goto LABEL_136;
    }

LABEL_36:
    v145 = v62;
    v63 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v30 = v63;
    }

    else
    {
      v30 = sub_10028C748(0, *(v63 + 2) + 1, 1, v63);
    }

    v65 = *(v30 + 2);
    v64 = *(v30 + 3);
    v5 = v65 + 1;
    v66 = v145;
    if (v65 >= v64 >> 1)
    {
      v30 = sub_10028C748((v64 > 1), v65 + 1, 1, v30);
    }

    *(v30 + 2) = v5;
    v67 = &v30[16 * v65];
    *(v67 + 4) = v29;
    *(v67 + 5) = v66;
    v4 = *v144;
    if (!*v144)
    {
      goto LABEL_146;
    }

    if (v65)
    {
      while (1)
      {
        v68 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v69 = *(v30 + 4);
          v70 = *(v30 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_125;
          }

          v85 = &v30[16 * v5];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_128;
          }

          v91 = &v30[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_132;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v5 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v30[16 * v5];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_127;
        }

        v98 = &v30[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_130;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v5)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v107 = v30;
        v5 = *&v30[16 * v106 + 32];
        v108 = *&v30[16 * v68 + 40];
        sub_1002B16C8((*a3 + 8 * v5), (*a3 + 8 * *&v30[16 * v68 + 32]), (*a3 + 8 * v108), v4);
        if (v7)
        {
          goto LABEL_117;
        }

        if (v108 < v5)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1002C08D4(v107);
        }

        if (v106 >= *(v107 + 2))
        {
          goto LABEL_122;
        }

        v109 = &v107[16 * v106];
        *(v109 + 4) = v5;
        *(v109 + 5) = v108;
        v167 = v107;
        sub_1002C0848(v68);
        v30 = v167;
        v5 = *(v167 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v30[16 * v5 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_123;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_124;
      }

      v80 = &v30[16 * v5];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_126;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_129;
      }

      if (v84 >= v76)
      {
        v102 = &v30[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_133;
        }

        if (v71 < v105)
        {
          v68 = v5 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v28 = a3[1];
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_106;
    }
  }

  v142 = v30;
  v141 = v7;
  v157 = *a3;
  v110 = (v157 + 8 * v41 - 8);
  v140 = v29;
  v111 = v29 - v41;
  v145 = v61;
LABEL_87:
  v152 = v41;
  v4 = *(v157 + 8 * v41);
  v146 = v111;
  v112 = v111;
  v149 = v110;
  while (1)
  {
    v162 = v112;
    v113 = *v110;
    swift_getKeyPath();
    v166 = v4;
    sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v114 = [*(v4 + 72) creationDate];
    if (v114)
    {
      v115 = v161;
      v116 = v114;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v117 = *v160;
      v118 = v156;
      (*v160)(v156, v115, v17);
      v119 = *v164;
      (*v164)(v118, 0, 1, v17);
      v117(v163, v118, v17);
    }

    else
    {
      v119 = *v164;
      v120 = v156;
      (*v164)(v156, 1, 1, v17);
      static Date.now.getter();
      if ((*v153)(v120, 1, v17) != 1)
      {
        sub_100009EBC(v120, &qword_1003B5130, &unk_1002E4220);
      }
    }

    swift_getKeyPath();
    v166 = v113;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v121 = [*(v113 + 72) creationDate];
    if (v121)
    {
      v122 = v161;
      v123 = v121;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v124 = v159;
      v125 = *v160;
      v17 = v154;
      (*v160)(v159, v122, v154);
      v119(v124, 0, 1, v17);
      v126 = v155;
      v125(v155, v124, v17);
    }

    else
    {
      v127 = v159;
      v17 = v154;
      v119(v159, 1, 1, v154);
      v126 = v155;
      static Date.now.getter();
      if ((*v153)(v127, 1, v17) != 1)
      {
        sub_100009EBC(v159, &qword_1003B5130, &unk_1002E4220);
      }
    }

    v128 = v163;
    v5 = static Date.< infix(_:_:)();
    v129 = *v158;
    (*v158)(v126, v17);
    v129(v128, v17);

    if ((v5 & 1) == 0)
    {
LABEL_86:
      v41 = v152 + 1;
      v110 = v149 + 1;
      v111 = v146 - 1;
      v62 = v145;
      if (v152 + 1 != v145)
      {
        goto LABEL_87;
      }

      v7 = v141;
      a3 = v139;
      v30 = v142;
      v29 = v140;
      if (v145 < v140)
      {
        goto LABEL_136;
      }

      goto LABEL_36;
    }

    v130 = v162;
    if (!v157)
    {
      break;
    }

    v131 = *v110;
    v4 = v110[1];
    *v110 = v4;
    v110[1] = v131;
    --v110;
    v132 = __CFADD__(v130, 1);
    v112 = v130 + 1;
    if (v132)
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_1002B16C8(char *__dst, char *__src, char *a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v15 = &v5[8 * v10];
    if (v8 < 8 || __src >= v6)
    {
LABEL_21:
      v21 = v7;
      goto LABEL_53;
    }

    v16 = __src;
    while (1)
    {
      v45 = *v16;
      v44 = *v5;

      v17 = sub_1002A986C(&v45, &v44);
      if (v4)
      {

        v33 = v15 - v5 + 7;
        if (v15 - v5 >= 0)
        {
          v33 = v15 - v5;
        }

        if (v7 < v5 || v7 >= &v5[v33 & 0xFFFFFFFFFFFFFFF8] || v7 != v5)
        {
          v34 = 8 * (v33 >> 3);
          v35 = v7;
          goto LABEL_59;
        }

        return 1;
      }

      v18 = v17;

      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = v16;
      v20 = v7 == v16++;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      v7 += 8;
      if (v5 >= v15 || v16 >= v6)
      {
        goto LABEL_21;
      }
    }

    v19 = v5;
    v20 = v7 == v5;
    v5 += 8;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v19;
    goto LABEL_19;
  }

  v21 = __src;
  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v15 = &v5[8 * v13];
  if (v11 < 8 || v21 <= v7)
  {
LABEL_53:
    v39 = v15 - v5 + 7;
    if (v15 - v5 >= 0)
    {
      v39 = v15 - v5;
    }

    if (v21 >= v5 && v21 < &v5[v39 & 0xFFFFFFFFFFFFFFF8] && v21 == v5)
    {
      return 1;
    }

    v34 = 8 * (v39 >> 3);
    v35 = v21;
LABEL_59:
    v38 = v5;
LABEL_60:
    memmove(v35, v38, v34);
    return 1;
  }

  v43 = v5;
  v22 = -v5;
  v41 = -v5;
LABEL_28:
  v42 = v21;
  v23 = (v21 - 8);
  v24 = v15 + v22;
  v6 -= 8;
  v25 = v15;
  v26 = v15;
  while (1)
  {
    v27 = *--v26;
    v45 = v27;
    v28 = v23;
    v44 = *v23;

    v29 = sub_1002A986C(&v45, &v44);
    if (v4)
    {
      break;
    }

    v30 = v29;

    v31 = v6 + 8;
    if (v30)
    {
      v32 = v28;
      if (v31 != v42)
      {
        *v6 = *v28;
      }

      v5 = v43;
      v15 = v25;
      if (v25 <= v43 || (v21 = v32, v22 = v41, v32 <= v7))
      {
        v21 = v32;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v31 != v25)
    {
      *v6 = *v26;
    }

    v24 -= 8;
    v6 -= 8;
    v25 = v26;
    v23 = v28;
    if (v26 <= v43)
    {
      v15 = v26;
      v21 = v42;
      v5 = v43;
      goto LABEL_53;
    }
  }

  if (v24 >= 0)
  {
    v36 = v24;
  }

  else
  {
    v36 = v24 + 7;
  }

  v37 = v36 >> 3;
  v35 = v42;
  v38 = v43;
  if (v42 < v43 || v42 >= v43 + (v36 & 0xFFFFFFFFFFFFFFF8))
  {
    memmove(v42, v43, 8 * v37);
    return 1;
  }

  if (v42 != v43)
  {
    v34 = 8 * v37;
    goto LABEL_60;
  }

  return 1;
}

uint64_t sub_1002B1A60(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10028E05C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100290DB0();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_1002B42C8(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_1002B1AF4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10028DFF0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100290EFC();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 24 * v5);
  sub_1002B44CC(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_1002B1CE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

double sub_1002B1D20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

BOOL sub_1002B1D40(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      swift_getKeyPath();
      sub_1002B2220(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v4 = *(a1 + 72);
      swift_getKeyPath();
      v5 = v4;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v6 = [v5 isEqual:*(a2 + 72)];

      return v6;
    }

    return 0;
  }

  return !a2;
}

unint64_t sub_1002B1E90(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037DEA0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002B1EE4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002B1F48()
{

  return _swift_deallocObject(v0, 40);
}

void sub_1002B1F80(void *a1)
{
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = *(v1 + 16);
    if ([a1 isCancelled])
    {
      sub_1002AD208(1, 1, v2);
    }
  }
}

uint64_t sub_1002B1FD4()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_1002B20A0(uint64_t a1)
{
  type metadata accessor for IndexPath();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  sub_1002AF39C(a1, v3, v4);
}

uint64_t sub_1002B2120()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002B2160()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002B21B0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002B2220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002B2288()
{

  return _swift_deallocObject(v0, 64);
}

unint64_t sub_1002B22FC()
{
  result = qword_1003BC448;
  if (!qword_1003BC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC448);
  }

  return result;
}

uint64_t sub_1002B2350()
{

  return _swift_deallocObject(v0, 27);
}

uint64_t sub_1002B23AC()
{
  v1 = sub_100005AD4(&qword_1003BC458, &qword_1002EE9C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5);
}

uint64_t sub_1002B24A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_100005AD4(&qword_1003BC458, &qword_1002EE9C8) - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 24) & ~v10;
  v12 = *(v4 + 16);
  v13 = v4 + ((*(v9 + 64) + v10 + v11) & ~v10);

  return sub_1002A8C9C(a1, a2, a3, a4, v12, v4 + v11, v13);
}

uint64_t sub_1002B2578()
{

  return _swift_deallocObject(v0, 32);
}

double sub_1002B25F0@<D0>(_OWORD *a1@<X8>)
{
  sub_10027A9FC();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

void sub_1002B265C()
{
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dataSource) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_10011ED3C(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_observers) = v1;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_localDataStore) = _swiftEmptyArrayStorage;
  v2 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_viewModelIdentifierInDictionaryMode);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryController) = 0;
  v3 = v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryHighlightRect;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryTextView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pendingDictionaryModeIdentifier);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_entryCardStaticIdentifier);
  *v5 = 0xD000000000000018;
  v5[1] = 0x80000001002FD730;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_pinComposeCardToKeyboard) = 0;
  v6 = OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_bottomInsetReasonToHeightMap;
  *(v0 + v6) = sub_100292B54(_swiftEmptyArrayStorage);
  v7 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_lastKnownKeyboardFrame);
  *v7 = 0u;
  v7[1] = 0u;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_keyboardIsVisible) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002B27E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002B2830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1002B2884(void *result, int a2)
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

unint64_t sub_1002B28B8()
{
  result = qword_1003BC4D8;
  if (!qword_1003BC4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC4D8);
  }

  return result;
}

uint64_t sub_1002B2914()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002B2A3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002B2AB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1002B2B48(void *a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-v5];
  v7 = [a1 favoriteDate];
  if (v7)
  {
    v8 = v7;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    sub_100009EBC(v6, &qword_1003B5130, &unk_1002E4220);
    v10 = String._bridgeToObjectiveC()();
    [a1 setSessionID:v10];

    sub_1000085CC((v2 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v2 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
    dispatch thunk of TranslationStore.save()();
  }

  else
  {
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_100009EBC(v6, &qword_1003B5130, &unk_1002E4220);
    sub_1000085CC((v2 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v2 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
    dispatch thunk of TranslationStore.deleteBackground(_:completion:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1;
  v13 = static Published.subscript.modify();
  v15 = v14;
  v16 = sub_100289D30(v14, v12);

  if (*v15 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17 >= v16)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v17 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 >= v16)
    {
LABEL_6:
      sub_1002B5490(v16, v17, &type metadata accessor for PersistedTranslation);
      v13(v19, 0);

      return;
    }
  }

  __break(1u);
}

void sub_1002B2E1C(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_observations;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_16:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v10 << 6);
    v15 = *(*(v4 + 48) + 8 * v14);
    sub_100293148(*(v4 + 56) + 16 * v14, v24);
    v25 = v15;
    sub_1000DC2EC(v24, v26);
LABEL_17:
    sub_1002B5860(&v25, &v27);
    if (!v28[0] && v28[1] == 1)
    {

      return;
    }

    v16 = v27;
    sub_1000DC2EC(v28, v24);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1002AFA90(v2, a1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      v17 = sub_10028DFAC(v16);
      if (v18)
      {
        v19 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *(v2 + v3);
        *(v2 + v3) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100290C20();
        }

        sub_1000DC2EC(*(v21 + 56) + 16 * v19, &v23);
        sub_1002B3F88(v19, v21);
        *(v2 + v3) = v21;
      }

      else
      {
        v23 = xmmword_1002D32F0;
      }

      sub_100009EBC(&v23, &qword_1003AFB10, &qword_1002DC1D8);
      swift_endAccess();
    }

    sub_1002B58D0(v24);
  }

  if (v8 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v7 = 0;
      v25 = 0;
      v26[0] = 0;
      v9 = v12;
      v26[1] = 1;
      goto LABEL_17;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_16;
    }
  }

  __break(1u);
}

double sub_1002B3078()
{
  sub_1000085CC((v0 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = dispatch thunk of TranslationStore.translations(with:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v1;

  static Published.subscript.setter();
  if (qword_1003A9278 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2878);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 134349314;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v11 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v7;

    *(v5 + 12) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = sub_10028D78C(v11, v12, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Loaded %{public}ld translations to session with ID: %{public}s", v5, 0x16u);
    sub_100008664(v6);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1002B3370(uint64_t a1)
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v2 = result;
    *&v62[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v62[0] + 1) = v3;
    AnyHashable.init<A>(_:)();
    if (!*(v2 + 16) || (v4 = sub_10028DF68(v64), (v5 & 1) == 0))
    {

      return sub_100078028(v64);
    }

    sub_10000A37C(*(v2 + 56) + 32 * v4, v62);
    sub_100078028(v64);

    sub_10005128C(v62, v63);
    sub_10000A37C(v63, v64);
    sub_100005AD4(&qword_1003BC728, &qword_1002EEC98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (qword_1003A9228 == -1)
      {
LABEL_11:
        v12 = type metadata accessor for Logger();
        sub_1000078E8(v12, qword_1003D2788);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
        }

        return sub_100008664(v63);
      }

LABEL_67:
      swift_once();
      goto LABEL_11;
    }

    v6 = *&v62[0];
    v7 = *&v62[0] & 0xC000000000000001;
    if ((*&v62[0] & 0xC000000000000001) != 0)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_7:
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v61 = v64[0];
        if (v7)
        {
          __CocoaSet.makeIterator()();
          type metadata accessor for PersistedTranslation();
          sub_1002B5808();
          Set.Iterator.init(_cocoa:)();
          v6 = v64[0];
          v8 = v64[1];
          v9 = v64[2];
          v10 = v64[3];
          v11 = v64[4];
        }

        else
        {
          v10 = 0;
          v16 = -1 << *(v6 + 32);
          v8 = v6 + 56;
          v9 = ~v16;
          v17 = -v16;
          if (v17 < 64)
          {
            v18 = ~(-1 << v17);
          }

          else
          {
            v18 = -1;
          }

          v11 = v18 & *(v6 + 56);
        }

        v53 = v9;
        v19 = (v9 + 64) >> 6;
        v56 = v6;
        v57 = _swiftEmptyArrayStorage;
        v54 = v19;
        v55 = v8;
        while (2)
        {
          v20 = v61 & 0xFFFFFFFFFFFFFF8;
          v60 = v61 >> 62;
          if (v6 < 0)
          {
LABEL_28:
            if (!__CocoaSet.Iterator.next()())
            {
              goto LABEL_60;
            }

            type metadata accessor for PersistedTranslation();
            swift_dynamicCast();
            v24 = *&v62[0];
            v58 = v11;
            v59 = v10;
            if (!*&v62[0])
            {
              goto LABEL_60;
            }
          }

          else
          {
LABEL_22:
            v21 = v10;
            v22 = v11;
            v23 = v10;
            if (!v11)
            {
              while (1)
              {
                v23 = v21 + 1;
                if (__OFADD__(v21, 1))
                {
                  break;
                }

                if (v23 >= v19)
                {
                  goto LABEL_60;
                }

                v22 = *(v8 + 8 * v23);
                ++v21;
                if (v22)
                {
                  goto LABEL_26;
                }
              }

LABEL_65:
              __break(1u);
              break;
            }

LABEL_26:
            v58 = (v22 - 1) & v22;
            v59 = v23;
            v24 = *(*(v6 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
            if (!v24)
            {
LABEL_60:
              sub_10000C1D0(v6);
              swift_getKeyPath();
              swift_getKeyPath();
              *&v62[0] = v61;

              static Published.subscript.setter();
              sub_1002B2E1C(v57);

              return sub_100008664(v63);
            }
          }

          if (v60)
          {
            v25 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v25 = *(v20 + 16);
          }

          v26 = -v25;
          v27 = 4;
          while (1)
          {
            if (v26 + v27 == 4)
            {

              v11 = v58;
              v10 = v59;
              v8 = v55;
              v6 = v56;
              v19 = v54;
              if ((v56 & 0x8000000000000000) == 0)
              {
                goto LABEL_22;
              }

              goto LABEL_28;
            }

            v28 = v27 - 4;
            if ((v61 & 0xC000000000000001) != 0)
            {
              v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v28 >= *(v20 + 16))
              {
                __break(1u);
LABEL_64:
                __break(1u);
                goto LABEL_65;
              }

              v29 = *(v61 + 8 * v27);
            }

            v30 = v29;
            v31 = [v29 identifier];
            v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v34 = v33;

            v35 = [v24 identifier];
            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v37;

            if (v32 == v36 && v34 == v38)
            {
              break;
            }

            v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v40)
            {
              goto LABEL_50;
            }

            ++v27;
            v20 = v61 & 0xFFFFFFFFFFFFFF8;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_64;
            }
          }

LABEL_50:
          v41 = v24;
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          v43 = v57;
          if (v60 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
          {
            v61 = sub_1000A38E0(v61);
            v44 = v61 & 0xFFFFFFFFFFFFFF8;
            v6 = v56;
          }

          else
          {
            v6 = v56;
            v44 = v61 & 0xFFFFFFFFFFFFFF8;
          }

          if (v28 < *(v44 + 16))
          {
            v45 = *(v44 + 8 * v27);
            *(v44 + 8 * v27) = v41;

            v46 = [v41 identifier];
            v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v49 = v48;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v43 = sub_10028CA84(0, *(v57 + 2) + 1, 1, v57);
            }

            v8 = v55;
            v51 = *(v43 + 2);
            v50 = *(v43 + 3);
            if (v51 >= v50 >> 1)
            {
              v43 = sub_10028CA84((v50 > 1), v51 + 1, 1, v43);
            }

            *(v43 + 2) = v51 + 1;
            v57 = v43;
            v52 = &v43[16 * v51];
            *(v52 + 4) = v47;
            *(v52 + 5) = v49;
            v11 = v58;
            v10 = v59;
            v19 = v54;
            continue;
          }

          break;
        }

        __break(1u);
        goto LABEL_67;
      }
    }

    else if (*(*&v62[0] + 16))
    {
      goto LABEL_7;
    }

    sub_100008664(v63);
  }

  return result;
}

uint64_t sub_1002B3A04()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD__translations;
  v2 = sub_100005AD4(&qword_1003B8CB0, qword_1002EDBC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100008664((v0 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store));
  v3 = OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD__currentID;
  v4 = sub_100005AD4(&qword_1003AABD8, &unk_1002D48F0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TranslationSession_RD(uint64_t a1)
{
  result = qword_1003BC590;
  if (!qword_1003BC590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B3B6C(uint64_t a1)
{
  sub_100289AE8(319);
  if (v1 <= 0x3F)
  {
    sub_1002B3C5C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002B3C5C()
{
  if (!qword_1003AAA30)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AAA30);
    }
  }
}

uint64_t sub_1002B3CAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002B3CF8(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t sub_1002B3D48@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TranslationSession_RD(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_1002B3D88(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_1002B3E08(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1002B3E8C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_1002B3F0C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_1002B3F88(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 16 * v3;
      if (v3 < v6 || result >= v15 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1002B4118(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1002B42C8(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1002B44CC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      sub_10013B9A0(v21);
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (24 * v3 < (24 * v6) || v16 >= v17 + 24 || v3 != v6)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

uint64_t sub_1002B4698(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_1002B4790(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 24) >> 1)
  {
    v7 = a4();
    *v5 = v7;
  }

  result = a5(v9, a2, 1, a3);
  *v5 = v7;
  return result;
}

unint64_t sub_1002B487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_100005AD4(&qword_1003BBDA0, &qword_1002E7650);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_100009EBC(a4, &qword_1003B79F0, &qword_1002EEC90);
  }

  if (v17 < 1)
  {
    return sub_100009EBC(a4, &qword_1003B79F0, &qword_1002EEC90);
  }

  result = sub_10001F620(a4, v15, &qword_1003BBDA0, &qword_1002E7650);
  if (v12 >= v17)
  {
    return sub_100009EBC(a4, &qword_1003B79F0, &qword_1002EEC90);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_1002B4A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for StreamingRequestInfo(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_100009EBC(a4, &unk_1003BAFA0, &qword_1002EC348);
  }

  if (v17 < 1)
  {
    return sub_100009EBC(a4, &unk_1003BAFA0, &qword_1002EC348);
  }

  result = sub_1000C88BC(a4, v15);
  if (v12 >= v17)
  {
    return sub_100009EBC(a4, &unk_1003BAFA0, &qword_1002EC348);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1002B4B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t *, void))
{
  v32 = a5;
  v30 = a4;
  v31 = a3;
  v14 = a9;
  v15 = sub_100005AD4(&unk_1003B8C90, &qword_1002D4850);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 1);
  __chkstk_darwin(v18);
  v21 = (&v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35[3] = a6;
  v35[4] = a8;
  v22 = sub_100050D60(v35);
  (*(*(a6 - 8) + 16))(v22, a1, a6);
  v34[3] = a7;
  v34[4] = a9;
  v23 = sub_100050D60(v34);
  (*(*(a7 - 8) + 16))(v23, a2, a7);
  sub_100026AA0();
  *v21 = static OS_dispatch_queue.main.getter();
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  LOBYTE(a7) = _dispatchPreconditionTest(_:)();
  v25 = *(v19 + 8);
  v24 = (v19 + 8);
  v25(v21, v18);
  if (a7)
  {
    sub_1000085CC((v32 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v32 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
    v24 = dispatch thunk of TranslationStore.insert(speech:translationResult:isFavorite:)();
    if (!v24)
    {
LABEL_5:
      sub_100008664(v35);
      sub_100008664(v34);
      return v24;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v26 = String._bridgeToObjectiveC()();

    [v24 setSessionID:v26];

    sub_10001F620(v30, v17, &unk_1003B8C90, &qword_1002D4850);
    dispatch thunk of PersistedTranslation.selfLoggingInvocationId.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v24;
    v14 = static Published.subscript.modify();
    if (!(*v27 >> 62))
    {
LABEL_4:
      sub_1002B525C(0, 0, v18);

      v14(&v33, 0);

      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002B4F2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t *, void))
{
  v24 = a4;
  v25 = a8;
  v14 = *(a7 - 8);
  v15 = __chkstk_darwin(a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v15);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21);
  (*(v14 + 16))(v17, a2, a7);
  v22 = sub_1002B4B88(v21, v17, a3, v24, a5, a6, a7, v25, a9);
  if (v22)
  {
    sub_1000085CC((a5 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(a5 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
    dispatch thunk of TranslationStore.save()();
  }

  (*(v19 + 8))(v21, a6);
  (*(v14 + 8))(v17, a7);
  return v22;
}

char *sub_1002B5140(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for PersistedTranslation();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1002B525C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_1002B4698(result, 1);

  return sub_1002B5140(v7, v6, 1, v4);
}

unint64_t sub_1002B5360(unint64_t result, _BYTE *a2, uint64_t a3, uint64_t *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 112 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 112 * v7;
  a2 = (v9 + 32 + 112 * v8);
  a3 = 112 * v14;
  v15 = &a2[112 * v14];
  if (result != a2 || result >= v15)
  {
    result = memmove(result, a2, a3);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  memmove(v10, v6, 0x69uLL);
  a3 = &qword_1003BC738;
  a4 = &qword_1002EECA8;
  a2 = v19;
  result = v6;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_10001F620(result, a2, a3, a4);
    __break(1u);
    return result;
  }

  return sub_10001F620(v6, v19, &qword_1003BC738, &qword_1002EECA8);
}

uint64_t sub_1002B5490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (!v13)
  {
    sub_1002B4698(result, 1);
    return sub_1002B56EC(v7, v6, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1002B556C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_100005AD4(&qword_1003BBDA0, &qword_1002E7650);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1002B56EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_1002B5808()
{
  result = qword_1003AFD60;
  if (!qword_1003AFD60)
  {
    type metadata accessor for PersistedTranslation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFD60);
  }

  return result;
}

uint64_t sub_1002B5860(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003BC730, &qword_1002EECA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002B5900(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_100005AD4(&unk_1003AECF0, &qword_1002DA2E0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B5A18(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_1002B5AF4()
{
  v88 = type metadata accessor for DispatchPredicate();
  v95 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = (&v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_100005AD4(&unk_1003B8C90, &qword_1002D4850);
  v3 = __chkstk_darwin(v2 - 8);
  v73 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v81 = &v64 - v6;
  __chkstk_darwin(v5);
  v92 = &v64 - v7;
  v96 = type metadata accessor for StoredTranslationResult();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v91 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for SpeechResultOrigin();
  v89 = *(v93 - 8);
  __chkstk_darwin(v93);
  v86 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for StoredSpeechResult();
  v65 = *(v90 - 8);
  __chkstk_darwin(v90);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 64);
  v16 = *(v15 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24);
  v82 = (v15 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store);
  sub_1000085CC((v15 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), v16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of TranslationStore.clearHistory(sessionID:completion:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v101 = _swiftEmptyArrayStorage;

  static Published.subscript.setter();
  v74 = v15;
  *(v15 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_lidDisambiguationCounter) = 0;
  v17 = *(v0 + 72);
  v18 = *(v17 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24);
  v80 = (v17 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store);
  sub_1000085CC((v17 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), v18);
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of TranslationStore.clearHistory(sessionID:completion:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v101 = _swiftEmptyArrayStorage;

  static Published.subscript.setter();
  v71 = v17;
  *(v17 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_lidDisambiguationCounter) = 0;
  Locale.init(identifier:)();
  (*(v89 + 13))(v86, enum case for SpeechResultOrigin.text(_:), v93);
  v20 = v92;
  v89 = v14;
  v67 = v12;
  v21 = v91;
  StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
  v22 = 0;
  v23 = (v65 + 16);
  v86 = v94 + 16;
  v85 = enum case for DispatchPredicate.onQueue(_:);
  v84 = (v95 + 104);
  v83 = (v95 + 8);
  v66 = (v94 + 8);
  v72 = (v65 + 16);
LABEL_3:
  v24 = &off_10037CFE0 + 4 * v22;
  v70 = v22 + 1;
  v25 = v24[7];
  v26 = v24[5];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v69 = v26;
  Locale.init(identifier:)();
  v68 = v25;
  StoredTranslationResult.init(text:locale:isOffline:romanization:)();
  v95 = type metadata accessor for UUID();
  v27 = *(v95 - 8);
  v28 = *(v27 + 56);
  v93 = v27 + 56;
  v94 = v28;
  v29 = 3;
  v30 = v20;
  while (1)
  {
    v76 = v29;
    (v94)(v30, 1, 1, v95);
    v31 = v90;
    v102 = v90;
    v79 = sub_100100EB8(&unk_1003AECB0, &type metadata accessor for StoredSpeechResult, &protocol conformance descriptor for StoredSpeechResult);
    v103 = v79;
    v32 = sub_100050D60(&v101);
    v33 = *v23;
    (*v23)(v32, v89, v31);
    v34 = v96;
    v99 = v96;
    v77 = sub_100100EB8(&qword_1003AED00, &type metadata accessor for StoredTranslationResult, &protocol conformance descriptor for StoredTranslationResult);
    v100 = v77;
    v35 = sub_100050D60(&v98);
    v78 = *v86;
    v78(v35, v21, v34);
    sub_100026AA0();
    v36 = static OS_dispatch_queue.main.getter();
    v37 = v87;
    *v87 = v36;
    v38 = *v84;
    v39 = v88;
    (*v84)(v37, v85, v88);
    LOBYTE(v34) = _dispatchPreconditionTest(_:)();
    v40 = *v83;
    (*v83)(v37, v39);
    if ((v34 & 1) == 0)
    {
      break;
    }

    sub_1000085CC(v82, v82[3]);
    v41 = dispatch thunk of TranslationStore.insert(speech:translationResult:isFavorite:)();
    if (!v41)
    {
      goto LABEL_19;
    }

    v42 = v41;
    v75 = v33;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v43 = String._bridgeToObjectiveC()();

    [v42 setSessionID:v43];

    v44 = v92;
    sub_100026D44(v92, v81);
    dispatch thunk of PersistedTranslation.selfLoggingInvocationId.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v42;
    v46 = static Published.subscript.modify();
    if (*v47 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 0)
      {
        goto LABEL_21;
      }
    }

    sub_1002B525C(0, 0, v45);

    v46(&v97, 0);

    sub_100009EBC(v44, &unk_1003B8C90, &qword_1002D4850);
    sub_100008664(&v101);
    sub_100008664(&v98);
    sub_100031DD8(v82, &v101);
    sub_1000085CC(&v101, v102);
    dispatch thunk of TranslationStore.toggleFavorite(_:)();
    sub_100008664(&v101);
    KeyPath = v73;
    (v94)(v73, 1, 1, v95);
    v48 = v90;
    v102 = v90;
    v103 = v79;
    v49 = sub_100050D60(&v101);
    v23 = v72;
    v75(v49, v89, v48);
    v50 = v96;
    v99 = v96;
    v100 = v77;
    v51 = sub_100050D60(&v98);
    v78(v51, v91, v50);
    v52 = static OS_dispatch_queue.main.getter();
    v53 = v87;
    *v87 = v52;
    v54 = v88;
    v38(v53, v85, v88);
    v55 = _dispatchPreconditionTest(_:)();
    v40(v53, v54);
    if ((v55 & 1) == 0)
    {
      goto LABEL_18;
    }

    sub_1000085CC(v80, v80[3]);
    v56 = dispatch thunk of TranslationStore.insert(speech:translationResult:isFavorite:)();
    if (!v56)
    {
      goto LABEL_20;
    }

    v57 = v56;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v58 = String._bridgeToObjectiveC()();

    [v57 setSessionID:v58];

    sub_100026D44(KeyPath, v81);
    dispatch thunk of PersistedTranslation.selfLoggingInvocationId.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v57;
    v60 = static Published.subscript.modify();
    v62 = v76;
    if (*v61 >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
LABEL_16:
      (*(v65 + 8))(v89, v90);
      sub_100005AD4(&qword_1003B8D08, &qword_1002E91C0);
      return swift_arrayDestroy();
    }

    sub_1002B525C(0, 0, v59);

    v60(&v97, 0);

    sub_100009EBC(KeyPath, &unk_1003B8C90, &qword_1002D4850);
    sub_100008664(&v101);
    sub_100008664(&v98);
    sub_100031DD8(v80, &v101);
    sub_1000085CC(&v101, v102);
    dispatch thunk of TranslationStore.toggleFavorite(_:)();

    sub_100008664(&v101);
    v29 = v62 - 1;
    v21 = v91;
    v30 = v92;
    if (v62 == 1)
    {
      v20 = v92;
      (*v66)(v91, v96);

      v22 = v70;
      if (v70 != 3)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_100009EBC(v92, &unk_1003B8C90, &qword_1002D4850);
  sub_100008664(&v101);
  sub_100008664(&v98);
  __break(1u);
LABEL_20:
  sub_100009EBC(KeyPath, &unk_1003B8C90, &qword_1002D4850);
  sub_100008664(&v101);
  result = sub_100008664(&v98);
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1002B6934(uint64_t a1)
{
  v52 = type metadata accessor for DispatchPredicate();
  v43 = *(v52 - 8);
  __chkstk_darwin(v52);
  v4 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100005AD4(&unk_1003B8C90, &qword_1002D4850);
  v6 = __chkstk_darwin(v5 - 8);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v42 = &v38 - v8;
  v55 = type metadata accessor for StoredTranslationResult();
  v39 = *(v55 - 8);
  __chkstk_darwin(v55);
  v56 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for SpeechResultOrigin();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v54 = type metadata accessor for StoredSpeechResult();
  v38 = *(v54 - 8);
  __chkstk_darwin(v54);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 64);
  v15 = (v14 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store);
  v16 = *(v14 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24);
  v49 = *(v14 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 32);
  sub_1000085CC((v14 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), v16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of TranslationStore.clearHistory(sessionID:completion:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v59[0] = _swiftEmptyArrayStorage;

  static Published.subscript.setter();
  v40 = v14;
  *(v14 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_lidDisambiguationCounter) = 0;
  Locale.init(identifier:)();
  (*(v51 + 104))(v50, enum case for SpeechResultOrigin.text(_:), v53);
  v53 = v13;
  StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
  Locale.init(identifier:)();
  result = StoredTranslationResult.init(text:locale:isOffline:romanization:)();
  if (a1 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v18 = v42;
    if (a1)
    {
      v51 = sub_100026AA0();
      v50 = type metadata accessor for UUID();
      v19 = *(v50 - 1);
      v49 = (v38 + 16);
      v48 = (v39 + 16);
      v47 = (v43 + 13);
      v46 = *(v19 + 56);
      v45 = v19 + 56;
      v44 = enum case for DispatchPredicate.onQueue(_:);
      ++v43;
      v46(v18, 1, 1, v50);
      while (1)
      {
        v20 = v54;
        v59[3] = v54;
        v59[4] = sub_100100EB8(&unk_1003AECB0, &type metadata accessor for StoredSpeechResult, &protocol conformance descriptor for StoredSpeechResult);
        v21 = sub_100050D60(v59);
        (*v49)(v21, v53, v20);
        v22 = v55;
        v58[3] = v55;
        v58[4] = sub_100100EB8(&qword_1003AED00, &type metadata accessor for StoredTranslationResult, &protocol conformance descriptor for StoredTranslationResult);
        v23 = sub_100050D60(v58);
        (*v48)(v23, v56, v22);
        *v4 = static OS_dispatch_queue.main.getter();
        v24 = v52;
        (*v47)(v4, v44, v52);
        LOBYTE(v22) = _dispatchPreconditionTest(_:)();
        result = (*v43)(v4, v24);
        if ((v22 & 1) == 0)
        {
          __break(1u);
          goto LABEL_29;
        }

        sub_1000085CC(v15, v15[3]);
        v25 = dispatch thunk of TranslationStore.insert(speech:translationResult:isFavorite:)();
        if (v25)
        {
          break;
        }

LABEL_7:
        sub_100009EBC(v18, &unk_1003B8C90, &qword_1002D4850);
        sub_100008664(v59);
        sub_100008664(v58);
        if (!--a1)
        {
          goto LABEL_27;
        }

        v46(v18, 1, 1, v50);
      }

      v26 = v25;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v27 = String._bridgeToObjectiveC()();

      [v26 setSessionID:v27];

      sub_100026D44(v18, v41);
      dispatch thunk of PersistedTranslation.selfLoggingInvocationId.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      v28 = v26;
      v29 = static Published.subscript.modify();
      v31 = v30;
      v32 = *v30;
      if (!(*v30 >> 62))
      {
        goto LABEL_12;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 0)
      {
        goto LABEL_30;
      }

      v32 = *v31;
      if (*v31 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result < 0)
        {
          goto LABEL_31;
        }

        v37 = _CocoaArrayWrapper.endIndex.getter();
        v34 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
LABEL_12:
        v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_26;
        }
      }

      v35 = *v31;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v31 = v35;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if ((v35 & 0x8000000000000000) == 0 && (v35 & 0x4000000000000000) == 0)
        {
          if (v34 <= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_6;
          }

          goto LABEL_5;
        }
      }

      else if ((v35 & 0x8000000000000000) == 0 && (v35 & 0x4000000000000000) == 0)
      {
        goto LABEL_5;
      }

      _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
      *v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_6:
      sub_1002B5140(0, 0, 1, v28);

      v29(&v57, 0);

      v18 = v42;
      goto LABEL_7;
    }

LABEL_27:
    (*(v39 + 8))(v56, v55);
    return (*(v38 + 8))(v53, v54);
  }

  return result;
}

uint64_t sub_1002B72B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003BC910, &unk_1002EEDE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v45 - v5;
  v7 = type metadata accessor for SELFLoggingInvocationDescription(0);
  v53 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9278 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000078E8(v13, qword_1003D2878);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  v16 = os_log_type_enabled(v14, v15);
  v51 = v11;
  v52 = v10;
  v50 = a1;
  if (v16)
  {
    v46 = v15;
    v47 = v14;
    v17 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61[0] = v45;
    v48 = v17;
    *v17 = 136446466;
    swift_beginAccess();
    v19 = *(v2 + 13);
    v18 = *(v2 + 14);
    v54 = *(v2 + 11);
    v20 = v54;

    swift_getAtKeyPath();
    v21 = v58;
    if (v58)
    {
      v19 = v57;
    }

    else
    {

      v21 = v18;
    }

    v22 = sub_10028D78C(v19, v21, v61);

    v23 = v48;
    *(v48 + 1) = v22;
    *(v23 + 6) = 2082;
    swift_beginAccess();
    v25 = *(v2 + 18);
    v24 = *(v2 + 19);
    v56 = *(v2 + 16);
    v26 = v56;

    swift_getAtKeyPath();
    v27 = v58;
    if (v58)
    {
      v25 = v57;
    }

    else
    {

      v27 = v24;
    }

    v10 = v52;

    v28 = sub_10028D78C(v25, v27, v61);

    v29 = v48;
    *(v48 + 14) = v28;
    v14 = v47;
    _os_log_impl(&_mh_execute_header, v47, v46, "Suspending sessions with IDs; TranslateTab: %{public}s, ConversationTab: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v30 = *(v2 + 31);
  isa = v30[2].isa;
  if (isa)
  {
    v48 = v2;
    v32 = &v30[4];
    v33 = (v53 + 48);
    v47 = v30;

    v34 = _swiftEmptyArrayStorage;
    do
    {
      sub_100031DD8(v32, &v57);
      v35 = v59;
      v36 = v60;
      sub_1000085CC(&v57, v59);
      (*(v36 + 8))(v35, v36);
      sub_100008664(&v57);
      if ((*v33)(v6, 1, v7) == 1)
      {
        sub_100009EBC(v6, &qword_1003BC910, &unk_1002EEDE0);
      }

      else
      {
        sub_1002B8E68(v6, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_10028D560(0, v34[2] + 1, 1, v34);
        }

        v38 = v34[2];
        v37 = v34[3];
        if (v38 >= v37 >> 1)
        {
          v34 = sub_10028D560((v37 > 1), v38 + 1, 1, v34);
        }

        v34[2] = v38 + 1;
        sub_1002B8E68(v9, v34 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v38);
      }

      v32 += 40;
      isa = (isa - 1);
    }

    while (isa);

    v2 = v48;
    v10 = v52;
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v55 = v34;
  v56 = v34;

  swift_setAtWritableKeyPath();
  PassthroughSubject.send(_:)();

  swift_endAccess();
  v39 = v51;
  v40 = v49;
  (*(v51 + 16))(v49, v50, v10);
  v41 = [objc_opt_self() standardUserDefaults];
  v42 = Date._bridgeToObjectiveC()().super.isa;
  v43 = String._bridgeToObjectiveC()();
  [v41 setObject:v42 forKey:v43];

  result = (*(v39 + 8))(v40, v10);
  *(v2 + 240) = 1;
  return result;
}

void sub_1002B79AC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  isa = v6[-1].isa;
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 240) == 1)
  {
    sub_100229518(v9);
    Date.timeIntervalSince(_:)();
    v11 = v10;
    v12 = *(isa + 1);
    v12(v9, v6);
    if (*(v2 + 16) >= v11)
    {
      if (a2)
      {
        if (qword_1003A9278 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_1000078E8(v21, qword_1003D2878);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "Session is resuming within the time limit on first launch", v24, 2u);
        }

        sub_1002B86C4();
      }
    }

    else
    {
      if (qword_1003A9278 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000078E8(v13, qword_1003D2878);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Session was timed-out when resuming", v16, 2u);
      }

      sub_1002B8A54();
      sub_1002B80CC();
    }

    if (qword_1003A9278 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000078E8(v25, qword_1003D2878);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v44 = v27;
      v45 = isa;
      v46 = a1;
      v47 = v12;
      v48 = isa + 8;
      v49 = v6;
      v28 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v52 = v43;
      *v28 = 136446466;
      swift_beginAccess();
      v30 = *(v3 + 104);
      v29 = *(v3 + 112);
      v50 = *(v3 + 88);
      v31 = v50;

      swift_getAtKeyPath();
      v32 = v54;
      if (v54)
      {
        v30 = v53;
      }

      else
      {

        v32 = v29;
      }

      v33 = sub_10028D78C(v30, v32, &v52);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2082;
      swift_beginAccess();
      v34 = *(v3 + 144);
      v35 = *(v3 + 152);
      v51 = *(v3 + 128);
      v36 = v51;

      swift_getAtKeyPath();
      v37 = v54;
      if (v54)
      {
        v34 = v53;
      }

      else
      {

        v37 = v35;
      }

      v38 = sub_10028D78C(v34, v37, &v52);

      *(v28 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v26, v44, "Resuming sessions with IDs; TranslateTab: %{public}s, ConversationTab: %{public}s", v28, 0x16u);
      swift_arrayDestroy();

      v6 = v49;
      a1 = v46;
      v12 = v47;
      isa = v45;
    }

    else
    {
    }

    *(v3 + 240) = 0;
    (*(isa + 2))(v9, a1, v6);
    v39 = [objc_opt_self() standardUserDefaults];
    v40 = Date._bridgeToObjectiveC()().super.isa;
    v41 = String._bridgeToObjectiveC()();
    [v39 setObject:v40 forKey:v41];

    v12(v9, v6);
    swift_beginAccess();
    v51 = _swiftEmptyArrayStorage;
    v52 = _swiftEmptyArrayStorage;
    swift_setAtWritableKeyPath();
    PassthroughSubject.send(_:)();
    swift_endAccess();
  }

  else
  {
    if (qword_1003A9278 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000078E8(v17, qword_1003D2878);
    v49 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v49, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v49, v18, "Trying to resume but not suspended", v19, 2u);
    }

    v20 = v49;
  }
}

uint64_t sub_1002B80CC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9278 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D2878);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Preparing new sessions", v9, 2u);
  }

  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v5, v2);
  swift_beginAccess();
  v31 = v10;
  v32 = v12;
  v29 = v10;
  v30 = v12;

  swift_setAtWritableKeyPath();
  PassthroughSubject.send(_:)();

  swift_endAccess();
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  v13(v5, v2);
  swift_beginAccess();
  v31 = v14;
  v32 = v16;
  v29 = v14;
  v30 = v16;

  swift_setAtWritableKeyPath();
  PassthroughSubject.send(_:)();

  swift_endAccess();
  v17 = v1[8];
  v19 = v1[13];
  v18 = v1[14];
  v31 = v1[11];
  v20 = v31;

  swift_getAtKeyPath();
  v21 = v34;
  if (v34)
  {
    v19 = v33;
  }

  else
  {

    v21 = v18;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v19;
  v34 = v21;

  static Published.subscript.setter();
  v22 = v1[9];
  v24 = v1[18];
  v23 = v1[19];
  v31 = v1[16];
  v25 = v31;

  swift_getAtKeyPath();
  v26 = v34;
  if (v34)
  {
    v24 = v33;
  }

  else
  {

    v26 = v23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v24;
  v34 = v26;

  static Published.subscript.setter();
  sub_1000085CC(v1 + 3, v1[6]);
  dispatch thunk of TranslationStore.clearHistory(completion:)();
  sub_1000085CC((v17 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v17 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of TranslationStore.clearHistory(sessionID:completion:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v33 = _swiftEmptyArrayStorage;

  static Published.subscript.setter();
  *(v17 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_lidDisambiguationCounter) = 0;
  sub_1000085CC((v22 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v22 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of TranslationStore.clearHistory(sessionID:completion:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v33 = _swiftEmptyArrayStorage;

  result = static Published.subscript.setter();
  *(v22 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_lidDisambiguationCounter) = 0;
  return result;
}

double sub_1002B86C4()
{
  v1 = v0;
  if (qword_1003A9278 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2878);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Loading sessions with translations", v5, 2u);
  }

  swift_beginAccess();
  v6 = *(v1 + 88);

  swift_getAtKeyPath();
  if (!v13)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_beginAccess();
  v7 = *(v1 + 152);
  v8 = *(v1 + 128);

  swift_getAtKeyPath();
  v9 = v12;
  if (v12)
  {
  }

  else
  {

    v9 = v7;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  v10 = *(v1 + 168);

  swift_getAtKeyPath();
  if (!v9)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_1002B3078();
  sub_1002B3078();
  return sub_1002B3078();
}

void sub_1002B8A54()
{
  v1 = type metadata accessor for SELFLoggingInvocationDescription(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = *(v0 + 224);
  v28[0] = *(v0 + 208);
  v6 = v28[0];

  swift_getAtKeyPath();
  v7 = v31[0];
  if (v31[0])
  {
  }

  else
  {

    v7 = v5;
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v1 + 24);
    v26 = v0;
    v27 = v9;
    v10 = objc_opt_self();
    v11 = *(v2 + 80);
    v25 = v7;
    v12 = v7 + ((v11 + 32) & ~v11);
    v13 = *(v2 + 72);
    do
    {
      sub_100224AE0(v12, v4);
      v14 = objc_allocWithZone(_LTLocalePair);
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v16 = Locale._bridgeToObjectiveC()().super.isa;
      v17 = [v14 initWithSourceLocale:isa targetLocale:{v16, v25}];

      v18 = UUID._bridgeToObjectiveC()().super.isa;
      v19 = String._bridgeToObjectiveC()();
      [v10 userEndedTypingWithInvocationId:v18 payload:v19 localePair:v17 reason:2];

      sub_100224B44(v4);
      v12 += v13;
      --v8;
    }

    while (v8);

    v0 = v26;
  }

  else
  {
  }

  swift_beginAccess();
  v20 = *(v0 + 248);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20 + 32;

    do
    {
      sub_100031DD8(v22, v28);
      v23 = v29;
      v24 = v30;
      sub_1000085CC(v28, v29);
      (*(v24 + 16))(v23, v24);
      sub_100008664(v28);
      v22 += 40;
      --v21;
    }

    while (v21);
  }
}

void *sub_1002B8D30()
{
  sub_100008664(v0 + 3);

  v1 = v0[11];

  v2 = v0[16];

  v3 = v0[21];

  v4 = v0[26];

  return v0;
}

uint64_t sub_1002B8E00()
{
  sub_1002B8D30();

  return swift_deallocClassInstance();
}

uint64_t sub_1002B8E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SELFLoggingInvocationDescription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B8ECC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002B8F40(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1002B8FBC(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v20 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator20TTSPlaybackViewModel_conversationManager);
  if (v20)
  {
    v38 = v20;
    sub_10009698C(a1, a2);
    v21 = v38;
  }

  else
  {
    v30 = &v29 - v18;
    v31 = v5;
    v32 = v19;
    v33 = v12;
    v34 = v8;
    v35 = v10;
    v36 = v9;
    v37 = v6;
    v38 = v17;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v22 = LOBYTE(aBlock[0]);
    swift_getKeyPath();
    swift_getKeyPath();
    if (v22 == 1)
    {
      LOBYTE(aBlock[0]) = 0;

      static Published.subscript.setter();
    }

    else
    {
      LOBYTE(aBlock[0]) = 1;

      static Published.subscript.setter();
      sub_100026AA0();
      v23 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v24 = v30;
      + infix(_:_:)();
      v32 = *(v32 + 8);
      (v32)(v16, v38);
      aBlock[4] = sub_1002B982C;
      aBlock[5] = v2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100096948;
      aBlock[3] = &unk_10038C930;
      v25 = _Block_copy(aBlock);

      v26 = v33;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100026DC4(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
      sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50, &unk_1002D61C0, &protocol conformance descriptor for [A]);
      v27 = v34;
      v28 = v31;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v25);

      (*(v37 + 8))(v27, v28);
      (*(v35 + 8))(v26, v36);
      (v32)(v24, v38);
    }
  }
}

uint64_t sub_1002B94BC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002B952C()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator20TTSPlaybackViewModel__isPlaying;
  v2 = sub_100005AD4(&unk_1003B8DF0, &unk_1002D7960);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTSPlaybackViewModel(uint64_t a1)
{
  result = qword_1003BC958;
  if (!qword_1003BC958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B9648(uint64_t a1)
{
  sub_1000C1BC0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002B96F0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TTSPlaybackViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_1002B9730(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_1002B97B4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_1002B9834(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002B984C(char *a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003B23F0, &unk_1002D7900);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v26 = sub_100005AD4(&qword_1003AABE0, &unk_1002D4900);
  v7 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = &v26 - v8;
  v10 = sub_100005AD4(&qword_1003AABE8, &qword_1002D6350);
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = sub_100005AD4(&unk_1003B8DF0, &unk_1002D7960);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  v18 = OBJC_IVAR____TtC17SequoiaTranslator20TTSPlaybackViewModel__isPlaying;
  LOBYTE(v29) = 0;
  Published.init(initialValue:)();
  (*(v15 + 32))(v2 + v18, v17, v14);
  v19 = OBJC_IVAR____TtC17SequoiaTranslator20TTSPlaybackViewModel_conversationManager;
  *(v2 + OBJC_IVAR____TtC17SequoiaTranslator20TTSPlaybackViewModel_conversationManager) = 0;
  *(v2 + OBJC_IVAR____TtC17SequoiaTranslator20TTSPlaybackViewModel_subscriptions) = _swiftEmptyArrayStorage;
  *(v2 + v19) = a1;
  swift_beginAccess();
  v20 = a1;
  sub_100005AD4(&qword_1003AABF0, &unk_1002D4910);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100026AA0();
  v21 = static OS_dispatch_queue.main.getter();
  v29 = v21;
  v22 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  sub_10001BAEC(&qword_1003AABF8, &qword_1003AABE0, &unk_1002D4900, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100026DC4(&qword_1003B2410, sub_100026AA0, &protocol conformance descriptor for OS_dispatch_queue);
  v23 = v26;
  Publisher.receive<A>(on:options:)();
  sub_10009657C(v6);

  (*(v7 + 8))(v9, v23);
  sub_10001BAEC(qword_1003AAC00, &qword_1003AABE8, &qword_1002D6350, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v24 = v27;
  Publisher<>.sink(receiveValue:)();

  (*(v28 + 8))(v13, v24);
  swift_beginAccess();
  sub_100005AD4(&unk_1003B8DE0, &qword_1002DCA80);
  sub_10001BAEC(&qword_1003AE440, &unk_1003B8DE0, &qword_1002DCA80, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  return v2;
}

uint64_t sub_1002B9D2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002B9DA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002B9E14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_1002B9E88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1002B9EFC(uint64_t a1, uint64_t a2, void **a3, unint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, char a14, char a15)
{
  v94 = a5;
  v95 = a7;
  v92 = a6;
  v19 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v19 - 8);
  v21 = &v85 - v20;
  v22 = type metadata accessor for Locale();
  v93 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v85 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    swift_continuation_throwingResume();
    return;
  }

  v29 = Strong;
  v91 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v99)
  {
    goto LABEL_9;
  }

  if (aBlock == a3 && v99 == a4)
  {
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (aBlock != (v94 & 1))
  {
LABEL_9:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v96 = a3;
    v90 = v21;
    if (v99)
    {
      v89 = a8;

      if (qword_1003A92A0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_1000078E8(v31, qword_1003D28F0);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v97 = v88;
        *v34 = 136446466;
        *(v34 + 4) = sub_10028D78C(a3, a4, &v97);
        *(v34 + 12) = 2082;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v99)
        {
          v35 = aBlock;
        }

        else
        {
          v35 = 0;
        }

        if (v99)
        {
          v36 = v99;
        }

        else
        {
          v36 = 0xE000000000000000;
        }

        v37 = sub_10028D78C(v35, v36, &v97);

        *(v34 + 14) = v37;
        a3 = v96;
        _os_log_impl(&_mh_execute_header, v32, v33, "New translation TTS will start before the currently playing one ends. New translation: %{public}s. Currently playing translation: %{public}s", v34, 0x16u);
        swift_arrayDestroy();
      }

      a8 = v89;
      sub_1002BBD20();
    }

    v94 &= 1u;
    if (qword_1003A92A0 != -1)
    {
      swift_once();
    }

    v87 = a11;
    v88 = a12;
    v86 = a10;
    v38 = type metadata accessor for Logger();
    sub_1000078E8(v38, qword_1003D28F0);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v89 = v22;
      v42 = v27;
      v43 = v25;
      v44 = a8;
      v45 = v41;
      v46 = swift_slowAlloc();
      aBlock = v46;
      *v45 = 136446466;
      *(v45 + 4) = sub_10028D78C(v96, a4, &aBlock);
      *(v45 + 12) = 1026;
      v47 = v94;
      *(v45 + 14) = v94 ^ 1;
      _os_log_impl(&_mh_execute_header, v39, v40, "Setting UI state for TTS with identifier %{public}s; source: %{BOOL,public}d", v45, 0x12u);
      sub_100008664(v46);
      a3 = v96;

      a8 = v44;
      v25 = v43;
      v27 = v42;
      v22 = v89;
    }

    else
    {

      v47 = v94;
    }

    LODWORD(v89) = a13;
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = a3;
    v99 = a4;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = v47;

    static Published.subscript.setter();
    v49 = v92;
    v48 = v93;
    v50 = *(v93 + 16);
    v50(v27, v92, v22);
    if (v95)
    {
      v51 = v49;
    }

    else
    {
      v51 = a8;
    }

    v50(v25, v51, v22);
    sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
    v52 = static OS_dispatch_queue.main.getter();
    v53 = objc_allocWithZone(_LTSpeakRequest);
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v55 = Locale._bridgeToObjectiveC()().super.isa;
    v56 = [v53 initWithSourceLocale:isa targetLocale:v55 handlerQueue:v52];

    v57 = *(v48 + 8);
    v57(v25, v22);
    v57(v27, v22);
    if (v86)
    {
      v58 = v56;
      v59 = String._bridgeToObjectiveC()();
    }

    else
    {
      v60 = v56;
      v59 = 0;
    }

    v61 = v91;
    [v56 setSessionID:v59];

    v62 = v88;
    sub_1002BCFF4(v87, v88, v95 & 1);
    v63 = String._bridgeToObjectiveC()();

    [v56 setText:v63];

    ObjectType = swift_getObjectType();
    (*(v62 + 96))(ObjectType, v62);
    [v56 setTtsPlaybackRate:?];
    v65 = v89;
    [v56 setMuteTTSBasedOnRingerSwitchIfPossible:v89 & 1];
    v66 = swift_allocObject();
    swift_weakInit();
    v102 = sub_1002BD274;
    v103 = v66;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_1002BAE6C;
    v101 = &unk_10038CA10;
    v67 = _Block_copy(&aBlock);

    [v56 setAudioStartHandler:v67];
    _Block_release(v67);
    sub_10000A2CC(0, &qword_1003A9B80, NSUserDefaults_ptr);
    v68 = static NSUserDefaults.translationGroupDefaults.getter();
    LOBYTE(v63) = NSUserDefaults.onDeviceOnly.getter();

    [v56 setForcedOfflineTranslation:v63 & 1];
    v101 = &type metadata for TranslateFeatures;
    v102 = sub_100009DF8();
    LOBYTE(aBlock) = 18;
    LOBYTE(v68) = isFeatureEnabled(_:)();
    sub_100008664(&aBlock);
    v69 = v94;
    if (v68)
    {
      [v56 setPreferOnDeviceIfAvailable:1];
    }

    v70 = swift_allocObject();
    swift_weakInit();

    v71 = swift_allocObject();
    v72 = v96;
    *(v71 + 16) = v70;
    *(v71 + 24) = v72;
    *(v71 + 32) = a4;
    *(v71 + 40) = v69;
    *(v71 + 48) = v61;
    v102 = sub_1002BD2D4;
    v103 = v71;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_100227798;
    v101 = &unk_10038CA60;
    v73 = _Block_copy(&aBlock);

    [v56 setCompletionHandler:v73];
    _Block_release(v73);
    if (v65)
    {
      if (a14)
      {
        v74 = 112;
        v75 = v96;
        if ((a15 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v74 = 16;
        v75 = v96;
        if ((a15 & 1) == 0)
        {
          goto LABEL_50;
        }
      }
    }

    else if (a14)
    {
      v74 = 96;
      v75 = v96;
      if ((a15 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v74 = 0;
      v75 = v96;
      if ((a15 & 1) == 0)
      {
LABEL_50:
        v80 = type metadata accessor for TaskPriority();
        v81 = v90;
        (*(*(v80 - 8) + 56))(v90, 1, 1, v80);
        type metadata accessor for MainActor();

        v82 = v56;
        v83 = static MainActor.shared.getter();
        v84 = swift_allocObject();
        *(v84 + 16) = v83;
        *(v84 + 24) = &protocol witness table for MainActor;
        *(v84 + 32) = v29;
        *(v84 + 40) = v74;
        *(v84 + 48) = v75;
        *(v84 + 56) = a4;
        *(v84 + 64) = v69;
        *(v84 + 72) = v61;
        *(v84 + 80) = v82;
        sub_10005E36C(0, 0, v81, &unk_1002EF030, v84);

        return;
      }
    }

    v74 |= 1uLL;
    goto LABEL_50;
  }

  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  sub_1000078E8(v76, qword_1003D28F0);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&_mh_execute_header, v77, v78, "User paused in-progress TTS, cancelling the current playback", v79, 2u);
  }

  sub_1002BBD20();
  swift_continuation_throwingResume();
}

uint64_t sub_1002BAB74(unint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (qword_1003A92A0 != -1)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = type metadata accessor for Logger();
  sub_1000078E8(v11, qword_1003D28F0);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134349312;
    if (a1)
    {
      if (a1 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v15 = 0;
    }

    *(v14 + 4) = v15;

    *(v14 + 12) = 2050;
    *(v14 + 14) = a3;
    _os_log_impl(&_mh_execute_header, v12, v13, "Audio started. wordTimingInfo.count: %{public}ld. totalDuration: %{public}f", v14, 0x16u);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = *&a3;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = a1;

  return static Published.subscript.setter();
}

uint64_t sub_1002BAE6C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10000A2CC(0, &qword_1003BCC68, _LTWordTimingInfo_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5(v4, a3);
}

double sub_1002BAF04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = _dispatchPreconditionTest(_:)();
  v16 = *(v11 + 8);
  v15 = v11 + 8;
  v16(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v40)
  {
    goto LABEL_15;
  }

  if (v39 == a3 && v40 == a4)
  {

    goto LABEL_8;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
LABEL_15:
    v15 = 0;
    if (!a1)
    {
      goto LABEL_9;
    }

LABEL_16:
    swift_errorRetain();
    if (qword_1003A92A0 == -1)
    {
LABEL_17:
      v24 = type metadata accessor for Logger();
      sub_1000078E8(v24, qword_1003D28F0);
      swift_errorRetain();

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v39 = v29;
        *v27 = 136446466;
        *(v27 + 4) = sub_10028D78C(a3, a4, &v39);
        *(v27 + 12) = 2112;
        v30 = _convertErrorToNSError(_:)();
        *(v27 + 14) = v30;
        *v28 = v30;
        _os_log_impl(&_mh_execute_header, v25, v26, "TTS speak request failed for translation: %{public}s. Error: %@", v27, 0x16u);
        sub_1000DDF70(v28);

        sub_100008664(v29);
      }

      if (v15)
      {
        sub_1002BBEE4();
      }

      sub_100005AD4(&unk_1003B9E90, &qword_1002D6650);
      swift_allocError();
      *v31 = a1;
      swift_continuation_throwingResumeWithError();
      goto LABEL_32;
    }

LABEL_35:
    swift_once();
    goto LABEL_17;
  }

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v39 ^ a5 ^ 1;
  if (a1)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000078E8(v19, qword_1003D28F0);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v39 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_10028D78C(a3, a4, &v39);
    _os_log_impl(&_mh_execute_header, v20, v21, "TTS speak request complete for translation: %{public}s", v22, 0xCu);
    sub_100008664(v23);
  }

  if (v15)
  {
    sub_1002BBEE4();
  }

  else
  {

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v34 = 136446466;
      *(v34 + 4) = sub_10028D78C(a3, a4, &v38);
      *(v34 + 12) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v40)
      {
        v35 = v39;
      }

      else
      {
        v35 = 7104878;
      }

      if (v40)
      {
        v36 = v40;
      }

      else
      {
        v36 = 0xE300000000000000;
      }

      v37 = sub_10028D78C(v35, v36, &v38);

      *(v34 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v32, v33, "Currently playing translation was changed before it completed. Completed translation: %{public}s. Currently playing translation: %{public}s", v34, 0x16u);
      swift_arrayDestroy();
    }
  }

  swift_continuation_throwingResume();
LABEL_32:

  return result;
}

uint64_t sub_1002BB5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 72) = v13;
  *(v8 + 80) = v14;
  *(v8 + 145) = a8;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  type metadata accessor for MainActor();
  *(v8 + 88) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 96) = v10;
  *(v8 + 104) = v9;

  return _swift_task_switch(sub_1002BB664, v10, v9);
}

uint64_t sub_1002BB68C()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = sub_100005AD4(&unk_1003AECD0, &qword_1002DA230);
  *v4 = v0;
  v4[1] = sub_1002BB798;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 4, 0, 0, 0xD000000000000022, 0x80000001002F2D50, sub_1000A46E0, v3, v5);
}

uint64_t sub_1002BB798()
{

  return _swift_task_switch(sub_1002BB8B0, 0, 0);
}

uint64_t sub_1002BB8D0()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = *(v0 + 24);
  if (v1)
  {
    if (*(v0 + 16) == *(v0 + 56) && v1 == *(v0 + 64))
    {

      goto LABEL_6;
    }

    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v2)
    {
LABEL_6:
      v3 = *(v0 + 145);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v4 = *(v0 + 144) ^ v3 ^ 1;
      v5 = *(v0 + 136);
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  v4 = 0;
  v5 = *(v0 + 136);
  if (!v5)
  {
LABEL_7:
    if (v4)
    {
      if (qword_1003A92A0 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000078E8(v6, qword_1003D28F0);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "TTS speak request starting", v9, 2u);
      }

      v10 = *(v0 + 80);
      v11 = *(v0 + 40);

      [*(v11 + 16) translate:v10];
    }

    else
    {
      if (qword_1003A92A0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000078E8(v19, qword_1003D28F0);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Not starting TTS request since it's been cancelled while doing prep work", v22, 2u);
      }
    }

    goto LABEL_26;
  }

LABEL_14:
  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000078E8(v12, qword_1003D28F0);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = _convertErrorToNSError(_:)();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "TTS audio session config failed. Error: %@", v15, 0xCu);
    sub_1000DDF70(v16);
  }

  if (v4)
  {
    sub_1002BBEE4();
  }

  sub_100005AD4(&unk_1003B9E90, &qword_1002D6650);
  swift_allocError();
  *v18 = v5;
  swift_continuation_throwingResumeWithError();
LABEL_26:
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1002BBD20()
{
  v1 = v0;
  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D28F0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v12)
    {
      v7 = v11;
    }

    else
    {
      v7 = 0;
    }

    if (v12)
    {
      v8 = v12;
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    v9 = sub_10028D78C(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Cleaning up translator to cancel currently playing translation: %{public}s", v5, 0xCu);
    sub_100008664(v6);
  }

  [*(v1 + 16) cleanup];
  return sub_1002BBEE4();
}

uint64_t sub_1002BBEE4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1002BBFD4(uint64_t a1)
{
  v1 = Notification.userInfo.getter();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v2 + 16) || (v3 = sub_10028DF68(v16), (v4 & 1) == 0))
  {

    sub_100078028(v16);
    return;
  }

  sub_10000A37C(*(v2 + 56) + 32 * v3, v17);
  sub_100078028(v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (!v15)
  {
    if (qword_1003A92A0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000078E8(v9, qword_1003D28F0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_23;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Audio interruption ended";
    goto LABEL_22;
  }

  if (v15 != 1)
  {
    if (qword_1003A92A0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000078E8(v14, qword_1003D28F0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_23;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Audio interruption with unhandled type";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);

LABEL_23:

    return;
  }

  if (qword_1003A92A0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D28F0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Audio interruption began", v8, 2u);
  }

  sub_1002BBD20();
}

uint64_t sub_1002BC3A4()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator10TTSManager__currentlyPlayingTranslationID;
  v2 = sub_100005AD4(&qword_1003AABF0, &unk_1002D4910);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17SequoiaTranslator10TTSManager__currentSide;
  v4 = sub_100005AD4(&qword_1003AC790, &qword_1002D63B8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17SequoiaTranslator10TTSManager__wordTimingInfo;
  v6 = sub_100005AD4(&qword_1003BCC70, &qword_1002EF0D0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC17SequoiaTranslator10TTSManager__totalDuration;
  v8 = sub_100005AD4(&qword_1003BCC78, &qword_1002EF0D8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTSManager(uint64_t a1)
{
  result = qword_1003BCAA8;
  if (!qword_1003BCAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BC594(uint64_t a1)
{
  sub_100029834(319, &qword_1003AEC00, &qword_1003AA740, &unk_1002D42F0);
  if (v1 <= 0x3F)
  {
    sub_100026204(319, &qword_1003BCAB8, &type metadata for TTSManager.PlaybackSide);
    if (v2 <= 0x3F)
    {
      sub_100029834(319, &qword_1003BCAC0, &qword_1003BCAC8, &qword_1002EEED8);
      if (v3 <= 0x3F)
      {
        sub_100026204(319, &unk_1003BCAD0, &type metadata for Double);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_1002BC748()
{
  result = qword_1003BCC60;
  if (!qword_1003BCC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BCC60);
  }

  return result;
}

uint64_t sub_1002BC79C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TTSManager(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

double sub_1002BC7DC@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1002BC85C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1002BC8E0(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_1002BC960(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1002BC9D4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_1002BCA54(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_1002BCAD0@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1002BCB50(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002BCBDC(void *a1, void *a2)
{
  v34 = a1;
  v35 = a2;
  v3 = sub_100005AD4(&qword_1003BCC78, &qword_1002EF0D8);
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v31 = &v30 - v4;
  v30 = sub_100005AD4(&qword_1003BCC70, &qword_1002EF0D0);
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v30 - v6;
  v8 = sub_100005AD4(&qword_1003AC790, &qword_1002D63B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = sub_100005AD4(&qword_1003AABF0, &unk_1002D4910);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - v14;
  v16 = OBJC_IVAR____TtC17SequoiaTranslator10TTSManager__currentlyPlayingTranslationID;
  v36 = 0;
  v37 = 0;
  sub_100005AD4(&qword_1003AA740, &unk_1002D42F0);
  Published.init(initialValue:)();
  (*(v13 + 32))(v2 + v16, v15, v12);
  v17 = OBJC_IVAR____TtC17SequoiaTranslator10TTSManager__currentSide;
  LOBYTE(v36) = 1;
  Published.init(initialValue:)();
  (*(v9 + 32))(v2 + v17, v11, v8);
  v18 = OBJC_IVAR____TtC17SequoiaTranslator10TTSManager__wordTimingInfo;
  v36 = 0;
  sub_100005AD4(&qword_1003BCAC8, &qword_1002EEED8);
  Published.init(initialValue:)();
  (*(v5 + 32))(v2 + v18, v7, v30);
  v19 = OBJC_IVAR____TtC17SequoiaTranslator10TTSManager__totalDuration;
  v36 = 0;
  v20 = v31;
  Published.init(initialValue:)();
  (*(v32 + 32))(v2 + v19, v20, v33);
  v22 = v34;
  v21 = v35;
  *(v2 + 16) = v34;
  *(v2 + 24) = v21;
  v23 = objc_opt_self();
  v24 = v22;
  v25 = v21;
  v26 = [v23 defaultCenter];
  v27 = objc_opt_self();

  v28 = [v27 sharedInstance];
  [v26 addObserver:v2 selector:"handleAudioInterruptionWithNotification:" name:AVAudioSessionInterruptionNotification object:v28];

  return v2;
}

uint64_t sub_1002BCFF4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(ObjectType, a2);
  (*(a2 + 40))(ObjectType, a2);
  v13 = static Locale.== infix(_:_:)();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v14(v11, v5);
  if (v13)
  {
    return (*(a2 + 64))(ObjectType, a2);
  }

  if (a3)
  {
    result = (*(a2 + 64))(ObjectType, a2);
  }

  else
  {
    result = (*(a2 + 72))(ObjectType, a2);
  }

  if (byte_1003D2A90 == 1)
  {
    v16 = objc_opt_self();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v16 stringReplacingRedactionsWithBeepMarker:v17];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v19;
  }

  return result;
}

uint64_t sub_1002BD23C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

double sub_1002BD27C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002BD294()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1002BD2E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1002BD338(uint64_t a1)
{
  v4 = *(v1 + 24);
  v12 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001B16C;

  return sub_1002BB5B8(a1, v12, v4, v5, v6, v7, v8, v9);
}

void sub_1002BD444(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR____TtC17SequoiaTranslator16ConversationTurn_request) censorSpeech];
  v22 = v1;
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_censorSpeech) = v2;
  sub_1000A7108(v24);
  if (!v24[3])
  {
    sub_1002BD7CC(v24);
    return;
  }

  sub_100005AD4(&qword_1003AC710, &unk_1002E7640);
  sub_10000A2CC(0, &unk_1003B9ED0, _LTTranslationResult_ptr);
  if (swift_dynamicCast())
  {
    v3 = [v23 route] == 1;
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_offline) = v3;
    v24[0] = v23;
    sub_1000A94FC();
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_lowQualityMT) = TranslationResult.isLowConfidence.getter() & 1;
    v4 = [v23 translations];
    sub_10000A2CC(0, &qword_1003AED08, _LTTranslationCandidate_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_28;
      }
    }

    else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_31;
      }

      v6 = *(v5 + 32);
    }

    v7 = v6;

    v8 = [v7 statistics];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 inputTokenCount];
      *(v22 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_inputTokenCount) = v10;
      v11 = [v9 inputSubtokenCount];

      *(v22 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_inputSubtokenCount) = v11;
    }

    v12 = [v7 senses];
    sub_10000A2CC(0, &qword_1003AEE80, _LTTranslationSense_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (v14)
      {
LABEL_12:
        if (v14 >= 1)
        {
          v15 = 0;
          v16 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_senseDisambiguation;
          v17 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_nBestDisplay;
          do
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v18 = *(v13 + 8 * v15 + 32);
            }

            v19 = v18;
            ++v15;
            v20 = [v18 isPhrasebookMatch];

            if (v20)
            {
              v21 = v17;
            }

            else
            {
              v21 = v16;
            }

            *(v22 + v21) = 1;
          }

          while (v14 != v15);

          return;
        }

LABEL_31:
        __break(1u);
        return;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_12;
      }
    }

LABEL_28:
  }
}

uint64_t sub_1002BD7CC(uint64_t a1)
{
  v2 = sub_100005AD4(&unk_1003B9EC0, &qword_1002D7480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002BD834(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65676175676E616CLL;
  v4 = 0xEE0065676E616843;
  if (v2 != 1)
  {
    v3 = 0x4C52556E65706FLL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x72746E4572657375;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000079;
  }

  v7 = 0x65676175676E616CLL;
  v8 = 0xEE0065676E616843;
  if (*a2 != 1)
  {
    v7 = 0x4C52556E65706FLL;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x72746E4572657375;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000079;
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

Swift::Int sub_1002BD950()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002BDA04(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002BDAA4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002BDB54@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002BEA98(*a1);
  *a2 = result;
  return result;
}

void sub_1002BDB84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0xEE0065676E616843;
  v5 = 0x65676175676E616CLL;
  if (v2 != 1)
  {
    v5 = 0x4C52556E65706FLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72746E4572657375;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

_BYTE *sub_1002BDBF4(char a1)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_sourceLocale;
  v4 = type metadata accessor for Locale();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_localePair] = 0;
  v5 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_start;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);
  v7(&v1[v5], 1, 1, v6);
  v7(&v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_end], 1, 1, v6);
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_eventType] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_characterCount] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_pastedCharacterCount] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_inputTokenCount] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_inputSubtokenCount] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_airplaneModeEnabled] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_onDeviceModeEnabled] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_offline] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_censorSpeech] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_lowQualityMT] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_nBestDisplay] = 0;
  v1[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_senseDisambiguation] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TypedInputInstrumentation(0);
  result = objc_msgSendSuper2(&v9, "init");
  result[OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_eventType] = a1;
  return result;
}

id sub_1002BDDD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TypedInputInstrumentation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TypedInputInstrumentation(uint64_t a1)
{
  result = qword_1003BCCA8;
  if (!qword_1003BCCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BDEF8(uint64_t a1)
{
  sub_100249EFC(319, &qword_1003B3410, &type metadata accessor for Locale);
  if (v1 <= 0x3F)
  {
    sub_100249EFC(319, &qword_1003AE370, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1002BE048()
{
  result = qword_1003BCCB8;
  if (!qword_1003BCCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BCCB8);
  }

  return result;
}

void *sub_1002BE09C()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  v3 = __chkstk_darwin(v2 - 8);
  v80 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v79 - v5;
  v81 = type metadata accessor for Date();
  v83 = *(v81 - 8);
  v7 = __chkstk_darwin(v81);
  v79 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v79 - v9;
  v10 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v10 - 8);
  v12 = &v79 - v11;
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_sourceLocale;
  swift_beginAccess();
  sub_10001F620(v1 + v17, v12, &qword_1003AFCE0, &qword_1002D5B00);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100009EBC(v12, &qword_1003AFCE0, &qword_1002D5B00);
    v18 = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    Locale.ltIdentifier.getter();
    v19 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = &_swiftEmptyDictionarySingleton;
    sub_10029163C(v19, 0x6F4C656372756F73, 0xEC000000656C6163, isUniquelyReferenced_nonNull_native);
    v18 = v85;
    (*(v14 + 8))(v16, v13);
  }

  v21 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_localePair);
  if (v21)
  {
    v22 = v21;
    sub_100003754();
    v23 = String._bridgeToObjectiveC()();

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v85 = v18;
    sub_10029163C(v23, 0x6150656C61636F6CLL, 0xEA00000000007269, v24);

    v18 = v85;
  }

  sub_1000B0530();
  isa = NSNumber.init(integerLiteral:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_characterCount)).super.super.isa;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v18;
  sub_10029163C(isa, 0x6574636172616863, 0xEE00746E756F4372, v26);
  v27 = v85;
  v28 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_pastedCharacterCount;
  v29 = NSNumber.init(BOOLeanLiteral:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_pastedCharacterCount) > 0).super.super.isa;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v27;
  sub_10029163C(v29, 0x6576456574736170, 0xEA0000000000746ELL, v30);
  v31 = v85;
  v32 = NSNumber.init(integerLiteral:)(*(v1 + v28)).super.super.isa;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v31;
  sub_10029163C(v32, 0xD000000000000014, 0x80000001002FD9F0, v33);
  v34 = v85;
  v35 = NSNumber.init(BOOLeanLiteral:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_airplaneModeEnabled)).super.super.isa;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v34;
  sub_10029163C(v35, 0x656E616C70726961, 0xEC00000065646F4DLL, v36);
  v37 = v85;
  v38 = NSNumber.init(BOOLeanLiteral:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_onDeviceModeEnabled)).super.super.isa;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v37;
  sub_10029163C(v38, 0x6563697665446E6FLL, 0xEC00000065646F4DLL, v39);
  v40 = v85;
  v41 = NSNumber.init(BOOLeanLiteral:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_offline)).super.super.isa;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v40;
  sub_10029163C(v41, 0x656E696C66666FLL, 0xE700000000000000, v42);
  v43 = v85;
  v44 = NSNumber.init(BOOLeanLiteral:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_censorSpeech)).super.super.isa;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v43;
  sub_10029163C(v44, 0x7053726F736E6563, 0xEC00000068636565, v45);
  v46 = v85;
  v47 = String._bridgeToObjectiveC()();

  v48 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v46;
  sub_10029163C(v47, 0x707954746E657665, 0xE900000000000065, v48);
  v49 = v85;
  v50 = Bool._bridgeToObjectiveC()().super.super.isa;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v49;
  sub_10029163C(v50, 0xD000000000000013, 0x80000001002FBCB0, v51);
  v52 = v85;
  v53 = Bool._bridgeToObjectiveC()().super.super.isa;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v52;
  sub_10029163C(v53, 0x696C617551776F6CLL, 0xEC000000544D7974, v54);
  v55 = v85;
  v56 = Bool._bridgeToObjectiveC()().super.super.isa;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v55;
  sub_10029163C(v56, 0x736944747365426ELL, 0xEC00000079616C70, v57);
  v58 = v85;
  v59 = OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_start;
  swift_beginAccess();
  v60 = v6;
  sub_10001F620(v1 + v59, v6, &qword_1003B5130, &unk_1002E4220);
  v61 = v83;
  v62 = *(v83 + 48);
  v63 = v6;
  v64 = v81;
  if (v62(v63, 1, v81) == 1)
  {
    sub_100009EBC(v60, &qword_1003B5130, &unk_1002E4220);
  }

  else
  {
    v65 = *(v61 + 32);
    v65(v82, v60, v64);
    v66 = v80;
    sub_10001F620(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_end, v80, &qword_1003B5130, &unk_1002E4220);
    if (v62(v66, 1, v64) == 1)
    {
      (*(v61 + 8))(v82, v64);
      sub_100009EBC(v66, &qword_1003B5130, &unk_1002E4220);
    }

    else
    {
      v67 = v79;
      v65(v79, v66, v64);
      v68 = v82;
      Date.timeIntervalSince(_:)();
      v70 = NSNumber.init(floatLiteral:)(v69).super.super.isa;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v84 = v58;
      sub_10029163C(v70, 0x6E6F697461727564, 0xE800000000000000, v71);
      v58 = v84;
      v72 = *(v61 + 8);
      v72(v67, v64);
      v72(v68, v64);
    }
  }

  v73 = NSNumber.init(integerLiteral:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_inputSubtokenCount)).super.super.isa;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v58;
  sub_10029163C(v73, 0x64726F77627573, 0xE700000000000000, v74);
  v75 = v84;
  v76 = NSNumber.init(integerLiteral:)(*(v1 + OBJC_IVAR____TtC17SequoiaTranslator25TypedInputInstrumentation_inputTokenCount)).super.super.isa;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v75;
  sub_10029163C(v76, 0xD000000000000011, 0x80000001002FDA40, v77);
  return v84;
}

unint64_t sub_1002BEA98(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037DF08, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002BEAE4()
{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002BEB78, v2, v1);
}

void sub_1002BEB78()
{

  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 openSessions];

  sub_1002BEEC8();
  sub_1002BEF14();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v0;
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v0[2];
    v5 = v0[3];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[6];
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);

    v7 = 0;
    v4 = v3;
  }

  v29 = v6;
  v12 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16)
    {
LABEL_28:
      v15 = 0;
      goto LABEL_29;
    }

    v30[8] = v16;
    swift_dynamicCast();
    v15 = v30[7];
    if (!v15)
    {
      goto LABEL_29;
    }

LABEL_18:
    v17 = v4;
    v18 = [v15 role];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v25 = [v15 scene];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 activationState];

      v4 = v17;
      if (!v27)
      {
        v15 = 1;
LABEL_29:
        sub_10000C1D0(v4);

        v28 = v30[1];

        v28(v15);
        return;
      }
    }

    else
    {
LABEL_8:
    }
  }

  v13 = v7;
  v14 = v8;
  if (v8)
  {
LABEL_14:
    v8 = (v14 - 1) & v14;
    v15 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_28;
    }

    v14 = *(v5 + 8 * v7);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_1002BEEC8()
{
  result = qword_1003BCCC0;
  if (!qword_1003BCCC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003BCCC0);
  }

  return result;
}

unint64_t sub_1002BEF14()
{
  result = qword_1003BCCC8;
  if (!qword_1003BCCC8)
  {
    sub_1002BEEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BCCC8);
  }

  return result;
}

void sub_1002BEF6C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000A2CC(0, &qword_1003A9C30, UIScene_ptr);
    sub_10000C168();
    Set.Iterator.init(_cocoa:)();
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_10000A2CC(0, &qword_1003A9C30, UIScene_ptr), swift_dynamicCast(), (v12 = v17) == 0))
    {
LABEL_25:
      sub_10000C1D0(v2);
      return;
    }

LABEL_17:
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = v13;
    v15 = v12;
    if (![v14 activationState])
    {

      goto LABEL_22;
    }

    v16 = [v14 activationState];

    if (v16 == 1)
    {
LABEL_22:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
LABEL_7:
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_13:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_1002BF214()
{
  v0 = sub_1002BF688();
  if (v0)
  {
    v1 = v0;
    v2 = v0 & 0xFFFFFFFFFFFFFF8;
    if (v0 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v4 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_15;
          }

          v5 = *(v1 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if ([v5 isKeyWindow])
        {

          return v6;
        }

        ++v4;
        if (v7 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

void *sub_1002BF308(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject windows];
      sub_10000A2CC(0, &qword_1003A9B68, UIWindow_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v30 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v32 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_1002C121C(&qword_1003BCCD8, &qword_1003BCCD0, &qword_1002EF210);
            for (i = 0; i != v16; ++i)
            {
              sub_100005AD4(&qword_1003BCCD0, &qword_1002EF210);
              v19 = sub_1000A39A8(v31, i, v8);
              v21 = *v20;
              (v19)(v31, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v32;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v30;
      if (v30 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1002BF688()
{
  v1 = [v0 connectedScenes];
  sub_10000A2CC(0, &qword_1003A9C30, UIScene_ptr);
  sub_10000C168();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002BEF6C(v2, v3);
  v5 = v4;

  sub_1002BF308(v5);

  v8 = sub_1002C0918(v6, sub_1002C09B4);
  sub_1002BF9AC(&v8);

  return v8;
}

void *sub_1002BF784(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100005AD4(&qword_1003AF3F8, &unk_1002DB820);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1002BF814(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100005AD4(&qword_1003AF418, &qword_1002DB848);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_1002BF8B0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100005AD4(&qword_1003AF410, &qword_1002DB838);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1002BF924(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1002BF9AC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1002C11E0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1002BFA28(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1002BFA28(uint64_t *a1)
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
        sub_10000A2CC(0, &qword_1003A9B68, UIWindow_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1002BFCA0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1002BFB3C(0, v2, 1, a1);
  }
}

void sub_1002BFB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    v6 = &selRef_oneSelectedWithSender_;
LABEL_5:
    v23 = v4;
    v24 = a3;
    v7 = *(v25 + 8 * a3);
    v22 = v5;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      v11 = [v9 windowScene];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 v6[315]];
      }

      else
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v14 = [v10 windowScene];
      if (v14)
      {
        v15 = v14;
        v16 = v6;
        v17 = [v14 v6[315]];

        v18 = v13 < v17;
        v6 = v16;
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      else
      {

        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_4;
        }
      }

      if (!v25)
      {
        break;
      }

      v19 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v19;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
LABEL_4:
        a3 = v24 + 1;
        v4 = v23 + 8;
        v5 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1002BFCA0(void ***a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v5;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_115:
    v12 = v6;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_155;
    }

    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = v4;
LABEL_118:
      v4 = *(v106 + 2);
      if (v4 >= 2)
      {
        do
        {
          v107 = *v7;
          if (!*v7)
          {
            goto LABEL_153;
          }

          v7 = (v4 - 1);
          v108 = *&v106[16 * v4];
          v109 = v106;
          v110 = *&v106[16 * v4 + 24];
          sub_1002C0498((v107 + 8 * v108), (v107 + 8 * *&v106[16 * v4 + 16]), (v107 + 8 * v110), v6);
          if (v12)
          {
            break;
          }

          if (v110 < v108)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_1002C08D4(v109);
          }

          if (v4 - 2 >= *(v109 + 2))
          {
            goto LABEL_143;
          }

          v111 = &v109[16 * v4];
          *v111 = v108;
          *(v111 + 1) = v110;
          sub_1002C0848(v4 - 1);
          v106 = v109;
          v4 = *(v109 + 2);
          v7 = a3;
        }

        while (v4 > 1);
      }

LABEL_126:

      return;
    }

LABEL_149:
    v106 = sub_1002C08D4(v4);
    goto LABEL_118;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v11 = &selRef_oneSelectedWithSender_;
  while (1)
  {
    v12 = v9;
    v13 = v9 + 1;
    if (v13 >= v8)
    {
      v123 = v13;
      goto LABEL_8;
    }

    v114 = v10;
    v116 = v12;
    v14 = *v7;
    v4 = *(*v7 + 8 * v12);
    v15 = *(*v7 + 8 * v13);
    v16 = v4;
    v17 = [v15 v11[396]];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 activationState];

      v11 = &selRef_oneSelectedWithSender_;
    }

    else
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v38 = [v16 v11[396]];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 activationState];

      v11 = &selRef_oneSelectedWithSender_;
      v41 = v19 < v40;
      v7 = a3;
      v42 = v41;
    }

    else
    {

      v42 = v19 != 0x7FFFFFFFFFFFFFFFLL;
    }

    v122 = v42;
    v12 = v116;
    v123 = v116 + 2;
    if (v116 + 2 >= v8)
    {
      v10 = v114;
      if (!v42)
      {
        goto LABEL_8;
      }

LABEL_106:
      v100 = v123;
      if (v123 < v12)
      {
        goto LABEL_146;
      }

      if (v12 < v123)
      {
        v101 = 8 * v123 - 8;
        v102 = 8 * v12;
        v103 = v12;
        do
        {
          if (v103 != --v100)
          {
            v104 = *v7;
            if (!*v7)
            {
              goto LABEL_152;
            }

            v105 = *(v104 + v102);
            *(v104 + v102) = *(v104 + v101);
            *(v104 + v101) = v105;
          }

          v103 = (v103 + 1);
          v101 -= 8;
          v102 += 8;
        }

        while (v103 < v100);
      }

      goto LABEL_8;
    }

    v43 = (v14 + 8 * v116 + 16);
    do
    {
      v4 = v8;
      v44 = *(v43 - 1);
      v45 = *v43;
      v46 = v44;
      v47 = [v45 v11[396]];
      if (v47)
      {
        v48 = v47;
        v49 = [v47 activationState];
      }

      else
      {
        v49 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v50 = [v46 v11[396]];
      v8 = v4;
      if (v50)
      {
        v51 = v50;
        v52 = [v50 activationState];

        v41 = v49 < v52;
        v11 = &selRef_oneSelectedWithSender_;
        v53 = !v41;
        v7 = a3;
        if (((v122 ^ v53) & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      else
      {

        v7 = a3;
        if (v122 == (v49 == 0x7FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_105;
        }
      }

      ++v43;
      ++v123;
    }

    while (v4 != v123);
    v123 = v4;
LABEL_105:
    v10 = v114;
    v12 = v116;
    if (v122)
    {
      goto LABEL_106;
    }

LABEL_8:
    v20 = v7[1];
    if (v123 < v20)
    {
      if (__OFSUB__(v123, v12))
      {
        goto LABEL_145;
      }

      if (v123 - v12 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v123 < v12)
    {
      goto LABEL_144;
    }

    v54 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v10 = v54;
    }

    else
    {
      v10 = sub_10028C748(0, *(v54 + 2) + 1, 1, v54);
    }

    v4 = *(v10 + 2);
    v55 = *(v10 + 3);
    v56 = v4 + 1;
    if (v4 >= v55 >> 1)
    {
      v10 = sub_10028C748((v55 > 1), v4 + 1, 1, v10);
    }

    *(v10 + 2) = v56;
    v57 = &v10[16 * v4];
    *(v57 + 4) = v12;
    *(v57 + 5) = v123;
    v12 = *a1;
    if (!*a1)
    {
      goto LABEL_154;
    }

    if (v4)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v10 + 4);
          v60 = *(v10 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_74:
          if (v62)
          {
            goto LABEL_133;
          }

          v75 = &v10[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_136;
          }

          v81 = &v10[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_140;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v85 = &v10[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_88:
        if (v80)
        {
          goto LABEL_135;
        }

        v88 = &v10[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_138;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_95:
        v4 = v58 - 1;
        if (v58 - 1 >= v56)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v7)
        {
          goto LABEL_151;
        }

        v96 = v10;
        v97 = *&v10[16 * v4 + 32];
        v98 = *&v10[16 * v58 + 40];
        sub_1002C0498((*v7 + 8 * v97), (*v7 + 8 * *&v10[16 * v58 + 32]), (*v7 + 8 * v98), v12);
        if (v6)
        {
          goto LABEL_126;
        }

        if (v98 < v97)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_1002C08D4(v96);
        }

        if (v4 >= *(v96 + 2))
        {
          goto LABEL_130;
        }

        v99 = &v96[16 * v4];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        sub_1002C0848(v58);
        v10 = v96;
        v56 = *(v96 + 2);
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v10[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_131;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_132;
      }

      v70 = &v10[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_134;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_137;
      }

      if (v74 >= v66)
      {
        v92 = &v10[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_141;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v123;
    if (v123 >= v8)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v12, a4))
  {
    goto LABEL_147;
  }

  if (v12 + a4 >= v20)
  {
    v21 = v7[1];
  }

  else
  {
    v21 = v12 + a4;
  }

  if (v21 < v12)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v123 == v21)
  {
    goto LABEL_54;
  }

  v115 = v10;
  v117 = v12;
  v112 = v6;
  v22 = *v7;
  v23 = *v7 + 8 * v123 - 8;
  v24 = v12 - v123;
  v25 = v123;
  v119 = v21;
LABEL_20:
  v121 = v23;
  v124 = v25;
  v26 = *(v22 + 8 * v25);
  v4 = v24;
  while (1)
  {
    v27 = *v23;
    v28 = v26;
    v29 = v27;
    v30 = [v28 v11[396]];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 activationState];
    }

    else
    {
      v32 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v33 = [v29 v11[396]];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 activationState];

      if (v32 >= v35)
      {
        goto LABEL_18;
      }
    }

    else
    {

      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_18:
        v11 = &selRef_oneSelectedWithSender_;
LABEL_19:
        v25 = v124 + 1;
        v23 = v121 + 8;
        --v24;
        if ((v124 + 1) == v119)
        {
          v123 = v119;
          v6 = v112;
          v7 = a3;
          v10 = v115;
          v12 = v117;
          goto LABEL_54;
        }

        goto LABEL_20;
      }
    }

    if (!v22)
    {
      break;
    }

    v36 = *v23;
    v26 = *(v23 + 8);
    *v23 = v26;
    *(v23 + 8) = v36;
    v23 -= 8;
    v37 = __CFADD__(v4++, 1);
    v11 = &selRef_oneSelectedWithSender_;
    if (v37)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_1002C0498(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
      v5 = __dst;
    }

    v15 = &v13[v9];
    if (v7 < 8 || v5 >= v4)
    {
LABEL_48:
      v43 = v6;
      goto LABEL_52;
    }

    __srca = v15;
    while (1)
    {
      v16 = v5;
      v17 = *v13;
      v18 = *v5;
      v19 = v17;
      v20 = [v18 windowScene];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 activationState];
      }

      else
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v23 = [v19 windowScene];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 activationState];

        if (v22 < v25)
        {
          goto LABEL_17;
        }
      }

      else
      {

        if (v22 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_17:
          v26 = v16;
          v5 = v16 + 1;
          if (v6 == v16)
          {
            goto LABEL_19;
          }

LABEL_18:
          *v6 = *v26;
          goto LABEL_19;
        }
      }

      v26 = v13;
      v27 = v6 == v13++;
      v5 = v16;
      if (!v27)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v6;
      v15 = __srca;
      if (v13 >= __srca || v5 >= v4)
      {
        goto LABEL_48;
      }
    }
  }

  if (a4 != __dst || &__dst[v12] <= a4)
  {
    v28 = a4;
    memmove(a4, __dst, 8 * v12);
    v5 = __dst;
    a4 = v28;
  }

  __srcb = a4;
  v15 = &a4[v12];
  if (v10 < 8)
  {
    v13 = a4;
    goto LABEL_51;
  }

  v13 = a4;
  if (v5 <= v6)
  {
LABEL_51:
    v43 = v5;
    goto LABEL_52;
  }

  v30 = &selRef_oneSelectedWithSender_;
  do
  {
    v45 = v5;
    v31 = v5 - 1;
    --v4;
    v32 = v15;
    v46 = v31;
    while (1)
    {
      v33 = *--v32;
      v34 = *v31;
      v35 = v33;
      v36 = v34;
      v37 = [v35 v30[396]];
      if (v37)
      {
        v38 = v37;
        v39 = [v37 activationState];
      }

      else
      {
        v39 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v40 = [v36 v30[396]];
      if (!v40)
      {
        break;
      }

      v41 = v40;
      v42 = [v40 activationState];

      if (v39 < v42)
      {
        goto LABEL_43;
      }

LABEL_41:
      v31 = v46;
      if (v4 + 1 != v15)
      {
        *v4 = *v32;
      }

      --v4;
      v15 = v32;
      v30 = &selRef_oneSelectedWithSender_;
      if (v32 <= __srcb)
      {
        v15 = v32;
        v13 = __srcb;
        v43 = v45;
        goto LABEL_52;
      }
    }

    if (v39 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_41;
    }

LABEL_43:
    v43 = v46;
    if (v4 + 1 != v45)
    {
      *v4 = *v46;
    }

    v13 = __srcb;
    v30 = &selRef_oneSelectedWithSender_;
    if (v15 <= __srcb)
    {
      break;
    }

    v5 = v46;
  }

  while (v46 > v6);
LABEL_52:
  if (v43 != v13 || v43 >= (v13 + ((v15 - v13 + (v15 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v43, v13, 8 * (v15 - v13));
  }

  return 1;
}

uint64_t sub_1002C0848(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002C08D4(v3);
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

void *sub_1002C0918(unint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_1002BF924(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1002C09B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002C121C(&qword_1003BCCD8, &qword_1003BCCD0, &qword_1002EF210);
          for (i = 0; i != v6; ++i)
          {
            sub_100005AD4(&qword_1003BCCD0, &qword_1002EF210);
            v9 = sub_1000A39A8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000A2CC(0, &qword_1003A9B68, UIWindow_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002C0B54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002C121C(&qword_1003BCCE8, &qword_1003B8CB8, &qword_1002E8FE0);
          for (i = 0; i != v6; ++i)
          {
            sub_100005AD4(&qword_1003B8CB8, &qword_1002E8FE0);
            v9 = sub_1000A3A28(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PersistedTranslation();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002C0CE4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002C121C(&qword_1003BCD00, &qword_1003BCCF8, &qword_1002EF218);
          for (i = 0; i != v6; ++i)
          {
            sub_100005AD4(&qword_1003BCCF8, &qword_1002EF218);
            v9 = sub_1000A39A8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000A2CC(0, &unk_1003AED40, AVAudioSessionPortDescription_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002C0E84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002C121C(&qword_1003BCCE0, &qword_1003BC518, &qword_1002EEB18);
          for (i = 0; i != v6; ++i)
          {
            sub_100005AD4(&qword_1003BC518, &qword_1002EEB18);
            v9 = sub_1000A3AB0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CommittedTranslationViewModel(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002C1014(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002C121C(&qword_1003BCCF0, &qword_1003B30E8, &qword_1002E0470);
          for (i = 0; i != v6; ++i)
          {
            sub_100005AD4(&qword_1003B30E8, &qword_1002E0470);
            v9 = sub_1000A3B30(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for LanguageSelectionDownloadModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002C121C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1002C1274(double a1)
{
  v3 = objc_allocWithZone(NSString);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithString:v4];

  sub_100005AD4(&unk_1003BBD30, &unk_1002D7570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3160;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_10022B668();
  *(inited + 40) = v1;
  v7 = NSFontAttributeName;
  v8 = v1;
  sub_100292588(inited);
  swift_setDeallocating();
  sub_1000E4F60(inited + 32);
  type metadata accessor for Key(0);
  sub_10013B81C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 boundingRectWithSize:1 options:isa attributes:0 context:{a1, 1.79769313e308}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v19.origin.x = v11;
  v19.origin.y = v13;
  v19.size.width = v15;
  v19.size.height = v17;
  return ceil(CGRectGetHeight(v19));
}

id sub_1002C1404(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = a1;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v42 = v7;
    v40 = v7 & 0xFFFFFFFFFFFFFF8;
    v41 = v7 & 0xC000000000000001;
    while (1)
    {
      if (v10)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v11 + 16))
        {
          goto LABEL_17;
        }

        v12 = *(v7 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      [v12 pointSize];
      v16 = v15;
      [*a2 pointSize];
      if (v16 < v17)
      {
        v18 = i;
        v19 = a2;
        v20 = objc_allocWithZone(NSString);
        v21 = String._bridgeToObjectiveC()();
        v22 = [v20 initWithString:v21];

        v45[0] = NSFontAttributeName;
        v45[4] = sub_10022B668();
        v45[1] = v13;
        sub_100005AD4(&qword_1003BBD58, &qword_1002EDC98);
        a2 = static _DictionaryStorage.allocate(capacity:)();
        v23 = NSFontAttributeName;
        v24 = v13;
        sub_1002C217C(v45, &v43);
        v7 = v43;
        v25 = sub_10028DF64(v43);
        if (v26)
        {
          goto LABEL_18;
        }

        *(a2 + 8 * (v25 >> 6) + 64) |= 1 << v25;
        *(*(a2 + 48) + 8 * v25) = v7;
        sub_10005128C(&v44, (*(a2 + 56) + 32 * v25));
        v27 = *(a2 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_19;
        }

        *(a2 + 16) = v29;
        sub_1000E4F60(v45);
        type metadata accessor for Key(0);
        sub_10013B81C();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v22 boundingRectWithSize:1 options:isa attributes:0 context:{a3, 1.79769313e308}];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;

        v46.origin.x = v32;
        v46.origin.y = v34;
        v46.size.width = v36;
        v46.size.height = v38;
        a2 = v19;
        i = v18;
        v10 = v41;
        v7 = v42;
        v11 = v40;
        if (ceil(CGRectGetHeight(v46)) < a4)
        {
          return v24;
        }
      }

      ++v9;
      if (v14 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

id sub_1002C1718(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = a1;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v42 = v7;
    v40 = v7 & 0xFFFFFFFFFFFFFF8;
    v41 = v7 & 0xC000000000000001;
    while (1)
    {
      if (v10)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v11 + 16))
        {
          goto LABEL_17;
        }

        v12 = *(v7 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      [v12 pointSize];
      v16 = v15;
      [*a2 pointSize];
      if (v17 < v16)
      {
        v18 = i;
        v19 = a2;
        v20 = objc_allocWithZone(NSString);
        v21 = String._bridgeToObjectiveC()();
        v22 = [v20 initWithString:v21];

        v45[0] = NSFontAttributeName;
        v45[4] = sub_10022B668();
        v45[1] = v13;
        sub_100005AD4(&qword_1003BBD58, &qword_1002EDC98);
        a2 = static _DictionaryStorage.allocate(capacity:)();
        v23 = NSFontAttributeName;
        v24 = v13;
        sub_1002C217C(v45, &v43);
        v7 = v43;
        v25 = sub_10028DF64(v43);
        if (v26)
        {
          goto LABEL_18;
        }

        *(a2 + 8 * (v25 >> 6) + 64) |= 1 << v25;
        *(*(a2 + 48) + 8 * v25) = v7;
        sub_10005128C(&v44, (*(a2 + 56) + 32 * v25));
        v27 = *(a2 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_19;
        }

        *(a2 + 16) = v29;
        sub_1000E4F60(v45);
        type metadata accessor for Key(0);
        sub_10013B81C();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v22 boundingRectWithSize:1 options:isa attributes:0 context:{a3, 1.79769313e308}];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;

        v46.origin.x = v32;
        v46.origin.y = v34;
        v46.size.width = v36;
        v46.size.height = v38;
        a2 = v19;
        i = v18;
        v10 = v41;
        v7 = v42;
        v11 = v40;
        if (ceil(CGRectGetHeight(v46)) < a4)
        {
          return v24;
        }
      }

      ++v9;
      if (v14 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

id sub_1002C1A2C(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D53E0;
  v8 = objc_opt_self();
  v9 = [v8 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1 compatibleWithTraitCollection:0];
  v10 = objc_opt_self();
  [v9 pointSize];
  v11 = [v10 systemFontOfSize:? weight:?];
  v12 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
  v13 = [v12 scaledFontForFont:v11 maximumPointSize:1.79769313e308];

  *(inited + 32) = v13;
  v14 = [v8 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 compatibleWithTraitCollection:0];
  [v14 pointSize];
  v15 = [v10 systemFontOfSize:? weight:?];
  v16 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle2];
  v17 = [v16 scaledFontForFont:v15 maximumPointSize:1.79769313e308];

  *(inited + 40) = v17;
  v18 = [v8 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3 compatibleWithTraitCollection:0];
  [v18 pointSize];
  v19 = [v10 systemFontOfSize:? weight:?];
  v20 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle3];
  v21 = [v20 scaledFontForFont:v19 maximumPointSize:1.79769313e308];

  *(inited + 48) = v21;
  v22 = [v8 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:0];
  [v22 pointSize];
  v23 = [v10 systemFontOfSize:? weight:?];
  v24 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v25 = [v24 scaledFontForFont:v23 maximumPointSize:1.79769313e308];

  *(inited + 56) = v25;
  if (a5)
  {
    v26 = a5;
  }

  else
  {
    v27 = [v8 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1 compatibleWithTraitCollection:0];
    [v27 pointSize];
    v28 = [v10 systemFontOfSize:? weight:?];
    v29 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
    v30 = [v29 scaledFontForFont:v28 maximumPointSize:1.79769313e308];

    v26 = v30;
  }

  v40 = v26;
  v31 = floor(a1);
  v32 = a5;
  v33 = sub_1002C1274(v31);

  v34 = floor(a2);
  if (v34 >= v33)
  {
    v35 = sub_1002C1718(inited, &v40, v31, v34);

    if (!v35)
    {
      return v26;
    }

    return v35;
  }

  v35 = sub_1002C1404(inited, &v40, v31, v34);

  if (v35)
  {
LABEL_6:

    return v35;
  }

  v37 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {

    return v26;
  }

  if ((inited & 0xC000000000000001) != 0)
  {
    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  v38 = *(inited + 32 + 8 * (v37 - 1));

  return v38;
}

id sub_1002C1F50(uint64_t a1, id a2)
{
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for UserInterfaceSizeClass.compact(_:), v3);
  v7 = static UserInterfaceSizeClass.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  v8 = &UIFontTextStyleTitle2;
  if ((v7 & 1) == 0)
  {
    v8 = &UIFontTextStyleTitle1;
  }

  v9 = *v8;
  if (a2)
  {
    a2 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:a2];
  }

  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:a2];
  v11 = objc_opt_self();
  [v10 pointSize];
  v12 = [v11 systemFontOfSize:? weight:?];
  v13 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:v9];
  v14 = [v13 scaledFontForFont:v12 maximumPointSize:1.79769313e308];

  return v14;
}

uint64_t sub_1002C217C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B3490, &qword_1002D6F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1002C21EC()
{
  [v0 frame];
  v1 = [v0 _restingHeights];
  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = v1;
  sub_1000B0530();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_14:

    v6 = _swiftEmptyArrayStorage;
LABEL_15:
    v13 = v6;

    sub_1002C2554(&v13);

    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_4:
  v13 = _swiftEmptyArrayStorage;
  sub_1000C4E38(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v13;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      CGFloat.init(truncating:)();
      v10 = v9;

      v13 = v6;
      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        sub_1000C4E38((v11 > 1), v12 + 1, 1);
        v6 = v13;
      }

      ++v5;
      *(v6 + 2) = v12 + 1;
      *&v6[8 * v12 + 32] = v10;
    }

    while (v4 != v5);

    goto LABEL_15;
  }

  __break(1u);
LABEL_17:
  __break(1u);

  __break(1u);
}

void sub_1002C23E4()
{
  v1 = [v0 _restingHeights];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_1000B0530();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() == 2)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
      if (v4)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    goto LABEL_17;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) != 2)
  {
LABEL_17:

    return;
  }

  v5 = 2;
  v6 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

LABEL_5:
  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v3 + 32);
    goto LABEL_7;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  do
  {
    __break(1u);
LABEL_23:
    v5 = v4;
    v6 = v3 & 0xC000000000000001;
    if ((v3 & 0xC000000000000001) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    v8 = v7;
    CGFloat.init(truncating:)();

    v4 = v5 - 1;
    if (__OFSUB__(v5, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v6)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_13;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }
  }

  while (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
  v9 = *(v3 + 8 * v4 + 32);
LABEL_13:
  v10 = v9;

  CGFloat.init(truncating:)();
}

void sub_1002C2554(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002C1208(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = (v7 + 4);
    v16[1] = v6;
    sub_1002C2688(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_1002C2688(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1002C08D4(v8);
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1002C2BE4((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10028C748(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v30 = *(v8 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      v8 = sub_10028C748((v30 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 32;
    v33 = &v8[16 * v5 + 32];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[16 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[16 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[16 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[16 * v5 - 16];
        v72 = *v71;
        v73 = &v32[16 * v5];
        v74 = *(v73 + 1);
        sub_1002C2BE4((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v8 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[16 * v5], v73 + 16, 16 * (v75 - 1 - v5));
        *(v8 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[16 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[16 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_1002C2BE4(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void static UIScene.isApplicationBasedSceneForeground.getter(uint64_t a1, __n128 a2)
{
  sub_1002C2E20();
  if (v2)
  {
    v3 = v2;
    [v2 activationState];
  }
}

void sub_1002C2E20()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_10022281C();
  sub_10000C168();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v3 = v36;
    v4 = v37;
    v5 = v38;
    v6 = v39;
    v7 = v40;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
    v3 = v2;
  }

  v11 = (v5 + 64) >> 6;
  v34 = v4;
  v32 = v11;
  v33 = v3;
  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v16 = v35, v14 = v6, v15 = v7, !v35))
    {
LABEL_25:
      sub_10000C1D0(v3);

      return;
    }

LABEL_18:
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = v16;
      v20 = [v18 session];
      v21 = [v20 role];

      v22 = String._bridgeToObjectiveC()();
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (v23 == v26 && v25 == v28)
      {

        v31 = v19;

        v3 = v33;
LABEL_28:
        sub_10000C1D0(v3);

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
        }

        return;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v31 = v19;

      v11 = v32;
      v3 = v33;
      v4 = v34;
      if (v30)
      {
        goto LABEL_28;
      }
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_25;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1002C31A4(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002D53E0;
  v6 = [a1 topAnchor];
  v7 = [v2 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [a1 leadingAnchor];
  v10 = [v2 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [v2 trailingAnchor];
  v13 = [a1 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [v2 bottomAnchor];
  v16 = [a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_100033604();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];
}

double sub_1002C33E4()
{
  v1 = [v0 subviews];
  sub_10000A2CC(0, &qword_1003AFCF0, UIView_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v20 = v2 + 32;
    v21 = v2 & 0xFFFFFFFFFFFFFF8;
    v6 = &selRef_optionButtonPressedWithSender_;
    v23 = i;
    v24 = v2;
    v22 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v21 + 16))
        {
          goto LABEL_30;
        }

        v9 = *(v20 + 8 * v4);
      }

      v8 = v9;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v11 = [v9 v6[399]];
      if (v11)
      {
        v12 = v11;
        v25 = v8;
        sub_10000A2CC(0, qword_1003BCD08, UIGestureRecognizer_ptr);
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v13 >> 62)
        {
          v14 = _CocoaArrayWrapper.endIndex.getter();
          if (v14)
          {
LABEL_15:
            v15 = 0;
            v2 = 0x100379000;
            while (1)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_28;
                }

                v16 = *(v13 + 8 * v15 + 32);
              }

              v17 = v16;
              v18 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                break;
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
              }

              else
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                v2 = &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOMQ_ptr;
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              ++v15;
              if (v18 == v14)
              {
                i = v23;
                v2 = v24;
                v5 = v22;
                v6 = &selRef_optionButtonPressedWithSender_;
                goto LABEL_5;
              }
            }

            __break(1u);
LABEL_28:
            __break(1u);
            break;
          }
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14)
          {
            goto LABEL_15;
          }
        }

LABEL_5:

        isa = Array._bridgeToObjectiveC()().super.isa;

        v8 = v25;
        [v25 setGestureRecognizers:isa];
      }

      sub_1002C33E4();

      if (v4 == i)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

LABEL_32:

  return result;
}

id sub_1002C36D0()
{
  v1 = [v0 nextResponder];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  result = [v0 nextResponder];
  if (result)
  {
    v4 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v5 = sub_1002C36D0();

      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1002C378C(void *a1)
{
  [objc_msgSend(a1 "container")];
  v4 = v3;
  swift_unknownObjectRelease();
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 != 1)
  {
    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 readableContentGuide];

      [v9 layoutFrame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18.origin.x = v11;
      v18.origin.y = v13;
      v18.size.width = v15;
      v18.size.height = v17;
      CGRectGetWidth(v18);
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1002C38C8(uint64_t a1)
{
  result = sub_100226734();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Optional();
    result = type metadata accessor for WritableKeyPath();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for PassthroughSubject();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002C39B8(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1002C3B08(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (((result + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_1002C3CF4()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1003BCD90 = result;
  *algn_1003BCD98 = v1;
  return result;
}

id sub_1002C3D24()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

id sub_1002C3D80()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

id sub_1002C3DDC()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

id sub_1002C3E3C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

uint64_t sub_1002C3E98()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002C3F34()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002C3FC8()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002C405C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002C40F0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dataForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100005AD4(&qword_1003BCDB8, &qword_1002EF258);
  sub_1002C444C(&qword_1003BCDC8, qword_1003BCDD0, &unk_1002E959C, &protocol conformance descriptor for <A> [A]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_100112CE8(v3, v5);
  return v7;
}

double sub_1002C424C(uint64_t a1)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100005AD4(&qword_1003BCDA0, &qword_1002EF250);
  sub_1002C4390();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;

  sub_100112C80(v2, v4);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100112CE8(v2, v4);
  v6 = String._bridgeToObjectiveC()();
  [v1 setObject:isa forKey:v6];
  swift_unknownObjectRelease();

  sub_100112CD4(v2, v4);

  return result;
}

unint64_t sub_1002C4390()
{
  result = qword_1003BCDA8;
  if (!qword_1003BCDA8)
  {
    sub_100005EA8(&qword_1003BCDA0, &qword_1002EF250);
    sub_1002C444C(&qword_1003BCDB0, &qword_1003BCDC0, "U\b\t", &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BCDA8);
  }

  return result;
}

uint64_t sub_1002C444C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(&qword_1003BCDB8, &qword_1002EF258);
    sub_1002C44D4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002C44D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SELFLoggingInvocationDescription(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1002C4518()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_100005AD4(&qword_1003B9548, &qword_1002E9928);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D1370;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001002F2770;
  *(inited + 48) = 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x79616C706F747541;
  *(inited + 88) = 0xEB00000000535454;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 0;
  sub_100292258(inited);
  swift_setDeallocating();
  sub_100005AD4(&qword_1003BBE00, &qword_1002EDD30);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v0 registerDefaults:isa];
}

uint64_t sub_1002C4674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1002C476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1002C4864@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a7;
  v39 = a6;
  v32 = a3;
  v33 = a2;
  v34 = a1;
  v37 = a8;
  v10 = *(a4 - 8);
  v11 = __chkstk_darwin(a1);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v32 - v15;
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v14);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v32 - v22;
  v24 = type metadata accessor for _ConditionalContent();
  v36 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v32 - v25;
  if (v34)
  {
    v33(v35);
    v27 = v38;
    sub_10002D870();
    v28 = *(v18 + 8);
    v28(v21, a5);
    sub_10002D870();
    sub_1002C4674(v21, a5, a4, v27, v39);
    v28(v21, a5);
    v28(v23, a5);
  }

  else
  {
    v29 = v39;
    sub_10002D870();
    sub_10002D870();
    sub_1002C476C(v13, a5, a4, v38, v29);
    v30 = *(v10 + 8);
    v30(v13, a4);
    v30(v16, a4);
  }

  v40 = v38;
  v41 = v39;
  swift_getWitnessTable();
  sub_10002D870();
  return (*(v36 + 8))(v26, v24);
}

double sub_1002C4C34(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  static os_log_type_t.fault.getter();
  v9 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_10002F620(a1, 0);
  (*(v5 + 8))(v7, v4);
  return *&v10[1];
}

id sub_1002C4D7C()
{
  type metadata accessor for WaveformUIKitView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1002C5158();
  return v0;
}

void sub_1002C4DBC(char *a1)
{
  v3 = *(v1 + 12);
  *&a1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_scale] = 1.0 / sub_1002C4C34(*v1, *(v1 + 8));
  [a1 setNeedsLayout];
  *&a1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_volumeLevel] = v3;
  sub_1002C59D4();
}

uint64_t sub_1002C4E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002C60AC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002C4E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002C60AC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1002C4EFC(uint64_t a1)
{
  sub_1002C60AC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_1002C4F7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27.receiver = v2;
  v27.super_class = type metadata accessor for WaveformUIKitView();
  objc_msgSendSuper2(&v27, "layoutSubviews");
  v4 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageLayer];
  if (v4)
  {
    v5 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageContainerLayer];
    v6 = v4;
    [v6 bounds];
    [v5 setBounds:?];
    CATransform3DMakeScale(&v26, *&v3[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_scale], *&v3[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_scale], 1.0);
    [v5 setTransform:&v26];
    v7 = [v3 layer];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v28.origin.x = v9;
    v28.origin.y = v11;
    v28.size.width = v13;
    v28.size.height = v15;
    MidX = CGRectGetMidX(v28);
    v17 = [v3 layer];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v29.origin.x = v19;
    v29.origin.y = v21;
    v29.size.width = v23;
    v29.size.height = v25;
    [v5 setPosition:{MidX, CGRectGetMinY(v29)}];
  }
}

void sub_1002C5158()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = v40 - v7;
  __chkstk_darwin(v6);
  v10 = v40 - v9;
  v11 = OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_package;
  if (!*&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_package])
  {
    v12 = [objc_opt_self() mainBundle];
    v13 = String._bridgeToObjectiveC()();
    v14 = String._bridgeToObjectiveC()();
    v40[0] = v11;
    v15 = v1;
    v16 = v2;
    v17 = v14;
    v18 = [v12 URLForResource:v13 withExtension:v14];

    v19 = v16;
    v20 = v15;
    v21 = v10;
    v22 = v40[0];
    if (v18)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v19 + 32))(v21, v8, v20);
      sub_10000A2CC(0, &qword_1003BCEE0, CAPackage_ptr);
      (*(v19 + 16))(v5, v21, v20);
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = sub_1002C56B0(v5, v23, v24, 0);
      v26 = [v25 rootLayer];
      if (v26)
      {
        v27 = v26;
        v28 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageContainerLayer];
        v29 = [v28 superlayer];
        if (!v29)
        {
          [v28 setAnchorPoint:{0.5, 0.0}];
          v30 = [v0 layer];
          [v30 addSublayer:v28];
          v29 = v30;
        }

        [v28 setGeometryFlipped:{objc_msgSend(v25, "isGeometryFlipped")}];
        [v28 addSublayer:v27];
        v31 = *&v0[v22];
        *&v0[v22] = v25;
        v32 = v25;

        v33 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageLayer];
        *&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageLayer] = v27;
        v34 = v27;

        v35 = String._bridgeToObjectiveC()();
        v36 = [v32 publishedObjectWithName:v35];

        if (v36)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v41 = 0u;
          v42 = 0u;
        }

        v43[0] = v41;
        v43[1] = v42;
        if (*(&v42 + 1))
        {
          sub_10000A2CC(0, &qword_1003BCEE8, CAEmitterLayer_ptr);
          v37 = swift_dynamicCast();
          v38 = v40[1];
          if (!v37)
          {
            v38 = 0;
          }
        }

        else
        {
          sub_10026ED4C(v43);
          v38 = 0;
        }

        v39 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_particlesLayer];
        *&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_particlesLayer] = v38;

        sub_1002C5878();
        (*(v19 + 8))(v21, v20);
      }

      else
      {
        (*(v19 + 8))(v21, v20);
      }
    }
  }
}

id sub_1002C56B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  v8 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v18 = 0;
  v10 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v7 type:v8 options:v9.super.isa error:&v18];

  v11 = v18;
  if (v10)
  {
    v12 = type metadata accessor for URL();
    v13 = *(*(v12 - 8) + 8);
    v14 = v11;
    v13(a1, v12);
  }

  else
  {
    v15 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  return v10;
}

void sub_1002C5878()
{
  v1 = [v0 window];
  if (!v1)
  {
LABEL_4:
    v3 = [v0 window];
    if (!v3)
    {
      v4 = OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_displayLink;
      [*&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_displayLink] invalidate];
      v3 = *&v0[v4];
      *&v0[v4] = 0;
    }

    goto LABEL_9;
  }

  v2 = OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_displayLink;
  if (*&v0[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_displayLink])
  {

    goto LABEL_4;
  }

  v10 = v1;
  v5 = [v1 screen];
  v6 = [v5 displayLinkWithTarget:v0 selector:"_updateParticles"];

  v7 = *&v0[v2];
  *&v0[v2] = v6;
  v8 = v6;

  if (v8)
  {
    v9 = [objc_opt_self() currentRunLoop];
    [v8 addToRunLoop:v9 forMode:NSDefaultRunLoopMode];
  }

  v3 = v10;
LABEL_9:
}

void sub_1002C59D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_particlesLayer);
  if (!v1)
  {
    return;
  }

  v17 = v1;
  v2 = [v17 emitterCells];
  if (!v2)
  {
    v14 = v17;
LABEL_11:

    return;
  }

  v3 = v2;
  sub_10000A2CC(0, &qword_1003BCED8, CAEmitterCell_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v5 = v17;
    if (v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v17;
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v6 = *(v4 + 32);
      }

      v7 = v6;

      *&v8 = (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_volumeLevel) * 2000.0) + 3000.0;
      [v7 setBirthRate:v8];
      isa = Float._bridgeToObjectiveC()().super.super.isa;
      v10 = String._bridgeToObjectiveC()();
      [v7 setValue:isa forKeyPath:v10];

      v11 = CACurrentMediaTime();
      sin(v11 + v11);
      v12 = Float._bridgeToObjectiveC()().super.super.isa;
      v13 = String._bridgeToObjectiveC()();
      [v7 setValue:v12 forKeyPath:v13];

      v16 = String._bridgeToObjectiveC()();
      [v17 reloadValueForKeyPath:v16];

      v14 = v16;
      goto LABEL_11;
    }
  }
}

id sub_1002C5CDC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageContainerLayer;
  *&v4[v9] = [objc_allocWithZone(CALayer) init];
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_package] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageLayer] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_particlesLayer] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_displayLink] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_volumeLevel] = 0;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_scale] = 0x3FF0000000000000;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for WaveformUIKitView();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1002C5DDC(void *a1)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageContainerLayer;
  *&v1[v3] = [objc_allocWithZone(CALayer) init];
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_package] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_packageLayer] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_particlesLayer] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_displayLink] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_volumeLevel] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17WaveformUIKitView_scale] = 0x3FF0000000000000;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for WaveformUIKitView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1002C5EDC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WaveformUIKitView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1002C5FBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002C6004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1002C6058()
{
  result = qword_1003BCEF0;
  if (!qword_1003BCEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BCEF0);
  }

  return result;
}

unint64_t sub_1002C60AC()
{
  result = qword_1003BCEF8;
  if (!qword_1003BCEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BCEF8);
  }

  return result;
}

uint64_t sub_1002C612C(int a1, int a2, int a3, int a4)
{
  if (qword_1003D2458 == -1)
  {
    if (qword_1003D2460)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1002C6608();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1003D2460)
    {
      return _availability_version_check();
    }
  }

  if (qword_1003D2450 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1002C6620();
    a3 = v10;
    a4 = v9;
    v8 = dword_1003D2440 < v11;
    if (dword_1003D2440 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1003D2444 > a3)
      {
        return 1;
      }

      if (dword_1003D2444 >= a3)
      {
        return dword_1003D2448 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1003D2440 < a2;
  if (dword_1003D2440 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1002C62C0(uint64_t result)
{
  v1 = qword_1003D2460;
  if (qword_1003D2460)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1003D2460 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1003D2440, &dword_1003D2444, &dword_1003D2448);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall Locale.ltLocalizedAppString(_:table:bundle:)(Swift::String _, Swift::String table, NSBundle bundle)
{
  v3 = Locale.ltLocalizedAppString(_:table:bundle:)(_._countAndFlagsBits, _._object, table._countAndFlagsBits, table._object, bundle.super.isa);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forIdentifier:)(Swift::String forIdentifier)
{
  v1 = Locale.localizedString(forIdentifier:)(forIdentifier._countAndFlagsBits, forIdentifier._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forLanguageCode:)(Swift::String forLanguageCode)
{
  v1 = Locale.localizedString(forLanguageCode:)(forLanguageCode._countAndFlagsBits, forLanguageCode._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::tuple_inserted_Bool_memberAfterInsert_Int __swiftcall IndexSet.insert(_:)(Swift::Int a1)
{
  v1 = IndexSet.insert(_:)(a1);
  result.memberAfterInsert = v2;
  result.inserted = v1;
  return result;
}

uint64_t static Tips.RuleBuilder.buildExpression(_:)()
{
  return static Tips.RuleBuilder.buildExpression(_:)();
}

{
  return static Tips.RuleBuilder.buildExpression(_:)();
}

uint64_t Tips.Rule.init<A>(_:_:)()
{
  return Tips.Rule.init<A>(_:_:)();
}

{
  return Tips.Rule.init<A>(_:_:)();
}

uint64_t Publisher.combineLatest<A, B, C>(_:_:_:)()
{
  return Publisher.combineLatest<A, B, C>(_:_:_:)();
}

{
  return Publisher.combineLatest<A, B, C>(_:_:_:)();
}

uint64_t EnvironmentValues.subscript.getter()
{
  return EnvironmentValues.subscript.getter();
}

{
  return EnvironmentValues.subscript.getter();
}

uint64_t EnvironmentValues.subscript.setter()
{
  return EnvironmentValues.subscript.setter();
}

{
  return EnvironmentValues.subscript.setter();
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation(_:)()
{
  return LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
}

{
  return LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
}

uint64_t _ConditionalContent<>.init(storage:)()
{
  return _ConditionalContent<>.init(storage:)();
}

{
  return _ConditionalContent<>.init(storage:)();
}

uint64_t static ToolbarContentBuilder.buildBlock<A>(_:)()
{
  return static ToolbarContentBuilder.buildBlock<A>(_:)();
}

{
  return static ToolbarContentBuilder.buildBlock<A>(_:)();
}

uint64_t static ToolbarContentBuilder.buildIf<A>(_:)()
{
  return static ToolbarContentBuilder.buildIf<A>(_:)();
}

{
  return static ToolbarContentBuilder.buildIf<A>(_:)();
}

uint64_t Text.init(_:)()
{
  return Text.init(_:)();
}

{
  return Text.init(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)()
{
  return View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)();
}

{
  return View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::tuple_Bool_String __swiftcall String.truncated(limit:)(Swift::Int limit)
{
  v1 = String.truncated(limit:)(limit);
  result._1._object = v3;
  result._1._countAndFlagsBits = v2;
  result._0 = v1;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

UIMenu_optional __swiftcall _LTDisambiguableSentence.menu(forLinkIndex:)(Swift::UInt forLinkIndex)
{
  v1 = _LTDisambiguableSentence.menu(forLinkIndex:)(forLinkIndex);
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}