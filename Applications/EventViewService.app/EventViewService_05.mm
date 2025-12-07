uint64_t sub_10009CC2C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_10009CCFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009CE08(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v3;
  type metadata accessor for VenueEventViewModel(255, v5);
  type metadata accessor for State();
  State.wrappedValue.getter();
  return *&v5[0];
}

uint64_t sub_10009CE64(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v3;
  type metadata accessor for VenueEventViewModel(255, v5);
  type metadata accessor for State();
  State.projectedValue.getter();
  return *&v5[0];
}

uint64_t sub_10009CEC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a2;
  v205 = *(a1 - 1);
  v203 = *(v205 + 64);
  v3 = __chkstk_darwin(a1);
  v192 = v162 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v202 = v162 - v6;
  v7 = *(v5 + 24);
  type metadata accessor for Optional();
  v8 = type metadata accessor for Binding();
  v194 = *(v8 - 8);
  v195 = v8;
  __chkstk_darwin(v8);
  v191 = v162 - v9;
  v199 = type metadata accessor for NavigationPath();
  v200 = a1;
  *&v208 = a1[2];
  v190 = a1[4];
  type metadata accessor for VenueEventListHeader(255, v208, v190, v10);
  v11 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v233 = &protocol witness table for EmptyView;
  v234 = WitnessTable;
  v235 = &protocol witness table for EmptyView;
  v13 = swift_getWitnessTable();
  *&v225 = v11;
  *(&v225 + 1) = v13;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100223470, &qword_1001B7380);
  v198 = type metadata accessor for ModifiedContent();
  v197 = sub_10000460C(&qword_100224F18, &qword_1001BA268);
  v196 = sub_10000460C(&qword_100224F20, &qword_1001BA270);
  v14 = type metadata accessor for Array();
  *&v207 = a1[5];
  v204 = *(*(v207 + 8) + 16);
  v201 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_10000460C(&qword_100224F28, &qword_1001BA278);
  v17 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v225 = v14;
  *(&v225 + 1) = AssociatedTypeWitness;
  *&v226 = v16;
  *(&v226 + 1) = v17;
  v227 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v19 = type metadata accessor for Section();
  v232 = sub_1000A6054();
  v20 = swift_getWitnessTable();
  v229 = &protocol witness table for EmptyView;
  v230 = v20;
  v231 = &protocol witness table for EmptyView;
  v21 = swift_getWitnessTable();
  *&v225 = v19;
  *(&v225 + 1) = v21;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  v22 = type metadata accessor for TupleView();
  v23 = swift_getWitnessTable();
  *&v225 = &type metadata for Never;
  *(&v225 + 1) = v22;
  *&v226 = &protocol witness table for Never;
  *(&v226 + 1) = v23;
  v24 = type metadata accessor for List();
  v25 = type metadata accessor for PlainListStyle();
  v26 = swift_getWitnessTable();
  *&v225 = v24;
  *(&v225 + 1) = v25;
  *&v226 = v26;
  *(&v226 + 1) = &protocol witness table for PlainListStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v225 = v24;
  *(&v225 + 1) = v25;
  *&v226 = v26;
  *(&v226 + 1) = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v225 = OpaqueTypeMetadata2;
  *(&v225 + 1) = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeMetadata2();
  *&v225 = OpaqueTypeMetadata2;
  *(&v225 + 1) = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  *&v225 = v29;
  *(&v225 + 1) = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  *&v225 = v29;
  *(&v225 + 1) = v30;
  v32 = swift_getOpaqueTypeConformance2();
  *&v225 = v31;
  *(&v225 + 1) = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  *&v225 = v31;
  *(&v225 + 1) = v32;
  v34 = swift_getOpaqueTypeConformance2();
  *&v225 = v33;
  *(&v225 + 1) = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  *&v225 = v33;
  *(&v225 + 1) = v34;
  v36 = swift_getOpaqueTypeConformance2();
  *&v225 = v35;
  *(&v225 + 1) = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  *&v225 = v35;
  *(&v225 + 1) = v36;
  v38 = swift_getOpaqueTypeConformance2();
  v41 = sub_10001877C(v38, v39, v40);
  *&v225 = v37;
  *(&v225 + 1) = &type metadata for String;
  *&v226 = v38;
  *(&v226 + 1) = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  *&v225 = v37;
  *(&v225 + 1) = &type metadata for String;
  *&v226 = v38;
  *(&v226 + 1) = v41;
  v43 = swift_getOpaqueTypeConformance2();
  *&v225 = v42;
  *(&v225 + 1) = &type metadata for Bool;
  *&v226 = v43;
  *(&v226 + 1) = &protocol witness table for Bool;
  v44 = swift_getOpaqueTypeMetadata2();
  v45 = sub_10000460C(&qword_100224F48, &qword_1001BA288);
  *&v225 = v42;
  *(&v225 + 1) = &type metadata for Bool;
  *&v226 = v43;
  *(&v226 + 1) = &protocol witness table for Bool;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_10000460C(&qword_100224F50, &qword_1001BA290);
  v48 = sub_1000A6218();
  *&v225 = v47;
  *(&v225 + 1) = v48;
  v49 = swift_getOpaqueTypeConformance2();
  *&v225 = v44;
  *(&v225 + 1) = v45;
  *&v226 = v46;
  *(&v226 + 1) = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  *&v225 = v44;
  *(&v225 + 1) = v45;
  *&v226 = v46;
  *(&v226 + 1) = v49;
  v51 = swift_getOpaqueTypeConformance2();
  *&v225 = v50;
  *(&v225 + 1) = &type metadata for String;
  *&v226 = v51;
  *(&v226 + 1) = v41;
  v52 = swift_getOpaqueTypeMetadata2();
  *&v225 = v50;
  *(&v225 + 1) = &type metadata for String;
  *&v226 = v51;
  *(&v226 + 1) = v41;
  v53 = swift_getOpaqueTypeConformance2();
  *&v225 = v50;
  *(&v225 + 1) = &type metadata for Solarium;
  *&v226 = v52;
  *(&v226 + 1) = v51;
  v227 = &protocol witness table for Solarium;
  v228 = v53;
  v167 = swift_getOpaqueTypeMetadata2();
  *&v225 = v50;
  *(&v225 + 1) = &type metadata for Solarium;
  *&v226 = v52;
  *(&v226 + 1) = v51;
  v227 = &protocol witness table for Solarium;
  v228 = v53;
  v166 = swift_getOpaqueTypeConformance2();
  v54 = type metadata accessor for NavigationStack();
  v172 = *(v54 - 8);
  v55 = __chkstk_darwin(v54);
  v163 = v162 - v56;
  v59 = sub_1000A62F8(v55, v57, v58);
  v62 = sub_1000A634C(v59, v60, v61);
  v63 = v201;
  *&v225 = v201;
  *(&v225 + 1) = &type metadata for ArtistFetcher;
  v64 = v207;
  *&v226 = &type metadata for PromotionalPlaylistFetcher;
  *(&v226 + 1) = v207;
  v227 = v59;
  v228 = v62;
  v65 = type metadata accessor for MusicEventView(255, &v225);
  v196 = v65;
  v66 = swift_getWitnessTable();
  v67 = swift_getWitnessTable();
  *&v225 = v54;
  *(&v225 + 1) = v63;
  v68 = v54;
  v164 = v66;
  v165 = v54;
  v69 = v63;
  *&v226 = v65;
  *(&v226 + 1) = v66;
  v70 = v66;
  v71 = v204;
  v227 = v204;
  v228 = v67;
  v162[1] = v67;
  v72 = swift_getOpaqueTypeMetadata2();
  v177 = *(v72 - 8);
  __chkstk_darwin(v72);
  v198 = v162 - v73;
  v75 = type metadata accessor for FilterView(255, v69, v64, v74);
  *&v225 = v68;
  *(&v225 + 1) = v69;
  v76 = v69;
  *&v226 = v196;
  *(&v226 + 1) = v70;
  v227 = v71;
  v228 = v67;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = swift_getWitnessTable();
  v170 = v77;
  v171 = v72;
  *&v225 = v72;
  *(&v225 + 1) = v75;
  v79 = v75;
  v168 = v75;
  v169 = v78;
  *&v226 = v77;
  *(&v226 + 1) = v78;
  v80 = v77;
  v81 = v78;
  v82 = swift_getOpaqueTypeMetadata2();
  v175 = v82;
  v181 = *(v82 - 8);
  __chkstk_darwin(v82);
  v199 = v162 - v83;
  *&v225 = v72;
  *(&v225 + 1) = v79;
  *&v226 = v80;
  *(&v226 + 1) = v81;
  v173 = swift_getOpaqueTypeConformance2();
  *&v225 = v82;
  *(&v225 + 1) = &type metadata for String;
  *&v226 = v173;
  *(&v226 + 1) = &protocol witness table for String;
  v178 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v176 = swift_getOpaqueTypeMetadata2();
  v182 = *(v176 - 8);
  __chkstk_darwin(v176);
  v197 = v162 - v84;
  v183 = type metadata accessor for ModifiedContent();
  v186 = *(v183 - 8);
  __chkstk_darwin(v183);
  v174 = v162 - v85;
  v184 = type metadata accessor for ModifiedContent();
  v187 = *(v184 - 8);
  __chkstk_darwin(v184);
  v179 = v162 - v86;
  type metadata accessor for AccessibilityAttachmentModifier();
  v87 = type metadata accessor for ModifiedContent();
  v88 = *(v87 - 8);
  v188 = v87;
  v189 = v88;
  v89 = __chkstk_darwin(v87);
  v180 = v162 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v185 = v162 - v91;
  *&v92 = v208;
  *(&v92 + 1) = v76;
  *&v93 = v190;
  *(&v93 + 1) = v207;
  v207 = v93;
  v208 = v92;
  v213 = v92;
  v214 = v93;
  v215 = v206;
  v94 = v163;
  NavigationStack.init<>(root:)();
  v95 = v200;
  v96 = sub_10009CE64(v200);
  v98 = v97;
  v100 = v99;
  v211 = v208;
  v212 = v207;
  swift_getKeyPath();
  v222 = v96;
  v223 = v98;
  v224 = v100;
  v225 = v208;
  v226 = v207;
  type metadata accessor for VenueEventViewModel(255, &v225);
  type metadata accessor for Binding();
  v101 = v191;
  Binding.subscript.getter();

  v102 = swift_allocObject();
  v103 = v207;
  *(v102 + 16) = v208;
  *(v102 + 32) = v103;
  swift_checkMetadataState();
  v104 = v165;
  View.sheet<A, B>(item:onDismiss:content:)();

  (*(v194 + 8))(v101, v195);
  (*(v172 + 8))(v94, v104);
  v105 = v206;
  v106 = sub_10009CE64(v95);
  v108 = v107;
  v110 = v109;
  v209 = v208;
  v210 = v207;
  swift_getKeyPath();
  *&v225 = v106;
  *(&v225 + 1) = v108;
  *&v226 = v110;
  Binding.subscript.getter();

  v190 = v222;
  v172 = v223;
  LODWORD(v191) = v224;

  v111 = v205;
  v112 = v205 + 16;
  v113 = *(v205 + 16);
  v114 = v202;
  v113(v202, v105, v95);
  v115 = v113;
  v195 = v112;
  v204 = *(v111 + 80);
  v116 = (v204 + 48) & ~v204;
  v117 = swift_allocObject();
  v118 = v207;
  *(v117 + 16) = v208;
  *(v117 + 32) = v118;
  v119 = *(v111 + 32);
  v119(v117 + v116, v114, v95);
  v201 = v119;
  v205 = v111 + 32;
  v120 = v192;
  v115(v192, v206, v95);
  v196 = v115;
  v194 = v116;
  v121 = swift_allocObject();
  v122 = v207;
  *(v121 + 16) = v208;
  *(v121 + 32) = v122;
  v123 = v121 + v116;
  v124 = v95;
  v119(v123, v120, v95);
  swift_checkMetadataState();
  v125 = v198;
  v126 = v171;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v177 + 8))(v125, v126);
  v127 = v206;
  sub_10009CE08(v124);
  v128 = sub_1000AB29C();
  v130 = v129;

  *&v225 = v128;
  *(&v225 + 1) = v130;
  v131 = v202;
  v115(v202, v127, v124);
  v132 = v194;
  v133 = swift_allocObject();
  v134 = v207;
  *(v133 + 16) = v208;
  *(v133 + 32) = v134;
  v201(v133 + v132, v131, v124);
  v135 = v175;
  v136 = v173;
  v137 = v199;
  View.onChange<A>(of:initial:_:)();

  (*(v181 + 8))(v137, v135);
  v138 = v202;
  v139 = v127;
  v140 = v200;
  v196(v202, v139, v200);
  v141 = v194;
  v142 = swift_allocObject();
  v143 = v207;
  *(v142 + 16) = v208;
  *(v142 + 32) = v143;
  v144 = v138;
  v201(v142 + v141, v138, v140);
  *&v225 = v135;
  *(&v225 + 1) = &type metadata for String;
  *&v226 = v136;
  *(&v226 + 1) = &protocol witness table for String;
  v145 = swift_getOpaqueTypeConformance2();
  v146 = v174;
  v147 = v176;
  v148 = v197;
  View.onAppear(perform:)();

  (*(v182 + 8))(v148, v147);
  v196(v144, v206, v140);
  v149 = swift_allocObject();
  v150 = v207;
  *(v149 + 16) = v208;
  *(v149 + 32) = v150;
  v201(v149 + v141, v144, v140);
  v220 = v145;
  v221 = &protocol witness table for _AppearanceActionModifier;
  v151 = v183;
  v152 = swift_getWitnessTable();
  v153 = v179;
  View.onDisappear(perform:)();

  (*(v186 + 8))(v146, v151);
  v218 = v152;
  v219 = &protocol witness table for _AppearanceActionModifier;
  v154 = v184;
  v155 = swift_getWitnessTable();
  v156 = v180;
  View.accessibilityIdentifier(_:)();
  (*(v187 + 8))(v153, v154);
  v157 = sub_1000A61D0(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v216 = v155;
  v217 = v157;
  v158 = v188;
  swift_getWitnessTable();
  v159 = v185;
  sub_1000EE87C();
  v160 = *(v189 + 8);
  v160(v156, v158);
  sub_1000EE87C();
  return (v160)(v159, v158);
}

uint64_t sub_10009E4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v207 = a1;
  v201 = a6;
  v213 = a2;
  v214 = a3;
  v203 = a2;
  v215 = a4;
  v216 = a5;
  v205 = a4;
  v206 = a5;
  v190 = type metadata accessor for VenueEventView(0, &v213);
  v200 = *(v190 - 8);
  v198 = *(v200 + 64);
  __chkstk_darwin(v190);
  v199 = &v132 - v9;
  v197 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v195 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for ScrollIndicatorVisibility();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v188 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for ScrollDismissesKeyboardMode();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v189 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for ContentMarginPlacement();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v185 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for PlainListStyle();
  v184 = *(v202 - 8);
  __chkstk_darwin(v202);
  v183 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VenueEventListHeader(255, a2, a4, v15);
  v16 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v223 = &protocol witness table for EmptyView;
  v224 = WitnessTable;
  v225 = &protocol witness table for EmptyView;
  v18 = swift_getWitnessTable();
  v213 = v16;
  v214 = v18;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100223470, &qword_1001B7380);
  v181 = type metadata accessor for ModifiedContent();
  v180 = sub_10000460C(&qword_100224F18, &qword_1001BA268);
  v179 = sub_10000460C(&qword_100224F20, &qword_1001BA270);
  v19 = type metadata accessor for Array();
  v182 = v19;
  v204 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_10000460C(&qword_100224F28, &qword_1001BA278);
  v22 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v213 = v19;
  v214 = AssociatedTypeWitness;
  v215 = v21;
  v216 = v22;
  v217 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v24 = type metadata accessor for Section();
  v222 = sub_1000A6054();
  v25 = swift_getWitnessTable();
  v219 = &protocol witness table for EmptyView;
  v220 = v25;
  v221 = &protocol witness table for EmptyView;
  v26 = swift_getWitnessTable();
  v213 = v24;
  v214 = v26;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  v27 = type metadata accessor for TupleView();
  v147 = v27;
  v146 = swift_getWitnessTable();
  v213 = &type metadata for Never;
  v214 = v27;
  v215 = &protocol witness table for Never;
  v216 = v146;
  v28 = type metadata accessor for List();
  v149 = *(v28 - 8);
  __chkstk_darwin(v28);
  v143 = &v132 - v29;
  v30 = swift_getWitnessTable();
  v31 = v202;
  v213 = v28;
  v214 = v202;
  v215 = v30;
  v216 = &protocol witness table for PlainListStyle;
  v32 = v30;
  v139 = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v145 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v138 = &v132 - v34;
  v213 = v28;
  v214 = v31;
  v215 = v32;
  v216 = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v213 = OpaqueTypeMetadata2;
  v214 = OpaqueTypeConformance2;
  v36 = OpaqueTypeMetadata2;
  v134 = OpaqueTypeMetadata2;
  v37 = OpaqueTypeConformance2;
  v135 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeMetadata2();
  v151 = *(v38 - 8);
  __chkstk_darwin(v38);
  v133 = &v132 - v39;
  v213 = v36;
  v214 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v140 = v38;
  v213 = v38;
  v214 = v40;
  v41 = v40;
  v141 = v40;
  v42 = swift_getOpaqueTypeMetadata2();
  v144 = *(v42 - 8);
  __chkstk_darwin(v42);
  v142 = &v132 - v43;
  v213 = v38;
  v214 = v41;
  v44 = swift_getOpaqueTypeConformance2();
  v213 = v42;
  v214 = v44;
  v45 = v42;
  v136 = v42;
  v46 = v44;
  v137 = v44;
  v47 = swift_getOpaqueTypeMetadata2();
  v178 = *(v47 - 8);
  __chkstk_darwin(v47);
  v132 = &v132 - v48;
  v213 = v45;
  v214 = v46;
  v49 = swift_getOpaqueTypeConformance2();
  v213 = v47;
  v214 = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  v171 = *(v50 - 8);
  __chkstk_darwin(v50);
  v168 = &v132 - v51;
  v180 = v47;
  v213 = v47;
  v214 = v49;
  v165 = v49;
  v52 = swift_getOpaqueTypeConformance2();
  v213 = v50;
  v214 = v52;
  v53 = swift_getOpaqueTypeMetadata2();
  v173 = *(v53 - 8);
  __chkstk_darwin(v53);
  v170 = &v132 - v54;
  v175 = v50;
  v213 = v50;
  v214 = v52;
  v160 = v52;
  v55 = swift_getOpaqueTypeConformance2();
  v58 = sub_10001877C(v55, v56, v57);
  v213 = v53;
  v214 = &type metadata for String;
  v215 = v55;
  v216 = v58;
  v59 = swift_getOpaqueTypeMetadata2();
  v179 = *(v59 - 8);
  __chkstk_darwin(v59);
  v174 = &v132 - v60;
  v177 = v53;
  v213 = v53;
  v214 = &type metadata for String;
  v162 = v55;
  v215 = v55;
  v216 = v58;
  v61 = swift_getOpaqueTypeConformance2();
  v213 = v59;
  v214 = &type metadata for Bool;
  v215 = v61;
  v216 = &protocol witness table for Bool;
  v62 = swift_getOpaqueTypeMetadata2();
  v172 = *(v62 - 8);
  __chkstk_darwin(v62);
  v169 = &v132 - v63;
  v64 = sub_10000460C(&qword_100224F48, &qword_1001BA288);
  v181 = v59;
  v213 = v59;
  v214 = &type metadata for Bool;
  v167 = v61;
  v215 = v61;
  v216 = &protocol witness table for Bool;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = sub_10000460C(&qword_100224F50, &qword_1001BA290);
  v67 = sub_1000A6218();
  v213 = v66;
  v214 = v67;
  v68 = swift_getOpaqueTypeConformance2();
  v213 = v62;
  v214 = v64;
  v215 = v65;
  v216 = v68;
  v69 = swift_getOpaqueTypeMetadata2();
  v163 = *(v69 - 8);
  __chkstk_darwin(v69);
  v158 = &v132 - v70;
  v176 = v62;
  v213 = v62;
  v214 = v64;
  v164 = v64;
  v159 = v65;
  v215 = v65;
  v216 = v68;
  v155 = v68;
  v71 = swift_getOpaqueTypeConformance2();
  v213 = v69;
  v214 = &type metadata for String;
  v215 = v71;
  v216 = v58;
  v72 = swift_getOpaqueTypeMetadata2();
  v213 = v69;
  v214 = &type metadata for String;
  v215 = v71;
  v216 = v58;
  v161 = v58;
  v73 = swift_getOpaqueTypeConformance2();
  v166 = v69;
  v213 = v69;
  v214 = &type metadata for Solarium;
  v148 = v72;
  v215 = v72;
  v216 = v71;
  v157 = v71;
  v217 = &protocol witness table for Solarium;
  v218 = v73;
  v153 = v73;
  v156 = swift_getOpaqueTypeMetadata2();
  v154 = *(v156 - 8);
  v74 = __chkstk_darwin(v156);
  v150 = &v132 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v152 = &v132 - v76;
  v208 = v203;
  v209 = v204;
  v210 = v205;
  v211 = v206;
  v212 = v207;
  v77 = v143;
  List<>.init(content:)();
  v78 = v183;
  PlainListStyle.init()();
  v79 = v138;
  v80 = v202;
  View.listStyle<A>(_:)();
  (*(v184 + 8))(v78, v80);
  (*(v149 + 8))(v77, v28);
  static Edge.Set.top.getter();
  v81 = v185;
  static ContentMarginPlacement.automatic.getter();
  v82 = v133;
  v83 = v134;
  View.contentMargins(_:_:for:)();
  (*(v186 + 8))(v81, v187);
  (*(v145 + 8))(v79, v83);
  v84 = v190;
  v85 = v132;
  sub_10009CE08(v190);
  v86 = sub_1000AB348();

  v213 = v86;
  swift_checkMetadataState();
  swift_getWitnessTable();
  v87 = v188;
  Collection.isEmpty.getter();

  v88 = v142;
  v89 = v140;
  View.scrollDisabled(_:)();
  (*(v151 + 8))(v82, v89);
  v90 = v189;
  static ScrollDismissesKeyboardMode.immediately.getter();
  v91 = v136;
  View.scrollDismissesKeyboard(_:)();
  (*(v191 + 8))(v90, v192);
  (*(v144 + 8))(v88, v91);
  static ScrollIndicatorVisibility.never.getter();
  sub_1000024C4(&qword_1002245D0, &unk_1001BC9C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  LOBYTE(v82) = static Axis.Set.vertical.getter();
  *(inited + 32) = v82;
  v93 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v93;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v82)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v93)
  {
    Axis.Set.init(rawValue:)();
  }

  v94 = v168;
  v95 = v180;
  View.scrollIndicators(_:axes:)();
  (*(v193 + 8))(v87, v194);
  (*(v178 + 8))(v85, v95);
  v96 = v196;
  v97 = v195;
  v98 = v197;
  (*(v196 + 104))(v195, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v197);
  v99 = v170;
  v100 = v175;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v96 + 8))(v97, v98);
  (*(v171 + 8))(v94, v100);
  v101 = v84;
  v102 = v207;
  sub_10009CE08(v84);
  v103 = sub_1000AB3D0();
  v105 = v104;

  v213 = v103;
  v214 = v105;
  v106 = v174;
  v107 = v177;
  View.navigationTitle<A>(_:)();

  (*(v173 + 8))(v99, v107);
  v108 = v200;
  v109 = v199;
  (*(v200 + 16))(v199, v102, v84);
  v110 = (*(v108 + 80) + 48) & ~*(v108 + 80);
  v111 = swift_allocObject();
  v112 = v203;
  v113 = v204;
  *(v111 + 2) = v203;
  *(v111 + 3) = v113;
  v114 = v205;
  v115 = v206;
  *(v111 + 4) = v205;
  *(v111 + 5) = v115;
  (*(v108 + 32))(&v111[v110], v109, v101);
  v131 = &protocol witness table for Bool;
  v116 = v169;
  v117 = v181;
  View.onScrollGeometryChange<A>(for:of:action:)();

  v118 = (*(v179 + 8))(v106, v117);
  __chkstk_darwin(v118);
  *(&v132 - 6) = v112;
  *(&v132 - 5) = v113;
  *(&v132 - 4) = v114;
  *(&v132 - 3) = v115;
  v131 = v207;
  v119 = v158;
  v120 = v176;
  View.toolbar<A>(content:)();
  (*(v172 + 8))(v116, v120);
  v121 = Solarium.init()();
  __chkstk_darwin(v121);
  *(&v132 - 6) = v112;
  *(&v132 - 5) = v113;
  *(&v132 - 4) = v114;
  *(&v132 - 3) = v115;
  v122 = swift_checkMetadataState();
  v123 = v153;
  v131 = v153;
  v124 = v150;
  v125 = v166;
  v126 = v157;
  View.staticIf<A, B>(_:then:)();
  (*(v163 + 8))(v119, v125);
  v213 = v125;
  v214 = &type metadata for Solarium;
  v215 = v122;
  v216 = v126;
  v217 = &protocol witness table for Solarium;
  v218 = v123;
  swift_getOpaqueTypeConformance2();
  v127 = v152;
  v128 = v156;
  sub_1000EE87C();
  v129 = *(v154 + 8);
  v129(v124, v128);
  sub_1000EE87C();
  return (v129)(v127, v128);
}

