uint64_t sub_10042CDC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v7 = type metadata accessor for SectionHeaderViewModel.Size();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v50 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&qword_10190B038, &qword_1011E65F0);
  __chkstk_darwin(v9 - 8);
  v48 = &v43 - v10;
  v11 = type metadata accessor for SectionHeaderViewModel();
  __chkstk_darwin(v11 - 8);
  v46 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000CE6B8(&qword_10190AFC8, &qword_1011E65B0);
  __chkstk_darwin(v49);
  v47 = &v43 - v13;
  v14 = sub_1000CE6B8(&qword_101921020, &qword_101206708);
  v54 = *(v14 - 8);
  v55 = v14;
  __chkstk_darwin(v14);
  v45 = &v43 - v15;
  v16 = type metadata accessor for EditMode();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000CE6B8(&qword_101921028, &qword_101206710);
  __chkstk_darwin(v20 - 8);
  v53 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v43 - v23;
  v25 = sub_1000CE6B8(&qword_101921030, &qword_101206718);
  __chkstk_darwin(v25 - 8);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v43 - v29;
  v44 = a1;
  v57 = a1;
  v58 = a2;
  v31 = a2;
  v59 = a3;
  sub_1000CE6B8(&qword_101921038, &qword_101206720);
  sub_100430654();
  Section<>.init(content:)();
  type metadata accessor for PinnedItemsView(0);
  sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);
  v32 = a3;
  State.wrappedValue.getter();
  LODWORD(a1) = (*(v17 + 88))(v19, v16);
  LODWORD(a3) = enum case for EditMode.inactive(_:);
  (*(v17 + 8))(v19, v16);
  if (a1 != a3)
  {
    goto LABEL_8;
  }

  if (v31 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
    if (v33 >= 1)
    {
      goto LABEL_4;
    }

LABEL_8:
    v38 = 1;
    goto LABEL_9;
  }

  v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v33 < 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  v43 = &v43;
  __chkstk_darwin(v33);
  *(&v43 - 4) = v44;
  *(&v43 - 3) = v31;
  v60._object = v32;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v60._object = 0x80000001012379C0;
  v34._countAndFlagsBits = 0xD000000000000019;
  v34._object = 0x80000001012379A0;
  v35._object = 0x800000010122FB40;
  v60._countAndFlagsBits = 0xD00000000000003FLL;
  v35._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, qword_1019600D8, v35, v60);
  v36 = type metadata accessor for SectionHeaderViewModel.ActionType();
  (*(*(v36 - 8) + 56))(v48, 1, 1, v36);
  (*(v51 + 104))(v50, enum case for SectionHeaderViewModel.Size.large(_:), v52);
  SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
  SectionHeader.init(model:)();
  sub_1000CE6B8(&qword_1019210E8, &qword_101206778);
  sub_1001097F8();
  sub_100430AD0();
  v37 = v45;
  Section<>.init(header:content:)();
  sub_1000B9008(v37, v24);
  v38 = 0;
LABEL_9:
  (*(v54 + 56))(v24, v38, 1, v55);
  sub_1000D2DFC(v30, v27, &qword_101921030, &qword_101206718);
  v39 = v53;
  sub_1000D2DFC(v24, v53, &qword_101921028, &qword_101206710);
  v40 = v56;
  sub_1000D2DFC(v27, v56, &qword_101921030, &qword_101206718);
  v41 = sub_1000CE6B8(&qword_1019210E0, &qword_101206770);
  sub_1000D2DFC(v39, v40 + *(v41 + 48), &qword_101921028, &qword_101206710);
  sub_100024F64(v24, &qword_101921028, &qword_101206710);
  sub_100024F64(v30, &qword_101921030, &qword_101206718);
  sub_100024F64(v39, &qword_101921028, &qword_101206710);
  return sub_100024F64(v27, &qword_101921030, &qword_101206718);
}

uint64_t sub_10042D548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v20[0] = a2;
  v6 = type metadata accessor for PinnedItemsView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v20[1] = a1;
  sub_1004300A8(a2, v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_10043010C(v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

  sub_1000CE6B8(&qword_1019210F8, &qword_101206780);
  sub_1000CE6B8(&qword_101921070, &qword_101206738);
  sub_1000414C8(&qword_101921108, &qword_1019210F8, &qword_101206780, &protocol conformance descriptor for [A]);
  sub_100430848();
  sub_100431074(&qword_101921110, type metadata accessor for PinnedItemRowViewModel, &unk_1011E76F4);
  ForEach<>.init(_:content:)();
  v11 = v20[0];
  sub_1004300A8(v20[0], v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_10043010C(v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v9);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100430CC0;
  *(v13 + 24) = v12;
  v14 = a3;
  v15 = (a3 + *(sub_1000CE6B8(&qword_101921050, &qword_101206728) + 36));
  *v15 = sub_100186B18;
  v15[1] = v13;
  sub_1004300A8(v11, v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_10043010C(v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v9);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100430D24;
  *(v17 + 24) = v16;
  result = sub_1000CE6B8(&qword_101921038, &qword_101206720);
  v19 = (v14 + *(result + 36));
  *v19 = sub_1000D87C4;
  v19[1] = v17;
  return result;
}

void sub_10042D858(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PinnedItemsView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *a1;
  sub_1004300A8(a2, &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  sub_10043010C(&KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  *(v12 + v11) = v9;
  KeyPath = swift_getKeyPath();
  sub_1004300A8(a2, &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  sub_10043010C(&KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v10);
  *(v13 + v11) = v9;
  v14 = *(v9 + 24);
  swift_getKeyPath();
  v19 = v14;
  sub_100431074(&qword_10190B848, type metadata accessor for PinnedItem, &unk_10120201C);
  swift_retain_n();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v14) = *(v14 + 105);
  v15 = *(v9 + 24);
  swift_getKeyPath();
  v19 = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v15 + 106);
  *a3 = v9;
  *(a3 + 8) = sub_100430DA4;
  v17 = KeyPath;
  *(a3 + 16) = v12;
  *(a3 + 24) = v17;
  *(a3 + 32) = sub_100430F9C;
  *(a3 + 40) = v13;
  *(a3 + 48) = (v14 & 1) == 0;
  *(a3 + 49) = v16;
}

double sub_10042DAAC(void *a1, uint64_t a2)
{
  sub_1000CE6B8(&qword_101920F98, &qword_1012065E8);
  State.wrappedValue.getter();
  v3 = *(a2 + 24);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  v6 = sub_100530A48(v4, v5);

  if (v6)
  {
    swift_getKeyPath();
    sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v10 + 64);
    if (v7)
    {
      v8 = *(v10 + 72);

      v7(v10, v6);

      sub_1000588AC(v7, v8);

      return result;
    }
  }

  return result;
}

double sub_10042DBF0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryType();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  if ((*(v7 + 88))(v10, v6) == enum case for AccessoryType.info(_:))
  {
    v11 = a2[1];
    v21 = *a2;
    v22 = v11;
    sub_1000CE6B8(&qword_101920F98, &qword_1012065E8);
    State.wrappedValue.getter();
    v12 = v20[1];
    v13 = *(a3 + 24);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);

    v16 = sub_100530A48(v14, v15);

    if (v16)
    {
      swift_getKeyPath();
      v21 = v12;
      sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v17 = *(v12 + 112);
      if (v17)
      {
        v18 = *(v12 + 120);

        v17(v12, v16);

        sub_1000588AC(v17, v18);

        return result;
      }
    }
  }

  else
  {
    (*(v7 + 8))(v10, v6);
  }

  return result;
}

void sub_10042DE28()
{
  sub_1000CE6B8(&qword_101920F98, &qword_1012065E8);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v4 + 16);
  sub_1000F0120(v0, *(v4 + 24));

  if (v0)
  {
    v1 = IndexSet.first.getter();
    if ((v2 & 1) == 0)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_7;
      }

      if ((v1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v1 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v3 = *(v0 + 8 * v1 + 32);

LABEL_7:

        State.wrappedValue.getter();
        sub_10011765C(v3);

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_10042DFB4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1000CE6B8(&qword_101920F98, &qword_1012065E8);
  State.wrappedValue.getter();
  v4 = IndexSet.first.getter();
  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_100117204(v4, a2);
  }
}

uint64_t sub_10042E038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PinnedItemsView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v13[3] = a2;
  sub_1004300A8(a3, v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_10043010C(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);

  sub_1000CE6B8(&qword_1019210F8, &qword_101206780);
  sub_1000CE6B8(&qword_101921100, &qword_101206788);
  sub_1000414C8(&qword_101921108, &qword_1019210F8, &qword_101206780, &protocol conformance descriptor for [A]);
  v10 = sub_1000D6664(&qword_101921090, &qword_101206748);
  v11 = sub_1004309B8();
  v13[1] = v10;
  v13[2] = v11;
  swift_getOpaqueTypeConformance2();
  sub_100431074(&qword_101921110, type metadata accessor for PinnedItemRowViewModel, &unk_1011E76F4);
  return ForEach<>.init(_:content:)();
}

double sub_10042E250@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = type metadata accessor for MapsDesignAccessibilityString();
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PinnedItemsView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1004300A8(a2, v11);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  sub_10043010C(v11, v15 + v13);
  *(v15 + v14) = v12;
  KeyPath = swift_getKeyPath();
  sub_1004300A8(a2, v11);
  v17 = swift_allocObject();
  sub_10043010C(v11, v17 + v13);
  *(v17 + v14) = v12;
  v25 = v12;
  v26 = sub_100430C10;
  v27 = v15;
  v28 = KeyPath;
  v29 = sub_100430C28;
  v30 = v17;
  strcpy(v7, "SiriSuggestion");
  v7[15] = -18;
  v19 = v22;
  v18 = v23;
  (*(v22 + 104))(v7, enum case for MapsDesignAccessibilityString.cell(_:), v23);
  swift_retain_n();
  sub_1000CE6B8(&qword_101921090, &qword_101206748);
  sub_1004309B8();
  View.mapsDesignAXCombinedContainer(withID:)();
  (*(v19 + 8))(v7, v18);

  return result;
}

double sub_10042E50C(void *a1, uint64_t a2)
{
  sub_1000CE6B8(&qword_101920F98, &qword_1012065E8);
  State.wrappedValue.getter();
  v3 = *(a2 + 24);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  v6 = sub_100530A5C(v4, v5);

  if (v6)
  {
    swift_getKeyPath();
    sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v10 + 80);
    if (v7)
    {
      v8 = *(v10 + 88);

      v7(v10, v6);

      sub_1000588AC(v7, v8);

      return result;
    }
  }

  return result;
}

double sub_10042E650(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryType();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  if ((*(v7 + 88))(v10, v6) == enum case for AccessoryType.pin(_:))
  {
    v11 = a2[1];
    v21 = *a2;
    v22 = v11;
    sub_1000CE6B8(&qword_101920F98, &qword_1012065E8);
    State.wrappedValue.getter();
    v12 = v20[1];
    v13 = *(a3 + 24);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);

    v16 = sub_100530A5C(v14, v15);

    if (v16)
    {
      swift_getKeyPath();
      v21 = v12;
      sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v17 = *(v12 + 128);
      if (v17)
      {
        v18 = *(v12 + 136);

        v17(v12, v16);

        sub_1000588AC(v17, v18);

        return result;
      }
    }
  }

  else
  {
    (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_10042E888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v118 = type metadata accessor for LeadingCardHeader();
  v100 = *(v118 - 8);
  __chkstk_darwin(v118);
  v98 = v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for LeadingCardHeaderViewModel();
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v93 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v96 = v79 - v6;
  v7 = type metadata accessor for PinnedItemsView(0);
  v84 = *(v7 - 8);
  __chkstk_darwin(v7);
  v85 = v8;
  v83 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for CardButtonViewModel();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v110 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1000CE6B8(&qword_101920FA0, &qword_101206618);
  __chkstk_darwin(v114);
  v116 = v79 - v10;
  v11 = type metadata accessor for MapsDesignAccessibilityString();
  v111 = *(v11 - 8);
  v112 = v11;
  __chkstk_darwin(v11);
  v90 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for CenteredCardHeaderNavigation();
  v89 = *(v113 - 8);
  __chkstk_darwin(v113);
  v87 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1000CE6B8(&qword_10190CC00, &unk_101203510);
  v92 = *(v115 - 8);
  __chkstk_darwin(v115);
  v91 = v79 - v14;
  v15 = type metadata accessor for CardHeaderSize();
  v107 = *(v15 - 8);
  v108 = v15;
  __chkstk_darwin(v15);
  v109 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  v88 = *(countAndFlagsBits - 8);
  __chkstk_darwin(countAndFlagsBits);
  v82 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v105 = v79 - v19;
  v20 = sub_1000CE6B8(&unk_101910FC0, &unk_1011EBBE0);
  __chkstk_darwin(v20 - 8);
  v81 = v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v79 - v23;
  __chkstk_darwin(v25);
  v104 = v79 - v26;
  v103 = type metadata accessor for CardHeaderTextViewModel();
  v86 = *(v103 - 8);
  __chkstk_darwin(v103);
  v80 = v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v102 = v79 - v29;
  v30 = type metadata accessor for EditMode();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = v79 - v35;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v122._object = 0x8000000101237970;
  v37._countAndFlagsBits = 0x64656E6E6950;
  v38._object = 0x8000000101237950;
  v122._countAndFlagsBits = 0xD00000000000002FLL;
  v38._countAndFlagsBits = 0xD000000000000015;
  v37._object = 0xE600000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, qword_1019600D8, v37, v122);
  object = v39._object;
  v40 = *(v7 + 20);
  v41 = sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);
  v79[2] = v40;
  v79[1] = v41;
  State.wrappedValue.getter();
  v79[0] = *(v31 + 104);
  (v79[0])(v33, enum case for EditMode.active(_:), v30);
  LOBYTE(v40) = static EditMode.== infix(_:_:)();
  v42 = a1;
  v43 = *(v31 + 8);
  v43(v33, v30);
  v43(v36, v30);
  if (v40)
  {
    v45 = v111;
    v44 = v112;
    v46 = *(v111 + 104);
    v47 = v104;
    v46(v104, enum case for MapsDesignAccessibilityString.titleLabel(_:), v112);
    v48 = *(v45 + 56);
    v48(v47, 0, 1, v44);
    v46(v24, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v44);
    v48(v24, 0, 1, v44);
    v49 = v81;
    v46(v81, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v44);
    v48(v49, 0, 1, v44);
    static HorizontalAlignment.center.getter();
    v50 = v102;
    CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
    v51 = v86;
    (*(v86 + 16))(v80, v50, v103);
    (*(v107 + 104))(v109, enum case for CardHeaderSize.medium(_:), v108);
    v52 = v105;
    CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
    v53 = v88;
    (*(v88 + 16))(v82, v52, countAndFlagsBits);
    v54 = v87;
    CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
    v55 = v90;
    *v90 = 0x744964656E6E6950;
    *(v55 + 1) = 0xEF64726143736D65;
    v46(v55, enum case for MapsDesignAccessibilityString.header(_:), v44);
    v56 = sub_100431074(&qword_10190CC10, &type metadata accessor for CenteredCardHeaderNavigation, &protocol conformance descriptor for CenteredCardHeaderNavigation);
    v57 = v91;
    v58 = v113;
    View.mapsDesignAXCombinedContainer(withID:)();
    (*(v45 + 8))(v55, v44);
    (*(v89 + 8))(v54, v58);
    v59 = v92;
    v60 = v115;
    (*(v92 + 16))(v116, v57, v115);
    swift_storeEnumTagMultiPayload();
    *&v119 = v58;
    *(&v119 + 1) = v56;
    swift_getOpaqueTypeConformance2();
    sub_100431074(&qword_10190AF00, &type metadata accessor for LeadingCardHeader, &protocol conformance descriptor for LeadingCardHeader);
    _ConditionalContent<>.init(storage:)();
    (*(v59 + 8))(v57, v60);
    (*(v53 + 8))(v105, countAndFlagsBits);
    return (*(v51 + 8))(v102, v103);
  }

  else
  {
    countAndFlagsBits = v39._countAndFlagsBits;
    v62 = v83;
    sub_1004300A8(v42, v83);
    v63 = (*(v84 + 80) + 16) & ~*(v84 + 80);
    v64 = swift_allocObject();
    sub_10043010C(v62, v64 + v63);
    v65 = v110;
    static CardButtonViewModel.close(tintColor:enabled:action:)();

    State.wrappedValue.getter();
    (v79[0])(v33, enum case for EditMode.inactive(_:), v30);
    v66 = static EditMode.== infix(_:_:)();
    v43(v33, v30);
    v43(v36, v30);
    if (v66)
    {
      sub_1000CE6B8(&qword_10191D770, &qword_1011E52E0);
      v67 = v94;
      v68 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1011E1D30;
      v70 = v65;
      v71 = v95;
      (*(v67 + 16))(v69 + v68, v70, v95);
    }

    else
    {
      v71 = v95;
      v67 = v94;
    }

    (*(v111 + 56))(v104, 1, 1, v112);
    (*(v107 + 104))(v109, enum case for CardHeaderSize.large(_:), v108);
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
    v72 = v96;
    LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
    v73 = v97;
    v74 = v99;
    (*(v97 + 16))(v93, v72, v99);
    v75 = v98;
    LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
    v76 = v100;
    v77 = v118;
    (*(v100 + 16))(v116, v75, v118);
    swift_storeEnumTagMultiPayload();
    v78 = sub_100431074(&qword_10190CC10, &type metadata accessor for CenteredCardHeaderNavigation, &protocol conformance descriptor for CenteredCardHeaderNavigation);
    *&v119 = v113;
    *(&v119 + 1) = v78;
    swift_getOpaqueTypeConformance2();
    sub_100431074(&qword_10190AF00, &type metadata accessor for LeadingCardHeader, &protocol conformance descriptor for LeadingCardHeader);
    _ConditionalContent<>.init(storage:)();
    (*(v76 + 8))(v75, v77);
    (*(v73 + 8))(v72, v74);
    return (*(v67 + 8))(v110, v71);
  }
}

double sub_10042F8F4(uint64_t a1, void *a2)
{
  sub_1000CE6B8(&qword_101920F98, &qword_1012065E8);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v5 + 48);
  if (v2)
  {
    v3 = *(v5 + 56);

    v2();

    sub_1000588AC(v2, v3);
  }

  else
  {
  }

  return result;
}

void sub_10042F9F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for EditMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for ActionBarItemType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ActionBarItemViewModel.type.getter();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 != enum case for ActionBarItemType.addToList(_:))
  {
    if (v15 == enum case for ActionBarItemType.edit(_:))
    {
      v20 = &enum case for EditMode.active(_:);
    }

    else
    {
      if (v15 != enum case for ActionBarItemType.done(_:))
      {
        (*(v12 + 8))(v14, v11);
        return;
      }

      v20 = &enum case for EditMode.inactive(_:);
    }

    (*(v5 + 104))(v10, *v20, v4);
    type metadata accessor for PinnedItemsView(0);
    (*(v5 + 16))(v7, v10, v4);
    sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);
    State.wrappedValue.setter();
    (*(v5 + 8))(v10, v4);
    return;
  }

  v16 = a3[1];
  v22 = *a3;
  v23 = v16;
  sub_1000CE6B8(&qword_101920F98, &qword_1012065E8);
  State.wrappedValue.getter();
  v17 = v21[1];
  swift_getKeyPath();
  v22 = v17;
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v17 + 96);
  if (v18)
  {
    v19 = *(v17 + 104);

    v18(v17);

    sub_1000588AC(v18, v19);
  }

  else
  {
  }
}

uint64_t sub_10042FD48()
{
  sub_1000CE6B8(&qword_101920F40, &qword_101206588);
  sub_10042FDC0();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_10042FDC0()
{
  result = qword_101920F48;
  if (!qword_101920F48)
  {
    sub_1000D6664(&qword_101920F40, &qword_101206588);
    sub_10042FE78();
    sub_1000414C8(&qword_10190A118, &qword_10190A120, &qword_101208EF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920F48);
  }

  return result;
}

unint64_t sub_10042FE78()
{
  result = qword_101920F50;
  if (!qword_101920F50)
  {
    sub_1000D6664(&qword_101920F58, &qword_101206590);
    sub_1000D6664(&qword_101920F60, &qword_101206598);
    sub_10042FF6C();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190A108, &qword_10190A110, &unk_1011E5110, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920F50);
  }

  return result;
}

unint64_t sub_10042FF6C()
{
  result = qword_101920F68;
  if (!qword_101920F68)
  {
    sub_1000D6664(&qword_101920F60, &qword_101206598);
    sub_1000D6664(&qword_101920F70, &qword_1012065A0);
    sub_1000414C8(&qword_101920F78, &qword_101920F70, &qword_1012065A0, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_101920F80, &qword_101920F88, &qword_1012065A8, &unk_1011E66B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920F68);
  }

  return result;
}

uint64_t sub_1004300A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinnedItemsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10043010C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinnedItemsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100430170(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PinnedItemsView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_10042F9F8(a1, a2, v6);
}

