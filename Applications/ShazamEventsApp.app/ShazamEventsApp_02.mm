Swift::String *sub_1000420AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for FilterViewModel.FilterConfiguration(255, a3, a5, a4);
  v9 = type metadata accessor for Binding();
  v22 = *(v9 - 8);
  v23 = v9;
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  v21[1] = type metadata accessor for FilterViewModel(0, a3, a5, v12);
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v13 = type metadata accessor for VenueEventView(0, &v31);
  v14 = sub_10003933C(v13);
  v16 = v15;
  v18 = v17;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  swift_getKeyPath();
  v28 = v14;
  v29 = v16;
  v30 = v18;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  type metadata accessor for VenueEventViewModel(255, &v31);
  type metadata accessor for Binding();
  Binding.subscript.getter();

  v19 = sub_100164A14(v11);
  (*(v22 + 8))(v11, v23);
  return v19;
}

uint64_t sub_100042264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v7 = type metadata accessor for VenueEventView(0, v9);
  sub_1000392E0(v7);
  a6();
}

uint64_t sub_1000422BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v6 = type metadata accessor for VenueEventView(0, v9);
  sub_1000392E0(v6);
  if (*(a1 + *(v6 + 56)))
  {

    sub_100031018(v7);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100042608(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100042398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v6 = type metadata accessor for VenueEventView(0, v9);
  sub_1000392E0(v6);
  v7 = *(a1 + *(v6 + 56));
  if (v7)
  {

    sub_100030CD0(0, 2, 0, 3u, v7);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100042608(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_10004248C()
{
  result = qword_10021A330;
  if (!qword_10021A330)
  {
    sub_10000B3DC(&qword_10021A328, &qword_1001AF908);
    sub_10000B3DC(&qword_10021A338, &qword_1001AF910);
    type metadata accessor for PlainButtonStyle();
    sub_10000D1EC(&qword_10021A340, &qword_10021A338, &qword_1001AF910, &protocol conformance descriptor for Button<A>);
    sub_100042608(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100042608(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A330);
  }

  return result;
}

uint64_t sub_100042608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100042650()
{
  result = qword_10021A358;
  if (!qword_10021A358)
  {
    sub_10000B3DC(&qword_10021A350, &qword_1001AF920);
    sub_10000D1EC(&qword_10021A360, &qword_10021A368, &qword_1001AF928, &protocol conformance descriptor for TupleToolbarContent<A>);
    sub_10000D1EC(&qword_10021A370, &qword_10021A378, &qword_1001AF930, &protocol conformance descriptor for TupleToolbarContent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A358);
  }

  return result;
}

unint64_t sub_100042730()
{
  result = qword_10021A380;
  if (!qword_10021A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A380);
  }

  return result;
}

unint64_t sub_100042784()
{
  result = qword_10021A388;
  if (!qword_10021A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A388);
  }

  return result;
}

__n128 sub_100042844(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_10004286C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002F650();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000428EC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for VenueEventView(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_100041E24(v8, v3, v4, v5, v6, a1);
}

uint64_t sub_1000429B0(void (*a1)(void))
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for VenueEventView(0, v9) - 8);
  return sub_100042264(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

uint64_t sub_100042A68(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v10[0] = v1[2];
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = *(type metadata accessor for VenueEventView(0, v10) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

Swift::String *sub_100042B30()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for VenueEventView(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1000420AC(v6, v1, v2, v3, v4);
}

uint64_t sub_100042C04(uint64_t a1, char *a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for VenueEventView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_10003EB80(a1, a2, v10, v5, v6, v7, v8);
}

unint64_t sub_100042D0C()
{
  result = qword_10021A420;
  if (!qword_10021A420)
  {
    sub_10000B3DC(&qword_10021A418, &qword_1001AFAA8);
    sub_100042DC4();
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8, &unk_1001ADC10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A420);
  }

  return result;
}

unint64_t sub_100042DC4()
{
  result = qword_10021A428;
  if (!qword_10021A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A428);
  }

  return result;
}

unint64_t sub_100042E48()
{
  result = qword_10021A450;
  if (!qword_10021A450)
  {
    sub_10000B3DC(&qword_10021A458, &qword_1001AFAC0);
    sub_100042ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A450);
  }

  return result;
}

unint64_t sub_100042ECC()
{
  result = qword_10021A460;
  if (!qword_10021A460)
  {
    sub_10000B3DC(&qword_10021A468, &qword_1001AFAC8);
    sub_100042DC4();
    sub_100042F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A460);
  }

  return result;
}

unint64_t sub_100042F58()
{
  result = qword_10021A470;
  if (!qword_10021A470)
  {
    sub_10000B3DC(&qword_10021A478, &qword_1001AFAD0);
    sub_10000D1EC(&qword_10021A480, &qword_100218930, &qword_1001B7CF0, &protocol conformance descriptor for Button<A>);
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8, &unk_1001AD240, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A470);
  }

  return result;
}

unint64_t sub_10004304C()
{
  result = qword_10021EE00;
  if (!qword_10021EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE00);
  }

  return result;
}

uint64_t sub_1000430E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021A478, &qword_1001AFAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043158()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v1 = v7;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  type metadata accessor for VenueEventView(0, &v7);
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v5 = type metadata accessor for VenueEventView(0, &v7);
  return sub_100040A94(v5);
}

uint64_t sub_100043214()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100043328(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    a4();
    sub_100042608(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000433DC()
{
  result = qword_10021A4B0;
  if (!qword_10021A4B0)
  {
    sub_10000B3DC(&qword_10021A4B8, &qword_1001AFB58);
    sub_10000D1EC(&qword_100219128, &qword_100219130, &qword_1001ADD38, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A4B0);
  }

  return result;
}

unint64_t sub_1000434AC()
{
  result = qword_10021A4C0;
  if (!qword_10021A4C0)
  {
    sub_10000B3DC(&qword_10021A320, &qword_1001AF900);
    sub_100043328(&qword_10021A4A8, &qword_10021A4A0, &qword_1001AFB50, sub_1000433DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A4C0);
  }

  return result;
}

unint64_t sub_100043568()
{
  result = qword_10021A4C8;
  if (!qword_10021A4C8)
  {
    sub_10000B3DC(&qword_10021A318, &qword_1001AF8F8);
    sub_10000B3DC(&qword_10021A490, &qword_1001AFB48);
    sub_10004365C();
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021A498, &qword_10021A310, &qword_1001AF8F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A4C8);
  }

  return result;
}

unint64_t sub_10004365C()
{
  result = qword_10021A4D0;
  if (!qword_10021A4D0)
  {
    sub_10000B3DC(&qword_10021A490, &qword_1001AFB48);
    sub_100043328(&qword_10021A4D8, &qword_10021A4E0, &qword_1001AFB60, sub_10002DB5C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A4D0);
  }

  return result;
}

uint64_t sub_100043748()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v2 = type metadata accessor for VenueEventView(0, v7);
  v3 = v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80));

  v4 = *(v2 + 52);
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10004388C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for VenueEventView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_10003DCA4(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_100043948()
{
  v1 = *(v0 + 40);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v9 = v12;
  v13 = v1;
  v2 = type metadata accessor for VenueEventView(0, &v11);
  v10 = *(*(v2 - 8) + 64);
  v3 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v4 = *(v9 - 8);
  v5 = *(v4 + 80);

  v6 = *(v2 + 52);
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((v3 + v10 + v5) & ~v5), v9);
  return swift_deallocObject();
}

uint64_t sub_100043B28()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v9[0] = v0[2];
  v1 = v9[0];
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v5 = *(type metadata accessor for VenueEventView(0, v9) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0 + ((v6 + *(v5 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80));

  return sub_10003E2BC(v0 + v6, v7, v1, v2, v3, v4);
}

unint64_t sub_100043C30()
{
  result = qword_10021A4F8;
  if (!qword_10021A4F8)
  {
    sub_10000B3DC(&qword_10021A4F0, &qword_1001AFB70);
    sub_100043CE8();
    sub_10000D1EC(&qword_100219D48, &qword_100219D50, &unk_1001AFCC0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A4F8);
  }

  return result;
}

unint64_t sub_100043CE8()
{
  result = qword_10021A500[0];
  if (!qword_10021A500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021A500);
  }

  return result;
}

uint64_t *sub_100043D3C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100043DA8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v20 = v3;
  type metadata accessor for NavigationPath();
  type metadata accessor for VenueEventListHeader(255, v2, v4, v5);
  v6 = type metadata accessor for Section();
  v32 = &protocol witness table for EmptyView;
  WitnessTable = swift_getWitnessTable();
  v34 = &protocol witness table for EmptyView;
  v22 = v6;
  v23 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A310, &qword_1001AF8F0);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021A318, &qword_1001AF8F8);
  sub_10000B3DC(&qword_10021A320, &qword_1001AF900);
  type metadata accessor for Array();
  v21 = *(v3[1] + 16);
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021A328, &qword_1001AF908);
  swift_getWitnessTable();
  v7 = v1;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  type metadata accessor for Section();
  v31 = sub_10004248C();
  v28 = &protocol witness table for EmptyView;
  v29 = swift_getWitnessTable();
  v30 = &protocol witness table for EmptyView;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for List();
  type metadata accessor for PlainListStyle();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_100027068();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A348, &qword_1001AF918);
  swift_getOpaqueTypeConformance2();
  sub_10000B3DC(&qword_10021A350, &qword_1001AF920);
  sub_100042650();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v8 = type metadata accessor for NavigationStack();
  v22 = v1;
  v23 = &type metadata for ArtistFetcher;
  v24 = &type metadata for PromotionalPlaylistFetcher;
  v25 = v3;
  v26 = sub_100042730();
  v27 = sub_100042784();
  v9 = type metadata accessor for MusicEventView(255, &v22);
  v10 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v22 = v8;
  v23 = v7;
  v24 = v9;
  v25 = v10;
  v26 = v21;
  v27 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = type metadata accessor for FilterView(255, v7, v20, v13);
  v22 = v8;
  v23 = v7;
  v24 = v9;
  v25 = v10;
  v26 = v21;
  v27 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = swift_getWitnessTable();
  v22 = OpaqueTypeMetadata2;
  v23 = v14;
  v24 = OpaqueTypeConformance2;
  v25 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v22 = OpaqueTypeMetadata2;
  v23 = v14;
  v24 = OpaqueTypeConformance2;
  v25 = v16;
  v18 = swift_getOpaqueTypeConformance2();
  v22 = v17;
  v23 = &type metadata for String;
  v24 = v18;
  v25 = &protocol witness table for String;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v22 = v17;
  v23 = &type metadata for String;
  v24 = v18;
  v25 = &protocol witness table for String;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100042608(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1000447E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a2;
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  (*(v6 + 72))(v7, v6);
  v13 = *(AssociatedTypeWitness - 8);
  v14 = 1;
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    AssociatedTypeWitness = v9;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 40))(a1, v18, 0, AssociatedTypeWitness, AssociatedConformanceWitness);
    v14 = 0;
    v10 = v13;
  }

  (*(v10 + 8))(v12, AssociatedTypeWitness);
  v16 = type metadata accessor for URL();
  return (*(*(v16 - 8) + 56))(a4, v14, 1, v16);
}