uint64_t sub_10009FE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v141 = a5;
  v123 = a4;
  v124 = a1;
  v139 = a2;
  v137 = a6;
  v7 = sub_10000460C(&qword_100224F20, &qword_1001BA270);
  v128 = type metadata accessor for Array();
  v140 = a3;
  swift_getAssociatedTypeWitness();
  *&v177 = sub_10000460C(&qword_100224F28, &qword_1001BA278);
  *(&v177 + 1) = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ForEach();
  v9 = type metadata accessor for Section();
  v175 = sub_1000A6054();
  v116 = v8;
  v172 = &protocol witness table for EmptyView;
  WitnessTable = swift_getWitnessTable();
  v113 = WitnessTable;
  v174 = &protocol witness table for EmptyView;
  *&v176 = v9;
  *(&v176 + 1) = swift_getWitnessTable();
  v115 = *(&v176 + 1);
  v127 = &opaque type descriptor for <<opaque return type of View.listSectionSeparator(_:edges:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for TupleView();
  v120 = *(v12 - 8);
  __chkstk_darwin(v12);
  v119 = &v101 - v13;
  v109 = swift_checkMetadataState();
  v107 = *(v109 - 8);
  v14 = __chkstk_darwin(v109);
  v106 = &v101 - v15;
  v117 = OpaqueTypeMetadata2;
  v110 = *(OpaqueTypeMetadata2 - 8);
  v16 = __chkstk_darwin(v14);
  v108 = &v101 - v17;
  v121 = v11;
  v112 = *(v11 - 8);
  v18 = __chkstk_darwin(v16);
  v114 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v131 = &v101 - v21;
  v122 = v7;
  v118 = *(v7 - 8);
  v22 = __chkstk_darwin(v20);
  v111 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v138 = &v101 - v24;
  v25 = sub_1000024C4(&qword_100225070, &qword_1001BA4D8);
  v103 = *(v25 - 8);
  v104 = v25;
  __chkstk_darwin(v25);
  v102 = &v101 - v26;
  v27 = sub_1000024C4(&qword_100224F18, &qword_1001BA268);
  __chkstk_darwin(v27);
  v105 = &v101 - v28;
  v132 = v29;
  v136 = v12;
  v30 = type metadata accessor for _ConditionalContent();
  v134 = *(v30 - 8);
  v135 = v30;
  v31 = __chkstk_darwin(v30);
  v133 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v144 = &v101 - v33;
  v34 = v139;
  v35 = v123;
  v126 = type metadata accessor for VenueEventListHeader(255, v139, v123, v36);
  v37 = type metadata accessor for Section();
  v130 = *(v37 - 8);
  __chkstk_darwin(v37);
  v39 = &v101 - v38;
  v40 = swift_getWitnessTable();
  v169 = &protocol witness table for EmptyView;
  v170 = v40;
  v171 = &protocol witness table for EmptyView;
  v125 = swift_getWitnessTable();
  *&v176 = v37;
  *(&v176 + 1) = v125;
  v41 = swift_getOpaqueTypeMetadata2();
  v129 = *(v41 - 8);
  __chkstk_darwin(v41);
  v43 = &v101 - v42;
  sub_10000460C(&qword_100223470, &qword_1001B7380);
  v44 = type metadata accessor for ModifiedContent();
  v142 = *(v44 - 8);
  v45 = __chkstk_darwin(v44);
  v47 = (&v101 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v45);
  v143 = &v101 - v48;
  v150 = v34;
  v151 = v140;
  v49 = v35;
  v152 = v35;
  v153 = v141;
  v50 = v124;
  v154 = v124;
  Section<>.init(content:)();
  static VerticalEdge.Set.all.getter();
  v51 = v125;
  View.listSectionSeparator(_:edges:)();
  (*(v130 + 8))(v39, v37);
  v176 = xmmword_1001BA1D0;
  v177 = xmmword_1001BA1E0;
  LOBYTE(AssociatedConformanceWitness) = 0;
  v163 = v37;
  v164 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.listRowInsets(_:)();
  v129[1](v43, v41);
  v53 = sub_10000BFFC(&qword_100223468, &qword_100223470, &qword_1001B7380, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v167 = OpaqueTypeConformance2;
  v168 = v53;
  v125 = swift_getWitnessTable();
  sub_1000EE87C();
  v54 = *(v142 + 8);
  v129 = v47;
  v130 = v44;
  v126 = v54;
  v127 = (v142 + 8);
  v54(v47, v44);
  v55 = v139;
  v56 = v140;
  v163 = v139;
  v164 = v140;
  v57 = v141;
  v165 = v49;
  v166 = v141;
  v58 = type metadata accessor for VenueEventView(0, &v163);
  sub_10009CE08(v58);
  v59 = sub_1000AB348();

  v163 = v59;
  swift_checkMetadataState();
  swift_getWitnessTable();
  LOBYTE(v39) = Collection.isEmpty.getter();

  v145 = v55;
  v146 = v56;
  v147 = v49;
  v148 = v57;
  v149 = v50;
  if (v39)
  {
    sub_1000024C4(&qword_1002250B8, &qword_1001BD7B0);
    sub_1000A6E40(&qword_1002250B0, &qword_1002250B8, &qword_1001BD7B0, sub_1000A7230);
    v60 = v102;
    Section<>.init(content:)();
    static VerticalEdge.Set.all.getter();
    sub_1000A7174();
    v61 = v104;
    v62 = v105;
    View.listSectionSeparator(_:edges:)();
    (*(v103 + 8))(v60, v61);
    v63 = v132;
    v64 = v62 + *(v132 + 36);
    *v64 = 0x4049000000000000;
    v65 = sub_1000A7080();
    *(v64 + 16) = 0;
    *(v64 + 24) = 0;
    *(v64 + 8) = 0;
    *(v64 + 32) = 0;
    v66 = v136;
    v67 = swift_getWitnessTable();
    sub_10017387C(v62, v63, v66, v65, v67);
    sub_1000050C4(v62, &qword_100224F18, &qword_1001BA268);
  }

  else
  {
    sub_1000024C4(&qword_100225078, &qword_1001BA4E0);
    sub_1000A6E40(&qword_100225080, &qword_100225078, &qword_1001BA4E0, sub_1000A6EF4);
    v68 = Section<>.init(content:)();
    __chkstk_darwin(v68);
    *(&v101 - 6) = v55;
    *(&v101 - 5) = v56;
    *(&v101 - 4) = v49;
    *(&v101 - 3) = v57;
    *(&v101 - 2) = v50;
    swift_checkMetadataState();
    v69 = v106;
    Section<>.init(content:)();
    static VerticalEdge.Set.all.getter();
    v71 = v108;
    v70 = v109;
    v72 = v115;
    View.listSectionSeparator(_:edges:)();
    (*(v107 + 8))(v69, v70);
    static Edge.Set.top.getter();
    v163 = v70;
    v164 = v72;
    v73 = swift_getOpaqueTypeConformance2();
    v74 = v114;
    v75 = v117;
    View.padding(_:_:)();
    (*(v110 + 8))(v71, v75);
    v161 = v73;
    v162 = &protocol witness table for _PaddingLayout;
    v76 = v121;
    v77 = swift_getWitnessTable();
    v78 = v131;
    sub_1000EE87C();
    v79 = v112;
    v141 = *(v112 + 8);
    v141(v74, v76);
    v80 = v118;
    v81 = v111;
    v82 = v122;
    (*(v118 + 16))(v111, v138, v122);
    v163 = v81;
    (*(v79 + 16))(v74, v78, v76);
    v164 = v74;
    v159 = v82;
    v160 = v76;
    v157 = sub_1000A6FC4();
    v158 = v77;
    v83 = v119;
    sub_1000E76FC(&v163, 2uLL, &v159);
    v84 = v141;
    v141(v74, v76);
    v85 = *(v80 + 8);
    v85(v81, v82);
    v86 = sub_1000A7080();
    v87 = v136;
    v88 = swift_getWitnessTable();
    sub_100173974(v83, v132, v87, v86, v88);
    (*(v120 + 8))(v83, v87);
    v84(v131, v76);
    v85(v138, v82);
  }

  v89 = v143;
  v91 = v129;
  v90 = v130;
  (*(v142 + 16))(v129, v143, v130);
  v163 = v91;
  v93 = v133;
  v92 = v134;
  v94 = v144;
  v95 = v135;
  (*(v134 + 16))(v133, v144, v135);
  v164 = v93;
  v159 = v90;
  v160 = v95;
  v157 = v125;
  v96 = sub_1000A7080();
  v97 = swift_getWitnessTable();
  v155 = v96;
  v156 = v97;
  v158 = swift_getWitnessTable();
  sub_1000E76FC(&v163, 2uLL, &v159);
  v98 = *(v92 + 8);
  v98(v94, v95);
  v99 = v126;
  v126(v89, v90);
  v98(v93, v95);
  return v99(v91, v90);
}

uint64_t sub_1000A0DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26[0] = a1;
  v26[1] = a6;
  v10 = *(a2 - 8);
  __chkstk_darwin(a1);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VenueEventListHeader(0, v13, v14, v14);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v26 - v20;
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v22 = type metadata accessor for VenueEventView(0, v27);
  v23 = sub_10009CE08(v22);
  (*(v10 + 16))(v12, v23 + *(*v23 + 168), a2);

  sub_1000DA238(v12, a2, v19, a4);
  swift_getWitnessTable();
  sub_1000EE87C();
  v24 = *(v16 + 8);
  v24(v19, v15);
  sub_1000EE87C();
  return (v24)(v21, v15);
}

uint64_t sub_1000A1038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v28 = a2;
  *(&v28 + 1) = a3;
  *&v29 = a4;
  *(&v29 + 1) = a5;
  v5 = type metadata accessor for VenueEventView(0, &v28);
  sub_10009CE08(v5);

  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Font.Weight.semibold.getter();
  v11 = Text.fontWeight(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_100017398(v6, v8, v10 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v37 = v15 & 1;
  *&v19 = v11;
  *(&v19 + 1) = v13;
  LOBYTE(v20) = v15 & 1;
  *(&v20 + 1) = v17;
  sub_1000024C4(&qword_1002250C8, &qword_1001BA500);
  sub_1000A7230();
  View.accessibilityIdentifier(_:)();
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v33 = v24;
  v28 = v19;
  v29 = v20;
  return sub_1000050C4(&v28, &qword_1002250C8, &qword_1001BA500);
}

uint64_t sub_1000A1248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v5 = type metadata accessor for VenueEventView(0, &v21);
  sub_10009CE08(v5);

  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_100017398(v6, v8, v10 & 1);

  v18 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v21 = v11;
  v22 = v13;
  LOBYTE(v23) = v15 & 1;
  v24 = v17;
  v25 = KeyPath;
  v26 = v18;
  sub_1000024C4(&qword_100225090, &qword_1001BA4E8);
  sub_1000A6EF4();
  View.accessibilityIdentifier(_:)();
  sub_100017398(v11, v13, v15 & 1);
}

uint64_t sub_1000A1430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a2;
  v41 = a4;
  v37 = a1;
  v38 = a5;
  v42 = a6;
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v8 = type metadata accessor for VenueEventView(0, &v44);
  v9 = *(v8 - 8);
  v39 = *(v9 + 64);
  __chkstk_darwin(v8);
  v35 = v34 - v10;
  v11 = type metadata accessor for Array();
  v34[4] = v11;
  v34[0] = *(*(a5 + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34[3] = AssociatedTypeWitness;
  v13 = sub_10000460C(&qword_100224F28, &qword_1001BA278);
  v34[2] = v13;
  WitnessTable = swift_getWitnessTable();
  v34[1] = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = v11;
  v45 = AssociatedTypeWitness;
  v46 = v13;
  v47 = WitnessTable;
  v48 = AssociatedConformanceWitness;
  v16 = type metadata accessor for ForEach();
  v36 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v34 - v20;
  v22 = v8;
  v23 = v8;
  v24 = v37;
  sub_10009CE08(v23);
  v25 = sub_1000AB348();

  v44 = v25;
  v26 = v35;
  (*(v9 + 16))(v35, v24, v22);
  v27 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v28 = swift_allocObject();
  v29 = v41;
  *(v28 + 2) = v40;
  *(v28 + 3) = a3;
  v30 = v38;
  *(v28 + 4) = v29;
  *(v28 + 5) = v30;
  (*(v9 + 32))(&v28[v27], v26, v22);
  v31 = sub_1000A6054();
  ForEach<>.init(_:content:)();
  v43 = v31;
  swift_getWitnessTable();
  sub_1000EE87C();
  v32 = *(v36 + 8);
  v32(v19, v16);
  sub_1000EE87C();
  return (v32)(v21, v16);
}

uint64_t sub_1000A17CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v64 = a6;
  v63 = a5;
  v62 = a3;
  v59 = a2;
  v73 = a7;
  v13 = type metadata accessor for PlainButtonStyle();
  v14 = *(v13 - 8);
  v71 = v13;
  v72 = v14;
  v15 = __chkstk_darwin(v13);
  v68 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  v58 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a3;
  v83 = a4;
  v84 = a5;
  v85 = a6;
  v19 = type metadata accessor for VenueEventView(0, &v82);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v56 - v22;
  v57 = &v56 - v22;
  v66 = sub_1000024C4(&qword_100224F38, &qword_1001BA280);
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v61 = &v56 - v24;
  v25 = sub_1000024C4(&qword_1002250D0, &qword_1001BA508);
  v26 = *(v25 - 8);
  v69 = v25;
  v70 = v26;
  __chkstk_darwin(v25);
  v65 = &v56 - v27;
  v28 = *(v20 + 16);
  v29 = v23;
  v30 = v19;
  v60 = v19;
  v28(v29, a2, v19);
  v56 = v17;
  v31 = a1;
  v32 = a4;
  (*(v17 + 16))(&v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  v33 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v34 = (v21 + *(v17 + 80) + v33) & ~*(v17 + 80);
  v35 = swift_allocObject();
  v36 = v62;
  *(v35 + 2) = v62;
  *(v35 + 3) = v32;
  v37 = v63;
  v38 = v64;
  *(v35 + 4) = v63;
  *(v35 + 5) = v38;
  (*(v20 + 32))(&v35[v33], v57, v30);
  (*(v56 + 32))(&v35[v34], v58, v32);
  v74 = v36;
  v75 = v32;
  v76 = v37;
  v77 = v38;
  v78 = v31;
  v79 = v59;
  sub_1000024C4(&qword_1002250D8, &unk_1001BA510);
  sub_1000A77CC();
  v39 = v61;
  Button.init(action:label:)();
  v40 = v68;
  PlainButtonStyle.init()();
  v41 = sub_10000BFFC(&qword_100224F40, &qword_100224F38, &qword_1001BA280, &protocol conformance descriptor for Button<A>);
  v42 = sub_1000A61D0(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v43 = v65;
  v44 = v66;
  v45 = v71;
  View.buttonStyle<A>(_:)();
  v46 = v40;
  v47 = v45;
  (*(v72 + 8))(v46, v45);
  (*(v67 + 8))(v39, v44);
  sub_10009CE08(v60);
  v48 = sub_1000A9040(v31);
  v50 = v49;

  v80 = v48;
  v81 = v50;
  v82 = v44;
  v83 = v47;
  v84 = v41;
  v85 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10001877C(OpaqueTypeConformance2, v52, v53);
  v54 = v69;
  View.accessibilityLabel<A>(_:)();

  return (*(v70 + 8))(v43, v54);
}

void sub_1000A1DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v20 - v14;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v16 = type metadata accessor for VenueEventView(0, v20);
  sub_10009CE08(v16);
  v17 = *(a4 - 8);
  (*(v17 + 16))(v15, a2, a4);
  (*(v17 + 56))(v15, 0, 1, a4);
  v18 = sub_1000AB6BC(v15);
  (*(v13 + 8))(v15, v12, v18);

  sub_10009CE08(v16);
  v19 = *(a1 + *(v16 + 56));
  if (v19)
  {

    sub_1000A8CF8(10, 13, 0, 3u, v19);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000A61D0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

double sub_1000A2018@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v62 = a3;
  v63 = a5;
  v64 = a2;
  v65 = a7;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = swift_getAssociatedConformanceWitness();
  v48 = AssociatedTypeWitness;
  v61 = swift_getAssociatedTypeWitness();
  v46 = type metadata accessor for Optional();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v55 = &v44 - v11;
  v57 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a6 + 8);
  v15 = swift_getAssociatedTypeWitness();
  v53 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = swift_checkMetadataState();
  v67 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v54 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v44 - v21;
  v50 = a6;
  v52 = *(a6 + 88);
  v49 = a1;
  v52(a4, a6);
  v23 = sub_1000B141C(v18, AssociatedConformanceWitness);
  v59 = v24;
  v60 = v23;
  v25 = *(v67 + 8);
  v67 += 8;
  v51 = v25;
  v25(v22, v18);
  (*(v14 + 168))(a4, v14);
  static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
  v26 = v55;
  v27 = swift_getAssociatedConformanceWitness();
  v28 = sub_1000209A8(v13, v15, v27);
  v58 = v29;
  (*(v56 + 8))(v13, v57);
  (*(v53 + 8))(v17, v15);
  v31 = v62;
  v30 = v63;
  *&v68 = v62;
  *(&v68 + 1) = a4;
  v32 = v50;
  *&v69 = v63;
  *(&v69 + 1) = v50;
  v33 = type metadata accessor for VenueEventView(0, &v68);
  sub_10009CE08(v33);
  v34 = sub_1000AB45C(v49, v31, a4, v30, v32);

  v35 = v54;
  v52(a4, v32);
  sub_1000B1588(v18, AssociatedConformanceWitness, v26);
  v36 = v61;
  v51(v35, v18);
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v26, 1, v36) == 1)
  {
    (*(v45 + 8))(v26, v46);
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
  }

  else
  {
    *(&v69 + 1) = v36;
    v70 = swift_getAssociatedConformanceWitness();
    v38 = sub_10005EC40(&v68);
    (*(v37 + 32))(v38, v26, v36);
  }

  *&v71[23] = v69;
  *&v71[7] = v68;
  v39 = *&v71[16];
  v40 = v65;
  *(v65 + 33) = *v71;
  *&v71[39] = v70;
  v41 = v59;
  *v40 = v60;
  *(v40 + 8) = v41;
  v42 = v58;
  *(v40 + 16) = v28;
  *(v40 + 24) = v42;
  *(v40 + 32) = v34 & 1;
  *(v40 + 49) = v39;
  result = *&v71[31];
  *(v40 + 64) = *&v71[31];
  *(v40 + 80) = 0;
  return result;
}

uint64_t sub_1000A2674@<X0>(BOOL *a1@<X8>)
{
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3 > 0.0;
  return result;
}

double sub_1000A26A8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a2;
  v10[0] = a4;
  v10[1] = a5;
  v10[2] = a6;
  v10[3] = a7;
  v8 = type metadata accessor for VenueEventView(0, v10);
  sub_10009CE08(v8);
  sub_1000A9604(v7);

  return result;
}

uint64_t sub_1000A2700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v152 = a1;
  v144 = a6;
  v137 = sub_1000024C4(&qword_100224F90, &qword_1001BA3C8);
  __chkstk_darwin(v137);
  v136 = &v108 - v10;
  v143 = sub_1000024C4(&qword_100224F78, &qword_1001BA2A0);
  v139 = *(v143 - 8);
  __chkstk_darwin(v143);
  v138 = &v108 - v11;
  v134 = sub_1000024C4(&qword_100224F98, &unk_1001BA3D0);
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v124 = &v108 - v12;
  v133 = sub_1000024C4(&qword_100224FA0, &unk_1001BD700);
  v123 = *(v133 - 8);
  __chkstk_darwin(v133);
  v122 = &v108 - v13;
  v14 = sub_1000024C4(&qword_100224FA8, &qword_1001BA3E0);
  v15 = __chkstk_darwin(v14 - 8);
  v131 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v135 = &v108 - v17;
  v130 = sub_1000024C4(&qword_100224FB0, &qword_1001BA3E8);
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v19 = &v108 - v18;
  v129 = sub_1000024C4(&qword_100224FB8, &qword_1001BA3F0);
  v111 = *(v129 - 8);
  __chkstk_darwin(v129);
  v110 = &v108 - v20;
  v21 = sub_1000024C4(&qword_100224FC0, &qword_1001BA3F8);
  v22 = __chkstk_darwin(v21 - 8);
  v127 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v151 = (&v108 - v24);
  v126 = sub_1000024C4(&qword_100224FC8, &qword_1001BA400);
  v25 = *(v126 - 8);
  __chkstk_darwin(v126);
  v120 = &v108 - v26;
  v125 = sub_1000024C4(&qword_100224FD0, &qword_1001BA408);
  v119 = *(v125 - 8);
  __chkstk_darwin(v125);
  v118 = &v108 - v27;
  v28 = sub_1000024C4(&qword_100224FD8, &qword_1001BA410);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v150 = &v108 - v32;
  v115 = sub_1000024C4(&qword_100224FE0, &unk_1001BA418);
  __chkstk_darwin(v115);
  v112 = &v108 - v33;
  v142 = sub_1000024C4(&qword_100224F68, &qword_1001BA298);
  v117 = *(v142 - 8);
  __chkstk_darwin(v142);
  v116 = &v108 - v34;
  v114 = sub_1000024C4(&qword_1002219F0, &unk_1001B4CC0);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v36 = &v108 - v35;
  v37 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v37 - 8);
  v146 = &v108 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1000024C4(&qword_100224FE8, &qword_1001BA428);
  v39 = *(v121 - 8);
  __chkstk_darwin(v121);
  v41 = &v108 - v40;
  v141 = sub_1000024C4(&qword_100224F50, &qword_1001BA290);
  __chkstk_darwin(v141);
  v140 = &v108 - v42;
  v147 = a2;
  v148 = a3;
  v153 = a2;
  v154 = a3;
  v149 = a4;
  v155 = a4;
  v156 = a5;
  v145 = type metadata accessor for VenueEventView(0, &v153);
  sub_10009CE08(v145);
  LOBYTE(a3) = sub_1000A9690();

  if ((a3 & 1) != 0 && (static Solarium.isEnabled.getter() & 1) == 0)
  {
    v60 = static ToolbarItemPlacement.principal.getter();
    v151 = &v108;
    v61 = __chkstk_darwin(v60);
    v63 = v147;
    v62 = v148;
    *(&v108 - 6) = v147;
    *(&v108 - 5) = v62;
    v64 = v149;
    *(&v108 - 4) = v149;
    *(&v108 - 3) = a5;
    v65 = v152;
    *(&v108 - 2) = v152;
    sub_1000A6BC0(v61, v66, v67);
    ToolbarItem<>.init(placement:content:)();
    v68 = static ToolbarItemPlacement.topBarTrailing.getter();
    v151 = &v108;
    __chkstk_darwin(v68);
    *(&v108 - 6) = v63;
    *(&v108 - 5) = v62;
    *(&v108 - 4) = v64;
    *(&v108 - 3) = a5;
    *(&v108 - 2) = v65;
    sub_1000024C4(&qword_100221A00, &qword_1001B7410);
    sub_10000BFFC(&qword_100221A08, &qword_100221A00, &qword_1001B7410, &protocol conformance descriptor for Button<A>);
    ToolbarItem<>.init(placement:content:)();
    v69 = *(v115 + 48);
    v70 = v112;
    (*(v39 + 16))(v112, v41, v121);
    v71 = v113;
    v72 = v114;
    (*(v113 + 16))(&v70[v69], v36, v114);
    v73 = v116;
    TupleToolbarContent.init(_:)();
    sub_10000BFFC(&qword_100224F60, &qword_100224F68, &qword_1001BA298, &protocol conformance descriptor for TupleToolbarContent<A>);
    sub_10000BFFC(&qword_100224F70, &qword_100224F78, &qword_1001BA2A0, &protocol conformance descriptor for TupleToolbarContent<A>);
    v74 = v140;
    v75 = v142;
    static ToolbarContentBuilder.buildEither<A, B>(first:)();
    (*(v117 + 8))(v73, v75);
    (*(v71 + 8))(v36, v72);
    (*(v39 + 8))(v41, v121);
LABEL_19:
    sub_1000A6218();
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    return sub_1000050C4(v74, &qword_100224F50, &qword_1001BA290);
  }

  v121 = v19;
  v43 = v145;
  v44 = v152;
  sub_10009CE08(v145);
  v45 = sub_1000ABC70();

  if (v45)
  {
    v46 = static ToolbarItemPlacement.topBarLeading.getter();
    __chkstk_darwin(v46);
    v47 = v148;
    *(&v108 - 6) = v147;
    *(&v108 - 5) = v47;
    *(&v108 - 4) = v149;
    *(&v108 - 3) = a5;
    v109 = a5;
    *(&v108 - 2) = v44;
    sub_1000024C4(&qword_100225028, &qword_1001BA448);
    v43 = v145;
    sub_1000A6E40(&qword_100225030, &qword_100225028, &qword_1001BA448, sub_1000A69BC);
    v48 = v118;
    v44 = v152;
    ToolbarItem<>.init(placement:content:)();
    v49 = sub_10000BFFC(&qword_100224FF0, &qword_100224FD0, &qword_1001BA408, &protocol conformance descriptor for ToolbarItem<A, B>);
    v50 = v120;
    v51 = v125;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v52 = v126;
    (*(v25 + 16))(v31, v50, v126);
    (*(v25 + 56))(v31, 0, 1, v52);
    v153 = v51;
    v154 = v49;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000050C4(v31, &qword_100224FD8, &qword_1001BA410);
    (*(v25 + 8))(v50, v52);
    v53 = v48;
    v54 = v109;
    (*(v119 + 8))(v53, v51);
    v55 = v135;
  }

  else
  {
    (*(v25 + 56))(v31, 1, 1, v126);
    v56 = sub_10000BFFC(&qword_100224FF0, &qword_100224FD0, &qword_1001BA408, &protocol conformance descriptor for ToolbarItem<A, B>);
    v153 = v125;
    v154 = v56;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000050C4(v31, &qword_100224FD8, &qword_1001BA410);
    v55 = v135;
    v54 = a5;
  }

  sub_10009CE08(v43);
  v57 = sub_1000A9E14();

  if ((v57 & 1) != 0 && (static Solarium.isEnabled.getter() & 1) == 0)
  {
    v76 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v76);
    v77 = v148;
    *(&v108 - 6) = v147;
    *(&v108 - 5) = v77;
    *(&v108 - 4) = v149;
    *(&v108 - 3) = v54;
    *(&v108 - 2) = v44;
    sub_1000024C4(&qword_100225018, &qword_1001BA440);
    sub_1000A6E40(&qword_100225020, &qword_100225018, &qword_1001BA440, sub_1000A68D4);
    v78 = v110;
    v44 = v152;
    ToolbarItem<>.init(placement:content:)();
    v79 = sub_10000BFFC(&qword_100224FF8, &qword_100224FB8, &qword_1001BA3F0, &protocol conformance descriptor for ToolbarItem<A, B>);
    v80 = v121;
    v81 = v129;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v82 = v128;
    v83 = v127;
    v84 = v130;
    (*(v128 + 16))(v127, v80, v130);
    (*(v82 + 56))(v83, 0, 1, v84);
    v153 = v81;
    v154 = v79;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000050C4(v83, &qword_100224FC0, &qword_1001BA3F8);
    (*(v82 + 8))(v80, v84);
    v85 = v81;
    v43 = v145;
    (*(v111 + 8))(v78, v85);
  }

  else
  {
    v58 = v127;
    (*(v128 + 56))(v127, 1, 1, v130);
    v59 = sub_10000BFFC(&qword_100224FF8, &qword_100224FB8, &qword_1001BA3F0, &protocol conformance descriptor for ToolbarItem<A, B>);
    v153 = v129;
    v154 = v59;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000050C4(v58, &qword_100224FC0, &qword_1001BA3F8);
  }

  v86 = *(v44 + *(v43 + 56));
  if (v86)
  {
    if (*(v86 + 88) && (*(v86 + 80) & 1) != 0)
    {
      v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v87 & 1) == 0)
      {
        v88 = v131;
        (*(v132 + 56))(v131, 1, 1, v134);
        v89 = sub_10000BFFC(&qword_100225000, &qword_100224FA0, &unk_1001BD700, &protocol conformance descriptor for ToolbarItem<A, B>);
        v153 = v133;
        v154 = v89;
        swift_getOpaqueTypeConformance2();
        static ToolbarContentBuilder.buildIf<A>(_:)();
        sub_1000050C4(v88, &qword_100224FA8, &qword_1001BA3E0);
LABEL_18:
        v99 = v136;
        v100 = *(v137 + 48);
        v101 = *(v137 + 64);
        v102 = v150;
        sub_10000BEB8(v150, v136, &qword_100224FD8, &qword_1001BA410);
        v103 = v151;
        sub_10000BEB8(v151, v99 + v100, &qword_100224FC0, &qword_1001BA3F8);
        sub_10000BEB8(v55, v99 + v101, &qword_100224FA8, &qword_1001BA3E0);
        v104 = v55;
        v105 = v138;
        TupleToolbarContent.init(_:)();
        sub_10000BFFC(&qword_100224F60, &qword_100224F68, &qword_1001BA298, &protocol conformance descriptor for TupleToolbarContent<A>);
        sub_10000BFFC(&qword_100224F70, &qword_100224F78, &qword_1001BA2A0, &protocol conformance descriptor for TupleToolbarContent<A>);
        v74 = v140;
        v106 = v143;
        static ToolbarContentBuilder.buildEither<A, B>(second:)();
        (*(v139 + 8))(v105, v106);
        sub_1000050C4(v104, &qword_100224FA8, &qword_1001BA3E0);
        sub_1000050C4(v103, &qword_100224FC0, &qword_1001BA3F8);
        sub_1000050C4(v102, &qword_100224FD8, &qword_1001BA410);
        goto LABEL_19;
      }
    }

    else
    {
    }

    v90 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v90);
    v91 = v148;
    *(&v108 - 6) = v147;
    *(&v108 - 5) = v91;
    *(&v108 - 4) = v149;
    *(&v108 - 3) = v54;
    *(&v108 - 2) = v44;
    sub_1000024C4(&qword_100225008, &unk_1001BA430);
    sub_1000A68D4();
    v92 = v122;
    ToolbarItem<>.init(placement:content:)();
    v93 = sub_10000BFFC(&qword_100225000, &qword_100224FA0, &unk_1001BD700, &protocol conformance descriptor for ToolbarItem<A, B>);
    v94 = v124;
    v95 = v133;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v96 = v132;
    v97 = v131;
    v98 = v134;
    (*(v132 + 16))(v131, v94, v134);
    (*(v96 + 56))(v97, 0, 1, v98);
    v153 = v95;
    v154 = v93;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000050C4(v97, &qword_100224FA8, &qword_1001BA3E0);
    (*(v96 + 8))(v94, v98);
    (*(v123 + 8))(v92, v95);
    goto LABEL_18;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1000A61D0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

__n128 sub_1000A3D48@<Q0>(unint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v22.n128_u64[0] = a1;
  v22.n128_u64[1] = a2;
  v23 = a3;
  v24 = a4;
  v15 = type metadata accessor for VenueEventView(0, &v22);
  sub_10009CE64(v15);
  swift_getKeyPath();
  v22.n128_u64[0] = a1;
  v22.n128_u64[1] = a2;
  v23 = a3;
  v24 = a4;
  type metadata accessor for VenueEventViewModel(255, &v22);
  type metadata accessor for Binding();
  Binding.subscript.getter();

  v18 = v22;
  v16 = v24;
  v17 = v23;

  sub_10009CE64(v15);
  swift_getKeyPath();
  Binding.subscript.getter();

  v10 = sub_10009CE08(v15);
  v11 = (v10 + *(*v10 + 208));
  v13 = *v11;
  v12 = v11[1];

  result = v18;
  *a5 = v18;
  *(a5 + 16) = v17;
  *(a5 + 24) = v16;
  *(a5 + 32) = v19;
  *(a5 + 40) = v20;
  *(a5 + 48) = v21;
  *(a5 + 49) = v22.n128_u32[0];
  *(a5 + 52) = *(v22.n128_u32 + 3);
  *(a5 + 56) = v13;
  *(a5 + 64) = v12;
  return result;
}

uint64_t sub_1000A3F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  v9 = type metadata accessor for VenueEventView(0, v25);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v20 - v12;
  v14 = sub_10009CE08(v11);
  v15 = v14 + *(*v14 + 192);
  v21 = *v15;
  v20[3] = *(v15 + 16);

  (*(v10 + 16))(v13, a1, v9);
  v16 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  v18 = v23;
  *(v17 + 4) = v22;
  *(v17 + 5) = v18;
  (*(v10 + 32))(&v17[v16], v13, v9);
  return Button<>.init(_:action:)();
}

uint64_t sub_1000A4108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000024C4(&qword_100225040, &qword_1001BA450);
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  sub_1000A4218(a1, a2, a3, a4, a5, &v14 - v11);
  sub_1000A69BC();
  View.accessibilityIdentifier(_:)();
  return sub_1000050C4(v12, &qword_100225040, &qword_1001BA450);
}

