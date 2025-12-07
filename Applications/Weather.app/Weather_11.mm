void sub_100134004(uint64_t a1)
{
  sub_10013D908(319, &qword_100CD2508, type metadata accessor for PageContainerSidebarState, &type metadata accessor for Environment);
  if (v3 <= 0x3F)
  {
    v14 = 0;
    v19 = v2;
    sub_10009BFD0(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
    if (v5 <= 0x3F)
    {
      v15 = 0;
      v20 = v4;
      v6 = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        v16 = 0;
        v21 = v6;
        v12[0] = *(a1 + 16);
        v12[1] = v6;
        v13 = *(a1 + 32);
        type metadata accessor for TransitionContext(255, v12);
        v8 = type metadata accessor for Optional();
        if (v9 <= 0x3F)
        {
          v17 = 0;
          v22 = v8;
          sub_10009BFD0(319, &qword_100CB3B28, &type metadata for Bool, &type metadata accessor for Binding);
          if (v11 <= 0x3F)
          {
            v18 = 0;
            v23 = v10;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100134184(uint64_t *a1)
{
  v22 = a1[2];
  v23 = a1[3];
  v24 = a1[1];
  v31 = *a1;
  v1 = v31;
  v32 = v24;
  v33 = v22;
  v34 = v23;
  sub_100031F04();
  v2 = type metadata accessor for IDView();
  sub_10022E824(&qword_100CA4628, &qword_100A45EA0);
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CE1580, &unk_100A408E0);
  sub_10000381C();
  v5 = type metadata accessor for ModifiedContent();
  sub_1000717DC();
  v6 = type metadata accessor for ModifiedContent();
  sub_100011680();
  v7 = type metadata accessor for _ConditionalContent();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for IDView<A, B>, v2);
  v9 = sub_100006F64(&qword_100CA4620, &qword_100CA4628, &qword_100A45EA0, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v30[0] = WitnessTable;
  v30[1] = v9;
  v29[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v30);
  v29[1] = &protocol witness table for _AppearanceActionModifier;
  v28[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v4, v29);
  v28[1] = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v27[0] = v22;
  v27[1] = v9;
  v26[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v28);
  v26[1] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v27);
  v10 = sub_10001F590();
  swift_getWitnessTable(v10, v7, v26);
  sub_10000381C();
  v11 = type metadata accessor for VStack();
  v12 = sub_100008CF4();
  v13 = swift_getWitnessTable(v12, v11);
  v31 = v11;
  v32 = &type metadata for Bool;
  v33 = v13;
  v34 = &protocol witness table for Bool;
  sub_100031F04();
  v14 = type metadata accessor for IDView();
  v31 = v1;
  v32 = v24;
  v33 = v22;
  v34 = v23;
  v15 = sub_100031F04();
  type metadata accessor for RebuildPageWhenSidebarCollapsesDuringTransitionModifier(v15, v16);
  sub_100052704();
  v17 = type metadata accessor for ModifiedContent();
  v18 = type metadata accessor for PageContainerSidebarState(255);
  v25[0] = swift_getWitnessTable(&protocol conformance descriptor for IDView<A, B>, v14);
  v25[1] = sub_100025338();
  v19 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v17, v25);
  v20 = sub_100121A00(&qword_100CD2468, type metadata accessor for PageContainerSidebarState, byte_100A777F8);
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10013449C(__int128 *a1)
{
  v1 = a1[1];
  v5 = *a1;
  v6 = v1;
  type metadata accessor for RebuildPageWhenSidebarCollapsesDuringTransitionModifier(255, &v5);
  sub_100025338();
  sub_10000381C();
  v2 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for _ViewModifier_Content<A>, v2);
  *&v5 = v2;
  *(&v5 + 1) = &type metadata for Bool;
  *&v6 = WitnessTable;
  *(&v6 + 1) = &protocol witness table for Bool;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100134540@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v97 = a1;
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v125 = a1[2];
  v3 = v125;
  v126 = v2;
  v6 = v2;
  v127 = v4;
  v128 = v5;
  v7 = v4;
  v8 = v5;
  type metadata accessor for TransitionContext(255, &v125);
  v104 = type metadata accessor for Optional();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v78 - v9;
  v100 = *(v6 - 1);
  __chkstk_darwin(v10);
  v98 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v3;
  v126 = v6;
  v96 = v6;
  v106 = v7;
  v127 = v7;
  v128 = v8;
  v110 = v8;
  v107 = type metadata accessor for RebuildPageWhenSidebarCollapsesDuringTransitionModifier(0, &v125);
  v102 = *(v107 - 8);
  __chkstk_darwin(v107);
  v99 = &v78 - v12;
  v125 = v3;
  v126 = v6;
  v109 = v3;
  v127 = v7;
  v128 = v8;
  v13 = type metadata accessor for IDView();
  sub_10022E824(&qword_100CA4628, &qword_100A45EA0);
  v14 = type metadata accessor for ModifiedContent();
  v15 = type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CE1580, &unk_100A408E0);
  v16 = type metadata accessor for ModifiedContent();
  v17 = type metadata accessor for ModifiedContent();
  v18 = type metadata accessor for _ConditionalContent();
  v93 = &protocol conformance descriptor for IDView<A, B>;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for IDView<A, B>, v13);
  v20 = sub_100006F64(&qword_100CA4620, &qword_100CA4628, &qword_100A45EA0, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v124[0] = WitnessTable;
  v124[1] = v20;
  v123[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v14, v124);
  v123[1] = &protocol witness table for _AppearanceActionModifier;
  v21 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v15, v123);
  v22 = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v122[0] = v21;
  v122[1] = v22;
  v23 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v16, v122);
  v24 = v106;
  v121[0] = v106;
  v121[1] = v20;
  v25 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v17, v121);
  v120[0] = v23;
  v120[1] = v25;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v18, v120);
  v26 = v18;
  v27 = type metadata accessor for VStack();
  v81 = v27;
  v90 = *(v27 - 8);
  v28 = __chkstk_darwin(v27);
  v30 = &v78 - v29;
  v80 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v27, v28);
  v125 = v27;
  v126 = &type metadata for Bool;
  v127 = v80;
  v128 = &protocol witness table for Bool;
  v31 = type metadata accessor for IDView();
  v94 = *(v31 - 8);
  __chkstk_darwin(v31);
  v108 = &v78 - v32;
  v84 = v31;
  v33 = v107;
  v34 = type metadata accessor for ModifiedContent();
  v95 = *(v34 - 8);
  __chkstk_darwin(v34);
  v85 = &v78 - v35;
  v36 = type metadata accessor for PageContainerSidebarState(255);
  v89 = v36;
  v37 = swift_getWitnessTable(v93, v31);
  v82 = v37;
  v38 = swift_getWitnessTable(byte_100A77D88, v33);
  v119[0] = v37;
  v119[1] = v38;
  v86 = v34;
  v39 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v34, v119);
  v88 = v39;
  v87 = sub_100121A00(&qword_100CD2468, type metadata accessor for PageContainerSidebarState, byte_100A777F8);
  v125 = v34;
  v126 = v36;
  v127 = v39;
  v128 = v87;
  v91 = &opaque type descriptor for <<opaque return type of View.environment<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v79 = &v78 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v83 = &v78 - v42;
  v43 = v109;
  v112 = v109;
  v44 = v96;
  v113 = v96;
  v45 = v24;
  v114 = v24;
  v115 = v110;
  v46 = v111;
  v116 = v111;
  j___s7SwiftUI19HorizontalAlignmentV6centerACvgZ(v26);
  v47 = v30;
  VStack.init(alignment:spacing:content:)();
  v48 = v97;
  v49 = v46 + *(v97 + 15);
  v50 = *(v49 + 8);
  LOBYTE(v125) = *v49;
  LOBYTE(v30) = v125;
  v126 = v50;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  LOBYTE(v125) = v117;
  v51 = v81;
  View.id<A>(_:)();
  (*(v90 + 8))(v47, v51);
  v125 = v43;
  v126 = v44;
  v52 = v110;
  v127 = v45;
  v128 = v110;
  v53 = type metadata accessor for Page(0, &v125);
  v54 = v111;
  v55 = v98;
  v56 = v44;
  (*(v100 + 16))(v98, v111 + *(v53 + 52), v44);
  v57 = v54;
  v58 = v101;
  (*(v103 + 16))(v101, v54 + *(v48 + 14), v104);
  LOBYTE(v117) = v30;
  v118 = v50;
  State.projectedValue.getter();
  v59 = v99;
  sub_100136198(v55, v58, v125, v126, v127, v109, v56, v106, v99, v52);
  v60 = v85;
  v61 = v59;
  v62 = v84;
  v63 = v107;
  v64 = v108;
  View.modifier<A>(_:)();
  (*(v102 + 8))(v61, v63);
  (*(v94 + 8))(v64, v62);
  v65 = (v57 + *(v48 + 16));
  v67 = *v65;
  v66 = v65[1];
  v125 = v67;
  v126 = v66;
  sub_10022C350(&qword_100CD2470, &qword_100A77CF8);
  State.wrappedValue.getter();
  v68 = v79;
  v69 = v86;
  v70 = v89;
  v71 = v88;
  v72 = v87;
  View.environment<A>(_:)();

  (*(v95 + 8))(v60, v69);
  v125 = v69;
  v126 = v70;
  v127 = v71;
  v128 = v72;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = v83;
  v75 = OpaqueTypeMetadata2;
  sub_1000833D8(v68, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v76 = *(v93 + 1);
  v76(v68, v75);
  sub_1000833D8(v74, v75, OpaqueTypeConformance2);
  return (v76)(v74, v75);
}

uint64_t sub_10013507C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v124 = a1;
  v120 = a6;
  sub_10022E824(&qword_100CA4628, &qword_100A45EA0);
  v10 = type metadata accessor for ModifiedContent();
  v114 = *(v10 - 8);
  __chkstk_darwin(v10);
  v113 = (&v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v111 = &v94 - v13;
  __chkstk_darwin(v14);
  v112 = &v94 - v15;
  v140 = a2;
  v141 = a3;
  v142 = a4;
  v143 = a5;
  v121 = type metadata accessor for PageContainer(0, &v140);
  v103 = *(v121 - 8);
  v98 = *(v103 + 64);
  __chkstk_darwin(v121);
  v100 = &v94 - v16;
  v140 = a2;
  v141 = a3;
  v142 = a4;
  v143 = a5;
  v17 = type metadata accessor for IDView();
  v97 = *(v17 - 8);
  __chkstk_darwin(v17);
  v96 = &v94 - v18;
  v123 = v19;
  v20 = type metadata accessor for ModifiedContent();
  v101 = *(v20 - 8);
  __chkstk_darwin(v20);
  v99 = &v94 - v21;
  v126 = v22;
  v23 = type metadata accessor for ModifiedContent();
  v105 = *(v23 - 8);
  __chkstk_darwin(v23);
  v104 = &v94 - v24;
  sub_10022E824(&qword_100CE1580, &unk_100A408E0);
  v125 = v23;
  v25 = type metadata accessor for ModifiedContent();
  v108 = *(v25 - 8);
  __chkstk_darwin(v25);
  v107 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v102 = &v94 - v28;
  __chkstk_darwin(v29);
  v106 = &v94 - v30;
  v140 = a2;
  v141 = a3;
  v109 = a3;
  v142 = a4;
  v143 = a5;
  v110 = a5;
  v31 = type metadata accessor for TransitionContext(255, &v140);
  v32 = type metadata accessor for Optional();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v94 - v34;
  v36 = *(v31 - 8);
  __chkstk_darwin(v37);
  v39 = &v94 - v38;
  v119 = v25;
  v40 = v124;
  v115 = v10;
  v41 = v121;
  v118 = type metadata accessor for _ConditionalContent();
  v117 = *(v118 - 8);
  v42 = __chkstk_darwin(v118);
  v116 = &v94 - v43;
  (*(v33 + 16))(v35, v40 + *(v41 + 56), v32, v42);
  v44 = sub_100024D10(v35, 1, v31);
  v122 = a4;
  if (v44 == 1)
  {
    (*(v33 + 8))(v35, v32);
LABEL_7:
    if (!*(v40 + *(v41 + 52)))
    {
      static AnyTransition.identity.getter();
    }

    v50 = v111;
    View.transition(_:)();

    v51 = sub_100006F64(&qword_100CA4620, &qword_100CA4628, &qword_100A45EA0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    v139[0] = a4;
    v139[1] = v51;
    v52 = v115;
    WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v115, v139);
    v54 = v112;
    sub_1000833D8(v50, v52, WitnessTable);
    v55 = *(v114 + 8);
    v55(v50, v52);
    v56 = v113;
    sub_1000833D8(v54, v52, WitnessTable);
    v57 = v123;
    v138[0] = swift_getWitnessTable(&protocol conformance descriptor for IDView<A, B>, v123);
    v138[1] = v51;
    v137[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v126, v138);
    v137[1] = &protocol witness table for _AppearanceActionModifier;
    v58 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v125, v137);
    v59 = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    v136[0] = v58;
    v136[1] = v59;
    v60 = v119;
    swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v119, v136);
    v61 = v116;
    sub_10012D09C();
    v55(v56, v52);
    v55(v54, v52);
    v62 = v61;
    goto LABEL_12;
  }

  v36[4](v39, v35, v31);
  v45 = v109;
  v140 = a2;
  v141 = v109;
  v142 = a4;
  v143 = v110;
  type metadata accessor for Page(0, &v140);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v40 = v124;
    (v36[1])(v39, v31);
    goto LABEL_7;
  }

  v46 = v45;
  v113 = v36;
  v114 = v31;
  v47 = v96;
  v112 = a2;
  View.id<A>(_:)();
  v48 = *(v124 + *(v41 + 52));
  v95 = v39;
  v49 = v124;
  if (!v48)
  {
    static AnyTransition.identity.getter();
  }

  v52 = v115;

  v63 = v123;
  v64 = swift_getWitnessTable(&protocol conformance descriptor for IDView<A, B>, v123);
  v65 = v99;
  View.transition(_:)();

  (*(v97 + 8))(v47, v63);
  v66 = v103;
  v67 = v100;
  v68 = v121;
  (*(v103 + 16))(v100, v49, v121);
  v69 = (*(v66 + 80) + 48) & ~*(v66 + 80);
  v70 = swift_allocObject();
  *(v70 + 2) = v112;
  *(v70 + 3) = v46;
  v71 = v122;
  v72 = v110;
  *(v70 + 4) = v122;
  *(v70 + 5) = v72;
  (*(v66 + 32))(&v70[v69], v67, v68);
  v124 = sub_100006F64(&qword_100CA4620, &qword_100CA4628, &qword_100A45EA0, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v130[0] = v64;
  v130[1] = v124;
  v73 = v126;
  v74 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v126, v130);
  v75 = v104;
  View.onDisappear(perform:)();

  (*(v101 + 8))(v65, v73);
  swift_getKeyPath();
  LOBYTE(v140) = 1;
  v129[0] = v74;
  v129[1] = &protocol witness table for _AppearanceActionModifier;
  v76 = v125;
  v77 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v125, v129);
  v78 = v102;
  View.environment<A>(_:_:)();

  (*(v105 + 8))(v75, v76);
  v79 = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v128[0] = v77;
  v128[1] = v79;
  v80 = v119;
  v81 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v119, v128);
  v82 = v106;
  sub_1000833D8(v78, v80, v81);
  v83 = *(v108 + 8);
  v83(v78, v80);
  v84 = v107;
  sub_1000833D8(v82, v80, v81);
  v127[0] = v71;
  v127[1] = v124;
  v60 = v80;
  swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v52, v127);
  v62 = v116;
  sub_1003E8038();
  v83(v84, v60);
  v83(v82, v60);
  v57 = v123;
  v113[1](v95, v114);
LABEL_12:
  v85 = swift_getWitnessTable(&protocol conformance descriptor for IDView<A, B>, v57);
  v86 = sub_100006F64(&qword_100CA4620, &qword_100CA4628, &qword_100A45EA0, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v135[0] = v85;
  v135[1] = v86;
  v134[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v126, v135);
  v134[1] = &protocol witness table for _AppearanceActionModifier;
  v87 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v125, v134);
  v88 = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v133[0] = v87;
  v133[1] = v88;
  v89 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v60, v133);
  v132[0] = v122;
  v132[1] = v86;
  v90 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v52, v132);
  v131[0] = v89;
  v131[1] = v90;
  v91 = v118;
  v92 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v118, v131);
  sub_1000833D8(v62, v91, v92);
  return (*(v117 + 8))(v62, v91);
}

uint64_t sub_100136198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  type metadata accessor for PageContainerSidebarState(0);
  sub_100121A00(&qword_100CD2468, type metadata accessor for PageContainerSidebarState, byte_100A777F8);
  *a9 = Environment.init<A>(_:)();
  *(a9 + 8) = v18 & 1;
  *(a9 + 16) = swift_getKeyPath();
  *(a9 + 24) = 0;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a10;
  v19 = type metadata accessor for RebuildPageWhenSidebarCollapsesDuringTransitionModifier(0, &v25);
  (*(*(a7 - 8) + 32))(a9 + v19[14], a1, a7);
  v20 = v19[15];
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a10;
  type metadata accessor for TransitionContext(255, &v25);
  v21 = type metadata accessor for Optional();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v23 = a9 + v19[16];
  *v23 = a3;
  *(v23 + 8) = a4;
  *(v23 + 16) = a5;
  return result;
}

unint64_t sub_1001363A0()
{
  result = qword_100CCAF18;
  if (!qword_100CCAF18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAE78, &qword_100A69718);
    v4[0] = sub_100136458();
    v4[1] = sub_1005F6F6C(&qword_100CBDD68);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAF18);
  }

  return result;
}

unint64_t sub_100136458()
{
  result = qword_100CCAF20;
  if (!qword_100CCAF20)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CCAE70, &qword_100A69710);
    v4[2] = sub_10022E824(&qword_100CCAE80, &qword_100A69720);
    v4[3] = sub_100136604();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1005F6F6C(&qword_100CCAF28);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAF20);
  }

  return result;
}

unint64_t sub_10013654C()
{
  result = qword_100CCAE90;
  if (!qword_100CCAE90)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAE98, &qword_100A69728);
    v4[0] = sub_1005F6F6C(&unk_100CCAEA0);
    v4[1] = &protocol witness table for _BackdropGroupEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAE90);
  }

  return result;
}

unint64_t sub_100136604()
{
  result = qword_100CCAE88;
  if (!qword_100CCAE88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAE80, &qword_100A69720);
    v4[0] = sub_10013654C();
    v4[1] = sub_1005F6F6C(&unk_100CCAEB0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAE88);
  }

  return result;
}