void sub_100044B14(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v3;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 13;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = xmmword_1001AFBB0;
  *(inited + 168) = 3;
  if (*(a1 + 72))
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v14 = v6;
  v15 = v7;

  v8 = sub_1001666DC(1, 5, 1, inited);
  v12 = v8;
  sub_1000109BC(&aBlock, v19);
  sub_1000EB0D0(4, v19, &v12, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000001ELL;
  v10[3] = 0x80000001001BDDE0;
  v10[4] = v8;
  v17 = sub_100010AAC;
  v18 = v10;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1000DCA40;
  v16 = &unk_10020B128;
  v11 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

uint64_t sub_100044D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, uint64_t a7@<X5>)
{
  v8 = a4;
  *a6 = a1;
  *(a6 + 1) = a2;
  v11 = type metadata accessor for SetlistSongRowViewModel(0, a5, a7, a4);
  result = (*(*(a5 - 8) + 32))(&a6[*(v11 + 36)], a3, a5);
  a6[*(v11 + 40)] = v8;
  return result;
}

uint64_t sub_100044E20(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100044EA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_100045030(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_100045284()
{

  return swift_deallocObject();
}

uint64_t sub_1000452C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000452DC(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 && *(v1 + 16))
  {

    v2 = sub_1000D8558(5);
    if ((v3 & 1) != 0 && (v4 = *(*(v1 + 56) + v2), , v4))
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_1000453C4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100038AB0();
  a1[1] = v2;
}

uint64_t sub_100045404(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000365A4(v1, v2);
}

uint64_t sub_100045444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SetlistViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v5;
}

uint64_t sub_100045498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SetlistViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  State.projectedValue.getter();
  return v5;
}

uint64_t sub_1000454F0()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100009F70(&qword_100219658, &qword_1001AFE60);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_100009F70(&qword_100219278, qword_1001AFC50);
  v8 = __chkstk_darwin(v7 - 8);
  v23 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - v11;
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_100023FFC(&v22 - v13);
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.regular(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_10000D58C(v14, v6, &qword_100219278, qword_1001AFC50);
  sub_10000D58C(v12, &v6[v15], &qword_100219278, qword_1001AFC50);
  v16 = *(v1 + 48);
  if (v16(v6, 1, v0) != 1)
  {
    sub_10000D58C(v6, v23, &qword_100219278, qword_1001AFC50);
    if (v16(&v6[v15], 1, v0) != 1)
    {
      v18 = v22;
      (*(v1 + 32))(v22, &v6[v15], v0);
      sub_10004E45C(&qword_100219290, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v19 = v23;
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v1 + 8);
      v21(v18, v0);
      sub_10000D52C(v12, &qword_100219278, qword_1001AFC50);
      sub_10000D52C(v14, &qword_100219278, qword_1001AFC50);
      v21(v19, v0);
      sub_10000D52C(v6, &qword_100219278, qword_1001AFC50);
      if (v20)
      {
        return 2;
      }

      return 1;
    }

    sub_10000D52C(v12, &qword_100219278, qword_1001AFC50);
    sub_10000D52C(v14, &qword_100219278, qword_1001AFC50);
    (*(v1 + 8))(v23, v0);
LABEL_6:
    sub_10000D52C(v6, &qword_100219658, &qword_1001AFE60);
    return 1;
  }

  sub_10000D52C(v12, &qword_100219278, qword_1001AFC50);
  sub_10000D52C(v14, &qword_100219278, qword_1001AFC50);
  if (v16(&v6[v15], 1, v0) != 1)
  {
    goto LABEL_6;
  }

  sub_10000D52C(v6, &qword_100219278, qword_1001AFC50);
  return 2;
}

uint64_t sub_10004593C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v88 = type metadata accessor for TaskPriority();
  v87 = *(v88 - 8);
  v3 = __chkstk_darwin(v88);
  v86 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(a1 - 8);
  v95 = *(v84 + 64);
  __chkstk_darwin(v3);
  v93 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B3DC(&qword_10021A608, &qword_1001AFCB8);
  v83 = a1;
  v6 = *(a1 + 24);
  v91 = *(a1 + 16);
  v92 = v6;
  type metadata accessor for SetlistDetailSection(255, v91, v6, v7);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Array();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistSongRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  sub_10000B3DC(&qword_100219D50, &unk_1001AFCC0);
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_10000D1EC(&qword_100219D48, &qword_100219D50, &unk_1001AFCC0, &protocol conformance descriptor for _ContentShapeModifier<A>);
  v107 = WitnessTable;
  v108 = v13;
  v85 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v14 = type metadata accessor for Button();
  v15 = type metadata accessor for PlainButtonStyle();
  v16 = swift_getWitnessTable();
  v17 = sub_10004E45C(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v102 = v14;
  v103 = v15;
  v104 = v16;
  v105 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v102 = v14;
  v103 = v15;
  v104 = v16;
  v105 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v102 = OpaqueTypeMetadata2;
  v103 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = swift_getWitnessTable();
  v22 = sub_10004D8BC();
  v102 = v9;
  v103 = &type metadata for MusicItemID;
  v104 = v20;
  v105 = v21;
  v106 = v22;
  type metadata accessor for ForEach();
  v102 = OpaqueTypeMetadata2;
  v103 = OpaqueTypeConformance2;
  v101 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v23 = type metadata accessor for LazyHGrid();
  v24 = swift_getWitnessTable();
  v102 = v23;
  v103 = v24;
  swift_getOpaqueTypeMetadata2();
  v102 = v23;
  v103 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = type metadata accessor for ScrollView();
  v26 = swift_getWitnessTable();
  v102 = v25;
  v103 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v28 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v102 = v25;
  v103 = v26;
  v29 = swift_getOpaqueTypeConformance2();
  v102 = v27;
  v103 = v28;
  v104 = v29;
  v105 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v30 = swift_getOpaqueTypeMetadata2();
  v102 = v27;
  v103 = v28;
  v104 = v29;
  v105 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v31 = swift_getOpaqueTypeConformance2();
  v102 = v30;
  v103 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v102 = v30;
  v103 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  v102 = v32;
  v103 = &type metadata for MusicItemID;
  v104 = v33;
  v105 = v22;
  v34 = swift_getOpaqueTypeMetadata2();
  v35 = sub_10000B3DC(&qword_10021A250, &unk_1001AF798);
  v102 = v32;
  v103 = &type metadata for MusicItemID;
  v104 = v33;
  v105 = v22;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_100038B78();
  v102 = v34;
  v103 = v35;
  v104 = v36;
  v105 = v37;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v38 = type metadata accessor for VStack();
  v74 = v38;
  v78 = *(v38 - 8);
  __chkstk_darwin(v38);
  v71 = &v70 - v39;
  v90 = swift_getWitnessTable();
  v102 = v38;
  v103 = v90;
  v79 = &unk_1001C2954;
  v76 = swift_getOpaqueTypeMetadata2();
  v81 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v70 - v40;
  v80 = type metadata accessor for ModifiedContent();
  v82 = *(v80 - 8);
  v41 = __chkstk_darwin(v80);
  v75 = &v70 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v77 = &v70 - v43;
  static HorizontalAlignment.leading.getter();
  v44 = v91;
  v45 = v92;
  v96 = v91;
  v97 = v92;
  v46 = v94;
  v98 = v94;
  VStack.init(alignment:spacing:content:)();
  v70 = "-Upcoming-Event-Header-Title";
  v47 = v84;
  v72 = *(v84 + 16);
  v48 = v93;
  v49 = v83;
  v72(v93, v46, v83);
  type metadata accessor for MainActor();
  v50 = static MainActor.shared.getter();
  v51 = *(v47 + 80);
  v52 = v47;
  v53 = swift_allocObject();
  v53[2] = v50;
  v53[3] = &protocol witness table for MainActor;
  v53[4] = v44;
  v53[5] = v45;
  v84 = *(v52 + 32);
  v54 = v49;
  (v84)(v53 + ((v51 + 48) & ~v51), v48, v49);
  v55 = v86;
  v56 = v74;
  v57 = v90;
  j___sScP13userInitiatedScPvgZ();
  v58 = v73;
  v59 = v71;
  sub_100009FB8(0, v55, 0xD000000000000021, (v70 | 0x8000000000000000), 79, &unk_1001AFCD8, v53, v73, v56, v57);
  (*(v87 + 8))(v55, v88);
  (*(v78 + 8))(v59, v56);
  v60 = v93;
  v72(v93, v94, v54);
  v61 = swift_allocObject();
  v62 = v92;
  *(v61 + 16) = v91;
  *(v61 + 24) = v62;
  (v84)(v61 + ((v51 + 32) & ~v51), v60, v54);
  v102 = v56;
  v103 = v90;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v75;
  v65 = v76;
  View.onDisappear(perform:)();

  (*(v81 + 8))(v58, v65);
  v99 = v63;
  v100 = &protocol witness table for _AppearanceActionModifier;
  v66 = v80;
  swift_getWitnessTable();
  v67 = v77;
  sub_100157EFC();
  v68 = *(v82 + 8);
  v68(v64, v66);
  sub_100157EFC();
  return (v68)(v67, v66);
}

uint64_t sub_100046578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v236 = a1;
  v227 = a4;
  v237 = type metadata accessor for SetlistView(0, a2, a3, a5);
  v226 = *(v237 - 8);
  v224 = *(v226 + 64);
  __chkstk_darwin(v237);
  v225 = &v176 - v7;
  v8 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  __chkstk_darwin(v8 - 8);
  v221 = &v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v222 = *(v10 - 8);
  __chkstk_darwin(v10);
  v220 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContentMarginPlacement();
  v218 = *(v12 - 8);
  v219 = v12;
  __chkstk_darwin(v12);
  v217 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Array();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistSongRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  sub_10000B3DC(&qword_100219D50, &unk_1001AFCC0);
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v19 = sub_10000D1EC(&qword_100219D48, &qword_100219D50, &unk_1001AFCC0, &protocol conformance descriptor for _ContentShapeModifier<A>);
  v268 = WitnessTable;
  v269 = v19;
  swift_getWitnessTable();
  v20 = type metadata accessor for Button();
  v21 = type metadata accessor for PlainButtonStyle();
  v22 = swift_getWitnessTable();
  v23 = sub_10004E45C(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  *&v270 = v20;
  *(&v270 + 1) = v21;
  *&v271 = v22;
  *(&v271 + 1) = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v270 = v20;
  *(&v270 + 1) = v21;
  *&v271 = v22;
  *(&v271 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v270 = OpaqueTypeMetadata2;
  *(&v270 + 1) = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeMetadata2();
  v27 = swift_getWitnessTable();
  v28 = sub_10004D8BC();
  *&v270 = v15;
  *(&v270 + 1) = &type metadata for MusicItemID;
  *&v271 = v26;
  *(&v271 + 1) = v27;
  *&v272 = v28;
  type metadata accessor for ForEach();
  *&v270 = OpaqueTypeMetadata2;
  *(&v270 + 1) = OpaqueTypeConformance2;
  v267 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v29 = type metadata accessor for LazyHGrid();
  v30 = swift_getWitnessTable();
  *&v270 = v29;
  *(&v270 + 1) = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  *&v270 = v29;
  *(&v270 + 1) = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v199 = v31;
  v195 = v32;
  v33 = type metadata accessor for ScrollView();
  v201 = *(v33 - 8);
  __chkstk_darwin(v33);
  v198 = &v176 - v34;
  v35 = swift_getWitnessTable();
  *&v270 = v33;
  *(&v270 + 1) = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v197 = *(v36 - 8);
  __chkstk_darwin(v36);
  v194 = &v176 - v37;
  v202 = v33;
  *&v270 = v33;
  *(&v270 + 1) = v35;
  v191 = v35;
  v38 = swift_getOpaqueTypeConformance2();
  *&v270 = v36;
  *(&v270 + 1) = v10;
  *&v271 = v38;
  *(&v271 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v39 = swift_getOpaqueTypeMetadata2();
  v192 = *(v39 - 8);
  __chkstk_darwin(v39);
  v189 = v38;
  v190 = &v176 - v40;
  v200 = v36;
  *&v270 = v36;
  *(&v270 + 1) = v10;
  v223 = v10;
  *&v271 = v38;
  *(&v271 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v41 = swift_getOpaqueTypeConformance2();
  *&v270 = v39;
  *(&v270 + 1) = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v204 = *(v42 - 8);
  __chkstk_darwin(v42);
  v203 = &v176 - v43;
  v193 = v39;
  *&v270 = v39;
  *(&v270 + 1) = v41;
  v188 = v41;
  v44 = swift_getOpaqueTypeConformance2();
  *&v270 = v42;
  *(&v270 + 1) = &type metadata for MusicItemID;
  *&v271 = v44;
  *(&v271 + 1) = v28;
  v45 = swift_getOpaqueTypeMetadata2();
  v211 = *(v45 - 8);
  __chkstk_darwin(v45);
  v209 = &v176 - v46;
  v47 = sub_10000B3DC(&qword_10021A250, &unk_1001AF798);
  v207 = v42;
  *&v270 = v42;
  *(&v270 + 1) = &type metadata for MusicItemID;
  v196 = v44;
  *&v271 = v44;
  *(&v271 + 1) = v28;
  v216 = v28;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_100038B78();
  v212 = v45;
  *&v270 = v45;
  *(&v270 + 1) = v47;
  v208 = v47;
  v205 = v49;
  v206 = v48;
  *&v271 = v48;
  *(&v271 + 1) = v49;
  v215 = swift_getOpaqueTypeMetadata2();
  v210 = *(v215 - 8);
  v50 = __chkstk_darwin(v215);
  v214 = &v176 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v213 = &v176 - v52;
  v238 = a2;
  v54 = type metadata accessor for SetlistDetailSection(0, a2, v240, v53);
  v179 = *(v54 - 8);
  __chkstk_darwin(v54);
  v177 = &v176 - v55;
  v231 = v56;
  v57 = type metadata accessor for ModifiedContent();
  v181 = *(v57 - 8);
  __chkstk_darwin(v57);
  v178 = &v176 - v58;
  v230 = v59;
  v60 = type metadata accessor for ModifiedContent();
  v186 = *(v60 - 8);
  v61 = __chkstk_darwin(v60);
  v182 = &v176 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v180 = &v176 - v63;
  v235 = v64;
  v232 = type metadata accessor for Optional();
  v228 = *(v232 - 8);
  v65 = __chkstk_darwin(v232);
  v239 = &v176 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v234 = &v176 - v67;
  v68 = type metadata accessor for AccessibilityTraits();
  v184 = *(v68 - 8);
  v185 = v68;
  __chkstk_darwin(v68);
  v183 = &v176 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_100009F70(&qword_10021A608, &qword_1001AFCB8);
  v70 = __chkstk_darwin(v187);
  v229 = &v176 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v233 = &v176 - v72;
  sub_100045444(v237, v73, v74, v75);

  LOWORD(v175) = 256;
  v174 = 0;
  v76 = Text.init(_:tableName:bundle:comment:)();
  v78 = v77;
  LOBYTE(v47) = v79;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v80 = Text.font(_:)();
  v82 = v81;
  LOBYTE(v10) = v83;
  v85 = v84;

  sub_10000D60C(v76, v78, v47 & 1);

  KeyPath = swift_getKeyPath();
  v87 = swift_getKeyPath();
  LOBYTE(v270) = v10 & 1;
  LOBYTE(v259) = 0;
  LOBYTE(v47) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v250) = 0;
  *&v259 = v80;
  *(&v259 + 1) = v82;
  LOBYTE(v260) = v10 & 1;
  *(&v260 + 1) = v85;
  v88 = v236;
  *&v261 = KeyPath;
  *(&v261 + 1) = 2;
  LOBYTE(v262) = 0;
  *(&v262 + 1) = v87;
  LOBYTE(v263) = 0;
  BYTE8(v263) = v47;
  *&v264 = v89;
  *(&v264 + 1) = v90;
  *&v265 = v91;
  *(&v265 + 1) = v92;
  v266 = 0;
  v93 = v183;
  static AccessibilityTraits.isHeader.getter();
  sub_100009F70(&qword_10021A618, &unk_1001AFD40);
  sub_10004DBE4();
  v94 = v237;
  View.accessibilityAddTraits(_:)();
  (*(v184 + 8))(v93, v185);
  v274 = v263;
  v275 = v264;
  v276 = v265;
  v277 = v266;
  v270 = v259;
  v271 = v260;
  v272 = v261;
  v273 = v262;
  sub_10000D52C(&v270, &qword_10021A618, &unk_1001AFD40);
  sub_100045444(v94, v95, v96, v97);
  LOBYTE(v87) = sub_100036F38();

  if (v87)
  {
    v101 = sub_100045444(v94, v98, v99, v100);
    v102 = v177;
    sub_100047DCC(v101, v177);
    static Edge.Set.horizontal.getter();
    v103 = v231;
    v104 = swift_getWitnessTable();
    v105 = v178;
    View.padding(_:_:)();
    (*(v179 + 8))(v102, v103);
    static Edge.Set.bottom.getter();
    v243 = v104;
    v244 = &protocol witness table for _PaddingLayout;
    v106 = v230;
    v107 = swift_getWitnessTable();
    v108 = v182;
    View.padding(_:_:)();
    (*(v181 + 8))(v105, v106);
    v241 = v107;
    v242 = &protocol witness table for _PaddingLayout;
    v109 = v235;
    swift_getWitnessTable();
    v110 = v180;
    sub_100157EFC();
    v111 = v186;
    v112 = v186[1];
    v112(v108, v109);
    sub_100157EFC();
    v112(v110, v109);
    v113 = v239;
    (v111[4])(v239, v108, v109);
    (v111[7])(v113, 0, 1, v109);
  }

  else
  {
    (v186[7])(v239, 1, 1, v235);
    v257 = swift_getWitnessTable();
    v258 = &protocol witness table for _PaddingLayout;
    v255 = swift_getWitnessTable();
    v256 = &protocol witness table for _PaddingLayout;
    swift_getWitnessTable();
  }

  v114 = v239;
  sub_100150FB8(v239, v234);
  v115 = *(v228 + 8);
  v185 = v228 + 8;
  v186 = v115;
  (v115)(v114, v232);
  v116 = static Axis.Set.horizontal.getter();
  __chkstk_darwin(v116);
  v117 = v240;
  *(&v176 - 4) = v238;
  *(&v176 - 3) = v117;
  v174 = v88;
  v118 = v198;
  ScrollView.init(_:showsIndicators:content:)();
  static Edge.Set.horizontal.getter();
  v119 = v217;
  static ContentMarginPlacement.automatic.getter();
  v120 = v194;
  v121 = v202;
  View.contentMargins(_:_:for:)();
  (*(v218 + 8))(v119, v219);
  (*(v201 + 8))(v118, v121);
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v122 = v220;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v123 = v190;
  v124 = v200;
  v125 = v223;
  View.scrollTargetBehavior<A>(_:)();
  (*(v222 + 8))(v122, v125);
  (*(v197 + 8))(v120, v124);
  sub_100045444(v94, v126, v127, v128);

  v129 = v203;
  v130 = v193;
  View.scrollDisabled(_:)();
  (*(v192 + 8))(v123, v130);
  v134 = sub_100045498(v94, v131, v132, v133);
  v136 = v135;
  v138 = v137;
  __chkstk_darwin(v134);
  v139 = v238;
  v140 = v240;
  v174 = v238;
  v175 = v240;
  swift_getKeyPath();
  v252 = v134;
  v253 = v136;
  v254 = v138;
  type metadata accessor for SetlistViewModel(255, v139, v140, v141);
  type metadata accessor for Binding();
  Binding.subscript.getter();

  v142 = v259;
  v143 = v260;

  v250 = v142;
  v251 = v143;
  v144 = v209;
  v145 = v207;
  View.scrollPosition<A>(id:anchor:)();

  (*(v204 + 8))(v129, v145);
  v147 = v236;
  v146 = v237;
  sub_100045444(v237, v148, v149, v150);
  v151 = sub_100038AB0();
  v153 = v152;

  *&v259 = v151;
  *(&v259 + 1) = v153;
  v155 = v225;
  v154 = v226;
  (*(v226 + 16))(v225, v147, v146);
  v156 = (*(v154 + 80) + 32) & ~*(v154 + 80);
  v157 = swift_allocObject();
  v158 = v240;
  *(v157 + 16) = v238;
  *(v157 + 24) = v158;
  (*(v154 + 32))(v157 + v156, v155, v146);
  v159 = v214;
  v160 = v212;
  v161 = v208;
  v163 = v205;
  v162 = v206;
  View.onChange<A>(of:initial:_:)();

  (*(v211 + 8))(v144, v160);
  *&v259 = v160;
  *(&v259 + 1) = v161;
  *&v260 = v162;
  *(&v260 + 1) = v163;
  v164 = swift_getOpaqueTypeConformance2();
  v165 = v213;
  v166 = v215;
  sub_100157EFC();
  v167 = v210;
  v240 = *(v210 + 8);
  v240(v159, v166);
  v168 = v229;
  sub_10000D58C(v233, v229, &qword_10021A608, &qword_1001AFCB8);
  *&v259 = v168;
  v169 = v239;
  v170 = v232;
  (*(v228 + 16))(v239, v234, v232);
  *(&v259 + 1) = v169;
  (*(v167 + 16))(v159, v165, v166);
  *&v260 = v159;
  *&v250 = v187;
  *(&v250 + 1) = v170;
  *&v251 = v166;
  v252 = sub_10004DDF8();
  v248 = swift_getWitnessTable();
  v249 = &protocol witness table for _PaddingLayout;
  v246 = swift_getWitnessTable();
  v247 = &protocol witness table for _PaddingLayout;
  v245 = swift_getWitnessTable();
  v253 = swift_getWitnessTable();
  v254 = v164;
  sub_100151024(&v259, 3uLL, &v250);
  v171 = v240;
  v240(v165, v166);
  v172 = v186;
  (v186)(v234, v170);
  sub_10000D52C(v233, &qword_10021A608, &qword_1001AFCB8);
  v171(v159, v166);
  v172(v239, v170);
  return sub_10000D52C(v229, &qword_10021A608, &qword_1001AFCB8);
}

uint64_t sub_100047DCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  State.init(wrappedValue:)();
  *a2 = v13;
  *(a2 + 8) = v14;
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  State.init(wrappedValue:)();
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  type metadata accessor for RemoteViewConfiguration();
  sub_10004E45C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  *(a2 + 32) = EnvironmentObject.init()();
  *(a2 + 40) = v6;
  v8 = type metadata accessor for SetlistDetailSection(0, v4, v5, v7);
  v9 = v8[11];
  *(a2 + v9) = swift_getKeyPath();
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  swift_storeEnumTagMultiPayload();
  v10 = v8[12];
  *(a2 + v10) = swift_getKeyPath();
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  swift_storeEnumTagMultiPayload();
  v11 = a2 + v8[13];
  result = swift_getKeyPath();
  *v11 = result;
  *(v11 + 8) = 0;
  return result;
}

uint64_t sub_100047F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v47 = a3;
  v48 = a1;
  v50 = a4;
  v4 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v4 - 8);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Array();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistSongRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  sub_10000B3DC(&qword_100219D50, &unk_1001AFCC0);
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_10000D1EC(&qword_100219D48, &qword_100219D50, &unk_1001AFCC0, &protocol conformance descriptor for _ContentShapeModifier<A>);
  v60 = WitnessTable;
  v61 = v11;
  swift_getWitnessTable();
  v12 = type metadata accessor for Button();
  v13 = type metadata accessor for PlainButtonStyle();
  v14 = swift_getWitnessTable();
  v15 = sub_10004E45C(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v55 = v12;
  v56 = v13;
  v57 = v14;
  v58 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = v12;
  v56 = v13;
  v57 = v14;
  v58 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = OpaqueTypeMetadata2;
  v56 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v19 = swift_getWitnessTable();
  v20 = sub_10004D8BC();
  v55 = v7;
  v56 = &type metadata for MusicItemID;
  v57 = v18;
  v58 = v19;
  v59 = v20;
  v41[2] = type metadata accessor for ForEach();
  v55 = OpaqueTypeMetadata2;
  v56 = OpaqueTypeConformance2;
  v54 = swift_getOpaqueTypeConformance2();
  v41[1] = swift_getWitnessTable();
  v21 = type metadata accessor for LazyHGrid();
  v45 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = v41 - v22;
  v42 = swift_getWitnessTable();
  v55 = v21;
  v56 = v42;
  v43 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  v24 = swift_getOpaqueTypeMetadata2();
  v44 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v27 = v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = v41 - v28;
  v31 = v46;
  v30 = v47;
  v33 = type metadata accessor for SetlistView(0, v46, v47, v32);
  v34 = v48;
  sub_100045444(v33, v35, v36, v37);
  sub_100036D78();

  v51 = v31;
  v52 = v30;
  v53 = v34;
  static VerticalAlignment.center.getter();
  sub_1000C10FC();
  LazyHGrid.init(rows:alignment:spacing:pinnedViews:content:)();
  v38 = v42;
  View.scrollTargetLayout(isEnabled:)();
  (*(v45 + 8))(v23, v21);
  v55 = v21;
  v56 = v38;
  swift_getOpaqueTypeConformance2();
  sub_100157EFC();
  v39 = *(v44 + 8);
  v39(v27, v24);
  sub_100157EFC();
  return (v39)(v29, v24);
}

uint64_t sub_100048560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v55 = a4;
  v51 = a3;
  v7 = type metadata accessor for SetlistView(0, a2, a3, a5);
  v53 = *(v7 - 8);
  v54 = *(v53 + 64);
  __chkstk_darwin(v7);
  v52 = &KeyPath - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Array();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistSongRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  sub_10000B3DC(&qword_100219D50, &unk_1001AFCC0);
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_10000D1EC(&qword_100219D48, &qword_100219D50, &unk_1001AFCC0, &protocol conformance descriptor for _ContentShapeModifier<A>);
  v65 = WitnessTable;
  v66 = v14;
  swift_getWitnessTable();
  v15 = type metadata accessor for Button();
  v16 = type metadata accessor for PlainButtonStyle();
  v17 = swift_getWitnessTable();
  v18 = sub_10004E45C(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v60 = v15;
  v61 = v16;
  v62 = v17;
  v63 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = OpaqueTypeMetadata2;
  v60 = v15;
  v61 = v16;
  v62 = v17;
  v63 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = OpaqueTypeMetadata2;
  v61 = OpaqueTypeConformance2;
  v46 = &opaque type descriptor for <<opaque return type of View.containerRelativeFrame(_:count:span:spacing:alignment:)>>;
  v20 = swift_getOpaqueTypeMetadata2();
  v45 = v20;
  v47 = v10;
  v21 = swift_getWitnessTable();
  v44 = v21;
  v43 = sub_10004D8BC();
  v60 = v10;
  v61 = &type metadata for MusicItemID;
  v62 = v20;
  v63 = v21;
  v64 = v43;
  v22 = type metadata accessor for ForEach();
  v50 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = &KeyPath - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &KeyPath - v26;
  v28 = v7;
  sub_100045444(v7, v29, v30, v31);
  v32 = sub_100036EC4();

  v59 = v32;
  v33 = a2;
  v34 = v51;
  v56 = a2;
  v57 = v51;
  KeyPath = swift_getKeyPath();
  v36 = v52;
  v35 = v53;
  (*(v53 + 16))(v52, a1, v28);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  *(v38 + 24) = v34;
  (*(v35 + 32))(v38 + v37, v36, v28);
  v60 = v49;
  v61 = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
  v58 = v41;
  swift_getWitnessTable();
  sub_100157EFC();
  v39 = *(v50 + 8);
  v39(v25, v22);
  sub_100157EFC();
  return (v39)(v27, v22);
}

uint64_t sub_100048AC8@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of MusicItem.id.getter();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_100048B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a2;
  v91 = a1;
  v94 = a5;
  v7 = type metadata accessor for PlainButtonStyle();
  v93 = *(v7 - 8);
  __chkstk_darwin(v7);
  v92 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = *(AssociatedTypeWitness - 8);
  v90 = *(v95 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v87 = &v66 - v10;
  v85 = a3;
  v86 = a4;
  v12 = type metadata accessor for SetlistView(0, a3, a4, v11);
  v13 = *(v12 - 8);
  v84 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v66 - v14;
  v68 = &v66 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v67 = AssociatedTypeWitness;
  type metadata accessor for SetlistSongRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  sub_10000B3DC(&qword_100219D50, &unk_1001AFCC0);
  v18 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_10000D1EC(&qword_100219D48, &qword_100219D50, &unk_1001AFCC0, &protocol conformance descriptor for _ContentShapeModifier<A>);
  v104 = WitnessTable;
  v105 = v20;
  v78 = v18;
  v77 = swift_getWitnessTable();
  v21 = type metadata accessor for Button();
  v81 = *(v21 - 8);
  __chkstk_darwin(v21);
  v74 = &v66 - v22;
  v24 = v23;
  v25 = swift_getWitnessTable();
  v26 = sub_10004E45C(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v100 = v24;
  v101 = v7;
  v27 = v24;
  v71 = v24;
  v70 = v7;
  v102 = v25;
  v103 = v26;
  v73 = v25;
  v72 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v83 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v69 = &v66 - v29;
  v100 = v27;
  v101 = v7;
  v102 = v25;
  v103 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = OpaqueTypeMetadata2;
  v100 = OpaqueTypeMetadata2;
  v101 = OpaqueTypeConformance2;
  v79 = OpaqueTypeConformance2;
  v82 = swift_getOpaqueTypeMetadata2();
  v80 = *(v82 - 8);
  v31 = __chkstk_darwin(v82);
  v75 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v76 = &v66 - v33;
  v34 = v13;
  v35 = v15;
  v36 = v89;
  v37 = v12;
  (*(v13 + 16))(v35, v89, v12);
  v38 = v95;
  v39 = v87;
  v40 = v91;
  (*(v95 + 16))(v87, v91, AssociatedTypeWitness);
  v41 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v42 = (v84 + v41 + *(v38 + 80)) & ~*(v38 + 80);
  v43 = swift_allocObject();
  v44 = v85;
  v45 = v86;
  *(v43 + 16) = v85;
  *(v43 + 24) = v45;
  v46 = v34;
  v47 = v69;
  v48 = v43 + v41;
  v49 = v36;
  v50 = v37;
  (*(v46 + 32))(v48, v68, v37);
  (*(v95 + 32))(v43 + v42, v39, v67);
  v96 = v44;
  v97 = v45;
  v98 = v49;
  v99 = v40;
  v51 = v74;
  Button.init(action:label:)();
  v52 = v92;
  PlainButtonStyle.init()();
  v53 = v71;
  v54 = v70;
  View.buttonStyle<A>(_:)();
  (*(v93 + 8))(v52, v54);
  (*(v81 + 8))(v51, v53);
  static Axis.Set.horizontal.getter();
  v58 = sub_100045444(v50, v55, v56, v57);
  LOBYTE(v40) = *(v58 + *(*v58 + 120));

  if ((v40 & 1) == 0)
  {
    sub_1000454F0();
  }

  static Alignment.center.getter();
  v59 = v75;
  v60 = v88;
  v61 = v79;
  View.containerRelativeFrame(_:count:span:spacing:alignment:)();
  (*(v83 + 8))(v47, v60);
  v100 = v60;
  v101 = v61;
  swift_getOpaqueTypeConformance2();
  v62 = v76;
  v63 = v82;
  sub_100157EFC();
  v64 = *(v80 + 8);
  v64(v59, v63);
  sub_100157EFC();
  return (v64)(v62, v63);
}

uint64_t sub_100049414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SetlistView(0, a3, a4, a4);
  sub_100045444(v6, v7, v8, v9);
  v10 = *(a1 + 16);
  if (v10)
  {

    sub_100037930(a2, v10);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10004E45C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000494F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v48 = a1;
  v57 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v47 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for SetlistSongRowViewModel(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  __chkstk_darwin(v12 - 8);
  v51 = &v47 - v13;
  v15 = type metadata accessor for SetlistSongRowView(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v53 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  sub_10000B3DC(&qword_100219D50, &unk_1001AFCC0);
  v18 = type metadata accessor for ModifiedContent();
  v56 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v52 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v54 = &v47 - v21;
  v23 = type metadata accessor for SetlistView(0, a2, a3, v22);
  v27 = sub_100045444(v23, v24, v25, v26);
  v28 = *(v27 + 16);
  v49 = *(v27 + 24);
  v50 = v28;

  v29 = *(v7 + 16);
  v55 = v9;
  v29(v9, v48, AssociatedTypeWitness);
  sub_100045444(v23, v30, v31, v32);
  sub_1000374A0();

  v33 = v61;
  if (v61)
  {
    sub_100028124(v60, v61);
    v34 = dispatch thunk of MusicItem.id.getter();
    v33 = v35;
    sub_100021498(v60);
  }

  else
  {
    sub_10000D52C(v60, &qword_10021A650, &qword_1001AFE68);
    v34 = 0;
  }

  v36 = dispatch thunk of MusicItem.id.getter();
  if (v33)
  {
    if (v34 == v36 && v33 == v37)
    {
      v38 = 1;
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v38 = 0;
  }

  v39 = v51;
  sub_100044D74(v50, v49, v55, v38 & 1, AssociatedTypeWitness, v51, AssociatedConformanceWitness);
  sub_10002C50C(v39, AssociatedTypeWitness, AssociatedConformanceWitness, v17, v40);
  WitnessTable = swift_getWitnessTable();
  sub_10004E4A4();
  v42 = v52;
  View.contentShape<A>(_:eoFill:)();
  (*(v53 + 8))(v17, v15);
  v43 = sub_10000D1EC(&qword_100219D48, &qword_100219D50, &unk_1001AFCC0, &protocol conformance descriptor for _ContentShapeModifier<A>);
  v58 = WitnessTable;
  v59 = v43;
  swift_getWitnessTable();
  v44 = v54;
  sub_100157EFC();
  v45 = *(v56 + 8);
  v45(v42, v18);
  sub_100157EFC();
  return (v45)(v44, v18);
}

uint64_t sub_1000499FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SetlistView(0, a2, a3, a4);
  sub_100045444(v5, v6, v7, v8);
  v9 = *(a1 + 16);
  if (v9)
  {

    sub_1000385A4(27, 0, 3u, v9);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10004E45C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100049AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100049B70, v7, v6);
}

uint64_t sub_100049B70()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for SetlistView(0, v2, v1, v3);
  sub_100045444(v4, v5, v6, v7);
  sub_100037854();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100049C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SetlistView(0, a2, a3, a4);
  sub_100045444(v4, v5, v6, v7);
  sub_1000378C4();
}

uint64_t sub_100049C48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  State.init(wrappedValue:)();
  *a2 = v8;
  a2[1] = v9;
  type metadata accessor for RemoteViewConfiguration();
  sub_10004E45C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  a2[2] = EnvironmentObject.init()();
  a2[3] = v4;
  v6 = *(type metadata accessor for SetlistView(0, *(v3 + 80), *(v3 + 88), v5) + 40);
  *(a2 + v6) = swift_getKeyPath();
  sub_100009F70(&qword_1002196E8, &unk_1001AFC30);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100049D94()
{
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  v0 = Font.weight(_:)();

  return v0;
}

uint64_t sub_100049DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100009F70(&qword_100218498, &qword_1001ACB18);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0x402E000000000000;
  v7[16] = 0;
  v10 = sub_100009F70(&qword_10021A6E0, &qword_1001AFEF0);
  v11 = sub_10004A278(v2, v8, v9, &v7[*(v10 + 44)]);
  v12 = *(a1 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v2, a1);
  type metadata accessor for MainActor();
  v15 = static MainActor.shared.getter();
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = &protocol witness table for MainActor;
  *(v17 + 4) = v8;
  *(v17 + 5) = v9;
  (*(v12 + 32))(&v17[v16], v14, a1);
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v31 - v21;
  static TaskPriority.userInitiated.getter();
  if (sub_1001A7444(2, 26, 4, 0))
  {
    v34 = type metadata accessor for _TaskModifier2();
    v35 = &v31;
    v33 = *(v34 - 8);
    __chkstk_darwin(v34);
    v32 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v37 = 0xD00000000000002ELL;
    v38 = 0x80000001001BEA40;
    v36 = 188;
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v31 = &v31;
    __chkstk_darwin(v25);
    (*(v19 + 16))(&v31 - v21, &v31 - v21, v18);
    v26 = v32;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v19 + 8))(v22, v18);
    sub_10004F318(v7, a2);
    v27 = sub_100009F70(&qword_1002184A0, &unk_1001ACB20);
    return (*(v33 + 32))(a2 + *(v27 + 36), v26, v34);
  }

  else
  {
    v29 = (a2 + *(sub_100009F70(&qword_1002184A8, &qword_1001AFF10) + 36));
    v30 = type metadata accessor for _TaskModifier();
    (*(v19 + 32))(&v29[*(v30 + 20)], &v31 - v21, v18);
    *v29 = &unk_1001AFF00;
    *(v29 + 1) = v17;
    return sub_10004F318(v7, a2);
  }
}