uint64_t sub_1000A4218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1000024C4(&qword_100225060, &qword_1001BA460);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v54 = sub_1000024C4(&qword_100225068, &qword_1001BA4A0);
  __chkstk_darwin(v54);
  v16 = &v47 - v15;
  v50 = a2;
  v51 = a3;
  v55 = a2;
  v56 = a3;
  v52 = a4;
  v53 = a5;
  v57 = a4;
  v58 = a5;
  v17 = type metadata accessor for VenueEventView(0, &v55);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v47 - v19;
  if (static Solarium.isEnabled.getter())
  {
    (*(v18 + 16))(v20, a1, v17);
    v21 = (*(v18 + 80) + 48) & ~*(v18 + 80);
    v22 = swift_allocObject();
    v23 = v51;
    *(v22 + 2) = v50;
    *(v22 + 3) = v23;
    v24 = v53;
    *(v22 + 4) = v52;
    *(v22 + 5) = v24;
    (*(v18 + 32))(&v22[v21], v20, v17);
    *v16 = 2;
    *(v16 + 1) = sub_1000A82FC;
    *(v16 + 2) = v22;
    v25 = swift_storeEnumTagMultiPayload();
    sub_10008B1A4(v25, v26, v27);
    sub_1000A6ACC();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v29 = sub_10009CE08(v17);
    v33 = sub_1000A9BB0(v29, v30, v31, v32);
    v48 = v12;
    v49 = a6;
    v34 = v33;
    v36 = v35;

    v55 = v34;
    v56 = v36;
    (*(v18 + 16))(v20, a1, v17);
    v37 = (*(v18 + 80) + 48) & ~*(v18 + 80);
    v38 = swift_allocObject();
    v39 = v51;
    *(v38 + 2) = v50;
    *(v38 + 3) = v39;
    v40 = v53;
    *(v38 + 4) = v52;
    *(v38 + 5) = v40;
    v41 = (*(v18 + 32))(&v38[v37], v20, v17);
    sub_10001877C(v41, v42, v43);
    Button<>.init<A>(_:action:)();
    *&v14[*(v48 + 36)] = static Color.blue.getter();
    sub_1000A6C5C(v14, v16);
    v44 = swift_storeEnumTagMultiPayload();
    sub_10008B1A4(v44, v45, v46);
    sub_1000A6ACC();
    _ConditionalContent<>.init(storage:)();
    return sub_1000050C4(v14, &qword_100225060, &qword_1001BA460);
  }
}

void sub_1000A45BC(uint64_t a1)
{
  sub_10009CE08(a1);
  sub_1000AA4B0();

  sub_10009CE08(a1);
  v3 = *(v1 + *(a1 + 56));
  if (v3)
  {

    sub_1000A8CF8(0, 14, 0, 3u, v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000A61D0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

double sub_1000A46B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)()@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a6;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v11 = type metadata accessor for VenueEventView(0, &v21);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  (*(v12 + 16))(&v20 - v13, a1, v11);
  v15 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v12 + 32))(&v16[v15], v14, v11);
  v17 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  LOWORD(v21) = 1;
  v22 = sub_1000A6D68;
  v23 = v16;
  v24 = KeyPath;
  v25 = v17;
  sub_1000024C4(&qword_100225008, &unk_1001BA430);
  sub_1000A68D4();
  View.accessibilityIdentifier(_:)();

  return result;
}

void sub_1000A4894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v6 = type metadata accessor for VenueEventView(0, v8);
  sub_10009CE08(v6);
  sub_1000A9E68();

  sub_10009CE08(v6);
  v7 = *(a1 + *(v6 + 56));
  if (v7)
  {

    sub_1000A8CF8(0, 0, 0, 3u, v7);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000A61D0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000A49A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[1] = a1;
  v11 = type metadata accessor for DismissAction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v23 - v16;
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  type metadata accessor for VenueEventView(0, v24);
  sub_100039CB8(v17);
  v18 = *(v12 + 32);
  v18(v15, v17, v11);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v18((v20 + v19), v15, v11);
  v21 = static Font.title2.getter();
  result = swift_getKeyPath();
  *a6 = 0;
  *(a6 + 8) = sub_1000172FC;
  *(a6 + 16) = v20;
  *(a6 + 24) = result;
  *(a6 + 32) = v21;
  return result;
}

uint64_t sub_1000A4B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v86 = a6;
  v88 = a5;
  v87 = a3;
  v89 = a2;
  v90 = a1;
  v93 = a7;
  v92 = type metadata accessor for SearchFieldPlacement();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v94 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VenueEventListHeader(255, a3, a5, v11);
  v12 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v113 = &protocol witness table for EmptyView;
  v114 = WitnessTable;
  v115 = &protocol witness table for EmptyView;
  v14 = swift_getWitnessTable();
  v108 = v12;
  v109 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100223470, &qword_1001B7380);
  v85 = type metadata accessor for ModifiedContent();
  v84 = sub_10000460C(&qword_100224F18, &qword_1001BA268);
  v83 = sub_10000460C(&qword_100224F20, &qword_1001BA270);
  v15 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_10000460C(&qword_100224F28, &qword_1001BA278);
  v18 = swift_getWitnessTable();
  v19 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v108 = v15;
  v109 = AssociatedTypeWitness;
  v110 = v17;
  v111 = v18;
  v112 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v21 = type metadata accessor for Section();
  v107 = sub_1000A6054();
  v22 = swift_getWitnessTable();
  v104 = &protocol witness table for EmptyView;
  v105 = v22;
  v106 = &protocol witness table for EmptyView;
  v23 = swift_getWitnessTable();
  v108 = v21;
  v109 = v23;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  v24 = type metadata accessor for TupleView();
  v25 = swift_getWitnessTable();
  v108 = &type metadata for Never;
  v109 = v24;
  v110 = &protocol witness table for Never;
  v111 = v25;
  v26 = type metadata accessor for List();
  v27 = type metadata accessor for PlainListStyle();
  v28 = swift_getWitnessTable();
  v108 = v26;
  v109 = v27;
  v110 = v28;
  v111 = &protocol witness table for PlainListStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v108 = v26;
  v109 = v27;
  v110 = v28;
  v111 = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v108 = OpaqueTypeMetadata2;
  v109 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeMetadata2();
  v108 = OpaqueTypeMetadata2;
  v109 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v108 = v31;
  v109 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v108 = v31;
  v109 = v32;
  v34 = swift_getOpaqueTypeConformance2();
  v108 = v33;
  v109 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v108 = v33;
  v109 = v34;
  v36 = swift_getOpaqueTypeConformance2();
  v108 = v35;
  v109 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  v108 = v35;
  v109 = v36;
  v38 = swift_getOpaqueTypeConformance2();
  v108 = v37;
  v109 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v108 = v37;
  v109 = v38;
  v40 = swift_getOpaqueTypeConformance2();
  v43 = sub_10001877C(v40, v41, v42);
  v108 = v39;
  v109 = &type metadata for String;
  v110 = v40;
  v111 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v108 = v39;
  v109 = &type metadata for String;
  v110 = v40;
  v111 = v43;
  v45 = swift_getOpaqueTypeConformance2();
  v108 = v44;
  v109 = &type metadata for Bool;
  v110 = v45;
  v111 = &protocol witness table for Bool;
  v46 = swift_getOpaqueTypeMetadata2();
  v47 = sub_10000460C(&qword_100224F48, &qword_1001BA288);
  v108 = v44;
  v109 = &type metadata for Bool;
  v110 = v45;
  v111 = &protocol witness table for Bool;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_10000460C(&qword_100224F50, &qword_1001BA290);
  v50 = sub_1000A6218();
  v108 = v49;
  v109 = v50;
  v51 = swift_getOpaqueTypeConformance2();
  v108 = v46;
  v109 = v47;
  v110 = v48;
  v111 = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v108 = v46;
  v109 = v47;
  v110 = v48;
  v111 = v51;
  v53 = swift_getOpaqueTypeConformance2();
  v79 = v52;
  v108 = v52;
  v109 = &type metadata for String;
  v82 = v53;
  v110 = v53;
  v111 = v43;
  v85 = v43;
  v84 = swift_getOpaqueTypeMetadata2();
  v83 = *(v84 - 8);
  v54 = __chkstk_darwin(v84);
  v80 = &v79 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v81 = &v79 - v56;
  v57 = v87;
  v108 = v87;
  v109 = v19;
  v58 = v19;
  v59 = v88;
  v60 = v86;
  v110 = v88;
  v111 = v86;
  v61 = type metadata accessor for VenueEventView(0, &v108);
  v62 = sub_10009CE64(v61);
  v64 = v63;
  v66 = v65;
  v95 = v57;
  v96 = v58;
  v97 = v59;
  v98 = v60;
  swift_getKeyPath();
  v101 = v62;
  v102 = v64;
  v103 = v66;
  v108 = v57;
  v109 = v58;
  v110 = v59;
  v111 = v60;
  type metadata accessor for VenueEventViewModel(255, &v108);
  type metadata accessor for Binding();
  Binding.subscript.getter();

  v87 = v110;
  v88 = v111;

  sub_10009CE08(v61);
  LOBYTE(v62) = sub_1000A9E14();

  if (v62)
  {
    static SearchFieldPlacement.automatic.getter();
  }

  else
  {
    static SearchFieldPlacement.never.getter();
  }

  v67 = sub_10009CE08(v61);
  v68 = (v67 + *(*v67 + 208));
  v69 = *v68;
  v70 = v68[1];

  v99 = v69;
  v100 = v70;
  v71 = swift_checkMetadataState();
  v72 = v85;
  v73 = v82;
  v74 = v80;
  View.searchable<A>(text:placement:prompt:)();

  (*(v91 + 8))(v94, v92);
  v108 = v71;
  v109 = &type metadata for String;
  v110 = v73;
  v111 = v72;
  swift_getOpaqueTypeConformance2();
  v75 = v81;
  v76 = v84;
  sub_1000EE87C();
  v77 = *(v83 + 8);
  v77(v74, v76);
  sub_1000EE87C();
  return (v77)(v75, v76);
}

uint64_t sub_1000A56AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v35 = a1;
  v36 = a4;
  v6 = type metadata accessor for Optional();
  v7 = __chkstk_darwin(v6 - 8);
  v34 = &v33 - v8;
  v9 = *(a2 - 8);
  v10 = __chkstk_darwin(v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000A62F8(v10, v13, v14);
  v18 = sub_1000A634C(v15, v16, v17);
  v37 = a2;
  v38 = &type metadata for ArtistFetcher;
  v39 = &type metadata for PromotionalPlaylistFetcher;
  v40 = a3;
  v41 = v15;
  v42 = v18;
  v19 = type metadata accessor for MusicEventView(0, &v37);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v33 - v24;
  v37 = a2;
  v38 = &type metadata for ArtistFetcher;
  v39 = &type metadata for PromotionalPlaylistFetcher;
  v40 = a3;
  v41 = v15;
  v42 = v18;
  type metadata accessor for MusicEventViewModel(0, &v37);
  (*(v9 + 16))(v12, v35, a2);
  v26 = v34;
  (*(v9 + 56))(v34, 1, 1, a2);
  v29 = sub_100160920(v12, v26, v27, v28);
  KeyPath = swift_getKeyPath();
  sub_100173A6C(v29, KeyPath, 0, v23);
  swift_getWitnessTable();
  sub_1000EE87C();
  v31 = *(v20 + 8);
  v31(v23, v19);
  sub_1000EE87C();
  return v31(v25, v19);
}

uint64_t sub_1000A5994@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A9F94();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000A59EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a2;
  v28 = a4;
  v25 = a1;
  v29 = a6;
  v30[0] = a2;
  v30[1] = a3;
  v30[2] = a4;
  v30[3] = a5;
  v8 = type metadata accessor for VenueEventView(0, v30);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v13 = type metadata accessor for FilterView(0, a3, a5, v12);
  v26 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v24 - v17;
  (*(v9 + 16))(v11, v25, v8);
  v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 2) = v27;
  *(v20 + 3) = a3;
  *(v20 + 4) = v21;
  *(v20 + 5) = a5;
  (*(v9 + 32))(&v20[v19], v11, v8);
  sub_1000B1954(a3, a5, v16, sub_1000A66F8, v20);
  swift_getWitnessTable();
  sub_1000EE87C();
  v22 = *(v26 + 8);
  v22(v16, v13);
  sub_1000EE87C();
  return (v22)(v18, v13);
}

Swift::String *sub_1000A5C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v14 = sub_10009CE64(v13);
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

  v19 = sub_100037E70(v11);
  (*(v22 + 8))(v11, v23);
  return v19;
}

double sub_1000A5E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v7 = type metadata accessor for VenueEventView(0, v9);
  sub_10009CE08(v7);
  a6();

  return result;
}

void sub_1000A5E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v6 = type metadata accessor for VenueEventView(0, v8);
  sub_10009CE08(v6);
  if (*(a1 + *(v6 + 56)))
  {

    sub_1000AA414(v7);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000A61D0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

void sub_1000A5F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v6 = type metadata accessor for VenueEventView(0, v8);
  sub_10009CE08(v6);
  v7 = *(a1 + *(v6 + 56));
  if (v7)
  {

    sub_1000A8CF8(0, 2, 0, 3u, v7);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000A61D0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

unint64_t sub_1000A6054()
{
  result = qword_100224F30;
  if (!qword_100224F30)
  {
    sub_10000460C(&qword_100224F28, &qword_1001BA278);
    sub_10000460C(&qword_100224F38, &qword_1001BA280);
    type metadata accessor for PlainButtonStyle();
    sub_10000BFFC(&qword_100224F40, &qword_100224F38, &qword_1001BA280, &protocol conformance descriptor for Button<A>);
    sub_1000A61D0(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1000A61D0(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224F30);
  }

  return result;
}

uint64_t sub_1000A61D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000A6218()
{
  result = qword_100224F58;
  if (!qword_100224F58)
  {
    sub_10000460C(&qword_100224F50, &qword_1001BA290);
    sub_10000BFFC(&qword_100224F60, &qword_100224F68, &qword_1001BA298, &protocol conformance descriptor for TupleToolbarContent<A>);
    sub_10000BFFC(&qword_100224F70, &qword_100224F78, &qword_1001BA2A0, &protocol conformance descriptor for TupleToolbarContent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224F58);
  }

  return result;
}

unint64_t sub_1000A62F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224F80;
  if (!qword_100224F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224F80);
  }

  return result;
}

unint64_t sub_1000A634C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100224F88;
  if (!qword_100224F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100224F88);
  }

  return result;
}

__n128 sub_1000A640C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1000A6434@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A9F94();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000A64B4@<X0>(uint64_t a1@<X8>)
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

  return sub_1000A59EC(v8, v3, v4, v5, v6, a1);
}

double sub_1000A6578(void (*a1)(void))
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
  return sub_1000A5E2C(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

uint64_t sub_1000A6630(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
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

Swift::String *sub_1000A66F8()
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

  return sub_1000A5C74(v6, v1, v2, v3, v4);
}

double sub_1000A67CC(uint64_t a1, char *a2)
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

  return sub_1000A26A8(a1, a2, v10, v5, v6, v7, v8);
}

unint64_t sub_1000A68D4()
{
  result = qword_100225010;
  if (!qword_100225010)
  {
    v1 = sub_10000460C(&qword_100225008, &unk_1001BA430);
    sub_10008B1A4(v1, v2, v3);
    sub_10000BFFC(&qword_100222260, &qword_100222268, &unk_1001B6970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225010);
  }

  return result;
}

unint64_t sub_1000A69BC()
{
  result = qword_100225038;
  if (!qword_100225038)
  {
    sub_10000460C(&qword_100225040, &qword_1001BA450);
    sub_1000A6A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225038);
  }

  return result;
}

unint64_t sub_1000A6A40()
{
  result = qword_100225048;
  if (!qword_100225048)
  {
    v1 = sub_10000460C(&qword_100225050, &qword_1001BA458);
    sub_10008B1A4(v1, v2, v3);
    sub_1000A6ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225048);
  }

  return result;
}

unint64_t sub_1000A6ACC()
{
  result = qword_100225058;
  if (!qword_100225058)
  {
    sub_10000460C(&qword_100225060, &qword_1001BA460);
    sub_10000BFFC(&qword_100221A08, &qword_100221A00, &qword_1001B7410, &protocol conformance descriptor for Button<A>);
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8, &qword_1001B6490, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225058);
  }

  return result;
}

unint64_t sub_1000A6BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100226590;
  if (!qword_100226590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226590);
  }

  return result;
}

uint64_t sub_1000A6C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100225060, &qword_1001BA460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000A6CCC()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v1 = v6;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  type metadata accessor for VenueEventView(0, &v6);
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v5 = type metadata accessor for VenueEventView(0, &v6);
  sub_1000A45BC(v5);
}

uint64_t sub_1000A6D88()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000A6E40(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    a4();
    sub_1000A61D0(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A6EF4()
{
  result = qword_100225088;
  if (!qword_100225088)
  {
    sub_10000460C(&qword_100225090, &qword_1001BA4E8);
    sub_10000BFFC(&qword_1002238C0, &qword_1002238C8, &unk_1001BA4F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225088);
  }

  return result;
}

unint64_t sub_1000A6FC4()
{
  result = qword_100225098;
  if (!qword_100225098)
  {
    sub_10000460C(&qword_100224F20, &qword_1001BA270);
    sub_1000A6E40(&qword_100225080, &qword_100225078, &qword_1001BA4E0, sub_1000A6EF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225098);
  }

  return result;
}

unint64_t sub_1000A7080()
{
  result = qword_1002250A0;
  if (!qword_1002250A0)
  {
    sub_10000460C(&qword_100224F18, &qword_1001BA268);
    sub_10000460C(&qword_100225070, &qword_1001BA4D8);
    sub_1000A7174();
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_100223468, &qword_100223470, &qword_1001B7380, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002250A0);
  }

  return result;
}

unint64_t sub_1000A7174()
{
  result = qword_1002250A8;
  if (!qword_1002250A8)
  {
    sub_10000460C(&qword_100225070, &qword_1001BA4D8);
    sub_1000A6E40(&qword_1002250B0, &qword_1002250B8, &qword_1001BD7B0, sub_1000A7230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002250A8);
  }

  return result;
}

unint64_t sub_1000A7230()
{
  result = qword_1002250C0;
  if (!qword_1002250C0)
  {
    sub_10000460C(&qword_1002250C8, &qword_1001BA500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002250C0);
  }

  return result;
}

uint64_t sub_1000A72E4()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v2 = type metadata accessor for VenueEventView(0, v7);
  v3 = v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80));

  v4 = *(v2 + 52);
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
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

uint64_t sub_1000A7428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

  return sub_1000A17CC(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_1000A74E4()
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
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
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

void sub_1000A76C4()
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
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0 + ((v6 + *(v5 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80));

  sub_1000A1DE4(v0 + v6, v7, v1, v2, v3, v4);
}

unint64_t sub_1000A77CC()
{
  result = qword_1002250E0;
  if (!qword_1002250E0)
  {
    v1 = sub_10000460C(&qword_1002250D8, &unk_1001BA510);
    sub_1000A7884(v1, v2, v3);
    sub_10000BFFC(&qword_1002230D8, &qword_1002230D0, &unk_1001B6E00, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002250E0);
  }

  return result;
}

unint64_t sub_1000A7884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002250E8[0];
  if (!qword_1002250E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002250E8);
  }

  return result;
}

uint64_t sub_1000A78E0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v27 = v3;
  type metadata accessor for NavigationPath();
  type metadata accessor for VenueEventListHeader(255, v2, v4, v5);
  v6 = type metadata accessor for Section();
  v39 = &protocol witness table for EmptyView;
  WitnessTable = swift_getWitnessTable();
  v41 = &protocol witness table for EmptyView;
  v29 = v6;
  v30 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100223470, &qword_1001B7380);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100224F18, &qword_1001BA268);
  sub_10000460C(&qword_100224F20, &qword_1001BA270);
  type metadata accessor for Array();
  v28 = *(v3[1] + 16);
  swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_100224F28, &qword_1001BA278);
  swift_getWitnessTable();
  v7 = v1;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  type metadata accessor for Section();
  v38 = sub_1000A6054();
  v35 = &protocol witness table for EmptyView;
  v36 = swift_getWitnessTable();
  v37 = &protocol witness table for EmptyView;
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
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10001877C(OpaqueTypeConformance2, v9, v10);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100224F48, &qword_1001BA288);
  swift_getOpaqueTypeConformance2();
  sub_10000460C(&qword_100224F50, &qword_1001BA290);
  sub_1000A6218();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v11 = type metadata accessor for NavigationStack();
  v29 = v1;
  v30 = &type metadata for ArtistFetcher;
  v31 = &type metadata for PromotionalPlaylistFetcher;
  v32 = v3;
  v33 = sub_1000A62F8(v11, v12, v13);
  v34 = sub_1000A634C(v33, v14, v15);
  v16 = type metadata accessor for MusicEventView(255, &v29);
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v29 = v11;
  v30 = v7;
  v31 = v16;
  v32 = v17;
  v33 = v28;
  v34 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for FilterView(255, v7, v27, v20);
  v29 = v11;
  v30 = v7;
  v31 = v16;
  v32 = v17;
  v33 = v28;
  v34 = v18;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = swift_getWitnessTable();
  v29 = OpaqueTypeMetadata2;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v29 = OpaqueTypeMetadata2;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v25 = swift_getOpaqueTypeConformance2();
  v29 = v24;
  v30 = &type metadata for String;
  v31 = v25;
  v32 = &protocol witness table for String;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v29 = v24;
  v30 = &type metadata for String;
  v31 = v25;
  v32 = &protocol witness table for String;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000A61D0(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1000A8318(uint64_t a1)
{
  v2 = sub_1000A83A0(a1);
  v3 = v1 + 4;
  if (v2)
  {
    v3 = v1;
  }

  v4 = *v3;

  return v4;
}

BOOL sub_1000A83A0(uint64_t a1)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return (Collection.isEmpty.getter() & 1) == 0;
}

uint64_t sub_1000A8410(uint64_t a1)
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.prefix(_:)();
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t sub_1000A84DC(uint64_t a1)
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.prefix(_:)();
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t sub_1000A85A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*(v2 + 96) + 16))
  {
    return URL.appending(queryItems:)();
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

void sub_1000A8634(void *a1)
{
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  v5 = a1[2];
  v4 = a1[3];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  v6 = *(v1 + 104);
  if (v6 == 15)
  {
    LOBYTE(v6) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = v6;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 16;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = xmmword_1001BA550;
  *(inited + 168) = 3;
  if (a1[9])
  {
    v7 = a1[8];
    v8 = a1[9];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v15 = v7;
  v16 = v8;

  v9 = sub_1001894F4(1, 5, 1, inited);
  v13 = v9;
  sub_100006C98(&aBlock, v20);
  sub_100118768(4, v20, &v13, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v10 = String._bridgeToObjectiveC()();
  v11 = swift_allocObject();
  v11[2] = 0xD00000000000001ELL;
  v11[3] = 0x80000001001C4640;
  v11[4] = v9;
  v18 = sub_100006D88;
  v19 = v11;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10015B4A4;
  v17 = &unk_100215500;
  v12 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

uint64_t sub_1000A889C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = LocalizedStringKey.init(stringLiteral:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = LocalizedStringKey.init(stringLiteral:)();
  *a7 = v13;
  *(a7 + 8) = v15;
  *(a7 + 16) = v17 & 1;
  *(a7 + 24) = v19;
  *(a7 + 32) = result;
  *(a7 + 40) = v22;
  *(a7 + 48) = v21 & 1;
  *(a7 + 56) = v23;
  *(a7 + 64) = a1;
  *(a7 + 72) = a2;
  *(a7 + 80) = a3;
  *(a7 + 88) = a4;
  *(a7 + 96) = a5;
  *(a7 + 104) = a6;
  return result;
}

uint64_t sub_1000A8978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000A89C0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000A89EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1000A8A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A8AA8()
{

  return swift_deallocObject();
}

double sub_1000A8AE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000A8B00(void *a1)
{
  v2 = a1[11];
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for FilterViewModel.FilterConfiguration(319, v2, a1[13], v4);
    if (v6 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        result = type metadata accessor for LocalizedStringResource();
        if (v8 <= 0x3F)
        {
          result = type metadata accessor for ObservationRegistrar();
          if (v9 <= 0x3F)
          {
            return swift_initClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000A8CD0()
{
  sub_1000AB348();
}

void sub_1000A8CF8(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v11 = *v5;
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001B3B60;
  v13 = (*(*(v11 + 96) + 40))(*(v11 + 80));
  *(v12 + 56) = &type metadata for AnalyticsString;
  *(v12 + 64) = &off_100228B70;
  *(v12 + 32) = 0;
  *(v12 + 40) = v13;
  *(v12 + 48) = v14;
  *(v12 + 96) = &type metadata for AnalyticsPageName;
  *(v12 + 104) = &off_100228B48;
  *(v12 + 72) = 9;
  *(v12 + 136) = &type metadata for AnalyticsModuleName;
  *(v12 + 144) = &off_100228BD0;
  *(v12 + 112) = a1;
  *(v12 + 176) = &type metadata for AnalyticsModuleAction;
  *(v12 + 184) = &off_100228BA8;
  *(v12 + 152) = a2;
  *(v12 + 160) = a3;
  *(v12 + 168) = a4;
  if (*(a5 + 72))
  {
    v15 = *(a5 + 64);
    v16 = *(a5 + 72);
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v30 = &type metadata for AnalyticsString;
  v31 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  v28 = v15;
  v29 = v16;
  sub_100006C80(a2, a3, a4);
  v33 = v12;
  v17 = *(v12 + 16);
  v18 = *(v12 + 24);

  if (v17 >= v18 >> 1)
  {
    v12 = sub_1001894F4((v18 > 1), v17 + 1, 1, v12);
    v33 = v12;
  }

  v19 = sub_10002FAD0(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v19);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  sub_100118768(v17, v21, &v33, &type metadata for AnalyticsString, &off_100228B70);
  sub_100012A7C(&aBlock);
  v23 = String._bridgeToObjectiveC()();
  v24 = swift_allocObject();
  v24[2] = 0xD00000000000001ELL;
  v24[3] = 0x80000001001C4640;
  v24[4] = v12;
  v31 = sub_100006D88;
  v32 = v24;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10015B4A4;
  v30 = &unk_100215608;
  v25 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v25);
}

uint64_t sub_1000A9040(uint64_t a1)
{
  v47 = a1;
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v52 = &v46 - v5;
  v6 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 8);
  v9 = swift_getAssociatedTypeWitness();
  v48 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 80);
  v17 = *(v2 + 96);
  v54 = v3;
  v18 = sub_1000AB45C(v47, v16, v4, v17, v3);
  v19 = 0;
  v20 = 0;
  if (v18)
  {
    (*(v13 + 16))(v15, v1 + *(*v1 + 216), v12);
    v19 = String.init(localized:)();
    v20 = v21;
  }

  v46 = v19;
  (*(v8 + 168))(v4, v8);
  v22 = v49;
  static Date.FormatStyle.Symbol.Weekday.wide.getter();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = sub_1000209A8(v22, v9, AssociatedConformanceWitness);
  v26 = v25;
  (*(v50 + 8))(v22, v51);
  (*(v48 + 8))(v11, v9);
  v58 = v24;
  v59 = v26;
  v27 = v52;
  (*(v54 + 88))(v4, v54);
  v28 = AssociatedTypeWitness;
  v29 = swift_getAssociatedConformanceWitness();
  v30 = sub_1000B141C(v28, v29);
  v32 = v31;
  result = (*(v53 + 8))(v27, v28);
  v34 = 0;
  v60 = v30;
  v61 = v32;
  v62 = v46;
  v63 = v20;
  v35 = _swiftEmptyArrayStorage;
LABEL_4:
  if (v34 <= 3)
  {
    v36 = 3;
  }

  else
  {
    v36 = v34;
  }

  v37 = v36 + 1;
  v38 = 16 * v34 + 40;
  while (1)
  {
    if (v34 == 3)
    {
      sub_1000024C4(&qword_10022AF10, &qword_1001B5980);
      swift_arrayDestroy();
      v56 = v35;
      sub_1000024C4(&qword_1002251F0, &qword_1001BAD30);
      sub_1000ABC08();
      v45 = BidirectionalCollection<>.joined(separator:)();

      return v45;
    }

    if (v37 == ++v34)
    {
      break;
    }

    v39 = v38 + 16;
    v40 = *&v57[v38];
    v38 += 16;
    if (v40)
    {
      v41 = *(&v54 + v39);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100189664(0, *(v35 + 2) + 1, 1, v35);
        v35 = result;
      }

      v43 = *(v35 + 2);
      v42 = *(v35 + 3);
      if (v43 >= v42 >> 1)
      {
        result = sub_100189664((v42 > 1), v43 + 1, 1, v35);
        v35 = result;
      }

      *(v35 + 2) = v43 + 1;
      v44 = &v35[16 * v43];
      *(v44 + 4) = v41;
      *(v44 + 5) = v40;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A95CC()
{
  v0 = sub_1000AB3D0();

  return v0;
}

uint64_t sub_1000A9604(char a1)
{
  if (a1)
  {
    v2 = (*(*(*v1 + 96) + 48))(*(*v1 + 80));
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  return sub_1000AA7D4(v2, v3);
}

uint64_t sub_1000A9690()
{
  KeyPath = swift_getKeyPath();
  sub_1000AA4B8(KeyPath, v2, v3);

  return *(v0 + 16);
}

uint64_t sub_1000A9704()
{
  v0 = sub_1000AB29C();

  return v0;
}

uint64_t sub_1000A973C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000AB29C();
  a1[1] = v2;
}

uint64_t sub_1000A977C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000A97BC(v1, v2);
}

uint64_t sub_1000A97BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (v2 + *(*v2 + 128));
  v7 = v6[1];
  v18 = *v6;
  v19 = v7;
  v16 = a1;
  v17 = a2;
  v8 = *(v5 + 80);
  v14 = *(v5 + 96);
  v15 = v8;
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v9)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    __chkstk_darwin(v9);
    v13[5] = *(&v14 + 1);
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    v13[2] = v2;
    v13[3] = a1;
    v13[4] = a2;
    sub_1000AA558(v12, sub_10002FE2C, v13, &type metadata for () + 8);
  }
}

uint64_t sub_1000A9934@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A9690();
  *a1 = result & 1;
  return result;
}

double sub_1000A998C(char a1)
{
  v2 = *v1;
  v15 = *(v1 + 16);
  v3 = a1 & 1;
  v14 = a1;
  v4 = *(v2 + 80);
  v12 = *(v2 + 96);
  v13 = v4;
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v5)
  {
    *(v1 + 16) = v3;
  }

  else
  {
    __chkstk_darwin(v5);
    v9 = v13;
    v11 = *(&v12 + 1);
    KeyPath = swift_getKeyPath();
    v8 = __chkstk_darwin(KeyPath);
    v10 = v1;
    LOBYTE(v11) = v3;
    sub_1000AA558(v8, sub_10002FAC0, &v9, &type metadata for () + 8);
  }

  return result;
}

void sub_1000A9AD0()
{
  sub_1000A97BC(0, 0xE000000000000000);
  sub_1000A998C(0);
  v0 = objc_opt_self();
  v2[4] = sub_1000F5624;
  v2[5] = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_100185774;
  v2[3] = &unk_100215630;
  v1 = _Block_copy(v2);
  [v0 animateWithDuration:0 delay:v1 options:0 animations:0.3 completion:0.0];
  _Block_release(v1);
}

uint64_t sub_1000A9BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FilterViewModel.FilterConfiguration(0, *(*v4 + 88), *(*v4 + 104), a4);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v25 - v7);
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v26._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD00000000000002DLL;
  v11._object = 0x80000001001C6900;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v26);

  v13 = [v9 mainBundle];
  v27._object = 0xE000000000000000;
  v14._object = 0x80000001001C53C0;
  v14._countAndFlagsBits = 0xD000000000000025;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v27)._countAndFlagsBits;

  sub_1000024C4(&qword_100221A38, &qword_1001BA820);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001B49B0;
  sub_1000AA1A4(v8);
  v18 = *v8;
  (*(v6 + 8))(v8, v5);
  *(v17 + 56) = &type metadata for Int;
  *(v17 + 64) = &protocol witness table for Int;
  *(v17 + 32) = v18;
  v19 = String.init(format:_:)();

  if (!sub_1000AAC24(v20, v21, v22, v23))
  {
    v19 = countAndFlagsBits;
  }

  return v19;
}

