unint64_t sub_1003DAEB0()
{
  result = qword_100CB4F48;
  if (!qword_100CB4F48)
  {
    result = swift_getWitnessTable(aY1_0, &type metadata for NotificationSettingsViewAction, v0, v1);
    atomic_store(result, &qword_100CB4F48);
  }

  return result;
}

uint64_t type metadata accessor for MoonScrubberHeaderView(uint64_t a1)
{
  result = qword_100CB4FA8;
  if (!qword_100CB4FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003DAF78(uint64_t a1)
{
  sub_1003DB0F4(319, &qword_100CB4FB8, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_1003DB098();
    if (v2 <= 0x3F)
    {
      type metadata accessor for MoonScrubberHeaderViewModel(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CoordinateSpace();
        if (v4 <= 0x3F)
        {
          sub_1003DB0F4(319, &qword_100CAD690, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1003DB098()
{
  result = qword_100CB4FC0;
  if (!qword_100CB4FC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CB4FC0);
  }

  return result;
}

void sub_1003DB0F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CGFloat);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1003DB164()
{
  v0 = type metadata accessor for Locale.Language();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Locale();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v22 - v16;
  static Locale.current.getter();
  Locale.language.getter();
  v18 = *(v11 + 8);
  v18(v17, v9);
  LOBYTE(v17) = Locale.Language.languageContainsLowCharacters.getter();
  v19 = *(v2 + 8);
  v19(v8, v0);
  if (v17)
  {
    v20 = 1;
  }

  else
  {
    static Locale.current.getter();
    Locale.language.getter();
    v18(v14, v9);
    v20 = Locale.Language.isChinese.getter();
    v19(v5, v0);
  }

  return v20 & 1;
}

uint64_t sub_1003DB360@<X0>(uint64_t *a2@<X8>)
{
  *a2 = static Alignment.top.getter();
  a2[1] = v4;
  v5 = sub_10022C350(&qword_100CB5010, &unk_100A486A8);
  return sub_1003DB3AC(v2, a2 + *(v5 + 44));
}

uint64_t sub_1003DB3AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for MoonScrubberHeaderView(0);
  v4 = v3 - 8;
  v50 = *(v3 - 8);
  __chkstk_darwin(v3);
  v51 = v5;
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10022C350(&unk_100CE1680, &unk_100A450F0);
  __chkstk_darwin(v48);
  v7 = &v46 - v6;
  v47 = sub_10022C350(&qword_100CB5018, &qword_100A486B8);
  __chkstk_darwin(v47);
  v9 = &v46 - v8;
  v49 = sub_10022C350(&qword_100CB5020, &qword_100A486C0);
  __chkstk_darwin(v49);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v15 = sub_10022C350(&qword_100CB5028, &qword_100A486C8);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = sub_10022C350(&qword_100CB5030, &qword_100A486D0);
  __chkstk_darwin(v18 - 8);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  if (*(a1 + *(v4 + 40)) == 1)
  {
    *v17 = static HorizontalAlignment.center.getter();
    *(v17 + 1) = 0;
    v17[16] = 0;
    v24 = sub_10022C350(&qword_100CB5058, &unk_100A486F0);
    sub_1003DBA30(a1, &v17[*(v24 + 44)]);
    sub_1001E34C8(v17, v23);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  sub_10001B350(v23, v25, 1, v15);
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v26 = &v9[*(sub_10022C350(&qword_100CB5038, &qword_100A486D8) + 44)];
  v53 = a1;
  sub_1003DC328(a1, v26);
  v27 = enum case for DynamicTypeSize.xxLarge(_:);
  v28 = type metadata accessor for DynamicTypeSize();
  (*(*(v28 - 8) + 104))(v7, v27, v28);
  sub_1003DEFB4(&qword_100CA5390, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v46 = v11;
  sub_100006F64(&qword_100CB5040, &qword_100CB5018, &qword_100A486B8, &protocol conformance descriptor for HStack<A>);
  sub_100006F64(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
  View.dynamicTypeSize<A>(_:)();
  sub_1000180EC(v7, &unk_100CE1680, &unk_100A450F0);
  sub_1000180EC(v9, &qword_100CB5018, &qword_100A486B8);
  LOBYTE(v27) = static Edge.Set.horizontal.getter();
  if (qword_100CA2910 != -1)
  {
LABEL_8:
    swift_once();
  }

  swift_beginAccess();
  sub_100857F14();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v14[*(sub_10022C350(&qword_100CB5048, &qword_100A486E0) + 36)];
  *v37 = v27;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = v52;
  sub_1003DE5F8(v53, v52);
  v39 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v40 = swift_allocObject();
  sub_1003DE65C(v38, v40 + v39);
  v41 = &v14[*(v49 + 36)];
  *v41 = sub_1003DF00C;
  v41[1] = 0;
  v41[2] = sub_1003DE6C0;
  v41[3] = v40;
  sub_100035AD0(v23, v20, &qword_100CB5030, &qword_100A486D0);
  v42 = v46;
  sub_100035AD0(v14, v46, &qword_100CB5020, &qword_100A486C0);
  v43 = v54;
  sub_100035AD0(v20, v54, &qword_100CB5030, &qword_100A486D0);
  v44 = sub_10022C350(&qword_100CB5050, &qword_100A486E8);
  sub_100035AD0(v42, v43 + *(v44 + 48), &qword_100CB5020, &qword_100A486C0);
  sub_1000180EC(v14, &qword_100CB5020, &qword_100A486C0);
  sub_1000180EC(v23, &qword_100CB5030, &qword_100A486D0);
  sub_1000180EC(v42, &qword_100CB5020, &qword_100A486C0);
  return sub_1000180EC(v20, &qword_100CB5030, &qword_100A486D0);
}

uint64_t sub_1003DBA30@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v48 = sub_10022C350(&qword_100CB5060, &qword_100A61660);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = v40 - v5;
  v6 = type metadata accessor for MoonScrubberHeaderView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10022C350(&qword_100CB5068, &qword_100A48700);
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = v40 - v12;
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = sub_100857ECC();
  v40[1] = v13;
  swift_endAccess();
  v14 = a1[1];
  v15 = a1[2];
  v53 = *a1;
  v54 = v14;
  v55 = v15;
  v41 = sub_10022C350(&qword_100CB5070, &qword_100A48708);
  Binding.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v53 = v13;
  v54 = v59;
  LOBYTE(v55) = v60;
  v56 = v61;
  v57 = v62;
  v58 = v63;
  sub_1003DE5F8(a1, v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v40[3] = v8;
  sub_1003DE65C(v9, v17 + v16);
  v40[2] = sub_10022C350(&qword_100CA50E8, &qword_100A48710);
  v18 = sub_10022C350(&qword_100CA4680, &unk_100A59690);
  sub_10026F004();
  v19 = type metadata accessor for EmptyVisualEffect();
  v20 = sub_1003DEFB4(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v64 = v19;
  v65 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  swift_beginAccess();
  v22 = sub_100857ECC();
  swift_endAccess();
  v23 = a1[4];
  v24 = a1[5];
  v53 = a1[3];
  v54 = v23;
  v55 = v24;
  Binding.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v53 = v22;
  v54 = v64;
  LOBYTE(v55) = v65;
  v56 = v66;
  v57 = v67;
  v58 = v68;
  sub_1003DE5F8(a1, v9);
  v25 = swift_allocObject();
  sub_1003DE65C(v9, v25 + v16);
  sub_10022C350(&qword_100CA4670, &unk_100A2E850);
  v51 = v18;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = v49;
  View.visualEffect<A>(_:)();

  v27 = v43;
  v28 = *(v43 + 16);
  v29 = v42;
  v30 = v44;
  v28(v42, v50, v44);
  v31 = v47;
  v41 = *(v47 + 16);
  v32 = v45;
  v33 = v26;
  v34 = v48;
  v41(v45, v33, v48);
  v35 = v46;
  v28(v46, v29, v30);
  v36 = sub_10022C350(&qword_100CB5078, &unk_100A48718);
  v41(&v35[*(v36 + 48)], v32, v34);
  v37 = *(v31 + 8);
  v37(v49, v34);
  v38 = *(v27 + 8);
  v38(v50, v30);
  v37(v32, v34);
  return (v38)(v29, v30);
}

double sub_1003DC124(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v11 = type metadata accessor for MoonScrubberHeaderView(0);
  v12 = 0.0;
  if (*(v5 + *(v11 + 32)) == 1)
  {
    v13 = v11;
    v20.origin.x = a1;
    v20.origin.y = a2;
    v20.size.width = a3;
    v20.size.height = a4;
    MinY = CGRectGetMinY(v20);
    v15 = *(v5 + v13[9]);
    if (MinY < v15 + a5)
    {
      v21.origin.x = a1;
      v21.origin.y = a2;
      v21.size.width = a3;
      v21.size.height = a4;
      v16 = a5 - (CGRectGetMinY(v21) - v15);
      v12 = v16 + 0.0;
      v17 = *(v5 + v13[10]);
      if (v16 >= v17)
      {
        v18 = v12 - *(v5 + v13[11]);
        if (v18 >= 0.0)
        {
          return v17 + v18;
        }

        else
        {
          return *(v5 + v13[10]);
        }
      }
    }
  }

  return v12;
}

double sub_1003DC214(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v11 = type metadata accessor for MoonScrubberHeaderView(0);
  v12 = 1.0;
  if (*(v5 + *(v11 + 32)) == 1)
  {
    v13 = v11;
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    MinY = CGRectGetMinY(v23);
    v15 = *(v5 + v13[9]);
    if (MinY < v15 + a5)
    {
      v24.origin.x = a1;
      v24.origin.y = a2;
      v24.size.width = a3;
      v24.size.height = a4;
      v16 = CGRectGetMinY(v24) - v15;
      v17 = *(v5 + v13[10]);
      v18 = *(v5 + v13[11]) - v17;
      v19 = v17 + v18 * 0.33;
      v20 = a5 - v16 + 0.0 - v19;
      if (v20 > 0.0)
      {
        v21 = 1.0 - v20 / (v17 + v18 * 0.67 - v19);
        if (v21 < 0.0)
        {
          return 0.0;
        }

        else
        {
          return v21;
        }
      }
    }
  }

  return v12;
}

uint64_t sub_1003DC328@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v76 = sub_10022C350(&qword_100CB5080, &qword_100A48728) - 8;
  __chkstk_darwin(v76);
  v79 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v94 = (v66 - v5);
  v6 = type metadata accessor for MoonScrubberHeaderView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  __chkstk_darwin(v6);
  v66[1] = v9;
  v10 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_10022C350(&qword_100CB5088, &qword_100A48730);
  v91 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = v66 - v11;
  v84 = sub_10022C350(&qword_100CB5090, &qword_100A48738);
  __chkstk_darwin(v84);
  v71 = v66 - v12;
  v78 = sub_10022C350(&qword_100CB5098, &qword_100A48740);
  v90 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v89 = v66 - v15;
  __chkstk_darwin(v16);
  v88 = v66 - v17;
  __chkstk_darwin(v18);
  v92 = v66 - v19;
  v20 = LocalizedStringKey.init(stringLiteral:)();
  v93 = Text.init(_:tableName:bundle:comment:)(v20, v22, v21 & 1, v23, 0, 0, 0, "Accessibility label for the 'reset scrubber' header buttons", 59, 2);
  v85 = v24;
  v86 = v25;
  v87 = v26;
  v66[0] = v10;
  sub_1003DE5F8(a1, v10);
  v83 = *(v8 + 80);
  v27 = (v83 + 16) & ~v83;
  v28 = swift_allocObject();
  sub_1003DE65C(v10, v28 + v27);
  v95 = 0xD000000000000015;
  v96 = 0x8000000100AC5BD0;
  v97 = sub_1003DF008;
  v98 = v28;
  v29 = a1 + *(v7 + 36);
  v67 = a1;
  v75 = *(v29 + *(type metadata accessor for MoonScrubberHeaderViewModel(0) + 40));
  v30 = sub_1003DE708();
  v31 = v81;
  v32 = v30;
  v74 = v30;
  View.isHidden(_:defaultAccessibilityHidden:)();

  v95 = &type metadata for HeaderButton;
  v96 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v71;
  v34 = v82;
  View.accessibilityLabel(_:)();
  v35 = *(v91 + 8);
  v91 += 8;
  v72 = v35;
  v35(v31, v34);
  v36 = v66[0];
  sub_1003DE5F8(a1, v66[0]);
  v37 = swift_allocObject();
  sub_1003DE65C(v36, v37 + v27);
  v69 = sub_10022C350(&qword_100CA4670, &unk_100A2E850);
  v68 = sub_1003DE75C();
  v38 = sub_10022E824(&qword_100CA4680, &unk_100A59690);
  v39 = type metadata accessor for EmptyVisualEffect();
  v40 = sub_1003DEFB4(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v95 = v39;
  v96 = v40;
  v41 = swift_getOpaqueTypeConformance2();
  v95 = v38;
  v96 = v41;
  v70 = swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  v42 = v33;
  sub_1000180EC(v33, &qword_100CB5090, &qword_100A48738);
  v43 = static HorizontalAlignment.center.getter();
  v44 = v94;
  *v94 = v43;
  v44[1] = 0;
  *(v44 + 16) = 0;
  v45 = v44;
  v46 = v44 + *(sub_10022C350(&qword_100CB50B0, &qword_100A48748) + 44);
  v47 = v67;
  sub_1003DCD3C(v67, v46);
  KeyPath = swift_getKeyPath();
  v49 = v45 + *(v76 + 44);
  *v49 = KeyPath;
  v49[8] = 1;
  sub_1003DE5F8(v47, v36);
  v50 = swift_allocObject();
  sub_1003DE65C(v36, v50 + v27);
  v95 = 0xD000000000000014;
  v96 = 0x8000000100AC5BF0;
  v97 = sub_1003DE844;
  v98 = v50;
  v51 = v81;
  View.isHidden(_:defaultAccessibilityHidden:)();

  v52 = v82;
  View.accessibilityLabel(_:)();
  v72(v51, v52);
  sub_1003DE5F8(v47, v36);
  v53 = swift_allocObject();
  sub_1003DE65C(v36, v53 + v27);
  v54 = v88;
  View.visualEffect<A>(_:)();

  sub_1000180EC(v42, &qword_100CB5090, &qword_100A48738);
  v55 = v89;
  v56 = *(v90 + 16);
  v57 = v78;
  v56(v89, v92, v78);
  v58 = v79;
  sub_100035AD0(v94, v79, &qword_100CB5080, &qword_100A48728);
  v59 = v77;
  v56(v77, v54, v57);
  v60 = v80;
  v56(v80, v55, v57);
  v61 = sub_10022C350(&qword_100CB50B8, &qword_100A48780);
  v62 = &v60[v61[12]];
  *v62 = 0x4024000000000000;
  v62[8] = 0;
  sub_100035AD0(v58, &v60[v61[16]], &qword_100CB5080, &qword_100A48728);
  v63 = &v60[v61[20]];
  *v63 = 0x4024000000000000;
  v63[8] = 0;
  v56(&v60[v61[24]], v59, v57);
  sub_10010CD64(v93, v85, v86 & 1);

  v64 = *(v90 + 8);
  v64(v88, v57);
  sub_1000180EC(v94, &qword_100CB5080, &qword_100A48728);
  v64(v92, v57);
  v64(v59, v57);
  sub_1000180EC(v58, &qword_100CB5080, &qword_100A48728);
  return (v64)(v89, v57);
}

uint64_t sub_1003DCD3C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v62 = sub_10022C350(&qword_100CB50C0, &qword_100A48788);
  v68 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = v52 - v5;
  v6 = type metadata accessor for MoonScrubberHeaderView(0);
  v7 = v6 - 8;
  v59 = *(v6 - 8);
  v64 = *(v59 + 64);
  __chkstk_darwin(v6);
  v57 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10022C350(&qword_100CB50C8, &qword_100A48790);
  v67 = *(v60 - 8);
  __chkstk_darwin(v60);
  v65 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v69 = v52 - v15;
  v16 = (a1 + *(v7 + 36));
  v17 = v16[1];
  __src[0] = *v16;
  __src[1] = v17;
  sub_10002D5A4();

  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  (*(v10 + 104))(v12, enum case for Font.TextStyle.title3(_:), v9);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v10 + 8))(v12, v9);
  v23 = Text.font(_:)();
  v53 = v23;
  v52[0] = v24;
  LODWORD(OpaqueTypeConformance2) = v25;
  v27 = v26;
  v55 = v26;

  sub_10010CD64(v18, v20, v22 & 1);

  v54 = a1;
  v28 = v57;
  sub_1003DE5F8(a1, v57);
  v29 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v56 = *(v59 + 80);
  v30 = swift_allocObject();
  sub_1003DE65C(v28, v30 + v29);
  v31 = OpaqueTypeConformance2 & 1;
  v71[120] = OpaqueTypeConformance2 & 1;
  __src[0] = v23;
  v32 = v52[0];
  __src[1] = v52[0];
  LOBYTE(__src[2]) = OpaqueTypeConformance2 & 1;
  __src[3] = v27;
  __src[4] = sub_1003DF00C;
  __src[5] = 0;
  __src[6] = sub_1003DE910;
  __src[7] = v30;
  __src[8] = 0x3FF0000000000000;
  sub_1003DE5F8(a1, v28);
  v33 = swift_allocObject();
  sub_1003DE65C(v28, v33 + v29);
  v52[1] = sub_10022C350(&qword_100CB50D0, &qword_100A48798);
  v59 = sub_10022C350(&qword_100CA4680, &unk_100A59690);
  sub_1003DE928();
  v34 = type metadata accessor for EmptyVisualEffect();
  v35 = sub_1003DEFB4(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v70[0] = v34;
  v70[1] = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  sub_10010CD64(v53, v32, v31);

  LOBYTE(v34) = static Axis.Set.horizontal.getter();
  v36 = v54;
  sub_1003DD6CC(v54, __src);
  memcpy(v72, __src, 0x69uLL);
  memcpy(v73, __src, sizeof(v73));
  sub_1003DEA98(v72, v70);
  sub_1000180EC(v73, &qword_100CB5100, &qword_100A487B8);
  memcpy(&v71[7], v72, 0x69uLL);
  sub_1003DE5F8(v36, v28);
  v37 = swift_allocObject();
  sub_1003DE65C(v28, v37 + v29);
  LOBYTE(v70[0]) = v34;
  memcpy(v70 + 1, v71, 0x70uLL);
  *(&v70[14] + 1) = *v74;
  HIDWORD(v70[14]) = *&v74[3];
  v70[15] = sub_1003DF00C;
  v70[16] = 0;
  v70[17] = sub_1003DEB08;
  v70[18] = v37;
  sub_1003DE5F8(v36, v28);
  v38 = swift_allocObject();
  sub_1003DE65C(v28, v38 + v29);
  sub_10022C350(&qword_100CB5108, &qword_100A487C0);
  sub_10022C350(&qword_100CA4670, &unk_100A2E850);
  sub_1003DEC30();
  __src[0] = v59;
  __src[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v66;
  View.visualEffect<A>(_:)();

  memcpy(__src, v70, 0x98uLL);
  sub_1000180EC(__src, &qword_100CB5108, &qword_100A487C0);
  v40 = *(v67 + 16);
  v41 = v65;
  v42 = v60;
  v40(v65, v69, v60);
  v43 = *(v68 + 16);
  v45 = v61;
  v44 = v62;
  v43(v61, v39, v62);
  v46 = v43;
  v47 = v63;
  v40(v63, v41, v42);
  v48 = sub_10022C350(&qword_100CB5128, &qword_100A487D0);
  v46(&v47[*(v48 + 48)], v45, v44);
  v49 = *(v68 + 8);
  v49(v66, v44);
  v50 = *(v67 + 8);
  v50(v69, v42);
  v49(v45, v44);
  return (v50)(v65, v42);
}

uint64_t sub_1003DD58C(double *a1, uint64_t *a2)
{
  sub_1003DB164();
  sub_10022C350(&qword_100CB5070, &qword_100A48708);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1003DD620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MoonScrubberHeaderView(0);
  GeometryProxy.frame(in:)();
  sub_1003DC124(v3, v4, v5, v6, 0.0);
  type metadata accessor for EmptyVisualEffect();
  sub_10001EB80();
  sub_1003DEFB4(v7, v8, &protocol conformance descriptor for EmptyVisualEffect);
  return VisualEffect.offset(x:y:)();
}

uint64_t sub_1003DD6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for MoonScrubberHeaderView(0) + 28);
  v9 = *(v8 + 24);
  v73 = *(v8 + 16);
  v74 = v9;
  v10 = sub_10002D5A4();

  v62 = v10;
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  v16 = *(v5 + 104);
  v60 = enum case for Font.TextStyle.body(_:);
  v58 = v16;
  v59 = v5 + 104;
  v16(v7);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v17 = *(v5 + 8);
  v64 = v5 + 8;
  v65 = v4;
  v57 = v17;
  v17(v7, v4);
  v55 = Text.font(_:)();
  v19 = v18;
  v21 = v20;
  KeyPath = v22;

  sub_10010CD64(v11, v13, v15 & 1);

  v56 = *(v8 + 48);
  if (v56 == 1)
  {
    static Color.primary.getter();
  }

  else
  {
    static Color.secondary.getter();
  }

  v23 = v55;
  v24 = Text.foregroundColor(_:)();
  v66 = v25;
  v67 = v24;
  v61 = v26;
  v68 = v27;

  sub_10010CD64(v23, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v28 = *(v8 + 40);
  v73 = *(v8 + 32);
  v74 = v28;

  v29 = Text.init<A>(_:)();
  v31 = v30;
  v33 = v32;
  v34 = v65;
  v58(v7, v60, v65);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v57(v7, v34);
  v35 = Text.font(_:)();
  v37 = v36;
  v39 = v38;

  sub_10010CD64(v29, v31, v33 & 1);

  if (v56)
  {
    static Color.primary.getter();
  }

  else
  {
    static Color.secondary.getter();
  }

  v40 = Text.foregroundColor(_:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;

  sub_10010CD64(v35, v37, v39 & 1);

  v47 = swift_getKeyPath();
  v48 = v61 & 1;
  LOBYTE(v73) = v61 & 1;
  v72 = v61 & 1;
  v71 = 0;
  v49 = v44 & 1;
  v70 = v44 & 1;
  v69 = 0;
  v50 = v44 & 1;
  v52 = v66;
  v51 = v67;
  *a2 = v67;
  *(a2 + 8) = v52;
  *(a2 + 16) = v48;
  v53 = KeyPath;
  *(a2 + 24) = v68;
  *(a2 + 32) = v53;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v40;
  *(a2 + 64) = v42;
  *(a2 + 72) = v50;
  *(a2 + 80) = v46;
  *(a2 + 88) = v47;
  *(a2 + 96) = 1;
  *(a2 + 104) = 0;
  sub_10010CD54(v51, v52, v48);

  sub_10010CD54(v40, v42, v49);

  sub_10010CD64(v40, v42, v49);

  sub_10010CD64(v51, v52, v73);
}

uint64_t sub_1003DDB84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10022C350(&qword_100CA4680, &unk_100A59690);
  sub_1000037C4();
  v19 = v4;
  v20 = v5;
  __chkstk_darwin(v4);
  sub_1000040EC();
  sub_100019678();
  sub_100014580();
  sub_10022C350(&qword_100CB5070, &qword_100A48708);
  Binding.wrappedValue.getter();
  v6 = sub_1000084E4();
  sub_1003DC124(v6, v7, v8, v9, v10);
  type metadata accessor for EmptyVisualEffect();
  sub_10001EB80();
  sub_1003DEFB4(v11, v12, &protocol conformance descriptor for EmptyVisualEffect);
  VisualEffect.offset(x:y:)();
  sub_100019678();
  sub_100014580();
  Binding.wrappedValue.getter();
  v13 = sub_1000084E4();
  sub_1003DC214(v13, v14, v15, v16, v17);
  sub_100005B34();
  swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  return (*(v20 + 8))(v3, v19);
}

uint64_t sub_1003DDD6C(uint64_t a1)
{
  type metadata accessor for MoonDetailSelectedDate(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0((a1 + 48), *(a1 + 72));
  v5 = a1 + *(type metadata accessor for MoonScrubberHeaderView(0) + 28);
  v6 = *(type metadata accessor for MoonScrubberHeaderViewModel(0) + 36);
  type metadata accessor for Date();
  sub_1000037E8();
  (*(v7 + 16))(v4, v5 + v6);
  swift_storeEnumTagMultiPayload();
  sub_1006779AC(v4);
  return sub_1003DE8B4(v4);
}

uint64_t sub_1003DDE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10022C350(&qword_100CA4680, &unk_100A59690);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v9 = sub_1000040EC();
  sub_100019678();
  sub_1003DC124(v10, v11, v12, v13, 0.0);
  type metadata accessor for EmptyVisualEffect();
  sub_10001EB80();
  sub_1003DEFB4(v14, v15, &protocol conformance descriptor for EmptyVisualEffect);
  VisualEffect.offset(x:y:)();
  sub_100019678();
  if (*(a3 + *(v9 + 32)) == 1)
  {
    CGRectGetMinY(*&v16);
  }

  sub_100005B34();
  swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  return (*(v7 + 8))(v3, v5);
}

uint64_t sub_1003DE014@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LocalCoordinateSpace();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.local.getter();
  GeometryProxy.frame<A>(in:)();
  v9 = v8;
  result = (*(v4 + 8))(v7, v2);
  *a1 = v9;
  return result;
}

uint64_t sub_1003DE0FC(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for MoonScrubberHeaderView(0);
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  return State.wrappedValue.setter();
}

uint64_t sub_1003DE178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[1] = a5;
  v9 = type metadata accessor for PlainButtonStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CB5140, &qword_100A48898);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v18 - v15;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a4;

  sub_10022C350(&qword_100CB5148, &unk_100A488A0);
  sub_1003DED8C();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100006F64(qword_100CB5178, &qword_100CB5140, &qword_100A48898, &protocol conformance descriptor for Button<A>);
  sub_1003DEFB4(&qword_100CB0848, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v10 + 8))(v12, v9);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1003DE3E4@<X0>(uint64_t *a3@<X8>)
{
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = Image.init(systemName:)();
  v9 = (a3 + *(sub_10022C350(&qword_100CB5170, &unk_100A488B0) + 36));
  v10 = *(sub_10022C350(&qword_100CAF750, &qword_100A57BC0) + 28);
  v11 = enum case for Image.Scale.large(_:);
  v12 = type metadata accessor for Image.Scale();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *a3 = v8;
  (*(v5 + 104))(v7, enum case for Font.TextStyle.title3(_:), v4);
  static Font.Weight.medium.getter();
  v13 = static Font.system(_:weight:)();
  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  v15 = (a3 + *(sub_10022C350(&qword_100CB5160, &qword_100A58870) + 36));
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = static Color.cyan.getter();
  result = sub_10022C350(&qword_100CB5148, &unk_100A488A0);
  *(a3 + *(result + 36)) = v16;
  return result;
}

uint64_t sub_1003DE5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonScrubberHeaderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DE65C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonScrubberHeaderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003DE708()
{
  result = qword_100CB50A0;
  if (!qword_100CB50A0)
  {
    result = swift_getWitnessTable(byte_100A48848, &type metadata for HeaderButton, v0, v1);
    atomic_store(result, &qword_100CB50A0);
  }

  return result;
}

unint64_t sub_1003DE75C()
{
  result = qword_100CB50A8;
  if (!qword_100CB50A8)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CB5090, &qword_100A48738);
    v4[2] = &type metadata for HeaderButton;
    v4[3] = sub_1003DE708();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1003DEFB4(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB50A8);
  }

  return result;
}

uint64_t sub_1003DE8B4(uint64_t a1)
{
  v2 = type metadata accessor for MoonDetailSelectedDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003DE928()
{
  result = qword_100CB50D8;
  if (!qword_100CB50D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB50D0, &qword_100A48798);
    v4[0] = sub_1003DE9E0();
    v4[1] = sub_100006F64(&qword_100CA47C8, &qword_100CA47D0, &qword_100A2EA00, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB50D8);
  }

  return result;
}

unint64_t sub_1003DE9E0()
{
  result = qword_100CB50E0;
  if (!qword_100CB50E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB50E8, &qword_100A487A0);
    v4[0] = &protocol witness table for Text;
    v4[1] = sub_100006F64(&qword_100CB50F0, &qword_100CB50F8, &unk_100A487A8, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB50E0);
  }

  return result;
}

uint64_t sub_1003DEA98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB5100, &qword_100A487B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DEB20(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MoonScrubberHeaderView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1003DEC30()
{
  result = qword_100CB5110;
  if (!qword_100CB5110)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5108, &qword_100A487C0);
    v4[0] = sub_100006F64(&qword_100CB5118, &qword_100CB5120, &qword_100A487C8, &protocol conformance descriptor for ViewThatFits<A>);
    v4[1] = sub_100006F64(&qword_100CB50F0, &qword_100CB50F8, &unk_100A487A8, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5110);
  }

  return result;
}

uint64_t sub_1003DED14(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1003DED8C()
{
  result = qword_100CB5150;
  if (!qword_100CB5150)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5148, &unk_100A488A0);
    v4[0] = sub_1003DEE44();
    v4[1] = sub_100006F64(&qword_100CAF708, &qword_100CAF710, &qword_100A6E3E0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5150);
  }

  return result;
}

unint64_t sub_1003DEE44()
{
  result = qword_100CB5158;
  if (!qword_100CB5158)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5160, &qword_100A58870);
    v4[0] = sub_1003DEEFC();
    v4[1] = sub_100006F64(&qword_100CA53B8, &qword_100CA53C0, &unk_100A2F5E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5158);
  }

  return result;
}

unint64_t sub_1003DEEFC()
{
  result = qword_100CB5168;
  if (!qword_100CB5168)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5170, &unk_100A488B0);
    v4[0] = &protocol witness table for Image;
    v4[1] = sub_100006F64(&unk_100CE1690, &qword_100CAF750, &qword_100A57BC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5168);
  }

  return result;
}

uint64_t sub_1003DEFB4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

char *sub_1003DF010()
{
  v1 = *v0;

  sub_10001E790();
  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(v2 + 136)], *(v1 + 88));
  sub_10001E790();
  (*(*(*(v1 + 96) - 8) + 8))(&v0[*(v3 + 144)]);
  sub_10001E790();

  sub_10001E790();

  sub_10001E790();

  sub_10001E790();
  v6 = *(v5 + 184);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  sub_1000053B8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1000053B8();
  v10 = swift_getAssociatedConformanceWitness();
  sub_1000053B8();
  v11 = swift_getAssociatedConformanceWitness();
  sub_1000053B8();
  v14[0] = AssociatedTypeWitness;
  v14[1] = v8;
  v14[2] = AssociatedConformanceWitness;
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = swift_getAssociatedConformanceWitness();
  type metadata accessor for StatePersistenceData(255, v14);
  v12 = type metadata accessor for Optional();
  (*(*(v12 - 8) + 8))(&v0[v6], v12);
  return v0;
}

uint64_t sub_1003DF2AC()
{
  sub_1003DF010();

  return swift_deallocClassInstance();
}

uint64_t sub_1003DF304()
{
  v1 = *v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = *(v0 + v1[22]);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = *(v2 + 5);
  *(v16 + 32) = v1[12];
  *(v16 + 40) = *(v2 + 13);
  *(v16 + 56) = v1[15];
  *(v16 + 64) = v15;
  aBlock[4] = sub_1003DF94C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C54818;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19[1] = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v5 + 8))(v8, v3);
  (*(v11 + 8))(v14, v9);
}

uint64_t sub_1003DF608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[0] = swift_getAssociatedTypeWitness();
  v21[1] = swift_getAssociatedTypeWitness();
  v21[2] = swift_getAssociatedConformanceWitness();
  v21[3] = swift_getAssociatedConformanceWitness();
  v21[4] = swift_getAssociatedConformanceWitness();
  v21[5] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for StatePersistenceData(255, v21);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11 + 16;
  v13 = *(v8 - 8);
  __chkstk_darwin(v14);
  v16 = v21 - v15 + 16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = *(*result + 184);
    swift_beginAccess();
    (*(v10 + 16))(v12, v18 + v19, v9);
    if (sub_100024D10(v12, 1, v8) == 1)
    {

      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      (*(v13 + 32))(v16, v12, v8);
      (*(a6 + 72))(v16, a3, a6);

      return (*(v13 + 8))(v16, v8);
    }
  }

  return result;
}

uint64_t sub_1003DFA78()
{
  type metadata accessor for HistoricalComparisons();
  v1 = sub_100068374(&qword_100CB5460, &type metadata accessor for HistoricalComparisons, &protocol conformance descriptor for HistoricalComparisons);
  sub_1000283CC(v1);
  sub_100022AF4();
  sub_10004E548();
  if (v3)
  {
    type metadata accessor for HistoricalComparison();
    v6 = sub_100007E1C();
  }

  else
  {
    sub_100019690(v2);
    sub_10007496C();
    type metadata accessor for HistoricalComparison();
    sub_1000037E8();
    v4 = sub_1000168F4();
    v5(v4);
    v0(v11, 0);
    v6 = sub_100008500();
  }

  return sub_10001B350(v6, v7, v8, v9);
}

uint64_t sub_1003DFBFC()
{
  sub_10022C350(&qword_100CB5468, &unk_100A95C40);
  v1 = sub_100006F64(&qword_100CB5470, &qword_100CB5468, &unk_100A95C40, &protocol conformance descriptor for MonthlyWeatherStatistics<A>);
  sub_1000283CC(v1);
  sub_100022AF4();
  sub_10004E548();
  if (v3)
  {
    type metadata accessor for MonthPrecipitationStatistics();
    v6 = sub_100007E1C();
  }

  else
  {
    sub_100019690(v2);
    sub_10007496C();
    type metadata accessor for MonthPrecipitationStatistics();
    sub_1000037E8();
    v4 = sub_1000168F4();
    v5(v4);
    v0(v11, 0);
    v6 = sub_100008500();
  }

  return sub_10001B350(v6, v7, v8, v9);
}

Swift::Void __swiftcall SessionEventsAndDataCoordinator.handleActivity(_:)(NSUserActivity a1)
{
  v1 = sub_1003E0070(a1.super.isa);
  if (v2)
  {
    v3 = String.lowercased()();
    countAndFlagsBits = v3._countAndFlagsBits;
    object = v3._object;
  }

  else
  {
    object = 0xE700000000000000;
    countAndFlagsBits = 0x6E776F6E6B6E75;
  }

  __chkstk_darwin(v1);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  sub_1003E0524(countAndFlagsBits, object, 1819047278, 0xE400000000000000);

  sub_10004A100();
}

uint64_t sub_1003DFE70()
{
  type metadata accessor for ReferralData();
  sub_100068374(&qword_100CB53C8, &type metadata accessor for ReferralData, &protocol conformance descriptor for ReferralData);
  return AccessTracker.clearStack<A>(of:includeParentTrackers:)();
}

uint64_t SessionEventsAndDataCoordinator.deinit()
{
  sub_1003DFFB8();

  sub_100006F14((v0 + 48));
  sub_100006F14((v0 + 88));
  sub_100006F14((v0 + 128));
  sub_100006F14((v0 + 168));
  sub_100006F14((v0 + 208));
  sub_100006F14((v0 + 248));
  sub_100006F14((v0 + 288));

  v1 = OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_startMethod;
  type metadata accessor for StartMethod();
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);

  sub_100006F14((v0 + OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_privacySampler));
  return v0;
}

void sub_1003DFFB8()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 endGeneratingDeviceOrientationNotifications];
}

