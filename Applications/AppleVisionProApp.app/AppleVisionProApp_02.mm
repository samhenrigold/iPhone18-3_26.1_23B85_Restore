uint64_t sub_100034150(uint64_t a1)
{
  v16 = type metadata accessor for EnvironmentValues();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002BE4(&qword_10016A568, &unk_10010F530);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DeviceSelectionView(0);
  sub_10000C178(a1 + *(v12 + 20), v7, &qword_10016A568, &unk_10010F530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1000343E4()
{
  result = qword_10016AF98;
  if (!qword_10016AF98)
  {
    sub_10000459C(&qword_10016AF90, &qword_10010FFA8);
    sub_10000459C(&qword_10016AFA0, &unk_10010FFB0);
    sub_100012C48(&qword_10016AFA8, &qword_10016AFA0, &unk_10010FFB0, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AF98);
  }

  return result;
}

unint64_t sub_1000344D8()
{
  result = qword_10016AFB8;
  if (!qword_10016AFB8)
  {
    sub_10000459C(&qword_10016AF70, &qword_10010FF88);
    sub_10000459C(&qword_10016AF68, &qword_10010FF80);
    type metadata accessor for InsetGroupedListStyle();
    sub_10000459C(&qword_10016AF60, &qword_10010FF78);
    sub_100012C48(&qword_10016AFB0, &qword_10016AF60, &qword_10010FF78, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100012C48(&qword_100169FD8, &qword_100169FE0, &qword_10010EBE0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AFB8);
  }

  return result;
}

uint64_t sub_10003466C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000346D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSelectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003473C()
{
  v1 = *(type metadata accessor for DeviceSelectionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100034150(v2);
}

void sub_10003479C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000010011D950;
  v2._countAndFlagsBits = 0xD000000000000010;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_10016AEB0 = v4;
}

uint64_t sub_100034854()
{
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui && (v1 = [objc_opt_self() standardUserDefaults], static UserDefaultUtilities.SharedConstants.myDeviceNameOverride.getter(), v2 = String._bridgeToObjectiveC()(), , v3 = objc_msgSend(v1, "stringForKey:", v2), v1, v2, v3))
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  else
  {
    result = Device.name.getter();
    if (!v6)
    {
      if (qword_100168F10 != -1)
      {
        swift_once();
      }

      v7 = xmmword_10016AEB0;

      return v7;
    }
  }

  return result;
}

uint64_t sub_100034980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a1;
  v3 = sub_100002BE4(&qword_10016B0E0, &unk_100110100);
  v4 = __chkstk_darwin(v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v62 - v7;
  v79 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  __chkstk_darwin(v79);
  v10 = &v62 - v9;
  v72 = sub_100002BE4(&qword_10016B0E8, &qword_100110110);
  __chkstk_darwin(v72);
  v12 = &v62 - v11;
  v73 = sub_100002BE4(&qword_10016B0F0, &qword_100110118);
  v13 = __chkstk_darwin(v73);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v71 = &v62 - v17;
  __chkstk_darwin(v16);
  v80 = &v62 - v18;
  v19 = Image.init(systemName:)();
  v20 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v69 = v20;
  v70 = v19;
  *&v94 = v19;
  v68 = KeyPath;
  *(&v94 + 1) = KeyPath;
  *&v95 = v20;
  v22 = enum case for DynamicTypeSize.accessibility2(_:);
  v23 = type metadata accessor for DynamicTypeSize();
  v24 = *(v23 - 8);
  v25 = *(v24 + 104);
  v77 = v22;
  v75 = v24 + 104;
  v76 = v25;
  v25(v10, v22, v23);
  v74 = sub_100035708(&qword_100169A78, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v63 = v15;
    v64 = v3;
    v65 = v8;
    v66 = v6;
    v67 = a2;
    sub_100002BE4(&qword_10016B0F8, &unk_100110150);
    sub_10003605C();
    sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100009908(v10, &qword_100169A10, &qword_10010D450);

    v27 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v28 = &v12[*(v72 + 36)];
    *v28 = v27;
    *(v28 + 1) = v29;
    *(v28 + 2) = v30;
    *(v28 + 3) = v31;
    *(v28 + 4) = v32;
    v28[40] = 0;
    if (*(v78 + *(type metadata accessor for DeviceSelectionCellView(0) + 20)))
    {
      v33 = 1.0;
    }

    else
    {
      v33 = 0.00001;
    }

    v34 = v71;
    sub_10001D504(v12, v71, &qword_10016B0E8, &qword_100110110);
    *(v34 + *(v73 + 36)) = v33;
    sub_10001D504(v34, v80, &qword_10016B0F0, &qword_100110118);
    v35 = static HorizontalAlignment.leading.getter();
    v85 = 0;
    sub_100035150(&v94);
    v90 = v98;
    v91 = v99;
    v86 = v94;
    v87 = v95;
    v88 = v96;
    v89 = v97;
    v92 = v100;
    v93[0] = v94;
    v93[1] = v95;
    v93[2] = v96;
    v93[3] = v97;
    v93[4] = v98;
    v93[5] = v99;
    v93[6] = v100;
    sub_10000C178(&v86, &v81, &qword_10016B118, &qword_100110160);
    sub_100009908(v93, &qword_10016B118, &qword_100110160);
    *&v84[55] = v89;
    *&v84[71] = v90;
    *&v84[87] = v91;
    *&v84[103] = v92;
    *&v84[7] = v86;
    *&v84[23] = v87;
    *&v84[39] = v88;
    v36 = v85;
    v37 = static Color.white.getter();
    v38 = swift_getKeyPath();
    *(&v82[4] + 1) = *&v84[64];
    *(&v82[5] + 1) = *&v84[80];
    *(&v82[6] + 1) = *&v84[96];
    *(v82 + 1) = *v84;
    *(&v82[1] + 1) = *&v84[16];
    *(&v82[2] + 1) = *&v84[32];
    *&v81 = v35;
    *(&v81 + 1) = 0x4010000000000000;
    LOBYTE(v82[0]) = v36;
    *(&v82[3] + 1) = *&v84[48];
    *&v82[7] = *&v84[111];
    *(&v82[7] + 1) = v38;
    v83 = v37;
    v76(v10, v77, v23);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      sub_100002BE4(&qword_10016B120, &qword_100110198);
      sub_10003611C();
      v39 = v65;
      View.dynamicTypeSize<A>(_:)();
      sub_100009908(v10, &qword_100169A10, &qword_10010D450);
      v100 = v82[5];
      v101 = v82[6];
      v102 = v82[7];
      v103 = v83;
      v96 = v82[1];
      v97 = v82[2];
      v98 = v82[3];
      v99 = v82[4];
      v94 = v81;
      v95 = v82[0];
      sub_100009908(&v94, &qword_10016B120, &qword_100110198);
      v40 = static Edge.Set.horizontal.getter();
      EdgeInsets.init(_all:)();
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v49 = v39 + *(sub_100002BE4(&qword_10016B140, &qword_1001101B0) + 36);
      *v49 = v40;
      *(v49 + 8) = v42;
      *(v49 + 16) = v44;
      *(v49 + 24) = v46;
      *(v49 + 32) = v48;
      *(v49 + 40) = 0;
      v50 = static Edge.Set.vertical.getter();
      EdgeInsets.init(_all:)();
      v51 = v63;
      v52 = v39 + *(v64 + 36);
      *v52 = v50;
      *(v52 + 8) = v53;
      *(v52 + 16) = v54;
      *(v52 + 24) = v55;
      *(v52 + 32) = v56;
      *(v52 + 40) = 0;
      v57 = v80;
      sub_10000C178(v80, v51, &qword_10016B0F0, &qword_100110118);
      v58 = v66;
      sub_10000C178(v39, v66, &qword_10016B0E0, &unk_100110100);
      v59 = v67;
      sub_10000C178(v51, v67, &qword_10016B0F0, &qword_100110118);
      v60 = sub_100002BE4(&qword_10016B148, &qword_1001101B8);
      sub_10000C178(v58, v59 + *(v60 + 48), &qword_10016B0E0, &unk_100110100);
      v61 = v59 + *(v60 + 64);
      *v61 = 0;
      *(v61 + 8) = 1;
      sub_100009908(v39, &qword_10016B0E0, &unk_100110100);
      sub_100009908(v57, &qword_10016B0F0, &qword_100110118);
      sub_100009908(v58, &qword_10016B0E0, &unk_100110100);
      return sub_100009908(v51, &qword_10016B0F0, &qword_100110118);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100035150@<X0>(uint64_t a2@<X8>)
{
  v44 = static VerticalAlignment.center.getter();
  sub_100034854();
  sub_100012928();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.headline.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10001297C(v2, v4, v6 & 1);

  static Font.Weight.medium.getter();
  v42 = Text.fontWeight(_:)();
  v43 = v12;
  v14 = v13;
  v41 = v15;
  sub_10001297C(v7, v9, v11 & 1);

  v40 = static VerticalAlignment.center.getter();
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui && (static BundleIdentifierConstants.tetsuoBundleIdentifier.getter(), String.utf8CString.getter(), , v17 = os_variant_has_internal_ui(), , v17) && (v18 = [objc_opt_self() standardUserDefaults], static UserDefaultUtilities.SharedConstants.myDeviceOSVersionOverride.getter(), v19 = String._bridgeToObjectiveC()(), , v20 = objc_msgSend(v18, "stringForKey:", v19), v18, v19, v20))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v21._countAndFlagsBits = Device.osVersion.getter();
    String.append(_:)(v21);
  }

  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  static HierarchicalShapeStyle.secondary.getter();
  v27 = Text.foregroundStyle<A>(_:)();
  v29 = v28;
  v31 = v30;
  sub_10001297C(v22, v24, v26 & 1);

  static Font.body.getter();
  v32 = Text.font(_:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_10001297C(v27, v29, v31 & 1);

  *a2 = v44;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v42;
  *(a2 + 32) = v14;
  *(a2 + 40) = v41 & 1;
  *(a2 + 48) = v43;
  *(a2 + 56) = v40;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  *(a2 + 80) = v32;
  *(a2 + 88) = v34;
  *(a2 + 96) = v36 & 1;
  *(a2 + 104) = v38;
  sub_100003AE4(v42, v14, v41 & 1);

  sub_100003AE4(v32, v34, v36 & 1);

  sub_10001297C(v32, v34, v36 & 1);

  sub_10001297C(v42, v14, v41 & 1);
}

uint64_t sub_100035514@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100002BE4(&qword_10016B0D8, &qword_1001100F8);
  return sub_100034980(v2, a2 + *(v4 + 44));
}

uint64_t sub_10003556C()
{
  v1 = (type metadata accessor for DeviceSelectionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_100002BE4(&qword_10016A568, &unk_10010F530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100035688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DeviceSelectionView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_100032AE8(a1, v6, a2);
}

uint64_t sub_100035708(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100035750()
{
  v1 = (type metadata accessor for DeviceSelectionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for Device();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = v1[7];
  sub_100002BE4(&qword_10016A568, &unk_10010F530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DismissAction();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v11 | 7);
}

uint64_t sub_1000358F8()
{
  v1 = *(type metadata accessor for DeviceSelectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Device() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1000333FC(v0 + v2, v5);
}

uint64_t sub_100035A18(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t sub_100035AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_100002BE4(&qword_10016B030, &qword_100110088);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100035C48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Device();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_100002BE4(&qword_10016B030, &qword_100110088);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100035D74(uint64_t a1)
{
  type metadata accessor for Device();
  if (v1 <= 0x3F)
  {
    sub_100035E1C(319, &unk_10016B0A0, &type metadata accessor for DynamicTypeSize);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100035E1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100035E70()
{
  sub_10000459C(&qword_10016AF88, &qword_10010FFA0);
  sub_10000459C(&qword_10016AFC0, &qword_10010FFC8);
  sub_10000459C(&qword_10016AF80, &qword_10010FF98);
  sub_10000459C(&qword_10016AF78, &qword_10010FF90);
  sub_10000459C(&qword_10016AF70, &qword_10010FF88);
  sub_1000344D8();
  sub_100012928();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10000459C(&qword_10016AFC8, &qword_10010FFD0);
  sub_100012C48(&qword_10016AFD0, &qword_10016AFC8, &qword_10010FFD0, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10003605C()
{
  result = qword_10016B100;
  if (!qword_10016B100)
  {
    sub_10000459C(&qword_10016B0F8, &unk_100110150);
    sub_100012C48(&qword_10016B108, &qword_10016B110, &unk_100110E10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B100);
  }

  return result;
}

unint64_t sub_10003611C()
{
  result = qword_10016B128;
  if (!qword_10016B128)
  {
    sub_10000459C(&qword_10016B120, &qword_100110198);
    sub_100012C48(&qword_10016B130, &qword_10016B138, &unk_1001101A0, &protocol conformance descriptor for VStack<A>);
    sub_100012C48(&qword_10016A068, &qword_10016A070, &qword_10010EC90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B128);
  }

  return result;
}

__n128 sub_100036284@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002BE4(&qword_10016B160, &qword_1001102B0);
  __chkstk_darwin(v4);
  v6 = v16 - v5;
  if (qword_100168F38 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for AspectRatio();
  sub_100006B0C(v7, qword_100182198);
  AspectRatio.horizontalFraction.getter();
  v9 = v8;
  v10 = sub_100002BE4(&qword_10016B168, &qword_1001102B8);
  (*(*(v10 - 8) + 16))(v6, a1, v10);
  v11 = &v6[*(v4 + 36)];
  *v11 = v9;
  *(v11 + 4) = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000365A4(v6, a2);
  v12 = a2 + *(sub_100002BE4(&qword_10016B170, &qword_1001102C0) + 36);
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

uint64_t sub_100036464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(sub_100002BE4(&qword_10016B178, &qword_1001102C8) + 36));
  v5 = *(type metadata accessor for RoundedRectangle() + 20);
  v6 = enum case for RoundedCornerStyle.continuous(_:);
  v7 = type metadata accessor for RoundedCornerStyle();
  (*(*(v7 - 8) + 104))(&v4->i8[v5], v6, v7);
  *v4 = vdupq_n_s64(0x4040000000000000uLL);
  *(v4->i16 + *(sub_100002BE4(&qword_10016B180, &qword_1001102D0) + 36)) = 256;
  v8 = sub_100002BE4(&qword_10016B188, &qword_1001102D8);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_1000365A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016B160, &qword_1001102B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100036618()
{
  result = qword_10016B190;
  if (!qword_10016B190)
  {
    sub_10000459C(&qword_10016B170, &qword_1001102C0);
    sub_1000366A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B190);
  }

  return result;
}

unint64_t sub_1000366A4()
{
  result = qword_10016B198;
  if (!qword_10016B198)
  {
    sub_10000459C(&qword_10016B160, &qword_1001102B0);
    sub_100012C48(&qword_10016B1A0, &qword_10016B168, &qword_1001102B8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B198);
  }

  return result;
}

unint64_t sub_100036760()
{
  result = qword_10016B1A8;
  if (!qword_10016B1A8)
  {
    sub_10000459C(&qword_10016B178, &qword_1001102C8);
    sub_100012C48(&qword_10016B1B0, &qword_10016B188, &qword_1001102D8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100012C48(&qword_10016B1B8, &qword_10016B180, &qword_1001102D0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B1A8);
  }

  return result;
}

id sub_100036844()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v2 = result;
    v3 = v0;
    v4 = [v2 windows];
    sub_1000369C4();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ([v8 isKeyWindow])
        {

          v11 = [v9 rootViewController];

          return v11;
        }

        ++v7;
        if (v10 == i)
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

    return 0;
  }

  return result;
}

unint64_t sub_1000369C4()
{
  result = qword_10016B1C0;
  if (!qword_10016B1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016B1C0);
  }

  return result;
}

uint64_t sub_100036A3C()
{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  qword_10016B1C8 = v0;
  return result;
}

uint64_t sub_100036A80@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v121 = a1;
  v114 = a2;
  v2 = sub_100002BE4(&qword_100169A80, &qword_10010D480);
  __chkstk_darwin(v2 - 8);
  v113 = v112 - v3;
  v4 = [objc_opt_self() mainBundle];
  v195._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._object = 0x800000010011D970;
  v6._countAndFlagsBits = 0xD000000000000015;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v195._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v195);

  v172 = v8;
  v120 = sub_100012928();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Font.title.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;

  sub_10001297C(v9, v11, v13 & 1);

  static Font.Weight.medium.getter();
  v19 = Text.fontWeight(_:)();
  v21 = v20;
  LOBYTE(v11) = v22;
  sub_10001297C(v14, v16, v18 & 1);

  static Color.white.getter();
  v23 = Text.foregroundColor(_:)();
  v25 = v24;
  v27 = v26;

  sub_10001297C(v19, v21, v11 & 1);

  if (qword_100168F18 != -1)
  {
    swift_once();
  }

  v122 = qword_10016B1C8;
  v28 = Text.shadow(color:radius:x:y:)();
  v125 = v29;
  v126 = v28;
  v31 = v30;
  v127 = v32;
  sub_10001297C(v23, v25, v27 & 1);

  v124 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v123 = v31 & 1;
  LOBYTE(v172._countAndFlagsBits) = v31 & 1;
  LOBYTE(v167) = 0;
  swift_getKeyPath();
  v112[2] = OBJC_IVAR____TtC17AppleVisionProApp12PINViewModel___observationRegistrar;
  v41 = v121;
  v172._countAndFlagsBits = v121;
  v112[1] = sub_100037614();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *(v41 + 40);
  v172._countAndFlagsBits = *(v41 + 32);
  v172._object = v42;

  v43 = Text.init<A>(_:)();
  v45 = v44;
  LOBYTE(v41) = v46;
  static Font.footnote.getter();
  v47 = Text.font(_:)();
  v49 = v48;
  v51 = v50;

  sub_10001297C(v43, v45, v41 & 1);

  static Font.Weight.medium.getter();
  v52 = Text.fontWeight(_:)();
  v54 = v53;
  LOBYTE(v41) = v55;
  sub_10001297C(v47, v49, v51 & 1);

  static Color.white.getter();
  v56 = Text.foregroundColor(_:)();
  v58 = v57;
  LOBYTE(v49) = v59;

  sub_10001297C(v52, v54, v41 & 1);

  v60 = Text.shadow(color:radius:x:y:)();
  v117 = v61;
  v118 = v60;
  LOBYTE(v52) = v62;
  v119 = v63;
  sub_10001297C(v56, v58, v49 & 1);

  v116 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v115 = v52 & 1;
  LOBYTE(v172._countAndFlagsBits) = v52 & 1;
  LOBYTE(v167) = 0;
  swift_getKeyPath();
  v172._countAndFlagsBits = v121;
  v72 = v121;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v73 = *(v72 + 24);
  v172._countAndFlagsBits = *(v72 + 16);
  v172._object = v73;

  v74 = Text.init<A>(_:)();
  v76 = v75;
  LOBYTE(v49) = v77;
  v78 = type metadata accessor for Font.Design();
  v79 = v113;
  (*(*(v78 - 8) + 56))(v113, 1, 1, v78);
  static Font.system(size:weight:design:)();
  sub_100009908(v79, &qword_100169A80, &qword_10010D480);
  v80 = Text.font(_:)();
  v82 = v81;
  LOBYTE(v58) = v83;

  sub_10001297C(v74, v76, v49 & 1);

  static Font.Weight.medium.getter();
  v84 = Text.fontWeight(_:)();
  v86 = v85;
  LOBYTE(v52) = v87;
  sub_10001297C(v80, v82, v58 & 1);

  v88 = Text.tracking(_:)();
  v90 = v89;
  LOBYTE(v82) = v91;
  v93 = v92;
  sub_10001297C(v84, v86, v52 & 1);

  KeyPath = swift_getKeyPath();
  v95 = static Color.white.getter();
  v96 = swift_getKeyPath();
  *&v159 = v126;
  *(&v159 + 1) = v125;
  LOBYTE(v160) = v123;
  *(&v160 + 1) = *v158;
  DWORD1(v160) = *&v158[3];
  *(&v160 + 1) = v127;
  LOBYTE(v161) = v124;
  *(&v161 + 1) = *v157;
  DWORD1(v161) = *&v157[3];
  *(&v161 + 1) = v34;
  *&v162[0] = v36;
  *(&v162[0] + 1) = v38;
  *&v162[1] = v40;
  BYTE8(v162[1]) = 0;
  *(v142 + 9) = *(v162 + 9);
  v141 = v161;
  v142[0] = v162[0];
  v139 = v159;
  v140 = v160;
  *&v163 = v118;
  *(&v163 + 1) = v117;
  LOBYTE(v164) = v115;
  DWORD1(v164) = *(v156 + 3);
  *(&v164 + 1) = v156[0];
  *(&v164 + 1) = v119;
  LOBYTE(v165) = v116;
  DWORD1(v165) = *&v155[3];
  *(&v165 + 1) = *v155;
  *(&v165 + 1) = v65;
  *&v166[0] = v67;
  *(&v166[0] + 1) = v69;
  *&v166[1] = v71;
  BYTE8(v166[1]) = 0;
  *(v146 + 9) = *(v166 + 9);
  v145 = v165;
  v146[0] = v166[0];
  v143 = v163;
  v144 = v164;
  *&v167 = v88;
  *(&v167 + 1) = v90;
  LOBYTE(v168) = v82 & 1;
  DWORD1(v168) = *(v154 + 3);
  *(&v168 + 1) = v154[0];
  *(&v168 + 1) = v93;
  *&v169 = KeyPath;
  BYTE8(v169) = 1;
  HIDWORD(v169) = *&v153[3];
  *(&v169 + 9) = *v153;
  *&v170 = v96;
  *(&v170 + 1) = v95;
  *(v171 + 8) = xmmword_1001102F0;
  v97 = v122;
  *&v171[0] = v122;
  *(&v171[1] + 1) = 0x4010000000000000;
  v147 = v167;
  v148 = v168;
  v151 = v171[0];
  v152 = v171[1];
  v149 = v169;
  v150 = v170;
  v98 = v159;
  v99 = v160;
  v100 = v162[0];
  v101 = v114;
  v114[2] = v161;
  v101[3] = v100;
  *v101 = v98;
  v101[1] = v99;
  v102 = v142[1];
  v103 = v143;
  v104 = v145;
  v101[6] = v144;
  v101[7] = v104;
  v101[4] = v102;
  v101[5] = v103;
  v105 = v146[0];
  v106 = v146[1];
  v107 = v148;
  v101[10] = v147;
  v101[11] = v107;
  v101[8] = v105;
  v101[9] = v106;
  v108 = v149;
  v109 = v150;
  v110 = v152;
  v101[14] = v151;
  v101[15] = v110;
  v101[12] = v108;
  v101[13] = v109;
  v172._countAndFlagsBits = v88;
  v172._object = v90;
  v173 = v82 & 1;
  *v174 = v154[0];
  *&v174[3] = *(v154 + 3);
  v175 = v93;
  v176 = KeyPath;
  v177 = 1;
  *v178 = *v153;
  *&v178[3] = *&v153[3];
  v179 = v96;
  v180 = v95;
  v182 = xmmword_1001102F0;
  v181 = v97;
  v183 = 0x4010000000000000;

  sub_10000C178(&v159, v128, &qword_10016A0B8, &qword_10010ECF0);
  sub_10000C178(&v163, v128, &qword_10016A0B8, &qword_10010ECF0);
  sub_10000C178(&v167, v128, &qword_10016B1E0, &qword_100110448);
  sub_100009908(&v172, &qword_10016B1E0, &qword_100110448);
  v184[0] = v118;
  v184[1] = v117;
  v185 = v115;
  *v186 = v156[0];
  *&v186[3] = *(v156 + 3);
  v187 = v119;
  v188 = v116;
  *v189 = *v155;
  *&v189[3] = *&v155[3];
  v190 = v65;
  v191 = v67;
  v192 = v69;
  v193 = v71;
  v194 = 0;
  sub_100009908(v184, &qword_10016A0B8, &qword_10010ECF0);
  v128[0] = v126;
  v128[1] = v125;
  v129 = v123;
  *v130 = *v158;
  *&v130[3] = *&v158[3];
  v131 = v127;
  v132 = v124;
  *v133 = *v157;
  *&v133[3] = *&v157[3];
  v134 = v34;
  v135 = v36;
  v136 = v38;
  v137 = v40;
  v138 = 0;
  return sub_100009908(v128, &qword_10016A0B8, &qword_10010ECF0);
}

void *sub_100037460@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = static HorizontalAlignment.center.getter();
  v25 = 1;
  sub_100036A80(v3, &v8);
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v42[12] = v20;
  v42[13] = v21;
  v42[14] = v22;
  v42[15] = v23;
  v42[8] = v16;
  v42[9] = v17;
  v42[10] = v18;
  v42[11] = v19;
  v42[4] = v12;
  v42[5] = v13;
  v42[6] = v14;
  v42[7] = v15;
  v42[0] = v8;
  v42[1] = v9;
  v42[2] = v10;
  v42[3] = v11;
  sub_10000C178(&v26, &v7, &qword_10016B1D0, &unk_100110380);
  sub_100009908(v42, &qword_10016B1D0, &unk_100110380);
  *&__src[199] = v38;
  *&__src[215] = v39;
  *&__src[231] = v40;
  *&__src[247] = v41;
  *&__src[135] = v34;
  *&__src[151] = v35;
  *&__src[167] = v36;
  *&__src[183] = v37;
  *&__src[71] = v30;
  *&__src[87] = v31;
  *&__src[103] = v32;
  *&__src[119] = v33;
  *&__src[7] = v26;
  *&__src[23] = v27;
  *&__src[39] = v28;
  *&__src[55] = v29;
  v5 = v25;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  return memcpy((a1 + 17), __src, 0x107uLL);
}

unint64_t sub_100037614()
{
  result = qword_10016B1D8;
  if (!qword_10016B1D8)
  {
    type metadata accessor for PINViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B1D8);
  }

  return result;
}

uint64_t sub_10003767C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000376A8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100037730()
{
  result = qword_10016B1E8;
  if (!qword_10016B1E8)
  {
    sub_10000459C(&qword_10016B1F0, &unk_100110450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B1E8);
  }

  return result;
}

uint64_t type metadata accessor for OpenProductPageAction(uint64_t a1)
{
  result = qword_10016B260;
  if (!qword_10016B260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037838(void *a1)
{
  v3 = v1;
  v5 = sub_100002BE4(&qword_10016B350, &qword_1001105A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000524C(a1, a1[3]);
  sub_100038C6C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for ActionMetrics();
  sub_1000390FC(&qword_10016B358, &type metadata accessor for ActionMetrics, &protocol conformance descriptor for ActionMetrics);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for OpenProductPageAction(0);
    v15 = *(v3 + v9[5]);
    v14 = 1;
    sub_100002BE4(&qword_10016B2F8, &qword_1001141A0);
    sub_100039144();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + v9[6]);
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    *&v15 = v11;
    BYTE8(v15) = v10;
    v14 = 2;
    sub_100002BE4(&qword_10016B310, &qword_100110590);
    sub_100039244();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = *(v3 + v9[7]);
    v14 = 3;
    sub_100002BE4(&qword_10016B328, &qword_100110598);
    sub_100039344();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v15) = *(v3 + v9[9]);
    v14 = 5;
    sub_100002BE4(&qword_10016B338, &qword_1001105A0);
    sub_1000393C0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100037B60(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for ActionMetrics();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v22 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100002BE4(&qword_10016B2E0, &unk_100110580);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v18 - v6;
  v8 = type metadata accessor for OpenProductPageAction(0);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000524C(a1, a1[3]);
  sub_100038C6C();
  v23 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1000052E4(a1);
  }

  else
  {
    v12 = v19;
    v11 = v20;
    LOBYTE(v24) = 0;
    sub_1000390FC(&qword_10016B2F0, &type metadata accessor for ActionMetrics, &protocol conformance descriptor for ActionMetrics);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v11 + 32))(v10, v22, v4);
    sub_100002BE4(&qword_10016B2F8, &qword_1001141A0);
    v26 = 1;
    sub_100038CC0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = &v10[v8[5]];
    v14 = v25;
    *v13 = v24;
    *(v13 + 1) = v14;
    v22 = v14;
    sub_100002BE4(&qword_10016B310, &qword_100110590);
    v26 = 2;
    sub_100038DC0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = &v10[v8[6]];
    v16 = v25;
    *v15 = v24;
    v15[8] = v16;
    sub_100002BE4(&qword_10016B328, &qword_100110598);
    v26 = 3;
    sub_100038EC0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10[v8[7]] = v24;
    LOBYTE(v24) = 4;
    v10[v8[8]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_100002BE4(&qword_10016B338, &qword_1001105A0);
    v26 = 5;
    sub_100038F3C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v8[9];
    (*(v12 + 8))(v23, v21);
    v10[v17] = v24;
    sub_10003903C(v10, v18);
    sub_1000052E4(a1);
    sub_1000390A0(v10);
  }
}

uint64_t sub_100038044()
{
  v1 = *v0;
  v2 = 0x654D6E6F69746361;
  v3 = 0x6972656E65477369;
  v4 = 0x6C63697472417369;
  if (v1 != 4)
  {
    v4 = 0x656C62616E457369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x44496D616461;
  if (v1 != 1)
  {
    v5 = 0x6570795464726163;
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

uint64_t sub_100038120@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100038268(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100038154(uint64_t a1)
{
  v2 = sub_100038C6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038190(uint64_t a1)
{
  v2 = sub_100038C6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000381CC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActionMetrics();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100038268(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D616461 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795464726163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6972656E65477369 && a2 == 0xED00006472614363 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C63697472417369 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064)
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

uint64_t sub_100038480(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = type metadata accessor for ActionOutcome();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.productPageAdamId.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 stringForKey:v8];

  if (!v9)
  {
LABEL_6:
    v14 = (a1 + *(type metadata accessor for OpenProductPageAction(0) + 20));
    if (v14[1])
    {
      v10 = *v14;
      v12 = v14[1];
    }

    else
    {
      v10 = 0;
      v12 = 0xE000000000000000;
    }

    goto LABEL_10;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    goto LABEL_6;
  }

LABEL_10:
  v15 = type metadata accessor for OpenProductPageAction(0);
  v16 = a1 + *(v15 + 24);
  v17 = 3;
  if ((*(v16 + 8) & 1) == 0)
  {
    v18 = sub_10004F784([objc_allocWithZone(NSNumber) initWithInteger:*v16]);
    if (v18 == 5)
    {
      v17 = 3;
    }

    else
    {
      v17 = v18;
    }
  }

  if (qword_100168F20 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v15 + 28)))
  {
    v19 = 0;
  }

  else
  {
    v19 = 256;
  }

  sub_10003E3C0(v22, v10, v12, v19 & 0xFFFFFF00 | v17);
  sub_100002BE4(&qword_10016B200, &unk_1001104F0);
  (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_100038700(uint64_t a1)
{
  v2 = type metadata accessor for ActionOutcome();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OpenProductPageAction(0);
  v7 = *(a1 + *(v6 + 36));
  if (v7 == 2 || (v7 & 1) == 0)
  {
    return sub_100038480(a1, *(a1 + *(v6 + 32)) == 1);
  }

  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006B0C(v8, qword_100181FA0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100006B44(0xD000000000000023, 0x8000000100110440, &v15);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s Skipping action, it is disabled.", v11, 0xCu);
    sub_1000052E4(v12);
  }

  sub_100002BE4(&qword_10016B200, &unk_1001104F0);
  (*(v3 + 104))(v5, enum case for ActionOutcome.unsupported(_:), v2);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_100038964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionMetrics();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100038A44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActionMetrics();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_100038B00(uint64_t a1)
{
  type metadata accessor for ActionMetrics();
  if (v1 <= 0x3F)
  {
    sub_10001EC3C(319, &qword_10016B270, &qword_10016B278, &qword_100113A20);
    if (v2 <= 0x3F)
    {
      sub_10001EC3C(319, &qword_10016B280, &qword_10016B288, qword_100110520);
      if (v3 <= 0x3F)
      {
        sub_100038C1C();
        if (v4 <= 0x3F)
        {
          sub_10001EC3C(319, &qword_10016B298, &unk_10016B2A0, "ʴ");
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100038C1C()
{
  if (!qword_10016B290)
  {
    v0 = type metadata accessor for DiscardOnError();
    if (!v1)
    {
      atomic_store(v0, &qword_10016B290);
    }
  }
}

unint64_t sub_100038C6C()
{
  result = qword_10016B2E8;
  if (!qword_10016B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B2E8);
  }

  return result;
}

unint64_t sub_100038CC0()
{
  result = qword_10016B300;
  if (!qword_10016B300)
  {
    sub_10000459C(&qword_10016B2F8, &qword_1001141A0);
    sub_100038D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B300);
  }

  return result;
}

unint64_t sub_100038D44()
{
  result = qword_10016B308;
  if (!qword_10016B308)
  {
    sub_10000459C(&qword_10016B278, &qword_100113A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B308);
  }

  return result;
}

unint64_t sub_100038DC0()
{
  result = qword_10016B318;
  if (!qword_10016B318)
  {
    sub_10000459C(&qword_10016B310, &qword_100110590);
    sub_100038E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B318);
  }

  return result;
}

unint64_t sub_100038E44()
{
  result = qword_10016B320;
  if (!qword_10016B320)
  {
    sub_10000459C(&qword_10016B288, qword_100110520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B320);
  }

  return result;
}

unint64_t sub_100038EC0()
{
  result = qword_10016B330;
  if (!qword_10016B330)
  {
    sub_10000459C(&qword_10016B328, &qword_100110598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B330);
  }

  return result;
}

unint64_t sub_100038F3C()
{
  result = qword_10016B340;
  if (!qword_10016B340)
  {
    sub_10000459C(&qword_10016B338, &qword_1001105A0);
    sub_100038FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B340);
  }

  return result;
}

unint64_t sub_100038FC0()
{
  result = qword_10016B348;
  if (!qword_10016B348)
  {
    sub_10000459C(&unk_10016B2A0, "ʴ");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B348);
  }

  return result;
}

uint64_t sub_10003903C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenProductPageAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000390A0(uint64_t a1)
{
  v2 = type metadata accessor for OpenProductPageAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000390FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100039144()
{
  result = qword_10016B360;
  if (!qword_10016B360)
  {
    sub_10000459C(&qword_10016B2F8, &qword_1001141A0);
    sub_1000391C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B360);
  }

  return result;
}

unint64_t sub_1000391C8()
{
  result = qword_10016B368;
  if (!qword_10016B368)
  {
    sub_10000459C(&qword_10016B278, &qword_100113A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B368);
  }

  return result;
}

unint64_t sub_100039244()
{
  result = qword_10016B370;
  if (!qword_10016B370)
  {
    sub_10000459C(&qword_10016B310, &qword_100110590);
    sub_1000392C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B370);
  }

  return result;
}

unint64_t sub_1000392C8()
{
  result = qword_10016B378;
  if (!qword_10016B378)
  {
    sub_10000459C(&qword_10016B288, qword_100110520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B378);
  }

  return result;
}

unint64_t sub_100039344()
{
  result = qword_10016B380;
  if (!qword_10016B380)
  {
    sub_10000459C(&qword_10016B328, &qword_100110598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B380);
  }

  return result;
}

unint64_t sub_1000393C0()
{
  result = qword_10016B388;
  if (!qword_10016B388)
  {
    sub_10000459C(&qword_10016B338, &qword_1001105A0);
    sub_100039444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B388);
  }

  return result;
}

unint64_t sub_100039444()
{
  result = qword_10016B390;
  if (!qword_10016B390)
  {
    sub_10000459C(&unk_10016B2A0, "ʴ");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OpenProductPageAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OpenProductPageAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100039614()
{
  result = qword_10016B398;
  if (!qword_10016B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B398);
  }

  return result;
}

unint64_t sub_10003966C()
{
  result = qword_10016B3A0;
  if (!qword_10016B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B3A0);
  }

  return result;
}

unint64_t sub_1000396C4()
{
  result = qword_10016B3A8;
  if (!qword_10016B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B3A8);
  }

  return result;
}

uint64_t sub_100039718(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[24];
  v4 = a1[25];
  v5 = a2[24];
  v6 = a2[25];
  v7 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (sub_10009AA54(v3, v5))
  {
    return v4 ^ v6 ^ 1u;
  }

  return 0;
}

char *sub_10003988C(char a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v17 = OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_cardOpenedDate;
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(&v8[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_productViewController;
  type metadata accessor for StoreProductViewController();
  *&v8[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v8[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_deviceProvider] = a5;
  v20 = &v8[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_dismissHandler];
  *v20 = a6;
  *(v20 + 1) = a7;
  v21 = &v8[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType];
  *v21 = a1 & 1;
  *(v21 + 1) = a2;
  *(v21 + 2) = a3;
  v21[24] = a4;
  v22 = (a4 >> 8) & 1;
  v21[25] = v22;
  v28.receiver = v8;
  v28.super_class = ObjectType;

  v23 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", 0, 0);
  v24 = OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_productViewController;
  *(*&v23[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_productViewController] + OBJC_IVAR____TtC17AppleVisionProApp26StoreProductViewController_dismissDelegate + 8) = &off_10015BE20;
  swift_unknownObjectWeakAssign();
  v25 = *&v23[v24];
  v26 = v23;
  [v25 setShowsStoreButton:{v22, v28.receiver, v28.super_class}];

  return v26;
}

uint64_t sub_100039A58()
{
  swift_getObjectType();
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v44[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  __chkstk_darwin(v5 - 8);
  v7 = &v44[-v6];
  v8 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.remoteDownloadIdentifierOverride.getter();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 stringForKey:v9];

  if (!v10)
  {
LABEL_10:
    v48 = v2;
    v17 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_deviceProvider);
    swift_getKeyPath();
    v50[0] = v17;
    sub_10003C084();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(*(v17 + 16) + 16))
    {
      if (qword_100168E38 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100006B0C(v18, qword_100181FD0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v46 = v21;
        v47 = swift_slowAlloc();
        v50[0] = v47;
        *v21 = 136315138;
        v22 = _typeName(_:qualified:)();
        v45 = v20;
        v24 = sub_100006B44(v22, v23, v50);

        v25 = v46;
        *(v46 + 1) = v24;
        _os_log_impl(&_mh_execute_header, v19, v45, "%s No devices available, so may not have a selected device.", v25, 0xCu);
        sub_1000052E4(v47);
      }
    }

    swift_getKeyPath();
    v50[0] = v17;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
    swift_beginAccess();
    sub_10000C178(v17 + v26, v7, &qword_10016B010, &qword_100110020);
    v27 = v48;
    if ((*(v48 + 48))(v7, 1, v1))
    {
      sub_100009908(v7, &qword_10016B010, &qword_100110020);
      if (qword_100168E38 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100006B0C(v28, qword_100181FD0);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_28;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v49 = v32;
      *v31 = 136315138;
      v33 = _typeName(_:qualified:)();
      v35 = sub_100006B44(v33, v34, &v49);

      *(v31 + 4) = v35;
      v36 = "%s No selected device available, not sending remoteDownloadIdentifiers.";
    }

    else
    {
      (*(v27 + 16))(v4, v7, v1);
      sub_100009908(v7, &qword_10016B010, &qword_100110020);
      v37 = Device.serialNumber.getter();
      v39 = v38;
      (*(v27 + 8))(v4, v1);
      if (sub_100089F28(v37, v39))
      {
        return v37;
      }

      if (qword_100168E38 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100006B0C(v40, qword_100181FD0);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_28;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v49 = v32;
      *v31 = 136315138;
      v41 = _typeName(_:qualified:)();
      v43 = sub_100006B44(v41, v42, &v49);

      *(v31 + 4) = v43;
      v36 = "%s vision device doesn't accept remote downloads, not sending remoteDownloadIdentifiers.";
    }

    _os_log_impl(&_mh_execute_header, v29, v30, v36, v31, 0xCu);
    sub_1000052E4(v32);

LABEL_28:

    return 0;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    goto LABEL_10;
  }

  if (v11 == 7104878 && v13 == 0xE300000000000000 || (v15 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = v11, (v15 & 1) != 0))
  {

    return 0;
  }

  return result;
}

double sub_10003A0FC(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100002BE4(&qword_10016B420, &qword_100110790);
  __chkstk_darwin(v5 - 8);
  v49 = &v46 - v6;
  v57.receiver = v2;
  v57.super_class = ObjectType;
  objc_msgSendSuper2(&v57, "viewDidAppear:", a1 & 1);
  v7 = &v2[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType];
  v9 = *&v2[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 8];
  v8 = *&v2[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 16];
  sub_100002BE4(&qword_10016B428, &qword_100110798);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010FEE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v11;
  *(inited + 48) = v9;
  v48 = v9;
  *(inited + 56) = v8;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v12;
  v13 = *v7;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = v13;
  swift_bridgeObjectRetain_n();
  v14 = sub_10000B7F4(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_100169778, &qword_10010D210);
  swift_arrayDestroy();
  v15 = sub_100039A58();
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    sub_100002BE4(&qword_1001695D0, &unk_10010CF70);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10010D3B0;
    *(v22 + 32) = v17;
    *(v22 + 40) = v18;
    v54 = sub_100002BE4(&qword_10016B430, &unk_1001107A0);
    *&aBlock = v22;
    sub_10000BF7C(&aBlock, v51);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v14;
    sub_10004E1DC(v51, v19, v21, isUniquelyReferenced_nonNull_native);
  }

  v24 = *&v2[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_productViewController];
  [v24 setModalPresentationStyle:1];
  if (qword_100168E38 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100006B0C(v25, qword_100181FD0);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v47 = v24;
    *&aBlock = v29;
    *v28 = 136315394;
    v30 = _typeName(_:qualified:)();
    v32 = sub_100006B44(v30, v31, &aBlock);
    v46 = ObjectType;
    v33 = v32;

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = v48;
    *(v28 + 14) = sub_100006B44(v48, v8, &aBlock);
    _os_log_impl(&_mh_execute_header, v26, v27, "%s started loading product page for item %s", v28, 0x16u);
    swift_arrayDestroy();
    v24 = v47;

    v35 = v46;
  }

  else
  {

    v35 = ObjectType;
    v34 = v48;
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = v34;
  v38[4] = v8;
  v38[5] = v35;
  v55 = sub_10003BF94;
  v56 = v38;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v53 = sub_10003B3E8;
  v54 = &unk_10015BE80;
  v39 = _Block_copy(&aBlock);

  [v24 loadProductWithParameters:isa completionBlock:v39];
  _Block_release(v39);

  v40 = v49;
  Date.init()();
  v41 = type metadata accessor for Date();
  (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  v42 = OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_cardOpenedDate;
  swift_beginAccess();
  sub_10003BFB8(v40, &v2[v42]);
  swift_endAccess();
  sub_10004F388(0);
  v54 = &_s20TetsuoAnalyticsEventON;
  v55 = sub_1000250D8();
  LOBYTE(aBlock) = 11;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  sub_1000052E4(&aBlock);
  v43 = *(v7 + 1);
  v44 = *(v7 + 2);
  LOBYTE(v40) = v7[24];

  sub_10004B668(0.0, v43, v44, v40);

  return result;
}

void sub_10003A71C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a2)
    {
      swift_errorRetain();
      if (qword_100168E38 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100006B0C(v12, qword_100181FD0);
      swift_errorRetain();

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v15 = 136315650;
        v17 = _typeName(_:qualified:)();
        v19 = sub_100006B44(v17, v18, &v37);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2080;
        *(v15 + 14) = sub_100006B44(a4, a5, &v37);
        *(v15 + 22) = 2112;
        swift_errorRetain();
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 24) = v20;
        *v16 = v20;
        _os_log_impl(&_mh_execute_header, v13, v14, "%s failed to load product page for item %s with error: %@", v15, 0x20u);
        sub_100009908(v16, &unk_100169C20, &unk_10010D6B0);

        swift_arrayDestroy();
      }

      swift_errorRetain();
      sub_10003AC64(a2, 1);
    }

    else
    {
      if (a1)
      {
        if (qword_100168E38 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_100006B0C(v21, qword_100181FD0);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v24 = 136315394;
          v25 = _typeName(_:qualified:)();
          v27 = sub_100006B44(v25, v26, &v37);

          *(v24 + 4) = v27;
          *(v24 + 12) = 2080;
          *(v24 + 14) = sub_100006B44(a4, a5, &v37);
          _os_log_impl(&_mh_execute_header, v22, v23, "%s finished loading product page for item %s", v24, 0x16u);
          swift_arrayDestroy();
        }

        sub_10003B044();
        goto LABEL_20;
      }

      if (qword_100168E38 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100006B0C(v28, qword_100181FD0);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v31 = 136315394;
        v32 = _typeName(_:qualified:)();
        v34 = sub_100006B44(v32, v33, &v37);

        *(v31 + 4) = v34;
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_100006B44(a4, a5, &v37);
        _os_log_impl(&_mh_execute_header, v29, v30, "%s failed to load product page for item %s for an unknown reason", v31, 0x16u);
        swift_arrayDestroy();
      }

      sub_10003C028();
      v35 = swift_allocError();
      *v36 = 0;
      sub_10003AC64(v35, 1);
    }

LABEL_20:
  }
}

uint64_t sub_10003AC64(uint64_t a1, char a2)
{
  v3 = v2;
  swift_getObjectType();
  v7 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 8);
  v6 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 16);
  if ((a2 & 1) == 0)
  {
    v21 = qword_100168E38;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006B0C(v22, qword_100181FD0);

    v10 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v23))
    {
      v31 = v7;
      v24 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v24 = 136315394;
      v25 = _typeName(_:qualified:)();
      v27 = sub_100006B44(v25, v26, &v32);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v28 = sub_100006B44(v31, v6, &v32);

      *(v24 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v10, v23, "%s dismissing product page for item %s", v24, 0x16u);
      swift_arrayDestroy();

      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  v8 = qword_100168E38;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006B0C(v9, qword_100181FD0);

  sub_10003BD1C(a1, 1);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  sub_10003BD28(a1, 1);
  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_11;
  }

  v12 = swift_slowAlloc();
  v30 = v7;
  v13 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  *v12 = 136315650;
  v14 = _typeName(_:qualified:)();
  v16 = a1;
  v17 = a2;
  v18 = sub_100006B44(v14, v15, &v32);

  *(v12 + 4) = v18;
  *(v12 + 12) = 2080;
  v19 = sub_100006B44(v30, v6, &v32);

  *(v12 + 14) = v19;
  a2 = v17;
  a1 = v16;
  *(v12 + 22) = 2112;
  swift_errorRetain();
  v20 = _swift_stdlib_bridgeErrorToNSError();
  *(v12 + 24) = v20;
  *v13 = v20;
  _os_log_impl(&_mh_execute_header, v10, v11, "%s dismissing product page for item %s with error %@", v12, 0x20u);
  sub_100009908(v13, &unk_100169C20, &unk_10010D6B0);

  swift_arrayDestroy();

LABEL_10:

LABEL_12:

  sub_10003B728();
  return (*(v3 + OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_dismissHandler))(a1, a2 & 1);
}

void sub_10003B044()
{
  v1 = v0;
  swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 8];
  v2 = *&v0[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 16];
  v4 = qword_100168E38;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100181FD0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, &v22);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100006B44(v3, v2, &v22);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s presenting product page for item %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *&v1[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_productViewController];
  [v1 presentViewController:v12 animated:1 completion:0];
  if ([v12 isBeingPresented])
  {
  }

  else
  {

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v15 = 136315394;
      v16 = _typeName(_:qualified:)();
      v18 = sub_100006B44(v16, v17, &v22);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v19 = sub_100006B44(v3, v2, &v22);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s failed to present product page for item %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10003C028();
    v20 = swift_allocError();
    *v21 = 1;
    sub_10003AC64(v20, 1);
  }
}

void sub_10003B3E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10003B4B4(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_100002BE4(&qword_10016B420, &qword_100110790);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v23.receiver = v1;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, "viewWillDisappear:", a1 & 1);
  sub_10003B728();
  v14 = OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_cardOpenedDate;
  swift_beginAccess();
  sub_10000C178(&v1[v14], v6, &qword_10016B420, &qword_100110790);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100009908(v6, &qword_10016B420, &qword_100110790);
  }

  (*(v8 + 32))(v13, v6, v7);
  v16 = *&v1[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 8];
  v17 = *&v1[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 16];
  v18 = v1[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 24];

  Date.init()();
  Date.timeIntervalSince(_:)();
  v20 = v19;
  v21 = *(v8 + 8);
  v21(v11, v7);
  sub_10004B668(v20, v16, v17, v18);

  return (v21)(v13, v7);
}

void sub_10003B728()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [v0 presentedViewController];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_productViewController];
    sub_10003BED0();
    v5 = v4;
    v6 = static NSObject.== infix(_:_:)();

    if ((v6 & 1) != 0 && ([v5 isBeingDismissed] & 1) == 0)
    {
      v8 = *&v1[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 8];
      v7 = *&v1[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 16];
      v9 = qword_100168E38;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100006B0C(v10, qword_100181FD0);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v13 = 136315394;
        v14 = _typeName(_:qualified:)();
        v16 = sub_100006B44(v14, v15, &v18);

        *(v13 + 4) = v16;
        *(v13 + 12) = 2080;
        v17 = sub_100006B44(v8, v7, &v18);

        *(v13 + 14) = v17;
        _os_log_impl(&_mh_execute_header, v11, v12, "%s dismissing product page view controller for item %s", v13, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      [v1 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id sub_10003BA30()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StoreProductPresenterViewController(uint64_t a1)
{
  result = qword_10016B400;
  if (!qword_10016B400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003BB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10003BC14(319, a2, a3);
  if (v3 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10003BC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_10016B410)
  {
    type metadata accessor for Date();
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, &qword_10016B410);
    }
  }
}

__n128 sub_10003BC6C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_10003BC80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_10003BCC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003BD1C(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_10003BD28(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

char *sub_10003BD34()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  objc_allocWithZone(type metadata accessor for StoreProductPresenterViewController(0));
  if (v5)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  return sub_10003988C(v1, v2, v3, v9 | v4, v6, v7, v8);
}

uint64_t sub_10003BDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003C2CC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10003BE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003C2CC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10003BEA8(uint64_t a1)
{
  sub_10003C2CC();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10003BED0()
{
  result = qword_10016B418;
  if (!qword_10016B418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016B418);
  }

  return result;
}

uint64_t sub_10003BF1C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003BF54()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003BFA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003BFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016B420, &qword_100110790);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003C028()
{
  result = qword_10016B438;
  if (!qword_10016B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B438);
  }

  return result;
}

unint64_t sub_10003C084()
{
  result = qword_10016AFE0;
  if (!qword_10016AFE0)
  {
    type metadata accessor for DeviceProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AFE0);
  }

  return result;
}

unint64_t sub_10003C108()
{
  result = qword_10016B440;
  if (!qword_10016B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B440);
  }

  return result;
}