double sub_1004301F0(uint64_t a1)
{
  v3 = *(type metadata accessor for PinnedItemsView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_10042F8F4(a1, v4);
}

unint64_t sub_10043026C()
{
  result = qword_101920FF0;
  if (!qword_101920FF0)
  {
    sub_1000D6664(&qword_101920FB0, &qword_101206650);
    sub_100430324();
    sub_1000414C8(&qword_10190A118, &qword_10190A120, &qword_101208EF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920FF0);
  }

  return result;
}

unint64_t sub_100430324()
{
  result = qword_101920FF8;
  if (!qword_101920FF8)
  {
    sub_1000D6664(&qword_101920FE8, &qword_1012066F8);
    sub_1004303DC();
    sub_1000414C8(&qword_10190A3B8, &qword_10190A3C0, &qword_1011E5630, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920FF8);
  }

  return result;
}

unint64_t sub_1004303DC()
{
  result = qword_101921000;
  if (!qword_101921000)
  {
    sub_1000D6664(&qword_101920FE0, &qword_1012066C8);
    sub_100430494();
    sub_1000414C8(&qword_10190CD48, &qword_10190CD00, &unk_1011EEE90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921000);
  }

  return result;
}

unint64_t sub_100430494()
{
  result = qword_101921008;
  if (!qword_101921008)
  {
    sub_1000D6664(&qword_101920FD8, &qword_101206690);
    sub_10043054C();
    sub_1000414C8(&qword_10190CD40, &unk_10191D9C0, &qword_1011FA960, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921008);
  }

  return result;
}

unint64_t sub_10043054C()
{
  result = qword_101921010;
  if (!qword_101921010)
  {
    sub_1000D6664(&qword_101921018, &qword_101206700);
    sub_1000D6664(&qword_101920FA8, &qword_101206648);
    sub_1000414C8(&qword_101920FD0, &qword_101920FA8, &qword_101206648, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921010);
  }

  return result;
}

unint64_t sub_100430654()
{
  result = qword_101921040;
  if (!qword_101921040)
  {
    sub_1000D6664(&qword_101921038, &qword_101206720);
    sub_10043070C();
    sub_1000414C8(&qword_1019210D0, &qword_1019210D8, &qword_101206768, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921040);
  }

  return result;
}

unint64_t sub_10043070C()
{
  result = qword_101921048;
  if (!qword_101921048)
  {
    sub_1000D6664(&qword_101921050, &qword_101206728);
    sub_1004307C4();
    sub_1000414C8(&qword_1019210C0, &qword_1019210C8, &qword_101206760, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921048);
  }

  return result;
}

unint64_t sub_1004307C4()
{
  result = qword_101921058;
  if (!qword_101921058)
  {
    sub_1000D6664(&qword_101921060, &qword_101206730);
    sub_100430848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921058);
  }

  return result;
}

unint64_t sub_100430848()
{
  result = qword_101921068;
  if (!qword_101921068)
  {
    sub_1000D6664(&qword_101921070, &qword_101206738);
    sub_100430900();
    sub_1000414C8(&qword_1019210B0, &qword_1019210B8, &qword_101206758, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921068);
  }

  return result;
}

unint64_t sub_100430900()
{
  result = qword_101921078;
  if (!qword_101921078)
  {
    sub_1000D6664(&qword_101921080, &qword_101206740);
    sub_1004309B8();
    sub_1000414C8(&qword_1019210A0, &qword_1019210A8, &qword_101206750, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921078);
  }

  return result;
}

unint64_t sub_1004309B8()
{
  result = qword_101921088;
  if (!qword_101921088)
  {
    sub_1000D6664(&qword_101921090, &qword_101206748);
    sub_100430A70();
    sub_1000414C8(&unk_10190D690, &qword_10190BE10, &qword_1011EBB00, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921088);
  }

  return result;
}

unint64_t sub_100430A70()
{
  result = qword_101921098;
  if (!qword_101921098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921098);
  }

  return result;
}

unint64_t sub_100430AD0()
{
  result = qword_1019210F0;
  if (!qword_1019210F0)
  {
    sub_1000D6664(&qword_1019210E8, &qword_101206778);
    sub_1000D6664(&qword_101921090, &qword_101206748);
    sub_1004309B8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019210F0);
  }

  return result;
}

double sub_100430B90@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PinnedItemsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10042E250(a1, v6, a2);
}

void sub_100430C40(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PinnedItemsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_10042D858(a1, v6, a2);
}

void sub_100430D24(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PinnedItemsView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_10042DFB4(a1, a2, v6);
}

uint64_t sub_100430DBC(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PinnedItemsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_100430E5C()
{
  v1 = (type metadata accessor for PinnedItemsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v5 + v1[7];
  v7 = type metadata accessor for EditMode();
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100430FB4(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PinnedItemsView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

uint64_t sub_100431074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004310EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 1)
  {
    v4 = sub_100298E64(a2);
    if (v5)
    {
      v6 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10012CA88();
        v8 = v13;
      }

      sub_1003C5308(v6, v8, v9);
      *v3 = v8;
    }
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_10012B04C(a1, a2, v12);
    *v2 = v14;
  }
}

void sub_100431210(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  if (a1)
  {
    v16 = qword_101906728;
    v17 = a1;
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100021540(v18, qword_101960018);
    (*(v10 + 16))(v15, a5, v9);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = v17;
      v22 = v21;
      v23 = swift_slowAlloc();
      v42 = v23;
      *v22 = 136315138;
      v24 = URL.absoluteString.getter();
      v26 = v25;
      (*(v10 + 8))(v15, v9);
      v27 = sub_10004DEB8(v24, v26, &v42);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "[Place Summary] Finished fetching image at url %s.", v22, 0xCu);
      sub_10004E3D0(v23);

      v17 = v41;
    }

    else
    {

      (*(v10 + 8))(v15, v9);
    }

    v39 = v17;
    v40 = Image.init(uiImage:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v42 = v40;

    static Published.subscript.setter();
  }

  else
  {
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100021540(v28, qword_101960018);
    (*(v10 + 16))(v12, a5, v9);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v41;
      *v31 = 136315394;
      v33 = URL.absoluteString.getter();
      v35 = v34;
      (*(v10 + 8))(v12, v9);
      v36 = sub_10004DEB8(v33, v35, &v42);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2112;
      if (a4)
      {
        swift_errorRetain();
        v37 = _swift_stdlib_bridgeErrorToNSError();
        v38 = v37;
      }

      else
      {
        v37 = 0;
        v38 = 0;
      }

      *(v31 + 14) = v37;
      *v32 = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "[Place Summary] Couldn't fetch image at url: %s, error:%@", v31, 0x16u);
      sub_100024F64(v32, &qword_1019144F0, &unk_1011E4A70);

      sub_10004E3D0(v41);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }
  }
}

void sub_1004316D8(unint64_t a1)
{
  if (a1)
  {
    v2 = [objc_opt_self() mainScreen];
    v3 = [v2 traitCollection];

    v17 = [v3 userInterfaceStyle];
    if (a1 >> 62)
    {
LABEL_15:
      v4 = _CocoaArrayWrapper.endIndex.getter();
      if (!v4)
      {
        return;
      }
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        return;
      }
    }

    v5 = 0;
    v16 = v20;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(a1 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }
      }

      v8 = [objc_allocWithZone(MapsUIImageGEOFeatureSpec) init];
      [v8 setSize:4];
      v9 = [*(v6 + OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel_mapItem) _styleAttributes];
      [v8 setStyle:v9];

      v10 = v8;
      [v10 setNightMode:v17 == 2];
      [v10 setTransparent:1];
      v11 = [objc_opt_self() sharedCache];
      if (!v11)
      {
        break;
      }

      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v6;
      *(v13 + 24) = v1;
      v20[2] = sub_1004346A4;
      v20[3] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v20[0] = sub_100271778;
      v20[1] = &unk_1016190D0;
      v14 = _Block_copy(aBlock);

      v15 = v1;

      [v12 getImageForSpec:v10 loadImageOnBackgroundQueue:0 completion:v14];
      _Block_release(v14);

      ++v5;
      if (v7 == v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1004319C8(void *a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_101918E50, &unk_1011E4770);
  __chkstk_darwin(v4 - 8);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &aBlock[-1] - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &aBlock[-1] - v15;
  v17 = OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel_uniqueID;
  swift_beginAccess();
  sub_100240034(a2 + v17, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100024F64(v9, &unk_101918E50, &unk_1011E4770);
    if (a1)
    {
      v18 = a1;
      v19 = Image.init(uiImage:)();
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock[0] = v19;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock[0]) = 1;

      static Published.subscript.setter();
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    v20 = sub_100435400();
    v21 = [objc_opt_self() sharedInstance];
    v22 = [v21 checkCacheForKey:v20];

    if (v22)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock[0]) = 0;

      static Published.subscript.setter();
      v23 = v22;
      v24 = Image.init(uiImage:)();
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock[0] = v24;

      static Published.subscript.setter();

      (*(v11 + 8))(v16, v10);
      return;
    }

    (*(v11 + 8))(v16, v10);
  }

  v25 = [*(a2 + OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel_mapItem) _geoMapItem];
  if (!v25)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v26 = v25;
  sub_100014C84(0, &qword_101914FD0, GEORouteBuilder_PlaceDataCuratedHike_ptr);
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMapItem:v26];
  swift_unknownObjectRelease();
  v28 = [v27 buildRoute];
  if (!v28)
  {

    return;
  }

  v29 = v28;
  v30 = [v28 uniqueRouteID];
  if (v30)
  {
    v31 = v30;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  (*(v11 + 56))(v6, v32, 1, v10);
  swift_beginAccess();
  sub_10016E928(v6, a2 + v17);
  swift_endAccess();
  v33 = [v29 uniqueRouteID];
  if (!v33)
  {
    goto LABEL_17;
  }

  v34 = v33;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = sub_100435400();
  (*(v11 + 8))(v13, v10);
  v36 = [objc_opt_self() sharedInstance];
  aBlock[4] = sub_100435524;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004F3090;
  aBlock[3] = &unk_1016190F8;
  v37 = _Block_copy(aBlock);

  [v36 getSnapshotForKey:v35 route:v29 completion:v37];
  _Block_release(v37);
}

void sub_100431FB4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (!a1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v4 = a2;

      static Published.subscript.setter();
      v5 = v4;
      Image.init(uiImage:)();
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.setter();
    }
  }
}

uint64_t sub_1004320A8(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_100435664;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101619238;
  v14 = _Block_copy(aBlock);
  v15 = a3;
  v16 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000DB364();
  sub_1000CE6B8(&unk_10190B500, &unk_1011E4610);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

void sub_100432358(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    if (!a3)
    {
      return;
    }

    v3 = a3;
  }

  v4 = v3;
  Image.init(uiImage:)();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

void *sub_100432408(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = v3;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return swift_endAccess();
  }

  return result;
}

void sub_1004324B8(char *a1, double a2, double a3)
{
  v6 = sub_1000CE6B8(&unk_101909B00, &unk_1011E4C10);
  __chkstk_darwin(v6 - 8);
  v8 = v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v105 - v10;
  v12 = type metadata accessor for URL();
  v111 = *(v12 - 8);
  v13 = *(v111 + 64);
  __chkstk_darwin(v12);
  v109 = v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v127 = v105 - v19;
  if (a1)
  {
    v119 = v18;
    v107 = v17;
    v20 = swift_allocObject();
    v21 = sub_1000D1458(_swiftEmptyArrayStorage);
    v110 = v20;
    *(v20 + 16) = v21;
    v118 = (v20 + 16);
    v22 = qword_101906728;

    if (v22 != -1)
    {
      goto LABEL_46;
    }

    while (1)
    {
      v23 = type metadata accessor for Logger();
      v24 = sub_100021540(v23, qword_101960018);

      v124 = v24;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      v27 = os_log_type_enabled(v25, v26);
      v130 = a1;
      v126 = v8;
      v132 = v12;
      v125 = v11;
      if (v27)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v139 = v29;
        *v28 = 136315138;
        v30 = [*&a1[OBJC_IVAR____TtC4Maps34PlaceSummaryPhotoCarouselViewModel_mapItem] name];
        if (v30)
        {
          v31 = v30;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;
        }

        else
        {
          v32 = 0;
          v34 = 0xE000000000000000;
        }

        aBlock = v32;
        v141 = v34;
        v39 = String.init<A>(_:)();
        v41 = sub_10004DEB8(v39, v40, &v139);

        *(v28 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v25, v26, "[Place Summary] Starting to fetch images for %s", v28, 0xCu);
        sub_10004E3D0(v29);

        v8 = v126;
        v11 = v125;
        v12 = v132;
      }

      else
      {
      }

      v42 = [*&v130[OBJC_IVAR____TtC4Maps34PlaceSummaryPhotoCarouselViewModel_mapItem] _searchResultPhotoCarousel];
      a1 = v127;
      if (!v42)
      {
        __break(1u);
        return;
      }

      v43 = v42;
      sub_1000CE6B8(&qword_10190ABA0, qword_1011E4C20);
      v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v44 >> 62)
      {
        v46 = _CocoaArrayWrapper.endIndex.getter();
        if (!v46)
        {
LABEL_48:

          return;
        }
      }

      else
      {
        v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v46)
        {
          goto LABEL_48;
        }
      }

      v47 = 0;
      v121 = OBJC_IVAR____TtC4Maps27PlaceSummaryImageDownloader_photoCarouselImageCache;
      v135 = v44 & 0xFFFFFFFFFFFFFF8;
      v136 = v44 & 0xC000000000000001;
      v133 = (v111 + 48);
      v134 = (v111 + 56);
      v129 = (v111 + 32);
      v128 = (v111 + 16);
      *&v45 = 136315138;
      v108 = v45;
      v120 = (v111 + 8);
      v106 = v13 + 7;
      v105[1] = v142;
      a2 = a2 / 3.0;
      v123 = v44;
      v122 = v46;
      while (v136)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v48 = (v47 + 1);
        if (__OFADD__(v47, 1))
        {
          goto LABEL_44;
        }

LABEL_26:
        v138 = v48;
        v49 = [objc_opt_self() defaultPhotoOptionsWithAllowSmaller:1];
        v50 = [v13 bestPhotoForFrameSize:v49 displayScale:a2 options:{a2, a3}];

        if (v50)
        {
          v137 = v50;
          v51 = [v50 url];
          if (v51)
          {
            v52 = v51;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v53 = 0;
          }

          else
          {
            v53 = 1;
          }

          (*v134)(v8, v53, 1, v12);
          sub_100102C34(v8, v11);
          if ((*v133)(v11, 1, v12) != 1)
          {
            v54 = *v129;
            (*v129)(a1, v11, v12);
            v55 = *(&v131->super.isa + v121);
            URL._bridgeToObjectiveC()(v131);
            v57 = v56;
            v58 = a1;
            v59 = [v55 objectForKey:v56];

            if (v59)
            {
              v60 = v118;
              swift_beginAccess();
              v61 = v59;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v139 = *v60;
              *v60 = 0x8000000000000000;
              sub_10012B04C(v59, v47, isUniquelyReferenced_nonNull_native);
              v63 = v139;
              *v60 = v139;
              swift_endAccess();
              swift_getKeyPath();
              swift_getKeyPath();
              aBlock = v63;

              static Published.subscript.setter();
              v64 = v119;
              (*v128)(v119, v58, v12);
              v65 = Logger.logObject.getter();
              v66 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v65, v66))
              {
                v67 = swift_slowAlloc();
                v68 = swift_slowAlloc();
                v116 = v65;
                v69 = v64;
                v70 = v68;
                aBlock = v68;
                *v67 = v108;
                v71 = URL.absoluteString.getter();
                v73 = v72;
                v117 = v61;
                v74 = *v120;
                (*v120)(v69, v132);
                v75 = sub_10004DEB8(v71, v73, &aBlock);
                v12 = v132;

                *(v67 + 4) = v75;
                v76 = v116;
                _os_log_impl(&_mh_execute_header, v116, v66, "-- [Place Summary] Using cached image at url %s", v67, 0xCu);
                sub_10004E3D0(v70);

                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                a1 = v127;
                (v74)(v127, v12);
                goto LABEL_40;
              }

              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              v13 = *v120;
              (*v120)(v64, v12);
              (v13)(v58, v12);
              v8 = v126;
              v11 = v125;
              a1 = v58;
            }

            else
            {
              v116 = v54;
              v77 = *v128;
              v78 = v107;
              (*v128)(v107, v58, v12);
              v79 = Logger.logObject.getter();
              v80 = static os_log_type_t.debug.getter();
              v81 = os_log_type_enabled(v79, v80);
              v82 = v120;
              v117 = (v120 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
              if (v81)
              {
                v83 = swift_slowAlloc();
                v114 = v77;
                v84 = v83;
                v85 = v82;
                v86 = swift_slowAlloc();
                aBlock = v86;
                *v84 = v108;
                v87 = URL.absoluteString.getter();
                v89 = v88;
                v115 = *v85;
                (v115)(v78, v132);
                v90 = sub_10004DEB8(v87, v89, &aBlock);
                v12 = v132;

                *(v84 + 4) = v90;
                _os_log_impl(&_mh_execute_header, v79, v80, "- [Place Summary] Starting to fetch image at url %s", v84, 0xCu);
                sub_10004E3D0(v86);
                v91 = v127;

                v77 = v114;
              }

              else
              {
                v91 = v58;

                v115 = *v82;
                (v115)(v78, v12);
              }

              v114 = [objc_opt_self() sharedImageManager];
              URL._bridgeToObjectiveC()(&v143);
              v113 = v92;
              v112 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v93 = v109;
              (v77)(v109, v91, v12);
              v94 = (*(v111 + 80) + 16) & ~*(v111 + 80);
              v95 = &v106[v94] & 0xFFFFFFFFFFFFFFF8;
              v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
              v97 = (v96 + 15) & 0xFFFFFFFFFFFFFFF8;
              v98 = (v97 + 23) & 0xFFFFFFFFFFFFFFF8;
              v99 = swift_allocObject();
              (v116)(v99 + v94, v93, v132);
              *(v99 + v95) = v110;
              *(v99 + v96) = v47;
              v100 = (v99 + v97);
              *v100 = a2;
              v100[1] = a2;
              *(v99 + v98) = v112;
              *(v99 + ((v98 + 15) & 0xFFFFFFFFFFFFFFF8)) = v130;
              v142[2] = sub_100434438;
              v142[3] = v99;
              aBlock = _NSConcreteStackBlock;
              v141 = 1107296256;
              v142[0] = sub_100101634;
              v142[1] = &unk_101618FE0;
              v101 = _Block_copy(&aBlock);

              v12 = v132;

              v102 = v114;
              v103 = v113;
              [v114 loadAppImageAtURL:v113 completionHandler:v101];
              v104 = v101;
              a1 = v127;
              _Block_release(v104);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              (v115)(a1, v12);
LABEL_40:
              v8 = v126;
              v11 = v125;
            }

            v44 = v123;
            v46 = v122;
            goto LABEL_22;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          (*v134)(v11, 1, 1, v12);
        }

        sub_100024F64(v11, &unk_101909B00, &unk_1011E4C10);
LABEL_22:
        ++v47;
        if (v138 == v46)
        {
          goto LABEL_48;
        }
      }

      if (v47 >= *(v135 + 16))
      {
        goto LABEL_45;
      }

      v13 = *(v44 + 8 * v47 + 32);
      swift_unknownObjectRetain();
      v48 = (v47 + 1);
      if (!__OFADD__(v47, 1))
      {
        goto LABEL_26;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      swift_once();
    }
  }

  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100021540(v35, qword_101960018);
  v138 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v138, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v138, v36, "[Place Summary] No view model to fetch photos for.", v37, 2u);
  }

  v38 = v138;
}

void sub_100433334(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11)
{
  v81 = a10;
  v83 = a8;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v77 - v22;
  __chkstk_darwin(v24);
  v26 = &v77 - v25;
  if (a1)
  {
    v27 = v17;
    v80 = a11;
    v28 = a1;
    [v28 size];
    v79 = v28;
    if (v29 <= a2 && ([v28 size], v30 <= a3))
    {
      if (qword_101906728 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_100021540(v56, qword_101960018);
      v57 = v18;
      (*(v18 + 16))(v23, a7, v27);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v78 = v60;
        v82 = swift_slowAlloc();
        aBlock[0] = v82;
        *v60 = 136315138;
        v61 = URL.absoluteString.getter();
        v63 = v62;
        (*(v57 + 8))(v23, v27);
        v64 = sub_10004DEB8(v61, v63, aBlock);

        v65 = v78;
        *(v78 + 1) = v64;
        _os_log_impl(&_mh_execute_header, v58, v59, "- [Place Summary] Finished fetching image at url %s", v65, 0xCu);
        sub_10004E3D0(v82);
      }

      else
      {

        (*(v18 + 8))(v23, v27);
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v67 = v79;
      if (Strong)
      {
        v68 = Strong;
        v69 = *(Strong + OBJC_IVAR____TtC4Maps27PlaceSummaryImageDownloader_photoCarouselImageCache);

        URL._bridgeToObjectiveC()(v70);
        v72 = v71;
        [v69 setObject:v67 forKey:v71];
      }

      v73 = v83;
      swift_beginAccess();
      v74 = v67;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = *(v73 + 16);
      *(v73 + 16) = 0x8000000000000000;
      sub_10012B04C(a1, a9, isUniquelyReferenced_nonNull_native);
      v76 = v85;
      *(v73 + 16) = v85;
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      v86 = v76;

      static Published.subscript.setter();
    }

    else
    {
      [v28 size];
      [v28 size];
      [v28 size];
      [v28 size];
      UIView.annotateView(with:)([v28 size]);
      v32 = v31;
      v34 = v33;
      (*(v18 + 16))(v26, a7, v27);
      v35 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v36 = (v19 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
      v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
      v82 = a9;
      v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      (*(v18 + 32))(v40 + v35, v26, v27);
      v41 = v82;
      *(v40 + v36) = v81;
      v42 = v79;
      *(v40 + v37) = v79;
      *(v40 + v38) = v83;
      *(v40 + v39) = v41;
      *(v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) = v80;
      aBlock[4] = sub_100434530;
      aBlock[5] = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100271778;
      aBlock[3] = &unk_101619030;
      v43 = _Block_copy(aBlock);
      v44 = v42;

      [v44 prepareThumbnailOfSize:v43 completionHandler:{v32, v34}];

      _Block_release(v43);
    }
  }

  else
  {
    v82 = a9;
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100021540(v45, qword_101960018);
    (*(v18 + 16))(v20, a7, v17);
    swift_errorRetain();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      aBlock[0] = v81;
      *v48 = 136315394;
      v50 = URL.absoluteString.getter();
      v52 = v51;
      (*(v18 + 8))(v20, v17);
      v53 = sub_10004DEB8(v50, v52, aBlock);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2112;
      if (a6)
      {
        swift_errorRetain();
        v54 = _swift_stdlib_bridgeErrorToNSError();
        v55 = v54;
      }

      else
      {
        v54 = 0;
        v55 = 0;
      }

      *(v48 + 14) = v54;
      *v49 = v55;
      _os_log_impl(&_mh_execute_header, v46, v47, "- [Place Summary] Couldn't carousel fetch image at url %s error:%@", v48, 0x16u);
      sub_100024F64(v49, &qword_1019144F0, &unk_1011E4A70);

      sub_10004E3D0(v81);
    }

    else
    {

      (*(v18 + 8))(v20, v17);
    }

    swift_beginAccess();
    sub_1004310EC(1, v82);
    swift_endAccess();
  }
}

uint64_t sub_100433B48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a5;
  v51 = a7;
  v47 = a6;
  v48 = a3;
  v49 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v54 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100021540(v17, qword_101960018);
  v18 = *(v12 + 16);
  v18(v16, a2, v11);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = v18;
    v22 = v21;
    v23 = swift_slowAlloc();
    v45 = a2;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    v25 = URL.absoluteString.getter();
    v44 = v13;
    v27 = v26;
    (*(v12 + 8))(v16, v11);
    v28 = sub_10004DEB8(v25, v27, aBlock);
    v13 = v44;

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "-- [Place Summary] Finished resizing image for url %s", v22, 0xCu);
    sub_10004E3D0(v24);
    a2 = v45;

    v18 = v43;
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  sub_100014C84(0, &qword_10190B4F0, OS_dispatch_queue_ptr);
  v45 = static OS_dispatch_queue.main.getter();
  v29 = v46;
  v18(v46, a2, v11);
  v30 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v31 = (v13 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = v49;
  *(v33 + 16) = v48;
  *(v33 + 24) = v34;
  (*(v12 + 32))(v33 + v30, v29, v11);
  v35 = v51;
  *(v33 + v31) = v50;
  *(v33 + v32) = v47;
  *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  aBlock[4] = sub_1004345FC;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101619080;
  v36 = _Block_copy(aBlock);

  v37 = v34;

  v38 = v52;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000DB364();
  sub_1000CE6B8(&unk_10190B500, &unk_1011E4610);
  sub_1000DB3BC();
  v39 = v54;
  v40 = v57;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v41 = v45;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v56 + 8))(v39, v40);
  return (*(v53 + 8))(v38, v55);
}