uint64_t SessionEventsAndDataCoordinator.__deallocating_deinit()
{
  SessionEventsAndDataCoordinator.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1003E0070(void *a1)
{
  v2 = [a1 activityType];
  countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = 0xD000000000000022;
  v7 = countAndFlagsBits == 0xD000000000000022 && 0x8000000100AC5F30 == v5;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0xD000000000000015;
  }

  v8 = countAndFlagsBits == 0xD00000000000001ELL && 0x8000000100AC50A0 == v5;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_12;
  }

  v10 = countAndFlagsBits == 0x4972656874616557 && v5 == 0xED0000746E65746ELL;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (countAndFlagsBits == 0xD000000000000029 && 0x8000000100AC5F60 == v5)
    {
      return 0xD000000000000029;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return countAndFlagsBits;
    }

    v14 = 0xD000000000000028;
    if (countAndFlagsBits != 0xD000000000000028 || 0x8000000100AC5F90 != v5)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return countAndFlagsBits;
      }

      v14 = 0xD000000000000029;
      if (countAndFlagsBits != 0xD000000000000029 || 0x8000000100AC5FC0 != v5)
      {
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return countAndFlagsBits;
        }

        v14 = 0xD000000000000027;
        if (countAndFlagsBits != 0xD000000000000027 || 0x8000000100AC5FF0 != v5)
        {
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            return countAndFlagsBits;
          }

          if (countAndFlagsBits == 0xD000000000000023 && 0x8000000100AC6020 == v5)
          {
            return 0xD000000000000023;
          }

          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            return countAndFlagsBits;
          }

          v14 = 0xD00000000000002ALL;
          if (countAndFlagsBits == 0xD00000000000002ALL && 0x8000000100AC6050 == v5)
          {
            return v14;
          }

          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            return countAndFlagsBits;
          }

          if (countAndFlagsBits == 0xD000000000000022 && 0x8000000100AC6080 == v5)
          {
            return v6;
          }

          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            return countAndFlagsBits;
          }

          v6 = 0xD000000000000026;
          if (countAndFlagsBits == 0xD000000000000026 && 0x8000000100AC60B0 == v5)
          {
            return v6;
          }

          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            return countAndFlagsBits;
          }

          if (countAndFlagsBits == 0xD000000000000023 && 0x8000000100AC60E0 == v5)
          {
            return 0xD000000000000023;
          }

          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            return countAndFlagsBits;
          }

          v14 = 0xD000000000000026;
          if (countAndFlagsBits != 0xD000000000000026 || 0x8000000100AC6110 != v5)
          {
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {

              return 0;
            }

            return countAndFlagsBits;
          }
        }
      }
    }

    return v14;
  }

  if (!sub_100166104(a1))
  {
    v25 = 0u;
    v26 = 0u;
    goto LABEL_30;
  }

  static WidgetCenter.UserInfoKey.kind.getter();
  AnyHashable.init<A>(_:)();
  sub_100879F04();

  sub_100166478(&v24);
  if (!*(&v26 + 1))
  {
LABEL_30:
    sub_1000180EC(&v25, &qword_100CE2F40, &qword_100A2D880);
    return 0xD000000000000018;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0xD000000000000018;
  }

  v11 = String.lowercased()();
  countAndFlagsBits = v11._countAndFlagsBits;

  v12 = v11._countAndFlagsBits == 0xD000000000000011 && 0x8000000100ABB700 == v11._object;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
LABEL_12:

    return 0xD000000000000018;
  }

  return countAndFlagsBits;
}

uint64_t sub_1003E0524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10022C350(&qword_100CB54C8, &qword_100A48DB8);
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v29 = v20 - v6;
  v7 = type metadata accessor for ReferralData();
  v24 = *(v7 - 8);
  __chkstk_darwin(v7);
  v27 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;

  ReferralData.init(referringApplication:referringUrl:)();
  v28 = *(v4 + 32);
  SessionManager.tracker.getter();
  v26 = sub_10022C350(&qword_100CAE2B0, &unk_100A418E0);
  v12 = type metadata accessor for DataEventTrait();
  v13 = *(v12 - 8);
  v25 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v23 = xmmword_100A2C3F0;
  *(v15 + 16) = xmmword_100A2C3F0;
  v22 = enum case for DataEventTrait.unique(_:);
  v21 = *(v13 + 104);
  v21(v15 + v14);
  v20[1] = "ent to handle the new case.";
  sub_100068374(&qword_100CB53C8, &type metadata accessor for ReferralData, &protocol conformance descriptor for ReferralData);
  Tracker.push<A>(data:traits:file:line:)();

  v16 = v24;
  (*(v24 + 16))(v27, v11, v7);
  v17 = v29;
  SessionData.init(key:data:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  (v21)(v18 + v14, v22, v12);
  SessionManager.push<A>(_:traits:file:line:)();

  (*(v30 + 8))(v17, v31);
  return (*(v16 + 8))(v11, v7);
}

void SessionEventsAndDataCoordinator.identityService(_:didChangeUserIdentity:)()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  type metadata accessor for Logger();
  sub_1000037C4();
  v35 = v5;
  v36 = v4;
  __chkstk_darwin(v4);
  v33 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v32 - v8;
  v10 = type metadata accessor for UserIdentityChangeKind();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v32 - v17;
  v34 = v3;
  UserIdentityChange.change.getter();
  static UserIdentityChangeKind.userIdentity.getter();
  sub_100068374(&qword_100CB5238, &type metadata accessor for UserIdentityChangeKind, &protocol conformance descriptor for UserIdentityChangeKind);
  v19 = sub_10003C40C();
  v20 = *(v12 + 8);
  v20(v15, v10);
  v20(v18, v10);
  if (v19)
  {
    static Logger.identity.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32[1] = v1;
      *v23 = 0;
      sub_10000FA14(&_mh_execute_header, v24, v25, "Received a user identity change ... pushing new identifier onto trackers");
    }

    (*(v35 + 8))(v9, v36);
    sub_10004B3D8();
  }

  UserIdentityChange.change.getter();
  static UserIdentityChangeKind.privateUserIdentity.getter();
  v26 = sub_10003C40C();
  v20(v15, v10);
  v20(v18, v10);
  if (v26)
  {
    v27 = v33;
    static Logger.identity.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      *swift_slowAlloc() = 0;
      sub_10000FA14(&_mh_execute_header, v30, v31, "Received a private user identity change ... pushing new identifier onto trackers");
    }

    (*(v35 + 8))(v27, v36);
    sub_100069188();
  }

  sub_10000536C();
}

Swift::Void __swiftcall SessionEventsAndDataCoordinator.sceneWillResignActive()()
{
  sub_1000161C0(v0 + 31, v0[34]);
  sub_100068374(&qword_100CB5240, type metadata accessor for SessionEventsAndDataCoordinator, protocol conformance descriptor for SessionEventsAndDataCoordinator);
  sub_100003E0C();
  dispatch thunk of AppConfigurationManagerType.removeObserver(_:)();
  sub_1000161C0(v0 + 36, v0[39]);
  sub_100005B4C();
  sub_100068374(v1, type metadata accessor for SessionEventsAndDataCoordinator, v2);
  sub_100003E0C();
  dispatch thunk of LocationManagerType.removeObserver(_:)();
}

uint64_t SessionEventsAndDataCoordinator.patterns.getter()
{
  sub_10022C350(&qword_100CB5260, &unk_100A48A20);
  v0 = type metadata accessor for URLHandlerPattern();
  sub_100003AE8(v0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100A2C3F0;
  URLHandlerPattern.init(scheme:host:path:fragment:)();
  return v1;
}

void SessionEventsAndDataCoordinator.processURL(for:)()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  ParameterKey = type metadata accessor for WeatherQueryParameterKey();
  sub_1000037C4();
  v35 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v36 = type metadata accessor for URL();
  sub_1000037C4();
  v34 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = type metadata accessor for URLHandlerMatch();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  sub_10022C350(&qword_100CB5268, &unk_100A53480);
  URLHandlerContext.clientContext.getter();
  if (v38 || (URLHandlerContext.match.getter(), URLHandlerMatch.url.getter(), (*(v17 + 8))(v21, v15), (*(v35 + 104))(v9, enum case for WeatherQueryParameterKey.openedFrom(_:), ParameterKey), Parameter = WeatherQueryParameterKey.rawValue.getter(), v24 = v23, (*(v35 + 8))(v9, ParameterKey), v25._countAndFlagsBits = Parameter, v25._object = v24, v26 = URL.queryItem(for:)(v25).value._object, , (*(v34 + 8))(v14, v36), v26))
  {
    v27 = String.lowercased()();
    countAndFlagsBits = v27._countAndFlagsBits;
    object = v27._object;
  }

  else
  {
    object = 0xE700000000000000;
    countAndFlagsBits = 0x6E776F6E6B6E75;
  }

  v30 = sub_1003E1248(v3, v1);
  v32 = v31;
  v37 = *(v1 + 328);
  __chkstk_darwin(v30);
  *(&v33 - 4) = v1;
  *(&v33 - 3) = countAndFlagsBits;
  *(&v33 - 2) = object;
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  sub_1003E0524(countAndFlagsBits, object, v30, v32);

  sub_10004A100();
  sub_10000536C();
}

uint64_t sub_1003E1248(void *a1, void (*a2)(char *, uint64_t))
{
  v71 = a2;
  v78 = a1;
  v2 = sub_10022C350(&qword_100CB5268, &unk_100A53480);
  v72 = *(v2 - 8);
  __chkstk_darwin(v2);
  v76 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v61 - v5;
  v6 = type metadata accessor for Logger();
  v73 = *(v6 - 8);
  v74 = v6;
  __chkstk_darwin(v6);
  v77 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v62 = &v61 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URLHandlerMatch();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CB5478, &qword_100A48D80);
  __chkstk_darwin(v18 - 8);
  v20 = &v61 - v19;
  v21 = type metadata accessor for URLComponents();
  v70 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v2;
  URLHandlerContext.match.getter();
  URLHandlerMatch.url.getter();
  v63 = *(v15 + 8);
  v64 = v17;
  v68 = v14;
  v66 = v15 + 8;
  v63(v17, v14);
  URL.absoluteString.getter();
  v24 = *(v11 + 8);
  v65 = v13;
  v69 = v10;
  v67 = v11 + 8;
  v24(v13, v10);
  v25 = v21;
  URLComponents.init(string:)();

  if (sub_100024D10(v20, 1, v21) == 1)
  {
    sub_1000180EC(v20, &qword_100CB5478, &qword_100A48D80);
    static Logger.privacy.getter();
    v26 = v72;
    v27 = v75;
    (*(v72 + 16))(v76, v78, v75);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v27;
      v31 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79[0] = v78;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      v32 = v24;
      v33 = v64;
      v34 = v76;
      URLHandlerContext.match.getter();
      v35 = v65;
      URLHandlerMatch.url.getter();
      v63(v33, v68);
      v36 = URL.absoluteString.getter();
      v38 = v37;
      v32(v35, v69);
      (*(v26 + 8))(v34, v30);
      v39 = sub_100078694(v36, v38, v79);

      *(v31 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to obtain url components from url. url=%{private,mask.hash}s", v31, 0x16u);
      sub_100006F14(v78);
    }

    else
    {

      (*(v26 + 8))(v76, v27);
    }

    (*(v73 + 8))(v77, v74);
    return 0;
  }

  v40 = v78;
  v41 = v75;
  v42 = v70;
  (*(v70 + 32))(v23, v20, v25);
  v43 = URLComponents.queryItems.getter();
  sub_1003E1AB8(v43);

  URLComponents.queryItems.setter();
  v44 = URLComponents.string.getter();
  if (!v45)
  {
    v77 = v23;
    v47 = v62;
    static Logger.privacy.getter();
    v48 = v72;
    v49 = v61;
    v50 = v41;
    (*(v72 + 16))(v61, v40, v41);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79[0] = v78;
      *v53 = 141558275;
      *(v53 + 4) = 1752392040;
      *(v53 + 12) = 2081;
      v71 = v24;
      v54 = v64;
      LODWORD(v76) = v52;
      URLHandlerContext.match.getter();
      v55 = v65;
      URLHandlerMatch.url.getter();
      v63(v54, v68);
      v56 = URL.absoluteString.getter();
      v58 = v57;
      v71(v55, v69);
      (*(v48 + 8))(v49, v50);
      v59 = sub_100078694(v56, v58, v79);

      *(v53 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v51, v76, "Failed to obtain string from url components. url=%{private,mask.hash}s", v53, 0x16u);
      sub_100006F14(v78);

      (*(v73 + 8))(v62, v74);
    }

    else
    {

      (*(v48 + 8))(v49, v50);
      (*(v73 + 8))(v47, v74);
    }

    (*(v42 + 8))(v77, v25);
    return 0;
  }

  v46 = v44;
  (*(v42 + 8))(v23, v25);
  return v46;
}

void *sub_1003E1AB8(uint64_t a1)
{
  v70 = type metadata accessor for Logger();
  v2 = *(v70 - 8);
  __chkstk_darwin(v70);
  v72 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB5480, &qword_100A48D88);
  __chkstk_darwin(v4 - 8);
  v6 = v61 - v5;
  ParameterKey = type metadata accessor for WeatherQueryParameterKey();
  v7 = *(ParameterKey - 8);
  __chkstk_darwin(ParameterKey);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URLQueryItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v78 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v69 = v61 - v14;
  __chkstk_darwin(v15);
  v68 = v61 - v16;
  __chkstk_darwin(v17);
  v67 = v61 - v18;
  __chkstk_darwin(v19);
  v21 = v61 - v20;
  if (a1)
  {
    v22 = *(a1 + 16);
    if (v22)
    {
      v24 = *(v11 + 16);
      v23 = v11 + 16;
      v80 = v24;
      v25 = a1;
      v76 = (*(v23 + 64) + 32) & ~*(v23 + 64);
      v26 = (a1 + v76);
      v65 = (v7 + 32);
      v75 = *(v23 + 56);
      v64 = (v7 + 8);
      v73 = (v23 + 16);
      v74 = (v23 - 8);
      v63 = (v2 + 8);
      v61[1] = v25;

      v84 = _swiftEmptyArrayStorage;
      *&v27 = 136315138;
      v62 = v27;
      v28 = ParameterKey;
      v77 = v9;
      v81 = v21;
      v82 = v10;
      v79 = v23;
      v66 = v6;
      do
      {
        v29 = v80;
        v80(v21, v26, v10);
        URLQueryItem.name.getter();
        WeatherQueryParameterKey.init(rawValue:)();
        v30 = sub_100024D10(v6, 1, v28);
        v83 = v22;
        if (v30 == 1)
        {
          sub_1000180EC(v6, &qword_100CB5480, &qword_100A48D88);
          v31 = v72;
          static Logger.privacy.getter();
          v32 = v69;
          v29(v69, v21, v10);
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = v32;
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v85 = v37;
            *v36 = v62;
            v38 = URLQueryItem.name.getter();
            v40 = v39;
            v41 = *v74;
            (*v74)(v35, v82);
            v42 = v38;
            v29 = v80;
            v43 = sub_100078694(v42, v40, &v85);
            v10 = v82;

            *(v36 + 4) = v43;
            _os_log_impl(&_mh_execute_header, v33, v34, "Encountered an unrecognized url query item key. key=%s", v36, 0xCu);
            sub_100006F14(v37);

            (*v63)(v72, v70);
          }

          else
          {

            v41 = *v74;
            (*v74)(v32, v10);
            (*v63)(v31, v70);
          }

          v29(v78, v81, v10);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v6 = v66;
          v28 = ParameterKey;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10069F478();
            v84 = v54;
          }

          v46 = v84[2];
          v47 = v46 + 1;
          if (v46 >= v84[3] >> 1)
          {
            sub_10069F478();
            v84 = v55;
          }

          v48 = v78;
        }

        else
        {
          (*v65)(v9, v6, v28);
          if (WeatherQueryParameterKey.shouldRedact.getter())
          {
            WeatherQueryParameterKey.rawValue.getter();
            URLQueryItem.init(name:value:)();

            v44 = swift_isUniquelyReferenced_nonNull_native();
            v45 = v74;
            if ((v44 & 1) == 0)
            {
              sub_10069F478();
              v84 = v56;
            }

            v46 = v84[2];
            v47 = v46 + 1;
            if (v46 >= v84[3] >> 1)
            {
              sub_10069F478();
              v84 = v57;
            }

            (*v64)(v9, v28);
            v41 = *v45;
            v48 = v67;
          }

          else
          {
            v80(v68, v21, v10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10069F478();
              v84 = v58;
            }

            v50 = v74;
            v46 = v84[2];
            v47 = v46 + 1;
            if (v46 >= v84[3] >> 1)
            {
              sub_10069F478();
              v84 = v59;
            }

            (*v64)(v9, v28);
            v41 = *v50;
            v48 = v68;
          }
        }

        v51 = v81;
        v10 = v82;
        v41(v81, v82);
        v21 = v51;
        v52 = v84;
        v84[2] = v47;
        v53 = v75;
        (*v73)(v52 + v76 + v46 * v75, v48, v10);
        v26 += v53;
        v22 = v83 - 1;
        v9 = v77;
      }

      while (v83 != 1);

      return v84;
    }

    else
    {
    }
  }

  return a1;
}

uint64_t sub_1003E2258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for StartMethod();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  *(a1 + 336) = 1;

  StartMethod.init(referringApplication:)();
  v11 = OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_startMethod;
  swift_beginAccess();
  (*(v6 + 40))(a1 + v11, v10, started);
  return swift_endAccess();
}

uint64_t SessionEventsAndDataCoordinator.appConfigurationDidRefresh(_:)()
{
  swift_allocObject();
  swift_weakInit();

  asyncMain(block:)();
}

uint64_t SessionEventsAndDataCoordinator.updateTypes.getter()
{
  sub_10022C350(&qword_100CB5270, &qword_100A48A30);
  updated = type metadata accessor for LocationManagerUpdateType();
  sub_1000037C4();
  v2 = v1;
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  (*(v2 + 104))(v4 + v3, enum case for LocationManagerUpdateType.authorization(_:), updated);
  return v4;
}

uint64_t SessionEventsAndDataCoordinator.authorizationDidChange(_:authorizationStatus:)()
{
  swift_allocObject();
  swift_weakInit();

  asyncMain(block:)();
}

uint64_t sub_1003E2550(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10004A100();
  }

  return result;
}

uint64_t sub_1003E2674(void *a1)
{
  v2 = [a1 sourceApplication];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1003E2720(uint64_t a1)
{
  result = sub_100068374(&qword_100CB5278, type metadata accessor for SessionEventsAndDataCoordinator, protocol conformance descriptor for SessionEventsAndDataCoordinator);
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionEventsAndDataCoordinator.SessionPurpose(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1003E2860()
{
  result = qword_100CB53B8;
  if (!qword_100CB53B8)
  {
    result = swift_getWitnessTable(byte_100A48D20, &type metadata for SessionEventsAndDataCoordinator.SessionPurpose, v0, v1);
    atomic_store(result, &qword_100CB53B8);
  }

  return result;
}

uint64_t sub_1003E2948@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v46 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  v45 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = (&v37 - v4);
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v42 = v7;
  v43 = v6;
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CB5560, &qword_100A48E30);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v38 = sub_10022C350(&qword_100CB5568, &qword_100A48E38);
  sub_1000037E8();
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  sub_10022C350(&qword_100CB5570, &qword_100A48E40);
  sub_1000037C4();
  v39 = v20;
  v40 = v21;
  __chkstk_darwin(v20);
  v23 = &v37 - v22;
  *v19 = static VerticalAlignment.center.getter();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v24 = &v19[*(sub_10022C350(&qword_100CB5578, &qword_100A48E48) + 44)];
  *v16 = static HorizontalAlignment.leading.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v25 = sub_10022C350(&qword_100CB5580, &qword_100A48E50);
  v26 = v41;
  sub_1003E2E40(v41, &v16[*(v25 + 44)]);
  *&v16[*(v11 + 44)] = 0x3FF0000000000000;
  sub_1000955E0(v16, v13, &qword_100CB5560, &qword_100A48E30);
  sub_1000955E0(v13, v24, &qword_100CB5560, &qword_100A48E30);
  v27 = v24 + *(sub_10022C350(&qword_100CB5588, &qword_100A48E58) + 48);
  *v27 = 0;
  *(v27 + 8) = 0;
  sub_1000180EC(v16, &qword_100CB5560, &qword_100A48E30);
  sub_1000180EC(v13, &qword_100CB5560, &qword_100A48E30);
  static AccessibilityChildBehavior.combine.getter();
  v28 = sub_100006F64(&qword_100CB5590, &qword_100CB5568, &qword_100A48E38, &protocol conformance descriptor for HStack<A>);
  v29 = v38;
  View.accessibilityElement(children:)();
  (*(v42 + 8))(v9, v43);
  sub_1000180EC(v19, &qword_100CB5568, &qword_100A48E38);
  v47 = v29;
  v48 = v28;
  swift_getOpaqueTypeConformance2();
  v30 = v44;
  v31 = v39;
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v40 + 8))(v23, v31);
  v32 = *(v26 + 48);
  *v5 = *(v26 + 40);
  v5[1] = v32;
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v33 = v45;
  sub_1003E745C(v5, v45, type metadata accessor for AutomationInfo);
  v34 = v30 + *(sub_10022C350(&qword_100CB5598, &qword_100A48E60) + 36);
  v35 = type metadata accessor for AutomationInfoProperty(0);
  sub_1003E745C(v33, v34 + *(v35 + 24), type metadata accessor for AutomationInfo);

  sub_1003E74BC(v33, type metadata accessor for AutomationInfo);
  sub_1003E74BC(v5, type metadata accessor for AutomationInfo);
  *v34 = 0;
  *(v34 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v34 + 16) = result;
  *(v34 + 24) = 0;
  return result;
}

uint64_t sub_1003E2E40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v51 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Description(0);
  __chkstk_darwin(v54);
  v56 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v47 - v7;
  v8 = type metadata accessor for Font.Leading();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Font.TextStyle();
  v10 = *(v47 - 8);
  __chkstk_darwin(v47);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WeatherAlert.Prominence();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SevereAlertComponentViewModel(0);
  (*(v14 + 16))(v16, a1 + *(v17 + 36), v13);
  v18 = (*(v14 + 88))(v16, v13);
  v19 = enum case for WeatherAlert.Prominence.low(_:);
  (*(v14 + 8))(v16, v13);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (v18 == v19)
  {
    v24 = *(a1 + 48);
    v58 = *(a1 + 40);
    v59 = v24;
    sub_10002D5A4();

    v25 = Text.init<A>(_:)();
    v27 = v26;
    v29 = v28;
    v30 = v47;
    (*(v10 + 104))(v12, enum case for Font.TextStyle.title3(_:), v47);
    static Font.Weight.bold.getter();
    static Font.system(_:weight:)();
    (*(v10 + 8))(v12, v30);
    v32 = v48;
    v31 = v49;
    v33 = v50;
    (*(v49 + 104))(v48, enum case for Font.Leading.tight(_:), v50);
    Font.leading(_:)();

    (*(v31 + 8))(v32, v33);
    v34 = v27;
    v20 = Text.font(_:)();
    v21 = v35;
    LOBYTE(v33) = v36;
    v23 = v37;

    sub_10010CD64(v25, v34, v29 & 1);

    v22 = v33 & 1;
    sub_10010CD54(v20, v21, v33 & 1);
  }

  v38 = v55;
  sub_1003E745C(a1, v55, type metadata accessor for SevereAlertComponentViewModel);
  v39 = a1 + *(type metadata accessor for SevereAlertComponentView(0) + 20);
  v40 = *v39;
  if (*(v39 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v42 = v51;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v40, 0);
    (*(v52 + 8))(v42, v53);
    LOBYTE(v40) = v58;
  }

  *(v38 + *(v54 + 20)) = 1u >> (v40 & 7);
  v43 = v56;
  sub_1003E745C(v38, v56, type metadata accessor for Description);
  v44 = v57;
  *v57 = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  v45 = sub_10022C350(&qword_100CB55A0, &qword_100A48E90);
  sub_1003E745C(v43, v44 + *(v45 + 48), type metadata accessor for Description);
  sub_100148118(v20, v21, v22, v23);
  sub_10014A53C(v20, v21, v22, v23);
  sub_1003E74BC(v38, type metadata accessor for Description);
  sub_1003E74BC(v43, type metadata accessor for Description);
  return sub_10014A53C(v20, v21, v22, v23);
}

uint64_t sub_1003E3474@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v27 = type metadata accessor for ProminentPadDescription(0);
  __chkstk_darwin(v27);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10022C350(&qword_100CB5650, &qword_100A48F00);
  __chkstk_darwin(v29);
  v31 = &v25 - v3;
  v4 = sub_10022C350(&qword_100CB5658, &qword_100A48F08);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v30 = sub_10022C350(&qword_100CB5660, &qword_100A48F10);
  __chkstk_darwin(v30);
  v8 = &v25 - v7;
  v28 = type metadata accessor for StandardDescription(0);
  __chkstk_darwin(v28);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CB5668, &qword_100A48F18);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = *(type metadata accessor for SevereAlertComponentViewModel(0) + 36);
  v15 = *(v1 + *(type metadata accessor for Description(0) + 20));
  v16 = type metadata accessor for WeatherAlert.Prominence();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v13, v1 + v14, v16);
  if (v15 == 1)
  {
    (*(v17 + 8))(v13, v16);
  }

  else
  {
    v21 = (*(v17 + 88))(v13, v16);
    if (v21 == enum case for WeatherAlert.Prominence.high(_:))
    {
      v22 = v26;
      sub_1003E745C(v1, v26, type metadata accessor for SevereAlertComponentViewModel);
      sub_1003E745C(v22, v6, type metadata accessor for ProminentPadDescription);
      swift_storeEnumTagMultiPayload();
      sub_1003E7798(&qword_100CB5678, type metadata accessor for StandardDescription, byte_100A48FE0);
      sub_1003E7798(&qword_100CB5680, type metadata accessor for ProminentPadDescription, byte_100A48F90);
      _ConditionalContent<>.init(storage:)();
      sub_1000955E0(v8, v31, &qword_100CB5660, &qword_100A48F10);
      swift_storeEnumTagMultiPayload();
      sub_1003E783C();
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v8, &qword_100CB5660, &qword_100A48F10);
      v19 = type metadata accessor for ProminentPadDescription;
      v20 = v22;
      return sub_1003E74BC(v20, v19);
    }

    if (v21 != enum case for WeatherAlert.Prominence.low(_:))
    {
      sub_1003E745C(v1, v10, type metadata accessor for SevereAlertComponentViewModel);
      v24 = &v10[*(v28 + 20)];
      *v24 = swift_getKeyPath();
      v24[8] = 0;
      sub_1003E745C(v10, v31, type metadata accessor for StandardDescription);
      swift_storeEnumTagMultiPayload();
      sub_1003E783C();
      sub_1003E7798(&qword_100CB5678, type metadata accessor for StandardDescription, byte_100A48FE0);
      _ConditionalContent<>.init(storage:)();
      sub_1003E74BC(v10, type metadata accessor for StandardDescription);
      return (*(v17 + 8))(v13, v16);
    }
  }

  sub_1003E745C(v1, v10, type metadata accessor for SevereAlertComponentViewModel);
  v18 = &v10[*(v28 + 20)];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  sub_1003E745C(v10, v6, type metadata accessor for StandardDescription);
  swift_storeEnumTagMultiPayload();
  sub_1003E7798(&qword_100CB5678, type metadata accessor for StandardDescription, byte_100A48FE0);
  sub_1003E7798(&qword_100CB5680, type metadata accessor for ProminentPadDescription, byte_100A48F90);
  _ConditionalContent<>.init(storage:)();
  sub_1000955E0(v8, v31, &qword_100CB5660, &qword_100A48F10);
  swift_storeEnumTagMultiPayload();
  sub_1003E783C();
  _ConditionalContent<>.init(storage:)();
  sub_1000180EC(v8, &qword_100CB5660, &qword_100A48F10);
  v19 = type metadata accessor for StandardDescription;
  v20 = v10;
  return sub_1003E74BC(v20, v19);
}

uint64_t sub_1003E3B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_10022C350(&qword_100CB5840, &qword_100A49120);
  __chkstk_darwin(v3 - 8);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = (&v44 - v6);
  v7 = type metadata accessor for ProminentPadBulletedDescription(0);
  __chkstk_darwin(v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CB5848, &qword_100A49128);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  __chkstk_darwin(v16);
  v18 = &v44 - v17;
  __chkstk_darwin(v19);
  v21 = &v44 - v20;
  __chkstk_darwin(v22);
  v24 = &v44 - v23;
  __chkstk_darwin(v25);
  v27 = &v44 - v26;
  v28 = *(*(a1 + 32) + 16);
  v49 = &v44 - v26;
  if (v28 < 4)
  {
    sub_10001B350(&v44 - v26, 1, 1, v7);
    if (v28 != 3)
    {
      v43 = v24;
      v30 = 1;
      v29 = v43;
      sub_10001B350(v43, 1, 1, v7);
      if (v28 < 2)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else
  {
    sub_1003E745C(a1, v9, type metadata accessor for SevereAlertComponentViewModel);
    *&v9[*(v7 + 20)] = 4;
    *&v9[*(v7 + 24)] = 0x4018000000000000;
    sub_1003E7C54(v9, v27);
    sub_10001B350(v27, 0, 1, v7);
  }

  sub_1003E745C(a1, v9, type metadata accessor for SevereAlertComponentViewModel);
  *&v9[*(v7 + 20)] = 3;
  *&v9[*(v7 + 24)] = 0x4018000000000000;
  sub_1003E7C54(v9, v24);
  v29 = v24;
  sub_10001B350(v24, 0, 1, v7);
LABEL_5:
  sub_1003E745C(a1, v9, type metadata accessor for SevereAlertComponentViewModel);
  *&v9[*(v7 + 20)] = 2;
  *&v9[*(v7 + 24)] = 0x4018000000000000;
  sub_1003E7C54(v9, v21);
  v30 = 0;
LABEL_6:
  sub_10001B350(v21, v30, 1, v7);
  v31 = static HorizontalAlignment.leading.getter();
  v32 = v46;
  *v46 = v31;
  *(v32 + 8) = 0;
  *(v32 + 16) = 1;
  v33 = v32 + *(sub_10022C350(&qword_100CB5850, &qword_100A49130) + 44);
  sub_1003E745C(a1, v33, type metadata accessor for SevereAlertComponentViewModel);
  v34 = v33 + *(type metadata accessor for ProminentPadSingleDescription(0) + 20);
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
  sub_1000955E0(v49, v18, &qword_100CB5848, &qword_100A49128);
  v35 = v29;
  sub_1000955E0(v29, v15, &qword_100CB5848, &qword_100A49128);
  sub_1000955E0(v21, v12, &qword_100CB5848, &qword_100A49128);
  v36 = v47;
  sub_1000955E0(v32, v47, &qword_100CB5840, &qword_100A49120);
  v37 = v18;
  v45 = v18;
  v38 = v15;
  v39 = v12;
  v40 = v48;
  sub_1000955E0(v37, v48, &qword_100CB5848, &qword_100A49128);
  v41 = sub_10022C350(&qword_100CB5858, &qword_100A49138);
  sub_1000955E0(v38, v40 + v41[12], &qword_100CB5848, &qword_100A49128);
  sub_1000955E0(v39, v40 + v41[16], &qword_100CB5848, &qword_100A49128);
  sub_1000955E0(v36, v40 + v41[20], &qword_100CB5840, &qword_100A49120);
  sub_1000180EC(v32, &qword_100CB5840, &qword_100A49120);
  sub_1000180EC(v21, &qword_100CB5848, &qword_100A49128);
  sub_1000180EC(v35, &qword_100CB5848, &qword_100A49128);
  sub_1000180EC(v49, &qword_100CB5848, &qword_100A49128);
  sub_1000180EC(v36, &qword_100CB5840, &qword_100A49120);
  sub_1000180EC(v39, &qword_100CB5848, &qword_100A49128);
  sub_1000180EC(v38, &qword_100CB5848, &qword_100A49128);
  return sub_1000180EC(v45, &qword_100CB5848, &qword_100A49128);
}

uint64_t sub_1003E4100@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_10022C350(&qword_100CB59C0, &qword_100A49240);
  return sub_1003E4154(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_1003E4154@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v73 = type metadata accessor for Font.Leading();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v4 - 8);
  v67 = v62 - v5;
  v6 = type metadata accessor for Font.TextStyle();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v64 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10022C350(&qword_100CA4000, &qword_100A4AB20) - 8;
  __chkstk_darwin(v74);
  v75 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = v62 - v10;
  v11 = type metadata accessor for ProminentPadBulletedDescription(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v72 = sub_10022C350(&qword_100CB59C8, &unk_100A49248);
  v77 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v63 = v62 - v17;
  v18 = *(a1 + 32);
  v19 = *(a1 + *(v12 + 28));

  v78 = sub_1002B0A68(v19, v18);
  v79 = v20;
  v80 = v21;
  v81 = v22;
  v62[1] = swift_getKeyPath();
  sub_1003E745C(a1, v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProminentPadBulletedDescription);
  v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v24 = swift_allocObject();
  sub_1003E7C54(v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  sub_10022C350(&qword_100CB59D0, &qword_100A49270);
  sub_10022C350(&qword_100CB59D8, &qword_100A49278);
  sub_100006F64(&qword_100CB59E0, &qword_100CB59D0, &qword_100A49270, &protocol conformance descriptor for ArraySlice<A>);
  sub_100006F64(&qword_100CB59E8, &qword_100CB59D8, &qword_100A49278, &protocol conformance descriptor for TupleView<A>);
  ForEach<>.init(_:id:content:)();
  v78 = sub_1005027C4(v19);
  v79 = v25;
  sub_10002D5A4();
  v26 = Text.init<A>(_:)();
  v28 = v27;
  LOBYTE(v14) = v29;
  v31 = v64;
  v30 = v65;
  v32 = v66;
  (*(v65 + 104))(v64, enum case for Font.TextStyle.footnote(_:), v66);
  v33 = type metadata accessor for Font.Design();
  v34 = v67;
  sub_10001B350(v67, 1, 1, v33);
  static Font.system(_:design:weight:)();
  sub_1000180EC(v34, &qword_100CA4020, &qword_100A2E080);
  (*(v30 + 8))(v31, v32);
  v36 = v70;
  v35 = v71;
  v37 = v73;
  (*(v71 + 104))(v70, enum case for Font.Leading.tight(_:), v73);
  Font.leading(_:)();

  (*(v35 + 8))(v36, v37);
  v38 = Text.font(_:)();
  v40 = v39;
  LOBYTE(v35) = v41;

  sub_10010CD64(v26, v28, v14 & 1);

  LODWORD(v78) = static HierarchicalShapeStyle.tertiary.getter();
  v42 = Text.foregroundStyle<A>(_:)();
  v44 = v43;
  LOBYTE(v32) = v45;
  v47 = v46;
  sub_10010CD64(v38, v40, v35 & 1);

  v48 = *(v74 + 44);
  v49 = enum case for BlendMode.plusLighter(_:);
  v50 = type metadata accessor for BlendMode();
  v51 = v68;
  (*(*(v50 - 8) + 104))(&v68[v48], v49, v50);
  *v51 = v42;
  *(v51 + 8) = v44;
  *(v51 + 16) = v32 & 1;
  *(v51 + 24) = v47;
  v52 = *(v77 + 16);
  v53 = v69;
  v54 = v63;
  v55 = v72;
  v52(v69, v63, v72);
  v56 = v75;
  sub_1000955E0(v51, v75, &qword_100CA4000, &qword_100A4AB20);
  v57 = v76;
  v52(v76, v53, v55);
  v58 = sub_10022C350(&qword_100CB59F0, &qword_100A49280);
  v59 = &v57[*(v58 + 48)];
  *v59 = 0x4014000000000000;
  v59[8] = 0;
  sub_1000955E0(v56, &v57[*(v58 + 64)], &qword_100CA4000, &qword_100A4AB20);
  sub_1000180EC(v51, &qword_100CA4000, &qword_100A4AB20);
  v60 = *(v77 + 8);
  v60(v54, v55);
  sub_1000180EC(v56, &qword_100CA4000, &qword_100A4AB20);
  return (v60)(v53, v55);
}

uint64_t sub_1003E492C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + *(type metadata accessor for ProminentPadBulletedDescription(0) + 24));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = v17;
  v7 = v19;
  v8 = v21;
  v9 = v22;
  v25 = 1;
  v24 = v18;
  v23 = v20;
  v10 = static VerticalAlignment.top.getter();
  v15[0] = 0;
  sub_1003E4B14(v4, v5, __src);
  memcpy(__dst, __src, 0xE1uLL);
  memcpy(v27, __src, 0xE1uLL);
  sub_1000955E0(__dst, v28, &qword_100CB59F8, &qword_100A49288);
  sub_1000180EC(v27, &qword_100CB59F8, &qword_100A49288);
  memcpy(&v16[7], __dst, 0xE1uLL);
  v11 = v18;
  v12 = v20;
  v28[0] = v10;
  v28[1] = v6;
  LOBYTE(v28[2]) = 0;
  memcpy(&v28[2] + 1, v16, 0xE8uLL);
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = v14;
  *(a3 + 24) = v11;
  *(a3 + 32) = v7;
  *(a3 + 40) = v12;
  *(a3 + 48) = v8;
  *(a3 + 56) = v9;
  memcpy((a3 + 64), v28, 0xF9uLL);
  __src[0] = v10;
  __src[1] = v6;
  LOBYTE(__src[2]) = 0;
  memcpy(&__src[2] + 1, v16, 0xE8uLL);
  sub_1000955E0(v28, v15, &qword_100CB5A00, &qword_100A49290);
  return sub_1000180EC(__src, &qword_100CB5A00, &qword_100A49290);
}