unint64_t sub_10003C160()
{
  result = qword_10016B448;
  if (!qword_10016B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B448);
  }

  return result;
}

__n128 sub_10003C1B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10003C1D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10003C218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003C278()
{
  result = qword_10016B450;
  if (!qword_10016B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B450);
  }

  return result;
}

unint64_t sub_10003C2CC()
{
  result = qword_10016B458;
  if (!qword_10016B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B458);
  }

  return result;
}

void sub_10003C324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v10 = String.data(using:allowLossyConversion:)();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (v12 >> 60 != 15)
  {
    sub_100002BE4(&qword_10016B428, &qword_100110798);
    v18 = a2;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010FEE0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v20;
    type metadata accessor for CFString(0);
    *(inited + 72) = v21;
    *(inited + 48) = kSecClassGenericPassword;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v22;
    *(inited + 120) = &type metadata for String;
    v62 = a1;
    *(inited + 96) = a1;
    *(inited + 104) = v18;
    v23 = kSecClassGenericPassword;
    v61 = v18;

    v24 = sub_10000B7F4(inited);
    swift_setDeallocating();
    sub_100002BE4(&qword_100169778, &qword_10010D210);
    swift_arrayDestroy();
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_10010D3B0;
    *(v25 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v25 + 72) = &type metadata for Data;
    *(v25 + 40) = v26;
    *(v25 + 48) = v10;
    *(v25 + 56) = v12;
    *&v63 = v10;
    *(&v63 + 1) = v12;
    sub_10003DC0C(v10, v12);
    sub_10000B7F4(v25);
    swift_setDeallocating();
    sub_10003DC60(v25 + 32);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v28 = Dictionary._bridgeToObjectiveC()().super.isa;

    v29 = SecItemUpdate(isa, v28);

    if (v29 == -25300)
    {
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
      v67 = &type metadata for Data;
      v45 = v63;
      v66 = v63;
      sub_10000BF7C(&v66, v65);
      sub_10003DC0C(v45, *(&v45 + 1));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v24;
      sub_10004E1DC(v65, v42, v44, isUniquelyReferenced_nonNull_native);

      v47 = Dictionary._bridgeToObjectiveC()().super.isa;

      v48 = SecItemAdd(v47, 0);

      if (v48 == -25293)
      {
        v56 = v61;
        v57 = v62;
        if (qword_100168E70 != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        sub_100006B0C(v58, qword_100182078);

        v14 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v14, v39))
        {
          goto LABEL_32;
        }

        v40 = swift_slowAlloc();
        *&v66 = swift_slowAlloc();
        *v40 = 136315394;
        *(v40 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v66);
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_100006B44(v57, v56, &v66);
        v41 = "%s Authentication failed while adding keychain item for key: %s";
        goto LABEL_31;
      }

      v49 = v61;
      v50 = v62;
      if (v48)
      {
        v30 = v63;
        if (qword_100168E70 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        sub_100006B0C(v60, qword_100182078);

        v14 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v14, v53))
        {
          goto LABEL_39;
        }

        v54 = swift_slowAlloc();
        *&v66 = swift_slowAlloc();
        *v54 = 136315650;
        *(v54 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v66);
        *(v54 + 12) = 2080;
        *(v54 + 14) = sub_100006B44(v50, v49, &v66);
        *(v54 + 22) = 1024;
        *(v54 + 24) = v48;
        v55 = "%s Failed to save key: %s, error: %d";
        goto LABEL_37;
      }

      if (qword_100168E70 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_100006B0C(v51, qword_100182078);

      v14 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v39))
      {
        v40 = swift_slowAlloc();
        *&v66 = swift_slowAlloc();
        *v40 = 136315394;
        *(v40 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v66);
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_100006B44(v50, v49, &v66);
        v41 = "%s Successfully saved key: %s";
        goto LABEL_31;
      }
    }

    else
    {
      if (v29 != -25293)
      {
        v31 = v62;
        v30 = v63;
        v32 = v61;
        if (!v29)
        {

          if (qword_100168E70 != -1)
          {
            swift_once();
          }

          v33 = type metadata accessor for Logger();
          sub_100006B0C(v33, qword_100182078);

          v14 = Logger.logObject.getter();
          v34 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v14, v34))
          {
            goto LABEL_39;
          }

          v35 = swift_slowAlloc();
          *&v66 = swift_slowAlloc();
          *v35 = 136315394;
          *(v35 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v66);
          *(v35 + 12) = 2080;
          *(v35 + 14) = sub_100006B44(v31, v32, &v66);
          _os_log_impl(&_mh_execute_header, v14, v34, "%s Successfully updated value for key: %s", v35, 0x16u);
          swift_arrayDestroy();

LABEL_38:

LABEL_39:
          v59 = v30;
          goto LABEL_40;
        }

        if (qword_100168E70 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_100006B0C(v52, qword_100182078);

        v14 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v14, v53))
        {
          goto LABEL_39;
        }

        v54 = swift_slowAlloc();
        *&v66 = swift_slowAlloc();
        *v54 = 136315650;
        *(v54 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v66);
        *(v54 + 12) = 2080;
        *(v54 + 14) = sub_100006B44(v31, v32, &v66);
        *(v54 + 22) = 1024;
        *(v54 + 24) = v29;
        v55 = "%s Unexpected error updating keychain item for key: %s, error: %d";