uint64_t sub_1000A9E70@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1000AA4B8(KeyPath, v4, v5);

  v6 = *(*v1 + 120);
  swift_beginAccess();
  v7 = type metadata accessor for Optional();
  return (*(*(v7 - 8) + 16))(a1, v1 + v6, v7);
}

uint64_t sub_1000A9F94()
{
  KeyPath = swift_getKeyPath();
  sub_1000AA4B8(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 136));
}

double sub_1000AA01C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v16 = *(v1 + v3);
  v4 = a1 & 1;
  v15 = a1;
  v5 = *(v2 + 80);
  v13 = *(v2 + 96);
  v14 = v5;
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    *(v1 + v3) = v4;
  }

  else
  {
    __chkstk_darwin(v6);
    v10 = v14;
    v12 = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    v9 = __chkstk_darwin(KeyPath);
    v11 = v1;
    LOBYTE(v12) = v4;
    sub_1000AA558(v9, sub_1000ABA88, &v10, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_1000AA17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1000AAAF8(a1, a2, a3, a4);

  return sub_1000AA94C(v4);
}

uint64_t sub_1000AA1A4@<X0>(uint64_t a1@<X8>)
{
  v10 = *(*v1 + 88);
  v11 = *(*v1 + 104);
  KeyPath = swift_getKeyPath();
  sub_1000AA4B8(KeyPath, v4, v5);

  v6 = *(*v1 + 144);
  swift_beginAccess();
  v8 = type metadata accessor for FilterViewModel.FilterConfiguration(0, v10, v11, v7);
  return (*(*(v8 - 8) + 16))(a1, v1 + v6, v8);
}

uint64_t sub_1000AA314()
{
  v0 = sub_1000AB29C();
  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_1000AAAF8(v0, v1, v2, v3);
    type metadata accessor for Array();
    swift_getWitnessTable();
    v5 = _ArrayProtocol.filter(_:)();
    return sub_1000AA94C(v5);
  }

  else
  {
    v7 = sub_1000AAAF8(v0, v1, v2, v3);

    return sub_1000AA94C(v7);
  }
}

uint64_t sub_1000AA414(uint64_t a1)
{
  v3 = (*(*(*v1 + 96) + 40))(*(*v1 + 80));
  sub_10015B530(v3, v4, 9, a1);
}

uint64_t sub_1000AA630(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 120);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000AA6F8(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 144);
  swift_beginAccess();
  v7 = type metadata accessor for FilterViewModel.FilterConfiguration(0, *(v4 + 88), *(v4 + 104), v6);
  (*(*(v7 - 8) + 24))(&a1[v5], a2, v7);
  return swift_endAccess();
}

uint64_t sub_1000AA7D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (v2 + *(*v2 + 152));
  v7 = v6[1];
  v18 = *v6;
  v19 = v7;
  v16 = a1;
  v17 = a2;
  v8 = *(v5 + 80);
  v14 = *(v5 + 96);
  v15 = v8;
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v9)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    __chkstk_darwin(v9);
    v13[5] = *(&v14 + 1);
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    v13[2] = v2;
    v13[3] = a1;
    v13[4] = a2;
    sub_1000AA558(v12, sub_100026C44, v13, &type metadata for () + 8);
  }
}

uint64_t sub_1000AA94C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 160);
  v6 = *(v2 + v5);
  v17 = a1;
  v18 = v6;
  v15 = *(v4 + 80);
  type metadata accessor for Array();
  v14 = *(v4 + 96);
  v16 = *(*(*(*(&v14 + 1) + 8) + 8) + 8);
  swift_getWitnessTable();
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v7)
  {
    *(v2 + v5) = a1;
  }

  else
  {
    __chkstk_darwin(v7);
    v11 = v15;
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v12 = v2;
    v13 = a1;
    sub_1000AA558(v10, sub_1000AB618, &v11, &type metadata for () + 8);
  }
}

uint64_t sub_1000AAAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FilterViewModel.FilterConfiguration(0, *(*v4 + 88), *(*v4 + 104), a4);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - v8;
  if (sub_1000AAC24(v7, v10, v11, v12))
  {
    sub_1000AA1A4(v9);
    v13 = *(v9 + 2);
    v14 = *(v6 + 8);

    v14(v9, v5);
  }

  else
  {
    v13 = *(v4 + *(*v4 + 176));
  }

  return v13;
}

BOOL sub_1000AAC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FilterViewModel.FilterConfiguration(0, *(*v4 + 88), *(*v4 + 104), a4);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v11 - v7);
  sub_1000AA1A4(&v11 - v7);
  v9 = *v8;
  (*(v6 + 8))(v8, v5);
  return v9 > 0;
}

uint64_t sub_1000AAD18(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 104);
  v3 = *(*a2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = v15 - v6;
  (*(v2 + 88))(v3, v2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1000B141C(AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = v10;
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  v15[2] = v9;
  v15[3] = v11;
  v15[0] = sub_1000AB29C();
  v15[1] = v12;
  sub_10001877C(v15[0], v12, v13);
  LOBYTE(v9) = StringProtocol.localizedStandardContains<A>(_:)();

  return v9 & 1;
}

uint64_t *sub_1000AAED8()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = *(*v0 + 144);
  v7 = type metadata accessor for FilterViewModel.FilterConfiguration(0, v3, *(v1 + 104), v6);
  (*(*(v7 - 8) + 8))(v0 + v5, v7);

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 168));

  v8 = *(*v0 + 216);
  v9 = type metadata accessor for LocalizedStringResource();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(*v0 + 224);
  v11 = type metadata accessor for ObservationRegistrar();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_1000AB1D4()
{
  sub_1000AAED8();

  return swift_deallocClassInstance();
}

uint64_t sub_1000AB244()
{

  return swift_deallocObject();
}

double sub_1000AB284(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000AB29C()
{
  KeyPath = swift_getKeyPath();
  sub_1000AA4B8(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 128));
}

uint64_t sub_1000AB348()
{
  KeyPath = swift_getKeyPath();
  sub_1000AA4B8(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 160));
}

uint64_t sub_1000AB3D0()
{
  KeyPath = swift_getKeyPath();
  sub_1000AA4B8(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 152));
}

uint64_t sub_1000AB45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(a5 + 104))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a5) = sub_1000F57B8(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return a5 & 1;
}

uint64_t sub_1000AB598@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000AB348();
}

__n128 sub_1000AB60C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1000AB618()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 160)) = *(v0 + 24);
}

double sub_1000AB6BC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 120);
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v12 = *(v4 + 80);
  v19 = *(v5 + 96);
  v20 = *(*(*(*(&v19 + 1) + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v13);
    *&v15 = v12;
    *(&v15 + 1) = v6;
    v16 = v19;
    *(&v19 - 2) = v15;
    *(&v19 - 1) = v16;
    KeyPath = swift_getKeyPath();
    v18 = __chkstk_darwin(KeyPath);
    *(&v19 - 2) = v2;
    *(&v19 - 1) = a1;
    sub_1000AA558(v18, sub_1000ABAC0, (&v19 - 2), &type metadata for () + 8);
  }

  return result;
}

double sub_1000AB974(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v9 = *(*v1 + 80);
  v10 = v3;
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  sub_1000AA558(KeyPath, sub_1000ABA1C, &v6, &type metadata for () + 8);

  return result;
}

uint64_t sub_1000ABADC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A9690();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000ABB58@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  *a2 = a1();
  a2[1] = v3;
}

uint64_t sub_1000ABBB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

unint64_t sub_1000ABC08()
{
  result = qword_1002251F8;
  if (!qword_1002251F8)
  {
    sub_10000460C(&qword_1002251F0, &qword_1001BAD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002251F8);
  }

  return result;
}

uint64_t sub_1000ABC90@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000ACEB4(&qword_100221E20, type metadata accessor for EventController, &unk_1001BA890);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16EventViewService15EventController__state;
  swift_beginAccess();
  return sub_1000AD038(v5 + v3, a1);
}