uint64_t sub_1003E4B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v22 = a3;
  v5 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v5 - 8);
  v7 = &v23[-1] - v6;
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, enum case for Font.TextStyle.title3(_:), v8, v10);
  v13 = type metadata accessor for Font.Design();
  sub_10001B350(v7, 1, 1, v13);
  static Font.system(_:design:weight:)();
  sub_1000180EC(v7, &qword_100CA4020, &qword_100A2E080);
  (*(v9 + 8))(v12, v8);
  v14 = Text.font(_:)();
  v16 = v15;
  LOBYTE(v7) = v17;
  v19 = v18;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v12) = v7 & 1;
  v20 = static HorizontalAlignment.center.getter();
  LOBYTE(v23[0]) = 1;
  sub_1003E4F18(a1, a2, __src);
  memcpy(v36, __src, 0x79uLL);
  memcpy(v37, __src, 0x79uLL);
  sub_1000955E0(v36, v39, &qword_100CB5A08, &qword_100A49298);
  sub_1000180EC(v37, &qword_100CB5A08, &qword_100A49298);
  memcpy(&v34[7], v36, 0x79uLL);
  LOBYTE(a2) = v23[0];
  *&v38[0] = v14;
  *(&v38[0] + 1) = v16;
  LOBYTE(v38[1]) = v12;
  *(&v38[1] + 1) = v35[0];
  DWORD1(v38[1]) = *(v35 + 3);
  *(&v38[1] + 1) = v19;
  v38[2] = v31;
  v38[3] = v32;
  v38[4] = v33;
  memcpy(v30, v38, 0x50uLL);
  v39[0] = v20;
  v39[1] = 0;
  LOBYTE(v39[2]) = v23[0];
  memcpy(&v39[2] + 1, v34, 0x80uLL);
  memcpy(&v30[80], v39, 0x91uLL);
  memcpy(v22, v30, 0xE1uLL);
  __src[0] = v20;
  __src[1] = 0;
  LOBYTE(__src[2]) = a2;
  memcpy(&__src[2] + 1, v34, 0x80uLL);
  sub_1000955E0(v38, v23, &qword_100CB5A10, &qword_100A492A0);
  sub_1000955E0(v39, v23, &qword_100CB5A18, &qword_100A492A8);
  sub_1000180EC(__src, &qword_100CB5A18, &qword_100A492A8);
  v23[0] = v14;
  v23[1] = v16;
  v24 = v12;
  *v25 = v35[0];
  *&v25[3] = *(v35 + 3);
  v26 = v19;
  v27 = v31;
  v28 = v32;
  v29 = v33;
  return sub_1000180EC(v23, &qword_100CB5A10, &qword_100A492A0);
}

uint64_t sub_1003E4F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v43 = type metadata accessor for Font.Leading();
  v5 = *(v43 - 8);
  __chkstk_darwin(v43);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for Font.TextStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v46 = v54;
  v47 = v52;
  v44 = v57;
  v45 = v56;
  v60 = 1;
  v59 = v53;
  v58 = v55;
  v64 = v42;
  v65 = a2;
  sub_10002D5A4();

  v15 = Text.init<A>(_:)();
  v41 = v16;
  v42 = v15;
  v18 = v17;
  v40 = v19;
  (*(v12 + 104))(v14, enum case for Font.TextStyle.subheadline(_:), v11);
  v20 = type metadata accessor for Font.Design();
  sub_10001B350(v10, 1, 1, v20);
  static Font.system(_:design:weight:)();
  sub_1000180EC(v10, &qword_100CA4020, &qword_100A2E080);
  (*(v12 + 8))(v14, v11);
  v21 = v43;
  (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v43);
  Font.leading(_:)();

  (*(v5 + 8))(v7, v21);
  v22 = v41;
  v23 = v42;
  v24 = Text.font(_:)();
  v26 = v25;
  LOBYTE(a2) = v27;
  v43 = v28;

  sub_10010CD64(v23, v22, v18 & 1);

  KeyPath = swift_getKeyPath();
  v30 = v59;
  v31 = v58;
  *&v61 = v24;
  *(&v61 + 1) = v26;
  LOBYTE(v62) = a2 & 1;
  v32 = *v51;
  *(&v62 + 1) = *v51;
  DWORD1(v62) = *&v51[3];
  v33 = v43;
  *(&v62 + 1) = v43;
  WORD3(v63[0]) = v50;
  v34 = v49;
  *(v63 + 2) = v49;
  LOWORD(v63[0]) = 256;
  *(a3 + 8) = v60;
  *(&v63[0] + 1) = KeyPath;
  *&v63[1] = 2;
  BYTE8(v63[1]) = 0;
  *a3 = 0;
  *(a3 + 16) = v47;
  *(a3 + 24) = v30;
  *(a3 + 32) = v46;
  *(a3 + 40) = v31;
  v35 = v44;
  *(a3 + 48) = v45;
  *(a3 + 56) = v35;
  v36 = v61;
  v37 = v62;
  v38 = v63[0];
  *(a3 + 105) = *(v63 + 9);
  *(a3 + 80) = v37;
  *(a3 + 96) = v38;
  *(a3 + 64) = v36;
  v64 = v24;
  v65 = v26;
  v66 = a2 & 1;
  *&v67[3] = *&v51[3];
  *v67 = v32;
  v68 = v33;
  v69 = 256;
  v71 = v50;
  v70 = v34;
  v72 = KeyPath;
  v73 = 2;
  v74 = 0;
  sub_1000955E0(&v61, &v48, &qword_100CB5830, &qword_100A49110);
  return sub_1000180EC(&v64, &qword_100CB5830, &qword_100A49110);
}

uint64_t sub_1003E5388@<X0>(void *a1@<X8>)
{
  v86 = a1;
  v84 = sub_10022C350(&qword_100CA4000, &qword_100A4AB20);
  __chkstk_darwin(v84);
  v87 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v85 = &v65 - v4;
  v5 = type metadata accessor for EnvironmentValues();
  v72 = *(v5 - 8);
  v73 = v5;
  __chkstk_darwin(v5);
  v65 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Font.Leading();
  v90 = *(v7 - 8);
  __chkstk_darwin(v7);
  v88 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - v10;
  v89 = type metadata accessor for Font.TextStyle();
  v12 = *(v89 - 8);
  __chkstk_darwin(v89);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v74) = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v81 = v110;
  v82 = v108;
  v79 = v113;
  v80 = v112;
  v107 = 1;
  v106 = v109;
  v105 = v111;
  sub_10022C350(&qword_100CB59A8, &qword_100A4D640);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100A2D320;
  v16 = static Axis.Set.horizontal.getter();
  *(v15 + 32) = v16;
  v17 = static Axis.Set.vertical.getter();
  *(v15 + 33) = v17;
  v18 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v16)
  {
    v18 = Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() == v17)
  {
    v83 = v18;
  }

  else
  {
    v83 = Axis.Set.init(rawValue:)();
  }

  sub_1003E5D28(v1, v101);
  *&__src[7] = v101[0];
  *&__src[23] = v101[1];
  *&__src[39] = v101[2];
  *&__src[55] = v101[3];
  v19 = v89;
  v71 = *(v12 + 104);
  v71(v14, enum case for Font.TextStyle.subheadline(_:), v89);
  v70 = type metadata accessor for Font.Design();
  sub_10001B350(v11, 1, 1, v70);
  static Font.system(_:design:weight:)();
  sub_1000180EC(v11, &qword_100CA4020, &qword_100A2E080);
  v20 = *(v12 + 8);
  v77 = v12 + 8;
  v69 = v20;
  v20(v14, v19);
  v21 = v90;
  v22 = *(v90 + 104);
  v23 = v88;
  v68 = enum case for Font.Leading.tight(_:);
  v67 = v22;
  v22(v88);
  v76 = Font.leading(_:)();

  v24 = *(v21 + 8);
  v78 = v7;
  v90 = v21 + 8;
  v66 = v24;
  v24(v23, v7);
  KeyPath = swift_getKeyPath();
  v25 = v1 + *(type metadata accessor for ProminentPadSingleDescription(0) + 20);
  v26 = *v25;
  if (v25[8] == 1)
  {
    v100 = v26 & 1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v28 = v65;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v26, 0);
    (*(v72 + 8))(v28, v73);
    LOBYTE(v26) = v100;
  }

  LODWORD(v72) = (v26 & 1) == 0;
  v29 = swift_getKeyPath();
  __src[72] = 0;
  v30 = 0x4014000000000000;
  if (v74)
  {
    v30 = 0;
  }

  v73 = v29;
  v74 = v30;
  v92[0] = sub_1005027C4(*(v1[4] + 16));
  v92[1] = v31;
  sub_10002D5A4();
  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  v37 = v89;
  v71(v14, enum case for Font.TextStyle.footnote(_:), v89);
  sub_10001B350(v11, 1, 1, v70);
  static Font.system(_:design:weight:)();
  sub_1000180EC(v11, &qword_100CA4020, &qword_100A2E080);
  v69(v14, v37);
  v38 = v88;
  v39 = v78;
  v67(v88, v68, v78);
  Font.leading(_:)();

  v66(v38, v39);
  v40 = Text.font(_:)();
  v42 = v41;
  LOBYTE(v39) = v43;

  sub_10010CD64(v32, v34, v36 & 1);

  LODWORD(v92[0]) = static HierarchicalShapeStyle.tertiary.getter();
  v44 = Text.foregroundStyle<A>(_:)();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_10010CD64(v40, v42, v39 & 1);

  v51 = *(v84 + 36);
  v52 = enum case for BlendMode.plusLighter(_:);
  v53 = type metadata accessor for BlendMode();
  v54 = v85;
  (*(*(v53 - 8) + 104))(&v85[v51], v52, v53);
  *v54 = v44;
  *(v54 + 8) = v46;
  *(v54 + 16) = v48 & 1;
  *(v54 + 24) = v50;
  LOBYTE(v52) = v107;
  LOBYTE(v51) = v106;
  v55 = v105;
  v56 = v87;
  sub_1000955E0(v54, v87, &qword_100CA4000, &qword_100A4AB20);
  v57 = v86;
  *v86 = 0;
  *(v57 + 8) = v52;
  v58 = v81;
  v57[2] = v82;
  *(v57 + 24) = v51;
  v57[4] = v58;
  *(v57 + 40) = v55;
  v59 = v79;
  v57[6] = v80;
  v57[7] = v59;
  LOBYTE(v39) = v83;
  LOBYTE(v91[0]) = v83;
  memcpy(v91 + 1, __src, 0x47uLL);
  v60 = KeyPath;
  v61 = v76;
  v91[9] = KeyPath;
  v91[10] = v76;
  LOBYTE(v91[11]) = 0;
  LOBYTE(v46) = v72;
  BYTE1(v91[11]) = v72;
  *(&v91[11] + 2) = v103;
  HIWORD(v91[11]) = v104;
  v62 = v73;
  v91[12] = v73;
  v91[13] = 4;
  LOBYTE(v91[14]) = 0;
  memcpy(v57 + 8, v91, 0x71uLL);
  v57[23] = v74;
  *(v57 + 192) = 0;
  v63 = sub_10022C350(&qword_100CB59B0, &qword_100A49230);
  sub_1000955E0(v56, v57 + *(v63 + 80), &qword_100CA4000, &qword_100A4AB20);
  sub_1000955E0(v91, v92, &qword_100CB59B8, &qword_100A49238);
  sub_1000180EC(v54, &qword_100CA4000, &qword_100A4AB20);
  sub_1000180EC(v56, &qword_100CA4000, &qword_100A4AB20);
  LOBYTE(v92[0]) = v39;
  memcpy(v92 + 1, __src, 0x47uLL);
  v92[9] = v60;
  v92[10] = v61;
  v93 = 0;
  v94 = v46;
  v95 = v103;
  v96 = v104;
  v97 = v62;
  v98 = 4;
  v99 = 0;
  return sub_1000180EC(v92, &qword_100CB59B8, &qword_100A49238);
}

uint64_t sub_1003E5D28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1[3])
  {
  }

  sub_10002D5A4();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v13 = v7 & 1;
  v18 = v7 & 1;
  v15 = v14 & 1;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v13;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v14 & 1;
  *(a2 + 56) = v16;
  sub_10010CD54(v3, v5, v13);

  sub_10010CD54(v10, v12, v15);

  sub_10010CD64(v10, v12, v15);

  sub_10010CD64(v3, v5, v18);
}

uint64_t sub_1003E5E7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, _BYTE *a4@<X8>)
{
  *a4 = static Axis.Set.vertical.getter();
  sub_10022C350(a1, a2);
  return a3(v4);
}

uint64_t sub_1003E5EE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CB57C0, &qword_100A49038);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_10022C350(&qword_100CB57C8, &qword_100A49040);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v20 - v14;
  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_10022C350(&qword_100CB57D0, &qword_100A49048);
  sub_1003E6128(a1, &v15[*(v16 + 44)]);
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = sub_10022C350(&qword_100CB57D8, &qword_100A49050);
  sub_1003E6A30(a1, &v9[*(v17 + 44)]);
  sub_1000955E0(v15, v12, &qword_100CB57C8, &qword_100A49040);
  sub_1000955E0(v9, v6, &qword_100CB57C0, &qword_100A49038);
  sub_1000955E0(v12, a2, &qword_100CB57C8, &qword_100A49040);
  v18 = sub_10022C350(&qword_100CB57E0, &qword_100A49058);
  sub_1000955E0(v6, a2 + *(v18 + 48), &qword_100CB57C0, &qword_100A49038);
  sub_1000180EC(v9, &qword_100CB57C0, &qword_100A49038);
  sub_1000180EC(v15, &qword_100CB57C8, &qword_100A49040);
  sub_1000180EC(v6, &qword_100CB57C0, &qword_100A49038);
  return sub_1000180EC(v12, &qword_100CB57C8, &qword_100A49040);
}

uint64_t sub_1003E6128@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v96 = a2;
  v91 = sub_10022C350(&qword_100CB57E8, &qword_100A49060);
  __chkstk_darwin(v91);
  v90 = &v80 - v3;
  v103 = sub_10022C350(&qword_100CB5818, &qword_100A490F8);
  __chkstk_darwin(v103);
  v92 = &v80 - v4;
  v5 = sub_10022C350(&qword_100CB5820, &qword_100A49100);
  __chkstk_darwin(v5 - 8);
  v105 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v104 = &v80 - v8;
  v9 = type metadata accessor for EnvironmentValues();
  v94 = *(v9 - 8);
  KeyPath = v9;
  __chkstk_darwin(v9);
  v81 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Font.Leading();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v99 = v132;
  v100 = v130;
  v97 = v135;
  v98 = v134;
  v138 = 1;
  v137 = v131;
  v136 = v133;
  v93 = a1;
  v15 = *a1;
  v16 = a1[1];
  v112 = v15;
  v113 = v16;
  v17 = sub_10002D5A4();

  v85 = v17;
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Font.subheadline.getter();
  v23 = *(v12 + 104);
  v84 = enum case for Font.Leading.tight(_:);
  v86 = v12 + 104;
  v83 = v23;
  v23(v14);
  Font.leading(_:)();

  v24 = *(v12 + 8);
  v87 = v14;
  v88 = v12 + 8;
  v25 = v14;
  v26 = v93;
  v89 = v11;
  v82 = v24;
  v24(v25, v11);
  v101 = Text.font(_:)();
  v102 = v27;
  v106 = v28;
  v30 = v29;

  sub_10010CD64(v18, v20, v22 & 1);

  v31 = v26 + *(type metadata accessor for StandardDescription(0) + 20);
  v32 = *v31;
  if (v31[8] == 1)
  {
    v124 = v32 & 1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v33 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v34 = v81;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v32, 0);
    (*(v94 + 8))(v34, KeyPath);
    v32 = v124;
  }

  KeyPath = swift_getKeyPath();
  LODWORD(v94) = v30 & 1;
  v129 = v30 & 1;
  v125 = 0;
  v35 = v26[8];
  if (v35)
  {
    v81 = v26[7];
    v112 = v81;
    v113 = v35;

    v36 = Text.init<A>(_:)();
    v93 = v32;
    v38 = v37;
    v40 = v39;
    LODWORD(v112) = static HierarchicalShapeStyle.tertiary.getter();
    v41 = Text.foregroundStyle<A>(_:)();
    v43 = v42;
    v45 = v44;
    v80 = v46;
    sub_10010CD64(v36, v38, v40 & 1);

    v47 = *(sub_10022C350(&qword_100CA4000, &qword_100A4AB20) + 36);
    v48 = enum case for BlendMode.plusLighter(_:);
    v49 = type metadata accessor for BlendMode();
    v50 = v90;
    (*(*(v49 - 8) + 104))(&v90[v47], v48, v49);
    *v50 = v41;
    *(v50 + 8) = v43;
    *(v50 + 16) = v45 & 1;
    *(v50 + 24) = v80;
    v51 = swift_getKeyPath();
    v52 = v50 + *(v91 + 36);
    *v52 = v51;
    *(v52 + 8) = 2;
    *(v52 + 16) = 0;
    v112 = v81;
    v113 = v35;
    *&v109 = 0x20A280E220;
    *(&v109 + 1) = 0xA500000000000000;
    v107 = 8236;
    v108 = 0xE200000000000000;
    v112 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v113 = v53;
    sub_1003E7AD8();
    v32 = v92;
    View.accessibilityLabel<A>(_:)();
    sub_1000180EC(v50, &qword_100CB57E8, &qword_100A49060);

    static Font.footnote.getter();
    v54 = v87;
    v55 = v89;
    v83(v87, v84, v89);
    v56 = Font.leading(_:)();

    v82(v54, v55);
    v57 = swift_getKeyPath();
    v58 = v103;
    v59 = v104;
    v60 = (v32 + *(v103 + 36));
    *v60 = v57;
    v60[1] = v56;
    v61 = v32;
    LOBYTE(v32) = v93;
    sub_10002F758(v61, v59, &qword_100CB5818, &qword_100A490F8);
    v62 = 0;
  }

  else
  {
    v62 = 1;
    v58 = v103;
    v59 = v104;
  }

  sub_10001B350(v59, v62, 1, v58);
  v63 = (v32 & 1) == 0;
  LODWORD(v104) = v63;
  v64 = v138;
  v65 = v137;
  v66 = v136;
  v67 = v105;
  sub_1000955E0(v59, v105, &qword_100CB5820, &qword_100A49100);
  v68 = v96;
  *v96 = 0;
  *(v68 + 8) = v64;
  v69 = v99;
  v68[2] = v100;
  *(v68 + 24) = v65;
  v68[4] = v69;
  *(v68 + 40) = v66;
  v70 = v97;
  v68[6] = v98;
  v68[7] = v70;
  v71 = v101;
  v72 = v102;
  *&v109 = v101;
  *(&v109 + 1) = v106;
  v73 = v94;
  LOBYTE(v110) = v94;
  *(&v110 + 1) = *v128;
  DWORD1(v110) = *&v128[3];
  *(&v110 + 1) = v102;
  LOBYTE(v111[0]) = 0;
  BYTE1(v111[0]) = v63;
  *(v111 + 2) = v126;
  WORD3(v111[0]) = v127;
  v74 = KeyPath;
  *(&v111[0] + 1) = KeyPath;
  *&v111[1] = 4;
  BYTE8(v111[1]) = 0;
  v75 = v109;
  v76 = v110;
  v77 = v111[0];
  *(v68 + 105) = *(v111 + 9);
  *(v68 + 5) = v76;
  *(v68 + 6) = v77;
  *(v68 + 4) = v75;
  v68[16] = 0x4014000000000000;
  *(v68 + 136) = 0;
  v78 = sub_10022C350(&qword_100CB5828, &qword_100A49108);
  sub_1000955E0(v67, v68 + *(v78 + 80), &qword_100CB5820, &qword_100A49100);
  sub_1000955E0(&v109, &v112, &qword_100CB5830, &qword_100A49110);
  sub_1000180EC(v59, &qword_100CB5820, &qword_100A49100);
  sub_1000180EC(v67, &qword_100CB5820, &qword_100A49100);
  v112 = v71;
  v113 = v106;
  v114 = v73;
  *v115 = *v128;
  *&v115[3] = *&v128[3];
  v116 = v72;
  v117 = 0;
  v118 = v104;
  v119 = v126;
  v120 = v127;
  v121 = v74;
  v122 = 4;
  v123 = 0;
  return sub_1000180EC(&v112, &qword_100CB5830, &qword_100A49110);
}

uint64_t sub_1003E6A30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v91 = a2;
  v81 = sub_10022C350(&qword_100CB57E8, &qword_100A49060);
  __chkstk_darwin(v81);
  v80 = &v69 - v3;
  v88 = sub_10022C350(&qword_100CB57F0, &qword_100A49068);
  __chkstk_darwin(v88);
  v82 = &v69 - v4;
  v5 = sub_10022C350(&qword_100CB57F8, &qword_100A49070);
  __chkstk_darwin(v5 - 8);
  v90 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v89 = &v69 - v8;
  KeyPath = type metadata accessor for EnvironmentValues();
  v83 = *(KeyPath - 8);
  __chkstk_darwin(KeyPath);
  v71 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Font.Leading();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v94 = *a1;
  v95 = v14;
  v15 = sub_10002D5A4();

  v75 = v15;
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  static Font.subheadline.getter();
  v21 = *(v11 + 104);
  v74 = enum case for Font.Leading.tight(_:);
  v76 = v11 + 104;
  v73 = v21;
  v21(v13);
  Font.leading(_:)();

  v22 = *(v11 + 8);
  v77 = v13;
  v79 = v10;
  v78 = v11 + 8;
  v72 = v22;
  v22(v13, v10);
  v86 = Text.font(_:)();
  v85 = v23;
  v25 = v24;
  v87 = v26;

  sub_10010CD64(v16, v18, v20 & 1);

  v27 = a1 + *(type metadata accessor for StandardDescription(0) + 20);
  v28 = *v27;
  if (v27[8] == 1)
  {
    v108 = v28 & 1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v30 = v71;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v28, 0);
    (*(v83 + 8))(v30, KeyPath);
    v28 = v108;
  }

  KeyPath = swift_getKeyPath();
  LODWORD(v83) = v25 & 1;
  v113 = v25 & 1;
  v109 = 0;
  v31 = a1[8];
  if (v31)
  {
    v70 = a1[7];
    v94 = v70;
    v95 = v31;

    v32 = Text.init<A>(_:)();
    v71 = v28;
    v34 = v33;
    v36 = v35;
    LODWORD(v94) = static HierarchicalShapeStyle.tertiary.getter();
    v37 = Text.foregroundStyle<A>(_:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    sub_10010CD64(v32, v34, v36 & 1);

    v44 = *(sub_10022C350(&qword_100CA4000, &qword_100A4AB20) + 36);
    v45 = enum case for BlendMode.plusLighter(_:);
    v46 = type metadata accessor for BlendMode();
    v47 = v80;
    (*(*(v46 - 8) + 104))(&v80[v44], v45, v46);
    *v47 = v37;
    *(v47 + 8) = v39;
    *(v47 + 16) = v41 & 1;
    *(v47 + 24) = v43;
    v48 = swift_getKeyPath();
    v49 = v47 + *(v81 + 36);
    *v49 = v48;
    *(v49 + 8) = 2;
    *(v49 + 16) = 0;
    v94 = v70;
    v95 = v31;
    __src[0] = 0x20A280E220;
    __src[1] = 0xA500000000000000;
    v92[0] = 8236;
    v92[1] = 0xE200000000000000;
    v94 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v95 = v50;
    sub_1003E7AD8();
    v51 = v82;
    View.accessibilityLabel<A>(_:)();
    sub_1000180EC(v47, &qword_100CB57E8, &qword_100A49060);

    static Font.caption2.getter();
    v52 = v77;
    v53 = v79;
    v73(v77, v74, v79);
    v28 = Font.leading(_:)();

    v72(v52, v53);
    v54 = swift_getKeyPath();
    v55 = (v51 + *(sub_10022C350(&qword_100CB5818, &qword_100A490F8) + 36));
    *v55 = v54;
    v55[1] = v28;
    LOBYTE(v28) = v71;
    v56 = v88;
    *(v51 + *(v88 + 36)) = 0x3FF0000000000000;
    v57 = v89;
    sub_10002F758(v51, v89, &qword_100CB57F0, &qword_100A49068);
    v58 = 0;
  }

  else
  {
    v58 = 1;
    v57 = v89;
    v56 = v88;
  }

  sub_10001B350(v57, v58, 1, v56);
  v59 = (v28 & 1) == 0;
  LODWORD(v89) = v59;
  v60 = v90;
  sub_1000955E0(v57, v90, &qword_100CB57F8, &qword_100A49070);
  v61 = v91;
  *v91 = 0;
  *(v61 + 8) = 0;
  v62 = v86;
  __src[0] = v86;
  v63 = v85;
  __src[1] = v85;
  v64 = v83;
  LOBYTE(__src[2]) = v83;
  *(&__src[2] + 1) = *v112;
  HIDWORD(__src[2]) = *&v112[3];
  v65 = v87;
  __src[3] = v87;
  LOBYTE(__src[4]) = 0;
  BYTE1(__src[4]) = v59;
  *(&__src[4] + 2) = v110;
  HIWORD(__src[4]) = v111;
  v66 = KeyPath;
  __src[5] = KeyPath;
  __src[6] = 4;
  LOBYTE(__src[7]) = 0;
  *(&__src[7] + 1) = *v114;
  HIDWORD(__src[7]) = *&v114[3];
  __src[8] = 0x4000000000000000;
  memcpy(v61 + 2, __src, 0x48uLL);
  v61[11] = 0;
  *(v61 + 96) = 0;
  v67 = sub_10022C350(&qword_100CB5800, &qword_100A490A8);
  sub_1000955E0(v60, v61 + *(v67 + 80), &qword_100CB57F8, &qword_100A49070);
  sub_1000955E0(__src, &v94, &qword_100CB5808, &unk_100A490B0);
  sub_1000180EC(v57, &qword_100CB57F8, &qword_100A49070);
  sub_1000180EC(v60, &qword_100CB57F8, &qword_100A49070);
  v94 = v62;
  v95 = v63;
  v96 = v64;
  *v97 = *v112;
  *&v97[3] = *&v112[3];
  v98 = v65;
  v99 = 0;
  v100 = v89;
  v101 = v110;
  v102 = v111;
  v103 = v66;
  v104 = 4;
  v105 = 0;
  *&v106[3] = *&v114[3];
  *v106 = *v114;
  v107 = 0x4000000000000000;
  return sub_1000180EC(&v94, &qword_100CB5808, &unk_100A490B0);
}

uint64_t sub_1003E745C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1003E74BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1003E753C(uint64_t a1)
{
  result = type metadata accessor for SevereAlertComponentViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1003E75B0()
{
  result = qword_100CB5638;
  if (!qword_100CB5638)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5598, &qword_100A48E60);
    v4[0] = sub_1003E766C();
    v4[1] = sub_1003E7798(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5638);
  }

  return result;
}

unint64_t sub_1003E766C()
{
  result = qword_100CB5640;
  if (!qword_100CB5640)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CB5648, qword_100A48EA8);
    v4[2] = sub_10022E824(&qword_100CB5568, &qword_100A48E38);
    v4[3] = sub_100006F64(&qword_100CB5590, &qword_100CB5568, &qword_100A48E38, &protocol conformance descriptor for HStack<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1003E7798(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5640);
  }

  return result;
}

uint64_t sub_1003E7798(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1003E783C()
{
  result = qword_100CB5670;
  if (!qword_100CB5670)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5660, &qword_100A48F10);
    v4[0] = sub_1003E7798(&qword_100CB5678, type metadata accessor for StandardDescription, byte_100A48FE0);
    v4[1] = sub_1003E7798(&qword_100CB5680, type metadata accessor for ProminentPadDescription, byte_100A48F90);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5670);
  }

  return result;
}

uint64_t sub_1003E7950(uint64_t a1)
{
  result = type metadata accessor for SevereAlertComponentViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1003E79E4()
{
  result = qword_100CB57A8;
  if (!qword_100CB57A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB57B0, &qword_100A48F88);
    v4[0] = sub_1003E783C();
    v4[1] = sub_1003E7798(&qword_100CB5678, type metadata accessor for StandardDescription, byte_100A48FE0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB57A8);
  }

  return result;
}

unint64_t sub_1003E7AD8()
{
  result = qword_100CB5810;
  if (!qword_100CB5810)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB57E8, &qword_100A49060);
    v4[0] = sub_1003E7B90();
    v4[1] = sub_100006F64(&qword_100CADEA0, &qword_100CADEA8, &qword_100A490C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5810);
  }

  return result;
}

unint64_t sub_1003E7B90()
{
  result = qword_100CA4010;
  if (!qword_100CA4010)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10022E824(&qword_100CA4000, &qword_100A4AB20);
    v4[0] = &protocol witness table for Text;
    v4[1] = &protocol witness table for _BlendModeEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA4010);
  }

  return result;
}

uint64_t sub_1003E7C54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProminentPadBulletedDescription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E7D08(uint64_t a1)
{
  result = type metadata accessor for SevereAlertComponentViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003E7DC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ProminentPadBulletedDescription(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1003E492C(a1, v6, a2);
}

void sub_1003E7E48(uint64_t a1)
{
  type metadata accessor for ConditionDetailPlatterViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1003E7F34();
    if (v2 <= 0x3F)
    {
      sub_1000455E4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1003E7F34()
{
  result = qword_100CB5AC0;
  if (!qword_100CB5AC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CB5AC0);
  }

  return result;
}

uint64_t sub_1003E7FD4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  type metadata accessor for Optional();
  sub_1000037E8();
  v7 = *(v6 + 16);

  return v7(a3, a1, v5);
}

uint64_t sub_1003E8038()
{
  sub_100025148();
  sub_1000037E8();
  sub_100003828();
  v3 = __chkstk_darwin(v2);
  (*(*(v0 - 8) + 16))(&v6 - v4, v1, v0, v3);
  swift_storeEnumTagMultiPayload();
  return sub_100020F10();
}

uint64_t sub_1003E80F0()
{
  sub_100014594();
  memcpy(__dst, v2, 0x49uLL);
  v3 = sub_10001920C();
  memmove(v3, v4, 0x49uLL);
  v5 = *(v1 + 8);
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  *(v0 + 80) = v6;
  *(v0 + 88) = v5;
  v7 = sub_10022C350(&qword_100CB5E80, &unk_100A496C0);
  sub_10018CF14(*(v1 + 16), v0 + v7[16], &qword_100CA6430, &unk_100A81EF0);
  sub_10003B9C4(v0 + v7[20]);
  v8 = v0 + v7[24];
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  *v8 = v10;
  *(v8 + 8) = v9;
  v11 = sub_10000E9C4();
  sub_10018CF14(v11, v0 + v12, &qword_100CA6428, &unk_100A31230);
  return sub_10018CF14(__dst, &v14, &qword_100CA6438, &qword_100A31270);
}

uint64_t sub_1003E81E8(uint64_t a1)
{
  v2 = sub_100022B14(a1);
  sub_1003F0BEC(v2, v3, type metadata accessor for TemperatureAveragesHeroChartView);
  sub_10022C350(&qword_100CB5E90, &qword_100A496D8);
  v4 = sub_10000412C();
  sub_10018CF14(v4, v1 + v5, &qword_100CA71A8, &unk_100A496E0);
  v6 = sub_1000206F0();
  sub_1003F0BEC(v6, v1 + v7, type metadata accessor for MonthlyAveragesChart);
  v8 = sub_1000419D8();
  sub_10018CF14(v8, v1 + v9, &qword_100CA7190, &qword_100A322B0);
  v10 = sub_100037A8C();
  sub_1000283EC(v10, v11);
  v12 = sub_10000E9C4();
  return sub_1000283EC(v12, v13);
}

double sub_1003E82C0@<D0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  sub_1000183F4(a1, a2);
  v4 = sub_10022C350(&qword_100CB5E98, &unk_100A496F0);
  sub_1003F0BEC(v2[1], v3 + v4[12], type metadata accessor for CalendarHeaderView);
  sub_100005B94(v3 + v4[16]);
  sub_10018CF14(v5, v3 + v4[20], &qword_100CA7288, &qword_100A323E8);
  v6 = v2[5];
  sub_100005B94(v3 + v4[24]);
  v7 = v4[28];
  sub_10022C350(&qword_100CA7280, &unk_100A49700);
  sub_100003A9C();
  (*(v8 + 16))(v3 + v7, v6);
  v9 = v2[7];
  sub_100005B94(v3 + v4[32]);
  v10 = v4[36];
  sub_10022C350(&qword_100CA7278, &qword_100A323E0);
  sub_100003A9C();
  (*(v11 + 16))(v3 + v10, v9);
  *&result = sub_100005B94(v3 + v4[40]).n128_u64[0];
  return result;
}

uint64_t sub_1003E8408()
{
  sub_10000C778();
  sub_10003A1A4();
  v7 = *(v6 + 32);
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  *(v4 + 24) = v0;
  *(v4 + 32) = v7;
  v8 = sub_10022C350(&qword_100CB5E40, &unk_100A49670);
  sub_10018CF14(*(v5 + 8), v4 + v8[12], &qword_100CACF80, &qword_100A3C310);
  sub_100008514(v4 + v8[16]);
  sub_1003F0BEC(v9, v4 + v8[20], type metadata accessor for FeelsLikeComponentVarianceView);
  sub_10003B9C4(v4 + v8[24]);
  v10 = v4 + v8[28];
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v8) = *(v11 + 16);
  v14 = *(v11 + 24);
  v15 = *(v11 + 32);
  v16 = *(v11 + 40);
  LOBYTE(v11) = *(v11 + 48);
  *v10 = v12;
  *(v10 + 8) = v13;
  *(v10 + 16) = v8;
  *(v10 + 24) = v14;
  *(v10 + 32) = v15;
  *(v10 + 40) = v16;
  *(v10 + 48) = v11;
  sub_100030410();

  sub_10010CD54(v12, v13, v8);

  sub_10000536C();
}