uint64_t sub_1004340C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC4Maps27PlaceSummaryImageDownloader_photoCarouselImageCache);

    URL._bridgeToObjectiveC()(v12);
    v14 = v13;
    [v11 setObject:a2 forKey:v13];
  }

  swift_beginAccess();
  v15 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_10012B04C(a2, a5, isUniquelyReferenced_nonNull_native);
  *(a4 + 16) = v18;
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

id sub_100434214(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PlaceSummaryImageDownloader();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1004342A4(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100434324(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1004343C0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100434438(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for URL() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100433334(a1, *(v4 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), a2, a3, a4, v4 + v10, *(v4 + v11), *(v4 + v12), *(v4 + ((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100434530(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100433B48(a1, v1 + v4, v9, v10, v11, v12, v13);
}

uint64_t sub_1004345FC()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1004340C0(v5, v6, v0 + v2, v7, v8, v9);
}

id sub_1004346AC(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v3 initWithMapItem:a1];
}

void sub_1004346F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = v6;
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100021540(v10, qword_101960018);
  v11 = *(v5 + 16);
  v11(v9, a1, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v33 = a1;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    v18 = URL.absoluteString.getter();
    v32 = v11;
    v20 = v19;
    (*(v5 + 8))(v9, v4);
    v21 = sub_10004DEB8(v18, v20, aBlock);
    v11 = v32;

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "[Place Summary] Starting to fetch image at url %s.", v15, 0xCu);
    sub_10004E3D0(v17);
    a1 = v33;

    a2 = v34;
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v22 = [objc_opt_self() sharedImageManager];
  URL._bridgeToObjectiveC()(v23);
  v25 = v24;
  v26 = v36;
  v11(v36, a1, v4);
  v27 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v28 = (v35 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v5 + 32))(v29 + v27, v26, v4);
  *(v29 + v28) = a2;
  aBlock[4] = sub_1004355A0;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100101634;
  aBlock[3] = &unk_1016191E8;
  v30 = _Block_copy(aBlock);

  [v22 loadAppImageAtURL:v25 completionHandler:v30];
  _Block_release(v30);
}

void sub_100434AAC(unint64_t a1)
{
  v30 = type metadata accessor for URL();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v4);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
LABEL_21:
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_4:
        v8 = 0;
        v33 = a1 & 0xC000000000000001;
        v24 = v35;
        v27 = (v2 + 8);
        v28 = (v2 + 32);
        v25 = v4;
        v26 = a1;
        v32 = v7;
        do
        {
          if (v33)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v11 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v8 >= *(v31 + 16))
            {
              goto LABEL_20;
            }

            v10 = *(a1 + 8 * v8 + 32);

            v11 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_19:
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          sub_1002438E4(v10 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, v6);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v2 = *v6;
              v13 = Image.init(uiImage:)();
              swift_getKeyPath();
              swift_getKeyPath();
              aBlock[0] = v13;

              static Published.subscript.setter();
            }

            else
            {
              v14 = swift_projectBox();
              v16 = *v14;
              v15 = *(v14 + 8);
              v17 = objc_opt_self();
              v18 = v15;
              v19 = v16;
              v20 = [v17 sharedCache];
              if (!v20)
              {
                __break(1u);
                return;
              }

              v2 = v20;
              v21 = swift_allocObject();
              *(v21 + 16) = v10;
              *(v21 + 24) = v15;
              v35[2] = sub_100435598;
              v35[3] = v21;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              v35[0] = sub_100271778;
              v35[1] = &unk_101619198;
              v22 = _Block_copy(aBlock);
              v23 = v18;

              [v2 getImageForSpec:v19 loadImageOnBackgroundQueue:1 completion:v22];
              _Block_release(v22);

              v4 = v25;
              a1 = v26;
            }

            v7 = v32;
          }

          else
          {
            v9 = v29;
            v2 = v30;
            (*v28)(v29, v6, v30);
            sub_1004346F4(v9, v10);

            (*v27)(v9, v2);
          }

          ++v8;
        }

        while (v11 != v7);
      }
    }
  }
}

void sub_100434EA8(uint64_t a1)
{
  v42 = sub_1000CE6B8(&qword_101914228, &qword_1011F2A90);
  v2 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v33 - v3;
  v40 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v40);
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v6 = swift_allocObject();
    v43 = v6;
    *(v6 + 16) = _swiftEmptyArrayStorage;
    v35 = (v6 + 16);
    v36 = a1;
    v7 = *(a1 + OBJC_IVAR____TtC4Maps33PlaceSummaryStackedImageViewModel_imageSpecs);
    v34 = v2;
    if (v7 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!i)
      {
        break;
      }

      v9 = 0;
      v38 = v7 & 0xFFFFFFFFFFFFFF8;
      v39 = v7 & 0xC000000000000001;
      v37 = v47;
      while (1)
      {
        if (v39)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v38 + 16))
          {
            goto LABEL_27;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [objc_opt_self() sharedCache];
        if (!v13)
        {
          goto LABEL_31;
        }

        v14 = v13;
        v47[2] = sub_10043552C;
        v47[3] = v43;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v47[0] = sub_100271778;
        v47[1] = &unk_101619148;
        v15 = _Block_copy(aBlock);

        [v14 getImageForSpec:v11 loadImageOnBackgroundQueue:0 completion:v15];
        _Block_release(v15);

        ++v9;
        if (v12 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

LABEL_14:

    v16 = v35;
    swift_beginAccess();
    v17 = *v16;
    if (*v16 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v34;
    v20 = _swiftEmptyArrayStorage;
    if (!v18)
    {
      goto LABEL_24;
    }

    v45 = _swiftEmptyArrayStorage;

    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v18 & 0x8000000000000000) == 0)
    {
      v21 = 0;
      v39 = v17 & 0xC000000000000001;
      v22 = (v19 + 32);
      v23 = v17;
      do
      {
        if (v39)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v24 = *(v17 + 8 * v21 + 32);
        }

        v25 = v24;
        ++v21;
        *v5 = v24;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for PlaceSummaryImageViewModel(0);
        v26 = swift_allocObject();
        v27 = OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel__image;
        v44 = 0;
        v28 = v25;
        sub_1000CE6B8(&unk_101918A10, &unk_1011F1D80);
        v29 = v41;
        Published.init(initialValue:)();
        (*v22)(v26 + v27, v29, v42);
        UUID.init()();
        sub_100435534(v5, v26 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type);
        v30 = v26 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius;
        *v30 = 0;
        *(v30 + 8) = 1;
        v31 = v28;
        v32 = Image.init(uiImage:)();
        swift_getKeyPath();
        swift_getKeyPath();
        v44 = v32;

        static Published.subscript.setter();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v17 = v23;
      }

      while (v18 != v21);

      v20 = v45;
LABEL_24:
      swift_getKeyPath();
      swift_getKeyPath();
      v45 = v20;
      static Published.subscript.setter();

      return;
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }
}

id sub_100435400()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  v2 = [v1 traitCollection];

  v3 = [v2 userInterfaceStyle];
  v4 = [v0 mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = objc_allocWithZone(MURouteSnapshotKey);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [v7 initWithIdentifier:isa width:v3 == 2 height:100.0 scale:100.0 padding:v6 darkMode:{10.0, 10.0, 10.0, 10.0}];

  return v9;
}

uint64_t sub_100435534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1004355A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for URL() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100431210(a1, a2, a3, a4, v4 + v10, v11);
}

id CuratedCollectionItemLibraryCoordinator.__allocating_init(initialMapItem:dataOperationsProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_placeItemInLibrary] = 0;
  v5[OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_isAddingToLibrary] = 0;
  *&v5[OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_initialMapItem] = a1;
  *&v5[OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_dataOperationsProvider] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id CuratedCollectionItemLibraryCoordinator.init(initialMapItem:dataOperationsProvider:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_placeItemInLibrary] = 0;
  v2[OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_isAddingToLibrary] = 0;
  *&v2[OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_initialMapItem] = a1;
  *&v2[OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_dataOperationsProvider] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CuratedCollectionItemLibraryCoordinator();
  return objc_msgSendSuper2(&v4, "init");
}

double CuratedCollectionItemLibraryCoordinator.determineSavedState(completion:)(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_initialMapItem);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100492FBC(v5, v6, a1, a2);

  return result;
}

Swift::Void __swiftcall CuratedCollectionItemLibraryCoordinator.addPlaceToLibrary(refinedMapItem:)(MKMapItem refinedMapItem)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&unk_10190BA50, &unk_1011E4800);
  __chkstk_darwin(v4 - 8);
  v6 = &v54 - v5;
  *(v2 + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_isAddingToLibrary) = 1;
  v7 = *(v2 + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_dataOperationsProvider);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100436434;
  *(v9 + 24) = v8;
  *(v9 + 32) = v7;
  *(v9 + 40) = refinedMapItem;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  v10 = v7;
  v11 = refinedMapItem.super.isa;
  v12 = v10;
  v13 = v11;
  swift_retain_n();
  v14 = &selRef__didChangeCenterCoordinate_fromEditLocationMapView_;
  if ([(objc_class *)v13 _geoMapItem])
  {
    swift_unknownObjectRetain();
    v15 = [(objc_class *)v13 _geoMapItemStorageForPersistence];
    v56 = v13;
    v57 = v6;
    v55 = v12;
    if (v15)
    {
      v16 = v15;
      v17 = [v15 userValues];

      if (v17)
      {
        v18 = [v17 name];

        if (v18)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }
    }

    Predicate = type metadata accessor for MapsSyncQueryPredicate();
    v28 = objc_allocWithZone(Predicate);
    v29 = MapsSyncQueryPredicate.init(mapItem:customName:)();
    v30 = static MapsSyncQueryPredicate.mapsFavoritesPredicate(hidden:includeNearbyTransit:)();
    v31 = type metadata accessor for MapsSyncRange();
    v32 = objc_allocWithZone(v31);
    v33 = v29;
    MapsSyncRange.init(offset:limit:)();
    Options = type metadata accessor for MapsSyncQueryOptions();
    v35 = objc_allocWithZone(Options);
    v36 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1011E4FD0;
    *(v37 + 32) = v33;
    *(v37 + 40) = v30;
    v38 = objc_allocWithZone(Predicate);
    v39 = v33;
    v40 = v30;
    MapsSyncQueryPredicate.init(and:)();
    v41 = objc_allocWithZone(v31);
    MapsSyncRange.init(offset:limit:)();
    v42 = objc_allocWithZone(Options);
    v43 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    v44 = type metadata accessor for TaskPriority();
    v45 = v57;
    (*(*(v44 - 8) + 56))(v57, 1, 1, v44);
    v46 = swift_allocObject();
    v46[2] = 0;
    v46[3] = 0;
    v46[4] = v43;
    v46[5] = v36;
    v46[6] = sub_1002F6238;
    v46[7] = v9;
    v47 = v43;
    v48 = v36;

    sub_10020AAE4(0, 0, v45, &unk_101206A90, v46);

    swift_unknownObjectRelease();
  }

  else
  {
    v19 = sub_100491EAC();
    type metadata accessor for CollectionPlaceItem();
    v20 = MapsSyncObject.__allocating_init()();
    v21 = [(objc_class *)v13 name];
    if (v21)
    {
      v22 = v8;
      v23 = v6;
      v24 = v19;
      v25 = v12;
      v26 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = v25;
      v19 = v24;
      v6 = v23;
      v8 = v22;
      v14 = &selRef__didChangeCenterCoordinate_fromEditLocationMapView_;
    }

    dispatch thunk of CollectionPlaceItem.customName.setter();
    v49 = [v13 v14[464]];
    if (v49)
    {
      v50 = [objc_opt_self() mapItemStorageForGEOMapItem:v49];
      dispatch thunk of CollectionPlaceItem.mapItemStorage.setter();
      swift_unknownObjectRelease();
    }

    dispatch thunk of CollectionPlaceItem.placeItemNote.setter();
    v51 = type metadata accessor for TaskPriority();
    (*(*(v51 - 8) + 56))(v6, 1, 1, v51);
    v52 = swift_allocObject();
    v52[2] = 0;
    v52[3] = 0;
    v52[4] = v12;
    v52[5] = v20;
    v52[6] = sub_100436434;
    v52[7] = v8;
    v53 = v12;

    sub_10020AAE4(0, 0, v6, &unk_1011F9AB0, v52);
  }
}

void sub_10043600C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_placeItemInLibrary) = a1;
    v5 = Strong;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v5[OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_isAddingToLibrary] = 0;
  }
}

Swift::Void __swiftcall CuratedCollectionItemLibraryCoordinator.deletePlaceFromLibrary(viewControllerForPresentingAlert:)(UIViewController viewControllerForPresentingAlert)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_placeItemInLibrary);
  if (v2)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRetain();

    sub_10048AC00(v2, viewControllerForPresentingAlert.super.super.isa, sub_100436510, v4);
    swift_unknownObjectRelease();
  }
}

void sub_1004361B8(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a1 & 1) != 0 || a2)
    {
    }

    else
    {
      *&Strong[OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_placeItemInLibrary] = 0;

      swift_unknownObjectRelease();
    }
  }
}

id CuratedCollectionItemLibraryCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CuratedCollectionItemLibraryCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100436394(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_placeItemInLibrary) = a1;
    v6 = Strong;
    swift_unknownObjectRetain();
    v7 = swift_unknownObjectRelease();
    v6[OBJC_IVAR____TtC4Maps39CuratedCollectionItemLibraryCoordinator_isAddingToLibrary] = 0;
    a3(v7);
  }
}

uint64_t sub_10043643C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC40;

  return sub_10048E284(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100436650()
{
  v0 = sub_1000CE6B8(&qword_101911AA0, &qword_1011F0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = objc_opt_self();
  v4 = [v3 labelColor];
  v5 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_1004369AC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100437C38;
  aBlock[3] = &unk_1016193B8;
  v6 = _Block_copy(aBlock);
  v7 = [v5 initWithDynamicProvider:v6];
  _Block_release(v6);

  sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1011E4FD0;
  v9 = [v3 labelColor];
  v10 = [v9 colorWithAlphaComponent:0.16];

  *(v8 + 32) = v10;
  v11 = [v3 labelColor];
  v12 = [v11 colorWithAlphaComponent:0.0];

  *(v8 + 40) = v12;
  v13 = type metadata accessor for BlendMode();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  v14 = type metadata accessor for MapsElevationChartStyle(0);
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gapWidth] = 0x3FF0000000000000;
  *&v15[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barWidth] = 0x4008000000000000;
  *&v15[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barColor] = v4;
  *&v15[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_dotStrokeColor] = v7;
  *&v15[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barHighlightColor] = 0;
  *&v15[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barElapsedColor] = 0;
  *&v15[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gradientColors] = v8;
  sub_100437B60(v2, &v15[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_blendMode]);
  *&v15[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_labelColor] = 0;
  *&v15[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_xAxisFont] = 0;
  *&v15[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridColor] = 0;
  *&v15[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridHighlightColor] = 0;
  *&v15[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridLineWidth] = 0x3FE0000000000000;
  v15[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_contextStyle] = 4;
  v15[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_usesCurrentPosition] = 0;
  v20.receiver = v15;
  v20.super_class = v14;
  v16 = v4;
  v17 = v7;
  v18 = objc_msgSendSuper2(&v20, "init");

  result = sub_100437BD0(v2);
  qword_1019602C8 = v18;
  return result;
}

id sub_1004369AC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_secondarySystemGroupedBackgroundColor;
  if (v1 != 2)
  {
    v3 = &selRef_systemWhiteColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_100436A3C()
{
  v0 = sub_1000CE6B8(&qword_101911AA0, &qword_1011F0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = objc_opt_self();
  v4 = [v3 secondaryLabelColor];
  sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1011E4FD0;
  v6 = [v3 systemBlackColor];
  v7 = [v6 colorWithAlphaComponent:0.16];

  *(v5 + 32) = v7;
  v8 = [v3 systemBlackColor];
  v9 = [v8 colorWithAlphaComponent:0.0];

  *(v5 + 40) = v9;
  v10 = type metadata accessor for BlendMode();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v11 = type metadata accessor for MapsElevationChartStyle(0);
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gapWidth] = 0x3FF0000000000000;
  *&v12[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barWidth] = 0x4000000000000000;
  *&v12[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barColor] = v4;
  *&v12[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_dotStrokeColor] = 0;
  *&v12[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barHighlightColor] = 0;
  *&v12[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barElapsedColor] = 0;
  *&v12[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gradientColors] = v5;
  sub_100437B60(v2, &v12[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_blendMode]);
  *&v12[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_labelColor] = 0;
  *&v12[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_xAxisFont] = 0;
  *&v12[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridColor] = 0;
  *&v12[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridHighlightColor] = 0;
  *&v12[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridLineWidth] = 0x3FF8000000000000;
  v12[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_contextStyle] = 3;
  v12[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_usesCurrentPosition] = 0;
  v16.receiver = v12;
  v16.super_class = v11;
  v13 = v4;
  v14 = objc_msgSendSuper2(&v16, "init");

  result = sub_100437BD0(v2);
  qword_1019602D0 = v14;
  return result;
}

uint64_t sub_100436D14()
{
  v0 = sub_1000CE6B8(&qword_101911AA0, &qword_1011F0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = [objc_opt_self() tertiaryLabelColor];
  v4 = type metadata accessor for BlendMode();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = type metadata accessor for MapsElevationChartStyle(0);
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gapWidth] = 0x3FF0000000000000;
  *&v6[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barWidth] = 0x4000000000000000;
  *&v6[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barColor] = v3;
  *&v6[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_dotStrokeColor] = 0;
  *&v6[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barHighlightColor] = 0;
  *&v6[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barElapsedColor] = 0;
  *&v6[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gradientColors] = 0;
  sub_100437B60(v2, &v6[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_blendMode]);
  *&v6[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_labelColor] = 0;
  *&v6[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_xAxisFont] = 0;
  *&v6[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridColor] = 0;
  *&v6[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridHighlightColor] = 0;
  *&v6[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridLineWidth] = 0x3FF8000000000000;
  v6[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_contextStyle] = 0;
  v6[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_usesCurrentPosition] = 0;
  v10.receiver = v6;
  v10.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v10, "init");

  result = sub_100437BD0(v2);
  qword_1019602D8 = v8;
  return result;
}

uint64_t sub_100436F28()
{
  v0 = sub_1000CE6B8(&qword_101911AA0, &qword_1011F0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = objc_opt_self();
  v4 = [v3 systemTealColor];
  v5 = type metadata accessor for BlendMode();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = [v3 secondaryLabelColor];
  v7 = [v3 systemGray5Color];
  v8 = type metadata accessor for MapsElevationChartStyle(0);
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gapWidth] = 0x3FF0000000000000;
  *&v9[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barWidth] = 0x4000000000000000;
  *&v9[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barColor] = v4;
  *&v9[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_dotStrokeColor] = 0;
  *&v9[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barHighlightColor] = 0;
  *&v9[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barElapsedColor] = 0;
  *&v9[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gradientColors] = 0;
  sub_100437B60(v2, &v9[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_blendMode]);
  *&v9[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_labelColor] = v6;
  *&v9[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_xAxisFont] = 0;
  *&v9[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridColor] = v7;
  *&v9[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridHighlightColor] = 0;
  *&v9[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridLineWidth] = 0x3FF8000000000000;
  v9[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_contextStyle] = 1;
  v9[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_usesCurrentPosition] = 0;
  v15.receiver = v9;
  v15.super_class = v8;
  v10 = v4;
  v11 = v6;
  v12 = v7;
  v13 = objc_msgSendSuper2(&v15, "init");

  result = sub_100437BD0(v2);
  qword_1019602E0 = v13;
  return result;
}

uint64_t sub_1004371A4()
{
  v0 = sub_1000CE6B8(&qword_101911AA0, &qword_1011F0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v22 - v1;
  v3 = objc_opt_self();
  v4 = [v3 systemTealColor];
  v5 = [v3 systemTealColor];
  v6 = [v5 colorWithAlphaComponent:0.5];

  v7 = type metadata accessor for BlendMode();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = [objc_allocWithZone(UIColor) initWithWhite:0.8 alpha:1.0];
  v9 = [objc_opt_self() systemFontOfSize:11.0 weight:UIFontWeightRegular];
  v10 = [objc_allocWithZone(UIColor) initWithWhite:0.8 alpha:1.0];
  v11 = [v3 whiteColor];
  v12 = type metadata accessor for MapsElevationChartStyle(0);
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gapWidth] = 0x3FF0000000000000;
  *&v13[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barWidth] = 0x4010000000000000;
  *&v13[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barColor] = v4;
  *&v13[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_dotStrokeColor] = 0;
  *&v13[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barHighlightColor] = 0;
  *&v13[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barElapsedColor] = v6;
  *&v13[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gradientColors] = 0;
  sub_100437B60(v2, &v13[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_blendMode]);
  *&v13[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_labelColor] = v8;
  *&v13[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_xAxisFont] = v9;
  *&v13[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridColor] = v10;
  *&v13[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridHighlightColor] = v11;
  *&v13[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gridLineWidth] = 0x3FF8000000000000;
  v13[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_contextStyle] = 2;
  v13[OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_usesCurrentPosition] = 1;
  v22.receiver = v13;
  v22.super_class = v12;
  v14 = v4;
  v15 = v6;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = objc_msgSendSuper2(&v22, "init");

  result = sub_100437BD0(v2);
  qword_1019602E8 = v20;
  return result;
}

id sub_1004374EC(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

void *sub_100437568()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_gradientColors);
  if (!v1)
  {
    goto LABEL_16;
  }

  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v2 & 0x8000000000000000) == 0)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          Color.init(_:)();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (v1 + 32);
        do
        {
          v7 = *v6++;
          v8 = v7;
          Color.init(_:)();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      return _swiftEmptyArrayStorage;
    }

    __break(1u);