uint64_t sub_1000ABD58(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v4 = sub_1000024C4(&qword_100225388, &qword_1001BD350);
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  v5 = sub_1000024C4(&qword_100225390, &unk_1001BA8C0);
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();
  v6 = sub_1000024C4(&qword_1002211B8, &unk_1001BDAC0);
  v3[30] = v6;
  v3[31] = *(v6 - 8);
  v3[32] = swift_task_alloc();
  v7 = sub_1000024C4(&qword_100225398, &unk_1001BA8D0);
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();
  v8 = sub_1000024C4(&qword_1002253A0, &qword_1001BC170);
  v3[36] = v8;
  v3[37] = *(v8 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = sub_1000024C4(&qword_100221E10, &qword_1001BA8E0);
  v3[40] = swift_task_alloc();
  v3[41] = type metadata accessor for EventController.State(0);
  v3[42] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[43] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[44] = v10;
  v3[45] = v9;

  return _swift_task_switch(sub_1000AC068, v10, v9);
}

uint64_t sub_1000AC068()
{
  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[35];
  v22 = v0[32];
  v24 = v0[29];
  v25 = v0[26];
  v5 = v0[23];
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[46] = OBJC_IVAR____TtC16EventViewService15EventController___observationRegistrar;
  v0[18] = v5;
  v0[47] = sub_1000ACEB4(&qword_100221E20, type metadata accessor for EventController, &unk_1001BA890);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000ACE50(v1);
  v7 = v3[16];
  v8 = v3[20];
  v9 = v3[24];
  v0[2] = v2 + v3[12];
  v0[3] = v2 + v7;
  v0[4] = v2 + v8;
  v0[5] = v2 + v9;
  v23 = type metadata accessor for Art();
  sub_1000ACEB4(&qword_1002253A8, &type metadata accessor for Art, &protocol conformance descriptor for Art);
  static EventService.RequestType.art.getter();
  v21 = type metadata accessor for Dance();
  v10 = sub_1000ACEB4(&qword_1002253B0, &type metadata accessor for Dance, &protocol conformance descriptor for Dance);
  static EventService.RequestType.dance.getter();
  v0[6] = v4;
  v11 = type metadata accessor for Music();
  sub_1000ACEB4(&qword_1002211D0, &type metadata accessor for Music, &protocol conformance descriptor for Music);
  static EventService.RequestType<>.music.getter();
  v0[7] = v22;
  v12 = type metadata accessor for Sport();
  sub_1000ACEB4(&qword_1002253B8, &type metadata accessor for Sport, &protocol conformance descriptor for Sport);
  static EventService.RequestType<>.sport.getter();
  v0[8] = v24;
  v13 = type metadata accessor for Theater();
  v14 = sub_1000ACEB4(&qword_1002253C0, &type metadata accessor for Theater, &protocol conformance descriptor for Theater);
  static EventService.RequestType.theater.getter();
  v0[9] = v25;
  v15 = swift_task_alloc();
  v0[48] = v15;
  v0[10] = v21;
  v0[11] = v11;
  v0[12] = v12;
  v0[13] = v13;
  v0[14] = v10;
  v0[15] = sub_1000ACEB4(&qword_1002211D8, &type metadata accessor for Music, &protocol conformance descriptor for Music);
  v0[16] = sub_1000ACEB4(qword_100223FA0, &type metadata accessor for Sport, &protocol conformance descriptor for Sport);
  v0[17] = v14;
  *v15 = v0;
  v15[1] = sub_1000AC4D0;
  v16 = v0[40];
  v17 = v0[38];
  v18 = v0[21];
  v19 = v0[22];

  return EventService.event<A, B>(identifier:ofType:_:)(v16, v0 + 2, v18, v19, v17, v0 + 6, 4, v23);
}

uint64_t sub_1000AC4D0()
{
  v2 = *v1;
  v2[49] = v0;

  v3 = v2[38];
  v4 = v2[37];
  v5 = v2[36];
  if (v0)
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[44];
    v7 = v2[45];
    v8 = sub_1000AC854;
  }

  else
  {
    v9 = v2[34];
    v20 = v2[33];
    v21 = v2[35];
    v19 = v2[32];
    v10 = v2[31];
    v18 = v2[30];
    v11 = v2[28];
    v12 = v2[29];
    v14 = v2[26];
    v13 = v2[27];
    v16 = v2[24];
    v15 = v2[25];
    (*(v4 + 8))(v3, v5);
    (*(v15 + 8))(v14, v16);
    (*(v11 + 8))(v12, v13);
    (*(v10 + 8))(v19, v18);
    (*(v9 + 8))(v21, v20);
    v6 = v2[44];
    v7 = v2[45];
    v8 = sub_1000AC6DC;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1000AC6DC()
{
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[23];

  sub_1000ACEFC(v2, v1);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v0[20] = v3;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000ACE50(v1);
  sub_1000ACF6C(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000AC854()
{
  v18 = v0[49];
  v17 = v0[42];
  v1 = v0[34];
  v15 = v0[33];
  v16 = v0[35];
  v2 = v0[31];
  v13 = v0[30];
  v14 = v0[32];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];

  (*(v7 + 8))(v5, v8);
  (*(v3 + 8))(v4, v6);
  (*(v2 + 8))(v14, v13);
  (*(v1 + 8))(v16, v15);
  *v17 = v18;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  *(v10 + 24) = v17;
  v0[19] = v9;
  swift_errorRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000ACE50(v17);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000ACA5C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16EventViewService15EventController__state;
  swift_beginAccess();
  sub_1000ACFD4(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1000ACAC8()
{
  sub_1000ACE50(v0 + OBJC_IVAR____TtC16EventViewService15EventController__state);
  v1 = OBJC_IVAR____TtC16EventViewService15EventController_service;
  v2 = type metadata accessor for EventService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16EventViewService15EventController___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1000ACBDC(uint64_t a1)
{
  result = type metadata accessor for EventController.State(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for EventService();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1000ACD00(uint64_t a1)
{
  sub_100004654();
  if (v1 <= 0x3F)
  {
    sub_1000ACD74(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000ACD74(uint64_t a1)
{
  if (!qword_100225358)
  {
    sub_10000460C(&qword_100221E28, &unk_1001B53B0);
    sub_10000460C(&qword_100221E30, &unk_1001BA880);
    sub_10000460C(&qword_100221710, &unk_1001B4470);
    sub_10000460C(&qword_100221E38, &qword_1001B53C0);
    sub_10000460C(&qword_100221E40, &qword_1001B53C8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100225358);
    }
  }
}

uint64_t sub_1000ACE50(uint64_t a1)
{
  v2 = type metadata accessor for EventController.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000ACEB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000ACEFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100221E10, &qword_1001BA8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000ACF6C(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100221E10, &qword_1001BA8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000ACFD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventController.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AD038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventController.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AD0FC@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = type metadata accessor for UUID();
  v1 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DesignTimeImage(0);
  __chkstk_darwin(v4);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  URL.init(string:)();
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  result = v15(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    URL.init(string:)();
    result = v15(v10, 1, v13);
    if (result != 1)
    {
      UUID.init()();
      UUID.uuidString.getter();
      (*(v1 + 8))(v3, v23);
      *v6 = ResourceID.init(_:)();
      v6[1] = v17;
      v19 = v4[6];
      v18 = v4[7];
      v20 = *(v14 + 32);
      v20(v6 + v4[5], v10, v13);
      *(v6 + v19) = 0;
      *(v6 + v18) = 0;
      v21 = v24;
      UUID.init()();
      v22 = type metadata accessor for DesignTimeWatchFace(0);
      v20((v21 + *(v22 + 20)), v12, v13);
      return sub_100005180(v6, v21 + *(v22 + 24));
    }
  }

  __break(1u);
  return result;
}

void sub_1000AD3EC(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1000AD878(&qword_100225410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for DesignTimeWatchFace(0);
  type metadata accessor for URL();
  sub_1000AD878(&qword_100221260, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v3 = v1 + *(v2 + 24);
  String.hash(into:)();
  v4 = type metadata accessor for DesignTimeImage(0);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v3 + *(v4 + 24)))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CGColor(0);
    sub_1000AD878(&qword_100221268, type metadata accessor for CGColor, &unk_1001B3470);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v3 + *(v4 + 28)));
}

uint64_t sub_1000AD5B4(uint64_t a1)
{
  *(a1 + 8) = sub_1000AD878(&qword_100225400, type metadata accessor for DesignTimeWatchFace, &unk_1001BA964);
  result = sub_1000AD878(&qword_100225408, type metadata accessor for DesignTimeWatchFace, &unk_1001BA92C);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeWatchFace(uint64_t a1)
{
  result = qword_100225478;
  if (!qword_100225478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AD6CC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int sub_1000AD77C()
{
  Hasher.init(_seed:)();
  sub_1000AD3EC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000AD7C0()
{
  Hasher.init(_seed:)();
  sub_1000AD3EC(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000AD7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return sub_10005859C((a1 + v6), (a2 + v6));
}

uint64_t sub_1000AD878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000AD8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AD938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for DesignTimeImage(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000ADA8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for DesignTimeImage(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1000ADBD8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for DesignTimeImage(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000ADCB8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024C4(&qword_1002254B8, &qword_1001BAA78);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v15 = sub_1000024C4(&qword_1002254C0, &qword_1001BAA80);
  v16 = *(v15 - 8);
  v45 = v15;
  v46 = v16;
  __chkstk_darwin(v15);
  v18 = &v41 - v17;
  v19 = sub_1000024C4(&qword_1002254C8, &qword_1001BAA88);
  v47 = *(v19 - 8);
  v48 = v19;
  __chkstk_darwin(v19);
  v50 = &v41 - v20;
  v44 = a1;
  v51 = a1 & 0x1FF;
  v52 = a2;
  v53 = a3;

  sub_1000024C4(&qword_1002254D0, &qword_1001BAA90);
  sub_1000AF280();
  Button.init(action:label:)();
  (*(v8 + 104))(v10, enum case for DynamicTypeSize.medium(_:), v7);
  v21 = sub_10000BFFC(&qword_100225530, &qword_1002254B8, &qword_1001BAA78, &protocol conformance descriptor for Button<A>);
  View.dynamicTypeSize(_:)();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  Solarium.init()();
  v22 = sub_1000024C4(&qword_100225538, &qword_1001BAAD8);
  v23 = sub_1000024C4(&qword_100225540, &qword_1001BAAE0);
  v54 = v11;
  v55 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_10000460C(&qword_100225548, &unk_1001BAAE8);
  v26 = type metadata accessor for PlainButtonStyle();
  v27 = sub_1000AF688();
  v28 = sub_1000AFB64(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v54 = v25;
  v55 = v26;
  v56 = v27;
  v57 = v28;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = type metadata accessor for BorderlessButtonStyle();
  v31 = sub_1000AFB64(&qword_100225558, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v54 = v25;
  v55 = v30;
  v56 = v27;
  v57 = v31;
  v32 = swift_getOpaqueTypeConformance2();
  v41 = v29;
  v43 = OpaqueTypeConformance2;
  v42 = v23;
  v33 = v45;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v46 + 8))(v18, v33);
  LocalizedStringKey.init(stringLiteral:)();
  v34 = Text.init(_:tableName:bundle:comment:)();
  v36 = v35;
  LOBYTE(a1) = v37;
  v54 = v33;
  v55 = &type metadata for Solarium;
  v56 = v22;
  v57 = v42;
  v58 = v43;
  v59 = &protocol witness table for Solarium;
  v60 = v41;
  v61 = v32;
  swift_getOpaqueTypeConformance2();
  v38 = v48;
  v39 = v50;
  View.accessibility(label:)();
  sub_100017398(v34, v36, a1 & 1);

  return (*(v47 + 8))(v39, v38);
}

uint64_t sub_1000AE34C@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = a1;
  v4 = sub_1000024C4(&qword_100225560, &qword_1001BAB28);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = sub_1000024C4(&qword_100225568, &qword_1001BAB30);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v41 = sub_1000024C4(&qword_100225570, &unk_1001BAB38);
  __chkstk_darwin(v41);
  v13 = &v35 - v12;
  v43 = v4;
  if ((a1 & 0x100) != 0)
  {
    if (!v3)
    {
      static Solarium.isEnabled.getter();
    }

    v45 = Image.init(systemName:)();
    Solarium.init()();
    v39 = sub_1000024C4(&qword_100225520, &unk_1001BAAC8);
    v24 = sub_1000024C4(&qword_100225500, &qword_1001BAAB8);
    v40 = sub_1000AF5D0();
    v34 = sub_1000AF518();
    View.staticIf<A, B, C>(_:then:else:)();

    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    v25 = sub_10000460C(&qword_1002254E0, &qword_1001BAA98);
    v26 = sub_10000460C(&qword_1002254E8, &qword_1001BAAA0);
    v27 = sub_10000460C(&qword_1002254F0, &unk_1001BAAA8);
    v28 = sub_1000AF460();
    v45 = v27;
    v46 = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v38 = v10;
    v30 = OpaqueTypeConformance2;
    v45 = v24;
    v46 = v34;
    v31 = swift_getOpaqueTypeConformance2();
    v45 = &type metadata for Image;
    v46 = &type metadata for Solarium;
    v47 = v25;
    v48 = v26;
    v37 = v7;
    v49 = &protocol witness table for Image;
    v50 = &protocol witness table for Solarium;
    v51 = v30;
    v52 = v31;
    swift_getOpaqueTypeConformance2();
    v45 = &type metadata for Image;
    v46 = &type metadata for Solarium;
    v47 = v39;
    v48 = v24;
    v49 = &protocol witness table for Image;
    v50 = &protocol witness table for Solarium;
    v51 = v40;
    v52 = v34;
    swift_getOpaqueTypeConformance2();
    v32 = v43;
    _ConditionalContent<>.init(storage:)();
    return (*(v5 + 8))(v37, v32);
  }

  else
  {
    v39 = v11;
    v40 = v8;
    if (!v3)
    {
      static Solarium.isEnabled.getter();
    }

    v44 = Image.init(systemName:)();
    Solarium.init()();
    v14 = sub_1000024C4(&qword_1002254E0, &qword_1001BAA98);
    v36 = sub_1000024C4(&qword_1002254E8, &qword_1001BAAA0);
    v15 = sub_10000460C(&qword_1002254F0, &unk_1001BAAA8);
    v16 = sub_1000AF460();
    v45 = v15;
    v46 = v16;
    v17 = swift_getOpaqueTypeConformance2();
    v18 = sub_10000460C(&qword_100225500, &qword_1001BAAB8);
    v37 = v18;
    v38 = sub_1000AF518();
    v45 = v18;
    v46 = v38;
    v33 = swift_getOpaqueTypeConformance2();
    View.staticIf<A, B, C>(_:then:else:)();

    v19 = v39;
    v20 = v41;
    (*(v39 + 16))(v10, v13, v41);
    swift_storeEnumTagMultiPayload();
    v45 = &type metadata for Image;
    v46 = &type metadata for Solarium;
    v47 = v14;
    v48 = v36;
    v49 = &protocol witness table for Image;
    v50 = &protocol witness table for Solarium;
    v51 = v17;
    v52 = v33;
    swift_getOpaqueTypeConformance2();
    v21 = sub_10000460C(&qword_100225520, &unk_1001BAAC8);
    v22 = sub_1000AF5D0();
    v45 = &type metadata for Image;
    v46 = &type metadata for Solarium;
    v47 = v21;
    v48 = v37;
    v49 = &protocol witness table for Image;
    v50 = &protocol witness table for Solarium;
    v51 = v22;
    v52 = v38;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v19 + 8))(v13, v20);
  }
}

double sub_1000AEAAC(uint64_t *a1)
{
  static HierarchicalShapeStyle.primary.getter();

  static Font.Weight.regular.getter();
  sub_1000024C4(&qword_1002254F0, &unk_1001BAAA8);
  sub_1000AF460();
  View.fontWeight(_:)();

  return result;
}

double sub_1000AEB44(uint64_t *a1)
{
  v1 = sub_1000024C4(&qword_100221A50, &qword_1001B4D70);
  __chkstk_darwin(v1 - 8);
  v3 = v12 - v2;
  static SymbolRenderingMode.palette.getter();
  v4 = type metadata accessor for SymbolRenderingMode();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = Image.symbolRenderingMode(_:)();
  sub_1000AF820(v3);
  v6 = objc_opt_self();
  v7 = [v6 secondaryLabelColor];
  v8 = Color.init(uiColor:)();
  v9 = [v6 tertiarySystemFillColor];
  v10 = Color.init(uiColor:)();
  v12[1] = v5;
  v12[2] = v8;
  v12[3] = v10;
  static Font.Weight.semibold.getter();
  sub_1000024C4(&qword_100225500, &qword_1001BAAB8);
  sub_1000AF518();
  View.fontWeight(_:)();

  return result;
}

double sub_1000AECE4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = static Color.white.getter();
  *a2 = v3;
  a2[1] = v4;

  return result;
}

void sub_1000AED24(uint64_t *a2@<X8>)
{
  v3 = sub_1000024C4(&qword_100221A50, &qword_1001B4D70);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  static SymbolRenderingMode.palette.getter();
  v6 = type metadata accessor for SymbolRenderingMode();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = Image.symbolRenderingMode(_:)();
  sub_1000AF820(v5);
  v8 = static Color.white.getter();
  static Color.gray.getter();
  v9 = Color.opacity(_:)();

  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
}

uint64_t sub_1000AEE38(uint64_t a1)
{
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000024C4(&qword_100225548, &unk_1001BAAE8);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  v9 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v11 = sub_1000024C4(&qword_1002254C0, &qword_1001BAA80);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = &v8[*(v6 + 36)];
  *v12 = KeyPath;
  v12[1] = v9;
  PlainButtonStyle.init()();
  sub_1000AF688();
  sub_1000AFB64(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  return sub_1000AF7B8(v8);
}

uint64_t sub_1000AF03C(uint64_t a1)
{
  v2 = type metadata accessor for BorderlessButtonStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000024C4(&qword_100225548, &unk_1001BAAE8);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  v9 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v11 = sub_1000024C4(&qword_1002254C0, &qword_1001BAA80);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = &v8[*(v6 + 36)];
  *v12 = KeyPath;
  v12[1] = v9;
  BorderlessButtonStyle.init()();
  sub_1000AF688();
  sub_1000AFB64(&qword_100225558, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  return sub_1000AF7B8(v8);
}

uint64_t sub_1000AF240@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1000ADCB8(v2 | *v1, *(v1 + 1), *(v1 + 2), a1);
}

uint64_t sub_1000AF260@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1000AE34C(v2 | *(v1 + 16), a1);
}

unint64_t sub_1000AF280()
{
  result = qword_1002254D8;
  if (!qword_1002254D8)
  {
    sub_10000460C(&qword_1002254D0, &qword_1001BAA90);
    sub_10000460C(&qword_1002254E0, &qword_1001BAA98);
    sub_10000460C(&qword_1002254E8, &qword_1001BAAA0);
    sub_10000460C(&qword_1002254F0, &unk_1001BAAA8);
    sub_1000AF460();
    swift_getOpaqueTypeConformance2();
    sub_10000460C(&qword_100225500, &qword_1001BAAB8);
    sub_1000AF518();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000460C(&qword_100225520, &unk_1001BAAC8);
    sub_1000AF5D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002254D8);
  }

  return result;
}

unint64_t sub_1000AF460()
{
  result = qword_1002254F8;
  if (!qword_1002254F8)
  {
    sub_10000460C(&qword_1002254F0, &unk_1001BAAA8);
    sub_10000BFFC(&qword_100224500, &qword_100224508, &qword_1001B8EF0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002254F8);
  }

  return result;
}

unint64_t sub_1000AF518()
{
  result = qword_100225508;
  if (!qword_100225508)
  {
    sub_10000460C(&qword_100225500, &qword_1001BAAB8);
    sub_10000BFFC(&qword_100225510, &qword_100225518, &qword_1001BAAC0, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225508);
  }

  return result;
}

unint64_t sub_1000AF5D0()
{
  result = qword_100225528;
  if (!qword_100225528)
  {
    sub_10000460C(&qword_100225520, &unk_1001BAAC8);
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8, &qword_1001B6490, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225528);
  }

  return result;
}

unint64_t sub_1000AF688()
{
  result = qword_100225550;
  if (!qword_100225550)
  {
    sub_10000460C(&qword_100225548, &unk_1001BAAE8);
    sub_10000460C(&qword_1002254B8, &qword_1001BAA78);
    sub_10000BFFC(&qword_100225530, &qword_1002254B8, &qword_1001BAA78, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_100222260, &qword_100222268, &unk_1001B6970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225550);
  }

  return result;
}

uint64_t sub_1000AF7B8(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100225548, &unk_1001BAAE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AF820(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100221A50, &qword_1001B4D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000AF8AC()
{
  result = qword_100225578;
  if (!qword_100225578)
  {
    sub_10000460C(&qword_100225580, qword_1001BAB58);
    sub_10000460C(&qword_1002254C0, &qword_1001BAA80);
    sub_10000460C(&qword_100225538, &qword_1001BAAD8);
    sub_10000460C(&qword_100225540, &qword_1001BAAE0);
    sub_10000460C(&qword_1002254B8, &qword_1001BAA78);
    sub_10000BFFC(&qword_100225530, &qword_1002254B8, &qword_1001BAA78, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    sub_10000460C(&qword_100225548, &unk_1001BAAE8);
    type metadata accessor for PlainButtonStyle();
    sub_1000AF688();
    sub_1000AFB64(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for BorderlessButtonStyle();
    sub_1000AFB64(&qword_100225558, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000AFB64(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225578);
  }

  return result;
}

uint64_t sub_1000AFB64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000AFBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100225588;
  if (!qword_100225588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225588);
  }

  return result;
}

unint64_t sub_1000AFC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100225590;
  if (!qword_100225590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225590);
  }

  return result;
}

uint64_t sub_1000AFC70(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000AFD30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata accessor for CompactDatePickerConfiguration(uint64_t a1)
{
  result = qword_1002255F0;
  if (!qword_1002255F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AFE20(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000AFEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1000024C4(&qword_100221EE8, &qword_1001B54F8);
  v7 = __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  sub_1000B0180(a1, &v25 - v17);
  sub_1000B0180(a2, v16);
  sub_1000B0F58(&qword_100221EF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v20 = *(v13 + 32);
    v20(v11, v18, v12);
    v20(&v11[*(v6 + 48)], v16, v12);
    sub_1000239B0(v11, v9);
    v21 = *(v6 + 48);
    v20(a3, v9, v12);
    v22 = *(v13 + 8);
    v22(&v9[v21], v12);
    sub_100023A20(v11, v9);
    v23 = *(v6 + 48);
    v24 = sub_1000024C4(&qword_100222680, &qword_1001B5EC0);
    v20(&a3[*(v24 + 36)], &v9[v23], v12);
    return (v22)(v9, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B0180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v2 = type metadata accessor for DateComponents();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Calendar();
  v27 = *(v29 - 8);
  v4 = __chkstk_darwin(v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_1000024C4(&qword_100225640, &unk_1001BACC8);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  static Calendar.current.getter();
  static Calendar.current.getter();
  sub_1000024C4(&qword_100221F10, &unk_1001B5510);
  v12 = type metadata accessor for Calendar.Component();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001BAC30;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v17, enum case for Calendar.Component.year(_:), v12);
  v18(v17 + v14, enum case for Calendar.Component.month(_:), v12);
  v18(v17 + 2 * v14, enum case for Calendar.Component.day(_:), v12);
  v18(v17 + 3 * v14, enum case for Calendar.Component.hour(_:), v12);
  v18(v17 + 4 * v14, enum case for Calendar.Component.minute(_:), v12);
  v18(v17 + 5 * v14, enum case for Calendar.Component.second(_:), v12);
  sub_1000B08B0(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v19 = v28;
  Calendar.dateComponents(_:from:)();

  v20 = *(v27 + 8);
  v21 = v29;
  v20(v6, v29);
  Calendar.date(from:)();
  (*(v31 + 8))(v19, v32);
  v20(v8, v21);
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v11, 1, v22) != 1)
  {
    return (*(v23 + 32))(v33, v11, v22);
  }

  Date.init()();
  result = (v24)(v11, 1, v22);
  if (result != 1)
  {
    return sub_1000B0BD0(v11);
  }

  return result;
}

uint64_t sub_1000B060C(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static Date.== infix(_:_:)())
  {
    v7 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

Swift::Int sub_1000B0694(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_1000B0F58(&qword_100225638, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 24)));
  return Hasher._finalize()();
}

void sub_1000B0750(uint64_t a1, uint64_t a2)
{
  String.hash(into:)();
  type metadata accessor for Date();
  sub_1000B0F58(&qword_100225638, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
}

Swift::Int sub_1000B07F8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_1000B0F58(&qword_100225638, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

void *sub_1000B08B0(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000024C4(&qword_100225648, &qword_1001BACD8);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1000B0F58(&qword_100225650, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1000B0F58(&qword_100225658, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1000B0BD0(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100225640, &unk_1001BACC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000B0C38(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000024C4(&qword_100225660, &qword_1001BACE0);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1000B0F58(&qword_100225668, &type metadata accessor for PresentationDetent, &protocol conformance descriptor for PresentationDetent);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1000B0F58(&qword_100225670, &type metadata accessor for PresentationDetent, &protocol conformance descriptor for PresentationDetent);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1000B0F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B0FA4()
{
  result = qword_100225678;
  if (!qword_100225678)
  {
    type metadata accessor for Music.Artist();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225678);
  }

  return result;
}

void *sub_1000B0FFC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

uint64_t sub_1000B141C(uint64_t a1, uint64_t a2)
{
  v11 = (*(a2 + 40))();
  v10[2] = a1;
  v10[3] = a2;
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1000B0FFC(sub_1000B1934, v10, v4, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v6);

  v11 = v7;
  sub_1000024C4(&qword_1002251F0, &qword_1001BAD30);
  sub_10000BFFC(&qword_1002251F8, &qword_1002251F0, &qword_1001BAD30, &protocol conformance descriptor for [A]);
  v8 = BidirectionalCollection<>.joined(separator:)();

  return v8;
}

uint64_t sub_1000B1588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  v15[1] = (*(a2 + 40))(a1, a2);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v10, v7);
    swift_getAssociatedConformanceWitness();
    v12 = swift_getAssociatedTypeWitness();
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v11 + 8))(v10, AssociatedTypeWitness);
  }
}

uint64_t sub_1000B181C@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 48);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1000B18E0(uint64_t a1)
{
  result = sub_10000BFFC(qword_1002256B0, &qword_100221738, &qword_1001B4490, &protocol conformance descriptor for Music.Lineup<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B1954@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>, uint64_t a4@<X0>, uint64_t a5@<X1>)
{
  *a3 = sub_1000B1A8C(a4, a5, a1, a2);
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  v11 = type metadata accessor for FilterView(0, a1, a2, v10);
  v12 = v11[9];
  *(a3 + v12) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C8, &qword_1001B6B60);
  swift_storeEnumTagMultiPayload();
  v13 = v11[10];
  *(a3 + v13) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  swift_storeEnumTagMultiPayload();
  v14 = (a3 + v11[11]);
  type metadata accessor for RemoteViewConfiguration();
  sub_1000C1544(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.init()();
  *v14 = result;
  v14[1] = v16;
  return result;
}

double sub_1000B1A70@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1000B1A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FilterViewModel(0, a3, a4, a4);
  swift_getWitnessTable();
  return StateObject.init(wrappedValue:)();
}

uint64_t sub_1000B1B24(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = type metadata accessor for FilterViewModel(0, *(a1 + 16), *(a1 + 24), a4);
  WitnessTable = swift_getWitnessTable();

  return a2(v5, v6, v7, v8, WitnessTable);
}

uint64_t sub_1000B1BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v21 = type metadata accessor for NavigationPath();
  v18[4] = sub_10000460C(&qword_100225738, &qword_1001BAE30);
  v18[1] = sub_10000460C(&qword_100225740, &qword_1001BAE38);
  v18[2] = sub_10000460C(&qword_100225748, &qword_1001BAE40);
  v3 = *(a1 + 16);
  v20 = *(a1 + 24);
  v19 = v3;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_100225750, &unk_1001BAE48);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  v45 = sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v18[3] = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v43 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221D58, &unk_1001B6980);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100225758, &qword_1001BAE58);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100225760, &qword_1001BAE60);
  v41 = swift_getWitnessTable();
  v42 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  swift_getWitnessTable();
  sub_10000460C(&qword_100225768, &qword_1001BAE68);
  sub_10000460C(&qword_100225770, &qword_1001BAE70);
  type metadata accessor for GlassProminentButtonStyle();
  sub_1000C158C();
  sub_1000C1544(&qword_100225810, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CompactDatePickerConfiguration(255);
  v39 = &protocol witness table for Solarium;
  v40 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1000C1544(&qword_100225630, type metadata accessor for CompactDatePickerConfiguration, &unk_1001BACA0);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v6 = sub_10000460C(&qword_100225818, &qword_1001BAEC8);
  v7 = swift_getOpaqueTypeConformance2();
  v8 = sub_10000BFFC(&qword_100225820, &qword_100225818, &qword_1001BAEC8, &protocol conformance descriptor for TupleToolbarContent<A>);
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100225828, &qword_1001BAED0);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100225830, &qword_1001BAED8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v35 = OpaqueTypeMetadata2;
  v36 = v6;
  v37 = v7;
  v38 = v8;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_10000BFFC(&qword_100225838, &qword_100225828, &qword_1001BAED0, &unk_1001C19E0);
  v31 = swift_getWitnessTable();
  v32 = sub_10000BFFC(&qword_100225840, &qword_100225830, &qword_1001BAED8, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v29 = swift_getWitnessTable();
  v30 = &protocol witness table for _AppearanceActionModifier;
  v27 = swift_getWitnessTable();
  v28 = &protocol witness table for _AppearanceActionModifier;
  swift_getWitnessTable();
  v9 = type metadata accessor for NavigationStack();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v18 - v14;
  v24 = v19;
  v25 = v20;
  v26 = v22;
  NavigationStack.init<>(root:)();
  swift_getWitnessTable();
  sub_1000EE87C();
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_1000EE87C();
  return (v16)(v15, v9);
}

uint64_t sub_1000B2810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v219 = a1;
  v202 = a4;
  v6 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v200 = *(v6 - 8);
  v201 = v6;
  __chkstk_darwin(v6);
  v199 = v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FilterView(0, a2, a3, v8);
  v10 = *(v9 - 8);
  v216 = v9;
  v217 = v10;
  v218 = *(v10 + 64);
  __chkstk_darwin(v9);
  v213 = v158 - v11;
  v212 = type metadata accessor for CompactDatePickerConfiguration(0);
  __chkstk_darwin(v212);
  v198 = v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_10000460C(&qword_100225738, &qword_1001BAE30);
  v211 = sub_10000460C(&qword_100225740, &qword_1001BAE38);
  v214 = sub_10000460C(&qword_100225748, &qword_1001BAE40);
  v221 = a3;
  v220 = a2;
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_100225750, &unk_1001BAE48);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  v15 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v239 = v13;
  v240 = AssociatedTypeWitness;
  v241 = v15;
  v242 = WitnessTable;
  v243 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v18 = swift_getWitnessTable();
  v19 = sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v248 = v18;
  v249 = v19;
  v208 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v247 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  v20 = type metadata accessor for ScrollView();
  v21 = swift_getWitnessTable();
  v239 = v20;
  v240 = v21;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221D58, &unk_1001B6980);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100225758, &qword_1001BAE58);
  swift_getTupleTypeMetadata3();
  v211 = type metadata accessor for TupleView();
  v210 = swift_getWitnessTable();
  v22 = type metadata accessor for VStack();
  v214 = *(v22 - 8);
  __chkstk_darwin(v22);
  v209 = v158 - v23;
  v190 = v22;
  v24 = type metadata accessor for ModifiedContent();
  v215 = *(v24 - 8);
  __chkstk_darwin(v24);
  v203 = (v158 - v25);
  v26 = sub_10000460C(&qword_100225760, &qword_1001BAE60);
  v189 = swift_getWitnessTable();
  v245 = v189;
  v246 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v27 = swift_getWitnessTable();
  v28 = sub_10000460C(&qword_100225768, &qword_1001BAE68);
  v29 = sub_10000460C(&qword_100225770, &qword_1001BAE70);
  v30 = type metadata accessor for GlassProminentButtonStyle();
  v31 = sub_1000C158C();
  v32 = sub_1000C1544(&qword_100225810, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  v239 = v29;
  v240 = v30;
  v241 = v31;
  v242 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v239 = v28;
  v240 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v239 = v24;
  v240 = v26;
  v241 = v27;
  v242 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v239 = v24;
  v240 = v26;
  v241 = v27;
  v242 = v34;
  v36 = swift_getOpaqueTypeConformance2();
  v239 = v24;
  v240 = &type metadata for Solarium;
  v241 = OpaqueTypeMetadata2;
  v242 = v27;
  v158[1] = OpaqueTypeMetadata2;
  v37 = v27;
  v160 = v27;
  v243 = &protocol witness table for Solarium;
  v244 = v36;
  v38 = v36;
  v158[2] = v36;
  v39 = swift_getOpaqueTypeMetadata2();
  v184 = *(v39 - 8);
  __chkstk_darwin(v39);
  v159 = v158 - v40;
  v239 = v24;
  v240 = &type metadata for Solarium;
  v241 = OpaqueTypeMetadata2;
  v242 = v37;
  v243 = &protocol witness table for Solarium;
  v244 = v38;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = sub_1000C1544(&qword_100225630, type metadata accessor for CompactDatePickerConfiguration, &unk_1001BACA0);
  v239 = v39;
  v43 = v39;
  v162 = v39;
  v163 = v41;
  v44 = v212;
  v240 = v212;
  v241 = v41;
  v242 = v42;
  v45 = v42;
  v46 = swift_getOpaqueTypeMetadata2();
  v188 = *(v46 - 8);
  __chkstk_darwin(v46);
  v206 = v158 - v47;
  v239 = v43;
  v240 = v44;
  v241 = v41;
  v242 = v45;
  v48 = swift_getOpaqueTypeConformance2();
  v239 = v46;
  v240 = v44;
  v49 = v46;
  v172 = v46;
  v173 = v48;
  v50 = v44;
  v241 = v48;
  v242 = v45;
  v51 = v48;
  v205 = v45;
  v52 = swift_getOpaqueTypeMetadata2();
  v183 = *(v52 - 8);
  __chkstk_darwin(v52);
  v171 = v158 - v53;
  v239 = v49;
  v240 = v50;
  v241 = v51;
  v242 = v45;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v52;
  v166 = v52;
  v167 = v54;
  v239 = v52;
  v240 = v54;
  v56 = v54;
  v57 = swift_getOpaqueTypeMetadata2();
  v185 = *(v57 - 8);
  __chkstk_darwin(v57);
  v165 = v158 - v58;
  v239 = v55;
  v240 = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v239 = v57;
  v240 = v59;
  v164 = v57;
  v60 = v59;
  v168 = v59;
  v61 = swift_getOpaqueTypeMetadata2();
  v177 = v61;
  v181 = *(v61 - 8);
  __chkstk_darwin(v61);
  v170 = v158 - v62;
  v63 = sub_10000460C(&qword_100225818, &qword_1001BAEC8);
  v176 = v63;
  v239 = v57;
  v240 = v60;
  v64 = swift_getOpaqueTypeConformance2();
  v175 = v64;
  v174 = sub_10000BFFC(&qword_100225820, &qword_100225818, &qword_1001BAEC8, &protocol conformance descriptor for TupleToolbarContent<A>);
  v239 = v61;
  v240 = v63;
  v241 = v64;
  v242 = v174;
  v178 = &opaque type descriptor for <<opaque return type of View.toolbar<A>(content:)>>;
  v169 = swift_getOpaqueTypeMetadata2();
  v180 = *(v169 - 8);
  __chkstk_darwin(v169);
  v161 = v158 - v65;
  sub_10000460C(&qword_100225828, &qword_1001BAED0);
  v179 = type metadata accessor for ModifiedContent();
  v187 = *(v179 - 8);
  __chkstk_darwin(v179);
  v204 = v158 - v66;
  sub_10000460C(&qword_100225830, &qword_1001BAED8);
  v186 = type metadata accessor for ModifiedContent();
  v193 = *(v186 - 8);
  __chkstk_darwin(v186);
  v207 = v158 - v67;
  v192 = type metadata accessor for ModifiedContent();
  v196 = *(v192 - 8);
  __chkstk_darwin(v192);
  v182 = v158 - v68;
  v195 = type metadata accessor for ModifiedContent();
  v197 = *(v195 - 8);
  v69 = __chkstk_darwin(v195);
  v191 = v158 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v194 = v158 - v71;
  static HorizontalAlignment.leading.getter();
  v73 = v219;
  v72 = v220;
  v228 = v220;
  v74 = v221;
  v229 = v221;
  v230 = v219;
  v75 = v209;
  VStack.init(alignment:spacing:content:)();
  static SafeAreaRegions.all.getter();
  static Edge.Set.all.getter();
  v76 = v203;
  v77 = v190;
  View.ignoresSafeArea(_:edges:)();
  (*(v214 + 8))(v75, v77);
  Solarium.init()();
  v225 = v72;
  v226 = v74;
  v227 = v73;
  swift_checkMetadataState();
  v78 = v159;
  View.staticIf<A, B>(_:then:)();
  (*(v215 + 8))(v76, v24);
  v203 = &StateObject.wrappedValue.getter;
  v79 = v216;
  sub_1000B1B24(v216, &StateObject.wrappedValue.getter, v80, v81);
  v82 = v198;
  sub_1000320BC();

  v83 = v217;
  v84 = *(v217 + 16);
  v210 = v217 + 16;
  v211 = v84;
  v85 = v213;
  v84(v213, v73, v79);
  v86 = *(v83 + 80);
  v87 = (v86 + 32) & ~v86;
  v214 = v87;
  v215 = v86;
  v88 = swift_allocObject();
  v89 = v221;
  *(v88 + 16) = v220;
  *(v88 + 24) = v89;
  v209 = *(v83 + 32);
  v217 = v83 + 32;
  (v209)(v88 + v87, v85, v79);
  v90 = v162;
  View.onChange<A>(of:initial:_:)();

  sub_1000C32F8(v82, type metadata accessor for CompactDatePickerConfiguration);
  (*(v184 + 8))(v78, v90);
  v91 = v219;
  sub_1000B1B24(v79, v203, v92, v93);
  sub_1000321AC();

  v94 = v85;
  v95 = v85;
  v96 = v79;
  v211(v95, v91, v79);
  v97 = v214;
  v98 = swift_allocObject();
  *(v98 + 16) = v220;
  *(v98 + 24) = v89;
  (v209)(v98 + v97, v94, v96);
  v100 = v171;
  v99 = v172;
  v101 = v206;
  View.onChange<A>(of:initial:_:)();

  sub_1000C32F8(v82, type metadata accessor for CompactDatePickerConfiguration);
  (*(v188 + 8))(v101, v99);
  v103 = v199;
  v102 = v200;
  v104 = v201;
  (*(v200 + 104))(v199, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v201);
  v106 = v165;
  v105 = v166;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v102 + 8))(v103, v104);
  (*(v183 + 8))(v100, v105);
  v107 = v219;
  sub_1000B1B24(v96, v203, v108, v109);

  v110 = v170;
  v111 = v164;
  View.navigationBarTitle(_:)();

  (*(v185 + 8))(v106, v111);
  v222 = v220;
  v223 = v221;
  v224 = v107;
  v112 = v107;
  v113 = v161;
  v115 = v176;
  v114 = v177;
  v117 = v174;
  v116 = v175;
  View.toolbar<A>(content:)();
  (*(v181 + 8))(v110, v114);
  v239 = v114;
  v240 = v115;
  v241 = v116;
  v242 = v117;
  v118 = swift_getOpaqueTypeConformance2();
  v206 = v118;
  v212 = sub_1000C1BD8(v118, v119, v120);
  v121 = v169;
  v122 = sub_1000F53BC(&type metadata for FilterViewSafeAreaPreferenceKey, sub_1000BD664, 0, v169, &type metadata for FilterViewSafeAreaPreferenceKey, v118, v212);
  (*(v180 + 8))(v113, v121, v122);
  v123 = v213;
  v124 = v216;
  v125 = v211;
  v211(v213, v112, v216);
  v126 = v214;
  v127 = swift_allocObject();
  v128 = v220;
  v129 = v221;
  *(v127 + 16) = v220;
  *(v127 + 24) = v129;
  v130 = v209;
  (v209)(v127 + v126, v123, v124);
  v131 = sub_10000BFFC(&qword_100225838, &qword_100225828, &qword_1001BAED0, &unk_1001C19E0);
  v237 = v206;
  v238 = v131;
  v132 = v179;
  v133 = swift_getWitnessTable();
  sub_100010B88(v133, v134, v135);
  v136 = v204;
  View.onPreferenceChange<A>(_:perform:)();

  (*(v187 + 8))(v136, v132);
  v137 = v213;
  v138 = v216;
  v125(v213, v219, v216);
  v139 = v214;
  v140 = swift_allocObject();
  v141 = v221;
  *(v140 + 16) = v128;
  *(v140 + 24) = v141;
  v130(v140 + v139, v137, v138);
  v142 = sub_10000BFFC(&qword_100225840, &qword_100225830, &qword_1001BAED8, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v235 = v133;
  v236 = v142;
  v143 = v186;
  v144 = swift_getWitnessTable();
  v145 = v182;
  v146 = v207;
  View.onAppear(perform:)();

  (*(v193 + 8))(v146, v143);
  v147 = v216;
  v211(v137, v219, v216);
  v148 = v214;
  v149 = swift_allocObject();
  v150 = v221;
  *(v149 + 16) = v220;
  *(v149 + 24) = v150;
  (v209)(v149 + v148, v137, v147);
  v233 = v144;
  v234 = &protocol witness table for _AppearanceActionModifier;
  v151 = v192;
  v152 = swift_getWitnessTable();
  v153 = v191;
  View.onDisappear(perform:)();

  (*(v196 + 8))(v145, v151);
  v231 = v152;
  v232 = &protocol witness table for _AppearanceActionModifier;
  v154 = v195;
  swift_getWitnessTable();
  v155 = v194;
  sub_1000EE87C();
  v156 = *(v197 + 8);
  v156(v153, v154);
  sub_1000EE87C();
  return (v156)(v155, v154);
}

uint64_t sub_1000B41DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v165 = a1;
  v157 = a4;
  v156 = sub_1000024C4(&qword_100225918, &unk_1001BAFC8);
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v135 = &v128 - v6;
  v7 = sub_1000024C4(&qword_100225788, &qword_1001BAE78);
  v8 = __chkstk_darwin(v7 - 8);
  v134 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v131 = &v128 - v10;
  v133 = type metadata accessor for Divider();
  v132 = *(v133 - 8);
  v11 = __chkstk_darwin(v133);
  v130 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v129 = &v128 - v13;
  v152 = sub_1000024C4(&qword_100225758, &qword_1001BAE58);
  v14 = __chkstk_darwin(v152);
  v154 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v153 = &v128 - v16;
  v151 = type metadata accessor for ColorScheme();
  v150 = *(v151 - 8);
  v17 = __chkstk_darwin(v151);
  v149 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v148 = &v128 - v19;
  v163 = sub_10000460C(&qword_100225740, &qword_1001BAE38);
  v164 = sub_10000460C(&qword_100225748, &qword_1001BAE40);
  swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Array();
  v160 = a3;
  v159 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_100225750, &unk_1001BAE48);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  v22 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v173 = v20;
  v174 = AssociatedTypeWitness;
  v175 = v22;
  v176 = WitnessTable;
  v177 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v25 = swift_getWitnessTable();
  v26 = sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v171 = v25;
  v172 = v26;
  v170 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  v27 = type metadata accessor for ScrollView();
  v28 = swift_getWitnessTable();
  v173 = v27;
  v174 = v28;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v136 = swift_getWitnessTable();
  v29 = type metadata accessor for ScrollView();
  v137 = *(v29 - 8);
  __chkstk_darwin(v29);
  v31 = &v128 - v30;
  v32 = type metadata accessor for ModifiedContent();
  v138 = *(v32 - 8);
  __chkstk_darwin(v32);
  v161 = &v128 - v33;
  v34 = type metadata accessor for ModifiedContent();
  v140 = *(v34 - 8);
  __chkstk_darwin(v34);
  v139 = &v128 - v35;
  v36 = type metadata accessor for ModifiedContent();
  v143 = *(v36 - 8);
  __chkstk_darwin(v36);
  v141 = &v128 - v37;
  sub_10000460C(&qword_100221D58, &unk_1001B6980);
  v144 = v36;
  v164 = type metadata accessor for ModifiedContent();
  v162 = *(v164 - 8);
  v38 = __chkstk_darwin(v164);
  v147 = &v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v142 = &v128 - v41;
  __chkstk_darwin(v40);
  v163 = &v128 - v42;
  v43 = sub_1000024C4(&qword_1002223E8, &qword_1001B5AA0);
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v128 - v45;
  v145 = sub_1000024C4(&qword_100225738, &qword_1001BAE30);
  v47 = __chkstk_darwin(v145);
  v146 = &v128 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v50 = &v128 - v49;
  v51 = static Solarium.isEnabled.getter();
  v158 = v50;
  if (v51)
  {
    v52 = 1;
  }

  else
  {
    Divider.init()();
    v53 = static Edge.Set.top.getter();
    v55 = type metadata accessor for FilterView(0, v159, v160, v54);
    sub_1000B1B24(v55, &StateObject.wrappedValue.getter, v56, v57);
    sub_10003275C();
    v50 = v158;

    EdgeInsets.init(_all:)();
    v58 = &v46[*(v43 + 36)];
    *v58 = v53;
    *(v58 + 1) = v59;
    *(v58 + 2) = v60;
    *(v58 + 3) = v61;
    *(v58 + 4) = v62;
    v58[40] = 0;
    sub_10001AE00(v46, v50, &qword_1002223E8, &qword_1001B5AA0);
    v52 = 0;
  }

  v63 = (*(v44 + 56))(v50, v52, 1, v43);
  __chkstk_darwin(v63);
  v64 = v159;
  v65 = v160;
  *(&v128 - 4) = v159;
  *(&v128 - 3) = v65;
  *(&v128 - 2) = v165;
  static Axis.Set.vertical.getter();
  ScrollView.init(_:showsIndicators:content:)();
  static Edge.Set.top.getter();
  v67 = v64;
  if (static Solarium.isEnabled.getter())
  {
    v68 = type metadata accessor for FilterView(0, v64, v65, v66);
    sub_1000B1B24(v68, &StateObject.wrappedValue.getter, v69, v70);
    sub_10003275C();
  }

  v71 = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v137 + 8))(v31, v29);
  sub_1000024C4(&qword_100222388, &qword_1001B73E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  v73 = static Edge.Set.leading.getter();
  *(inited + 32) = v73;
  v74 = static Edge.Set.trailing.getter();
  *(inited + 33) = v74;
  v75 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v73)
  {
    v75 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v74)
  {
    v75 = Edge.Set.init(rawValue:)();
  }

  v77 = type metadata accessor for FilterView(0, v67, v65, v76);
  sub_1000B1B24(v77, &StateObject.wrappedValue.getter, v78, v79);
  v80 = sub_10003275C();
  v82 = v81;
  v84 = v83;
  v86 = v85;

  v169[9] = v71;
  v169[10] = &protocol witness table for _PaddingLayout;
  v87 = swift_getWitnessTable();
  v88 = v139;
  v89 = v161;
  sub_1000F5380(v75, v32, v87, v80, v82, v84, v86);
  (*(v138 + 8))(v89, v32);
  v90 = static Edge.Set.horizontal.getter();
  v93 = sub_1000C1ACC(v90, v91, v92);
  v169[7] = v87;
  v169[8] = v93;
  v94 = swift_getWitnessTable();
  v95 = v141;
  View.padding(_:_:)();
  (*(v140 + 8))(v88, v34);
  v96 = v148;
  sub_100039EE0(v148);
  v97 = v150;
  v98 = v149;
  v99 = v151;
  (*(v150 + 104))(v149, enum case for ColorScheme.light(_:), v151);
  LOBYTE(v89) = static ColorScheme.== infix(_:_:)();
  v100 = *(v97 + 8);
  v100(v98, v99);
  v100(v96, v99);
  if (v89)
  {
    if (qword_100220BA8 != -1)
    {
      swift_once();
    }

    v101 = &qword_1002390C8;
  }

  else
  {
    if (qword_100220B88 != -1)
    {
      swift_once();
    }

    v101 = &qword_1002390A8;
  }

  v102 = *v101;

  v173 = v102;
  static Edge.Set.all.getter();
  v169[5] = v94;
  v169[6] = &protocol witness table for _PaddingLayout;
  v103 = v144;
  v104 = swift_getWitnessTable();
  v105 = v142;
  View.background<A>(_:ignoresSafeAreaEdges:)();

  (*(v143 + 8))(v95, v103);
  v106 = sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v169[3] = v104;
  v169[4] = v106;
  v107 = v164;
  v160 = swift_getWitnessTable();
  sub_1000EE87C();
  v161 = *(v162 + 8);
  (v161)(v105, v107);
  if (static Solarium.isEnabled.getter())
  {
    v108 = 1;
    v109 = v153;
  }

  else
  {
    v110 = v129;
    Divider.init()();
    v111 = v131;
    sub_1000BAB48(v77, v131);
    v112 = v132;
    v113 = *(v132 + 16);
    v114 = v130;
    v115 = v133;
    v113(v130, v110, v133);
    v116 = v134;
    sub_10000BEB8(v111, v134, &qword_100225788, &qword_1001BAE78);
    v117 = v135;
    v113(v135, v114, v115);
    v118 = sub_1000024C4(&qword_100225920, &qword_1001BAFD8);
    sub_10000BEB8(v116, v117 + *(v118 + 48), &qword_100225788, &qword_1001BAE78);
    sub_1000050C4(v111, &qword_100225788, &qword_1001BAE78);
    v119 = *(v112 + 8);
    v119(v110, v115);
    sub_1000050C4(v116, &qword_100225788, &qword_1001BAE78);
    v119(v114, v115);
    v109 = v153;
    sub_10001AE00(v117, v153, &qword_100225918, &unk_1001BAFC8);
    v108 = 0;
  }

  (*(v155 + 56))(v109, v108, 1, v156);
  v120 = v158;
  v121 = v146;
  sub_10000BEB8(v158, v146, &qword_100225738, &qword_1001BAE30);
  v173 = v121;
  v122 = v147;
  v123 = v163;
  v124 = v164;
  (*(v162 + 16))(v147, v163, v164);
  v174 = v122;
  v125 = v154;
  sub_10000BEB8(v109, v154, &qword_100225758, &qword_1001BAE58);
  v175 = v125;
  v169[0] = v145;
  v169[1] = v124;
  v169[2] = v152;
  v166 = sub_1000C23DC();
  v167 = v160;
  v168 = sub_1000C251C();
  sub_1000E76FC(&v173, 3uLL, v169);
  sub_1000050C4(v109, &qword_100225758, &qword_1001BAE58);
  v126 = v161;
  (v161)(v123, v124);
  sub_1000050C4(v120, &qword_100225738, &qword_1001BAE30);
  sub_1000050C4(v125, &qword_100225758, &qword_1001BAE58);
  v126(v122, v124);
  return sub_1000050C4(v121, &qword_100225738, &qword_1001BAE30);
}

uint64_t sub_1000B5760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = a3;
  v16 = a1;
  v17 = a4;
  v14[1] = sub_10000460C(&qword_100225740, &qword_1001BAE38);
  v14[2] = sub_10000460C(&qword_100225748, &qword_1001BAE40);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_100225750, &unk_1001BAE48);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  v26 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  v22 = swift_getWitnessTable();
  v23 = sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v21 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  v24 = type metadata accessor for ScrollView();
  v25 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v5 = type metadata accessor for VStack();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  static HorizontalAlignment.leading.getter();
  v18 = a2;
  v19 = v15;
  v20 = v16;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  sub_1000EE87C();
  v12 = *(v6 + 8);
  v12(v9, v5);
  sub_1000EE87C();
  return (v12)(v11, v5);
}