LABEL_37:
        _os_log_impl(&_mh_execute_header, v14, v53, v55, v54, 0x1Cu);
        swift_arrayDestroy();

        goto LABEL_38;
      }

      v36 = v61;
      v37 = v62;
      if (qword_100168E70 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100006B0C(v38, qword_100182078);

      v14 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v39))
      {
        v40 = swift_slowAlloc();
        *&v66 = swift_slowAlloc();
        *v40 = 136315394;
        *(v40 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v66);
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_100006B44(v37, v36, &v66);
        v41 = "%s Authentication failed for key: %s";
LABEL_31:
        _os_log_impl(&_mh_execute_header, v14, v39, v41, v40, 0x16u);
        swift_arrayDestroy();
      }
    }

LABEL_32:
    v59 = v63;
LABEL_40:
    sub_10003DCC8(v59, *(&v63 + 1));
    goto LABEL_41;
  }

  if (qword_100168E70 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006B0C(v13, qword_100182078);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v66 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v66);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s Failed to convert value to data.", v16, 0xCu);
    sub_1000052E4(v17);
  }

LABEL_41:
}

void sub_10003CEC8(uint64_t a1, unint64_t a2)
{
  sub_100002BE4(&qword_10016B428, &qword_100110798);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010FEE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  type metadata accessor for CFString(0);
  *(inited + 72) = v6;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v7;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  v8 = kSecClassGenericPassword;

  sub_10000B7F4(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_100169778, &qword_10010D210);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = SecItemDelete(isa);

  if (v10 == -25293)
  {
    if (qword_100168E70 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006B0C(v16, qword_100182078);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v20);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_100006B44(a1, a2, &v20);
      v15 = "%s Authentication failed while deleting keychain item for key: %s";
      goto LABEL_11;
    }
  }

  else if (v10)
  {
    if (qword_100168E70 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006B0C(v17, qword_100182078);

    v12 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 136315650;
      *(v19 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v20);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_100006B44(a1, a2, &v20);
      *(v19 + 22) = 1024;
      *(v19 + 24) = v10;
      _os_log_impl(&_mh_execute_header, v12, v18, "%s Failed to delete key: %s, error: %d", v19, 0x1Cu);
      swift_arrayDestroy();

      goto LABEL_16;
    }
  }

  else
  {
    if (qword_100168E70 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006B0C(v11, qword_100182078);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v20);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_100006B44(a1, a2, &v20);
      v15 = "%s Successfully deleted key: %s";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 0x16u);
      swift_arrayDestroy();