LABEL_16:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_100437728()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsElevationChartStyle(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MapsElevationChartStyle(uint64_t a1)
{
  result = qword_101921208;
  if (!qword_101921208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100437880(uint64_t a1)
{
  sub_100437960(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100437960(uint64_t a1)
{
  if (!qword_101921218)
  {
    type metadata accessor for BlendMode();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101921218);
    }
  }
}

uint64_t getEnumTagSinglePayload for MapsElevationChartStyle.ContextStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MapsElevationChartStyle.ContextStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100437B0C()
{
  result = qword_101921220;
  if (!qword_101921220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921220);
  }

  return result;
}

uint64_t sub_100437B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101911AA0, &qword_1011F0120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100437BD0(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101911AA0, &qword_1011F0120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100437C38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id CarEVChargingAvailabilityViewController.__allocating_init(viewModal:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC4Maps39CarEVChargingAvailabilityViewController_viewModal] = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
  swift_unknownObjectWeakAssign();

  return v5;
}

id CarEVChargingAvailabilityViewController.init(viewModal:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC4Maps39CarEVChargingAvailabilityViewController_viewModal] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CarEVChargingAvailabilityViewController();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
  swift_unknownObjectWeakAssign();

  return v4;
}

Swift::Void __swiftcall CarEVChargingAvailabilityViewController.loadView()()
{
  type metadata accessor for CarEVChargingAvailabilityView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setView:v1];
}

Swift::Void __swiftcall CarEVChargingAvailabilityViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CarEVChargingAvailabilityViewController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for CarEVChargingAvailabilityView();
    if (swift_dynamicCastClass())
    {

      sub_100438078(v3);
    }

    else
    {
    }
  }
}

void sub_100438078(uint64_t a1)
{
  v80 = sub_1000CE6B8(&unk_10190EEC0, &unk_1011EC630);
  v75 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v78 = &v70 - v4;
  __chkstk_darwin(v5);
  v77 = &v70 - v6;
  __chkstk_darwin(v7);
  v92 = &v70 - v8;
  v83 = sub_1000CE6B8(&qword_1019212F0, &qword_101206C60);
  v91 = *(v83 - 8);
  __chkstk_darwin(v83 - 8);
  v74 = (&v70 - v9);
  v10 = sub_1000CE6B8(&qword_1019212F8, &qword_101206C68);
  __chkstk_darwin(v10 - 8);
  v82 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v81 = &v70 - v13;
  v14 = sub_100438D68();
  v15 = [v14 arrangedSubviews];

  sub_100014C84(0, &qword_10190CA10, UIView_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_3:
      if (v17 < 1)
      {
        goto LABEL_27;
      }

      v18 = 0;
      v19 = OBJC_IVAR____TtC4Maps29CarEVChargingAvailabilityView____lazy_storage___stackView;
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v20 = *(v16 + 8 * v18 + 32);
        }

        v21 = v20;
        ++v18;
        [*(v89 + v19) _maps_removeArrangedSubview:v20];
      }

      while (v17 != v18);
    }
  }

  v23 = v82;
  v22 = v83;
  v24 = v81;
  v72 = *(a1 + 16);
  if (!v72)
  {
    return;
  }

  v25 = 0;
  v71 = a1 + 32;
  v26 = OBJC_IVAR____TtC4Maps29CarEVChargingAvailabilityView____lazy_storage___stackView;
  v86 = (v91 + 48);
  v87 = (v91 + 56);
  v76 = xmmword_1011E4FD0;
LABEL_13:
  v27 = v71 + 24 * v25;
  v29 = *(v27 + 8);
  v28 = *(v27 + 16);
  v88 = v28;

  if (v29)
  {

    v30 = sub_100439E14();
    v31 = String._bridgeToObjectiveC()();
    [v30 setText:v31];

    v32 = v89;
    [*(v89 + v26) addArrangedSubview:v30];
    [*(v32 + v26) setCustomSpacing:v30 afterView:4.0];

    v28 = v88;
  }

  v73 = v25 + 1;
  v33 = *(v28 + 16);

  v34 = 0;
  v84 = v33;
  v85 = v29;
  while (1)
  {
    if (v34 == v33)
    {
      v35 = 1;
      v36 = v33;
      goto LABEL_22;
    }

    if (v34 >= *(v28 + 16))
    {
      break;
    }

    v36 = v34 + 1;
    v37 = v74;
    v38 = v28 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v34;
    v39 = *(v22 + 48);
    *v74 = v34;
    sub_10043A07C(v38, v37 + v39);
    sub_1000F11C4(v37, v23, &qword_1019212F0, &qword_101206C60);
    v35 = 0;
LABEL_22:
    (*v87)(v23, v35, 1, v22);
    sub_1000F11C4(v23, v24, &qword_1019212F8, &qword_101206C68);
    if ((*v86)(v24, 1, v22) == 1)
    {
      swift_bridgeObjectRelease_n();

      v25 = v73;
      if (v73 == v72)
      {
        return;
      }

      goto LABEL_13;
    }

    v90 = *v24;
    v91 = v36;
    v40 = v24 + *(v22 + 48);
    v41 = v80;
    v42 = *&v40[*(v80 + 48)];
    v43 = type metadata accessor for AttributedString();
    v44 = *(v43 - 8);
    v45 = *(v44 + 32);
    v46 = v26;
    v47 = v92;
    v48 = v77;
    v45(v77, v40, v43);
    v49 = *(v41 + 48);
    v50 = v47;
    v51 = v48;
    v52 = v47;
    v26 = v46;
    v45(v50, v51, v43);
    *(v52 + v49) = v42;
    v53 = v78;
    sub_10043A07C(v52, v78);

    v54 = v79;
    sub_10043A07C(v52, v79);
    v55 = *(v54 + *(v41 + 48));
    v56 = objc_allocWithZone(type metadata accessor for CarEVChargingRowView(0));
    v57 = sub_100439518(v53, v55);
    (*(v44 + 8))(v54, v43);
    v58 = v57;
    [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
    v59 = v89;
    [*(v89 + v46) addArrangedSubview:v58];
    v60 = objc_opt_self();
    sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
    v61 = swift_allocObject();
    *(v61 + 16) = v76;
    v62 = [v58 leadingAnchor];
    v63 = [*(v59 + v46) leadingAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];

    *(v61 + 32) = v64;
    v65 = [v58 trailingAnchor];

    v66 = [*(v59 + v46) trailingAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];

    *(v61 + 40) = v67;
    sub_100014C84(0, &qword_10190B720, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v69 = v60;
    v28 = v88;
    [v69 activateConstraints:isa];

    if (v90 == *(v28 + 16) - 1)
    {
      [*(v59 + v46) setCustomSpacing:v58 afterView:8.0];

      sub_10043A0EC(v92);
    }

    else
    {
      sub_10043A0EC(v92);
    }

    v23 = v82;
    v22 = v83;
    v24 = v81;
    v33 = v84;
    v34 = v91;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void CarEVChargingAvailabilityViewController.evChargingViewModelDidUpdate(_:)()
{
  v2 = [v0 view];
  if (v2)
  {
    type metadata accessor for CarEVChargingAvailabilityView();
    if (swift_dynamicCastClass())
    {

      sub_100438078(v1);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CarEVChargingAvailabilityViewController.configureForModalPresentation()()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setDirectionalLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
  }

  else
  {
    __break(1u);
  }
}

id CarEVChargingAvailabilityViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarEVChargingAvailabilityViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100438D68()
{
  v1 = OBJC_IVAR____TtC4Maps29CarEVChargingAvailabilityView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps29CarEVChargingAvailabilityView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps29CarEVChargingAvailabilityView____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) init];
    [v4 setAxis:1];
    [v4 setSpacing:2.0];
    [v4 setAlignment:1];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setLayoutMarginsRelativeArrangement:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100438E40()
{
  v1 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E5C00;
  v3 = sub_100438D68();
  v4 = [v3 leadingAnchor];

  v5 = [v0 layoutMarginsGuide];
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor:v6];
  *(v2 + 32) = v7;
  v8 = OBJC_IVAR____TtC4Maps29CarEVChargingAvailabilityView____lazy_storage___stackView;
  v9 = [*&v0[OBJC_IVAR____TtC4Maps29CarEVChargingAvailabilityView____lazy_storage___stackView] topAnchor];
  v10 = [v0 layoutMarginsGuide];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v2 + 40) = v12;
  v13 = [*&v0[v8] trailingAnchor];
  v14 = [v0 layoutMarginsGuide];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v2 + 48) = v16;
  v17 = [*&v0[v8] bottomAnchor];
  v18 = [v0 layoutMarginsGuide];
  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintLessThanOrEqualToAnchor:v19];
  *(v2 + 56) = v20;
  sub_100014C84(0, &qword_10190B720, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:isa];
}

void CarEVChargingAvailabilityView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC4Maps29CarEVChargingAvailabilityView____lazy_storage___stackView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10043920C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityIdentifier:v1];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v2) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v2];
  LODWORD(v3) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v3];
  v4 = [objc_opt_self() _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
  [v0 setFont:v4];

  v5 = [objc_opt_self() labelColor];
  [v0 setTextColor:v5];

  return v0;
}

id sub_100439374(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1004393D4()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityIdentifier:v1];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v2) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v2];
  LODWORD(v3) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v3];
  v4 = [objc_opt_self() _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
  [v0 setFont:v4];

  [v0 setTextAlignment:2];
  return v0;
}

char *sub_100439518(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC4Maps20CarEVChargingRowView____lazy_storage___leadingLabel] = 0;
  *&v3[OBJC_IVAR____TtC4Maps20CarEVChargingRowView____lazy_storage___trailingLabel] = 0;
  v12 = *(v8 + 16);
  v12(&v3[OBJC_IVAR____TtC4Maps20CarEVChargingRowView_leadingText], a1, v7, v9);
  *&v3[OBJC_IVAR____TtC4Maps20CarEVChargingRowView_trailingText] = a2;
  v23.receiver = v3;
  v23.super_class = ObjectType;
  v22 = a2;
  v13 = objc_msgSendSuper2(&v23, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v13 setDirectionalLayoutMargins:{0.0, 8.0, 0.0, 8.0}];
  v14 = String._bridgeToObjectiveC()();
  [v13 setAccessibilityIdentifier:v14];

  v15 = sub_100439374(&OBJC_IVAR____TtC4Maps20CarEVChargingRowView____lazy_storage___leadingLabel, sub_10043920C);
  [v13 addSubview:v15];

  v16 = sub_100439374(&OBJC_IVAR____TtC4Maps20CarEVChargingRowView____lazy_storage___trailingLabel, sub_1004393D4);
  [v13 addSubview:v16];

  sub_100439818();
  v17 = *&v13[OBJC_IVAR____TtC4Maps20CarEVChargingRowView____lazy_storage___leadingLabel];
  sub_100014C84(0, &qword_10190EED0, NSAttributedString_ptr);
  (v12)(v11, &v13[OBJC_IVAR____TtC4Maps20CarEVChargingRowView_leadingText], v7);
  v18 = v17;
  v19 = NSAttributedString.init(_:)();
  [v18 setAttributedText:v19];

  [*&v13[OBJC_IVAR____TtC4Maps20CarEVChargingRowView____lazy_storage___trailingLabel] setAttributedText:*&v13[OBJC_IVAR____TtC4Maps20CarEVChargingRowView_trailingText]];
  (*(v8 + 8))(a1, v7);

  return v13;
}

void sub_100439818()
{
  v27 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101206BB0;
  v2 = sub_100439374(&OBJC_IVAR____TtC4Maps20CarEVChargingRowView____lazy_storage___leadingLabel, sub_10043920C);
  v3 = [v2 leadingAnchor];

  v4 = [v0 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC4Maps20CarEVChargingRowView____lazy_storage___leadingLabel;
  v7 = [*&v0[OBJC_IVAR____TtC4Maps20CarEVChargingRowView____lazy_storage___leadingLabel] topAnchor];
  v8 = [v0 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v1 + 40) = v9;
  v10 = [*&v0[v6] bottomAnchor];
  v11 = [v0 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v1 + 48) = v12;
  v13 = [*&v0[v6] trailingAnchor];
  v14 = sub_100439374(&OBJC_IVAR____TtC4Maps20CarEVChargingRowView____lazy_storage___trailingLabel, sub_1004393D4);
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintLessThanOrEqualToAnchor:v15 constant:8.0];
  *(v1 + 56) = v16;
  v17 = OBJC_IVAR____TtC4Maps20CarEVChargingRowView____lazy_storage___trailingLabel;
  v18 = [*&v0[OBJC_IVAR____TtC4Maps20CarEVChargingRowView____lazy_storage___trailingLabel] trailingAnchor];
  v19 = [v0 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v1 + 64) = v20;
  v21 = [*&v0[v17] topAnchor];
  v22 = [v0 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v1 + 72) = v23;
  v24 = [*&v0[v17] bottomAnchor];
  v25 = [v0 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v1 + 80) = v26;
  sub_100014C84(0, &qword_10190B720, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];
}

uint64_t type metadata accessor for CarEVChargingRowView(uint64_t a1)
{
  result = qword_1019212D8;
  if (!qword_1019212D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100439D6C(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for AttributedString();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_100439E14()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityIdentifier:v1];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v2) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v2];
  LODWORD(v3) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v3];
  v4 = [objc_opt_self() _mapsCar_fontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightBold];
  [v0 setFont:v4];

  v5 = [objc_opt_self() labelColor];
  [v0 setTextColor:v5];

  [v0 setTextAlignment:0];
  return v0;
}

id sub_100439F8C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC4Maps29CarEVChargingAvailabilityView____lazy_storage___stackView] = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v6, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v3 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v3];

  [v2 setDirectionalLayoutMargins:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
  v4 = sub_100438D68();
  [v2 addSubview:v4];

  sub_100438E40();
  return v2;
}

uint64_t sub_10043A07C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190EEC0, &unk_1011EC630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10043A0EC(uint64_t a1)
{
  v2 = sub_1000CE6B8(&unk_10190EEC0, &unk_1011EC630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10043A180@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a3;
  v77 = sub_1000CE6B8(&qword_101921318, &qword_101206D18);
  __chkstk_darwin(v77);
  v71 = &v62 - v5;
  v75 = sub_1000CE6B8(&qword_101921320, &qword_101206D20);
  __chkstk_darwin(v75);
  v76 = &v62 - v6;
  v82 = sub_1000CE6B8(&qword_101921328, &qword_101206D28);
  __chkstk_darwin(v82);
  v78 = &v62 - v7;
  v74 = sub_1000CE6B8(&qword_101921330, &qword_101206D30);
  __chkstk_darwin(v74);
  v70 = (&v62 - v8);
  v9 = sub_1000CE6B8(&qword_101921338, &qword_101206D38);
  v68 = *(v9 - 8);
  v69 = v9;
  __chkstk_darwin(v9);
  v65 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v62 - v12;
  v64 = sub_1000CE6B8(&qword_10191D860, &qword_1011E5510);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v62 - v15;
  v67 = sub_1000CE6B8(&qword_101916E30, &qword_1011F6B88);
  __chkstk_darwin(v67);
  v72 = (&v62 - v17);
  v79 = sub_1000CE6B8(&qword_101921340, &qword_101206D40);
  __chkstk_darwin(v79);
  v81 = &v62 - v18;
  v19 = sub_1000CE6B8(&qword_101921348, &qword_101206D48);
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  v80 = sub_1000CE6B8(&qword_101921350, &qword_101206D50);
  __chkstk_darwin(v80);
  v66 = &v62 - v22;
  v23 = a1;
  v85 = a1;
  v86 = a2;
  v24 = a2;
  sub_1000CE6B8(&qword_101921310, &qword_101206D10);
  State.wrappedValue.getter();
  v25 = v84;
  swift_getKeyPath();
  v85 = v25;
  sub_10043D44C(&qword_10191AE88, type metadata accessor for ARPHistoryViewModel, &unk_1011FCEE0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = *(v25 + 16);
  v27 = *(v25 + 24);
  sub_100359D28(v26, *(v25 + 24));

  if (v27)
  {
    if (v27 == 1)
    {
      v73 = &v62;
      __chkstk_darwin(v28);
      sub_1000CE6B8(&qword_101921358, &qword_101206D80);
      sub_10043CA84(&qword_101921360, &qword_101921358, &qword_101206D80, sub_10043C92C);
      v29 = v71;
      List<>.init(content:)();
      sub_100359D3C(v26, 1);
      v30 = static Animation.default.getter();
      v85 = v23;
      v86 = v24;
      State.wrappedValue.getter();
      v31 = v84;
      swift_getKeyPath();
      v85 = v31;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v32 = *(v31 + 32);

      v33 = (v29 + *(sub_1000CE6B8(&qword_1019213F8, &qword_101206DF0) + 36));
      *v33 = v30;
      v33[1] = v32;
      v34 = &qword_101921318;
      v35 = &qword_101206D18;
      sub_1000D2DFC(v29, v76, &qword_101921318, &qword_101206D18);
      swift_storeEnumTagMultiPayload();
      sub_1000414C8(&qword_101921400, &qword_101921330, &qword_101206D30, &protocol conformance descriptor for TupleView<A>);
      sub_10043CE28();
      v36 = v78;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v36, v81, &qword_101921328, &qword_101206D28);
      swift_storeEnumTagMultiPayload();
      sub_10043CF98();
      sub_10043D07C();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v36, &qword_101921328, &qword_101206D28);
      v37 = v29;
    }

    else if (v26)
    {
      v49 = static HorizontalAlignment.center.getter();
      v50 = v72;
      *v72 = v49;
      v50[1] = 0;
      *(v50 + 16) = 0;
      v51 = v50 + *(sub_1000CE6B8(&unk_101916E80, &unk_1011F6BD8) + 44);
      ProgressView<>.init<>()();
      v52 = v63;
      v53 = *(v63 + 16);
      v54 = v62;
      v55 = v64;
      v53(v62, v16, v64);
      *v51 = 0;
      v51[8] = 1;
      v56 = sub_1000CE6B8(&qword_10190A408, &qword_1011F0DD0);
      v53(&v51[*(v56 + 48)], v54, v55);
      v57 = &v51[*(v56 + 64)];
      *v57 = 0;
      v57[8] = 1;
      v58 = *(v52 + 8);
      v58(v16, v55);
      v58(v54, v55);
      v34 = &qword_101916E30;
      v35 = &qword_1011F6B88;
      v59 = v72;
      sub_1000D2DFC(v72, v21, &qword_101916E30, &qword_1011F6B88);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_101921438, &qword_10120A940);
      sub_1000414C8(&qword_101921430, &qword_101921438, &qword_10120A940, &protocol conformance descriptor for TupleView<A>);
      sub_1000414C8(&qword_101916EB8, &qword_101916E30, &qword_1011F6B88, &protocol conformance descriptor for VStack<A>);
      v60 = v66;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v60, v81, &qword_101921350, &qword_101206D50);
      swift_storeEnumTagMultiPayload();
      sub_10043CF98();
      sub_10043D07C();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v60, &qword_101921350, &qword_101206D50);
      v37 = v59;
    }

    else
    {
      *v21 = 0;
      v21[8] = 1;
      *(v21 + 2) = 0;
      v21[24] = 1;
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_101921438, &qword_10120A940);
      sub_1000414C8(&qword_101921430, &qword_101921438, &qword_10120A940, &protocol conformance descriptor for TupleView<A>);
      sub_1000414C8(&qword_101916EB8, &qword_101916E30, &qword_1011F6B88, &protocol conformance descriptor for VStack<A>);
      v61 = v66;
      _ConditionalContent<>.init(storage:)();
      v34 = &qword_101921350;
      v35 = &qword_101206D50;
      sub_1000D2DFC(v61, v81, &qword_101921350, &qword_101206D50);
      swift_storeEnumTagMultiPayload();
      sub_10043CF98();
      sub_10043D07C();
      _ConditionalContent<>.init(storage:)();
      v37 = v61;
    }

    return sub_100024F64(v37, v34, v35);
  }

  else
  {
    __chkstk_darwin(v28);
    sub_1000CE6B8(&qword_101921448, &qword_101206E00);
    sub_1000414C8(&qword_101921450, &qword_101921448, &qword_101206E00, &protocol conformance descriptor for TupleView<A>);
    v38 = v73;
    ContentUnavailableView.init(label:description:actions:)();
    v39 = v68;
    v40 = v69;
    v41 = *(v68 + 16);
    v42 = v65;
    v41(v65, v38, v69);
    v43 = v70;
    *v70 = 0;
    *(v43 + 8) = 1;
    v44 = sub_1000CE6B8(&qword_101921458, &qword_101206E08);
    v41((v43 + *(v44 + 48)), v42, v40);
    v45 = v43 + *(v44 + 64);
    *v45 = 0;
    *(v45 + 8) = 1;
    v46 = *(v39 + 8);
    v46(v42, v40);
    sub_1000D2DFC(v43, v76, &qword_101921330, &qword_101206D30);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_101921400, &qword_101921330, &qword_101206D30, &protocol conformance descriptor for TupleView<A>);
    sub_10043CE28();
    v47 = v78;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v47, v81, &qword_101921328, &qword_101206D28);
    swift_storeEnumTagMultiPayload();
    sub_10043CF98();
    sub_10043D07C();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v47, &qword_101921328, &qword_101206D28);
    sub_100024F64(v43, &qword_101921330, &qword_101206D30);
    return (v46)(v73, v40);
  }
}