uint64_t sub_1001366BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v4 - 8);
  v6 = v39 - v5;
  v7 = type metadata accessor for LocationViewPage(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CCAE70, &qword_100A69710);
  __chkstk_darwin(v11);
  v13 = v39 - v12;
  v14 = sub_10022C350(&qword_100CCAE78, &qword_100A69718);
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  if (*(v2 + *(v7 + 28)))
  {

    return sub_10001B350(a1, 1, 1, v16);
  }

  else
  {
    v44 = v16;
    v43 = v18;
    v45 = v39 - v17;
    v47[0] = static HorizontalAlignment.center.getter();
    v47[1] = 0;
    v46 = a1;
    v48 = 1;
    sub_100136C18(v2, v49);
    v50 = 1;
    v39[1] = type metadata accessor for LocationViewPage;
    sub_1005F1770(v2, v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v41 = v11;
    v20 = *(v8 + 80);
    v42 = v7;
    v21 = (v20 + 16) & ~v20;
    v22 = swift_allocObject();
    sub_100103E40(v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    v51 = sub_10015F118;
    v52 = 0;
    v53 = sub_100163420;
    v54 = v22;
    sub_1005F1770(v2, v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = swift_allocObject();
    v40 = v6;
    sub_100103E40(v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21);
    sub_10022C350(&qword_100CCAE80, &qword_100A69720);
    sub_100136604();
    View.onTapGesture(count:perform:)();

    sub_100018198(v47, &qword_100CCAE80);
    KeyPath = swift_getKeyPath();
    sub_1005F1770(v2, v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = swift_allocObject();
    sub_100103E40(v10, v25 + v21);
    v26 = &v13[*(v41 + 36)];
    *v26 = KeyPath;
    v26[1] = sub_10013E31C;
    v26[2] = v25;
    v27 = v2 + *(v42 + 20);
    v28 = sub_10010EC9C();
    v29 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
    v30 = v40;
    sub_1000302D8(v27 + *(v29 + 20), v40, &qword_100CA5010, &unk_100A2F250);
    v31 = type metadata accessor for ContentStatusBanner(0);
    LOBYTE(v27) = sub_100024D10(v30, 1, v31) != 1;
    sub_100018198(v30, &qword_100CA5010);
    v32 = v43;
    sub_10011C0F0(v13, v43, &qword_100CCAE70, &qword_100A69710);
    v33 = v44;
    v34 = v32 + *(v44 + 36);
    *v34 = v28;
    *(v34 + 8) = v27;
    v35 = v32;
    v36 = v45;
    sub_10011C0F0(v35, v45, &qword_100CCAE78, &qword_100A69718);
    v37 = v36;
    v38 = v46;
    sub_10011C0F0(v37, v46, &qword_100CCAE78, &qword_100A69718);
    return sub_10001B350(v38, 0, 1, v33);
  }
}

uint64_t sub_100136C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationViewPage(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_1005F1770(a1, &v16 - v9);
  sub_1005F1770(a1, v7);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_100103E40(v7, v12 + v11);
  v13 = sub_10022C350(&qword_100CB0910, &qword_100A40D80);
  *(a2 + 80) = sub_100137DA8;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *a2 = v13;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1000302D8(&xmmword_100D8FB90, &v16, &unk_100CAF270, &qword_100A31F20);
  if (v17)
  {
    sub_100013188(&v16, a2 + 24);
    *(a2 + 8) = sub_100138B98;
    *(a2 + 16) = v12;
    v14 = Dictionary.init(dictionaryLiteral:)();
    *&v16 = _swiftEmptyArrayStorage;
    *(&v16 + 1) = v14;
    sub_100136EAC(v10, 0, 0);
    result = sub_1001095D0();
    *(a2 + 64) = v16;
  }

  else
  {
    result = sub_1001095D0();
    __break(1u);
  }

  return result;
}

unint64_t sub_100136EAC(char *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v5 = type metadata accessor for LocationModel();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v31 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v26 = *(v6 + 16);
  v26(&v25 - v10, a1, v5, v9);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v30 = v12 + v7;
  v13 = swift_allocObject();
  v14 = *(v6 + 32);
  v14(v13 + v12, v11, v5);
  v15 = (v13 + ((v12 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = v29;
  *v15 = v28;
  v15[1] = v16;

  sub_100137240();
  v17 = *(*v3 + 16);
  sub_10013726C(v17);
  v18 = *v3;
  *(v18 + 16) = v17 + 1;
  v19 = v18 + 16 * v17;
  *(v19 + 32) = sub_100137DBC;
  *(v19 + 40) = v13;
  *v3 = v18;
  v20 = v26;
  (v26)(v11, v27, v5);
  v33 = v5;
  v21 = sub_100042FB0(&v32);
  v20(v21, v11, v5);
  v22 = v31;
  v14(v31, v11, v5);
  v23 = swift_allocObject();
  v14(v23 + v12, v22, v5);
  v34 = sub_100163744;
  v35 = v23;
  return sub_100137374(&v32, v5);
}

uint64_t sub_100137128()
{
  type metadata accessor for LocationModel();
  sub_1000037E8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1001371C0()
{
  type metadata accessor for LocationModel();
  sub_1000037E8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

unint64_t sub_100137284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100020DF0();
  sub_100071C18();
  v11 = v10;
  v13 = sub_100074624(v12, v10);
  sub_1000D53B8(v13);
  sub_10001E5DC();
  if (v15)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v14;
  sub_10022C350(&qword_100CA3AA0, &qword_100A2DA38);
  v17 = sub_100017530();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v17, v18))
  {
    sub_1000D53B8(v11);
    sub_100013444();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v16)
  {
    sub_1000212EC();

    return sub_10023A984(v20, v21);
  }

  else
  {
    sub_100016240();
    sub_1000212EC();

    return sub_1001374BC(v24, v25, v26, v27);
  }
}

unint64_t sub_100137374(__int128 *a1, uint64_t a2)
{
  if (*(a1 + 3))
  {
    v4 = a1[1];
    v29 = *a1;
    v30 = v4;
    v31 = a1[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_100137284(&v29, a2, isUniquelyReferenced_nonNull_native, v6, v7, v8, v9, v10, v25, *v2);
    *v2 = v27;
  }

  else
  {
    sub_1000180EC(a1, &qword_100CB6C48, &qword_100A4A670);
    sub_1000D5F5C(a2, v12);
    if (v13)
    {
      sub_100025198();
      sub_100008574();
      v14 = sub_10022C350(&qword_100CA3AA0, &qword_100A2DA38);
      sub_1000145E4(v14, v15, v16, v17, v18, v19, v20, v21, v25, v26);
      v22 = (*(v28 + 56) + 48 * a2);
      v24 = v22[1];
      v23 = v22[2];
      v29 = *v22;
      v30 = v24;
      v31 = v23;
      _NativeDictionary._delete(at:)();
      *v2 = v28;
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
    }

    return sub_1000180EC(&v29, &qword_100CB6C48, &qword_100A4A670);
  }

  return result;
}

unint64_t sub_1001374BC(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 48 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v4[2] = a3[2];
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_100137514(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100137574(uint64_t a1)
{
  sub_100137820(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_100009994(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v2 = sub_100081B54(319, &qword_100CADCE0, &protocol descriptor for LocationInteractorType, 0);
      if (v6 <= 0x3F)
      {
        v2 = type metadata accessor for WireframeLevelInterestManager();
        if (v7 <= 0x3F)
        {
          v2 = sub_100081B54(319, &qword_100CC07C8, &protocol descriptor for NetworkActivityManagerType, 1);
          if (v8 <= 0x3F)
          {
            v2 = sub_100081B54(319, &qword_100CE0DF0, &protocol descriptor for ExtendedAppLaunchManagerType, 1);
            if (v9 <= 0x3F)
            {
              v2 = type metadata accessor for WireframeContentPrefetcher();
              if (v10 <= 0x3F)
              {
                sub_10009C020(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
                v2 = v11;
                if (v12 <= 0x3F)
                {
                  sub_10008178C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
                  if (v14 > 0x3F)
                  {
                    return v13;
                  }

                  sub_10008178C(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
                  if (v15 > 0x3F)
                  {
                    return v13;
                  }

                  else
                  {
                    sub_10008178C(319, &qword_100CBC208, type metadata accessor for TipCoordinator, type metadata accessor for Resolved);
                    v2 = v16;
                    if (v17 <= 0x3F)
                    {
                      v2 = type metadata accessor for Text.Measurements();
                      if (v18 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                        return 0;
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

  return v2;
}

void sub_100137820(uint64_t a1)
{
  if (!qword_100CD9540)
  {
    sub_10022E824(&qword_100CA4B98, &qword_100A2EE50);
    sub_100006F64(&qword_100CA4BA0, &qword_100CA4B98, &qword_100A2EE50, asc_100AA1480);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CD9540);
    }
  }
}

void sub_10013790C(uint64_t a1)
{
  if (!qword_100CD9D48)
  {
    type metadata accessor for SceneResizeMonitor();
    sub_10008152C(&unk_100CD9D50, type metadata accessor for SceneResizeMonitor, byte_100A83820);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CD9D48);
    }
  }
}

uint64_t sub_1001379B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100137A0C(uint64_t a1)
{
  result = sub_100137A94();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100137A94()
{
  result = qword_100CADCE0;
  if (!qword_100CADCE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CADCE0);
  }

  return result;
}

void sub_100137B64(uint64_t a1)
{
  sub_100137A94();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_100137C1C(319);
      if (v3 <= 0x3F)
      {
        sub_100137C80();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100137C1C(uint64_t a1)
{
  if (!qword_100CCEB18)
  {
    sub_10022E824(qword_100CCEA90, &qword_100A6FC28);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100CCEB18);
    }
  }
}

void sub_100137C80()
{
  if (!qword_100CB7100)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB7100);
    }
  }
}

uint64_t sub_100137D14(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for IsDeviceVerySlowViewInputPredicate();
  v4 = type metadata accessor for SlowDeviceGridView(255, v1, v2, v3);
  v5 = type metadata accessor for StaticIf();
  v6 = sub_100656B50();
  v7 = sub_10001F404();
  v10[0] = v6;
  v10[1] = swift_getWitnessTable(v7, v4);
  v10[2] = v2;
  v8 = sub_10001C914();
  return swift_getWitnessTable(v8, v5, v10);
}

uint64_t sub_100137DBC(void *a1)
{
  v3 = *(type metadata accessor for LocationModel() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_100137E6C(a1, v1 + v4, v6, v7);
}

uint64_t sub_100137E6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocationModel();
  sub_1000161C0(a1, a1[3]);
  return dispatch thunk of ContextType.use<A>(_:for:name:)();
}

void *sub_100137EF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for LocationModel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v61 - v8;
  v10 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v61 - v11;
  sub_1000161C0(a1, a1[3]);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  v76 = v3;
  result = sub_100024D10(v12, 1, v3);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4B98, &qword_100A2EE50);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95C0, &qword_100A67838);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v74 = v90;
  if (!v90)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v73 = v91;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v72 = v86;
  if (!v86)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v71 = v89;
  v70 = v88;
  v69 = v87;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WireframeLevelInterestManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v68 = result;
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA728, &unk_100A60C40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v85)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96F0, &qword_100A9F580);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v83)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v66 = v15;
  v67 = v14;
  v16 = sub_10002D7F8(&v84, v85);
  v65 = &v61;
  v17 = __chkstk_darwin(v16);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v19;
  v22 = type metadata accessor for NetworkActivityManager();
  v81[3] = v22;
  v81[4] = &off_100C55440;
  v81[0] = v21;
  v64 = type metadata accessor for LocationModule();
  v23 = swift_allocObject();
  v24 = sub_10002D7F8(v81, v22);
  v63 = &v61;
  v25 = __chkstk_darwin(v24);
  v27 = (&v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  v29 = *v27;
  v80 = &off_100C55440;
  v79 = v22;
  *&v78 = v29;
  if (qword_100CA26A8 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000703C(v30, qword_100D90A60);
  v31 = *(v4 + 16);
  v32 = v9;
  v33 = v9;
  v34 = v76;
  v31(v33, v12, v76);
  v31(v6, v12, v34);
  v35 = v6;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v77 = v61;
    *v38 = 141558787;
    *(v38 + 4) = 1752392040;
    *(v38 + 12) = 2081;
    v39 = LocationModel.name.getter();
    v62 = v12;
    v41 = v40;
    v42 = *(v4 + 8);
    v43 = v32;
    v44 = v76;
    v42(v43);
    v45 = sub_100078694(v39, v41, &v77);

    *(v38 + 14) = v45;
    *(v38 + 22) = 2160;
    *(v38 + 24) = 1752392040;
    *(v38 + 32) = 2081;
    v46 = LocationModel.id.getter();
    v48 = v47;
    (v42)(v35, v44);
    v49 = sub_100078694(v46, v48, &v77);

    *(v38 + 34) = v49;
    _os_log_impl(&_mh_execute_header, v36, v37, "Initializing Location module for location: name=%{private,mask.hash}s, id=%{private,mask.hash}s", v38, 0x2Au);
    swift_arrayDestroy();

    (v42)(v62, v44);
  }

  else
  {

    v50 = *(v4 + 8);
    v51 = v76;
    v50(v12, v76);
    v50(v35, v51);
    v50(v32, v51);
  }

  v52 = v74;
  v53 = v73;
  v54 = v72;
  v55 = v71;
  v56 = v70;
  v57 = v69;
  v58 = v68;
  v59 = v64;
  v23[2] = v67;
  v23[3] = v66;
  v23[4] = v52;
  v23[5] = v53;
  v23[6] = v54;
  v23[7] = v57;
  v23[8] = v56;
  v23[9] = v55;
  v23[10] = v58;
  sub_100013188(&v78, (v23 + 11));
  sub_100013188(&v82, (v23 + 16));
  sub_100006F14(v81);
  result = sub_100006F14(&v84);
  v60 = v75;
  v75[3] = v59;
  v60[4] = &off_100C7B350;
  *v60 = v23;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewPresentationKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x100138858);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OptInTipViewViewModel.TipKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10013894C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Location.Identifier();
  sub_10001B350(a1, 1, 1, v2);
  State = type metadata accessor for VisibleLocationWeatherLoadState(0);
  *(a1 + State[5]) = _swiftEmptyArrayStorage;
  v4 = (a1 + State[6]);
  StatusLog = type metadata accessor for VisibleLocationWeatherLoadStatusLog(0);
  *v4 = 0u;
  v4[1] = 0u;
  Date.init()();
  v6 = v4 + *(StatusLog + 36);
  *v6 = 0;
  v6[8] = 1;
  v7 = v4 + *(StatusLog + 40);
  *v7 = 0;
  v7[8] = 1;
  *(a1 + State[7]) = 0;
  return Date.init()();
}

void *sub_100138A80(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10007996C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

double sub_100138B98@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LocationViewPage(0);
  sub_100003810(v5);
  sub_10001164C();

  return sub_100138C10(a1, v2 + v6, a2);
}

double sub_100138C10@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  v5 = type metadata accessor for LocationViewPage(0);
  *&result = sub_100138C64(*(a2 + *(v5 + 24)), a3).n128_u64[0];
  return result;
}

__n128 sub_100138C64@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1].n128_u64[1];
  v6 = v2[5].n128_u64[0];
  v9 = v2[2];
  sub_100035B30(&v2[5].n128_i64[1], a2 + 56);
  sub_100035B30(&v2[8], a2 + 96);

  swift_unknownObjectRetain();

  sub_10022C350(&qword_100CA4B98, &qword_100A2EE50);
  sub_100138D2C();
  *a2 = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = v7;
  *(a2 + 16) = v5;
  result = v9;
  *(a2 + 24) = v9;
  *(a2 + 40) = a1;
  *(a2 + 48) = v6;
  return result;
}

unint64_t sub_100138D2C()
{
  result = qword_100CA4BA0;
  if (!qword_100CA4BA0)
  {
    v3 = sub_10022E824(&qword_100CA4B98, &qword_100A2EE50);
    result = swift_getWitnessTable(asc_100AA1480, v3, v0, v1);
    atomic_store(result, &qword_100CA4BA0);
  }

  return result;
}

uint64_t sub_100138D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v17 = *(a1 + 24);
  sub_100035B30(a1 + 56, a2 + 56);
  sub_100035B30(a1 + 96, a2 + 96);
  *(a2 + 144) = swift_getKeyPath();
  *(a2 + 152) = 0;
  v7 = type metadata accessor for LocationContentView(0);
  v8 = v7[13];
  *(a2 + v8) = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v7[14];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = v7[15];
  *(a2 + v10) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  swift_storeEnumTagMultiPayload();
  v11 = a2 + v7[16];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a2 + v7[17];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = (a2 + v7[18]);
  type metadata accessor for ObservableResolver();
  sub_100139100();
  *v13 = EnvironmentObject.init()();
  v13[1] = v14;
  Text.Measurements.init()();

  sub_10022C350(&qword_100CA4B98, &qword_100A2EE50);
  sub_100006F64(&qword_100CA4BA0, &qword_100CA4B98, &qword_100A2EE50, asc_100AA1480);
  *a2 = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = v15;
  *(a2 + 16) = v4;
  *(a2 + 24) = v17;
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  sub_100035B30(v5 + 16, v18);
  type metadata accessor for WireframeContentPrefetcher();
  swift_allocObject();
  *(a2 + 136) = sub_100139158(v18);

  swift_unknownObjectRetain();
}

uint64_t sub_100138FDC()
{
  sub_10000FE4C();
  v0 = sub_10010327C();
  return sub_100005F94(v0);
}

uint64_t sub_100139044()
{
  sub_10000FE4C();
  v0 = sub_10013E9DC();
  return sub_100005F94(v0);
}

uint64_t sub_100139094@<X0>(_OWORD *a1@<X8>)
{
  *a1 = *(v1 + 24);
  v3 = *(sub_10022C350(&qword_100CCF9E8, &qword_100A70CF8) + 36);
  swift_unknownObjectRetain();
  return sub_100138D98(v1, a1 + v3);
}

unint64_t sub_100139100()
{
  result = qword_100CB0468;
  if (!qword_100CB0468)
  {
    v3 = type metadata accessor for ObservableResolver();
    result = swift_getWitnessTable(&protocol conformance descriptor for ObservableResolver, v3, v0, v1);
    atomic_store(result, &qword_100CB0468);
  }

  return result;
}

uint64_t sub_100139158(__int128 *a1)
{
  sub_10022C350(&qword_100CED280, &qword_100AA4910);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = _swiftEmptyArrayStorage;
  *(v1 + 56) = v3;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  sub_100013188(a1, v1 + 16);
  return v1;
}

uint64_t type metadata accessor for WireframeContentManager(uint64_t a1)
{
  result = qword_100CCC0B0;
  if (!qword_100CCC0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013920C(uint64_t a1)
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

uint64_t sub_1001392EC@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v128 = a6;
  v110 = a5;
  v109 = a4;
  v117 = a3;
  countAndFlagsBits = a2;
  v130 = a7;
  v147 = type metadata accessor for WeatherFormatPlaceholder();
  v136 = *(v147 - 8);
  __chkstk_darwin(v147);
  v135 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v131 = *(v133 - 8);
  __chkstk_darwin(v133);
  v146 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v129 = &v103 - v11;
  v134 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v143 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v151 = &v103 - v14;
  v15 = type metadata accessor for Precipitation();
  v144 = *(v15 - 8);
  v145 = v15;
  __chkstk_darwin(v15);
  v142 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for WeatherCondition();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v122 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v119 = &v103 - v19;
  v114 = type metadata accessor for SunEvents();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v105 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v112 = &v103 - v22;
  v23 = sub_10022C350(&qword_100CAB9B0, &qword_100A3A820);
  __chkstk_darwin(v23 - 8);
  v108 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v107 = &v103 - v26;
  __chkstk_darwin(v27);
  v106 = &v103 - v28;
  v29 = type metadata accessor for DayWeather();
  v111 = *(v29 - 8);
  __chkstk_darwin(v29);
  v104 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v31 - 8);
  v140 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v148 = &v103 - v34;
  v35 = type metadata accessor for TimeZone();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Date();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v138 = &v103 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v103 - v43;
  __chkstk_darwin(v45);
  v47 = &v103 - v46;
  v127 = a1;
  HourWeather.date.getter();
  Location.timeZone.getter();
  Date.zeroMinutes(timeZone:)();
  v118 = v36;
  v48 = *(v36 + 8);
  v150 = v38;
  v139 = v35;
  v49 = v35;
  v50 = v39;
  v121 = v36 + 8;
  v120 = v48;
  v48(v38, v49);
  object = v40;
  v51 = v40[1];
  v149 = v44;
  v124 = v40 + 1;
  v123 = v51;
  v51(v44, v39);
  v137 = v47;
  if ((Calendar.isDateInToday(_:)() & 1) == 0)
  {
    v54 = v110;
    v55 = v107;
    sub_100035AD0(v110, v107, &qword_100CAB9B0, &qword_100A3A820);
    if (sub_100024D10(v55, 1, v29) == 1)
    {
      sub_1000180EC(v55, &qword_100CAB9B0, &qword_100A3A820);
      sub_10001B350(v148, 1, 1, v39);
    }

    else
    {
      v63 = v112;
      DayWeather.sun.getter();
      (*(v111 + 8))(v55, v29);
      SunEvents.sunrise.getter();
      (*(v113 + 8))(v63, v114);
    }

    v53 = v140;
    v64 = v108;
    sub_100035AD0(v54, v108, &qword_100CAB9B0, &qword_100A3A820);
    if (sub_100024D10(v64, 1, v29) != 1)
    {
      v65 = v112;
      DayWeather.sun.getter();
      (*(v111 + 8))(v64, v29);
      SunEvents.sunset.getter();
      (*(v113 + 8))(v65, v114);
      goto LABEL_12;
    }

    sub_1000180EC(v64, &qword_100CAB9B0, &qword_100A3A820);
    goto LABEL_10;
  }

  v52 = v106;
  sub_100035AD0(v109, v106, &qword_100CAB9B0, &qword_100A3A820);
  if (sub_100024D10(v52, 1, v29) == 1)
  {
    sub_1000180EC(v52, &qword_100CAB9B0, &qword_100A3A820);
    sub_10001B350(v148, 1, 1, v39);
    v53 = v140;
LABEL_10:
    sub_10001B350(v53, 1, 1, v39);
    goto LABEL_12;
  }

  v56 = v111;
  v57 = v104;
  (*(v111 + 32))(v104, v52, v29);
  v58 = v112;
  DayWeather.sun.getter();
  SunEvents.sunrise.getter();
  v117 = v29;
  v59 = *(v113 + 8);
  v60 = v58;
  v61 = v114;
  v59(v60, v114);
  v62 = v105;
  DayWeather.sun.getter();
  SunEvents.sunset.getter();
  v59(v62, v61);
  (*(v56 + 8))(v57, v117);
LABEL_12:
  v117 = *(object + 2);
  v117(v149, v137, v50);
  Location.timeZone.getter();
  v66 = v119;
  HourWeather.condition.getter();
  v67 = Date.isDaytime(sunrise:sunset:)();
  v68 = WeatherCondition.conditionIconName(isDaytime:)(v67 & 1);
  countAndFlagsBits = v68.value._countAndFlagsBits;
  object = v68.value._object;
  v69 = *(v125 + 8);
  v70 = v126;
  v69(v66, v126);
  HourWeather.condition.getter();
  v71 = WeatherCondition.description.getter();
  v72 = v50;
  v115 = v50;
  v125 = v71;
  v114 = v73;
  v69(v66, v70);
  HourWeather.precipitationChance.getter();
  Double.roundedPrecipitationPercent.getter();
  v75 = v74;
  v76 = v122;
  HourWeather.condition.getter();
  LOBYTE(v66) = WeatherCondition.isPrecipitation.getter();
  v69(v76, v70);
  v77 = v142;
  HourWeather.precipitation.getter();
  HourWeather.temperature.getter();
  CurrentWeather.temperature.getter();
  sub_100119F7C();
  v78 = static NSDateFormatter.prevailingPeriodSymbols.getter();
  v79 = v130;
  *v130 = 0.0;
  v80 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  v117(v79 + v80[13], v149, v72);
  (*(v118 + 16))(v79 + v80[14], v150, v139);
  v81 = object;
  *(v79 + 1) = countAndFlagsBits;
  *(v79 + 2) = v81;
  v82 = v114;
  *(v79 + 3) = v125;
  *(v79 + 4) = v82;
  *(v79 + 5) = v75;
  *(v79 + 48) = v66 & 1;
  (*(v144 + 16))(v79 + v80[9], v77, v145);
  *(v79 + v80[16]) = v78;
  static WeatherClock.date.getter();
  v83 = Date.formattedHours(timeZone:forAccessibility:)();
  v84 = (v79 + v80[11]);
  *v84 = v83;
  v84[1] = v85;
  v86 = Date.formattedHours(timeZone:forAccessibility:)();
  v87 = (v79 + v80[12]);
  *v87 = v86;
  v87[1] = v88;
  *(v79 + v80[15]) = 0;
  v89 = v129;
  static WeatherFormatStyle<>.weather.getter();
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  countAndFlagsBits = *(v131 + 8);
  v90 = v133;
  countAndFlagsBits(v89, v133);
  v91 = v136;
  v92 = v135;
  (*(v136 + 104))(v135, enum case for WeatherFormatPlaceholder.none(_:), v147);
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  sub_100114168();
  v93 = v134;
  v94 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v131 = v95;

  (*(v91 + 8))(v92, v147);
  countAndFlagsBits(v146, v90);
  v96 = (v79 + v80[10]);
  v97 = v131;
  *v96 = v94;
  v96[1] = v97;
  Hasher.init(_seed:)();
  sub_100119FC0(v152);
  v98 = Hasher._finalize()();
  v99 = v115;
  v100 = v123;
  v123(v138, v115);
  v101 = *(v132 + 8);
  v101(v143, v93);
  v101(v151, v93);
  (*(v144 + 8))(v142, v145);
  v120(v150, v139);
  v100(v149, v99);
  sub_1000180EC(v140, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000180EC(v148, &unk_100CB2CF0, &unk_100A2D7F0);
  v100(v137, v99);
  *v79 = v98;
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10013A2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  IsDeviceVerySlowViewInputPredicate = type metadata accessor for IsDeviceVerySlowViewInputPredicate();
  __chkstk_darwin(IsDeviceVerySlowViewInputPredicate);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = type metadata accessor for SlowDeviceGridView(255, v5, v4, v6);
  v8 = type metadata accessor for StaticIf();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &IsDeviceVerySlowViewInputPredicate - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &IsDeviceVerySlowViewInputPredicate - v13;
  static ViewInputPredicate<>.deviceIsVerySlow.getter();
  v27 = v5;
  v28 = v4;
  v29 = v2;
  v24 = v5;
  v25 = v4;
  v26 = v2;
  v15 = sub_100656B50();
  v16 = sub_10001F404();
  WitnessTable = swift_getWitnessTable(v16, v7, IsDeviceVerySlowViewInputPredicate, v23);
  StaticIf<>.init(_:then:else:)();
  v30[0] = v15;
  v30[1] = WitnessTable;
  v30[2] = v4;
  v17 = sub_10001C914();
  v18 = swift_getWitnessTable(v17, v8, v30);
  sub_1000833D8(v11, v8, v18);
  v19 = *(v9 + 8);
  v19(v11, v8);
  sub_1000833D8(v14, v8, v18);
  return (v19)(v14, v8);
}

uint64_t type metadata accessor for AutomationInfoViewModifier(uint64_t a1)
{
  result = qword_100CBF300;
  if (!qword_100CBF300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for AutomationInfoProperty(uint64_t a1)
{
  result = qword_100CC6318;
  if (!qword_100CC6318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013A5B0(uint64_t a1)
{
  result = type metadata accessor for AutomationInfoProperty(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10013A61C(uint64_t a1)
{
  sub_1000077F0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AutomationInfo(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10013A6D0(uint64_t a1)
{
  result = type metadata accessor for AutomationViewInfo(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AutomationCellInfo(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

ValueMetadata *sub_10013A76C(uint64_t a1)
{
  v1 = sub_10013A824();
  if (v2 <= 0x3F)
  {
    v3 = sub_10013A84C();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_100858878(319, &unk_100CACAD8, &type metadata accessor for WeatherMapOverlayKind);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void *sub_10013A824()
{
  result = qword_100CDEC48;
  if (!qword_100CDEC48)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_100CDEC48);
  }

  return result;
}

ValueMetadata *sub_10013A84C()
{
  result = qword_100CDED28;
  if (!qword_100CDED28)
  {
    result = &type metadata for AutomationSearchInfo;
    atomic_store(&type metadata for AutomationSearchInfo, &qword_100CDED28);
  }

  return result;
}

void *sub_10013A894(uint64_t a1)
{
  v1 = sub_10013A824();
  if (v2 <= 0x3F)
  {
    sub_100858878(319, &qword_100CDEC50, sub_100007760);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_100858878(319, &unk_100CACAD8, &type metadata accessor for WeatherMapOverlayKind);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_100858878(319, &qword_100CDEC58, sub_100007760);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_10013AA08(319);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_10013AA80(319);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              v1 = sub_10013AB58();
              if (v13 <= 0x3F)
              {
                sub_10013AAF8();
                v1 = v14;
                if (v15 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_10013AA08(uint64_t a1)
{
  if (!qword_100CDEC60)
  {
    sub_10022E824(&qword_100CA6078, &unk_100A30870);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CDEC60);
    }
  }
}

void sub_10013AA80(uint64_t a1)
{
  if (!qword_100CDEC68)
  {
    sub_10022E824(&qword_100CA6078, &unk_100A30870);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CDEC68);
    }
  }
}

void sub_10013AAF8()
{
  if (!qword_100CDEC78)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CDEC78);
    }
  }
}

void *sub_10013AB58()
{
  result = qword_100CDEC70;
  if (!qword_100CDEC70)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_100CDEC70);
  }

  return result;
}

uint64_t type metadata accessor for ActivityModifier(uint64_t a1)
{
  result = qword_100CED2F0;
  if (!qword_100CED2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for WeatherActivity(uint64_t a1)
{
  result = qword_100CB3E90;
  if (!qword_100CB3E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013AC18(uint64_t a1)
{
  result = type metadata accessor for WeatherActivity(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10013AC84(uint64_t a1)
{
  v1 = type metadata accessor for Location.Identifier();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_10013ACFC(uint64_t a1)
{
  v1 = type metadata accessor for LocationViewModel(319);
  if (v2 <= 0x3F)
  {
    sub_10009C020(319, &qword_100CA3C90, &type metadata for Text, &type metadata accessor for Optional);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v1 = type metadata accessor for Text.Measurements();
      if (v5 <= 0x3F)
      {
        sub_10008178C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
        v1 = v6;
        if (v7 <= 0x3F)
        {
          sub_10009C020(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
          v1 = v8;
          if (v9 <= 0x3F)
          {
            sub_10009C020(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
            v1 = v10;
            if (v11 <= 0x3F)
            {
              sub_10008178C(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
              if (v13 > 0x3F)
              {
                return v12;
              }

              else
              {
                sub_10009C020(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
                v1 = v14;
                if (v15 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_10013AF54(uint64_t a1)
{
  sub_100009BA0(319, &qword_100CADCC8, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10013B0E4(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LocationViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_100137A94();
        if (v4 <= 0x3F)
        {
          sub_10013B178(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for WireframeContentPrefetcher();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10013B068(uint64_t a1)
{
  if (!qword_100CADCC8)
  {
    type metadata accessor for ScenePhase();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100CADCC8);
    }
  }
}

void sub_10013B0E4(uint64_t a1)
{
  if (!qword_100CADCD0)
  {
    type metadata accessor for LocationViewObserverViewState();
    sub_100067294(&qword_100CADCD8, type metadata accessor for LocationViewObserverViewState, byte_100A3D210);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CADCD0);
    }
  }
}

void sub_10013B178(uint64_t a1)
{
  if (!qword_100CADCE8)
  {
    sub_10022E824(&qword_100CA4B60, &qword_100A2EE20);
    sub_100006F64(&qword_100CA4B68, &qword_100CA4B60, &qword_100A2EE20, asc_100AA1480);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CADCE8);
    }
  }
}

uint64_t sub_10013B23C(uint64_t a1)
{
  v1 = type metadata accessor for LocationViewModel(319);
  if (v2 <= 0x3F)
  {
    sub_10009C020(319, &qword_100CA3C90, &type metadata for Text, &type metadata accessor for Optional);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v1 = type metadata accessor for Text.Measurements();
      if (v5 <= 0x3F)
      {
        sub_10009C020(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
        v1 = v6;
        if (v7 <= 0x3F)
        {
          sub_10009C020(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
          v1 = v8;
          if (v9 <= 0x3F)
          {
            sub_10008178C(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
            if (v11 > 0x3F)
            {
              return v10;
            }

            else
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_10013B438(uint64_t a1)
{
  type metadata accessor for LocationViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DisplayMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_100009994(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for WireframeLevelInterestManager();
        if (v4 <= 0x3F)
        {
          type metadata accessor for WireframeContentPrefetcher();
          if (v5 <= 0x3F)
          {
            sub_100081B54(319, &qword_100CADCE0, &protocol descriptor for LocationInteractorType, 0);
            if (v6 <= 0x3F)
            {
              sub_100081B54(319, &qword_100CC07C8, &protocol descriptor for NetworkActivityManagerType, 1);
              if (v7 <= 0x3F)
              {
                sub_10009BE44(319, &qword_100CB7100, &unk_100C730C0);
                if (v8 <= 0x3F)
                {
                  sub_10009BE44(319, &qword_100CE0E20, &type metadata for Bool);
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
    }
  }
}

void sub_10013B5DC(uint64_t a1)
{
  sub_100137C80();
  if (v1 <= 0x3F)
  {
    sub_10013B740(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Location.Identifier();
      if (v3 <= 0x3F)
      {
        sub_10013B178(319);
        if (v4 <= 0x3F)
        {
          sub_10013B7B4(319, &qword_100CCB7A8, type metadata accessor for LocationViewCollisionOptionsUpdatingViewState, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_10013B7B4(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_10010F29C(319);
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

void sub_10013B740(uint64_t a1)
{
  if (!qword_100CCB798)
  {
    sub_10022E824(&qword_100CCB7A0, qword_100A6AE00);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_100CCB798);
    }
  }
}

void sub_10013B7B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10013B838(uint64_t a1)
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

uint64_t type metadata accessor for LocationGridView(uint64_t a1)
{
  result = qword_100CD4770;
  if (!qword_100CD4770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013B920(uint64_t a1)
{
  type metadata accessor for LocationViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_100009994(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for WireframeLevelInterestManager();
      if (v3 <= 0x3F)
      {
        type metadata accessor for WireframeContentPrefetcher();
        if (v4 <= 0x3F)
        {
          sub_100081B54(319, &qword_100CADCE0, &protocol descriptor for LocationInteractorType, 0);
          if (v5 <= 0x3F)
          {
            sub_100081B54(319, &qword_100CC07C8, &protocol descriptor for NetworkActivityManagerType, 1);
            if (v6 <= 0x3F)
            {
              type metadata accessor for DisplayMetrics(319);
              if (v7 <= 0x3F)
              {
                sub_10013BAD4(319);
                if (v8 <= 0x3F)
                {
                  sub_10009BE44(319, &qword_100CE0E20, &type metadata for Bool);
                  if (v9 <= 0x3F)
                  {
                    sub_10009BE44(319, &qword_100CB7100, &unk_100C730C0);
                    if (v10 <= 0x3F)
                    {
                      sub_10009BE44(319, &unk_100CA41F0, &type metadata for CGFloat);
                      if (v11 <= 0x3F)
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
      }
    }
  }
}

void sub_10013BAD4(uint64_t a1)
{
  if (!qword_100CBC208)
  {
    v2 = type metadata accessor for TipCoordinator(255);
    v5 = type metadata accessor for Resolved(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_100CBC208);
    }
  }
}

void sub_10013BB48(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_10009C020(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10013BC1C(uint64_t a1)
{
  sub_1000077F0();
  if (v1 <= 0x3F)
  {
    sub_10013BCD0(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LocationFooterViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_100137A94();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10013BCD0(uint64_t a1)
{
  if (!qword_100CAD8E8)
  {
    type metadata accessor for ColorSchemeContrast();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100CAD8E8);
    }
  }
}

uint64_t sub_10013BD48(uint64_t a1)
{
  v1 = type metadata accessor for LocationComponentContainerViewModel(319);
  if (v2 <= 0x3F)
  {
    v1 = sub_100081B54(319, &qword_100CADCE0, &protocol descriptor for LocationInteractorType, 0);
    if (v3 <= 0x3F)
    {
      v1 = sub_100081B54(319, &qword_100CC07C8, &protocol descriptor for NetworkActivityManagerType, 1);
      if (v4 <= 0x3F)
      {
        v1 = type metadata accessor for Location.Identifier();
        if (v5 <= 0x3F)
        {
          sub_100009994(319);
          v1 = v6;
          if (v7 <= 0x3F)
          {
            sub_1000827BC(319, &qword_100CC07D0, &qword_100CC07D8, &qword_100A84020, &type metadata accessor for State);
            v1 = v8;
            if (v9 <= 0x3F)
            {
              sub_10013D3D4(319);
              v1 = v10;
              if (v11 <= 0x3F)
              {
                sub_10013D468(319);
                v1 = v12;
                if (v13 <= 0x3F)
                {
                  sub_10013D638(319);
                  v1 = v14;
                  if (v15 <= 0x3F)
                  {
                    sub_1000816EC(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
                    v1 = v16;
                    if (v17 <= 0x3F)
                    {
                      sub_10013D854(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
                      v1 = v18;
                      if (v19 <= 0x3F)
                      {
                        sub_1000816EC(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
                        v1 = v20;
                        if (v21 <= 0x3F)
                        {
                          sub_1000816EC(319, &qword_100CA3C60, &type metadata for PerformanceTestFeatures, &type metadata accessor for Environment);
                          if (v23 > 0x3F)
                          {
                            return v22;
                          }

                          sub_10013D854(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
                          if (v24 > 0x3F)
                          {
                            return v22;
                          }

                          sub_1000816EC(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
                          if (v25 > 0x3F)
                          {
                            return v22;
                          }

                          sub_1000816EC(319, &qword_100CACE80, &type metadata for SizingBehavior, &type metadata accessor for Environment);
                          if (v26 > 0x3F)
                          {
                            return v22;
                          }

                          else
                          {
                            sub_10013D854(319, &qword_100CBC208, type metadata accessor for TipCoordinator, type metadata accessor for Resolved);
                            v1 = v27;
                            if (v28 <= 0x3F)
                            {
                              sub_10013D854(319, &unk_100CC0810, type metadata accessor for WireframeContentManagerReference, &type metadata accessor for State);
                              v1 = v29;
                              if (v30 <= 0x3F)
                              {
                                swift_cvw_initStructMetadataWithLayoutString();
                                return 0;
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
      }
    }
  }

  return v1;
}

uint64_t type metadata accessor for LocationComponentContainerViewModel(uint64_t a1)
{
  result = qword_100CE9D28;
  if (!qword_100CE9D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013C208(uint64_t a1)
{
  type metadata accessor for LocationComponentHeaderViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LocationComponentViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_10013D224(319);
      if (v3 <= 0x3F)
      {
        sub_10013D2DC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10013C2C4(uint64_t a1)
{
  result = type metadata accessor for LocationComponentHeaderViewModel.Description(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10013C36C(uint64_t a1)
{
  result = type metadata accessor for WeatherDescription();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for LocationComponentViewModel(uint64_t a1)
{
  result = qword_100CDF8D0;
  if (!qword_100CDF8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013C43C(uint64_t a1)
{
  result = type metadata accessor for AirQualityComponentViewModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DailyForecastComponentViewModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FeelsLikeComponentViewModel(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for HourlyForecastComponentViewModel(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for MapComponentViewModel(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for MoonComponentViewModel(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for NewsArticleComponentViewModel(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for NextHourPrecipitationComponentViewModel(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for NotificationsOptInComponentViewModel(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for PressureComponentViewModel(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for SevereAlertComponentViewModel(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for SunriseSunsetViewModel();
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for UVIndexComponentViewModel(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for WindComponentViewModel(319);
                            if (v15 <= 0x3F)
                            {
                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                              return 0;
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
    }
  }

  return result;
}

void sub_10013C5E8(uint64_t a1)
{
  sub_100100F0C(319, &unk_100CD0DD8, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100100F0C(319, &qword_100CBB7C8, sub_10000F868, &type metadata accessor for Measurement);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10013C700(uint64_t a1)
{
  sub_100007760();
  if (v1 <= 0x3F)
  {
    sub_10000E174(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10013C79C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for MapComponentViewModel(uint64_t a1)
{
  result = qword_100CB4350;
  if (!qword_100CB4350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013C84C(uint64_t a1)
{
  type metadata accessor for WeatherMapOverlayKind();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Location();
    if (v2 <= 0x3F)
    {
      sub_100082538(319);
      if (v3 <= 0x3F)
      {
        sub_100007760();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for MoonComponentViewModel(uint64_t a1)
{
  result = qword_100CB2DA8;
  if (!qword_100CB2DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013C94C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10013C99C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10013C9EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10013CA40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10013CA90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10013CAE0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10013CB2C(uint64_t a1)
{
  sub_10013C94C(319, &qword_100CA45C0, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10013C94C(319, &qword_100CB2DB8, &type metadata for TemporalString, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10013C94C(319, &qword_100CB2DC0, &type metadata for MoonComponentViewModel.Row, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          sub_10013C94C(319, &qword_100CB2DC8, &type metadata for MoonPhase, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for NextHourPrecipitationComponentViewModel(uint64_t a1)
{
  result = qword_100CDF6D8;
  if (!qword_100CDF6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013CCE8(uint64_t a1)
{
  result = type metadata accessor for NextHourPrecipitationChartViewModel();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for NotificationsOptInComponentViewModel(uint64_t a1)
{
  result = qword_100CAB8F8;
  if (!qword_100CAB8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013CDB0(uint64_t a1)
{
  result = type metadata accessor for Location();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for PressureComponentViewModel(uint64_t a1)
{
  result = qword_100CE2ED0;
  if (!qword_100CE2ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SevereAlertComponentViewModel(uint64_t a1)
{
  result = qword_100CC2600;
  if (!qword_100CC2600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013CEBC(uint64_t a1)
{
  sub_10013C9EC(319, &qword_100CA45C0, &type metadata accessor for Optional);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_10013C9EC(319, &qword_100CC2610, &type metadata accessor for Array);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = type metadata accessor for WeatherAlert.Prominence();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t type metadata accessor for UVIndexComponentViewModel(uint64_t a1)
{
  result = qword_100CE9B00;
  if (!qword_100CE9B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013D01C(uint64_t a1)
{
  type metadata accessor for WeatherDescription();
  if (v1 <= 0x3F)
  {
    sub_10000D054();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for WindComponentViewModel(uint64_t a1)
{
  result = qword_100CBE8E0;
  if (!qword_100CBE8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013D114(uint64_t a1)
{
  type metadata accessor for WindComponentCompassViewModel();
  if (v1 <= 0x3F)
  {
    sub_10013D1D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10013D1D4()
{
  if (!qword_100CBE8F0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBE8F0);
    }
  }
}

void sub_10013D224(uint64_t a1)
{
  if (!qword_100CE9D38)
  {
    sub_10013D288();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_100CE9D38);
    }
  }
}

unint64_t sub_10013D288()
{
  result = qword_100CAB7F8;
  if (!qword_100CAB7F8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Edge, &type metadata for Edge, v0, v1);
    atomic_store(result, &qword_100CAB7F8);
  }

  return result;
}

void sub_10013D2DC(uint64_t a1)
{
  if (!qword_100CE9D40)
  {
    type metadata accessor for LocationComponentAction(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CE9D40);
    }
  }
}

uint64_t sub_10013D334(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return static VerticalSizingBehaviorKey.defaultValue.getter();
  }

  if (!v2 || result == a2)
  {
    return static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10013D388(uint64_t a1, uint64_t a2, float a3, float a4)
{
  if (a3 == a4)
  {
    return sub_10013D334(a1, a2);
  }

  else
  {
    return 0;
  }
}

void sub_10013D3D4(uint64_t a1)
{
  if (!qword_100CC07E0)
  {
    type metadata accessor for LocationComponentActionState();
    sub_100061A3C(&qword_100CC07E8, type metadata accessor for LocationComponentActionState, byte_100A58B10);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CC07E0);
    }
  }
}

void sub_10013D468(uint64_t a1)
{
  if (!qword_100CC07F0)
  {
    sub_10022E824(&qword_100CC0720, &unk_100A58C10);
    sub_10023FBF4(&qword_100CC07F8, &qword_100CC0720, &unk_100A58C10, protocol conformance descriptor for Debounced<A>);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CC07F0);
    }
  }
}

uint64_t sub_10013D524(uint64_t a1)
{
  result = type metadata accessor for Published();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for PagingContentOffsetsStorage(uint64_t a1)
{
  result = qword_100CABF40;
  if (!qword_100CABF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013D638(uint64_t a1)
{
  if (!qword_100CC0800)
  {
    type metadata accessor for PagingContentOffsetsStorage(255);
    sub_100061A3C(&qword_100CC0808, type metadata accessor for PagingContentOffsetsStorage, aY_35);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CC0800);
    }
  }
}

void sub_10013D6CC(uint64_t a1)
{
  sub_10013D75C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10013D75C()
{
  if (!qword_100CABF50)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100CABF50);
    }
  }
}

void sub_10013D7AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_10013D800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_10013D854(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_100031D74();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_10013D8B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_10013D908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10013D96C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_10013DA24(uint64_t a1)
{
  sub_10009C020(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10008178C(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10013DB50()
{
  result = qword_100CAD3B8[0];
  if (!qword_100CAD3B8[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_100CAD3B8);
  }

  return result;
}

void sub_10013DB98(uint64_t a1)
{
  sub_10009C020(319, &qword_100CD8B28, &type metadata for LocationViewRowViewModel, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10013DB50();
    if (v2 <= 0x3F)
    {
      sub_10008178C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_10009C020(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_10009C020(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10013DD18(uint64_t a1)
{
  type metadata accessor for PinnedScrollableViews();
  if (v1 <= 0x3F)
  {
    sub_10013DB50();
    if (v2 <= 0x3F)
    {
      sub_10009C020(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_10009C020(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for LocationViewAppEntityView(uint64_t a1)
{
  result = qword_100CDF820;
  if (!qword_100CDF820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013DEB0(uint64_t a1)
{
  type metadata accessor for LocationViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_10013B178(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for ForegroundEffectConfigurationView(uint64_t a1)
{
  result = qword_100CD82E8;
  if (!qword_100CD82E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10013E000()
{
  result = qword_100CD96B0;
  if (!qword_100CD96B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD95F8, &qword_100A83938);
    v4[0] = sub_10013E0BC();
    v4[1] = sub_10008152C(&qword_100CD96C8, type metadata accessor for ActivityModifier, byte_100AA49F4);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD96B0);
  }

  return result;
}

unint64_t sub_10013E0BC()
{
  result = qword_100CD96B8;
  if (!qword_100CD96B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD95F0, &qword_100A83930);
    v4[0] = sub_10013E178();
    v4[1] = sub_10008152C(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD96B8);
  }

  return result;
}

unint64_t sub_10013E178()
{
  result = qword_100CD96C0;
  if (!qword_100CD96C0)
  {
    result = swift_getWitnessTable(byte_100A84DDC, &type metadata for LocationContentOfflineView, v0, v1);
    atomic_store(result, &qword_100CD96C0);
  }

  return result;
}

unint64_t sub_10013E1CC()
{
  result = qword_100CA6050;
  if (!qword_100CA6050)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for CGFloat, &type metadata for CGFloat, v0, v1);
    atomic_store(result, &qword_100CA6050);
  }

  return result;
}

unint64_t sub_10013E220()
{
  result = qword_100CD9648;
  if (!qword_100CD9648)
  {
    result = swift_getWitnessTable(byte_100A84F1C, &type metadata for DetermineLocationComponentHeaderLineLimitModifier, v0, v1);
    atomic_store(result, &qword_100CD9648);
  }

  return result;
}

unint64_t sub_10013E274()
{
  result = qword_100CD9658;
  if (!qword_100CD9658)
  {
    result = swift_getWitnessTable("=l\x1B", &type metadata for DetermineCompactGridLayoutModifier, v0, v1);
    atomic_store(result, &qword_100CD9658);
  }

  return result;
}

unint64_t sub_10013E2C8()
{
  result = qword_100CD9670;
  if (!qword_100CD9670)
  {
    result = swift_getWitnessTable(byte_100A84E7C, &type metadata for DetermineWhetherViewsShouldConsiderMapPinnedToTopModifier, v0, v1);
    atomic_store(result, &qword_100CD9670);
  }

  return result;
}

uint64_t sub_10013E31C()
{
  v0 = sub_100017580();
  v1 = type metadata accessor for LocationViewPage(v0);
  sub_100003810(v1);
  v2 = sub_10004E784();

  return sub_10013E378(v2, v3);
}

uint64_t sub_10013E378(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UserInterfaceSizeClass();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v44 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  __chkstk_darwin(v46);
  v9 = &v39[-v8];
  v10 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v10 - 8);
  v45 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v39[-v13];
  __chkstk_darwin(v15);
  v17 = &v39[-v16];
  v18 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v18 - 8);
  v20 = &v39[-v19];
  v50 = a1;
  v21 = *a1;
  v22 = type metadata accessor for LocationViewPage(0);
  v23 = a2;
  v24 = a2 + v22[5];
  v25 = *(type metadata accessor for ContentStatusBannerPresentationMetrics(0) + 20);
  v49 = v24;
  sub_1000302D8(v24 + v25, v20, &qword_100CA5010, &unk_100A2F250);
  v26 = type metadata accessor for ContentStatusBanner(0);
  LODWORD(v24) = sub_100024D10(v20, 1, v26);
  result = sub_100018198(v20, &qword_100CA5010);
  if (v24 != 1)
  {
    sub_10009D114();
    v29 = v47;
    v28 = v48;
    (*(v47 + 104))(v14, enum case for UserInterfaceSizeClass.regular(_:), v48);
    sub_10001B350(v14, 0, 1, v28);
    v30 = *(v46 + 48);
    sub_1000302D8(v17, v9, &qword_100CA6028, &qword_100A40610);
    sub_1000302D8(v14, &v9[v30], &qword_100CA6028, &qword_100A40610);
    if (sub_100024D10(v9, 1, v28) == 1)
    {
      sub_100018198(v14, &qword_100CA6028);
      sub_100018198(v17, &qword_100CA6028);
      if (sub_100024D10(&v9[v30], 1, v28) == 1)
      {
        result = sub_100018198(v9, &qword_100CA6028);
LABEL_13:
        v21 = *(v49 + 8) - *(v23 + v22[8]);
        goto LABEL_16;
      }
    }

    else
    {
      v46 = a2;
      v31 = v45;
      sub_1000302D8(v9, v45, &qword_100CA6028, &qword_100A40610);
      if (sub_100024D10(&v9[v30], 1, v28) != 1)
      {
        v34 = &v9[v30];
        v35 = v44;
        (*(v29 + 32))(v44, v34, v28);
        sub_1000EA178(&qword_100CA6088);
        v40 = dispatch thunk of static Equatable.== infix(_:_:)();
        v36 = *(v29 + 8);
        v36(v35, v28);
        sub_100018198(v14, &qword_100CA6028);
        sub_100018198(v17, &qword_100CA6028);
        v36(v31, v28);
        result = sub_100018198(v9, &qword_100CA6028);
        v23 = v46;
        if (v40)
        {
          goto LABEL_13;
        }

LABEL_8:
        result = static Solarium.isEnabled.getter();
        if (result)
        {
          v32 = v23 + v22[10];
          v33 = *v32;
          if (*(v32 + 8) == 1)
          {
            if ((v33 & 1) == 0)
            {
LABEL_11:
              v21 = *(v49 + 8);
              goto LABEL_16;
            }
          }

          else
          {

            static os_log_type_t.fault.getter();
            v37 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            v38 = v41;
            EnvironmentValues.init()();
            swift_getAtKeyPath();
            sub_1000EBD74(v33, 0);
            result = (*(v42 + 8))(v38, v43);
            if ((v51 & 1) == 0)
            {
              goto LABEL_11;
            }
          }
        }

        v21 = *(v49 + 8) + -20.0;
        goto LABEL_16;
      }

      sub_100018198(v14, &qword_100CA6028);
      sub_100018198(v17, &qword_100CA6028);
      (*(v29 + 8))(v31, v28);
      v23 = v46;
    }

    sub_100018198(v9, &qword_100CA64E8);
    goto LABEL_8;
  }

LABEL_16:
  *v50 = v21;
  return result;
}

unint64_t sub_10013E9FC()
{
  result = qword_100CA60E0;
  if (!qword_100CA60E0)
  {
    result = swift_getWitnessTable(asc_100A30B44, &type metadata for IsPageTransitioningPreferenceKey, v0, v1);
    atomic_store(result, &qword_100CA60E0);
  }

  return result;
}

void *sub_10013EA50()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(v10, v11);
  dispatch thunk of WindowType.bounds.getter();
  v4 = v3;
  sub_100006F14(v10);
  v1[2] = v4;
  type metadata accessor for ResettingBool();
  swift_allocObject();
  v1[3] = ResettingBool.init(wrappedValue:interval:)(0, 1.0);
  swift_allocObject();
  v1[4] = ResettingBool.init(wrappedValue:interval:)(0, 1.0);
  v1[5] = 0;
  v5 = [objc_opt_self() defaultCenter];
  v6 = swift_allocObject();
  swift_weakInit();
  v12 = sub_1007E881C;
  v13 = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1007E6A10;
  v11 = &unk_100C6CFA8;
  v7 = _Block_copy(v10);

  v8 = [v5 addObserverForName:UIDeviceOrientationDidChangeNotification object:0 queue:0 usingBlock:v7];
  _Block_release(v7);

  v1[5] = v8;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10013EC48()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t ResettingBool.init(wrappedValue:interval:)(char a1, double a2)
{
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 16) = a2;
  return v2;
}

void sub_10013ECBC()
{
  sub_10000C778();
  v1 = v0;
  v221 = v2;
  v193 = sub_10022C350(&qword_100CD95B0, &qword_100A838F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000039BC();
  v192 = v4;
  v195 = sub_10022C350(&qword_100CD95B8, &qword_100A838F8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000039BC();
  v194 = v6;
  v197 = sub_10022C350(&qword_100CD95C0, &qword_100A83900);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v196 = v8;
  sub_10022C350(&qword_100CD95C8, &qword_100A83908);
  sub_1000037C4();
  v199 = v10;
  v200 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v198 = v12;
  v201 = sub_10022C350(&qword_100CD95D0, &qword_100A83910);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000039BC();
  v202 = v14;
  v203 = sub_10022C350(&qword_100CD95D8, &qword_100A83918);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v204 = v16;
  v206 = sub_10022C350(&qword_100CD95E0, &qword_100A83920);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v17);
  sub_1000039BC();
  v205 = v18;
  v219 = sub_10022C350(&qword_100CD95E8, &qword_100A83928);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_100003848();
  v208 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  v207 = &v178 - v22;
  v23 = sub_1000038CC();
  v24 = type metadata accessor for LocationContentView(v23);
  v25 = sub_100003AE8(v24);
  v213 = v26;
  __chkstk_darwin(v25);
  v214 = v27;
  v215 = &v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000038CC();
  type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v183 = v29;
  v184 = v28;
  __chkstk_darwin(v28);
  sub_1000037D8();
  v182 = v31 - v30;
  v32 = sub_1000038CC();
  v33 = type metadata accessor for WeatherActivity(v32);
  v34 = sub_100003810(v33);
  __chkstk_darwin(v34);
  sub_1000037D8();
  v186 = v36 - v35;
  v37 = sub_10022C350(&qword_100CD95F0, &qword_100A83930);
  sub_100003810(v37);
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  v181 = v39;
  v185 = sub_10022C350(&qword_100CD95F8, &qword_100A83938);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v40);
  sub_1000039BC();
  v188 = v41;
  v187 = sub_10022C350(&qword_100CD9600, &qword_100A83940);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v42);
  sub_1000039BC();
  v190 = v43;
  v216 = sub_10022C350(&qword_100CD9608, &qword_100A83948);
  sub_1000037E8();
  __chkstk_darwin(v44);
  sub_100003848();
  v189 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  v191 = &v178 - v47;
  v218 = sub_10022C350(&qword_100CD9610, &qword_100A83950);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v48);
  sub_1000039BC();
  v217 = v49;
  v50 = sub_1000038CC();
  v51 = type metadata accessor for LocationViewModel(v50);
  sub_1000037E8();
  __chkstk_darwin(v52);
  sub_100003848();
  v179 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  v180 = &v178 - v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  v58 = &v178 - v57;
  __chkstk_darwin(v59);
  v61 = &v178 - v60;
  v62 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v63 = sub_100003810(v62);
  __chkstk_darwin(v63);
  sub_1000037D8();
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v64);
  v65 = *(v0 + 8);
  sub_100140210();
  v66 = &v61[*(v51 + 24)];
  v67 = *(v66 + 8);
  v68 = *(v66 + 9);

  sub_100147C14(v61, type metadata accessor for LocationViewModel);
  v69._countAndFlagsBits = v67;
  v69._object = v68;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v69);

  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v70);
  v71 = v65;
  v72 = LocalizedStringKey.init(stringInterpolation:)();
  LOWORD(v177) = 2;
  v228 = Text.init(_:tableName:bundle:comment:)(v72, v74, v73 & 1, v75, 0, 0, 0, "Describes the current temperature.", 34, v177);
  v229 = v76;
  v211 = v77;
  v230 = v78;
  sub_100140210();
  v79 = &v61[*(v51 + 24)];
  v81 = *v79;
  v80 = *(v79 + 1);

  sub_100147C14(v61, type metadata accessor for LocationViewModel);
  v235[0] = v81;
  v235[1] = v80;
  sub_10002D5A4();
  v222 = Text.init<A>(_:)();
  v223 = v82;
  LODWORD(v210) = v83;
  v225 = v84;
  v220 = v1;
  v224 = sub_100147C68();
  v226 = v85;
  v227 = v86;
  v88 = v87;
  sub_100140210();
  LODWORD(v80) = v58[*(v51 + 56)];
  sub_100147C14(v58, type metadata accessor for LocationViewModel);
  v209 = v71;
  v212 = v88;
  if (v80 == 2)
  {
    v89 = type metadata accessor for AutomationInfoProperty(0);
    v90 = v181;
    v91 = (v181 + *(v89 + 24));
    sub_100140210();
    v92 = &v61[*(v51 + 24)];
    v94 = *v92;
    v93 = *(v92 + 1);

    sub_100147C14(v61, type metadata accessor for LocationViewModel);
    *v91 = v94;
    v91[1] = v93;
    type metadata accessor for AutomationViewInfo(0);
    sub_100031D74();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for AutomationInfo(0);
    sub_100031D74();
    swift_storeEnumTagMultiPayload();
    *v90 = 0;
    *(v90 + 8) = 0xE000000000000000;
    *(v90 + 16) = swift_getKeyPath();
    *(v90 + 24) = 0;
    v95 = v180;
    sub_100140210();
    v97 = v182;
    v96 = v183;
    v98 = v184;
    v208 = *(v183 + 16);
    v208(v182, v95, v184);
    sub_100147C14(v95, type metadata accessor for LocationViewModel);
    Location.Identifier.kind.getter();
    (*(v96 + 8))(v97, v98);
    v99 = Location.Identifier.Kind.rawValue.getter();
    v101 = v100;
    v103 = v99 == Location.Identifier.Kind.rawValue.getter() && v101 == v102;
    v104 = v90;
    if (v103)
    {
    }

    else
    {
      v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v105 & 1) == 0)
      {
        sub_100140210();
        v106 = v186;
        v208(v186, v61, v98);
        sub_100010BF4();
        sub_100147C14(v61, v107);
        v108 = 0;
LABEL_11:
        sub_10001B350(v106, v108, 2, v98);
        v113 = v188;
        sub_100149618(v106, v188 + *(v185 + 36));
        sub_10011C0F0(v104, v113, &qword_100CD95F0, &qword_100A83930);
        v114 = v220;
        v115 = v215;
        sub_1001495C0(v220, v215);
        v116 = (*(v213 + 80) + 16) & ~*(v213 + 80);
        v117 = swift_allocObject();
        sub_100149618(v115, v117 + v116);
        v118 = v113;
        v119 = v190;
        sub_10011C0F0(v118, v190, &qword_100CD95F8, &qword_100A83938);
        v120 = (v119 + *(v187 + 36));
        *v120 = sub_1007E7558;
        v120[1] = v117;
        v120[2] = 0;
        v120[3] = 0;
        sub_1001495C0(v114, v115);
        v121 = swift_allocObject();
        sub_100149618(v115, v121 + v116);
        v122 = v189;
        sub_10011C0F0(v119, v189, &qword_100CD9600, &qword_100A83940);
        v123 = (v122 + *(v216 + 36));
        *v123 = 0;
        v123[1] = 0;
        v123[2] = sub_100165460;
        v123[3] = v121;
        sub_10011C0F0(v122, v191, &qword_100CD9608, &qword_100A83948);
        sub_1007E73B4();
        sub_1007E72FC();
        v124 = v217;
        sub_1003E8038();
        sub_10010CD64(v228, v229, v211 & 1);

        sub_10010CD64(v222, v223, v210 & 1);

        sub_10014A53C(v224, v226, v227, v212);
        sub_10000FEC4();
        sub_100018144(v125, v126, v127);
        goto LABEL_14;
      }
    }

    v108 = 2;
    v106 = v186;
    goto LABEL_11;
  }

  v191 = v61;
  v109 = v179;
  sub_100140210();
  v190 = v51;
  v110 = *(v109 + *(v51 + 56));
  sub_100010BF4();
  sub_100147C14(v109, v111);
  v112 = 1;
  switch(v110)
  {
    case 3:
      break;
    default:
      v112 = _stringCompareWithSmolCheck(_:_:expecting:)();
      break;
  }

  __chkstk_darwin(v128);
  v129 = v220;
  v131 = v228;
  v130 = v229;
  *(&v178 - 14) = v220;
  *(&v178 - 13) = v131;
  *(&v178 - 12) = v130;
  LODWORD(v189) = v211 & 1;
  *(&v178 - 88) = v211 & 1;
  v133 = v222;
  v132 = v223;
  *(&v178 - 10) = v230;
  *(&v178 - 9) = v133;
  *(&v178 - 8) = v132;
  v211 = v210 & 1;
  *(&v178 - 56) = v210 & 1;
  v134 = v224;
  *(&v178 - 6) = v225;
  *(&v178 - 5) = v134;
  v135 = v227;
  *(&v178 - 4) = v226;
  *(&v178 - 3) = v135;
  v176 = v88;
  static HorizontalAlignment.center.getter();
  sub_10022C350(&qword_100CD9618, &qword_100A83958);
  sub_100006F64(&qword_100CD9620, &qword_100CD9618, &qword_100A83958, &protocol conformance descriptor for TupleView<A>);
  v136 = v192;
  VStack.init(alignment:spacing:content:)();
  sub_100017E10();
  v210 = v137;
  v138 = v215;
  sub_1001495C0(v129, v215);
  v139 = *(v213 + 80);
  v140 = v214 + ((v139 + 16) & ~v139);
  v188 = (v139 + 16) & ~v139;
  v141 = swift_allocObject();
  v214 = type metadata accessor for LocationContentView;
  sub_100149618(v138, v141 + ((v139 + 16) & ~v139));
  LODWORD(v213) = v112 & 1;
  v140[v141] = v112 & 1;
  v187 = v140;
  sub_100006F64(&qword_100CD9628, &qword_100CD95B0, &qword_100A838F0, &protocol conformance descriptor for VStack<A>);
  v142 = v194;
  View.onAppear(perform:)();

  sub_100018144(v136, &qword_100CD95B0, &qword_100A838F0);
  sub_1001495C0(v129, v138);
  v143 = swift_allocObject();
  v144 = v188;
  sub_100149618(v138, v143 + v188);
  sub_1007E6CC8();
  v145 = v196;
  View.onDisappear(perform:)();

  sub_100018144(v142, &qword_100CD95B8, &qword_100A838F8);
  LOBYTE(v235[0]) = v213;
  v146 = v129;
  sub_1001495C0(v129, v138);
  v147 = swift_allocObject();
  sub_100149618(v138, v147 + v144);
  v148 = sub_1007E6FF0();
  v150 = v197;
  v149 = v198;
  View.onChange<A>(of:initial:_:)();

  sub_100018144(v145, &qword_100CD95C0, &qword_100A83900);
  KeyPath = swift_getKeyPath();
  v233 = 0;
  v235[0] = KeyPath;
  LOBYTE(v235[9]) = 0;
  v232[0] = v150;
  v232[1] = &type metadata for Bool;
  v232[2] = v148;
  v232[3] = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v152 = v202;
  v153 = v200;
  View.modifier<A>(_:)();
  memcpy(v234, v235, 0x49uLL);
  sub_10014A2F8(v234);
  (*(v199 + 8))(v149, v153);
  v154 = swift_getKeyPath();
  v234[80] = 0;
  v155 = swift_getKeyPath();
  LOBYTE(v235[0]) = 0;
  v232[0] = v154;
  LOBYTE(v232[9]) = 0;
  v232[10] = v155;
  LOBYTE(v232[11]) = 0;
  sub_1007E707C();
  v156 = v204;
  View.modifier<A>(_:)();
  memcpy(v235, v232, 0x59uLL);
  sub_10014A330(v235);
  sub_100018144(v152, &qword_100CD95D0, &qword_100A83910);
  v157 = v191;
  sub_100140210();
  LOBYTE(v154) = *(v157 + *(v190 + 68));
  sub_100010BF4();
  sub_100147C14(v157, v158);
  v159 = swift_getKeyPath();
  v236 = 0;
  LOBYTE(v231[0]) = v154;
  v231[1] = v159;
  LOBYTE(v231[10]) = 0;
  sub_1007E7158();
  v160 = v205;
  View.modifier<A>(_:)();
  memcpy(v232, v231, 0x51uLL);
  sub_10014A368(v232);
  sub_100018144(v156, &qword_100CD95D8, &qword_100A83918);
  v161 = static Alignment.topTrailing.getter();
  __chkstk_darwin(v161);
  v176 = v146;
  sub_10022C350(&qword_100CD9660, &qword_100A839B0);
  sub_1007E71EC();
  sub_1007E7278();
  v162 = v208;
  View.overlay<A>(alignment:content:)();
  sub_100018144(v160, &qword_100CD95E0, &qword_100A83920);
  v163 = sub_1007E72FC();
  v164 = v207;
  v165 = v219;
  sub_1000833D8(v162, v219, v163);
  sub_10000FEC4();
  sub_100018144(v166, v167, v168);
  sub_1000833D8(v164, v165, v163);
  sub_1007E73B4();
  v124 = v217;
  sub_10012D09C();
  sub_10010CD64(v228, v229, v189);

  sub_10010CD64(v222, v223, v211);

  sub_10014A53C(v224, v226, v227, v212);
  sub_10000FEC4();
  sub_100018144(v169, v170, v171);
  sub_10000FEC4();
  sub_100018144(v172, v173, v174);
LABEL_14:
  v175 = sub_1007E74CC();
  sub_1000833D8(v124, v218, v175);
  sub_100018144(v124, &qword_100CD9610, &qword_100A83950);
  sub_10000536C();
}

uint64_t sub_10013FFC4()
{
  type metadata accessor for LocationContentView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  swift_unknownObjectRelease();

  sub_100006F14((v3 + 56));
  sub_100006F14((v3 + 96));

  sub_1000EBD74(*(v3 + 144), *(v3 + 152));
  v4 = v3 + v0[13];
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(type metadata accessor for DisplayMetrics(0) + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  sub_10002436C((v3 + v0[14]));
  v7 = v0[15];
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v8 + 8))(v3 + v7);
  }

  else
  {
  }

  sub_10002436C((v3 + v0[16]));
  sub_10002436C((v3 + v0[17]));

  v9 = v0[19];
  type metadata accessor for Text.Measurements();
  sub_100003D98();
  (*(v10 + 8))(v3 + v9);

  return swift_deallocObject();
}

void sub_100140210()
{
  sub_10000C778();
  v1 = sub_1000753E4();
  v2 = type metadata accessor for LocationInput(v1);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v4);
  sub_100008064();
  __chkstk_darwin(v5);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v6 = sub_100030700();
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = sub_10022C350(&qword_100CA4B90, &unk_100A9DFF0);
      sub_100024C98(*(v7 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v8();
    v9 = sub_100028ED4();
    v0(v9);

    sub_10022C350(&qword_100CA4B90, &unk_100A9DFF0);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v10 = sub_100049FC4();
    sub_1000217D8(v10, v11, &qword_100CA4B70, &qword_100A2EE28);
    swift_endAccess();
  }

  sub_10000536C();
}

uint64_t sub_1001403D0(void (*a1)(uint64_t *, uint64_t), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v5 = sub_10022C350(&qword_100CA4B88, &unk_100A2EE40);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  (a3)(v16, v6);
  a1(v16, 1);

  v9 = type metadata accessor for LocationInput(0);
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4B88, &unk_100A2EE40);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x6E6F697461636F4CLL;
  v12._object = 0xED00007475706E49;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._object = 0x8000000100ABC0E0;
  v14._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001405E0@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v199 = a2;
  v201 = *v2;
  v223 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v174 = v4;
  __chkstk_darwin(v5);
  sub_1000038E4();
  v222 = v6;
  v7 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = sub_100003918(&v173 - v9);
  v200 = type metadata accessor for LocationsState(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  sub_100003918(v12);
  v211 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v219 = v13;
  __chkstk_darwin(v14);
  sub_1000038E4();
  v210 = v15;
  v16 = type metadata accessor for AppConfigurationState(0);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_1000038E4();
  v19 = sub_100003918(v18);
  v20 = type metadata accessor for TimeState(v19);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_1000038E4();
  v23 = sub_100003918(v22);
  v190 = type metadata accessor for ModalViewState(v23);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000038E4();
  v220 = v25;
  v26 = type metadata accessor for LocationPreviewViewState(0);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_1000038E4();
  v186 = v28;
  v29 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  sub_100003848();
  v197 = v31;
  sub_10000386C();
  __chkstk_darwin(v32);
  v34 = sub_100003918(&v173 - v33);
  v214 = type metadata accessor for ViewState(v34);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_100003848();
  v221 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003918(&v173 - v38);
  v218 = type metadata accessor for Date();
  sub_1000037C4();
  v204 = v39;
  __chkstk_darwin(v40);
  sub_100003848();
  v209 = v41;
  sub_10000386C();
  __chkstk_darwin(v42);
  v208 = &v173 - v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  v206 = &v173 - v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  v48 = &v173 - v47;
  v49 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  v50 = sub_100003810(v49);
  __chkstk_darwin(v50);
  sub_100003848();
  v207 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  v54 = &v173 - v53;
  __chkstk_darwin(v55);
  v57 = &v173 - v56;
  __chkstk_darwin(v58);
  v59 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v215 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v61 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v60 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v212 = a1;
  v213 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v202 = &v173 - v62;
  sub_1000302D8(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, &v173 - v62, &unk_100CE49F0, &unk_100A3AFA0);
  v63 = qword_100CA2158;
  v217 = v59;
  v64 = v61;

  v216 = v60;

  if (v63 != -1)
  {
    swift_once();
  }

  sub_100141A38();
  Configurable.setting<A>(_:)();
  Date.init(timeIntervalSince1970:)();
  if (qword_100CA2160 != -1)
  {
    swift_once();
  }

  v203 = v48;
  Configurable.setting<A>(_:)();
  v65 = v225;
  v66 = (v212 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
  v67 = type metadata accessor for NotificationsOptInState(0);
  LODWORD(v201) = v66[v67[16]];
  v68 = v202;
  sub_1000302D8(v202, v57, &unk_100CE49F0, &unk_100A3AFA0);
  v69 = type metadata accessor for CurrentLocation();
  sub_1000038B4(v57, 1, v69);
  if (v85)
  {
    sub_1000180EC(v57, &unk_100CE49F0, &unk_100A3AFA0);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_100010D38();
    sub_100141B94(v57, v70);
  }

  sub_100141E5C();
  v72 = v71;

  sub_1000302D8(v68, v54, &unk_100CE49F0, &unk_100A3AFA0);
  sub_1000038B4(v54, 1, v69);
  v192 = v65;
  if (v85)
  {
    sub_1000180EC(v54, &unk_100CE49F0, &unk_100A3AFA0);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_100010D38();
    sub_100141B94(v54, v73);
  }

  v74 = v212;
  v194 = v64;
  sub_100141E74();
  v76 = v75;

  v77 = v74 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v78 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications;
  v79 = sub_100141E8C(v201, v72 & 1, v76 & 1, *(v77 + 1), *(v74 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications), *(v77 + 2));
  sub_10001A034();
  *(v81 - 256) = v80;
  v82 = v189;
  sub_100095270();
  v83 = *(v82 + *(v214 + 36) + 8);
  sub_100023310();
  v191 = v79;
  v188 = v67;
  v187 = v78;
  if (v83 != 1)
  {
    goto LABEL_17;
  }

  v83 = 0xD000000000000010;
  v85 = LocationAuthorizationState.rawValue.getter(*(v77 + 1)) == 0xD000000000000010 && 0x8000000100ABA410 == v84;
  if (v85)
  {
  }

  else
  {
    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v67 & 1) == 0)
    {
LABEL_17:
      sub_10000689C();
      v86 = v220;
      goto LABEL_28;
    }
  }

  switch(*(v74 + v78))
  {
    case 1:

      v86 = v220;
      goto LABEL_23;
    default:
      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v86 = v220;
      if (v67)
      {
LABEL_23:
        v83 = v205;
        if (v66[18] == 1)
        {
          LODWORD(v189) = v66[19] ^ 1;
        }

        else
        {
          LODWORD(v189) = 0;
        }

        v67 = v200;
      }

      else
      {
        sub_10000689C();
      }

      break;
  }

LABEL_28:
  v87 = *(v213 + v67[13]);
  sub_100095270();
  v88 = v68;
  if (swift_getEnumCaseMultiPayload())
  {

    sub_100141B94(v86, type metadata accessor for ModalViewState);
    v89 = 1;
  }

  else
  {
    v90 = v186;
    sub_1001876B0();
    sub_100095270();

    sub_100141B94(v90, type metadata accessor for LocationPreviewViewState);
    v89 = 0;
  }

  v190 = v87;
  v91 = type metadata accessor for PreviewLocation(0);
  sub_10001B350(v83, v89, 1, v91);
  v175 = *(v77 + 3);
  v182 = *v66;
  v92 = *(v66 + 1);
  v93 = v188;
  v94 = *(v204 + 16);
  v95 = v218;
  v94(v206, &v66[v188[11]], v218);
  v184 = v66[v93[12]];
  v185 = v66[v93[14]];
  LODWORD(v186) = *(v77 + 1);
  LODWORD(v187) = *(v74 + v187);
  v94(v208, v203, v95);
  sub_1000302D8(v88, v207, &unk_100CE49F0, &unk_100A3AFA0);
  sub_10001A034();
  v96 = v221;
  sub_100095270();
  v188 = *&v96[*(v214 + 36) + 8];
  v183 = v92;

  sub_100023310();
  v97 = v77 + *(type metadata accessor for EnvironmentState(0) + 72);
  v98 = *v97;
  v99 = *(v97 + 8);
  v100 = *(v97 + 16);
  v101 = *(v97 + 24);
  v102 = *(v97 + 32);
  v103 = *(v97 + 40);
  v104 = *(v213 + v67[9]);
  v105 = *(v104 + 16);
  v181 = *v97;
  v180 = v99;
  v179 = v100;
  v178 = v101;
  v177 = v102;
  v176 = v103;
  if (v105)
  {
    v224 = _swiftEmptyArrayStorage;
    v106 = v98;
    v107 = v99;
    v108 = v100;
    v109 = v101;
    v110 = v102;
    v111 = v103;

    sub_10000369C(0, v105, 0);
    v112 = v224;
    v113 = v174 + 16;
    v221 = *(v174 + 16);
    v114 = (*(v174 + 80) + 32) & ~*(v174 + 80);
    v174 = v104;
    v115 = v104 + v114;
    v220 = *(v113 + 56);
    v116 = (v113 - 8);
    do
    {
      v117 = v222;
      v118 = v223;
      (v221)(v222, v115, v223);
      v119 = Location.Identifier.id.getter();
      v121 = v120;
      (*v116)(v117, v118);
      v224 = v112;
      v123 = v112[2];
      v122 = v112[3];
      if (v123 >= v122 >> 1)
      {
        sub_10000369C((v122 > 1), v123 + 1, 1);
        v112 = v224;
      }

      v112[2] = v123 + 1;
      v124 = &v112[2 * v123];
      v124[4] = v119;
      v124[5] = v121;
      v115 += v220;
      --v105;
    }

    while (v105);

    v125 = v197;
    v67 = v200;
    v74 = v212;
  }

  else
  {
    v126 = v103;
    v127 = v98;
    v128 = v99;
    v129 = v100;
    v130 = v101;
    v131 = v102;
    v112 = _swiftEmptyArrayStorage;
    v125 = v197;
  }

  v132 = v193;
  sub_100095270();
  v133 = v74;
  v134 = v204;
  v135 = v218;
  v223 = *(v204 + 32);
  v223(v209, v132, v218);
  v136 = v133 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
  LODWORD(v221) = *(v133 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v137 = *(v133 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v222 = *(v133 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);

  v220 = v137;

  LODWORD(v212) = static Settings.HomeAndWork.homeAndWorkLabelEnabled.getter();
  v138 = v195;
  sub_100095270();
  v139 = *(v219 + 32);
  v219 += 32;
  v200 = v139;
  (v139)(v210, v138, v211);
  v140 = *(v136 + 16);
  v141 = v213;
  v142 = v196;
  sub_100095270();
  v195 = *(*(v142 + v67[6]) + 16);
  type metadata accessor for SavedLocationsManager();
  v197 = v140;

  v143 = static SavedLocationsManager.maxAllowedLocationsCount.getter();
  (*(v134 + 8))(v203, v135);
  sub_1000180EC(v202, &unk_100CE49F0, &unk_100A3AFA0);
  sub_100141B94(v142, type metadata accessor for LocationsState);
  sub_10011C0F0(v205, v125, &qword_100CA65C8, &unk_100A31670);
  v144 = *(v141 + v67[7]);
  v145 = v198;
  sub_1000302D8(v201 + *(v214 + 32), v198, &qword_100CA6600, &unk_100A5C400);
  v146 = type metadata accessor for SearchViewState(0);
  sub_1000038B4(v145, 1, v146);
  v147 = v125;
  if (v85)
  {

    sub_1000180EC(v145, &qword_100CA6600, &unk_100A5C400);
    v148 = 1;
  }

  else
  {
    v149 = *v145;
    v150 = v145[1];

    sub_100141B94(v145, type metadata accessor for SearchViewState);

    v151 = HIBYTE(v150) & 0xF;
    v152 = v149 & 0xFFFFFFFFFFFFLL;
    v147 = v125;
    if ((v150 & 0x2000000000000000) == 0)
    {
      v151 = v152;
    }

    v148 = v151 == 0;
  }

  LODWORD(v214) = v148;
  v153 = v189;
  v154 = v183;
  v155 = v182;
  v156 = v199;
  *v199 = v175 == 4;
  v157 = v195 < v143;
  *(v156 + 1) = v155;
  *(v156 + 8) = v154;
  v158 = type metadata accessor for LocationInput(0);
  v159 = v218;
  v160 = v223;
  v223(v156 + v158[7], v206, v218);
  sub_100013D24(v158[8]);
  v161 = v156 + v158[9];
  v162 = v191;
  *(v161 + 2) = BYTE2(v191);
  *v161 = v162;
  sub_100013D24(v158[10]);
  sub_100013D24(v158[11]);
  sub_100013D24(v158[12]);
  *(v156 + v158[13]) = v153 & 1;
  v160(v156 + v158[14], v208, v159);
  sub_100013D24(v158[15]);
  v163 = (v156 + v158[16]);
  v164 = v217;
  *v163 = v215;
  v163[1] = v164;
  v165 = v216;
  v163[2] = v194;
  v163[3] = v165;
  sub_10011C0F0(v207, v156 + v158[17], &unk_100CE49F0, &unk_100A3AFA0);
  *(v156 + v158[18]) = v188;
  v166 = (v156 + v158[19]);
  v167 = v180;
  *v166 = v181;
  v166[1] = v167;
  v168 = v178;
  v166[2] = v179;
  v166[3] = v168;
  v169 = v176;
  v166[4] = v177;
  v166[5] = v169;
  *(v156 + v158[20]) = v112;
  v160(v156 + v158[21], v209, v159);
  v170 = v156 + v158[22];
  *v170 = v221;
  v171 = v220;
  *(v170 + 8) = v222;
  *(v170 + 16) = v171;
  *(v156 + v158[23]) = v212 & 1;
  *(v156 + v158[24]) = v190;
  (v200)(v156 + v158[25], v210, v211);
  *(v156 + v158[26]) = v197;
  *(v156 + v158[27]) = v157;
  sub_10011C0F0(v147, v156 + v158[28], &qword_100CA65C8, &unk_100A31670);
  *(v156 + v158[29]) = v144;
  *(v156 + v158[30]) = v214;
  return sub_10001B350(v156, 0, 1, v158);
}

uint64_t sub_1001418A0()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for Domain();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  (*(v10 + 104))(v9 - v8, enum case for Domain.standard(_:));
  (*(v2 + 104))(v6, enum case for Access.public(_:), v0);
  sub_10022C350(&qword_100CBCE20, &qword_100A53D38);
  swift_allocObject();
  result = Setting.init(_:defaultValue:domain:access:)();
  qword_100D8FFB0 = result;
  return result;
}

unint64_t sub_100141A38()
{
  result = qword_100CDD9D8;
  if (!qword_100CDD9D8)
  {
    v3 = type metadata accessor for LocationInputFactory();
    result = swift_getWitnessTable(a9_5, v3, v0, v1);
    atomic_store(result, &qword_100CDD9D8);
  }

  return result;
}

uint64_t sub_100141A8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100141AE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100141B3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100141B94(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100141BEC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_100141C44()
{
  sub_10000C778();
  v24 = v2;
  v4 = v3;
  v6 = v5;
  type metadata accessor for LocationAvailableDataSetState(0);
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_1000115E8();
  v8 = type metadata accessor for AvailableDataSets();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100003C38();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  sub_10003BA64();
  if (v6)
  {
    if (*(v4 + 16))
    {
      sub_100031B34();
      if (v16)
      {
        sub_100049B4C();
        sub_1001A0E7C(v17, v1);
        sub_100014AD8();
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1001A126C(v1, type metadata accessor for LocationAvailableDataSetState);
        }

        else
        {
          v18 = sub_10002C598();
          v20 = v19(v18);
          v24(v20);
          sub_100016DE0();
          sub_100712170(v21, v22, &protocol conformance descriptor for AvailableDataSets);
          dispatch thunk of SetAlgebra.isSuperset(of:)();
          v23 = *(v10 + 8);
          v23(v14, v8);
          v23(v0, v8);
        }
      }
    }
  }

  sub_10000536C();
}

uint64_t sub_100141E8C(char a1, char a2, char a3, char a4, char a5, unsigned __int8 a6)
{
  if (qword_100CA26D0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000703C(v11, qword_100D90AD8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v40 = a2;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v41 = a5;
    v15 = swift_slowAlloc();
    v43 = v15;
    *v14 = 67110146;
    *(v14 + 4) = a1 & 1;
    *(v14 + 8) = 1024;
    *(v14 + 10) = a2 & 1;
    *(v14 + 14) = 1024;
    *(v14 + 16) = a3 & 1;
    *(v14 + 20) = 2082;
    sub_10014228C();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = a3;
    v19 = a4;
    v20 = sub_100078694(v16, v17, &v43);

    *(v14 + 22) = v20;
    *(v14 + 30) = 2082;
    sub_1001426A4();
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = sub_100078694(v21, v22, &v43);

    *(v14 + 32) = v23;
    a4 = v19;
    a3 = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Determining user opt-in status, requestedLocationPermission=%{BOOL}d, nhpAvailable=%{BOOL}d, severeAvailable=%{BOOL}d, locationAuthorization=%{public}s, notificationsAuthorization=%{public}s, ", v14, 0x28u);
    swift_arrayDestroy();
    v24 = v15;
    a5 = v41;
    sub_100003884(v24);
    sub_100003884(v14);
  }

  if (a4 == 2 && a5 == 1)
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = 2;
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "User opt-in status is .optedIn", v35, 2u);
      sub_100003884(v35);
    }

    else
    {

      return 2;
    }
  }

  else if ((a1 & 1) != 0 && a4 && a5 != 3 && a5)
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "User opt-in status is .declined", v39, 2u);
      sub_100003884(v39);
    }

    return 3;
  }

  else
  {
    v26 = a4;
    v27 = (v40 ^ 1) & a3;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67109120;
      v31 = v27 & 1;
      *(v30 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v28, v29, "User opt-in status is .newUser(newCoverage: %{BOOL}d)", v30, 8u);
      sub_100003884(v30);
    }

    else
    {

      v31 = v27 & 1;
    }

    return (v31 | ((v26 == 2) << 8)) & 0xFF00FFFF | (a6 << 16);
  }

  return v34;
}

unint64_t sub_10014228C()
{
  result = qword_100CAF018;
  if (!qword_100CAF018)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationAuthorizationState, &type metadata for LocationAuthorizationState, v0, v1);
    atomic_store(result, &qword_100CAF018);
  }

  return result;
}

unint64_t sub_1001422E0()
{
  result = qword_100CAF020;
  if (!qword_100CAF020)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationAuthorizationState, &type metadata for LocationAuthorizationState, v0, v1);
    atomic_store(result, &qword_100CAF020);
  }

  return result;
}

uint64_t sub_100142334(uint64_t a1)
{
  sub_1001422E0();

  return ShortDescribable.description.getter();
}

uint64_t LocationAuthorizationState.shortDescription.getter@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10022C350(&qword_100CAF000, &qword_100A3EA50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a2[3] = v3;
  a2[4] = sub_100142640();
  v7 = sub_100042FB0(a2);
  return (*(v4 + 32))(v7, v6, v3);
}

unint64_t sub_100142640()
{
  result = qword_100CAF008;
  if (!qword_100CAF008)
  {
    v3 = sub_10022E824(&qword_100CAF000, &qword_100A3EA50);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CAF008);
  }

  return result;
}

unint64_t sub_1001426A4()
{
  result = qword_100CB9BD8;
  if (!qword_100CB9BD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationAuthorizationState, &type metadata for NotificationAuthorizationState, v0, v1);
    atomic_store(result, &qword_100CB9BD8);
  }

  return result;
}

uint64_t sub_1001426F8(uint64_t a1)
{
  sub_100142734();

  return ShortDescribable.description.getter();
}

unint64_t sub_100142734()
{
  result = qword_100CBB958;
  if (!qword_100CBB958)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationAuthorizationState, &type metadata for NotificationAuthorizationState, v0, v1);
    atomic_store(result, &qword_100CBB958);
  }

  return result;
}

uint64_t NotificationAuthorizationState.shortDescription.getter@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10022C350(&qword_100CBB940, &qword_100A511E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a2[3] = v3;
  a2[4] = sub_100142A08();
  v7 = sub_100042FB0(a2);
  return (*(v4 + 32))(v7, v6, v3);
}

unint64_t sub_100142A08()
{
  result = qword_100CBB948;
  if (!qword_100CBB948)
  {
    v3 = sub_10022E824(&qword_100CBB940, &qword_100A511E0);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CBB948);
  }

  return result;
}

uint64_t sub_100142A80(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for Date();
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[7];
    }

    else
    {
      sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[17];
      }

      else
      {
        type metadata accessor for AppConfiguration();
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[25];
        }

        else
        {
          v10 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
          v11 = a4[28];
        }
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_100142BF0(uint64_t a1, uint64_t a2, int *a3)
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
    type metadata accessor for Date();
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[7];
    }

    else
    {
      sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[17];
      }

      else
      {
        type metadata accessor for AppConfiguration();
        sub_100003928();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[25];
        }

        else
        {
          v10 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
          v11 = a3[28];
        }
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

uint64_t sub_100142D50(uint64_t a1, void (*a2)(uint64_t, uint64_t, double))
{
  v4 = sub_10022C350(&qword_100CA4B78, &qword_100A2EE30);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  a2(a1, 1, v5);
  v8 = type metadata accessor for LocationViewModel(0);
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v7, &qword_100CA4B78, &qword_100A2EE30);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x8000000100ABBD90;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x6E6F697461636F4CLL;
  v11._object = 0xED00007475706E49;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._object = 0x8000000100ABC0E0;
  v13._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100142F28@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v738) = a3;
  v743 = a1;
  v739 = a4;
  type metadata accessor for LocationsConfiguration();
  sub_1000037C4();
  v680 = v6;
  v681 = v5;
  __chkstk_darwin(v5);
  sub_1000038E4();
  v679 = v7;
  sub_1000038CC();
  v704 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v703 = v8;
  __chkstk_darwin(v9);
  sub_1000038E4();
  v678 = v10;
  v11 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v676 = v13;
  v14 = sub_10022C350(&qword_100CD8AB8, &qword_100A83DF0);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v714 = v16;
  v17 = sub_1000038CC();
  v18 = type metadata accessor for LocationCompositionState(v17);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_1000038E4();
  v675 = v20;
  v21 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_100003848();
  v677 = v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  sub_10000E70C();
  v674 = v25;
  v26 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_100003810(v26);
  sub_100003828();
  __chkstk_darwin(v27);
  sub_1000039BC();
  v710 = v28;
  v29 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  sub_100003848();
  v682 = v31;
  sub_10000386C();
  __chkstk_darwin(v32);
  sub_10000E70C();
  v673 = v33;
  v34 = sub_1000038CC();
  v672 = type metadata accessor for PreviewLocation(v34);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_1000038E4();
  v657 = v36;
  v37 = sub_10022C350(&qword_100CA6890, &qword_100A31680);
  sub_100003810(v37);
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  v671 = v39;
  v40 = sub_1000038CC();
  v670 = type metadata accessor for LocationViewConfigurationInputs(v40);
  sub_1000037E8();
  __chkstk_darwin(v41);
  sub_1000038E4();
  v697 = v42;
  v43 = sub_1000038CC();
  v669 = type metadata accessor for LocationContentState(v43);
  sub_1000037E8();
  __chkstk_darwin(v44);
  sub_1000038E4();
  v718 = v45;
  v46 = sub_1000038CC();
  v47 = type metadata accessor for LearnMoreAttributorViewModel(v46);
  v48 = sub_100003810(v47);
  __chkstk_darwin(v48);
  sub_1000038E4();
  v713 = v49;
  sub_1000038CC();
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v667 = v51;
  v668 = v50;
  __chkstk_darwin(v50);
  sub_1000038E4();
  v666 = v52;
  v702 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_1000037C4();
  v717 = v53;
  __chkstk_darwin(v54);
  sub_100003848();
  v701 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_10000E70C();
  v665 = v57;
  v58 = sub_10022C350(&qword_100CAB9B0, &qword_100A3A820);
  sub_100003810(v58);
  sub_100003828();
  __chkstk_darwin(v59);
  sub_1000039BC();
  v696 = v60;
  sub_1000038CC();
  v691 = type metadata accessor for UUID();
  sub_1000037C4();
  v690 = v61;
  __chkstk_darwin(v62);
  sub_1000038E4();
  v639 = v63;
  v641 = sub_10022C350(&qword_100CCB488, &qword_100A6A528);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v64);
  sub_1000039BC();
  v647 = v65;
  v66 = sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  v67 = sub_100003810(v66);
  __chkstk_darwin(v67);
  sub_100003848();
  v664 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  sub_100003878();
  v642 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_10000E70C();
  v644 = v72;
  sub_1000038CC();
  v648 = type metadata accessor for ForegroundEffect();
  sub_1000037C4();
  v643 = v73;
  __chkstk_darwin(v74);
  sub_1000038E4();
  v640 = v75;
  v646 = sub_10022C350(&qword_100CD8BE0, &qword_100A82B68);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v76);
  sub_1000039BC();
  v649 = v77;
  v78 = sub_10022C350(&qword_100CA4B78, &qword_100A2EE30);
  v79 = sub_100003810(v78);
  __chkstk_darwin(v79);
  sub_100003848();
  v660 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_10000E70C();
  v652 = v82;
  v83 = sub_1000038CC();
  v719 = type metadata accessor for LocationViewModel(v83);
  sub_1000037E8();
  __chkstk_darwin(v84);
  sub_100003848();
  v694 = v85;
  sub_10000386C();
  __chkstk_darwin(v86);
  sub_10000E70C();
  v650 = v87;
  v655 = sub_10022C350(&qword_100CA75C0, &unk_100A325E0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v88);
  sub_1000039BC();
  v656 = v89;
  v687 = sub_10022C350(&qword_100CB4398, &unk_100A47700);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v90);
  sub_1000039BC();
  v689 = v91;
  v92 = sub_10022C350(&qword_100CA60E8, &unk_100A5A9F0);
  v93 = sub_100003810(v92);
  __chkstk_darwin(v93);
  sub_100003848();
  v693 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v645 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_10000E70C();
  v716 = v98;
  sub_1000038CC();
  v721 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v724 = v99;
  __chkstk_darwin(v100);
  sub_100003848();
  v700 = v101;
  sub_10000386C();
  __chkstk_darwin(v102);
  sub_100003878();
  v695 = v103;
  sub_10000386C();
  __chkstk_darwin(v104);
  sub_10000E70C();
  v709 = v105;
  sub_1000038CC();
  v742 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v741 = v106;
  __chkstk_darwin(v107);
  sub_100003848();
  v712 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_10000E70C();
  v740 = v110;
  v111 = sub_10022C350(&qword_100CA2CD8, &unk_100A2C420);
  v112 = sub_100003810(v111);
  __chkstk_darwin(v112);
  sub_100003848();
  v686 = v113;
  sub_10000386C();
  __chkstk_darwin(v114);
  sub_10000E70C();
  v685 = v115;
  sub_1000038CC();
  v698 = type metadata accessor for WeatherCondition();
  sub_1000037C4();
  v708 = v116;
  __chkstk_darwin(v117);
  sub_1000038E4();
  v715 = v118;
  sub_1000038CC();
  v725 = type metadata accessor for Date();
  sub_1000037C4();
  v726 = v119;
  __chkstk_darwin(v120);
  sub_100003848();
  v711 = v121;
  sub_10000386C();
  __chkstk_darwin(v122);
  sub_100003878();
  v705 = v123;
  sub_10000386C();
  __chkstk_darwin(v124);
  sub_10000E70C();
  v707 = v125;
  v126 = sub_10022C350(&qword_100CA74F8, &qword_100A32528);
  v127 = sub_100003810(v126);
  __chkstk_darwin(v127);
  sub_100003848();
  v662 = v128;
  sub_10000386C();
  __chkstk_darwin(v129);
  sub_100003878();
  v653 = v130;
  sub_10000386C();
  __chkstk_darwin(v131);
  sub_100003878();
  v688 = v132;
  sub_10000386C();
  __chkstk_darwin(v133);
  sub_10000E70C();
  v706 = v134;
  v135 = sub_1000038CC();
  v720 = type metadata accessor for NewsDataModel(v135);
  sub_1000037E8();
  __chkstk_darwin(v136);
  sub_100003848();
  v651 = v137;
  sub_10000386C();
  __chkstk_darwin(v138);
  sub_10000E70C();
  v728 = v139;
  v140 = sub_10022C350(&qword_100CCD850, &qword_100A6E590);
  sub_100003810(v140);
  sub_100003828();
  __chkstk_darwin(v141);
  sub_1000039BC();
  v723 = v142;
  v143 = sub_1000038CC();
  v727 = type metadata accessor for PreprocessedWeatherData(v143);
  sub_1000037E8();
  __chkstk_darwin(v144);
  sub_1000038E4();
  v729 = v145;
  v146 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  v147 = sub_100003810(v146);
  __chkstk_darwin(v147);
  sub_100003848();
  v699 = v148;
  sub_10000386C();
  __chkstk_darwin(v149);
  sub_100003878();
  v658 = v150;
  sub_10000386C();
  __chkstk_darwin(v151);
  sub_100003878();
  v684 = v152;
  sub_10000386C();
  __chkstk_darwin(v153);
  v155 = &v619 - v154;
  v733 = type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v156);
  sub_100003848();
  v654 = v157;
  sub_10000386C();
  __chkstk_darwin(v158);
  sub_10000E70C();
  v732 = v159;
  v160 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  sub_100003810(v160);
  sub_100003828();
  __chkstk_darwin(v161);
  v163 = (&v619 - v162);
  v736 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v164);
  sub_1000038E4();
  v731 = v165;
  sub_1000038CC();
  v735 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v734 = v166;
  __chkstk_darwin(v167);
  sub_1000037D8();
  v170 = v169 - v168;
  v171 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v172 = sub_100003810(v171);
  __chkstk_darwin(v172);
  sub_100003848();
  v663 = v173;
  sub_10000386C();
  __chkstk_darwin(v174);
  v176 = &v619 - v175;
  __chkstk_darwin(v177);
  v179 = &v619 - v178;
  v180 = type metadata accessor for Location();
  sub_1000037C4();
  v182 = v181;
  __chkstk_darwin(v183);
  sub_100003848();
  v683 = v184;
  sub_10000386C();
  __chkstk_darwin(v185);
  v187 = &v619 - v186;
  LocationModel.coalesceLocation.getter();
  v188 = sub_100016298();
  sub_1000038B4(v188, v189, v180);
  if (v214)
  {
    sub_1000180EC(v179, &qword_100CA65D8, &unk_100A3D9D0);
    v190 = v740;
    LocationModel.identifier.getter();
    v191 = LocationModel.id.getter();
    v193 = sub_1001467A8(v191, v192, v743);

    sub_1001469E8(v190, 0, v193 & 1, 0, v739);
    v194 = sub_100021744();
    return v196(v194, v195);
  }

  v632 = v155;
  v692 = v182;
  v197 = *(v182 + 32);
  v722 = v180;
  v197(v187, v179, v180);
  v198 = LocationModel.coalesceLocationID.getter();
  v737 = v163;
  v199 = v198;
  v201 = v200;
  v659 = v176;
  v631 = a2;
  LocationModel.location.getter();
  v202 = *(v744 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_logger);
  OSSignpostID.init(log:)();
  v203 = static os_signpost_type_t.begin.getter();
  v635 = sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v204 = swift_allocObject();
  v634 = xmmword_100A2C3F0;
  *(v204 + 16) = xmmword_100A2C3F0;
  v730 = v187;
  v205 = Location.name.getter();
  v207 = v206;
  *(v204 + 56) = &type metadata for String;
  v636 = sub_100035744();
  *(v204 + 64) = v636;
  *(v204 + 32) = v205;
  *(v204 + 40) = v207;
  sub_100037E14();
  v637 = v202;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v203, &_mh_execute_header, v202, "Weather:locationViewModelMake", 29, 2, v170, "location %{private}s");

  v208 = v738;
  v661 = v738 & 1;
  v209 = type metadata accessor for LocationInput(0);
  v210 = &v743[*(v209 + 64)];
  v211 = *(v210 + 2);
  v633 = v199;
  v212 = v199;
  v213 = v737;
  v638 = v201;
  sub_1000864C0(v212, v201, v211);
  sub_1000038B4(v213, 1, v736);
  v215 = v170;
  v216 = v208;
  if (v214)
  {
    v217 = &qword_100CA37B0;
    v218 = &unk_100A2D740;
    v219 = v213;
LABEL_10:
    sub_1000180EC(v219, v217, v218);
    static os_signpost_type_t.end.getter();
    v224 = sub_100036F0C();
    *(v224 + 16) = v634;
    v225 = v730;
    v226 = Location.name.getter();
    v227 = v636;
    *(v224 + 56) = &type metadata for String;
    *(v224 + 64) = v227;
    *(v224 + 32) = v226;
    *(v224 + 40) = v228;
    sub_100037E14();
    v229 = sub_100016574();
    os_signpost(_:dso:log:name:signpostID:_:_:)(v229, v230, v231, v232, v233, v234, v215, v235);

    v236 = v740;
    Location.identifier.getter();
    v237 = v661 == 0;
    sub_1000300A0();
    v241 = sub_1001467A8(v238, v239, v240);

    sub_1001469E8(v236, v237, v241 & 1, v216 & 1, v739);
    v242 = sub_100021744();
    v243(v242);
    (*(v734 + 8))(v215, v735);
    sub_1000180EC(v659, &qword_100CA65D8, &unk_100A3D9D0);
    v196 = *(v692 + 8);
    v194 = v225;
    v195 = v722;
    return v196(v194, v195);
  }

  v736 = v210;
  v220 = v731;
  sub_1001071AC(v213, v731, type metadata accessor for LocationWeatherDataState);
  v221 = v632;
  sub_1001A0D3C();
  sub_1000038B4(v221, 1, v733);
  if (v222)
  {
    sub_10001FAF0();
    sub_100105FE4(v220, v223);
    v217 = &qword_100CA3898;
    v218 = &qword_100A314D0;
    v219 = v221;
    goto LABEL_10;
  }

  v737 = v209;
  sub_10002CB38();
  v245 = v732;
  sub_1001071AC(v221, v732, v246);
  v247 = v723;
  sub_1001ACCC0();
  sub_1000038B4(v247, 1, v727);
  v249 = v744;
  if (v248)
  {
    sub_10001CFB4();
    sub_100105FE4(v245, v250);
    sub_10001FAF0();
    sub_100105FE4(v220, v251);
    v217 = &qword_100CCD850;
    v218 = &qword_100A6E590;
    v219 = v247;
    goto LABEL_10;
  }

  v252 = v247;
  v253 = v729;
  sub_1001071AC(v252, v729, type metadata accessor for PreprocessedWeatherData);
  v254 = v706;
  sub_1001A8724();
  v255 = sub_100016298();
  sub_1000038B4(v255, v256, v720);
  if (v257)
  {
    sub_10001CFB4();
    sub_100105FE4(v245, v258);
    sub_10001FAF0();
    sub_100105FE4(v220, v259);
    sub_1000233E4();
    sub_100105FE4(v253, v260);
    v217 = &qword_100CA74F8;
    v218 = &qword_100A32528;
    v219 = v254;
    goto LABEL_10;
  }

  v627 = v211;
  v622 = v215;

  sub_100020C28();
  sub_1001071AC(v254, v728, v261);
  v262 = v249[31];
  sub_1000161C0(v249 + 27, v249[30]);
  Location.kind.getter();
  v263 = Location.Identifier.Kind.rawValue.getter();
  v265 = v264;
  v266 = 1;
  v267 = Location.Identifier.Kind.rawValue.getter();
  if (v263 != v267 || v265 != v268)
  {
    v266 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v270 = v743;
  v271 = v743[1];
  v272 = *(v743 + 1);
  v273 = Location.id.getter();
  LOBYTE(v272) = sub_1001B10E0(v273, v274, v272);

  v275 = v270[v737[11]];
  v276 = *&v270[v737[9]] | (v270[v737[9] + 2] << 16);
  v277 = *(v262 + 16);
  v278 = &v270[v737[7]];
  v624 = v270[v737[12]];
  v625 = v275;
  v626 = v276;
  v279 = v277(v266 & 1, v271, v272 & 1, v278);
  v628 = objc_opt_self();
  v280 = [v628 currentDevice];
  v281 = [v280 userInterfaceIdiom];

  if (v281 != 1)
  {
    v630 = v279;
    Location.kind.getter();
    v285 = Location.Identifier.Kind.rawValue.getter();
    v287 = v286;
    v289 = v285 == Location.Identifier.Kind.rawValue.getter() && v287 == v288;
    v282 = v719;
    if (v289)
    {

      v284 = v743;
    }

    else
    {
      v290 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v284 = v743;
      if ((v290 & 1) == 0)
      {
        LODWORD(v706) = 0;
LABEL_33:
        v291 = v725;
        v283 = v737;
        goto LABEL_37;
      }
    }

    v283 = v737;
    LODWORD(v706) = v284[v737[13]];
    goto LABEL_36;
  }

  v282 = v719;
  if ((v279 & 1) == 0)
  {
    v630 = 0;
    LODWORD(v706) = 0;
    v284 = v743;
    goto LABEL_33;
  }

  LODWORD(v706) = 0;
  v283 = v737;
  v284 = v743;
  v630 = v743[v737[10]] == 2;
LABEL_36:
  v291 = v725;
LABEL_37:
  v292 = v726 + 16;
  v293 = &v284[v283[14]];
  v723 = *(v726 + 16);
  v723(v707, v293, v291);
  v294 = v249 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastViewModel;
  sub_10002401C(v249 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastViewModel, &v750);
  sub_100024D10(v294, 1, v282);
  v295 = v685;
  v632 = v294;
  v296 = v707;
  LODWORD(v638) = sub_1001AEAB8(v730);
  v297 = *(v726 + 8);
  v726 += 8;
  v633 = v297;
  v297(v296, v291);
  v298 = v284;
  v299 = *&v284[v737[22] + 8];
  v300 = v740;
  Location.identifier.getter();
  v301 = Location.Identifier.id.getter();
  sub_100113300(v301, v302, v299);

  v620 = *(v741 + 8);
  v621 = v741 + 8;
  v620(v300, v742);
  v303 = sub_100016298();
  v304 = v698;
  sub_1000038B4(v303, v305, v698);
  if (v214)
  {
    v306 = v709;
    WeatherDataModel.currentWeather.getter();
    CurrentWeather.condition.getter();
    (*(v724 + 8))(v306, v721);
    v307 = sub_100016298();
    sub_1000038B4(v307, v308, v304);
    v309 = v692;
    if (!v214)
    {
      sub_1000180EC(v295, &qword_100CA2CD8, &unk_100A2C420);
    }
  }

  else
  {
    (*(v708 + 32))(v715, v295, v304);
    v309 = v692;
  }

  v310 = *(v309 + 16);
  v685 = v309 + 16;
  v623 = v310;
  (v310)(v683, v730, v722);
  v311 = v737;
  v629 = v737[21];
  v707 = v292;
  v723(v705, &v298[v629], v725);
  v312 = v733;
  v313 = v298;
  v314 = v732;
  v740 = v732 + *(v733 + 24);
  WeatherDataModel.currentWeather.getter();
  (*(v708 + 16))(v686, v715, v304);
  sub_10000E7B0();
  sub_10001B350(v315, v316, v317, v304);
  ForegroundEffect.init(for:at:currentWeather:weatherCondition:)();
  v318 = *&v313[v311[26]];
  v319 = LocationModel.id.getter();
  LODWORD(v686) = sub_1001B1084(v319, v320, v318);

  sub_10001A080();
  v321 = v684;
  sub_10011145C(v314, v684, v322);
  sub_10000E7B0();
  sub_10001B350(v323, v324, v325, v312);
  v326 = v744 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastWeatherData;
  sub_10002401C(v744 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastWeatherData, &v749);
  v327 = *(v687 + 48);
  v328 = v689;
  sub_1000318A4();
  sub_1000302D8(v329, v330, v331, v332);
  v687 = v326;
  sub_1000318A4();
  v333 = v312;
  sub_1000302D8(v334, v335, v336, v337);
  p_vtable = (&OBJC_METACLASS____TtC7Weather35SunriseSunsetDetailViewModelFactory + 24);
  if (sub_100024D10(v328, 1, v312) == 1)
  {
    sub_1000180EC(v321, &qword_100CA3898, &qword_100A314D0);
    v339 = sub_100037318();
    sub_1000038B4(v339, v340, v312);
    v341 = v688;
    if (!v214)
    {
      goto LABEL_48;
    }

    sub_1000180EC(v328, &qword_100CA3898, &qword_100A314D0);
LABEL_50:
    v360 = p_vtable;
    sub_100024B5C();
    sub_10011145C(v728, v341, v361);
    sub_10000E7B0();
    v362 = v720;
    sub_10001B350(v363, v364, v365, v720);
    sub_10002401C(v744 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastNewsData, &v746);
    v328 = v656;
    v366 = *(v655 + 48);
    sub_1000318A4();
    sub_1000302D8(v367, v368, v369, v370);
    sub_1000318A4();
    sub_1000302D8(v371, v372, v373, v374);
    sub_1000038B4(v328, 1, v362);
    if (v214)
    {
      sub_1000180EC(v341, &qword_100CA74F8, &qword_100A32528);
      v375 = sub_100037318();
      sub_1000038B4(v375, v376, v362);
      v333 = v733;
      if (v214)
      {
        sub_1000180EC(v328, &qword_100CA74F8, &qword_100A32528);
LABEL_92:
        v555 = v652;
        sub_1000302D8(v632, v652, &qword_100CA4B78, &qword_100A2EE30);
        v556 = sub_10000C7F0();
        v557 = v719;
        sub_1000038B4(v556, v558, v719);
        if (!v214)
        {
          sub_100028C90();
          v559 = v650;
          sub_1001071AC(v555, v650, v560);
          if (v630 == *(v559 + v557[10]) && v706 == *(v559 + v557[11]) && *(v559 + v557[12]) == v638 && *(v559 + v557[18]) == *v743 && (static Date.== infix(_:_:)() & 1) != 0)
          {
            v468 = *(v646 + 48);
            v505 = v649;
            sub_1000318A4();
            sub_1000302D8(v561, v562, v563, v564);
            sub_1000318A4();
            sub_1000302D8(v565, v566, v567, v568);
            v503 = v648;
            sub_1000038B4(v505, 1, v648);
            if (v214)
            {
              sub_1000038B4(v468 + v505, 1, v503);
              if (v214)
              {
                sub_1000180EC(v649, &qword_100CA60E8, &unk_100A5A9F0);
                goto LABEL_113;
              }

              goto LABEL_111;
            }

            goto LABEL_108;
          }

          sub_10000CF70();
          sub_100105FE4(v559, v569);
          goto LABEL_106;
        }

        v346 = &qword_100CA4B78;
        v347 = &qword_100A2EE30;
        v382 = v555;
        goto LABEL_60;
      }
    }

    else
    {
      v377 = v653;
      sub_1000302D8(v328, v653, &qword_100CA74F8, &qword_100A32528);
      v378 = sub_100037318();
      sub_1000038B4(v378, v379, v362);
      if (!v380)
      {
        sub_100020C28();
        v543 = v328 + v366;
        v544 = v651;
        sub_1001071AC(v543, v651, v545);
        v546 = sub_1009D82EC(v377, v544);
        sub_100105FE4(v544, type metadata accessor for NewsDataModel);
        sub_1000300A0();
        sub_1000180EC(v547, v548, v549);
        v550 = sub_100004464();
        sub_100105FE4(v550, v551);
        sub_1000300A0();
        sub_1000180EC(v552, v553, v554);
        v333 = v733;
        if ((v546 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_92;
      }

      sub_1000180EC(v341, &qword_100CA74F8, &qword_100A32528);
      sub_10007515C();
      sub_100105FE4(v377, v381);
      v333 = v733;
    }

    v346 = &qword_100CA75C0;
    v347 = &unk_100A325E0;
    goto LABEL_59;
  }

  v342 = v658;
  sub_1000302D8(v328, v658, &qword_100CA3898, &qword_100A314D0);
  v343 = sub_100037318();
  sub_1000038B4(v343, v344, v312);
  v341 = v688;
  if (!v214)
  {
    sub_10002CB38();
    v348 = v328 + v327;
    v349 = v654;
    sub_1001071AC(v348, v654, v350);
    v351 = sub_100883064(v342, v349);
    sub_100105FE4(v349, type metadata accessor for WeatherData);
    sub_1000300A0();
    sub_1000180EC(v352, v353, v354);
    v355 = sub_100004464();
    v333 = v733;
    sub_100105FE4(v355, v356);
    sub_1000300A0();
    p_vtable = &OBJC_METACLASS____TtC7Weather35SunriseSunsetDetailViewModelFactory.vtable;
    sub_1000180EC(v357, v358, v359);
    if ((v351 & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_50;
  }

  sub_1000180EC(v321, &qword_100CA3898, &qword_100A314D0);
  sub_10001CFB4();
  sub_100105FE4(v342, v345);
LABEL_48:
  v346 = &qword_100CB4398;
  v347 = &unk_100A47700;
LABEL_59:
  v382 = v328;
LABEL_60:
  sub_1000180EC(v382, v346, v347);
  while (1)
  {
LABEL_61:
    sub_10001A080();
    v689 = v383;
    sub_10011145C(v732, v699, v384);
    sub_10000E7B0();
    sub_10001B350(v385, v386, v387, v333);
    swift_beginAccess();
    v388 = sub_100004464();
    sub_10053347C(v388, v389, v390, v391);
    swift_endAccess();
    sub_100024B5C();
    v688 = v392;
    v393 = v662;
    sub_10011145C(v728, v662, v394);
    sub_10000E7B0();
    sub_10001B350(v395, v396, v397, v720);
    v398 = OBJC_IVAR____TtC7Weather24LocationViewModelFactory_lastNewsData;
    v399 = v744;
    sub_100071E98();
    sub_10053347C(v393, v399 + v398, &qword_100CA74F8, &qword_100A32528);
    swift_endAccess();
    v400 = v664;
    v401 = v691;
    (*(v690 + 16))(v664, v729, v691);
    sub_10000E7B0();
    sub_10001B350(v402, v403, v404, v401);
    v405 = p_vtable[367];
    sub_100071E98();
    sub_10053347C(v400, v405 + v399, &qword_100CC2B20, &unk_100A6A1C0);
    swift_endAccess();
    sub_1001A1848(v730);
    WeatherDataModel.currentWeather.getter();
    v406 = v665;
    WeatherDataModel.dailyForecast.getter();
    CurrentWeather.date.getter();
    v407 = v666;
    Location.timeZone.getter();
    Forecast<>.todaysWeather(today:timeZone:)();
    (*(v667 + 8))(v407, v668);
    sub_10003A3E8();
    v408();
    v409 = *(v717 + 8);
    v717 += 8;
    v687 = v409;
    v409(v406, v702);
    sub_1000300A0();
    static LocationSearchEntity.makeFromLocation(_:name:)(v410, v411, v412);

    sub_1001A1DF8(v399, v713);
    v413 = v718;
    v414 = sub_100024350();
    v415 = v623;
    v623(v414);
    v416 = v669;
    sub_10011145C(v732, v413 + *(v669 + 20), v689);
    v417 = v416[6];
    v720 = type metadata accessor for PreprocessedWeatherData;
    sub_10011145C(v729, v413 + v417, type metadata accessor for PreprocessedWeatherData);
    sub_10011145C(v728, v413 + v416[7], v688);
    v418 = v743;
    v419 = *v743;
    v705 = v737[25];
    v420 = v416[10];
    v691 = *(v703 + 16);
    v421 = v704;
    (v691)(v413 + v420, &v743[v705], v704);
    LOBYTE(v407) = v661;
    *(v413 + v416[8]) = v661;
    *(v413 + v416[9]) = v419;
    v422 = v697;
    v423 = sub_100024350();
    v415(v423);
    v424 = v670;
    sub_10011145C(v732, v422 + *(v670 + 20), v689);
    sub_10011145C(v729, v422 + v424[6], v720);
    sub_10011145C(v728, v422 + v424[7], v688);
    (v691)(v422 + v424[12], &v418[v705], v421);
    v425 = v744;
    *(v422 + v424[8]) = v407;
    *(v422 + v424[9]) = v638;
    v426 = v424[10];
    LODWORD(v720) = v419;
    *(v422 + v426) = v419;
    *(v422 + v424[11]) = v706;
    sub_1000161C0(v425 + 37, v425[40]);
    Location.coordinate.getter();
    v427 = Location.name.getter();
    v428 = v671;
    sub_1001A34D0(v427, v429);
    v430 = v737;

    v431 = type metadata accessor for SavedLocation();
    LODWORD(v690) = sub_100024D10(v428, 1, v431);
    sub_1000180EC(v428, &qword_100CA6890, &qword_100A31680);
    v432 = v430[28];
    LODWORD(v689) = v418[v430[27]];
    v691 = &v418[v432];
    v433 = v673;
    sub_1000302D8(&v418[v432], v673, &qword_100CA65C8, &unk_100A31670);
    v434 = sub_10000C7F0();
    sub_1000038B4(v434, v435, v672);
    if (v214)
    {
      sub_1000180EC(v433, &qword_100CA65C8, &unk_100A31670);
      LODWORD(v705) = 0;
    }

    else
    {
      v436 = v657;
      sub_1001071AC(v433, v657, type metadata accessor for PreviewLocation);
      sub_1000161C0(v425 + 42, v425[45]);
      LODWORD(v705) = sub_100495F00(v436, *&v418[v430[29]]);
      sub_100105FE4(v436, type metadata accessor for PreviewLocation);
    }

    v437 = v710;
    v438 = v631;
    v439 = v730;
    Location.identifier.getter();
    v440 = v663;
    sub_1000302D8(v659, v663, &qword_100CA65D8, &unk_100A3D9D0);
    v441 = sub_10000C7F0();
    sub_1000038B4(v441, v442, v722);
    v443 = v732;
    if (v214)
    {
      sub_1000180EC(v440, &qword_100CA65D8, &unk_100A3D9D0);
      v446 = 1;
    }

    else
    {
      Location.identifier.getter();
      v444 = sub_100004464();
      v445(v444);
      v446 = 0;
    }

    v447 = 1;
    sub_10001B350(v437, v446, 1, v742);
    WeatherDataModel.currentWeather.getter();
    memcpy(__dst, (v729 + *(v727 + 60)), 0x70uLL);
    v685 = __dst[12];
    v688 = __dst[13];

    WeatherDataModel.dailyForecast.getter();
    LocationModel.kind.getter();
    v448 = Location.Identifier.Kind.rawValue.getter();
    v450 = v449;
    if (v448 != Location.Identifier.Kind.rawValue.getter() || v450 != v451)
    {
      v447 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v453 = v674;
    LocationModel.locationOfInterest.getter();
    sub_10001A080();
    v454 = v699;
    sub_10011145C(v443, v699, v455);
    LODWORD(v727) = 1;
    sub_10000E7B0();
    sub_10001B350(v456, v457, v458, v733);
    v459 = v675;
    sub_1001A38F4(v454, v675);
    sub_1000180EC(v454, &qword_100CA3898, &qword_100A314D0);
    LODWORD(v699) = v743[v737[23]];
    v460 = v447 & 1;
    v461 = v700;
    v462 = v701;
    v463 = v744;
    sub_1001A5A00(v700, __dst, v438, v439, v738 & 1, v460, v754, v459, v699);
    sub_100105FE4(v459, type metadata accessor for LocationCompositionState);
    sub_1000180EC(v453, &qword_100CA3588, &unk_100A4F350);
    (v687)(v462, v702);
    v464 = *(v724 + 8);
    v724 += 8;
    v738 = v464;
    v464(v461, v721);
    v465 = sub_100024350();
    v468 = sub_1001AF7D4(v465, v466, v467);
    sub_1000161C0(v463 + 12, v463[15]);
    v733 = sub_1009864D8(v718);
    Location.kind.getter();
    v469 = Location.Identifier.Kind.rawValue.getter();
    v471 = v470;
    if (v469 != Location.Identifier.Kind.rawValue.getter() || v471 != v472)
    {
      LODWORD(v727) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v474 = v676;
    sub_1000302D8(&v743[v737[17]], v676, &unk_100CE49F0, &unk_100A3AFA0);
    type metadata accessor for CurrentLocation();
    v475 = sub_10000C7F0();
    sub_1000038B4(v475, v476, v477);
    if (v214)
    {
      sub_1000180EC(v474, &unk_100CE49F0, &unk_100A3AFA0);
    }

    else
    {
      CurrentLocation.id.getter();
      sub_100105FE4(v474, &type metadata accessor for CurrentLocation);
    }

    LODWORD(v737) = v689 ^ 1;
    sub_100141E5C();
    v479 = v478;

    if (v699)
    {
      v480 = v677;
      LocationModel.locationOfInterest.getter();
    }

    else
    {
      v481 = type metadata accessor for LocationOfInterest();
      v480 = v677;
      sub_10001B350(v677, 1, 1, v481);
    }

    v482 = v743;
    v483 = v711;
    LODWORD(v743) = v690 == 1;
    v484 = v744;
    sub_10087258C(v730, v727 & 1, v624 == 1, v625 == 2, v713, v479 & 1, v626, v685, v714, v688, v480);

    sub_1000180EC(v480, &qword_100CA3588, &unk_100A4F350);
    type metadata accessor for LocationFooterViewModel(0);
    sub_10000E7B0();
    sub_10001B350(v485, v486, v487, v488);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    v736 = UnitManager.temperature.getter();

    v489 = v725;
    v723(v483, &v482[v629], v725);
    v490 = v693;
    sub_1000302D8(v716, v693, &qword_100CA60E8, &unk_100A5A9F0);
    v491 = v709;
    WeatherDataModel.currentWeather.getter();
    LODWORD(v740) = CurrentWeather.isDaylight.getter();
    v738(v491, v721);
    v755 = v751;
    v360 = *(&v752 + 1);
    v492 = v752;
    sub_1000161C0(v484 + 17, v484[20]);
    sub_100358150(&v755, v747);
    v744 = v492;

    v727 = v360;
    v493 = v489;

    v494 = v678;
    sub_100024350();
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    v495 = v679;
    AppConfiguration.locationsConfiguration.getter();
    (*(v703 + 8))(v494, v704);
    LOBYTE(v491) = LocationsConfiguration.shouldTrackComponentExposureEvents.getter();
    (*(v680 + 8))(v495, v681);
    v496 = v682;
    sub_1000302D8(v691, v682, &qword_100CA65C8, &unk_100A31670);
    v497 = v694;
    (*(v741 + 16))(v694, v712, v742);
    v498 = v719;
    v499 = v710;
    sub_1000302D8(v710, v497 + v719[5], &qword_100CADBA0, &qword_100A3D250);
    memcpy((v497 + v498[6]), v754, 0x9AuLL);
    *(v497 + v498[7]) = v468;
    *(v497 + v498[8]) = v733;
    sub_1000302D8(v714, v497 + v498[9], &qword_100CD8AB8, &qword_100A83DF0);
    *(v497 + v498[10]) = v630;
    *(v497 + v498[11]) = v706;
    *(v497 + v498[12]) = v638;
    v500 = v661;
    *(v497 + v498[13]) = v661 ^ 1;
    *(v497 + v498[14]) = 3;
    *(v497 + v498[15]) = v736;
    *(v497 + v498[16]) = v500 ^ 1;
    *(v497 + v498[17]) = v500;
    *(v497 + v498[18]) = v720;
    v723(v497 + v498[19], v711, v493);
    sub_1000302D8(v490, v497 + v498[20], &qword_100CA60E8, &unk_100A5A9F0);
    *(v497 + v498[21]) = (v740 & 1) == 0;
    v501 = v497 + v498[29];
    v502 = v752;
    *v501 = v751;
    *(v501 + 16) = v502;
    *(v501 + 32) = v753;
    *(v497 + v498[23]) = v491 & 1;
    *(v497 + v498[24]) = v686;
    *(v497 + v498[25]) = v743;
    *(v497 + v498[27]) = v705 & 1;
    *(v497 + v498[28]) = v737 & 1;
    sub_1000302D8(v496, v497 + v498[26], &qword_100CA65C8, &unk_100A31670);

    v503 = [v628 currentDevice];
    v504 = [v503 userInterfaceIdiom];

    if (!v504)
    {
      break;
    }

    v505 = 0;
    v748 = &_swiftEmptyDictionarySingleton;
    v506 = v468[2];
    v507 = v468 + 6;
    v508 = v718;
    while (1)
    {
      if (v506 == v505)
      {

        sub_1000180EC(v496, &qword_100CA65C8, &unk_100A31670);
        sub_1000180EC(v693, &qword_100CA60E8, &unk_100A5A9F0);
        sub_10003A3E8();
        v510();
        sub_1000180EC(v714, &qword_100CD8AB8, &qword_100A83DF0);
        sub_1000180EC(v710, &qword_100CADBA0, &qword_100A3D250);
        v620(v712, v742);
        v511 = v748;
        goto LABEL_90;
      }

      if (v505 >= v468[2])
      {
        break;
      }

      v509 = *(v507 - 1);
      v360 = *v507;
      v503 = *(v507 - 2);
      v747[0] = v505;
      v747[1] = v503;
      v747[2] = v509;
      v747[3] = v360;

      sub_1007C8094(&v748, v747);

      ++v505;
      v507 += 3;
    }

    __break(1u);
LABEL_108:
    sub_1000302D8(v505, v645, &qword_100CA60E8, &unk_100A5A9F0);
    sub_1000038B4(v468 + v505, 1, v503);
    if (v214)
    {
      (*(v643 + 8))(v645, v648);
LABEL_111:
      v570 = &qword_100CD8BE0;
      v571 = &qword_100A82B68;
      v572 = v649;
      goto LABEL_122;
    }

    v573 = v643;
    v574 = v649;
    v575 = v468 + v649;
    v576 = v640;
    v577 = v648;
    (*(v643 + 32))(v640, v575, v648);
    sub_10011515C(&qword_100CA6150, &type metadata accessor for ForegroundEffect, &protocol conformance descriptor for ForegroundEffect);
    v578 = v645;
    v579 = dispatch thunk of static Equatable.== infix(_:_:)();
    v580 = *(v573 + 8);
    v580(v576, v577);
    v580(v578, v577);
    sub_1000180EC(v574, &qword_100CA60E8, &unk_100A5A9F0);
    if ((v579 & 1) == 0)
    {
      goto LABEL_123;
    }

LABEL_113:
    sub_10002401C(v744 + *(v360 + 2936), &v745);
    v581 = v691;
    (*(v690 + 16))(v644, v729, v691);
    sub_10000E7B0();
    sub_10001B350(v582, v583, v584, v581);
    v585 = *(v641 + 48);
    v586 = v647;
    sub_1000318A4();
    sub_1000302D8(v587, v588, v589, v590);
    sub_1000318A4();
    sub_1000302D8(v591, v592, v593, v594);
    sub_1000038B4(v586, 1, v581);
    if (v214)
    {
      sub_1000180EC(v644, &qword_100CC2B20, &unk_100A6A1C0);
      sub_1000038B4(v647 + v585, 1, v691);
      if (!v214)
      {
        goto LABEL_121;
      }

      sub_1000180EC(v647, &qword_100CC2B20, &unk_100A6A1C0);
    }

    else
    {
      v595 = v647;
      sub_1000302D8(v647, v642, &qword_100CC2B20, &unk_100A6A1C0);
      sub_1000038B4(v595 + v585, 1, v691);
      if (v596)
      {
        sub_1000180EC(v644, &qword_100CC2B20, &unk_100A6A1C0);
        (*(v690 + 8))(v642, v691);
LABEL_121:
        v570 = &qword_100CCB488;
        v571 = &qword_100A6A528;
        v572 = v647;
LABEL_122:
        sub_1000180EC(v572, v570, v571);
        goto LABEL_123;
      }

      v598 = v690;
      v599 = v647;
      v600 = v639;
      v601 = v691;
      (*(v690 + 32))(v639, v647 + v585, v691);
      sub_10011515C(&qword_100CACE10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v602 = v642;
      v603 = dispatch thunk of static Equatable.== infix(_:_:)();
      v604 = *(v598 + 8);
      v604(v600, v601);
      sub_1000180EC(v644, &qword_100CC2B20, &unk_100A6A1C0);
      v604(v602, v601);
      sub_1000180EC(v599, &qword_100CC2B20, &unk_100A6A1C0);
      if ((v603 & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    if (*(v650 + v719[6] + 152) == v743[v737[23]])
    {
      v605 = *(v650 + v719[24]);
      if (v605 == 25)
      {
        if (v686 == 25)
        {
          goto LABEL_137;
        }
      }

      else if (v686 != 25)
      {
        v606 = sub_10030D368(v605);
        v608 = v607;
        if (v606 == sub_10030D368(v686) && v608 == v609)
        {

LABEL_137:
          sub_1000180EC(v716, &qword_100CA60E8, &unk_100A5A9F0);
          v612 = sub_10003BFE0();
          v613(v612);
          sub_10007515C();
          sub_100105FE4(v728, v614);
          sub_10001CFB4();
          sub_100105FE4(v732, v615);
          sub_10001FAF0();
          sub_100105FE4(v731, v616);
          (*(v734 + 8))(v622, v735);
          sub_1000180EC(v659, &qword_100CA65D8, &unk_100A3D9D0);
          (*(v692 + 8))(v730, v722);
          sub_1000233E4();
          sub_100105FE4(v729, v617);
          sub_100028C90();
          return sub_1001071AC(v650, v739, v618);
        }

        v611 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v611)
        {
          goto LABEL_137;
        }
      }
    }

LABEL_123:
    sub_10000CF70();
    sub_100105FE4(v650, v597);
    v333 = v733;
LABEL_106:
    p_vtable = v360;
  }

  v511 = Dictionary.init(dictionaryLiteral:)();
  sub_1000180EC(v496, &qword_100CA65C8, &unk_100A31670);
  sub_1000180EC(v490, &qword_100CA60E8, &unk_100A5A9F0);
  sub_10003A3E8();
  v512();
  sub_1000180EC(v714, &qword_100CD8AB8, &qword_100A83DF0);
  sub_1000180EC(v499, &qword_100CADBA0, &qword_100A3D250);
  v620(v712, v742);
  v508 = v718;
LABEL_90:
  v513 = v719;
  *(v694 + v719[22]) = v511;
  sub_100028C90();
  v514 = v739;
  sub_1001071AC(v515, v739, v516);
  sub_10011145C(v514, v660, type metadata accessor for LocationViewModel);
  sub_10000E7B0();
  sub_10001B350(v517, v518, v519, v513);
  swift_beginAccess();
  v520 = sub_100004464();
  sub_10053347C(v520, v521, v522, v523);
  swift_endAccess();
  static os_signpost_type_t.end.getter();
  v524 = sub_100036F0C();
  *(v524 + 16) = v634;
  v525 = v730;
  v526 = Location.name.getter();
  v527 = v636;
  *(v524 + 56) = &type metadata for String;
  *(v524 + 64) = v527;
  *(v524 + 32) = v526;
  *(v524 + 40) = v528;
  sub_100037E14();
  v529 = sub_100016574();
  v530 = v622;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v529, v531, v532, v533, v534, v535, v622, v536);

  sub_1002ED110(&v755);

  sub_100105FE4(v697, type metadata accessor for LocationViewConfigurationInputs);
  sub_100105FE4(v508, type metadata accessor for LocationContentState);
  sub_100105FE4(v713, type metadata accessor for LearnMoreAttributorViewModel);
  sub_1000180EC(v696, &qword_100CAB9B0, &qword_100A3A820);
  v738(v695, v721);
  sub_1000180EC(v716, &qword_100CA60E8, &unk_100A5A9F0);
  v537 = sub_10003BFE0();
  v538(v537);
  sub_10007515C();
  sub_100105FE4(v728, v539);
  sub_10001CFB4();
  sub_100105FE4(v732, v540);
  sub_10001FAF0();
  sub_100105FE4(v731, v541);
  (*(v734 + 8))(v530, v735);
  sub_1000180EC(v659, &qword_100CA65D8, &unk_100A3D9D0);
  (*(v692 + 8))(v525, v722);
  sub_1000233E4();
  return sub_100105FE4(v729, v542);
}

uint64_t type metadata accessor for LocationCompositionState(uint64_t a1)
{
  result = qword_100CE8260;
  if (!qword_100CE8260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001463F8(uint64_t a1)
{
  sub_10014646C(319);
  if (v1 <= 0x3F)
  {
    sub_100961118(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10014646C(uint64_t a1)
{
  if (!qword_100CE8270)
  {
    sub_10022E824(&qword_100CE8278, &qword_100A9BFC0);
    sub_10022E824(&qword_100CA3588, &unk_100A4F350);
    sub_10022E824(&qword_100CE8280, &qword_100A9BFC8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CE8270);
    }
  }
}

uint64_t type metadata accessor for LocationViewConfigurationInputs(uint64_t a1)
{
  result = qword_100CBCAC8;
  if (!qword_100CBCAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100146588(uint64_t a1)
{
  result = type metadata accessor for Location();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WeatherData(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PreprocessedWeatherData(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for NewsDataModel(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for AppConfiguration();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for LocationContentState(uint64_t a1)
{
  result = qword_100CE9048;
  if (!qword_100CE9048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001466C4(uint64_t a1)
{
  result = type metadata accessor for Location();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WeatherData(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PreprocessedWeatherData(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for NewsDataModel(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for AppConfiguration();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001467A8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = *&a3[*(type metadata accessor for LocationInput(0) + 64) + 16];
  if (*(v13 + 16) && (v14 = sub_100031B34(), (v15 & 1) != 0))
  {
    v16 = v14;
    v17 = *(v13 + 56);
    v18 = type metadata accessor for LocationWeatherDataState(0);
    sub_10011145C(v17 + *(*(v18 - 8) + 72) * v16, v12, type metadata accessor for LocationWeatherDataState);
    v19 = v12;
    v20 = 0;
  }

  else
  {
    v18 = type metadata accessor for LocationWeatherDataState(0);
    v19 = v12;
    v20 = 1;
  }

  sub_10001B350(v19, v20, 1, v18);
  sub_1000302D8(v12, v9, &qword_100CA37B0, &unk_100A2D740);
  type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v9, 1, v18) == 1)
  {
    v21 = 0;
  }

  else
  {
    sub_1000302D8(v9, v6, &qword_100CA37B0, &unk_100A2D740);
    v21 = swift_getEnumCaseMultiPayload() == 2;
    sub_100105FE4(v6, type metadata accessor for LocationWeatherDataState);
  }

  sub_1000180EC(v9, &qword_100CA37B0, &unk_100A2D740);
  sub_1000180EC(v12, &qword_100CA37B0, &unk_100A2D740);
  return v21 & *a3;
}

uint64_t sub_1001469E8@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v71 = a4;
  v69 = a2;
  v8 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v75 = v10;
  sub_1000038CC();
  v68 = type metadata accessor for Location();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  v17 = sub_10022C350(&qword_100CA60E8, &unk_100A5A9F0);
  sub_100003810(v17);
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v79 = v19;
  sub_1000038CC();
  type metadata accessor for Date();
  sub_1000037C4();
  v73 = v21;
  v74 = v20;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v78 = v23 - v22;
  v24 = sub_10022C350(&qword_100CD8AB8, &qword_100A83DF0);
  sub_100003810(v24);
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v63 - v26;
  v28 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_100003810(v28);
  sub_100003828();
  __chkstk_darwin(v29);
  v31 = &v63 - v30;
  v32 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v34 = v33;
  __chkstk_darwin(v35);
  sub_1000037D8();
  v70 = v34;
  v36 = *(v34 + 16);
  v76 = v38 - v37;
  v36();
  (v36)(v31, a1, v32);
  sub_10001B350(v31, 0, 1, v32);
  v65 = Location.Identifier.name.getter();
  v64 = v39;
  v40 = type metadata accessor for LocationFooterViewModel(0);
  v77 = v27;
  sub_10001B350(v27, 1, 1, v40);
  v41 = 2;
  v72 = a3;
  if ((a3 & 1) == 0)
  {
    v42 = Location.Identifier.name.getter();
    v44 = v43;

    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = v42 & 0xFFFFFFFFFFFFLL;
    }

    v41 = v45 != 0;
  }

  v67 = v41;
  v66 = [objc_opt_self() fahrenheit];
  v46 = v78;
  static WeatherClock.date.getter();
  v47 = type metadata accessor for ForegroundEffect();
  v48 = v79;
  sub_10001B350(v79, 1, 1, v47);
  static Location.current.getter();
  static LocationSearchEntity.makeFromLocation(_:name:)(0, 0, v83);
  (*(v12 + 8))(v16, v68);
  v49 = type metadata accessor for PreviewLocation(0);
  v50 = v75;
  sub_10001B350(v75, 1, 1, v49);
  (v36)(a5, v76, v32);
  v51 = type metadata accessor for LocationViewModel(0);
  sub_100035AD0(v31, a5 + v51[5], &qword_100CADBA0, &qword_100A3D250);
  v52 = a5 + v51[6];
  v53 = v64;
  *v52 = v65;
  *(v52 + 8) = v53;
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  *(v52 + 16) = 0;
  *(v52 + 40) = 0x80;
  *(v52 + 41) = *v82;
  *(v52 + 44) = *&v82[3];
  *(v52 + 48) = 0;
  *(v52 + 56) = 0xE000000000000000;
  *(v52 + 64) = 11565;
  *(v52 + 72) = 0xE200000000000000;
  *(v52 + 80) = 0;
  *(v52 + 88) = 0;
  *(v52 + 96) = 0;
  *(v52 + 104) = 0xE000000000000000;
  *(v52 + 112) = 0;
  *(v52 + 120) = 0xE000000000000000;
  *(v52 + 128) = 0;
  *(v52 + 130) = 0;
  *(v52 + 131) = v80;
  *(v52 + 135) = v81;
  *(v52 + 136) = 0;
  *(v52 + 144) = 0xE000000000000000;
  *(v52 + 152) = 0;
  *(a5 + v51[7]) = _swiftEmptyArrayStorage;
  *(a5 + v51[8]) = 0xC000000000000004;
  sub_100035AD0(v77, a5 + v51[9], &qword_100CD8AB8, &qword_100A83DF0);
  *(a5 + v51[10]) = 0;
  *(a5 + v51[11]) = 0;
  *(a5 + v51[12]) = 2;
  *(a5 + v51[13]) = v69 & 1;
  *(a5 + v51[14]) = v67;
  *(a5 + v51[15]) = v66;
  *(a5 + v51[16]) = 1;
  *(a5 + v51[17]) = v71 & 1;
  *(a5 + v51[18]) = v72 & 1;
  v54 = v73;
  v55 = v46;
  v56 = v74;
  (*(v73 + 16))(a5 + v51[19], v55, v74);
  sub_100035AD0(v48, a5 + v51[20], &qword_100CA60E8, &unk_100A5A9F0);
  *(a5 + v51[21]) = 0;
  v57 = a5 + v51[29];
  v58 = v83[1];
  *v57 = v83[0];
  *(v57 + 16) = v58;
  *(v57 + 32) = v84;
  *(a5 + v51[23]) = 1;
  *(a5 + v51[24]) = 25;
  *(a5 + v51[25]) = 0;
  *(a5 + v51[27]) = 0;
  *(a5 + v51[28]) = 0;
  sub_100035AD0(v50, a5 + v51[26], &qword_100CA65C8, &unk_100A31670);
  v59 = [objc_opt_self() currentDevice];
  v60 = [v59 userInterfaceIdiom];

  if (v60)
  {
    v61 = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    v61 = Dictionary.init(dictionaryLiteral:)();
  }

  sub_1000180EC(v50, &qword_100CA65C8, &unk_100A31670);
  sub_1000180EC(v79, &qword_100CA60E8, &unk_100A5A9F0);
  (*(v54 + 8))(v78, v56);
  sub_1000180EC(v77, &qword_100CD8AB8, &qword_100A83DF0);
  sub_1000180EC(v31, &qword_100CADBA0, &qword_100A3D250);
  result = (*(v70 + 8))(v76, v32);
  *(a5 + v51[22]) = v61;
  return result;
}

uint64_t sub_100147114(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    type metadata accessor for LearnMoreAttributorViewModel(0);
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[9];
    }

    else
    {
      sub_10022C350(&qword_100CA3588, &unk_100A4F350);
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[11];
      }

      else
      {
        v10 = sub_10022C350(&qword_100CB4B98, &qword_100A48100);
        v11 = a4[14];
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_100147244(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

void static LocationSearchEntity.makeFromLocation(_:name:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v51 = a3;
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_100022E2C();
  v7 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v49 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v49 - v13;
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    a1 = Location.name.getter();
    v15 = v16;
  }

  sub_10000C70C(0, &qword_100CADA18, CLPlacemark_ptr);

  Location.coordinate.getter();
  v18 = v17;
  Location.coordinate.getter();
  v20 = [objc_allocWithZone(CLLocation) initWithLatitude:v18 longitude:v19];

  v52 = a1;
  v50 = sub_1001476E4(v20, a1, v15, 0);
  Location.identifier.getter();
  v21 = Location.Identifier.id.getter();
  v23 = v22;
  v24 = *(v9 + 8);
  v24(v14, v7);
  v26 = v21 == static Location.currentLocationID.getter() && v23 == v25;
  v27 = v15;
  if (v26)
  {

    goto LABEL_11;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
LABEL_11:
    v41 = static Location.currentLocationID.getter();
    v42 = v43;
    goto LABEL_12;
  }

  v29 = v49;
  Location.identifier.getter();
  v30 = Location.Identifier.id.getter();
  v32 = v31;
  v24(v29, v7);
  v57 = v30;
  v58 = v32;

  v33._countAndFlagsBits = 58;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);

  v35 = v57;
  v34 = v58;
  v57 = Location.name.getter();
  v58 = v36;
  v55 = 58;
  v56 = 0xE100000000000000;
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_10002D5A4();
  sub_100008AC8();
  v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v39 = v38;

  v57 = v35;
  v58 = v34;

  v40._countAndFlagsBits = v37;
  v40._object = v39;
  String.append(_:)(v40);

  v41 = v57;
  v42 = v58;
LABEL_12:
  sub_10022C350(&qword_100CA2DA8, &unk_100A6BEF0);
  sub_100004698();
  v44 = EntityProperty<>.init(title:)();
  sub_10022C350(&qword_100CA2DB0, &unk_100A2C500);

  v45 = sub_10001C828();
  sub_10002880C(v45);
  v46 = EntityProperty<>.init(title:)();
  v57 = v52;
  v58 = v27;

  EntityProperty.wrappedValue.setter();
  v57 = v50;
  v47 = v50;
  EntityProperty.wrappedValue.setter();

  v48 = v51;
  *v51 = v41;
  v48[1] = v42;
  v48[2] = v44;
  v48[3] = v46;
  *(v48 + 32) = 0;
}

id sub_1001476E4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() placemarkWithLocation:a1 name:v6 postalAddress:a4];

  return v7;
}

uint64_t sub_100147794(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    type metadata accessor for LearnMoreAttributorViewModel(0);
    sub_100003928();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[9];
    }

    else
    {
      sub_10022C350(&qword_100CA3588, &unk_100A4F350);
      sub_100003928();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[11];
      }

      else
      {
        v11 = sub_10022C350(&qword_100CB4B98, &qword_100A48100);
        v12 = a3[14];
      }
    }

    return sub_100024D10(a1 + v12, a2, v11);
  }
}

uint64_t sub_1001478D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10014797C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1000038D8();
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_6:

    return sub_100024D10(v9, a2, v8);
  }

  sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_100003928();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_5:
    v9 = v3 + v12;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_10022C350(&qword_100CD8AB8, &qword_100A83DF0);
    sub_100003928();
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v12 = a3[9];
    }

    else
    {
      type metadata accessor for Date();
      sub_100003928();
      if (*(v18 + 84) == a2)
      {
        v8 = v17;
        v12 = a3[19];
      }

      else
      {
        sub_10022C350(&qword_100CA60E8, &unk_100A5A9F0);
        sub_100003928();
        if (*(v20 + 84) == a2)
        {
          v8 = v19;
          v12 = a3[20];
        }

        else
        {
          v8 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
          v12 = a3[26];
        }
      }
    }

    goto LABEL_5;
  }

  v14 = *(v3 + a3[6] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100147B78(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100147B98(void *a1)
{
  v1 = (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  if (v1 <= 0x18)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 25;
  }
}

uint64_t sub_100147BBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100147C14(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100147C68()
{
  v0 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocationViewModel(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140210();
  v5 = &v4[*(v2 + 32)];
  v6 = *(v5 + 2);
  v7 = *(v5 + 3);
  v8 = *(v5 + 4);
  v9 = v5[40];
  sub_1001480C8(v6, v7, v8, v5[40]);
  sub_100147C14(v4, type metadata accessor for LocationViewModel);
  if (v9 >> 6)
  {
    if (v9 >> 6 == 1)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
      v12 = LocalizedStringKey.init(stringInterpolation:)();
      if (v9)
      {
        v16 = Text.init(_:tableName:bundle:comment:)(v12, v13, v14 & 1, v15, 0, 0, 0, 0, 0, 256);
        v18 = v17;
        v20 = v19;
        v21 = static Text.+ infix(_:_:)();
        v61 = v22;
        v62 = v21;
        v59 = v23;
        v63 = v24;
        sub_10010CD64(v16, v18, v20 & 1);

        LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v25._countAndFlagsBits = 0;
        v25._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
        v26._countAndFlagsBits = v7;
        v26._object = v8;
        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v26);

        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v27);
        v28 = LocalizedStringKey.init(stringInterpolation:)();
        LOWORD(v56) = 256;
        v32 = Text.init(_:tableName:bundle:comment:)(v28, v30, v29 & 1, v31, 0, 0, 0, 0, 0, v56);
        v34 = v33;
        LOBYTE(v18) = v35;
        v36 = v62;
        v60 = v6;
        v37 = v61;
        v38 = static Text.+ infix(_:_:)();
        sub_10010CD64(v32, v34, v18 & 1);

        sub_10010CD64(v36, v37, v59 & 1);
      }

      else
      {
        v61 = Text.init(_:tableName:bundle:comment:)(v12, v13, v14 & 1, v15, 0, 0, 0, 0, 0, 256);
        v62 = v39;
        LODWORD(v60) = v40;
        v63 = v41;
        LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v42._countAndFlagsBits = 0;
        v42._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v42);
        v43._countAndFlagsBits = v7;
        v43._object = v8;
        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v43);

        v44._countAndFlagsBits = 0;
        v44._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v44);
        v45 = LocalizedStringKey.init(stringInterpolation:)();
        LOWORD(v57) = 256;
        v49 = Text.init(_:tableName:bundle:comment:)(v45, v47, v46 & 1, v48, 0, 0, 0, 0, 0, v57);
        v51 = v50;
        v53 = v52;
        v54 = v61;
        v38 = static Text.+ infix(_:_:)();
        sub_10010CD64(v49, v51, v53 & 1);

        sub_10010CD64(v54, v62, v60 & 1);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v64 = v6;
    v65 = v7;
    sub_10002D5A4();
    return Text.init<A>(_:)();
  }

  return v38;
}

void sub_1001480C8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >> 6)
  {
    if (a4 >> 6 != 1)
    {
      return;
    }
  }
}

uint64_t sub_100148118(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10010CD54(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10014815C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v75 = a8;
  LODWORD(v98) = a7;
  v100 = a5;
  v101 = a6;
  v81 = a4;
  v82 = a3;
  v74 = a1;
  v99 = a9;
  v76 = a10;
  v77 = a11;
  v78 = a12;
  v79 = a13;
  v17 = type metadata accessor for ScrollIndicatorVisibility();
  v96 = *(v17 - 8);
  v97 = v17;
  __chkstk_darwin(v17);
  v84 = &v72[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = sub_10022C350(&qword_100CD9748, &qword_100A83AE8);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v83 = &v72[-v19];
  v20 = type metadata accessor for LocationContentView(0);
  v80 = *(v20 - 8);
  v21 = *(v80 + 64);
  __chkstk_darwin(v20 - 8);
  v92 = sub_10022C350(&qword_100CD97D0, &qword_100A83BB0);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v72[-v22];
  v88 = sub_10022C350(&qword_100CD9740, &qword_100A83AE0);
  __chkstk_darwin(v88);
  v89 = &v72[-v23];
  v87 = sub_10022C350(&qword_100CD9730, &qword_100A83AD8);
  __chkstk_darwin(v87);
  v86 = &v72[-v24];
  v85 = sub_10022C350(&qword_100CD9720, &qword_100A83AD0);
  __chkstk_darwin(v85);
  v95 = &v72[-v25];
  v26 = v82 & 1;
  v73 = v82 & 1;
  v82 = v98 & 1;
  v71 = a8;
  v27 = a1;
  v28 = a2;
  v29 = a2;
  v30 = v81;
  v31 = v100;
  v32 = sub_100148CFC(v13, v27, v29, v26, v81, v100, v101, v82, v71, a10, a11, a12, a13);
  v98 = v13;
  v33 = &v72[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001495C0(v13, v33);
  v34 = (*(v80 + 80) + 16) & ~*(v80 + 80);
  v35 = (v21 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 39) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 39) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 39) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_100149618(v33, v39 + v34);
  v40 = v39 + v35;
  v41 = v74;
  *v40 = v74;
  *(v40 + 8) = v28;
  v42 = v73;
  *(v40 + 16) = v73;
  *(v40 + 24) = v30;
  v43 = v39 + v36;
  v44 = v101;
  *v43 = v31;
  *(v43 + 8) = v44;
  LOBYTE(v31) = v82;
  *(v43 + 16) = v82;
  *(v43 + 24) = v75;
  v45 = (v39 + v37);
  v46 = v76;
  v47 = v77;
  *v45 = v76;
  v45[1] = v47;
  LOBYTE(v34) = v78;
  v48 = v79;
  v45[2] = v78;
  v45[3] = v48;
  *(v39 + v38) = v32;
  v102 = sub_1007E8198;
  v103 = v39;
  v49 = v83;
  sub_10010CD54(v41, v28, v42);

  sub_10010CD54(v100, v44, v31);

  sub_100148118(v46, v47, v34, v48);
  static Axis.Set.vertical.getter();
  sub_10022C350(&qword_100CD97D8, &unk_100A83BB8);
  sub_100006F64(&qword_100CD97E0, &qword_100CD97D8, &unk_100A83BB8, &protocol conformance descriptor for VStack<A>);
  ScrollView.init(_:showsIndicators:content:)();
  v50 = v84;
  static ScrollIndicatorVisibility.never.getter();
  sub_10022C350(&qword_100CB59A8, &qword_100A4D640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v47) = static Axis.Set.vertical.getter();
  *(inited + 32) = v47;
  v52 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v52;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v47)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v52)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_100006F64(&qword_100CD9750, &qword_100CD9748, &qword_100A83AE8, &protocol conformance descriptor for ScrollView<A>);
  v53 = v90;
  v54 = v94;
  View.scrollIndicators(_:axes:)();

  (*(v96 + 8))(v50, v97);
  (*(v93 + 8))(v49, v54);
  LOBYTE(v54) = static Edge.Set.top.getter();
  KeyPath = swift_getKeyPath();
  v56 = v89;
  (*(v91 + 32))(v89, v53, v92);
  v57 = v56 + *(v88 + 36);
  *v57 = v54;
  *(v57 + 8) = KeyPath;
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  *(v57 + 32) = 0;
  *(v57 + 40) = 0;
  v58 = v86;
  sub_10011C0F0(v56, v86, &qword_100CD9740, &qword_100A83AE0);
  *&v58[*(v87 + 36)] = 0;
  v59 = v95;
  sub_10011C0F0(v58, v95, &qword_100CD9730, &qword_100A83AD8);
  v60 = &v59[*(v85 + 36)];
  *v60 = 0xD000000000000012;
  v60[1] = 0x8000000100ABBD00;
  v61 = static Alignment.center.getter();
  v63 = v62;
  v64 = sub_10022C350(&qword_100CD96D8, &qword_100A839E8);
  v65 = v99;
  v66 = v99 + *(v64 + 36);
  sub_100140210();
  v67 = (v66 + *(type metadata accessor for LocationViewAppEntityView(0) + 20));

  sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
  sub_100006F64(&qword_100CA4B68, &qword_100CA4B60, &qword_100A2EE20, asc_100AA1480);
  *v67 = ObservedObject.init(wrappedValue:)();
  v67[1] = v68;
  v69 = (v66 + *(sub_10022C350(&qword_100CD9760, &qword_100A83B00) + 36));
  *v69 = v61;
  v69[1] = v63;
  return sub_10011C0F0(v59, v65, &qword_100CD9720, &qword_100A83AD0);
}

uint64_t sub_100148AAC()
{
  sub_10000C778();
  type metadata accessor for LocationContentView(0);
  sub_100003A0C();
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1 + v4;

  swift_unknownObjectRelease();

  sub_100006F14((v6 + 56));
  sub_100006F14((v6 + 96));

  sub_1000EBD74(*(v6 + 144), *(v6 + 152));
  v7 = v6 + v0[13];
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(type metadata accessor for DisplayMetrics(0) + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v9 + 8))(v7 + v8);
  }

  else
  {
  }

  sub_100028448(v0[14]);
  v10 = v0[15];
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v11 + 8))(v6 + v10);
  }

  else
  {
  }

  sub_100028448(v0[16]);
  sub_100028448(v0[17]);

  v12 = v0[19];
  type metadata accessor for Text.Measurements();
  sub_100003D98();
  (*(v13 + 8))(v6 + v12);
  sub_1000D3FE0();
  sub_1000D3FE0();
  if (*(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 24))
  {
    sub_1000D3FE0();
  }

  sub_10000536C();

  return swift_deallocObject();
}

double sub_100148CFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v60 = a8;
  v61 = a6;
  v62 = a7;
  v66 = a5;
  v70 = a13;
  v59 = a9;
  v14 = sub_10022C350(&qword_100CA3D60, &unk_100A2DDD0);
  __chkstk_darwin(v14 - 8);
  v68 = &v57 - v15;
  v16 = sub_10022C350(&qword_100CA3D68, &unk_100A4AD10);
  __chkstk_darwin(v16 - 8);
  v69 = &v57 - v17;
  v71 = type metadata accessor for Text.Measurements.Context();
  v63 = *(v71 - 8);
  __chkstk_darwin(v71);
  v58 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EnvironmentValues();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LocationContentView(0);
  v24 = *(v23 + 56);
  v57 = a1;
  v25 = a1 + v24;
  v26 = *v25;
  if (*(v25 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v26, 0);
    (*(v20 + 8))(v22, v19);
    LOBYTE(v26) = v72;
  }

  v67 = *(v23 + 76);
  sub_100149314(v26 & 1);
  v28 = Text.font(_:)();
  v30 = v29;
  v32 = v31;

  v65 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v69, 1, 1, v65);
  v64 = type metadata accessor for Text.Suffix();
  v33 = v68;
  sub_10001B350(v68, 1, 1, v64);
  v34 = v58;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v36 = v35;
  sub_10010CD64(v28, v30, v32 & 1);

  v66 = *(v63 + 8);
  v66(v34, v71);
  static Font.largeTitle.getter();
  v37 = Text.font(_:)();
  v39 = v38;
  LOBYTE(v28) = v40;
  v41 = v33;
  v42 = v69;

  sub_10001B350(v42, 1, 1, v65);
  sub_10001B350(v41, 1, 1, v64);
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v44 = v43;
  v45 = v37;
  v46 = v71;
  sub_10010CD64(v45, v39, v28 & 1);

  v66(v34, v46);
  v47 = v36 + v44 + sub_1001494E4();
  v48 = v47 + sub_100149554();
  if (v70)
  {
    v62 = a11;
    v63 = a12;
    sub_10010CD54(a10, a11, a12 & 1);

    static Font.headline.getter();
    Font.smallCaps()();

    v49 = Text.font(_:)();
    v51 = v50;
    v53 = v52;

    sub_10001B350(v42, 1, 1, v65);
    sub_10001B350(v68, 1, 1, v64);
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    Text.Measurements.size(of:in:context:)();
    v55 = v54;
    sub_10010CD64(v49, v51, v53 & 1);

    sub_10010CD64(a10, v62, v63 & 1);

    v66(v34, v71);
    return v48 + v55;
  }

  return v48;
}

uint64_t sub_100149314(char a1)
{
  v2 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v10 = v9;
  v12.n128_f64[0] = __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &enum case for Font.TextStyle.body(_:);
  if ((a1 & 1) == 0)
  {
    v15 = &enum case for Font.TextStyle.title3(_:);
  }

  (*(v10 + 104))(v14, *v15, v8, v12);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v10 + 8))(v14, v8);
  (*(v4 + 104))(v7, enum case for Font.Leading.tight(_:), v2);
  v16 = Font.leading(_:)();

  (*(v4 + 8))(v7, v2);
  return v16;
}

double sub_1001494E4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 0.0;
  if (!v1)
  {
    result = 12.0;
  }

  if (v1 == 5)
  {
    return 20.0;
  }

  return result;
}

double sub_100149554()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 0.0;
  if (v1 <= 5)
  {
    return dbl_100A57C28[v1];
  }

  return result;
}

uint64_t sub_1001495C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100149618(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100149670()
{
  v0 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  sub_100007074(v0, qword_100CD9400);
  sub_10000703C(v0, qword_100CD9400);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.locationAnimationKind.getter();

  SettingReader.read<A>(_:)();
}

uint64_t sub_100149718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  a3(0);
  sub_10014986C(a4, a5, a6);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v15 == v13 && v16 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100013BC0(v15, v9, v13);
  }

  return v11 & 1;
}

uint64_t sub_10014982C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for Settings.TappableModulesTipStore();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10014986C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1001498B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v35 = a2;
  v2 = type metadata accessor for LocationViewModel(0);
  __chkstk_darwin(v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2818 != -1)
  {
    swift_once();
  }

  v15 = sub_10000703C(v11, qword_100CD9400);
  (*(v12 + 104))(v14, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.vfx(_:), v11);
  LOBYTE(v15) = sub_1001497E4(v15, v14);
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = v34;

    sub_100140210();
    v17 = v8[6];
    v18 = type metadata accessor for Location.Identifier();
    (*(*(v18 - 8) + 16))(&v10[v17], v7, v18);
    sub_100147C14(v7, type metadata accessor for LocationViewModel);
    sub_100140210();
    v19 = v4[*(v2 + 68)];
    sub_100147C14(v4, type metadata accessor for LocationViewModel);
    *&v10[v8[10]] = swift_getKeyPath();
    sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for LocationViewCollisionOptions(0);
    sub_10008152C(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions, byte_100A95518);

    v20 = EnvironmentObject.init()();
    v22 = v21;
    KeyPath = swift_getKeyPath();
    v39 = 0;
    *v10 = KeyPath;
    v10[72] = 0;
    *(v10 + 10) = v16;
    v10[v8[7]] = v19;
    v24 = &v10[v8[8]];
    sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
    sub_100006F64(&qword_100CA4B68, &qword_100CA4B60, &qword_100A2EE20, asc_100AA1480);
    *v24 = ObservedObject.init(wrappedValue:)();
    v24[1] = v25;
    v26 = &v10[v8[9]];
    type metadata accessor for LocationViewCollisionOptionsUpdatingViewState(0);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    ObservationRegistrar.init()();
    v36 = v27;
    State.init(wrappedValue:)();
    v28 = v38;
    *v26 = v37;
    *(v26 + 1) = v28;
    v29 = &v10[v8[11]];
    *v29 = v20;
    v29[1] = v22;
    v30 = v35;
    sub_100149618(v10, v35);
    v31 = v30;
    v32 = 0;
  }

  else
  {
    v31 = v35;
    v32 = 1;
  }

  return sub_10001B350(v31, v32, 1, v8);
}

uint64_t sub_100149D40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 80) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Location.Identifier();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
      v10 = *(a4 + 40);
    }

    return sub_10001B350(v5 + v10, a2, a2, v9);
  }

  return result;
}

unint64_t sub_100149E14()
{
  result = qword_100CD98A8;
  if (!qword_100CD98A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD98A0, &qword_100A83D18);
    v4[0] = sub_100149ECC();
    v4[1] = sub_100006F64(&qword_100CD98D8, &qword_100CD98E0, &qword_100A83D38, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD98A8);
  }

  return result;
}

unint64_t sub_100149ECC()
{
  result = qword_100CD98B0;
  if (!qword_100CD98B0)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CD98B8, &qword_100A83D28);
    v4[2] = sub_10022E824(&qword_100CD98C0, &qword_100A83D30);
    v4[3] = sub_100006F64(&qword_100CD98C8, &qword_100CD98C0, &qword_100A83D30, byte_100A84CB4);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100149FC8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD98B0);
  }

  return result;
}

unint64_t sub_100149FC8()
{
  result = qword_100CD98D0;
  if (!qword_100CD98D0)
  {
    result = swift_getWitnessTable(byte_100A84C64, &type metadata for GridGeometryMinimumHostViewWidthModifier, v0, v1);
    atomic_store(result, &qword_100CD98D0);
  }

  return result;
}

unint64_t sub_10014A01C()
{
  result = qword_100CD47F8;
  if (!qword_100CD47F8)
  {
    result = swift_getWitnessTable(byte_100A85604, &type metadata for LocationViewRowViewModel, v0, v1);
    atomic_store(result, &qword_100CD47F8);
  }

  return result;
}

uint64_t sub_10014A090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 80);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Location.Identifier();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
      v10 = *(a3 + 40);
    }

    return sub_100024D10(a1 + v10, a2, v9);
  }
}

uint64_t sub_10014A168(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10001F680();
  v5 = sub_10014986C(v3, v4, asc_100A7EE60);
  sub_100023108(v5, v6);

  return *(v2 + 41);
}

uint64_t sub_10014A1E8()
{
  sub_100020AF8();
  v2 = sub_10014A168(v0, v1);
  return sub_100005F94(v2);
}

unint64_t sub_10014A29C()
{
  result = qword_100CD9830;
  if (!qword_100CD9830)
  {
    result = swift_getWitnessTable(byte_100A5915C, &type metadata for CalculateLocationComponentContainerBackgroundPinningOffsetViewModifier, v0, v1);
    atomic_store(result, &qword_100CD9830);
  }

  return result;
}

unint64_t sub_10014A398()
{
  result = qword_100CD9680;
  if (!qword_100CD9680)
  {
    result = swift_getWitnessTable("5d\x1B", &type metadata for KnownLocationLayoutsPicker, v0, v1);
    atomic_store(result, &qword_100CD9680);
  }

  return result;
}

uint64_t sub_10014A3EC()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(40, v7, v8);
  qword_100D912F0 = result;
  return result;
}

uint64_t sub_10014A53C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10010CD64(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10014A5A0()
{
  result = qword_100CDA1D8;
  if (!qword_100CDA1D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9FA8, &unk_100A85008);
    v4[0] = sub_100006F64(&qword_100CDA1E0, &qword_100CD9FA0, &qword_100A85000, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA1D8);
  }

  return result;
}

unint64_t sub_10014A6A4()
{
  result = qword_100CDA1C8;
  if (!qword_100CDA1C8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9F90, &unk_100A84FE8);
    v4[0] = sub_100006F64(&qword_100CDA1D0, &qword_100CD9F88, &qword_100A84FE0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA1C8);
  }

  return result;
}

unint64_t sub_10014A7A8()
{
  result = qword_100CDA1B8;
  if (!qword_100CDA1B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9F80, &qword_100A84FD8);
    v4[0] = sub_100006F64(&qword_100CDA1C0, &qword_100CD9F78, &qword_100A84FD0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CADEA0, &qword_100CADEA8, &qword_100A490C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA1B8);
  }

  return result;
}

uint64_t sub_10014A8AC(uint64_t a1)
{
  sub_10009BDF4(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_10009BDF4(319, &qword_100CA3C60, &type metadata for PerformanceTestFeatures, &type metadata accessor for Environment);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_10013D7AC(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_10013D7AC(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_10013D7AC(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics);
    if (v8 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_10009BDF4(319, &qword_100CA3C80, &type metadata for EdgeInsets, &type metadata accessor for Environment);
      v2 = v9;
      if (v10 <= 0x3F)
      {
        sub_10009BDF4(319, &qword_100CA3C88, &type metadata for SceneMetrics, &type metadata accessor for Environment);
        v2 = v11;
        if (v12 <= 0x3F)
        {
          sub_10009BDF4(319, &qword_100CA3C90, &type metadata for Text, &type metadata accessor for Optional);
          v2 = v13;
          if (v14 <= 0x3F)
          {
            v2 = type metadata accessor for Text.Measurements();
            if (v15 <= 0x3F)
            {
              sub_10014ABA8(319);
              v2 = v16;
              if (v17 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

unint64_t sub_10014AB54()
{
  result = qword_100CA3CA0;
  if (!qword_100CA3CA0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Double, &type metadata for Double, v0, v1);
    atomic_store(result, &qword_100CA3CA0);
  }

  return result;
}

void sub_10014ABA8(uint64_t a1)
{
  if (!qword_100CA3C98)
  {
    sub_10014AB54();
    v1 = type metadata accessor for ScaledMetric();
    if (!v2)
    {
      atomic_store(v1, &qword_100CA3C98);
    }
  }
}

unint64_t sub_10014AC44()
{
  result = qword_100CED338;
  if (!qword_100CED338)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CED330, &unk_100AA4A50);
    v4[0] = sub_10014ACD0();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CED338);
  }

  return result;
}

unint64_t sub_10014ACD0()
{
  result = qword_100CED340;
  if (!qword_100CED340)
  {
    v3 = sub_10022E824(&qword_100CED328, &qword_100AA4A48);
    result = swift_getWitnessTable(&protocol conformance descriptor for _ViewModifier_Content<A>, v3, v0, v1);
    atomic_store(result, &qword_100CED340);
  }

  return result;
}

unint64_t sub_10014AD58()
{
  result = qword_100CBF348;
  if (!qword_100CBF348)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBF350, &qword_100A56CC0);
    v4[0] = sub_10014ADE4();
    v4[1] = sub_10012E840();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBF348);
  }

  return result;
}

unint64_t sub_10014ADE4()
{
  result = qword_100CBF340;
  if (!qword_100CBF340)
  {
    v3 = sub_10022E824(&qword_100CBF338, &qword_100A56C90);
    result = swift_getWitnessTable(&protocol conformance descriptor for _ViewModifier_Content<A>, v3, v0, v1);
    atomic_store(result, &qword_100CBF340);
  }

  return result;
}

uint64_t sub_10014AE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  KeyPath = swift_getKeyPath();
  if (*v2)
  {
    v10 = 0;
  }

  else
  {
    if (*(v2 + 80))
    {
      v11 = *(v2 + 32);
      v19 = *(v2 + 16);
      v20 = v11;
      v12 = *(v2 + 64);
      v21 = *(v2 + 48);
      v22 = v12;
    }

    else
    {
      sub_1007E9A6C(v2, v18);
      static os_log_type_t.fault.getter();
      v13 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_10014A368(v2);
      (*(v6 + 8))(v8, v5);
    }

    v10 = BYTE9(v21) == 4;
  }

  v14 = sub_10022C350(&qword_100CD9FA0, &qword_100A85000);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  result = sub_10022C350(&qword_100CD9FA8, &unk_100A85008);
  v16 = a2 + *(result + 36);
  *v16 = KeyPath;
  *(v16 + 8) = v10;
  return result;
}

uint64_t sub_10014B09C()
{
  sub_10000FE4C();
  v0 = sub_10014B108();
  return sub_100005F94(v0);
}

unint64_t sub_10014B128()
{
  result = qword_100CD9AB8[0];
  if (!qword_100CD9AB8[0])
  {
    result = swift_getWitnessTable("5q\x1B", &_s42ShouldConsiderMapPinnedToTopEnvironmentKeyVN, v0, v1);
    atomic_store(result, qword_100CD9AB8);
  }

  return result;
}

uint64_t sub_10014B1D0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1007E62F8();
  v7 = sub_10022C350(&qword_100CD9F88, &qword_100A84FE0);
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  result = sub_10022C350(&qword_100CD9F90, &unk_100A84FE8);
  v9 = a3 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = v6;
  return result;
}

double sub_10014B28C()
{
  v1 = *(v0 + 8);
  if (*(v0 + 32))
  {
    sub_1000FDB68();
    sub_10001D07C();
    sub_1000FDE84();
    sub_10001A0E0();
    if (v4)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }

  return v1;
}

uint64_t sub_10014B2FC()
{
  sub_10000FE4C();
  v0 = sub_10014B378();
  return sub_100005F94(v0);
}

unint64_t sub_10014B324()
{
  result = qword_100CA60A0;
  if (!qword_100CA60A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GridCompactLayoutKey, &type metadata for GridCompactLayoutKey, v0, v1);
    atomic_store(result, &qword_100CA60A0);
  }

  return result;
}

uint64_t sub_10014B430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  KeyPath = swift_getKeyPath();
  if (*(v3 + 72))
  {
    v17 = *(v3 + 8);
    v18 = *(v3 + 24);
    v19 = *(v3 + 40);
    v20 = *(v3 + 56);
  }

  else
  {
    sub_1007E9A34(v3, v16);
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10014A2F8(v3);
    (*(v7 + 8))(v9, v6);
  }

  v12 = 1u >> (BYTE8(v19) & 7);
  v13 = sub_10022C350(&qword_100CD9F78, &qword_100A84FD0);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = sub_10022C350(&qword_100CD9F80, &qword_100A84FD8);
  v15 = a2 + *(result + 36);
  *v15 = KeyPath;
  *(v15 + 8) = v12 ^ 1;
  *(v15 + 16) = v12;
  return result;
}

uint64_t sub_10014B63C()
{
  sub_10000FE4C();
  v0 = sub_10014B6BC();
  return sub_10000EDD8(v0, v1);
}

unint64_t sub_10014B668()
{
  result = qword_100CA6140;
  if (!qword_100CA6140)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HeaderLineLimitKey, &type metadata for HeaderLineLimitKey, v0, v1);
    atomic_store(result, &qword_100CA6140);
  }

  return result;
}

uint64_t sub_10014B6DC(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  EnvironmentValues.subscript.getter();
  return v3;
}

uint64_t sub_10014B7C4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for AccessibilityTraits();
  v188 = *(v190 - 8);
  __chkstk_darwin(v190);
  v184 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA3D60, &unk_100A2DDD0);
  __chkstk_darwin(v7 - 8);
  v177 = &v160 - v8;
  v9 = sub_10022C350(&qword_100CA3D68, &unk_100A4AD10);
  __chkstk_darwin(v9 - 8);
  v175 = &v160 - v10;
  v11 = type metadata accessor for Text.Measurements.Context();
  v178 = *(v11 - 8);
  v179 = v11;
  __chkstk_darwin(v11);
  v176 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for LocationHeaderView(0);
  __chkstk_darwin(v181);
  v180 = (&v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = sub_10022C350(&qword_100CD9FD8, &qword_100A85038);
  __chkstk_darwin(v182);
  v183 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v187 = &v160 - v16;
  v185 = sub_10022C350(&qword_100CD9FE0, &qword_100A85040);
  __chkstk_darwin(v185);
  v191 = &v160 - v17;
  v189 = sub_10022C350(&qword_100CD9FE8, &qword_100A85048);
  __chkstk_darwin(v189);
  v192 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v186 = &v160 - v20;
  __chkstk_darwin(v21);
  v196 = &v160 - v22;
  v174 = type metadata accessor for ContentSizeCategory();
  v195 = *(v174 - 8);
  __chkstk_darwin(v174);
  v194 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v173 = &v160 - v25;
  v26 = type metadata accessor for EnvironmentValues();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for LocationContentTopHeaderView(0);
  v31 = v30[13];
  v197 = v1;
  v32 = v1 + v31;
  v33 = *v32;
  LODWORD(v32) = *(v32 + 8);
  v193 = v5;
  if (v32 == 1)
  {
    if ((v33 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v34 = a1;
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    a1 = v34;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v33, 0);
    (*(v27 + 8))(v29, v26);
    if (LOBYTE(v204[0]) != 1)
    {
LABEL_9:
      v41 = sub_10022C350(&qword_100CD9FF0, &qword_100A85050);
      v42 = a1;
      v43 = 1;
      return sub_10001B350(v42, v43, 1, v41);
    }
  }

  v36 = type metadata accessor for LocationViewModel(0);
  if (*(v197 + *(v36 + 64)) != 1)
  {
    goto LABEL_9;
  }

  v172 = v36;
  v37 = 0;
  v38 = static Solarium.isEnabled.getter();
  v167 = v26;
  if (v38)
  {
    v39 = v197 + v30[14];
    v40 = *v39;
    if (*(v39 + 8) == 1)
    {
      v37 = *v39;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v44 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v26 = v167;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v40, 0);
      (*(v27 + 8))(v29, v26);
      v37 = v204[0];
    }
  }

  v45 = v173;
  sub_10009ECC8();
  v47 = v194;
  v46 = v195;
  v48 = v174;
  (*(v195 + 32))(v194, v45, v174);
  v49 = (*(v46 + 88))(v47, v48);
  v55 = v49 == enum case for ContentSizeCategory.extraSmall(_:) || v49 == enum case for ContentSizeCategory.small(_:) || v49 == enum case for ContentSizeCategory.medium(_:) || v49 == enum case for ContentSizeCategory.large(_:) || v49 == enum case for ContentSizeCategory.extraLarge(_:) || v49 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v49 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  v166 = a1;
  if (!v55)
  {
    if (v49 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v49 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v49 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v49 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v49 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      v60 = v30[10];
      memcpy(v204, (v197 + v60), 0x49uLL);
      if (v204[9])
      {
        memcpy(v203, (v197 + v60), 0x48uLL);
      }

      else
      {

        static os_log_type_t.fault.getter();
        v65 = v29;
        v66 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v29 = v65;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100018144(v204, &qword_100CB71A8, &unk_100A4C930);
        (*(v27 + 8))(v65, v26);
      }

      v64 = *&v203[7];
      goto LABEL_52;
    }

    (*(v195 + 8))(v194, v48);
  }

  v61 = v30[10];
  memcpy(v204, (v197 + v61), 0x49uLL);
  if (v204[9])
  {
    memcpy(v203, (v197 + v61), 0x48uLL);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v62 = v29;
    v63 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v29 = v62;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(v204, &qword_100CB71A8, &unk_100A4C930);
    (*(v27 + 8))(v62, v26);
  }

  v64 = *&v203[5] + *&v203[5];
LABEL_52:
  v168 = v29;
  memcpy(v204, (v197 + *(v172 + 24)), 0x9AuLL);
  v67 = v30[6];
  v68 = v197 + v30[5];
  v69 = *v68;
  v194 = *(v68 + 8);
  v195 = v69;
  LODWORD(v174) = *(v68 + 16);
  v70 = *(v68 + 24);
  v71 = *(v197 + v67);
  v72 = *(v197 + v67 + 8);
  v73 = *(v197 + v67 + 16);
  v74 = *(v197 + v67 + 24);
  v75 = (v197 + v30[7]);
  v76 = v75[1];
  v172 = *v75;
  v173 = v70;
  v171 = v76;
  v77 = v75[2];
  v169 = v75[3];
  v170 = v77;
  v78 = v197 + v30[11];
  v79 = *v78;
  LODWORD(v78) = *(v78 + 8);
  v165 = v27;
  v162 = v72;
  v163 = v71;
  v161 = v73;
  v160 = v74;
  if (v78 == 1)
  {
    sub_100151784(v204, v203);
    sub_10010CD54(v195, v194, v174);

    sub_10010CD54(v71, v72, v73);

    sub_100148118(v172, v171, v170, v169);
  }

  else
  {
    sub_100151784(v204, v203);
    sub_10010CD54(v195, v194, v174);

    sub_10010CD54(v71, v72, v73);

    sub_100148118(v172, v171, v170, v169);
    sub_10022BF9C(v79, 0);
    static os_log_type_t.fault.getter();
    v80 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v81 = v168;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v79, 0);
    (*(v27 + 8))(v81, v26);
    LOBYTE(v79) = v203[0];
  }

  v164 = v30;
  sub_100149314(v79 & 1);
  v82 = Text.font(_:)();
  v84 = v83;
  v86 = v85;

  v87 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v175, 1, 1, v87);
  v88 = type metadata accessor for Text.Suffix();
  sub_10001B350(v177, 1, 1, v88);
  v89 = v176;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v91 = v90;
  sub_10010CD64(v82, v84, v86 & 1);

  (*(v178 + 8))(v89, v179);
  KeyPath = swift_getKeyPath();
  v93 = v180;
  *v180 = KeyPath;
  *(v93 + 8) = 0;
  *(v93 + 16) = swift_getKeyPath();
  *(v93 + 24) = 0;
  v94 = v181;
  v95 = *(v181 + 24);
  *(v93 + v95) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  swift_storeEnumTagMultiPayload();
  v96 = v94[7];
  *(v93 + v96) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  swift_storeEnumTagMultiPayload();
  v97 = v93 + v94[8];
  *v97 = swift_getKeyPath();
  *(v97 + 8) = 0;
  v98 = v93 + v94[9];
  *v98 = swift_getKeyPath();
  *(v98 + 8) = 0;
  v99 = v94[10];
  *(v93 + v99) = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  swift_storeEnumTagMultiPayload();
  v100 = v93 + v94[11];
  *v100 = swift_getKeyPath();
  *(v100 + 8) = 0;
  v101 = v93 + v94[12];
  *v101 = swift_getKeyPath();
  *(v101 + 8) = 0;
  *(v101 + 16) = 0;
  *(v101 + 24) = 0;
  *(v101 + 32) = 0;
  v102 = v93 + v94[13];
  *v102 = swift_getKeyPath();
  *(v102 + 8) = 0u;
  *(v102 + 24) = 0u;
  *(v102 + 33) = 0u;
  Text.Measurements.init()();
  v203[0] = 0x4046800000000000;
  sub_10014AB54();
  ScaledMetric.init(wrappedValue:)();
  memcpy((v93 + v94[14]), v204, 0x9AuLL);
  v103 = v93 + v94[15];
  v104 = v194;
  *v103 = v195;
  *(v103 + 8) = v104;
  *(v103 + 16) = v174;
  *(v103 + 24) = v173;
  v105 = v93 + v94[16];
  v106 = v162;
  *v105 = v163;
  *(v105 + 8) = v106;
  *(v105 + 16) = v161;
  *(v105 + 24) = v160;
  v107 = (v93 + v94[17]);
  v108 = v171;
  *v107 = v172;
  v107[1] = v108;
  v109 = v169;
  v107[2] = v170;
  v107[3] = v109;
  *(v93 + v94[18]) = v91;
  *(v93 + v94[20]) = v64;
  *(v93 + v94[21]) = v37;
  sub_10008152C(&qword_100CD9FF8, type metadata accessor for LocationHeaderView, asc_100A2DD34);
  v110 = v183;
  View.accessibilityIdentifier(_:)();
  sub_100147C14(v93, type metadata accessor for LocationHeaderView);
  sub_10022C350(&unk_100CE17E0, &unk_100A45D60);
  v111 = v188;
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_100A2C3F0;
  static AccessibilityTraits.isHeader.getter();
  v203[0] = v112;
  sub_10008152C(&qword_100CB3368, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_10022C350(&unk_100CE17F0, &unk_100A4A1E0);
  sub_100006F64(&qword_100CB3370, &unk_100CE17F0, &unk_100A4A1E0, &protocol conformance descriptor for [A]);
  v113 = v184;
  v114 = v190;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v115 = v187;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v111 + 8))(v113, v114);
  sub_100018144(v110, &qword_100CD9FD8, &qword_100A85038);
  sub_10022C350(&qword_100CA4060, &qword_100A2E120);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_100A2D320;
  LOBYTE(v111) = static Edge.Set.leading.getter();
  *(v116 + 32) = v111;
  v117 = static Edge.Set.trailing.getter();
  *(v116 + 33) = v117;
  v118 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v111)
  {
    v118 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v117)
  {
    v118 = Edge.Set.init(rawValue:)();
  }

  v119 = v167;
  v120 = v164;
  EdgeInsets.init(_all:)();
  v122 = v121;
  v124 = v123;
  v126 = v125;
  v128 = v127;
  v129 = v191;
  sub_10011C0F0(v115, v191, &qword_100CD9FD8, &qword_100A85038);
  v130 = v129 + *(v185 + 36);
  *v130 = v118;
  *(v130 + 8) = v122;
  *(v130 + 16) = v124;
  *(v130 + 24) = v126;
  *(v130 + 32) = v128;
  *(v130 + 40) = 0;
  v131 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v139 = v138;
  v140 = v129;
  v141 = v186;
  sub_10011C0F0(v140, v186, &qword_100CD9FE0, &qword_100A85040);
  v142 = v141 + *(v189 + 36);
  *v142 = v131;
  *(v142 + 8) = v133;
  *(v142 + 16) = v135;
  *(v142 + 24) = v137;
  *(v142 + 32) = v139;
  *(v142 + 40) = 0;
  sub_10011C0F0(v141, v196, &qword_100CD9FE8, &qword_100A85048);
  v143 = v120[10];
  memcpy(v203, (v197 + v143), 0x49uLL);
  if (v203[9])
  {
    memcpy(v202, (v197 + v143), 0x48uLL);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v144 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v145 = v168;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(v203, &qword_100CB71A8, &unk_100A4C930);
    (*(v165 + 8))(v145, v119);
  }

  v146 = v193;
  memcpy(__dst, v202, sizeof(__dst));
  sub_1000FC9C8();
  v147 = *v146;
  if (!sub_1004CF4D0(*v146) && (!sub_10029C3DC(v147) || !*(v146 + 16)))
  {
    sub_10014B28C();
  }

  sub_100147C14(v146, type metadata accessor for DisplayMetrics);
  memcpy(v202, (v197 + v143), 0x49uLL);
  if (v202[72])
  {
    memcpy(v201, (v197 + v143), sizeof(v201));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v148 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v149 = v168;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(v202, &qword_100CB71A8, &unk_100A4C930);
    (*(v165 + 8))(v149, v119);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v197 = v204[20];
  v150 = v209;
  v194 = v208;
  v195 = v206;
  v200 = 1;
  v199 = v205;
  v198 = v207;
  v151 = v196;
  v152 = v192;
  sub_1000302D8(v196, v192, &qword_100CD9FE8, &qword_100A85048);
  v153 = v200;
  v154 = v199;
  v155 = v198;
  v156 = v166;
  sub_1000302D8(v152, v166, &qword_100CD9FE8, &qword_100A85048);
  v157 = v156 + *(sub_10022C350(&qword_100CDA000, &qword_100A85058) + 48);
  *v157 = 0;
  *(v157 + 8) = v153;
  *(v157 + 16) = v197;
  *(v157 + 24) = v154;
  v158 = v194;
  *(v157 + 32) = v195;
  *(v157 + 40) = v155;
  *(v157 + 48) = v158;
  *(v157 + 56) = v150;
  sub_100018144(v151, &qword_100CD9FE8, &qword_100A85048);
  sub_100018144(v152, &qword_100CD9FE8, &qword_100A85048);
  v41 = sub_10022C350(&qword_100CD9FF0, &qword_100A85050);
  v42 = v156;
  v43 = 0;
  return sub_10001B350(v42, v43, 1, v41);
}

uint64_t sub_10014CD78()
{
  sub_10000FE4C();
  v0 = sub_1001006A8();
  return sub_100005F94(v0);
}

double sub_10014CDC4()
{
  v0.n128_f64[0] = sub_1000834F0(v11);
  *&result = sub_1000A7D44(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11[0], v11[1], v9).n128_u64[0];
  return result;
}

void sub_10014CE48(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    v9 = a4[6];
  }

  else
  {
    sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
    sub_100003928();
    if (*(v10 + 84) == a3)
    {
      v9 = a4[7];
    }

    else
    {
      sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
      sub_100003928();
      if (*(v11 + 84) == a3)
      {
        v9 = a4[10];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(v5 + a4[14] + 8) = (v4 - 1);
          return;
        }

        type metadata accessor for Text.Measurements();
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v9 = a4[19];
        }

        else
        {
          sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
          v9 = a4[22];
        }
      }
    }
  }

  v12 = sub_1000039EC(v9);

  sub_10001B350(v12, v13, v4, v14);
}

uint64_t sub_10014D010(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA3BD8, &unk_100A61740);
  sub_100003928();
  if (*(v6 + 84) == v3)
  {
    v7 = a3[6];
  }

  else
  {
    sub_10022C350(&qword_100CA3BE0, &unk_100A2DD00);
    sub_100003928();
    if (*(v8 + 84) == v3)
    {
      v7 = a3[7];
    }

    else
    {
      sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
      sub_100003928();
      if (*(v9 + 84) == v3)
      {
        v7 = a3[10];
      }

      else
      {
        if (v3 == 0x7FFFFFFF)
        {
          return sub_1000039D8(*(v4 + a3[14] + 8));
        }

        type metadata accessor for Text.Measurements();
        sub_100003928();
        if (*(v14 + 84) == v3)
        {
          v7 = a3[19];
        }

        else
        {
          sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
          v7 = a3[22];
        }
      }
    }
  }

  v10 = sub_1000039EC(v7);

  return sub_100024D10(v10, v11, v12);
}

unint64_t sub_10014D248()
{
  result = qword_100CC0F28;
  if (!qword_100CC0F28)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC09F0, &unk_100A593F0);
    v4[0] = sub_10023FBF4(&qword_100CC0F30, &unk_100CC09E8, &unk_100A593E8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_10023FBF4(&qword_100CA40A8, &qword_100CA40B0, &qword_100A5B520, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC0F28);
  }

  return result;
}

uint64_t sub_10014D348()
{
  sub_10022E824(&qword_100CB5B20, &qword_100A49390);
  sub_10014D3D8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10014D3D8()
{
  result = qword_100CB5B40;
  if (!qword_100CB5B40)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10022E824(&qword_100CB5B20, &qword_100A49390);
    v4[0] = &protocol witness table for Spacer;
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB5B40);
  }

  return result;
}

void sub_10014D4E8(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        return;
      case 2:
        *(a1 + v11) = v16;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v11) = v16;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x10014D6CCLL);
    case 4:
      *(a1 + v11) = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        if ((v8 & 0x80000000) != 0)
        {
          v18 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v10 + 32) & ~v10;

          sub_10001B350(v18, a2, v8, v6);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 8) = 0;
        }

        else
        {
          *(a1 + 8) = (a2 - 1);
        }
      }

      return;
  }
}