double sub_1003E852C()
{
  sub_100014594();
  sub_10022C350(&qword_100CAD1E0, &qword_100A3C5D8);
  sub_100003A9C();
  v2 = sub_10001920C();
  v3(v2);
  v4 = sub_10022C350(&qword_100CB5CD8, &unk_100A494F0);
  v5 = v4[12];
  v6 = v1[1];
  v7 = type metadata accessor for Divider();
  sub_1000037E8();
  v25 = *(v8 + 16);
  v25(v0 + v5, v6, v7);
  v9 = v0 + v4[16];
  v10 = v1[2];
  v11 = v1[3];
  v28 = *(v10 + 8);
  v29 = *v10;
  v12 = *(v10 + 16);
  v27 = v12;
  v30 = *(v10 + 24);
  *v9 = *v10;
  *(v9 + 8) = v28;
  *(v9 + 16) = v12;
  *(v9 + 24) = v30;
  v13 = v4[20];
  v14 = sub_10022C350(&qword_100CAD1D0, &qword_100A3C5C8);
  sub_1000037E8();
  v16 = *(v15 + 16);
  v16(v0 + v13, v11, v14);
  v16(v0 + v4[24], v1[4], v14);
  v25(v0 + v4[28], v1[5], v7);
  v17 = v0 + v4[32];
  v18 = v1[6];
  v19 = v1[7];
  v21 = *v18;
  v20 = *(v18 + 8);
  LOBYTE(v14) = *(v18 + 16);
  v26 = *(v18 + 24);
  *v17 = *v18;
  *(v17 + 8) = v20;
  *(v17 + 16) = v14;
  *(v17 + 24) = v26;
  v22 = v4[36];
  sub_10022C350(&qword_100CAD1C0, &unk_100A49500);
  sub_100003A9C();
  (*(v23 + 16))(v0 + v22, v19);
  v25(v0 + v4[40], v1[8], v7);
  sub_10018CF14(v1[9], v0 + v4[44], &qword_100CAD1B0, &qword_100A3C5A8);
  sub_10010CD54(v29, v28, v27);

  sub_10010CD54(v21, v20, v14);

  return result;
}

uint64_t sub_1003E87A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, *a1, sizeof(__dst));
  memcpy(__src, v4, 0x90uLL);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = v5[1];
  *&__src[144] = *v5;
  *&__src[160] = v7;
  v8 = v5[3];
  *&__src[176] = v5[2];
  *&__src[192] = v8;
  memcpy(v13, v6, sizeof(v13));
  memcpy(&__src[208], v6, 0x90uLL);
  memcpy(&__src[352], *(a1 + 24), 0x41uLL);
  memcpy(a2, __src, 0x1A1uLL);
  sub_10018CF14(__dst, v10, &qword_100CB5BF0, &qword_100A493E0);
  return sub_10018CF14(v13, v10, &qword_100CB5BF0, &qword_100A493E0);
}

uint64_t sub_1003E88A8(uint64_t a1)
{
  v3 = sub_100022B14(a1);
  sub_10018CF14(v3, v4, &qword_100CB5E00, &qword_100A49630);
  sub_10022C350(&qword_100CB5E08, &qword_100A49638);
  v5 = sub_10000412C();
  sub_1000283EC(v5, v6);
  v7 = sub_1000206F0();
  sub_1000283EC(v7, v8);
  v9 = sub_1000419D8();
  sub_1000283EC(v9, v10);
  v11 = sub_100037A8C();
  sub_1000283EC(v11, v12);
  v13 = sub_10000E9C4();
  sub_1000283EC(v13, v14);
  return sub_1000283EC(*(v1 + 48), *(v2 + 128));
}

uint64_t sub_1003E8948(uint64_t a1)
{
  v2 = sub_100022B14(a1);
  sub_1003F0BEC(v2, v3, type metadata accessor for ConditionDetailMapView);
  sub_10022C350(&qword_100CB5D50, &qword_100A49580);
  v4 = sub_10000412C();
  sub_10018CF14(v4, v1 + v5, &qword_100CB5D58, &qword_100A4CFD0);
  v6 = sub_1000206F0();
  sub_10018CF14(v6, v1 + v7, &qword_100CA7190, &qword_100A322B0);
  v8 = sub_1000419D8();
  sub_10018CF14(v8, v1 + v9, &qword_100CB5D60, &qword_100A49588);
  v10 = sub_100037A8C();
  sub_10018CF14(v10, v1 + v11, &qword_100CB5D68, &qword_100A49590);
  v12 = sub_10000E9C4();
  return sub_10018CF14(v12, v1 + v13, &qword_100CB5D70, &qword_100A49598);
}

uint64_t sub_1003E8A2C@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **a1;
  v19 = *(*a1 + 8);
  sub_1000C8750(v20);
  sub_1000C8750(&__src[7]);
  v5 = a1[2];
  v6 = *(v5 + 1);
  *&v17[7] = *v5;
  *&v17[23] = v6;
  v7 = *(v5 + 3);
  *&v17[39] = *(v5 + 2);
  *&v17[55] = v7;
  sub_1000C8750(v21);
  v8 = a1[4];
  v9 = *(v8 + 1);
  *&v16[7] = *v8;
  *&v16[23] = v9;
  v10 = *(v8 + 3);
  *&v16[39] = *(v8 + 2);
  *&v16[55] = v10;
  LOBYTE(v8) = v19;
  *a2 = v4;
  *(a2 + 8) = v8;
  memcpy((a2 + 9), __src, 0x68uLL);
  memcpy((a2 + 113), v17, 0x47uLL);
  sub_1000C8750((a2 + 184));
  memcpy((a2 + 281), v16, 0x47uLL);
  sub_10002FEBC(v20, v11, v12);
  return sub_10002FEBC(v21, v13, v14);
}

uint64_t sub_1003E8B34()
{
  sub_100014594();
  sub_10022C350(&qword_100CB5D78, &qword_100A495A0);
  sub_100003A9C();
  v4 = sub_10001920C();
  v5(v4);
  sub_10022C350(&qword_100CB5D80, &qword_100A495A8);
  sub_100021454();
  memcpy(__dst, v3, 0xD2uLL);
  v6 = sub_100016380();
  memmove(v6, v7, 0xD2uLL);
  v8 = sub_1000206F0();
  sub_10018CF14(v8, v0 + v9, &qword_100CB5D88, &qword_100A495B0);
  v10 = sub_1000419D8();
  sub_10018CF14(v10, v0 + v11, &qword_100CB5D90, &qword_100A495B8);
  v12 = sub_100037A8C();
  sub_10018CF14(v12, v0 + v13, &qword_100CB5D98, &qword_100A495C0);
  v14 = sub_10000E9C4();
  sub_10018CF14(v14, v0 + v15, &qword_100CB5DA0, &qword_100A495C8);
  sub_10018CF14(*(v1 + 48), v0 + *(v2 + 128), &qword_100CB5DA8, &qword_100A495D0);
  return sub_1003F0B44(__dst, &v17);
}

uint64_t sub_1003E8C74()
{
  sub_100014594();
  sub_10022C350(&qword_100CB5D00, &qword_100A49530);
  sub_100003A9C();
  v3 = sub_10001920C();
  v4(v3);
  sub_10022C350(&qword_100CB5D08, &qword_100A49538);
  sub_100021454();
  sub_10022C350(&qword_100CB5D10, &unk_100A49540);
  sub_100003A9C();
  v5 = sub_100016380();
  v6(v5);
  v7 = sub_1000206F0();
  sub_10018CF14(v7, v0 + v8, &qword_100CB5D18, &unk_100A5CEB0);
  sub_10022C350(&qword_100CB5D20, &unk_100A49550);
  sub_100003A9C();
  v9 = sub_100016380();
  v10(v9);
  v11 = sub_100037A8C();
  sub_10018CF14(v11, v0 + v12, &qword_100CB5D28, &unk_100A5CEA0);
  v13 = sub_10000E9C4();
  sub_10018CF14(v13, v0 + v14, &qword_100CB5D30, &unk_100A49560);
  v15 = *(v2 + 128);
  v16 = *(v1 + 48);
  sub_10022C350(&qword_100CB5D38, &qword_100A5CE80);
  sub_100003A9C();
  v18 = *(v17 + 16);

  return v18(v0 + v15, v16);
}

uint64_t sub_1003E8E10(uint64_t a1)
{
  v4 = sub_100022B14(a1);
  sub_10018CF14(v4, v5, &qword_100CB5E48, &qword_100A49680);
  sub_10022C350(&qword_100CB5E50, &qword_100A49688);
  v6 = sub_10000412C();
  sub_10018CF14(v6, v1 + v7, &qword_100CB5E58, &unk_100A49690);
  v8 = sub_1000206F0();
  sub_10018CF14(v8, v1 + v9, &qword_100CB5E60, &unk_100A61450);
  v10 = sub_1000419D8();
  sub_10018CF14(v10, v1 + v11, &qword_100CB5E68, &unk_100A496A0);
  v12 = sub_100037A8C();
  sub_10018CF14(v12, v1 + v13, &qword_100CB5E70, &unk_100A61440);
  v14 = sub_10000E9C4();
  sub_10018CF14(v14, v1 + v15, &qword_100CA7190, &qword_100A322B0);
  return sub_10018CF14(*(v2 + 48), v1 + *(v3 + 128), &qword_100CB5E78, &unk_100A496B0);
}

uint64_t sub_1003E8F10()
{
  sub_10003A1A4();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  *(v4 + 24) = v0;
  v6 = sub_10022C350(&qword_100CB5E20, &qword_100A49650);
  v7 = v6[12];
  v8 = *(v5 + 8);
  sub_10022C350(&qword_100CB5E28, &qword_100A49658);
  sub_100003A9C();
  (*(v9 + 16))(v4 + v7, v8);
  sub_100008514(v4 + v6[16]);
  sub_10018CF14(v10, v4 + v6[20], &qword_100CB5E30, &unk_100A49660);
  v11 = *(v5 + 40);
  sub_100008514(v4 + v6[24]);
  v12 = v6[28];
  memcpy(__dst, v11, sizeof(__dst));
  memmove((v4 + v12), v11, 0x48uLL);
  sub_100030410();

  return sub_10018CF14(__dst, &v14, &qword_100CB5E38, &qword_100A64480);
}

uint64_t sub_1003E9048(uint64_t a1)
{
  v4 = sub_100022B14(a1);
  sub_10018CF14(v4, v5, &qword_100CB5EB0, &qword_100A49720);
  sub_10022C350(&qword_100CB5EB8, &qword_100A49728);
  v6 = sub_10000412C();
  sub_10018CF14(v6, v1 + v7, &qword_100CB5EC0, &unk_100A49730);
  v8 = sub_1000206F0();
  sub_10018CF14(v8, v1 + v9, &qword_100CB5EC8, &qword_100A6EEB0);
  v10 = sub_1000419D8();
  sub_10018CF14(v10, v1 + v11, &qword_100CB5ED0, &unk_100A49740);
  v12 = sub_100037A8C();
  sub_10018CF14(v12, v1 + v13, &qword_100CB5ED8, &qword_100A6EE60);
  v14 = *(v3 + 112);
  v15 = *(v2 + 40);
  sub_10022C350(&qword_100CB5EE0, &unk_100A49750);
  sub_100003A9C();
  v17 = *(v16 + 16);

  return v17(v1 + v14, v15);
}

double sub_1003E915C@<D0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v50 = **a1;
  v51 = (*a1)[1];
  v3 = (*a1)[3];
  v4 = (*a1)[5];
  v48 = (*a1)[6];
  v49 = (*a1)[4];
  v46 = *v2;
  v47 = v2[1];
  v29 = *(v2 + 16);
  v45 = v2[4];
  v27 = v2[5];
  v28 = v2[3];
  v44 = v2[6];
  v6 = a1[2];
  v5 = a1[3];
  v37 = v6[1];
  v38 = *v6;
  v7 = v6[2];
  v39 = v6[3];
  v52 = *v5;
  v53 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  v10 = v5[5];
  v54 = v5[4];
  v55 = v5[6];
  v11 = a1[4];
  v12 = a1[5];
  v30 = *v11;
  v13 = *v11;
  v56 = v11[1];
  v57 = v11[2];
  v58 = v11[3];
  v14 = *v12;
  v31 = v12[1];
  v15 = *(v12 + 16);
  v17 = v12[3];
  v18 = v12[5];
  v16 = v12[4];
  v32 = v12[6];
  v19 = a1[6];
  v20 = a1[7];
  v33 = v19[1];
  v34 = *v19;
  v59 = v19[2];
  v60 = v19[3];
  v21 = *v20;
  v35 = v20[1];
  LOBYTE(v19) = *(v20 + 16);
  v22 = v20[3];
  v24 = v20[5];
  v23 = v20[4];
  v36 = v20[6];
  v25 = a1[8];
  v42 = v25[1];
  v43 = *v25;
  v40 = v25[3];
  v41 = v25[2];
  *(a2 + 16) = *(*a1 + 16);
  *(a2 + 24) = v3;
  *(a2 + 40) = v4;
  *(a2 + 72) = v29;
  *(a2 + 80) = v28;
  *(a2 + 96) = v27;
  *(a2 + 160) = v8;
  *(a2 + 168) = v9;
  *(a2 + 184) = v10;
  *(a2 + 248) = v15;
  *(a2 + 256) = v17;
  *(a2 + 272) = v18;
  *(a2 + 336) = v19;
  *(a2 + 344) = v22;
  *(a2 + 360) = v24;
  *a2 = v50;
  *(a2 + 8) = v51;
  *(a2 + 32) = v49;
  *(a2 + 48) = v48;
  *(a2 + 56) = v46;
  *(a2 + 64) = v47;
  *(a2 + 88) = v45;
  *(a2 + 104) = v44;
  *(a2 + 112) = v38;
  *(a2 + 120) = v37;
  *(a2 + 128) = v7;
  *(a2 + 136) = v39;
  *(a2 + 144) = v52;
  *(a2 + 152) = v53;
  *(a2 + 176) = v54;
  *(a2 + 192) = v55;
  *(a2 + 200) = v13;
  *(a2 + 208) = v56;
  *(a2 + 216) = v57;
  *(a2 + 224) = v58;
  *(a2 + 232) = v14;
  *(a2 + 240) = v31;
  *(a2 + 264) = v16;
  *(a2 + 280) = v32;
  *(a2 + 288) = v34;
  *(a2 + 296) = v33;
  *(a2 + 304) = v59;
  *(a2 + 312) = v60;
  *(a2 + 320) = v21;
  *(a2 + 328) = v35;
  *(a2 + 352) = v23;
  *(a2 + 368) = v36;
  *(a2 + 376) = v43;
  *(a2 + 384) = v42;
  *(a2 + 392) = v41;
  *(a2 + 400) = v40;

  sub_1003F0BA0(v38, v37);

  sub_1003F0BA0(v30, v56);

  sub_1003F0BA0(v34, v33);

  return sub_1003F0BA0(v43, v42);
}

uint64_t sub_1003E9448()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = (*v0)[3];
  *v2 = **v0;
  *(v2 + 1) = v4;
  *(v2 + 2) = v5;
  *(v2 + 3) = v6;
  v7 = sub_10022C350(&qword_100CB5CE0, &unk_100A49510);
  sub_10018CF14(v1[1], &v3[v7[12]], &qword_100CB5CE8, &qword_100A759A0);
  v8 = v1[3];
  sub_100005B94(&v3[v7[16]]);
  v9 = v7[20];
  sub_10022C350(&qword_100CB5CF0, &qword_100A49520);
  sub_100003A9C();
  (*(v10 + 16))(&v3[v9], v8);
  sub_100008514(&v3[v7[24]]);
  sub_10018CF14(v11, &v3[v7[28]], &qword_100CB5CF8, &qword_100A49528);
  sub_100003940();
  sub_10000536C();

  return sub_100148118(v12, v13, v14, v15);
}

uint64_t sub_1003E9560@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = **a1;
  v45 = *(*a1 + 8);
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = *v3;
  *(v47 + 15) = *(v3 + 47);
  v46[1] = v6;
  v47[0] = v5;
  v46[0] = v7;
  v8 = *v3;
  v9 = *(v3 + 1);
  v10 = *(v3 + 2);
  *(&v44[3] + 6) = *(v3 + 47);
  *(&v44[2] + 7) = v10;
  *(&v44[1] + 7) = v9;
  *(v44 + 7) = v8;
  v11 = a1[2];
  v12 = a1[3];
  v13 = *v11;
  v14 = *(v11 + 1);
  v15 = *(v11 + 2);
  *&__src[53] = *(v11 + 3);
  *&__src[37] = v15;
  *&__src[21] = v14;
  *&__src[5] = v13;
  v16 = *v12;
  v17 = *(v12 + 1);
  v18 = *(v12 + 2);
  *(v49 + 15) = *(v12 + 47);
  v48[1] = v17;
  v49[0] = v18;
  v48[0] = v16;
  v19 = a1[4];
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v19) = v45;
  *a2 = v4;
  *(a2 + 8) = v19;
  v22 = v44[0];
  v23 = v44[1];
  v24 = v44[2];
  *(a2 + 51) = *(&v44[2] + 10);
  *(a2 + 41) = v24;
  *(a2 + 25) = v23;
  *(a2 + 9) = v22;
  memcpy((a2 + 67), __src, 0x45uLL);
  v25 = *(v12 + 1);
  *(a2 + 136) = *v12;
  *(a2 + 152) = v25;
  *(a2 + 168) = *(v12 + 2);
  *(a2 + 183) = *(v12 + 47);
  *(a2 + 192) = v20;
  *(a2 + 200) = v21;
  sub_10003712C(v46, v26, v27, v28, v29, v30, v31, v32, v41);
  return sub_10003712C(v48, v33, v34, v35, v36, v37, v38, v39, v42);
}

uint64_t sub_1003E96A0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*a1 + 8);
  v3 = *a1[1];
  v4 = a1[2];
  v5 = *a1[3];
  v6 = a1[4];
  v7 = *v6;
  v12 = *(v6 + 8);
  *a2 = **a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[2];
  *(a2 + 72) = v4[3];
  *(a2 + 56) = v10;
  *(a2 + 40) = v9;
  *(a2 + 24) = v8;
  *(a2 + 88) = v5;
  *(a2 + 96) = v7;
  *(a2 + 104) = v12;
}

void sub_1003E9738()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  memcpy(__dst, *v0, sizeof(__dst));
  memcpy(__src, v4, sizeof(__src));
  v5 = v1[1];
  v6 = v1[2];
  v7 = *v5;
  v18 = *(v5 + 1);
  v19 = *(v5 + 3);
  v23 = *(v5 + 16);
  v20 = v23;
  v8 = v6[1];
  v26 = *v6;
  v27 = v8;
  v9 = v6[3];
  v28 = v6[2];
  v29 = v9;
  v10 = v1[3];
  memcpy(v25, v10, sizeof(v25));
  v11 = v1[4];
  v12 = *v11;
  v13 = *(v11 + 1);
  v15 = *(v11 + 3);
  v22 = *(v11 + 16);
  v14 = v22;
  LOBYTE(v4) = v23;
  memcpy(v3, __src, 0xE8uLL);
  *(v3 + 232) = v7;
  *(v3 + 240) = v18;
  *(v3 + 248) = v4;
  *(v3 + 256) = v19;
  v16 = v27;
  *(v3 + 264) = v26;
  *(v3 + 280) = v16;
  v17 = v29;
  *(v3 + 296) = v28;
  *(v3 + 312) = v17;
  memcpy((v3 + 328), v10, 0xE8uLL);
  *(v3 + 560) = v12;
  *(v3 + 568) = v13;
  *(v3 + 576) = v14;
  *(v3 + 584) = v15;
  sub_10018CF14(__dst, v21, &qword_100CB5DF8, &unk_100A7D520);
  sub_10010CD54(v7, v18, v20);

  sub_10018CF14(v25, v21, &qword_100CB5DF8, &unk_100A7D520);
  sub_10010CD54(v12, v13, v14);

  sub_10000536C();
}

double sub_1003E98B4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *v3;
  v4 = *(v3 + 8);
  v7 = *(v3 + 24);
  v6 = *(v3 + 16);
  v8 = a1[2];
  v9 = a1[3];
  v10 = *v8;
  v21 = *(v8 + 8);
  v11 = *v9;
  v12 = v9[1];
  v13 = v9[3];
  v20 = *(v9 + 16);
  v14 = a1[4];
  v15 = *(*a1 + 48);
  *(a2 + 32) = *(*a1 + 32);
  *(a2 + 48) = v15;
  v16 = v2[1];
  *a2 = *v2;
  *(a2 + 16) = v16;
  *(a2 + 64) = v5;
  *(a2 + 72) = v4;
  *(a2 + 80) = v6;
  *(a2 + 88) = v7;
  *(a2 + 96) = v10;
  *(a2 + 104) = v21;
  *(a2 + 112) = v11;
  *(a2 + 120) = v12;
  *(a2 + 128) = v20;
  *(a2 + 136) = v13;
  v17 = v14[1];
  *(a2 + 144) = *v14;
  *(a2 + 160) = v17;
  v18 = v14[3];
  *(a2 + 176) = v14[2];
  *(a2 + 192) = v18;
  sub_10010CD54(v5, v4, v6);

  sub_100030410();

  return result;
}

uint64_t sub_1003E9984()
{
  sub_100014594();
  sub_10022C350(&qword_100CB5D40, &qword_100A49570);
  sub_100003A9C();
  v1 = sub_10001920C();
  v2(v1);
  sub_10022C350(&qword_100CB5D48, &qword_100A49578);
  sub_100021454();
  sub_10022C350(&qword_100CB5D10, &unk_100A49540);
  sub_100003A9C();
  v3 = sub_100016380();
  v4(v3);
  v5 = sub_1000206F0();
  sub_10018CF14(v5, v0 + v6, &qword_100CB5D18, &unk_100A5CEB0);
  sub_10022C350(&qword_100CB5D20, &unk_100A49550);
  sub_100003A9C();
  v7 = sub_100016380();
  v8(v7);
  v9 = sub_100037A8C();
  sub_10018CF14(v9, v0 + v10, &qword_100CB5D28, &unk_100A5CEA0);
  v11 = sub_10000E9C4();
  return sub_10018CF14(v11, v0 + v12, &qword_100CB5D30, &unk_100A49560);
}

uint64_t sub_1003E9AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = **a1;
  v6 = *(*a1 + 8);
  v7 = *(*a1 + 16);
  v8 = *(*a1 + 24);
  v9 = v4[1];
  v22 = *v4;
  v23 = v9;
  v10 = v4[3];
  v24 = v4[2];
  v25 = v10;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *v11;
  v14 = v11[1];
  sub_100036CFC();
  memcpy(__dst, v12, sizeof(__dst));
  v15 = v20[96];
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  v16 = v23;
  *(a2 + 32) = v22;
  *(a2 + 48) = v16;
  v17 = v25;
  *(a2 + 64) = v24;
  *(a2 + 80) = v17;
  *(a2 + 96) = v13;
  *(a2 + 104) = v14;
  *(a2 + 112) = v15;
  *(a2 + 120) = v19;
  memcpy((a2 + 128), v12, 0x60uLL);
  sub_100148118(v5, v6, v7, v8);
  sub_10010CD54(v13, v14, v2);

  return sub_10018CF14(__dst, v20, &qword_100CB5EA0, &unk_100A49710);
}

double sub_1003E9BD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v6 = **a1;
  v7 = *(*a1 + 8);
  v8 = *(*a1 + 16);
  v9 = *(*a1 + 24);
  v10 = v5[1];
  v22 = *v5;
  v23 = v10;
  v11 = v5[3];
  v24 = v5[2];
  v25 = v11;
  v12 = *(a1 + 16);
  memcpy(__dst, v12, sizeof(__dst));
  v13 = *(a1 + 24);
  v14 = *v13;
  v15 = v13[1];
  sub_100036CFC();
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  v16 = v23;
  *(a2 + 32) = v22;
  *(a2 + 48) = v16;
  v17 = v25;
  *(a2 + 64) = v24;
  *(a2 + 80) = v17;
  memcpy((a2 + 96), v12, 0x60uLL);
  *(a2 + 192) = v14;
  *(a2 + 200) = v15;
  *(a2 + 208) = v2;
  *(a2 + 216) = v19;
  sub_100148118(v6, v7, v8, v9);
  sub_10018CF14(__dst, v20, &qword_100CB5EA8, &qword_100A80130);
  sub_10010CD54(v14, v15, v2);

  return result;
}

uint64_t sub_1003E9CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = *(*a1 + 24);
  v5 = *(*a1 + 16);
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[3];
  v21 = *(v2 + 16);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *v10;
  v13 = *(v10 + 8);
  v15 = *(v10 + 24);
  v14 = *(v10 + 16);
  v17 = *v11;
  v16 = v11[1];
  v20 = v11[2];
  v19 = v11[3];
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v21;
  *(a2 + 56) = v9;
  *(a2 + 64) = v12;
  *(a2 + 72) = v13;
  *(a2 + 80) = v14;
  *(a2 + 88) = v15;
  *(a2 + 96) = v17;
  *(a2 + 104) = v16;
  *(a2 + 112) = v20;
  *(a2 + 120) = v19;
  sub_10010CD54(v4, v3, v5);

  sub_100030410();

  sub_10010CD54(v12, v13, v14);

  return sub_100148118(v17, v16, v20, v19);
}

uint64_t sub_1003E9DEC@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **a1;
  v16 = *(*a1 + 8);
  sub_1000D3E84(v17);
  sub_1000D3E84(&__src[7]);
  sub_1000D3E84(v18);
  sub_1000D3E84(&v14[5]);
  v5 = a1[3];
  v6 = *(v5 + 1);
  *&v13[5] = *v5;
  *&v13[21] = v6;
  v7 = *(v5 + 3);
  *&v13[37] = *(v5 + 2);
  *&v13[53] = v7;
  LOBYTE(v5) = v16;
  *a2 = v4;
  *(a2 + 8) = v5;
  memcpy((a2 + 9), __src, 0x62uLL);
  memcpy((a2 + 107), v14, 0x60uLL);
  memcpy((a2 + 203), v13, 0x45uLL);
  sub_10002FEBC(v17, v8, v9);
  return sub_10002FEBC(v18, v10, v11);
}

uint64_t sub_1003E9EE4@<X0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  sub_1000183F4(a1, a2);
  v4 = sub_10022C350(&qword_100CB5DB0, &qword_100A495D8);
  sub_10018CF14(*(v2 + 8), v3 + v4[12], &qword_100CB5DB8, &qword_100A495E0);
  sub_10000CA4C(v3 + v4[16]);
  sub_1000B9918();
  memcpy(v5, v6, v7);
  sub_1000B9918();
  memmove(v8, v9, v10);
  sub_10000CA4C(v3 + v4[24]);
  sub_1000B9918();
  memcpy(v11, v12, v13);
  sub_1000B9918();
  memmove(v14, v15, v16);
  sub_10018CF14(*(v2 + 48), v3 + v4[32], &qword_100CB5DC0, &qword_100A495E8);
  sub_100005B94(v3 + v4[36]);
  sub_10003712C(v34, v17, v18, v19, v20, v21, v22, v23, v32);
  return sub_10003712C(v35, v24, v25, v26, v27, v28, v29, v30, v33);
}

double sub_1003E9FFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, *a1, 0x80uLL);
  v4 = *(a1 + 8);
  memcpy(v15, v4, 0x4AuLL);
  memcpy(&__dst[128], v4, 0x4AuLL);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *v5;
  v8 = *(v5 + 8);
  v10 = *(v5 + 24);
  v13 = *(v5 + 16);
  v9 = v13;
  memcpy(a2, __dst, 0xD0uLL);
  *(a2 + 208) = v7;
  *(a2 + 216) = v8;
  *(a2 + 224) = v9;
  *(a2 + 232) = v10;
  memcpy((a2 + 240), v6, 0x80uLL);
  sub_10018CF14(v15, v12, &qword_100CB5E18, &qword_100A66200);
  sub_10010CD54(v7, v8, v9);

  return result;
}

double sub_1003EA0EC()
{
  v1 = sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v5 = *(v0 + *(v4 + 40));
  sub_10018CF14(v0 + *(v4 + 24), v3, &qword_100CAE8E8, &unk_100A49400);
  v6 = type metadata accessor for WeatherDescription();
  v7 = sub_100024D10(v3, 1, v6) != 1;
  sub_1000180EC(v3, &qword_100CAE8E8, &unk_100A49400);
  return sub_100954A6C(v7, v5);
}

void sub_1003EA1D4()
{
  sub_10000C778();
  v95 = v0;
  v2 = v1;
  v88 = v1;
  v94 = v3;
  v92 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v93 = (v6 - v5);
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v90 = v8;
  v91 = v7;
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_100003990(v10 - v9);
  sub_10022E824(&qword_100CB5AD8, &qword_100A49348);
  sub_10022E824(&qword_100CB5AE0, &qword_100A49350);
  sub_10022E824(&qword_100CB5AE8, &qword_100A49358);
  sub_10022E824(&qword_100CB5AF0, &qword_100A49360);
  v86 = *(v2 + 16);
  type metadata accessor for Optional();
  sub_10000381C();
  type metadata accessor for _ConditionalContent();
  sub_10000381C();
  type metadata accessor for _ConditionalContent();
  sub_10000381C();
  type metadata accessor for _ConditionalContent();
  sub_10000E9D0();
  type metadata accessor for Group();
  sub_10022E824(&qword_100CB5AF8, &qword_100A49368);
  sub_10000381C();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CB5B00, &qword_100A49370);
  sub_100005BA8();
  swift_getTupleTypeMetadata3();
  sub_10000E9D0();
  v78 = type metadata accessor for TupleView();
  sub_10001781C();
  v11 = type metadata accessor for VStack();
  sub_1000037C4();
  v82 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v70 - v14;
  v16 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v81 = v17;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_100003990(&v70 - v19);
  v20 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v80 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_100003990(&v70 - v23);
  v24 = sub_10001377C();
  WitnessTable = swift_getWitnessTable(v24, v11);
  v104[0] = WitnessTable;
  v104[1] = &protocol witness table for _FlexFrameLayout;
  v72 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v16, v104);
  v103[0] = v72;
  v103[1] = &protocol witness table for _TransactionModifier;
  v73 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v20, v103);
  v101 = v20;
  v102 = v73;
  v74 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_1000037C4();
  v75 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v70 - v28;
  type metadata accessor for AccessibilityAttachmentModifier();
  v30 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v85 = v31;
  sub_100003828();
  __chkstk_darwin(v32);
  v34 = &v70 - v33;
  type metadata accessor for AutomationInfoViewModifier(255);
  v79 = v30;
  v35 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v87 = v36;
  __chkstk_darwin(v37);
  v83 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  sub_100003990(&v70 - v40);
  static HorizontalAlignment.leading.getter();
  v41 = *(v88 + 24);
  v96 = v86;
  v97 = v41;
  v98 = v95;
  VStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  v42 = v77;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000E73C();
  v43(v15, v11);
  v44 = v76;
  View.transaction(_:)();
  sub_10000E73C();
  v45 = v16;
  v46 = v34;
  v47(v42, v45);
  v48 = v89;
  static AccessibilityChildBehavior.contain.getter();
  v49 = v73;
  View.accessibilityElement(children:)();
  (*(v90 + 8))(v48, v91);
  sub_10000E73C();
  v50(v44, v20);
  v101 = v20;
  v102 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.accessibilityRespondsToUserInteraction(_:)();
  sub_10000E73C();
  v52(v29, OpaqueTypeMetadata2);
  if (*(v95 + 32))
  {
    v53 = *(v95 + 24);
    v54 = *(v95 + 32);
  }

  else if (*(v95 + 16) < 2u || *v95 ^ 1 | *(v95 + 8))
  {
    v53 = 0;
    v54 = 0xE000000000000000;
  }

  else
  {
    v54 = 0xE400000000000000;
    v53 = 1937204558;
  }

  v55 = v93;
  *v93 = v53;
  *(v55 + 8) = v54;
  *(v55 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  sub_1000497AC();
  v58 = sub_1003F0910(v56, v57, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v100[0] = OpaqueTypeConformance2;
  v100[1] = v58;

  sub_10004E558();
  v59 = v79;
  v61 = swift_getWitnessTable(v60, v79, v100);
  v62 = v83;
  sub_1004C72B0(v55, v59, v61);
  sub_1003F0AEC(v55, type metadata accessor for AutomationInfo);
  sub_10000E73C();
  v63(v46, v59);
  sub_10007497C();
  v66 = sub_1003F0910(v64, v65, byte_100A56C3C);
  v99[0] = v61;
  v99[1] = v66;
  v67 = swift_getWitnessTable(OpaqueTypeConformance2, v35, v99);
  v68 = v84;
  sub_1000833D8(v62, v35, v67);
  v69 = *(v87 + 8);
  v69(v62, v35);
  sub_1000833D8(v68, v35, v67);
  v69(v68, v35);
  sub_10000536C();
}

uint64_t sub_1003EAAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v104 = a3;
  v112 = a4;
  v96 = type metadata accessor for QuaternaryDividerStyle();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Divider();
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10022C350(&qword_100CB5B08, &qword_100A49378);
  __chkstk_darwin(v108);
  v107 = &v91 - v8;
  v109 = sub_10022C350(&qword_100CB5B00, &qword_100A49370);
  __chkstk_darwin(v109);
  v111 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v110 = &v91 - v11;
  sub_10022E824(&qword_100CB5AE0, &qword_100A49350);
  sub_10022E824(&qword_100CB5AE8, &qword_100A49358);
  sub_10022E824(&qword_100CB5AF0, &qword_100A49360);
  v98 = type metadata accessor for Optional();
  v99 = type metadata accessor for _ConditionalContent();
  v100 = type metadata accessor for _ConditionalContent();
  v101 = type metadata accessor for _ConditionalContent();
  v12 = type metadata accessor for Group();
  sub_10022E824(&qword_100CB5AF8, &qword_100A49368);
  v102 = v12;
  v103 = type metadata accessor for ModifiedContent();
  v97 = type metadata accessor for ModifiedContent();
  v116 = *(v97 - 8);
  __chkstk_darwin(v97);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v91 - v16;
  v18 = sub_10022C350(&qword_100CB5B10, &qword_100A49380);
  __chkstk_darwin(v18);
  v20 = &v91 - v19;
  v21 = sub_10022C350(&qword_100CB5B18, &qword_100A49388);
  __chkstk_darwin(v21);
  v23 = &v91 - v22;
  v105 = sub_10022C350(&qword_100CB5AD8, &qword_100A49348);
  __chkstk_darwin(v105);
  v106 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v26 = *(a1 + 32);
  v114 = v14;
  v113 = v17;
  v115 = &v91 - v27;
  if (v26)
  {
    v28 = *(a1 + 24);
    *v20 = static HorizontalAlignment.leading.getter();
    *(v20 + 1) = 0;
    v20[16] = 0;
    v29 = sub_10022C350(&qword_100CB5C50, &qword_100A493F8);
    v30 = v26;
    v31 = a1;
    v32 = a1;
    v33 = v18;
    v34 = v104;
    sub_1003EB7FC(v28, v30, v31, &v20[*(v29 + 44)]);
    v36 = type metadata accessor for ConditionDetailPlatterView(0, a2, v34, v35);
    v37 = sub_1003EA0EC();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = static Edge.Set.all.getter();
    v45 = &v20[*(v33 + 36)];
    *v45 = v44;
    *(v45 + 1) = v37;
    *(v45 + 2) = v39;
    *(v45 + 3) = v41;
    *(v45 + 4) = v43;
    v45[40] = 0;
    sub_10018CF14(v20, v23, &qword_100CB5B10, &qword_100A49380);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CB5B20, &qword_100A49390);
    sub_1003EFDD0();
    sub_10014D3D8();
    a1 = v32;
    _ConditionalContent<>.init(storage:)();
    v14 = v114;
    v17 = v113;
    sub_1000180EC(v20, &qword_100CB5B10, &qword_100A49380);
  }

  else
  {
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    v46 = swift_beginAccess();
    sub_1004BA4FC(v46);
    swift_endAccess();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v47 = v128[1];
    v48 = v129;
    v49 = v130;
    v50 = v131;
    LOBYTE(v121[0]) = 1;
    LOBYTE(v120[0]) = v129;
    LOBYTE(v117) = v131;
    *v23 = 0;
    v23[8] = 1;
    *(v23 + 2) = v47;
    v23[24] = v48;
    *(v23 + 4) = v49;
    v23[40] = v50;
    *(v23 + 3) = v132;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CB5B20, &qword_100A49390);
    sub_1003EFDD0();
    sub_10014D3D8();
    _ConditionalContent<>.init(storage:)();
    v34 = v104;
    v36 = type metadata accessor for ConditionDetailPlatterView(0, a2, v104, v51);
  }

  sub_1003EC0C0(v36, v14);
  v52 = sub_1003EFE88();
  v53 = sub_1003F0550();
  v54 = sub_1003F05D4();
  v128[0] = v34;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v98, v128);
  v127[0] = v54;
  v127[1] = WitnessTable;
  v56 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v99, v127);
  v126[0] = v53;
  v126[1] = v56;
  v57 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v100, v126);
  v125[0] = v52;
  v125[1] = v57;
  v124 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v101, v125);
  v58 = swift_getWitnessTable(&protocol conformance descriptor for <A> Group<A>, v102, &v124);
  v59 = sub_100006F64(&qword_100CB5C18, &qword_100CB5AF8, &qword_100A49368, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
  v123[0] = v58;
  v123[1] = v59;
  v122[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v103, v123);
  v122[1] = &protocol witness table for _PaddingLayout;
  v60 = v97;
  v103 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v97, v122);
  sub_1000833D8(v14, v60, v103);
  v104 = *(v116 + 8);
  v104(v14, v60);
  v61 = v107;
  if (*(a1 + *(v36 + 36)) == 1)
  {
    v62 = v91;
    Divider.init()();
    v63 = v93;
    static DividerStyle<>.quaternary.getter();
    sub_1003F0910(&qword_100CA7298, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    sub_1003F0910(&qword_100CB5C48, &type metadata accessor for QuaternaryDividerStyle, &protocol conformance descriptor for QuaternaryDividerStyle);
    v64 = v94;
    v65 = v96;
    View.dividerStyle<A>(_:)();
    (*(v95 + 8))(v63, v65);
    (*(v92 + 8))(v62, v64);
    v66 = static Edge.Set.top.getter();
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    v67 = swift_beginAccess();
    sub_1004BA570(v67);
    swift_endAccess();
    EdgeInsets.init(_all:)();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = v61 + *(sub_10022C350(&qword_100CB5C40, &qword_100A493F0) + 36);
    *v76 = v66;
    *(v76 + 8) = v69;
    *(v76 + 16) = v71;
    *(v76 + 24) = v73;
    *(v76 + 32) = v75;
    *(v76 + 40) = 0;
    v77 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v85 = v108;
    v78 = v61 + *(v108 + 36);
    *v78 = v77;
    *(v78 + 8) = v79;
    *(v78 + 16) = v80;
    *(v78 + 24) = v81;
    *(v78 + 32) = v82;
    *(v78 + 40) = 0;
    v84 = v110;
    sub_1001E3D34(v61, v110);
    v83 = 0;
    v14 = v114;
    v17 = v113;
  }

  else
  {
    v83 = 1;
    v84 = v110;
    v85 = v108;
  }

  sub_10001B350(v84, v83, 1, v85);
  v86 = v115;
  v87 = v106;
  sub_10018CF14(v115, v106, &qword_100CB5AD8, &qword_100A49348);
  v121[0] = v87;
  (*(v116 + 16))(v14, v17, v60);
  v121[1] = v14;
  v88 = v111;
  sub_10018CF14(v84, v111, &qword_100CB5B00, &qword_100A49370);
  v121[2] = v88;
  v120[0] = v105;
  v120[1] = v60;
  v120[2] = v109;
  v117 = sub_1003F068C();
  v118 = v103;
  v119 = sub_1003F0718();
  sub_10012E24C(v121, 3, v120);
  sub_1001E3CD4(v84);
  v89 = v104;
  v104(v17, v60);
  sub_1000180EC(v86, &qword_100CB5AD8, &qword_100A49348);
  sub_1001E3CD4(v88);
  v89(v14, v60);
  return sub_1000180EC(v87, &qword_100CB5AD8, &qword_100A49348);
}