uint64_t sub_10043AEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v76 = a2;
  v77 = a3;
  v4 = a1;
  v82 = a4;
  v5 = sub_1000CE6B8(&qword_101921460, &qword_101206E10);
  v86 = *(v5 - 8);
  v87 = v5;
  __chkstk_darwin(v5);
  v78 = &v75 - v6;
  v7 = sub_1000CE6B8(&qword_101921468, &qword_101206E18);
  __chkstk_darwin(v7 - 8);
  v88 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v89 = &v75 - v10;
  v11 = sub_10043B4EC(v4);
  if (v12)
  {
    v90._countAndFlagsBits = v11;
    v90._object = v12;
    sub_1000E5580();
    v13 = Text.init<A>(_:)();
    v15 = v14;
    v16 = v4;
    v18 = v17;
    static Font.subheadline.getter();
    v19 = Text.font(_:)();
    v21 = v20;
    v23 = v22;

    sub_1000F0A40(v13, v15, v18 & 1);

    static Font.Weight.bold.getter();
    v24 = Text.fontWeight(_:)();
    v26 = v25;
    LOBYTE(v13) = v27;
    v29 = v28;
    sub_1000F0A40(v19, v21, v23 & 1);

    v84 = v26;
    v85 = v24;
    v30 = v26;
    v4 = v16;
    v81 = v13 & 1;
    sub_1001C8AFC(v24, v30, v13 & 1);
    v83 = v29;
  }

  else
  {
    v84 = 0;
    v85 = 0;
    v81 = 0;
    v83 = 0;
  }

  v31 = sub_10043B664(v4);
  if (v32)
  {
    v90._countAndFlagsBits = v31;
    v90._object = v32;
    sub_1000E5580();
    v33 = Text.init<A>(_:)();
    v35 = v34;
    v36 = v4;
    v38 = v37;
    static Font.subheadline.getter();
    v39 = Text.font(_:)();
    v41 = v40;
    v43 = v42;

    v44 = v38 & 1;
    v4 = v36;
    sub_1000F0A40(v33, v35, v44);

    LODWORD(v90._countAndFlagsBits) = static HierarchicalShapeStyle.secondary.getter();
    v45 = Text.foregroundStyle<A>(_:)();
    v47 = v46;
    LOBYTE(v35) = v48;
    v50 = v49;
    sub_1000F0A40(v39, v41, v43 & 1);

    v51 = v35 & 1;
    v52 = v45;
    v53 = v47;
    v79 = v51;
    sub_1001C8AFC(v45, v47, v51);
    v80 = v50;
  }

  else
  {
    v52 = 0;
    v53 = 0;
    v79 = 0;
    v80 = 0;
  }

  v54 = v89;
  v55 = v87;
  if (v4 == 2)
  {
    v56 = 1;
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v91._object = 0x80000001012382F0;
    v57._countAndFlagsBits = 0x73676E6974746553;
    v58._object = 0x80000001012382C0;
    v91._countAndFlagsBits = 0xD0000000000000A1;
    v58._countAndFlagsBits = 0xD000000000000021;
    v57._object = 0xE800000000000000;
    v90 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, qword_1019600D8, v57, v91);
    v59 = swift_allocObject();
    v60 = v77;
    *(v59 + 16) = v76;
    *(v59 + 24) = v60;
    sub_1000E5580();

    v61 = v78;
    Button<>.init<A>(_:action:)();
    v62 = static Font.subheadline.getter();
    KeyPath = swift_getKeyPath();
    v64 = (v61 + *(v55 + 36));
    *v64 = KeyPath;
    v64[1] = v62;
    sub_1000F11C4(v61, v54, &qword_101921460, &qword_101206E10);
    v56 = 0;
  }

  (*(v86 + 56))(v54, v56, 1, v55);
  v65 = v88;
  sub_1000D2DFC(v54, v88, &qword_101921468, &qword_101206E18);
  v66 = v84;
  v67 = v85;
  v68 = v81;
  v69 = v82;
  *v82 = v85;
  v69[1] = v66;
  v70 = v83;
  v69[2] = v68;
  v69[3] = v70;
  v69[4] = v52;
  v69[5] = v53;
  v72 = v79;
  v71 = v80;
  v69[6] = v79;
  v69[7] = v71;
  v73 = sub_1000CE6B8(&qword_101921470, &qword_101206E50);
  sub_1000D2DFC(v65, v69 + *(v73 + 64), &qword_101921468, &qword_101206E18);
  sub_10034A91C(v67, v66, v68, v70);
  sub_10034A91C(v52, v53, v72, v71);
  sub_10034A960(v52, v53, v72, v71);
  sub_10034A960(v67, v66, v68, v70);
  sub_100024F64(v89, &qword_101921468, &qword_101206E18);
  sub_100024F64(v65, &qword_101921468, &qword_101206E18);
  sub_10034A960(v52, v53, v72, v71);
  return sub_10034A960(v67, v66, v68, v70);
}

uint64_t sub_10043B4EC(char a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  if (a1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v2 = qword_1019600D8;
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v2 = qword_1019600D8;
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v7;
}

uint64_t sub_10043B664(char a1)
{
  if (a1 == 2)
  {
    return 0xD00000000000002FLL;
  }

  if (a1)
  {
    if (qword_101906768 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (qword_101906768 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:
  v2 = qword_1019600D8;
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v7;
}

double sub_10043B83C(uint64_t a1, uint64_t a2)
{
  sub_1000CE6B8(&qword_101921310, &qword_101206D10);
  v2 = State.wrappedValue.getter();
  sub_100354734(v2);

  return result;
}

uint64_t sub_10043B894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_1000CE6B8(&qword_101921478, &qword_101206E58);
  sub_1000CE6B8(&qword_101921370, &qword_101206D88);
  sub_1000414C8(&qword_101921480, &qword_101921478, &qword_101206E58, &protocol conformance descriptor for [A]);
  sub_10043C92C();
  sub_10043D150();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10043B9C0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v26 = a4;
  v25 = sub_1000CE6B8(&qword_1019213A8, &qword_101206DA0);
  __chkstk_darwin(v25);
  v24 = &v19 - v7;
  v8 = sub_1000CE6B8(&qword_10190B038, &qword_1011E65F0);
  __chkstk_darwin(v8 - 8);
  v22 = &v19 - v9;
  v10 = type metadata accessor for SectionHeaderViewModel.Size();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SectionHeaderViewModel();
  __chkstk_darwin(v14 - 8);
  v23 = sub_1000CE6B8(&qword_10190AFC8, &qword_1011E65B0);
  __chkstk_darwin(v23);
  v15 = *(a1 + 1);
  v16 = a1[16];
  v27 = *a1;
  v28 = v15;
  v29 = v16;
  v30 = a2;
  v31 = a3;
  sub_10043D210(v27);
  (*(v11 + 104))(v13, enum case for SectionHeaderViewModel.Size.small(_:), v10);
  v17 = type metadata accessor for SectionHeaderViewModel.ActionType();
  (*(*(v17 - 8) + 56))(v22, 1, 1, v17);
  SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
  SectionHeader.init(model:)();
  sub_10043BF7C(v16, v20, v21, v24);
  sub_1000CE6B8(&qword_101921390, &qword_101206D98);
  sub_1001097F8();
  sub_10043CA84(&qword_101921388, &qword_101921390, &qword_101206D98, sub_10043CB00);
  sub_10043CB54();
  return Section<>.init(header:footer:content:)();
}

uint64_t sub_10043BD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;

  sub_1000CE6B8(&qword_101915278, &qword_1011F46F0);
  sub_1000414C8(&qword_101921490, &qword_101915278, &qword_1011F46F0, &protocol conformance descriptor for [A]);
  sub_10043CB00();
  sub_10043D44C(&qword_10191AD20, sub_100355C48, &protocol conformance descriptor for UGCRefinedReviewedPlace);
  return ForEach<>.init(_:content:)();
}

double sub_10043BE90@<D0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v7;
  *a4 = v7;
  a4[1] = sub_10043D494;
  a4[2] = v8;

  v9 = v7;

  return result;
}

double sub_10043BF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000CE6B8(&qword_101921310, &qword_101206D10);
  State.wrappedValue.getter();
  sub_1003544A8(a3);

  return result;
}

uint64_t sub_10043BF7C@<X0>(char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for AttributedString();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000CE6B8(&qword_1019213B8, &qword_101206DA8);
  v12.n128_f64[0] = __chkstk_darwin(v10);
  v14 = &v30 - v13;
  if (a2)
  {
    v34 = v11;
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v37._object = 0x80000001012385B0;
    v15._object = 0x8000000101238510;
    v16._countAndFlagsBits = 0xD00000000000006BLL;
    v16._object = 0x8000000101238540;
    v37._countAndFlagsBits = 0xD000000000000110;
    v15._countAndFlagsBits = 0xD00000000000002CLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, qword_1019600D8, v16, v37);
    AttributedString.init(markdown:fallback:)();
    v17 = Text.init(_:)();
    v31 = v18;
    v32 = v17;
    HIDWORD(v30) = v19;
    v33 = v20;
    v21 = static Color.accentColor.getter();
    KeyPath = swift_getKeyPath();
    v35 = v21;
    v23 = AnyShapeStyle.init<A>(_:)();
    v24 = swift_getKeyPath();
    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    *(v25 + 24) = a4;
    v26 = &v14[*(v10 + 36)];
    sub_1000CE6B8(&qword_1019213F0, &qword_101206DC0);

    OpenURLAction.init(handler:)();
    *v26 = v24;
    v27 = v31;
    *v14 = v32;
    *(v14 + 1) = v27;
    v14[16] = BYTE4(v30) & 1;
    *(v14 + 3) = v33;
    *(v14 + 4) = KeyPath;
    *(v14 + 5) = v23;
    sub_1000F11C4(v14, a5, &qword_1019213B8, &qword_101206DA8);
    return (*(v34 + 56))(a5, 0, 1, v10);
  }

  else
  {
    v29 = *(v11 + 56);

    return v29(a5, 1, 1, v10, v12);
  }
}

uint64_t sub_10043C2BC(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.openURL.setter();
}

uint64_t sub_10043C384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000CE6B8(&qword_101921310, &qword_101206D10);
  v3 = State.wrappedValue.getter();
  sub_1003545F4(v3);

  return static OpenURLAction.Result.handled.getter();
}

uint64_t sub_10043C3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v25 = a1;
  v26 = a3;
  v3 = type metadata accessor for CardHeaderSize();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&unk_101910FC0, &unk_1011EBBE0);
  __chkstk_darwin(v7 - 8);
  v9 = v23 - v8;
  v10 = type metadata accessor for LeadingCardHeaderViewModel();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v23 - v15;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v30._object = 0x8000000101238260;
  v17._countAndFlagsBits = 0xD000000000000021;
  v17._object = 0x8000000101238210;
  v18._object = 0x8000000101238240;
  v30._countAndFlagsBits = 0xD000000000000056;
  v18._countAndFlagsBits = 0xD000000000000012;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, qword_1019600D8, v18, v30);
  v23[1] = v19._object;
  v23[2] = v19._countAndFlagsBits;
  v20 = type metadata accessor for MapsDesignAccessibilityString();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  (*(v4 + 104))(v6, enum case for CardHeaderSize.large(_:), v3);
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_1000CE6B8(&qword_10191D770, &qword_1011E52E0);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  *(v21 + 24) = v24;

  static CardButtonViewModel.close(tintColor:enabled:action:)();

  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  (*(v11 + 16))(v13, v16, v10);
  LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
  return (*(v11 + 8))(v16, v10);
}

double sub_10043C814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000CE6B8(&qword_101921310, &qword_101206D10);
  v3 = State.wrappedValue.getter();
  sub_100354874(v3);

  return result;
}

uint64_t sub_10043C86C@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = sub_1000CE6B8(&qword_101921300, &qword_101206D00);
  sub_10043A180(v5, v4, a2 + *(v6 + 44));
  v7 = a2 + *(sub_1000CE6B8(&qword_101921308, &qword_101206D08) + 36);
  sub_10043C3E8(v5, v4, v7);
  result = sub_1000CE6B8(&qword_101910FB8, &qword_1011EF300);
  *(v7 + *(result + 36)) = 1;
  return result;
}

unint64_t sub_10043C92C()
{
  result = qword_101921368;
  if (!qword_101921368)
  {
    sub_1000D6664(&qword_101921370, &qword_101206D88);
    sub_10043C9B8();
    sub_1000F05A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921368);
  }

  return result;
}

unint64_t sub_10043C9B8()
{
  result = qword_101921378;
  if (!qword_101921378)
  {
    sub_1000D6664(&qword_101921380, &qword_101206D90);
    sub_1001097F8();
    sub_10043CA84(&qword_101921388, &qword_101921390, &qword_101206D98, sub_10043CB00);
    sub_10043CB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921378);
  }

  return result;
}

uint64_t sub_10043CA84(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10043CB00()
{
  result = qword_101921398;
  if (!qword_101921398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921398);
  }

  return result;
}

unint64_t sub_10043CB54()
{
  result = qword_1019213A0;
  if (!qword_1019213A0)
  {
    sub_1000D6664(&qword_1019213A8, &qword_101206DA0);
    sub_10043CBD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019213A0);
  }

  return result;
}

unint64_t sub_10043CBD8()
{
  result = qword_1019213B0;
  if (!qword_1019213B0)
  {
    sub_1000D6664(&qword_1019213B8, &qword_101206DA8);
    sub_10043CC90();
    sub_1000414C8(&qword_1019213E8, &qword_1019213F0, &qword_101206DC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019213B0);
  }

  return result;
}

unint64_t sub_10043CC90()
{
  result = qword_1019213C0;
  if (!qword_1019213C0)
  {
    sub_1000D6664(&qword_1019213C8, &qword_101206DB0);
    sub_10043CD48();
    sub_1000414C8(&unk_10191DCB0, &qword_10191D6F8, &qword_101200BA8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019213C0);
  }

  return result;
}

unint64_t sub_10043CD48()
{
  result = qword_1019213D0;
  if (!qword_1019213D0)
  {
    sub_1000D6664(&qword_1019213D8, &qword_101206DB8);
    sub_10043CDD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019213D0);
  }

  return result;
}

unint64_t sub_10043CDD4()
{
  result = qword_1019213E0;
  if (!qword_1019213E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019213E0);
  }

  return result;
}

unint64_t sub_10043CE28()
{
  result = qword_101921408;
  if (!qword_101921408)
  {
    sub_1000D6664(&qword_101921318, &qword_101206D18);
    sub_10043CEB4();
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921408);
  }

  return result;
}

unint64_t sub_10043CEB4()
{
  result = qword_101921410;
  if (!qword_101921410)
  {
    sub_1000D6664(&qword_1019213F8, &qword_101206DF0);
    sub_1000414C8(&qword_101921418, &qword_101921420, &qword_101206DF8, &protocol conformance descriptor for List<A, B>);
    sub_1000414C8(&qword_10190A3B8, &qword_10190A3C0, &qword_1011E5630, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921410);
  }

  return result;
}

unint64_t sub_10043CF98()
{
  result = qword_101921428;
  if (!qword_101921428)
  {
    sub_1000D6664(&qword_101921350, &qword_101206D50);
    sub_1000414C8(&qword_101921430, &qword_101921438, &qword_10120A940, &protocol conformance descriptor for TupleView<A>);
    sub_1000414C8(&qword_101916EB8, &qword_101916E30, &qword_1011F6B88, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921428);
  }

  return result;
}

unint64_t sub_10043D07C()
{
  result = qword_101921440;
  if (!qword_101921440)
  {
    sub_1000D6664(&qword_101921328, &qword_101206D28);
    sub_1000414C8(&qword_101921400, &qword_101921330, &qword_101206D30, &protocol conformance descriptor for TupleView<A>);
    sub_10043CE28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921440);
  }

  return result;
}

unint64_t sub_10043D150()
{
  result = qword_101921488;
  if (!qword_101921488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921488);
  }

  return result;
}

uint64_t sub_10043D1B8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10043D210(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      v1 = "Ratings] Using Offline Maps";
      if (qword_101906768 != -1)
      {
        swift_once();
        v1 = "Ratings] Using Offline Maps";
      }

      v2.super.isa = qword_1019600D8;
      v3 = 0xD000000000000016;
      v9 = 0x80000001012377F0;
      v4 = 0x7265646C4FLL;
      goto LABEL_16;
    }

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v2.super.isa = qword_1019600D8;
    v3 = 0xD00000000000001BLL;
    v9 = 0x80000001012377F0;
    v4 = 0x6E6F4D2073696854;
    v5 = 0x80000001012384B0;
    v6 = 0xEA00000000006874;
  }

  else
  {
    if (!a1)
    {
      v1 = "[RatingsHistory] This Week";
      if (qword_101906768 != -1)
      {
        swift_once();
        v1 = "[RatingsHistory] This Week";
      }

      v2.super.isa = qword_1019600D8;
      v3 = 0xD000000000000016;
      v9 = 0x80000001012377F0;
      v4 = 0x7961646F54;
LABEL_16:
      v5 = v1 | 0x8000000000000000;
      v6 = 0xE500000000000000;
      goto LABEL_17;
    }

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v2.super.isa = qword_1019600D8;
    v3 = 0xD00000000000001ALL;
    v9 = 0x80000001012377F0;
    v4 = 0x6565572073696854;
    v5 = 0x80000001012384D0;
    v6 = 0xE90000000000006BLL;
  }

LABEL_17:
  v7 = 0xD000000000000031;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v2, *&v4, *(&v9 - 1))._countAndFlagsBits;
}

uint64_t sub_10043D44C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10043D4A0()
{
  result = qword_101921498;
  if (!qword_101921498)
  {
    sub_1000D6664(&qword_101921308, &qword_101206D08);
    sub_1000414C8(&qword_1019214A0, &qword_1019214A8, &unk_101206EC0, &protocol conformance descriptor for VStack<A>);
    sub_1000414C8(&qword_101911018, &qword_101910FB8, &qword_1011EF300, &unk_1011E66B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921498);
  }

  return result;
}

Swift::Bool __swiftcall VisitedPlacesLibraryContext.chromeDidSelectMarker(for:)(MKMapItem a1)
{
  v2 = v1;
  v4 = [v2 iosBasedChromeViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 appCoordinator];

    if (v6)
    {
      v7 = [objc_allocWithZone(PlaceCardItem) initWithMapItem:a1.super.isa];
      v8 = type metadata accessor for PlaceCardContextConfiguration();
      v9 = objc_allocWithZone(v8);
      v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally] = 0;
      *&v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem] = v7;
      v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory] = 0;
      *&v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent] = 0;
      v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute] = 0;
      v13.receiver = v9;
      v13.super_class = v8;
      v10 = v7;
      v11 = objc_msgSendSuper2(&v13, "init");
      [v6 displayPlaceCardWithConfiguration:{v11, v13.receiver, v13.super_class}];
    }

    LOBYTE(v4) = 1;
  }

  else
  {
    __break(1u);
  }

  return v4;
}