uint64_t sub_10004A278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v140 = a4;
  v120 = type metadata accessor for Text.Suffix();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_100009F70(&qword_10021A6E8, &qword_1001AFF18);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v107 - v8;
  v9 = sub_100009F70(&qword_10021A6F0, &unk_1001AFF20);
  v138 = *(v9 - 8);
  v139 = v9;
  __chkstk_darwin(v9);
  v121 = &v107 - v10;
  v11 = sub_100009F70(&qword_10021A248, &unk_1001AF750);
  __chkstk_darwin(v11 - 8);
  v129 = &v107 - v12;
  v13 = type metadata accessor for AttributedString();
  v141 = *(v13 - 8);
  v142 = v13;
  v14 = __chkstk_darwin(v13);
  v109 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v135 = &v107 - v16;
  v17 = sub_100009F70(&qword_10021A6F8, &qword_1001AFF30);
  v18 = __chkstk_darwin(v17 - 8);
  v136 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v134 = &v107 - v20;
  v127 = type metadata accessor for PlainButtonStyle();
  v128 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SetlistDetailSection(0, a2, a3, v22);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v107 - v26;
  v125 = sub_100009F70(&qword_10021A700, &qword_1001AFF38);
  __chkstk_darwin(v125);
  v29 = &v107 - v28;
  v133 = sub_100009F70(&qword_10021A708, &qword_1001AFF40);
  v132 = *(v133 - 8);
  v30 = __chkstk_darwin(v133);
  v131 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v107 - v32;
  v34 = *(v24 + 16);
  v114 = v24 + 16;
  v113 = v34;
  v34(v27, a1, v23);
  v35 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v112 = *(v24 + 80);
  v111 = v35 + v25;
  v36 = swift_allocObject();
  *(v36 + 16) = a2;
  *(v36 + 24) = a3;
  v37 = *(v24 + 32);
  v115 = v35;
  v116 = v27;
  v117 = v24 + 32;
  v110 = v37;
  v37(v36 + v35, v27, v23);
  v38 = v23;
  v137 = a2;
  v143 = a2;
  v144 = a3;
  v39 = a3;
  v145 = a1;
  sub_100009F70(&qword_10021A710, &qword_1001AFF48);
  sub_10004F3C4();
  Button.init(action:label:)();
  sub_100045444(v23, v40, v41, v42);
  LOBYTE(v23) = sub_1000370FC();

  v29[*(v125 + 36)] = v23 & 1;
  v43 = v126;
  PlainButtonStyle.init()();
  sub_10004F534();
  sub_10004E45C(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v130 = v33;
  v44 = v129;
  v45 = v127;
  View.buttonStyle<A>(_:)();
  (*(v128 + 8))(v43, v45);
  sub_10000D52C(v29, &qword_10021A700, &qword_1001AFF38);
  v128 = a1;
  sub_100045444(v38, v46, v47, v48);
  sub_100036994(v44);

  v49 = v141;
  v50 = v142;
  if ((*(v141 + 48))(v44, 1) == 1)
  {
    sub_10000D52C(v44, &qword_10021A248, &unk_1001AF750);
    v51 = 1;
    v53 = v138;
    v52 = v139;
    v54 = v134;
  }

  else
  {
    v55 = v135;
    (*(v49 + 32))(v135, v44, v50);
    (*(v49 + 16))(v109, v55, v50);
    v56 = Text.init(_:)();
    v58 = v57;
    v60 = v59;
    v108 = v39;
    sub_100049D94();
    v61 = Text.font(_:)();
    v63 = v62;
    LOBYTE(v55) = v64;

    sub_10000D60C(v56, v58, v60 & 1);

    LODWORD(v146) = static HierarchicalShapeStyle.secondary.getter();
    v65 = Text.foregroundStyle<A>(_:)();
    v67 = v66;
    v127 = v66;
    v69 = v68;
    v71 = v70;
    v129 = v70;
    sub_10000D60C(v61, v63, v55 & 1);

    v72 = v128;
    v73 = *(v128 + 24);
    LOBYTE(v146) = *(v128 + 16);
    v147 = v73;
    sub_100009F70(&qword_1002186F8, &qword_1001AD0C8);
    State.wrappedValue.getter();
    v74 = v153;
    if (v153)
    {
      v75 = 0;
    }

    else
    {
      v75 = 2;
    }

    KeyPath = swift_getKeyPath();
    v146 = v65;
    v147 = v67;
    v77 = v69 & 1;
    v148 = v69 & 1;
    v149 = v71;
    v150 = KeyPath;
    v151 = v75;
    v152 = v74;
    v81 = sub_10004D024(v38, v78, v79, v80);
    v83 = v82;
    v85 = v84;
    v86 = v118;
    static Text.Suffix.truncated(_:)();
    sub_10000D60C(v81, v83, v85 & 1);

    v87 = sub_100009F70(&qword_1002197F0, &unk_1001AE860);
    v88 = sub_10002764C();
    v89 = v122;
    View.textSuffix(_:)();
    (*(v119 + 8))(v86, v120);
    sub_10000D60C(v65, v127, v77);

    v90 = v116;
    v113(v116, v72, v38);
    v91 = swift_allocObject();
    v92 = v108;
    *(v91 + 16) = v137;
    *(v91 + 24) = v92;
    v110(v91 + v115, v90, v38);
    v146 = v87;
    v147 = v88;
    swift_getOpaqueTypeConformance2();
    v93 = v121;
    v94 = v124;
    View.onTapGesture(count:perform:)();

    (*(v123 + 8))(v89, v94);
    (*(v141 + 8))(v135, v142);
    v96 = v138;
    v95 = v139;
    v54 = v134;
    (*(v138 + 32))(v134, v93, v139);
    v51 = 0;
    v52 = v95;
    v53 = v96;
  }

  (*(v53 + 56))(v54, v51, 1, v52);
  v97 = v132;
  v98 = *(v132 + 16);
  v99 = v131;
  v100 = v130;
  v101 = v133;
  v98(v131, v130, v133);
  v102 = v136;
  sub_10004F5EC(v54, v136);
  v103 = v140;
  v98(v140, v99, v101);
  v104 = sub_100009F70(&qword_10021A768, &unk_1001AFF70);
  sub_10004F5EC(v102, &v103[*(v104 + 48)]);
  sub_10004F65C(v54);
  v105 = *(v97 + 8);
  v105(v100, v101);
  sub_10004F65C(v102);
  return (v105)(v99, v101);
}

uint64_t sub_10004AF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OpenURLAction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SetlistDetailSection(0, a2, a3, v17);
  sub_100045444(v18, v19, v20, v21);
  sub_100037088();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_10000D52C(v12, qword_100218748, &unk_1001AD110);
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_100023FD4(v9);
  OpenURLAction.callAsFunction(_:)();
  (*(v7 + 8))(v9, v6);
  sub_100045444(v18, v23, v24, v25);
  v26 = *(a1 + 32);
  if (v26)
  {

    sub_1000385A4(16, 0, 3u, v26);

    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10004E45C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004B250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100009F70(&qword_10021A738, &qword_1001AFF58);
  __chkstk_darwin(v8 - 8);
  v10 = (v27 - v9);
  v11 = sub_100009F70(&qword_10021A728, &qword_1001AFF50);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v27 - v13;
  *v10 = static Alignment.leading.getter();
  v10[1] = v15;
  v16 = sub_100009F70(&qword_10021A770, &unk_1001AFF80);
  sub_10004B47C(a1, a2, a3, v10 + *(v16 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v10, v14, &qword_10021A738, &qword_1001AFF58);
  v17 = &v14[*(v12 + 44)];
  v18 = v27[5];
  *(v17 + 4) = v27[4];
  *(v17 + 5) = v18;
  *(v17 + 6) = v27[6];
  v19 = v27[1];
  *v17 = v27[0];
  *(v17 + 1) = v19;
  v20 = v27[3];
  *(v17 + 2) = v27[2];
  *(v17 + 3) = v20;
  v21 = static Alignment.center.getter();
  v23 = v22;
  v24 = a4 + *(sub_100009F70(&qword_10021A710, &qword_1001AFF48) + 36);
  sub_10004CCD4(a1, a2, a3, v24);
  v25 = (v24 + *(sub_100009F70(&qword_10021A748, &qword_1001AFF60) + 36));
  *v25 = v21;
  v25[1] = v23;
  return sub_10000F618(v14, a4, &qword_10021A728, &qword_1001AFF50);
}

uint64_t sub_10004B47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0x4030000000000000;
  *(a4 + 16) = 0;
  v8 = sub_100009F70(&qword_10021A780, &qword_1001AFF98);
  sub_10004B538(a1, a2, a3, a4 + *(v8 + 44));
  static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  sub_100009F70(&qword_10021A788, &qword_1001AFFA0);
  return SafeAreaPaddingModifier.init(edges:insets:)();
}

uint64_t sub_10004B538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a4;
  v7 = sub_100009F70(&qword_10021A790, &unk_1001AFFA8);
  v8 = __chkstk_darwin(v7 - 8);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v53 - v10;
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v16 - 8);
  v18 = &v53 - v17;
  v54 = sub_100009F70(&qword_10021A798, &qword_1001AFFB8);
  v19 = __chkstk_darwin(v54);
  v55 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v53 - v21;
  v57 = a2;
  v58 = a3;
  v24 = type metadata accessor for SetlistDetailSection(0, a2, a3, v23);
  result = sub_100045444(v24, v25, v26, v27);
  v53 = result;
  v29 = *(v24 + 52);
  v56 = a1;
  v30 = a1 + v29;
  v31 = *v30;
  v32 = *(v30 + 8);
  if (v32 == 1)
  {
    v33 = *v30;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v31, 0);
    result = (*(v13 + 8))(v15, v12);
    v33 = *&v61;
  }

  v35 = v33 * 70.0;
  if (COERCE__INT64(fabs(v33 * 70.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v32)
  {
    v36 = *&v31;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v37 = v12;
    v38 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v31, 0);
    result = (*(v13 + 8))(v15, v37);
    v36 = *&v61;
  }

  v39 = v36 * 70.0;
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  sub_10003722C(v35, v39, v18);

  static Animation.spring(response:dampingFraction:blendDuration:)();
  Transaction.init(animation:)();
  sub_100009F70(&qword_10021A7A0, &qword_1001AFFC0);
  sub_10004F9BC();
  AsyncImage.init(url:scale:transaction:content:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v40 = &v22[*(sub_100009F70(&qword_10021A7C0, &unk_1001AFFD8) + 36)];
  v41 = v62;
  *v40 = v61;
  *(v40 + 1) = v41;
  *(v40 + 2) = v63;
  if (static Solarium.isEnabled.getter())
  {
    v42 = 10.0;
  }

  else
  {
    v42 = 5.0;
  }

  v43 = &v22[*(v54 + 36)];
  v44 = *(type metadata accessor for RoundedRectangle() + 20);
  v45 = enum case for RoundedCornerStyle.continuous(_:);
  v46 = type metadata accessor for RoundedCornerStyle();
  (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
  *v43 = v42;
  v43[1] = v42;
  *(v43 + *(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)) = 256;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0x4008000000000000;
  v11[16] = 0;
  v47 = sub_100009F70(&qword_10021A7C8, &qword_1001AFFE8);
  sub_10004BEE0(v56, v57, v58, &v11[*(v47 + 44)], v48);
  v49 = v55;
  sub_10000D58C(v22, v55, &qword_10021A798, &qword_1001AFFB8);
  v50 = v60;
  sub_10000D58C(v11, v60, &qword_10021A790, &unk_1001AFFA8);
  v51 = v59;
  sub_10000D58C(v49, v59, &qword_10021A798, &qword_1001AFFB8);
  v52 = sub_100009F70(&qword_10021A7D0, &unk_1001AFFF0);
  sub_10000D58C(v50, v51 + *(v52 + 48), &qword_10021A790, &unk_1001AFFA8);
  sub_10000D52C(v11, &qword_10021A790, &unk_1001AFFA8);
  sub_10000D52C(v22, &qword_10021A798, &qword_1001AFFB8);
  sub_10000D52C(v50, &qword_10021A790, &unk_1001AFFA8);
  return sub_10000D52C(v49, &qword_10021A798, &qword_1001AFFB8);
}

void sub_10004BBF4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AsyncImagePhase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v12 = Image.resizable(capInsets:resizingMode:)();
    (*(v5 + 8))(v7, v4);
    v15 = v12;
    v16 = 0;
    swift_retain_n();
    sub_100009F70(&qword_10021A7B8, &unk_1001AFFC8);
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();

    v13 = v17;
    v14 = v18;
  }

  else
  {
    v15 = static Color.gray.getter();
    v16 = 1;
    sub_100009F70(&qword_10021A7B8, &unk_1001AFFC8);
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();
    v13 = v17;
    v14 = v18;
    (*(v9 + 8))(v11, v8);
  }

  *a2 = v13;
  *(a2 + 8) = v14;
}

uint64_t sub_10004BEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v121 = a4;
  v122 = a1;
  v105 = a2;
  v106 = a3;
  v5 = type metadata accessor for SetlistDetailSection(0, a2, a3, a5);
  v123 = v5;
  v103 = *(v5 - 8);
  v102 = *(v103 + 64);
  __chkstk_darwin(v5);
  v115 = &v98 - v6;
  v7 = sub_100009F70(&qword_100218930, &qword_1001B7CF0);
  v119 = *(v7 - 8);
  v120 = v7;
  __chkstk_darwin(v7);
  v104 = &v98 - v8;
  v9 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v9 - 8);
  v111 = &v98 - v10;
  v11 = type metadata accessor for URL();
  v113 = *(v11 - 8);
  v114 = v11;
  v12 = __chkstk_darwin(v11);
  v101 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v13;
  __chkstk_darwin(v12);
  v112 = &v98 - v14;
  v15 = sub_100009F70(&qword_10021A7D8, &unk_1001B0000);
  v16 = __chkstk_darwin(v15 - 8);
  v118 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v116 = &v98 - v18;
  v19 = sub_100009F70(&qword_100219820, &unk_1001AE8B0);
  v20 = v19 - 8;
  v21 = __chkstk_darwin(v19);
  v117 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v124 = &v98 - v23;
  sub_100045444(v5, v24, v25, v26);

  LOWORD(v97) = 256;
  v96 = 0;
  v27 = Text.init(_:tableName:bundle:comment:)();
  v29 = v28;
  v31 = v30;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v32 = Text.font(_:)();
  v34 = v33;
  v36 = v35;

  sub_10000D60C(v27, v29, v31 & 1);

  LODWORD(v125) = static HierarchicalShapeStyle.secondary.getter();
  v37 = Text.foregroundStyle<A>(_:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_10000D60C(v32, v34, v36 & 1);

  v44 = v124;
  v45 = (v124 + *(v20 + 44));
  v46 = *(sub_100009F70(&qword_100219828, &qword_1001B0010) + 28);
  v47 = enum case for Text.Case.uppercase(_:);
  v48 = type metadata accessor for Text.Case();
  v49 = *(v48 - 8);
  (*(v49 + 104))(v45 + v46, v47, v48);
  (*(v49 + 56))(v45 + v46, 0, 1, v48);
  *v45 = swift_getKeyPath();
  v51 = v122;
  v50 = v123;
  *v44 = v37;
  *(v44 + 8) = v39;
  *(v44 + 16) = v41 & 1;
  *(v44 + 24) = v43;
  v52 = v50;
  v56 = sub_100045444(v50, v53, v54, v55);
  v58 = *(v56 + 32);
  v57 = *(v56 + 40);

  if (v57)
  {
    v125 = v58;
    v126 = v57;
    sub_100027068();
    v62 = Text.init<A>(_:)();
    v64 = v63;
    v109 = v66;
    v110 = v62;
    v107 = v65 & 1;
    sub_10000D5FC(v62, v66, v65 & 1);
    v108 = v64;
  }

  else
  {
    v109 = 0;
    v110 = 0;
    v107 = 0;
    v108 = 0;
  }

  sub_100045444(v52, v59, v60, v61);
  v67 = v111;
  sub_100037088();

  v69 = v113;
  v68 = v114;
  if ((*(v113 + 48))(v67, 1, v114) == 1)
  {
    sub_10000D52C(v67, qword_100218748, &unk_1001AD110);
    v70 = 1;
    v72 = v119;
    v71 = v120;
    v73 = v116;
  }

  else
  {
    v99 = *(v69 + 32);
    v74 = v112;
    v99(v112, v67, v68);
    v75 = v103;
    (*(v103 + 16))(v115, v51, v52);
    v76 = v101;
    (*(v69 + 16))(v101, v74, v68);
    v77 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v78 = (v102 + *(v69 + 80) + v77) & ~*(v69 + 80);
    v79 = v68;
    v80 = swift_allocObject();
    v81 = v105;
    v82 = v106;
    *(v80 + 16) = v105;
    *(v80 + 24) = v82;
    (*(v75 + 32))(v80 + v77, v115, v123);
    v83 = (v99)(v80 + v78, v76, v79);
    __chkstk_darwin(v83);
    *(&v98 - 4) = v81;
    *(&v98 - 3) = v82;
    v96 = v122;
    v84 = v104;
    Button.init(action:label:)();
    (*(v69 + 8))(v112, v79);
    v72 = v119;
    v71 = v120;
    v73 = v116;
    (*(v119 + 32))(v116, v84, v120);
    v70 = 0;
  }

  (*(v72 + 56))(v73, v70, 1, v71);
  v85 = v124;
  v86 = v117;
  sub_10000D58C(v124, v117, &qword_100219820, &unk_1001AE8B0);
  v87 = v118;
  sub_10000D58C(v73, v118, &qword_10021A7D8, &unk_1001B0000);
  v88 = v121;
  sub_10000D58C(v86, v121, &qword_100219820, &unk_1001AE8B0);
  v89 = sub_100009F70(&qword_10021A7E0, &qword_1001B0048);
  v90 = (v88 + *(v89 + 48));
  v91 = v109;
  v92 = v110;
  *v90 = v110;
  v90[1] = v91;
  v93 = v107;
  v94 = v108;
  v90[2] = v107;
  v90[3] = v94;
  sub_10000D58C(v87, v88 + *(v89 + 64), &qword_10021A7D8, &unk_1001B0000);
  sub_10004FB08(v92, v91, v93, v94);
  sub_10004FB4C(v92, v91, v93, v94);
  sub_10000D52C(v73, &qword_10021A7D8, &unk_1001B0000);
  sub_10000D52C(v85, &qword_100219820, &unk_1001AE8B0);
  sub_10000D52C(v87, &qword_10021A7D8, &unk_1001B0000);
  sub_10004FB4C(v92, v91, v93, v94);
  return sub_10000D52C(v86, &qword_100219820, &unk_1001AE8B0);
}

uint64_t sub_10004C884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v7 = type metadata accessor for EnvironmentValues();
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for OpenURLAction();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SetlistDetailSection(0, a3, a4, v17);
  sub_10000D58C(a1 + *(v18 + 44), v12, &qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v22 + 8))(v9, v23);
  }

  OpenURLAction.callAsFunction(_:)();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_10004CB20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for SetlistDetailSection(0, a1, a2, a4);
  sub_100045444(v5, v6, v7, v8);

  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  v13 = v12;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;

  sub_10000D60C(v9, v11, v13 & 1);

  static Color.blue.getter();
  v19 = Text.foregroundStyle<A>(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_10000D60C(v14, v16, v18 & 1);

  *a3 = v19;
  *(a3 + 8) = v21;
  *(a3 + 16) = v23 & 1;
  *(a3 + 24) = v25;
  return result;
}

double sub_10004CCD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v32 = a1;
  v33 = a4;
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v12 = type metadata accessor for RoundedRectangle();
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100009F70(&qword_100218DD0, &qword_1001AD870);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  if (static Solarium.isEnabled.getter())
  {
    v19 = 16.0;
  }

  else
  {
    v19 = 10.0;
  }

  v20 = *(v13 + 28);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = type metadata accessor for RoundedCornerStyle();
  (*(*(v22 - 8) + 104))(v15 + v20, v21, v22);
  *v15 = v19;
  v15[1] = v19;
  type metadata accessor for SetlistDetailSection(0, a2, v31, v23);
  sub_100024640(v11);
  (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v5);
  LOBYTE(v21) = static ColorScheme.== infix(_:_:)();
  v24 = *(v6 + 8);
  v24(v9, v5);
  v24(v11, v5);
  if (v21)
  {
    v25 = static Color.white.getter();
  }

  else
  {
    if (qword_100218330 != -1)
    {
      swift_once();
    }

    v25 = qword_100230568;
  }

  sub_10004F958(v15, v18);
  *&v18[*(v16 + 36)] = v25;
  static Color.black.getter();
  v26 = Color.opacity(_:)();

  v27 = v33;
  sub_10000F618(v18, v33, &qword_100218DD0, &qword_1001AD870);
  v28 = v27 + *(sub_100009F70(&qword_10021A778, &qword_1001AFF90) + 36);
  *v28 = v26;
  result = 16.0;
  *(v28 + 8) = xmmword_1001AFBF0;
  *(v28 + 24) = 0x4010000000000000;
  return result;
}

uint64_t sub_10004D024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100045444(a1, a2, a3, a4);

  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_10000D60C(v4, v6, v8 & 1);

  static Color.blue.getter();
  v14 = Text.foregroundStyle<A>(_:)();
  sub_10000D60C(v9, v11, v13 & 1);

  return v14;
}

void sub_10004D1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009F70(&qword_1002186F8, &qword_1001AD0C8);
  State.wrappedValue.setter();
  v7 = type metadata accessor for SetlistDetailSection(0, a2, a3, v6);
  sub_100045444(v7, v8, v9, v10);
  v11 = *(a1 + 32);
  if (v11)
  {

    sub_1000385A4(25, 0, 3u, v11);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10004E45C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10004D2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_10004D384, v7, v6);
}

uint64_t sub_10004D384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SetlistDetailSection(0, v4[3], v4[4], a4);
  v4[8] = sub_100045444(v5, v6, v7, v8);
  v9 = sub_100049D94();
  v4[9] = v9;
  v10 = swift_task_alloc();
  v4[10] = v10;
  *v10 = v4;
  v10[1] = sub_10004D454;

  return sub_100037CE0(v9);
}

uint64_t sub_10004D454()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10004D5B4, v3, v2);
}

uint64_t sub_10004D5B4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10004D620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SetlistViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  if (v4 <= 0x3F)
  {
    sub_10000B304(319);
    if (v5 <= 0x3F)
    {
      sub_100022910(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10004D6E0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_1002195B8, &unk_1001B5010);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_10004D7B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_1002195B8, &unk_1001B5010);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_10004D8BC()
{
  result = qword_10021A610;
  if (!qword_10021A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A610);
  }

  return result;
}