uint64_t sub_1003EB7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a4;
  v7 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v7 - 8);
  v78 = &v75 - v8;
  v79 = type metadata accessor for Font.TextStyle();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString();
  __chkstk_darwin(v10 - 8);
  v75 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
  __chkstk_darwin(v12 - 8);
  v85 = &v75 - v13;
  v14 = type metadata accessor for WeatherDescription();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AccessibilityTraits();
  v83 = *(v18 - 8);
  v84 = v18;
  __chkstk_darwin(v18);
  v82 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CB5C58, &qword_100A49410);
  __chkstk_darwin(v20 - 8);
  v89 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v91 = &v75 - v23;
  v94[0] = a1;
  v94[1] = a2;
  sub_10002D5A4();

  v24 = Text.init<A>(_:)();
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v80 = v15;
  v81 = v29;
  v30 = *(v29 + 40);
  v86 = a3;
  v87 = v17;
  v31 = *(a3 + v30);
  v88 = v14;
  if (v31 == 1)
  {
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004BA308();
  }

  else
  {
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004BA3F0();
  }

  swift_endAccess();
  v32 = Text.font(_:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_10010CD64(v24, v26, v28 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v95 = v36 & 1;
  v93[0] = v32;
  v93[1] = v34;
  LOBYTE(v93[2]) = v36 & 1;
  v93[3] = v38;
  v39 = v82;
  static AccessibilityTraits.isHeader.getter();
  sub_10022C350(&qword_100CB5BF0, &qword_100A493E0);
  sub_1003F04CC();
  View.accessibilityAddTraits(_:)();
  (*(v83 + 8))(v39, v84);
  memcpy(v94, v93, 0x90uLL);
  sub_1000180EC(v94, &qword_100CB5BF0, &qword_100A493E0);
  v40 = v85;
  sub_10018CF14(v86 + *(v81 + 24), v85, &qword_100CAE8E8, &unk_100A49400);
  v41 = v88;
  if (sub_100024D10(v40, 1, v88) == 1)
  {
    sub_1000180EC(v40, &qword_100CAE8E8, &unk_100A49400);
    v42 = 0;
    v86 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v50 = v80;
    (*(v80 + 32))(v87, v40, v41);
    v52 = v76;
    v51 = v77;
    v53 = v79;
    (*(v77 + 104))(v76, enum case for Font.TextStyle.subheadline(_:), v79);
    v54 = type metadata accessor for Font.Design();
    v55 = v78;
    sub_10001B350(v78, 1, 1, v54);
    static Font.system(_:design:weight:)();
    sub_1000180EC(v55, &qword_100CA4020, &qword_100A2E080);
    (*(v51 + 8))(v52, v53);
    WeatherDescription.formatted(font:color:)();

    v56 = Text.init(_:)();
    v58 = v57;
    LOBYTE(v51) = v59;
    static Color.secondary.getter();
    v85 = Text.foregroundColor(_:)();
    v86 = v60;
    v62 = v61;
    v84 = v63;

    sub_10010CD64(v56, v58, v51 & 1);

    v64 = static Edge.Set.top.getter();
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004BA4D8();
    EdgeInsets.init(_all:)();
    v46 = v65;
    v47 = v66;
    v48 = v67;
    v49 = v68;
    (*(v50 + 8))(v87, v41);
    LOBYTE(v93[0]) = v62 & 1;
    LOBYTE(v92[0]) = 0;
    v45 = v62 & 1;
    v44 = v64;
    v43 = v84;
    v42 = v85;
  }

  v69 = v91;
  v70 = v89;
  sub_10018CF14(v91, v89, &qword_100CB5C58, &qword_100A49410);
  v71 = v90;
  sub_10018CF14(v70, v90, &qword_100CB5C58, &qword_100A49410);
  v72 = *(sub_10022C350(&qword_100CB5C60, &qword_100A49418) + 48);
  v73 = v86;
  v92[0] = v42;
  v92[1] = v86;
  v92[2] = v45;
  v92[3] = v43;
  v92[4] = v44;
  v92[5] = v46;
  v92[6] = v47;
  v92[7] = v48;
  v92[8] = v49;
  LOBYTE(v92[9]) = 0;
  memcpy((v71 + v72), v92, 0x49uLL);
  sub_10018CF14(v92, v93, &qword_100CB5C68, &qword_100A49420);
  sub_1000180EC(v69, &qword_100CB5C58, &qword_100A49410);
  v93[0] = v42;
  v93[1] = v73;
  v93[2] = v45;
  v93[3] = v43;
  v93[4] = v44;
  v93[5] = v46;
  v93[6] = v47;
  v93[7] = v48;
  v93[8] = v49;
  LOBYTE(v93[9]) = 0;
  sub_1000180EC(v93, &qword_100CB5C68, &qword_100A49420);
  return sub_1000180EC(v70, &qword_100CB5C58, &qword_100A49410);
}

uint64_t sub_1003EC0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v53 = type metadata accessor for RoundedRectangle();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_100003990(v5 - v4);
  sub_10022E824(&qword_100CB5AE0, &qword_100A49350);
  sub_10022E824(&qword_100CB5AE8, &qword_100A49358);
  sub_10022E824(&qword_100CB5AF0, &qword_100A49360);
  v6 = *(a1 + 16);
  v7 = type metadata accessor for Optional();
  v8 = type metadata accessor for _ConditionalContent();
  v9 = type metadata accessor for _ConditionalContent();
  sub_100005BA8();
  v10 = type metadata accessor for _ConditionalContent();
  v11 = type metadata accessor for Group();
  sub_1000037C4();
  v51 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = v46 - v14;
  sub_10022E824(&qword_100CB5AF8, &qword_100A49368);
  v49 = v11;
  v55 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v54 = v16;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_100003990(v46 - v18);
  v46[1] = a1;
  v19 = *(a1 + 24);
  v57 = v6;
  v58 = v19;
  v20 = v47;
  v59 = v47;
  v21 = sub_1003EFE88();
  v22 = sub_1003F0550();
  v23 = sub_1003F05D4();
  v65 = v19;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v7, &v65);
  v64[0] = v23;
  v64[1] = WitnessTable;
  v25 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v8, v64);
  v63[0] = v22;
  v63[1] = v25;
  v26 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v9, v63);
  v62[0] = v21;
  v62[1] = v26;
  v27 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v10, v62);
  v50 = v15;
  Group<A>.init(content:)();
  v28 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  if (*(v20 + *(v28 + 36)) == 1)
  {
    v29 = static Color.clear.getter();
  }

  else
  {
    if (qword_100CA21A0 != -1)
    {
      sub_10003C42C(&qword_100CA21A0);
    }

    sub_100011530();
    v29 = sub_1004BA698();
    swift_endAccess();
  }

  v30 = v52;
  v61[1] = v29;
  if (qword_100CA21A0 != -1)
  {
    sub_10003C42C(&qword_100CA21A0);
  }

  v31 = sub_100011530();
  v32 = sub_1004BA5B0(v31);
  swift_endAccess();
  v33 = *(v53 + 20);
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  type metadata accessor for RoundedCornerStyle();
  sub_100003A9C();
  v36 = v48;
  (*(v35 + 104))(v48 + v33, v34);
  *v36 = v32;
  v36[1] = v32;
  v61[0] = v27;
  v37 = v49;
  v38 = swift_getWitnessTable(&protocol conformance descriptor for <A> Group<A>, v49, v61);
  sub_1003F0910(&qword_100CB5C70, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v39 = v50;
  View.background<A, B>(_:in:fillStyle:)();
  sub_1003F0AEC(v36, &type metadata accessor for RoundedRectangle);

  sub_10000E73C();
  v40(v39, v37);
  static Edge.Set.horizontal.getter();
  if (*(v20 + *(v28 + 40)) == 1)
  {
    sub_1003EA0EC();
  }

  else
  {
    sub_100011530();
    sub_1004BA278();
    swift_endAccess();
  }

  v41 = sub_100006F64(&qword_100CB5C18, &qword_100CB5AF8, &qword_100A49368, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
  v60[0] = v38;
  v60[1] = v41;
  v42 = sub_100007E30();
  v43 = v55;
  swift_getWitnessTable(v42, v55, v60);
  View.padding(_:_:)();
  sub_10000E73C();
  return v44(v30, v43);
}

uint64_t sub_1003EC6B4()
{
  sub_100954B84();
  if (!v0)
  {
    return 0;
  }

  sub_10002D5A4();
  return Text.init<A>(_:)();
}

uint64_t sub_1003EC708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v366 = a3;
  *&v357 = a1;
  v363 = a4;
  v322 = a2;
  v4 = type metadata accessor for Optional();
  *&v344 = *(v4 - 8);
  __chkstk_darwin(v4);
  v328 = &v294 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v326 = &v294 - v7;
  v8 = sub_10022E824(&qword_100CB5AF0, &qword_100A49360);
  v365 = v4;
  v9 = type metadata accessor for _ConditionalContent();
  v339 = *(v9 - 8);
  __chkstk_darwin(v9);
  v338 = &v294 - v10;
  v11 = sub_10022C350(&qword_100CB5C10, &qword_100A493E8);
  __chkstk_darwin(v11 - 8);
  v305 = (&v294 - v12);
  v331 = v8;
  __chkstk_darwin(v13);
  v306 = &v294 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v312 = &v294 - v16;
  v327 = sub_10022C350(&qword_100CB5C78, &qword_100A49428);
  v325 = *(v327 - 8);
  __chkstk_darwin(v327);
  v324 = &v294 - v17;
  v309 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v309);
  v307 = &v294 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = sub_10022C350(&qword_100CB5C80, &qword_100A49430);
  __chkstk_darwin(v340);
  v341 = &v294 - v19;
  v20 = sub_10022C350(&qword_100CB5AE8, &qword_100A49358);
  __chkstk_darwin(v20);
  *&v342 = &v294 - v21;
  *&v354 = v22;
  v364 = v9;
  v23 = type metadata accessor for _ConditionalContent();
  *&v356 = *(v23 - 8);
  __chkstk_darwin(v23);
  *&v355 = &v294 - v24;
  v334 = type metadata accessor for AttributedString();
  v332 = *(v334 - 8);
  __chkstk_darwin(v334);
  v345 = &v294 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v343 = &v294 - v27;
  *&v352 = sub_10022C350(&qword_100CB5BD0, &qword_100A493D0);
  __chkstk_darwin(v352);
  v304 = &v294 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v311 = &v294 - v30;
  __chkstk_darwin(v31);
  v303 = &v294 - v32;
  __chkstk_darwin(v33);
  v310 = &v294 - v34;
  __chkstk_darwin(v35);
  v308 = &v294 - v36;
  v337 = sub_10022C350(&qword_100CB5BC0, &qword_100A493C8);
  __chkstk_darwin(v337);
  v313 = &v294 - v37;
  v335 = type metadata accessor for WeatherDescription();
  v333 = *(v335 - 8);
  __chkstk_darwin(v335);
  v346 = &v294 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = sub_10022C350(&qword_100CB5C88, &qword_100A49438);
  __chkstk_darwin(v329);
  v330 = &v294 - v39;
  *&v351 = sub_10022C350(&qword_100CB5B98, &qword_100A493B8);
  __chkstk_darwin(v351);
  v336 = &v294 - v40;
  v296 = type metadata accessor for PrecipitationTotalPlatterView(0);
  __chkstk_darwin(v296);
  v302 = &v294 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = sub_10022C350(&qword_100CB5BA8, &qword_100A493C0);
  __chkstk_darwin(v323);
  v300 = &v294 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v317 = &v294 - v44;
  v318 = type metadata accessor for PrecipitationTotalPlatterViewModel();
  v316 = *(v318 - 8);
  __chkstk_darwin(v318);
  v315 = &v294 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v348 = sub_10022C350(&qword_100CB5C90, &qword_100A49440);
  __chkstk_darwin(v348);
  v350 = &v294 - v46;
  v319 = sub_10022C350(&qword_100CB5C98, &qword_100A49448);
  __chkstk_darwin(v319);
  v320 = (&v294 - v47);
  *&v349 = sub_10022C350(&qword_100CB5B58, &qword_100A493A0);
  __chkstk_darwin(v349);
  v321 = &v294 - v48;
  v49 = sub_10022C350(&qword_100CB5AE0, &qword_100A49350);
  __chkstk_darwin(v49);
  *&v353 = &v294 - v50;
  v347 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v347);
  v299 = (&v294 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v52);
  v297 = (&v294 - v53);
  __chkstk_darwin(v54);
  v298 = (&v294 - v55);
  __chkstk_darwin(v56);
  v295 = (&v294 - v57);
  v58 = type metadata accessor for DetailComponentContainerView(0);
  __chkstk_darwin(v58);
  v60 = &v294 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10022C350(&qword_100CB5B78, &qword_100A493B0);
  __chkstk_darwin(v61);
  v294 = &v294 - v62;
  v314 = sub_10022C350(&qword_100CB5B68, &qword_100A493A8);
  __chkstk_darwin(v314);
  v64 = &v294 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v301 = &v294 - v66;
  v67 = type metadata accessor for DetailComponentContainerViewModel(0);
  __chkstk_darwin(v67 - 8);
  v69 = &v294 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  __chkstk_darwin(v70);
  v72 = (&v294 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  v358 = v49;
  v362 = v23;
  v361 = type metadata accessor for _ConditionalContent();
  v360 = *(v361 - 8);
  __chkstk_darwin(v361);
  v359 = &v294 - v73;
  v74 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v75 = v357;
  sub_1003F0BEC(v357 + *(v74 + 28), v72, type metadata accessor for ConditionDetailPlatterViewModel.Body);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v180 = *v72;
      v179 = v72[1];
      __src[0] = *v72;
      __src[1] = v179;
      sub_10002D5A4();

      v350 = Text.init<A>(_:)();
      v182 = v181;
      v184 = v183;
      v186 = v185;
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v187 = v184 & 1;
      v386 = v184 & 1;
      v188 = *(v75 + *(v74 + 36));
      v353 = 0u;
      v351 = 0u;
      if ((v188 & 1) == 0)
      {
        if (qword_100CA21A0 != -1)
        {
          swift_once();
        }

        v189 = swift_beginAccess();
        *&v190 = sub_1004BA5F0(v189);
        v353 = v190;
        v351 = v191;
        v348 = v193;
        v349 = v192;
        swift_endAccess();
        *&v194 = v351;
        *(&v194 + 1) = v348;
        v351 = v194;
        *&v194 = v353;
        *(&v194 + 1) = v349;
        v353 = v194;
      }

      v195 = static Edge.Set.all.getter();
      v373[0] = 0;
      if (*(v75 + 32))
      {
        v196 = *(v75 + 24);
        v197 = *(v75 + 32);
      }

      else if (*(v75 + 16) < 2u || *v75 ^ 1 | *(v75 + 8))
      {
        v196 = 0;
        v197 = 0xE000000000000000;
      }

      else
      {
        v197 = 0xE400000000000000;
        v196 = 1937204558;
      }

      v274 = v297;
      *v297 = v196;
      v274[1] = v197;
      v274[2] = v180;
      v274[3] = v179;
      type metadata accessor for AutomationCellInfo(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v275 = v303;
      v276 = &v303[*(v352 + 36)];
      v277 = type metadata accessor for AutomationInfoProperty(0);
      sub_1003F0BEC(v274, &v276[*(v277 + 24)], type metadata accessor for AutomationInfo);

      sub_1003F0AEC(v274, type metadata accessor for AutomationInfo);
      *v276 = 0;
      *(v276 + 1) = 0xE000000000000000;
      *(v276 + 2) = swift_getKeyPath();
      v276[24] = 0;
      *v275 = v350;
      *(v275 + 8) = v182;
      *(v275 + 16) = v187;
      *(v275 + 20) = *(__src + 3);
      *(v275 + 17) = __src[0];
      *(v275 + 24) = v186;
      memcpy((v275 + 32), v385, 0x70uLL);
      *(v275 + 144) = v195;
      *(v275 + 145) = v374[0];
      *(v275 + 148) = *(v374 + 3);
      *(v275 + 168) = v351;
      *(v275 + 152) = v353;
      *(v275 + 184) = 0;
      v278 = v310;
      sub_10027FB54(v275, v310, &qword_100CB5BD0, &qword_100A493D0);
      sub_10018CF14(v278, v341, &qword_100CB5BD0, &qword_100A493D0);
      swift_storeEnumTagMultiPayload();
      sub_1003F0370();
      v279 = v342;
      _ConditionalContent<>.init(storage:)();
      v280 = sub_1003F0550();
      v281 = sub_1003F05D4();
      v384 = v366;
      WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v365, &v384);
      v383[0] = v281;
      v383[1] = WitnessTable;
      v283 = v364;
      v284 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v364, v383);
      v285 = v355;
      sub_1003E8038();
      sub_1000180EC(v279, &qword_100CB5AE8, &qword_100A49358);
      sub_1003EFE88();
      v382[0] = v280;
      v382[1] = v284;
      v115 = v362;
      swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v362, v382);
      v116 = v359;
      v113 = v283;
      sub_10012D09C();
      (*(v356 + 8))(v285, v115);
      sub_1000180EC(v278, &qword_100CB5BD0, &qword_100A493D0);
      goto LABEL_59;
    case 2u:
      v119 = v332;
      v120 = v345;
      v121 = v334;
      (*(v332 + 32))(v345, v72, v334);
      (*(v119 + 16))(v343, v120, v121);
      v122 = Text.init(_:)();
      v124 = v123;
      LOBYTE(v121) = v125;
      v350 = v126;
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v127 = v121 & 1;
      LOBYTE(v374[0]) = v121 & 1;
      v128 = *(v75 + *(v74 + 36));
      v353 = 0u;
      v351 = 0u;
      if ((v128 & 1) == 0)
      {
        if (qword_100CA21A0 != -1)
        {
          swift_once();
        }

        v129 = swift_beginAccess();
        *&v130 = sub_1004BA5F0(v129);
        v353 = v130;
        v351 = v131;
        v348 = v133;
        v349 = v132;
        swift_endAccess();
        *&v134 = v351;
        *(&v134 + 1) = v348;
        v351 = v134;
        *&v134 = v353;
        *(&v134 + 1) = v349;
        v353 = v134;
      }

      v135 = static Edge.Set.all.getter();
      LOBYTE(__src[0]) = 0;
      if (*(v75 + 32))
      {
        v136 = *(v75 + 24);
        v137 = *(v75 + 32);
      }

      else if (*(v75 + 16) < 2u || *v75 ^ 1 | *(v75 + 8))
      {
        v136 = 0;
        v137 = 0xE000000000000000;
      }

      else
      {
        v137 = 0xE400000000000000;
        v136 = 1937204558;
      }

      AttributedString.characters.getter();
      sub_1003F0910(&qword_100CAB940, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
      v239 = String.init<A>(_:)();
      v240 = v299;
      *v299 = v136;
      v240[1] = v137;
      v240[2] = v239;
      v240[3] = v241;
      type metadata accessor for AutomationCellInfo(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v242 = v304;
      v243 = &v304[*(v352 + 36)];
      v244 = type metadata accessor for AutomationInfoProperty(0);
      sub_1003F0BEC(v240, &v243[*(v244 + 24)], type metadata accessor for AutomationInfo);
      sub_1003F0AEC(v240, type metadata accessor for AutomationInfo);
      *v243 = 0;
      *(v243 + 1) = 0xE000000000000000;
      *(v243 + 2) = swift_getKeyPath();
      v243[24] = 0;
      *v242 = v122;
      *(v242 + 8) = v124;
      *(v242 + 16) = v127;
      *(v242 + 24) = v350;
      memcpy((v242 + 32), v390, 0x70uLL);
      *(v242 + 144) = v135;
      *(v242 + 168) = v351;
      *(v242 + 152) = v353;
      *(v242 + 184) = 0;
      v245 = v311;
      sub_10027FB54(v242, v311, &qword_100CB5BD0, &qword_100A493D0);
      sub_10018CF14(v245, v341, &qword_100CB5BD0, &qword_100A493D0);
      swift_storeEnumTagMultiPayload();
      sub_1003F0370();
      v246 = v342;
      _ConditionalContent<>.init(storage:)();
      v247 = sub_1003F0550();
      v248 = sub_1003F05D4();
      v389 = v366;
      v249 = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v365, &v389);
      v388[0] = v248;
      v388[1] = v249;
      v113 = v364;
      v250 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v364, v388);
      v251 = v355;
      sub_1003E8038();
      sub_1000180EC(v246, &qword_100CB5AE8, &qword_100A49358);
      sub_1003EFE88();
      v387[0] = v247;
      v387[1] = v250;
      v115 = v362;
      swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v362, v387);
      v116 = v359;
      sub_10012D09C();
      (*(v356 + 8))(v251, v115);
      sub_1000180EC(v245, &qword_100CB5BD0, &qword_100A493D0);
      (*(v332 + 8))(v345, v334);
      v163 = v361;
      goto LABEL_56;
    case 3u:
      v138 = v324;
      (*(v325 + 32))(v324, v72, v327);
      v139 = static HorizontalAlignment.center.getter();
      v140 = v305;
      *v305 = v139;
      v140[1] = 0;
      *(v140 + 16) = 0;
      sub_10022C350(&qword_100CB5CA0, &qword_100A49450);
      sub_1003EF19C(v138);
      v141 = *(v75 + *(v74 + 36));
      v357 = 0u;
      v353 = 0u;
      v142 = v366;
      v143 = v365;
      v144 = v364;
      if ((v141 & 1) == 0)
      {
        if (qword_100CA21A0 != -1)
        {
          swift_once();
        }

        v145 = swift_beginAccess();
        *&v146 = sub_1004BA5F0(v145);
        v357 = v146;
        v352 = v147;
        v353 = v148;
        v351 = v149;
        swift_endAccess();
        *&v150 = v353;
        *(&v150 + 1) = v351;
        v353 = v150;
        *&v150 = v357;
        *(&v150 + 1) = v352;
        v357 = v150;
      }

      v151 = static Edge.Set.all.getter();
      v152 = v140;
      v153 = v306;
      sub_10027FB54(v152, v306, &qword_100CB5C10, &qword_100A493E8);
      v154 = v153 + *(v331 + 36);
      *v154 = v151;
      *(v154 + 24) = v353;
      *(v154 + 8) = v357;
      *(v154 + 40) = 0;
      v155 = v312;
      sub_10027FB54(v153, v312, &qword_100CB5AF0, &qword_100A49360);
      v156 = sub_1003F05D4();
      v393 = v142;
      v157 = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v143, &v393);
      v158 = v338;
      sub_1003E8038();
      v159 = sub_1003F0550();
      v392[0] = v156;
      v392[1] = v157;
      v160 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v144, v392);
      v161 = v355;
      sub_10012D09C();
      (*(v339 + 8))(v158, v144);
      sub_1003EFE88();
      v391[0] = v159;
      v391[1] = v160;
      v115 = v362;
      swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v362, v391);
      v116 = v359;
      v113 = v364;
      sub_10012D09C();
      (*(v356 + 8))(v161, v115);
      v162 = v155;
      v163 = v361;
      sub_1000180EC(v162, &qword_100CB5AF0, &qword_100A49360);
      (*(v325 + 8))(v324, v327);
      goto LABEL_60;
    case 4u:
      sub_1003F0A94(v72, v69, type metadata accessor for DetailComponentContainerViewModel);
      v93 = &v60[v58[5]];
      *&v356 = v69;
      sub_1003F0BEC(v69, v93, type metadata accessor for DetailComponentContainerViewModel);
      v95 = type metadata accessor for ConditionDetailPlatterView(0, v322, v366, v94);
      sub_100035B30(v75 + *(v95 + 40), &v60[v58[6]]);
      if (qword_100CA21A0 != -1)
      {
        swift_once();
      }

      v96 = swift_beginAccess();
      v97 = sub_1004BA5B0(v96);
      sub_1004BA5F0(v98);
      v100 = v99;
      v102 = sub_1004BA5F0(v101);
      swift_endAccess();
      *v60 = swift_getKeyPath();
      v60[8] = 0;
      *&v60[v58[7]] = v97;
      *&v60[v58[8]] = v100;
      *&v60[v58[9]] = v102;
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v103 = v294;
      sub_1003F0A94(v60, v294, type metadata accessor for DetailComponentContainerView);
      memcpy((v103 + *(v61 + 36)), __src, 0x70uLL);
      v104 = v295;
      *v295 = xmmword_100A2C400;
      *(v104 + 16) = 2;
      swift_storeEnumTagMultiPayload();
      v105 = &v64[*(v314 + 36)];
      v106 = type metadata accessor for AutomationInfoProperty(0);
      sub_1003F0BEC(v104, &v105[*(v106 + 24)], type metadata accessor for AutomationInfo);
      sub_1003F0AEC(v104, type metadata accessor for AutomationInfo);
      *v105 = 0;
      *(v105 + 1) = 0xE000000000000000;
      *(v105 + 2) = swift_getKeyPath();
      v105[24] = 0;
      sub_10027FB54(v103, v64, &qword_100CB5B78, &qword_100A493B0);
      v107 = v301;
      sub_10027FB54(v64, v301, &qword_100CB5B68, &qword_100A493A8);
      sub_10018CF14(v107, v320, &qword_100CB5B68, &qword_100A493A8);
      swift_storeEnumTagMultiPayload();
      sub_1003EFFA0();
      sub_1003F0118();
      v108 = v321;
      _ConditionalContent<>.init(storage:)();
      sub_10018CF14(v108, v350, &qword_100CB5B58, &qword_100A493A0);
      swift_storeEnumTagMultiPayload();
      sub_1003EFF14();
      sub_1003F016C();
      v109 = v353;
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v108, &qword_100CB5B58, &qword_100A493A0);
      sub_1003EFE88();
      v110 = sub_1003F0550();
      v111 = sub_1003F05D4();
      v369 = v366;
      v112 = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v365, &v369);
      v368[0] = v111;
      v368[1] = v112;
      v113 = v364;
      v114 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v364, v368);
      v367[0] = v110;
      v367[1] = v114;
      v115 = v362;
      swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v362, v367);
      v116 = v359;
      sub_1003E8038();
      sub_1000180EC(v109, &qword_100CB5AE0, &qword_100A49350);
      sub_1000180EC(v107, &qword_100CB5B68, &qword_100A493A8);
      v117 = type metadata accessor for DetailComponentContainerViewModel;
      v118 = v356;
      goto LABEL_23;
    case 5u:
      memcpy(v374, v72, 0x5AuLL);
      v198 = *(v75 + *(v74 + 36));
      v199 = 0.0;
      v200 = 0;
      v201 = 0;
      v202 = 0;
      v115 = v362;
      v163 = v361;
      v203 = v360;
      if ((v198 & 1) == 0)
      {
        if (qword_100CA21A0 != -1)
        {
          swift_once();
        }

        v204 = swift_beginAccess();
        v199 = sub_1004BA5F0(v204);
        v200 = v205;
        v201 = v206;
        v202 = v207;
        swift_endAccess();
      }

      memcpy(__src, v374, 0x5AuLL);
      v208 = v320;
      memcpy(v320, __src, 0x60uLL);
      v208[12] = v199;
      *(v208 + 13) = v200;
      *(v208 + 14) = v201;
      *(v208 + 15) = v202;
      swift_storeEnumTagMultiPayload();
      sub_1003F0958(v374, v373);
      sub_1003EFFA0();
      sub_1003F0118();
      v209 = v321;
      _ConditionalContent<>.init(storage:)();
      sub_10018CF14(v209, v350, &qword_100CB5B58, &qword_100A493A0);
      swift_storeEnumTagMultiPayload();
      sub_1003EFF14();
      sub_1003F016C();
      v210 = v353;
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v209, &qword_100CB5B58, &qword_100A493A0);
      sub_1003EFE88();
      v211 = sub_1003F0550();
      v212 = sub_1003F05D4();
      v372 = v366;
      v213 = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v365, &v372);
      v371[0] = v212;
      v371[1] = v213;
      v113 = v364;
      v214 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v364, v371);
      v370[0] = v211;
      v370[1] = v214;
      swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v115, v370);
      v116 = v359;
      sub_1003E8038();
      sub_1003F09B4(v374);
      sub_1000180EC(v210, &qword_100CB5AE0, &qword_100A49350);
      break;
    case 6u:
      v216 = v315;
      v215 = v316;
      v217 = v318;
      (*(v316 + 32))(v315, v72, v318);
      v218 = *(v215 + 16);
      v219 = v302;
      v218(v302, v216, v217);
      *&v219[*(v296 + 20)] = 0x402A000000000000;
      v220 = *(v75 + *(v74 + 36));
      v356 = 0u;
      v357 = 0u;
      v113 = v364;
      v163 = v361;
      if ((v220 & 1) == 0)
      {
        if (qword_100CA21A0 != -1)
        {
          swift_once();
        }

        v221 = swift_beginAccess();
        *&v222 = sub_1004BA5F0(v221);
        v356 = v223;
        v357 = v222;
        v354 = v225;
        v355 = v224;
        swift_endAccess();
        *&v226 = v356;
        *(&v226 + 1) = v354;
        v356 = v226;
        *&v226 = v357;
        *(&v226 + 1) = v355;
        v357 = v226;
      }

      v227 = static Edge.Set.all.getter();
      v228 = v219;
      v229 = v300;
      sub_1003F0A94(v228, v300, type metadata accessor for PrecipitationTotalPlatterView);
      v230 = v229 + *(v323 + 36);
      *v230 = v227;
      v231 = v357;
      *(v230 + 24) = v356;
      *(v230 + 8) = v231;
      *(v230 + 40) = 0;
      v232 = v317;
      sub_10027FB54(v229, v317, &qword_100CB5BA8, &qword_100A493C0);
      sub_10018CF14(v232, v330, &qword_100CB5BA8, &qword_100A493C0);
      swift_storeEnumTagMultiPayload();
      sub_1003F01F8();
      sub_1003F02B4();
      v233 = v336;
      _ConditionalContent<>.init(storage:)();
      sub_10018CF14(v233, v350, &qword_100CB5B98, &qword_100A493B8);
      swift_storeEnumTagMultiPayload();
      sub_1003EFF14();
      sub_1003F016C();
      v234 = v353;
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v233, &qword_100CB5B98, &qword_100A493B8);
      sub_1003EFE88();
      v235 = sub_1003F0550();
      v236 = sub_1003F05D4();
      v377 = v366;
      v237 = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v365, &v377);
      v376[0] = v236;
      v376[1] = v237;
      v238 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v113, v376);
      v375[0] = v235;
      v375[1] = v238;
      v115 = v362;
      swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v362, v375);
      v116 = v359;
      sub_1003E8038();
      sub_1000180EC(v234, &qword_100CB5AE0, &qword_100A49350);
      sub_1000180EC(v317, &qword_100CB5BA8, &qword_100A493C0);
      (*(v316 + 8))(v315, v318);
      goto LABEL_60;
    case 7u:
      v164 = v366;
      v165 = type metadata accessor for ConditionDetailPlatterView(0, v322, v366, v76);
      v166 = v328;
      sub_1003EF9A0(v165, v328);
      v400 = v164;
      v167 = v365;
      v168 = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v365, &v400);
      v169 = v326;
      sub_1000833D8(v166, v167, v168);
      v170 = *(v344 + 8);
      *&v344 = v344 + 8;
      *&v357 = v170;
      v170(v166, v167);
      sub_1000833D8(v169, v167, v168);
      v171 = sub_1003F05D4();
      v172 = v338;
      sub_10012D09C();
      v173 = sub_1003F0550();
      v399[0] = v171;
      v399[1] = v168;
      v174 = v364;
      v175 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v364, v399);
      v176 = v355;
      sub_10012D09C();
      (*(v339 + 8))(v172, v174);
      sub_1003EFE88();
      v398[0] = v173;
      v398[1] = v175;
      v177 = v362;
      swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v362, v398);
      v116 = v359;
      v115 = v177;
      sub_10012D09C();
      (*(v356 + 8))(v176, v177);
      v178 = v357;
      (v357)(v328, v167);
      v178(v326, v167);
      v113 = v174;
      v117 = type metadata accessor for ConditionDetailPlatterViewModel.Body;
      v118 = v72;
LABEL_23:
      sub_1003F0AEC(v118, v117);
LABEL_59:
      v163 = v361;