uint64_t VisitedPlacesLibraryContext.chromeDidSelect(_:)(void *a1)
{
  v3 = [a1 parkedCar];
  if (v3)
  {

    return 0;
  }

  else
  {
    result = [a1 searchResult];
    if (result)
    {
      v5 = result;
      result = [v1 iosBasedChromeViewController];
      if (result)
      {
        v6 = result;
        v7 = [result appCoordinator];

        if (v7)
        {
          v8 = [objc_allocWithZone(PlaceCardItem) initWithSearchResult:v5];
          v9 = type metadata accessor for PlaceCardContextConfiguration();
          v10 = objc_allocWithZone(v9);
          v10[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally] = 0;
          *&v10[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem] = v8;
          v10[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory] = 0;
          *&v10[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent] = 0;
          v10[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute] = 0;
          v13.receiver = v10;
          v13.super_class = v9;
          v11 = v8;
          v12 = objc_msgSendSuper2(&v13, "init");
          [v7 displayPlaceCardWithConfiguration:{v12, v13.receiver, v13.super_class}];
        }

        return 1;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_10043D94C()
{
  swift_getKeyPath();
  sub_10043FA7C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 65);
}

void sub_10043D9BC(char a1)
{
  v2 = v1;
  if (a1)
  {
    swift_getKeyPath();
    sub_10043FA7C();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = v1[10];
    if (v3)
    {
      v4 = v1[11];
      v6 = v2[2];
      v5 = v2[3];

      v3(v6, v5, 0);
      sub_1000588AC(v3, v4);
    }

    return;
  }

  swift_getKeyPath();
  sub_10043FA7C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v34 = v1;
  v7 = v1[9];
  sub_1000CE6B8(&qword_101907F20, &unk_1011E2D40);
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  v32 = v7 + 64;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 64);
  v13 = (v10 + 63) >> 6;
  v35 = v8 + 64;
  v37 = v7;

  v14 = 0;
  v33 = v9;
  if (!v12)
  {
LABEL_8:
    v16 = v14;
    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v14 >= v13)
      {
        break;
      }

      v17 = *(v32 + 8 * v14);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_13;
      }
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (v34[12])
    {
      v31 = swift_getKeyPath();
      __chkstk_darwin(v31);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    sub_10043F644();
    return;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_13:
    v18 = v15 | (v14 << 6);
    v19 = (*(v37 + 48) + 16 * v18);
    v20 = v19[1];
    v38 = *v19;
    v21 = *(*(v37 + 56) + 8 * v18);
    if (v21 >> 62)
    {
      v25 = v19[1];
      v22 = _CocoaArrayWrapper.endIndex.getter();
      v20 = v25;
      if (!v22)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_23;
      }
    }

    v36 = v20;

    specialized ContiguousArray.reserveCapacity(_:)();
    if (v22 < 0)
    {
      goto LABEL_33;
    }

    v23 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v23;
      dispatch thunk of TagViewModel.isSelected.setter();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v22 != v23);

    v9 = v33;
    v24 = v36;
LABEL_24:
    *(v35 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v26 = (v9[6] + 16 * v18);
    *v26 = v38;
    v26[1] = v24;
    *(v9[7] + 8 * v18) = _swiftEmptyArrayStorage;
    v27 = v9[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      break;
    }

    v9[2] = v29;
    if (!v12)
    {
      goto LABEL_8;
    }
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_10043DE44()
{
  v1 = v0;
  v2 = v0[6];
  v3 = *(v2 + 16);
  if (v3)
  {
    swift_beginAccess();
    if (*(v2 + 16))
    {
      v4 = 0;
      v40 = v2 + 32;
      v5 = _swiftEmptyArrayStorage;
      v37 = v2;
      v38 = v0;
      v36 = v3;
      while (1)
      {
        v6 = (v40 + (v4 << 6));
        v7 = v6[3];
        v9 = *v6;
        v8 = v6[1];
        v48 = v6[2];
        v49 = v7;
        v46 = v9;
        v47 = v8;
        v10 = v9;
        swift_getKeyPath();
        v45 = v1;
        sub_10029DCE4(&v46, &v41);
        sub_10043FA7C();

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v11 = v1[9];
        if (*(v11 + 16))
        {

          v12 = sub_100297040(v10, *(&v10 + 1));
          v14 = v13;

          if (v14)
          {
            break;
          }
        }

        sub_10043FC20(&v46);

LABEL_34:
        if (++v4 == v3)
        {
          goto LABEL_38;
        }

        if (v4 >= *(v2 + 16))
        {
          goto LABEL_43;
        }
      }

      v15 = *(*(v11 + 56) + 8 * v12);

      if (v15 >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
        if (v16)
        {
LABEL_8:
          v17 = 0;
          v18 = _swiftEmptyArrayStorage;
          do
          {
            v19 = v17;
            while (1)
            {
              if ((v15 & 0xC000000000000001) != 0)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
                v17 = v19 + 1;
                if (__OFADD__(v19, 1))
                {
                  goto LABEL_41;
                }
              }

              else
              {
                if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_42;
                }

                v17 = v19 + 1;
                if (__OFADD__(v19, 1))
                {
LABEL_41:
                  __break(1u);
LABEL_42:
                  __break(1u);
                  goto LABEL_43;
                }
              }

              if (dispatch thunk of TagViewModel.isSelected.getter())
              {
                break;
              }

              ++v19;
              if (v17 == v16)
              {
                goto LABEL_29;
              }
            }

            v39 = TagViewModel.id.getter();
            v21 = v20;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_100356258(0, *(v18 + 2) + 1, 1, v18);
            }

            v23 = *(v18 + 2);
            v22 = *(v18 + 3);
            if (v23 >= v22 >> 1)
            {
              v18 = sub_100356258((v22 > 1), v23 + 1, 1, v18);
            }

            *(v18 + 2) = v23 + 1;
            v24 = &v18[16 * v23];
            *(v24 + 4) = v39;
            *(v24 + 5) = v21;
          }

          while (v17 != v16);
          goto LABEL_29;
        }
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_8;
        }
      }

      v18 = _swiftEmptyArrayStorage;
LABEL_29:

      v25 = sub_100455424(v18);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100357E9C(0, *(v5 + 2) + 1, 1, v5);
      }

      v2 = v37;
      v1 = v38;
      v27 = *(v5 + 2);
      v26 = *(v5 + 3);
      if (v27 >= v26 >> 1)
      {
        v5 = sub_100357E9C((v26 > 1), v27 + 1, 1, v5);
      }

      v43 = v48;
      v44 = v49;
      v28 = v46;
      v41 = v46;
      v42 = v47;
      *(v5 + 2) = v27 + 1;
      v29 = &v5[72 * v27];
      v30 = v42;
      v31 = v44;
      *(v29 + 4) = v43;
      *(v29 + 5) = v31;
      *(v29 + 2) = v28;
      *(v29 + 3) = v30;
      *(v29 + 12) = v25;
      v3 = v36;
      goto LABEL_34;
    }

LABEL_43:
    __break(1u);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_38:
    swift_getKeyPath();
    *&v46 = v1;
    sub_10043FA7C();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = v1[10];
    if (v32)
    {
      v33 = v1[11];
      v35 = v1[2];
      v34 = v1[3];
      sub_1000D88A8(v1[10], v33);

      v32(v35, v34, v5);
      sub_1000588AC(v32, v33);
    }
  }
}

double sub_10043E274()
{
  swift_getKeyPath();
  sub_10043FA7C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

void sub_10043E2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getKeyPath();
  v32[0] = v4;
  sub_10043FA7C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v10 = *(v4 + 72);
  if (*(v10 + 16))
  {

    v11 = sub_100297040(a1, a2);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      v28 = a1;
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
      if (v13 >> 62)
      {
LABEL_40:
        v15 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = 0;
      v29 = v13;
      v30 = v13 & 0xC000000000000001;
      while (1)
      {
        if (v15 == v16)
        {
          goto LABEL_37;
        }

        if (v30)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *(v14 + 16))
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }
        }

        if (TagViewModel.id.getter() == a3 && v17 == a4)
        {
          break;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          goto LABEL_20;
        }

        v19 = __OFADD__(v16++, 1);
        v13 = v29;
        if (v19)
        {
          goto LABEL_39;
        }
      }

LABEL_20:
      if (v30)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v20 = dispatch thunk of TagViewModel.isSelected.getter();

      if (*(v5 + 64))
      {
        if ((v20 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else if ((v20 & 1) == 0)
      {
LABEL_30:
        v23 = *(v5 + 56);
        swift_getKeyPath();
        v32[0] = v5;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v5 + 96) >= v23)
        {
          goto LABEL_37;
        }

LABEL_31:
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v32[0] = v5;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        v24 = *(v5 + 96);
        v19 = __OFADD__(v24, 1);
        v22 = v24 + 1;
        if (v19)
        {
          __break(1u);
          return;
        }

        goto LABEL_32;
      }

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v32[0] = v5;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v21 = *(v5 + 96);
      v19 = __OFSUB__(v21, 1);
      v22 = v21 - 1;
      if (!v19)
      {
LABEL_32:
        *(v5 + 96) = v22;
        v32[0] = v5;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        if (v30)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        v25 = dispatch thunk of TagViewModel.isSelected.modify();
        *v26 = !*v26;
        v25(v32, 0);

        swift_getKeyPath();
        v32[0] = v5;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v32[0] = v5;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *(v5 + 72);
        *(v5 + 72) = 0x8000000000000000;
        sub_10012AEDC(v29, v28, a2, isUniquelyReferenced_nonNull_native);

        *(v5 + 72) = v31;
        swift_endAccess();
        v32[0] = v5;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        sub_10043F644();
        return;
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_37:
  }
}

void sub_10043E7F0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10043FA7C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 65);
}

void sub_10043E890(char a1)
{
  if (*(v1 + 65) == (a1 & 1))
  {
    *(v1 + 65) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10043FA7C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_10043E970@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10043FA7C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 72);

  return result;
}

double sub_10043EA00(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10043FA7C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_10043EA9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
}

uint64_t sub_10043EB04()
{
  swift_getKeyPath();
  v3 = v0;
  sub_10043FA7C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 80);
  sub_1000D88A8(v1, *(v3 + 88));
  return v1;
}

uint64_t sub_10043EB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  sub_1000D88A8(a2, a3);
  return sub_1000588AC(v3, v4);
}

uint64_t sub_10043EBD4()
{
  swift_getKeyPath();
  sub_10043FA7C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 96);
}

void sub_10043EC44(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10043FA7C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 96);
}