uint64_t sub_10004D91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for SetlistView(0, *(v4 + 32), *(v4 + 40), a4) - 8);
  v6 = (*(*v5 + 80) + 48) & ~*(*v5 + 80);
  swift_unknownObjectRelease();
  v7 = v4 + v6;

  v8 = v5[12];
  sub_100009F70(&qword_1002196E8, &unk_1001AFC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v7 + v8, 1, v9))
    {
      (*(v10 + 8))(v7 + v8, v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10004DAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for SetlistView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10000D890;

  return sub_100049AD4(v10, v11, v4 + v9, v6, v7);
}

unint64_t sub_10004DBE4()
{
  result = qword_10021A620;
  if (!qword_10021A620)
  {
    sub_10000B3DC(&qword_10021A618, &unk_1001AFD40);
    sub_10004DC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A620);
  }

  return result;
}

unint64_t sub_10004DC70()
{
  result = qword_10021A628;
  if (!qword_10021A628)
  {
    sub_10000B3DC(&qword_10021A630, &qword_1001BCBD0);
    sub_10002764C();
    sub_10000D1EC(&qword_10021A638, &qword_10021A640, &qword_1001AFD50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A628);
  }

  return result;
}

uint64_t sub_10004DD34@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100038AB0();
  a1[1] = v2;
}

uint64_t sub_10004DD74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000365A4(v1, v2);
}

__n128 sub_10004DDC0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_10004DDF8()
{
  result = qword_10021A648;
  if (!qword_10021A648)
  {
    sub_10000B3DC(&qword_10021A608, &qword_1001AFCB8);
    sub_10004DBE4();
    sub_10004E45C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A648);
  }

  return result;
}

uint64_t sub_10004DEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for SetlistView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80));

  v7 = v5[12];
  sub_100009F70(&qword_1002196E8, &unk_1001AFC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v6 + v7, 1, v8))
    {
      (*(v9 + 8))(v6 + v7, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10004E070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for SetlistView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100048B5C(a1, v9, v6, v7, a3);
}

uint64_t sub_10004E10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for SetlistView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v15 = *(*v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = v4 + v6;

  v11 = v5[12];
  sub_100009F70(&qword_1002196E8, &unk_1001AFC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for UserInterfaceSizeClass();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v10 + v11, 1, v12))
    {
      (*(v13 + 8))(v10 + v11, v12);
    }
  }

  else
  {
  }

  (*(v8 + 8))(v4 + ((v6 + v15 + v9) & ~v9), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_10004E350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SetlistView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_100049414(v4 + v8, v11, v5, v6);
}

uint64_t sub_10004E45C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004E4A4()
{
  result = qword_10021A658[0];
  if (!qword_10021A658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021A658);
  }

  return result;
}

void sub_10004E500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SetlistViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  if (v4 <= 0x3F)
  {
    sub_10004E968(319, &qword_1002185F8, &type metadata for Bool, &type metadata accessor for State);
    if (v5 <= 0x3F)
    {
      sub_10000B304(319);
      if (v6 <= 0x3F)
      {
        sub_10004E914(319, &qword_100218D70, &type metadata accessor for OpenURLAction);
        if (v7 <= 0x3F)
        {
          sub_10004E914(319, &qword_1002198B8, &type metadata accessor for ColorScheme);
          if (v8 <= 0x3F)
          {
            sub_10004E968(319, &qword_1002198C0, &type metadata for CGFloat, &type metadata accessor for Environment);
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10004E688(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100218D00, &unk_1001AD7D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_100219838, &qword_1001B2330);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10004E7D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100218D00, &unk_1001AD7D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_100219838, &qword_1001B2330);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10004E914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_10004E968(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10004E9B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_10000B3DC(&qword_10021A608, &qword_1001AFCB8);
  type metadata accessor for SetlistDetailSection(255, v1, v2, v3);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistSongRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  sub_10000B3DC(&qword_100219D50, &unk_1001AFCC0);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_10000D1EC(&qword_100219D48, &qword_100219D50, &unk_1001AFCC0, &protocol conformance descriptor for _ContentShapeModifier<A>);
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for PlainButtonStyle();
  swift_getWitnessTable();
  sub_10004E45C(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  sub_10004D8BC();
  type metadata accessor for ForEach();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  type metadata accessor for LazyHGrid();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A250, &unk_1001AF798);
  swift_getOpaqueTypeConformance2();
  sub_100038B78();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_10004F050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SetlistDetailSection(0, *(v4 + 32), *(v4 + 40), a4);
  v6 = (*(*(v5 - 1) + 80) + 48) & ~*(*(v5 - 1) + 80);
  swift_unknownObjectRelease();
  v7 = v4 + v6;

  v8 = v5[11];
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v5[12];
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  sub_100027EB0(*(v7 + v5[13]), *(v7 + v5[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_10004F220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for SetlistDetailSection(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1000214E4;

  return sub_10004D2E8(v10, v11, v4 + v9, v6, v7);
}

uint64_t sub_10004F318(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100218498, &qword_1001ACB18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004F3C4()
{
  result = qword_10021A718;
  if (!qword_10021A718)
  {
    sub_10000B3DC(&qword_10021A710, &qword_1001AFF48);
    sub_10004F47C();
    sub_10000D1EC(&qword_10021A740, &qword_10021A748, &qword_1001AFF60, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A718);
  }

  return result;
}

unint64_t sub_10004F47C()
{
  result = qword_10021A720;
  if (!qword_10021A720)
  {
    sub_10000B3DC(&qword_10021A728, &qword_1001AFF50);
    sub_10000D1EC(&qword_10021A730, &qword_10021A738, &qword_1001AFF58, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A720);
  }

  return result;
}

unint64_t sub_10004F534()
{
  result = qword_10021A750;
  if (!qword_10021A750)
  {
    sub_10000B3DC(&qword_10021A700, &qword_1001AFF38);
    sub_10000D1EC(&qword_10021A758, &qword_10021A760, &qword_1001AFF68, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A750);
  }

  return result;
}

uint64_t sub_10004F5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021A6F8, &qword_1001AFF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F65C(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021A6F8, &qword_1001AFF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004F6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SetlistDetailSection(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80));

  v7 = v5[11];
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for OpenURLAction();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v5[12];
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ColorScheme();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  sub_100027EB0(*(v6 + v5[13]), *(v6 + v5[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_10004F8B8(uint64_t (*a1)(void, uint64_t, uint64_t), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1(0, v3, v4) - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a2(v6, v3, v4);
}

uint64_t sub_10004F958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004F9BC()
{
  result = qword_10021A7A8;
  if (!qword_10021A7A8)
  {
    sub_10000B3DC(&qword_10021A7A0, &qword_1001AFFC0);
    sub_10004FA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A7A8);
  }

  return result;
}

unint64_t sub_10004FA48()
{
  result = qword_10021A7B0;
  if (!qword_10021A7B0)
  {
    sub_10000B3DC(&qword_10021A7B8, &unk_1001AFFC8);
    sub_100018F54();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8, &unk_1001AD240, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A7B0);
  }

  return result;
}

uint64_t sub_10004FB08(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000D5FC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10004FB4C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000D60C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10004FB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SetlistDetailSection(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 1) + 64);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v4 + v7;

  v13 = v5[11];
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for OpenURLAction();
    (*(*(v14 - 8) + 8))(v12 + v13, v14);
  }

  else
  {
  }

  v15 = v5[12];
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for ColorScheme();
    (*(*(v16 - 8) + 8))(v12 + v15, v16);
  }

  else
  {
  }

  sub_100027EB0(*(v12 + v5[13]), *(v12 + v5[13] + 8));
  (*(v10 + 8))(v4 + ((v7 + v8 + v11) & ~v11), v9);

  return swift_deallocObject();
}

uint64_t sub_10004FDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SetlistDetailSection(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_10004C884(v4 + v8, v11, v5, v6);
}

uint64_t sub_10004FEE0()
{
  sub_10000B3DC(&qword_100218498, &qword_1001ACB18);
  sub_10000D1EC(qword_10021A7E8, &qword_100218498, &qword_1001ACB18, &protocol conformance descriptor for VStack<A>);
  return swift_getOpaqueTypeConformance2();
}

void sub_10004FF88()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 category];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      v9 = [v0 sharedInstance];
      v22 = 0;
      v10 = [v9 setCategory:AVAudioSessionCategoryPlayback withOptions:1 error:&v22];

      v11 = v22;
      if (v10)
      {

        v12 = v11;
      }

      else
      {
        v13 = v22;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100218470 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_10001FDF4(v14, qword_100230610);
        swift_errorRetain();
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v22 = v18;
          *v17 = 136315138;
          swift_getErrorValue();
          v19 = Error.localizedDescription.getter();
          v21 = sub_10005D4E8(v19, v20, &v22);

          *(v17 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v15, v16, "Failed to configure audio session for playback, %s", v17, 0xCu);
          sub_100021498(v18);
        }

        else
        {
        }
      }
    }
  }
}

void sub_1000502E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SportEventViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  if (v4 <= 0x3F)
  {
    sub_10000B304(319);
    if (v5 <= 0x3F)
    {
      sub_1000391A4(319);
      if (v6 <= 0x3F)
      {
        sub_100050558();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000503C0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100218950, &unk_1001B5000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_100050490(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_100218950, &unk_1001B5000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100050558()
{
  if (!qword_10021A870)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10021A870);
    }
  }
}

double sub_1000505EC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 96.0;
  if (v1 != 1)
  {
    return 12.0;
  }

  return result;
}

double sub_100050654()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 100.0;
  if (v1 != 1)
  {
    return 16.0;
  }

  return result;
}

double sub_1000506BC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 84.0;
  }

  v3 = static Solarium.isEnabled.getter();
  result = -4.0;
  if (v3)
  {
    return 16.0;
  }

  return result;
}

uint64_t sub_100050738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SportEventViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v5;
}

uint64_t sub_10005078C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SportEventViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  State.projectedValue.getter();
  return v5;
}

uint64_t sub_1000507E4(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 44);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100027EB0(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100050A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v135 = type metadata accessor for TaskPriority();
  v134 = *(v135 - 8);
  v3 = __chkstk_darwin(v135);
  v133 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = *(a1 - 8);
  v142 = *(v132 + 64);
  __chkstk_darwin(v3);
  v131 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v127 = a1;
  type metadata accessor for Optional();
  v130 = type metadata accessor for Binding();
  v129 = *(v130 - 1);
  __chkstk_darwin(v130);
  v128 = &v105 - v7;
  v138 = type metadata accessor for NavigationPath();
  v8 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v140 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for HeroImageView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v13 = *(v8 + 8);
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v6;
  v157 = v12;
  v158 = v13;
  v159 = WitnessTable;
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v15 = type metadata accessor for ModifiedContent();
  v154 = swift_getWitnessTable();
  v155 = &protocol witness table for _PaddingLayout;
  v124 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v16 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v15;
  v157 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v157 = sub_10000B3DC(&qword_10021A878, &qword_1001B00C8);
  type metadata accessor for DetailsModule(255, v6, v13, v17);
  v158 = type metadata accessor for ModifiedContent();
  v18 = swift_getAssociatedTypeWitness();
  v139 = v6;
  v19 = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, v18, v19, v20);
  v159 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule(255, v6, v13, v21);
  v160 = type metadata accessor for Optional();
  v161 = sub_10000B3DC(&qword_10021A880, &qword_1001B51A0);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v22 = type metadata accessor for ScrollView();
  v23 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v22;
  v157 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v22;
  v157 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v24;
  v157 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v24;
  v157 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v26;
  v157 = v27;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_1002188F8, &unk_1001ADC20);
  v28 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v26;
  v157 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v152 = v29;
  v153 = v30;
  v31 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v28;
  v157 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v28;
  v157 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_100027068();
  OpaqueTypeMetadata2 = v32;
  v157 = &type metadata for String;
  v158 = v33;
  v159 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v32;
  v157 = &type metadata for String;
  v158 = v33;
  v159 = v34;
  v36 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v35;
  v157 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v35;
  v157 = v36;
  v38 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v37;
  v157 = &type metadata for Bool;
  v158 = v38;
  v159 = &protocol witness table for Bool;
  v39 = swift_getOpaqueTypeMetadata2();
  v40 = sub_10000B3DC(&qword_10021A888, &qword_1001B00D0);
  OpaqueTypeMetadata2 = v37;
  v157 = &type metadata for Bool;
  v158 = v38;
  v159 = &protocol witness table for Bool;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = sub_10000D1EC(&qword_10021A890, &qword_10021A888, &qword_1001B00D0, &protocol conformance descriptor for TupleToolbarContent<A>);
  OpaqueTypeMetadata2 = v39;
  v157 = v40;
  v158 = v41;
  v159 = v42;
  v115 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v39;
  v157 = v40;
  v158 = v41;
  v159 = v42;
  v113 = swift_getOpaqueTypeConformance2();
  v43 = type metadata accessor for NavigationStack();
  v114 = *(v43 - 8);
  __chkstk_darwin(v43);
  v111 = &v105 - v44;
  type metadata accessor for AccessibilityAttachmentModifier();
  v45 = type metadata accessor for ModifiedContent();
  v125 = *(v45 - 8);
  __chkstk_darwin(v45);
  v110 = &v105 - v46;
  v47 = swift_getWitnessTable();
  v107 = v47;
  v48 = sub_100058FD8(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v150 = v47;
  v151 = v48;
  v49 = swift_getWitnessTable();
  v50 = *(v13 + 16);
  v51 = v127;
  v52 = swift_getWitnessTable();
  v53 = v45;
  v106 = v45;
  v54 = v139;
  OpaqueTypeMetadata2 = v45;
  v157 = v139;
  v158 = v51;
  v159 = v49;
  v109 = v49;
  v160 = v50;
  v161 = v52;
  v108 = v50;
  v55 = v52;
  v105 = v52;
  v117 = swift_getOpaqueTypeMetadata2();
  v121 = *(v117 - 8);
  __chkstk_darwin(v117);
  v137 = &v105 - v56;
  v57 = type metadata accessor for ModifiedContent();
  v126 = *(v57 - 8);
  __chkstk_darwin(v57);
  v138 = &v105 - v58;
  OpaqueTypeMetadata2 = v53;
  v157 = v54;
  v59 = v51;
  v158 = v51;
  v159 = v49;
  v160 = v50;
  v161 = v55;
  v112 = swift_getOpaqueTypeConformance2();
  v148 = v112;
  v149 = &protocol witness table for _AppearanceActionModifier;
  v119 = v57;
  v118 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v57;
  v157 = v118;
  v122 = &unk_1001C2954;
  v123 = swift_getOpaqueTypeMetadata2();
  v124 = *(v123 - 8);
  v60 = __chkstk_darwin(v123);
  v116 = &v105 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v120 = &v105 - v62;
  v145 = v54;
  v63 = v54;
  v64 = v140;
  v146 = v140;
  v147 = v141;
  v65 = v111;
  NavigationStack.init<>(root:)();
  v66 = v110;
  View.accessibilityIdentifier(_:)();
  (*(v114 + 8))(v65, v43);
  v67 = v59;
  v71 = sub_10005078C(v59, v68, v69, v70);
  v73 = v72;
  v75 = v74;
  v143 = v63;
  v144 = v64;
  v76 = v64;
  swift_getKeyPath();
  OpaqueTypeMetadata2 = v71;
  v157 = v73;
  v158 = v75;
  type metadata accessor for SportEventViewModel(255, v63, v64, v77);
  type metadata accessor for Binding();
  v78 = v128;
  Binding.subscript.getter();

  v79 = swift_allocObject();
  v80 = v63;
  *(v79 + 16) = v63;
  *(v79 + 24) = v76;
  v81 = v106;
  v82 = v67;
  View.sheet<A, B>(item:onDismiss:content:)();

  (*(v129 + 8))(v78, v130);
  (*(v125 + 8))(v66, v81);
  v83 = v132;
  v130 = *(v132 + 16);
  v84 = v131;
  v85 = v141;
  v130(v131, v141, v82);
  v86 = *(v83 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = v80;
  *(v87 + 24) = v76;
  v88 = *(v83 + 32);
  v88(v87 + ((v86 + 32) & ~v86), v84, v82);
  v89 = v117;
  v90 = v137;
  View.onAppear(perform:)();

  (*(v121 + 8))(v90, v89);
  v130(v84, v85, v82);
  type metadata accessor for MainActor();
  v91 = static MainActor.shared.getter();
  v92 = swift_allocObject();
  v92[2] = v91;
  v92[3] = &protocol witness table for MainActor;
  v93 = v140;
  v92[4] = v139;
  v92[5] = v93;
  v88(v92 + ((v86 + 48) & ~v86), v84, v82);
  v94 = v133;
  v95 = v119;
  v96 = v118;
  j___sScP13userInitiatedScPvgZ();
  v97 = v116;
  v98 = v94;
  v99 = v94;
  v100 = v138;
  sub_100009FB8(0, v98, 0xD000000000000024, 0x80000001001BEA70, 145, &unk_1001B0118, v92, v116, v95, v96);
  (*(v134 + 8))(v99, v135);
  (*(v126 + 8))(v100, v95);
  OpaqueTypeMetadata2 = v95;
  v157 = v96;
  swift_getOpaqueTypeConformance2();
  v101 = v120;
  v102 = v123;
  sub_100157EFC();
  v103 = v124[1];
  v103(v97, v102);
  sub_100157EFC();
  return (v103)(v101, v102);
}

uint64_t sub_100051BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v185 = a1;
  v182 = a5;
  v183 = type metadata accessor for SportEventView(0, a2, a3, a4);
  v181 = *(v183 - 8);
  v179 = *(v181 + 64);
  __chkstk_darwin(v183);
  v180 = &v124 - v7;
  v178 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for ContentMarginPlacement();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v172 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for ScrollIndicatorVisibility();
  v170 = *(v171 - 8);
  __chkstk_darwin(v171);
  v124 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v184 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for HeroImageView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v15 = *(a3 + 8);
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = a2;
  v195 = v14;
  v196 = v15;
  v197 = WitnessTable;
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v17 = type metadata accessor for ModifiedContent();
  v192 = swift_getWitnessTable();
  v193 = &protocol witness table for _PaddingLayout;
  v18 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v17;
  v195 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v195 = sub_10000B3DC(&qword_10021A878, &qword_1001B00C8);
  type metadata accessor for DetailsModule(255, a2, v15, v19);
  v196 = type metadata accessor for ModifiedContent();
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, v20, v21, v22);
  v197 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule(255, a2, v15, v23);
  v198 = type metadata accessor for Optional();
  v199 = sub_10000B3DC(&qword_10021A880, &qword_1001B51A0);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v127 = type metadata accessor for VStack();
  v126 = swift_getWitnessTable();
  v24 = type metadata accessor for ScrollView();
  v133 = *(v24 - 8);
  __chkstk_darwin(v24);
  v125 = &v124 - v25;
  v26 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v24;
  v195 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v131 = *(v27 - 8);
  __chkstk_darwin(v27);
  v130 = &v124 - v28;
  v135 = v24;
  OpaqueTypeMetadata2 = v24;
  v195 = v26;
  v129 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v27;
  v195 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeMetadata2();
  v147 = *(v30 - 8);
  __chkstk_darwin(v30);
  v142 = &v124 - v31;
  v132 = v27;
  OpaqueTypeMetadata2 = v27;
  v195 = OpaqueTypeConformance2;
  v128 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v30;
  v195 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v157 = *(v33 - 8);
  __chkstk_darwin(v33);
  v150 = &v124 - v34;
  sub_10000B3DC(&qword_1002188F8, &unk_1001ADC20);
  v162 = v33;
  v35 = type metadata accessor for ModifiedContent();
  v156 = *(v35 - 8);
  __chkstk_darwin(v35);
  v149 = &v124 - v36;
  v151 = v30;
  OpaqueTypeMetadata2 = v30;
  v195 = v32;
  v139 = v32;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v134 = v37;
  v190 = v37;
  v191 = v38;
  v39 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v35;
  v195 = v39;
  v40 = swift_getOpaqueTypeMetadata2();
  v144 = *(v40 - 8);
  __chkstk_darwin(v40);
  v141 = &v124 - v41;
  v160 = v35;
  OpaqueTypeMetadata2 = v35;
  v195 = v39;
  v136 = v39;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_100027068();
  OpaqueTypeMetadata2 = v40;
  v195 = &type metadata for String;
  v196 = v42;
  v197 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v158 = *(v44 - 8);
  __chkstk_darwin(v44);
  v152 = &v124 - v45;
  v146 = v40;
  OpaqueTypeMetadata2 = v40;
  v195 = &type metadata for String;
  v138 = v42;
  v196 = v42;
  v197 = v43;
  v137 = v43;
  v46 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v44;
  v195 = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  v168 = *(v47 - 8);
  __chkstk_darwin(v47);
  v166 = &v124 - v48;
  v163 = v44;
  OpaqueTypeMetadata2 = v44;
  v195 = v46;
  v140 = v46;
  v49 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v47;
  v195 = &type metadata for Bool;
  v196 = v49;
  v197 = &protocol witness table for Bool;
  v50 = swift_getOpaqueTypeMetadata2();
  v165 = *(v50 - 8);
  __chkstk_darwin(v50);
  v164 = &v124 - v51;
  v52 = sub_10000B3DC(&qword_10021A888, &qword_1001B00D0);
  v169 = v47;
  OpaqueTypeMetadata2 = v47;
  v195 = &type metadata for Bool;
  v155 = v49;
  v196 = v49;
  v197 = &protocol witness table for Bool;
  v53 = v125;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_10000D1EC(&qword_10021A890, &qword_10021A888, &qword_1001B00D0, &protocol conformance descriptor for TupleToolbarContent<A>);
  v167 = v50;
  OpaqueTypeMetadata2 = v50;
  v195 = v52;
  v161 = v52;
  v153 = v54;
  v196 = v54;
  v197 = v55;
  v148 = v55;
  v159 = swift_getOpaqueTypeMetadata2();
  v154 = *(v159 - 8);
  v56 = __chkstk_darwin(v159);
  v143 = &v124 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v145 = &v124 - v58;
  v173 = a2;
  v187 = a2;
  v188 = v184;
  v189 = v185;
  v59 = static Axis.Set.vertical.getter();
  sub_1001511F4(v59, sub_100058848, v186, v127, v126);
  v60 = v124;
  static ScrollIndicatorVisibility.never.getter();
  sub_100009F70(&qword_10021A390, &qword_1001B6A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  v62 = static Axis.Set.vertical.getter();
  *(inited + 32) = v62;
  v63 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v63;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v62)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v63)
  {
    Axis.Set.init(rawValue:)();
  }

  v64 = v183;
  v65 = v174;
  v66 = v172;
  v67 = v142;
  v68 = v130;
  v69 = v60;
  v70 = v135;
  View.scrollIndicators(_:axes:)();
  (*(v170 + 8))(v69, v171);
  (*(v133 + 8))(v53, v70);
  static Edge.Set.top.getter();
  static ContentMarginPlacement.scrollContent.getter();
  v71 = v132;
  View.contentMargins(_:_:for:)();
  v72 = *(v65 + 8);
  v73 = v175;
  v72(v66, v175);
  (*(v131 + 8))(v68, v71);
  static Edge.Set.bottom.getter();
  v74 = v185;
  sub_100050738(v64, v75, v76, v77);
  if (*(v74 + 16))
  {

    sub_100159350(v78);

    static ContentMarginPlacement.scrollContent.getter();
    v79 = v150;
    v80 = v151;
    View.contentMargins(_:_:for:)();
    v72(v66, v73);
    (*(v147 + 8))(v67, v80);
    v81 = [objc_opt_self() systemGroupedBackgroundColor];
    OpaqueTypeMetadata2 = Color.init(uiColor:)();
    static Edge.Set.all.getter();
    v82 = v149;
    v83 = v162;
    View.background<A>(_:ignoresSafeAreaEdges:)();

    (*(v157 + 8))(v79, v83);
    v84 = v177;
    v85 = v176;
    v86 = v178;
    (*(v177 + 104))(v176, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v178);
    v87 = v141;
    v88 = v160;
    View.navigationBarTitleDisplayMode(_:)();
    (*(v84 + 8))(v85, v86);
    (*(v156 + 8))(v82, v88);
    v89 = v183;
    v90 = v185;
    sub_100050738(v183, v91, v92, v93);
    v94 = sub_10015D478();
    v96 = v95;

    OpaqueTypeMetadata2 = v94;
    v195 = v96;
    v97 = v152;
    v98 = v146;
    View.navigationTitle<A>(_:)();

    (*(v144 + 8))(v87, v98);
    sub_100050738(v89, v99, v100, v101);
    sub_100159598();

    sub_100009F70(&qword_10021A898, &qword_1001B01C0);
    type metadata accessor for ToolbarPlacement();
    *(swift_allocObject() + 16) = xmmword_1001AEB90;
    static ToolbarPlacement.navigationBar.getter();
    v102 = v166;
    v103 = v163;
    View.toolbarBackgroundVisibility(_:for:)();

    (*(v158 + 8))(v97, v103);
    v104 = swift_allocObject();
    v105 = v173;
    v106 = v184;
    *(v104 + 16) = v173;
    *(v104 + 24) = v106;
    v107 = v181;
    v108 = v180;
    (*(v181 + 16))(v180, v90, v89);
    v109 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v110 = swift_allocObject();
    *(v110 + 16) = v105;
    *(v110 + 24) = v106;
    (*(v107 + 32))(v110 + v109, v108, v89);
    v123 = &protocol witness table for Bool;
    v111 = v164;
    v112 = v169;
    View.onScrollGeometryChange<A>(for:of:action:)();

    v113 = (*(v168 + 8))(v102, v112);
    __chkstk_darwin(v113);
    *(&v124 - 4) = v105;
    *(&v124 - 3) = v106;
    v123 = v90;
    v114 = v143;
    v115 = v167;
    v116 = v161;
    v117 = v153;
    v118 = v148;
    View.toolbar<A>(content:)();
    (*(v165 + 8))(v111, v115);
    OpaqueTypeMetadata2 = v115;
    v195 = v116;
    v196 = v117;
    v197 = v118;
    swift_getOpaqueTypeConformance2();
    v119 = v145;
    v120 = v159;
    sub_100157EFC();
    v121 = *(v154 + 8);
    v121(v114, v120);
    sub_100157EFC();
    return (v121)(v119, v120);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005323C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for HeroImageView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = *(a3 + 8);
  OpaqueTypeMetadata2 = a2;
  v34 = v9;
  v35 = v10;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v11 = type metadata accessor for ModifiedContent();
  v31 = swift_getWitnessTable();
  v32 = &protocol witness table for _PaddingLayout;
  v12 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v11;
  v34 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = sub_10000B3DC(&qword_10021A878, &qword_1001B00C8);
  type metadata accessor for DetailsModule(255, a2, v10, v13);
  v35 = type metadata accessor for ModifiedContent();
  v14 = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, v14, v15, v16);
  WitnessTable = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule(255, a2, v10, v17);
  v37 = type metadata accessor for Optional();
  v38 = sub_10000B3DC(&qword_10021A880, &qword_1001B51A0);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v18 = type metadata accessor for VStack();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v27[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v27[-v23];
  static HorizontalAlignment.leading.getter();
  v28 = a2;
  v29 = a3;
  v30 = a1;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  sub_100157EFC();
  v25 = *(v19 + 8);
  v25(v22, v18);
  sub_100157EFC();
  return (v25)(v24, v18);
}