LABEL_60:
      v203 = v360;
      break;
    default:
      (*(v333 + 32))(v346, v72, v335);
      static Font.body.getter();
      WeatherDescription.formatted(font:color:)();

      *&v354 = Text.init(_:)();
      v345 = v77;
      v79 = v78;
      v81 = v80;
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v82 = v79 & 1;
      v386 = v79 & 1;
      v83 = *(v75 + *(v74 + 36));
      v355 = 0u;
      v356 = 0u;
      if ((v83 & 1) == 0)
      {
        if (qword_100CA21A0 != -1)
        {
          swift_once();
        }

        v84 = swift_beginAccess();
        *&v85 = sub_1004BA5F0(v84);
        v344 = v86;
        v355 = v87;
        v356 = v85;
        v342 = v88;
        swift_endAccess();
        *&v89 = v355;
        *(&v89 + 1) = v342;
        v355 = v89;
        *&v89 = v356;
        *(&v89 + 1) = v344;
        v356 = v89;
      }

      v90 = static Edge.Set.all.getter();
      v373[0] = 0;
      if (*(v75 + 32))
      {
        v91 = *(v75 + 24);
        v92 = *(v75 + 32);
      }

      else if (*(v75 + 16) < 2u || *v75 ^ 1 | *(v75 + 8))
      {
        v91 = 0;
        v92 = 0xE000000000000000;
      }

      else
      {
        v92 = 0xE400000000000000;
        v91 = 1937204558;
      }

      v163 = v361;

      v252 = WeatherDescription.string.getter();
      v253 = v298;
      *v298 = v91;
      v253[1] = v92;
      v253[2] = v252;
      v253[3] = v254;
      type metadata accessor for AutomationCellInfo(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v255 = v308;
      v256 = &v308[*(v352 + 36)];
      v257 = type metadata accessor for AutomationInfoProperty(0);
      sub_1003F0BEC(v253, &v256[*(v257 + 24)], type metadata accessor for AutomationInfo);
      sub_1003F0AEC(v253, type metadata accessor for AutomationInfo);
      *v256 = 0;
      *(v256 + 1) = 0xE000000000000000;
      *(v256 + 2) = swift_getKeyPath();
      v256[24] = 0;
      v258 = v345;
      *v255 = v354;
      *(v255 + 8) = v258;
      *(v255 + 16) = v82;
      *(v255 + 20) = *(__src + 3);
      *(v255 + 17) = __src[0];
      *(v255 + 24) = v81;
      memcpy((v255 + 32), v381, 0x70uLL);
      *(v255 + 144) = v90;
      *(v255 + 145) = v374[0];
      *(v255 + 148) = *(v374 + 3);
      v259 = v356;
      *(v255 + 168) = v355;
      *(v255 + 152) = v259;
      *(v255 + 184) = 0;
      v260 = sub_1003EC6B4();
      if (v263)
      {
        v264 = v260;
      }

      else
      {
        static Font.body.getter();
        WeatherDescription.formatted(font:color:)();

        v264 = Text.init(_:)();
      }

      v265 = v261;
      v266 = v262;
      v113 = v364;
      sub_1003F0370();
      v267 = v313;
      View.accessibilityLabel(_:)();
      sub_10010CD64(v264, v265, v266 & 1);

      sub_1000180EC(v255, &qword_100CB5BD0, &qword_100A493D0);
      sub_10018CF14(v267, v330, &qword_100CB5BC0, &qword_100A493C8);
      swift_storeEnumTagMultiPayload();
      sub_1003F01F8();
      sub_1003F02B4();
      v268 = v336;
      _ConditionalContent<>.init(storage:)();
      sub_10018CF14(v268, v350, &qword_100CB5B98, &qword_100A493B8);
      swift_storeEnumTagMultiPayload();
      sub_1003EFF14();
      sub_1003F016C();
      v269 = v353;
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v268, &qword_100CB5B98, &qword_100A493B8);
      sub_1003EFE88();
      v270 = sub_1003F0550();
      v271 = sub_1003F05D4();
      v380 = v366;
      v272 = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v365, &v380);
      v379[0] = v271;
      v379[1] = v272;
      v273 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v113, v379);
      v378[0] = v270;
      v378[1] = v273;
      v115 = v362;
      swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v362, v378);
      v116 = v359;
      sub_1003E8038();
      sub_1000180EC(v269, &qword_100CB5AE0, &qword_100A49350);
      sub_1000180EC(v267, &qword_100CB5BC0, &qword_100A493C8);
      (*(v333 + 8))(v346, v335);
LABEL_56:
      v203 = v360;
      break;
  }

  v286 = sub_1003EFE88();
  v287 = sub_1003F0550();
  v288 = sub_1003F05D4();
  v397 = v366;
  v289 = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v365, &v397);
  v396[0] = v288;
  v396[1] = v289;
  v290 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v113, v396);
  v395[0] = v287;
  v395[1] = v290;
  v291 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v115, v395);
  v394[0] = v286;
  v394[1] = v291;
  v292 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v163, v394);
  sub_1000833D8(v116, v163, v292);
  return (*(v203 + 8))(v116, v163);
}

uint64_t sub_1003EF19C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB5C78, &qword_100A49428);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  NonEmpty.elements.getter();
  v9[0] = v9[1];
  swift_getKeyPath();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_10022C350(&qword_100CB5CA8, &qword_100A494D0);
  sub_10022C350(&qword_100CB5CB0, &qword_100A494D8);
  sub_100006F64(&qword_100CB5CB8, &qword_100CB5CA8, &qword_100A494D0, &protocol conformance descriptor for [A]);
  sub_100006F64(&qword_100CB5CC0, &qword_100CB5CB0, &qword_100A494D8, &protocol conformance descriptor for TupleView<A>);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1003EF3C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v45 = a2;
  v50 = a3;
  v4 = type metadata accessor for ConditionDetailPlatterViewModel.TextSection(0);
  __chkstk_darwin(v4);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for AttributedString();
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  *&v46 = a1;
  v39 = v9;
  v69[0] = v9;
  v69[1] = v10;
  sub_10002D5A4();
  v38 = v10;

  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static Font.headline.getter();
  v16 = Text.font(_:)();
  v47 = v17;
  v48 = v16;
  v19 = v18;
  v49 = v20;

  sub_10010CD64(v11, v13, v15 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v21 = v19 & 1;
  v78 = v19 & 1;
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004BA650();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v41 = v79;
  v42 = v81;
  v43 = v84;
  v44 = v83;
  v77 = 1;
  v75 = v80;
  v73 = v82;
  (*(v37 + 16))(v8, v46 + *(v4 + 20), v40);
  v22 = Text.init(_:)();
  v36 = v23;
  v37 = v22;
  v25 = v24;
  v40 = v26;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v27 = v25 & 1;
  v70[112] = v25 & 1;
  sub_10022C350(&qword_100CB5C78, &qword_100A49428);
  sub_100006F64(&qword_100CB5CC8, &qword_100CB5CA8, &qword_100A494D0, &protocol conformance descriptor for [A]);
  NonEmpty<>.last.getter();
  v28 = v39 == *v6 && v38 == v6[1];
  if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static AttributedString.== infix(_:_:)())
  {
    sub_1003F0AEC(v6, type metadata accessor for ConditionDetailPlatterViewModel.TextSection);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 1;
    LOBYTE(v69[0]) = 1;
    v46 = 0u;
  }

  else
  {
    sub_1003F0AEC(v6, type metadata accessor for ConditionDetailPlatterViewModel.TextSection);
    sub_1004BA674();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v34 = 0;
    v29 = v85;
    v30 = v87;
    v46 = v89;
    v68[0] = 1;
    LOBYTE(v66[0]) = v86;
    LOBYTE(v54[0]) = v88;
    v33 = 1;
    v32 = v86;
    v31 = v88;
    LOBYTE(v69[0]) = 0;
  }

  v66[0] = v48;
  v66[1] = v47;
  LOBYTE(v66[2]) = v21;
  v66[3] = v49;
  memcpy(&v66[4], v71, 0x70uLL);
  v56 = v77;
  *v57 = *v76;
  *&v57[3] = *&v76[3];
  v55 = 0;
  v58 = v41;
  v59 = v75;
  *v60 = *v74;
  *&v60[3] = *&v74[3];
  v61 = v42;
  v62 = v73;
  *v63 = *v72;
  *&v63[3] = *&v72[3];
  v64 = v44;
  v65 = v43;
  v67[0] = v66;
  v67[1] = &v55;
  v54[0] = v37;
  v54[1] = v36;
  LOBYTE(v54[2]) = v27;
  v54[3] = v40;
  memcpy(&v54[4], v70, 0x70uLL);
  v51[0] = 0;
  v51[1] = v33;
  v51[2] = v29;
  v51[3] = v32;
  v51[4] = v30;
  v51[5] = v31;
  v52 = v46;
  v53 = v34;
  v67[2] = v54;
  v67[3] = v51;
  sub_1003E87A0(v67, v50);
  memcpy(v68, v54, sizeof(v68));
  sub_1000180EC(v68, &qword_100CB5BF0, &qword_100A493E0);
  memcpy(v69, v66, sizeof(v69));
  return sub_1000180EC(v69, &qword_100CB5BF0, &qword_100A493E0);
}

uint64_t sub_1003EF9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = *(a1 + 16);
  v33 = *(v4 - 8);
  __chkstk_darwin(a1);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v31 = &v30 - v7;
  v8 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ConditionDetailDynamicContentIdentifier(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v34 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  v35 = a1;
  v20 = *(v2 + *(a1 + 44));
  if (!v20)
  {
    goto LABEL_5;
  }

  v21 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  sub_1003F0BEC(v2 + *(v21 + 28), v10, type metadata accessor for ConditionDetailPlatterViewModel.Body);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_1003F0AEC(v10, type metadata accessor for ConditionDetailPlatterViewModel.Body);
LABEL_5:
    sub_10001B350(v16, 1, 1, v4);
    v23 = *(v35 + 24);
    goto LABEL_6;
  }

  sub_1003F0A94(v10, v13, type metadata accessor for ConditionDetailDynamicContentIdentifier);

  v22 = v32;
  v20(v13);
  sub_10002B028(v20);
  sub_1003F0AEC(v13, type metadata accessor for ConditionDetailDynamicContentIdentifier);
  v23 = *(v35 + 24);
  v24 = v31;
  sub_1000833D8(v22, v4, v23);
  v25 = v33;
  v26 = *(v33 + 8);
  v26(v22, v4);
  sub_1000833D8(v24, v4, v23);
  v26(v24, v4);
  (*(v25 + 32))(v16, v22, v4);
  sub_10001B350(v16, 0, 1, v4);
LABEL_6:
  sub_1003E7FD4(v16, v19);
  v27 = *(v34 + 8);
  v27(v16, v14);
  v37 = v23;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v14, &v37);
  sub_1000833D8(v19, v14, WitnessTable);
  return (v27)(v19, v14);
}

unint64_t sub_1003EFDD0()
{
  result = qword_100CB5B28;
  if (!qword_100CB5B28)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5B10, &qword_100A49380);
    v4[0] = sub_100006F64(&qword_100CB5B30, &qword_100CB5B38, &qword_100A49398, &protocol conformance descriptor for VStack<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5B28);
  }

  return result;
}

unint64_t sub_1003EFE88()
{
  result = qword_100CB5B48;
  if (!qword_100CB5B48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5AE0, &qword_100A49350);
    v4[0] = sub_1003EFF14();
    v4[1] = sub_1003F016C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5B48);
  }

  return result;
}

unint64_t sub_1003EFF14()
{
  result = qword_100CB5B50;
  if (!qword_100CB5B50)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5B58, &qword_100A493A0);
    v4[0] = sub_1003EFFA0();
    v4[1] = sub_1003F0118();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5B50);
  }

  return result;
}

unint64_t sub_1003EFFA0()
{
  result = qword_100CB5B60;
  if (!qword_100CB5B60)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5B68, &qword_100A493A8);
    v4[0] = sub_1003F005C();
    v4[1] = sub_1003F0910(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5B60);
  }

  return result;
}

unint64_t sub_1003F005C()
{
  result = qword_100CB5B70;
  if (!qword_100CB5B70)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5B78, &qword_100A493B0);
    v4[0] = sub_1003F0910(&qword_100CB5B80, type metadata accessor for DetailComponentContainerView, byte_100A78380);
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5B70);
  }

  return result;
}

unint64_t sub_1003F0118()
{
  result = qword_100CB5B88;
  if (!qword_100CB5B88)
  {
    result = swift_getWitnessTable(byte_100A98090, &type metadata for ComparisonDetailComponentView, v0, v1);
    atomic_store(result, &qword_100CB5B88);
  }

  return result;
}

unint64_t sub_1003F016C()
{
  result = qword_100CB5B90;
  if (!qword_100CB5B90)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5B98, &qword_100A493B8);
    v4[0] = sub_1003F01F8();
    v4[1] = sub_1003F02B4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5B90);
  }

  return result;
}

unint64_t sub_1003F01F8()
{
  result = qword_100CB5BA0;
  if (!qword_100CB5BA0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5BA8, &qword_100A493C0);
    v4[0] = sub_1003F0910(&qword_100CB5BB0, type metadata accessor for PrecipitationTotalPlatterView, byte_100A9F8D0);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5BA0);
  }

  return result;
}

unint64_t sub_1003F02B4()
{
  result = qword_100CB5BB8;
  if (!qword_100CB5BB8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5BC0, &qword_100A493C8);
    v4[0] = sub_1003F0370();
    v4[1] = sub_1003F0910(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5BB8);
  }

  return result;
}

unint64_t sub_1003F0370()
{
  result = qword_100CB5BC8;
  if (!qword_100CB5BC8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5BD0, &qword_100A493D0);
    v4[0] = sub_1003F0458(&qword_100CB5BD8, &qword_100CB5BE0, &qword_100A493D8, sub_1003F04CC);
    v4[1] = sub_1003F0910(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5BC8);
  }

  return result;
}

uint64_t sub_1003F0458(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10022E824(a2, a3);
    v9[0] = a4();
    v9[1] = &protocol witness table for _PaddingLayout;
    v8 = sub_100007E30();
    result = swift_getWitnessTable(v8, v7, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003F04CC()
{
  result = qword_100CB5BE8;
  if (!qword_100CB5BE8)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10022E824(&qword_100CB5BF0, &qword_100A493E0);
    v4[0] = &protocol witness table for Text;
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5BE8);
  }

  return result;
}

unint64_t sub_1003F0550()
{
  result = qword_100CB5BF8;
  if (!qword_100CB5BF8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5AE8, &qword_100A49358);
    v4[0] = sub_1003F0370();
    v4[1] = v4[0];
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5BF8);
  }

  return result;
}

unint64_t sub_1003F05D4()
{
  result = qword_100CB5C00;
  if (!qword_100CB5C00)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5AF0, &qword_100A49360);
    v4[0] = sub_100006F64(&qword_100CB5C08, &qword_100CB5C10, &qword_100A493E8, &protocol conformance descriptor for VStack<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5C00);
  }

  return result;
}

unint64_t sub_1003F068C()
{
  result = qword_100CB5C20;
  if (!qword_100CB5C20)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5AD8, &qword_100A49348);
    v4[0] = sub_1003EFDD0();
    v4[1] = sub_10014D3D8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5C20);
  }

  return result;
}

unint64_t sub_1003F0718()
{
  result = qword_100CB5C28;
  if (!qword_100CB5C28)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CB5B00, &qword_100A49370);
    v4[0] = sub_1003F0458(&qword_100CB5C30, &qword_100CB5B08, &qword_100A49378, sub_1003F07C8);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CB5C28);
  }

  return result;
}

unint64_t sub_1003F07C8()
{
  result = qword_100CB5C38;
  if (!qword_100CB5C38)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = sub_10022E824(&qword_100CB5C40, &qword_100A493F0);
    v4[2] = type metadata accessor for Divider();
    v4[3] = type metadata accessor for QuaternaryDividerStyle();
    v4[4] = sub_1003F0910(&qword_100CA7298, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    v4[5] = sub_1003F0910(&qword_100CB5C48, &type metadata accessor for QuaternaryDividerStyle, &protocol conformance descriptor for QuaternaryDividerStyle);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5C38);
  }

  return result;
}

uint64_t sub_1003F0910(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1003F0A08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_10022C350(&qword_100CB5C78, &qword_100A49428) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1003EF3C8(a1, v6, a2);
}

uint64_t sub_1003F0A94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1003F0AEC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_1003F0BA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1003F0BEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1003F0C44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = [objc_opt_self() mainBundle];
  if (v1 == 10)
  {
    v10._object = 0x8000000100AC6380;
    v3._countAndFlagsBits = 0x46207961442D6425;
    v3._object = 0xEF7473616365726FLL;
    v10._countAndFlagsBits = 0xD000000000000086;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v10);

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100A2C3F0;
    *(v5 + 56) = &type metadata for Int;
    *(v5 + 64) = &protocol witness table for Int;
    *(v5 + 32) = 10;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    v11._object = 0x8000000100AC6330;
    v8._countAndFlagsBits = 0x6F4620796C696144;
    v8._object = 0xEE00747361636572;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD000000000000040;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v2, v9, v11)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_1003F0DEC()
{
  sub_100006F14((v0 + 16));
  sub_100006F14((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1003F0E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyForecastComponentViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F0E90(uint64_t a1)
{
  v2 = type metadata accessor for DailyForecastComponentViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003F0F18@<X0>(uint64_t a1@<X8>)
{
  v293 = a1;
  v2 = sub_10022C350(&qword_100CB5FE8, &qword_100A49AA8);
  sub_10001BA94(v2, &v308);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000039BC();
  sub_100003990(v4);
  v5 = sub_10022C350(&qword_100CB5FF0, &qword_100A49AB0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  sub_100003990(v7);
  v8 = sub_10022C350(&qword_100CB5FF8, &qword_100A49AB8);
  sub_10001BA94(v8, &v304);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  sub_100003990(v10);
  v11 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  v12 = sub_100003AE8(v11);
  v264 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_100003990(&v311._object - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  sub_100003990(&v311._object - v17);
  v18 = sub_10022C350(&qword_100CB6000, &qword_100A49AC0);
  sub_10001BA94(v18, &v306);
  sub_100003828();
  __chkstk_darwin(v19);
  sub_1000039BC();
  sub_100003990(v20);
  v21 = sub_10022C350(&qword_100CB6008, &qword_100A49AC8);
  sub_10001BA94(v21, &v302);
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_100003990(v23);
  v24 = sub_10022C350(&qword_100CB6010, &qword_100A49AD0);
  sub_10001BA94(v24, &v305);
  sub_100003828();
  __chkstk_darwin(v25);
  sub_1000039BC();
  sub_100003990(v26);
  v292 = sub_10022C350(&qword_100CB6018, &qword_100A49AD8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v27);
  sub_1000039BC();
  sub_100003990(v28);
  v29 = sub_10022C350(&qword_100CB6020, &unk_100A49AE0);
  sub_10001BA94(v29, &v300);
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  sub_100003990(v31);
  v32 = sub_10022C350(&qword_100CB6028, &unk_100A7B470);
  sub_100003810(v32);
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000039BC();
  sub_100003990(v34);
  v35 = sub_10022C350(&qword_100CB6030, &unk_100A49AF0);
  sub_10001BA94(v35, v299);
  sub_100003828();
  __chkstk_darwin(v36);
  sub_1000039BC();
  sub_100003990(v37);
  v38 = sub_10022C350(&qword_100CB6038, &qword_100A64140);
  sub_100003810(v38);
  sub_100003828();
  __chkstk_darwin(v39);
  sub_1000039BC();
  sub_100003990(v40);
  v41 = sub_10022C350(&qword_100CB6040, &qword_100A49B00);
  sub_10001BA94(v41, v297);
  sub_100003828();
  __chkstk_darwin(v42);
  sub_1000039BC();
  sub_100003990(v43);
  v286 = sub_10022C350(&qword_100CB6048, &qword_100A49B08);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v44);
  sub_1000039BC();
  sub_100003990(v45);
  v46 = sub_10022C350(&qword_100CB6050, &unk_100A49B10);
  sub_10001BA94(v46, v296);
  sub_100003828();
  __chkstk_darwin(v47);
  sub_1000039BC();
  sub_100003990(v48);
  v49 = sub_10022C350(&qword_100CB6058, &unk_100A7B460);
  sub_100003810(v49);
  sub_100003828();
  __chkstk_darwin(v50);
  sub_1000039BC();
  sub_100003990(v51);
  v271 = sub_10022C350(&qword_100CB6060, &qword_100A49B20);
  sub_100007FD0();
  v261 = v52;
  sub_100003828();
  __chkstk_darwin(v53);
  sub_1000039BC();
  sub_100003990(v54);
  v55 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  v56 = sub_100003810(v55);
  __chkstk_darwin(v56);
  sub_1000037D8();
  sub_100003990(v58 - v57);
  v287 = sub_10022C350(&qword_100CB6068, &qword_100A49B28);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v59);
  sub_1000039BC();
  v289 = v60;
  v61 = sub_10022C350(&qword_100CB6070, &qword_100A49B30);
  sub_10001BA94(v61, &v309);
  sub_100003828();
  __chkstk_darwin(v62);
  sub_1000039BC();
  v284 = v63;
  v64 = sub_10022C350(&qword_100CB6078, &qword_100A49B38);
  sub_10001BA94(v64, v294);
  sub_100003828();
  __chkstk_darwin(v65);
  v67 = &v311._object - v66;
  v283 = sub_10022C350(&qword_100CB6080, &qword_100A49B40);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v68);
  sub_1000039BC();
  sub_100003990(v69);
  v288 = sub_10022C350(&qword_100CB6088, &qword_100A49B48);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v70);
  sub_1000039BC();
  v285 = v71;
  v72 = type metadata accessor for ContentViewiOS(0);
  sub_1000037E8();
  __chkstk_darwin(v73);
  sub_1000037D8();
  v76 = v75 - v74;
  v77 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full(0);
  v78 = sub_100003810(v77);
  __chkstk_darwin(v78);
  sub_1000037D8();
  v81 = v80 - v79;
  v82 = type metadata accessor for UnitsConfigurationViewModel.Representation(0);
  sub_1000037E8();
  __chkstk_darwin(v83);
  sub_1000037D8();
  v86 = v85 - v84;
  v87 = type metadata accessor for UnitsConfigurationViewModel(0);
  v88 = sub_100003810(v87);
  __chkstk_darwin(v88);
  sub_1000037D8();
  v91 = v90 - v89;
  v92 = sub_10022C350(&qword_100CB6090, &qword_100A49B50);
  v93 = sub_100003810(v92);
  __chkstk_darwin(v93);
  sub_100003C38();
  v291 = v94 - v95;
  __chkstk_darwin(v96);
  v290 = &v311._object - v97;
  v98 = v1;
  sub_100988F60();
  sub_1003FD8A8(v91, v86, type metadata accessor for UnitsConfigurationViewModel.Representation);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v211 = v266;
      sub_1000419E4();
      sub_10011C0F0(v212, v213, v214, v215);
      v216 = sub_10022C350(&qword_100CB6158, &qword_100A49B88);
      sub_100025174(*(v216 + 36));
      sub_10003042C();
      sub_10006A798();
      v217 = swift_allocObject();
      sub_100008528(v217);
      sub_10008654C();
      v218 = [objc_opt_self() mainBundle];
      v219 = sub_10001EB98();
      sub_100031CF0(v219, v220, v221, v222, v223, v224, v225, v226);
      sub_100017844();

      sub_1000145A4();
      *v227 = sub_1003FD990;
      v227[1] = v217;
      LOBYTE(v216) = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v228 = (v91 + *(v274 + 36));
      *v228 = v216;
      sub_100069558(v228, v229, v230, v231, v232);
      sub_100052320(v91, v298);
      sub_100071930();
      sub_1003FD6AC();
      sub_1003FD764();
      v233 = v273;
      _ConditionalContent<>.init(storage:)();
      v98 = v284;
      sub_1000794BC(v233, v284);
      sub_100071930();
      sub_1003FD3D4();
      v234 = sub_1003FD620();
      sub_100087DA4(v234);
      sub_10003FDA0(v233, &qword_100CB6048);
      v235 = sub_100024140();
      sub_1000794BC(v235, v236);
      sub_1000C89A8();
      swift_storeEnumTagMultiPayload();
      sub_1003FD348();
      v237 = sub_1003FD81C();
      sub_1000196B0(v237);
      sub_10012CCA0();
      sub_10000C90C();
      sub_10003FDA0(v238, v239);
      v122 = v211;
      v123 = &qword_100CB6038;
      goto LABEL_7;
    case 2u:
      v151 = v267;
      sub_1000419E4();
      sub_10011C0F0(v152, v153, v154, v155);
      v156 = sub_10022C350(&qword_100CB60B8, &qword_100A49B60);
      sub_100025174(*(v156 + 36));
      sub_10003042C();
      sub_10006A798();
      v157 = swift_allocObject();
      sub_100008528(v157);
      sub_10008654C();
      v158 = [objc_opt_self() mainBundle];
      v159 = sub_10001EB98();
      sub_100031CF0(v159, v160, v161, v162, v163, v164, v165, v166);
      sub_100017844();

      sub_1000145A4();
      *v167 = sub_1003FD93C;
      v167[1] = v157;
      LOBYTE(v156) = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v168 = (v91 + *(v275 + 36));
      *v168 = v156;
      sub_100069558(v168, v169, v170, v171, v172);
      sub_10003BDB8(v91, &v303);
      sub_1000439B4();
      sub_1003FD120();
      sub_1003FD1D8();
      sub_1000B01F8();
      _ConditionalContent<>.init(storage:)();
      v98 = v280;
      sub_1000794BC(v72, v280);
      sub_1000439B4();
      sub_1003FD094();
      sub_1003FD290();
      sub_10004223C();
      sub_100120078();
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v72, &qword_100CB6010);
      v173 = sub_100024140();
      sub_1000794BC(v173, v174);
      sub_1000C89A8();
      swift_storeEnumTagMultiPayload();
      sub_1003FD348();
      v175 = sub_1003FD81C();
      sub_1000196B0(v175);
      sub_10012CCA0();
      sub_10000C90C();
      sub_10003FDA0(v176, v177);
      v122 = v151;
      v123 = &qword_100CB6028;
      goto LABEL_7;
    case 3u:
      v178 = v276;
      sub_1003FD8A8(v86, v276, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
      v179 = sub_10022C350(&qword_100CB60D0, &qword_100A49B68);
      v180 = v269;
      sub_1000302D8(v178, v269 + v179[9], &qword_100CB6170, &unk_100A7B4C0);
      v181 = v265;
      sub_1003FDADC(v178, v265, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
      v182 = (*(v264 + 80) + 16) & ~*(v264 + 80);
      v286 = swift_allocObject();
      sub_1003FD8A8(v181, v286 + v182, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
      sub_1003FDADC(v178, v181, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
      v183 = swift_allocObject();
      sub_1003FD8A8(v181, v183 + v182, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
      sub_10003042C();
      sub_10006A798();
      v184 = swift_allocObject();
      sub_100008528(v184);
      v185 = (v180 + v179[14]);
      sub_10008654C();
      v186 = [objc_opt_self() mainBundle];
      v187 = sub_10001EB98();
      sub_100031CF0(v187, v188, v189, v190, v191, v192, v193, v194);
      sub_100017844();

      *v185 = "unit configuration view";
      v185[1] = v182;
      *v180 = 0;
      v180[1] = 0;
      sub_100028118(v180 + v179[10]);
      v195 = (v180 + v179[12]);
      v196 = v286;
      *v195 = sub_1003FD904;
      v195[1] = v196;
      v197 = (v180 + v179[13]);
      *v197 = sub_1003FD91C;
      v197[1] = v183;
      v198 = (v180 + v179[11]);
      *v198 = sub_1003FD934;
      v198[1] = v184;
      LOBYTE(v179) = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v199 = v180 + *(v279 + 36);
      *v199 = v179;
      sub_100069558(v199, v200, v201, v202, v203);
      sub_1000716E8(v180, v277);
      sub_100071930();
      sub_1003FD120();
      sub_1003FD1D8();
      v98 = v278;
      _ConditionalContent<>.init(storage:)();
      sub_10003BDB8(v98, &v307);
      sub_1000439B4();
      sub_1003FD094();
      sub_1003FD290();
      v204 = v281;
      sub_100120078();
      _ConditionalContent<>.init(storage:)();
      sub_10000C90C();
      sub_10003FDA0(v205, v206);
      sub_1000302D8(v204, v289, &qword_100CB6018, &qword_100A49AD8);
      swift_storeEnumTagMultiPayload();
      sub_1003FD348();
      sub_1003FD81C();
      sub_100022B24();
      _ConditionalContent<>.init(storage:)();
      sub_10000C90C();
      sub_10003FDA0(v207, v208);
      sub_100043718(v180);
      v209 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature;
      v210 = &v301;
      goto LABEL_9;
    case 4u:
      v124 = v268;
      sub_1000419E4();
      sub_10011C0F0(v125, v126, v127, v128);
      v129 = sub_10022C350(&qword_100CB6098, &qword_100A49B58);
      sub_100025174(*(v129 + 36));
      sub_10003042C();
      sub_10006A798();
      v130 = swift_allocObject();
      sub_100008528(v130);
      v98 = v91 + *(v129 + 56);
      sub_10008654C();
      v131 = [objc_opt_self() mainBundle];
      v132 = sub_10001EB98();
      sub_100031CF0(v132, v133, v134, v135, v136, v137, v138, v139);
      sub_100017844();

      sub_1000145A4();
      *v140 = sub_1003FD040;
      v140[1] = v130;
      LOBYTE(v129) = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v141 = (v91 + *(v282 + 36));
      *v141 = v129;
      sub_100069558(v141, v142, v143, v144, v145);
      sub_100052320(v91, &v307);
      sub_100071930();
      sub_1003FD094();
      sub_1003FD290();
      sub_10004223C();
      _ConditionalContent<>.init(storage:)();
      v146 = sub_100024140();
      sub_1000794BC(v146, v147);
      sub_1000C89A8();
      swift_storeEnumTagMultiPayload();
      sub_1003FD348();
      v148 = sub_1003FD81C();
      sub_1000196B0(v148);
      sub_10012CCA0();
      sub_10000C90C();
      sub_10003FDA0(v149, v150);
      v122 = v124;
      v123 = &qword_100CB5FF0;
      goto LABEL_7;
    case 5u:
      sub_1003FD8A8(v86, v270, type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows);
      v240 = Solarium.init()();
      __chkstk_darwin(v240);
      __chkstk_darwin(v241);
      sub_10022C350(&qword_100CB6110, &qword_100A49B70);
      sub_1003FD568();
      object = v311._object;
      StaticIf<>.init(_:then:else:)();
      v243 = v261;
      v244 = v271;
      (*(v261 + 16))(v67, object, v271);
      sub_100071930();
      sub_100011550();
      sub_1003FD490(v245, v246, byte_100A49C80);
      sub_1003FD4D8();
      sub_1000B9924();
      _ConditionalContent<>.init(storage:)();
      sub_1000716E8(v1, v284);
      sub_1000439B4();
      sub_1003FD3D4();
      sub_1003FD620();
      v247 = v285;
      _ConditionalContent<>.init(storage:)();
      sub_100043718(v1);
      sub_1000716E8(v247, v289);
      swift_storeEnumTagMultiPayload();
      sub_1003FD348();
      sub_1003FD81C();
      sub_100022B24();
      _ConditionalContent<>.init(storage:)();
      sub_100043718(v247);
      (*(v243 + 8))(object, v244);
      v209 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows;
      v210 = &v295;
LABEL_9:
      v248 = *(v210 - 32);
      goto LABEL_11;
    case 6u:
      sub_1003FD8A8(v86, v81, type metadata accessor for UnitsConfigurationViewModel.Representation.Full);
      sub_1003FDADC(v81, v76, type metadata accessor for UnitsConfigurationViewModel.Representation.Full);
      sub_100035B30(v1 + 16, v76 + *(v72 + 20));
      v249 = (v76 + *(v72 + 24));
      v250 = [objc_opt_self() mainBundle];
      v251._countAndFlagsBits = 0xD000000000000016;
      v310._object = 0x8000000100AC64F0;
      v252._countAndFlagsBits = 0x7374696E55;
      v251._object = 0x8000000100AC64D0;
      v310._countAndFlagsBits = 0xD000000000000036;
      v252._object = 0xE500000000000000;
      v253 = NSLocalizedString(_:tableName:bundle:value:comment:)(v251, 0, v250, v252, v310);

      *v249 = v253;
      sub_1003FDADC(v76, v67, type metadata accessor for ContentViewiOS);
      sub_1000439B4();
      sub_100011550();
      sub_1003FD490(v254, v255, byte_100A49C80);
      sub_1003FD4D8();
      sub_1000B9924();
      _ConditionalContent<>.init(storage:)();
      sub_1000716E8(v1, v284);
      sub_1000439B4();
      sub_1003FD3D4();
      sub_1003FD620();
      v256 = v285;
      _ConditionalContent<>.init(storage:)();
      sub_100043718(v1);
      sub_1000716E8(v256, v289);
      swift_storeEnumTagMultiPayload();
      sub_1003FD348();
      sub_1003FD81C();
      sub_100022B24();
      _ConditionalContent<>.init(storage:)();
      sub_100043718(v256);
      sub_1003FDA84(v76, type metadata accessor for ContentViewiOS);
      v209 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full;
      v248 = v81;
LABEL_11:
      sub_1003FDA84(v248, v209);
      break;
    default:
      v99 = v262;
      sub_10011C0F0(v86, v262, &qword_100CB6058, &unk_100A7B460);
      v100 = sub_10022C350(&qword_100CB6140, &qword_100A49B80);
      v101 = v263;
      sub_1000302D8(v99, v263 + v100[9], &qword_100CB6058, &unk_100A7B460);
      sub_10003042C();
      sub_10006A798();
      v102 = swift_allocObject();
      sub_100008528(v102);
      v103 = (v101 + v100[14]);
      sub_10008654C();
      v104 = [objc_opt_self() mainBundle];
      v105._countAndFlagsBits = sub_10001EB98();
      v106._countAndFlagsBits = 1953066581;
      v106._object = 0xE400000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v105, v107, v104, v106, v311);
      sub_100017844();

      *v103 = "unit configuration view";
      v103[1] = v81;
      *v101 = 0;
      v101[1] = 0;
      sub_100028118(v101 + v100[10]);
      v108 = (v101 + v100[12]);
      *v108 = 0;
      v108[1] = 0;
      v109 = (v101 + v100[13]);
      *v109 = 0;
      v109[1] = 0;
      v110 = (v101 + v100[11]);
      *v110 = sub_1003FDA20;
      v110[1] = v102;
      LOBYTE(v104) = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v111 = v101 + *(v272 + 36);
      *v111 = v104;
      sub_100069558(v111, v112, v113, v114, v115);
      sub_10003BDB8(v101, v298);
      sub_1000439B4();
      sub_1003FD6AC();
      sub_1003FD764();
      sub_1000B01F8();
      _ConditionalContent<>.init(storage:)();
      v98 = v284;
      sub_1000302D8(v72, v284, &qword_100CB6048, &qword_100A49B08);
      sub_100071930();
      sub_1003FD3D4();
      v116 = sub_1003FD620();
      sub_100087DA4(v116);
      sub_10003FDA0(v72, &qword_100CB6048);
      v117 = sub_100024140();
      sub_1000302D8(v117, v118, &qword_100CB6088, &qword_100A49B48);
      sub_1000C89A8();
      swift_storeEnumTagMultiPayload();
      sub_1003FD348();
      v119 = sub_1003FD81C();
      sub_1000196B0(v119);
      sub_10003FDA0(v82, &qword_100CB6088);
      sub_10000C90C();
      sub_10003FDA0(v120, v121);
      v122 = v99;
      v123 = &qword_100CB6058;
LABEL_7:
      sub_10003FDA0(v122, v123);
      break;
  }

  v257 = v293;
  v258 = v291;
  sub_1000716E8(v98, v291);
  sub_1000716E8(v258, v257);
  v259 = sub_10022C350(&qword_100CB6168, &unk_100A49B90);
  sub_100028118(v257 + *(v259 + 48));
  sub_100043718(v98);
  return sub_100043718(v258);
}

uint64_t sub_1003F2890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 56);
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  v10 = *(sub_10022C350(&qword_100CB6178, &unk_100A49BA0) + 44);
  sub_1003FDADC(a2, v8, type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows);
  sub_100035B30(a1 + 16, v22);
  sub_1003F29D8(v8, v22, a3 + v10);
  LOBYTE(a2) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = sub_10022C350(&qword_100CB6110, &qword_100A49B70);
  v20 = a3 + *(result + 36);
  *v20 = a2;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

void sub_1003F29D8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1003FD8A8(a1, a3, type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows);
  v5 = type metadata accessor for ConditionsContentView(0);
  sub_100013188(a2, a3 + v5[5]);
  v6 = (a3 + v5[6]);
  State.init(wrappedValue:)();
  *v6 = v33;
  v6[1] = v34;
  v7 = (a3 + v5[7]);
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v10._countAndFlagsBits = 0xD000000000000018;
  v35._object = 0x8000000100AC6550;
  v10._object = 0x8000000100AC6530;
  v35._countAndFlagsBits = 0xD000000000000057;
  v11._countAndFlagsBits = 1684957527;
  v11._object = 0xE400000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v35);

  *v7 = v12;
  v13 = (a3 + v5[8]);
  v14 = [v8 mainBundle];
  v36._object = 0x8000000100AC65E0;
  v15._countAndFlagsBits = 0x7469706963657250;
  v15._object = 0xED00006E6F697461;
  v16._countAndFlagsBits = 0xD000000000000021;
  v16._object = 0x8000000100AC65B0;
  v36._countAndFlagsBits = 0xD000000000000060;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v14, v15, v36);

  *v13 = v17;
  v18 = (a3 + v5[9]);
  v19 = [v8 mainBundle];
  v37._object = 0x8000000100AC6670;
  v20._countAndFlagsBits = 0x6572757373657250;
  v21._object = 0x8000000100AC6650;
  v37._countAndFlagsBits = 0xD00000000000005BLL;
  v21._countAndFlagsBits = 0xD00000000000001CLL;
  v20._object = 0xE800000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v19, v20, v37);

  *v18 = v22;
  v23 = (a3 + v5[10]);
  v24 = [v8 mainBundle];
  v38._object = 0x8000000100AC66F0;
  v25._countAndFlagsBits = 0x65636E6174736944;
  v26._object = 0x8000000100AC66D0;
  v38._countAndFlagsBits = 0xD00000000000005BLL;
  v26._countAndFlagsBits = 0xD00000000000001CLL;
  v25._object = 0xE800000000000000;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v24, v25, v38);

  *v23 = v27;
  v28 = (a3 + v5[11]);
  v29 = [v8 mainBundle];
  v39._object = 0x8000000100AC6770;
  v30._countAndFlagsBits = 0x74617265706D6554;
  v30._object = 0xEB00000000657275;
  v31._countAndFlagsBits = 0xD00000000000001FLL;
  v31._object = 0x8000000100AC6750;
  v39._countAndFlagsBits = 0xD00000000000004ALL;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v29, v30, v39);

  *v28 = v32;
}