double sub_10043ECBC(uint64_t a1)
{
  if (*(v1 + 96) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10043FA7C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10043ED90(uint64_t a1)
{
  v2 = v1;
  *(v1 + 65) = 1;
  *(v1 + 72) = sub_1000D1444(_swiftEmptyArrayStorage);
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  ObservationRegistrar.init()();
  v70 = *(a1 + 32);
  v4 = v70;
  *(v1 + 64) = *(a1 + 48);
  v5 = *(a1 + 32);
  *(v1 + 32) = *(a1 + 16);
  *(v1 + 48) = v5;
  *(v1 + 16) = *a1;
  v55 = v1;
  v57 = *(v4 + 16);
  if (v57)
  {
    v56 = v4 + 32;

    v6 = 0;
    v54 = v4;
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_66;
      }

      v59 = v6;
      v7 = (v56 + (v6 << 6));
      v8 = v7[1];
      v60 = *v7;
      v9 = v7[4];
      v10 = v7[5];
      v11 = *(v9 + 16);
      v64 = v9;
      if (v11)
      {
        v69 = _swiftEmptyArrayStorage;
        v58 = v8;

        specialized ContiguousArray.reserveCapacity(_:)();
        v12 = 0;
        v61 = v9 + 32;
        v13 = v10 + 56;
        while (v12 < *(v9 + 16))
        {
          sub_10005EB40(v61 + 40 * v12, v67);
          sub_10005E838(v67, v68);
          sub_10005E838(v67, v68);
          v14 = sub_10005E838(v67, v68);
          if (*(v10 + 16))
          {
            v15 = *v14;
            v16 = v14[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v17 = Hasher._finalize()();
            v18 = -1 << *(v10 + 32);
            v19 = v17 & ~v18;
            if ((*(v13 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
            {
              v20 = ~v18;
              do
              {
                v21 = (*(v10 + 48) + 16 * v19);
                if (*v21 == v15 && v21[1] == v16)
                {
                  break;
                }

                if (_stringCompareWithSmolCheck(_:_:expecting:)())
                {
                  break;
                }

                v19 = (v19 + 1) & v20;
              }

              while (((*(v13 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
            }
          }

          else
          {
          }

          ++v12;
          sub_10005E838(v67, v68);
          type metadata accessor for TagViewModel();
          swift_allocObject();

          TagViewModel.init(id:title:isSelected:accessibilityIdentifier:)();
          sub_10004E3D0(v67);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v9 = v64;
          if (v12 == v11)
          {
            v23 = v69;
            v2 = v55;
            v4 = v54;
            v8 = v58;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v23 = _swiftEmptyArrayStorage;
LABEL_24:
      swift_getKeyPath();
      sub_10043FA7C();

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67[0] = *(v2 + 72);
      v25 = v67[0];
      *(v2 + 72) = 0x8000000000000000;
      v26 = sub_100297040(v60, v8);
      v28 = *(v25 + 16);
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_67;
      }

      v32 = v27;
      if (*(v25 + 24) < v31)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_29;
      }

      v38 = v26;
      sub_10012C910();
      v26 = v38;
      v34 = v67[0];
      if ((v32 & 1) == 0)
      {
LABEL_30:
        v34[(v26 >> 6) + 8] |= 1 << v26;
        v35 = (v34[6] + 16 * v26);
        *v35 = v60;
        v35[1] = v8;
        *(v34[7] + 8 * v26) = v23;
        v36 = v34[2];
        v30 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v30)
        {
          goto LABEL_68;
        }

        v34[2] = v37;
        goto LABEL_4;
      }

LABEL_3:
      *(v34[7] + 8 * v26) = v23;

LABEL_4:
      v6 = v59 + 1;
      *(v2 + 72) = v34;
      swift_endAccess();
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      if (v59 + 1 == v57)
      {
        sub_10043FAD4(&v70);
        goto LABEL_35;
      }
    }

    sub_100126F64(v31, isUniquelyReferenced_nonNull_native);
    v26 = sub_100297040(v60, v8);
    if ((v32 & 1) != (v33 & 1))
    {
      goto LABEL_70;
    }

LABEL_29:
    v34 = v67[0];
    if ((v32 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_3;
  }

LABEL_35:
  swift_getKeyPath();
  sub_10043FA7C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v39 = *(v2 + 72);
  v40 = *(v39 + 64);
  v63 = v39 + 64;
  v65 = v39;
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v40;
  v62 = (v41 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v44 = 0;
  v45 = 0;
  while (v43)
  {
LABEL_44:
    v47 = *(*(v65 + 56) + ((v44 << 9) | (8 * __clz(__rbit64(v43)))));
    v66 = v45;
    if (v47 >> 62)
    {
      v48 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 &= v43 - 1;

    v49 = 0;
    v50 = 0;
    while (v48 != v49)
    {
      if ((v47 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v49, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v49 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        if (__OFADD__(v49, 1))
        {
          goto LABEL_62;
        }
      }

      v51 = dispatch thunk of TagViewModel.isSelected.getter();

      ++v49;
      v30 = __OFADD__(v50, v51 & 1);
      v50 += v51 & 1;
      if (v30)
      {
        goto LABEL_64;
      }
    }

    v45 += v50;
    v2 = v55;
    if (__OFADD__(v66, v50))
    {
      goto LABEL_69;
    }
  }

  while (1)
  {
    v46 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v46 >= v62)
    {

      if (*(v2 + 96) != v45)
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v67[0] = v2;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      sub_10043F644();
      return v2;
    }

    v43 = *(v63 + 8 * v46);
    ++v44;
    if (v43)
    {
      v44 = v46;
      goto LABEL_44;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10043F644()
{
  swift_getKeyPath();
  sub_10043FA7C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 96);
  if ((*(v0 + 65) ^ (v1 < 1)))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v0 + 65) = v1 < 1;
  }
}

uint64_t sub_10043F76C()
{

  sub_1000588AC(*(v0 + 80), *(v0 + 88));
  v1 = OBJC_IVAR____TtC4Maps31CapsuleOptionsSelectorViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CapsuleOptionsSelectorViewModel(uint64_t a1)
{
  result = qword_1019214E0;
  if (!qword_1019214E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10043F890(uint64_t a1)
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

uint64_t sub_10043F96C(uint64_t a1, int a2)
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

uint64_t sub_10043F9B4(uint64_t result, int a2, int a3)
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

unint64_t sub_10043FA28()
{
  result = qword_101921590;
  if (!qword_101921590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921590);
  }

  return result;
}

unint64_t sub_10043FA7C()
{
  result = qword_10190DC08;
  if (!qword_10190DC08)
  {
    type metadata accessor for CapsuleOptionsSelectorViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190DC08);
  }

  return result;
}

uint64_t sub_10043FAD4(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101915F00, &unk_1011F59F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10043FBA4(uint64_t a1)
{
  result = sub_10043FBCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10043FBCC()
{
  result = qword_101921598;
  if (!qword_101921598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921598);
  }

  return result;
}

uint64_t sub_10043FCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4(a2, v5, v7);
}

void sub_10043FD34(char a1, uint64_t a2, NSString a3, uint64_t a4)
{
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  v6 = a3;
  (*(a4 + 16))(a4, a1 & 1);
}

unint64_t sub_10043FDA0(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  Substring.init<A>(_:)();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  Substring.init<A>(_:)();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_100389078(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = String.UTF8View._foreignDistance(from:to:)();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_100389078(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_100389078(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = String.UTF8View._foreignDistance(from:to:)();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = String.UTF8View._foreignCount()();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        String.reserveCapacity(_:)(result);
LABEL_23:
        String.subscript.getter();
        sub_1004427F0();
        String.append<A>(contentsOf:)();

        String.append<A>(contentsOf:)();
        sub_1004426C4(a2, a5, a6);
        String.append<A>(contentsOf:)();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void sub_1004400B4()
{
  v1 = &v0[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_note];
  v2 = *&v0[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_note + 8];
  if (v2)
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
    if ((v2 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(v2) & 0xF;
    }

    if (!v3)
    {
      *v1 = 0;
      *(v1 + 1) = 0;
    }
  }

  if ([v0 isViewLoaded])
  {
    v4 = sub_1004408F0(&OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___modalHeaderView, sub_100440468);
    v5 = *&v4[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_trailingButton];
    v6 = v5;

    if (v5)
    {
      [v6 setEnabled:*(v1 + 1) != 0];
    }
  }
}

uint64_t PlaceNoteEditViewController.dismissHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_dismissHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1000CD9D4(*v1, v1[1]);
  return v2;
}

uint64_t PlaceNoteEditViewController.dismissHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_dismissHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000D3B90(v6, v7);
}

char *sub_100440468(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for ModalCardHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  v4 = [v3 buttonWithType:1];
  [v4 addTarget:a1 action:"cancelTapped" forControlEvents:64];
  v5 = OBJC_IVAR____TtC4Maps19ModalCardHeaderView_leadingButton;
  v6 = *&v2[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_leadingButton];
  v7 = v6;
  v8 = v4;
  sub_100283E78();
  v9 = *&v2[v5];
  *&v2[v5] = v4;
  v10 = v8;

  v11 = *&v2[v5];
  if (v11)
  {
    v12 = v11;
    v13 = String._bridgeToObjectiveC()();
    [v12 addObserver:v2 forKeyPath:v13 options:0 context:0];

    v14 = *&v2[v5];
    if (v14)
    {
      v15 = v14;
      v16 = String._bridgeToObjectiveC()();
      [v15 addObserver:v2 forKeyPath:v16 options:0 context:0];

      v17 = *&v2[v5];
      if (v17)
      {
        if (v6)
        {
          sub_100014C84(0, &unk_10191ED40, off_1015F64B8);
          v18 = v7;
          v19 = v17;
          v20 = static NSObject.== infix(_:_:)();

          if (v20)
          {
            goto LABEL_9;
          }
        }

        goto LABEL_8;
      }
    }
  }

  v18 = v10;
  if (v6)
  {
LABEL_8:
    sub_100282F08();
    v18 = v7;
LABEL_9:
  }

  v21 = [v3 buttonWithType:1];
  [v21 addTarget:a1 action:"doneTapped" forControlEvents:64];
  v22 = OBJC_IVAR____TtC4Maps19ModalCardHeaderView_trailingButton;
  v23 = *&v2[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_trailingButton];
  v24 = v23;
  v25 = v21;
  sub_100283E84();
  v26 = *&v2[v22];
  *&v2[v22] = v21;
  v27 = v25;

  v28 = *&v2[v22];
  if (v28)
  {
    v29 = v28;
    v30 = String._bridgeToObjectiveC()();
    [v29 addObserver:v2 forKeyPath:v30 options:0 context:0];

    v31 = *&v2[v22];
    if (v31)
    {
      v32 = v31;
      v33 = String._bridgeToObjectiveC()();
      [v32 addObserver:v2 forKeyPath:v33 options:0 context:0];

      v34 = *&v2[v22];
      if (v34)
      {
        if (v23)
        {
          sub_100014C84(0, &unk_10191ED40, off_1015F64B8);
          v35 = v24;
          v36 = v34;
          v37 = static NSObject.== infix(_:_:)();

          if (v37)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_17;
      }
    }
  }

  v35 = v27;
  if (v23)
  {
LABEL_17:
    sub_100282F08();
    v35 = v24;
LABEL_18:
  }

  return v2;
}

id sub_100440818(uint64_t a1)
{
  v1 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  MUPlacePlatterCornerRadius();
  [v1 _setContinuousCornerRadius:?];
  [v1 setClipsToBounds:1];
  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v3];

  return v2;
}

id sub_1004408F0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100440954(uint64_t a1)
{
  v2 = [objc_allocWithZone(UITextView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  v4 = [objc_msgSend(v3 "sharedManager")];
  swift_unknownObjectRelease();
  [v2 setFont:v4];

  [v2 setAdjustsFontForContentSizeCategory:1];
  v5 = objc_opt_self();
  v6 = [v5 labelColor];
  [v2 setTextColor:v6];

  v7 = [v5 secondarySystemGroupedBackgroundColor];
  [v2 setBackgroundColor:v7];

  [v2 setTextContainerInset:{16.0, 16.0, 16.0, 16.0}];
  v8 = [objc_opt_self() addANotePromptText];
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  sub_1000CE6B8(&qword_10191BE70, &unk_1011EC640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D30;
  *(inited + 32) = NSFontAttributeName;
  v10 = NSFontAttributeName;
  v11 = [objc_msgSend(v3 "sharedManager")];
  swift_unknownObjectRelease();
  *(inited + 64) = sub_100014C84(0, &qword_10191A720, UIFont_ptr);
  *(inited + 40) = v11;
  sub_1000D131C(inited);
  swift_setDeallocating();
  sub_1001A1AFC(inited + 32);
  v12 = objc_allocWithZone(NSAttributedString);
  type metadata accessor for Key(0);
  sub_10026AB84();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v12 initWithString:v8 attributes:isa];

  [v2 _maps_setAttributedPlaceholder:v14];
  [v2 setDelegate:a1];
  [v2 setScrollEnabled:1];
  v15 = v2;
  v16 = String._bridgeToObjectiveC()();
  [v15 setAccessibilityIdentifier:v16];

  return v15;
}

id PlaceNoteEditViewController.init(note:)(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_defaultPadding] = 0x4020000000000000;
  v6 = &v2[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_note];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_dismissHandler];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v2[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___modalHeaderView] = 0;
  *&v2[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___textContainerView] = 0;
  *&v2[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___textView] = 0;
  *&v2[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_deleteSectionView] = 0;
  if (a2)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v8;
  }

  if (v10)
  {

    v11 = a2;
  }

  else
  {
    a1 = 0;
    v11 = 0;
  }

  v12 = &v2[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_originalNote];
  *v12 = a1;
  *(v12 + 1) = v11;
  *v6 = a1;
  *(v6 + 1) = v11;
  swift_bridgeObjectRetain_n();

  v16.receiver = v2;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
  result = [v13 cardPresentationController];
  if (result)
  {
    v15 = result;

    [v15 setTakesAvailableHeight:1];

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall PlaceNoteEditViewController.viewDidLoad()()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor:v3];

  v4 = [v0 cardPresentationController];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 setTakesAvailableHeight:1];

  v6 = [v0 cardPresentationController];
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  [v6 setPresentedModally:1];

  v8 = [v0 cardPresentationController];
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 setAllowsSwipeToDismiss:0];

  sub_100441100();
  sub_100441724();
  if ([v0 isViewLoaded])
  {
    v10 = sub_1004408F0(&OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___modalHeaderView, sub_100440468);
    v11 = *&v10[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_trailingButton];
    v12 = v11;

    if (v11)
    {
      [v12 setEnabled:*&v0[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_note + 8] != 0];
    }
  }
}

void sub_100441100()
{
  v1 = v0;
  v2 = [v0 headerView];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = sub_1004408F0(&OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___modalHeaderView, sub_100440468);
  [v3 addSubview:v4];

  v5 = *&v1[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___modalHeaderView];
  v6 = &v1[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_note];
  v7 = *&v1[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_note + 8];
  v8 = objc_opt_self();
  v9 = v5;
  v10 = &selRef_addANoteTitle;
  if (v7)
  {
    v10 = &selRef_editNoteTitle;
  }

  v11 = [v8 *v10];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = &v9[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_title];
  v16 = *&v9[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_title];
  v17 = *&v9[OBJC_IVAR____TtC4Maps19ModalCardHeaderView_title + 8];
  *v15 = v12;
  v15[1] = v14;
  if (!v17 || (v12 == v16 ? (v18 = v17 == v14) : (v18 = 0), !v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    sub_100282F08();
  }

  v19 = [objc_allocWithZone(FooterContaineeAction) init];
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 deleteNoteButtonLabel];
  if (!v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = String._bridgeToObjectiveC()();
  }

  [v21 setTitle:v22];

  v23 = String._bridgeToObjectiveC()();
  [v21 setGlyph:v23];

  [v21 setStyle:1];
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47[4] = sub_100442844;
  v47[5] = v24;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 1107296256;
  v47[2] = sub_1001FDE68;
  v47[3] = &unk_1016199B0;
  v25 = _Block_copy(v47);

  [v21 setActionBlock:v25];
  _Block_release(v25);
  v26 = String._bridgeToObjectiveC()();
  [v21 setAccessibilityIdentifier:v26];

  v27 = [v21 title];
  if (!v27)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = String._bridgeToObjectiveC()();
  }

  [v21 setAccessibilityLabel:v27];

  v28 = [objc_allocWithZone(MUActionGroupSectionView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = v28;
  v30 = String._bridgeToObjectiveC()();
  [v29 setAccessibilityIdentifier:v30];

  sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1011E47B0;
  *(v31 + 32) = v21;
  v32 = v21;
  sub_1000CE6B8(&qword_101921618, qword_1012073A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 setViewModels:isa];

  v34 = [objc_opt_self() insetButtonSectionViewforContentView:v29];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = *&v1[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_deleteSectionView];
  *&v1[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_deleteSectionView] = v34;
  v36 = v34;

  v37 = [v1 view];
  if (!v37)
  {
    __break(1u);
    goto LABEL_23;
  }

  v38 = v37;
  [v37 addSubview:v36];

  v39 = [v1 view];
  if (!v39)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v40 = v39;
  v41 = sub_1004408F0(&OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___textContainerView, sub_100440818);
  [v40 addSubview:v41];

  v42 = *&v1[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___textContainerView];
  v43 = sub_1004408F0(&OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___textView, sub_100440954);
  [v42 addSubview:v43];

  v44 = *&v1[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___textView];
  if (*(v6 + 1))
  {
    v45 = v44;

    v46 = String._bridgeToObjectiveC()();
  }

  else
  {
    v45 = v44;
    v46 = 0;
  }

  [v45 setText:v46];
}

void sub_100441724()
{
  v1 = [v0 headerView];
  if (!v1)
  {
    return;
  }

  v2 = *&v0[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_deleteSectionView];
  if (v2)
  {
    v86 = v1;
    sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_101207350;
    v4 = v2;
    v5 = sub_1004408F0(&OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___modalHeaderView, sub_100440468);
    v6 = [v5 leadingAnchor];

    v7 = [(objc_class *)v86 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    *(v3 + 32) = v8;
    v9 = OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___modalHeaderView;
    v10 = [*&v0[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___modalHeaderView] topAnchor];
    v11 = [(objc_class *)v86 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v3 + 40) = v12;
    v13 = [*&v0[v9] trailingAnchor];
    v14 = [(objc_class *)v86 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v3 + 48) = v15;
    v16 = [*&v0[v9] bottomAnchor];
    v17 = [(objc_class *)v86 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v3 + 56) = v18;
    v19 = v4;
    v20 = [v19 leadingAnchor];
    v21 = [v0 view];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 leadingAnchor];

      v24 = [v20 constraintEqualToAnchor:v23];
      *(v3 + 64) = v24;
      v25 = [v19 bottomAnchor];
      v26 = [v0 view];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 layoutMarginsGuide];

        v29 = [v28 bottomAnchor];
        v30 = [v25 constraintEqualToAnchor:v29];

        *(v3 + 72) = v30;
        v31 = [v19 trailingAnchor];
        v32 = [v0 view];
        if (v32)
        {
          v33 = v32;
          v85 = v19;
          v34 = [v32 trailingAnchor];

          v35 = [v31 constraintEqualToAnchor:v34];
          *(v3 + 80) = v35;
          v36 = sub_1004408F0(&OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___textContainerView, sub_100440818);
          v37 = [v36 leadingAnchor];

          v38 = [v0 view];
          if (v38)
          {
            v39 = v38;
            v40 = [v38 layoutMarginsGuide];

            v41 = [v40 leadingAnchor];
            v42 = [v37 constraintEqualToAnchor:v41];

            *(v3 + 88) = v42;
            v43 = OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___textContainerView;
            v44 = [*&v0[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___textContainerView] topAnchor];
            v45 = [(objc_class *)v86 bottomAnchor];
            v46 = [v44 constraintEqualToAnchor:v45];

            *(v3 + 96) = v46;
            v47 = [*&v0[v43] trailingAnchor];
            v48 = [v0 view];
            if (v48)
            {
              v49 = v48;
              v50 = objc_opt_self();
              v51 = [v49 layoutMarginsGuide];

              v52 = [v51 trailingAnchor];
              v53 = [v47 constraintEqualToAnchor:v52];

              *(v3 + 104) = v53;
              v54 = sub_1004408F0(&OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___textView, sub_100440954);
              v55 = [v54 leadingAnchor];

              v56 = [*&v0[v43] leadingAnchor];
              v57 = [v55 constraintEqualToAnchor:v56];

              *(v3 + 112) = v57;
              v58 = OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___textView;
              v59 = [*&v0[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___textView] topAnchor];
              v60 = [*&v0[v43] topAnchor];
              v61 = [v59 constraintEqualToAnchor:v60];

              *(v3 + 120) = v61;
              v62 = [*&v0[v58] trailingAnchor];
              v63 = [*&v0[v43] trailingAnchor];
              v64 = [v62 constraintEqualToAnchor:v63];

              *(v3 + 128) = v64;
              v65 = [*&v0[v58] bottomAnchor];
              v66 = [*&v0[v43] bottomAnchor];
              v67 = [v65 constraintEqualToAnchor:v66];

              *(v3 + 136) = v67;
              sub_100014C84(0, &qword_10190B720, NSLayoutConstraint_ptr);
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v50 activateConstraints:isa];

              v69 = [*&v0[v43] bottomAnchor];
              v70 = [v85 topAnchor];

              v71 = [v69 constraintLessThanOrEqualToAnchor:v70 constant:-16.0];
              v72 = String._bridgeToObjectiveC()();
              [v71 setIdentifier:v72];

              v73 = [v0 view];
              if (v73)
              {
                v74 = v73;
                v75 = [v73 keyboardLayoutGuide];

                v76 = [v75 topAnchor];
                v77 = [*&v0[v43] bottomAnchor];
                v78 = [v76 constraintEqualToAnchor:v77 constant:8.0];

                v79 = String._bridgeToObjectiveC()();
                [v78 setIdentifier:v79];

                LODWORD(v80) = 1132068864;
                [v78 setPriority:v80];
                v81 = swift_allocObject();
                *(v81 + 16) = xmmword_1011E4FD0;
                *(v81 + 32) = v71;
                *(v81 + 40) = v78;
                v82 = v71;
                v83 = v78;
                v84 = Array._bridgeToObjectiveC()().super.isa;

                [v50 activateConstraints:v84];

                v1 = v84;
                goto LABEL_10;
              }

LABEL_19:
              __break(1u);
              return;
            }

LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
}

void sub_100442158(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_dismissHandler;
    swift_beginAccess();
    v5 = *v4;
    if (*v4)
    {
      v6 = *(v4 + 8);

      v5(1, 0, 0);
      sub_1000D3B90(v5, v6);
    }
  }
}

uint64_t sub_10044229C()
{
  v1 = v0 + OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_dismissHandler;
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v1 + 8);
    v5 = *(v0 + OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_originalNote + 8);
    v7 = *(v0 + OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_note);
    v6 = *(v0 + OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_note + 8);
    v8 = (v5 | v6) == 0;
    if (v5)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      if (*(v0 + OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_originalNote) == v7 && v5 == v6)
      {
        v8 = 1;
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    sub_1000CD9D4(v3, v4);

    v3((v8 & 1) == 0, v7, v6);
    sub_1000D3B90(v3, v4);
  }

  return result;
}

Swift::Void __swiftcall PlaceNoteEditViewController.textViewDidChange(_:)(UITextView a1)
{
  v2 = [(objc_class *)a1.super.super.super.super.isa text];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (v1 + OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_note);
  *v7 = v4;
  v7[1] = v6;

  sub_1004400B4();
}

unint64_t sub_1004426C4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

void sub_100442710()
{
  *(v0 + OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_defaultPadding) = 0x4020000000000000;
  v1 = (v0 + OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_note);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_dismissHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___modalHeaderView) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___textContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController____lazy_storage___textView) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_deleteSectionView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1004427F0()
{
  result = qword_101921608;
  if (!qword_101921608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921608);
  }

  return result;
}

id sub_100442880()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceSummaryMetadata();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100442924(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v79 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v70 - v9;
  v11 = [a1 layoutTemplatePairs];
  if (!v11)
  {

    goto LABEL_60;
  }

  v77 = v2;
  v78 = v5;
  v75 = a1;
  v76 = v11;
  NSArray.makeIterator()();
  v81 = sub_1000E21E8();
  dispatch thunk of IteratorProtocol.next()();
  if (!v86)
  {
    v80 = _swiftEmptyArrayStorage;
LABEL_24:
    v25 = *(v78 + 8);
    v78 += 8;
    v74 = v25;
    v25(v10, v4);
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100021540(v26, qword_101960018);
    v27 = v80;

    v28 = v75;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = &selRef_setMapSettingsFamiliarRoutes_;
    v75 = v28;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v84[0] = v34;
      v73 = v33;
      *v33 = 136315394;
      v35 = *(v27 + 2);
      if (v35)
      {
        v70 = v34;
        v71 = v30;
        v72 = v29;
        v83[0] = _swiftEmptyArrayStorage;
        sub_1005111C4(0, v35, 0);
        v36 = v83[0];
        v37 = v27 + 48;
        do
        {
          v38 = *(v37 - 1);
          *&v85 = 0;
          *(&v85 + 1) = 0xE000000000000000;

          v39 = v38;
          _StringGuts.grow(_:)(18);

          *&v85 = 0xD000000000000010;
          *(&v85 + 1) = 0x8000000101238930;
          v40._countAndFlagsBits = sub_1000E17F8();
          String.append(_:)(v40);

          v41 = v85;
          v83[0] = v36;
          v43 = *(v36 + 16);
          v42 = *(v36 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_1005111C4((v42 > 1), v43 + 1, 1);
            v36 = v83[0];
          }

          v37 += 24;
          *(v36 + 16) = v43 + 1;
          *(v36 + 16 * v43 + 32) = v41;
          --v35;
        }

        while (v35);
        v28 = v75;
        v32 = &selRef_setMapSettingsFamiliarRoutes_;
        v29 = v72;
        LOBYTE(v30) = v71;
      }

      v44 = Array.description.getter();
      v46 = v45;

      v47 = sub_10004DEB8(v44, v46, v84);

      v48 = v73;
      *(v73 + 1) = v47;
      *(v48 + 6) = 2080;
      v49 = [v28 v32[144]];
      v50 = 0xE700000000000000;
      v51 = 0x6E776F6E6B6E55;
      if (v49 == 2)
      {
        v51 = 0x686372616553;
        v50 = 0xE600000000000000;
      }

      v52 = v49 == 1;
      if (v49 == 1)
      {
        v53 = 0x706D6F636F747541;
      }

      else
      {
        v53 = v51;
      }

      if (v52)
      {
        v54 = 0xEC0000006574656CLL;
      }

      else
      {
        v54 = v50;
      }

      v55 = sub_10004DEB8(v53, v54, v84);

      *(v48 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v29, v30, "[Place Summary] Template pairs: %s, useCase: %s", v48, 0x16u);
      swift_arrayDestroy();
    }

    v56 = [v28 dyanmicContextServerOverrides];
    v57 = v56;
    if (v56)
    {
      v58 = v56;
      NSArray.makeIterator()();
      dispatch thunk of IteratorProtocol.next()();
      if (v86)
      {
        v59 = _swiftEmptyArrayStorage;
        do
        {
          sub_1000D2BE0(&v85, v84);
          sub_10004E374(v84, v83);
          sub_100014C84(0, &qword_101921668, GEOPDPlaceSummaryDynamicContextServerOverride_ptr);
          swift_dynamicCast();
          v61 = sub_1002411D8(v82);
          v63 = v62;
          sub_10004E3D0(v84);
          if (v61)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_1003585E8(0, *(v59 + 2) + 1, 1, v59);
            }

            v65 = *(v59 + 2);
            v64 = *(v59 + 3);
            if (v65 >= v64 >> 1)
            {
              v59 = sub_1003585E8((v64 > 1), v65 + 1, 1, v59);
            }

            *(v59 + 2) = v65 + 1;
            v60 = &v59[16 * v65];
            *(v60 + 4) = v61;
            *(v60 + 5) = v63;
          }

          dispatch thunk of IteratorProtocol.next()();
        }

        while (v86);
      }

      else
      {
        v59 = _swiftEmptyArrayStorage;
      }

      v74(v79, v4);
      v28 = v75;
      v32 = &selRef_setMapSettingsFamiliarRoutes_;
    }

    else
    {
      v59 = 0;
    }

    swift_getObjectType();
    v66 = [v28 v32[144]];
    if (v66 == 2)
    {
      v67 = 2;
    }

    else
    {
      v67 = v66 == 1;
    }

    v68 = sub_100443358(v67, v80, v59);
    v69 = v68;

    if (v68)
    {

LABEL_61:
      swift_deallocPartialClassInstance();
      return v68;
    }

LABEL_60:
    swift_getObjectType();
    v68 = 0;
    goto LABEL_61;
  }

  v80 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_1000D2BE0(&v85, v84);
    sub_10004E374(v84, v83);
    sub_100014C84(0, &unk_101921670, GEOPDPlaceSummaryResultLayoutTemplatePair_ptr);
    swift_dynamicCast();
    v12 = v82;
    v13 = [v82 mapItemIdentifiers];
    if (!v13)
    {
      sub_10004E3D0(v84);
      goto LABEL_5;
    }

    v14 = v13;
    sub_100014C84(0, &qword_101919ED0, GEOMapItemIdentifier_ptr);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    result = [v12 layoutTemplate];
    if (!result)
    {
      break;
    }

    v17 = result;
    v18 = sub_1000E1FA4(result);

    if (v18)
    {
      v19 = sub_100161B84(v12);
      if (v15 >> 62)
      {
        v20 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_10004E3D0(v84);
      if (v20 <= 0)
      {
      }

      else
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v21 = v80;
        }

        else
        {
          v21 = sub_1003586F4(0, *(v80 + 2) + 1, 1, v80);
        }

        v23 = *(v21 + 2);
        v22 = *(v21 + 3);
        if (v23 >= v22 >> 1)
        {
          v21 = sub_1003586F4((v22 > 1), v23 + 1, 1, v21);
        }

        *(v21 + 2) = v23 + 1;
        v80 = v21;
        v24 = &v21[24 * v23];
        *(v24 + 4) = v15;
        *(v24 + 5) = v18;
        *(v24 + 6) = v19;
      }

      goto LABEL_6;
    }

    sub_10004E3D0(v84);

LABEL_5:

LABEL_6:
    dispatch thunk of IteratorProtocol.next()();
    if (!v86)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100443304()
{
  result = qword_101921660;
  if (!qword_101921660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921660);
  }

  return result;
}

id sub_100443358(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = type metadata accessor for PlaceSummaryMetadata();
  v8 = objc_allocWithZone(v7);
  if (v6 && *(a2 + 16))
  {
    v8[OBJC_IVAR____TtC4Maps20PlaceSummaryMetadata_useCase] = a1;
    *&v8[OBJC_IVAR____TtC4Maps20PlaceSummaryMetadata_templatePairs] = a2;
    *&v8[OBJC_IVAR____TtC4Maps20PlaceSummaryMetadata_serverOverrides] = a3;
    v10.receiver = v8;
    v10.super_class = v7;
    return objc_msgSendSuper2(&v10, "init");
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_10044341C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004448A8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_10044349C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1004448A8();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void *sub_10044353C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    if (a5)
    {
      a5(a1, a2, a3);
    }

    v12[3] = type metadata accessor for VisitedPlacesLibraryContext();
    v12[0] = v10;
    v11 = v10;
    _s4Maps27VisitedPlacesLibraryContextC43containeeViewControllerDidDismissExternallyyySo09ContaineegH0CSgF_0();

    return sub_1000DB2F4(v12);
  }

  return result;
}

void *sub_1004435F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    if (a3)
    {
      a3(a1);
    }

    v8[3] = type metadata accessor for VisitedPlacesLibraryContext();
    v8[0] = v6;
    v7 = v6;
    _s4Maps27VisitedPlacesLibraryContextC43containeeViewControllerDidDismissExternallyyySo09ContaineegH0CSgF_0();

    return sub_1000DB2F4(v8);
  }

  return result;
}

void sub_10044368C(uint64_t a1)
{
  v1 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:a1 isPlaceHolderPlace:0];
  if (!v1)
  {
    return;
  }

  v11 = v1;
  v2 = [objc_allocWithZone(SearchResult) initWithMapItem:v1];
  if (!v2)
  {
    goto LABEL_9;
  }

  v10 = v2;
  v3 = [v2 unknownContact];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() shareItemWithSearchResult:v10 contact:v3 includePrintActivity:1];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      aBlock[4] = UIView.annotateView(with:);
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100039C64;
      aBlock[3] = &unk_101619B60;
      v8 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      [v7 shareItem:v5 presentationOptions:0 completion:v8];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      _Block_release(v8);
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
LABEL_9:
    v9 = v11;
    goto LABEL_10;
  }

  v9 = v10;
LABEL_10:
}

void sub_100443878(uint64_t a1)
{
  v2 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:a1 isPlaceHolderPlace:0];
  if (v2)
  {
    v17 = v2;
    v3 = [v1 iosBasedChromeViewController];
    if (v3 && (v4 = v3, v5 = [v3 appCoordinator], v4, v5))
    {
      v6 = [objc_opt_self() ratingsAndPhotosCoordinatorWithMapItem:v17 entryPoint:0 originTarget:0];
      [v6 setPresentationContext:0];
      [v6 setContaineeDelegate:v1];
      v7 = [v1 iosChromeViewController];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 _currentContainerViewController];
      }

      else
      {
        v9 = 0;
      }

      [v6 setContainerViewController:v9];

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v12 = swift_unknownObjectWeakLoadStrong();
        v13 = [PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v12);

        if (v13)
        {
          v14 = [v11 _maps_mapsSceneDelegate];
          if (v14)
          {
            v15 = v14;
            v16 = [v14 topMostPresentedViewController];
          }

          else
          {
            v16 = 0;
          }

          [v6 setPresentingViewController:v16];

          v11 = v16;
        }
      }

      [v5 presentPOIEnrichmentWithCoordinator:v6];
    }

    else
    {
    }
  }
}

void sub_100443AD0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      if (a6)
      {
        a6(a1 & 1, a2, a3);
      }

      v16[3] = type metadata accessor for VisitedPlacesLibraryContext();
      v16[0] = v11;
      v14 = v13;
      v15 = v11;
      _s4Maps27VisitedPlacesLibraryContextC43containeeViewControllerDidDismissExternallyyySo09ContaineegH0CSgF_0();

      sub_1000DB2F4(v16);
    }

    else
    {
    }
  }
}

void sub_100443BCC(uint64_t a1)
{
  sub_100191458(a1, v11);
  v2 = objc_allocWithZone(type metadata accessor for VisitHistoryFilterViewController());
  v3 = sub_10018F40C(v11);
  [v3 setContaineeDelegate:v1];
  *&v3[OBJC_IVAR____TtC4Maps32VisitHistoryFilterViewController_actionDelegate + 8] = &off_101619A68;
  swift_unknownObjectWeakAssign();
  v4 = *&v3[OBJC_IVAR____TtC4Maps32VisitHistoryFilterViewController_viewModel];
  swift_unknownObjectWeakLoadStrong();
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v11[0] = v4;
  sub_1004448A8();
  v6 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_unknownObjectRelease();

  *&v3[OBJC_IVAR____TtC4Maps32VisitHistoryFilterViewController_mapModificationDelegate + 8] = &off_10160D230;
  swift_unknownObjectWeakAssign();
  v7 = OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_containees;
  swift_beginAccess();
  v8 = v3;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v6 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong setNeedsUpdateComponent:@"cards" animated:1];
  }
}