uint64_t sub_1000B5D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v182 = a2;
  v183 = a3;
  v181 = a1;
  v171 = a4;
  v186 = sub_10000460C(&qword_100225740, &qword_1001BAE38);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_100225750, &unk_1001BAE48);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  *&v224 = type metadata accessor for ModifiedContent();
  *(&v224 + 1) = swift_getWitnessTable();
  *&v225 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  v161 = sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v219 = v161;
  v217 = swift_getWitnessTable();
  swift_getWitnessTable();
  v155 = type metadata accessor for LazyVGrid();
  v156 = swift_getWitnessTable();
  *&v223 = type metadata accessor for ScrollView();
  v158 = swift_getWitnessTable();
  *(&v223 + 1) = v158;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v5 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for TupleView();
  v168 = *(v6 - 8);
  __chkstk_darwin(v6);
  v160 = &v141 - v7;
  v8 = type metadata accessor for ContentMarginPlacement();
  v151 = *(v8 - 8);
  v152 = v8;
  __chkstk_darwin(v8);
  v148 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = swift_checkMetadataState();
  v146 = *(v149 - 8);
  v10 = __chkstk_darwin(v149);
  v145 = &v141 - v11;
  v159 = OpaqueTypeMetadata2;
  v150 = *(OpaqueTypeMetadata2 - 8);
  v12 = __chkstk_darwin(v10);
  v147 = &v141 - v13;
  v162 = v5;
  v153 = *(v5 - 8);
  v14 = __chkstk_darwin(v12);
  v157 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v154 = &v141 - v16;
  v170 = v6;
  v169 = type metadata accessor for Optional();
  v177 = *(v169 - 8);
  v17 = __chkstk_darwin(v169);
  v179 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v178 = &v141 - v19;
  v166 = sub_1000024C4(&qword_100225950, &qword_1001BAFE0);
  __chkstk_darwin(v166);
  v165 = &v141 - v20;
  v175 = sub_1000024C4(&qword_100225748, &qword_1001BAE40);
  v21 = __chkstk_darwin(v175);
  v167 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v176 = &v141 - v23;
  v173 = type metadata accessor for AccessibilityTraits();
  v180 = *(v173 - 8);
  v24 = __chkstk_darwin(v173);
  v172 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v144 = &v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v174 = &v141 - v29;
  v30 = __chkstk_darwin(v28);
  v185 = &v141 - v31;
  __chkstk_darwin(v30);
  v184 = &v141 - v32;
  v163 = type metadata accessor for FilterView(0, v182, v183, v33);
  v164 = &StateObject.wrappedValue.getter;
  sub_1000B1B24(v163, &StateObject.wrappedValue.getter, v34, v35);

  LOWORD(v140) = 256;
  v139 = 0;
  v36 = Text.init(_:tableName:bundle:comment:)();
  v38 = v37;
  v40 = v39;
  static Font.Weight.semibold.getter();
  v41 = Text.fontWeight(_:)();
  v43 = v42;
  v45 = v44;
  sub_100017398(v36, v38, v40 & 1);

  static Font.title2.getter();
  v46 = Text.font(_:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;

  sub_100017398(v41, v43, v45 & 1);

  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v207) = v50 & 1;
  v53 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  LOBYTE(v223) = 0;
  LOBYTE(v41) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v193) = 0;
  *&v207 = v46;
  *(&v207 + 1) = v48;
  LOBYTE(v208) = v50 & 1;
  v62 = v185;
  *(&v208 + 1) = v52;
  v209 = v220;
  v210 = v221;
  v211 = v222;
  LOBYTE(v212) = v53;
  *(&v212 + 1) = v55;
  *&v213 = v57;
  *(&v213 + 1) = v59;
  *&v214 = v61;
  BYTE8(v214) = 0;
  LOBYTE(v215) = v41;
  *(&v215 + 1) = v63;
  *&v216[0] = v64;
  *(&v216[0] + 1) = v65;
  *&v216[1] = v66;
  BYTE8(v216[1]) = 0;
  v67 = v172;
  static AccessibilityTraits.isHeader.getter();
  v68 = sub_1000024C4(&qword_100225958, &qword_1001BAFE8);
  v69 = sub_1000C25D8();
  v70 = v174;
  v143 = v69;
  View.accessibilityAddTraits(_:)();
  v71 = *(v180 + 8);
  v180 += 8;
  v142 = v71;
  v71(v67, v173);
  v231 = v215;
  v232[0] = v216[0];
  *(v232 + 9) = *(v216 + 9);
  v227 = v211;
  v228 = v212;
  v230 = v214;
  v229 = v213;
  v223 = v207;
  v224 = v208;
  v225 = v209;
  v226 = v210;
  sub_1000050C4(&v223, &qword_100225958, &qword_1001BAFE8);
  ModifiedContent<>.accessibilityHeading(_:)();
  sub_1000050C4(v70, &qword_100225740, &qword_1001BAE38);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_1000050C4(v62, &qword_100225740, &qword_1001BAE38);
  v187 = v182;
  v188 = v183;
  v189 = v181;
  sub_1000B8140(v182, v183, v165);
  sub_1000024C4(&qword_100225968, &qword_1001BAFF0);
  sub_1000C26E0();
  sub_1000C2968();
  v72 = v176;
  Section<>.init(header:content:)();
  v73 = static Edge.Set.bottom.getter();
  v74 = v72 + *(v175 + 36);
  *v74 = v73;
  *(v74 + 8) = 0u;
  *(v74 + 24) = 0u;
  *(v74 + 40) = 1;
  v75 = v163;
  sub_1000B1B24(v163, v164, v76, v77);
  LOBYTE(v70) = sub_100033E18();

  if (v70)
  {
    sub_1000B1B24(v75, &StateObject.wrappedValue.getter, v78, v79);

    LOWORD(v140) = 256;
    v80 = Text.init(_:tableName:bundle:comment:)();
    v82 = v81;
    v84 = v83;
    static Font.Weight.semibold.getter();
    v85 = Text.fontWeight(_:)();
    v87 = v86;
    v89 = v88;
    v166 = v68;
    sub_100017398(v80, v82, v84 & 1);

    static Font.title2.getter();
    v90 = Text.font(_:)();
    v92 = v91;
    v94 = v93;
    v96 = v95;

    sub_100017398(v85, v87, v89 & 1);

    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v193) = v94 & 1;
    v97 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v105 = v104;
    LOBYTE(v207) = 0;
    LOBYTE(v85) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v192[0]) = 0;
    *&v193 = v90;
    *(&v193 + 1) = v92;
    LOBYTE(v194) = v94 & 1;
    *(&v194 + 1) = v96;
    v195 = v203;
    v196 = v204;
    v197 = v205;
    LOBYTE(v198) = v97;
    *(&v198 + 1) = v99;
    *&v199 = v101;
    *(&v199 + 1) = v103;
    *&v200 = v105;
    BYTE8(v200) = 0;
    LOBYTE(v201) = v85;
    *(&v201 + 1) = v106;
    *&v202[0] = v107;
    *(&v202[0] + 1) = v108;
    *&v202[1] = v109;
    BYTE8(v202[1]) = 0;
    v110 = v172;
    static AccessibilityTraits.isHeader.getter();
    v111 = v144;
    View.accessibilityAddTraits(_:)();
    v142(v110, v173);
    v215 = v201;
    v216[0] = v202[0];
    *(v216 + 9) = *(v202 + 9);
    v211 = v197;
    v212 = v198;
    v213 = v199;
    v214 = v200;
    v207 = v193;
    v208 = v194;
    v209 = v195;
    v210 = v196;
    sub_1000050C4(&v207, &qword_100225958, &qword_1001BAFE8);
    v112 = v174;
    ModifiedContent<>.accessibilityHeading(_:)();
    sub_1000050C4(v111, &qword_100225740, &qword_1001BAE38);
    ModifiedContent<>.accessibilityIdentifier(_:)();
    v113 = sub_1000050C4(v112, &qword_100225740, &qword_1001BAE38);
    __chkstk_darwin(v113);
    v114 = v183;
    *(&v141 - 4) = v182;
    *(&v141 - 3) = v114;
    v139 = v181;
    static Axis.Set.vertical.getter();
    swift_checkMetadataState();
    v115 = v145;
    ScrollView.init(_:showsIndicators:content:)();
    static Edge.Set.bottom.getter();
    v116 = v148;
    static ContentMarginPlacement.scrollContent.getter();
    v117 = v147;
    v118 = v149;
    v119 = v158;
    View.contentMargins(_:_:for:)();
    (*(v151 + 8))(v116, v152);
    (*(v146 + 8))(v115, v118);
    *&v193 = v118;
    *(&v193 + 1) = v119;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v121 = v157;
    v122 = v159;
    View.accessibilityIdentifier(_:)();
    (*(v150 + 8))(v117, v122);
    v123 = v162;
    v192[2] = OpaqueTypeConformance2;
    v192[3] = v161;
    v124 = swift_getWitnessTable();
    v125 = v154;
    sub_1000EE87C();
    v126 = v153;
    v127 = *(v153 + 8);
    v127(v121, v123);
    sub_10000BEB8(v185, v112, &qword_100225740, &qword_1001BAE38);
    *&v193 = v112;
    (*(v126 + 16))(v121, v125, v123);
    *(&v193 + 1) = v121;
    v192[0] = v186;
    v192[1] = v123;
    v190 = sub_1000C2264(&qword_1002259B0, &qword_100225740, &qword_1001BAE38, sub_1000C25D8);
    v191 = v124;
    v128 = v160;
    sub_1000E76FC(&v193, 2uLL, v192);
    v127(v125, v123);
    sub_1000050C4(v185, &qword_100225740, &qword_1001BAE38);
    v127(v121, v123);
    v62 = v185;
    sub_1000050C4(v174, &qword_100225740, &qword_1001BAE38);
    v129 = v168;
    v130 = v179;
    v131 = v170;
    (*(v168 + 32))(v179, v128, v170);
    (*(v129 + 56))(v130, 0, 1, v131);
  }

  else
  {
    v130 = v179;
    (*(v168 + 56))(v179, 1, 1, v170);
  }

  swift_getWitnessTable();
  sub_1000E7690(v130, v178);
  v132 = v169;
  v183 = *(v177 + 8);
  v183(v130, v169);
  sub_10000BEB8(v184, v62, &qword_100225740, &qword_1001BAE38);
  *&v207 = v62;
  v133 = v176;
  v134 = v167;
  sub_10000BEB8(v176, v167, &qword_100225748, &qword_1001BAE40);
  *(&v207 + 1) = v134;
  v135 = v178;
  v136 = v179;
  (*(v177 + 16))(v179, v178, v132);
  *&v208 = v136;
  *&v193 = v186;
  *(&v193 + 1) = v175;
  *&v194 = v132;
  *&v203 = sub_1000C2264(&qword_1002259B0, &qword_100225740, &qword_1001BAE38, sub_1000C25D8);
  *(&v203 + 1) = sub_1000C2A20();
  v206 = swift_getWitnessTable();
  *&v204 = swift_getWitnessTable();
  sub_1000E76FC(&v207, 3uLL, &v193);
  v137 = v183;
  v183(v135, v132);
  sub_1000050C4(v133, &qword_100225748, &qword_1001BAE40);
  sub_1000050C4(v184, &qword_100225740, &qword_1001BAE38);
  v137(v136, v132);
  sub_1000050C4(v134, &qword_100225748, &qword_1001BAE40);
  return sub_1000050C4(v185, &qword_100225740, &qword_1001BAE38);
}

uint64_t sub_1000B7298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = static Alignment.center.getter();
  a4[1] = v8;
  v9 = sub_1000024C4(&qword_100225A30, &qword_1001BB088);
  sub_1000B735C(a1, a2, a3, a4 + *(v9 + 44));
  LOBYTE(a3) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = sub_1000024C4(&qword_100225968, &qword_1001BAFF0);
  v19 = a4 + *(result + 36);
  *v19 = a3;
  *(v19 + 1) = v11;
  *(v19 + 2) = v13;
  *(v19 + 3) = v15;
  *(v19 + 4) = v17;
  v19[40] = 0;
  return result;
}

uint64_t sub_1000B735C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a2;
  v55 = a3;
  v52 = a4;
  v53 = a1;
  v50 = sub_1000024C4(&qword_100225A38, &qword_1001BB090);
  v4 = __chkstk_darwin(v50);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v48 - v6;
  v8 = type metadata accessor for ColorScheme();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v48 - v13;
  v15 = type metadata accessor for RoundedRectangle();
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_1000024C4(&qword_100225A40, &qword_1001BB098);
  v19 = __chkstk_darwin(v48);
  v49 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v48 - v22;
  __chkstk_darwin(v21);
  v25 = &v48 - v24;
  if (static Solarium.isEnabled.getter())
  {
    v26 = 16.0;
  }

  else
  {
    v26 = 8.0;
  }

  v27 = *(v16 + 28);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(v18 + v27, v28, v29);
  *v18 = v26;
  v18[1] = v26;
  type metadata accessor for FilterView(0, v54, v55, v30);
  sub_100039EE0(v14);
  (*(v9 + 104))(v12, enum case for ColorScheme.light(_:), v8);
  LOBYTE(v28) = static ColorScheme.== infix(_:_:)();
  v31 = *(v9 + 8);
  v31(v12, v8);
  v31(v14, v8);
  if (v28)
  {
    if (qword_100220B88 != -1)
    {
      swift_once();
    }

    v32 = &qword_1002390A8;
  }

  else
  {
    if (qword_100220BA8 != -1)
    {
      swift_once();
    }

    v32 = &qword_1002390C8;
  }

  v33 = *v32;

  KeyPath = swift_getKeyPath();
  sub_1000C44F4(v18, v23, &type metadata accessor for RoundedRectangle);
  v35 = &v23[*(v48 + 36)];
  *v35 = KeyPath;
  v35[1] = v33;
  sub_10001AE00(v23, v25, &qword_100225A40, &qword_1001BB098);
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v36 = sub_1000024C4(&qword_100225A48, &qword_1001BB0D0);
  sub_1000B78D4(v54, v55, &v7[*(v36 + 44)]);
  LOBYTE(KeyPath) = static Edge.Set.horizontal.getter();
  v37 = &v7[*(sub_1000024C4(&qword_100225A50, &qword_1001BB0D8) + 36)];
  *v37 = KeyPath;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  v37[40] = 1;
  LOBYTE(KeyPath) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v38 = v49;
  v39 = &v7[*(v50 + 36)];
  *v39 = KeyPath;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  sub_10000BEB8(v25, v38, &qword_100225A40, &qword_1001BB098);
  v44 = v51;
  sub_10000BEB8(v7, v51, &qword_100225A38, &qword_1001BB090);
  v45 = v52;
  sub_10000BEB8(v38, v52, &qword_100225A40, &qword_1001BB098);
  v46 = sub_1000024C4(&qword_100225A58, &qword_1001BB0E0);
  sub_10000BEB8(v44, v45 + *(v46 + 48), &qword_100225A38, &qword_1001BB090);
  sub_1000050C4(v7, &qword_100225A38, &qword_1001BB090);
  sub_1000050C4(v25, &qword_100225A40, &qword_1001BB098);
  sub_1000050C4(v44, &qword_100225A38, &qword_1001BB090);
  return sub_1000050C4(v38, &qword_100225A40, &qword_1001BB098);
}

uint64_t sub_1000B78D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v88 = a3;
  v87 = type metadata accessor for Divider();
  v86 = *(v87 - 8);
  v5 = __chkstk_darwin(v87);
  v85 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v91 = &v79 - v7;
  v8 = type metadata accessor for CompactDatePicker(0);
  v9 = (v8 - 8);
  v10 = __chkstk_darwin(v8);
  v84 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v90 = &v79 - v13;
  v14 = __chkstk_darwin(v12);
  v92 = &v79 - v15;
  __chkstk_darwin(v14);
  v17 = &v79 - v16;
  v19 = type metadata accessor for FilterView(0, a1, a2, v18);
  sub_1000B1B24(v19, &StateObject.projectedValue.getter, v20, v21);
  v107 = a1;
  v108 = a2;
  swift_getKeyPath();
  type metadata accessor for FilterViewModel(255, a1, a2, v22);
  swift_getWitnessTable();
  ObservedObject.Wrapper.subscript.getter();

  sub_1000B1B24(v19, &StateObject.projectedValue.getter, v23, v24);
  v105 = a1;
  v106 = a2;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v81 = &StateObject.projectedValue.getter;
  sub_1000B1B24(v19, &StateObject.projectedValue.getter, v25, v26);
  v103 = a1;
  v104 = a2;
  v82 = a2;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_1000B1B24(v19, &StateObject.projectedValue.getter, v27, v28);
  v101 = a1;
  v102 = a2;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v29 = v109;
  v80 = v110;
  v30 = v111;
  sub_1000B1B24(v19, &StateObject.wrappedValue.getter, v31, v32);
  sub_10003323C(&v17[v9[10]]);

  v83 = &StateObject.wrappedValue.getter;
  sub_1000B1B24(v19, &StateObject.wrappedValue.getter, v33, v34);
  v35 = sub_100033EE4();

  sub_1000B1B24(v19, &StateObject.wrappedValue.getter, v36, v37);
  v38 = sub_100033784();

  v39 = v9[9];
  v89 = v17;
  v40 = &v17[v39];
  v41 = v80;
  *v40 = v29;
  *(v40 + 1) = v41;
  *(v40 + 2) = v30;
  *&v17[v9[11]] = v35;
  v17[v9[12]] = v38;
  Divider.init()();
  v42 = v81;
  sub_1000B1B24(v19, v81, v43, v44);
  v99 = a1;
  v45 = v82;
  v100 = v82;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_1000B1B24(v19, v42, v46, v47);
  v97 = a1;
  v98 = v45;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_1000B1B24(v19, v42, v48, v49);
  v95 = a1;
  v96 = v45;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_1000B1B24(v19, v42, v50, v51);
  v93 = a1;
  v94 = v45;
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v52 = v109;
  v53 = v110;
  v54 = v111;
  v55 = v83;
  sub_1000B1B24(v19, v83, v56, v57);
  v58 = v92;
  sub_1000334D8((v92 + v9[10]));

  sub_1000B1B24(v19, v55, v59, v60);
  sub_100033F80();
  v62 = v61;

  sub_1000B1B24(v19, v55, v63, v64);
  LOBYTE(v55) = sub_10003379C();

  v65 = (v58 + v9[9]);
  *v65 = v52;
  v65[1] = v53;
  v65[2] = v54;
  *(v58 + v9[11]) = v62;
  *(v58 + v9[12]) = v55 & 1;
  v66 = v58;
  v67 = v90;
  sub_1000C3290(v89, v90, type metadata accessor for CompactDatePicker);
  v68 = v86;
  v69 = *(v86 + 16);
  v70 = v85;
  v71 = v91;
  v72 = v87;
  v69(v85, v91, v87);
  v73 = v66;
  v74 = v84;
  sub_1000C3290(v73, v84, type metadata accessor for CompactDatePicker);
  v75 = v88;
  sub_1000C3290(v67, v88, type metadata accessor for CompactDatePicker);
  v76 = sub_1000024C4(&qword_100225A60, &qword_1001BB1C8);
  v69((v75 + *(v76 + 48)), v70, v72);
  sub_1000C3290(v74, v75 + *(v76 + 64), type metadata accessor for CompactDatePicker);
  sub_1000C32F8(v92, type metadata accessor for CompactDatePicker);
  v77 = *(v68 + 8);
  v77(v71, v72);
  sub_1000C32F8(v89, type metadata accessor for CompactDatePicker);
  sub_1000C32F8(v74, type metadata accessor for CompactDatePicker);
  v77(v70, v72);
  return sub_1000C32F8(v90, type metadata accessor for CompactDatePicker);
}

uint64_t sub_1000B8140@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v51 = a3;
  v50 = type metadata accessor for AccessibilityTraits();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000024C4(&qword_100225A28, &qword_1001BB050);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v8 = &v45 - v7;
  v46 = sub_1000024C4(&qword_100225950, &qword_1001BAFE0);
  __chkstk_darwin(v46);
  v10 = &v45 - v9;
  v12 = type metadata accessor for FilterView(0, a1, a2, v11);
  v15 = sub_1000B1B24(v12, &StateObject.wrappedValue.getter, v13, v14);
  v16 = (v15 + *(*v15 + 216));
  v18 = *v16;
  v17 = v16[1];

  *&v59[0] = v18;
  *(&v59[0] + 1) = v17;
  sub_10001877C(v19, v20, v21);
  v22 = Text.init<A>(_:)();
  v24 = v23;
  LOBYTE(v18) = v25;
  v27 = v26;
  v28 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v18 & 1;
  LOBYTE(v59[0]) = v18 & 1;
  LOBYTE(v52) = 0;
  if (qword_100220B98 != -1)
  {
    swift_once();
  }

  v38 = qword_1002390B8;

  v39 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  *&v52 = v22;
  *(&v52 + 1) = v24;
  LOBYTE(v53) = v37;
  *(&v53 + 1) = v27;
  LOBYTE(v54) = v28;
  *(&v54 + 1) = v30;
  *&v55 = v32;
  *(&v55 + 1) = v34;
  *&v56 = v36;
  BYTE8(v56) = 0;
  *&v57 = v38;
  *(&v57 + 1) = KeyPath;
  v58 = v39;
  static Font.Weight.semibold.getter();
  v41 = sub_1000024C4(&qword_100225978, &qword_1001BAFF8);
  v42 = sub_1000C27D8();
  View.fontWeight(_:)();
  v59[4] = v56;
  v59[5] = v57;
  v60 = v58;
  v59[0] = v52;
  v59[1] = v53;
  v59[2] = v54;
  v59[3] = v55;
  sub_1000050C4(v59, &qword_100225978, &qword_1001BAFF8);
  static AccessibilityTraits.isHeader.getter();
  *&v52 = v41;
  *(&v52 + 1) = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v48;
  View.accessibilityRemoveTraits(_:)();
  (*(v49 + 8))(v6, v50);
  (*(v47 + 8))(v8, v43);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_1000050C4(v10, &qword_100225950, &qword_1001BAFE0);
}

uint64_t sub_1000B85F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a1;
  v33 = a4;
  v6 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v6 - 8);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_100225750, &unk_1001BAE48);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  v10 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = v8;
  v41 = AssociatedTypeWitness;
  v42 = v10;
  v43 = WitnessTable;
  v44 = AssociatedConformanceWitness;
  v13 = type metadata accessor for ForEach();
  v14 = swift_getWitnessTable();
  v15 = sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v38 = v14;
  v39 = v15;
  v37 = swift_getWitnessTable();
  v30 = v13;
  swift_getWitnessTable();
  v16 = type metadata accessor for LazyVGrid();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v30 - v21;
  v24 = type metadata accessor for FilterView(0, a2, a3, v23);
  v25 = v31;
  sub_1000B1B24(v24, &StateObject.wrappedValue.getter, v26, v27);

  v34 = a2;
  v35 = a3;
  v36 = v25;
  static HorizontalAlignment.center.getter();
  sub_1000BAAC8();
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  swift_getWitnessTable();
  sub_1000EE87C();
  v28 = *(v17 + 8);
  v28(v20, v16);
  sub_1000EE87C();
  return (v28)(v22, v16);
}

uint64_t sub_1000B8B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a5;
  v34 = a2;
  v35 = a3;
  v36 = type metadata accessor for FilterView(0, a2, a3, a4);
  v38 = *(v36 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  v37 = v33 - v6;
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Array();
  v33[2] = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_100225750, &unk_1001BAE48);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  v33[1] = type metadata accessor for Button();
  v9 = type metadata accessor for ModifiedContent();
  v33[5] = v7;
  WitnessTable = swift_getWitnessTable();
  v33[3] = WitnessTable;
  v33[4] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = v7;
  v45 = AssociatedTypeWitness;
  v46 = v9;
  v47 = WitnessTable;
  v48 = AssociatedConformanceWitness;
  v12 = type metadata accessor for ForEach();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v33 - v17;
  v19 = v36;
  sub_1000B1B24(v36, &StateObject.wrappedValue.getter, v20, v21);
  v22 = sub_100032520();

  v44 = v22;
  v23 = v37;
  v24 = v38;
  (*(v38 + 16))(v37, a1, v19);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v27 = v35;
  *(v26 + 16) = v34;
  *(v26 + 24) = v27;
  (*(v24 + 32))(v26 + v25, v23, v19);
  v28 = swift_getWitnessTable();
  v29 = sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v42 = v28;
  v43 = v29;
  v30 = swift_getWitnessTable();
  ForEach<>.init(_:content:)();
  v41 = v30;
  swift_getWitnessTable();
  sub_1000EE87C();
  v31 = *(v13 + 8);
  v31(v16, v12);
  sub_1000EE87C();
  return (v31)(v18, v12);
}