double sub_1003F2D38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v9 = *(sub_10022C350(&qword_100CB6178, &unk_100A49BA0) + 44);
  sub_1003FDADC(a1, v8, type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows);
  sub_100035B30(a2 + 16, v13);
  sub_1003F29D8(v8, v13, a3 + v9);
  LOBYTE(a2) = static Edge.Set.all.getter();
  v10 = a3 + *(sub_10022C350(&qword_100CB6110, &qword_100A49B70) + 36);
  *v10 = a2;
  *(v10 + 8) = xmmword_100A49930;
  result = 12.0;
  *(v10 + 24) = xmmword_100A49940;
  *(v10 + 40) = 0;
  return result;
}

uint64_t sub_1003F2E64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = sub_100021464(a1, a2, a3, a4);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  sub_1000161C0((v7 + 16), *(v7 + 40));
  v13 = v4(0);
  sub_1000037E8();
  (*(v14 + 16))(v12, v8, v13);
  v15 = sub_1000BCE20();
  v6(v15);
  return sub_10003FDA0(v12, v5);
}

uint64_t sub_1003F2F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitConfiguration.Temperature();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FDADC(a1, v13, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  if (sub_100024D10(v13, 1, v4) == 1)
  {
    sub_1000161C0((a2 + 16), *(a2 + 40));
    sub_10001B350(v10, 1, 1, v4);
    sub_1006BC130(v10);
    return sub_10003FDA0(v10, &qword_100CB6198);
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    sub_1000161C0((a2 + 16), *(a2 + 40));
    (*(v5 + 16))(v10, v7, v4);
    sub_10001B350(v10, 0, 1, v4);
    sub_1006BC130(v10);
    sub_10003FDA0(v10, &qword_100CB6198);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1003F31A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FDADC(a1, v7, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  v8 = type metadata accessor for UnitConfiguration.Temperature();
  v9 = sub_100024D10(v7, 1, v8);
  sub_1003FDA84(v7, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  if (v9 != 1)
  {
    return sub_1005B0FF4();
  }

  v10 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  return sub_1005B0D1C(a3 + *(v10 + 20), 0);
}

uint64_t sub_1003F329C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FDADC(a1, v7, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  v8 = type metadata accessor for UnitConfiguration.Temperature();
  v9 = sub_100024D10(v7, 1, v8);
  sub_1003FDA84(v7, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  if (v9 != 1)
  {
    return sub_1005B11F8();
  }

  v10 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  return sub_1005B0D1C(a3 + *(v10 + 20), 1);
}

uint64_t sub_1003F3390()
{
  sub_100035B30(v0 + 8, v10);

  v1 = static Solarium.isEnabled.getter();
  v2 = 12.0;
  if (v1)
  {
    v2 = 16.0;
  }

  *(&v9 + 1) = v2;
  sub_10022C350(&qword_100CA49D8, &unk_100A42010);
  sub_10023FBF4(&qword_100CA49E0, &qword_100CA49D8, &unk_100A42010, asc_100AA1480);
  *&v7 = ObservedObject.init(wrappedValue:)();
  *(&v7 + 1) = v3;
  sub_100013188(v10, v8);
  v11[0] = v7;
  v11[1] = v8[0];
  v11[2] = v8[1];
  v11[3] = v9;
  sub_10022C350(&qword_100CB5FA8, &qword_100A499F0);
  sub_1003F3E04();
  sub_10022E824(&qword_100CB5FB8, &qword_100A499F8);
  sub_100018414();
  sub_10023FBF4(v4, &qword_100CB5FB8, &qword_100A499F8, v5);
  sub_100031590();
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return sub_1003F3E58(v11);
}

uint64_t sub_1003F353C(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CB5FB8, &qword_100A499F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.confirmationAction.getter();
  v9 = a1;
  sub_10022C350(&qword_100CB5FC8, &qword_100A49A00);
  sub_1003F3E90();
  ToolbarItem<>.init(placement:content:)();
  sub_10023FBF4(&qword_100CB5FC0, &qword_100CB5FB8, &qword_100A499F8, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003F36F4(uint64_t a1)
{
  Solarium.init()();
  sub_10022C350(&qword_100CB5FE0, &qword_100A49A08);
  sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  sub_1003F3F54();
  sub_10023FBF4(&qword_100CA5548, &qword_100CA5528, &qword_100A2F940, &protocol conformance descriptor for Button<A>);
  return StaticIf<>.init(_:then:else:)();
}

uint64_t sub_1003F37FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v25 = type metadata accessor for AccessibilityTraits();
  v24[0] = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&unk_100CE1740, &unk_100A31E70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = sub_10022C350(&qword_100CB5FE0, &qword_100A49A08);
  __chkstk_darwin(v9);
  v11 = v24 - v10;
  sub_1003F404C(a1, v26);
  v12 = swift_allocObject();
  v13 = v26[1];
  v12[1] = v26[0];
  v12[2] = v13;
  v12[3] = v26[2];
  Button.init(action:label:)();
  v14 = LocalizedStringKey.init(stringLiteral:)();
  v18 = Text.init(_:tableName:bundle:comment:)(v14, v16, v15 & 1, v17, 0, 0, 0, "Button that dismisses presented unit configuration view", 55, 2);
  v20 = v19;
  v22 = v21;
  sub_10023FBF4(&qword_100CA6EE8, &unk_100CE1740, &unk_100A31E70, &protocol conformance descriptor for Button<A>);
  View.accessibilityLabel(_:)();
  sub_10010CD64(v18, v20, v22 & 1);

  (*(v6 + 8))(v8, v5);
  static AccessibilityTraits.isSelected.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v24[0] + 8))(v4, v25);
  return sub_10003FDA0(v11, &qword_100CB5FE0);
}

uint64_t sub_1003F3B30@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1003F3B70(uint64_t a1)
{
  sub_1003F404C(a1, v4);
  v1 = swift_allocObject();
  v2 = v4[1];
  v1[1] = v4[0];
  v1[2] = v2;
  v1[3] = v4[2];
  return Button.init(action:label:)();
}

uint64_t sub_1003F3C3C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)(v6, v8, v7 & 1, v9, 0, 0, 0, "Button that dismisses presented unit configuration view", 55, 2);
  v12 = v11;
  v14 = v13;
  (*(v3 + 104))(v5, enum case for Font.TextStyle.body(_:), v2);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v3 + 8))(v5, v2);
  v15 = Text.font(_:)();
  v17 = v16;
  LOBYTE(v3) = v18;
  v20 = v19;

  sub_10010CD64(v10, v12, v14 & 1);

  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v3 & 1;
  *(a1 + 24) = v20;
  return result;
}

unint64_t sub_1003F3E04()
{
  result = qword_100CB5FB0;
  if (!qword_100CB5FB0)
  {
    result = swift_getWitnessTable(asc_100A49A58, &type metadata for UnitsConfigurationView, v0, v1);
    atomic_store(result, &qword_100CB5FB0);
  }

  return result;
}

unint64_t sub_1003F3E90()
{
  result = qword_100CB5FD0;
  if (!qword_100CB5FD0)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = sub_10022E824(&qword_100CB5FC8, &qword_100A49A00);
    v4[0] = &protocol witness table for Solarium;
    v4[1] = sub_1003F3F54();
    v4[2] = sub_10023FBF4(&qword_100CA5548, &qword_100CA5528, &qword_100A2F940, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> StaticIf<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CB5FD0);
  }

  return result;
}

unint64_t sub_1003F3F54()
{
  result = qword_100CB5FD8;
  if (!qword_100CB5FD8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB5FE0, &qword_100A49A08);
    v4[0] = sub_10023FBF4(&qword_100CA6EE8, &unk_100CE1740, &unk_100A31E70, &protocol conformance descriptor for Button<A>);
    v4[1] = sub_1003FD490(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5FD8);
  }

  return result;
}

uint64_t sub_1003F40A0@<X0>(uint64_t a1@<X8>)
{
  sub_1000302D8(v1, a1, &qword_100CB6058, &unk_100A7B460);
  v3 = sub_10022C350(&qword_100CB6058, &unk_100A7B460);
  sub_10001B350(a1, 0, 1, v3);
  v4 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  v5 = v4[5];
  v6 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full(0);
  sub_1000302D8(v1 + v6[5], a1 + v5, &qword_100CB6038, &qword_100A64140);
  v7 = sub_10022C350(&qword_100CB6038, &qword_100A64140);
  sub_10001B350(a1 + v5, 0, 1, v7);
  v8 = v4[6];
  sub_1000302D8(v1 + v6[6], a1 + v8, &qword_100CB6028, &unk_100A7B470);
  v9 = sub_10022C350(&qword_100CB6028, &unk_100A7B470);
  sub_10001B350(a1 + v8, 0, 1, v9);
  v10 = v4[7];
  v11 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  sub_10001B350(a1 + v10, 1, 1, v11);
  v12 = v4[8];
  sub_1000302D8(v1 + v6[8], a1 + v12, &qword_100CB5FF0, &qword_100A49AB0);
  v13 = sub_10022C350(&qword_100CB5FF0, &qword_100A49AB0);

  return sub_10001B350(a1 + v12, 0, 1, v13);
}

uint64_t sub_1003F4244@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InsetGroupedListStyle();
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10022C350(&qword_100CB6380, &qword_100A49D58);
  v8 = *(v34 - 8);
  __chkstk_darwin(v34);
  v10 = &v33 - v9;
  v11 = sub_10022C350(&qword_100CB6388, &qword_100A49D60);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = sub_10022C350(&qword_100CB6390, &qword_100A49D68);
  v15 = *(v14 - 8);
  v37 = v14;
  v38 = v15;
  __chkstk_darwin(v14);
  v17 = &v33 - v16;
  v43 = v1;
  sub_10022C350(&qword_100CB6398, &qword_100A49D70);
  sub_10023FBF4(&qword_100CB63A0, &qword_100CB6398, &qword_100A49D70, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  sub_10023FBF4(&qword_100CB63A8, &qword_100CB6380, &qword_100A49D58, &protocol conformance descriptor for List<A, B>);
  v19 = v34;
  v18 = v35;
  View.listStyle<A>(_:)();
  (*(v36 + 8))(v7, v18);
  (*(v8 + 8))(v10, v19);
  v20 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v22 = &v13[*(v11 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = (v33 + *(type metadata accessor for ContentViewiOS(0) + 24));
  v25 = *v23;
  v24 = v23[1];
  v44 = v25;
  v45 = v24;
  v26 = sub_1003FE6A0();
  v27 = sub_10002D5A4();
  View.navigationTitle<A>(_:)();
  sub_10003FDA0(v13, &qword_100CB6388);
  v28 = v39;
  v29 = v40;
  v30 = v41;
  (*(v40 + 104))(v39, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v41);
  v44 = v11;
  v45 = &type metadata for String;
  v46 = v26;
  v47 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v37;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v29 + 8))(v28, v30);
  return (*(v38 + 8))(v17, v31);
}

uint64_t sub_1003F4710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for ConditionsView(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v42 = &v40 - v7;
  v41 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v41);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for TemperatureView(0);
  v14 = (v13 - 8);
  __chkstk_darwin(v13);
  v44 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v40 - v17);
  v43 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full(0);
  v19 = a1 + *(v43 + 28);
  sub_1000302D8(v19, v18 + v14[7], &qword_100CB6170, &unk_100A7B4C0);
  v20 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  sub_1000302D8(v19 + *(v20 + 20), v18 + v14[9], &qword_100CB6198, &unk_100A49BC0);
  v40 = *(type metadata accessor for ContentViewiOS(0) + 20);
  sub_100035B30(a1 + v40, v18 + v14[8]);
  v21 = objc_opt_self();
  v22 = [v21 mainBundle];
  v49._object = 0x8000000100AC6770;
  v23._countAndFlagsBits = 0x74617265706D6554;
  v23._object = 0xEB00000000657275;
  v24._object = 0x8000000100AC6750;
  v49._countAndFlagsBits = 0xD00000000000004ALL;
  v24._countAndFlagsBits = 0xD00000000000001FLL;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v22, v23, v49);

  *v18 = v25;
  v26 = type metadata accessor for UnitConfiguration.Temperature();
  sub_10001B350(v12, 1, 1, v26);
  sub_1003FDADC(v12, v9, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  State.init(wrappedValue:)();
  sub_1003FDA84(v12, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  v27 = v42;
  sub_1003F40A0(v42);
  v28 = v40;
  sub_100035B30(a1 + v40, v27 + *(v4 + 28));
  v29 = (v27 + *(v4 + 32));
  v30 = v27;
  v31 = [v21 mainBundle];
  v50._object = 0x8000000100AC67F0;
  v32._countAndFlagsBits = 0x6E5520726568744FLL;
  v32._object = 0xEB00000000737469;
  v33._countAndFlagsBits = 0xD000000000000020;
  v33._object = 0x8000000100AC67C0;
  v50._countAndFlagsBits = 0xD000000000000083;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v31, v32, v50);

  *v29 = v34;
  sub_100035B30(a1 + v28, v47);
  sub_1003F4C5C(v47, *(a1 + *(v43 + 36)), v48);
  v35 = v44;
  sub_1003FDADC(v18, v44, type metadata accessor for TemperatureView);
  v36 = v45;
  sub_1003FDADC(v30, v45, type metadata accessor for ConditionsView);
  sub_1003FE828(v48, v47);
  v37 = v46;
  sub_1003FDADC(v35, v46, type metadata accessor for TemperatureView);
  v38 = sub_10022C350(&qword_100CB63B8, &unk_100A49DB0);
  sub_1003FDADC(v36, v37 + *(v38 + 48), type metadata accessor for ConditionsView);
  sub_1003FE828(v47, v37 + *(v38 + 64));
  sub_1003FE860(v48);
  sub_1003FDA84(v30, type metadata accessor for ConditionsView);
  sub_1003FDA84(v18, type metadata accessor for TemperatureView);
  sub_1003FE860(v47);
  sub_1003FDA84(v36, type metadata accessor for ConditionsView);
  return sub_1003FDA84(v35, type metadata accessor for TemperatureView);
}

void sub_1003F4C5C(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_100013188(a1, a3);
  *(a3 + 40) = a2;
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v18._object = 0x8000000100AC68B0;
  v7._countAndFlagsBits = 0x20746C7561666544;
  v7._object = 0xED00007374696E55;
  v8._countAndFlagsBits = 0xD000000000000023;
  v8._object = 0x8000000100AC6880;
  v18._countAndFlagsBits = 0xD000000000000064;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v6, v7, v18);

  *(a3 + 48) = v9;
  v10 = [v5 mainBundle];
  v19._object = 0x8000000100AC6990;
  v11._countAndFlagsBits = 0xD000000000000029;
  v11._object = 0x8000000100AC6920;
  v12._countAndFlagsBits = 0xD000000000000036;
  v12._object = 0x8000000100AC6950;
  v19._countAndFlagsBits = 0xD00000000000006ALL;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v19);

  *(a3 + 64) = v13;
  v14 = [v5 mainBundle];
  v20._object = 0x8000000100AC6A50;
  v15._countAndFlagsBits = 0xD00000000000002ALL;
  v15._object = 0x8000000100AC6A00;
  v16._object = 0x8000000100AC6A30;
  v20._countAndFlagsBits = 0xD000000000000074;
  v16._countAndFlagsBits = 0xD000000000000010;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v20);

  *(a3 + 80) = v17;
}

uint64_t sub_1003F4E48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v30 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v30);
  v32 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TemperatureView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4);
  v26 = v7;
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10022C350(&qword_100CB6748, &qword_100A4A180);
  __chkstk_darwin(v29);
  v10 = v23 - v9;
  v31 = sub_10022C350(&qword_100CB6750, &qword_100A4A188);
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v27 = v23 - v11;
  sub_1003F529C(v2);
  v23[2] = v2 + *(v5 + 28);
  v23[1] = *(sub_10022C350(&qword_100CB6170, &unk_100A7B4C0) + 36);
  v28 = type metadata accessor for TemperatureView;
  v24 = v8;
  sub_1003FDADC(v2, v8, type metadata accessor for TemperatureView);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v25 = type metadata accessor for TemperatureView;
  sub_1003FD8A8(v8, v13 + v12, type metadata accessor for TemperatureView);
  v23[0] = sub_100400938();
  v14 = sub_1003FD490(&qword_100CB67A0, type metadata accessor for UnitsConfigurationViewModel.Temperature, asc_100A7B6D8);
  v16 = v29;
  v15 = v30;
  View.onChange<A>(of:initial:_:)();

  sub_10003FDA0(v10, &qword_100CB6748);
  sub_10022C350(&qword_100CB6558, &qword_100A49EC8);
  v17 = v32;
  State.wrappedValue.getter();
  v18 = v24;
  sub_1003FDADC(v2, v24, v28);
  v19 = swift_allocObject();
  sub_1003FD8A8(v18, v19 + v12, v25);
  v35 = v16;
  v36 = v15;
  v37 = v23[0];
  v38 = v14;
  swift_getOpaqueTypeConformance2();
  v20 = v31;
  v21 = v27;
  View.onChange<A>(of:initial:_:)();

  sub_1003FDA84(v17, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  return (*(v33 + 8))(v21, v20);
}

uint64_t sub_1003F529C(uint64_t *a1)
{

  static Color.secondary.getter();
  Text.foregroundStyle<A>(_:)();

  sub_10022C350(&qword_100CB6778, &qword_100A4A198);
  sub_100400A54();
  return Section<>.init(header:content:)();
}