uint64_t sub_100053624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v375 = a4;
  v378 = type metadata accessor for AppModule(0);
  v373 = *(v378 - 8);
  __chkstk_darwin(v378);
  v344 = (&v336 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v374 = sub_100009F70(&qword_10021A880, &qword_1001B51A0);
  v8 = __chkstk_darwin(v374);
  v395 = &v336 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v379 = &v336 - v10;
  type metadata accessor for Optional();
  v11 = type metadata accessor for Binding();
  __chkstk_darwin(v11 - 8);
  v342 = &v336 - v12;
  v13 = *(a3 + 8);
  v15 = type metadata accessor for UpcomingViewModel(0, a2, v13, v14);
  __chkstk_darwin(v15 - 8);
  v340 = &v336 - v16;
  v18 = type metadata accessor for UpcomingModule(0, a2, v13, v17);
  v371 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v343 = &v336 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v341 = &v336 - v21;
  v393 = v22;
  v394 = type metadata accessor for Optional();
  v390 = *(v394 - 8);
  v23 = __chkstk_darwin(v394);
  v397 = &v336 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v392 = &v336 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v365 = &v336 - v27;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v364 = AssociatedTypeWitness;
  v363 = AssociatedConformanceWitness;
  v30 = type metadata accessor for LocationModule(0, AssociatedTypeWitness, AssociatedConformanceWitness, v29);
  v368 = *(v30 - 8);
  __chkstk_darwin(v30);
  v367 = &v336 - v31;
  v369 = v32;
  v403 = type metadata accessor for ModifiedContent();
  v387 = *(v403 - 8);
  v33 = __chkstk_darwin(v403);
  v391 = &v336 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v366 = &v336 - v36;
  __chkstk_darwin(v35);
  v389 = &v336 - v37;
  v39 = type metadata accessor for DetailsModule(0, a2, v13, v38);
  v361 = *(v39 - 8);
  __chkstk_darwin(v39);
  v360 = &v336 - v40;
  v362 = v41;
  v402 = type metadata accessor for ModifiedContent();
  v385 = *(v402 - 8);
  v42 = __chkstk_darwin(v402);
  v388 = &v336 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v359 = &v336 - v45;
  __chkstk_darwin(v44);
  v401 = &v336 - v46;
  v47 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v47 - 8);
  v370 = &v336 - v48;
  v336 = type metadata accessor for ServicesUpsellModule(0);
  __chkstk_darwin(v336);
  v339 = (&v336 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v376 = sub_100009F70(&qword_10021A900, &qword_1001B01F8);
  v357 = *(v376 - 8);
  v50 = __chkstk_darwin(v376);
  v338 = &v336 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v337 = &v336 - v52;
  v372 = sub_100009F70(&qword_10021A878, &qword_1001B00C8);
  v53 = __chkstk_darwin(v372);
  v386 = &v336 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v404 = &v336 - v55;
  v396 = a3;
  v57 = type metadata accessor for SportEventView(0, a2, a3, v56);
  v398 = *(v57 - 8);
  v380 = *(v398 + 64);
  v58 = __chkstk_darwin(v57);
  v381 = &v336 - v59;
  __chkstk_darwin(v58);
  v61 = &v336 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v382 = v61;
  v62 = swift_getAssociatedTypeWitness();
  v63 = swift_getAssociatedConformanceWitness();
  v65 = type metadata accessor for HeroImageView(255, v62, v63, v64);
  v351 = v65;
  WitnessTable = swift_getWitnessTable();
  *&v420 = a2;
  *(&v420 + 1) = v65;
  v405 = a2;
  *&v421 = v13;
  *(&v421 + 1) = WitnessTable;
  v66 = type metadata accessor for HeaderModule(0, &v420);
  v353 = *(v66 - 8);
  __chkstk_darwin(v66);
  v347 = &v336 - v67;
  v68 = type metadata accessor for ModifiedContent();
  v356 = *(v68 - 8);
  __chkstk_darwin(v68);
  v355 = &v336 - v69;
  v354 = v66;
  v348 = swift_getWitnessTable();
  v428 = v348;
  v429 = &protocol witness table for _PaddingLayout;
  v70 = swift_getWitnessTable();
  v358 = v68;
  *&v420 = v68;
  *(&v420 + 1) = v70;
  v352 = v70;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v383 = *(OpaqueTypeMetadata2 - 8);
  v71 = __chkstk_darwin(OpaqueTypeMetadata2);
  v384 = &v336 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __chkstk_darwin(v71);
  v349 = &v336 - v74;
  __chkstk_darwin(v73);
  v399 = &v336 - v75;
  v377 = v13;
  v346 = type metadata accessor for HeaderViewModel(0, a2, v13, v76);
  sub_100050738(v57, v77, v78, v79);
  sub_1001583A0(v61);

  v83 = sub_100050738(v57, v80, v81, v82);
  v84 = sub_10015847C(v83);
  v86 = v85;

  sub_100050738(v57, v87, v88, v89);
  v90 = sub_100158590();
  v92 = v91;

  sub_100050738(v57, v93, v94, v95);
  v96 = sub_1001585B0();
  v98 = v97;

  v102 = sub_100050738(v57, v99, v100, v101);
  LOBYTE(a2) = sub_1001585D0(v102);

  v422 = 0;
  v420 = 0u;
  v421 = 0u;
  v103 = sub_100079D3C(v382, v84, v86, v90, v92, v96, v98, 0, 0, a2 & 1, &v420);
  v104 = v398;
  v105 = v381;
  v346 = *(v398 + 16);
  v346(v381, a1, v57);
  v106 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v107 = swift_allocObject();
  v108 = v396;
  *(v107 + 16) = v405;
  *(v107 + 24) = v108;
  v109 = *(v104 + 32);
  v110 = v105;
  v111 = v347;
  v398 = v104 + 32;
  v345 = v109;
  v109(v107 + v106, v110, v57);
  sub_1000A89F0(v103, sub_100058B7C, v107, v351, WitnessTable, v111);
  static Edge.Set.horizontal.getter();
  v112 = v57;
  v406 = a1;
  if (sub_1000507E4(v57))
  {
    sub_1000505EC();
  }

  v113 = v108;
  v114 = v355;
  v115 = v354;
  View.padding(_:_:)();
  (*(v353 + 8))(v111, v115);
  v116 = v381;
  v117 = v406;
  v346(v381, v406, v112);
  v118 = swift_allocObject();
  v119 = v405;
  v120 = v112;
  *(v118 + 16) = v405;
  *(v118 + 24) = v113;
  v345(v118 + v106, v116, v112);
  v121 = v349;
  v122 = v358;
  v123 = v352;
  View.onScrollVisibilityChange(threshold:_:)();

  (*(v356 + 8))(v114, v122);
  *&v420 = v122;
  *(&v420 + 1) = v123;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v125 = OpaqueTypeMetadata2;
  v380 = OpaqueTypeConformance2;
  sub_100157EFC();
  v126 = *(v383 + 8);
  v398 = v383 + 8;
  v381 = v126;
  (v126)(v121, v125);
  v127 = v120;
  sub_100050738(v120, v128, v129, v130);
  v131 = *(v117 + 16);
  if (v131)
  {
    v132 = objc_allocWithZone(LSApplicationWorkspace);

    v133 = [v132 init];
    v134 = objc_opt_self();
    v135 = String._bridgeToObjectiveC()();
    v136 = [v134 applicationWithBundleIdentifier:v135];

    LOBYTE(v135) = sub_10015D58C(v131, 0xD000000000000010, 0x80000001001BEAD0, v136);

    v358 = v131;

    v140 = 1;
    v141 = v127;
    if (v135)
    {
      v142 = sub_100050738(v127, v137, v138, v139);
      v143 = sub_100158868(v142);
      v145 = v144;

      sub_100050738(v127, v146, v147, v148);
      v149 = v370;
      sub_10015897C(v370);

      sub_100050738(v127, v150, v151, v152);
      v153 = sub_10015D804();
      v155 = v154;

      v159 = sub_100050738(v141, v156, v157, v158);
      v160 = sub_100158A64(v159);

      type metadata accessor for ServicesUpsellViewModel(0);
      v161 = swift_allocObject();
      ObservationRegistrar.init()();
      *(v161 + 16) = 1;
      *(v161 + 24) = v143;
      *(v161 + 32) = v145;
      sub_10000F618(v149, v161 + OBJC_IVAR____TtC15ShazamEventsApp23ServicesUpsellViewModel_openURL, qword_100218748, &unk_1001AD110);
      v162 = (v161 + OBJC_IVAR____TtC15ShazamEventsApp23ServicesUpsellViewModel_subtitle);
      *v162 = 0;
      v162[1] = 0;
      v163 = (v161 + OBJC_IVAR____TtC15ShazamEventsApp23ServicesUpsellViewModel_metricsQuery);
      *v163 = v153;
      v163[1] = v155;
      v119 = v405;
      *(v161 + OBJC_IVAR____TtC15ShazamEventsApp23ServicesUpsellViewModel_analyticsPageNameType) = v160;
      v164 = v339;
      *v339 = v161;
      type metadata accessor for RemoteViewConfiguration();
      sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
      v164[1] = EnvironmentObject.init()();
      v164[2] = v165;
      v166 = *(v336 + 24);
      *(v164 + v166) = swift_getKeyPath();
      sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
      swift_storeEnumTagMultiPayload();
      v167 = static Edge.Set.horizontal.getter();
      if (sub_1000507E4(v141))
      {
        sub_100050654();
      }

      EdgeInsets.init(_all:)();
      v169 = v168;
      v171 = v170;
      v173 = v172;
      v175 = v174;
      v176 = v164;
      v177 = v338;
      sub_100059028(v176, v338, type metadata accessor for ServicesUpsellModule);
      v178 = v177 + *(v376 + 36);
      *v178 = v167;
      *(v178 + 8) = v169;
      *(v178 + 16) = v171;
      *(v178 + 24) = v173;
      *(v178 + 32) = v175;
      *(v178 + 40) = 0;
      v179 = v177;
      v180 = v337;
      sub_10000F618(v179, v337, &qword_10021A900, &qword_1001B01F8);
      sub_10000F618(v180, v404, &qword_10021A900, &qword_1001B01F8);
      v140 = 0;
    }

    (*(v357 + 56))(v404, v140, 1, v376);
    type metadata accessor for DetailsViewModel(0, v119, v377, v181);
    sub_100050738(v141, v182, v183, v184);
    v185 = v382;
    sub_1001583A0(v382);

    sub_100050738(v141, v186, v187, v188);
    v189 = sub_10015D504();
    v190 = v189;

    v191 = sub_100183444(v185, v189);
    v192 = v360;
    sub_1000FF934(v191, v360);
    static Edge.Set.horizontal.getter();
    v193 = sub_1000507E4(v141);
    v194 = v396;
    if (v193)
    {
      sub_1000506BC();
    }

    else
    {
      static Solarium.isEnabled.getter();
    }

    v195 = v362;
    v196 = swift_getWitnessTable();
    v197 = v359;
    View.padding(_:_:)();
    (*(v361 + 8))(v192, v195);
    v426 = v196;
    v427 = &protocol witness table for _PaddingLayout;
    v198 = v402;
    v362 = swift_getWitnessTable();
    sub_100157EFC();
    v199 = *(v385 + 8);
    v382 = (v385 + 8);
    v376 = v199;
    v199(v197, v198);
    type metadata accessor for LocationViewModel(0, v364, v363, v200);
    v204 = sub_100050738(v141, v201, v202, v203);
    v205 = sub_100158868(v204);
    v207 = v206;

    v211 = sub_100050738(v141, v208, v209, v210);
    v212 = v365;
    sub_100158B8C(v211);

    sub_100050738(v141, v213, v214, v215);
    v216 = sub_10015D504();
    v217 = v216;

    v221 = sub_100050738(v141, v218, v219, v220);
    v222 = sub_100158A64(v221);

    v223 = sub_1000C6E18(v205, v207, v212, v216, v222);
    v224 = v367;
    sub_1000A2404(v223, v367);
    static Edge.Set.horizontal.getter();
    if (sub_1000507E4(v141))
    {
      v225 = v405;
      sub_100050654();
    }

    else
    {
      v225 = v405;
    }

    v226 = v369;
    v227 = swift_getWitnessTable();
    v228 = v366;
    View.padding(_:_:)();
    (*(v368 + 1))(v224, v226);
    v424 = v227;
    v425 = &protocol witness table for _PaddingLayout;
    v229 = v403;
    v367 = swift_getWitnessTable();
    sub_100157EFC();
    v230 = *(v387 + 8);
    v369 = v387 + 8;
    v368 = v230;
    v230(v228, v229);
    sub_100050738(v141, v231, v232, v233);
    LOBYTE(v229) = sub_100158C98();

    if (v229)
    {
      v237 = sub_100050738(v141, v234, v235, v236);
      v238 = (v237 + *(*v237 + 168));
      v239 = v238[1];
      v366 = *v238;

      v243 = sub_100050738(v141, v240, v241, v242);
      v365 = sub_100158FB0(v243);
      v364 = v244;

      sub_100050738(v141, v245, v246, v247);
      v248 = sub_10015D890();

      v252 = sub_10005078C(v141, v249, v250, v251);
      v254 = v253;
      v256 = v255;
      __chkstk_darwin(v252);
      swift_getKeyPath();
      *&v420 = v252;
      *(&v420 + 1) = v254;
      *&v421 = v256;
      type metadata accessor for SportEventViewModel(255, v225, v194, v257);
      type metadata accessor for Binding();
      v258 = v342;
      Binding.subscript.getter();

      v259 = v377;
      v260 = v340;
      sub_1000F6C94(v366, v239, v365, v364, 1, v248, v258, v225, v340, v377);
      KeyPath = swift_getKeyPath();
      v262 = v343;
      sub_1000C117C(v260, KeyPath, 0, v225, v259, v343);
      v263 = v393;
      swift_getWitnessTable();
      v264 = v341;
      sub_100157EFC();
      v265 = v371;
      v266 = *(v371 + 8);
      v266(v262, v263);
      sub_100157EFC();
      v266(v264, v263);
      v267 = v397;
      (*(v265 + 32))(v397, v262, v263);
      (*(v265 + 56))(v267, 0, 1, v263);
    }

    else
    {
      v267 = v397;
      (*(v371 + 56))(v397, 1, 1, v393);
      swift_getWitnessTable();
    }

    sub_100150FB8(v267, v392);
    v268 = *(v390 + 8);
    v405 = v390 + 8;
    v396 = v268;
    v268(v267, v394);
    sub_100050738(v141, v269, v270, v271);

    v273 = sub_100159350(v272);

    v277 = 1;
    if (v273)
    {
      v278 = sub_100050738(v141, v274, v275, v276);
      v279 = sub_100158868(v278);
      v281 = v280;

      sub_100050738(v141, v282, v283, v284);
      v285 = v370;
      sub_10015897C(v370);

      sub_100050738(v141, v286, v287, v288);

      v290 = sub_10001EF0C(v289);
      v292 = v291;

      v296 = sub_100050738(v141, v293, v294, v295);
      v297 = sub_100158A64(v296);

      type metadata accessor for AppViewModel(0);
      v298 = swift_allocObject();
      v299 = v298 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_subheaderTitle;
      *v299 = LocalizedStringKey.init(stringLiteral:)();
      *(v299 + 8) = v300;
      *(v299 + 16) = v301 & 1;
      *(v299 + 24) = v302;
      v303 = v298 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_descriptionTitle;
      *v303 = LocalizedStringKey.init(stringLiteral:)();
      *(v303 + 8) = v304;
      *(v303 + 16) = v305 & 1;
      *(v303 + 24) = v306;
      ObservationRegistrar.init()();
      *(v298 + 16) = 1;
      *(v298 + 24) = v279;
      *(v298 + 32) = v281;
      sub_10000F618(v285, v298 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_eventURL, qword_100218748, &unk_1001AD110);
      v307 = (v298 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_queryAppID);
      *v307 = v290;
      v307[1] = v292;
      v267 = v397;
      *(v298 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_shouldShowDiscoveryDetail) = 0;
      *(v298 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_analyticsPageNameType) = v297;
      v308 = swift_getKeyPath();
      v309 = v344;
      *v344 = v298;
      v415 = 0;
      v414 = 0;
      sub_100009F70(&qword_100219F00, &qword_1001AF350);
      State.init(wrappedValue:)();
      v310 = v421;
      *(v309 + 8) = v420;
      *(v309 + 24) = v310;
      type metadata accessor for RemoteViewConfiguration();
      sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
      *(v309 + 32) = EnvironmentObject.init()();
      *(v309 + 40) = v311;
      v312 = v378;
      v313 = *(v378 + 28);
      *(v309 + v313) = swift_getKeyPath();
      sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
      swift_storeEnumTagMultiPayload();
      v314 = v309 + *(v312 + 32);
      *v314 = v308;
      *(v314 + 8) = 0;
      sub_100059028(v309, v379, type metadata accessor for AppModule);
      v277 = 0;
    }

    v315 = v379;
    (*(v373 + 56))(v379, v277, 1, v378);
    v316 = v384;
    v317 = OpaqueTypeMetadata2;
    (*(v383 + 16))(v384, v399);
    *&v420 = v316;
    v318 = v386;
    sub_10000D58C(v404, v386, &qword_10021A878, &qword_1001B00C8);
    *(&v420 + 1) = v318;
    v319 = v388;
    v320 = v402;
    (*(v385 + 16))(v388, v401);
    *&v421 = v319;
    v321 = v391;
    v322 = v389;
    v323 = v403;
    (*(v387 + 16))(v391, v389);
    *(&v421 + 1) = v321;
    v324 = v267;
    v325 = v392;
    v326 = v267;
    v327 = v394;
    (*(v390 + 16))(v324, v392, v394);
    v422 = v326;
    v328 = v395;
    sub_10000D58C(v315, v395, &qword_10021A880, &qword_1001B51A0);
    v423 = v328;
    v414 = v317;
    v415 = v372;
    v416 = v320;
    v417 = v323;
    v418 = v327;
    v419 = v374;
    v408 = v380;
    v409 = sub_100058DE4();
    v410 = v362;
    v411 = v367;
    v407 = swift_getWitnessTable();
    v412 = swift_getWitnessTable();
    v413 = sub_100058F24();
    sub_100151024(&v420, 6uLL, &v414);
    sub_10000D52C(v315, &qword_10021A880, &qword_1001B51A0);
    v329 = v396;
    v396(v325, v327);
    v330 = v368;
    v368(v322, v323);
    v331 = v320;
    v332 = v376;
    (v376)(v401, v331);
    sub_10000D52C(v404, &qword_10021A878, &qword_1001B00C8);
    v333 = OpaqueTypeMetadata2;
    v334 = v381;
    (v381)(v399, OpaqueTypeMetadata2);
    sub_10000D52C(v395, &qword_10021A880, &qword_1001B51A0);
    v329(v397, v327);
    v330(v391, v403);
    v332(v388, v402);
    sub_10000D52C(v386, &qword_10021A878, &qword_1001B00C8);
    return v334(v384, v333);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100055988@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  __chkstk_darwin(v6 - 8);
  v8 = v26 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for HeroImageView(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v26 - v16;
  v19 = type metadata accessor for SportEventView(0, a1, a2, v18);
  v23 = sub_100050738(v19, v20, v21, v22);
  sub_1001586F4(v23);

  sub_10019405C(v8, v15);
  swift_getWitnessTable();
  sub_100157EFC();
  v24 = *(v12 + 8);
  v24(v15, v11);
  sub_100157EFC();
  return (v24)(v17, v11);
}

double sub_100055BB8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SportEventView(0, a3, a4, a4);
  sub_100050738(v5, v6, v7, v8);
  sub_100158830((a1 & 1) == 0);

  return result;
}

double sub_100055C5C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v6 = type metadata accessor for SportEventView(0, a4, a5, a4);
  sub_100050738(v6, v7, v8, v9);
  if (v5)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  sub_100159620(v10);

  return result;
}