LABEL_16:
    }
  }
}

uint64_t sub_10003D38C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v4 - 8);
  sub_100002BE4(&qword_10016B428, &qword_100110798);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100110A60;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v6;
  type metadata accessor for CFString(0);
  v8 = v7;
  *(inited + 72) = v7;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v9;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v10;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v11;
  *(inited + 216) = v8;
  *(inited + 192) = kSecMatchLimitOne;
  v12 = kSecClassGenericPassword;

  v13 = kSecMatchLimitOne;
  sub_10000B7F4(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_100169778, &qword_10010D210);
  swift_arrayDestroy();
  v40 = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = SecItemCopyMatching(isa, &v40);

  if (v15 == -25293)
  {
    if (qword_100168E70 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006B0C(v27, qword_100182078);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_25;
    }

    v30 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v30 = 136315394;
    *(v30 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v38);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_100006B44(a1, a2, &v38);
    v31 = "%s Authentication failed while retrieving keychain item for key: %s";
LABEL_23:
    _os_log_impl(&_mh_execute_header, v28, v29, v31, v30, 0x16u);
    swift_arrayDestroy();

LABEL_24:

LABEL_25:

    v19 = 0;
    goto LABEL_26;
  }

  if (v15)
  {
    if (qword_100168E70 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006B0C(v32, qword_100182078);

    v28 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v28, v33))
    {
      goto LABEL_25;
    }

    v34 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v34 = 136315650;
    *(v34 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v38);
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_100006B44(a1, a2, &v38);
    *(v34 + 22) = 1024;
    *(v34 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v28, v33, "%s Failed to retrieve key: %s, error: %d", v34, 0x1Cu);
    swift_arrayDestroy();

    goto LABEL_24;
  }

  if (!v40 || (swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_19:
    if (qword_100168E70 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100006B0C(v35, qword_100182078);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_25;
    }

    v30 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v30 = 136315394;
    *(v30 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v38);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_100006B44(a1, a2, &v38);
    v31 = "%s Successfully retrieved key: %s, but failed to decode into value";
    goto LABEL_23;
  }

  v16 = v38;
  static String.Encoding.utf8.getter();
  sub_10003DB64();
  v17 = String.init<A>(bytes:encoding:)();
  if (!v18)
  {
    sub_10003DBB8(v38, v39);
    goto LABEL_19;
  }

  v19 = v17;
  v20 = v18;
  if (qword_100168E70 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006B0C(v21, qword_100182078);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v37 = v39;
    v24 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v24 = 136315650;
    *(v24 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v38);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_100006B44(a1, a2, &v38);
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_100006B44(v19, v20, &v38);
    _os_log_impl(&_mh_execute_header, v22, v23, "%s Successfully retrieved key: %s, with value: %s", v24, 0x20u);
    swift_arrayDestroy();

    v25 = v16;
    v26 = v37;
  }

  else
  {
    v25 = v38;
    v26 = v39;
  }

  sub_10003DBB8(v25, v26);

LABEL_26:
  swift_unknownObjectRelease();
  return v19;
}

unint64_t sub_10003DB64()
{
  result = qword_10016B460;
  if (!qword_10016B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B460);
  }

  return result;
}

uint64_t sub_10003DBB8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10003DC0C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10003DC60(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_100169778, &qword_10010D210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003DCC8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10003DBB8(result, a2);
  }

  return result;
}

unint64_t sub_10003DCDC()
{
  _StringGuts.grow(_:)(43);

  String.append(_:)(*v0);
  v1._countAndFlagsBits = 0x446465646461202CLL;
  v1._object = 0xED0000203A657461;
  String.append(_:)(v1);
  type metadata accessor for SpatialGalleryFavorite(0);
  v2 = type metadata accessor for Date();
  sub_10003DE18(v2, v3, v4);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0xD00000000000002DLL;
}

uint64_t type metadata accessor for SpatialGalleryFavorite(uint64_t a1)
{
  result = qword_10016B4C8;
  if (!qword_10016B4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10003DE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10016B468;
  if (!qword_10016B468)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B468);
  }

  return result;
}

uint64_t sub_10003DE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003DF48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003DFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Date();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int Array<A>.id.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v17 - v8;
  v10 = *(a2 - 8);
  __chkstk_darwin(v7);
  v17 = v11;
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init()();
  if (!Array.endIndex.getter())
  {
LABEL_11:
    v27[2] = v24;
    v27[3] = v25;
    v28 = v26;
    v27[0] = v22;
    v27[1] = v23;
    return Hasher.finalize()();
  }

  v13 = 0;
  v19 = (v6 + 8);
  v20 = (v10 + 16);
  v18 = (v10 + 8);
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v10 + 16))(v12, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v13, a2);
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v17 != 8)
    {
      break;
    }

    *&v27[0] = result;
    (*v20)(v12, v27, a2);
    swift_unknownObjectRelease();
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    dispatch thunk of Identifiable.id.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of Hashable.hash(into:)();
    (*v19)(v9, AssociatedTypeWitness);
    (*v18)(v12, a2);
    ++v13;
    if (v15 == Array.endIndex.getter())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10003E37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X8>)
{
  result = Array<A>.id.getter(*v3, *(a1 + 16), *(a2 - 8));
  *a3 = result;
  return result;
}

double sub_10003E3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);
  v12 = *(v4 + 40);

  LOBYTE(v9) = sub_10003EBA4(v9, v10, v11, v12, a1, a2, a3, a4);

  if (v9)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003EDD0(&qword_10016B5C0, type metadata accessor for ProductPagePresentation, &unk_100110B40);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    *(v4 + 32) = a3;
    *(v4 + 40) = a4;
  }

  return result;
}

uint64_t sub_10003E56C()
{
  type metadata accessor for ProductPagePresentation(0);
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  *(v0 + 40) = 0;
  result = ObservationRegistrar.init()();
  qword_100182178 = v0;
  return result;
}