uint64_t sub_1000B90C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a2;
  v64 = a1;
  v69 = a5;
  v7 = type metadata accessor for AccessibilityTraits();
  v66 = *(v7 - 8);
  v67 = v7;
  __chkstk_darwin(v7);
  v68 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v58 = *(v10 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v57 = &v50 - v11;
  v55 = a3;
  v56 = a4;
  v13 = type metadata accessor for FilterView(0, a3, a4, v12);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v52 = &v50 - v16;
  sub_10000460C(&qword_100225750, &unk_1001BAE48);
  v18 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v51 = AssociatedTypeWitness;
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v54 = type metadata accessor for ZStack();
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for Button();
  v61 = *(v19 - 8);
  __chkstk_darwin(v19);
  v70 = &v50 - v20;
  v60 = v21;
  v59 = type metadata accessor for ModifiedContent();
  v65 = *(v59 - 8);
  v22 = __chkstk_darwin(v59);
  v62 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v63 = &v50 - v24;
  v25 = v14;
  (*(v14 + 16))(v17, v71, v13);
  v26 = v10;
  v27 = v57;
  v28 = v64;
  (*(v10 + 16))(v57, v64, v18);
  v29 = v25;
  v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v31 = (v15 + v30 + *(v26 + 80)) & ~*(v26 + 80);
  v32 = swift_allocObject();
  v33 = v55;
  v34 = v56;
  *(v32 + 16) = v55;
  *(v32 + 24) = v34;
  (*(v29 + 32))(v32 + v30, v52, v13);
  (*(v26 + 32))(v32 + v31, v27, v51);
  v72 = v33;
  v73 = v34;
  v74 = v71;
  v75 = v28;
  Button.init(action:label:)();
  sub_1000B1B24(v13, &StateObject.wrappedValue.getter, v35, v36);
  LOBYTE(v13) = sub_100035750(v28);

  if (v13)
  {
    sub_1000024C4(&qword_1002259D8, &qword_1001BB018);
    v37 = v66;
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1001B3B50;
    static AccessibilityTraits.isToggle.getter();
    static AccessibilityTraits.isSelected.getter();
    v76 = v38;
    sub_1000C1544(&qword_1002259E0, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_1000024C4(&qword_1002259E8, &unk_1001BB020);
    sub_10000BFFC(&qword_1002259F0, &qword_1002259E8, &unk_1001BB020, &protocol conformance descriptor for [A]);
    v39 = v67;
    v40 = v68;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    v40 = v68;
    static AccessibilityTraits.isToggle.getter();
    v37 = v66;
    v39 = v67;
  }

  v41 = v60;
  v42 = swift_getWitnessTable();
  v43 = v62;
  v44 = v70;
  View.accessibilityAddTraits(_:)();
  (*(v37 + 8))(v40, v39);
  (*(v61 + 8))(v44, v41);
  v45 = sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v77 = v42;
  v78 = v45;
  v46 = v59;
  swift_getWitnessTable();
  v47 = v63;
  sub_1000EE87C();
  v48 = *(v65 + 8);
  v48(v43, v46);
  sub_1000EE87C();
  return (v48)(v47, v46);
}

void sub_1000B9914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for FilterView(0, a3, a4, a4);
  sub_1000B1B24(v6, &StateObject.wrappedValue.getter, v7, v8);
  sub_10003581C(a2);

  sub_1000B1B24(v6, &StateObject.wrappedValue.getter, v9, v10);
  v11 = *(a1 + *(v6 + 44));
  if (v11)
  {

    sub_100035414(9, 0x65726E6567, 0xE500000000000000, 2u, v11);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000C1544(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000B9A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[1] = a5;
  sub_10000460C(&qword_100225750, &unk_1001BAE48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v9 = type metadata accessor for ZStack();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v18 - v14;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a1;
  v18[7] = a2;
  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  swift_getWitnessTable();
  sub_1000EE87C();
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_1000EE87C();
  return (v16)(v15, v9);
}

uint64_t sub_1000B9D34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v133 = a4;
  v125 = a5;
  v126 = a3;
  v128 = a2;
  v135 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v116 = AssociatedTypeWitness;
  v6 = type metadata accessor for Set();
  WitnessTable = swift_getWitnessTable();
  v130 = v6;
  v7 = type metadata accessor for _AnimationModifier();
  v117 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  v119 = v8;
  v124 = type metadata accessor for ModifiedContent();
  v122 = *(v124 - 8);
  v9 = __chkstk_darwin(v124);
  v123 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v120 = &v110 - v12;
  __chkstk_darwin(v11);
  v121 = &v110 - v13;
  v14 = type metadata accessor for ColorScheme();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v110 - v19;
  v21 = type metadata accessor for RoundedRectangle();
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v24 = (&v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_1000024C4(&qword_1002259F8, &qword_1001C1900);
  __chkstk_darwin(v25);
  v27 = &v110 - v26;
  v28 = sub_1000024C4(&qword_100225750, &unk_1001BAE48);
  __chkstk_darwin(v28);
  v112 = &v110 - v29;
  v127 = v30;
  v114 = v7;
  v31 = type metadata accessor for ModifiedContent();
  v131 = *(v31 - 8);
  v132 = v31;
  v32 = __chkstk_darwin(v31);
  v118 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v113 = &v110 - v35;
  __chkstk_darwin(v34);
  v134 = &v110 - v36;
  if (static Solarium.isEnabled.getter())
  {
    v37 = 16.0;
  }

  else
  {
    v37 = 8.0;
  }

  v38 = *(v22 + 28);
  v39 = enum case for RoundedCornerStyle.continuous(_:);
  v40 = type metadata accessor for RoundedCornerStyle();
  (*(*(v40 - 8) + 104))(v24 + v38, v39, v40);
  *v24 = v37;
  v24[1] = v37;
  v133 = type metadata accessor for FilterView(0, v126, v133, v41);
  sub_100039EE0(v20);
  (*(v15 + 104))(v18, enum case for ColorScheme.light(_:), v14);
  LOBYTE(v39) = static ColorScheme.== infix(_:_:)();
  v42 = *(v15 + 8);
  v42(v18, v14);
  v42(v20, v14);
  if (v39)
  {
    if (qword_100220B88 != -1)
    {
      swift_once();
    }

    v43 = &qword_1002390A8;
  }

  else
  {
    if (qword_100220BA8 != -1)
    {
      swift_once();
    }

    v43 = &qword_1002390C8;
  }

  v44 = *v43;

  sub_1000C44F4(v24, v27, &type metadata accessor for RoundedRectangle);
  *&v27[*(v25 + 52)] = v44;
  *&v27[*(v25 + 56)] = 256;
  static Color.blue.getter();
  v126 = &StateObject.wrappedValue.getter;
  v45 = v133;
  sub_1000B1B24(v133, &StateObject.wrappedValue.getter, v46, v47);
  v48 = v128;
  sub_100035750(v128);

  v49 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v50 = v112;
  sub_1000C3290(v27, v112, &type metadata accessor for RoundedRectangle);
  v51 = *&v166 * 0.5;
  v52 = v50 + *(v127 + 68);
  sub_1000C3290(v27, v52, &type metadata accessor for RoundedRectangle);
  *(v52 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v51;
  v53 = v52 + *(sub_1000024C4(&qword_100225A00, &qword_1001BB030) + 36);
  v54 = v167;
  *v53 = v166;
  *(v53 + 16) = v54;
  *(v53 + 32) = v168;
  v55 = sub_1000024C4(&qword_100225A08, &qword_1001BB038);
  *(v52 + *(v55 + 52)) = v49;
  *(v52 + *(v55 + 56)) = 256;
  v56 = v52 + *(sub_1000024C4(&qword_100225A10, &qword_1001BB040) + 36);
  sub_10000BEB8(v27, v56, &qword_1002259F8, &qword_1001C1900);
  v57 = static Alignment.center.getter();
  v59 = v58;
  sub_1000050C4(v27, &qword_1002259F8, &qword_1001C1900);
  v60 = (v56 + *(sub_1000024C4(&qword_100225A18, &qword_1001BB048) + 36));
  *v60 = v57;
  v60[1] = v59;
  v61 = v126;
  sub_1000B1B24(v45, v126, v62, v63);
  sub_100035750(v48);

  static Animation.easeInOut(duration:)();
  sub_1000B1B24(v45, v61, v64, v65);
  v66 = sub_1000325DC();

  *&v159 = v66;
  v67 = sub_10000BFFC(&qword_100225A20, &qword_100225750, &unk_1001BAE48, &protocol conformance descriptor for StrokeBorderShapeView<A, B, C>);
  v68 = v113;
  View.animation<A>(_:value:)();

  sub_1000050C4(v50, &qword_100225750, &unk_1001BAE48);
  v69 = swift_getWitnessTable();
  v164 = v67;
  v165 = v69;
  v111 = v69;
  v70 = v132;
  v112 = swift_getWitnessTable();
  sub_1000EE87C();
  v71 = *(v131 + 8);
  v127 = v131 + 8;
  v114 = v71;
  v71(v68, v70);
  *&v159 = (*(AssociatedConformanceWitness + 32))(v116);
  *(&v159 + 1) = v72;
  sub_10001877C(v159, v72, v73);
  v74 = Text.init<A>(_:)();
  v76 = v75;
  v78 = v77;
  sub_1000B1B24(v133, v126, v77, v79);
  LOBYTE(v48) = sub_100035750(v48);

  if (v48)
  {
    static Color.blue.getter();
  }

  else
  {
    static Color.primary.getter();
  }

  v80 = Text.foregroundColor(_:)();
  v82 = v81;
  v84 = v83;
  v86 = v85;

  sub_100017398(v74, v76, v78 & 1);

  v151 = v80;
  v152 = v82;
  v87 = v84 & 1;
  v153 = v84 & 1;
  v154 = v86;
  v88 = v133;
  sub_1000B1B24(v133, &StateObject.wrappedValue.getter, v89, v90);
  sub_100035750(v128);

  static Animation.easeInOut(duration:)();
  sub_1000B1B24(v88, &StateObject.wrappedValue.getter, v91, v92);
  v93 = sub_1000325DC();

  *&v159 = v93;
  View.animation<A>(_:value:)();

  sub_100017398(v80, v82, v87);

  v94 = v155;
  LOBYTE(v82) = v156;
  v146 = v155;
  LOBYTE(v147) = v156;
  *(&v147 + 1) = v157;
  v148 = v158;
  v144 = &protocol witness table for Text;
  v145 = v111;
  v135 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v95 = swift_getWitnessTable();
  View.padding(_:)();
  sub_100017398(v94, *(&v94 + 1), v82);

  v141 = v161;
  v142 = v162;
  v143[0] = v163[0];
  *(v143 + 9) = *(v163 + 9);
  v139 = v159;
  v140 = v160;
  v138[4] = v95;
  v138[5] = &protocol witness table for _PaddingLayout;
  v96 = v119;
  v97 = swift_getWitnessTable();
  v98 = v120;
  View.accessibilityIdentifier(_:)();
  v148 = v141;
  v149 = v142;
  v150[0] = v143[0];
  *(v150 + 9) = *(v143 + 9);
  v146 = v139;
  v147 = v140;
  (*(*(v96 - 8) + 8))(&v146, v96);
  v99 = sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v138[2] = v97;
  v138[3] = v99;
  v100 = v124;
  v101 = swift_getWitnessTable();
  v102 = v121;
  sub_1000EE87C();
  v103 = v122;
  v104 = *(v122 + 8);
  v104(v98, v100);
  v105 = v132;
  v106 = v118;
  (*(v131 + 16))(v118, v134, v132);
  *&v139 = v106;
  v107 = v123;
  (*(v103 + 16))(v123, v102, v100);
  *(&v139 + 1) = v107;
  v138[0] = v105;
  v138[1] = v100;
  v136 = v112;
  v137 = v101;
  sub_1000E76FC(&v139, 2uLL, v138);
  v104(v102, v100);
  v108 = v114;
  v114(v134, v105);
  v104(v107, v100);
  return v108(v106, v105);
}

uint64_t sub_1000BAAC8()
{
  type metadata accessor for PinnedScrollableViews();
  sub_1000C1544(&qword_1002259D0, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

uint64_t sub_1000BAB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v46 = sub_1000024C4(&qword_1002257B8, &qword_1001BAE98);
  v47 = *(v46 - 8);
  v4 = __chkstk_darwin(v46);
  v43 = &v41 - v5;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v44 = sub_1000024C4(&qword_1002257B0, &qword_1001BAE90);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = &v41 - v8;
  v10 = sub_1000024C4(&qword_100225798, &qword_1001BAE80);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v42 = &v41 - v12;
  (*(v6 + 16))(&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  v17 = *(v6 + 32);
  v48 = a1;
  v17(v14 + v13, &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v54 = v15;
  v55 = v16;
  v56 = v2;
  sub_1000024C4(&qword_1002258F8, &qword_1001BAFB8);
  sub_1000C2264(&qword_100225900, &qword_1002258F8, &qword_1001BAFB8, sub_1000C2318);
  Button.init(action:label:)();
  Solarium.init()();
  v18 = v43;
  static ViewInputPredicate.! prefix(_:)();
  v51 = v15;
  v52 = v16;
  v49 = v2;
  v53 = v2;
  sub_1000024C4(&qword_1002257C0, &qword_1001BAEA0);
  sub_10000BFFC(&qword_1002257C8, &qword_1002257B0, &qword_1001BAE90, &protocol conformance descriptor for Button<A>);
  v57 = &type metadata for Solarium;
  v58 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  v19 = v42;
  sub_1000C18AC(&qword_1002257D0, &qword_1002257C0, &qword_1001BAEA0, sub_1000C1930);
  v20 = v18;
  v21 = v44;
  v22 = v46;
  View.staticIf<A, B>(_:then:)();
  (*(v47 + 8))(v20, v22);
  (*(v45 + 8))(v9, v21);
  LOBYTE(v7) = static Edge.Set.vertical.getter();
  v23 = v19 + *(sub_1000024C4(&qword_1002257A8, &qword_1001BAE88) + 36);
  *v23 = v7;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 1;
  v24 = static Edge.Set.horizontal.getter();
  v25 = v19 + *(v11 + 44);
  *v25 = v24;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 1;
  sub_1000024C4(&qword_100222388, &qword_1001B73E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  LOBYTE(v21) = static Edge.Set.leading.getter();
  *(inited + 32) = v21;
  v27 = static Edge.Set.trailing.getter();
  *(inited + 33) = v27;
  v28 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v21)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v27)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  sub_1000B1B24(v48, &StateObject.wrappedValue.getter, v29, v30);
  v31 = sub_10003275C();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = v50;
  sub_10001AE00(v19, v50, &qword_100225798, &qword_1001BAE80);
  result = sub_1000024C4(&qword_100225788, &qword_1001BAE78);
  v40 = v38 + *(result + 36);
  *v40 = v28;
  *(v40 + 8) = v31;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = v37;
  return result;
}

uint64_t sub_1000BB19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a3;
  v22 = a4;
  v23 = a2;
  v24 = a1;
  v25 = a5;
  sub_10000460C(&qword_100225738, &qword_1001BAE30);
  v19[0] = sub_10000460C(&qword_100225740, &qword_1001BAE38);
  v19[1] = sub_10000460C(&qword_100225748, &qword_1001BAE40);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_100225750, &unk_1001BAE48);
  type metadata accessor for Set();
  swift_getWitnessTable();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  v33 = sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v31 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for LazyVGrid();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221D58, &unk_1001B6980);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100225758, &qword_1001BAE58);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v5 = type metadata accessor for ModifiedContent();
  v20 = sub_10000460C(&qword_100225760, &qword_1001BAE60);
  v29 = swift_getWitnessTable();
  v30 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v6 = swift_getWitnessTable();
  sub_10000460C(&qword_100225768, &qword_1001BAE68);
  sub_10000460C(&qword_100225770, &qword_1001BAE70);
  type metadata accessor for GlassProminentButtonStyle();
  sub_1000C158C();
  sub_1000C1544(&qword_100225810, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v5;
  v35 = v20;
  v36 = v6;
  v37 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = *(OpaqueTypeMetadata2 - 8);
  v10 = __chkstk_darwin(OpaqueTypeMetadata2);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v19 - v13;
  v26 = v21;
  v27 = v22;
  v28 = v23;
  static HorizontalAlignment.center.getter();
  v15 = swift_checkMetadataState();
  v16 = v20;
  View.safeAreaBar<A>(edge:alignment:spacing:content:)();
  v34 = v15;
  v35 = v16;
  v36 = v6;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1000EE87C();
  v17 = *(v9 + 8);
  v17(v12, OpaqueTypeMetadata2);
  sub_1000EE87C();
  return (v17)(v14, OpaqueTypeMetadata2);
}

uint64_t sub_1000BB9F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v31 = a2;
  v35 = a3;
  v36 = type metadata accessor for BarMagicPocketStyle();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GlassProminentButtonStyle();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000024C4(&qword_100225788, &qword_1001BAE78);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_1000024C4(&qword_100225770, &qword_1001BAE70);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_1000024C4(&qword_100225768, &qword_1001BAE68);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  v19 = type metadata accessor for FilterView(0, a1, v31, v18);
  sub_1000BAB48(v19, v10);
  sub_1000B1B24(v19, &StateObject.wrappedValue.getter, v20, v21);
  LOBYTE(v19) = sub_100032D7C();

  if (v19)
  {
    v22 = static Color.blue.getter();
  }

  else
  {
    v22 = static Color.gray.getter();
  }

  v23 = v22;
  KeyPath = swift_getKeyPath();
  v37 = v23;
  v25 = AnyShapeStyle.init<A>(_:)();
  sub_10001AE00(v10, v13, &qword_100225788, &qword_1001BAE78);
  v26 = &v13[*(v11 + 36)];
  *v26 = KeyPath;
  v26[1] = v25;
  GlassProminentButtonStyle.init()();
  v27 = sub_1000C158C();
  v28 = sub_1000C1544(&qword_100225810, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v32 + 8))(v7, v5);
  sub_1000050C4(v13, &qword_100225770, &qword_1001BAE70);
  v29 = v33;
  static BarMagicPocketStyle.automatic.getter();
  v37 = v11;
  v38 = v5;
  v39 = v27;
  v40 = v28;
  swift_getOpaqueTypeConformance2();
  View.scrollPocketTag_v1(style:)();
  (*(v34 + 8))(v29, v36);
  return (*(v15 + 8))(v17, v14);
}

void sub_1000BBE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FilterView(0, a2, a3, a4);
  v8 = sub_1000B1B24(v5, &StateObject.wrappedValue.getter, v6, v7);
  sub_100034048(v8, v9, v10, v11);

  sub_1000B1B24(v5, &StateObject.wrappedValue.getter, v12, v13);
  v14 = *(a1 + *(v5 + 44));
  if (v14)
  {

    sub_100035414(9, 1702125924, 0xE400000000000000, 2u, v14);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000C1544(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000BBF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v25 = sub_1000024C4(&qword_100225850, &qword_1001BAEE0);
  __chkstk_darwin(v25);
  v23 = &v21 - v7;
  v24 = sub_1000024C4(&qword_100225858, &qword_1001BAEE8);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v10 - 8);
  v21 = sub_1000024C4(&qword_100225860, &qword_1001BAEF0);
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v21 - v12;
  static ToolbarItemPlacement.topBarLeading.getter();
  v30 = a2;
  v31 = a3;
  v32 = a1;
  sub_1000024C4(&qword_100225868, &qword_1001BAEF8);
  sub_1000C2264(&qword_100225870, &qword_100225868, &qword_1001BAEF8, sub_1000C1D8C);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.topBarTrailing.getter();
  v27 = a2;
  v28 = a3;
  v29 = a1;
  sub_1000024C4(&qword_100225898, &qword_1001BAF18);
  sub_1000C1E80();
  ToolbarItem<>.init(placement:content:)();
  v14 = *(v25 + 48);
  v15 = v23;
  v16 = v21;
  (*(v11 + 16))(v23, v13, v21);
  v17 = v22;
  v18 = &v15[v14];
  v19 = v24;
  (*(v22 + 16))(v18, v9, v24);
  TupleToolbarContent.init(_:)();
  (*(v17 + 8))(v9, v19);
  return (*(v11 + 8))(v13, v16);
}

uint64_t sub_1000BC2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000024C4(&qword_100225880, &qword_1001BAF00);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_1000BC3BC(a1, a2, a3, &v10 - v7);
  sub_1000C1D8C();
  View.accessibilityIdentifier(_:)();
  return sub_1000050C4(v8, &qword_100225880, &qword_1001BAF00);
}

uint64_t sub_1000BC3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000024C4(&qword_100221A00, &qword_1001B7410);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v38 - v10;
  v45 = sub_1000024C4(&qword_1002258F0, &qword_1001BAF80);
  __chkstk_darwin(v45);
  v13 = v38 - v12;
  v43 = a2;
  v44 = a3;
  v15 = type metadata accessor for FilterView(0, a2, a3, v14);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v38 - v17;
  if (static Solarium.isEnabled.getter())
  {
    (*(v16 + 16))(v18, a1, v15);
    v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v22 = swift_allocObject();
    v23 = v44;
    *(v22 + 16) = v43;
    *(v22 + 24) = v23;
    (*(v16 + 32))(v22 + v21, v18, v15);
    *v13 = 0;
    *(v13 + 1) = sub_1000C5124;
    *(v13 + 2) = v22;
    v24 = swift_storeEnumTagMultiPayload();
    sub_10008B1A4(v24, v25, v26);
    sub_10000BFFC(&qword_100221A08, &qword_100221A00, &qword_1001B7410, &protocol conformance descriptor for Button<A>);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v28 = sub_1000B1B24(v15, &StateObject.wrappedValue.getter, v19, v20);
    v40 = v11;
    v29 = v28 + *(*v28 + 256);
    v39 = *v29;
    v41 = v8;
    v42 = a4;
    v38[1] = *(v29 + 16);

    (*(v16 + 16))(v18, a1, v15);
    v30 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v31 = swift_allocObject();
    v32 = v44;
    *(v31 + 16) = v43;
    *(v31 + 24) = v32;
    (*(v16 + 32))(v31 + v30, v18, v15);
    v33 = v40;
    Button<>.init(_:action:)();
    v34 = v41;
    (*(v9 + 16))(v13, v33, v41);
    v35 = swift_storeEnumTagMultiPayload();
    sub_10008B1A4(v35, v36, v37);
    sub_10000BFFC(&qword_100221A08, &qword_100221A00, &qword_1001B7410, &protocol conformance descriptor for Button<A>);
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v33, v34);
  }
}

uint64_t sub_1000BC808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v20 = *(v6 - 8);
  v21 = v6;
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for DismissAction();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FilterView(0, a2, a3, v16);
  sub_10000BEB8(a1 + *(v17 + 40), v11, &qword_1002216C0, &qword_1001B43A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v20 + 8))(v8, v21);
  }

  DismissAction.callAsFunction()();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1000BCA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = sub_1000024C4(&qword_1002258C0, &qword_1001BAF28);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = sub_1000024C4(&qword_1002258B0, &qword_1001BAF20);
  v11 = __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  sub_1000BCE28(a1, a2, a3, v9);
  sub_1000C1F64();
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v9, &qword_1002258C0, &qword_1001BAF28);
  v17 = type metadata accessor for FilterView(0, a2, a3, v16);
  sub_1000B1B24(v17, &StateObject.wrappedValue.getter, v18, v19);
  v20 = sub_100032D9C();

  if (v20)
  {
    sub_1000B1B24(v17, &StateObject.wrappedValue.getter, v21, v22);

    v23 = Text.init(_:tableName:bundle:comment:)();
    v25 = v24;
    v27 = v26;
  }

  else
  {
    v23 = 0;
    v27 = 0;
    v25 = 0xE000000000000000;
  }

  ModifiedContent<>.accessibilityLabel(_:)();
  sub_100017398(v23, v25, v27 & 1);

  sub_1000050C4(v13, &qword_1002258B0, &qword_1001BAF20);
  sub_1000B1B24(v17, &StateObject.wrappedValue.getter, v28, v29);
  v30 = sub_100032D9C();

  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = (v30 & 1) == 0;
  v33 = v37;
  sub_10001AE00(v15, v37, &qword_1002258B0, &qword_1001BAF20);
  result = sub_1000024C4(&qword_100225898, &qword_1001BAF18);
  v35 = (v33 + *(result + 36));
  *v35 = KeyPath;
  v35[1] = sub_1000C2138;
  v35[2] = v32;
  return result;
}

uint64_t sub_1000BCE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v40 = sub_1000024C4(&qword_100221A00, &qword_1001B7410);
  v7 = *(v40 - 8);
  __chkstk_darwin(v40);
  v9 = &v36 - v8;
  v45 = sub_1000024C4(&qword_1002258E8, &qword_1001BAF78);
  __chkstk_darwin(v45);
  v11 = &v36 - v10;
  v42 = a2;
  v43 = a3;
  v13 = type metadata accessor for FilterView(0, a2, a3, v12);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v44 = sub_1000024C4(&qword_100223548, &qword_1001B7418);
  __chkstk_darwin(v44);
  v18 = &v36 - v17;
  if (static Solarium.isEnabled.getter())
  {
    (*(v14 + 16))(v16, a1, v13);
    v21 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v22 = swift_allocObject();
    v23 = v42;
    v24 = v43;
    *(v22 + 16) = v42;
    *(v22 + 24) = v24;
    v25 = (*(v14 + 32))(v22 + v21, v16, v13);
    __chkstk_darwin(v25);
    *(&v36 - 4) = v23;
    *(&v36 - 3) = v24;
    *(&v36 - 2) = a1;
    Button.init(action:label:)();
    v26 = static Edge.Set.horizontal.getter();
    v27 = &v18[*(v44 + 36)];
    *v27 = v26;
    *(v27 + 8) = 0u;
    *(v27 + 24) = 0u;
    v27[40] = 1;
    sub_10000BEB8(v18, v11, &qword_100223548, &qword_1001B7418);
    swift_storeEnumTagMultiPayload();
    sub_10005E368();
    sub_10000BFFC(&qword_100221A08, &qword_100221A00, &qword_1001B7410, &protocol conformance descriptor for Button<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_1000050C4(v18, &qword_100223548, &qword_1001B7418);
  }

  else
  {
    v29 = sub_1000B1B24(v13, &StateObject.wrappedValue.getter, v19, v20);
    v30 = v29 + *(*v29 + 240);
    v39 = *v30;
    v37 = v9;
    v38 = *(v30 + 16);

    (*(v14 + 16))(v16, a1, v13);
    v31 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v32 = swift_allocObject();
    v33 = v43;
    *(v32 + 16) = v42;
    *(v32 + 24) = v33;
    (*(v14 + 32))(v32 + v31, v16, v13);
    v34 = v37;
    Button<>.init(_:action:)();
    v35 = v40;
    (*(v7 + 16))(v11, v34, v40);
    swift_storeEnumTagMultiPayload();
    sub_10005E368();
    sub_10000BFFC(&qword_100221A08, &qword_100221A00, &qword_1001B7410, &protocol conformance descriptor for Button<A>);
    _ConditionalContent<>.init(storage:)();
    return (*(v7 + 8))(v34, v35);
  }
}