uint64_t sub_100055CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v103 = a4;
  v102 = sub_100009F70(&qword_10021A8A0, &qword_1001B01C8);
  __chkstk_darwin(v102);
  v101 = &v81 - v7;
  v100 = sub_100009F70(&qword_10021A8A8, &qword_1001BA440);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v91 = &v81 - v8;
  v99 = sub_100009F70(&qword_10021A8B0, &qword_1001B51F0);
  v90 = *(v99 - 8);
  __chkstk_darwin(v99);
  v89 = &v81 - v9;
  v83 = type metadata accessor for EnvironmentValues();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009F70(&qword_10021A8B8, &qword_1001B01D0);
  v12 = __chkstk_darwin(v11 - 8);
  v96 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v97 = &v81 - v14;
  v92 = sub_100009F70(&qword_10021A8C0, &qword_1001B01D8);
  v15 = *(v92 - 8);
  __chkstk_darwin(v92);
  v87 = &v81 - v16;
  v17 = type metadata accessor for ToolbarItemPlacement();
  v18 = __chkstk_darwin(v17 - 8);
  v88 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v84 = &v81 - v20;
  v93 = sub_100009F70(&qword_10021A8C8, &qword_1001B01E0);
  v86 = *(v93 - 8);
  __chkstk_darwin(v93);
  v85 = &v81 - v21;
  v22 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v22 - 8);
  v24 = &v81 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100009F70(&qword_10021A8D0, &qword_1001B01E8);
  v30 = __chkstk_darwin(v29 - 8);
  v32 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v95 = &v81 - v33;
  v104 = a2;
  v34 = a2;
  v35 = a3;
  v37 = type metadata accessor for SportEventView(0, v34, a3, v36);
  v41 = sub_100050738(v37, v38, v39, v40);
  sub_100159780(v41, v24);

  v42 = (*(v26 + 48))(v24, 1, v25);
  v105 = a1;
  v94 = v37;
  if (v42 == 1)
  {
    sub_10000D52C(v24, qword_100218748, &unk_1001AD110);
LABEL_7:
    (*(v15 + 56))(v32, 1, 1, v92);
    v48 = sub_10000D1EC(&qword_10021A8D8, &qword_10021A8C8, &qword_1001B01E0, &protocol conformance descriptor for ToolbarItem<A, B>);
    v106 = v93;
    v107 = v48;
    swift_getOpaqueTypeConformance2();
    v49 = v95;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000D52C(v32, &qword_10021A8D0, &qword_1001B01E8);
    goto LABEL_10;
  }

  (*(v26 + 32))(v28, v24, v25);
  sub_100050738(v37, v43, v44, v45);
  v46 = sub_1001599B8();

  if ((v46 & 1) == 0)
  {
    (*(v26 + 8))(v28, v25);
    goto LABEL_7;
  }

  if (static Solarium.isEnabled.getter())
  {
    v47 = static ToolbarItemPlacement.topBarLeading.getter();
  }

  else
  {
    v47 = static ToolbarItemPlacement.topBarTrailing.getter();
  }

  __chkstk_darwin(v47);
  v50 = v105;
  *(&v81 - 4) = v104;
  *(&v81 - 3) = a3;
  *(&v81 - 2) = v28;
  *(&v81 - 1) = v50;
  sub_100009F70(&qword_10021A8E8, &qword_1001B01F0);
  sub_100058960();
  v84 = a3;
  v51 = v85;
  ToolbarItem<>.init(placement:content:)();
  v52 = sub_10000D1EC(&qword_10021A8D8, &qword_10021A8C8, &qword_1001B01E0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v53 = v87;
  v54 = v93;
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  v55 = v92;
  (*(v15 + 16))(v32, v53, v92);
  (*(v15 + 56))(v32, 0, 1, v55);
  v106 = v54;
  v107 = v52;
  swift_getOpaqueTypeConformance2();
  v56 = v95;
  static ToolbarContentBuilder.buildIf<A>(_:)();
  sub_10000D52C(v32, &qword_10021A8D0, &qword_1001B01E8);
  (*(v15 + 8))(v53, v55);
  v49 = v56;
  v57 = v51;
  v35 = v84;
  (*(v86 + 8))(v57, v54);
  (*(v26 + 8))(v28, v25);
LABEL_10:
  v58 = v97;
  v59 = v94;
  v60 = v105;
  v61 = *(v105 + 16);
  if (v61)
  {
    if (*(v61 + 88) && (*(v61 + 80) & 1) != 0)
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v62 & 1) == 0)
      {
        if (*(v61 + 32) > 1u || *(v61 + 32))
        {
          v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v74 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }

        v75 = &v60[*(v59 + 44)];
        v76 = *v75;
        if (v75[8] == 1)
        {
          if ((v76 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {

          static os_log_type_t.fault.getter();
          v77 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v78 = v81;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_100027EB0(v76, 0);
          (*(v82 + 8))(v78, v83);
          if (v106 != 1)
          {
LABEL_26:
            v79 = v96;
            (*(v98 + 56))(v96, 1, 1, v100);
            v80 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0, &qword_1001B51F0, &protocol conformance descriptor for ToolbarItem<A, B>);
            v106 = v99;
            v107 = v80;
            swift_getOpaqueTypeConformance2();
            static ToolbarContentBuilder.buildIf<A>(_:)();
            sub_10000D52C(v79, &qword_10021A8B8, &qword_1001B01D0);
            goto LABEL_18;
          }
        }
      }
    }

    else
    {
    }

LABEL_17:
    v63 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v63);
    *(&v81 - 4) = v104;
    *(&v81 - 3) = v35;
    *(&v81 - 2) = v60;
    sub_100042DC4();
    v64 = v89;
    ToolbarItem<>.init(placement:content:)();
    v65 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0, &qword_1001B51F0, &protocol conformance descriptor for ToolbarItem<A, B>);
    v66 = v91;
    v67 = v99;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v68 = v98;
    v69 = v96;
    v70 = v100;
    (*(v98 + 16))(v96, v66, v100);
    (*(v68 + 56))(v69, 0, 1, v70);
    v106 = v67;
    v107 = v65;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000D52C(v69, &qword_10021A8B8, &qword_1001B01D0);
    (*(v68 + 8))(v66, v70);
    (*(v90 + 8))(v64, v67);
LABEL_18:
    v71 = v101;
    v72 = *(v102 + 48);
    sub_10000D58C(v49, v101, &qword_10021A8D0, &qword_1001B01E8);
    sub_10000D58C(v58, v71 + v72, &qword_10021A8B8, &qword_1001B01D0);
    TupleToolbarContent.init(_:)();
    sub_10000D52C(v58, &qword_10021A8B8, &qword_1001B01D0);
    return sub_10000D52C(v49, &qword_10021A8D0, &qword_1001B01E8);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100056ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  v9 = type metadata accessor for SportEventView(0, a3, a4, a4);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  v13 = type metadata accessor for ShareButton(0);
  __chkstk_darwin(v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  (*(v10 + 16))(v12, a2, v9);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v10 + 32))(v18 + v17, v12, v9);
  v19 = &v15[*(v13 + 20)];
  *v19 = sub_100058A4C;
  v19[1] = v18;
  sub_100058FD8(&qword_10021A8F8, type metadata accessor for ShareButton, &unk_1001B8324);
  View.accessibilityIdentifier(_:)();
  return sub_100058A64(v15);
}

void sub_100056D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SportEventView(0, a2, a3, a4);
  sub_100050738(v5, v6, v7, v8);
  v9 = *(a1 + 16);
  if (v9)
  {

    sub_100159AAC(0, 1, 0, 3u, v9);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100056DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for SportEventView(0, a2, a3, a4);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  result = (*(v10 + 32))(v14 + v13, v12, v9);
  *a5 = 0;
  *(a5 + 8) = sub_100058AC0;
  *(a5 + 16) = v14;
  return result;
}

uint64_t sub_100056F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DismissAction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SportEventView(0, a2, a3, v10);
  sub_100050738(v11, v12, v13, v14);
  v15 = *(a1 + 16);
  if (v15)
  {

    sub_100159AAC(0, 2, 0, 3u, v15);

    sub_100024868(v9);
    DismissAction.callAsFunction()();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000570C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SportEventView(0, v9, v10, v11);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v24 - v17;
  type metadata accessor for SportEventViewModel(0, a2, a3, v19);
  (*(v6 + 16))(v8, a1, a2);
  v20 = sub_100159D44(v8);
  KeyPath = swift_getKeyPath();
  sub_1000572EC(v20, KeyPath, 0, v16);
  swift_getWitnessTable();
  sub_100157EFC();
  v22 = *(v13 + 8);
  v22(v16, v12);
  sub_100157EFC();
  return v22(v18, v12);
}

uint64_t sub_1000572EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = *a1;
  State.init(wrappedValue:)();
  *a4 = v14;
  a4[1] = v15;
  type metadata accessor for RemoteViewConfiguration();
  sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  a4[2] = EnvironmentObject.init()();
  a4[3] = v8;
  v10 = type metadata accessor for SportEventView(0, *(v7 + 80), *(v7 + 88), v9);
  v11 = *(v10 + 40);
  *(a4 + v11) = swift_getKeyPath();
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  result = swift_storeEnumTagMultiPayload();
  v13 = a4 + *(v10 + 44);
  *v13 = a2;
  v13[8] = a3 & 1;
  return result;
}

void sub_100057444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SportEventView(0, a2, a3, a4);
  sub_100050738(v5, v6, v7, v8);
  if (*(a1 + 16))
  {

    sub_100159D84(v9);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100058FD8(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10005750C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[259] = a5;
  v5[253] = a4;
  v5[247] = a3;
  v6 = type metadata accessor for SportEventView(0, a4, a5, a4);
  v5[265] = v6;
  v7 = *(v6 - 8);
  v5[271] = v7;
  v5[277] = *(v7 + 64);
  v5[278] = swift_task_alloc();
  v5[279] = swift_task_alloc();
  v5[280] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[281] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[282] = v9;
  v5[283] = v8;

  return _swift_task_switch(sub_100057634, v9, v8);
}

uint64_t sub_100057634()
{
  v1 = v0[280];
  v16 = v0[279];
  v17 = v0[278];
  v2 = v0[271];
  v3 = v0[265];
  v4 = v0[259];
  v5 = v0[253];
  v18 = v0[247];
  v14 = v5;
  v15 = *(v2 + 16);
  v15(v1);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[284] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  v19 = *(v2 + 32);
  v19(v7 + v6, v1, v3);
  v8 = swift_task_alloc();
  v0[285] = v8;
  *(v8 + 16) = &unk_1001B0128;
  *(v8 + 24) = v7;
  swift_asyncLet_begin();
  (v15)(v16, v18, v3);
  v9 = swift_allocObject();
  v0[286] = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  v19(v9 + v6, v16, v3);
  v10 = swift_task_alloc();
  v0[287] = v10;
  *(v10 + 16) = &unk_1001B0138;
  *(v10 + 24) = v9;
  swift_asyncLet_begin();
  (v15)(v17, v18, v3);
  v11 = swift_allocObject();
  v0[288] = v11;
  *(v11 + 16) = v14;
  *(v11 + 24) = v4;
  v19(v11 + v6, v17, v3);
  v12 = swift_task_alloc();
  v0[289] = v12;
  *(v12 + 16) = &unk_1001B0150;
  *(v12 + 24) = v11;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2);
}

uint64_t sub_100057954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100050738(*(v4 + 2120), a2, a3, a4);
  sub_10015B3E4();

  return _swift_asyncLet_finish(v4 + 1296, v5);
}

uint64_t sub_1000579EC()
{

  return _swift_asyncLet_finish(v0 + 656, v1);
}

uint64_t sub_100057A7C()
{

  return _swift_asyncLet_finish(v0 + 16, v1);
}

uint64_t sub_100057B0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100057BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100057BDC, 0, 0);
}

uint64_t sub_100057BDC()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100057C70, v2, v1);
}

uint64_t sub_100057C70()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for SportEventView(0, v2, v1, v3);
  v0[6] = sub_100050738(v4, v5, v6, v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_10005983C;

  return sub_10015A038();
}

uint64_t sub_100057D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100057D50, 0, 0);
}

uint64_t sub_100057D50()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100057DE4, v2, v1);
}

uint64_t sub_100057DE4()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for SportEventView(0, v2, v1, v3);
  v0[6] = sub_100050738(v4, v5, v6, v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_100057EA0;

  return sub_10015A52C();
}

uint64_t sub_100057EA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100057FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100057FD4, 0, 0);
}

uint64_t sub_100057FD4()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100058068, v2, v1);
}

uint64_t sub_100058068()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for SportEventView(0, v2, v1, v3);
  v0[6] = sub_100050738(v4, v5, v6, v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_10005983C;

  return sub_10015AB78();
}

__n128 sub_100058188(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000581C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SportEventView(0, *(v4 + 32), *(v4 + 40), a4);
  v6 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  swift_unknownObjectRelease();
  v7 = v4 + v6;

  v8 = *(v5 + 40);
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DismissAction();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  sub_100027EB0(*(v7 + *(v5 + 44)), *(v7 + *(v5 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_100058320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for SportEventView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10000D890;

  return sub_10005750C(v10, v11, v4 + v9, v6, v7);
}

uint64_t sub_100058418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SportEventView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1000214E4;

  return sub_100057BB8(v4 + v9, v6, v7);
}

uint64_t sub_100058500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SportEventView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1000214E4;

  return sub_100057D2C(v4 + v9, v6, v7);
}

uint64_t sub_1000585E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D890;

  return sub_10015120C(a1, v4);
}

uint64_t sub_1000586A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SportEventView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1000214E4;

  return sub_100057FB0(v4 + v9, v6, v7);
}

uint64_t sub_100058788(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000214E4;

  return sub_10015120C(a1, v4);
}

uint64_t sub_100058854@<X0>(BOOL *a1@<X8>)
{
  ScrollGeometry.contentInsets.getter();
  v3 = v2;
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3 + v5 > 4.0;
  return result;
}

double sub_1000588A0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for SportEventView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_100055C5C(a1, a2, v10, v7, v8);
}

unint64_t sub_100058960()
{
  result = qword_10021A8F0;
  if (!qword_10021A8F0)
  {
    sub_10000B3DC(&qword_10021A8E8, &qword_1001B01F0);
    sub_100058FD8(&qword_10021A8F8, type metadata accessor for ShareButton, &unk_1001B8324);
    sub_100058FD8(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A8F0);
  }

  return result;
}

uint64_t sub_100058A64(uint64_t a1)
{
  v2 = type metadata accessor for ShareButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100058AD8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SportEventView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_100058B7C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for SportEventView(0, v4, v5, a1);

  return sub_100055988(v4, v5, a2);
}

uint64_t sub_100058C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SportEventView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  v7 = *(v5 + 40);
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DismissAction();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  sub_100027EB0(*(v6 + *(v5 + 44)), *(v6 + *(v5 + 44) + 8));

  return swift_deallocObject();
}

double sub_100058D58(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SportEventView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100055BB8(a1, v9, v6, v7);
}

unint64_t sub_100058DE4()
{
  result = qword_10021A908;
  if (!qword_10021A908)
  {
    sub_10000B3DC(&qword_10021A878, &qword_1001B00C8);
    sub_100058E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A908);
  }

  return result;
}

unint64_t sub_100058E68()
{
  result = qword_10021A910;
  if (!qword_10021A910)
  {
    sub_10000B3DC(&qword_10021A900, &qword_1001B01F8);
    sub_100058FD8(&qword_10021A918, type metadata accessor for ServicesUpsellModule, &unk_1001AD7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A910);
  }

  return result;
}

unint64_t sub_100058F24()
{
  result = qword_10021A920;
  if (!qword_10021A920)
  {
    sub_10000B3DC(&qword_10021A880, &qword_1001B51A0);
    sub_100058FD8(&qword_10021A928, type metadata accessor for AppModule, &unk_1001BAE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A920);
  }

  return result;
}

uint64_t sub_100058FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100059028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100059090(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for NavigationPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for HeroImageView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  v7 = *(v2 + 8);
  OpaqueTypeMetadata2 = v1;
  v44 = v6;
  v45 = v7;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v8 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v8;
  v44 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = sub_10000B3DC(&qword_10021A878, &qword_1001B00C8);
  type metadata accessor for DetailsModule(255, v1, v7, v10);
  v45 = type metadata accessor for ModifiedContent();
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, v11, v12, v13);
  WitnessTable = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule(255, v1, v7, v14);
  v47 = type metadata accessor for Optional();
  v48 = sub_10000B3DC(&qword_10021A880, &qword_1001B51A0);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v15 = type metadata accessor for ScrollView();
  v16 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v15;
  v44 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v15;
  v44 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v17;
  v44 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v17;
  v44 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v19;
  v44 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_1002188F8, &unk_1001ADC20);
  v21 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v19;
  v44 = v20;
  swift_getOpaqueTypeConformance2();
  sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v22 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v21;
  v44 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v21;
  v44 = v22;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_100027068();
  OpaqueTypeMetadata2 = v23;
  v44 = &type metadata for String;
  v45 = v24;
  WitnessTable = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v23;
  v44 = &type metadata for String;
  v45 = v24;
  WitnessTable = v25;
  v27 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v26;
  v44 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v26;
  v44 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v28;
  v44 = &type metadata for Bool;
  v45 = v29;
  WitnessTable = &protocol witness table for Bool;
  v30 = swift_getOpaqueTypeMetadata2();
  v31 = sub_10000B3DC(&qword_10021A888, &qword_1001B00D0);
  OpaqueTypeMetadata2 = v28;
  v44 = &type metadata for Bool;
  v45 = v29;
  WitnessTable = &protocol witness table for Bool;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_10000D1EC(&qword_10021A890, &qword_10021A888, &qword_1001B00D0, &protocol conformance descriptor for TupleToolbarContent<A>);
  OpaqueTypeMetadata2 = v30;
  v44 = v31;
  v45 = v32;
  WitnessTable = v33;
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v30;
  v44 = v31;
  v45 = v32;
  WitnessTable = v33;
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  type metadata accessor for AccessibilityAttachmentModifier();
  v34 = type metadata accessor for ModifiedContent();
  v36 = type metadata accessor for SportEventView(255, v1, v2, v35);
  swift_getWitnessTable();
  sub_100058FD8(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v37 = swift_getWitnessTable();
  v38 = *(v7 + 16);
  v39 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v34;
  v44 = v1;
  v45 = v36;
  WitnessTable = v37;
  v47 = v38;
  v48 = v39;
  swift_getOpaqueTypeMetadata2();
  v40 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v34;
  v44 = v1;
  v45 = v36;
  WitnessTable = v37;
  v47 = v38;
  v48 = v39;
  swift_getOpaqueTypeConformance2();
  v41 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v40;
  v44 = v41;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000598B4(uint64_t a1)
{
  *(a1 + 8) = sub_100059938(&qword_10021A978, &type metadata accessor for Sport.League, &protocol conformance descriptor for Sport.League);
  result = sub_100059938(&qword_10021A980, &type metadata accessor for Sport.League, &protocol conformance descriptor for Sport.League);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100059938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100059980(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100059A2C@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__queuedSongs);
}

double sub_100059AE0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_100059BAC@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v6 = v2;
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__currentSong;
  swift_beginAccess();
  return sub_10000D58C(v6 + v4, a2, &qword_10021A650, &qword_1001AFE68);
}

uint64_t sub_100059C84@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__currentSong;
  swift_beginAccess();
  return sub_10000D58C(v4 + v5, a3, &qword_10021A650, &qword_1001AFE68);
}

uint64_t sub_100059D5C(uint64_t a1, uint64_t *a2)
{
  sub_10000D58C(a1, v3, &qword_10021A650, &qword_1001AFE68);
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000D52C(v3, &qword_10021A650, &qword_1001AFE68);
}

uint64_t sub_100059E64(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__currentSong;
  swift_beginAccess();
  sub_10005D480(a2, a1 + v4, &qword_10021A650, &qword_1001AFE68);
  return swift_endAccess();
}

uint64_t sub_100059EE0@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v6 = v2;
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__playerTimeObserver;
  swift_beginAccess();
  return sub_10000D58C(v6 + v4, a2, &unk_10021F7F0, &qword_1001B03B0);
}

uint64_t sub_100059FB8@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__playerTimeObserver;
  swift_beginAccess();
  return sub_10000D58C(v4 + v5, a3, &unk_10021F7F0, &qword_1001B03B0);
}

uint64_t sub_10005A090(uint64_t a1, uint64_t *a2)
{
  sub_10000D58C(a1, v3, &unk_10021F7F0, &qword_1001B03B0);
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000D52C(v3, &unk_10021F7F0, &qword_1001B03B0);
}

uint64_t sub_10005A198(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__playerTimeObserver;
  swift_beginAccess();
  sub_10005D480(a2, a1 + v4, &unk_10021F7F0, &qword_1001B03B0);
  return swift_endAccess();
}

void *sub_10005A214(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player);
  v4 = v3;
  return v3;
}

id sub_10005A2C4@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player);
  *a3 = v5;

  return v5;
}

void sub_10005A384(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player;
  v6 = *(v2 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player);
  if (!v6)
  {
    if (!a1)
    {
      v10 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10005DB18(0, &qword_10021AAD0, AVPlayer_ptr);
  v7 = v6;
  v8 = a1;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v3 + v5);
LABEL_8:
  *(v3 + v5) = a1;
}

uint64_t sub_10005A51C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state);
}

void sub_10005A5C4(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state);
}

double sub_10005A674(unsigned __int8 a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_10005A784(uint64_t *a1@<X0>, double *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC8, type metadata accessor for PlaybackProgressUpdater, &unk_1001B0318);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + 16);
  v6 = 1.0;
  if (v5 <= 1.0)
  {
    v6 = *(v4 + 16);
  }

  if ((*&v5 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v5 & 0x7FF0000000000000) == 0 || v5 < 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v6;
  }

  *a3 = v9;
}

double sub_10005A860(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC8, type metadata accessor for PlaybackProgressUpdater, &unk_1001B0318);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 16);
}

void sub_10005A900(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v4 - 8);
  v6 = (v48 - v5);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v49 = v10;
    v50 = v6;
    sub_10005DA94(a1 + 32, v54);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v48[-2] = v2;
    v48[-1] = a1;
    v52[0] = v2;
    v13 = sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v48[0] = 0;

    if (v11 != 1)
    {
      if (qword_100218470 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10001FDF4(v14, qword_100230610);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Only playing first song in playlist.", v17, 2u);
      }
    }

    swift_getKeyPath();
    v52[0] = v2;
    v48[1] = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__currentSong;
    swift_beginAccess();
    sub_10000D58C(v2 + v18, v52, &qword_10021A650, &qword_1001AFE68);
    v19 = v53;
    if (v53)
    {
      v20 = sub_100028124(v52, v53);
      v21 = *(v19 - 8);
      __chkstk_darwin(v20);
      v23 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v23);
      sub_10000D52C(v52, &qword_10021A650, &qword_1001AFE68);
      v24 = dispatch thunk of MusicItem.id.getter();
      v26 = v25;
      (*(v21 + 8))(v23, v19);
    }

    else
    {
      sub_10000D52C(v52, &qword_10021A650, &qword_1001AFE68);
      v24 = 0;
      v26 = 0;
    }

    sub_100028124(v54, v55);
    v31 = dispatch thunk of MusicItem.id.getter();
    if (v26)
    {
      if (v24 == v31 && v26 == v32)
      {

LABEL_24:
        if (qword_100218470 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        sub_10001FDF4(v34, qword_100230610);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v35, v36))
        {
          goto LABEL_34;
        }

        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = "Already playing same song.";
        goto LABEL_33;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v33)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    v39 = v55;
    v40 = v56;
    sub_100028124(v54, v55);
    v41 = v50;
    (*(v40 + 104))(v39, v40);
    if ((*(v8 + 48))(v41, 1, v7) != 1)
    {
      v43 = v49;
      (*(v8 + 32))(v49, v41, v7);
      sub_10005B214();
      sub_10005DA94(v54, v52);
      v44 = swift_getKeyPath();
      __chkstk_darwin(v44);
      v48[-2] = v2;
      v48[-1] = v52;
      v51 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_10000D52C(v52, &qword_10021A650, &qword_1001AFE68);
      if (*(v2 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state) != 1)
      {
        v45 = swift_getKeyPath();
        __chkstk_darwin(v45);
        v48[-2] = v2;
        LOBYTE(v48[-1]) = 1;
        v52[0] = v2;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      sub_10005B508(v43);
      sub_10005B9F0(v46, v47);
      (*(v8 + 8))(v43, v7);
      goto LABEL_38;
    }

    sub_10000D52C(v41, qword_100218748, &unk_1001AD110);
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10001FDF4(v42, qword_100230610);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v35, v36))
    {
LABEL_34:

LABEL_38:
      sub_100021498(v54);
      return;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "Cannot play song. No preview asset URL.";
LABEL_33:
    _os_log_impl(&_mh_execute_header, v35, v36, v38, v37, 2u);

    goto LABEL_34;
  }

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10001FDF4(v27, qword_100230610);
  v50 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v50, v28, "Cannot play empty playlist.", v29, 2u);
  }

  v30 = v50;
}