uint64_t sub_1003F53AC(uint64_t a1)
{
  v2 = type metadata accessor for TemperatureView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v9[1] = *(a1 + *(v5 + 28));
  swift_getKeyPath();
  sub_1003FDADC(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TemperatureView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1003FD8A8(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TemperatureView);

  sub_10022C350(&qword_100CB67A8, &qword_100A4A1C8);
  sub_10022C350(&qword_100CB6788, &qword_100A4A1A0);
  sub_10023FBF4(&qword_100CB67B0, &qword_100CB67A8, &qword_100A4A1C8, &protocol conformance descriptor for [A]);
  sub_1003FD490(&qword_100CB67B8, type metadata accessor for UnitsConfigurationViewModel.Temperature, byte_100A7B558);
  sub_100400AD8();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1003F55C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v69 = a3;
  v70 = type metadata accessor for AccessibilityTraits();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TemperatureView(0);
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CB6790, &qword_100A4A1A8);
  v58 = *(v10 - 8);
  v59 = v10;
  __chkstk_darwin(v10);
  v54 = &v52 - v11;
  v12 = sub_10022C350(&qword_100CB67C0, &qword_100A4A1D0);
  v60 = *(v12 - 8);
  v61 = v12;
  __chkstk_darwin(v12);
  v57 = &v52 - v13;
  v65 = sub_10022C350(&qword_100CB6788, &qword_100A4A1A0);
  __chkstk_darwin(v65);
  v66 = &v52 - v14;
  v15 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  __chkstk_darwin(v15 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  sub_1003FDADC(a1, &v52 - v19, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  v21 = type metadata accessor for UnitConfiguration.Temperature();
  v22 = sub_100024D10(v20, 1, v21);
  sub_1003FDA84(v20, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  v55 = v7;
  if (v22 == 1)
  {
    v23 = sub_1005B0D1C(v71 + *(v7 + 28), 0);
  }

  else
  {
    v23 = sub_1005B0FF4();
  }

  v25 = v23;
  v26 = v24;
  v27 = v71;
  sub_1003FDADC(v71, &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TemperatureView);
  sub_1003FDADC(a1, v17, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  v28 = *(v56 + 80);
  v53 = a1;
  v29 = (v28 + 16) & ~v28;
  v30 = (v8 + *(v52 + 80) + v29) & ~*(v52 + 80);
  v31 = swift_allocObject();
  sub_1003FD8A8(v9, v31 + v29, type metadata accessor for TemperatureView);
  v32 = sub_1003FD8A8(v17, v31 + v30, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  __chkstk_darwin(v32);
  *(&v52 - 4) = v25;
  *(&v52 - 3) = v26;
  *(&v52 - 2) = a1;
  *(&v52 - 1) = v27;
  sub_10022C350(&qword_100CB67C8, &qword_100A4A1D8);
  sub_10023FBF4(&qword_100CB67D0, &qword_100CB67C8, &qword_100A4A1D8, &protocol conformance descriptor for HStack<A>);
  v33 = v54;
  Button.init(action:label:)();
  v34 = v62;
  static AccessibilityChildBehavior.ignore.getter();
  v35 = sub_10023FBF4(&qword_100CB6798, &qword_100CB6790, &qword_100A4A1A8, &protocol conformance descriptor for Button<A>);
  v36 = v57;
  v37 = v59;
  View.accessibilityElement(children:)();
  (*(v63 + 8))(v34, v64);
  (*(v58 + 8))(v33, v37);
  v72 = v37;
  v73 = v35;
  swift_getOpaqueTypeConformance2();
  v38 = v66;
  v39 = v61;
  View.accessibilityLabel(_:)();

  (*(v60 + 8))(v36, v39);
  sub_10022C350(&qword_100CB6558, &qword_100A49EC8);
  State.wrappedValue.getter();
  sub_1006FE94C(v53, v17, v40, v41, v42, v43, v44, v45, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  LOBYTE(v39) = v46;
  sub_1003FDA84(v17, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  if (v39)
  {
    sub_10022C350(&unk_100CE17E0, &unk_100A45D60);
    v47 = v68;
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_100A2C3F0;
    static AccessibilityTraits.isSelected.getter();
    v72 = v48;
    sub_1003FD490(&qword_100CB3368, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_10022C350(&unk_100CE17F0, &unk_100A4A1E0);
    sub_10023FBF4(&qword_100CB3370, &unk_100CE17F0, &unk_100A4A1E0, &protocol conformance descriptor for [A]);
    v49 = v67;
    v50 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    v72 = _swiftEmptyArrayStorage;
    sub_1003FD490(&qword_100CB3368, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_10022C350(&unk_100CE17F0, &unk_100A4A1E0);
    sub_10023FBF4(&qword_100CB3370, &unk_100CE17F0, &unk_100A4A1E0, &protocol conformance descriptor for [A]);
    v49 = v67;
    v50 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v47 = v68;
  }

  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v47 + 8))(v49, v50);
  return sub_10003FDA0(v38, &qword_100CB6788);
}

uint64_t sub_1003F5EE8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TemperatureView(0);
  sub_1003FDADC(a2, v5, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  sub_10022C350(&qword_100CB6558, &qword_100A49EC8);
  return State.wrappedValue.setter();
}

uint64_t sub_1003F5FAC@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = static VerticalAlignment.center.getter();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v8 = sub_10022C350(&qword_100CB67D8, &qword_100A4A1F0);
  return sub_1003F602C(a3, a4, a5 + *(v8 + 44));
}

uint64_t sub_1003F602C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a4;
  v49 = a3;
  v52 = a5;
  v50 = sub_10022C350(&qword_100CB67E0, &qword_100A4A1F8);
  __chkstk_darwin(v50);
  v47 = &v46 - v5;
  v6 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CB67E8, &qword_100A4A200);
  __chkstk_darwin(v9 - 8);
  v51 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = sub_10022C350(&qword_100CB66D8, &qword_100A8C770);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v20 = objc_opt_self();

  v21 = [v20 labelColor];
  v53 = Color.init(_:)();
  v22 = Text.foregroundStyle<A>(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v53 = v22;
  v54 = v24;
  v26 &= 1u;
  LOBYTE(v55) = v26;
  v56 = v28;
  View.accessibilityHidden(_:)();
  sub_10010CD64(v22, v24, v26);

  type metadata accessor for TemperatureView(0);
  sub_10022C350(&qword_100CB6558, &qword_100A49EC8);
  State.wrappedValue.getter();
  sub_1006FE94C(v49, v8, v29, v30, v31, v32, v33, v34, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
  v36 = v35;
  sub_1003FDA84(v8, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  v37 = 1;
  if (v36)
  {
    v38 = Image.init(systemName:)();
    v39 = static Color.blue.getter();
    v53 = v38;
    v54 = v39;
    sub_10022C350(&qword_100CAF6F8, &unk_100A4A210);
    sub_10035B9E4();
    v40 = v47;
    View.accessibilityHidden(_:)();

    sub_10011C0F0(v40, v13, &qword_100CB67E0, &qword_100A4A1F8);
    v37 = 0;
  }

  sub_10001B350(v13, v37, 1, v50);
  sub_1000302D8(v19, v16, &qword_100CB66D8, &qword_100A8C770);
  v41 = v51;
  sub_1000302D8(v13, v51, &qword_100CB67E8, &qword_100A4A200);
  v42 = v52;
  sub_1000302D8(v16, v52, &qword_100CB66D8, &qword_100A8C770);
  v43 = sub_10022C350(&qword_100CB67F0, &qword_100A4A208);
  v44 = v42 + *(v43 + 48);
  *v44 = 0;
  *(v44 + 8) = 1;
  sub_1000302D8(v41, v42 + *(v43 + 64), &qword_100CB67E8, &qword_100A4A200);
  sub_10003FDA0(v13, &qword_100CB67E8);
  sub_10003FDA0(v19, &qword_100CB66D8);
  sub_10003FDA0(v41, &qword_100CB67E8);
  return sub_10003FDA0(v16, &qword_100CB66D8);
}

uint64_t sub_1003F64BC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TemperatureView(0);
  sub_1003FDADC(a2, v5, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  sub_10022C350(&qword_100CB6558, &qword_100A49EC8);
  return State.wrappedValue.setter();
}

uint64_t sub_1003F6580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for UnitConfiguration.Temperature();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FDADC(a2, v14, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  if (sub_100024D10(v14, 1, v8) == 1)
  {
    v15 = type metadata accessor for TemperatureView(0);
    sub_1000161C0((a3 + *(v15 + 24)), *(a3 + *(v15 + 24) + 24));
    sub_10001B350(v7, 1, 1, v8);
    sub_1006BC130(v7);
    return sub_10003FDA0(v7, &qword_100CB6198);
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    v17 = type metadata accessor for TemperatureView(0);
    sub_1000161C0((a3 + *(v17 + 24)), *(a3 + *(v17 + 24) + 24));
    (*(v9 + 16))(v7, v11, v8);
    sub_10001B350(v7, 0, 1, v8);
    sub_1006BC130(v7);
    sub_10003FDA0(v7, &qword_100CB6198);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1003F6808()
{
  type metadata accessor for ConditionsView(0);

  static Color.secondary.getter();
  Text.foregroundStyle<A>(_:)();

  type metadata accessor for ConditionsContentView(0);
  sub_1003FD490(&qword_100CB6740, type metadata accessor for ConditionsContentView, a1_15);
  return Section<>.init(header:content:)();
}

void sub_1003F694C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FDADC(a1, v6, type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows);
  v7 = type metadata accessor for ConditionsView(0);
  sub_100035B30(a1 + *(v7 + 20), v9);
  sub_1003F29D8(v6, v9, a2);
}

uint64_t sub_1003F6A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v290 = a1;
  v277 = a2;
  v275 = sub_10022C350(&qword_100CB6140, &qword_100A49B80);
  __chkstk_darwin(v275);
  v256 = (&v229 - v2);
  v3 = sub_10022C350(&qword_100CB63C0, &unk_100A64130);
  __chkstk_darwin(v3 - 8);
  v272 = &v229 - v4;
  v271 = sub_10022C350(&qword_100CB6058, &unk_100A7B460);
  __chkstk_darwin(v271);
  v255 = &v229 - v5;
  v6 = sub_10022C350(&qword_100CB63C8, &unk_100A49DC0);
  __chkstk_darwin(v6 - 8);
  v276 = &v229 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v282 = &v229 - v9;
  v270 = sub_10022C350(&qword_100CB60B8, &qword_100A49B60);
  __chkstk_darwin(v270);
  v254 = (&v229 - v10);
  v11 = sub_10022C350(&qword_100CB63D0, &unk_100A64120);
  __chkstk_darwin(v11 - 8);
  v269 = &v229 - v12;
  v268 = sub_10022C350(&qword_100CB6028, &unk_100A7B470);
  __chkstk_darwin(v268);
  v253 = &v229 - v13;
  v14 = sub_10022C350(&qword_100CB63D8, &unk_100A49DD0);
  __chkstk_darwin(v14 - 8);
  v274 = &v229 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v281 = &v229 - v17;
  v267 = sub_10022C350(&qword_100CB6158, &qword_100A49B88);
  __chkstk_darwin(v267);
  v252 = &v229 - v18;
  v19 = sub_10022C350(&qword_100CB63E0, &unk_100A7B490);
  __chkstk_darwin(v19 - 8);
  v266 = &v229 - v20;
  v265 = sub_10022C350(&qword_100CB6038, &qword_100A64140);
  __chkstk_darwin(v265);
  v251 = &v229 - v21;
  v22 = sub_10022C350(&qword_100CB63E8, &unk_100A49DE0);
  __chkstk_darwin(v22 - 8);
  v273 = &v229 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v289 = &v229 - v25;
  v264 = sub_10022C350(&qword_100CB6098, &qword_100A49B58);
  __chkstk_darwin(v264);
  v250 = &v229 - v26;
  v27 = sub_10022C350(&qword_100CB63F0, &unk_100A64110);
  __chkstk_darwin(v27 - 8);
  v263 = &v229 - v28;
  v262 = sub_10022C350(&qword_100CB5FF0, &qword_100A49AB0);
  __chkstk_darwin(v262);
  v249 = &v229 - v29;
  v30 = sub_10022C350(&qword_100CB63F8, &qword_100A49DF0);
  __chkstk_darwin(v30 - 8);
  v280 = &v229 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v288 = &v229 - v33;
  v261 = sub_10022C350(&qword_100CB6400, &qword_100A49DF8);
  __chkstk_darwin(v261);
  v248 = &v229 - v34;
  v245 = type metadata accessor for QuaternaryDividerStyle();
  v244 = *(v245 - 8);
  __chkstk_darwin(v245);
  v242 = &v229 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for Divider();
  v241 = *(v243 - 8);
  __chkstk_darwin(v243);
  v240 = &v229 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_10022C350(&qword_100CB6408, &unk_100A49E00);
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v260 = &v229 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v259 = &v229 - v39;
  v237 = sub_10022C350(&unk_100CE0EB0, &qword_100A310D0);
  v236 = *(v237 - 8);
  __chkstk_darwin(v237);
  v235 = &v229 - v40;
  v41 = type metadata accessor for ConditionsContentView(0);
  v283 = *(v41 - 8);
  __chkstk_darwin(v41);
  v284 = v42;
  v43 = &v229 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_10022C350(&qword_100CB60D0, &qword_100A49B68);
  __chkstk_darwin(v234);
  v45 = (&v229 - v44);
  v239 = sub_10022C350(&qword_100CB6410, &unk_100A49E10);
  v238 = *(v239 - 8);
  __chkstk_darwin(v239);
  v258 = &v229 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v257 = &v229 - v48;
  v49 = sub_10022C350(&qword_100CB6418, &unk_100A7B4A0);
  __chkstk_darwin(v49 - 8);
  v51 = &v229 - v50;
  v52 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  v233 = *(v52 - 8);
  v53 = *(v233 + 64);
  __chkstk_darwin(v52);
  v54 = &v229 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v57 = &v229 - v56;
  v58 = sub_10022C350(&qword_100CB6420, &qword_100A49E20);
  __chkstk_darwin(v58 - 8);
  v279 = &v229 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v287 = &v229 - v61;
  v286 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  sub_1000302D8(v290 + v286[7], v51, &qword_100CB6418, &unk_100A7B4A0);
  v62 = sub_100024D10(v51, 1, v52);
  v285 = v43;
  v278 = v41;
  if (v62 == 1)
  {
    sub_10003FDA0(v51, &qword_100CB6418);
    v63 = 1;
    v64 = v287;
  }

  else
  {
    v65 = v51;
    v66 = v57;
    sub_1003FD8A8(v65, v57, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
    v67 = *(v41 + 44);
    v68 = v290;
    v69 = (v290 + v67);
    v71 = *v69;
    v70 = v69[1];
    v231 = v71;
    v230 = v70;
    v72 = v234;
    sub_1000302D8(v66, v45 + *(v234 + 36), &qword_100CB6170, &unk_100A7B4C0);
    v73 = v66;
    v232 = v66;
    sub_1003FDADC(v66, v54, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
    v74 = (*(v233 + 80) + 16) & ~*(v233 + 80);
    v233 = swift_allocObject();
    sub_1003FD8A8(v54, v233 + v74, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
    sub_1003FDADC(v73, v54, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
    v75 = swift_allocObject();
    sub_1003FD8A8(v54, v75 + v74, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
    v76 = v68;
    v77 = v285;
    sub_1003FDADC(v76, v285, type metadata accessor for ConditionsContentView);
    v78 = (*(v283 + 80) + 16) & ~*(v283 + 80);
    v79 = swift_allocObject();
    sub_1003FD8A8(v77, v79 + v78, type metadata accessor for ConditionsContentView);
    v80 = (v45 + v72[14]);
    v81 = objc_opt_self();
    v82 = v230;

    v83 = [v81 mainBundle];
    v294._object = 0x8000000100AC6470;
    v84._object = 0x8000000100AC6450;
    v294._countAndFlagsBits = 0xD000000000000051;
    v84._countAndFlagsBits = 0xD000000000000018;
    v85._countAndFlagsBits = 1953066581;
    v85._object = 0xE400000000000000;
    v86 = NSLocalizedString(_:tableName:bundle:value:comment:)(v84, 0, v83, v85, v294);

    *v80 = v86;
    *v45 = v231;
    v45[1] = v82;
    v87 = v45 + v72[10];
    *v87 = 0;
    v87[8] = 1;
    v88 = (v45 + v72[12]);
    v89 = v233;
    *v88 = sub_1004010F4;
    v88[1] = v89;
    v90 = (v45 + v72[13]);
    *v90 = sub_1004010F8;
    v90[1] = v75;
    v91 = (v45 + v72[11]);
    *v91 = sub_1003FEF50;
    v91[1] = v79;
    Solarium.init()();
    v92 = v235;
    static ViewInputPredicate.! prefix(_:)();
    sub_10022C350(&qword_100CB5FF8, &qword_100A49AB8);
    sub_10023FBF4(&qword_100CB60C8, &qword_100CB60D0, &qword_100A49B68, byte_100A49CD0);
    v292 = &type metadata for Solarium;
    v293 = &protocol witness table for Solarium;
    swift_getOpaqueTypeConformance2();
    sub_1003FD1D8();
    v93 = v257;
    v94 = v237;
    View.staticIf<A, B>(_:then:)();
    (*(v236 + 8))(v92, v94);
    sub_10003FDA0(v45, &qword_100CB60D0);
    v95 = v240;
    Divider.init()();
    v96 = v242;
    static DividerStyle<>.quaternary.getter();
    sub_1003FD490(&qword_100CA7298, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    sub_1003FD490(&qword_100CB5C48, &type metadata accessor for QuaternaryDividerStyle, &protocol conformance descriptor for QuaternaryDividerStyle);
    v97 = v259;
    v98 = v243;
    v99 = v245;
    View.dividerStyle<A>(_:)();
    (*(v244 + 8))(v96, v99);
    (*(v241 + 8))(v95, v98);
    v100 = v238;
    v101 = *(v238 + 16);
    v102 = v258;
    v103 = v239;
    v101(v258, v93, v239);
    v104 = v246;
    v105 = *(v246 + 16);
    v106 = v97;
    v107 = v247;
    v105(v260, v106, v247);
    v108 = v248;
    v101(v248, v102, v103);
    v109 = sub_10022C350(qword_100CB6430, &qword_100A49E38);
    v110 = v260;
    v105((v108 + *(v109 + 48)), v260, v107);
    v111 = *(v104 + 8);
    v111(v259, v107);
    v112 = *(v100 + 8);
    v112(v257, v103);
    sub_1003FDA84(v232, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
    v111(v110, v107);
    v112(v258, v103);
    v113 = v287;
    sub_10011C0F0(v108, v287, &qword_100CB6400, &qword_100A49DF8);
    v63 = 0;
    v64 = v113;
  }

  sub_10001B350(v64, v63, 1, v261);
  v114 = v290;
  v115 = v263;
  sub_1000302D8(v290 + v286[8], v263, &qword_100CB63F0, &unk_100A64110);
  if (sub_100024D10(v115, 1, v262) == 1)
  {
    sub_10003FDA0(v115, &qword_100CB63F0);
    v116 = 1;
    v117 = v288;
    v118 = v264;
  }

  else
  {
    v119 = v249;
    sub_10011C0F0(v115, v249, &qword_100CB5FF0, &qword_100A49AB0);
    v120 = v278;
    v121 = (v114 + v278[7]);
    v122 = v121[1];
    v263 = *v121;
    v118 = v264;
    v123 = v250;
    sub_1000302D8(v119, &v250[*(v264 + 36)], &qword_100CB5FF0, &qword_100A49AB0);
    v124 = (v114 + v120[6]);
    v125 = *v124;
    v126 = v124[1];
    v292 = v125;
    v293 = v126;

    sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
    State.wrappedValue.getter();
    v127 = v291;
    v128 = v285;
    sub_1003FDADC(v114, v285, type metadata accessor for ConditionsContentView);
    v129 = (*(v283 + 80) + 16) & ~*(v283 + 80);
    v130 = swift_allocObject();
    sub_1003FD8A8(v128, v130 + v129, type metadata accessor for ConditionsContentView);
    v131 = (v123 + v118[14]);
    v132 = [objc_opt_self() mainBundle];
    v295._object = 0x8000000100AC6470;
    v133._object = 0x8000000100AC6450;
    v295._countAndFlagsBits = 0xD000000000000051;
    v133._countAndFlagsBits = 0xD000000000000018;
    v134._countAndFlagsBits = 1953066581;
    v134._object = 0xE400000000000000;
    v135 = NSLocalizedString(_:tableName:bundle:value:comment:)(v133, 0, v132, v134, v295);

    v114 = v290;
    sub_10003FDA0(v119, &qword_100CB5FF0);
    *v131 = v135;
    *v123 = v263;
    v123[1] = v122;
    v136 = v123 + v118[10];
    *v136 = v127;
    v136[8] = 0;
    v137 = (v123 + v118[12]);
    *v137 = 0;
    v137[1] = 0;
    v138 = (v123 + v118[13]);
    *v138 = 0;
    v138[1] = 0;
    v139 = (v123 + v118[11]);
    *v139 = sub_1003FECD4;
    v139[1] = v130;
    v140 = v123;
    v117 = v288;
    sub_10011C0F0(v140, v288, &qword_100CB6098, &qword_100A49B58);
    v116 = 0;
  }

  sub_10001B350(v117, v116, 1, v118);
  v141 = v266;
  sub_1000302D8(v114 + v286[5], v266, &qword_100CB63E0, &unk_100A7B490);
  if (sub_100024D10(v141, 1, v265) == 1)
  {
    sub_10003FDA0(v141, &qword_100CB63E0);
    v142 = 1;
    v143 = v289;
    v144 = v267;
  }

  else
  {
    v145 = v251;
    sub_10011C0F0(v141, v251, &qword_100CB6038, &qword_100A64140);
    v146 = v278;
    v147 = (v114 + v278[8]);
    v148 = v147[1];
    v266 = *v147;
    v144 = v267;
    v149 = v252;
    sub_1000302D8(v145, &v252[*(v267 + 36)], &qword_100CB6038, &qword_100A64140);
    v150 = (v114 + v146[6]);
    v151 = *v150;
    v152 = v150[1];
    v292 = v151;
    v293 = v152;

    sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
    State.wrappedValue.getter();
    v153 = v291;
    v154 = v285;
    sub_1003FDADC(v114, v285, type metadata accessor for ConditionsContentView);
    v155 = (*(v283 + 80) + 16) & ~*(v283 + 80);
    v156 = swift_allocObject();
    sub_1003FD8A8(v154, v156 + v155, type metadata accessor for ConditionsContentView);
    v157 = (v149 + v144[14]);
    v158 = [objc_opt_self() mainBundle];
    v296._object = 0x8000000100AC6470;
    v159._object = 0x8000000100AC6450;
    v296._countAndFlagsBits = 0xD000000000000051;
    v159._countAndFlagsBits = 0xD000000000000018;
    v160._countAndFlagsBits = 1953066581;
    v160._object = 0xE400000000000000;
    v161 = NSLocalizedString(_:tableName:bundle:value:comment:)(v159, 0, v158, v160, v296);

    v114 = v290;
    sub_10003FDA0(v145, &qword_100CB6038);
    *v157 = v161;
    *v149 = v266;
    v149[1] = v148;
    v162 = v149 + v144[10];
    *v162 = v153;
    v162[8] = 0;
    v163 = (v149 + v144[12]);
    *v163 = 0;
    v163[1] = 0;
    v164 = (v149 + v144[13]);
    *v164 = 0;
    v164[1] = 0;
    v165 = (v149 + v144[11]);
    *v165 = sub_1003FEC98;
    v165[1] = v156;
    v166 = v149;
    v143 = v289;
    sub_10011C0F0(v166, v289, &qword_100CB6158, &qword_100A49B88);
    v142 = 0;
  }

  sub_10001B350(v143, v142, 1, v144);
  v167 = v269;
  sub_1000302D8(v114 + v286[6], v269, &qword_100CB63D0, &unk_100A64120);
  if (sub_100024D10(v167, 1, v268) == 1)
  {
    sub_10003FDA0(v167, &qword_100CB63D0);
    v168 = 1;
    v169 = v281;
    v170 = v270;
  }

  else
  {
    v171 = v253;
    sub_10011C0F0(v167, v253, &qword_100CB6028, &unk_100A7B470);
    v172 = v278;
    v173 = (v114 + v278[9]);
    v174 = v173[1];
    v286 = *v173;
    v170 = v270;
    v175 = v254;
    sub_1000302D8(v171, v254 + *(v270 + 36), &qword_100CB6028, &unk_100A7B470);
    v176 = (v114 + v172[6]);
    v177 = *v176;
    v178 = v176[1];
    v292 = v177;
    v293 = v178;

    sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
    State.wrappedValue.getter();
    v179 = v291;
    v180 = v285;
    sub_1003FDADC(v114, v285, type metadata accessor for ConditionsContentView);
    v181 = (*(v283 + 80) + 16) & ~*(v283 + 80);
    v182 = swift_allocObject();
    sub_1003FD8A8(v180, v182 + v181, type metadata accessor for ConditionsContentView);
    v183 = (v175 + v170[14]);
    v184 = [objc_opt_self() mainBundle];
    v297._object = 0x8000000100AC6470;
    v185._object = 0x8000000100AC6450;
    v297._countAndFlagsBits = 0xD000000000000051;
    v185._countAndFlagsBits = 0xD000000000000018;
    v186._countAndFlagsBits = 1953066581;
    v186._object = 0xE400000000000000;
    v187 = NSLocalizedString(_:tableName:bundle:value:comment:)(v185, 0, v184, v186, v297);

    v114 = v290;
    sub_10003FDA0(v171, &qword_100CB6028);
    *v183 = v187;
    *v175 = v286;
    v175[1] = v174;
    v188 = v175 + v170[10];
    *v188 = v179;
    v188[8] = 0;
    v189 = (v175 + v170[12]);
    *v189 = 0;
    v189[1] = 0;
    v190 = (v175 + v170[13]);
    *v190 = 0;
    v190[1] = 0;
    v191 = (v175 + v170[11]);
    *v191 = sub_1003FEC5C;
    v191[1] = v182;
    v192 = v175;
    v169 = v281;
    sub_10011C0F0(v192, v281, &qword_100CB60B8, &qword_100A49B60);
    v168 = 0;
  }

  sub_10001B350(v169, v168, 1, v170);
  v193 = v272;
  sub_1000302D8(v114, v272, &qword_100CB63C0, &unk_100A64130);
  if (sub_100024D10(v193, 1, v271) == 1)
  {
    sub_10003FDA0(v193, &qword_100CB63C0);
    v194 = 1;
    v195 = v282;
    v196 = v275;
  }

  else
  {
    v197 = v255;
    sub_10011C0F0(v193, v255, &qword_100CB6058, &unk_100A7B460);
    v198 = v278;
    v199 = (v114 + v278[10]);
    v200 = v199[1];
    v290 = *v199;
    v196 = v275;
    v201 = v256;
    sub_1000302D8(v197, v256 + *(v275 + 36), &qword_100CB6058, &unk_100A7B460);
    v202 = (v114 + v198[6]);
    v203 = *v202;
    v204 = v202[1];
    v292 = v203;
    v293 = v204;

    sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
    State.wrappedValue.getter();
    v205 = v291;
    v206 = v285;
    sub_1003FDADC(v114, v285, type metadata accessor for ConditionsContentView);
    v207 = (*(v283 + 80) + 16) & ~*(v283 + 80);
    v208 = swift_allocObject();
    sub_1003FD8A8(v206, v208 + v207, type metadata accessor for ConditionsContentView);
    v209 = (v201 + v196[14]);
    v210 = [objc_opt_self() mainBundle];
    v298._object = 0x8000000100AC6470;
    v211._object = 0x8000000100AC6450;
    v298._countAndFlagsBits = 0xD000000000000051;
    v211._countAndFlagsBits = 0xD000000000000018;
    v212._countAndFlagsBits = 1953066581;
    v212._object = 0xE400000000000000;
    v213 = NSLocalizedString(_:tableName:bundle:value:comment:)(v211, 0, v210, v212, v298);

    sub_10003FDA0(v197, &qword_100CB6058);
    *v209 = v213;
    *v201 = v290;
    v201[1] = v200;
    v214 = v201 + v196[10];
    *v214 = v205;
    v214[8] = 0;
    v215 = (v201 + v196[12]);
    *v215 = 0;
    v215[1] = 0;
    v216 = (v201 + v196[13]);
    *v216 = 0;
    v216[1] = 0;
    v217 = (v201 + v196[11]);
    *v217 = sub_1003FE890;
    v217[1] = v208;
    v218 = v201;
    v195 = v282;
    sub_10011C0F0(v218, v282, &qword_100CB6140, &qword_100A49B80);
    v194 = 0;
  }

  sub_10001B350(v195, v194, 1, v196);
  v219 = v279;
  sub_1001E42C0(v287, v279);
  v220 = v280;
  sub_1000302D8(v288, v280, &qword_100CB63F8, &qword_100A49DF0);
  v221 = v273;
  sub_1000302D8(v289, v273, &qword_100CB63E8, &unk_100A49DE0);
  v222 = v281;
  v223 = v274;
  sub_1000302D8(v281, v274, &qword_100CB63D8, &unk_100A49DD0);
  v224 = v195;
  v225 = v276;
  sub_1000302D8(v224, v276, &qword_100CB63C8, &unk_100A49DC0);
  v226 = v277;
  sub_1001E42C0(v219, v277);
  v227 = sub_10022C350(&qword_100CB6428, &unk_100A49E28);
  sub_1000302D8(v220, v226 + v227[12], &qword_100CB63F8, &qword_100A49DF0);
  sub_1000302D8(v221, v226 + v227[16], &qword_100CB63E8, &unk_100A49DE0);
  sub_1000302D8(v223, v226 + v227[20], &qword_100CB63D8, &unk_100A49DD0);
  sub_1000302D8(v225, v226 + v227[24], &qword_100CB63C8, &unk_100A49DC0);
  sub_10003FDA0(v282, &qword_100CB63C8);
  sub_10003FDA0(v222, &qword_100CB63D8);
  sub_10003FDA0(v289, &qword_100CB63E8);
  sub_10003FDA0(v288, &qword_100CB63F8);
  sub_10003FDA0(v287, &qword_100CB6420);
  sub_10003FDA0(v225, &qword_100CB63C8);
  sub_10003FDA0(v223, &qword_100CB63D8);
  sub_10003FDA0(v221, &qword_100CB63E8);
  sub_10003FDA0(v280, &qword_100CB63F8);
  return sub_10003FDA0(v279, &qword_100CB6420);
}

uint64_t sub_1003F8A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitConfiguration.Temperature();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FDADC(a1, v13, type metadata accessor for UnitsConfigurationViewModel.Temperature);
  if (sub_100024D10(v13, 1, v4) == 1)
  {
    v14 = type metadata accessor for ConditionsContentView(0);
    sub_1000161C0((a2 + *(v14 + 20)), *(a2 + *(v14 + 20) + 24));
    sub_10001B350(v10, 1, 1, v4);
    sub_1006BC130(v10);
    return sub_10003FDA0(v10, &qword_100CB6198);
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    v16 = type metadata accessor for ConditionsContentView(0);
    sub_1000161C0((a2 + *(v16 + 20)), *(a2 + *(v16 + 20) + 24));
    (*(v5 + 16))(v10, v7, v4);
    sub_10001B350(v10, 0, 1, v4);
    sub_1006BC130(v10);
    sub_10003FDA0(v10, &qword_100CB6198);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1003F8CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.vertical.getter();
  v5 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v4)
  {
    v5 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1000302D8(a1, a2, &qword_100CB60D0, &qword_100A49B68);
  result = sub_10022C350(&qword_100CB5FF8, &qword_100A49AB8);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_1003F8D8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = sub_100021464(a1, a2, a3, a4);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  v13 = type metadata accessor for ConditionsContentView(0);
  sub_1000161C0((v7 + *(v13 + 20)), *(v7 + *(v13 + 20) + 24));
  v14 = v4(0);
  sub_1000037E8();
  (*(v15 + 16))(v12, v8, v14);
  v16 = sub_1000BCE20();
  v6(v16);
  return sub_10003FDA0(v12, v5);
}

uint64_t sub_1003F8E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v4 = type metadata accessor for MenuPickerStyle();
  __chkstk_darwin(v4);
  v61 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v57 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  v12 = *(a1 + 16);
  v13 = type metadata accessor for Binding();
  __chkstk_darwin(v13 - 8);
  v15 = (&v45 - v14);
  v53 = *(a1 + 24);
  v16 = *(v53 + 8);
  v63 = v12;
  v64[0] = v12;
  v60 = v4;
  v64[1] = v4;
  v54 = v16;
  v64[2] = v16;
  v64[3] = &protocol witness table for MenuPickerStyle;
  v17 = type metadata accessor for PickerSection(0, v64);
  v18 = *(v17 - 8);
  v58 = v17;
  v59 = v18;
  __chkstk_darwin(v17);
  v55 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v45 - v21;
  if (v2[1])
  {
    v22 = *v2;
    v51 = v2[1];
    v52 = v22;
  }

  else
  {
    v23 = (v2 + *(a1 + 56));
    v24 = *v23;
    v51 = v23[1];
    v52 = v24;
  }

  v47 = v15;
  sub_1003F9308(a1, v15);
  v25 = *(a1 + 40);
  v48 = *(v2 + *(a1 + 36));
  v50 = *(v2 + v25);
  v49 = *(v2 + v25 + 8);
  v46 = *(v6 + 16);
  v46(v11, v2, a1);
  v26 = v11;
  v27 = a1;
  v28 = v6;
  v29 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v30 = swift_allocObject();
  v45 = v7;
  v31 = v30;
  v32 = v53;
  *(v30 + 16) = v63;
  *(v30 + 24) = v32;
  v33 = *(v28 + 32);
  v33(v30 + v29, v26, v27);
  v34 = v57;
  v46(v57, v2, v27);
  v35 = swift_allocObject();
  v36 = v63;
  *(v35 + 16) = v63;
  *(v35 + 24) = v32;
  v33(v35 + v29, v34, v27);
  v37 = v48;

  v38 = v61;
  MenuPickerStyle.init()();
  v39 = v55;
  sub_1003F96BC(v52, v51, v38, v47, v37, v50, v49, sub_1003FE264, v55, v31, sub_1003FE3A4, v35, v36, v60, v54, &protocol witness table for MenuPickerStyle);
  v40 = v58;
  WitnessTable = swift_getWitnessTable(byte_100A49FE0, v58);
  v42 = v56;
  sub_1000833D8(v39, v40, WitnessTable);
  v43 = *(v59 + 8);
  v43(v39, v40);
  sub_1000833D8(v42, v40, WitnessTable);
  return (v43)(v42, v40);
}

void *sub_1003F9308@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v23 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v21 = *(v3 + 16);
  v21(&v19 - v7, v6);
  type metadata accessor for MainActor();
  v9 = static MainActor.shared.getter();
  v10 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v9;
  *(v11 + 3) = &protocol witness table for MainActor;
  v12 = *(a1 + 24);
  v19 = *(a1 + 16);
  v20 = v12;
  *(v11 + 4) = v19;
  *(v11 + 5) = v12;
  v13 = *(v3 + 32);
  v13(&v11[v10], v8, a1);
  v14 = v23;
  (v21)(v23, v22, a1);
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  *(v16 + 2) = v15;
  v17 = v19;
  *(v16 + 3) = &protocol witness table for MainActor;
  *(v16 + 4) = v17;
  *(v16 + 5) = v20;
  v13(&v16[v10], v14, a1);
  return Binding.init(get:set:)();
}

uint64_t sub_1003F9524(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + *(type metadata accessor for ConditionContentView(0, a4, a5, a4) + 48));
  if (v9)
  {

    v10 = v9(a1, a2 & 1);
    sub_10002B028(v9);
    return v10;
  }

  else if (a2)
  {
    return (*(a5 + 24))(a4, a5);
  }

  else
  {
    return (*(a5 + 16))(a4, a5);
  }
}

uint64_t sub_1003F9600(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + *(type metadata accessor for ConditionContentView(0, a4, a5, a4) + 52));
  if (!v9)
  {
    return (*(a5 + 32))(a4, a5);
  }

  v10 = v9(a1, a2 & 1);
  sub_10002B028(v9);
  return v10;
}

uint64_t sub_1003F96BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v33[0] = a13;
  v33[1] = a14;
  v33[2] = a15;
  v33[3] = a16;
  v22 = type metadata accessor for PickerSection(0, v33);
  v23 = v22[19];
  *(a9 + v23) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
  swift_storeEnumTagMultiPayload();
  v24 = (a9 + v22[13]);
  *v24 = a1;
  v24[1] = a2;
  (*(*(a14 - 8) + 32))(a9 + v22[14], a3, a14);
  v25 = type metadata accessor for Binding();
  result = (*(*(v25 - 8) + 32))(a9, a4, v25);
  *(a9 + v22[16]) = a5;
  v27 = a9 + v22[15];
  *v27 = a6;
  *(v27 + 8) = a7 & 1;
  v28 = (a9 + v22[17]);
  *v28 = a8;
  v28[1] = a10;
  v29 = (a9 + v22[18]);
  *v29 = a11;
  v29[1] = a12;
  return result;
}

uint64_t sub_1003F9868@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = a1 + *(type metadata accessor for ConditionContentView(0, a2, a3, a2) + 36);
  v9 = type metadata accessor for UnitsConfigurationViewModel.Configuration(0, a2, a3, v8);
  v10 = *(*(a2 - 8) + 16);
  v11 = v7 + *(v9 + 36);

  return v10(a4, v11, a2);
}

uint64_t sub_1003F9960@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  sub_10022E824(&qword_100CB6640, &qword_100A4A030);
  v3 = sub_10022E824(&qword_100CB6648, &qword_100A4A038);
  v4 = a1[2];
  v5 = type metadata accessor for Array();
  v6 = sub_10022E824(&qword_100CB6650, &qword_100A4A040);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v5);
  v8 = a1[4];
  v91 = v5;
  v92 = v4;
  v75 = v4;
  v93 = v6;
  v94 = WitnessTable;
  v73 = v8;
  v95 = v8;
  v9 = type metadata accessor for ForEach();
  v10 = sub_1003FFD40();
  v90 = sub_1003FFFA8();
  v11 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v9, &v90);
  v91 = v3;
  v92 = v9;
  v93 = v10;
  v94 = v11;
  v12 = type metadata accessor for Menu();
  v13 = type metadata accessor for DefaultMenuStyle();
  v14 = swift_getWitnessTable(&protocol conformance descriptor for Menu<A, B>, v12);
  v15 = sub_1003FD490(&qword_100CB66A8, &type metadata accessor for DefaultMenuStyle, &protocol conformance descriptor for DefaultMenuStyle);
  v91 = v12;
  v92 = v13;
  v93 = v14;
  v94 = v15;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  v16 = type metadata accessor for TupleView();
  swift_getWitnessTable(&protocol conformance descriptor for TupleView<A>, v16);
  type metadata accessor for HStack();
  sub_10022E824(&qword_100CB66B0, &qword_100A4A068);
  swift_getTupleTypeMetadata2();
  v71 = type metadata accessor for TupleView();
  v69 = swift_getWitnessTable(&protocol conformance descriptor for TupleView<A>, v71);
  v17 = type metadata accessor for VStack();
  swift_getTupleTypeMetadata2();
  v65 = type metadata accessor for TupleView();
  v64[1] = swift_getWitnessTable(&protocol conformance descriptor for TupleView<A>, v65);
  v18 = type metadata accessor for ViewThatFits();
  v68 = *(v18 - 8);
  __chkstk_darwin(v18);
  v66 = v64 - v19;
  v79 = v20;
  v21 = type metadata accessor for ModifiedContent();
  v72 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v70 = v64 - v25;
  v64[0] = *(v17 - 8);
  __chkstk_darwin(v26);
  v28 = v64 - v27;
  v80 = v17;
  v29 = type metadata accessor for ModifiedContent();
  v67 = *(v29 - 8);
  __chkstk_darwin(v29);
  v31 = v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = v64 - v33;
  v35 = type metadata accessor for DynamicTypeSize();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = v64 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v29;
  v78 = v21;
  v77 = type metadata accessor for _ConditionalContent();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = v64 - v39;
  sub_10011A1CC();
  LOBYTE(v29) = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v36 + 8))(v38, v35);
  if (v29)
  {
    v40 = static HorizontalAlignment.leading.getter();
    __chkstk_darwin(v40);
    VStack.init(alignment:spacing:content:)();
    static Alignment.leading.getter();
    v41 = v80;
    v60 = v80;
    v62 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v80);
    View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v64[0] + 8))(v28, v60);
    v84[0] = v62;
    v84[1] = &protocol witness table for _FlexFrameLayout;
    v42 = v82;
    v43 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v82, v84);
    sub_1000833D8(v31, v42, v43);
    v44 = *(v67 + 8);
    v44(v31, v42);
    sub_1000833D8(v34, v42, v43);
    v45 = v79;
    v83[0] = swift_getWitnessTable(&protocol conformance descriptor for ViewThatFits<A>, v79);
    v83[1] = &protocol witness table for _FlexFrameLayout;
    v46 = v78;
    swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v78, v83);
    v47 = v74;
    sub_1003E8038();
    v48 = v31;
    v49 = v45;
    v44(v48, v42);
    v44(v34, v42);
  }

  else
  {
    v50 = static Axis.Set.horizontal.getter();
    __chkstk_darwin(v50);
    v51 = v66;
    ViewThatFits.init(in:content:)();
    static Alignment.leading.getter();
    v49 = v79;
    v61 = v79;
    v63 = swift_getWitnessTable(&protocol conformance descriptor for ViewThatFits<A>, v79);
    View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v68 + 8))(v51, v61);
    v89[0] = v63;
    v89[1] = &protocol witness table for _FlexFrameLayout;
    v46 = v78;
    v52 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v78, v89);
    v53 = v70;
    sub_1000833D8(v23, v46, v52);
    v54 = *(v72 + 8);
    v54(v23, v46);
    sub_1000833D8(v53, v46, v52);
    v41 = v80;
    v88[0] = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v80);
    v88[1] = &protocol witness table for _FlexFrameLayout;
    swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v82, v88);
    v47 = v74;
    sub_10012D09C();
    v54(v23, v46);
    v54(v53, v46);
  }

  v87[0] = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v41);
  v87[1] = &protocol witness table for _FlexFrameLayout;
  v55 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v82, v87);
  v86[0] = swift_getWitnessTable(&protocol conformance descriptor for ViewThatFits<A>, v49);
  v86[1] = &protocol witness table for _FlexFrameLayout;
  v56 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v46, v86);
  v85[0] = v55;
  v85[1] = v56;
  v57 = v77;
  v58 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v77, v85);
  sub_1000833D8(v47, v57, v58);
  return (*(v76 + 8))(v47, v57);
}

uint64_t sub_1003FA578@<X0>(uint64_t a2@<X8>)
{
  sub_10002D5A4();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v17 = v3;
  v18 = v4;
  v7 = v6 & 1;
  LOBYTE(v19) = v6 & 1;
  v20 = v8;
  View.accessibilityHidden(_:)();
  sub_10010CD64(v3, v5, v7);

  v9 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v11 = (a2 + *(sub_10022C350(&qword_100CB66C8, &qword_100A4A070) + 36));
  *v11 = KeyPath;
  v11[1] = v9;
  v12 = [objc_opt_self() labelColor];
  v13 = Color.init(_:)();
  v14 = swift_getKeyPath();
  result = sub_10022C350(&qword_100CB66B0, &qword_100A4A068);
  v16 = (a2 + *(result + 36));
  *v16 = v14;
  v16[1] = v13;
  return result;
}

uint64_t sub_1003FA6C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v25 = type metadata accessor for DefaultMenuStyle();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022E824(&qword_100CB6648, &qword_100A4A038);
  v22 = a1 + 3;
  v23 = a1 + 5;
  v6 = a1[2];
  v7 = type metadata accessor for Array();
  v8 = sub_10022E824(&qword_100CB6650, &qword_100A4A040);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v7);
  v10 = a1[4];
  v35 = v7;
  v36 = v6;
  v37 = v8;
  v38 = WitnessTable;
  v39 = v10;
  v11 = type metadata accessor for ForEach();
  v12 = sub_1003FFD40();
  v34 = sub_1003FFFA8();
  v13 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v11, &v34);
  v35 = v5;
  v36 = v11;
  v37 = v12;
  v38 = v13;
  v14 = type metadata accessor for Menu();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - v16;
  *&v18 = v6;
  *(&v18 + 1) = *v22;
  *&v19 = v10;
  *(&v19 + 1) = *v23;
  v31 = v18;
  v32 = v19;
  v33 = v24;
  v28 = v18;
  v29 = v19;
  v30 = v24;
  Menu.init(content:label:)();
  DefaultMenuStyle.init()();
  swift_getWitnessTable(&protocol conformance descriptor for Menu<A, B>, v14);
  sub_1003FD490(&qword_100CB66A8, &type metadata accessor for DefaultMenuStyle, &protocol conformance descriptor for DefaultMenuStyle);
  v20 = v25;
  View.menuStyle<A>(_:)();
  (*(v26 + 8))(v4, v20);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1003FAA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a5;
  v58 = a4;
  v45 = a3;
  v59 = a1;
  v61 = a6;
  sub_10022E824(&qword_100CB66B0, &qword_100A4A068);
  v9 = sub_10022E824(&qword_100CB6648, &qword_100A4A038);
  v10 = a2;
  v76 = type metadata accessor for Array();
  v77 = a2;
  v78 = sub_10022E824(&qword_100CB6650, &qword_100A4A040);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v76);
  v80 = a4;
  v11 = type metadata accessor for ForEach();
  v12 = sub_1003FFD40();
  v75 = sub_1003FFFA8();
  v13 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v11, &v75);
  v76 = v9;
  v77 = v11;
  v78 = v12;
  WitnessTable = v13;
  v14 = type metadata accessor for Menu();
  v15 = type metadata accessor for DefaultMenuStyle();
  v16 = swift_getWitnessTable(&protocol conformance descriptor for Menu<A, B>, v14);
  v17 = sub_1003FD490(&qword_100CB66A8, &type metadata accessor for DefaultMenuStyle, &protocol conformance descriptor for DefaultMenuStyle);
  v76 = v14;
  v77 = v15;
  v78 = v16;
  WitnessTable = v17;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v56 = type metadata accessor for TupleView();
  v55 = swift_getWitnessTable(&protocol conformance descriptor for TupleView<A>, v56);
  v52 = type metadata accessor for VStack();
  v57 = *(v52 - 8);
  __chkstk_darwin(v52);
  v53 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v54 = &v44 - v20;
  sub_10022E824(&qword_100CB6640, &qword_100A4A030);
  swift_getTupleTypeMetadata3();
  v21 = type metadata accessor for TupleView();
  swift_getWitnessTable(&protocol conformance descriptor for TupleView<A>, v21);
  v22 = type metadata accessor for HStack();
  v47 = *(v22 - 8);
  v23 = v47;
  __chkstk_darwin(v22);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v48 = &v44 - v27;
  v67 = v10;
  v68 = a3;
  v28 = v58;
  v29 = v60;
  v69 = v58;
  v70 = v60;
  v30 = v59;
  v71 = v59;
  j___s7SwiftUI17VerticalAlignmentV6centerACvgZ(v21);
  HStack.init(alignment:spacing:content:)();
  v50 = swift_getWitnessTable(&protocol conformance descriptor for HStack<A>, v22);
  v46 = v22;
  sub_1000833D8(v25, v22, v50);
  v31 = *(v23 + 8);
  v49 = v23 + 8;
  v51 = v31;
  v31(v25, v22);
  static HorizontalAlignment.leading.getter();
  v62 = v10;
  v63 = v45;
  v64 = v28;
  v65 = v29;
  v66 = v30;
  v32 = v53;
  VStack.init(alignment:spacing:content:)();
  v33 = v52;
  v34 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v52);
  v35 = v54;
  sub_1000833D8(v32, v33, v34);
  v36 = v57;
  v37 = *(v57 + 8);
  v37(v32, v33);
  v38 = v25;
  v39 = v25;
  v40 = v48;
  v41 = v46;
  (*(v47 + 16))(v39, v48, v46);
  v76 = v38;
  (*(v36 + 16))(v32, v35, v33);
  v77 = v32;
  v74[0] = v41;
  v74[1] = v33;
  v72 = v50;
  v73 = v34;
  sub_10012E24C(&v76, 2, v74);
  v37(v35, v33);
  v42 = v51;
  v51(v40, v41);
  v37(v32, v33);
  return v42(v38, v41);
}

uint64_t sub_1003FB0AC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a3;
  v39 = a5;
  v40 = a1;
  v41 = a6;
  v8 = sub_10022E824(&qword_100CB6648, &qword_100A4A038);
  v49 = type metadata accessor for Array();
  v50 = a2;
  v51 = sub_10022E824(&qword_100CB6650, &qword_100A4A040);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v49);
  v53 = a4;
  v9 = type metadata accessor for ForEach();
  v10 = sub_1003FFD40();
  v48 = sub_1003FFFA8();
  v11 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v9, &v48);
  v49 = v8;
  v50 = v9;
  v51 = v10;
  WitnessTable = v11;
  v12 = type metadata accessor for Menu();
  v13 = type metadata accessor for DefaultMenuStyle();
  v37 = swift_getWitnessTable(&protocol conformance descriptor for Menu<A, B>, v12);
  v36 = sub_1003FD490(&qword_100CB66A8, &type metadata accessor for DefaultMenuStyle, &protocol conformance descriptor for DefaultMenuStyle);
  v49 = v12;
  v50 = v13;
  v51 = v37;
  WitnessTable = v36;
  v34 = &opaque type descriptor for <<opaque return type of View.menuStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  v20 = sub_10022C350(&qword_100CB6640, &qword_100A4A030);
  v32 = v20;
  __chkstk_darwin(v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v31 - v24;
  v49 = a2;
  v50 = v38;
  v51 = a4;
  WitnessTable = v39;
  v26 = type metadata accessor for PickerSection(0, &v49);
  sub_1003FA578(v25);
  *&v25[*(v20 + 36)] = 257;
  sub_1003FA6C8(v26, v16);
  v49 = v12;
  v50 = v13;
  v51 = v37;
  WitnessTable = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v28 = v35;
  v29 = *(v35 + 8);
  v29(v16, OpaqueTypeMetadata2);
  v33 = v22;
  sub_1000302D8(v25, v22, &qword_100CB6640, &qword_100A4A030);
  v46 = 0;
  v47 = 1;
  v49 = v22;
  v50 = &v46;
  (*(v28 + 16))(v16, v19, OpaqueTypeMetadata2);
  v51 = v16;
  v45[0] = v32;
  v45[1] = &type metadata for Spacer;
  v45[2] = OpaqueTypeMetadata2;
  v42 = sub_100400600(&qword_100CB66E8, &qword_100CB6640, &qword_100A4A030, sub_1004000AC);
  v43 = &protocol witness table for Spacer;
  v44 = OpaqueTypeConformance2;
  sub_10012E24C(&v49, 3, v45);
  v29(v19, OpaqueTypeMetadata2);
  sub_10003FDA0(v25, &qword_100CB6640);
  v29(v16, OpaqueTypeMetadata2);
  return sub_10003FDA0(v33, &qword_100CB6640);
}