uint64_t sub_10003E5C4()
{
  swift_getKeyPath();
  sub_10003EDD0(&qword_10016B5C0, type metadata accessor for ProductPagePresentation, &unk_100110B40);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_10003E684@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003EDD0(&qword_10016B5C0, type metadata accessor for ProductPagePresentation, &unk_100110B40);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  *a2 = *(v3 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_10003E740()
{

  v1 = OBJC_IVAR____TtC17AppleVisionProApp23ProductPagePresentation___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductPagePresentation(uint64_t a1)
{
  result = qword_10016B530;
  if (!qword_10016B530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003E838(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_10003E8D4(uint64_t a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  sub_10003E998(a2, a3, a4, a5, v16);
  v6 = v17;
  v14 = v16[0];
  v15 = v16[2];
  v13 = v16[1];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  *a1 = v14;
  *(a1 + 16) = v13;
  *(a1 + 32) = v15;
  *(a1 + 48) = v6;
  v8 = v19;
  *(a1 + 56) = v18;
  *(a1 + 72) = v8;
  *(a1 + 88) = v20;
  *(a1 + 104) = v7;
  *(a1 + 112) = v9;
  *(a1 + 120) = v10;
  *(a1 + 128) = v11;
  *(a1 + 136) = v12;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
}

uint64_t sub_10003E998@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_100002BE4(&qword_10016B5C8, &qword_100110C30);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10003EDD0(&qword_10016B5C0, type metadata accessor for ProductPagePresentation, &unk_100110B40);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v22 + 16);
  v21 = *(v22 + 24);
  v11 = *(v22 + 32);
  v12 = *(v22 + 40);

  if (!v11)
  {
    v16 = 0;
    v20 = 0;
    v17 = 0;
    v14 = 0;
    v19 = 0;
    v15 = 0;
    goto LABEL_5;
  }

  if (a1)
  {
    v14 = *&a1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_deviceProvider];
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = a3;
    v15[5] = a4;
    v16 = v10 & 1;
    v17 = v12 & 0x1FF;

    v18 = a1;

    v19 = sub_10003EE60;
    v20 = v21;
LABEL_5:
    *a5 = v16;
    a5[1] = v20;
    a5[2] = v11;
    a5[3] = v17;
    a5[4] = v14;
    a5[5] = v19;
    a5[6] = v15;
    return result;
  }

  type metadata accessor for AppDelegate(0);
  sub_10003EDD0(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10003EBA4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    if (!a7)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (!a7)
  {

LABEL_13:

    return 1;
  }

  if ((a1 ^ a5))
  {
    return 1;
  }

  v8 = a4;
  v9 = a8;
  if ((a2 != a6 || a3 != a7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 1;
  }

  swift_bridgeObjectRetain_n();
  v10 = sub_10009AA54(v8, v9);
  swift_bridgeObjectRelease_n();
  if (v10)
  {
    return ((v9 ^ v8) >> 8) & 1;
  }

  else
  {
    return 1;
  }
}

double sub_10003EC74(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  return sub_10003E3C0(v1, v2, v3, v4);
}

void sub_10003ECCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

uint64_t sub_10003ED1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10003ED64(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10003EDD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003EE18()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003EE68(uint64_t a1, uint64_t a2)
{
  sub_100002BE4(&qword_10016B5C8, &qword_100110C30);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10003EDD0(&qword_10016B5C0, type metadata accessor for ProductPagePresentation, &unk_100110B40);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v4 + 32);

  if (v2)
  {

    State.wrappedValue.getter();
    sub_10003E3C0(0, 0, 0, 0);
  }

  return result;
}

unint64_t sub_10003EF9C()
{
  result = qword_10016B5D0;
  if (!qword_10016B5D0)
  {
    sub_10000459C(&qword_10016B5D8, &qword_100110C38);
    sub_10003F028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B5D0);
  }

  return result;
}

unint64_t sub_10003F028()
{
  result = qword_10016B5E0;
  if (!qword_10016B5E0)
  {
    sub_10000459C(&qword_10016B5E8, &qword_100110C40);
    sub_10003F0B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B5E0);
  }

  return result;
}

unint64_t sub_10003F0B4()
{
  result = qword_10016B5F0;
  if (!qword_10016B5F0)
  {
    sub_10000459C(&qword_10016B5F8, &qword_100110C48);
    sub_10003F140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B5F0);
  }

  return result;
}

unint64_t sub_10003F140()
{
  result = qword_10016B600;
  if (!qword_10016B600)
  {
    sub_10000459C(&qword_10016B608, &unk_100110C50);
    sub_10003C278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B600);
  }

  return result;
}

double sub_10003F1C4()
{
  swift_getKeyPath();
  sub_10003F6A4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

double sub_10003F234@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003F6A4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_10003F2D4(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003F6A4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10003F3BC(double a1, double a2)
{
  swift_getKeyPath();
  sub_10003F6A4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v2 + 16);
  if (vabdd_f64(v6, a1) > a2)
  {
    if (v6 == a1)
    {
      *(v2 + 16) = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_10003F4E8()
{
  v1 = OBJC_IVAR____TtC17AppleVisionProApp11ScrollState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScrollState(uint64_t a1)
{
  result = qword_10016B640;
  if (!qword_10016B640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003F5D8(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_10003F6A4()
{
  result = qword_10016B738;
  if (!qword_10016B738)
  {
    type metadata accessor for ScrollState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B738);
  }

  return result;
}

double sub_10003F6FC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_10003F724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Color.RGBColorSpace();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  v17[1] = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100012928();
  StringProtocol.trimmingCharacters(in:)();
  (*(v9 + 8))(v11, v8);

  v17[0] = 0;
  v12 = objc_allocWithZone(NSScanner);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 initWithString:v13];

  [v14 scanHexLongLong:v17];
  (*(v5 + 104))(v7, enum case for Color.RGBColorSpace.sRGB(_:), v4);
  return Color.init(_:red:green:blue:opacity:)();
}

uint64_t sub_10003F9BC(uint64_t a1)
{
  sub_10003FB50();

  v1 = UIColor.init(_:)();
  v6 = 0;
  v7 = 0;
  v4 = 0.0;
  v5 = 0;
  v2 = [v1 getRed:&v7 green:&v6 blue:&v5 alpha:&v4];

  if ((v2 & (v4 > 0.0)) != 0)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003FA80(uint64_t a1)
{
  v4 = COERCE_DOUBLE(sub_10003F9BC(a1));
  result = 0;
  if ((v6 & 1) == 0 && v3 * 0.0722 + v4 * 0.2126 + v2 * 0.7152 > 0.1)
  {
    v7 = COERCE_DOUBLE(sub_10003F9BC(a1));
    if (v10 & 1 | (v8 * 0.0722 + v7 * 0.2126 + v9 * 0.7152 < 0.84))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t sub_10003FB50()
{
  result = qword_10016B740;
  if (!qword_10016B740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016B740);
  }

  return result;
}

uint64_t sub_10003FBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppHeroModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10003FC80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppHeroModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for AppHeroView(uint64_t a1)
{
  result = qword_10016B7A0;
  if (!qword_10016B7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003FD88(uint64_t a1)
{
  type metadata accessor for AppHeroModel(319);
  if (v1 <= 0x3F)
  {
    sub_10003FE0C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003FE0C(uint64_t a1)
{
  if (!qword_10016B7B0)
  {
    type metadata accessor for DiscoveryFeedStateProvider(255);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10016B7B0);
    }
  }
}

uint64_t sub_10003FE80@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = type metadata accessor for _Glass();
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v66 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v64);
  v65 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_100002BE4(&qword_10016B7E0, &qword_100110D60);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = &v57 - v5;
  v6 = sub_100002BE4(&qword_10016B7E8, &qword_100110D68);
  __chkstk_darwin(v6 - 8);
  v60 = &v57 - v7;
  v8 = type metadata accessor for AppHeroView(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002BE4(&qword_10016B7F0, &qword_100110D70);
  __chkstk_darwin(v11 - 8);
  v13 = (&v57 - v12);
  v14 = sub_100002BE4(&qword_10016B7F8, &qword_100110D78);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v57 - v16;
  v18 = sub_100002BE4(&qword_10016B800, &qword_100110D80);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v57 - v20;
  v61 = sub_100002BE4(&qword_10016B808, &qword_100110D88);
  __chkstk_darwin(v61);
  v23 = &v57 - v22;
  *v13 = static Alignment.center.getter();
  v13[1] = v24;
  v25 = v13 + *(sub_100002BE4(&qword_10016B810, &qword_100110D90) + 44);
  v59 = v1;
  sub_10004057C(v1, v25);
  v26 = sub_1000741D0();
  v27 = static Alignment.center.getter();
  v29 = v28;
  sub_10001D504(v13, v17, &qword_10016B7F0, &qword_100110D70);
  v30 = &v17[*(v15 + 44)];
  *v30 = v26;
  v30[1] = v27;
  v30[2] = v29;
  static Alignment.center.getter();
  v31 = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001D504(v17, v21, &qword_10016B7F8, &qword_100110D78);
  v32 = &v21[*(v19 + 44)];
  v33 = v75;
  *(v32 + 4) = v74;
  *(v32 + 5) = v33;
  *(v32 + 6) = v76;
  v34 = v71;
  *v32 = v70;
  *(v32 + 1) = v34;
  v35 = v73;
  *(v32 + 2) = v72;
  *(v32 + 3) = v35;
  v36 = static Alignment.topTrailing.getter();
  v38 = v37;
  sub_100044ACC(v59, v10, type metadata accessor for AppHeroView);
  v39 = &v10[*(type metadata accessor for AppHeroModel(0) + 28)];
  v40 = v39[1];
  if (v40)
  {
    v41 = v58;
    sub_1000409F0(*v39, v40, v58);
    v42 = v62;
    v43 = v60;
    v44 = v41;
    v45 = v63;
    (*(v62 + 32))(v60, v44, v63);
    v31 = 0;
    v46 = v45;
    v47 = v42;
    v48 = v43;
  }

  else
  {
    v46 = v63;
    v47 = v62;
    v48 = v60;
  }

  (*(v47 + 56))(v48, v31, 1, v46);
  v49 = &v23[*(v61 + 36)];
  sub_10001D504(v48, v49, &qword_10016B7E8, &qword_100110D68);
  sub_100043C40(v10, type metadata accessor for AppHeroView);
  v50 = (v49 + *(sub_100002BE4(&qword_10016B818, &qword_100110D98) + 36));
  *v50 = v36;
  v50[1] = v38;
  sub_10001D504(v21, v23, &qword_10016B800, &qword_100110D80);
  v51 = *(v64 + 20);
  v52 = enum case for RoundedCornerStyle.continuous(_:);
  v53 = type metadata accessor for RoundedCornerStyle();
  v54 = v65;
  (*(*(v53 - 8) + 104))(&v65->i8[v51], v52, v53);
  *v54 = vdupq_n_s64(0x4040000000000000uLL);
  v55 = v66;
  static _Glass.regular.getter();
  sub_100043A10();
  sub_100044BF0(&qword_10016B858, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  View._glassEffect<A>(_:in:)();
  (*(v68 + 8))(v55, v69);
  sub_100043C40(v54, &type metadata accessor for RoundedRectangle);
  return sub_100009908(v23, &qword_10016B808, &qword_100110D88);
}

uint64_t sub_10004057C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v40 = a2;
  v3 = sub_100002BE4(&qword_10016B8B8, &qword_100110E20);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - v4;
  v38 = sub_100002BE4(&qword_10016B8C0, &qword_100110E28);
  v6 = __chkstk_darwin(v38);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - v9;
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AppHeroView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002BE4(&qword_10016B8C8, &qword_100110E30);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = (&v37 - v22);
  sub_100044ACC(a1, v16, type metadata accessor for AppHeroView);
  v24 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v25 = swift_allocObject();
  sub_100044210(v16, v25 + v24);
  v26 = (v23 + *(sub_100002BE4(&qword_10016B8D0, &qword_100110E38) + 36));
  v27 = *(type metadata accessor for RoundedRectangle() + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(&v26->i8[v27], v28, v29);
  *v26 = vdupq_n_s64(0x4040000000000000uLL);
  v26->i8[*(sub_100002BE4(&qword_10016B8D8, &qword_100110E40) + 36)] = 0;
  *v23 = sub_100044274;
  v23[1] = v25;
  *(v23 + *(v18 + 44)) = 0;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v30 = sub_100002BE4(&qword_10016B8E0, &qword_100110E48);
  sub_100041978(v37, &v5[*(v30 + 44)]);
  v31 = sub_1000744DC();
  if (!v31)
  {
    v31 = static Color.white.getter();
  }

  v32 = v31;
  sub_10001D504(v5, v10, &qword_10016B8B8, &qword_100110E20);
  *&v10[*(v38 + 36)] = v32;
  sub_10001D504(v10, v12, &qword_10016B8C0, &qword_100110E28);
  sub_10000C178(v23, v21, &qword_10016B8C8, &qword_100110E30);
  v33 = v39;
  sub_10000C178(v12, v39, &qword_10016B8C0, &qword_100110E28);
  v34 = v40;
  sub_10000C178(v21, v40, &qword_10016B8C8, &qword_100110E30);
  v35 = sub_100002BE4(&qword_10016B8E8, &unk_100110E50);
  sub_10000C178(v33, v34 + *(v35 + 48), &qword_10016B8C0, &qword_100110E28);
  sub_100009908(v12, &qword_10016B8C0, &qword_100110E28);
  sub_100009908(v23, &qword_10016B8C8, &qword_100110E30);
  sub_100009908(v33, &qword_10016B8C0, &qword_100110E28);
  return sub_100009908(v21, &qword_10016B8C8, &qword_100110E30);
}

uint64_t sub_1000409F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v41 = type metadata accessor for AutomationUtilities.AutomationAttributeType(0);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AutomationSemantics();
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EnvironmentValues();
  v38 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + *(type metadata accessor for AppHeroView(0) + 20) + 8);

  if ((v16 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v37 = v13;
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v38 + 8))(v15, v37);
  }

  v18 = sub_10000D220(a1, a2);

  if (v18)
  {
    v19 = 0x6C69662E72617473;
  }

  else
  {
    v19 = 1918989427;
  }

  if (v18)
  {
    v20 = 0xE90000000000006CLL;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  Image.init(systemName:)();
  (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
  v38 = Image.resizable(capInsets:resizingMode:)();

  (*(v10 + 8))(v12, v9);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v51[0]) = 1;
  *&v53[6] = v55;
  *&v53[22] = v56;
  *&v53[38] = v57;
  v37 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v22 = static Color.white.getter();
  sub_100002BE4(&qword_10016B860, &unk_100110DD8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10010FEE0;
  v24 = static Edge.Set.top.getter();
  *(v23 + 32) = v24;
  v25 = static Edge.Set.trailing.getter();
  *(v23 + 33) = v25;
  v26 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v24)
  {
    v26 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v25)
  {
    v26 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v54 = 0;
  v46 = v38;
  LOWORD(v47[0]) = 1;
  *(v47 + 2) = *v53;
  *(&v47[1] + 2) = *&v53[16];
  *(&v47[2] + 2) = *&v53[32];
  *&v47[3] = *&v53[46];
  *(&v47[3] + 1) = KeyPath;
  *&v48 = v37;
  *(&v48 + 1) = v22;
  LOBYTE(v49) = v26;
  *(&v49 + 1) = v27;
  *&v50[0] = v28;
  *(&v50[0] + 1) = v29;
  *&v50[1] = v30;
  BYTE8(v50[1]) = 0;
  v31 = v40;
  *v40 = v19;
  *(v31 + 8) = v20;
  swift_storeEnumTagMultiPayload();
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v32 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10010D3B0;
  sub_100044ACC(v31, v33 + v32, type metadata accessor for AutomationUtilities.AutomationAttributeType);
  v34 = v42;
  sub_1000FCC48(9, v33, v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100043C40(v31, type metadata accessor for AutomationUtilities.AutomationAttributeType);
  sub_100002BE4(&qword_10016B868, &qword_100110DE8);
  sub_100043CA0();
  View.automationSemantics(_:)();
  (*(v43 + 8))(v34, v44);
  v51[6] = v49;
  v52[0] = v50[0];
  *(v52 + 9) = *(v50 + 9);
  v51[2] = v47[1];
  v51[3] = v47[2];
  v51[4] = v47[3];
  v51[5] = v48;
  v51[0] = v46;
  v51[1] = v47[0];
  return sub_100009908(v51, &qword_10016B868, &qword_100110DE8);
}

uint64_t sub_100041070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a1;
  v73 = type metadata accessor for AutomationUtilities.AutomationAttributeType(0);
  v70 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AutomationSemantics();
  v74 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MediaArtwork();
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin(v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100002BE4(&qword_10016BA18, &qword_100110F70);
  __chkstk_darwin(v69);
  v66 = &v58 - v11;
  v12 = sub_100002BE4(&qword_10016BA20, &qword_100110F78);
  v75 = *(v12 - 8);
  v76 = v12;
  __chkstk_darwin(v12);
  v68 = &v58 - v13;
  v67 = type metadata accessor for URL();
  v14 = *(v67 - 8);
  v15 = __chkstk_darwin(v67);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  __chkstk_darwin(v18);
  v77 = &v58 - v19;
  v20 = sub_100002BE4(&qword_10016BA28, qword_100110F80);
  v78 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  v23 = sub_1000741F8();
  if (v23)
  {
    v61 = v20;
    v60 = v6;
    v62 = a3;
    sub_10008E4D0(v23);

    v24 = objc_allocWithZone(AMSMediaArtwork);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v26 = [v24 initWithDictionary:isa];

    v27 = (a2 + *(type metadata accessor for AppHeroModel(0) + 68));
    v28 = v27[1];
    if (v28)
    {
      if (*v27 == 0x46435370412E434DLL && v28 == 0xEB00000000313042 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v29 = 1;
        v30 = 490.0;
        v31 = 0x4089000000000000;
      }

      else
      {
        v29 = 0;
        v30 = 900.0;
        v31 = 0x4099000000000000;
      }

      v35 = *&v31;
      v34 = String._bridgeToObjectiveC()();
    }

    else
    {
      v34 = AMSMediaArtworkCropStyleSpecificRectangle;
      v29 = 0;
      v35 = 1600.0;
      v30 = 900.0;
    }

    v36 = [v26 URLWithSize:v34 cropStyle:AMSMediaArtworkFormatHEIC format:{v35, v30}];

    if (v36)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = *(v14 + 32);
      v58 = v22;
      v38 = v29;
      v39 = v77;
      v59 = v26;
      v40 = a2;
      v41 = v67;
      v37();
      GeometryProxy.size.getter();
      v43 = v42 * 1.77777778;
      GeometryProxy.size.getter();
      GeometryProxy.size.getter();
      v45 = -(v43 * 0.5 - v44 * 0.5);
      if (v38)
      {
        v46 = -22.0;
      }

      else
      {
        v46 = v45;
      }

      (*(v14 + 16))(v17, v39, v41);
      MediaArtwork.init(url:)();
      v47 = v66;
      MediaArtwork.resize(_:croppedTo:)();
      (*(v63 + 8))(v10, v64);
      v48 = v47 + *(v69 + 36);
      *v48 = v46;
      *(v48 + 8) = 0;
      v49 = v72;
      sub_100044ACC(v40, v72, type metadata accessor for AppHeroModel);
      swift_storeEnumTagMultiPayload();
      sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
      v50 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_10010D3B0;
      sub_100044ACC(v49, v51 + v50, type metadata accessor for AutomationUtilities.AutomationAttributeType);
      v52 = v71;
      sub_1000FCC48(1, v51, v71);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_100043C40(v49, type metadata accessor for AutomationUtilities.AutomationAttributeType);
      sub_100044B34();
      v53 = v68;
      View.automationSemantics(_:)();

      v54 = v52;
      v22 = v58;
      (*(v74 + 8))(v54, v60);
      sub_100009908(v47, &qword_10016BA18, &qword_100110F70);
      (*(v14 + 8))(v77, v41);
      v56 = v75;
      v55 = v76;
      (*(v75 + 32))(v22, v53, v76);
      (*(v56 + 56))(v22, 0, 1, v55);
    }

    else
    {

      (*(v75 + 56))(v22, 1, 1, v76);
    }

    v57 = v62;
    sub_10001D504(v22, v62, &qword_10016BA28, qword_100110F80);
    return (*(v78 + 56))(v57, 0, 1, v61);
  }

  else
  {
    v32 = *(v78 + 56);

    return v32(a3, 1, 1, v20);
  }
}

uint64_t sub_100041978@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v49 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  __chkstk_darwin(v49);
  v4 = v48 - v3;
  v5 = sub_100002BE4(&qword_10016B8F0, &qword_100110E60);
  __chkstk_darwin(v5);
  v7 = v48 - v6;
  v8 = sub_100002BE4(&qword_10016B8F8, &qword_100110E68);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v48 - v13;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v15 = sub_100002BE4(&qword_10016B900, &qword_100110E70);
  sub_100041DDC(a1, &v7[*(v15 + 44)]);
  v16 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v7[*(sub_100002BE4(&qword_10016B908, &qword_100110E78) + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = &v7[*(sub_100002BE4(&qword_10016B910, &qword_100110E80) + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = static Alignment.center.getter();
  v38 = v37;
  v48[1] = v5;
  v39 = &v7[*(v5 + 36)];
  sub_10004232C(a1, v39);
  v40 = (v39 + *(sub_100002BE4(&qword_10016B918, &qword_100110E88) + 36));
  *v40 = v36;
  v40[1] = v38;
  v41 = enum case for DynamicTypeSize.accessibility2(_:);
  v42 = type metadata accessor for DynamicTypeSize();
  (*(*(v42 - 8) + 104))(v4, v41, v42);
  sub_100044BF0(&qword_100169A78, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_1000442F4();
    sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100009908(v4, &qword_100169A10, &qword_10010D450);
    sub_100009908(v7, &qword_10016B8F0, &qword_100110E60);
    v44 = *(v9 + 16);
    v44(v12, v14, v8);
    v45 = v50;
    *v50 = 0;
    *(v45 + 8) = 1;
    v46 = sub_100002BE4(&qword_10016B950, &qword_100110E98);
    v44(v45 + *(v46 + 48), v12, v8);
    v47 = *(v9 + 8);
    v47(v14, v8);
    return (v47)(v12, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100041DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_100002BE4(&qword_10016B990, &qword_100110F10);
  v4 = __chkstk_darwin(v3 - 8);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v45 - v6;
  v8 = sub_100002BE4(&qword_10016B998, &qword_100110F18);
  v50 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  v11 = sub_100002BE4(&qword_10016B9A0, &qword_100110F20);
  v12 = __chkstk_darwin(v11 - 8);
  v52 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  v51 = sub_100002BE4(&qword_10016B9A8, &qword_100110F28);
  v49 = *(v51 - 8);
  v16 = __chkstk_darwin(v51);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  *v20 = static VerticalAlignment.center.getter();
  *(v20 + 1) = 0;
  v21 = 1;
  v20[16] = 1;
  v47 = sub_100002BE4(&qword_10016B9B0, &qword_100110F30);
  sub_1000426B4(a1, &v20[*(v47 + 44)]);
  v22 = type metadata accessor for AppHeroModel(0);
  v23 = (a1 + *(v22 + 48));
  if (v23[1])
  {
    v46 = v8;
    v24 = a1;
    v25 = v15;
    v26 = v7;
    v27 = *v23;
    *v10 = static VerticalAlignment.center.getter();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v28 = &v10[*(sub_100002BE4(&qword_10016B9C0, &qword_100110F40) + 44)];
    v29 = v27;
    v7 = v26;
    v15 = v25;
    a1 = v24;
    v8 = v46;
    sub_100042E04(v29, v28);
    v30 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v31 = &v10[*(v8 + 36)];
    *v31 = v30;
    *(v31 + 1) = v32;
    *(v31 + 2) = v33;
    *(v31 + 3) = v34;
    *(v31 + 4) = v35;
    v31[40] = 0;
    sub_10001D504(v10, v15, &qword_10016B998, &qword_100110F18);
    v21 = 0;
  }

  v36 = 1;
  (*(v50 + 56))(v15, v21, 1, v8);
  v37 = (a1 + *(v22 + 52));
  if (v37[1])
  {
    v38 = *v37;
    *v18 = static VerticalAlignment.center.getter();
    *(v18 + 1) = 0;
    v18[16] = 1;
    sub_100043344(v38, a1, &v18[*(v47 + 44)]);
    sub_10001D504(v18, v7, &qword_10016B9A8, &qword_100110F28);
    v36 = 0;
  }

  (*(v49 + 56))(v7, v36, 1, v51);
  v48 = v18;
  sub_10000C178(v20, v18, &qword_10016B9A8, &qword_100110F28);
  v39 = v52;
  sub_10000C178(v15, v52, &qword_10016B9A0, &qword_100110F20);
  v40 = v15;
  v41 = v53;
  sub_10000C178(v7, v53, &qword_10016B990, &qword_100110F10);
  v42 = v54;
  sub_10000C178(v18, v54, &qword_10016B9A8, &qword_100110F28);
  v43 = sub_100002BE4(&qword_10016B9B8, &qword_100110F38);
  sub_10000C178(v39, v42 + *(v43 + 48), &qword_10016B9A0, &qword_100110F20);
  sub_10000C178(v41, v42 + *(v43 + 64), &qword_10016B990, &qword_100110F10);
  sub_100009908(v7, &qword_10016B990, &qword_100110F10);
  sub_100009908(v40, &qword_10016B9A0, &qword_100110F20);
  sub_100009908(v20, &qword_10016B9A8, &qword_100110F28);
  sub_100009908(v41, &qword_10016B990, &qword_100110F10);
  sub_100009908(v39, &qword_10016B9A0, &qword_100110F20);
  return sub_100009908(v48, &qword_10016B9A8, &qword_100110F28);
}

uint64_t sub_10004232C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002BE4(&qword_10016B958, &qword_100110EA0);
  v5 = __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v30 - v8;
  v10 = sub_100002BE4(&qword_10016B960, &qword_100110EA8);
  v30[0] = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v30 - v11;
  if (*(a1 + *(type metadata accessor for AppHeroModel(0) + 32)) == 1)
  {
    *v12 = static HorizontalAlignment.center.getter();
    *(v12 + 1) = 0;
    v12[16] = 0;
    v13 = &v12[*(sub_100002BE4(&qword_10016B968, &qword_100110EB0) + 44)];
    static Material.ultraThin.getter();
    *&v9[*(sub_100002BE4(&qword_10016B970, &qword_100110EB8) + 56)] = 256;
    *&v9[*(sub_100002BE4(&qword_10016B978, &qword_100110EC0) + 36)] = 0x4004000000000000;
    *&v9[*(v4 + 36)] = 256;
    sub_1000444F0(v9, v7);
    *v13 = 0;
    v13[8] = 1;
    v14 = sub_100002BE4(&qword_10016B980, &qword_100110EC8);
    sub_1000444F0(v7, &v13[*(v14 + 48)]);
    sub_100009908(v9, &qword_10016B958, &qword_100110EA0);
    sub_100009908(v7, &qword_10016B958, &qword_100110EA0);
    v15 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = &v12[*(sub_100002BE4(&qword_10016B988, &qword_100110ED0) + 36)];
    *v24 = v15;
    *(v24 + 1) = v17;
    *(v24 + 2) = v19;
    *(v24 + 3) = v21;
    *(v24 + 4) = v23;
    v24[40] = 0;
    v25 = &v12[*(v10 + 36)];
    v30[1] = 0;
    State.init(wrappedValue:)();
    v26 = v30[3];
    *v25 = v30[2];
    *(v25 + 1) = v26;
    v27 = *(type metadata accessor for BlurViewFadeModifier(0) + 20);
    *&v25[v27] = swift_getKeyPath();
    sub_100002BE4(&qword_10016A488, &qword_10010F480);
    swift_storeEnumTagMultiPayload();
    sub_100044568(v12, a2);
    return (*(v30[0] + 56))(a2, 0, 1, v10);
  }

  else
  {
    v29 = *(v30[0] + 56);

    return v29(a2, 1, 1, v10);
  }
}

uint64_t sub_1000426B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for AutomationSemantics();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for BlendMode();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100002BE4(&qword_10016B9F8, &qword_1001158D0);
  __chkstk_darwin(v60);
  v61 = &v55 - v6;
  v7 = sub_100002BE4(&qword_10016BA00, &qword_100110F60);
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = __chkstk_darwin(v7);
  v62 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v59 = &v55 - v10;
  v11 = (a1 + *(type metadata accessor for AppHeroModel(0) + 44));
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  *&v70[0] = v13;
  *(&v70[0] + 1) = v14;
  sub_100012928();

  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  static Font.caption.getter();
  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;

  sub_10001297C(v15, v17, v19 & 1);

  static Font.Weight.medium.getter();
  v25 = Text.fontWeight(_:)();
  v27 = v26;
  v29 = v28;
  sub_10001297C(v20, v22, v24 & 1);

  sub_100042C6C(v30);
  v31 = Color.opacity(_:)();

  *&v70[0] = v31;
  v32 = Text.foregroundStyle<A>(_:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_10001297C(v25, v27, v29 & 1);

  sub_100042C6C(v39);
  static Color.white.getter();
  LOBYTE(v25) = static Color.== infix(_:_:)();

  v40 = v57;
  v41 = &enum case for BlendMode.plusLighter(_:);
  if ((v25 & 1) == 0)
  {
    v41 = &enum case for BlendMode.plusDarker(_:);
  }

  v42 = v56;
  v43 = v58;
  (*(v57 + 104))(v56, *v41, v58);
  v44 = v61;
  (*(v40 + 32))(&v61[*(v60 + 36)], v42, v43);
  *v44 = v32;
  *(v44 + 8) = v34;
  *(v44 + 16) = v36 & 1;
  *(v44 + 24) = v38;
  memset(v70, 0, 32);
  memset(v69, 0, sizeof(v69));
  v45 = v65;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_100009908(v69, &qword_100169A38, &qword_10010D460);
  sub_100009908(v70, &qword_100169A38, &qword_10010D460);
  sub_100044A48();
  v46 = v59;
  View.automationSemantics(_:)();
  (*(v66 + 8))(v45, v67);
  sub_100009908(v44, &qword_10016B9F8, &qword_1001158D0);
  v48 = v62;
  v47 = v63;
  v49 = *(v63 + 16);
  v50 = v64;
  v49(v62, v46, v64);
  v51 = v68;
  v49(v68, v48, v50);
  v52 = &v51[*(sub_100002BE4(&qword_10016BA10, &qword_100110F68) + 48)];
  v53 = *(v47 + 8);
  v53(v46, v50);
  *v52 = 0;
  v52[8] = 1;
  return (v53)(v48, v50);
}

uint64_t sub_100042C6C(uint64_t a1)
{
  v1 = sub_1000741D0();
  if (v1)
  {
    if (sub_10003FA80(v1) == 2)
    {
      v2 = static Color.black.getter();
    }

    else
    {
      v2 = static Color.white.getter();
    }

    v9 = v2;

    return v9;
  }

  else
  {
    if (qword_100168E48 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006B0C(v3, qword_100182000);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100006B44(0x566F726548707041, 0xEB00000000776569, &v10);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s no backgroundColor found on heroModel, returning white textColor", v6, 0xCu);
      sub_1000052E4(v7);
    }

    return static Color.white.getter();
  }
}

uint64_t sub_100042E04@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v36[1] = a1;
  v44 = a3;
  v3 = type metadata accessor for AutomationSemantics();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString.Runs();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NQMLConfiguration();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for AttributedString();
  __chkstk_darwin(v9 - 8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002BE4(&qword_100169A90, &unk_10010D490);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v40 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v37 = v36 - v17;
  v18 = sub_100042C6C(v16);
  static Font.title.getter();
  v19 = Font.bold()();

  sub_1000445D8();
  v20 = objc_opt_self();

  v21 = [v20 systemFontOfSize:15.0];
  NQMLConfiguration.init(font:)();
  v22 = NSAttributedString.init(ju_nqml:configuration:)();
  AttributedString.init(_:)();
  v47 = v18;
  sub_1000132F4();

  AttributedString.subscript.setter();
  v47 = v19;
  sub_100013238();

  AttributedString.subscript.setter();
  AttributedString.runs.getter();

  sub_100044624(v7, v19, v11, v18);

  (*(v38 + 8))(v7, v39);

  v23 = Text.init(_:)();
  v25 = v24;
  v47 = v23;
  v48 = v24;
  LOBYTE(v22) = v26 & 1;
  v49 = v26 & 1;
  v50 = v27;
  memset(v46, 0, sizeof(v46));
  memset(v45, 0, sizeof(v45));
  v28 = v41;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_100009908(v45, &qword_100169A38, &qword_10010D460);
  sub_100009908(v46, &qword_100169A38, &qword_10010D460);
  v29 = v37;
  View.automationSemantics(_:)();
  (*(v42 + 8))(v28, v43);
  sub_10001297C(v23, v25, v22);

  v30 = *(v13 + 16);
  v31 = v40;
  v30(v40, v29, v12);
  v32 = v44;
  v30(v44, v31, v12);
  v33 = v32 + *(sub_100002BE4(&qword_10016B9D0, &qword_100110F48) + 48);
  v34 = *(v13 + 8);
  v34(v29, v12);
  *v33 = 0;
  *(v33 + 8) = 1;
  return (v34)(v31, v12);
}

uint64_t sub_100043344@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v46[1] = a3;
  v46[2] = a1;
  v59 = a4;
  v4 = type metadata accessor for AutomationSemantics();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BlendMode();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v53 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for AttributedString.Runs();
  v49 = *(v47 - 8);
  __chkstk_darwin(v47);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NQMLConfiguration();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for AttributedString();
  __chkstk_darwin(v11 - 8);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100002BE4(&qword_10016B9F8, &qword_1001158D0);
  __chkstk_darwin(v48);
  v15 = v46 - v14;
  v52 = sub_100002BE4(&qword_10016BA00, &qword_100110F60);
  v16 = *(v52 - 8);
  v17 = __chkstk_darwin(v52);
  v51 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v50 = v46 - v20;
  sub_100042C6C(v19);
  v21 = Color.opacity(_:)();

  v22 = static Font.footnote.getter();
  sub_1000445D8();
  v23 = objc_opt_self();

  v24 = [v23 systemFontOfSize:15.0];
  NQMLConfiguration.init(font:)();
  v25 = NSAttributedString.init(ju_nqml:configuration:)();
  AttributedString.init(_:)();
  *&v61[0] = v21;
  sub_1000132F4();

  AttributedString.subscript.setter();
  *&v61[0] = v22;
  sub_100013238();

  AttributedString.subscript.setter();
  AttributedString.runs.getter();

  sub_100044624(v9, v22, v13, v21);

  (*(v49 + 8))(v9, v47);

  v26 = Text.init(_:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_100042C6C(v26);
  static Color.white.getter();
  LOBYTE(v25) = static Color.== infix(_:_:)();

  v34 = v54;
  v33 = v55;
  v35 = &enum case for BlendMode.plusLighter(_:);
  if ((v25 & 1) == 0)
  {
    v35 = &enum case for BlendMode.plusDarker(_:);
  }

  v36 = v53;
  (*(v54 + 104))(v53, *v35, v55);
  (*(v34 + 32))(&v15[*(v48 + 36)], v36, v33);
  *v15 = v26;
  *(v15 + 1) = v28;
  v15[16] = v30 & 1;
  *(v15 + 3) = v32;
  memset(v61, 0, 32);
  memset(v60, 0, sizeof(v60));
  v37 = v56;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_100009908(v60, &qword_100169A38, &qword_10010D460);
  sub_100009908(v61, &qword_100169A38, &qword_10010D460);
  sub_100044A48();
  v38 = v50;
  View.automationSemantics(_:)();
  (*(v57 + 8))(v37, v58);
  sub_100009908(v15, &qword_10016B9F8, &qword_1001158D0);
  v39 = *(v16 + 16);
  v40 = v51;
  v41 = v52;
  v39(v51, v38, v52);
  v42 = v59;
  v39(v59, v40, v41);
  v43 = &v42[*(sub_100002BE4(&qword_10016BA10, &qword_100110F68) + 48)];
  v44 = *(v16 + 8);
  v44(v38, v41);
  *v43 = 0;
  v43[8] = 1;
  return (v44)(v40, v41);
}

unint64_t sub_100043A10()
{
  result = qword_10016B820;
  if (!qword_10016B820)
  {
    sub_10000459C(&qword_10016B808, &qword_100110D88);
    sub_100043AC8();
    sub_100012C48(&qword_10016B850, &qword_10016B818, &qword_100110D98, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B820);
  }

  return result;
}

unint64_t sub_100043AC8()
{
  result = qword_10016B828;
  if (!qword_10016B828)
  {
    sub_10000459C(&qword_10016B800, &qword_100110D80);
    sub_100043B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B828);
  }

  return result;
}

unint64_t sub_100043B54()
{
  result = qword_10016B830;
  if (!qword_10016B830)
  {
    sub_10000459C(&qword_10016B7F8, &qword_100110D78);
    sub_100012C48(&qword_10016B838, &qword_10016B7F0, &qword_100110D70, &protocol conformance descriptor for ZStack<A>);
    sub_100012C48(&qword_10016B840, &qword_10016B848, &qword_100110DA0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B830);
  }

  return result;
}

uint64_t sub_100043C40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100043CA0()
{
  result = qword_10016B870;
  if (!qword_10016B870)
  {
    sub_10000459C(&qword_10016B868, &qword_100110DE8);
    sub_100043D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B870);
  }

  return result;
}

unint64_t sub_100043D2C()
{
  result = qword_10016B878;
  if (!qword_10016B878)
  {
    sub_10000459C(&qword_10016B880, &qword_100110DF0);
    sub_100043DE4();
    sub_100012C48(&qword_10016A5D0, &qword_10016A5D8, &unk_10010F630, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B878);
  }

  return result;
}

unint64_t sub_100043DE4()
{
  result = qword_10016B888;
  if (!qword_10016B888)
  {
    sub_10000459C(&qword_10016B890, &qword_100110DF8);
    sub_100043E9C();
    sub_100012C48(&qword_10016B108, &qword_10016B110, &unk_100110E10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B888);
  }

  return result;
}

unint64_t sub_100043E9C()
{
  result = qword_10016B898;
  if (!qword_10016B898)
  {
    sub_10000459C(&qword_10016B8A0, &unk_100110E00);
    sub_100043F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B898);
  }

  return result;
}

unint64_t sub_100043F28()
{
  result = qword_10016B8A8;
  if (!qword_10016B8A8)
  {
    sub_10000459C(&qword_10016B8B0, &qword_1001157F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B8A8);
  }

  return result;
}

uint64_t sub_100043FAC()
{
  v1 = *(type metadata accessor for AppHeroView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  sub_1000052E4((v0 + v3));
  v6 = type metadata accessor for AppHeroModel(0);
  v7 = v6[5];
  v8 = type metadata accessor for ImpressionMetrics();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v6[9];
  v11 = type metadata accessor for Models.Menu();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = (v5 + v6[10]);
  if (v13[3])
  {
    sub_1000052E4(v13);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100044210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppHeroView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppHeroView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100041070(a1, v6, a2);
}

unint64_t sub_1000442F4()
{
  result = qword_10016B920;
  if (!qword_10016B920)
  {
    sub_10000459C(&qword_10016B8F0, &qword_100110E60);
    sub_1000443AC();
    sub_100012C48(&qword_10016B948, &qword_10016B918, &qword_100110E88, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B920);
  }

  return result;
}

unint64_t sub_1000443AC()
{
  result = qword_10016B928;
  if (!qword_10016B928)
  {
    sub_10000459C(&qword_10016B910, &qword_100110E80);
    sub_100044438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B928);
  }

  return result;
}

unint64_t sub_100044438()
{
  result = qword_10016B930;
  if (!qword_10016B930)
  {
    sub_10000459C(&qword_10016B908, &qword_100110E78);
    sub_100012C48(&qword_10016B938, &qword_10016B940, &qword_100110E90, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B930);
  }

  return result;
}

uint64_t sub_1000444F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016B958, &qword_100110EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044568(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016B960, &qword_100110EA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000445D8()
{
  result = qword_10016B9C8;
  if (!qword_10016B9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016B9C8);
  }

  return result;
}

uint64_t sub_100044624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v35 = type metadata accessor for AttributedString.Runs.Index();
  v6 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AttributedString.Runs.Run();
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString.Runs();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002BE4(&qword_10016B9D8, &unk_100110F50);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  (*(v11 + 16))(v13, a1, v10);
  sub_100044BF0(&qword_10016B9E0, &type metadata accessor for AttributedString.Runs, &protocol conformance descriptor for AttributedString.Runs);
  dispatch thunk of Sequence.makeIterator()();
  sub_100044BF0(&qword_10016B9E8, &type metadata accessor for AttributedString.Runs, &protocol conformance descriptor for AttributedString.Runs);
  v32 = (v6 + 8);
  v25 = (v8 + 8);
  v26 = (v8 + 16);
  while (1)
  {
    v17 = v33;
    dispatch thunk of Collection.endIndex.getter();
    sub_100044BF0(&qword_10016B9F0, &type metadata accessor for AttributedString.Runs.Index, &protocol conformance descriptor for AttributedString.Runs.Index);
    v18 = v35;
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v32)(v17, v18);
    if (v19)
    {
      break;
    }

    v20 = dispatch thunk of Collection.subscript.read();
    v21 = v27;
    v22 = v28;
    (*v26)(v27);
    v20(v34, 0);
    dispatch thunk of Collection.formIndex(after:)();
    sub_100012D40(v21, v29, v30, v31);
    if (v4)
    {
      (*v25)(v21, v22);
      return sub_100009908(v16, &qword_10016B9D8, &unk_100110F50);
    }

    (*v25)(v21, v22);
  }

  return sub_100009908(v16, &qword_10016B9D8, &unk_100110F50);
}

unint64_t sub_100044A48()
{
  result = qword_10016BA08;
  if (!qword_10016BA08)
  {
    sub_10000459C(&qword_10016B9F8, &qword_1001158D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BA08);
  }

  return result;
}

uint64_t sub_100044ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100044B34()
{
  result = qword_10016BA30;
  if (!qword_10016BA30)
  {
    sub_10000459C(&qword_10016BA18, &qword_100110F70);
    sub_100044BF0(&qword_10016BA38, &type metadata accessor for MediaArtwork, &protocol conformance descriptor for MediaArtwork);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BA30);
  }

  return result;
}

uint64_t sub_100044BF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100044C38()
{
  sub_10000459C(&qword_10016B808, &qword_100110D88);
  type metadata accessor for RoundedRectangle();
  sub_100043A10();
  sub_100044BF0(&qword_10016B858, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100044CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v43 = a3;
  v50 = type metadata accessor for JSONContext();
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActionMetrics();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for JSONObject();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v40 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v48 = a1;
  v49 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  JSONObject.subscript.getter();
  JSONObject.url.getter();
  v20 = *(v11 + 8);
  v20(v16, v10);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    sub_100045318(v9);
    v21 = type metadata accessor for JSONError();
    sub_1000458C0(&qword_10016BA48, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    v23 = v22;
    v24 = type metadata accessor for OpenURLAction(0);
    *v23 = 7107189;
    v23[1] = 0xE300000000000000;
    v23[2] = v24;
    (*(*(v21 - 8) + 104))(v23, enum case for JSONError.missingProperty(_:), v21);
    swift_willThrow();
    (*(v51 + 8))(v47, v50);
    return (v20)(v48, v10);
  }

  else
  {
    v38 = v20;
    v39 = v10;
    (*(v18 + 32))(v49, v9, v17);
    v26 = v48;
    JSONObject.subscript.getter();
    v27 = v47;
    v28 = v50;
    (*(v51 + 16))(v44, v47, v50);
    v29 = v45;
    ActionMetrics.init(deserializing:using:)();
    if (v29)
    {
      (*(v51 + 8))(v27, v28);
      v38(v26, v39);
      return (*(v18 + 8))(v49, v17);
    }

    else
    {
      v30 = v43;
      (*(v41 + 32))();
      v46 = type metadata accessor for OpenURLAction(0);
      (*(v18 + 16))(v30 + *(v46 + 5), v49, v17);
      v31 = v40;
      v32 = v27;
      JSONObject.subscript.getter();
      v33 = JSONObject.BOOL.getter();
      (*(v51 + 8))(v32, v50);
      v34 = v26;
      v36 = v38;
      v35 = v39;
      v38(v34, v39);
      v36(v31, v35);
      result = (*(v18 + 8))(v49, v17);
      *(v43 + *(v46 + 6)) = v33 & 1;
    }
  }

  return result;
}

uint64_t sub_100045318(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000453B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016BA50, &qword_100110FC8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100045440(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016BA50, &qword_100110FC8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000454DC(uint64_t a1)
{
  sub_100045548(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100045548(uint64_t a1)
{
  if (!qword_10016BAC0)
  {
    type metadata accessor for OpenURLAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10016BAC0);
    }
  }
}

uint64_t sub_1000455B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionMetrics();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1000456E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionMetrics();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for URL();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000457EC(uint64_t a1)
{
  result = type metadata accessor for ActionMetrics();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000458C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100045908@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&qword_100170760, &unk_100111070);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100045C98(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for OpenURLAction();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100045AF0(uint64_t a1)
{
  v1 = type metadata accessor for ActionOutcome();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OpenURLAction();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100045908(v8);
  type metadata accessor for OpenURLAction(0);
  OpenURLAction.callAsFunction(_:)();
  (*(v6 + 8))(v8, v5);
  sub_100002BE4(&qword_10016B200, &unk_1001104F0);
  (*(v2 + 104))(v4, enum case for ActionOutcome.performed(_:), v1);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_100045C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100170760, &unk_100111070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045D18(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = *(type metadata accessor for SpatialGalleryFavorite(0) - 8);
  v1[5] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_100045E08;

  return sub_100047164(a1);
}

uint64_t sub_100045E08()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100045F54, 0, 0);
  }
}

uint64_t sub_100045F54()
{
  sub_100031904(0, &qword_10016BBB8, CKQuery_ptr);
  sub_100031904(0, &qword_10016BBC0, NSPredicate_ptr);
  v1 = static NSPredicate.truePredicate.getter();
  v2._object = 0x800000010011DCA0;
  v2._countAndFlagsBits = 0xD000000000000017;
  v3.super.isa = CKQuery.init(recordType:predicate:)(v2, v1).super.isa;
  *(v0 + 56) = v3;
  sub_100031904(0, &qword_10016E790, CKRecordZoneID_ptr);
  if (qword_100168F78 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 24);
  v5 = qword_1001821C8;
  v6 = unk_1001821D0;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v5;
  v10._object = v6;
  v11._countAndFlagsBits = v7;
  v11._object = v9;
  v12.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v10, v11).super.isa;
  *(v0 + 64) = v12;
  *(v0 + 72) = [v4 privateCloudDatabase];
  v13 = v12.super.isa;
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *v14 = v0;
  v14[1] = sub_100046144;

  return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(v3.super.isa, v12.super.isa, 0, CKQueryOperationMaximumResults);
}

uint64_t sub_100046144(uint64_t a1, void *a2)
{
  v5 = *v3;
  *(v5 + 88) = a1;
  *(v5 + 96) = v2;

  if (v2)
  {
    v6 = sub_1000465E8;
  }

  else
  {
    v7 = *(v5 + 72);

    v6 = sub_100046274;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100046274()
{
  v3 = *(v1 + 88);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v1 + 32);
    v31 = _swiftEmptyArrayStorage;
    sub_100047974(0, v4, 0);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = _swiftEmptyArrayStorage;
    v9 = *(v3 + 32);
    v8 = *(v3 + 40);
    if (*(v3 + 48))
    {
LABEL_4:
      v11 = *(v1 + 56);
      v10 = *(v1 + 64);
      *(v1 + 16) = v8;
      sub_100047994(v8, 1);
      sub_100047994(v8, 1);
      v12 = v9;
      sub_100002BE4(&qword_10016BBA0, &qword_1001110E0);
      swift_willThrowTypedImpl();

      sub_1000479A0(v8, 1);
LABEL_11:

      v21 = *(v1 + 8);

      return v21();
    }

    v17 = *(v1 + 96);
    v18 = *(v1 + 40);
    sub_100047994(*(v3 + 40), 0);
    sub_100047994(v8, 0);
    v19 = v9;
    sub_10008DA14(v8, v18);
    if (v17)
    {
      v20 = *(v1 + 64);

      sub_1000479A0(v8, 0);
      goto LABEL_11;
    }

    sub_1000479A0(v8, 0);
    v2 = _swiftEmptyArrayStorage[2];
    v6 = _swiftEmptyArrayStorage[3];
    v0 = v2 + 1;
    if (v2 >= v6 >> 1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v22 = *(v1 + 40);
      v7[2] = v0;
      v30 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v5 = *(v5 + 72);
      sub_1000479AC(v22, v7 + v30 + v5 * v2);
      if (v4 == 1)
      {
        break;
      }

      v24 = (v3 + 72);
      v25 = 1;
      while (1)
      {
        v6 = *(v3 + 16);
        if (v25 >= v6)
        {
          break;
        }

        v9 = *(v24 - 2);
        v8 = *(v24 - 1);
        if (*v24)
        {
          goto LABEL_4;
        }

        v26 = *(v1 + 40);
        sub_100047994(*(v24 - 1), 0);
        sub_100047994(v8, 0);
        v27 = v9;
        sub_10008DA14(v8, v26);

        sub_1000479A0(v8, 0);
        v31 = v7;
        v2 = v7[2];
        v28 = v7[3];
        v0 = v2 + 1;
        if (v2 >= v28 >> 1)
        {
          sub_100047974((v28 > 1), v2 + 1, 1);
        }

        ++v25;
        v29 = *(v1 + 40);
        v7[2] = v0;
        sub_1000479AC(v29, v7 + v30 + v5 * v2);
        v24 += 24;
        if (v4 == v25)
        {
          goto LABEL_16;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      sub_100047974((v6 > 1), v0, 1);
      v7 = v31;
    }

LABEL_16:
    v23 = *(v1 + 64);
  }

  else
  {
    v14 = *(v1 + 56);
    v13 = *(v1 + 64);

    v7 = _swiftEmptyArrayStorage;
  }

  v15 = *(v1 + 8);

  return v15(v7);
}

uint64_t sub_1000465E8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004666C(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_100046704;

  return sub_100047164(a2);
}

uint64_t sub_100046704()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100046834, 0, 0);
  }
}

uint64_t sub_100046834()
{
  v1 = v0[20];
  v2 = sub_10008DDD0();
  v0[22] = v2;
  v3 = [v1 privateCloudDatabase];
  v0[23] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100046988;
  v4 = swift_continuation_init();
  v0[17] = sub_100002BE4(&qword_10016BB98, &qword_1001110D8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100047E64;
  v0[13] = &unk_10015C148;
  v0[14] = v4;
  [v3 saveRecord:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100046988()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_100046B08;
  }

  else
  {
    v2 = sub_100046A98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100046A98()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100046B08(uint64_t a1)
{
  v2 = v1[23];
  v3 = v1[22];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_100046B80(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_100046C18;

  return sub_100047164(a2);
}

uint64_t sub_100046C18()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100046D48, 0, 0);
  }
}

uint64_t sub_100046D48()
{
  v1 = v0[20];
  v2 = sub_10008DDD0();
  v0[22] = v2;
  v3 = [v1 privateCloudDatabase];
  v0[23] = v3;
  v4 = [(objc_class *)v2 recordID];
  v0[24] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100046EBC;
  v5 = swift_continuation_init();
  v0[17] = sub_100002BE4(&qword_10016BBB0, &qword_1001110F8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100047E64;
  v0[13] = &unk_10015C1C0;
  v0[14] = v5;
  [v3 deleteRecordWithID:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100046EBC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_100047044;
  }

  else
  {
    v2 = sub_100046FCC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100046FCC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100047044(uint64_t a1)
{
  v2 = v1[24];
  v4 = v1[22];
  v3 = v1[23];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

void sub_1000470C8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  v3 = 1;
  if (v2)
  {
    v3 = 2;
  }

  qword_10016BB90 = v3;
}

uint64_t sub_100047184()
{
  sub_100031904(0, &qword_10016E790, CKRecordZoneID_ptr);
  if (qword_100168F78 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = qword_1001821C8;
  v3 = unk_1001821D0;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v2;
  v7._object = v3;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v7, v8).super.isa;
  v0[28] = isa;
  v10 = [v1 privateCloudDatabase];
  v0[29] = v10;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_100047370;
  v11 = swift_continuation_init();
  v12 = sub_100002BE4(&qword_10016BBA8, &qword_1001110E8);
  v0[30] = v12;
  v0[25] = v12;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100047E64;
  v0[21] = &unk_10015C170;
  v0[22] = v11;
  [v10 fetchRecordZoneWithID:isa completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100047370()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_1000474F0;
  }

  else
  {
    v2 = sub_100047480;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100047480()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000474F0(uint64_t a1)
{
  v2 = v1[30];
  v3 = v1[28];
  v4 = v1[29];
  v5 = v1[27];
  swift_willThrow();

  v6 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v3];
  v1[32] = v6;
  v7 = [v5 privateCloudDatabase];
  v1[33] = v7;
  v1[10] = v1;
  v1[15] = v1 + 26;
  v1[11] = sub_100047670;
  v8 = swift_continuation_init();
  v1[25] = v2;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_100047E64;
  v1[21] = &unk_10015C198;
  v1[22] = v8;
  [v7 saveRecordZone:v6 completionHandler:v1 + 18];

  return _swift_continuation_await(v1 + 10);
}

uint64_t sub_100047670()
{
  v1 = *(*v0 + 112);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_1000477F8;
  }

  else
  {
    v2 = sub_100047780;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100047780()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000477F8(uint64_t a1)
{
  v2 = v1[33];
  v3 = v1[32];
  v4 = v1[28];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_10004789C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000524C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100002BE4(&qword_10016BBA0, &qword_1001110E0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void *sub_100047974(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100047A40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_100047994(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_1000479A0(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000479AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialGalleryFavorite(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_100047A10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100047C2C(a1, a2, a3, *v3, &qword_10016BBE8, &qword_100111128);
  *v3 = result;
  return result;
}

void *sub_100047A40(void *result, int64_t a2, char a3, void *a4)
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

  sub_100002BE4(&qword_10016BBC8, &qword_100111108);
  v10 = *(type metadata accessor for SpatialGalleryFavorite(0) - 8);
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
  v15 = *(type metadata accessor for SpatialGalleryFavorite(0) - 8);
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

char *sub_100047C2C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100002BE4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_100047D18(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100002BE4(&qword_10016BBD0, &unk_100111110);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002BE4(&qword_10016BBD8, &unk_100116AE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100047EC8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AppTitleComponentModel(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = [objc_opt_self() mainBundle];
  v11._object = 0xE000000000000000;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v8._countAndFlagsBits = v4;
  v8._object = v5;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v11);

  *a2 = v10;
  *(a2 + 16) = 0;
}

uint64_t sub_100047F88(uint64_t a1)
{
  sub_10002C080();

  return _ComponentBody.init(_:)();
}

unint64_t sub_100047FD0()
{
  result = qword_10016BBF0;
  if (!qword_10016BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BBF0);
  }

  return result;
}

uint64_t sub_1000480D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004811C()
{
  v0 = type metadata accessor for ColorScheme();
  sub_100010158(v0, qword_100182180);
  v1 = sub_100006B0C(v0, qword_100182180);
  v2 = enum case for ColorScheme.dark(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1000481A4()
{
  v0 = type metadata accessor for AspectRatio();
  sub_100010158(v0, qword_100182198);
  sub_100006B0C(v0, qword_100182198);
  return AspectRatio.init(_:_:)();
}

__n128 sub_100048208(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004821C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100048264(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000482D0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v7 = sub_100002BE4(&qword_10016BC00, &qword_100111298);
  v20 = *(v7 - 8);
  v21 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v19 = static Alignment.center.getter();
  v11 = v10;
  sub_1000486D8(a1, a2, a3, &v38);
  v59 = v42;
  v60 = v43;
  v61 = v44;
  v55 = v38;
  v56 = v39;
  v57 = v40;
  v58 = v41;
  v62[0] = v38;
  v62[1] = v39;
  v62[2] = v40;
  v62[3] = v41;
  v62[4] = v42;
  v62[5] = v43;
  v63 = v44;
  sub_100048A48(&v55, &v23);
  sub_100009908(v62, &qword_10016BC08, &qword_1001112A0);
  v35 = v59;
  v36 = v60;
  v37 = v61;
  v31 = v55;
  v32 = v56;
  v33 = v57;
  v34 = v58;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v53[6] + 7) = *&v53[21];
  *(&v53[8] + 7) = *&v53[23];
  *(&v53[10] + 7) = *&v53[25];
  *(&v53[12] + 7) = v54;
  *(v53 + 7) = *&v53[15];
  *(&v53[2] + 7) = *&v53[17];
  *(&v53[4] + 7) = *&v53[19];
  *&v23 = v19;
  *(&v23 + 1) = v11;
  v28 = v35;
  v29 = v36;
  v30[0] = v37;
  v24 = v31;
  v25 = v32;
  v27 = v34;
  v26 = v33;
  *&v30[49] = *&v53[6];
  *&v30[33] = *&v53[4];
  *&v30[17] = *&v53[2];
  *&v30[1] = *v53;
  *&v30[112] = *(&v54 + 1);
  *&v30[97] = *&v53[12];
  *&v30[81] = *&v53[10];
  *&v30[65] = *&v53[8];
  sub_100002BE4(&qword_10016BC10, &qword_1001112A8);
  sub_100048AB8();
  View.statusBar(hidden:)();
  v50 = *&v30[80];
  v51 = *&v30[96];
  v52 = *&v30[112];
  v46 = *&v30[16];
  v47 = *&v30[32];
  v48 = *&v30[48];
  v49 = *&v30[64];
  v42 = v27;
  v43 = v28;
  v44 = v29;
  v45 = *v30;
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v41 = v26;
  sub_100009908(&v38, &qword_10016BC10, &qword_1001112A8);
  swift_getKeyPath();
  *&v23 = a1;
  sub_100048D90(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (a1[3])
  {
    v12 = static Color.clear.getter();
  }

  else
  {
    v12 = static Color.black.getter();
  }

  v13 = v12;
  v14 = static Edge.Set.all.getter();
  v15 = v22;
  (*(v20 + 32))(v22, v9, v21);
  result = sub_100002BE4(&qword_10016BC30, &qword_1001112E0);
  v17 = v15 + *(result + 36);
  *v17 = v13;
  *(v17 + 8) = v14;
  return result;
}

__n128 sub_1000486D8@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  *&v13 = a1;
  sub_100048D90(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (a1[3])
  {
  }

  else
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    *&v13 = a1;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    State.init(wrappedValue:)();
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = a3;
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = a3;
    v10 = a2;
    swift_retain_n();
    v11 = v10;
  }

  sub_100002BE4(&qword_10016BC38, &qword_100111338);
  sub_100048C34();
  sub_100048C88(&qword_10016BC48, &qword_10016BC38, &qword_100111338, sub_100048D0C);
  _ConditionalContent<>.init(storage:)();
  *(a4 + 64) = v17;
  *(a4 + 80) = v18;
  *(a4 + 96) = v19;
  *a4 = v13;
  *(a4 + 16) = v14;
  result = v16;
  *(a4 + 32) = v15;
  *(a4 + 48) = v16;
  return result;
}

void sub_10004898C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  if (a2)
  {
    v5 = a2;
    a4();
  }

  else
  {
    type metadata accessor for AppDelegate(0);
    sub_100048D90(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100048A48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016BC08, &qword_1001112A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100048AB8()
{
  result = qword_10016BC18;
  if (!qword_10016BC18)
  {
    sub_10000459C(&qword_10016BC10, &qword_1001112A8);
    sub_100012C48(&qword_10016BC20, &qword_10016BC28, &qword_1001112B0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BC18);
  }

  return result;
}

uint64_t sub_100048BC0()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100048C34()
{
  result = qword_10016BC40;
  if (!qword_10016BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BC40);
  }

  return result;
}

uint64_t sub_100048C88(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100048D3C()
{
  result = qword_10016BC60;
  if (!qword_10016BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BC60);
  }

  return result;
}

uint64_t sub_100048D90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100048DDC()
{
  result = qword_10016BC68;
  if (!qword_10016BC68)
  {
    sub_10000459C(&qword_10016BC30, &qword_1001112E0);
    sub_10000459C(&qword_10016BC10, &qword_1001112A8);
    sub_100048AB8();
    swift_getOpaqueTypeConformance2();
    sub_100012C48(&qword_100169FD8, &qword_100169FE0, &qword_10010EBE0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BC68);
  }

  return result;
}

uint64_t sub_100048ED4()
{

  v1 = OBJC_IVAR____TtC17AppleVisionProApp24TVContentRequestProvider_tvContentRequestCloudKitCoordinator;
  v2 = type metadata accessor for TVContentRequestCloudKitCoordinator();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17AppleVisionProApp24TVContentRequestProvider___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVContentRequestProvider(uint64_t a1)
{
  result = qword_10016BCA8;
  if (!qword_10016BCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004900C(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for TVContentRequestCloudKitCoordinator();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v4 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_1000490F8()
{
  v1 = [objc_allocWithZone(UIImageView) initWithImage:*v0];
  [v1 setContentMode:1];
  return v1;
}

double sub_10004915C(uint64_t a1, char a2, uint64_t a3, char a4, double result)
{
  if ((a2 & 1) == 0 && (a4 & 1) == 0)
  {
    result = *&a1;
    if (*&a3 < *&a1)
    {
      result = *&a3;
    }

    if (result > 270.0)
    {
      return 270.0;
    }
  }

  return result;
}

uint64_t sub_1000491B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000492FC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100049218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000492FC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10004927C(uint64_t a1)
{
  sub_1000492FC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000492A8()
{
  result = qword_10016BDA8;
  if (!qword_10016BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BDA8);
  }

  return result;
}

unint64_t sub_1000492FC()
{
  result = qword_10016BDB0;
  if (!qword_10016BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BDB0);
  }

  return result;
}

uint64_t sub_10004937C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  __chkstk_darwin(v30);
  v4 = &v29 - v3;
  v5 = type metadata accessor for PlainButtonStyle();
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100002BE4(&qword_10016BDC0, &unk_100111560);
  __chkstk_darwin(v32);
  v10 = &v29 - v9;
  v11 = static VerticalAlignment.center.getter();
  v12 = a1[1];
  v35 = *a1;
  v36 = v12;
  sub_100012928();

  v13 = Text.init<A>(_:)();
  v15 = v14;
  LOBYTE(v12) = v16;
  v18 = v17;

  v19 = Image.init(systemName:)();
  LOBYTE(v12) = v12 & 1;
  sub_100003AE4(v13, v15, v12);

  sub_10001297C(v13, v15, v12);

  v44 = 0;
  v43 = v12;
  v35 = v11;
  v36 = 0x4018000000000000;
  v37 = 0;
  v38 = v13;
  v39 = v15;
  v40 = v12;
  v41 = v18;
  v42 = v19;
  PlainButtonStyle.init()();
  sub_100002BE4(&qword_10016BDE0, &unk_100111578);
  sub_100012C48(&qword_10016BDE8, &qword_10016BDE0, &unk_100111578, &protocol conformance descriptor for HStack<A>);
  sub_100049C68(&qword_10016BDF0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v20 = v33;
  View.buttonStyle<A>(_:)();
  (*(v34 + 8))(v8, v20);
  v21 = v12;
  v22 = v32;
  sub_10001297C(v13, v15, v21);

  v23 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v25 = &v10[*(sub_100002BE4(&qword_10016BDD8, &qword_100111570) + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  *&v10[*(v22 + 36)] = static HierarchicalShapeStyle.secondary.getter();
  v26 = enum case for DynamicTypeSize.accessibility2(_:);
  v27 = type metadata accessor for DynamicTypeSize();
  (*(*(v27 - 8) + 104))(v4, v26, v27);
  sub_100049C68(&qword_100169A78, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100049A30();
    sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100049CB0(v4);
    return sub_100049D18(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000497CC()
{
  v1 = v0[2];
  v11 = v0[1];
  v12 = v1;
  v10 = *v0;
  v13 = v11;
  v14 = v10;
  v2 = swift_allocObject();
  v3 = v0[1];
  v2[1] = *v0;
  v2[2] = v3;
  v2[3] = v0[2];
  sub_1000499D4(&v14, v9);
  sub_1000499D4(&v13, v9);

  sub_100002BE4(&qword_10016BDB8, &qword_100111558);
  v4 = sub_10000459C(&qword_10016BDC0, &unk_100111560);
  v5 = sub_10000459C(&qword_100169A10, &qword_10010D450);
  v6 = sub_100049A30();
  v7 = sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450, &protocol conformance descriptor for PartialRangeThrough<A>);
  v9[0] = v4;
  v9[1] = v5;
  v9[2] = v6;
  v9[3] = v7;
  swift_getOpaqueTypeConformance2();
  return Button.init(action:label:)();
}

uint64_t sub_10004995C()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_100049A30()
{
  result = qword_10016BDC8;
  if (!qword_10016BDC8)
  {
    sub_10000459C(&qword_10016BDC0, &unk_100111560);
    sub_100049AE8();
    sub_100012C48(&qword_10016BDF8, &qword_10016BE00, &qword_100111588, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BDC8);
  }

  return result;
}

unint64_t sub_100049AE8()
{
  result = qword_10016BDD0;
  if (!qword_10016BDD0)
  {
    sub_10000459C(&qword_10016BDD8, &qword_100111570);
    sub_10000459C(&qword_10016BDE0, &unk_100111578);
    type metadata accessor for PlainButtonStyle();
    sub_100012C48(&qword_10016BDE8, &qword_10016BDE0, &unk_100111578, &protocol conformance descriptor for HStack<A>);
    sub_100049C68(&qword_10016BDF0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100012C48(&qword_10016B108, &qword_10016B110, &unk_100110E10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BDD0);
  }

  return result;
}

uint64_t sub_100049C68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100049CB0(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100049D18(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016BDC0, &unk_100111560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Optional.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return 7104878;
  }

  (*(v2 + 32))(v5, v7, v1);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v9 = v11[0];
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t sub_100049FB4@<X0>(uint64_t a3@<X8>)
{
  sub_100012928();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v8 & 1;
  v21 = static Font.footnote.getter();
  *&v26 = v4;
  *(&v26 + 1) = v6;
  LOBYTE(v27) = v20;
  *(&v27 + 1) = v10;
  LOBYTE(v28) = v11;
  *(&v28 + 1) = v13;
  *&v29 = v15;
  *(&v29 + 1) = v17;
  *&v30 = v19;
  BYTE8(v30) = 0;
  *&v31 = swift_getKeyPath();
  *(&v31 + 1) = v21;
  static Font.Weight.bold.getter();
  sub_100002BE4(&qword_10016BE78, &qword_100111730);
  sub_10004AA9C();
  View.fontWeight(_:)();
  v32[2] = v28;
  v32[3] = v29;
  v32[4] = v30;
  v32[5] = v31;
  v32[0] = v26;
  v32[1] = v27;
  sub_100009908(v32, &qword_10016BE78, &qword_100111730);
  v22 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100002BE4(&qword_10016BE88, &qword_100111768);
  v25 = (a3 + *(result + 36));
  *v25 = KeyPath;
  v25[1] = v22;
  return result;
}

uint64_t sub_10004A148@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = type metadata accessor for RoundedRectangle();
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100002BE4(&qword_10016BE40, &qword_1001116C0) - 8;
  v5 = __chkstk_darwin(v41);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  v9 = sub_100002BE4(&qword_10016BE48, &unk_1001116C8);
  v10 = __chkstk_darwin(v9 - 8);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = (&v39 - v13);
  v15 = &v39 + *(v12 + 44) - v13;
  v16 = *(v2 + 28);
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = type metadata accessor for RoundedCornerStyle();
  v19 = *(*(v18 - 8) + 104);
  v19(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #9.0 }

  v39 = _Q0;
  *v15 = _Q0;
  *&v15[*(sub_100002BE4(&qword_10016B180, &qword_1001102D0) + 36)] = 256;
  *v14 = 17;
  v19(&v4[*(v2 + 28)], v17, v18);
  *v4 = v39;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_10004A67C(v4, v8);
  v25 = *&v44 * 0.5;
  v26 = &v8[*(sub_100002BE4(&qword_10016BE50, &qword_1001116D8) + 68)];
  sub_10004A67C(v4, v26);
  *(v26 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v25;
  v27 = v26 + *(sub_100002BE4(&qword_10016BE58, &qword_1001116E0) + 36);
  v28 = v45;
  *v27 = v44;
  *(v27 + 16) = v28;
  *(v27 + 32) = v46;
  *(v26 + *(sub_100002BE4(&qword_10016BE60, &qword_1001116E8) + 56)) = 256;
  v29 = static Alignment.center.getter();
  v31 = v30;
  sub_10004A6E0(v4);
  v32 = (v26 + *(sub_100002BE4(&qword_10016BE68, &qword_1001116F0) + 36));
  *v32 = v29;
  v32[1] = v31;
  static Color.white.getter();
  v33 = Color.opacity(_:)();

  *&v8[*(v41 + 44)] = v33;
  v34 = v40;
  sub_10004A73C(v14, v40);
  v35 = v42;
  sub_10004A7AC(v8, v42);
  v36 = v43;
  sub_10004A73C(v34, v43);
  v37 = sub_100002BE4(&qword_10016BE70, &qword_1001116F8);
  sub_10004A7AC(v35, v36 + *(v37 + 48));
  sub_10004A81C(v8);
  sub_100009908(v14, &qword_10016BE48, &unk_1001116C8);
  sub_10004A81C(v35);
  return sub_100009908(v34, &qword_10016BE48, &unk_1001116C8);
}

uint64_t sub_10004A52C@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = sub_100002BE4(&qword_10016BE18, &qword_100111698);
  sub_100049FB4(a2 + *(v3 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = (a2 + *(sub_100002BE4(&qword_10016BE20, &qword_1001116A0) + 36));
  *v4 = v13;
  v4[1] = v14;
  v4[2] = v15;
  v5 = static Alignment.center.getter();
  v7 = v6;
  v8 = a2 + *(sub_100002BE4(&qword_10016BE28, &qword_1001116A8) + 36);
  sub_10004A148(v8);
  v9 = (v8 + *(sub_100002BE4(&qword_10016BE30, &qword_1001116B0) + 36));
  *v9 = v5;
  v9[1] = v7;
  static Color.white.getter();
  v10 = Color.opacity(_:)();

  result = sub_100002BE4(&qword_10016BE38, &qword_1001116B8);
  v12 = (a2 + *(result + 36));
  *v12 = v10;
  v12[1] = 0x4018000000000000;
  v12[2] = 0;
  v12[3] = 0;
  return result;
}

uint64_t sub_10004A67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A6E0(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004A73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016BE48, &unk_1001116C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016BE40, &qword_1001116C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A81C(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016BE40, &qword_1001116C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10004A884()
{
  v1 = [objc_opt_self() effectWithStyle:*v0];
  v2 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v1];

  return v2;
}

void sub_10004A8F4(void *a1)
{
  v3 = [objc_opt_self() effectWithStyle:*v1];
  [a1 setEffect:v3];
}

uint64_t sub_10004A9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004ADC4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10004AA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004ADC4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10004AA6C(uint64_t a1)
{
  sub_10004ADC4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10004AA9C()
{
  result = qword_10016BE80;
  if (!qword_10016BE80)
  {
    sub_10000459C(&qword_10016BE78, &qword_100111730);
    sub_10001D8A0();
    sub_100012C48(&qword_10016B108, &qword_10016B110, &unk_100110E10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BE80);
  }

  return result;
}

unint64_t sub_10004AB70()
{
  result = qword_10016BE90;
  if (!qword_10016BE90)
  {
    sub_10000459C(&qword_10016BE38, &qword_1001116B8);
    sub_10004ABFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BE90);
  }

  return result;
}

unint64_t sub_10004ABFC()
{
  result = qword_10016BE98;
  if (!qword_10016BE98)
  {
    sub_10000459C(&qword_10016BE28, &qword_1001116A8);
    sub_10004ACB4();
    sub_100012C48(&qword_10016BEB8, &qword_10016BE30, &qword_1001116B0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BE98);
  }

  return result;
}

unint64_t sub_10004ACB4()
{
  result = qword_10016BEA0;
  if (!qword_10016BEA0)
  {
    sub_10000459C(&qword_10016BE20, &qword_1001116A0);
    sub_100012C48(&qword_10016BEA8, &qword_10016BEB0, &qword_100111798, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BEA0);
  }

  return result;
}

unint64_t sub_10004AD70()
{
  result = qword_10016BEC0;
  if (!qword_10016BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BEC0);
  }

  return result;
}

unint64_t sub_10004ADC4()
{
  result = qword_10016BEC8;
  if (!qword_10016BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BEC8);
  }

  return result;
}

id sub_10004AE18()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for LayerResizableUIView();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions:1];
  v2 = [v0 layer];
  v3 = [v2 sublayers];

  if (v3)
  {
    sub_10004B160();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v0 bounds];
        [v8 setFrame:?];
        [v8 removeAllAnimations];

        ++v6;
        if (v9 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  return [v1 commit];
}

id sub_10004B108(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LayerResizableUIView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10004B160()
{
  result = qword_10016AE98;
  if (!qword_10016AE98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016AE98);
  }

  return result;
}

void sub_10004B1BC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 layer];
  v6 = [v5 sublayers];

  if (v6)
  {
    sub_10004B160();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = a3;
    __chkstk_darwin(v8);
    v19[2] = &v20;
    v9 = sub_10008BEE8(sub_10004B5BC, v19, v7);

    if ((v9 & 1) == 0)
    {
      v10 = [a1 layer];
      v11 = [v10 sublayers];

      if (v11)
      {
        v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v12 >> 62)
        {
          goto LABEL_16;
        }

        for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v14 = 0;
          while (1)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_15;
              }

              v15 = *(v12 + 8 * v14 + 32);
            }

            v16 = v15;
            v17 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            [v15 removeFromSuperlayer];

            ++v14;
            if (v17 == i)
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

      v18 = [a1 layer];
      [v18 addSublayer:a3];
    }
  }
}

id sub_10004B3E0()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(type metadata accessor for LayerResizableUIView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = [v2 layer];
  [v3 addSublayer:v1];

  return v2;
}

uint64_t sub_10004B474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004B614();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10004B4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004B614();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10004B53C(uint64_t a1)
{
  sub_10004B614();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10004B568()
{
  result = qword_10016BEF8;
  if (!qword_10016BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BEF8);
  }

  return result;
}

unint64_t sub_10004B614()
{
  result = qword_10016BF00;
  if (!qword_10016BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF00);
  }

  return result;
}

uint64_t sub_10004B668(double a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_100002BE4(&qword_10016BF18, &qword_1001119C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001119B0;
  *(inited + 32) = 0x64695F64726163;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0x7079745F64726163;
  *(inited + 64) = 0xE900000000000065;
  sub_10004C784();
  *(inited + 72) = NSNumber.init(integerLiteral:)(a4);
  *(inited + 80) = 0x6E6F697461727564;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithDouble:a1];
  v7 = sub_10000B6F0(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_10016BF20, &unk_1001119D0);
  swift_arrayDestroy();
  v8 = sub_10004F388(v7);

  sub_10004F388(v8);

  v10[3] = &_s20TetsuoAnalyticsEventON;
  v10[4] = sub_1000250D8();
  LOBYTE(v10[0]) = 3;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  return sub_1000052E4(v10);
}

unint64_t sub_10004B818(char a1)
{
  result = 0x676B636142707041;
  switch(a1)
  {
    case 1:
      return 0x6765726F46707041;
    case 2:
      return 0x636E75614C707041;
    case 3:
      return 0x6E65704F64726143;
    case 4:
      return 0x4C746E65746E6F43;
    case 5:
      return 0xD000000000000011;
    case 6:
      v3 = 10;
      goto LABEL_14;
    case 7:
      return 0xD000000000000014;
    case 8:
      return 0xD000000000000010;
    case 9:
      return 0x6544794D6E65704FLL;
    case 10:
      return 0xD000000000000010;
    case 11:
      return 0xD000000000000017;
    case 12:
      return 0x764F5654776F6853;
    case 13:
      v3 = 11;
      goto LABEL_14;
    case 14:
      v3 = 13;
LABEL_14:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10004BA38(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10004B818(*a1);
  v5 = v4;
  if (v3 == sub_10004B818(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10004BAC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10004B818(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10004BB24(uint64_t a1)
{
  sub_10004B818(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int sub_10004BB78(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10004B818(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10004BBD8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004F8C4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10004BC08@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10004B818(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10004BC34()
{
  v1 = *v0;
  _StringGuts.grow(_:)(25);

  v2._countAndFlagsBits = sub_10004B818(v1);
  String.append(_:)(v2);

  return 0xD000000000000017;
}

uint64_t sub_10004BCB4(void *a1, int a2)
{
  v40 = a2;
  v3 = sub_100002BE4(&qword_10016BFA0, &qword_100111C10);
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v29 - v4;
  v5 = sub_100002BE4(&qword_10016BFA8, &qword_100111C18);
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v32 = &v29 - v6;
  v7 = sub_100002BE4(&qword_10016BFB0, &qword_100111C20);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v29 = &v29 - v8;
  v9 = sub_100002BE4(&qword_10016BFB8, &qword_100111C28);
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_100002BE4(&qword_10016BFC0, &qword_100111C30);
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v41 = sub_100002BE4(&qword_10016BFC8, &qword_100111C38);
  v15 = *(v41 - 8);
  __chkstk_darwin(v41);
  v17 = &v29 - v16;
  sub_10000524C(a1, a1[3]);
  sub_100050218();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_100050368();
      v28 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_1000503BC();
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_100050314();
    v26 = v29;
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_1000502C0();
    v19 = v32;
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_10005026C();
    v19 = v35;
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
}

uint64_t sub_10004C264(uint64_t a1)
{
  v2 = sub_100050368();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004C2A0(uint64_t a1)
{
  v2 = sub_100050368();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004C2DC()
{
  v1 = *v0;
  v2 = 30324;
  v3 = 0x7972656C6C6167;
  v4 = 1668508013;
  if (v1 != 3)
  {
    v4 = 0x79726F7473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7368801;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004C358@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10004F910(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10004C38C(uint64_t a1)
{
  v2 = sub_100050218();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004C3C8(uint64_t a1)
{
  v2 = sub_100050218();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004C404(uint64_t a1)
{
  v2 = sub_100050314();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004C440(uint64_t a1)
{
  v2 = sub_100050314();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004C47C(uint64_t a1)
{
  v2 = sub_1000502C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004C4B8(uint64_t a1)
{
  v2 = sub_1000502C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004C4F4(uint64_t a1)
{
  v2 = sub_10005026C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004C530(uint64_t a1)
{
  v2 = sub_10005026C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004C56C(uint64_t a1)
{
  v2 = sub_1000503BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004C5A8(uint64_t a1)
{
  v2 = sub_1000503BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10004C5F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10004C784();
  isa = NSNumber.init(integerLiteral:)(v1).super.super.isa;
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

void sub_10004C650(uint64_t a1)
{
  v2 = *v1;
  sub_10004C784();
  isa = NSNumber.init(integerLiteral:)(v2).super.super.isa;
  NSObject.hash(into:)();
}

Swift::Int sub_10004C6BC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10004C784();
  isa = NSNumber.init(integerLiteral:)(v2).super.super.isa;
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004C718@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004F784(*a1);
  *a2 = result;
  return result;
}

NSNumber sub_10004C744@<X0>(NSNumber *a1@<X8>)
{
  v3 = *v1;
  sub_10004C784();
  result.super.super.isa = NSNumber.init(integerLiteral:)(v3).super.super.isa;
  a1->super.super.isa = result.super.super.isa;
  return result;
}

unint64_t sub_10004C784()
{
  result = qword_10016BF10;
  if (!qword_10016BF10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016BF10);
  }

  return result;
}

uint64_t sub_10004C7D0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10004FAB4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10004C818(uint64_t a1)
{
  sub_100002BE4(&qword_10016BF18, &qword_1001119C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010D3B0;
  *(inited + 32) = 0x7865646E69;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v3 = sub_10000B6F0(inited);
  swift_setDeallocating();
  sub_10004F4B0(inited + 32);
  v4 = sub_10004F388(v3);

  sub_10004F388(v4);

  v6[3] = &_s20TetsuoAnalyticsEventON;
  v6[4] = sub_1000250D8();
  LOBYTE(v6[0]) = 6;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  return sub_1000052E4(v6);
}

uint64_t sub_10004C92C(char a1)
{
  sub_100002BE4(&qword_10016BF18, &qword_1001119C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010D3B0;
  *(inited + 32) = 0x656C62616E457369;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
  v3 = sub_10000B6F0(inited);
  swift_setDeallocating();
  sub_10004F4B0(inited + 32);
  v4 = sub_10004F388(v3);

  sub_10004F388(v4);

  v6[3] = &_s20TetsuoAnalyticsEventON;
  v6[4] = sub_1000250D8();
  LOBYTE(v6[0]) = 7;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  return sub_1000052E4(v6);
}

uint64_t sub_10004CA48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002BE4(&qword_10016BF28, &qword_1001119F8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = 8 * (v17 | (v8 << 6));
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + v20;
      if (v4)
      {
        sub_100008A5C(v22, v32);
      }

      else
      {
        sub_100008A24(v22, v32);
      }

      result = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      *(*(v7 + 48) + v16) = v21;
      result = sub_100008A5C(v32, *(v7 + 56) + v16);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_10004CCC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002BE4(&qword_100169788, &qword_1001119F0);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10004CF68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002BE4(&qword_100169758, &unk_10010D1F0);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10004D20C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002BE4(&qword_100169770, &qword_10010D208);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10000BF7C(v24, v34);
      }

      else
      {
        sub_1000076F0(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000BF7C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_10004D4C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002BE4(&qword_100169760, &unk_1001119E0);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10004D76C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002BE4(&qword_100169768, &qword_10010D200);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}