void sub_10005B214()
{
  v1 = v0;
  sub_10005C3EC();
  swift_getKeyPath();
  *&v12 = v0;
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player;
  [*(v0 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player) pause];
  swift_getKeyPath();
  *&v12 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__playerTimeObserver;
  swift_beginAccess();
  sub_10000D58C(v12 + v3, &v10, &unk_10021F7F0, &qword_1001B03B0);
  if (v11)
  {
    sub_100022424(&v10, &v12);
    swift_getKeyPath();
    *&v10 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v1 + v2);
    if (v4)
    {
      sub_100028124(&v12, v13);
      v5 = v4;
      [v5 removeTimeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
    }

    sub_100021498(&v12);
  }

  else
  {
    sub_10000D52C(&v10, &unk_10021F7F0, &qword_1001B03B0);
  }

  swift_getKeyPath();
  *&v12 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v1 + v2);
  if (v6 && (v7 = v6, v8 = String._bridgeToObjectiveC()(), [v7 removeObserver:v1 forKeyPath:v8], v7, v8, *(v1 + v2)))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v12 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + v2) = 0;
  }
}

void sub_10005B508(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(AVURLAsset);
  v43 = a1;
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [v8 initWithURL:v10 options:0];

  v13 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v12];
  v14 = [objc_allocWithZone(AVPlayer) initWithPlayerItem:v13];
  sub_10005A384(v14, v15);
  swift_getKeyPath();
  v16 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer___observationRegistrar;
  aBlock = v2;
  v17 = sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v2 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player);
  if (v18)
  {
    v19 = v18;
    v42 = v17;
    v20 = v19;
    v21 = String._bridgeToObjectiveC()();
    [v20 addObserver:v2 forKeyPath:v21 options:1 context:0];

    v22 = [objc_opt_self() defaultCenter];
    v23 = String._bridgeToObjectiveC()();
    v41 = v13;
    v24 = v23;
    v25 = [v20 currentItem];
    v40 = v16;
    v26 = v25;
    [v22 addObserver:v2 selector:"playerDidFinishPlaying" name:v24 object:v25];

    v51 = CMTime.init(value:timescale:)(1, 5);
    LODWORD(v24) = v51.timescale;
    epoch = v51.epoch;
    value = v51.value;
    v38 = HIDWORD(*&v51.timescale);
    sub_10005DB18(0, &qword_1002231E0, OS_dispatch_queue_ptr);
    v27 = static OS_dispatch_queue.main.getter();
    v28 = *(v2 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer_lock);
    (*(v5 + 16))(&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v4);
    v29 = v4;
    v30 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    *(v31 + 24) = v20;
    (*(v5 + 32))(v31 + v30, v7, v29);
    v49 = sub_10005DC2C;
    v50 = v31;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_10005C380;
    v48 = &unk_10020B620;
    v32 = _Block_copy(&aBlock);
    v33 = v20;

    aBlock = value;
    v46 = __PAIR64__(v38, v24);
    v47 = epoch;
    v34 = [v33 addPeriodicTimeObserverForInterval:&aBlock queue:v27 usingBlock:v32];
    _Block_release(v32);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v36 - 2) = v2;
    *(&v36 - 1) = &aBlock;
    v44 = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10000D52C(&aBlock, &unk_10021F7F0, &qword_1001B03B0);
  }

  else
  {
  }
}

void sub_10005B9F0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v18 = v2;
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player;
  v4 = *&v2[OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player];
  if (v4 && (v5 = [v4 error]) != 0)
  {

    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10001FDF4(v6, qword_100230610);
    v7 = v2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v10 = 136315138;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *&v2[v3];
      if (v11 && (v11 = [v11 error]) != 0)
      {
        v12 = v11;
        swift_getErrorValue();
        v13 = Error.localizedDescription.getter();
        v15 = v14;

        v11 = v13;
      }

      else
      {
        v15 = 0xE000000000000000;
      }

      v16 = sub_10005D4E8(v11, v15, &v18);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Playback initiated but player has error: %s", v10, 0xCu);
      sub_100021498(v17);
    }
  }

  else
  {
    swift_getKeyPath();
    v18 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [*&v2[v3] play];
  }
}

void sub_10005BDFC(uint64_t a1, uint64_t a2, uint64_t a3, os_unfair_lock_s *a4)
{
  if (os_unfair_lock_trylock(a4 + 6))
  {
    sub_10005DCD0(&a4[4]);
    os_unfair_lock_unlock(a4 + 6);
  }
}

void sub_10005BE64(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a1;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 currentItem];
  if (!v12)
  {
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10001FDF4(v20, qword_100230610);
    (*(v9 + 16))(v11, a3, v8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v23 = 136315138;
      sub_10005D438(&qword_10021A1A8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v9 + 8))(v11, v8);
      v27 = sub_10005D4E8(v24, v26, &v34);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Invalid or missing duration for current item %s", v23, 0xCu);
      sub_100021498(v32);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v28 = *v33;
    v19 = (*(*v33 + 24) + 16);
    os_unfair_lock_lock(v19);
    if (*(v28 + 16) == 0.0)
    {
      *(v28 + 16) = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v31 - 2) = v28;
      *(&v31 - 1) = 0;
      v34 = v28;
      sub_10005D438(&qword_10021AAC8, type metadata accessor for PlaybackProgressUpdater, &unk_1001B0318);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    goto LABEL_16;
  }

  v13 = v12;
  [v12 duration];

  CMTime.seconds.getter();
  if (v14 > 0.0 && (*&v14 >> 52 < 0x7FFuLL || (*&v14 & 0xFFFFFFFFFFFFFLL) == 0))
  {
    v15 = v14;
    CMTime.seconds.getter();
    v17 = v16 / v15;
    v18 = *v33;
    v19 = (*(*v33 + 24) + 16);
    os_unfair_lock_lock(v19);
    if (*(v18 + 16) == v17)
    {
      *(v18 + 16) = v17;
    }

    else
    {
      v30 = swift_getKeyPath();
      __chkstk_darwin(v30);
      *(&v31 - 2) = v18;
      *(&v31 - 1) = v17;
      v34 = v18;
      sub_10005D438(&qword_10021AAC8, type metadata accessor for PlaybackProgressUpdater, &unk_1001B0318);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

LABEL_16:
    os_unfair_lock_unlock(v19);
  }
}

double sub_10005C380(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);

  return result;
}

uint64_t sub_10005C3EC()
{
  v1 = v0;
  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10001FDF4(v2, qword_100230610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Preview Playback ended.", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer_lock);
  if (os_unfair_lock_trylock((v6 + 24)))
  {
    v7 = *(v6 + 16);
    v8 = *(v7 + 24);
    os_unfair_lock_lock(v8 + 4);
    if (*(v7 + 16) == 0.0)
    {
      *(v7 + 16) = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v17 = v7;
      sub_10005D438(&qword_10021AAC8, type metadata accessor for PlaybackProgressUpdater, &unk_1001B0318);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    os_unfair_lock_unlock(v8 + 4);
    os_unfair_lock_unlock((v6 + 24));
  }

  if (*(v1 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state))
  {
    v10 = swift_getKeyPath();
    __chkstk_darwin(v10);
    *&v17 = v1;
    sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  *&v17 = v1;
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v1 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player);
  if (v11)
  {
    timescale = kCMTimeZero.timescale;
    flags = kCMTimeZero.flags;
    epoch = kCMTimeZero.epoch;
    *&v17 = kCMTimeZero.value;
    *(&v17 + 1) = __PAIR64__(flags, timescale);
    *&v18 = epoch;
    v23 = epoch;
    value = kCMTimeZero.value;
    v25 = timescale;
    v26 = flags;
    v27 = epoch;
    v20 = kCMTimeZero.value;
    v21 = timescale;
    v22 = flags;
    [v11 seekToTime:&v17 toleranceBefore:&value toleranceAfter:&v20];
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = swift_getKeyPath();
  __chkstk_darwin(v15);
  value = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000D52C(&v17, &qword_10021A650, &qword_1001AFE68);
}

id sub_10005C874()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__queuedSongs] = _swiftEmptyArrayStorage;
  v2 = &v0[OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__currentSong];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v3 = &v0[OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__playerTimeObserver];
  *v3 = 0u;
  v3[1] = 0u;
  *&v0[OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player] = 0;
  v4 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer_lock;
  type metadata accessor for PlaybackProgressUpdater(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  sub_100009F70(&qword_10021AAE0, &qword_1001B0470);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 24) = v6;
  ObservationRegistrar.init()();
  sub_100009F70(&qword_10021AAE8, &qword_1001B0478);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v5;
  *&v0[v4] = v7;
  v0[OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state] = 0;
  ObservationRegistrar.init()();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

id sub_10005C9D0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005CB0C(uint64_t a1)
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

uint64_t sub_10005CBE0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10005CC8C@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__currentSong;
  swift_beginAccess();
  return sub_10000D58C(v4 + v5, a2, &qword_10021A650, &qword_1001AFE68);
}

double sub_10005CD64()
{
  v1 = *(*v0 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer_lock);
  os_unfair_lock_lock((v1 + 24));
  sub_10005A784((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_10005CDC4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v3 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state);
}

id sub_10005CEB4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return [*(v3 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player) pause];
}

double sub_10005CF8C@<D0>(uint64_t *a1@<X0>, double *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10005D438(&qword_10021AAC8, type metadata accessor for PlaybackProgressUpdater, &unk_1001B0318);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v4 + 16);
  *a3 = result;
  return result;
}