void sub_100443E48(uint64_t a1)
{
  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for VisitHistoryCategoryPickerViewController());

  v5 = sub_1005658CC(v4);
  [v5 setContaineeDelegate:v2];
  *&v5[OBJC_IVAR____TtC4Maps40VisitHistoryCategoryPickerViewController_actionDelegate + 8] = &off_101619A68;
  swift_unknownObjectWeakAssign();
  v6 = OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_containees;
  swift_beginAccess();
  v7 = v5;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong setNeedsUpdateComponent:@"cards" animated:1];
  }
}

void sub_100443FB0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for VisitHistoryCityOverviewViewController();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC4Maps38VisitHistoryCityOverviewViewController_actionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for VisitHistoryCityOverviewViewModel(0);
  swift_allocObject();

  *&v4[OBJC_IVAR____TtC4Maps38VisitHistoryCityOverviewViewController_viewModel] = sub_1000F4B90(v5);
  v11.receiver = v4;
  v11.super_class = v3;
  v6 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
  sub_1003A7704(v6);
  [v6 setContaineeDelegate:v2];
  *&v6[OBJC_IVAR____TtC4Maps38VisitHistoryCityOverviewViewController_actionDelegate + 8] = &off_101619A68;
  swift_unknownObjectWeakAssign();
  v7 = OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_containees;
  swift_beginAccess();
  v8 = v6;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong setNeedsUpdateComponent:@"cards" animated:1];
  }
}

void sub_10044417C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(type metadata accessor for VisitRetentionDurationViewController()) init];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = &v6[OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_onConfirmSelection];
  v9 = *&v6[OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_onConfirmSelection];
  v10 = *&v6[OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_onConfirmSelection + 8];
  *v8 = sub_100444900;
  v8[1] = v7;
  sub_1000CD9D4(a1, a2);
  sub_1000588AC(v9, v10);
  [v6 setContaineeDelegate:v3];
  v11 = OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_containees;
  swift_beginAccess();
  v12 = v6;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong setNeedsUpdateComponent:@"cards" animated:1];
  }
}

void sub_100444318(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CapsuleOptionsSelectorViewController();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC4Maps36CapsuleOptionsSelectorViewController_completion];
  type metadata accessor for CapsuleOptionsSelectorViewModel(0);
  *v10 = 0;
  *(v10 + 1) = 0;
  swift_allocObject();
  v11 = *a1;
  v26 = a1[1];
  v27 = v11;
  v25 = *(a1 + 4);
  sub_100147688(&v27, v23);
  sub_100147688(&v26, v23);
  sub_1004447DC(&v25, v23);
  *&v9[OBJC_IVAR____TtC4Maps36CapsuleOptionsSelectorViewController_viewModel] = sub_10043ED90(a1);
  v24.receiver = v9;
  v24.super_class = v8;
  v12 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  sub_1003A7704(v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 2) = v13;
  *(v14 + 3) = a2;
  *(v14 + 4) = a3;
  *(v14 + 5) = v12;
  v15 = &v12[OBJC_IVAR____TtC4Maps36CapsuleOptionsSelectorViewController_completion];
  v16 = *&v12[OBJC_IVAR____TtC4Maps36CapsuleOptionsSelectorViewController_completion];
  v17 = *&v12[OBJC_IVAR____TtC4Maps36CapsuleOptionsSelectorViewController_completion + 8];
  *v15 = sub_10044489C;
  v15[1] = v14;
  v18 = v12;

  sub_1000CD9D4(a2, a3);
  sub_1000588AC(v16, v17);

  [v18 setContaineeDelegate:v4];

  v19 = OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_containees;
  swift_beginAccess();
  v20 = v18;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v4 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    [Strong setNeedsUpdateComponent:@"cards" animated:1];
  }
}

void sub_100444598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100376528(a1, v10);
  v11 = objc_allocWithZone(type metadata accessor for VisitHistoryFilterDatePickerViewController());
  v12 = sub_100375CC0(v10);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 2) = v13;
  *(v14 + 3) = a2;
  *(v14 + 4) = a3;
  *(v14 + 5) = v12;
  v15 = &v12[OBJC_IVAR____TtC4Maps42VisitHistoryFilterDatePickerViewController_completion];
  v16 = *&v12[OBJC_IVAR____TtC4Maps42VisitHistoryFilterDatePickerViewController_completion];
  v17 = *&v12[OBJC_IVAR____TtC4Maps42VisitHistoryFilterDatePickerViewController_completion + 8];
  *v15 = sub_1004447D0;
  v15[1] = v14;

  sub_1000CD9D4(a2, a3);
  v18 = v12;
  sub_1000588AC(v16, v17);

  [v18 setContaineeDelegate:v4];
  v19 = OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_containees;
  swift_beginAccess();
  v20 = v18;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v4 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    [Strong setNeedsUpdateComponent:@"cards" animated:1];
  }
}

uint64_t sub_1004447DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101915F00, &unk_1011F59F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044484C()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1004448A8()
{
  result = qword_10190E1B0;
  if (!qword_10190E1B0)
  {
    type metadata accessor for VisitHistoryFilterViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E1B0);
  }

  return result;
}

uint64_t sub_100444900()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_100444948(uint64_t *a1)
{
  v2 = *(type metadata accessor for VisitsLoader.VisitData(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10056D5F0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100453E7C(v5);
  *a1 = v3;
}

void sub_1004449F0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaDictionary.count.getter();
  }

  sub_100014C84(0, &qword_10190D2F0, off_1015F6280);
  sub_1001609AC(&qword_10190D2F8, &qword_10190D2F0, off_1015F6280);
  v15[1] = Set.init(minimumCapacity:)();
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v1 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    v3 = v1 + 64;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(v1 + 64);
  }

  v9 = 0;
  while ((v1 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.nextKey()() || (swift_dynamicCast(), (v14 = v15[0]) == 0))
    {
LABEL_20:
      sub_10005F150(v1);
      return;
    }

LABEL_10:
    sub_10030775C(v15, v14);
  }

  v10 = v9;
  v11 = v5;
  v12 = v9;
  if (v5)
  {
LABEL_16:
    v13 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v13)
    {
      goto LABEL_20;
    }

    v14 = v13;
    v5 = (v11 - 1) & v11;
    v9 = v12;
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_100444BE4(uint64_t a1)
{
  sub_100014C84(0, &qword_101909920, NSNumber_ptr);
  sub_1001609AC(&qword_1019219B0, &qword_101909920, NSNumber_ptr);
  v2 = 0;
  v9[1] = Set.init(minimumCapacity:)();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_100308294(v9, *(*(a1 + 48) + ((v7 << 9) | (8 * v8))));
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_100444D20()
{
  result = sub_100455C44();
  qword_101960330 = result;
  return result;
}

Swift::Int sub_100444D40()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1004538F4(&qword_1019156D0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_1004538F4(&qword_10190BAA0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100444E34(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1004538F4(&qword_1019156D0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_1004538F4(&qword_10190BAA0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100444F10(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1004538F4(&qword_1019156D0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_1004538F4(&qword_10190BAA0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100445000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Date.== infix(_:_:)();
}

uint64_t sub_100445068()
{
  v1 = v0;
  if (qword_101906890 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_101960338);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "VisitsBatcher deinit.", v5, 2u);
  }

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_100445160()
{
  sub_100445068();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10044518C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_1004451AC, v1, 0);
}

void sub_1004451AC()
{
  v1 = v0;
  v2 = v0[9];
  swift_beginAccess();
  if (!*(*(v2 + 128) + 16))
  {
    v14 = swift_task_alloc();
    v0[10] = v14;
    *v14 = v0;
    v14[1] = sub_1004455C8;

    sub_1004560EC();
    return;
  }

  v3 = v0[8];

  sub_100444BE4(v4);
  v6 = v3 + 64;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v3 + 64);
  v10 = (63 - v7) >> 6;
  v11 = v5 & 0xC000000000000001;
  v12 = v5;
  v39 = v5 + 56;

  v13 = 0;
  v37 = _swiftEmptyArrayStorage;
  while (v9)
  {
LABEL_16:
    v17 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = *(*(v3 + 56) + ((v13 << 9) | (8 * v17)));
    v18 = [v15 enclosingRegionIdentifier];
    if (!v18)
    {
      goto LABEL_10;
    }

    v38 = v15;
    v19 = v18;
    v20 = [v18 muid];

    v36 = v20;
    v21 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v20];
    if (v11)
    {
      v22 = __CocoaSet.contains(_:)();

      if ((v22 & 1) == 0)
      {
LABEL_26:
        v29 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1003565C8(0, *(v37 + 2) + 1, 1, v37);
        }

        v31 = *(v37 + 2);
        v30 = *(v37 + 3);
        if (v31 >= v30 >> 1)
        {
          v37 = sub_1003565C8((v30 > 1), v31 + 1, 1, v37);
        }

        *(v37 + 2) = v31 + 1;
        *&v37[8 * v31 + 32] = v36;
        v11 = v29;
      }
    }

    else
    {
      v34 = v6;
      v35 = v3;
      if (!*(v12 + 16) || (sub_100014C84(0, &qword_101909920, NSNumber_ptr), v23 = NSObject._rawHashValue(seed:)(*(v12 + 40)), v24 = -1 << *(v12 + 32), v25 = v23 & ~v24, ((*(v39 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0))
      {
LABEL_25:

        v3 = v35;
        v11 = 0;
        v6 = v34;
        goto LABEL_26;
      }

      v26 = ~v24;
      while (1)
      {
        v27 = *(*(v12 + 48) + 8 * v25);
        v28 = static NSObject.== infix(_:_:)();

        if (v28)
        {
          break;
        }

        v25 = (v25 + 1) & v26;
        if (((*(v39 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v3 = v35;
      v11 = 0;
      v6 = v34;
      v15 = v38;
LABEL_10:
    }
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v16 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v16);
    ++v13;
    if (v9)
    {
      v13 = v16;
      goto LABEL_16;
    }
  }

  v32 = sub_100455250(v37);
  v1[12] = v32;

  v33 = swift_task_alloc();
  v1[13] = v33;
  *v33 = v1;
  v33[1] = sub_100445B68;

  sub_100456618(v32);
}

uint64_t sub_1004455C8(uint64_t a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1004456E0, v2, 0);
}

uint64_t sub_1004456E0()
{
  v1 = v0;
  *(v0[9] + 128) = v0[11];

  if (qword_101906890 != -1)
  {
LABEL_35:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_101960338);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[9];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(*(v6 + 128) + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Found existing %ld cities.", v7, 0xCu);
  }

  else
  {
  }

  v8 = v1[8];

  sub_100444BE4(v9);
  v11 = v8 + 64;
  v12 = -1 << *(v8 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v8 + 64);
  v15 = (63 - v12) >> 6;
  v16 = v10 & 0xC000000000000001;
  v17 = v10;
  v44 = v10 + 56;

  v18 = 0;
  v42 = _swiftEmptyArrayStorage;
  while (v14)
  {
LABEL_16:
    v21 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = *(*(v8 + 56) + ((v18 << 9) | (8 * v21)));
    v22 = [v19 enclosingRegionIdentifier];
    if (!v22)
    {
      goto LABEL_10;
    }

    v43 = v19;
    v23 = v22;
    v24 = [v22 muid];

    v41 = v24;
    v25 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v24];
    if (v16)
    {
      v26 = __CocoaSet.contains(_:)();

      if ((v26 & 1) == 0)
      {
LABEL_26:
        v33 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1003565C8(0, *(v42 + 2) + 1, 1, v42);
        }

        v35 = *(v42 + 2);
        v34 = *(v42 + 3);
        if (v35 >= v34 >> 1)
        {
          v42 = sub_1003565C8((v34 > 1), v35 + 1, 1, v42);
        }

        *(v42 + 2) = v35 + 1;
        *&v42[8 * v35 + 32] = v41;
        v16 = v33;
      }
    }

    else
    {
      v39 = v11;
      v40 = v8;
      if (!*(v17 + 16) || (sub_100014C84(0, &qword_101909920, NSNumber_ptr), v27 = NSObject._rawHashValue(seed:)(*(v17 + 40)), v28 = -1 << *(v17 + 32), v29 = v27 & ~v28, ((*(v44 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0))
      {
LABEL_25:

        v8 = v40;
        v16 = 0;
        v11 = v39;
        goto LABEL_26;
      }

      v30 = ~v28;
      while (1)
      {
        v31 = *(*(v17 + 48) + 8 * v29);
        v32 = static NSObject.== infix(_:_:)();

        if (v32)
        {
          break;
        }

        v29 = (v29 + 1) & v30;
        if (((*(v44 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v8 = v40;
      v16 = 0;
      v11 = v39;
      v19 = v43;
LABEL_10:
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v20);
    ++v18;
    if (v14)
    {
      v18 = v20;
      goto LABEL_16;
    }
  }

  v36 = sub_100455250(v42);
  v1[12] = v36;

  v37 = swift_task_alloc();
  v1[13] = v37;
  *v37 = v1;
  v37[1] = sub_100445B68;

  return sub_100456618(v36);
}

uint64_t sub_100445B68(uint64_t a1)
{
  v3 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v4 = v3[9];
    v5 = sub_100445EB0;
  }

  else
  {
    v6 = v3[9];

    v5 = sub_100445C90;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100445C90()
{
  v15 = v0;
  if (qword_101906890 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960338);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[14];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Fetched %ld new cities...", v6, 0xCu);
  }

  else
  {
  }

  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[9];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v9 + 128);
  *(v9 + 128) = 0x8000000000000000;
  sub_100457440(v7, sub_1004551DC, 0, isUniquelyReferenced_nonNull_native, &v14);
  if (v8)
  {

    return swift_endAccess();
  }

  else
  {
    v12 = v0[9];

    *(v12 + 128) = v14;
    swift_endAccess();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100445EB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100445F34()
{
  v1 = sub_1000D5CD8(*(v0[2] + 120), *(v0[2] + 112));
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v0[3] = v1;

  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = sub_100446010;

  return sub_1004576D0(v1, v3, v5, v7);
}

uint64_t sub_100446010(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[5] = a1;
  v4[6] = v1;

  if (v1)
  {
    v6 = v4[2];

    return _swift_task_switch(sub_10044631C, v6, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = swift_task_alloc();
    v4[7] = v7;
    *v7 = v5;
    v7[1] = sub_10044619C;

    return sub_10044518C(a1);
  }
}

uint64_t sub_10044619C()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[2];

    return _swift_task_switch(sub_100446620, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[9] = v4;
    *v4 = v2;
    v4[1] = sub_1004464C8;
    v5 = v2[5];

    return sub_100446970(v5);
  }
}

uint64_t sub_10044631C()
{
  swift_unknownObjectRelease();
  if (qword_101906890 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960338);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in preparing next batch: %@", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0, &unk_1011E4A70);
  }

  v7 = sub_1000D1E78(_swiftEmptyArrayStorage);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_1004464C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v6 = *(v4 + 16);

    return _swift_task_switch(sub_1004467C4, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_100446620()
{
  if (qword_101906890 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960338);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in preparing next batch: %@", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0, &unk_1011E4A70);
  }

  v7 = sub_1000D1E78(_swiftEmptyArrayStorage);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_1004467C4()
{

  if (qword_101906890 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960338);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in preparing next batch: %@", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0, &unk_1011E4A70);
  }

  v7 = sub_1000D1E78(_swiftEmptyArrayStorage);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_100446970(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Date();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for VisitsLoader.VisitData(0);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  sub_1000CE6B8(&qword_101921970, &qword_101207638);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100446B18, v1, 0);
}

id sub_100446B18()
{
  v94 = v0;
  v1 = v0[7];
  v0[6] = sub_1000D2048(_swiftEmptyArrayStorage);
  v2 = sub_1000D1E78(_swiftEmptyArrayStorage);
  v3 = *(v1 + 32);
  *(v0 + 260) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v0[23] = v2;

  v7 = 0;
  v92 = v0;
  if (!v6)
  {
LABEL_6:
    v9 = ((1 << *(v0 + 260)) + 63) >> 6;
    if (v9 <= (v7 + 1))
    {
      v10 = v7 + 1;
    }

    else
    {
      v10 = ((1 << *(v0 + 260)) + 63) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v74 = v0[21];
        v75 = sub_1000CE6B8(&qword_101921978, &qword_101207648);
        (*(*(v75 - 8) + 56))(v74, 1, 1, v75);
        v6 = 0;
        v7 = v11;
        goto LABEL_15;
      }

      v8 = v0[7];
      v6 = *(v8 + 8 * v12 + 64);
      ++v7;
      if (v6)
      {
        v7 = v12;
        goto LABEL_14;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
    goto LABEL_42;
  }

  while (1)
  {
    v8 = v0[7];
LABEL_14:
    v14 = v0[20];
    v13 = v0[21];
    v15 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v16 = v15 | (v7 << 6);
    sub_10012EEEC(*(v8 + 48) + *(v0[14] + 72) * v16, v14);
    v17 = *(*(v8 + 56) + 8 * v16);
    v18 = sub_1000CE6B8(&qword_101921978, &qword_101207648);
    v19 = *(v18 + 48);
    sub_1000D2BF0(v14, v13);
    *(v13 + v19) = v17;
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
    v20 = v17;
LABEL_15:
    v0[24] = v6;
    v0[25] = v7;
    v21 = v0[22];
    sub_1000F11C4(v0[21], v21, &qword_101921970, &qword_101207638);
    v22 = sub_1000CE6B8(&qword_101921978, &qword_101207648);
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
    {
      break;
    }

    v23 = v0[22];
    v24 = v0[19];
    v25 = *(v23 + *(v22 + 48));
    v0[26] = v25;
    sub_1000D2BF0(v23, v24);
    result = [v25 _identifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v27 = result;
    v28 = [result mapsIdentifierString];

    v90 = v25;
    v91 = v7;
    if (v28)
    {
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v0[27] = v29;
      v0[28] = v31;
      v32 = v0[6];
      v0[29] = v32;
      if (!*(v32 + 16) || (v33 = sub_100297040(v29, v31), (v34 & 1) == 0))
      {
LABEL_38:
        v76 = v0[19];
        v77 = *(v0[13] + 20);
        *(v0 + 64) = v77;

        v78 = swift_task_alloc();
        v0[30] = v78;
        *v78 = v0;
        v78[1] = sub_10044757C;
        v79 = v0[19];

        return sub_100457C84(v76 + v77, v29, v31, v79);
      }

      v88 = v29;
      v89 = v31;
      v35 = *(*(v32 + 56) + 8 * v33);
      v0 = *(v35 + 16);

      v36 = 0;
      do
      {
        if (v0 == v36)
        {

          v0 = v92;
          v31 = v89;
          v29 = v88;
          goto LABEL_38;
        }

        if (v36 >= *(v35 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v37 = v92[12];
        v38 = v92[9];
        v39 = v92[10];
        (*(v39 + 16))(v37, v35 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v36++, v38);
        isa = Date._bridgeToObjectiveC()().super.isa;
        v41 = Date._bridgeToObjectiveC()().super.isa;
        IsSameDayOfYear = MapsSuggestionsIsSameDayOfYear();

        (*(v39 + 8))(v37, v38);
      }

      while ((IsSameDayOfYear & 1) == 0);

      if (qword_101906890 != -1)
      {
        swift_once();
      }

      v0 = v92;
      v43 = v92[18];
      v44 = v92[19];
      v45 = type metadata accessor for Logger();
      sub_100021540(v45, qword_101960338);
      sub_10012EEEC(v44, v43);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v92[18];
      if (v48)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v93 = v51;
        *v50 = 136315138;
        type metadata accessor for UUID();
        sub_1004538F4(&qword_101915A98, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = v53;
        sub_100298820(v49);
        v55 = sub_10004DEB8(v52, v54, &v93);

        *(v50 + 4) = v55;
        v56 = v47;
        v57 = v46;
        v58 = "FilterVisits: %s: Found a prior visit. Dropping.";
        goto LABEL_32;
      }
    }

    else
    {
      if (qword_101906890 != -1)
      {
        swift_once();
      }

      v59 = v0[19];
      v60 = v0[15];
      v61 = type metadata accessor for Logger();
      sub_100021540(v61, qword_101960338);
      sub_10012EEEC(v59, v60);
      v46 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      v63 = os_log_type_enabled(v46, v62);
      v49 = v0[15];
      if (v63)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v93 = v51;
        *v50 = 136315138;
        type metadata accessor for UUID();
        sub_1004538F4(&qword_101915A98, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        sub_100298820(v49);
        v67 = sub_10004DEB8(v64, v66, &v93);

        *(v50 + 4) = v67;
        v56 = v62;
        v57 = v46;
        v58 = "FilterVisits: %s: No mapItemIdentifier found for visit. Skipping.";
LABEL_32:
        _os_log_impl(&_mh_execute_header, v57, v56, v58, v50, 0xCu);
        sub_10004E3D0(v51);

        goto LABEL_34;
      }
    }

    sub_100298820(v49);
LABEL_34:
    v68 = v0[19];
    sub_1000CE6B8(&unk_101921990, &unk_1011FD130);
    v69 = type metadata accessor for UUID();
    v70 = *(v69 - 8);
    v71 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1011E1D30;
    (*(v70 + 16))(v72 + v71, v68, v69);
    v73 = sub_1005300AC(v72);
    swift_setDeallocating();
    (*(v70 + 8))(v72 + v71, v69);
    swift_deallocClassInstance();
    sub_1004488B4(v73);

    sub_100298820(v68);
    v7 = v91;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  if (qword_101906890 != -1)
  {
    goto LABEL_50;
  }

LABEL_42:
  v80 = type metadata accessor for Logger();
  sub_100021540(v80, qword_101960338);

  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();
  v83 = os_log_type_enabled(v81, v82);
  v84 = v0[8];
  if (v83)
  {
    v85 = swift_slowAlloc();
    *v85 = 134217984;
    *(v85 + 4) = *(*(v84 + 112) + 16);

    _os_log_impl(&_mh_execute_header, v81, v82, "FilterVisits: Remaining count: %ld", v85, 0xCu);
  }

  else
  {
  }

  v86 = v0[1];
  v87 = v0[23];

  return v86(v87);
}