void sub_1000BD374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000B1B24(a1, &StateObject.wrappedValue.getter, a3, a4);
  sub_100034F58();

  sub_1000B1B24(a1, &StateObject.wrappedValue.getter, v6, v7);
  v8 = *(v4 + *(a1 + 44));
  if (v8)
  {

    sub_100035414(9, 21, 0, 3u, v8);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000C1544(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000BD488@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for FilterView(0, a1, a2, a3);
  sub_1000B1B24(v5, &StateObject.wrappedValue.getter, v6, v7);

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  sub_1000B1B24(v5, &StateObject.wrappedValue.getter, v11, v13);
  LOBYTE(v5) = sub_100032D9C();

  if (v5)
  {
    static Color.primary.getter();
  }

  else
  {
    static Color.gray.getter();
  }

  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  sub_100017398(v8, v10, v12 & 1);

  static Font.Weight.regular.getter();
  v19 = Text.fontWeight(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_100017398(v14, v16, v18 & 1);

  *a4 = v19;
  *(a4 + 8) = v21;
  *(a4 + 16) = v23 & 1;
  *(a4 + 24) = v25;
  return result;
}

void sub_1000BD664(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

double sub_1000BD670(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = type metadata accessor for FilterView(0, a3, a4, a4);
  sub_1000B1B24(v8, &StateObject.wrappedValue.getter, v9, v10);
  sub_100032814(v4, v5, v6, v7);

  return result;
}

void sub_1000BD6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FilterView(0, a2, a3, a4);
  sub_1000B1B24(v5, &StateObject.wrappedValue.getter, v6, v7);
  if (*(a1 + *(v5 + 44)))
  {

    sub_100035708(v8);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000C1544(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

void sub_1000BD7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FilterView(0, a2, a3, a4);
  sub_1000B1B24(v5, &StateObject.wrappedValue.getter, v6, v7);
  v8 = *(a1 + *(v5 + 44));
  if (v8)
  {

    sub_100035414(9, 2, 0, 3u, v8);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000C1544(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

void sub_1000BD8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DismissAction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for FilterView(0, a2, a3, v10);
  sub_1000B1B24(v11, &StateObject.wrappedValue.getter, v12, v13);
  v14 = sub_100032D7C();

  if (v14)
  {
    sub_1000B1B24(v11, &StateObject.wrappedValue.getter, v15, v16);
    sub_100034AE8();

    sub_1000B1B24(v11, &StateObject.wrappedValue.getter, v17, v18);
    v19 = *(a1 + *(v11 + 44));
    if (v19)
    {

      sub_100035414(9, 24, 0, 3u, v19);

      sub_100039CB8(v9);
      DismissAction.callAsFunction()();
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      type metadata accessor for RemoteViewConfiguration();
      sub_1000C1544(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

uint64_t sub_1000BDAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for FilterView(0, a2, a3, a4);
  sub_1000B1B24(v4, &StateObject.wrappedValue.getter, v5, v6);
  sub_100032AA0();

  sub_10001877C(v7, v8, v9);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.Weight.semibold.getter();
  v15 = Text.fontWeight(_:)();
  v17 = v16;
  v19 = v18;
  sub_100017398(v10, v12, v14 & 1);

  static Font.headline.getter();
  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;

  sub_100017398(v15, v17, v19 & 1);

  static Color.white.getter();
  v25 = Text.foregroundColor(_:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_100017398(v20, v22, v24 & 1);

  LOBYTE(v20) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v48 = v29 & 1;
  v47 = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v49[6] + 7) = *&v49[21];
  *(&v49[8] + 7) = *&v49[23];
  *(&v49[10] + 7) = *&v49[25];
  *(&v49[12] + 7) = v50;
  *(v49 + 7) = *&v49[15];
  *(&v49[2] + 7) = *&v49[17];
  *(&v49[4] + 7) = *&v49[19];
  *&v41 = v25;
  *(&v41 + 1) = v27;
  LOBYTE(v42) = v29 & 1;
  *(&v42 + 1) = v31;
  LOBYTE(v43) = v20;
  *(&v43 + 1) = v33;
  *&v44 = v35;
  *(&v44 + 1) = v37;
  *v45 = v39;
  v45[8] = 0;
  *&v45[73] = *&v49[8];
  *&v45[89] = *&v49[10];
  *&v45[105] = *&v49[12];
  *&v45[120] = *(&v50 + 1);
  *&v45[9] = *v49;
  *&v45[25] = *&v49[2];
  *&v45[41] = *&v49[4];
  *&v45[57] = *&v49[6];
  sub_1000024C4(&qword_100225910, &qword_1001BAFC0);
  sub_1000C2318();
  View.accessibilityIdentifier(_:)();
  v46[8] = *&v45[64];
  v46[9] = *&v45[80];
  v46[10] = *&v45[96];
  v46[11] = *&v45[112];
  v46[4] = *v45;
  v46[5] = *&v45[16];
  v46[6] = *&v45[32];
  v46[7] = *&v45[48];
  v46[0] = v41;
  v46[1] = v42;
  v46[2] = v43;
  v46[3] = v44;
  return sub_1000050C4(v46, &qword_100225910, &qword_1001BAFC0);
}

uint64_t sub_1000BDE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = static Color.blue.getter();
  v9 = static Edge.Set.all.getter();
  v10 = sub_1000024C4(&qword_1002257B0, &qword_1001BAE90);
  (*(*(v10 - 8) + 16))(a4, a1, v10);
  v11 = a4 + *(sub_1000024C4(&qword_1002257F0, &unk_1001BAEB0) + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
  if (qword_100220BC8 != -1)
  {
    swift_once();
  }

  v12 = qword_1002390E0;
  v13 = (a4 + *(sub_1000024C4(&qword_1002257E0, &qword_1001BAEA8) + 36));
  v14 = *(type metadata accessor for RoundedRectangle() + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = type metadata accessor for RoundedCornerStyle();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = v12;
  v13[1] = v12;
  *(v13 + *(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)) = 256;
  LOBYTE(v15) = static Edge.Set.bottom.getter();
  v18 = type metadata accessor for FilterView(0, a2, a3, v17);
  sub_1000B1B24(v18, &StateObject.wrappedValue.getter, v19, v20);
  v21 = sub_10003275C();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  result = sub_1000024C4(&qword_1002257C0, &qword_1001BAEA0);
  v29 = a4 + *(result + 36);
  *v29 = v15;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  return result;
}

uint64_t sub_1000BE03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000024C4(&qword_100225B30, &qword_1001BB2D0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_1000024C4(&qword_100225B38, &qword_1001BB2D8);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = sub_1000024C4(&qword_100225B40, &qword_1001BB2E0);
  sub_1000BE2B4(a1, &v16[*(v17 + 44)]);
  v18 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v19 = &v16[*(v11 + 44)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v24 = sub_1000024C4(&qword_100225B48, &qword_1001BB2E8);
  sub_1000BF85C(a1, &v9[*(v24 + 44)]);
  sub_10000BEB8(v16, v14, &qword_100225B38, &qword_1001BB2D8);
  sub_10000BEB8(v9, v7, &qword_100225B30, &qword_1001BB2D0);
  sub_10000BEB8(v14, a2, &qword_100225B38, &qword_1001BB2D8);
  v25 = sub_1000024C4(&qword_100225B50, &qword_1001BB2F0);
  sub_10000BEB8(v7, a2 + *(v25 + 48), &qword_100225B30, &qword_1001BB2D0);
  sub_1000050C4(v9, &qword_100225B30, &qword_1001BB2D0);
  sub_1000050C4(v16, &qword_100225B38, &qword_1001BB2D8);
  sub_1000050C4(v7, &qword_100225B30, &qword_1001BB2D0);
  return sub_1000050C4(v14, &qword_100225B38, &qword_1001BB2D8);
}

uint64_t sub_1000BE2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v85 = a2;
  v80 = type metadata accessor for DatePickerButtonStyle(0);
  __chkstk_darwin(v80);
  v78 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CompactDatePicker(0);
  v75 = *(v3 - 8);
  v73 = *(v75 + 64);
  v4 = v3 - 8;
  v71 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v72 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1000024C4(&qword_100225C08, &qword_1001BB398);
  v82 = *(v79 - 8);
  __chkstk_darwin(v79);
  v74 = &v63 - v6;
  v7 = sub_1000024C4(&qword_100225C10, &qword_1001BB3A0);
  v8 = *(v7 - 8);
  v83 = v7;
  v84 = v8;
  __chkstk_darwin(v7);
  v76 = &v63 - v9;
  v10 = sub_1000024C4(&qword_100225C18, &qword_1001BB3A8);
  v11 = __chkstk_darwin(v10 - 8);
  v81 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = &v63 - v13;
  v68 = type metadata accessor for AccessibilityTraits();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CompactDatePickerConfiguration(0);
  __chkstk_darwin(v16 - 8);
  v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_1000024C4(&qword_100224BD0, &qword_1001BB3B0);
  v19 = __chkstk_darwin(v66);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v86 = &v63 - v23;
  __chkstk_darwin(v22);
  v64 = &v63 - v24;
  v70 = *(v4 + 32);
  v69 = sub_1000024C4(&qword_100225A68, &unk_1001BB1F0);
  Binding.wrappedValue.getter();
  v25 = *v18;
  v26 = v18[1];

  v27 = sub_1000C32F8(v18, type metadata accessor for CompactDatePickerConfiguration);
  v88 = v25;
  v89 = v26;
  sub_10001877C(v27, v28, v29);
  v30 = Text.init<A>(_:)();
  v32 = v31;
  v34 = v33;
  static Font.Weight.regular.getter();
  v35 = Text.fontWeight(_:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_100017398(v30, v32, v34 & 1);

  v88 = v35;
  v89 = v37;
  LOBYTE(v90) = v39 & 1;
  v91 = v41;
  static AccessibilityTraits.isHeader.getter();
  View.accessibilityAddTraits(_:)();
  (*(v67 + 8))(v15, v68);
  sub_100017398(v35, v37, v39 & 1);

  v42 = v86;
  ModifiedContent<>.accessibilityHeading(_:)();
  sub_1000050C4(v21, &qword_100224BD0, &qword_1001BB3B0);
  v43 = v64;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_1000050C4(v42, &qword_100224BD0, &qword_1001BB3B0);
  v44 = v65;
  v45 = v72;
  sub_1000C3290(v65, v72, type metadata accessor for CompactDatePicker);
  v46 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v47 = swift_allocObject();
  sub_1000C44F4(v45, v47 + v46, type metadata accessor for CompactDatePicker);
  v87 = v44;
  sub_1000C4888();
  v48 = v74;
  Button.init(action:label:)();
  LOBYTE(v25) = *(v44 + *(v71 + 48));
  v49 = v80;
  v50 = v78;
  Binding.wrappedValue.getter();
  *v50 = v25;
  *&v50[*(v49 + 24)] = 0x3FD3333333333333;
  v51 = sub_10000BFFC(&qword_100225C28, &qword_100225C08, &qword_1001BB398, &protocol conformance descriptor for Button<A>);
  v52 = sub_1000C1544(&qword_100225C30, type metadata accessor for DatePickerButtonStyle, &unk_1001BB4A4);
  v53 = v76;
  v54 = v79;
  View.buttonStyle<A>(_:)();
  sub_1000C32F8(v50, type metadata accessor for DatePickerButtonStyle);
  (*(v82 + 8))(v48, v54);
  v88 = v54;
  v89 = v49;
  v90 = v51;
  v91 = v52;
  swift_getOpaqueTypeConformance2();
  v55 = v77;
  v56 = v83;
  View.accessibilityIdentifier(_:)();
  (*(v84 + 8))(v53, v56);
  v57 = v86;
  sub_10000BEB8(v43, v86, &qword_100224BD0, &qword_1001BB3B0);
  v58 = v81;
  sub_10000BEB8(v55, v81, &qword_100225C18, &qword_1001BB3A8);
  v59 = v85;
  sub_10000BEB8(v57, v85, &qword_100224BD0, &qword_1001BB3B0);
  v60 = sub_1000024C4(&qword_100225C38, &qword_1001BB3B8);
  v61 = v59 + *(v60 + 48);
  *v61 = 0;
  *(v61 + 8) = 1;
  sub_10000BEB8(v58, v59 + *(v60 + 64), &qword_100225C18, &qword_1001BB3A8);
  sub_1000050C4(v55, &qword_100225C18, &qword_1001BB3A8);
  sub_1000050C4(v43, &qword_100224BD0, &qword_1001BB3B0);
  sub_1000050C4(v58, &qword_100225C18, &qword_1001BB3A8);
  return sub_1000050C4(v57, &qword_100224BD0, &qword_1001BB3B0);
}

double sub_1000BEBD0(uint64_t a1, __n128 a2)
{
  static Animation.easeInOut(duration:)();
  withAnimation<A>(_:_:)();

  return result;
}

double sub_1000BEC4C()
{
  v0 = type metadata accessor for CompactDatePickerConfiguration(0);
  v1 = __chkstk_darwin(v0);
  v3 = (&v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __chkstk_darwin(v1);
  v6 = (&v29 - v5);
  v7 = __chkstk_darwin(v4);
  v31 = &v29 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = (&v29 - v10);
  __chkstk_darwin(v9);
  v13 = (&v29 - v12);
  v14 = *(type metadata accessor for CompactDatePicker(0) + 24);
  sub_1000024C4(&qword_100225A68, &unk_1001BB1F0);
  v32 = v14;
  Binding.wrappedValue.getter();
  Binding.wrappedValue.getter();
  v15 = *v13 == *v11 && v13[1] == v11[1];
  if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static Date.== infix(_:_:)())
  {
    v16 = *(v0 + 24);
    v42 = *(v13 + v16);
    v30 = v0;
    v17 = *(v11 + v16);
    sub_1000C32F8(v11, type metadata accessor for CompactDatePickerConfiguration);
    sub_1000C32F8(v13, type metadata accessor for CompactDatePickerConfiguration);
    v15 = v42 == v17;
    v0 = v30;
    if (v15)
    {
      v18 = v31;
      Binding.wrappedValue.getter();
      v18[*(v0 + 24)] = 0;
      Binding.wrappedValue.setter();
    }
  }

  else
  {
    sub_1000C32F8(v11, type metadata accessor for CompactDatePickerConfiguration);
    sub_1000C32F8(v13, type metadata accessor for CompactDatePickerConfiguration);
  }

  Binding.wrappedValue.getter();
  Binding.wrappedValue.getter();
  v19 = *v6 == *v3 && v6[1] == v3[1];
  if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static Date.== infix(_:_:)())
  {
    v20 = *(v0 + 24);
    v21 = *(v6 + v20);
    v22 = v0;
    v23 = *(v3 + v20);
    sub_1000C32F8(v3, type metadata accessor for CompactDatePickerConfiguration);
    sub_1000C32F8(v6, type metadata accessor for CompactDatePickerConfiguration);
    if (v21 == v23)
    {
      v24 = v31;
      Binding.wrappedValue.getter();
      v24[*(v22 + 24)] = 0;
      Binding.wrappedValue.setter();
    }
  }

  else
  {
    sub_1000C32F8(v3, type metadata accessor for CompactDatePickerConfiguration);
    sub_1000C32F8(v6, type metadata accessor for CompactDatePickerConfiguration);
  }

  swift_getKeyPath();
  Binding.subscript.getter();

  v25 = v39;
  v26 = v40;
  v27 = v41;
  v36 = v39;
  v37 = v40;
  v38 = v41;
  sub_1000024C4(&unk_1002265A0, &unk_1001BB3E0);
  Binding.wrappedValue.getter();
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v43 = (v44 & 1) == 0;
  Binding.wrappedValue.setter();

  return result;
}

uint64_t sub_1000BF028@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = type metadata accessor for AccessibilityTraits();
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v56 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v4 - 8);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimeZone();
  __chkstk_darwin(v6 - 8);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  __chkstk_darwin(v8 - 8);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000024C4(&qword_100221F00, &qword_1001B5500);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = sub_1000024C4(&qword_100221F08, &qword_1001B5508);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v46 = type metadata accessor for Date.FormatStyle();
  __chkstk_darwin(v46);
  v44 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v22;
  v23 = type metadata accessor for CompactDatePickerConfiguration(0);
  v55 = v23;
  __chkstk_darwin(v23);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1000024C4(&qword_100224BD0, &qword_1001BB3B0);
  __chkstk_darwin(v50);
  v51 = &v41 - v26;
  v27 = *(type metadata accessor for CompactDatePicker(0) + 24);
  v43 = sub_1000024C4(&qword_100225A68, &unk_1001BB1F0);
  Binding.wrappedValue.getter();
  (*(v20 + 16))(v22, &v25[*(v23 + 20)], v19);
  v42 = type metadata accessor for CompactDatePickerConfiguration;
  sub_1000C32F8(v25, type metadata accessor for CompactDatePickerConfiguration);
  static Date.FormatStyle.DateStyle.abbreviated.getter();
  v28 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v28 - 8) + 56))(v17, 0, 1, v28);
  v29 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  sub_1000C1544(&qword_100221EF8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  sub_1000C1544(&qword_1002227D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v30 = Text.init<A>(_:format:)();
  v32 = v31;
  v58 = v30;
  v59 = v33;
  v47 = v33;
  v48 = a1;
  v60 = v31 & 1;
  v61 = v34;
  v49 = v27;
  Binding.wrappedValue.getter();
  v35 = v25[*(v55 + 24)];
  sub_1000C32F8(v25, v42);
  if (v35 == 1)
  {
    sub_1000024C4(&qword_1002259D8, &qword_1001BB018);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1001B49B0;
    static AccessibilityTraits.isSelected.getter();
    v57 = v36;
  }

  else
  {
    v57 = _swiftEmptyArrayStorage;
  }

  sub_1000C1544(&qword_1002259E0, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000024C4(&qword_1002259E8, &unk_1001BB020);
  sub_10000BFFC(&qword_1002259F0, &qword_1002259E8, &unk_1001BB020, &protocol conformance descriptor for [A]);
  v37 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v38 = v51;
  v39 = v56;
  View.accessibilityAddTraits(_:)();
  (*(v54 + 8))(v39, v37);
  sub_100017398(v30, v47, v32 & 1);

  Binding.wrappedValue.getter();
  sub_1000C32F8(v25, type metadata accessor for CompactDatePickerConfiguration);
  LocalizedStringKey.init(stringLiteral:)();
  ModifiedContent<>.accessibilityHint(_:)();

  return sub_1000050C4(v38, &qword_100224BD0, &qword_1001BB3B0);
}

uint64_t sub_1000BF85C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v111 = a2;
  v3 = type metadata accessor for CompactDatePicker(0);
  v108 = *(v3 - 8);
  __chkstk_darwin(v3);
  v109 = v4;
  v110 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for GraphicalDatePickerStyle();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DatePickerComponents();
  __chkstk_darwin(v6 - 8);
  v89 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000024C4(&qword_100222680, &qword_1001B5EC0);
  __chkstk_darwin(v8 - 8);
  v86 = &v77 - v9;
  v10 = sub_1000024C4(&qword_100225B58, &qword_1001BB2F8);
  __chkstk_darwin(v10 - 8);
  v81 = &v77 - v11;
  v12 = sub_1000024C4(&qword_100225A68, &unk_1001BB1F0);
  __chkstk_darwin(v12);
  v80 = &v77 - v13;
  v85 = sub_1000024C4(&qword_100225B60, &qword_1001BB300);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v77 - v14;
  v84 = sub_1000024C4(&qword_100225B68, &qword_1001BB308);
  __chkstk_darwin(v84);
  v87 = &v77 - v15;
  v91 = sub_1000024C4(&qword_100225B70, &qword_1001BB310);
  __chkstk_darwin(v91);
  v93 = &v77 - v16;
  v92 = sub_1000024C4(&qword_100225B78, &qword_1001BB318);
  __chkstk_darwin(v92);
  v103 = &v77 - v17;
  v102 = sub_1000024C4(&qword_100225B80, &qword_1001BB320);
  __chkstk_darwin(v102);
  v105 = &v77 - v18;
  v104 = sub_1000024C4(&qword_100225B88, &qword_1001BB328);
  v19 = __chkstk_darwin(v104);
  v107 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v101 = &v77 - v22;
  __chkstk_darwin(v21);
  v106 = &v77 - v23;
  v24 = type metadata accessor for CompactDatePickerConfiguration(0);
  __chkstk_darwin(v24);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Divider();
  v27 = *(v79 - 8);
  __chkstk_darwin(v79);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1000024C4(&qword_100225B90, &qword_1001BB330);
  v99 = *(v100 - 8);
  v30 = __chkstk_darwin(v100);
  v96 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v77 - v32;
  Divider.init()();
  v113 = v3;
  v34 = a1 + *(v3 + 24);
  v94 = v12;
  v112 = v34;
  Binding.wrappedValue.getter();
  v90 = v24;
  LOBYTE(v3) = v26[*(v24 + 24)];
  sub_1000C32F8(v26, type metadata accessor for CompactDatePickerConfiguration);
  v35 = static Animation.linear(duration:)();
  if ((v3 & 1) == 0)
  {
    Animation.delay(_:)();
  }

  __chkstk_darwin(v35);
  sub_1000024C4(&qword_100225B98, &qword_1001BB338);
  sub_1000C1544(&qword_100225938, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
  v78 = a1;
  sub_1000C42C8();
  v88 = v33;
  v36 = v79;
  View.animation<A>(_:body:)();

  (*(v27 + 8))(v29, v36);
  v37 = v80;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_1000050C4(v37, &qword_100225A68, &unk_1001BB1F0);
  sub_10000BEB8(a1 + *(v113 + 32), v86, &qword_100222680, &qword_1001B5EC0);
  static DatePickerComponents.date.getter();
  v38 = v82;
  DatePicker.init(selection:in:displayedComponents:label:)();
  Binding.wrappedValue.getter();
  v39 = v90;
  sub_1000C32F8(v26, type metadata accessor for CompactDatePickerConfiguration);
  sub_10000BFFC(&qword_100225BC8, &qword_100225B60, &qword_1001BB300, &protocol conformance descriptor for DatePicker<A>);
  v40 = v87;
  v41 = v85;
  View.accessibilityHidden(_:isEnabled:)();
  (*(v83 + 8))(v38, v41);
  v42 = v95;
  GraphicalDatePickerStyle.init()();
  sub_1000C440C();
  sub_1000C1544(&qword_100225BD8, &type metadata accessor for GraphicalDatePickerStyle, &protocol conformance descriptor for GraphicalDatePickerStyle);
  v43 = v93;
  v44 = v98;
  View.datePickerStyle<A>(_:)();
  (*(v97 + 8))(v42, v44);
  sub_1000050C4(v40, &qword_100225B68, &qword_1001BB308);
  v45 = (v43 + *(sub_1000024C4(&qword_100225BE0, &qword_1001BB370) + 36));
  v46 = sub_1000024C4(&qword_100225BE8, &qword_1001BB378);
  v47 = *(v46 + 36);
  v48 = enum case for CoordinateSpace.local(_:);
  v49 = type metadata accessor for CoordinateSpace();
  (*(*(v49 - 8) + 104))(&v45[v47], v48, v49);
  *v45 = &type metadata for FilterViewStartDatePickerHeightPreferenceKey;
  v50 = &v45[*(v46 + 40)];
  *v50 = sub_1000C0A68;
  v50[1] = 0;
  v51 = v78;
  v52 = v110;
  sub_1000C3290(v78, v110, type metadata accessor for CompactDatePicker);
  v53 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v54 = swift_allocObject();
  sub_1000C44F4(v52, v54 + v53, type metadata accessor for CompactDatePicker);
  v55 = (v43 + *(sub_1000024C4(&qword_100225BF0, &qword_1001BB380) + 36));
  *v55 = sub_1000C455C;
  v55[1] = v54;
  v56 = *(v51 + *(v113 + 36));
  v57 = (v43 + *(v91 + 36));
  *v57 = 0;
  v57[1] = v56;
  Binding.wrappedValue.getter();
  LODWORD(v46) = v26[*(v39 + 24)];
  sub_1000C32F8(v26, type metadata accessor for CompactDatePickerConfiguration);
  if (v46)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.5;
  }

  v59 = v103;
  sub_10001AE00(v43, v103, &qword_100225B70, &qword_1001BB310);
  *(v59 + *(v92 + 36)) = v58;
  Binding.wrappedValue.getter();
  sub_1000C32F8(v26, type metadata accessor for CompactDatePickerConfiguration);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v60 = v105;
  sub_10001AE00(v59, v105, &qword_100225B78, &qword_1001BB318);
  v61 = (v60 + *(v102 + 36));
  v62 = v119;
  v61[4] = v118;
  v61[5] = v62;
  v61[6] = v120;
  v63 = v115;
  *v61 = v114;
  v61[1] = v63;
  v64 = v117;
  v61[2] = v116;
  v61[3] = v64;
  v65 = v101;
  sub_10001AE00(v60, v101, &qword_100225B80, &qword_1001BB320);
  *(v65 + *(v104 + 36)) = 0;
  v66 = v106;
  sub_10001AE00(v65, v106, &qword_100225B88, &qword_1001BB328);
  v67 = v99;
  v68 = *(v99 + 16);
  v69 = v96;
  v70 = v88;
  v71 = v100;
  v68(v96, v88, v100);
  v72 = v107;
  sub_10000BEB8(v66, v107, &qword_100225B88, &qword_1001BB328);
  v73 = v111;
  v68(v111, v69, v71);
  v74 = sub_1000024C4(&qword_100225BF8, &qword_1001BB388);
  sub_10000BEB8(v72, &v73[*(v74 + 48)], &qword_100225B88, &qword_1001BB328);
  sub_1000050C4(v66, &qword_100225B88, &qword_1001BB328);
  v75 = *(v67 + 8);
  v75(v70, v71);
  sub_1000050C4(v72, &qword_100225B88, &qword_1001BB328);
  return (v75)(v69, v71);
}

__n128 sub_1000C0788@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for CompactDatePickerConfiguration(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024C4(&qword_100225BB0, &qword_1001BB340);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  type metadata accessor for CompactDatePicker(0);
  sub_1000024C4(&qword_100225A68, &unk_1001BB1F0);
  Binding.wrappedValue.getter();
  v11 = v6[*(v4 + 32)];
  sub_1000C32F8(v6, type metadata accessor for CompactDatePickerConfiguration);
  if (v11)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = sub_1000024C4(&qword_100225BC0, &qword_1001BB348);
  (*(*(v13 - 8) + 16))(v10, a1, v13);
  *&v10[*(v8 + 44)] = v12;
  Binding.wrappedValue.getter();
  sub_1000C32F8(v6, type metadata accessor for CompactDatePickerConfiguration);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v14 = v20;
  sub_10001AE00(v10, v20, &qword_100225BB0, &qword_1001BB340);
  v15 = v14 + *(sub_1000024C4(&qword_100225B98, &qword_1001BB338) + 36);
  v16 = v26;
  *(v15 + 64) = v25;
  *(v15 + 80) = v16;
  *(v15 + 96) = v27;
  v17 = v22;
  *v15 = v21;
  *(v15 + 16) = v17;
  result = v24;
  *(v15 + 32) = v23;
  *(v15 + 48) = result;
  return result;
}

uint64_t sub_1000C0A90(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for CompactDatePicker(0);
  sub_1000024C4(&qword_100225C00, &qword_1001BB390);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1000C0B0C@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_1000024C4(&qword_100225B28, &qword_1001BB2C8);
  return sub_1000BE03C(v2, a2 + *(v4 + 44));
}

uint64_t sub_1000C0B5C@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v62 = type metadata accessor for ButtonStyleConfiguration.Label();
  v2 = *(v62 - 8);
  __chkstk_darwin(v62);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1000024C4(&qword_100225CF0, &qword_1001BB4E0);
  __chkstk_darwin(v59);
  v6 = &v57 - v5;
  v58 = sub_1000024C4(&qword_100225CF8, &qword_1001BB4E8);
  __chkstk_darwin(v58);
  v8 = &v57 - v7;
  v57 = sub_1000024C4(&qword_100225D00, &qword_1001BB4F0);
  __chkstk_darwin(v57);
  v10 = &v57 - v9;
  v60 = sub_1000024C4(&qword_100225D08, &qword_1001BB4F8);
  __chkstk_darwin(v60);
  v12 = &v57 - v11;
  v63 = sub_1000024C4(&qword_100225D10, &qword_1001BB500);
  __chkstk_darwin(v63);
  v14 = &v57 - v13;
  v61 = sub_1000024C4(&qword_100225D18, &qword_1001BB508);
  __chkstk_darwin(v61);
  v64 = &v57 - v15;
  ButtonStyleConfiguration.label.getter();
  v65 = v1;
  if (*v1 == 1)
  {
    v16 = static Color.blue.getter();
  }

  else
  {
    v16 = static Color.primary.getter();
  }

  v17 = v16;
  KeyPath = swift_getKeyPath();
  (*(v2 + 32))(v6, v4, v62);
  v19 = &v6[*(v59 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v20 = 0.3;
  }

  else
  {
    v20 = 1.0;
  }

  sub_10001AE00(v6, v8, &qword_100225CF0, &qword_1001BB4E0);
  *&v8[*(v58 + 36)] = v20;
  v21 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_10001AE00(v8, v10, &qword_100225CF8, &qword_1001BB4E8);
  v30 = &v10[*(v57 + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = static Edge.Set.vertical.getter();
  static Solarium.isEnabled.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_10001AE00(v10, v12, &qword_100225D00, &qword_1001BB4F0);
  v40 = &v12[*(v60 + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  if (qword_100220BA8 != -1)
  {
    swift_once();
  }

  v41 = qword_1002390C8;
  v42 = static Edge.Set.all.getter();
  sub_10001AE00(v12, v14, &qword_100225D08, &qword_1001BB4F8);
  v43 = &v14[*(v63 + 36)];
  *v43 = v41;
  v43[8] = v42;

  if (static Solarium.isEnabled.getter())
  {
    v44 = 16.0;
  }

  else
  {
    v44 = 7.0;
  }

  v45 = v64;
  v46 = &v64[*(v61 + 36)];
  v47 = *(type metadata accessor for RoundedRectangle() + 20);
  v48 = enum case for RoundedCornerStyle.continuous(_:);
  v49 = type metadata accessor for RoundedCornerStyle();
  (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
  *v46 = v44;
  v46[1] = v44;
  *(v46 + *(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)) = 256;
  sub_10001AE00(v14, v45, &qword_100225D10, &qword_1001BB500);
  v50 = type metadata accessor for DatePickerButtonStyle(0);
  v51 = v65;
  v52 = static Animation.easeInOut(duration:)();
  v53 = &v51[*(v50 + 20)];
  LOBYTE(v53) = v53[*(type metadata accessor for CompactDatePickerConfiguration(0) + 24)];
  v54 = v66;
  sub_10001AE00(v45, v66, &qword_100225D18, &qword_1001BB508);
  result = sub_1000024C4(&qword_100225D20, &unk_1001BB510);
  v56 = v54 + *(result + 36);
  *v56 = v52;
  *(v56 + 8) = v53;
  return result;
}

void sub_1000C1148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FilterViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  type metadata accessor for StateObject();
  if (v4 <= 0x3F)
  {
    sub_1000C36FC(319, &qword_100221C00, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v5 <= 0x3F)
    {
      sub_1000C36FC(319, &qword_1002219B8, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
      if (v6 <= 0x3F)
      {
        sub_100017044(319);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}