void sub_10005D034(double a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 16) == a1)
  {
    *(v3 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005D438(&qword_10021AAC8, type metadata accessor for PlaybackProgressUpdater, &unk_1001B0318);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10005D14C()
{

  v1 = OBJC_IVAR____TtC15ShazamEventsAppP33_8D663A7C818D454EECC930098910A96A23PlaybackProgressUpdater___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10005D218(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005D250(uint64_t a1)
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

void sub_10005D300(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10005A384(v1, v3);
}

void sub_10005D338()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player);
  *(v1 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__player) = v2;
  v4 = v2;
}

double sub_10005D428()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_10005D438(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005D480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100009F70(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_10005D4E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10005D5B4(v11, 0, 0, 1, a1, a2);
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
    sub_1000363B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100021498(v11);
  return v7;
}

unint64_t sub_10005D5B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10005D6C0(a5, a6);
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

void *sub_10005D6C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10005D70C(a1, a2);
  sub_10005D83C(&off_100209258);
  return v3;
}

void *sub_10005D70C(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10005D928(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10005D928(v10, 0);
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

uint64_t sub_10005D83C(uint64_t result)
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

  result = sub_10005D99C(result, v11, 1, v3);
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

void *sub_10005D928(uint64_t a1, uint64_t a2)
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

  sub_100009F70(&qword_10021AAD8, &unk_1001B0438);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10005D99C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009F70(&qword_10021AAD8, &unk_1001B0438);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10005DA94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10005DB18(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10005DB60()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_10005DC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for URL();
  v7 = *(v3 + 16);

  sub_10005BDFC(a1, a2, a3, v7);
}

uint64_t sub_10005DCB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005DCF4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__queuedSongs) = *(v0 + 24);
}

void sub_10005DD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && (a1 == 1702125938 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (a4)
    {
      if (*(a4 + 16))
      {
        v6 = sub_1000D8BC0();
        if (v7)
        {
          sub_1000363B0(*(a4 + 56) + 32 * v6, v25);
          if (swift_dynamicCast())
          {
            if (v24 != 0.0)
            {
              if (*(v4 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state) == 2)
              {
                return;
              }

              goto LABEL_39;
            }

            v8 = *(v4 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer_lock);
            os_unfair_lock_lock((v8 + 24));
            v9 = *(v8 + 16);
            swift_getKeyPath();
            v25[0] = v9;
            sub_10005D438(&qword_10021AAC8, type metadata accessor for PlaybackProgressUpdater, &unk_1001B0318);
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v10 = *(v9 + 16);
            v11 = 1.0;
            if (v10 <= 1.0)
            {
              v12 = *(v9 + 16);
            }

            else
            {
              v12 = 1.0;
            }

            os_unfair_lock_unlock((v8 + 24));
            v14 = (*&v10 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v10 & 0x7FF0000000000000) == 0 || v10 < 0.0;
            v15 = v12;
            if (v14)
            {
              v15 = 0.0;
            }

            v16 = ~*&v15 & 0x7FF0000000000000;
            v17 = *&v15 & 0xFFFFFFFFFFFFFLL;
            if (v16)
            {
              v18 = 1;
            }

            else
            {
              v18 = v17 == 0;
            }

            if (v18)
            {
              os_unfair_lock_lock((v8 + 24));
              v19 = *(v8 + 16);
              swift_getKeyPath();
              v25[0] = v19;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v20 = *(v19 + 16);
              v21 = (*&v20 & 0xFFFFFFFFFFFFFLL) == 0 || (~*&v20 & 0x7FF0000000000000) != 0;
              if (v20 <= 1.0)
              {
                v11 = *(v19 + 16);
              }

              os_unfair_lock_unlock((v8 + 24));
              v22 = v20 < 0.0 || !v21;
              if (!v22 && v11 > 0.0 && *(v4 + OBJC_IVAR____TtC15ShazamEventsApp18MusicPreviewPlayer__state) != 3)
              {
LABEL_39:
                KeyPath = swift_getKeyPath();
                __chkstk_darwin(KeyPath);
                v25[0] = v4;
                sub_10005D438(&qword_10021AAC0, type metadata accessor for MusicPreviewPlayer, &unk_1001B0334);
                ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10005E1D8(uint64_t a1)
{
  result = sub_10005E200();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10005E200()
{
  result = qword_10021AAF0;
  if (!qword_10021AAF0)
  {
    type metadata accessor for TicketAttribution();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AAF0);
  }

  return result;
}

Swift::Int sub_10005E260()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10005E2CC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10005E31C()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_10005E3B8, v3, v2);
}

uint64_t sub_10005E3B8()
{
  v1 = static MainActor.shared.getter();
  v0[10] = v1;
  v2 = swift_allocObject();
  v0[11] = v2;
  swift_unknownObjectWeakInit();
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_100009F70(&qword_10021ABD0, &qword_1001B0508);
  *v3 = v0;
  v3[1] = sub_10005E4E4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v1, &protocol witness table for MainActor, 0xD000000000000011, 0x80000001001BECE0, sub_10005F444, v2, v4);
}

uint64_t sub_10005E4E4()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_10005E674;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_10005E608;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10005E608()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_10005E674()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10005E6EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100009F70(&qword_10021ABC8, &qword_1001B04F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_100009F70(&qword_10021AB50, &qword_1001B04E0);
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v10 = OBJC_IVAR____TtC15ShazamEventsApp15LocationManager_checkedThrowingContinuation;
    swift_beginAccess();
    sub_10005F334(v5, &v7[v10]);
    swift_endAccess();
    v11 = OBJC_IVAR____TtC15ShazamEventsApp15LocationManager_manager;
    [*&v7[OBJC_IVAR____TtC15ShazamEventsApp15LocationManager_manager] setDelegate:v7];
    [*&v7[v11] setDesiredAccuracy:kCLLocationAccuracyKilometer];
    [*&v7[v11] startUpdatingLocation];
  }
}

uint64_t sub_10005E8AC()
{
  v1 = v0;
  v2 = sub_100009F70(&qword_10021ABC8, &qword_1001B04F8);
  __chkstk_darwin(v2 - 8);
  v4 = v11 - v3;
  v5 = sub_100009F70(&qword_10021AB50, &qword_1001B04E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  [*(v1 + OBJC_IVAR____TtC15ShazamEventsApp15LocationManager_manager) stopUpdatingLocation];
  v9 = OBJC_IVAR____TtC15ShazamEventsApp15LocationManager_checkedThrowingContinuation;
  swift_beginAccess();
  if (!(*(v6 + 48))(v1 + v9, 1, v5))
  {
    (*(v6 + 16))(v8, v1 + v9, v5);
    sub_10005F44C();
    v11[0] = swift_allocError();
    CheckedContinuation.resume(throwing:)();
    (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 56))(v4, 1, 1, v5);
  swift_beginAccess();
  sub_10005F334(v4, v1 + v9);
  return swift_endAccess();
}

uint64_t type metadata accessor for LocationManager(uint64_t a1)
{
  result = qword_10021AB38;
  if (!qword_10021AB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005EC18(uint64_t a1)
{
  sub_10005ECB8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10005ECB8(uint64_t a1)
{
  if (!qword_10021AB48)
  {
    sub_10000B3DC(&qword_10021AB50, &qword_1001B04E0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10021AB48);
    }
  }
}

uint64_t sub_10005ED1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  sub_100009F70(&qword_10021ABC8, &qword_1001B04F8);
  v5[13] = swift_task_alloc();
  v6 = sub_100009F70(&qword_10021AB50, &qword_1001B04E0);
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005EE54, v8, v7);
}

unint64_t sub_10005EE54()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);

  v4 = OBJC_IVAR____TtC15ShazamEventsApp15LocationManager_checkedThrowingContinuation;
  swift_beginAccess();
  if (!(*(v1 + 48))(v3 + v4, 1, v2))
  {
    v5 = *(v0 + 96);
    (*(*(v0 + 120) + 16))(*(v0 + 128), v3 + v4, *(v0 + 112));
    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
LABEL_4:
        result = v6 - 1;
        if (__OFSUB__(v6, 1))
        {
          __break(1u);
        }

        else if ((v5 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v8 = *(*(v0 + 96) + 8 * result + 32);
LABEL_9:
            v9 = v8;
            [v8 coordinate];
            v19 = v10;
            v20 = v11;

            *&v12 = v19;
            *(&v12 + 1) = v20;
LABEL_12:
            v13 = v6 == 0;
            v15 = *(v0 + 120);
            v14 = *(v0 + 128);
            v16 = *(v0 + 112);
            *(v0 + 64) = v12;
            *(v0 + 80) = v13;
            CheckedContinuation.resume(returning:)();
            (*(v15 + 8))(v14, v16);
            goto LABEL_13;
          }

          __break(1u);
          return result;
        }

        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_9;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v12 = 0uLL;
    goto LABEL_12;
  }

LABEL_13:
  v17 = *(v0 + 104);
  (*(*(v0 + 120) + 56))(v17, 1, 1, *(v0 + 112));
  swift_beginAccess();
  sub_10005F334(v17, v3 + v4);
  swift_endAccess();

  v18 = *(v0 + 8);

  return v18();
}

unint64_t sub_10005F1E0()
{
  result = qword_10021ABC0;
  if (!qword_10021ABC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10021ABC0);
  }

  return result;
}

uint64_t sub_10005F22C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10005F274(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000D890;

  return sub_10005ED1C(a1, v4, v5, v7, v6);
}

uint64_t sub_10005F334(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021ABC8, &qword_1001B04F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005F3A4(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021ABC8, &qword_1001B04F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005F40C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

unint64_t sub_10005F44C()
{
  result = qword_10021ABD8;
  if (!qword_10021ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021ABD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationManager.RequestError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LocationManager.RequestError(_WORD *result, int a2, int a3)
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

unint64_t sub_10005F58C()
{
  result = qword_10021ABE0;
  if (!qword_10021ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021ABE0);
  }

  return result;
}

uint64_t sub_10005F5F4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_100009F70(&qword_10021ABF0, &qword_1001B0640);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_100009F70(&qword_10021ABF8, &qword_1001B0648);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = type metadata accessor for DesignTimeTime(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = sub_100009F70(qword_100218748, &unk_1001AD110);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_10005F7E0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100009F70(&qword_10021ABF0, &qword_1001B0640);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100009F70(&qword_10021ABF8, &qword_1001B0648);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = type metadata accessor for DesignTimeTime(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = sub_100009F70(qword_100218748, &unk_1001AD110);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for DesignTimeMusicEvent(uint64_t a1)
{
  result = qword_10021AC58;
  if (!qword_10021AC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005FA04(uint64_t a1)
{
  sub_10005FC20(319, &qword_10021AC68, type metadata accessor for DesignTimeEventAttribution, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10005FC20(319, &qword_10021AC70, type metadata accessor for DesignTimeTicketAttribution, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10005FC20(319, &qword_10021AC78, type metadata accessor for DesignTimeTicket, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        type metadata accessor for DesignTimeTime(319);
        if (v4 <= 0x3F)
        {
          sub_10005FC20(319, &qword_100218E80, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_10005FC84(319, &qword_10021AC80, &type metadata for DesignTimeGenre);
            if (v6 <= 0x3F)
            {
              sub_10005FC84(319, &unk_10021AC88, &type metadata for DesignTimePlaylist);
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

void sub_10005FC20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10005FC84(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10005FCD0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = __chkstk_darwin(v2 - 8);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v65 = &v60 - v5;
  v6 = type metadata accessor for UUID();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009F70(&qword_10021ABF8, &qword_1001B0648);
  __chkstk_darwin(v8 - 8);
  v72 = &v60 - v9;
  v10 = sub_100009F70(qword_100218748, &unk_1001AD110);
  v11 = __chkstk_darwin(v10 - 8);
  v69 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v60 - v14;
  __chkstk_darwin(v13);
  v17 = &v60 - v16;
  v18 = sub_100009F70(&qword_10021ABF0, &qword_1001B0640);
  __chkstk_darwin(v18 - 8);
  v20 = (&v60 - v19);
  v21 = ResourceID.init(stringLiteral:)();
  v67 = v22;
  v68 = v21;
  URL.init(string:)();
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  result = v25(v17, 1, v23);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  *v20 = 0x746E6973646E6142;
  v20[1] = 0xEB000000006E776FLL;
  v27 = type metadata accessor for DesignTimeEventAttribution(0);
  v28 = v20 + *(v27 + 20);
  v71 = *(v24 + 32);
  v71(v28, v17, v23);
  v29 = *(*(v27 - 8) + 56);
  v61 = v20;
  v29(v20, 0, 1, v27);
  URL.init(string:)();
  result = v25(v15, 1, v23);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v30 = v72;
  *v72 = 0x746E6973646E6142;
  *(v30 + 1) = 0xEB000000006E776FLL;
  v31 = type metadata accessor for DesignTimeTicketAttribution(0);
  v71(&v30[*(v31 + 20)], v15, v23);
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  sub_100009F70(&qword_10021AE98, &qword_1001B0750);
  v32 = type metadata accessor for DesignTimeTicket(0);
  v33 = (*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80);
  v34 = swift_allocObject();
  v70 = xmmword_1001AEB90;
  *(v34 + 16) = xmmword_1001AEB90;
  v35 = v69;
  URL.init(string:)();
  result = v25(v35, 1, v23);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v36 = v34 + v33;
  v37 = v62;
  UUID.init()();
  UUID.uuidString.getter();
  v60 = v34;
  (*(v63 + 8))(v37, v64);
  *v36 = ResourceID.init(_:)();
  *(v36 + 8) = v38;
  strcpy((v36 + 16), "Ticketmaster");
  *(v36 + 29) = 0;
  *(v36 + 30) = -5120;
  v71((v36 + *(v32 + 24)), v35, v23);
  static Date.now.getter();
  static Date.distantFuture.getter();
  v39 = type metadata accessor for DesignTimeMusicEvent(0);
  DateInterval.init(start:end:)();
  type metadata accessor for DesignTimeTime(0);
  static TimeZone.current.getter();
  v71 = ResourceID.init(stringLiteral:)();
  v69 = v40;
  v64 = [objc_allocWithZone(CLLocation) initWithLatitude:40.7601873 longitude:-73.9799772];
  URL.init(string:)();
  v41 = sub_1000DA378();
  v65 = v42;
  v66 = v41;
  sub_100009F70(&qword_10021AEA0, &qword_1001B0758);
  v43 = swift_allocObject();
  *(v43 + 16) = v70;
  *(v43 + 32) = ResourceID.init(stringLiteral:)();
  *(v43 + 40) = v44;
  *(v43 + 48) = 7368528;
  *(v43 + 56) = 0xE300000000000000;
  v45 = sub_100129D2C();
  v62 = v46;
  v63 = v45;
  v48 = v47;
  v50 = v49;
  sub_100009F70(&qword_10021AEA8, &unk_1001B0760);
  v51 = swift_allocObject();
  *(v51 + 16) = v70;
  if (qword_1002183E8 != -1)
  {
    swift_once();
  }

  v52 = *algn_1002305D8;
  *(v51 + 32) = qword_1002305D0;
  *(v51 + 40) = v52;
  v53 = v67;
  *a1 = v68;
  *(a1 + 8) = v53;
  *(a1 + 16) = 7368560;
  *(a1 + 24) = 0xE300000000000000;
  *(a1 + 32) = xmmword_1001B05D0;
  *(a1 + 48) = 0xD000000000000011;
  *(a1 + 56) = 0x80000001001BEDF0;
  sub_10000F618(v61, a1 + v39[7], &qword_10021ABF0, &qword_1001B0640);
  sub_10000F618(v72, a1 + v39[8], &qword_10021ABF8, &qword_1001B0648);
  *(a1 + v39[9]) = v60;
  v54 = a1 + v39[11];
  v55 = v69;
  *v54 = v71;
  *(v54 + 8) = v55;
  *(v54 + 16) = 0xD000000000000015;
  *(v54 + 24) = 0x80000001001BEE30;
  *(v54 + 32) = v64;
  *(v54 + 40) = 0xD000000000000018;
  *(v54 + 48) = 0x80000001001BEE50;
  *(v54 + 56) = xmmword_1001B05E0;
  *(v54 + 72) = xmmword_1001B05F0;
  *(v54 + 88) = xmmword_1001B0600;
  *(v54 + 104) = xmmword_1001B0610;
  *(v54 + 120) = xmmword_1001B0620;
  v56 = (a1 + v39[13]);
  v57 = v65;
  *v56 = v66;
  v56[1] = v57;
  *(a1 + v39[14]) = v43;
  v58 = (a1 + v39[15]);
  v59 = v62;
  *v58 = v63;
  v58[1] = v59;
  v58[2] = v48;
  v58[3] = v50;
  *(a1 + v39[16]) = v51;
}

uint64_t sub_1000605AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 52));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1000605FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 60));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_10006066C@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t sub_100060734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 44);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a2 + 96) = v22;
  *(a2 + 112) = v14;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v11;
  *(a2 + 80) = v4;
  v24 = *(v3 + 128);
  *(a2 + 128) = *(v3 + 128);
  *a2 = v13;
  *(a2 + 16) = v6;
  return sub_100060F40(v17, v16);
}

uint64_t sub_1000607C4(uint64_t a1)
{
  type metadata accessor for Date();
  swift_task_alloc();
  swift_task_alloc();
  type metadata accessor for DesignTimeTime(0);
  v3 = swift_task_alloc();
  sub_100009F70(&qword_10021AE90, &qword_1001B0748);
  v4 = (*(*(a1 - 8) + 80) + 32) & ~*(*(a1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001AEB90;
  v6 = v5 + v4;
  sub_10005FCD0(v6);
  static Date.distantFuture.getter();
  static Date.distantFuture.getter();
  DateInterval.init(start:end:)();
  static TimeZone.current.getter();
  sub_100060EDC(v3, v6 + *(a1 + 40));

  v7 = *(v1 + 8);

  return v7(v5);
}

Swift::Int sub_100060984()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000609D0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100060A10(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_100060A8C()
{
  result = qword_10021ACF0;
  if (!qword_10021ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021ACF0);
  }

  return result;
}

unint64_t sub_100060C04()
{
  result = qword_10021AD18;
  if (!qword_10021AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AD18);
  }

  return result;
}

uint64_t sub_100060C58(uint64_t a1)
{
  *(a1 + 8) = sub_100060E94(&qword_10021ADE0, type metadata accessor for DesignTimeMusicEvent, &unk_1001B0690);
  result = sub_100060E94(&qword_10021ADE8, type metadata accessor for DesignTimeMusicEvent, &unk_1001B06D0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100060CE0()
{
  result = qword_10021ADF0;
  if (!qword_10021ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021ADF0);
  }

  return result;
}

unint64_t sub_100060D38()
{
  result = qword_10021ADF8;
  if (!qword_10021ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021ADF8);
  }

  return result;
}

unint64_t sub_100060D90()
{
  result = qword_10021AE00;
  if (!qword_10021AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AE00);
  }

  return result;
}

unint64_t sub_100060DE8()
{
  result = qword_10021AE08;
  if (!qword_10021AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AE08);
  }

  return result;
}

uint64_t sub_100060E3C(uint64_t a1)
{
  result = sub_100060E94(&qword_10021AE88, type metadata accessor for DesignTimeMusicEvent, &unk_1001B0710);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100060E94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100060EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeTime(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100060F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeTime(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000610D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100061120(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v4 = Collection.isEmpty.getter();

  if (v4 & 1) != 0 && ((v5 = objc_opt_self(), v6 = [v5 currentDevice], v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, v7) || ((*(a2 + 64))(a1, a2), v8 = Collection.isEmpty.getter(), , (v8)) && ((v9 = objc_msgSend(v5, "currentDevice"), v10 = objc_msgSend(v9, "userInterfaceIdiom"), v9, v10) || ((*(a2 + 72))(a1, a2), swift_getAssociatedTypeWitness(), type metadata accessor for Array(), swift_getWitnessTable(), v11 = Collection.isEmpty.getter(), , (v11)))
  {
    (*(a2 + 80))(a1, a2);
    swift_getAssociatedTypeWitness();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v12 = Collection.isEmpty.getter();

    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

void sub_1000613FC(_OWORD *a1)
{
  v1 = a1[2];
  v12 = a1[1];
  v13 = v1;
  v14 = a1[3];
  type metadata accessor for MusicEventViewModel(255, &v12);
  v2 = type metadata accessor for State();
  if (v3 <= 0x3F)
  {
    v15 = 0;
    *&v12 = v2;
    sub_10000B304(319);
    if (v5 <= 0x3F)
    {
      v16 = 0;
      *(&v12 + 1) = v4;
      sub_1000617D8(319, &qword_10021A308, &type metadata accessor for DismissAction);
      if (v7 <= 0x3F)
      {
        v17 = 0;
        *&v13 = v6;
        sub_1000617D8(319, &qword_1002198B8, &type metadata accessor for ColorScheme);
        if (v9 <= 0x3F)
        {
          v18 = 0;
          *(&v13 + 1) = v8;
          sub_100050558();
          if (v11 <= 0x3F)
          {
            v19 = 0;
            *&v14 = v10;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100061534(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100218950, &unk_1001B5000);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 72);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_100219838, &qword_1001B2330);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100061684(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100218950, &unk_1001B5000);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 72);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(&qword_100219838, &qword_1001B2330);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000617D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_100061878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100061970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100061A68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = *a1;
  v17 = a1;
  State.init(wrappedValue:)();
  v8 = *(&v16[0] + 1);
  *a4 = *&v16[0];
  a4[1] = v8;
  type metadata accessor for RemoteViewConfiguration();
  sub_100071234(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  a4[2] = EnvironmentObject.init()();
  a4[3] = v9;
  v10 = v7[6];
  v16[0] = v7[5];
  v16[1] = v10;
  v16[2] = v7[7];
  v11 = type metadata accessor for MusicEventView(0, v16);
  v12 = v11[18];
  *(a4 + v12) = swift_getKeyPath();
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  swift_storeEnumTagMultiPayload();
  v13 = v11[19];
  *(a4 + v13) = swift_getKeyPath();
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  result = swift_storeEnumTagMultiPayload();
  v15 = a4 + v11[20];
  *v15 = a2;
  v15[8] = a3 & 1;
  return result;
}

uint64_t sub_100061BE0(_OWORD *a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = a1[2];
  v5[0] = a1[1];
  v5[1] = v3;
  v5[2] = a1[3];
  type metadata accessor for MusicEventViewModel(255, v5);
  type metadata accessor for State();
  State.wrappedValue.getter();
  return *&v5[0];
}

uint64_t sub_100061C44(_OWORD *a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = a1[2];
  v5[0] = a1[1];
  v5[1] = v3;
  v5[2] = a1[3];
  type metadata accessor for MusicEventViewModel(255, v5);
  type metadata accessor for State();
  State.projectedValue.getter();
  return *&v5[0];
}

uint64_t sub_100061CAC(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 80);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100027EB0(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_100071234(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100061F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v192 = a2;
  v3 = type metadata accessor for TaskPriority();
  v190 = *(v3 - 8);
  v191 = v3;
  v4 = __chkstk_darwin(v3);
  v189 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = *(a1 - 8);
  v206 = *(v207 + 64);
  __chkstk_darwin(v4);
  v199 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = "b8b-412b-baf7-3d48e2f98382";
  v7 = *(a1 + 16);
  v203 = a1;
  type metadata accessor for Optional();
  v200 = type metadata accessor for Binding();
  v205 = *(v200 - 8);
  __chkstk_darwin(v200);
  v187 = &v160 - v8;
  v197 = type metadata accessor for NavigationPath();
  v9 = *(a1 + 40);
  swift_getAssociatedTypeWitness();
  v10 = v9;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedConformanceWitness();
  type metadata accessor for HeroImageView(255, v13, v14, v15);
  v16 = type metadata accessor for _ConditionalContent();
  v201 = *(v10 + 8);
  v17 = v201;
  WitnessTable = swift_getWitnessTable();
  v19 = sub_10006FEE0();
  v237 = WitnessTable;
  v238 = v19;
  v20 = swift_getWitnessTable();
  *&v239 = v7;
  *(&v239 + 1) = v16;
  *&v240 = v17;
  *(&v240 + 1) = v20;
  type metadata accessor for HeaderModule(255, &v239);
  v21 = type metadata accessor for ModifiedContent();
  v235 = swift_getWitnessTable();
  v236 = &protocol witness table for _PaddingLayout;
  *&v209 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v22 = swift_getWitnessTable();
  *&v239 = v21;
  *(&v239 + 1) = v22;
  *&v239 = swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021AFA0, &qword_1001B0848);
  sub_10000B3DC(&qword_10021AFA8, &unk_1001B6A30);
  *&v208 = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v231 = AssociatedTypeWitness;
  v232 = v23;
  v233 = AssociatedConformanceWitness;
  v234 = v24;
  type metadata accessor for PromotionalAssetsEntryView(255, &v231);
  swift_getWitnessTable();
  v25 = type metadata accessor for Button();
  v26 = type metadata accessor for PlainButtonStyle();
  v27 = swift_getWitnessTable();
  v28 = sub_100071234(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v231 = v25;
  v232 = v26;
  v233 = v27;
  v234 = v28;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v195 = &protocol conformance descriptor for TupleView<A>;
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000B3DC(&qword_100219D50, &unk_1001AFCC0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  sub_10000B3DC(&qword_10021A900, &qword_1001B01F8);
  type metadata accessor for _ConditionalContent();
  *(&v239 + 1) = type metadata accessor for Optional();
  v29 = v201;
  type metadata accessor for DetailsModule(255, v7, v201, v30);
  *&v240 = type metadata accessor for ModifiedContent();
  v31 = swift_getAssociatedTypeWitness();
  v202 = v7;
  v32 = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, v31, v32, v33);
  *(&v240 + 1) = type metadata accessor for ModifiedContent();
  v34 = *(v203 + 3);
  v204 = *(v203 + 6);
  v186 = v34;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v35 = swift_getAssociatedTypeWitness();
  v36 = swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicModule(255, v35, v36, v37);
  v38 = type metadata accessor for ModifiedContent();
  v229 = swift_getWitnessTable();
  v230 = &protocol witness table for _PaddingLayout;
  v39 = swift_getWitnessTable();
  v231 = v38;
  v232 = v39;
  swift_getOpaqueTypeMetadata2();
  v196 = type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v241 = type metadata accessor for Optional();
  v40 = swift_getAssociatedTypeWitness();
  v41 = swift_getAssociatedTypeWitness();
  v42 = swift_getAssociatedConformanceWitness();
  v43 = swift_getAssociatedConformanceWitness();
  v231 = v40;
  v232 = v41;
  v233 = v42;
  v234 = v43;
  type metadata accessor for PlaylistModule(255, &v231);
  type metadata accessor for ModifiedContent();
  v242 = type metadata accessor for Optional();
  type metadata accessor for UpcomingModule(255, v7, v29, v44);
  v243 = type metadata accessor for Optional();
  v244 = sub_10000B3DC(&qword_10021A880, &qword_1001B51A0);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v45 = type metadata accessor for ScrollView();
  v46 = swift_getWitnessTable();
  *&v239 = v45;
  *(&v239 + 1) = v46;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v239 = v45;
  *(&v239 + 1) = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v239 = OpaqueTypeMetadata2;
  *(&v239 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_1002188F8, &unk_1001ADC20);
  v49 = type metadata accessor for ModifiedContent();
  *&v239 = OpaqueTypeMetadata2;
  *(&v239 + 1) = OpaqueTypeConformance2;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v227 = v50;
  v228 = v51;
  v52 = swift_getWitnessTable();
  *&v239 = v49;
  *(&v239 + 1) = v52;
  v53 = swift_getOpaqueTypeMetadata2();
  *&v239 = v49;
  *(&v239 + 1) = v52;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_100027068();
  *&v239 = v53;
  *(&v239 + 1) = &type metadata for String;
  *&v240 = v54;
  *(&v240 + 1) = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  *&v239 = v53;
  *(&v239 + 1) = &type metadata for String;
  *&v240 = v54;
  *(&v240 + 1) = v55;
  v57 = swift_getOpaqueTypeConformance2();
  *&v239 = v56;
  *(&v239 + 1) = v57;
  v58 = swift_getOpaqueTypeMetadata2();
  *&v239 = v56;
  *(&v239 + 1) = v57;
  v59 = swift_getOpaqueTypeConformance2();
  *&v239 = v58;
  *(&v239 + 1) = &type metadata for Bool;
  *&v240 = v59;
  *(&v240 + 1) = &protocol witness table for Bool;
  v60 = swift_getOpaqueTypeMetadata2();
  v61 = sub_10000B3DC(&qword_10021A888, &qword_1001B00D0);
  *&v239 = v58;
  *(&v239 + 1) = &type metadata for Bool;
  *&v240 = v59;
  *(&v240 + 1) = &protocol witness table for Bool;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = sub_10000D1EC(&qword_10021A890, &qword_10021A888, &qword_1001B00D0, &protocol conformance descriptor for TupleToolbarContent<A>);
  *&v239 = v60;
  *(&v239 + 1) = v61;
  *&v240 = v62;
  *(&v240 + 1) = v63;
  v170 = swift_getOpaqueTypeMetadata2();
  *&v239 = v60;
  *(&v239 + 1) = v61;
  *&v240 = v62;
  *(&v240 + 1) = v63;
  v169 = swift_getOpaqueTypeConformance2();
  v64 = type metadata accessor for NavigationStack();
  v172 = *(v64 - 8);
  __chkstk_darwin(v64);
  v166 = &v160 - v65;
  v161 = v64;
  v66 = type metadata accessor for ModifiedContent();
  v180 = *(v66 - 8);
  __chkstk_darwin(v66);
  v193 = &v160 - v67;
  v68 = type metadata accessor for AppleMusicFetcher();
  v69 = sub_100071234(&qword_10021AFB0, type metadata accessor for AppleMusicFetcher, &unk_1001BC3B0);
  v70 = v202;
  *&v239 = v202;
  *(&v239 + 1) = v68;
  *&v240 = v208;
  *(&v240 + 1) = v69;
  v71 = type metadata accessor for PromotionalAssetsView(255, &v239);
  v72 = swift_getWitnessTable();
  v160 = v72;
  v73 = sub_100071234(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v225 = v72;
  v226 = v73;
  v74 = swift_getWitnessTable();
  v75 = *(v201 + 16);
  v76 = swift_getWitnessTable();
  *&v239 = v66;
  *(&v239 + 1) = v70;
  v164 = v74;
  v165 = v66;
  v162 = v71;
  v163 = v76;
  *&v240 = v71;
  *(&v240 + 1) = v74;
  v77 = v74;
  v241 = v75;
  v242 = v76;
  v78 = swift_getOpaqueTypeMetadata2();
  v181 = *(v78 - 8);
  __chkstk_darwin(v78);
  v197 = &v160 - v79;
  *&v239 = v66;
  *(&v239 + 1) = v70;
  *&v240 = v71;
  *(&v240 + 1) = v77;
  v241 = v75;
  v242 = v76;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v203;
  v82 = swift_getWitnessTable();
  *&v239 = v78;
  *(&v239 + 1) = v70;
  v83 = v78;
  v171 = v78;
  *&v240 = v81;
  *(&v240 + 1) = v80;
  v167 = v82;
  v168 = v80;
  v241 = v75;
  v242 = v82;
  v194 = v75;
  v175 = swift_getOpaqueTypeMetadata2();
  v179 = *(v175 - 8);
  __chkstk_darwin(v175);
  v195 = &v160 - v84;
  v85 = type metadata accessor for ModifiedContent();
  v177 = v85;
  v185 = *(v85 - 8);
  __chkstk_darwin(v85);
  v196 = &v160 - v86;
  *&v239 = v83;
  *(&v239 + 1) = v70;
  *&v240 = v81;
  *(&v240 + 1) = v80;
  v241 = v75;
  v242 = v82;
  v173 = swift_getOpaqueTypeConformance2();
  v223 = v173;
  v224 = &protocol witness table for _AppearanceActionModifier;
  v176 = swift_getWitnessTable();
  *&v239 = v85;
  *(&v239 + 1) = v176;
  v182 = &unk_1001C2954;
  v87 = swift_getOpaqueTypeMetadata2();
  v88 = *(v87 - 8);
  v183 = v87;
  v184 = v88;
  v89 = __chkstk_darwin(v87);
  v174 = &v160 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v178 = &v160 - v91;
  *&v92 = *(v81 + 4);
  *(&v92 + 1) = v208;
  *&v93 = v70;
  *(&v93 + 1) = v186;
  v208 = v92;
  v209 = v93;
  v218 = v93;
  v219 = v92;
  v94 = *(v81 + 7);
  v95 = v204;
  v220 = v204;
  v221 = v94;
  v96 = v94;
  v222 = v198;
  v97 = v166;
  NavigationStack.init<>(root:)();
  v98 = v161;
  View.accessibilityIdentifier(_:)();
  (*(v172 + 8))(v97, v98);
  v99 = sub_100061C44(v81);
  v101 = v100;
  v103 = v102;
  v214 = v209;
  v215 = v208;
  v216 = v95;
  v217 = v96;
  swift_getKeyPath();
  v231 = v99;
  v232 = v101;
  v233 = v103;
  v240 = v208;
  v239 = v209;
  v241 = v95;
  v242 = v96;
  type metadata accessor for MusicEventViewModel(255, &v239);
  v172 = type metadata accessor for Binding();
  v104 = v187;
  Binding.subscript.getter();

  v105 = swift_allocObject();
  v106 = v208;
  *(v105 + 16) = v209;
  *(v105 + 32) = v106;
  *(v105 + 48) = v95;
  *(v105 + 56) = v96;
  v107 = v96;
  v201 = v96;
  swift_checkMetadataState();
  v108 = v165;
  v109 = v193;
  View.sheet<A, B>(item:onDismiss:content:)();

  v110 = *(v205 + 8);
  v205 += 8;
  v186 = v110;
  v110(v104, v200);
  v180[1](v109, v108);
  v111 = v203;
  v112 = v198;
  v113 = sub_100061C44(v203);
  v115 = v114;
  v117 = v116;
  v210 = v209;
  v211 = v208;
  v212 = v95;
  v213 = v107;
  swift_getKeyPath();
  *&v239 = v113;
  *(&v239 + 1) = v115;
  *&v240 = v117;
  Binding.subscript.getter();

  v118 = v207;
  v119 = *(v207 + 16);
  v172 = v207 + 16;
  v180 = v119;
  v120 = v199;
  v121 = v112;
  v122 = v112;
  v123 = v111;
  (v119)(v199, v121, v111);
  v124 = *(v118 + 80);
  v125 = (v124 + 64) & ~v124;
  v126 = swift_allocObject();
  v127 = v208;
  *(v126 + 16) = v209;
  *(v126 + 32) = v127;
  v128 = v204;
  v129 = v201;
  *(v126 + 48) = v204;
  *(v126 + 56) = v129;
  v193 = *(v118 + 32);
  v207 = v118 + 32;
  (v193)(v126 + v125, v120, v123);
  v130 = v171;
  v131 = v197;
  View.sheet<A, B>(item:onDismiss:content:)();

  v186(v104, v200);
  (*(v181 + 8))(v131, v130);
  v132 = v199;
  v133 = v180;
  (v180)(v199, v122, v123);
  v134 = swift_allocObject();
  v135 = v208;
  *(v134 + 16) = v209;
  *(v134 + 32) = v135;
  v136 = v201;
  *(v134 + 48) = v128;
  *(v134 + 56) = v136;
  v137 = v134 + v125;
  v138 = v132;
  (v193)(v137, v132, v123);
  v139 = v195;
  v140 = v175;
  View.onAppear(perform:)();

  (*(v179 + 8))(v139, v140);
  v133(v138, v122, v123);
  type metadata accessor for MainActor();
  v141 = static MainActor.shared.getter();
  v142 = swift_allocObject();
  *(v142 + 16) = v141;
  *(v142 + 24) = &protocol witness table for MainActor;
  v143 = v208;
  *(v142 + 32) = v209;
  *(v142 + 48) = v143;
  v144 = v201;
  *(v142 + 64) = v204;
  *(v142 + 72) = v144;
  (v193)(v142 + ((v124 + 80) & ~v124), v138, v123);
  v145 = v189;
  v147 = v176;
  v146 = v177;
  j___sScP13userInitiatedScPvgZ();
  v158 = v146;
  v159 = v147;
  v148 = v147;
  v149 = v146;
  v150 = v174;
  v151 = v145;
  v152 = v145;
  v153 = v196;
  sub_100009FB8(0, v151, 0xD000000000000024, (v188 | 0x8000000000000000), 215, &unk_1001B08C8, v142, v174, v158, v159);
  (*(v190 + 8))(v152, v191);
  (*(v185 + 8))(v153, v149);
  *&v239 = v149;
  *(&v239 + 1) = v148;
  swift_getOpaqueTypeConformance2();
  v154 = v178;
  v155 = v183;
  sub_100157EFC();
  v156 = *(v184 + 8);
  v156(v150, v155);
  sub_100157EFC();
  return (v156)(v154, v155);
}