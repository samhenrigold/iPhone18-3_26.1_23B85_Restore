uint64_t sub_1007ACB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a8;
  v17 = a10;
  v18 = a11;
  v13 = a9 + *(type metadata accessor for Header.TextVStack.MetadataContainer(0, v16) + 100);
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = type metadata accessor for Optional();
  return (*(*(v14 - 8) + 32))(a9, a1, v14);
}

uint64_t sub_1007ACBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a8;
  v17 = a10;
  v18 = a11;
  v13 = a9 + *(type metadata accessor for Header.TextVStack.DescriptionContainer(0, v16) + 100);
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = type metadata accessor for Optional();
  return (*(*(v14 - 8) + 32))(a9, a1, v14);
}

uint64_t sub_1007ACC98@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a8;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v16 = type metadata accessor for Header.TextVStack.PlaybackControlContainer(0, v19);
  v17 = a9 + *(v16 + 104);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  result = (*(*(a7 - 8) + 32))(a9, a1, a7);
  *(a9 + *(v16 + 100)) = a2;
  return result;
}

uint64_t sub_1007ACD60@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(void, void))
{
  v128 = a2;
  v102 = a1;
  v110 = a9;
  v130 = a13;
  v136 = a3;
  v137 = a4;
  v123 = a3;
  v122 = a4;
  v138 = a5;
  v139 = a6;
  v140 = a7;
  v141 = a8;
  v142 = a10;
  v143 = a11;
  v124 = a11;
  v144 = a12;
  v145 = a13;
  v108 = type metadata accessor for Header.TextVStack.DescriptionContainer(0, &v136);
  v109 = *(v108 - 8);
  __chkstk_darwin();
  v121 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v90 - v20;
  v117 = type metadata accessor for Optional();
  v104 = *(v117 - 8);
  __chkstk_darwin();
  v106 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v90 - v22;
  v101 = *(a7 - 8);
  __chkstk_darwin();
  v100 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = a3;
  v137 = a4;
  v138 = a5;
  v139 = a6;
  v140 = a7;
  v141 = a8;
  v142 = a10;
  v143 = a11;
  v24 = v130;
  v144 = a12;
  v145 = v130;
  v127 = type metadata accessor for Header.TextVStack.PlaybackControlContainer(0, &v136);
  v105 = *(v127 - 8);
  __chkstk_darwin();
  v120 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v90 - v26;
  __chkstk_darwin();
  v119 = &v90 - v27;
  v28 = a5;
  v96 = type metadata accessor for Optional();
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v90 - v29;
  v30 = v123;
  v31 = v122;
  v136 = v123;
  v137 = v122;
  v138 = v28;
  v139 = a6;
  v140 = a7;
  v141 = a8;
  v32 = a7;
  v111 = a7;
  v112 = a8;
  v33 = v124;
  v142 = a10;
  v143 = v124;
  v144 = a12;
  v145 = v24;
  v126 = type metadata accessor for Header.TextVStack.MetadataContainer(0, &v136);
  v116 = *(v126 - 8);
  __chkstk_darwin();
  v125 = &v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v129 = &v90 - v35;
  v136 = v30;
  v137 = v31;
  v138 = v28;
  v139 = a6;
  v140 = v32;
  v141 = a8;
  v142 = a10;
  v143 = v33;
  v144 = a12;
  v145 = v24;
  v97 = type metadata accessor for Header.TextVStack.TitleAttributionStack(0, &v136);
  v118 = *(v97 - 8);
  __chkstk_darwin();
  v114 = &v90 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v115 = &v90 - v37;
  WitnessTable = swift_getWitnessTable();
  sub_100663950();
  v38 = v123;
  v136 = v123;
  v137 = v31;
  v39 = v28;
  v93 = v28;
  v138 = v28;
  v139 = a6;
  v40 = a6;
  v41 = v111;
  v42 = v112;
  v140 = v111;
  v141 = v112;
  v142 = a10;
  v143 = v33;
  v113 = a12;
  v43 = v130;
  v144 = a12;
  v145 = v130;
  v92 = type metadata accessor for Header.TextVStack(0, &v136);
  v44 = v94;
  (*(v95 + 16))(v94, v128 + *(v92 + 112), v96);
  *(&v86 + 1) = a12;
  v89 = v43;
  *&v86 = v124;
  v45 = v125;
  v46 = v40;
  v91 = a10;
  sub_1007ACB18(v44, v38, v31, v39, v40, v41, v42, a10, v125, v86, v89);
  v47 = v126;
  v95 = swift_getWitnessTable();
  sub_100663950();
  v48 = *(v116 + 8);
  v96 = v116 + 8;
  v102 = v48;
  v48(v45, v47);
  v49 = v92;
  v50 = v128;
  v51 = v100;
  (*(v101 + 16))(v100, v128 + *(v92 + 120), v41);
  v92 = *(v49 + 116);
  v52 = v104;
  v94 = *(v104 + 16);
  v53 = v50 + v92;
  v54 = v103;
  v55 = v117;
  (v94)(v103, v53, v117);
  v56 = *(*(v46 - 8) + 48);
  v90 = v46;
  LOBYTE(v31) = v56(v54, 1, v46) != 1;
  (*(v52 + 8))(v54, v55);
  v57 = v124;
  *&v87 = a10;
  *(&v87 + 1) = v124;
  v58 = v99;
  v59 = v31;
  v60 = v123;
  v61 = v93;
  v62 = v111;
  v63 = v112;
  sub_1007ACC98(v51, v59, v123, v122, v93, v46, v111, v112, v99, v87, v113, v130);
  v64 = v127;
  v101 = swift_getWitnessTable();
  v65 = v58;
  v66 = v64;
  sub_100663950();
  v67 = v105;
  v103 = *(v105 + 8);
  v104 = v105 + 8;
  (v103)(v65, v66);
  v68 = v106;
  (v94)(v106, v128 + v92, v117);
  *&v88 = v57;
  *(&v88 + 1) = v113;
  v69 = v121;
  sub_1007ACBD8(v68, v60, v122, v61, v90, v62, v63, v91, v121, v88, v130);
  v70 = v108;
  v128 = swift_getWitnessTable();
  v71 = v107;
  sub_100663950();
  v72 = v109;
  v130 = *(v109 + 8);
  v130(v69, v70);
  v73 = v114;
  v74 = v97;
  (*(v118 + 16))(v114, v115, v97);
  v136 = v73;
  v75 = v125;
  v76 = v126;
  (*(v116 + 16))(v125, v129, v126);
  v137 = v75;
  v77 = *(v67 + 16);
  v78 = v120;
  v79 = v119;
  v80 = v127;
  v77(v120, v119, v127);
  v138 = v78;
  (*(v72 + 16))(v69, v71, v70);
  v139 = v69;
  v135[0] = v74;
  v135[1] = v76;
  v135[2] = v80;
  v135[3] = v70;
  v131 = WitnessTable;
  v132 = v95;
  v133 = v101;
  v134 = v128;
  sub_1006769F4(&v136, 4uLL, v135);
  v81 = v130;
  v130(v71, v70);
  v82 = v103;
  (v103)(v79, v80);
  v83 = v102;
  v102(v129, v76);
  v84 = *(v118 + 8);
  v84(v115, v74);
  v81(v121, v70);
  v82(v120, v127);
  v83(v125, v126);
  return (v84)(v114, v74);
}

uint64_t sub_1007AD9B4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 7);
  v114 = *(a1 + 6);
  v113 = v6;
  v7 = *(a1 + 9);
  v117 = *(a1 + 8);
  v116 = v7;
  v9 = *(a1 + 10);
  v8 = *(a1 + 11);
  v115 = a1;
  v111 = v8;
  v132 = v2;
  v133 = v3;
  v134 = v4;
  v135 = v5;
  v136 = v114;
  v137 = v6;
  v138 = v117;
  v139 = v7;
  v140 = v9;
  v141 = v8;
  v118 = type metadata accessor for Header.TextVStack.TitleAttributionStack.Spacing.Before(255, &v132);
  v97 = type metadata accessor for Optional();
  type metadata accessor for BaselineSpacer(255);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  sub_1001109D0(&qword_1011993F8, &unk_100EE31F0);
  v112 = v2;
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  sub_1001109D0(&qword_101199330, &qword_100ED7DE0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  v10 = type metadata accessor for _ConditionalContent();
  WitnessTable = swift_getWitnessTable();
  v131 = swift_getWitnessTable();
  v91 = v10;
  v88 = swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  v12 = type metadata accessor for ModifiedContent();
  v132 = v2;
  v133 = v3;
  v95 = v4;
  v134 = v4;
  v135 = v5;
  v94 = v5;
  v136 = v114;
  v137 = v113;
  v138 = v117;
  v139 = v116;
  v110 = v9;
  v140 = v9;
  v141 = v111;
  v13 = v118;
  v93 = type metadata accessor for Header.TextVStack.TitleAttributionStack.Spacing.After(255, &v132);
  swift_getTupleTypeMetadata3();
  v14 = type metadata accessor for TupleView();
  v102 = *(v14 - 8);
  __chkstk_darwin();
  v16 = &v81 - v15;
  v89 = v11;
  v87 = *(v11 - 8);
  __chkstk_darwin();
  v86 = &v81 - v17;
  v96 = v12;
  v90 = *(v12 - 8);
  __chkstk_darwin();
  v92 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v81 - v19;
  type metadata accessor for Font.TextStyle();
  __chkstk_darwin();
  v85 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = *(v13 - 8);
  __chkstk_darwin();
  v108 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v81 - v22;
  v105 = v3;
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v81 - v25;
  v27 = v97;
  v28 = *(v97 - 8);
  __chkstk_darwin();
  v30 = &v81 - v29;
  v103 = v14;
  v31 = type metadata accessor for Optional();
  v100 = *(v31 - 8);
  __chkstk_darwin();
  v99 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin();
  v101 = &v81 - v34;
  v35 = v98;
  (*(v28 + 16))(v30, v98, v27, v33);
  LODWORD(v14) = (*(*(v112 - 8) + 48))(v30, 1);
  (*(v28 + 8))(v30, v27);
  if (v14 == 1 && ((*(v24 + 16))(v26, v35 + v115[25], v23), v36 = (*(*(v105 - 8) + 48))(v26, 1), (*(v24 + 8))(v26, v23), v36 == 1))
  {
    v37 = v99;
    (*(v102 + 56))(v99, 1, 1, v103);
  }

  else
  {
    v38 = *(v35 + v115[26]);
    v84 = v16;
    v39 = v113;
    v40 = v85;
    Optional<A>.fontTextStyle.getter(v85);
    v41 = v111;
    *(&v79 + 1) = v116;
    *&v79 = v117;
    v42 = v108;
    v43 = v40;
    v97 = v31;
    v44 = v112;
    v45 = v105;
    v46 = v95;
    v47 = v94;
    v48 = v114;
    sub_1007AE800(v38, v43, v112, v105, v95, v94, v114, v39, v108, v79, v110, v111);
    v49 = v118;
    v82 = swift_getWitnessTable();
    sub_100663950();
    v83 = *(v106 + 8);
    v85 = v106 + 8;
    v83(v42, v49);
    __chkstk_darwin();
    *(&v81 - 12) = v44;
    *(&v81 - 11) = v45;
    *(&v81 - 10) = v46;
    *(&v81 - 9) = v47;
    *(&v81 - 8) = v48;
    *(&v81 - 7) = v39;
    v50 = v116;
    *(&v81 - 6) = v117;
    *(&v81 - 5) = v50;
    *&v79 = v110;
    *(&v79 + 1) = v41;
    v80 = v35;
    v51 = v86;
    VStack.init(alignment:spacing:content:)();
    v52 = v89;
    v53 = swift_getWitnessTable();
    v54 = v92;
    View.layoutPriority(_:)();
    (*(v87 + 8))(v51, v52);
    v55 = sub_100020674(&qword_1011993F0, &qword_1011993F8, &unk_100EE31F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    v127 = v53;
    v128 = v55;
    v56 = v96;
    v116 = swift_getWitnessTable();
    v57 = v109;
    sub_100663950();
    v58 = v90;
    v117 = *(v90 + 8);
    v117(v54, v56);
    KeyPath = swift_getKeyPath();
    v132 = KeyPath;
    LOBYTE(v133) = 0;
    v60 = v93;
    v61 = swift_getWitnessTable();
    sub_100663950();
    v62 = sub_1000D8F20(KeyPath, 0);
    v63 = v42;
    v64 = v42;
    v65 = v107;
    v66 = v118;
    (*(v106 + 16))(v64, v107, v118, v62);
    v132 = v63;
    (*(v58 + 16))(v54, v57, v56);
    v67 = v125;
    LOBYTE(v58) = v126;
    v123 = v125;
    v124 = v126;
    v133 = v54;
    v134 = &v123;
    sub_1005FF6B8(v125, v126);
    v122[0] = v66;
    v68 = v66;
    v122[1] = v56;
    v122[2] = v60;
    v119 = v82;
    v120 = v116;
    v121 = v61;
    v69 = v84;
    sub_1006769F4(&v132, 3uLL, v122);
    v70 = sub_1000D8F20(v67, v58);
    v71 = v117;
    (v117)(v109, v56, v70);
    v72 = v83;
    v83(v65, v68);
    v73 = sub_1000D8F20(v123, v124);
    v71(v54, v56, v73);
    v31 = v97;
    v72(v108, v68);
    v74 = v102;
    v37 = v99;
    v75 = v103;
    (*(v102 + 32))(v99, v69, v103);
    (*(v74 + 56))(v37, 0, 1, v75);
  }

  swift_getWitnessTable();
  v76 = v101;
  sub_100653A68(v37, v101);
  v77 = *(v100 + 8);
  v77(v37, v31);
  v129 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100663950();
  return (v77)(v76, v31);
}

uint64_t sub_1007AE800@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v20[5] = a8;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v14 = type metadata accessor for Header.TextVStack.TitleAttributionStack.Spacing.Before(0, v20);
  v15 = v14[25];
  v16 = type metadata accessor for Font.TextStyle();
  (*(*(v16 - 8) + 32))(&a9[v15], a2, v16);
  v17 = &a9[v14[26]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v14[27];
  *&a9[v18] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1007AE8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, uint64_t)@<X6>, void (*a8)(void, void)@<X7>, uint64_t a9@<X8>, __int128 a10, void (*a11)(void, void, void))
{
  v231 = a8;
  v233 = a7;
  v216 = a5;
  v217 = a6;
  v215 = a4;
  v236 = a1;
  v227 = a9;
  v214 = a11;
  v213 = a10;
  v13 = type metadata accessor for Optional();
  v14 = type metadata accessor for BaselineSpacer(255);
  swift_getTupleTypeMetadata2();
  v15 = type metadata accessor for TupleView();
  v16 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  v17 = type metadata accessor for TupleView();
  v212 = *(v17 - 8);
  __chkstk_darwin();
  v209 = v15;
  v210 = &v169 - v18;
  v206 = *(v15 - 8);
  __chkstk_darwin();
  v194 = &v169 - v19;
  v20 = type metadata accessor for Font.TextStyle();
  v191 = *(v20 - 8);
  v192 = v20;
  __chkstk_darwin();
  v190 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = v14;
  __chkstk_darwin();
  v205 = &v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v193 = &v169 - v23;
  v230 = v16;
  v207 = *(v16 - 8);
  __chkstk_darwin();
  v208 = &v169 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v229 = &v169 - v25;
  sub_1001109D0(&qword_1011993F8, &unk_100EE31F0);
  v26 = type metadata accessor for ModifiedContent();
  v27 = type metadata accessor for Optional();
  v28 = sub_1001109D0(&qword_101199330, &qword_100ED7DE0);
  v29 = type metadata accessor for ModifiedContent();
  v30 = type metadata accessor for Optional();
  v182 = v28;
  swift_getTupleTypeMetadata3();
  v31 = type metadata accessor for TupleView();
  v184 = *(v31 - 8);
  __chkstk_darwin();
  v183 = &v169 - v32;
  v200 = v29;
  v179 = *(v29 - 8);
  __chkstk_darwin();
  v175 = &v169 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v174 = &v169 - v34;
  v35 = type metadata accessor for Optional();
  v218 = *(v35 - 8);
  v219 = v35;
  __chkstk_darwin();
  v202 = &v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v178 = &v169 - v37;
  v220 = *(a3 - 8);
  __chkstk_darwin();
  v189 = &v169 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v188 = &v169 - v39;
  __chkstk_darwin();
  v203 = &v169 - v40;
  __chkstk_darwin();
  v173 = &v169 - v41;
  v201 = v30;
  v180 = *(v30 - 8);
  __chkstk_darwin();
  v181 = &v169 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v198 = &v169 - v43;
  v199 = v26;
  v177 = *(v26 - 8);
  __chkstk_darwin();
  v172 = &v169 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v171 = &v169 - v45;
  v235 = v13;
  v46 = v13;
  v47 = a2;
  v232 = *(v46 - 8);
  __chkstk_darwin();
  v228 = &v169 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v169 - v49;
  __chkstk_darwin();
  v234 = &v169 - v51;
  __chkstk_darwin();
  v176 = &v169 - v52;
  v53 = *(a2 - 8);
  __chkstk_darwin();
  v187 = &v169 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v186 = &v169 - v55;
  __chkstk_darwin();
  v185 = &v169 - v56;
  __chkstk_darwin();
  v170 = &v169 - v57;
  v211 = v27;
  v196 = *(v27 - 8);
  __chkstk_darwin();
  v197 = &v169 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v204 = &v169 - v59;
  v60 = type metadata accessor for EnvironmentValues();
  v61 = *(v60 - 8);
  __chkstk_darwin();
  v63 = &v169 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = v31;
  v226 = v17;
  v64 = type metadata accessor for _ConditionalContent();
  v223 = *(v64 - 8);
  v224 = v64;
  __chkstk_darwin();
  v221 = a3;
  v222 = &v169 - v65;
  v268 = v47;
  v269 = a3;
  v270 = v215;
  v271 = v216;
  v272 = v217;
  v273 = v233;
  v275 = v213;
  v274 = v231;
  v276 = v214;
  v217 = type metadata accessor for Header.TextVStack.TitleAttributionStack(0, &v268);
  v66 = v236 + *(v217 + 112);
  v67 = *v66;
  if (*(v66 + 8) != 1)
  {

    v68 = static os_log_type_t.fault.getter();
    v69 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v68, &_mh_execute_header, v69, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v70 = sub_1000D8F20(v67, 0);
    (*(v61 + 8))(v63, v60, v70);
    LOBYTE(v67) = v268;
  }

  v71 = v235;
  v72 = v232;
  if (v67 == 2 || (v67 & 1) == 0)
  {
    v215 = *(v232 + 16);
    v216 = v232 + 16;
    v215(v50, v236, v235);
    if ((*(v53 + 48))(v50, 1, v47) == 1)
    {
      v77 = *(v72 + 8);
      v77(v50, v71);
      v78 = v228;
      (*(v53 + 56))(v228, 1, 1, v47);
      v214 = *(v233 + 1);
      sub_100653A68(v78, v234);
      v233 = v77;
      v77(v78, v71);
    }

    else
    {
      v79 = v53;
      v214 = *(v53 + 32);
      v80 = v185;
      v214(v185, v50, v47);
      v81 = *(v233 + 1);
      v82 = v186;
      sub_100663950();
      v83 = *(v79 + 8);
      v83(v80, v47);
      v84 = v187;
      sub_100663950();
      v83(v82, v47);
      v85 = v228;
      v214(v228, v84, v47);
      (*(v79 + 56))(v85, 0, 1, v47);
      v214 = v81;
      sub_100653A68(v85, v234);
      v233 = *(v72 + 8);
      v233(v85, v235);
    }

    v86 = v218;
    v87 = v202;
    v88 = v219;
    (*(v218 + 16))(v202, v236 + *(v217 + 100), v219);
    v90 = v220;
    v89 = v221;
    v91 = (*(v220 + 48))(v87, 1, v221);
    v92 = v208;
    if (v91 == 1)
    {
      (*(v86 + 8))(v87, v88);
      (*(v206 + 56))(v92, 1, 1, v209);
    }

    else
    {
      (*(v90 + 32))(v203, v87, v89);
      v93 = v231;
      v94 = v190;
      (*(v231 + 2))(v89, v231);
      v95 = v193;
      (*(v191 + 32))(v193, v94, v192);
      v96 = sub_10010FC20(&qword_1011883A8, &qword_100EE3200);
      (*(*(v96 - 8) + 56))(v95, 0, 1, v96);
      *(v95 + *(type metadata accessor for BaselineSpacer.Configuration(0) + 20)) = 0x403C000000000000;
      v97 = *(v93 + 1);
      v98 = v188;
      sub_100663950();
      v99 = v205;
      sub_1007B4EC8(v95, v205, type metadata accessor for BaselineSpacer);
      v268 = v99;
      v100 = v189;
      (*(v90 + 16))(v189, v98, v89);
      v269 = v100;
      v277 = v195;
      v278 = v89;
      WitnessTable = sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer, &unk_100EC3A24);
      v252 = v97;
      v101 = v194;
      sub_1006769F4(&v268, 2uLL, &v277);
      v102 = *(v90 + 8);
      v102(v98, v89);
      sub_1007B4F64(v95, type metadata accessor for BaselineSpacer);
      v102(v203, v89);
      v102(v100, v89);
      sub_1007B4F64(v205, type metadata accessor for BaselineSpacer);
      v103 = v206;
      v104 = v209;
      (*(v206 + 32))(v92, v101, v209);
      (*(v103 + 56))(v92, 0, 1, v104);
    }

    swift_getWitnessTable();
    v105 = v229;
    sub_100653A68(v92, v229);
    v106 = v207;
    v107 = *(v207 + 8);
    v236 = (v207 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v108 = v230;
    v109 = v107;
    v107(v92, v230);
    v110 = v228;
    v111 = v235;
    v215(v228, v234, v235);
    v268 = v110;
    (*(v106 + 16))(v92, v105, v108);
    v269 = v92;
    v277 = v111;
    v278 = v108;
    v267 = v214;
    WitnessTable = swift_getWitnessTable();
    v266 = swift_getWitnessTable();
    v252 = swift_getWitnessTable();
    v112 = v210;
    sub_1006769F4(&v268, 2uLL, &v277);
    v109(v92, v108);
    v113 = v111;
    v114 = v233;
    v233(v110, v113);
    v115 = v226;
    v116 = swift_getWitnessTable();
    v117 = v225;
    v118 = swift_getWitnessTable();
    v119 = v222;
    sub_100653878(v112, v115, v117, v116, v118);
    (*(v212 + 8))(v112, v115);
    v109(v229, v230);
    v114(v234, v235);
    v120 = v119;
  }

  else
  {
    v73 = v176;
    (*(v232 + 16))(v176, v236, v235);
    if ((*(v53 + 48))(v73, 1, v47) == 1)
    {
      (*(v72 + 8))(v73, v71);
      v74 = v197;
      (*(v177 + 56))(v197, 1, 1, v199);
      v75 = *(v233 + 1);
      v76 = sub_100020674(&qword_1011993F0, &qword_1011993F8, &unk_100EE31F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
      v235 = v75;
      v262 = v75;
      v263 = v76;
      swift_getWitnessTable();
    }

    else
    {
      v121 = v170;
      (*(v53 + 32))(v170, v73, v47);
      v122 = *(v233 + 1);
      v123 = v172;
      View.layoutPriority(_:)();
      (*(v53 + 8))(v121, v47);
      v124 = sub_100020674(&qword_1011993F0, &qword_1011993F8, &unk_100EE31F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
      v235 = v122;
      v237 = v122;
      v238 = v124;
      v125 = v199;
      swift_getWitnessTable();
      v126 = v171;
      sub_100663950();
      v127 = v177;
      v128 = *(v177 + 8);
      v128(v123, v125);
      sub_100663950();
      v128(v126, v125);
      v74 = v197;
      (*(v127 + 32))(v197, v123, v125);
      (*(v127 + 56))(v74, 0, 1, v125);
    }

    v129 = v200;
    sub_100653A68(v74, v204);
    v130 = *(v196 + 8);
    v234 = (v196 + 8);
    v233 = v130;
    v130(v74, v211);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v232 = v277;
    v131 = v279;
    v132 = v282;
    v230 = v281;
    v261 = 1;
    v259 = v278;
    v257 = v280;
    v133 = v218;
    v134 = v178;
    v135 = v219;
    (*(v218 + 16))(v178, v236 + *(v217 + 100), v219);
    v136 = v220;
    v137 = v221;
    if ((*(v220 + 48))(v134, 1, v221) == 1)
    {
      (*(v133 + 8))(v134, v135);
      v138 = v181;
      (*(v179 + 56))(v181, 1, 1, v129);
      v139 = *(v231 + 1);
      v140 = sub_100020674(&qword_1011993F0, &qword_1011993F8, &unk_100EE31F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
      v236 = v139;
      v254 = v139;
      v255 = v140;
      swift_getWitnessTable();
    }

    else
    {
      v141 = v173;
      (*(v136 + 32))(v173, v134, v137);
      v229 = v132;
      v236 = *(v231 + 1);
      v142 = v236;
      v231 = v131;
      v143 = v175;
      View.layoutPriority(_:)();
      (*(v136 + 8))(v141, v137);
      v144 = sub_100020674(&qword_1011993F0, &qword_1011993F8, &unk_100EE31F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
      v239 = v142;
      v240 = v144;
      swift_getWitnessTable();
      v145 = v174;
      sub_100663950();
      v146 = v179;
      v147 = *(v179 + 8);
      v147(v143, v129);
      sub_100663950();
      v147(v145, v129);
      v132 = v229;
      v138 = v181;
      v148 = v143;
      v131 = v231;
      (*(v146 + 32))(v181, v148, v129);
      (*(v146 + 56))(v138, 0, 1, v129);
    }

    v149 = v198;
    sub_100653A68(v138, v198);
    v150 = v180;
    v151 = *(v180 + 8);
    v229 = v180 + 8;
    v231 = v151;
    v152 = v201;
    v151(v138, v201);
    v153 = v197;
    v154 = v211;
    (*(v196 + 16))(v197, v204, v211);
    v268 = 0;
    LOBYTE(v269) = v261;
    *(&v269 + 1) = *v260;
    HIDWORD(v269) = *&v260[3];
    v270 = v232;
    LOBYTE(v271) = v259;
    *(&v271 + 1) = *v258;
    HIDWORD(v271) = *&v258[3];
    v272 = v131;
    LOBYTE(v273) = v257;
    *(&v273 + 1) = *v256;
    HIDWORD(v273) = *&v256[3];
    v274 = v230;
    *&v275 = v132;
    WitnessTable = v153;
    v252 = &v268;
    (*(v150 + 16))(v138, v149, v152);
    v253 = v138;
    v155 = v154;
    v250[0] = v154;
    v250[1] = v182;
    v250[2] = v152;
    v156 = sub_100020674(&qword_1011993F0, &qword_1011993F8, &unk_100EE31F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    v245 = v235;
    v246 = v156;
    v244 = swift_getWitnessTable();
    v247 = swift_getWitnessTable();
    v248 = sub_1007B7AFC(&qword_101199338, &qword_101199330, &qword_100ED7DE0);
    v242 = v236;
    v243 = v156;
    v241 = swift_getWitnessTable();
    v249 = swift_getWitnessTable();
    v157 = v183;
    sub_1006769F4(&WitnessTable, 3uLL, v250);
    v158 = v231;
    v231(v138, v152);
    v159 = v155;
    v160 = v233;
    v233(v153, v159);
    v161 = v226;
    v162 = swift_getWitnessTable();
    v163 = v225;
    v164 = swift_getWitnessTable();
    v120 = v222;
    sub_100653970(v157, v161, v163, v162, v164);
    (*(v184 + 8))(v157, v163);
    v158(v198, v201);
    v160(v204, v211);
  }

  v165 = swift_getWitnessTable();
  v166 = swift_getWitnessTable();
  v264 = v165;
  v265 = v166;
  v167 = v224;
  swift_getWitnessTable();
  sub_100663950();
  return (*(v223 + 8))(v120, v167);
}

uint64_t sub_1007B0458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = type metadata accessor for BaselineSpacer(0);
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10010FC20(&qword_1011A3598, &qword_100EE3598);
  __chkstk_darwin();
  v7 = (&v35 - v6);
  v8 = type metadata accessor for DynamicTypeSize();
  v39 = *(v8 - 8);
  __chkstk_darwin();
  v38 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(type metadata accessor for EnvironmentValues() - 8);
  __chkstk_darwin();
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2;
  v15 = v2 + *(a1 + 104);
  v16 = *v15;
  if (*(v15 + 8) != 1)
  {
    v36 = v11;

    v17 = v8;
    v18 = a1;
    v19 = v5;
    v20 = static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    v37 = v7;
    v22 = v21;
    v23 = v20;
    v5 = v19;
    a1 = v18;
    v8 = v17;
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v7 = v37;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v24 = sub_1000D8F20(v16, 0);
    (*(v10 + 8))(v13, v36, v24);
    LOBYTE(v16) = v46;
  }

  if (v16 == 2 || (v16 & 1) == 0)
  {
    v27 = *(a1 + 100);
    v28 = type metadata accessor for Font.TextStyle();
    (*(*(v28 - 8) + 16))(v5, v14 + v27, v28);
    v29 = sub_10010FC20(&qword_1011883A8, &qword_100EE3200);
    (*(*(v29 - 8) + 56))(v5, 0, 1, v29);
    *&v5[*(type metadata accessor for BaselineSpacer.Configuration(0) + 20)] = 0x4046000000000000;
    sub_1007B4EC8(v5, v7, type metadata accessor for BaselineSpacer);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_1011A35A0, &qword_100EE35A0);
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer, &unk_100EC3A24);
    sub_1007B8130();
    _ConditionalContent<>.init(storage:)();
    return sub_1007B4F64(v5, type metadata accessor for BaselineSpacer);
  }

  else
  {
    v25 = v38;
    sub_10056CABC(v38);
    v26 = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v39 + 8))(v25, v8);
    if (v26)
    {
      sub_1007B82F8(&v46);
    }

    else
    {
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v44[71] = v53[6];
      *&v44[55] = v53[5];
      *&v44[103] = v54;
      *&v44[87] = v53[7];
      *&v44[23] = v53[3];
      *&v44[7] = v53[2];
      *&v44[39] = v53[4];
      *(&v43[4] + 9) = *&v44[64];
      *(&v43[5] + 9) = *&v44[80];
      *(&v43[6] + 9) = *&v44[96];
      *(v43 + 9) = *v44;
      *(&v43[1] + 9) = *&v44[16];
      *(&v43[2] + 9) = *&v44[32];
      v45 = 1;
      *&v43[0] = 0;
      BYTE8(v43[0]) = 1;
      *(&v43[3] + 9) = *&v44[48];
      *(&v43[7] + 1) = *(&v54 + 1);
      *&v43[8] = 0;
      sub_1007B82F0(v43);
      v52 = v43[6];
      v53[0] = v43[7];
      *(v53 + 9) = *(&v43[7] + 9);
      v48 = v43[2];
      v49 = v43[3];
      v50 = v43[4];
      v51 = v43[5];
      v46 = v43[0];
      v47 = v43[1];
    }

    v31 = v53[0];
    v7[6] = v52;
    v7[7] = v31;
    *(v7 + 121) = *(v53 + 9);
    v32 = v49;
    v7[2] = v48;
    v7[3] = v32;
    v33 = v51;
    v7[4] = v50;
    v7[5] = v33;
    v34 = v47;
    *v7 = v46;
    v7[1] = v34;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_1011A35A0, &qword_100EE35A0);
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer, &unk_100EC3A24);
    sub_1007B8130();
    return _ConditionalContent<>.init(storage:)();
  }
}

__n128 sub_1007B0A68@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v30 = a1;
  }

  else
  {

    v11 = static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v13 = sub_1000D8F20(a1, 0);
    (*(v8 + 8))(v10, v7, v13);
    LOBYTE(a1) = v30;
  }

  if (a1 == 2 || (a1 & 1) == 0)
  {
    LOBYTE(v31) = 0;
    v24 = 0;
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v16[16] = 1;
    v16[8] = v32;
    v16[0] = v34;
    v16[24] = 1;
    v17 = 0;
    v18 = 1;
    v19 = v31;
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = 1;
  }

  sub_10010FC20(&qword_101199330, &qword_100ED7DE0);
  sub_1007B7AFC(&qword_101199338, &qword_101199330, &qword_100ED7DE0);
  _ConditionalContent<>.init(storage:)();
  v14 = v28;
  *(a3 + 32) = v27;
  *(a3 + 48) = v14;
  *(a3 + 64) = v29;
  result = v26;
  *a3 = v25;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1007B0CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v3 = type metadata accessor for BaselineSpacer(255);
  v109 = a1;
  v4 = *(a1 + 32);
  sub_1001109D0(&qword_1011993F8, &unk_100EE31F0);
  v5 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for TupleView();
  v101 = *(v6 - 8);
  __chkstk_darwin();
  v100 = &v85 - v7;
  v96 = type metadata accessor for Font.TextStyle();
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v3;
  __chkstk_darwin();
  v97 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v98 = &v85 - v10;
  v102 = *(v5 - 8);
  __chkstk_darwin();
  v103 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v85 - v12;
  v93 = type metadata accessor for EnvironmentValues();
  v92 = *(v93 - 8);
  __chkstk_darwin();
  v91 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v6;
  v108 = v5;
  v14 = type metadata accessor for _ConditionalContent();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v106 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = &v85 - v17;
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v85 - v20;
  v22 = *(v4 - 8);
  __chkstk_darwin();
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for Optional();
  v112 = *(v113 - 8);
  __chkstk_darwin();
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin();
  v111 = &v85 - v28;
  v29 = v107;
  (*(v19 + 16))(v21, v27);
  if ((*(v22 + 48))(v21, 1, v4) == 1)
  {
    (*(v19 + 8))(v21, v18);
    (*(v15 + 56))(v26, 1, 1, v14);
    WitnessTable = swift_getWitnessTable();
    v31 = *(*(v109 + 72) + 8);
    v32 = sub_100020674(&qword_1011993F0, &qword_1011993F8, &unk_100EE31F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    v124[11] = v31;
    v124[12] = v32;
    v33 = swift_getWitnessTable();
    v124[9] = WitnessTable;
    v124[10] = v33;
    swift_getWitnessTable();
    v34 = v26;
  }

  else
  {
    v89 = v14;
    v90 = v26;
    (*(v22 + 32))(v24, v21, v4);
    v35 = v109;
    v36 = v29 + *(v109 + 100);
    v37 = *v36;
    v38 = *(v36 + 8) == 1;
    v39 = v4;
    v88 = v22;
    v87 = v15;
    if (!v38)
    {

      v40 = static os_log_type_t.fault.getter();
      v41 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v41, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v42 = v91;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v43 = sub_1000D8F20(v37, 0);
      (*(v92 + 8))(v42, v93, v43);
      LOBYTE(v37) = v124[0];
    }

    if (v37 == 2 || (v37 & 1) == 0)
    {
      v54 = *(v35 + 72);
      v55 = v94;
      (*(v54 + 16))(v4, v54);
      v56 = *(v95 + 32);
      v86 = v24;
      v57 = v98;
      v56(v98, v55, v96);
      v58 = sub_10010FC20(&qword_1011883A8, &qword_100EE3200);
      (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
      *(v57 + *(type metadata accessor for BaselineSpacer.Configuration(0) + 20)) = 0x4034000000000000;
      v59 = *(v54 + 8);
      v60 = v103;
      View.layoutPriority(_:)();
      v61 = sub_100020674(&qword_1011993F0, &qword_1011993F8, &unk_100EE31F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
      v109 = v59;
      v124[2] = v59;
      v124[3] = v61;
      v62 = v108;
      v63 = swift_getWitnessTable();
      v64 = v104;
      sub_100663950();
      v65 = v102;
      v107 = v39;
      v66 = *(v102 + 8);
      v66(v60, v62);
      v67 = v97;
      sub_1007B4EC8(v57, v97, type metadata accessor for BaselineSpacer);
      v124[0] = v67;
      (*(v65 + 16))(v60, v64, v62);
      v124[1] = v60;
      v123[0] = v99;
      v123[1] = v62;
      v121 = sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer, &unk_100EC3A24);
      v122 = v63;
      v68 = v100;
      sub_1006769F4(v124, 2uLL, v123);
      v66(v60, v62);
      sub_1007B4F64(v67, type metadata accessor for BaselineSpacer);
      v69 = v110;
      v70 = swift_getWitnessTable();
      v53 = v105;
      sub_100653878(v68, v69, v62, v70, v63);
      (*(v101 + 8))(v68, v69);
      v66(v64, v62);
      sub_1007B4F64(v57, type metadata accessor for BaselineSpacer);
      (*(v88 + 8))(v86, v107);
    }

    else
    {
      v44 = *(*(v35 + 72) + 8);
      v45 = v103;
      View.layoutPriority(_:)();
      v46 = sub_100020674(&qword_1011993F0, &qword_1011993F8, &unk_100EE31F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
      v109 = v44;
      v115 = v44;
      v116 = v46;
      v47 = v108;
      v48 = swift_getWitnessTable();
      v49 = v104;
      sub_100663950();
      v50 = *(v102 + 8);
      v50(v45, v47);
      sub_100663950();
      v51 = v110;
      v52 = swift_getWitnessTable();
      v53 = v105;
      sub_100653970(v45, v51, v47, v52, v48);
      v50(v45, v47);
      v50(v49, v47);
      (*(v88 + 8))(v24, v39);
    }

    v71 = swift_getWitnessTable();
    v72 = sub_100020674(&qword_1011993F0, &qword_1011993F8, &unk_100EE31F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    v31 = v109;
    v119 = v109;
    v120 = v72;
    v73 = swift_getWitnessTable();
    v117 = v71;
    v118 = v73;
    v74 = v89;
    swift_getWitnessTable();
    v75 = v106;
    sub_100663950();
    v76 = v87;
    (*(v87 + 8))(v53, v74);
    v34 = v90;
    (*(v76 + 32))(v90, v75, v74);
    (*(v76 + 56))(v34, 0, 1, v74);
  }

  v77 = v111;
  sub_100653A68(v34, v111);
  v78 = *(v112 + 8);
  v79 = v34;
  v80 = v113;
  v78(v79, v113);
  v81 = swift_getWitnessTable();
  v82 = sub_100020674(&qword_1011993F0, &qword_1011993F8, &unk_100EE31F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v124[7] = v31;
  v124[8] = v82;
  v83 = swift_getWitnessTable();
  v124[5] = v81;
  v124[6] = v83;
  v124[4] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100663950();
  return (v78)(v77, v80);
}

uint64_t sub_1007B1BF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v2 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v11 = a1[10];
  v10 = a1[11];
  v95 = a1;
  v129 = v2;
  v130 = v3;
  v131 = v5;
  v132 = v4;
  v133 = v6;
  v134 = v7;
  v135 = v8;
  v136 = v9;
  v137 = v11;
  v138 = v10;
  v120 = type metadata accessor for Header.TextVStack.DescriptionContainer.Spacing.Before(255, &v129);
  sub_1001109D0(&qword_1011993F8, &unk_100EE31F0);
  v124 = type metadata accessor for ModifiedContent();
  v108 = v2;
  v129 = v2;
  v130 = v3;
  v107 = v3;
  v98 = v5;
  v131 = v5;
  v132 = v4;
  v115 = v6;
  v133 = v6;
  v134 = v7;
  v114 = v7;
  v113 = v8;
  v135 = v8;
  v136 = v9;
  v112 = v9;
  v12 = v4;
  v97 = v11;
  v137 = v11;
  v138 = v10;
  v111 = v10;
  v13 = type metadata accessor for Header.TextVStack.DescriptionContainer.Spacing.After(255, &v129);
  v14 = v120;
  v15 = v124;
  swift_getTupleTypeMetadata3();
  v16 = type metadata accessor for TupleView();
  v117 = *(v16 - 8);
  __chkstk_darwin();
  v116 = v82 - v17;
  v103 = v13;
  v100 = *(v13 - 8);
  __chkstk_darwin();
  v102 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = v82 - v19;
  v94 = type metadata accessor for EnvironmentValues();
  v93 = *(v94 - 8);
  __chkstk_darwin();
  v92 = v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *(v15 - 8);
  __chkstk_darwin();
  v110 = v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = v82 - v22;
  __chkstk_darwin();
  v109 = v82 - v23;
  type metadata accessor for Font.TextStyle();
  __chkstk_darwin();
  v105 = v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = *(v14 - 8);
  __chkstk_darwin();
  v123 = v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = v82 - v26;
  v27 = v12;
  v28 = type metadata accessor for Optional();
  v29 = *(v28 - 8);
  __chkstk_darwin();
  v31 = v82 - v30;
  v32 = *(v12 - 8);
  __chkstk_darwin();
  v104 = v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v16;
  v34 = type metadata accessor for Optional();
  v35 = *(v34 - 8);
  __chkstk_darwin();
  v37 = v82 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin();
  v40 = v82 - v39;
  (*(v29 + 16))(v31, v121, v28, v38);
  if ((*(v32 + 48))(v31, 1, v27) == 1)
  {
    (*(v29 + 8))(v31, v28);
    (*(v117 + 56))(v37, 1, 1, v118);
    swift_getWitnessTable();
    sub_100653A68(v37, v40);
    v41 = *(v35 + 8);
    v41(v37, v34);
  }

  else
  {
    v88 = v37;
    v89 = v35;
    v90 = v40;
    v91 = v34;
    (*(v32 + 32))(v104, v31, v27);
    v42 = v97;
    v43 = v105;
    v83 = *(v97 + 16);
    v82[1] = v97 + 16;
    v83(v27, v97);
    *(&v80 + 1) = v42;
    *&v80 = v112;
    v44 = v123;
    v45 = v98;
    sub_1007B2A50(v43, v108, v107, v98, v27, v115, v114, v113, v123, v80, v111, type metadata accessor for Header.TextVStack.DescriptionContainer.Spacing.Before);
    v46 = v120;
    WitnessTable = swift_getWitnessTable();
    sub_100663950();
    v47 = *(v106 + 8);
    v86 = v106 + 8;
    v85 = v47;
    v47(v44, v46);
    v48 = &v121[*(v95 + 25)];
    v49 = *v48;
    v50 = v48[8] == 1;
    v87 = v32;
    if (!v50)
    {

      v51 = v42;
      v52 = static os_log_type_t.fault.getter();
      v53 = v45;
      v54 = static Log.runtimeIssuesLog.getter();
      v55 = v52;
      v42 = v51;
      os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, v54, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      v45 = v53;
      v56 = v92;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v57 = sub_1000D8F20(v49, 0);
      (*(v93 + 8))(v56, v94, v57);
    }

    v58 = *(v42 + 8);
    v59 = v96;
    View.layoutPriority(_:)();
    v60 = sub_100020674(&qword_1011993F0, &qword_1011993F8, &unk_100EE31F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    v128[3] = v58;
    v128[4] = v60;
    v82[0] = v27;
    v61 = v124;
    v98 = swift_getWitnessTable();
    sub_100663950();
    v62 = v99;
    v63 = *(v99 + 8);
    v120 = v99 + 8;
    v121 = v63;
    (v63)(v59, v61);
    v64 = v105;
    v83(v27, v42);
    *(&v81 + 1) = v42;
    *&v81 = v112;
    v65 = v102;
    sub_1007B2A50(v64, v108, v107, v45, v27, v115, v114, v113, v102, v81, v111, type metadata accessor for Header.TextVStack.DescriptionContainer.Spacing.After);
    v66 = v103;
    v114 = swift_getWitnessTable();
    v67 = v101;
    sub_100663950();
    v68 = v100;
    v115 = *(v100 + 8);
    v115(v65, v66);
    v69 = v123;
    (*(v106 + 16))(v123, v122, v46);
    v129 = v69;
    v70 = v110;
    v71 = v109;
    (*(v62 + 16))(v110, v109, v61);
    v130 = v70;
    (*(v68 + 16))(v65, v67, v66);
    v131 = v65;
    v128[0] = v46;
    v128[1] = v61;
    v128[2] = v66;
    v125 = WitnessTable;
    v126 = v98;
    v127 = v114;
    sub_1006769F4(&v129, 3uLL, v128);
    v72 = v115;
    v115(v67, v66);
    v73 = v71;
    v74 = v121;
    (v121)(v73, v61);
    v75 = v85;
    v85(v122, v46);
    (*(v87 + 8))(v104, v82[0]);
    v72(v65, v66);
    (v74)(v110, v61);
    v75(v123, v46);
    v76 = v117;
    v77 = v88;
    v78 = v118;
    (*(v117 + 32))(v88, v116, v118);
    (*(v76 + 56))(v77, 0, 1, v78);
    swift_getWitnessTable();
    v40 = v90;
    sub_100653A68(v77, v90);
    v41 = *(v89 + 8);
    v34 = v91;
    v41(v77, v91);
  }

  v128[5] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100663950();
  return (v41)(v40, v34);
}

uint64_t sub_1007B2A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t (*a12)(void, void *))
{
  v20 = type metadata accessor for Font.TextStyle();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = a8;
  v25 = a10;
  v26 = a11;
  v21 = a9 + *(a12(0, v24) + 100);
  result = swift_getKeyPath();
  *v21 = result;
  *(v21 + 8) = 0;
  return result;
}

uint64_t sub_1007B2B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  type metadata accessor for BaselineSpacer(0);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A35D0, &qword_100EE35B8);
  __chkstk_darwin();
  v8 = &v22 - v7;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v3 + *(a1 + 100);
  v14 = *v13;
  if (*(v13 + 8) != 1)
  {

    v15 = static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    v23 = v8;
    v17 = v16;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v8 = v23;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v18 = sub_1000D8F20(v14, 0);
    (*(v10 + 8))(v12, v9, v18);
    LOBYTE(v14) = v25;
  }

  if (v14 == 2 || (v14 & 1) == 0)
  {
    v20 = type metadata accessor for Font.TextStyle();
    (*(*(v20 - 8) + 16))(v6, v3, v20);
    v21 = sub_10010FC20(&qword_1011883A8, &qword_100EE3200);
    (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
    *&v6[*(type metadata accessor for BaselineSpacer.Configuration(0) + 20)] = 0x403E000000000000;
    sub_1007B4EC8(v6, v8, type metadata accessor for BaselineSpacer);
    swift_storeEnumTagMultiPayload();
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer, &unk_100EC3A24);
    _ConditionalContent<>.init(storage:)();
    return sub_1007B4F64(v6, type metadata accessor for BaselineSpacer);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer, &unk_100EC3A24);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1007B2F24(uint64_t a1)
{
  v25 = type metadata accessor for BaselineSpacer(0);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A35D8, &unk_100EE35C0);
  __chkstk_darwin();
  v6 = &v23 - v5;
  v7 = *(type metadata accessor for EnvironmentValues() - 8);
  __chkstk_darwin();
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1 + *(a1 + 100);
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {
    v24 = v8;

    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v15 = sub_1000D8F20(v12, 0);
    (*(v7 + 8))(v10, v24, v15);
    LOBYTE(v12) = v29;
  }

  if (v12 == 2 || (v12 & 1) == 0)
  {
    v21 = type metadata accessor for Font.TextStyle();
    (*(*(v21 - 8) + 16))(v4, v1, v21);
    v22 = sub_10010FC20(&qword_1011883A8, &qword_100EE3200);
    (*(*(v22 - 8) + 56))(v4, 0, 1, v22);
    *&v4[*(type metadata accessor for BaselineSpacer.Configuration(0) + 20)] = 0x4036000000000000;
    sub_1007B4EC8(v4, v6, type metadata accessor for BaselineSpacer);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101199330, &qword_100ED7DE0);
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer, &unk_100EC3A24);
    sub_1007B7AFC(&qword_101199338, &qword_101199330, &qword_100ED7DE0);
    _ConditionalContent<>.init(storage:)();
    return sub_1007B4F64(v4, type metadata accessor for BaselineSpacer);
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v16 = v29;
    v17 = v30;
    v18 = v31;
    v19 = v32;
    v28 = 1;
    v27 = v30;
    v26 = v32;
    *v6 = 0;
    v6[8] = 1;
    *(v6 + 2) = v16;
    v6[24] = v17;
    *(v6 + 4) = v18;
    v6[40] = v19;
    *(v6 + 3) = v33;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101199330, &qword_100ED7DE0);
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer, &unk_100EC3A24);
    sub_1007B7AFC(&qword_101199338, &qword_101199330, &qword_100ED7DE0);
    return _ConditionalContent<>.init(storage:)();
  }
}

double sub_1007B33E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v42 = a2;
  v32 = *(a1 + 48);
  v41 = *(v32 - 8);
  __chkstk_darwin();
  v40 = &KeyPath - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &KeyPath - v4;
  v7 = v5[3];
  v33 = v5[2];
  v6 = v33;
  v9 = v5[4];
  v36 = v5[5];
  v8 = v36;
  v11 = v5[8];
  v35 = v5[7];
  v10 = v35;
  v12 = v5[10];
  v34 = v5[9];
  v13 = v34;
  v14 = v5[11];
  KeyPath = swift_getKeyPath();
  v47 = KeyPath;
  LOBYTE(v48) = 0;
  v58 = v6;
  v59 = v7;
  v60 = v9;
  v61 = v8;
  v15 = v32;
  v62 = v32;
  v63 = v10;
  v64 = v11;
  v65 = v13;
  v66 = v12;
  v67 = v14;
  v16 = v14;
  v38 = type metadata accessor for Header.TextVStack.PlaybackControlContainer.Spacing.Before(0, &v58);
  WitnessTable = swift_getWitnessTable();
  sub_100663950();
  sub_1000D8F20(KeyPath, 0);
  v17 = v43;
  v18 = v37;
  sub_100663950();
  LOBYTE(v2) = *(v18 + *(v2 + 100));
  v19 = swift_getKeyPath();
  LOBYTE(v47) = v2;
  v48 = v19;
  LOBYTE(v49) = 0;
  v58 = v33;
  v59 = v7;
  v60 = v9;
  v61 = v36;
  v62 = v15;
  v63 = v35;
  v64 = v11;
  v65 = v34;
  v66 = v12;
  v67 = v14;
  v20 = type metadata accessor for Header.TextVStack.PlaybackControlContainer.Spacing.After(0, &v58);
  v21 = swift_getWitnessTable();
  sub_100663950();
  v22 = sub_1000D8F20(v19, 0);
  v23 = v68;
  LOBYTE(v2) = v69;
  v53 = v68;
  v54 = v69;
  v58 = &v53;
  v24 = v41;
  v25 = v40;
  (*(v41 + 16))(v40, v17, v15, v22);
  v26 = v56;
  LOBYTE(v17) = v57;
  v50 = v55;
  v51 = v56;
  v52 = v57;
  v59 = v25;
  v60 = &v50;
  sub_1005FF6B8(v23, v2);
  sub_1005FF6B8(v26, v17);
  v47 = v38;
  v48 = v15;
  v49 = v20;
  v44 = WitnessTable;
  v45 = v16;
  v46 = v21;
  sub_1006769F4(&v58, 3uLL, &v47);
  v27 = sub_1000D8F20(v26, v17);
  v28 = *(v24 + 8);
  v28(v43, v15, v27);
  sub_1000D8F20(v23, v2);
  v29 = sub_1000D8F20(v51, v52);
  v28(v25, v15, v29);
  return sub_1000D8F20(v53, v54);
}

uint64_t sub_1007B37C8(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Font.TextStyle();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin();
  v26 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BaselineSpacer(0);
  __chkstk_darwin();
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011A35D0, &qword_100EE35B8);
  __chkstk_darwin();
  v10 = v25 - v9;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin();
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v16 = static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v25[1] = v8;
    v18 = v17;
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v19 = sub_1000D8F20(a1, 0);
    (*(v12 + 8))(v15, v11, v19);
    LOBYTE(a1) = v29;
  }

  if (a1 == 2 || (a1 & 1) == 0)
  {
    v22 = v26;
    v21 = v27;
    v23 = v28;
    (*(v27 + 104))(v26, enum case for Font.TextStyle.body(_:), v28, v13);
    (*(v21 + 32))(v7, v22, v23);
    v24 = sub_10010FC20(&qword_1011883A8, &qword_100EE3200);
    (*(*(v24 - 8) + 56))(v7, 0, 1, v24);
    *&v7[*(type metadata accessor for BaselineSpacer.Configuration(0) + 20)] = 0x4032000000000000;
    sub_1007B4EC8(v7, v10, type metadata accessor for BaselineSpacer);
    swift_storeEnumTagMultiPayload();
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer, &unk_100EC3A24);
    _ConditionalContent<>.init(storage:)();
    return sub_1007B4F64(v7, type metadata accessor for BaselineSpacer);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer, &unk_100EC3A24);
    return _ConditionalContent<>.init(storage:)();
  }
}

__n128 sub_1007B3C88@<Q0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v42 = a2;
  }

  else
  {

    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v15 = sub_1000D8F20(a2, 0);
    (*(v10 + 8))(v12, v9, v15);
    LOBYTE(a2) = v42;
  }

  if (a2 == 2 || (a2 & 1) == 0)
  {
    if (a1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0uLL;
      v22 = 1;
    }

    else
    {
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v22 = 0;
      v16 = v43;
      v17 = v45;
      v21 = v47;
      LOBYTE(v26) = 1;
      v36 = v44;
      v35 = v46;
      v20 = 1;
      v19 = v44;
      v18 = v46;
      LOBYTE(v37) = 0;
    }

    v36 = 0;
    v26 = 0;
    v27 = v20;
    v28 = v16;
    v29 = v19;
    v30 = v17;
    v31 = v18;
    v32 = v21;
    v33 = v22;
    v34 = 0;
  }

  else
  {
    LOBYTE(v43) = 1;
    v34 = 1;
  }

  sub_10010FC20(&qword_10119D130, &qword_100EDBD50);
  sub_10068E44C();
  _ConditionalContent<>.init(storage:)();
  v23 = v40;
  *(a4 + 32) = v39;
  *(a4 + 48) = v23;
  *(a4 + 64) = v41;
  result = v38;
  *a4 = v37;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_1007B3F7C@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v48 = a1;
  v4 = type metadata accessor for MotionMode();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v39 - v7;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v12 = &v39 - v11;
  v47 = sub_10010FC20(&qword_1011A2EC0, &qword_100EE2FD8);
  __chkstk_darwin();
  v14 = &v39 - v13;
  sub_1000089F8(v2, v12, &unk_10118A5E0, &unk_100EBCD90);
  v15 = type metadata accessor for ArtworkImage.Info(0);
  sub_1007B4EC8(v2 + *(v15 + 20), v10, type metadata accessor for ArtworkImage.Placeholder);
  sub_1007B4420(v49);
  v16 = v2 + *(v15 + 32);
  v17 = *v16;
  v45 = *(v16 + 8);
  v46 = v17;
  v44 = *(v16 + 16);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v12, v10, 0, 1, v49, v17, v45, v44, v14);
  v18 = type metadata accessor for Header.AdaptativeArtwork(0);
  v19 = *(v18 + 20);
  v20 = _s7ArtworkVMa(0);
  sub_1000089F8(v3 + v19, &v14[v20[5]], &unk_101192950, &unk_100EBDF40);
  v21 = (v3 + *(v18 + 28));
  v22 = *v21;
  v23 = v21[1];
  v41 = v20[7];
  v42 = v22;
  v40 = v5;
  (*(v5 + 104))(v8, enum case for MotionMode.on(_:), v4);
  (*(v5 + 16))(v43, v8, v4);
  sub_1007B62D0();

  static NSUserDefaults.MCUI.getter();
  static MCUINamespace<A>.motionModeKey.getter();
  sub_1007B46CC(&qword_1011A2EC8, &type metadata accessor for MotionMode, &protocol conformance descriptor for MotionMode);
  v24 = AppStorage.init<A>(wrappedValue:_:store:)();
  (*(v40 + 8))(v8, v4);
  v25 = v42;
  *&v14[v41] = v24;
  v26 = &v14[v20[6]];
  *v26 = v25;
  *(v26 + 1) = v23;
  sub_1007B4420(&v50);
  sub_1007B4420(v51);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v27 = v47;
  v28 = &v14[*(v47 + 36)];
  v29 = v51[4];
  *v28 = v51[3];
  *(v28 + 1) = v29;
  *(v28 + 2) = v51[5];
  v30 = Radiosity.Specs.containerDetailHeaderArtwork.unsafeMutableAddressor();
  v31 = v30[3];
  v33 = *v30;
  v32 = v30[1];
  v53[2] = v30[2];
  v53[3] = v31;
  v53[0] = v33;
  v53[1] = v32;
  v34 = v30[7];
  v36 = v30[4];
  v35 = v30[5];
  v53[6] = v30[6];
  v53[7] = v34;
  v53[4] = v36;
  v53[5] = v35;
  sub_10056F298(v53, v52);
  Radiosity.Specs.pathShadow(for:)(v46, v45, v44, v52);
  sub_10056F2F4(v53);
  v37 = sub_1007B631C();
  View.radiosity(specs:)(v52, v27, v37);
  sub_10056F2F4(v52);
  return sub_1000095E8(v14, &qword_1011A2EC0, &qword_100EE2FD8);
}

void *sub_1007B4420@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Header.AdaptativeArtwork(0);
  v9 = v2 + *(v8 + 32);
  v10 = *v9;
  if (*(v9 + 8) != 1)
  {

    v11 = static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v13 = sub_1000D8F20(v10, 0);
    (*(v5 + 8))(v7, v4, v13);
    LOBYTE(v10) = v24;
  }

  if (v10 == 2 || (v10 & 1) != 0)
  {
    v14 = 300.0;
    v15 = 300.0;
  }

  else
  {
    v23 = *(v2 + *(v8 + 24));
    if (v23)
    {
      swift_getKeyPath();
      v24 = v23;
      sub_1007B46CC(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v14 = *(v23 + 16) + -136.0;
      v15 = v14;
    }

    else
    {
      v14 = 305.0;
      v15 = 305.0;
    }
  }

  result = ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(*&v14, 0, *&v15, 0, 0, 1, 2, &v24);
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v20 = v28;
  v21 = v29;
  v22 = v30;
  *a1 = v24;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18;
  *(a1 + 24) = v19;
  *(a1 + 32) = v20;
  *(a1 + 40) = v21;
  *(a1 + 41) = v22;
  return result;
}

uint64_t sub_1007B46CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1007B472C()
{
  v1 = type metadata accessor for Header(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  sub_10010FC20(&unk_10118F250, &qword_100EC45B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1000D8F20(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

uint64_t sub_1007B4890(char a1, uint64_t (*a2)(void, uint64_t))
{
  v4 = *(type metadata accessor for Header(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1 & 1, v5);
}

double sub_1007B4924@<D0>(uint64_t *a1@<X0>, void (**a2)(uint64_t *a1@<X8>)@<X8>)
{
  v5 = *(type metadata accessor for Header(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1007A9C38(a1, v6, a2);
}

void sub_1007B49A4(uint64_t *a1@<X8>)
{
  type metadata accessor for Header(0);
  v3 = *(v1 + 16);

  sub_1007A9D6C(v3, a1);
}

uint64_t sub_1007B4A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007B4AB0(uint64_t a1, char a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002F3F4;

  return sub_100728D1C(a1, a2, v6);
}

unint64_t sub_1007B4BD4()
{
  result = qword_1011A2CA0;
  if (!qword_1011A2CA0)
  {
    sub_1001109D0(&qword_1011A2C98, &unk_100EE2D80);
    sub_1007B4C90();
    sub_1007B46CC(qword_1011A2CC0, type metadata accessor for Header.AdaptativeArtwork, &unk_100EE2F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2CA0);
  }

  return result;
}

unint64_t sub_1007B4C90()
{
  result = qword_1011A2CA8;
  if (!qword_1011A2CA8)
  {
    sub_1001109D0(&qword_1011A2C88, &qword_100EE2D70);
    sub_1007B4D4C();
    sub_1007B46CC(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2CA8);
  }

  return result;
}

unint64_t sub_1007B4D4C()
{
  result = qword_1011A2CB0;
  if (!qword_1011A2CB0)
  {
    sub_1001109D0(&qword_1011A2C80, &qword_100EE2D68);
    sub_1001109D0(&qword_1011A2C70, &qword_100EE2D58);
    type metadata accessor for PlainButtonStyle();
    sub_100020674(&qword_1011A2CB8, &qword_1011A2C70, &qword_100EE2D58, &protocol conformance descriptor for Button<A>);
    sub_1007B46CC(&qword_10119A260, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1007B46CC(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2CB0);
  }

  return result;
}

uint64_t sub_1007B4EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007B4F64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1007B5030(void *a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Optional();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            sub_1007B5E88(319, &qword_1011891F0, &unk_1011891F8, qword_100EDB130, &type metadata accessor for Environment);
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

uint64_t sub_1007B516C(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v4 = a3[3];
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = a3[5];
  v53 = a3[4];
  v12 = *(v53 - 8);
  if (v7 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v7;
  }

  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v13 <= v15)
  {
    v13 = v15;
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v13 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v13;
  }

  v52 = a3[6];
  v20 = *(v52 - 8);
  v21 = *(v20 + 84);
  v22 = *(v12 + 64);
  v23 = *(v5 + 80);
  v54 = *(v4 - 8);
  v55 = *(v8 + 80);
  v24 = *(v12 + 80);
  v25 = *(v16 + 80);
  v26 = *(*(v11 - 8) + 64);
  v27 = *(v20 + 80);
  if (v19 <= v21)
  {
    v28 = *(v20 + 84);
  }

  else
  {
    v28 = v19;
  }

  if (v28 <= 0xFE)
  {
    v29 = 254;
  }

  else
  {
    v29 = v28;
  }

  if (v6)
  {
    v30 = *(*(a3[2] - 8) + 64);
  }

  else
  {
    v30 = *(*(a3[2] - 8) + 64) + 1;
  }

  if (v9)
  {
    v31 = *(*(v4 - 8) + 64);
  }

  else
  {
    v31 = *(*(v4 - 8) + 64) + 1;
  }

  if (!v14)
  {
    ++v22;
  }

  if (v17)
  {
    v32 = v26;
  }

  else
  {
    v32 = v26 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v33 = v31 + v24;
  v51 = v22 + v25;
  v34 = v32 + v27;
  if (v29 < a2)
  {
    v35 = ((*(*(v52 - 8) + 64) + ((v34 + ((v51 + ((v33 + ((v30 + v55 + ((v23 + 9) & ~v23)) & ~v55)) & ~v24)) & ~v25)) & ~v27) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v35 <= 3)
    {
      v36 = ((a2 - v29 + 255) >> 8) + 1;
    }

    else
    {
      v36 = 2;
    }

    if (v36 >= 0x10000)
    {
      v37 = 4;
    }

    else
    {
      v37 = 2;
    }

    if (v36 < 0x100)
    {
      v37 = 1;
    }

    if (v36 >= 2)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v39 = *&a1[v35];
        if (*&a1[v35])
        {
          goto LABEL_54;
        }
      }

      else
      {
        v39 = *&a1[v35];
        if (v39)
        {
          goto LABEL_54;
        }
      }
    }

    else if (v38)
    {
      v39 = a1[v35];
      if (a1[v35])
      {
LABEL_54:
        v40 = (v39 - 1) << (8 * v35);
        if (v35 <= 3)
        {
          v41 = *a1;
        }

        else
        {
          v40 = 0;
          v41 = *a1;
        }

        v43 = v29 + (v41 | v40);
        return (v43 + 1);
      }
    }
  }

  if (v28 <= 0xFE)
  {
    v42 = a1[8];
    if (v42 >= 2)
    {
      v43 = (v42 + 2147483646) & 0x7FFFFFFF;
      return (v43 + 1);
    }

    return 0;
  }

  if (v7 == v29)
  {
    if (v6 >= 2)
    {
      v44 = (*(v5 + 48))(&a1[v23 + 9] & ~v23);
      goto LABEL_82;
    }

    return 0;
  }

  v45 = ((&a1[v23 + 9] & ~v23) + v30 + v55) & ~v55;
  if (v10 == v29)
  {
    if (v9 < 2)
    {
      return 0;
    }

    v44 = (*(v54 + 48))(v45, v9, a3[3]);
LABEL_82:
    if (v44 >= 2)
    {
      return v44 - 1;
    }

    else
    {
      return 0;
    }
  }

  v47 = (v33 + v45) & ~v24;
  if (v15 == v29)
  {
    if (v14 < 2)
    {
      return 0;
    }

    v44 = (*(*(v53 - 8) + 48))(v47, v14, v53);
    goto LABEL_82;
  }

  v48 = (v51 + v47) & ~v25;
  if (v18 == v29)
  {
    if (v17 < 2)
    {
      return 0;
    }

    v44 = (*(v16 + 48))(v48, v17, a3[5]);
    goto LABEL_82;
  }

  v49 = *(v20 + 48);
  v50 = (v34 + v48) & ~*(v20 + 80);

  return v49(v50, v21, v52);
}

void sub_1007B562C(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = 0;
  v5 = a4[3];
  v50 = a4[2];
  v6 = *(v50 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v49 = a4[3];
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v51 = v11;
  v52 = v8;
  if (v8 > v11)
  {
    v11 = v8;
  }

  v47 = a4[4];
  v12 = *(v47 - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v44 = a4[5];
  v15 = *(v44 - 8);
  if (v11 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v11;
  }

  v17 = *(v15 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v16 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v16;
  }

  v45 = a4[6];
  v20 = *(v45 - 8);
  v21 = *(*(v5 - 8) + 64);
  v22 = *(v6 + 80);
  v48 = *(v5 - 8);
  v23 = *(v9 + 80);
  v46 = *(v47 - 8);
  v24 = *(v12 + 80);
  v25 = *(v15 + 80);
  v26 = *(v15 + 64);
  v27 = *(v20 + 80);
  if (v19 <= *(v20 + 84))
  {
    v28 = *(v20 + 84);
  }

  else
  {
    v28 = v19;
  }

  if (v28 <= 0xFE)
  {
    v29 = 254;
  }

  else
  {
    v29 = v28;
  }

  if (v7)
  {
    v30 = *(*(v50 - 8) + 64);
  }

  else
  {
    v30 = *(*(v50 - 8) + 64) + 1;
  }

  if (!v10)
  {
    ++v21;
  }

  if (v13)
  {
    v31 = *(*(v47 - 8) + 64);
  }

  else
  {
    v31 = *(*(v47 - 8) + 64) + 1;
  }

  if (!v17)
  {
    ++v26;
  }

  v32 = v26 + v27;
  v33 = ((*(*(v45 - 8) + 64) + ((v26 + v27 + ((v31 + v25 + ((v21 + v24 + ((v30 + v23 + ((v22 + 9) & ~v22)) & ~v23)) & ~v24)) & ~v25)) & ~v27) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v29 < a3)
  {
    if (v33 <= 3)
    {
      v34 = ((a3 - v29 + 255) >> 8) + 1;
    }

    else
    {
      v34 = 2;
    }

    if (v34 >= 0x10000)
    {
      v35 = 4;
    }

    else
    {
      v35 = 2;
    }

    if (v34 < 0x100)
    {
      v35 = 1;
    }

    if (v34 >= 2)
    {
      v4 = v35;
    }

    else
    {
      v4 = 0;
    }
  }

  if (v29 >= a2)
  {
    if (v4 > 1)
    {
      if (v4 != 2)
      {
        *&a1[v33] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_66;
      }

      *&a1[v33] = 0;
    }

    else if (v4)
    {
      a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_66;
    }

    if (!a2)
    {
      return;
    }

LABEL_66:
    if (v28 <= 0xFE)
    {
      a1[8] = a2 + 1;
      return;
    }

    v38 = &a1[v22 + 9] & ~v22;
    if (v52 == v29)
    {
      if (v7 < 2)
      {
        return;
      }

      v39 = v50;
      v40 = *(v6 + 56);
      v41 = a2 + 1;
      v10 = v7;
    }

    else
    {
      v38 = (v38 + v30 + v23) & ~v23;
      if (v51 == v29)
      {
        if (v10 < 2)
        {
          return;
        }

        v39 = v49;
        v40 = *(v48 + 56);
        v41 = a2 + 1;
      }

      else
      {
        v38 = (v21 + v24 + v38) & ~v24;
        if (v14 == v29)
        {
          if (v13 < 2)
          {
            return;
          }

          v39 = v47;
          v40 = *(v46 + 56);
          v41 = a2 + 1;
          v10 = v13;
        }

        else
        {
          v38 = (v31 + v25 + v38) & ~v25;
          if (v18 != v29)
          {
            v42 = *(v20 + 56);
            v43 = (v32 + v38) & ~v27;

            v42(v43);
            return;
          }

          if (v17 < 2)
          {
            return;
          }

          v40 = *(v15 + 56);
          v41 = a2 + 1;
          v10 = v17;
          v39 = v44;
        }
      }
    }

    v40(v38, v41, v10, v39);
    return;
  }

  v36 = ~v29 + a2;
  bzero(a1, v33);
  if (v33 <= 3)
  {
    v37 = (v36 >> 8) + 1;
  }

  else
  {
    v37 = 1;
  }

  if (v33 <= 3)
  {
    *a1 = v36;
    if (v4 > 1)
    {
LABEL_54:
      if (v4 == 2)
      {
        *&a1[v33] = v37;
      }

      else
      {
        *&a1[v33] = v37;
      }

      return;
    }
  }

  else
  {
    *a1 = v36;
    if (v4 > 1)
    {
      goto LABEL_54;
    }
  }

  if (v4)
  {
    a1[v33] = v37;
  }
}

void sub_1007B5B78(uint64_t a1)
{
  type metadata accessor for ArtworkImage.Info(319);
  if (v1 <= 0x3F)
  {
    sub_1007B7D14(319, &qword_101182200, &type metadata accessor for VideoArtwork, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1007B7D14(319, &unk_1011A2DB0, _s7MetricsCMa, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1007B5E88(319, &qword_1011891F0, &unk_1011891F8, qword_100EDB130, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1007B5CC8(uint64_t a1)
{
  sub_1007B5E34(319, &qword_101194178, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10001F7E8();
    if (v2 <= 0x3F)
    {
      sub_1007B7D14(319, &qword_1011878B0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1007B5E88(319, &qword_10118E378, &qword_10118E380, qword_100ECA620, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1007B5E34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
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

void sub_1007B5E88(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001109D0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1007B5EEC()
{
  result = qword_1011A2E70;
  if (!qword_1011A2E70)
  {
    sub_1001109D0(&qword_1011A2C38, &unk_100EE2A80);
    sub_1007B5FA4();
    sub_100020674(&qword_10119E820, &qword_10118F360, &qword_100ECBB40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2E70);
  }

  return result;
}

unint64_t sub_1007B5FA4()
{
  result = qword_1011A2E78;
  if (!qword_1011A2E78)
  {
    sub_1001109D0(&qword_1011A2C28, &qword_100EE2948);
    sub_1007B605C();
    sub_100020674(&qword_1011A2EB0, &qword_1011A2EB8, &qword_100EE2E90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2E78);
  }

  return result;
}

unint64_t sub_1007B605C()
{
  result = qword_1011A2E80;
  if (!qword_1011A2E80)
  {
    sub_1001109D0(&qword_1011A2C20, &qword_100EE2940);
    sub_1007B6114();
    sub_100020674(&qword_1011A2EA0, &qword_1011A2EA8, &qword_100EE2E88, &protocol conformance descriptor for _OverlayPreferenceModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2E80);
  }

  return result;
}

unint64_t sub_1007B6114()
{
  result = qword_1011A2E88;
  if (!qword_1011A2E88)
  {
    sub_1001109D0(&qword_1011A2C18, &qword_100EE2938);
    sub_1007B61A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2E88);
  }

  return result;
}

unint64_t sub_1007B61A0()
{
  result = qword_1011A2E90;
  if (!qword_1011A2E90)
  {
    sub_1001109D0(&qword_1011A2C10, &qword_100EE2930);
    sub_100020674(&qword_1011A2E98, &qword_1011A2C30, &qword_100EE29A8, &unk_100EE2E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2E90);
  }

  return result;
}

unint64_t sub_1007B62D0()
{
  result = qword_10118CE58;
  if (!qword_10118CE58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10118CE58);
  }

  return result;
}

unint64_t sub_1007B631C()
{
  result = qword_1011A2ED0;
  if (!qword_1011A2ED0)
  {
    sub_1001109D0(&qword_1011A2EC0, &qword_100EE2FD8);
    sub_1007B46CC(&qword_1011A2ED8, _s7ArtworkVMa, &unk_100ECD030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2ED0);
  }

  return result;
}

unint64_t sub_1007B64B0()
{
  result = qword_1011A2EE8;
  if (!qword_1011A2EE8)
  {
    sub_1001109D0(&qword_1011A2EE0, &qword_100EE2FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2EE8);
  }

  return result;
}

uint64_t sub_1007B652C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for Header.Content(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1007AA2A0(a1 & 1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_1007B65E8@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v11[0] = v1[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v7 = *(type metadata accessor for Header.Content(0, v11) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));
  v9 = *(v8 + *(v7 + 64));

  return sub_1007AAA00(v8, v9, v3, v4, v5, v6, a1);
}

void sub_1007B66B4(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    sub_1007B5E88(319, &qword_1011891F0, &unk_1011891F8, qword_100EDB130, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1007B6768(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 40) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 40) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (*&a1[v9])
      {
        goto LABEL_29;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (v14)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    if (v6 < 0xFE)
    {
      v19 = *((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v19 > 1)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_33;
  }

LABEL_29:
  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void sub_1007B68E8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 40) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(*(a4 + 40) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v13 = (a3 - v10 + 255) >> 8;
    if (v12 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v12] = 0;
    }

    else if (v6)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 < 0xFE)
      {
        v21 = &a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v21 + 8) = 0;
          *v21 = a2 - 255;
        }

        else
        {
          *(v21 + 8) = -a2;
        }
      }

      else if (v9 >= a2)
      {
        v22 = *(v7 + 56);

        v22();
      }

      else
      {
        if (v11 <= 3)
        {
          v18 = ~(-1 << (8 * v11));
        }

        else
        {
          v18 = -1;
        }

        if (v11)
        {
          v19 = v18 & (~v9 + a2);
          if (v11 <= 3)
          {
            v20 = v11;
          }

          else
          {
            v20 = 4;
          }

          bzero(a1, v11);
          if (v20 > 2)
          {
            if (v20 == 3)
            {
              *a1 = v19;
              a1[2] = BYTE2(v19);
            }

            else
            {
              *a1 = v19;
            }
          }

          else if (v20 == 1)
          {
            *a1 = v19;
          }

          else
          {
            *a1 = v19;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v16 = ~v10 + a2;
  bzero(a1, v12);
  if (v12 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v12 <= 3)
  {
    *a1 = v16;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v12] = v17;
      }

      else
      {
        *&a1[v12] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v12] = v17;
  }
}

void sub_1007B6B60(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1007B5E88(319, &qword_1011891F0, &unk_1011891F8, qword_100EDB130, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1007B6C1C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 48) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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
    goto LABEL_27;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = a1[v6];
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v7 + (v15 | v14) + 1;
}

void sub_1007B6D64(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 48) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 48) - 8) + 64);
  v10 = (v9 & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        a1[v9] = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, (v9 & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_1007B6F28(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    sub_1007B5E88(319, &qword_1011891F0, &unk_1011891F8, qword_100EDB130, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1007B6FDC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 32) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (*&a1[v9])
      {
        goto LABEL_29;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (v14)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    if (v6 < 0xFE)
    {
      v19 = *((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v19 > 1)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_33;
  }

LABEL_29:
  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void sub_1007B715C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 32) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(*(a4 + 32) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v13 = (a3 - v10 + 255) >> 8;
    if (v12 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v12] = 0;
    }

    else if (v6)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 < 0xFE)
      {
        v21 = &a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v21 + 8) = 0;
          *v21 = a2 - 255;
        }

        else
        {
          *(v21 + 8) = -a2;
        }
      }

      else if (v9 >= a2)
      {
        v22 = *(v7 + 56);

        v22();
      }

      else
      {
        if (v11 <= 3)
        {
          v18 = ~(-1 << (8 * v11));
        }

        else
        {
          v18 = -1;
        }

        if (v11)
        {
          v19 = v18 & (~v9 + a2);
          if (v11 <= 3)
          {
            v20 = v11;
          }

          else
          {
            v20 = 4;
          }

          bzero(a1, v11);
          if (v20 > 2)
          {
            if (v20 == 3)
            {
              *a1 = v19;
              a1[2] = BYTE2(v19);
            }

            else
            {
              *a1 = v19;
            }
          }

          else if (v20 == 1)
          {
            *a1 = v19;
          }

          else
          {
            *a1 = v19;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v16 = ~v10 + a2;
  bzero(a1, v12);
  if (v12 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v12 <= 3)
  {
    *a1 = v16;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v12] = v17;
      }

      else
      {
        *&a1[v12] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v12] = v17;
  }
}

void sub_1007B73DC(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      sub_1007B5E88(319, &qword_1011891F0, &unk_1011891F8, qword_100EDB130, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1007B74C4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (v5)
  {
    v12 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v12 = *(*(*(a3 + 16) - 8) + 64) + 1;
  }

  v13 = *(v8 + 80);
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 + v13;
  if (v11 < a2)
  {
    v16 = (((((v15 & ~v13) + v14) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
    v17 = (a2 - v11 + 255) >> 8;
    if (v16 <= 3)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *&a1[v16];
        if (*&a1[v16])
        {
          goto LABEL_33;
        }
      }

      else
      {
        v21 = *&a1[v16];
        if (v21)
        {
          goto LABEL_33;
        }
      }
    }

    else if (v20)
    {
      v21 = a1[v16];
      if (a1[v16])
      {
LABEL_33:
        v22 = (v21 - 1) << (8 * v16);
        if (v16 <= 3)
        {
          v23 = *a1;
        }

        else
        {
          v22 = 0;
          v23 = *a1;
        }

        v28 = v11 + (v23 | v22);
        return (v28 + 1);
      }
    }
  }

  if (v6 == v11)
  {
    if (v5 >= 2)
    {
      v24 = (*(v4 + 48))(a1);
      goto LABEL_46;
    }

    return 0;
  }

  v25 = &a1[v15] & ~v13;
  if (v10 != v11)
  {
    v27 = *(v25 + v14);
    if (v27 >= 2)
    {
      v28 = (v27 + 2147483646) & 0x7FFFFFFF;
      return (v28 + 1);
    }

    return 0;
  }

  if (v9 < 2)
  {
    return 0;
  }

  v24 = (*(v8 + 48))(v25, v9, v7);
LABEL_46:
  if (v24 >= 2)
  {
    return v24 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1007B7700(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  if (v8)
  {
    v11 = v8 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v9 - 8);
  v13 = *(v10 + 84);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  v16 = v13 - 1;
  if (!v13)
  {
    v16 = 0;
  }

  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= 0xFE)
  {
    v17 = 254;
  }

  if (v8)
  {
    v18 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v18 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v19 = v18 + v14;
  if (!v13)
  {
    ++v15;
  }

  v20 = (((((v19 & ~v14) + v15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 < a3)
  {
    v21 = (a3 - v17 + 255) >> 8;
    if (v20 <= 3)
    {
      v22 = v21 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v6 = v23;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v17 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v20] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_46;
      }

      *&a1[v20] = 0;
    }

    else if (v6)
    {
      a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    if (!a2)
    {
      return;
    }

LABEL_46:
    if (v11 == v17)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26(a1, v27);
    }

    else
    {
      v28 = &a1[v19] & ~v14;
      if (v16 == v17)
      {
        v29 = *(v12 + 56);
        v30 = a2 + 1;

        v29(v28, v30, v13, v9);
      }

      else
      {
        *(v28 + v15) = a2 + 1;
      }
    }

    return;
  }

  v24 = ~v17 + a2;
  bzero(a1, (((((v19 & ~v14) + v15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v20 <= 3)
  {
    v25 = (v24 >> 8) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v20 <= 3)
  {
    *a1 = v24;
    if (v6 > 1)
    {
LABEL_34:
      if (v6 == 2)
      {
        *&a1[v20] = v25;
      }

      else
      {
        *&a1[v20] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v6 > 1)
    {
      goto LABEL_34;
    }
  }

  if (v6)
  {
    a1[v20] = v25;
  }
}

unint64_t sub_1007B79A0()
{
  result = qword_1011A3100;
  if (!qword_1011A3100)
  {
    sub_1001109D0(&qword_1011A3108, &qword_100EE30A8);
    sub_1007B631C();
    sub_10056F6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3100);
  }

  return result;
}

uint64_t sub_1007B7AFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1007B7BE4(uint64_t a1)
{
  type metadata accessor for Font.TextStyle();
  if (v1 <= 0x3F)
  {
    sub_1007B5E88(319, &qword_1011891F0, &unk_1011891F8, qword_100EDB130, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1007B7D14(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1007B7D14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1007B7DB8(uint64_t a1)
{
  type metadata accessor for Font.TextStyle();
  if (v1 <= 0x3F)
  {
    sub_1007B5E88(319, &qword_1011891F0, &unk_1011891F8, qword_100EDB130, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1007B7E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 100) + 8);
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

uint64_t sub_1007B7F4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Font.TextStyle();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 100) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1007B8008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1007B8130()
{
  result = qword_1011A35A8;
  if (!qword_1011A35A8)
  {
    sub_1001109D0(&qword_1011A35A0, &qword_100EE35A0);
    sub_1007B81B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A35A8);
  }

  return result;
}

unint64_t sub_1007B81B4()
{
  result = qword_1011A35B0;
  if (!qword_1011A35B0)
  {
    sub_1001109D0(&qword_1011A35B8, &qword_100EE35A8);
    sub_1007B826C();
    sub_100020674(&qword_1011993F0, &qword_1011993F8, &unk_100EE31F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A35B0);
  }

  return result;
}

unint64_t sub_1007B826C()
{
  result = qword_1011A35C0;
  if (!qword_1011A35C0)
  {
    sub_1001109D0(&qword_1011A35C8, &qword_100EE35B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A35C0);
  }

  return result;
}

double sub_1007B82F8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = 1;
  return result;
}

unint64_t sub_1007B831C()
{
  result = qword_1011A35E0;
  if (!qword_1011A35E0)
  {
    sub_1001109D0(&qword_1011A35E8, &qword_100EE35D0);
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer, &unk_100EC3A24);
    sub_1007B8130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A35E0);
  }

  return result;
}

unint64_t sub_1007B83D8()
{
  result = qword_1011A35F0;
  if (!qword_1011A35F0)
  {
    sub_1001109D0(&qword_1011A35F8, &qword_100EE35D8);
    sub_1007B7AFC(&qword_101199338, &qword_101199330, &qword_100ED7DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A35F0);
  }

  return result;
}

unint64_t sub_1007B8484()
{
  result = qword_1011A3600;
  if (!qword_1011A3600)
  {
    sub_1001109D0(&qword_1011A3608, &qword_100EE35E0);
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer, &unk_100EC3A24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3600);
  }

  return result;
}

unint64_t sub_1007B8540()
{
  result = qword_1011A3610;
  if (!qword_1011A3610)
  {
    sub_1001109D0(&qword_1011A3618, &qword_100EE35E8);
    sub_1007B46CC(qword_1011A3110, type metadata accessor for BaselineSpacer, &unk_100EC3A24);
    sub_1007B7AFC(&qword_101199338, &qword_101199330, &qword_100ED7DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3610);
  }

  return result;
}

unint64_t sub_1007B861C()
{
  result = qword_1011A3620;
  if (!qword_1011A3620)
  {
    sub_1001109D0(&qword_1011A3628, &qword_100EE35F0);
    sub_10068E44C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3620);
  }

  return result;
}

uint64_t sub_1007B86C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1007B8710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1007B8774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_10118CF20, &qword_100EC8B98);
  __chkstk_darwin();
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v14[5] = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  v7 = v14 - v6;
  v19 = v4;
  *&v20 = sub_1007BA7B0();
  v8 = sub_10001C8B8(&v18);
  sub_1007B9720(&_swiftEmptySetSingleton, v8);
  sub_1007BA85C(a1, v7);
  v9 = type metadata accessor for Song();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_1000095E8(v7, &unk_101183960, &unk_100EBCF90);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  else
  {
    *(&v16 + 1) = v9;
    v17 = &protocol witness table for Song;
    v11 = sub_10001C8B8(&v15);
    (*(v10 + 32))(v11, v7, v9);
  }

  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v12 = type metadata accessor for MusicPlaybackIntentDescriptor();
  return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
}

uint64_t sub_1007B8D40@<X0>(uint64_t a2@<X8>)
{
  v13 = type metadata accessor for Song();
  v12[9] = *(v13 - 8);
  __chkstk_darwin();
  v3 = sub_10010FC20(&qword_10118CF20, &qword_100EC8B98);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v12[8] = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v12 - v6;
  v8 = sub_10010E83C(&off_10109B888);
  sub_1007B9720(v8, v7);

  MusicLibrarySectionedRequest<>.filterItems(equalTo:)();
  v19 = v3;
  *&v20 = sub_1007BA7B0();
  v9 = sub_10001C8B8(&v18);
  (*(v4 + 16))(v9, v7, v3);
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = a2;
  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v10 = type metadata accessor for MusicPlaybackIntentDescriptor();
  (*(*(v10 - 8) + 56))(v14, 0, 1, v10);
  return (*(v4 + 8))(v7, v3);
}

void sub_1007B9340()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (!*(v0 + 40) || v2 == 1)
  {
    swift_getKeyPath();
    sub_10010FC20(&qword_10118CF20, &qword_100EC8B98);
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();
    goto LABEL_6;
  }

  if (v2 == 4)
  {
    swift_getKeyPath();
    sub_10010FC20(&qword_10118CF20, &qword_100EC8B98);
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();
LABEL_6:

    return;
  }

  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, static Logger.libraryView);
  sub_10021817C(v0, v11);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  sub_1003BECBC(v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11[0] = v7;
    *v6 = 136446210;
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, v11);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Tried to apply unhandled sortOption=%{public}s to songs request.", v6, 0xCu);
    sub_10000959C(v7);
  }
}

_UNKNOWN **sub_1007B9600()
{
  if (*(v0 + 8))
  {
    return &off_101098FA8;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  result = &off_101098FA8;
  if (v3 != 6)
  {
    type metadata accessor for MusicLibrary();

    static MusicLibrary.shared.getter();
    sub_1007BA814(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
    v4 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v4)
    {
      return &off_101098FD0;
    }

    else
    {
      return &off_101098FA8;
    }
  }

  return result;
}

double sub_1007B9720@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for TitledSection();
  type metadata accessor for Song();
  MusicLibrarySectionedRequest.init()();
  sub_10010FC20(&qword_10118CF20, &qword_100EC8B98);
  MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  MusicLibrarySectionedRequest.filterItems(text:)(v2[1]);
  sub_1007B9340();
  countAndFlagsBits = v2[2]._countAndFlagsBits;
  if (*(a1 + 16) <= countAndFlagsBits[2] >> 3)
  {
    v9 = v3[2]._countAndFlagsBits;

    sub_100700034(a1);
    v7 = v9;
  }

  else
  {

    v7 = sub_100700254(a1, countAndFlagsBits);
  }

  sub_1007BA318(v7, a2);

  return result;
}

double sub_1007B985C(__int128 *a1)
{
  type metadata accessor for MusicLibrary();
  sub_1007BA814(&qword_101180378, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 8) & 1);
  String.hash(into:)();
  sub_10010B100(a1, *(v1 + 32));
  v3 = *(v1 + 41);
  String.hash(into:)();

  Hasher._combine(_:)(v3 & 1);
  String.hash(into:)();
  sub_10045EC58(*(v1 + 64));
  String.hash(into:)();

  return result;
}

void sub_1007B9A80(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 16);
  type metadata accessor for TitledSection();
  type metadata accessor for Song();
  MusicLibrarySectionedRequest.init()();
  sub_10010FC20(&qword_10118CF20, &qword_100EC8B98);
  MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  MusicLibrarySectionedRequest.filterItems(text:)(v3);
  sub_1007B9340();

  sub_1007BA318(v4, a1);
}

Swift::Int sub_1007B9B70()
{
  Hasher.init(_seed:)();
  sub_1007B985C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1007B9BB4(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1007B985C(v2);
  return Hasher._finalize()();
}

uint64_t sub_1007B9BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1007B9D2C(v7, v9) & 1;
}

unint64_t sub_1007B9C50()
{
  result = qword_1011A3630;
  if (!qword_1011A3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3630);
  }

  return result;
}

unint64_t sub_1007B9CB0(uint64_t a1)
{
  result = sub_1007B9CD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1007B9CD8()
{
  result = qword_1011A3710;
  if (!qword_1011A3710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3710);
  }

  return result;
}

uint64_t sub_1007B9D2C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MusicLibrary();
  if (static MusicLibrary.== infix(_:_:)() & 1) != 0 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0 && (*(a1 + 16) == *(a2 + 16) ? (v4 = *(a1 + 24) == *(a2 + 24)) : (v4 = 0), (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_10018FCA0(*(a1 + 32), *(a2 + 32)) & 1) != 0 && (v5 = *(a1 + 41), v6 = *(a2 + 41), (sub_1006B8B0C(*(a1 + 40), *(a2 + 40))) && ((v5 ^ v6) & 1) == 0 && (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) || (_stringCompareWithSmolCheck(_:_:expecting:)())))
  {
    v9 = *(a2 + 64);
    v10 = sub_10045EC58(*(a1 + 64));
    v12 = v11;
    if (v10 == sub_10045EC58(v9) && v12 == v13)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_1007B9E68()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 stringForKey:v2];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    v8 = _findStringSwitchCase(cases:string:)(&off_101098DD8, v7);

    if (!v8)
    {
      return 0;
    }

    if (v8 == 1)
    {
      return 1;
    }
  }

  v10 = [v0 standardUserDefaults];
  Library.SortConfiguration.storageKey.getter(6u);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 stringForKey:v11];

  if (!v12)
  {
    return 3;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  v17 = _findStringSwitchCase(cases:string:)(&off_101098E28, v16);

  if (v17 >= 3)
  {
    return 3;
  }

  else
  {
    return v17;
  }
}

__n128 sub_1007B9FFC@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for MusicLibrary();
  v3 = static MusicLibrary.shared.getter();
  v4 = a1 & 1;
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  sub_100110448();
  sub_10011049C();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, &v48);

  v7 = v48;
  v48 = v3;
  v49 = a1;
  v50 = 0;
  v51 = 0xE000000000000000;
  v52 = &_swiftEmptySetSingleton;
  v53 = 256;
  v54 = 0xD000000000000010;
  v55 = 0x8000000100E57690;
  v56 = 11;
  sub_100376548(v7);
  if ((v8 & 0xFF00) == 0x200 && (v8 = sub_10045FDA0(192), (v8 & 0xFF00) == 0x200))
  {
    v9 = 0;
    LOBYTE(v10) = 1;
  }

  else
  {
    v9 = v8;
    v10 = (v8 >> 8) & 1;
  }

  v11 = [v5 standardUserDefaults];
  v12 = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
  sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
  sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
  NSUserDefaults.decodeValue<A>(_:forKey:)(v12, &v38);

  v13 = v38;
  if (!v38)
  {
    v14 = sub_1007B9E68();
    v15 = Optional<A>.convertToSet.getter(v14);
    if (v15)
    {
      v13 = v15;
    }

    else
    {
      v13 = &_swiftEmptySetSingleton;
    }
  }

  v38 = v3;
  v39 = v4;
  v40 = 0;
  v41 = 0xE000000000000000;
  v42 = &_swiftEmptySetSingleton;
  v43 = v9;
  v44 = v10;
  v45 = 0xD000000000000010;
  v46 = 0x8000000100E57690;
  v47 = 11;
  v57 = &_swiftEmptySetSingleton;
  v16 = sub_1007B9600();
  v17 = sub_1003AE5C4(v16, v13);

  sub_1000095E8(&v57, &unk_10118CD70, &qword_100EBE248);
  *&v23 = v3;
  BYTE8(v23) = v4;
  v24.n128_u64[0] = 0;
  v24.n128_u64[1] = 0xE000000000000000;
  *&v25 = v17;
  BYTE8(v25) = v9;
  BYTE9(v25) = v10;
  *&v26 = 0xD000000000000010;
  *(&v26 + 1) = 0x8000000100E57690;
  v27 = 11;
  v28 = v3;
  v29 = v4;
  v30 = 0;
  v31 = 0xE000000000000000;
  v32 = v17;
  v33 = v9;
  v34 = v10;
  v35 = 0xD000000000000010;
  v36 = 0x8000000100E57690;
  v37 = 11;
  sub_10021817C(&v23, v22);
  sub_1003BECBC(&v28);
  v18 = v26;
  *(v21 + 32) = v25;
  *(v21 + 48) = v18;
  *(v21 + 64) = v27;
  result = v24;
  *v21 = v23;
  *(v21 + 16) = result;
  return result;
}

void sub_1007BA318(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = type metadata accessor for MusicFavoriteStatus();
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v20 = v4;
    Hasher.init(_seed:)();
    String.hash(into:)();
    v7 = Hasher._finalize()();
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    v10 = v7 & ~v9;
    if ((*(a1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v11 = ~v9;
      while (!*(*(a1 + 48) + v10) || *(*(a1 + 48) + v10) == 2)
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          goto LABEL_10;
        }

        v10 = (v10 + 1) & v11;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

LABEL_10:
      swift_getKeyPath();
      v13 = v20;
      (*(v20 + 104))(v6, enum case for MusicFavoriteStatus.favorited(_:), v3);
      sub_10010FC20(&qword_10118CF20, &qword_100EC8B98);
      sub_1007BA814(&qword_1011831C8, &type metadata accessor for MusicFavoriteStatus, &protocol conformance descriptor for MusicFavoriteStatus);
      MusicLibrarySectionedRequest<>.filterItems<A>(matching:equalTo:)();

      (*(v13 + 8))(v6, v3);
    }

LABEL_11:
    if (*(a1 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v14 = Hasher._finalize()();
      v15 = -1 << *(a1 + 32);
      v16 = v14 & ~v15;
      if ((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (!*(*(a1 + 48) + v16) || *(*(a1 + 48) + v16) == 1)
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_20;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            return;
          }
        }

LABEL_20:
        sub_10010FC20(&qword_10118CF20, &qword_100EC8B98);
        MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
      }
    }
  }
}

uint64_t sub_1007BA6A8@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1007BA700@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  *(a3 + 8) = v8 & 1;
  return result;
}

uint64_t sub_1007BA760(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  return a4(v5, v6);
}

unint64_t sub_1007BA7B0()
{
  result = qword_1011A3718;
  if (!qword_1011A3718)
  {
    sub_1001109D0(&qword_10118CF20, &qword_100EC8B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3718);
  }

  return result;
}

uint64_t sub_1007BA814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1007BA85C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007BA8CC(uint64_t a1)
{
  v2 = v1;
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for MusicVideo();
  v5 = dispatch thunk of MusicItem.id.getter();
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 88);
  if (*(v8 + 16))
  {
    v9 = sub_100019C10(v5, v7);
    v11 = v10;

    if (v11)
    {
      sub_10000DD18(*(v8 + 56) + 32 * v9, &v21);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v21 = 0u;
  v22 = 0u;
LABEL_6:
  swift_endAccess();
  if (!*(&v22 + 1))
  {
    sub_1000095E8(&v21, &unk_101183F30, qword_100EBF960);
    goto LABEL_10;
  }

  sub_10010FC20(&unk_101184820, &unk_100ED1590);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v13 = *(v2 + 48);
    v14 = *(*v13 + 96);
    swift_beginAccess();
    sub_1007CD954(v13 + v14, v4, _s11MusicVideosVMa);

    sub_1007CD9CC(v4, _s11MusicVideosVMa);
    v12 = MusicLibrary.state<A>(for:)();

    v15 = dispatch thunk of MusicItem.id.getter();
    v17 = v16;
    *(&v22 + 1) = sub_10010FC20(&unk_101184820, &unk_100ED1590);
    *&v21 = v12;
    swift_beginAccess();

    sub_10040770C(&v21, v15, v17);
    swift_endAccess();
    return v12;
  }

  return v20;
}

uint64_t sub_1007BAB4C(uint64_t a1)
{
  type metadata accessor for Song();
  v2 = dispatch thunk of MusicItem.id.getter();
  v4 = v3;
  swift_beginAccess();
  v5 = *(v1 + 88);
  if (*(v5 + 16))
  {
    v6 = sub_100019C10(v2, v4);
    v8 = v7;

    if (v8)
    {
      sub_10000DD18(*(v5 + 56) + 32 * v6, &v15);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v15 = 0u;
  v16 = 0u;
LABEL_6:
  swift_endAccess();
  if (!*(&v16 + 1))
  {
    sub_1000095E8(&v15, &unk_101183F30, qword_100EBF960);
    goto LABEL_10;
  }

  sub_10010FC20(&qword_101193DD0, &unk_100EE3A50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    swift_beginAccess();

    v9 = MusicLibrary.state<A>(for:)();

    v10 = dispatch thunk of MusicItem.id.getter();
    v12 = v11;
    *(&v16 + 1) = sub_10010FC20(&qword_101193DD0, &unk_100EE3A50);
    *&v15 = v9;
    swift_beginAccess();

    sub_10040770C(&v15, v10, v12);
    swift_endAccess();
    return v9;
  }

  return v14;
}

uint64_t sub_1007BAD38(uint64_t a1)
{
  v2 = v1;
  _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for TVEpisode();
  sub_1007CDB28(&unk_1011996E0, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v5 = dispatch thunk of MusicItem.id.getter();
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 88);
  if (*(v8 + 16))
  {
    v9 = sub_100019C10(v5, v7);
    v11 = v10;

    if (v11)
    {
      sub_10000DD18(*(v8 + 56) + 32 * v9, &v21);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v21 = 0u;
  v22 = 0u;
LABEL_6:
  swift_endAccess();
  if (!*(&v22 + 1))
  {
    sub_1000095E8(&v21, &unk_101183F30, qword_100EBF960);
    goto LABEL_10;
  }

  sub_10010FC20(&qword_1011A3958, &qword_100EE3A48);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v13 = *(v2 + 48);
    v14 = *(*v13 + 96);
    swift_beginAccess();
    sub_1007CD954(v13 + v14, v4, _s10TVEpisodesVMa);

    sub_1007CD9CC(v4, _s10TVEpisodesVMa);
    sub_1007CDB28(&qword_1011A3950, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    v12 = MusicLibrary.state<A>(for:)();

    v15 = dispatch thunk of MusicItem.id.getter();
    v17 = v16;
    *(&v22 + 1) = sub_10010FC20(&qword_1011A3958, &qword_100EE3A48);
    *&v21 = v12;
    swift_beginAccess();

    sub_10040770C(&v21, v15, v17);
    swift_endAccess();
    return v12;
  }

  return v20;
}

uint64_t sub_1007BB024(uint64_t a1)
{
  type metadata accessor for MusicMovie();
  sub_1007CDB28(&unk_10118AB60, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v2 = dispatch thunk of MusicItem.id.getter();
  v4 = v3;
  swift_beginAccess();
  v5 = *(v1 + 88);
  if (*(v5 + 16))
  {
    v6 = sub_100019C10(v2, v4);
    v8 = v7;

    if (v8)
    {
      sub_10000DD18(*(v5 + 56) + 32 * v6, &v15);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v15 = 0u;
  v16 = 0u;
LABEL_6:
  swift_endAccess();
  if (!*(&v16 + 1))
  {
    sub_1000095E8(&v15, &unk_101183F30, qword_100EBF960);
    goto LABEL_10;
  }

  sub_10010FC20(&qword_1011A3918, &qword_100EE39F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    swift_beginAccess();
    sub_1007CDB28(&qword_1011A3910, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

    v9 = MusicLibrary.state<A>(for:)();

    v10 = dispatch thunk of MusicItem.id.getter();
    v12 = v11;
    *(&v16 + 1) = sub_10010FC20(&qword_1011A3918, &qword_100EE39F0);
    *&v15 = v9;
    swift_beginAccess();

    sub_10040770C(&v15, v10, v12);
    swift_endAccess();
    return v9;
  }

  return v14;
}

id sub_1007BB278(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v5 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___globalHeaderRegistration;
  v6 = sub_10010FC20(&qword_1011A37C8, &unk_100EE3808);
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___headerRegistration;
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___tvShowCellRegistration;
  v10 = sub_10010FC20(&qword_1011A37D8, &qword_100EE3818);
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___movieCellRegistration;
  v12 = sub_10010FC20(&unk_1011A37E8, &qword_100EE3820);
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView] = 0;
  v13 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_prefetchingController;
  v14 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v2[v13] = sub_10003AAD8(0xD000000000000024, 0x8000000100E578C0);
  *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_dragDropController] = 0;
  *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController] = 0;
  v15 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___actionMetricsReportingContext;
  v16 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___sortMoviesBarButton] = 0;
  v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context] = 0;
  type metadata accessor for MusicLibrary();
  LOBYTE(v31) = 13;
  *(&v31 + 1) = static MusicLibrary.shared.getter();
  v32 = a1;
  v33 = 0;
  v34 = 0xE000000000000000;
  v35 = 260;
  v36 = 0;
  v37 = 0xE000000000000000;
  v38 = _swiftEmptyArrayStorage;
  v39 = &_swiftEmptySetSingleton;
  v40 = 0;
  v41 = 0xE000000000000000;
  v42 = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011A3850, &qword_100EE3950);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_tvShowsResponseController] = sub_1003A3164(&v31);
  sub_10010B6F0(a1, v30);
  sub_10010FC20(&qword_1011A3858, &unk_100EE3958);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController] = sub_1003A2DD8(v30);
  v29.receiver = v2;
  v29.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v29, "initWithNibName:bundle:", 0, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v18 = String._bridgeToObjectiveC()();

  [v17 setTitle:v18];

  v19 = [v17 traitCollection];
  v20 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    v23 = [v17 navigationItem];
    [v23 setLargeTitleDisplayMode:v20];
  }

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100EBC6B0;
  v25 = sub_100217F14();
  *(v24 + 32) = &type metadata for LibraryFilterTrait;
  *(v24 + 40) = v25;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100EBC6B0;
  v27 = sub_100137E8C();
  *(v26 + 32) = &type metadata for MusicLibraryTrait;
  *(v26 + 40) = v27;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v17;
}

double sub_1007BB830()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v47.receiver = v0;
  v47.super_class = ObjectType;
  objc_msgSendSuper2(&v47, "viewDidLoad");
  v3 = sub_1007BBCF0();
  v4 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView;
  v5 = *&v1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView];
  v6 = sub_10059B450(v5, 1, static MPCPlayerCommandRequest.isAvailable(in:), 0);

  [v3 setCollectionViewLayout:v6];
  v7 = *&v1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_prefetchingController];
  [*&v1[v4] setPrefetchDataSource:v7];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = ObjectType;
  v10 = (v7 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v11 = *(v7 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v12 = *(v7 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider + 8);
  *v10 = sub_1007CDB00;
  v10[1] = v9;

  sub_100020438(v11, v12);

  v13 = (v7 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v14 = *(v7 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v15 = *(v7 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider + 8);
  *v13 = sub_1007BC4DC;
  v13[1] = 0;
  sub_100020438(v14, v15);
  v16 = *&v1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_tvShowsResponseController];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = *(v16 + 32);
  v19 = *(v16 + 40);
  *(v16 + 32) = sub_1007CDB08;
  *(v16 + 40) = v17;

  sub_100020438(v18, v19);

  v20 = *&v1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = *(v20 + 32);
  v23 = *(v20 + 40);
  *(v20 + 32) = sub_1007CDB10;
  *(v20 + 40) = v21;

  sub_100020438(v22, v23);

  v24 = sub_1007BD9B0();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = *(v24 + 88);
  v27 = *(v24 + 96);
  *(v24 + 88) = sub_1007CDB18;
  *(v24 + 96) = v25;

  sub_100020438(v26, v27);

  v43[3] = sub_10010FC20(&qword_1011A37C8, &unk_100EE3808);
  v28 = sub_10001C8B8(v43);
  sub_1007BE3D0(v28);
  v44[3] = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v29 = sub_10001C8B8(v44);
  sub_1007BE644(v29);
  v45[3] = sub_10010FC20(&unk_1011A37E8, &qword_100EE3820);
  v30 = sub_10001C8B8(v45);
  sub_1007BE8CC(v30);
  v46[3] = sub_10010FC20(&qword_1011A37D8, &qword_100EE3818);
  v31 = sub_10001C8B8(v46);
  sub_1007BEB6C(v31);
  swift_arrayDestroy();
  v32 = *&v1[v4];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v34 = swift_allocObject();
  *(v34 + 24) = 0u;
  *(v34 + 40) = 0u;
  *(v34 + 56) = 0u;
  *(v34 + 72) = 0u;
  *(v34 + 88) = 1;
  *(v34 + 96) = 0;
  v35 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v36 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v36 - 8) + 56))(v34 + v35, 1, 1, v36);
  *(v34 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v34 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v34 + 16) = v32;
  *(v34 + 24) = sub_1007CDB20;
  *(v34 + 32) = v33;
  *(v34 + 40) = 0;
  v37 = *(v34 + 56);
  v38 = *(v34 + 64);
  *(v34 + 64) = 0;
  *(v34 + 48) = 0;
  *(v34 + 56) = 0;
  v39 = v32;
  swift_retain_n();
  sub_100020438(v37, v38);
  v40 = *(v34 + 72);
  v41 = *(v34 + 80);
  *(v34 + 72) = 0;
  *(v34 + 80) = 0;
  sub_100020438(v40, v41);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_dragDropController] = v34;

  return result;
}

id sub_1007BBCF0()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView];
LABEL_6:
    v45 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600, UICollectionViewCompositionalLayout_ptr);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v47.receiver = v16;
    v47.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v47, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v46.receiver = v27;
    v46.super_class = v14;
    objc_msgSendSuper2(&v46, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.libraryTVAndMoviesView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];
      v41 = v38[2];
      v42 = v38[3];

      v43 = UIView.withAccessibilityIdentifier(_:)(v39, v40, v41, v42);

      v44 = *&v1[v10];
      *&v1[v10] = v43;
      v12 = v43;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1007BC0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_1011A3940, &qword_100EE3A40);
  __chkstk_darwin();
  v6 = &v23[-1] - v5;
  v7 = type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v23[-1] - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = 0.0;
  if (Strong)
  {
    v15 = Strong;
    sub_1000089F8(a1, v23, &unk_101183F30, qword_100EBF960);
    if (!v24)
    {

      sub_1000095E8(v23, &unk_101183F30, qword_100EBF960);
      (*(v8 + 56))(v6, 1, 1, v7);
      goto LABEL_6;
    }

    v16 = swift_dynamicCast();
    (*(v8 + 56))(v6, v16 ^ 1u, 1, v7);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

LABEL_6:
      sub_1000095E8(v6, &unk_1011A3940, &qword_100EE3A40);
      return v14;
    }

    sub_1007CD8EC(v6, v12, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
    sub_1007CD954(v12, v10, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = sub_1007BBCF0();
      v19 = sub_100189858();

      v24 = v7;
      v20 = sub_10001C8B8(v23);
      sub_1007CD954(v12, v20, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
      v14 = v19(v23, a2);

      sub_1007CD9CC(v12, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
      sub_1000095E8(v23, &unk_101183F30, qword_100EBF960);
      sub_1007CD9CC(v10, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
    }

    else
    {
      v21 = [objc_opt_self() currentTraitCollection];
      [v21 displayScale];

      sub_1007CD9CC(v12, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
      sub_1007CD9CC(v10, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
      return 102.0;
    }
  }

  return v14;
}

unint64_t sub_1007BC4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a2;
  v90 = a3;
  v4 = sub_10010FC20(&qword_10118D0B0, &qword_100EBD730);
  v82 = *(v4 - 8);
  v83 = v4;
  __chkstk_darwin();
  v81 = &v72 - v5;
  v6 = sub_10010FC20(&unk_10118D0C0, &qword_100EC8DE0);
  v79 = *(v6 - 8);
  v80 = v6;
  __chkstk_darwin();
  v78 = &v72 - v7;
  sub_10010FC20(&unk_1011803F0, &qword_100EBA6C0);
  __chkstk_darwin();
  v87 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v72 - v9;
  sub_10010FC20(&qword_1011A3930, &qword_100EE3A30);
  __chkstk_darwin();
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = &v72 - v12;
  v13 = sub_10010FC20(&qword_1011A3890, &qword_100EBD630);
  v76 = *(v13 - 8);
  v77 = v13;
  __chkstk_darwin();
  v75 = &v72 - v14;
  v74 = sub_10010FC20(&qword_1011A3898, &qword_100EE3990);
  v73 = *(v74 - 8);
  __chkstk_darwin();
  v16 = &v72 - v15;
  sub_10010FC20(&unk_1011A38A0, &qword_100EE5560);
  __chkstk_darwin();
  v86 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = &v72 - v18;
  sub_10010FC20(&qword_1011A3938, &qword_100EE3A38);
  __chkstk_darwin();
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v72 - v21;
  sub_10010FC20(&unk_1011A3940, &qword_100EE3A40);
  __chkstk_darwin();
  v24 = &v72 - v23;
  v25 = type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext(0);
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v30 = &v72 - v29;
  sub_1000089F8(a1, v91, &unk_101183F30, qword_100EBF960);
  if (v92)
  {
    v31 = swift_dynamicCast();
    (*(v26 + 56))(v24, v31 ^ 1u, 1, v25);
    if ((*(v26 + 48))(v24, 1, v25) != 1)
    {
      v32 = v30;
      sub_1007CD8EC(v24, v30, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
      sub_1007CD954(v30, v28, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = v22;
        sub_10003D17C(v28, v22, &qword_1011A3938, &qword_100EE3A38);
        sub_1000089F8(v22, v20, &qword_1011A3938, &qword_100EE3A38);
        v34 = sub_10010FC20(&qword_1011A3878, &unk_100EE3970);
        v35 = *(v34 - 8);
        if ((*(v35 + 48))(v20, 1, v34) == 1)
        {
          sub_1000095E8(v20, &qword_1011A3938, &qword_100EE3A38);
LABEL_21:
          v51 = 1;
          v49 = v85;
          goto LABEL_22;
        }

        v44 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

        if (!v44)
        {
          (*(v35 + 8))(v20, v34);
          goto LABEL_21;
        }

        v45 = MusicLibrarySectionedResponse.sections.getter();
        (*(v35 + 8))(v20, v34);
        result = IndexPath.section.getter();
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *(v45 + 16))
          {
            v46 = v73;
            v47 = v74;
            (*(v73 + 16))(v16, v45 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * result, v74);

            v48 = v75;
            MusicLibrarySection.items.getter();
            (*(v46 + 8))(v16, v47);
            IndexPath.item.getter();
            v49 = v85;
            v50 = v77;
            MusicItemCollection.subscript.getter();
            (*(v76 + 8))(v48, v50);
            v51 = 0;
LABEL_22:
            v61 = type metadata accessor for TVShow();
            v62 = *(v61 - 8);
            (*(v62 + 56))(v49, v51, 1, v61);
            v63 = v86;
            sub_1000089F8(v49, v86, &unk_1011A38A0, &qword_100EE5560);
            if ((*(v62 + 48))(v63, 1, v61) == 1)
            {
              v64 = &unk_1011A38A0;
              v65 = &qword_100EE5560;
              sub_1000095E8(v49, &unk_1011A38A0, &qword_100EE5560);
              v66 = &qword_1011A3938;
              v67 = &qword_100EE3A38;
              v68 = v33;
LABEL_29:
              sub_1000095E8(v68, v66, v67);
              sub_1007CD9CC(v32, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
              v38 = v63;
              v36 = v64;
              v37 = v65;
              goto LABEL_8;
            }

            TVShow.artwork.getter();
            sub_1000095E8(v49, &unk_1011A38A0, &qword_100EE5560);
            v69 = &qword_1011A3938;
            v70 = &qword_100EE3A38;
            v71 = v33;
            goto LABEL_31;
          }

          goto LABEL_34;
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v41 = v89;
      sub_10003D17C(v28, v89, &qword_1011A3930, &qword_100EE3A30);
      sub_1000089F8(v41, v11, &qword_1011A3930, &qword_100EE3A30);
      v42 = sub_10010FC20(&unk_10118D0D0, &qword_100EC8DF0);
      v43 = *(v42 - 8);
      if ((*(v43 + 48))(v11, 1, v42) == 1)
      {
        sub_1000095E8(v11, &qword_1011A3930, &qword_100EE3A30);
      }

      else
      {
        v52 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

        if (v52)
        {
          v53 = MusicLibrarySectionedResponse.sections.getter();
          (*(v43 + 8))(v11, v42);
          result = IndexPath.section.getter();
          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          v54 = v88;
          if (result >= *(v53 + 16))
          {
LABEL_35:
            __break(1u);
            return result;
          }

          v55 = v78;
          v56 = v79;
          v57 = v80;
          (*(v79 + 16))(v78, v53 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * result, v80);

          v58 = v81;
          MusicLibrarySection.items.getter();
          (*(v56 + 8))(v55, v57);
          IndexPath.item.getter();
          v59 = v83;
          MusicItemCollection.subscript.getter();
          (*(v82 + 8))(v58, v59);
          v60 = 0;
LABEL_27:
          v61 = type metadata accessor for MusicMovie();
          v62 = *(v61 - 8);
          (*(v62 + 56))(v54, v60, 1, v61);
          v63 = v87;
          sub_1000089F8(v54, v87, &unk_1011803F0, &qword_100EBA6C0);
          if ((*(v62 + 48))(v63, 1, v61) == 1)
          {
            v64 = &unk_1011803F0;
            v65 = &qword_100EBA6C0;
            sub_1000095E8(v54, &unk_1011803F0, &qword_100EBA6C0);
            v66 = &qword_1011A3930;
            v67 = &qword_100EE3A30;
            v68 = v41;
            goto LABEL_29;
          }

          MusicMovie.artwork.getter();
          sub_1000095E8(v54, &unk_1011803F0, &qword_100EBA6C0);
          v69 = &qword_1011A3930;
          v70 = &qword_100EE3A30;
          v71 = v41;
LABEL_31:
          sub_1000095E8(v71, v69, v70);
          sub_1007CD9CC(v32, type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext);
          return (*(v62 + 8))(v63, v61);
        }

        (*(v43 + 8))(v11, v42);
      }

      v60 = 1;
      v54 = v88;
      goto LABEL_27;
    }
  }

  else
  {
    sub_1000095E8(v91, &unk_101183F30, qword_100EBF960);
    (*(v26 + 56))(v24, 1, 1, v25);
  }

  v36 = &unk_1011A3940;
  v37 = &qword_100EE3A40;
  v38 = v24;
LABEL_8:
  sub_1000095E8(v38, v36, v37);
  v39 = type metadata accessor for Artwork();
  return (*(*(v39 - 8) + 56))(v90, 1, 1, v39);
}

_BYTE *sub_1007BD208(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011A3860, &qword_100EC8DE8);
  __chkstk_darwin();
  v3 = &v50 - v2;
  v54 = sub_10010FC20(&unk_10118D0D0, &qword_100EC8DF0);
  v4 = *(v54 - 8);
  __chkstk_darwin();
  v53 = &v50 - v5;
  v6 = sub_10010FC20(&qword_1011A3878, &unk_100EE3970);
  v56 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v50 - v7;
  sub_10010FC20(&qword_1011A3870, &qword_100EE3968);
  __chkstk_darwin();
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v50 - v11;
  sub_10010FC20(&qword_1011A3938, &qword_100EE3A38);
  __chkstk_darwin();
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v50 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v51 = v4;
    v52 = v8;
    v55 = v3;
    RequestResponse.Revision.content.getter(v12);
    v18 = sub_10010FC20(&qword_1011A3888, &unk_100EE3980);
    v19 = *(*(v18 - 8) + 48);
    if (v19(v12, 1, v18) == 1)
    {
      sub_1000095E8(v12, &qword_1011A3870, &qword_100EE3968);
      v20 = 1;
      v22 = v56;
      v21 = v57;
    }

    else
    {
      v22 = v56;
      v21 = v57;
      (*(v56 + 16))(v57, v12, v6);
      sub_1000095E8(v12, &qword_1011A3888, &unk_100EE3980);
      v20 = 0;
    }

    (*(v22 + 56))(v21, v20, 1, v6);
    v23 = v22;
    if ((v17[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context] & 1) == 0)
    {
      v24 = *&v17[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_prefetchingController];
      v58[3] = type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext(0);
      v25 = sub_10001C8B8(v58);
      sub_1000089F8(v57, v25, &qword_1011A3938, &qword_100EE3A38);
      v23 = v56;
      swift_storeEnumTagMultiPayload();
      v26 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
      swift_beginAccess();
      sub_10006B010(v58, v24 + v26, &unk_101183F30, qword_100EBF960);
      swift_endAccess();
    }

    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v10);

    if (v19(v10, 1, v18) == 1)
    {
      sub_1000095E8(v10, &qword_1011A3870, &qword_100EE3968);
      v27 = v23;
      v28 = 1;
    }

    else
    {
      v29 = v52;
      (*(v23 + 16))(v52, v10, v6);
      sub_1000095E8(v10, &qword_1011A3888, &unk_100EE3980);
      v30 = MusicLibrarySectionedResponse.isEmpty.getter(v6);
      (*(v23 + 8))(v29, v6);
      v27 = v23;
      v28 = !v30;
    }

    v31 = v55;
    [v17 setNeedsUpdateContentUnavailableConfiguration];
    v32 = sub_1007BBCF0();
    [v32 setBouncesVertically:v28 & 1];

    v33 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView;
    [*&v17[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v28 & 1];
    [*&v17[v33] reloadData];
    v34 = sub_1007BD9B0();
    v35 = v57;
    sub_1000089F8(v57, v14, &qword_1011A3938, &qword_100EE3A38);
    if ((*(v27 + 48))(v14, 1, v6) == 1)
    {
      sub_1000095E8(v14, &qword_1011A3938, &qword_100EE3A38);
    }

    else
    {
      v36 = MusicLibrarySectionedResponse.isEmpty.getter(v6);
      (*(v27 + 8))(v14, v6);
      if (!v36)
      {
        goto LABEL_22;
      }
    }

    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v31);

    v37 = sub_10010FC20(&qword_1011A3880, &unk_100EC8DF8);
    if ((*(*(v37 - 8) + 48))(v31, 1, v37) == 1)
    {
      sub_1000095E8(v31, &unk_1011A3860, &qword_100EC8DE8);
      goto LABEL_16;
    }

    v38 = v51;
    v39 = v53;
    v40 = v54;
    (*(v51 + 16))(v53, v31, v54);
    sub_1000095E8(v31, &qword_1011A3880, &unk_100EC8DF8);
    v41 = MusicLibrarySectionedResponse.isEmpty.getter(v40);
    (*(v38 + 8))(v39, v40);
    if (v41)
    {
LABEL_16:
      v42 = (*(*&v17[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
      v43 = v42[1];
      if (v43)
      {
        v44 = *v42 & 0xFFFFFFFFFFFFLL;
        if ((v43 & 0x2000000000000000) != 0)
        {
          v45 = HIBYTE(v43) & 0xF;
        }

        else
        {
          v45 = v44;
        }

        v46 = v45 != 0;
        v47 = *(v34 + 64);
        *(v34 + 64) = v46;
        if (v47 == v46)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v49 = *(v34 + 64);
        *(v34 + 64) = 0;
        if ((v49 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_23;
    }

LABEL_22:
    v48 = *(v34 + 64);
    *(v34 + 64) = 1;
    if (v48)
    {
LABEL_24:

      return sub_1000095E8(v35, &qword_1011A3938, &qword_100EE3A38);
    }

LABEL_23:
    sub_10043EAB8();
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_1007BD9B0()
{
  v1 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0, v3);

    *&v0[v1] = v2;
  }

  return v2;
}

_BYTE *sub_1007BDA54(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011A3870, &qword_100EE3968);
  __chkstk_darwin();
  v3 = &v50 - v2;
  v54 = sub_10010FC20(&qword_1011A3878, &unk_100EE3970);
  v4 = *(v54 - 8);
  __chkstk_darwin();
  v53 = &v50 - v5;
  v6 = sub_10010FC20(&unk_10118D0D0, &qword_100EC8DF0);
  v56 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v50 - v7;
  sub_10010FC20(&unk_1011A3860, &qword_100EC8DE8);
  __chkstk_darwin();
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v50 - v11;
  sub_10010FC20(&qword_1011A3930, &qword_100EE3A30);
  __chkstk_darwin();
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v50 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v51 = v4;
    v52 = v8;
    v55 = v3;
    RequestResponse.Revision.content.getter(v12);
    v18 = sub_10010FC20(&qword_1011A3880, &unk_100EC8DF8);
    v19 = *(*(v18 - 8) + 48);
    if (v19(v12, 1, v18) == 1)
    {
      sub_1000095E8(v12, &unk_1011A3860, &qword_100EC8DE8);
      v20 = 1;
      v22 = v56;
      v21 = v57;
    }

    else
    {
      v22 = v56;
      v21 = v57;
      (*(v56 + 16))(v57, v12, v6);
      sub_1000095E8(v12, &qword_1011A3880, &unk_100EC8DF8);
      v20 = 0;
    }

    (*(v22 + 56))(v21, v20, 1, v6);
    v23 = v22;
    if (v17[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context] == 1)
    {
      v24 = *&v17[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_prefetchingController];
      v58[3] = type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext(0);
      v25 = sub_10001C8B8(v58);
      sub_1000089F8(v57, v25, &qword_1011A3930, &qword_100EE3A30);
      v23 = v56;
      swift_storeEnumTagMultiPayload();
      v26 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
      swift_beginAccess();
      sub_10006B010(v58, v24 + v26, &unk_101183F30, qword_100EBF960);
      swift_endAccess();
    }

    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v10);

    if (v19(v10, 1, v18) == 1)
    {
      sub_1000095E8(v10, &unk_1011A3860, &qword_100EC8DE8);
      v27 = v23;
      v28 = 1;
    }

    else
    {
      v29 = v52;
      (*(v23 + 16))(v52, v10, v6);
      sub_1000095E8(v10, &qword_1011A3880, &unk_100EC8DF8);
      v30 = MusicLibrarySectionedResponse.isEmpty.getter(v6);
      (*(v23 + 8))(v29, v6);
      v27 = v23;
      v28 = !v30;
    }

    v31 = v55;
    [v17 setNeedsUpdateContentUnavailableConfiguration];
    v32 = sub_1007BBCF0();
    [v32 setBouncesVertically:v28 & 1];

    v33 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView;
    [*&v17[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v28 & 1];
    [*&v17[v33] reloadData];
    v34 = sub_1007BD9B0();
    v35 = v57;
    sub_1000089F8(v57, v14, &qword_1011A3930, &qword_100EE3A30);
    if ((*(v27 + 48))(v14, 1, v6) == 1)
    {
      sub_1000095E8(v14, &qword_1011A3930, &qword_100EE3A30);
    }

    else
    {
      v36 = MusicLibrarySectionedResponse.isEmpty.getter(v6);
      (*(v27 + 8))(v14, v6);
      if (!v36)
      {
        goto LABEL_22;
      }
    }

    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v31);

    v37 = sub_10010FC20(&qword_1011A3888, &unk_100EE3980);
    if ((*(*(v37 - 8) + 48))(v31, 1, v37) == 1)
    {
      sub_1000095E8(v31, &qword_1011A3870, &qword_100EE3968);
      goto LABEL_16;
    }

    v38 = v51;
    v39 = v53;
    v40 = v54;
    (*(v51 + 16))(v53, v31, v54);
    sub_1000095E8(v31, &qword_1011A3888, &unk_100EE3980);
    v41 = MusicLibrarySectionedResponse.isEmpty.getter(v40);
    (*(v38 + 8))(v39, v40);
    if (v41)
    {
LABEL_16:
      v42 = (*(*&v17[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
      v43 = v42[1];
      if (v43)
      {
        v44 = *v42 & 0xFFFFFFFFFFFFLL;
        if ((v43 & 0x2000000000000000) != 0)
        {
          v45 = HIBYTE(v43) & 0xF;
        }

        else
        {
          v45 = v44;
        }

        v46 = v45 != 0;
        v47 = *(v34 + 64);
        *(v34 + 64) = v46;
        if (v47 == v46)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v49 = *(v34 + 64);
        *(v34 + 64) = 0;
        if ((v49 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_23;
    }

LABEL_22:
    v48 = *(v34 + 64);
    *(v34 + 64) = 1;
    if (v48)
    {
LABEL_24:

      return sub_1000095E8(v35, &qword_1011A3930, &qword_100EE3A30);
    }

LABEL_23:
    sub_10043EAB8();
    goto LABEL_24;
  }

  return result;
}

void sub_1007BE200(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    if (a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0xE000000000000000;
    }

    v8 = *(*(Strong + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_tvShowsResponseController) + 48);
    v9 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    v11 = *(v8 + 32);
    v12 = *(v8 + 48);
    v13 = *(v8 + 64);
    v14 = *(v8 + 96);
    v37[4] = *(v8 + 80);
    v37[5] = v14;
    v38 = *(v8 + 112);
    v37[2] = v12;
    v37[3] = v13;
    v37[0] = v10;
    v37[1] = v11;
    v15 = *(v8 + 16);
    v40 = *(v8 + 32);
    v39 = v15;
    v16 = *(v8 + 56);
    v17 = *(v8 + 72);
    v18 = *(v8 + 88);
    v46 = *(v8 + 104);
    v45 = v18;
    v44 = v17;
    v43 = v16;
    sub_1003BF8F0(v37, &v29);

    v41 = v6;
    v42 = v7;
    sub_10037993C(&v39);
    v19 = *(*&v9[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController] + 48);
    swift_beginAccess();
    v20 = *(v19 + 64);
    v28[2] = *(v19 + 48);
    v21 = *(v19 + 16);
    v28[1] = *(v19 + 32);
    v22 = *(v19 + 96);
    v28[4] = *(v19 + 80);
    v28[5] = v22;
    v28[3] = v20;
    v28[0] = v21;
    v29 = *(v19 + 16);
    v23 = *(v19 + 56);
    v24 = *(v19 + 72);
    v25 = *(v19 + 88);
    v26 = *(v19 + 104);
    v30 = *(v19 + 32);
    v36 = v26;
    v35 = v25;
    v34 = v24;
    v33 = v23;

    sub_1001103E0(v28, v27);

    v31 = v6;
    v32 = v7;
    sub_100379614(&v29);
  }
}

uint64_t sub_1007BE3D0@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_1011A3920, &qword_100EE39F8);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___globalHeaderRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_1011A3920, &qword_100EE39F8);
  v8 = sub_10010FC20(&qword_1011A37C8, &unk_100EE3808);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_1011A3920, &qword_100EE39F8);
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for LibraryTVShowsMoviesViewController.SegmentedControlCell();

  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_1011A3920, &qword_100EE39F8);
  return swift_endAccess();
}

uint64_t sub_1007BE644@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C540, &qword_100EC0500);
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C540, &qword_100EC0500);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C540, &qword_100EC0500);
  return swift_endAccess();
}

uint64_t sub_1007BE8CC@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_10010FC20(&unk_1011A38D0, &qword_100EE39D8);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v14[-v6];
  v8 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___movieCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v7, &unk_1011A38D0, &qword_100EE39D8);
  v9 = sub_10010FC20(&unk_1011A37E8, &qword_100EE3820);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1000095E8(v7, &unk_1011A38D0, &qword_100EE39D8);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for MusicMovie();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v10 + 16))(v5, a1, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v8, &unk_1011A38D0, &qword_100EE39D8);
  return swift_endAccess();
}

uint64_t sub_1007BEB6C@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_1011A38C0, &qword_100EE3998);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___tvShowCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_1011A38C0, &qword_100EE3998);
  v8 = sub_10010FC20(&qword_1011A37D8, &qword_100EE3818);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_1011A38C0, &qword_100EE3998);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  type metadata accessor for TVShow();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_1011A38C0, &qword_100EE3998);
  return swift_endAccess();
}

unint64_t sub_1007BEDE4(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v49 = &v41 - v2;
  v44 = sub_10010FC20(&qword_10118D0B0, &qword_100EBD730);
  v43 = *(v44 - 8);
  __chkstk_darwin();
  v4 = &v41 - v3;
  v5 = sub_10010FC20(&unk_10118D0C0, &qword_100EC8DE0);
  v42 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v41 - v6;
  sub_10010FC20(&unk_1011A3860, &qword_100EC8DE8);
  __chkstk_darwin();
  v9 = &v41 - v8;
  v10 = sub_10010FC20(&unk_10118D0D0, &qword_100EC8DF0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v41 - v12;
  v48 = type metadata accessor for MusicMovie();
  v47 = *(v48 - 8);
  __chkstk_darwin();
  v45 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v41 - v15;
  __chkstk_darwin();
  v46 = &v41 - v17;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v19 = result;
  if (*(result + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context) != 1)
  {
LABEL_5:

    return 0;
  }

  v41 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v20 = sub_10010FC20(&qword_1011A3880, &unk_100EC8DF8);
  if ((*(*(v20 - 8) + 48))(v9, 1, v20) == 1)
  {
    sub_1000095E8(v9, &unk_1011A3860, &qword_100EC8DE8);
    goto LABEL_5;
  }

  (*(v11 + 16))(v13, v9, v10);
  sub_1000095E8(v9, &qword_1011A3880, &unk_100EC8DF8);
  v21 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

  v22 = (v11 + 8);
  if (!v21)
  {

    (*v22)(v13, v10);
    return 0;
  }

  v23 = MusicLibrarySectionedResponse.sections.getter();
  (*v22)(v13, v10);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result >= *(v23 + 16))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v24 = v42;
  (*(v42 + 16))(v7, v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * result, v5);

  MusicLibrarySection.items.getter();
  (*(v24 + 8))(v7, v5);
  IndexPath.item.getter();
  v25 = v44;
  MusicItemCollection.subscript.getter();
  (*(v43 + 8))(v4, v25);
  v26 = v47;
  v27 = v46;
  v28 = v48;
  (*(v47 + 32))(v46, v16, v48);
  v29 = *(*&v19[v41] + 48);
  swift_beginAccess();
  v30 = v29[4];
  v52[2] = v29[3];
  v52[3] = v30;
  v31 = v29[6];
  v52[4] = v29[5];
  v52[5] = v31;
  v32 = v29[2];
  v52[0] = v29[1];
  v52[1] = v32;
  sub_1001103E0(v52, v51);
  v33 = v49;
  sub_100108ED8(v49);
  sub_100110418(v52);
  v34 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_1000095E8(v33, &unk_10118CDB0, &unk_100EC0360);
    v36 = 0;
  }

  else
  {
    v36 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v35 + 8))(v33, v34);
  }

  v37 = sub_10079A22C(v36);
  v38 = sub_100797240(&off_10109C410, v37);

  v39 = v45;
  (*(v26 + 16))(v45, v27, v28);
  v40 = sub_10079E8E4(v38, v39);

  (*(v26 + 8))(v27, v28);
  return v40;
}

void sub_1007BF588(char a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  v4 = sub_1007BBCF0();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  type metadata accessor for ApplicationMainMenu();
  v5 = sub_100314AEC();
  if (v5)
  {
    v6 = v5;
    sub_1007CA720(v2, v5, &off_1010BFF30);
  }
}

void sub_1007BF6D0(char a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "viewDidDisappear:", a1 & 1);
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);
}

double sub_1007BF7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context);
    v10 = OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection;
    v11 = *(a1 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection);
    *(a1 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection) = v9;
    if (v9 != v11)
    {
      sub_1007C9818();
      v12 = *(a1 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_selectionDidChange);
      if (v12)
      {
        v13 = *(a1 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_selectionDidChange + 8);
        v14 = *(a1 + v10);

        v12(v14);
        sub_100020438(v12, v13);
      }
    }

    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v16 = (a1 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_selectionDidChange);
    v17 = *(a1 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_selectionDidChange);
    v18 = v16[1];
    *v16 = sub_1007CDABC;
    v16[1] = v15;

    sub_100020438(v17, v18);
  }

  return result;
}

void sub_1007BF8D0(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context);
    v4[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context] = a1 & 1;
    sub_1007C3808(v5);
  }
}

void sub_1007BF93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a4;
  v49 = a1;
  v5 = sub_10010FC20(&unk_10118D0C0, &qword_100EC8DE0);
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin();
  v44 = &v42 - v6;
  sub_10010FC20(&unk_1011A3860, &qword_100EC8DE8);
  __chkstk_darwin();
  v8 = &v42 - v7;
  v9 = sub_10010FC20(&unk_10118D0D0, &qword_100EC8DF0);
  v47 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v42 - v10;
  v12 = sub_10010FC20(&qword_1011A3898, &qword_100EE3990);
  v42 = *(v12 - 8);
  v43 = v12;
  __chkstk_darwin();
  v14 = &v42 - v13;
  sub_10010FC20(&qword_1011A3870, &qword_100EE3968);
  __chkstk_darwin();
  v16 = &v42 - v15;
  v17 = sub_10010FC20(&qword_1011A3878, &unk_100EE3970);
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v42 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context))
    {
      RequestResponse.Controller.revision.getter();
      RequestResponse.Revision.content.getter(v8);

      v23 = sub_10010FC20(&qword_1011A3880, &unk_100EC8DF8);
      if ((*(*(v23 - 8) + 48))(v8, 1, v23) == 1)
      {
        v24 = &unk_1011A3860;
        v25 = &qword_100EC8DE8;
        v26 = v8;
LABEL_7:
        sub_1000095E8(v26, v24, v25);
LABEL_8:
        v28 = 0;
        v29 = 0xE000000000000000;
LABEL_18:
        sub_1005FF7FC(v28, v29, v50);

        UICollectionViewCell.contentConfiguration.setter();

        return;
      }

      v30 = v47;
      (*(v47 + 16))(v11, v8, v9);
      sub_1000095E8(v8, &qword_1011A3880, &unk_100EC8DF8);
      v31 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

      if (!v31)
      {
        (*(v30 + 8))(v11, v9);
        goto LABEL_8;
      }

      v32 = MusicLibrarySectionedResponse.sections.getter();
      (*(v30 + 8))(v11, v9);
      v33 = IndexPath.section.getter();
      if ((v33 & 0x8000000000000000) == 0)
      {
        if (v33 < *(v32 + 16))
        {
          v34 = v44;
          v35 = v45;
          v36 = v46;
          (*(v45 + 16))(v44, v32 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33, v46);

          swift_getKeyPath();
          MusicLibrarySection.subscript.getter();

          (*(v35 + 8))(v34, v36);
LABEL_17:
          v28 = v50[0];
          v29 = v50[1];
          goto LABEL_18;
        }

        goto LABEL_24;
      }

      __break(1u);
    }

    else
    {
      RequestResponse.Controller.revision.getter();
      RequestResponse.Revision.content.getter(v16);

      v27 = sub_10010FC20(&qword_1011A3888, &unk_100EE3980);
      if ((*(*(v27 - 8) + 48))(v16, 1, v27) == 1)
      {
        v24 = &qword_1011A3870;
        v25 = &qword_100EE3968;
        v26 = v16;
        goto LABEL_7;
      }

      (*(v18 + 16))(v20, v16, v17);
      sub_1000095E8(v16, &qword_1011A3888, &unk_100EE3980);
      v37 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

      if (!v37)
      {
        (*(v18 + 8))(v20, v17);
        goto LABEL_8;
      }

      v38 = MusicLibrarySectionedResponse.sections.getter();
      (*(v18 + 8))(v20, v17);
      v39 = IndexPath.section.getter();
      if ((v39 & 0x8000000000000000) == 0)
      {
        if (v39 < *(v38 + 16))
        {
          v41 = v42;
          v40 = v43;
          (*(v42 + 16))(v14, v38 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v39, v43);

          swift_getKeyPath();
          MusicLibrarySection.subscript.getter();

          (*(v41 + 8))(v14, v40);
          goto LABEL_17;
        }

LABEL_25:
        __break(1u);
        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }
}

void sub_1007C0004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_10118D2C0, &unk_100ED1530);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v13 - v7;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    __chkstk_darwin();
    v13[-2] = a3;
    v13[-1] = v9;
    v10 = v9;
    sub_10010FC20(&unk_101184760, &unk_100EC0410);
    v11 = _s8GridCellVMa(255);
    v12 = sub_1007CDB28(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);
    v13[0] = v11;
    v13[1] = v12;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v5;
    v13[4] = sub_100020674(&unk_101184770, &qword_10118D2C0, &unk_100ED1530, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v13);
    UIHostingConfiguration.margins(_:_:)();
    (*(v6 + 8))(v8, v5);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1007C0250@<X0>(uint64_t a2@<X8>)
{
  v29[1] = a2;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v5 = v29 - v4;
  v6 = _s8GridCellVMa(0);
  __chkstk_darwin();
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TVShow();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v9, &protocol witness table for TVShow, v5);
  v10 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v10 - 8) + 56))(v3, 6, 11, v10);
  v11 = sub_1007BBCF0();
  v12 = *&v11[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v12, 0, 0, 1, 0x3FF0000000000000, 0, 2, v30);
  v13 = Corner.medium.unsafeMutableAddressor();
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v5, v3, 0x3FF0000000000000, 0, v30, *v13, v13[1], *(v13 + 16), v8);
  v14 = TVShow.name.getter();
  v16 = v15;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
  v29[3] = TVShow.episodeCount.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v18._countAndFlagsBits = 0x65646F7369704520;
  v18._object = 0xEB00000000297328;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v21 = v20;
  v22 = v6[10];
  v23 = type metadata accessor for ContentRating();
  (*(*(v23 - 8) + 56))(&v8[v22], 1, 1, v23);
  v24 = &v8[v6[5]];
  *v24 = 0;
  *(v24 + 1) = 0;
  *(v24 + 2) = 0;
  *&v8[v6[6]] = 0x3FF0000000000000;
  v25 = &v8[v6[7]];
  *v25 = v14;
  v25[1] = v16;
  v26 = &v8[v6[8]];
  *v26 = v19;
  v26[1] = v21;
  v8[v6[9]] = 0;
  v8[v6[11]] = 0;
  v27 = v6[12];
  *&v8[v27] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  sub_1007CDB28(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_1007CDB28(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);

  View.artworkCaching(owner:)();

  return sub_1007CD9CC(v8, _s8GridCellVMa);
}

void sub_1007C0770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&unk_10118D320, &unk_100EC9050);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v19 - v12;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    __chkstk_darwin();
    v19[-4] = a3;
    v19[-3] = v14;
    v19[-2] = a1;
    v19[-1] = a5;
    v15 = v14;
    sub_10010FC20(&unk_1011847A0, &unk_100EC0470);
    v16 = _s8ListCellVMa(255);
    v17 = sub_1007CDB28(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);
    v19[0] = v16;
    v19[1] = v17;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v18 = *(v9 + 8);
    v18(v11, v8);
    static Edge.Set.vertical.getter();
    v19[3] = v8;
    v19[4] = sub_100020674(&unk_1011847B0, &unk_10118D320, &unk_100EC9050, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v19);
    UIHostingConfiguration.margins(_:_:)();
    v18(v13, v8);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1007C0A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v123 = a3;
  v125 = a2;
  v124 = a4;
  v5 = type metadata accessor for MusicMovie();
  v121 = *(v5 - 8);
  __chkstk_darwin();
  v119 = v6;
  v120 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v126 = &v99 - v7;
  v114 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v113 = *(v114 - 8);
  __chkstk_darwin();
  v111 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v110 = *(v112 - 8);
  __chkstk_darwin();
  v106 = (&v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v105 = *(v107 - 8);
  __chkstk_darwin();
  v103 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Duration.UnitsFormatStyle();
  v108 = *(v109 - 1);
  __chkstk_darwin();
  v104 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v99 = *(v100 - 8);
  __chkstk_darwin();
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Date.FormatStyle();
  v101 = *(v102 - 8);
  __chkstk_darwin();
  v15 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v99 - v16;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v19 = &v99 - v18;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v21 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v23 = &v99 - v22;
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = _s8ListCellVMa(0);
  __chkstk_darwin();
  v27 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v5;
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v5, &protocol witness table for MusicMovie, v23);
  v28 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v28 - 8) + 56))(v21, 6, 11, v28);
  ArtworkImage.Size.init(cgSize:)(0x4059800000000000, 0x4063800000000000, 0, &v132);
  v29 = Corner.medium.unsafeMutableAddressor();
  v30 = *v29;
  v31 = v29[1];
  v32 = *(v29 + 16);
  v117 = v25;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v23, v21, 0, 1, &v132, v30, v31, v32, v25);
  v116 = MusicMovie.title.getter();
  v115 = v33;
  v34 = a1;
  MusicMovie.releaseDate.getter();
  v35 = type metadata accessor for Date();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v19, 1, v35) == 1)
  {
    sub_1000095E8(v19, &qword_101188C20, &qword_100EC2030);
    v37 = 0;
    v38 = 0;
  }

  else
  {
    static FormatStyle<>.dateTime.getter();
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    Date.FormatStyle.year(_:)();
    (*(v99 + 8))(v13, v100);
    v39 = *(v101 + 8);
    v40 = v15;
    v41 = v102;
    v39(v40, v102);
    sub_1007CDB28(&unk_1011A3900, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    Date.formatted<A>(_:)();
    v39(v17, v41);
    (*(v36 + 8))(v19, v35);
    v38 = *(&v127 + 1);
    v37 = v127;
  }

  v130 = v37;
  v131[0] = v38;
  MusicMovie.duration.getter();
  v42 = v126;
  if (v43)
  {
    v44 = 0;
    v45 = 0;
  }

  else
  {
    static Duration.seconds(_:)();
    sub_10010FC20(&unk_1011A38F0, &qword_100EDC3A0);
    type metadata accessor for Duration.UnitsFormatStyle.Unit();
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100EBDC20;
    static Duration.UnitsFormatStyle.Unit.hours.getter();
    static Duration.UnitsFormatStyle.Unit.minutes.getter();
    sub_10011064C(v46);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v47 = v103;
    static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
    v48 = v106;
    static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
    v49 = v111;
    static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
    v50 = v104;
    static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

    (*(v113 + 8))(v49, v114);
    (*(v110 + 8))(v48, v112);
    (*(v105 + 8))(v47, v107);
    sub_1007CDB28(&qword_10119D648, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
    v51 = v109;
    Duration.formatted<A>(_:)();
    (*(v108 + 8))(v50, v51);
    v45 = *(&v127 + 1);
    v44 = v127;
  }

  v52 = 0;
  v131[1] = v44;
  v131[2] = v45;
  v53 = _swiftEmptyArrayStorage;
LABEL_8:
  v54 = &v131[2 * v52];
  while (++v52 != 3)
  {
    v55 = v54 + 2;
    v56 = *v54;
    v54 += 2;
    if (v56)
    {
      v57 = *(v55 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_100498B7C(0, *(v53 + 2) + 1, 1, v53);
      }

      v59 = *(v53 + 2);
      v58 = *(v53 + 3);
      if (v59 >= v58 >> 1)
      {
        v53 = sub_100498B7C((v58 > 1), v59 + 1, 1, v53);
      }

      *(v53 + 2) = v59 + 1;
      v60 = &v53[16 * v59];
      *(v60 + 4) = v57;
      *(v60 + 5) = v56;
      v42 = v126;
      goto LABEL_8;
    }
  }

  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  swift_arrayDestroy();
  *&v127 = v53;
  sub_10010FC20(&qword_101183BC8, &unk_100EBF620);
  sub_100020674(&unk_101183BD0, &qword_101183BC8, &unk_100EBF620, &protocol conformance descriptor for [A]);
  v114 = BidirectionalCollection<>.joined(separator:)();
  v113 = v61;

  v62 = type metadata accessor for ContentRating();
  v63 = *(v62 - 8);
  v64 = *(v63 + 56);
  v110 = v62;
  v109 = v64;
  v108 = v63 + 56;
  (v64)(v42, 1, 1);
  sub_1007BB024(v34);
  v128 = sub_10010FC20(&qword_101199708, &unk_100EE39E0);
  v129 = sub_100020674(&unk_101199710, &qword_101199708, &unk_100EE39E0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10001C8B8(&v127);
  dispatch thunk of MusicLibrary.ItemState.$downloadStatus.getter();

  v111 = sub_10010FC20(&unk_1011847C0, &unk_100EC0480);
  swift_allocObject();
  v112 = OptionalObservableObject.init(publisher:)(&v127);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v65 = sub_1007CDB28(&unk_1011A38E0, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v66 = v34;
  v67 = v34;
  v68 = v122;
  v69 = *(*Player.state<A>(for:)(v66, v122, v65) + 280);
  v128 = sub_10010FC20(&qword_101199728, &unk_100ED91C0);
  v129 = sub_100020674(&qword_101199730, &qword_101199728, &unk_100ED91C0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10001C8B8(&v127);
  v69();

  v107 = sub_10010FC20(&unk_10118D300, &qword_100EBCE20);
  swift_allocObject();
  v106 = OptionalObservableObject.init(publisher:)(&v127);
  v70 = swift_allocObject();
  v105 = v70;
  swift_unknownObjectWeakInit();
  v71 = v121;
  v72 = v120;
  (*(v121 + 16))(v120, v67, v68);
  v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v74 = swift_allocObject();
  v75 = v123;
  *(v74 + 16) = v70;
  *(v74 + 24) = v75;
  (*(v71 + 32))(v74 + v73, v72, v68);

  v76 = v75;
  v77 = static HierarchicalShapeStyle.primary.getter();
  *(v27 + 3) = &type metadata for HierarchicalShapeStyle;
  *(v27 + 4) = &protocol witness table for HierarchicalShapeStyle;
  *v27 = v77;
  v27[40] = 0;
  v78 = v118;
  v79 = &v27[v118[6]];
  v81 = v118[9];
  v80 = v118[10];
  (v109)(&v27[v80], 1, 1, v110);
  v123 = &v27[v78[11]];
  v82 = v78[14];
  *&v27[v82] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v83 = v117;
  sub_1007CD954(v117, &v27[v78[5]], type metadata accessor for ArtworkImage.Info);
  *(v79 + 1) = 0;
  *(v79 + 2) = 0;
  *v79 = 0;
  v84 = &v27[v78[7]];
  v85 = v115;
  *v84 = v116;
  v84[1] = v85;
  v86 = &v27[v78[8]];
  v87 = v113;
  *v86 = v114;
  v86[1] = v87;
  v27[v81] = 0;
  v88 = &v27[v80];
  v89 = v27;
  v90 = v126;
  sub_100123348(v126, v88);
  v91 = (v89 + v78[12]);
  sub_100020674(&unk_1011847D0, &unk_1011847C0, &unk_100EC0480, &protocol conformance descriptor for OptionalObservableObject<A>);

  *v91 = ObservedObject.init(wrappedValue:)();
  v91[1] = v92;
  v93 = (v89 + v78[13]);
  sub_100020674(&qword_10118D310, &unk_10118D300, &qword_100EBCE20, &protocol conformance descriptor for OptionalObservableObject<A>);
  v94 = ObservedObject.init(wrappedValue:)();
  v96 = v95;

  sub_1000095E8(v90, &unk_10118D2F0, &unk_100EBCE10);
  sub_1007CD9CC(v83, type metadata accessor for ArtworkImage.Info);

  *v93 = v94;
  v93[1] = v96;
  v97 = v123;
  *v123 = sub_1007CDA40;
  *(v97 + 1) = v74;
  sub_1007CDB28(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_1007CDB28(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);

  View.artworkCaching(owner:)();

  return sub_1007CD9CC(v89, _s8ListCellVMa);
}

char *sub_1007C1C70(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v127 = a4;
  v5 = type metadata accessor for UUID();
  v135 = *(v5 - 8);
  __chkstk_darwin();
  v134 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v132 = v7;
  v133 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v143 = &v117 - v8;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v128 = &v117 - v9;
  v129 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  v10 = *(v129 + 64);
  __chkstk_darwin();
  v130 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v142 = &v117 - v11;
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v13 = &v117 - v12;
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v126 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v117 - v15;
  __chkstk_darwin();
  v137 = &v117 - v17;
  __chkstk_darwin();
  v138 = &v117 - v18;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v136 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v141 = &v117 - v20;
  sub_10010FC20(&unk_1011803F0, &qword_100EBA6C0);
  __chkstk_darwin();
  v22 = &v117 - v21;
  v23 = type metadata accessor for MusicMovie();
  v139 = *(v23 - 8);
  v140 = v23;
  __chkstk_darwin();
  v25 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for IndexPath();
  v145 = *(v26 - 8);
  v146 = v26;
  __chkstk_darwin();
  v28 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v144 = &v117 - v29;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v124 = v5;
    v125 = v16;
    v31 = result;
    v32 = sub_1007BBCF0();
    v33 = [v32 indexPathForCell:a3];

    if (v33)
    {
      v122 = v10;
      v123 = v25;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = v144;
      v34 = v145;
      v36 = v146;
      (*(v145 + 32))(v144, v28, v146);
      v37 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController;

      sub_10037D4E4(v35, v22);

      v39 = v139;
      v38 = v140;
      if ((*(v139 + 48))(v22, 1, v140) == 1)
      {
        (*(v34 + 8))(v35, v36);

        sub_1000095E8(v22, &unk_1011803F0, &qword_100EBA6C0);
        return 0;
      }

      else
      {
        v40 = v123;
        (*(v39 + 32))(v123, v22, v38);
        sub_10010FC20(&unk_101183900, &unk_100EC1680);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_100EBC6B0;
        *(v41 + 56) = v38;
        *(v41 + 64) = sub_1007CDB28(&unk_10118AB60, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
        v42 = sub_10001C8B8((v41 + 32));
        (*(v39 + 16))(v42, v40, v38);
        v43 = [v31 traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        v121 = *&v169[0];
        v44 = *(*&v31[v37] + 48);
        swift_beginAccess();
        v45 = v44[4];
        v169[2] = v44[3];
        v169[3] = v45;
        v46 = v44[6];
        v169[4] = v44[5];
        v169[5] = v46;
        v47 = v44[2];
        v169[0] = v44[1];
        v169[1] = v47;
        sub_1001103E0(v169, v161);
        sub_100108ED8(v13);
        sub_100110418(v169);
        v48 = v138;
        PlaybackIntentDescriptor.IntentType.init(_:)(v13, v138);
        memset(v161, 0, 40);
        if (qword_10117F608 != -1)
        {
          swift_once();
        }

        v49 = qword_101218AD8;
        sub_1000089F8(v48, v137, &unk_1011838E0, &unk_100EC1670);
        v50 = v49;
        v51 = UIViewController.playActivityInformation.getter();
        v53 = v52;
        v55 = v54;
        v120 = v56;
        sub_1000089F8(v161, &v153, &unk_101183910, &unk_100EBDD00);
        v127 = v31;
        if (*(&v154 + 1))
        {
          sub_100059A8C(&v153, &v157);
          v57 = v125;
          v58 = v138;
          v59 = v50;
        }

        else
        {
          *&v162 = v31;
          sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
          v60 = v31;
          sub_10010FC20(&unk_101183920, &unk_100EC0330);
          if (swift_dynamicCast())
          {
            sub_100059A8C(&v165, &v157);
            v57 = v125;
            v58 = v138;
            v59 = v50;
          }

          else
          {
            v167 = 0;
            v165 = 0u;
            v166 = 0u;
            *&v157 = v60;
            v61 = v60;
            v62 = String.init<A>(reflecting:)();
            v158 = &type metadata for Player.CommandIssuerIdentity;
            v159 = &protocol witness table for Player.CommandIssuerIdentity;
            *&v157 = v62;
            *(&v157 + 1) = v63;
            v57 = v125;
            v58 = v138;
            v59 = v50;
            if (*(&v166 + 1))
            {
              sub_1000095E8(&v165, &unk_101183910, &unk_100EBDD00);
            }
          }

          if (*(&v154 + 1))
          {
            sub_1000095E8(&v153, &unk_101183910, &unk_100EBDD00);
          }
        }

        v64 = v141;
        Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v59, v137, v51, v53, v55, v120, &v157, v141);
        sub_1000095E8(v161, &unk_101183910, &unk_100EBDD00);
        sub_1000095E8(v58, &unk_1011838E0, &unk_100EC1670);
        v65 = type metadata accessor for Actions.PlaybackContext(0);
        v66 = *(v65 - 8);
        (*(v66 + 56))(v64, 0, 1, v65);
        v67 = type metadata accessor for PlaylistContext(0);
        (*(*(v67 - 8) + 56))(v142, 1, 1, v67);
        v68 = v145;
        v69 = v128;
        v70 = v146;
        (*(v145 + 16))(v128, v144, v146);
        (*(v68 + 56))(v69, 0, 1, v70);
        v71 = v127;
        sub_100376F7C(v69, v161);
        sub_1000095E8(v69, &unk_10118BCE0, &qword_100EC6450);
        v72 = v143;
        sub_1007C2FEC(v143);
        v73 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
        sub_100008FE4(v41 + 32, v160);

        sub_1000089F8(v161, &v153, &unk_1011845E0, &unk_100EBF3A0);
        if (v156 == 1)
        {
          v167 = 0;
          v165 = 0u;
          v166 = 0u;
          v168 = xmmword_100EBCEF0;
          PresentationSource.init(viewController:position:)(v71, &v165, &v157);
          v74 = v136;
          if (v156 != 1)
          {
            sub_1000095E8(&v153, &unk_1011845E0, &unk_100EBF3A0);
          }
        }

        else
        {
          sub_10012B828(&v153, &v157);
          v74 = v136;
        }

        swift_getObjectType();
        v75 = swift_conformsToProtocol2();
        if (v75)
        {
          v128 = v75;
          v76 = v71;
          v137 = v71;
        }

        else
        {
          v137 = 0;
          v128 = 0;
        }

        v138 = swift_allocBox();
        v78 = v77;
        sub_1000089F8(v141, v74, &unk_10118AB20, &unk_100EBF390);
        v79 = *(v66 + 48);
        if (v79(v74, 1, v65) == 1)
        {
          v80 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
          (*(*(v80 - 8) + 56))(v57, 1, 1, v80);
          v155 = 0;
          v153 = 0u;
          v154 = 0u;
          v81 = v57;
          v82 = v126;
          sub_1000089F8(v81, v126, &unk_1011838E0, &unk_100EC1670);
          v120 = v59;
          v83 = UIViewController.playActivityInformation.getter();
          v118 = v85;
          v119 = v84;
          v87 = v86;
          sub_1000089F8(&v153, &v151, &unk_101183910, &unk_100EBDD00);
          if (v152)
          {
            sub_100059A8C(&v151, &v162);
          }

          else
          {
            v150 = v71;
            sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
            v88 = v71;
            sub_10010FC20(&unk_101183920, &unk_100EC0330);
            if (swift_dynamicCast())
            {
              sub_100059A8C(&v147, &v162);
              v74 = v136;
            }

            else
            {
              v149 = 0;
              v147 = 0u;
              v148 = 0u;
              *&v162 = v88;
              v89 = v88;
              v90 = String.init<A>(reflecting:)();
              *(&v163 + 1) = &type metadata for Player.CommandIssuerIdentity;
              v164 = &protocol witness table for Player.CommandIssuerIdentity;
              *&v162 = v90;
              *(&v162 + 1) = v91;
              v74 = v136;
              if (*(&v148 + 1))
              {
                sub_1000095E8(&v147, &unk_101183910, &unk_100EBDD00);
              }
            }

            v82 = v126;
            if (v152)
            {
              sub_1000095E8(&v151, &unk_101183910, &unk_100EBDD00);
            }
          }

          Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v120, v82, v83, v119, v118, v87, &v162, v78);
          sub_1000095E8(&v153, &unk_101183910, &unk_100EBDD00);
          sub_1000095E8(v125, &unk_1011838E0, &unk_100EC1670);
          if (v79(v74, 1, v65) != 1)
          {
            sub_1000095E8(v74, &unk_10118AB20, &unk_100EBF390);
          }
        }

        else
        {
          sub_1007CD8EC(v74, v78, type metadata accessor for Actions.PlaybackContext);
        }

        v92 = &v78[*(v65 + 28)];
        sub_1000089F8(v92, &v162, &unk_101183910, &unk_100EBDD00);
        if (*(&v163 + 1))
        {
          sub_100059A8C(&v162, &v153);
        }

        else
        {
          *&v153 = v127;
          v93 = v127;
          v94 = String.init<A>(reflecting:)();
          *(&v154 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v155 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v153 = v94;
          *(&v153 + 1) = v95;
          if (*(&v163 + 1))
          {
            sub_1000095E8(&v162, &unk_101183910, &unk_100EBDD00);
          }
        }

        sub_10010FC20(&unk_101183930, &unk_100EC1690);
        v96 = swift_allocObject();
        *(v96 + 16) = xmmword_100EBDC20;
        *(v96 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v96 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v96 + 32) = 0x4D747865746E6F43;
        *(v96 + 40) = 0xEB00000000756E65;
        sub_100008FE4(&v153, v96 + 72);
        v97 = static Player.CommandIssuer<>.combining(_:)(v96);
        v99 = v98;

        sub_10000959C(&v153);
        *(&v154 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v155 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v153 = v97;
        *(&v153 + 1) = v99;
        sub_10006B010(&v153, v92, &unk_101183910, &unk_100EBDD00);
        sub_100008FE4(v160, &v153);
        sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
        v136 = String.init<A>(describing:)();
        v126 = v100;
        v125 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100008FE4(v160, &v151);
        sub_10012B7A8(&v157, &v153);
        v101 = v133;
        sub_1000089F8(v143, v133, &unk_1011838D0, &unk_100EC0320);
        v102 = v130;
        sub_1000089F8(v142, v130, &unk_1011845D0, &unk_100EBF380);
        v103 = (*(v131 + 80) + 160) & ~*(v131 + 80);
        v104 = (v132 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
        v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
        v106 = (*(v129 + 80) + v105 + 8) & ~*(v129 + 80);
        v132 = (v106 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
        v107 = (v106 + v122 + 31) & 0xFFFFFFFFFFFFFFF8;
        v108 = swift_allocObject();
        sub_100059A8C(&v151, v108 + 16);
        *(v108 + 56) = v121;
        sub_10012B828(&v153, v108 + 64);
        sub_10003D17C(v101, v108 + v103, &unk_1011838D0, &unk_100EC0320);
        *(v108 + v104) = v125;
        *(v108 + v105) = v138;
        sub_10003D17C(v102, v108 + v106, &unk_1011845D0, &unk_100EBF380);
        v109 = v108 + v132;
        v110 = v128;
        *v109 = v137;
        *(v109 + 8) = v110;
        *(v109 + 16) = 2;
        v111 = (v108 + v107);
        *v111 = variable initialization expression of Library.Context.playlistVariants;
        v111[1] = 0;
        swift_unknownObjectRetain();

        v112 = v134;
        UUID.init()();
        v113 = UUID.uuidString.getter();
        v115 = v114;
        (*(v135 + 8))(v112, v124);
        v170._countAndFlagsBits = v136;
        v170._object = v126;
        ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v162, v170, v113, v115, sub_10021953C, v108);
        swift_unknownObjectRelease();
        sub_10012BA6C(&v157);
        sub_10000959C(v160);

        v116 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
        v157 = v162;
        sub_100015BB0(&v157);
        v153 = v163;
        sub_100015BB0(&v153);

        sub_1000095E8(v143, &unk_1011838D0, &unk_100EC0320);
        sub_1000095E8(v161, &unk_1011845E0, &unk_100EBF3A0);
        sub_1000095E8(v142, &unk_1011845D0, &unk_100EBF380);
        sub_1000095E8(v141, &unk_10118AB20, &unk_100EBF390);
        (*(v139 + 8))(v123, v140);
        (*(v145 + 8))(v144, v146);
        return v116;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

double sub_1007C2FEC@<D0>(char *a1@<X8>)
{
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v28 - v5;
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v28 - v9;
  v11 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v10, &unk_1011838D0, &unk_100EC0320);
  v12 = type metadata accessor for Actions.MetricsReportingContext(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    v34 = v1;
    sub_1000095E8(v10, &unk_1011838D0, &unk_100EC0320);
    v14 = type metadata accessor for MetricsEvent.Page(0);
    v32 = *(*(v14 - 8) + 56);
    v32(v6, 1, 1, v14);
    v33 = v4;
    sub_1000089F8(v6, v4, &unk_1011838F0, &qword_100EC1070);
    MetricsReportingController.shared.unsafeMutableAddressor();
    v15 = sub_10053771C();
    v30 = v16;
    v31 = v15;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v17 = qword_101218AD0;
    v29 = GroupActivitiesManager.hasJoined.getter();
    v28 = GroupActivitiesManager.participantsCount.getter();
    sub_1000095E8(v6, &unk_1011838F0, &qword_100EC1070);
    v18 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    v19 = *(v17 + v18);
    v20 = v12[5];
    v32(&a1[v20], 1, 1, v14);
    v21 = v12[7];
    v22 = &a1[v12[6]];
    v23 = v12[8];
    *a1 = xmmword_100EBEF60;
    sub_10006B010(v33, &a1[v20], &unk_1011838F0, &qword_100EC1070);
    v24 = v30;
    *v22 = v31;
    v22[1] = v24;
    *&a1[v21] = 0;
    *&a1[v23] = 0;
    v25 = &a1[v12[9]];
    *v25 = v29 & 1;
    *(v25 + 1) = v28;
    *(v25 + 2) = v19;
    sub_1007CD954(a1, v8, type metadata accessor for Actions.MetricsReportingContext);
    (*(v13 + 56))(v8, 0, 1, v12);
    v26 = v34;
    swift_beginAccess();
    sub_10006B010(v8, v26 + v11, &unk_1011838D0, &unk_100EC0320);
    swift_endAccess();
  }

  else
  {
    sub_1007CD8EC(v10, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  return result;
}

objc_class *sub_1007C33E4()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v1 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___sortMoviesBarButton;
  v2 = *(v0 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___sortMoviesBarButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___sortMoviesBarButton);
  }

  else
  {
    v22 = sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v4 = String.init(localized:table:bundle:locale:comment:)();
    v6 = v5;
    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() systemImageNamed:{v7, v22}];

    sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v10.value = 0;
    v11 = v0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v10, 0, sub_1007CDAF0, v9).super.super.isa;

    v13 = AccessibilityIdentifier.librarySortOptionsButton.unsafeMutableAddressor();
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[3];

    v18 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v4, v6, v8, 0, isa, 1, v14, v15, v16, v17);
    v19 = *(v11 + v1);
    *(v11 + v1) = v18;
    v3 = v18;

    v2 = 0;
  }

  v20 = v2;
  return v3;
}

void *sub_1007C3680(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(Strong + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController);
  v3 = Strong;

  v4 = *(v2 + 48);
  swift_beginAccess();
  v5 = v4[4];
  v14[2] = v4[3];
  v14[3] = v5;
  v6 = v4[6];
  v14[4] = v4[5];
  v14[5] = v6;
  v7 = v4[2];
  v14[0] = v4[1];
  v14[1] = v7;
  v8 = swift_allocObject();
  swift_weakInit();

  sub_1001103E0(v14, &v13);
  v9.super.super.isa = sub_100211E88(sub_1007CDC30, v8).super.super.isa;

  sub_100110418(v14);

  if (!v9.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = [(objc_class *)v9.super.super.isa children];

  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v11;
}

void sub_1007C3808(char a1)
{
  v2 = v1;
  sub_10010FC20(&unk_1011A3860, &qword_100EC8DE8);
  __chkstk_darwin();
  v120 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v119 = &v112 - v5;
  __chkstk_darwin();
  v118 = &v112 - v6;
  v7 = sub_10010FC20(&unk_10118D0D0, &qword_100EC8DF0);
  v121 = *(v7 - 8);
  v122 = v7;
  __chkstk_darwin();
  v116 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v117 = &v112 - v9;
  __chkstk_darwin();
  v115 = &v112 - v10;
  __chkstk_darwin();
  v114 = &v112 - v11;
  sub_10010FC20(&qword_1011A3870, &qword_100EE3968);
  __chkstk_darwin();
  v13 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v112 - v14;
  __chkstk_darwin();
  v17 = &v112 - v16;
  v18 = sub_10010FC20(&qword_1011A3878, &unk_100EE3970);
  v123 = *(v18 - 8);
  __chkstk_darwin();
  v20 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  v22 = &v112 - v21;
  __chkstk_darwin();
  v25 = &v112 - v24;
  v26 = v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context];
  if (v26 != (a1 & 1))
  {
    v113 = v23;
    v27 = sub_1007BBCF0();
    v28 = v27;
    if (v26)
    {
      v29 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      v31 = objc_opt_self();
      v32 = [v31 fractionalWidthDimension:1.0];
      v33 = [v31 estimatedDimension:65.0];
      v34 = [objc_opt_self() sizeWithWidthDimension:v32 heightDimension:v33];

      UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

      v35 = String._bridgeToObjectiveC()();

      v36 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v34 elementKind:v35 alignment:1];

      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_100EBC6C0;
      *(v37 + 32) = v36;
      sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
      v38 = v36;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v29 setBoundarySupplementaryItems:isa];

      v40 = *(v30 + 16);
      *(v30 + 16) = v38;

      v41 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      *(v42 + 24) = 0u;
      *(v42 + 40) = 0u;
      *(v42 + 56) = 0u;
      *(v42 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
      *(v42 + 80) = 0;
      *(v42 + 88) = v30;
      v43 = objc_allocWithZone(UICollectionViewCompositionalLayout);
      v128 = sub_1002193FC;
      v129 = v42;
      aBlock = _NSConcreteStackBlock;
      v125 = 1107296256;
      v126 = sub_1005A63A8;
      v127 = &unk_1010C0260;
      v44 = _Block_copy(&aBlock);

      v45 = [v43 initWithSectionProvider:v44 configuration:v29];

      _Block_release(v44);

      v46 = v45;
      v47 = [v2 navigationItem];
      v48 = sub_1007C33E4();
      [v47 setRightBarButtonItem:v48];

      RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
      RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);
      v49 = sub_1007BD9B0();
      v50 = v49;
      v51 = (*(*&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
      v52 = v51[1];
      if (v52 && ((v53 = *v51 & 0xFFFFFFFFFFFFLL, (v52 & 0x2000000000000000) != 0) ? (v54 = HIBYTE(v52) & 0xF) : (v54 = v53), v54))
      {
        v55 = *(v49 + 64);
        *(v49 + 64) = 1;
        v57 = v121;
        v56 = v122;
        v58 = v119;
        if (v55)
        {
LABEL_10:

          RequestResponse.Controller.revision.getter();
          RequestResponse.Revision.content.getter(v58);

          v59 = sub_10010FC20(&qword_1011A3880, &unk_100EC8DF8);
          v60 = *(*(v59 - 8) + 48);
          if (v60(v58, 1, v59) == 1)
          {
            sub_1000095E8(v58, &unk_1011A3860, &qword_100EC8DE8);
            v61 = 1;
          }

          else
          {
            v80 = v115;
            (*(v57 + 16))(v115, v58, v56);
            sub_1000095E8(v58, &qword_1011A3880, &unk_100EC8DF8);
            v81 = MusicLibrarySectionedResponse.isEmpty.getter(v56);
            (*(v57 + 8))(v80, v56);
            v61 = !v81;
          }

          LODWORD(v122) = v61;
          UIViewController.playActivityFeatureIdentifier.setter(7);
          RequestResponse.Controller.revision.getter();
          v82 = v120;
          RequestResponse.Revision.content.getter(v120);

          if (v60(v82, 1, v59) == 1)
          {
            sub_1000095E8(v82, &unk_1011A3860, &qword_100EC8DE8);
          }

          else
          {
            v85 = *(v57 + 16);
            v86 = v116;
            v85(v116, v82, v56);
            sub_1000095E8(v82, &qword_1011A3880, &unk_100EC8DF8);
            v87 = v117;
            (*(v57 + 32))(v117, v86, v56);
            v88 = *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_prefetchingController];
            v127 = type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext(0);
            v89 = sub_10001C8B8(&aBlock);
            v85(v89, v87, v56);
            (*(v57 + 56))(v89, 0, 1, v56);
            swift_storeEnumTagMultiPayload();
            (*(v57 + 8))(v87, v56);
            v90 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
            swift_beginAccess();
            sub_10006B010(&aBlock, v88 + v90, &unk_101183F30, qword_100EBF960);
            swift_endAccess();
          }

          v91 = &unk_100EBC000;
LABEL_37:
          v98 = objc_opt_self();
          v99 = swift_allocObject();
          *(v99 + 16) = v2;
          *(v99 + 24) = v46;
          v100 = swift_allocObject();
          *(v100 + 16) = sub_1007CDAC8;
          *(v100 + 24) = v99;
          v128 = sub_100029B94;
          v129 = v100;
          aBlock = _NSConcreteStackBlock;
          v125 = v91[220];
          v126 = sub_100029B9C;
          v127 = &unk_1010C02D8;
          v101 = _Block_copy(&aBlock);
          v102 = v2;

          [v98 performWithoutAnimation:v101];
          _Block_release(v101);
          LOBYTE(v98) = swift_isEscapingClosureAtFileLocation();

          if (v98)
          {
            __break(1u);
          }

          else
          {
            [v102 setNeedsUpdateContentUnavailableConfiguration];
            v103 = sub_1007BBCF0();
            v104 = v122;
            [v103 setBouncesVertically:v122 & 1];

            [*&v102[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v104 & 1];
            v105 = [objc_opt_self() mainSystem];
            [v105 setNeedsRebuild];
          }

          return;
        }
      }

      else
      {
        RequestResponse.Controller.revision.getter();
        v74 = v118;
        RequestResponse.Revision.content.getter(v118);

        v75 = sub_10010FC20(&qword_1011A3880, &unk_100EC8DF8);
        v76 = (*(*(v75 - 8) + 48))(v74, 1, v75);
        v57 = v121;
        v56 = v122;
        v58 = v119;
        if (v76 == 1)
        {
          sub_1000095E8(v74, &unk_1011A3860, &qword_100EC8DE8);
          v77 = *(v50 + 64);
          *(v50 + 64) = 0;
          if ((v77 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v106 = v114;
          (*(v121 + 16))(v114, v74, v122);
          sub_1000095E8(v74, &qword_1011A3880, &unk_100EC8DF8);
          v107 = MusicLibrarySectionedResponse.isEmpty.getter(v56);
          (*(v57 + 8))(v106, v56);
          v108 = *(v50 + 64);
          *(v50 + 64) = !v107;
          if (v108 == !v107)
          {
            goto LABEL_10;
          }
        }
      }

      sub_10043EAB8();
      goto LABEL_10;
    }

    v62 = sub_10059B450(v27, 1, static MPCPlayerCommandRequest.isAvailable(in:), 0);

    v119 = v62;
    v63 = [v2 navigationItem];
    [v63 setRightBarButtonItem:0];

    v121 = *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_tvShowsResponseController];
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);
    v64 = sub_1007BD9B0();
    v65 = v64;
    v120 = v2;
    v66 = (*(*&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
    v67 = v66[1];
    if (v67 && ((v68 = *v66 & 0xFFFFFFFFFFFFLL, (v67 & 0x2000000000000000) != 0) ? (v69 = HIBYTE(v67) & 0xF) : (v69 = v68), v69))
    {
      v70 = *(v64 + 64);
      *(v64 + 64) = 1;
      if (v70)
      {
LABEL_19:

        RequestResponse.Controller.revision.getter();
        RequestResponse.Revision.content.getter(v15);

        v71 = sub_10010FC20(&qword_1011A3888, &unk_100EE3980);
        v72 = *(*(v71 - 8) + 48);
        if (v72(v15, 1, v71) == 1)
        {
          sub_1000095E8(v15, &qword_1011A3870, &qword_100EE3968);
          v73 = 1;
        }

        else
        {
          v83 = v123;
          (*(v123 + 16))(v22, v15, v18);
          sub_1000095E8(v15, &qword_1011A3888, &unk_100EE3980);
          v84 = MusicLibrarySectionedResponse.isEmpty.getter(v18);
          (*(v83 + 8))(v22, v18);
          v73 = !v84;
        }

        LODWORD(v122) = v73;
        v2 = v120;
        UIViewController.playActivityFeatureIdentifier.setter(16);
        RequestResponse.Controller.revision.getter();
        RequestResponse.Revision.content.getter(v13);

        if (v72(v13, 1, v71) == 1)
        {
          sub_1000095E8(v13, &qword_1011A3870, &qword_100EE3968);
        }

        else
        {
          v92 = v123;
          v93 = *(v123 + 16);
          v93(v20, v13, v18);
          sub_1000095E8(v13, &qword_1011A3888, &unk_100EE3980);
          v94 = v113;
          (*(v92 + 32))(v113, v20, v18);
          v95 = *&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_prefetchingController];
          v127 = type metadata accessor for LibraryTVShowsMoviesViewController.PrefetchingContext(0);
          v96 = sub_10001C8B8(&aBlock);
          v93(v96, v94, v18);
          (*(v92 + 56))(v96, 0, 1, v18);
          swift_storeEnumTagMultiPayload();
          (*(v92 + 8))(v94, v18);
          v97 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
          swift_beginAccess();
          sub_10006B010(&aBlock, v95 + v97, &unk_101183F30, qword_100EBF960);
          swift_endAccess();
        }

        v91 = &unk_100EBC000;
        v46 = v119;
        goto LABEL_37;
      }
    }

    else
    {
      RequestResponse.Controller.revision.getter();
      RequestResponse.Revision.content.getter(v17);

      v78 = sub_10010FC20(&qword_1011A3888, &unk_100EE3980);
      if ((*(*(v78 - 8) + 48))(v17, 1, v78) == 1)
      {
        sub_1000095E8(v17, &qword_1011A3870, &qword_100EE3968);
        v79 = *(v65 + 64);
        *(v65 + 64) = 0;
        if ((v79 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v109 = v123;
        (*(v123 + 16))(v25, v17, v18);
        sub_1000095E8(v17, &qword_1011A3888, &unk_100EE3980);
        v110 = MusicLibrarySectionedResponse.isEmpty.getter(v18);
        (*(v109 + 8))(v25, v18);
        v111 = *(v65 + 64);
        *(v65 + 64) = !v110;
        if (v111 == !v110)
        {
          goto LABEL_19;
        }
      }
    }

    sub_10043EAB8();
    goto LABEL_19;
  }
}

void sub_1007C4984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007BBCF0();
  [v4 setCollectionViewLayout:a2];

  v5 = *(a1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView);
  v6 = [v5 indexPathsForVisibleItems];
  if (!v6)
  {
    type metadata accessor for IndexPath();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = isa;
  }

  v8 = v6;
  [v5 reloadItemsAtIndexPaths:?];
}

uint64_t sub_1007C4E78(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v20 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v19 - v7;
  v9 = sub_10010FC20(&qword_1011A37C8, &unk_100EE3808);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v19 - v11;
  if (*UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor() != __PAIR128__(a3, a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v14 != a3)
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
LABEL_11:
        sub_1007BE644(v8);
        sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
        v13 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
        (*(v20 + 8))(v8, v6);
        return v13;
      }

      strcpy(v21, "Unknown kind=");
      v21[7] = -4864;
      v17._countAndFlagsBits = a2;
      v17._object = a3;
      String.append(_:)(v17);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    goto LABEL_11;
  }

  sub_1007BE3D0(v12);
  type metadata accessor for LibraryTVShowsMoviesViewController.SegmentedControlCell();
  v13 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v10 + 8))(v12, v9);
  return v13;
}

unint64_t sub_1007C5298(uint64_t a1, uint64_t a2)
{
  v94 = a1;
  v95 = a2;
  v3 = sub_10010FC20(&unk_1011A37E8, &qword_100EE3820);
  v91 = *(v3 - 8);
  v92 = v3;
  __chkstk_darwin();
  v90 = &v72 - v4;
  v5 = sub_10010FC20(&qword_10118D0B0, &qword_100EBD730);
  v82 = *(v5 - 8);
  v83 = v5;
  __chkstk_darwin();
  v81 = &v72 - v6;
  v80 = sub_10010FC20(&unk_10118D0C0, &qword_100EC8DE0);
  v79 = *(v80 - 8);
  __chkstk_darwin();
  v78 = &v72 - v7;
  sub_10010FC20(&unk_1011A3860, &qword_100EC8DE8);
  __chkstk_darwin();
  v9 = &v72 - v8;
  v10 = sub_10010FC20(&unk_10118D0D0, &qword_100EC8DF0);
  v84 = *(v10 - 8);
  v85 = v10;
  __chkstk_darwin();
  v12 = &v72 - v11;
  sub_10010FC20(&unk_1011803F0, &qword_100EBA6C0);
  __chkstk_darwin();
  v89 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = &v72 - v14;
  v15 = sub_10010FC20(&qword_1011A37D8, &qword_100EE3818);
  v87 = *(v15 - 8);
  v88 = v15;
  __chkstk_darwin();
  v86 = &v72 - v16;
  v77 = sub_10010FC20(&qword_1011A3890, &qword_100EBD630);
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v75 = &v72 - v17;
  v74 = sub_10010FC20(&qword_1011A3898, &qword_100EE3990);
  v73 = *(v74 - 8);
  __chkstk_darwin();
  v19 = &v72 - v18;
  sub_10010FC20(&qword_1011A3870, &qword_100EE3968);
  __chkstk_darwin();
  v21 = &v72 - v20;
  v22 = sub_10010FC20(&qword_1011A3878, &unk_100EE3970);
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = &v72 - v24;
  sub_10010FC20(&unk_1011A38A0, &qword_100EE5560);
  __chkstk_darwin();
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v72 - v28;
  if (*(v2 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context))
  {
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v9);

    v30 = sub_10010FC20(&qword_1011A3880, &unk_100EC8DF8);
    if ((*(*(v30 - 8) + 48))(v9, 1, v30) == 1)
    {
      sub_1000095E8(v9, &unk_1011A3860, &qword_100EC8DE8);
LABEL_15:
      v46 = 1;
      v38 = v95;
      v40 = v93;
      goto LABEL_16;
    }

    v35 = v84;
    v34 = v85;
    (*(v84 + 16))(v12, v9, v85);
    sub_1000095E8(v9, &qword_1011A3880, &unk_100EC8DF8);
    v36 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

    if (!v36)
    {
      (*(v35 + 8))(v12, v34);
      goto LABEL_15;
    }

    v37 = MusicLibrarySectionedResponse.sections.getter();
    (*(v35 + 8))(v12, v34);
    v38 = v95;
    result = IndexPath.section.getter();
    v40 = v93;
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(v37 + 16))
      {
        v41 = v79;
        v42 = v78;
        v43 = v80;
        (*(v79 + 16))(v78, v37 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * result, v80);

        v44 = v81;
        MusicLibrarySection.items.getter();
        (*(v41 + 8))(v42, v43);
        IndexPath.item.getter();
        v45 = v83;
        MusicItemCollection.subscript.getter();
        (*(v82 + 8))(v44, v45);
        v46 = 0;
LABEL_16:
        v53 = type metadata accessor for MusicMovie();
        v54 = *(v53 - 8);
        (*(v54 + 56))(v40, v46, 1, v53);
        v55 = v90;
        sub_1007BE8CC(v90);
        v56 = sub_1007FE6A8(v55, v38, v40);
        (*(v91 + 8))(v55, v92);
        v57 = v89;
        sub_1000089F8(v40, v89, &unk_1011803F0, &qword_100EBA6C0);
        if ((*(v54 + 48))(v57, 1, v53) == 1)
        {
          sub_1000095E8(v57, &unk_1011803F0, &qword_100EBA6C0);
          v96 = 0u;
          v97 = 0u;
          v98 = 0;
        }

        else
        {
          *(&v97 + 1) = v53;
          v98 = sub_1007CDB28(&unk_1011A38B0, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
          v58 = sub_10001C8B8(&v96);
          (*(v54 + 32))(v58, v57, v53);
        }

        v59 = sub_1004F24B0(&v96);

        v60 = &unk_1011803F0;
        v61 = &qword_100EBA6C0;
        v62 = v40;
LABEL_25:
        sub_1000095E8(v62, v60, v61);
        sub_1000095E8(&v96, &qword_1011A3DD0, &unk_100EC03F0);
        return v59;
      }

      goto LABEL_28;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v21);

  v31 = sub_10010FC20(&qword_1011A3888, &unk_100EE3980);
  if ((*(*(v31 - 8) + 48))(v21, 1, v31) == 1)
  {
    sub_1000095E8(v21, &qword_1011A3870, &qword_100EE3968);
    v32 = 1;
    v33 = v95;
LABEL_21:
    v63 = type metadata accessor for TVShow();
    v64 = *(v63 - 8);
    (*(v64 + 56))(v29, v32, 1, v63);
    v65 = v86;
    sub_1007BEB6C(v86);
    v66 = sub_1007FE16C(v65, v33, v29);
    (*(v87 + 8))(v65, v88);
    v67 = Corner.medium.unsafeMutableAddressor();
    v68 = *v67;
    v69 = v67[1];
    LOBYTE(v65) = *(v67 + 16);
    v70 = swift_allocObject();
    *(v70 + 16) = v68;
    *(v70 + 24) = v69;
    *(v70 + 32) = v65;
    UICollectionViewCell.configurationUpdateHandler.setter();
    sub_1000089F8(v29, v27, &unk_1011A38A0, &qword_100EE5560);
    if ((*(v64 + 48))(v27, 1, v63) == 1)
    {
      sub_1000095E8(v27, &unk_1011A38A0, &qword_100EE5560);
      v96 = 0u;
      v97 = 0u;
      v98 = 0;
    }

    else
    {
      *(&v97 + 1) = v63;
      v98 = sub_1007CDB28(&qword_101192E40, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
      v71 = sub_10001C8B8(&v96);
      (*(v64 + 32))(v71, v27, v63);
    }

    v59 = sub_1004F24B0(&v96);

    v60 = &unk_1011A38A0;
    v61 = &qword_100EE5560;
    v62 = v29;
    goto LABEL_25;
  }

  (*(v23 + 16))(v25, v21, v22);
  sub_1000095E8(v21, &qword_1011A3888, &unk_100EE3980);
  v47 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

  v33 = v95;
  if (!v47)
  {
    (*(v23 + 8))(v25, v22);
    v32 = 1;
    goto LABEL_21;
  }

  v48 = MusicLibrarySectionedResponse.sections.getter();
  (*(v23 + 8))(v25, v22);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  if (result < *(v48 + 16))
  {
    v49 = v73;
    v50 = v74;
    (*(v73 + 16))(v19, v48 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * result, v74);

    v51 = v75;
    MusicLibrarySection.items.getter();
    (*(v49 + 8))(v19, v50);
    IndexPath.item.getter();
    v52 = v77;
    MusicItemCollection.subscript.getter();
    (*(v76 + 8))(v51, v52);
    v32 = 0;
    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
  return result;
}

BOOL sub_1007C617C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = UICollectionView.isDraggingCell(at:)();

  (*(v6 + 8))(v8, v5);
  return (v10 & 1) == 0;
}

void sub_1007C6270(uint64_t (*a1)(uint64_t a1), void (*a2)(uint64_t, uint64_t))
{
  v148 = a2;
  v145 = a1;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v119 = &v110 - v3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v111 = &v110 - v4;
  sub_10010FC20(&unk_1011803F0, &qword_100EBA6C0);
  __chkstk_darwin();
  v116 = &v110 - v5;
  sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  __chkstk_darwin();
  v117 = &v110 - v6;
  v115 = type metadata accessor for PlaybackIntentDescriptor(0);
  v118 = *(v115 - 8);
  __chkstk_darwin();
  v113 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v7;
  __chkstk_darwin();
  v114 = &v110 - v8;
  v137 = type metadata accessor for GenericMusicItem();
  v136 = *(v137 - 8);
  __chkstk_darwin();
  v134 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v143 = *(v139 - 8);
  __chkstk_darwin();
  v135 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v138 = &v110 - v11;
  v133 = sub_10010FC20(&qword_10118D0B0, &qword_100EBD730);
  v132 = *(v133 - 8);
  __chkstk_darwin();
  v131 = &v110 - v12;
  v130 = sub_10010FC20(&unk_10118D0C0, &qword_100EC8DE0);
  v129 = *(v130 - 8);
  __chkstk_darwin();
  v128 = &v110 - v13;
  sub_10010FC20(&unk_1011A3860, &qword_100EC8DE8);
  __chkstk_darwin();
  v15 = &v110 - v14;
  v141 = sub_10010FC20(&unk_10118D0D0, &qword_100EC8DF0);
  v144 = *(v141 - 8);
  __chkstk_darwin();
  v140 = &v110 - v16;
  v17 = type metadata accessor for MusicMovie();
  v146 = *(v17 - 1);
  v147 = v17;
  __chkstk_darwin();
  v127 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v142 = &v110 - v19;
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  __chkstk_darwin();
  v120 = &v110 - v20;
  v125 = _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin();
  v126 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10010FC20(&qword_1011A3890, &qword_100EBD630);
  v123 = *(v124 - 8);
  __chkstk_darwin();
  v122 = &v110 - v22;
  v23 = sub_10010FC20(&qword_1011A3898, &qword_100EE3990);
  v121 = *(v23 - 8);
  __chkstk_darwin();
  v25 = &v110 - v24;
  sub_10010FC20(&qword_1011A3870, &qword_100EE3968);
  __chkstk_darwin();
  v27 = &v110 - v26;
  v28 = sub_10010FC20(&qword_1011A3878, &unk_100EE3970);
  v29 = *(v28 - 8);
  __chkstk_darwin();
  v31 = &v110 - v30;
  type metadata accessor for TVShow();
  __chkstk_darwin();
  v33 = &v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  if ((*(v2 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context) & 1) == 0)
  {
    v144 = (&v110 - v35);
    v145 = v36;
    v146 = v34;
    v147 = v2;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v27);

    v46 = sub_10010FC20(&qword_1011A3888, &unk_100EE3980);
    if ((*(*(v46 - 8) + 48))(v27, 1, v46) == 1)
    {
      v47 = &qword_1011A3870;
      v48 = &qword_100EE3968;
LABEL_8:
      sub_1000095E8(v27, v47, v48);
      return;
    }

    (*(v29 + 16))(v31, v27, v28);
    sub_1000095E8(v27, &qword_1011A3888, &unk_100EE3980);
    v82 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

    if (!v82)
    {
      (*(v29 + 8))(v31, v28);
      return;
    }

    v83 = MusicLibrarySectionedResponse.sections.getter();
    (*(v29 + 8))(v31, v28);
    v84 = IndexPath.section.getter();
    if ((v84 & 0x8000000000000000) == 0)
    {
      if (v84 < *(v83 + 16))
      {
        v85 = v121;
        (*(v121 + 16))(v25, v83 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v84, v23);

        v86 = v122;
        MusicLibrarySection.items.getter();
        (*(v85 + 8))(v25, v23);
        IndexPath.item.getter();
        v87 = v124;
        MusicItemCollection.subscript.getter();
        (*(v123 + 8))(v86, v87);
        v89 = v144;
        v88 = v145;
        v90 = v146;
        (*(v145 + 4))(v144, v33, v146);
        v91 = v126;
        (*(v88 + 2))(v126, v89, v90);
        swift_storeEnumTagMultiPayload();
        v92 = v147;
        v93 = [v147 traitCollection];
        sub_100217F14();
        UITraitCollection.subscript.getter();

        LOBYTE(v93) = sub_10049CB78();

        v94 = objc_allocWithZone(type metadata accessor for LibraryTVEpisodesViewController(0));
        v95 = sub_10061A47C(v91, v93 & 1);
        v96 = [v92 navigationController];
        if (v96)
        {
          v97 = v96;
          v98 = v120;
          UIViewController.traitOverrides.getter();
          v99 = type metadata accessor for UITraitOverrides();
          (*(*(v99 - 8) + 56))(v98, 0, 1, v99);
          UINavigationController.push(_:traitOverrides:animated:)(v95, v98, 1);

          sub_1000095E8(v98, &unk_10119F3A0, &qword_100EC7CD0);
          (*(v88 + 1))(v89, v90);
        }

        else
        {
          (*(v88 + 1))(v89, v90);
        }

        return;
      }

LABEL_29:
      __break(1u);
      return;
    }

    goto LABEL_27;
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v145 deselectItemAtIndexPath:isa animated:1];

  v38 = [v2 navigationItem];
  v39 = [v38 searchController];

  if (v39)
  {
    v40 = [v39 searchBar];

    [v40 resignFirstResponder];
  }

  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v15);

  v41 = sub_10010FC20(&qword_1011A3880, &unk_100EC8DF8);
  v42 = (*(*(v41 - 8) + 48))(v15, 1, v41);
  v43 = v146;
  v44 = v147;
  v45 = v144;
  if (v42 == 1)
  {
    sub_1000095E8(v15, &unk_1011A3860, &qword_100EC8DE8);
    return;
  }

  v50 = v140;
  v49 = v141;
  v144[2](v140, v15, v141);
  v51 = v15;
  v52 = v49;
  sub_1000095E8(v51, &qword_1011A3880, &unk_100EC8DF8);
  v53 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

  if (!v53)
  {
    (v45[1])(v50, v52);
    return;
  }

  v54 = MusicLibrarySectionedResponse.sections.getter();
  (v45[1])(v50, v52);
  v55 = IndexPath.section.getter();
  if ((v55 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v56 = v139;
  if (v55 >= *(v54 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v57 = v129;
  v58 = v128;
  v59 = v130;
  (*(v129 + 16))(v128, v54 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v55, v130);

  v60 = v131;
  MusicLibrarySection.items.getter();
  (*(v57 + 8))(v58, v59);
  IndexPath.item.getter();
  v61 = v127;
  v62 = v133;
  MusicItemCollection.subscript.getter();
  (*(v132 + 8))(v60, v62);
  v63 = v142;
  (*(v43 + 32))(v142, v61, v44);
  v64 = *(v43 + 16);
  v65 = v134;
  v64(v134, v63, v44);
  v66 = v136;
  v67 = v137;
  (*(v136 + 104))(v65, enum case for GenericMusicItem.musicMovie(_:), v137);
  v68 = v138;
  sub_100538C48(v65, v138);
  v69 = v65;
  v70 = v68;
  (*(v66 + 8))(v69, v67);
  v71 = v143;
  v72 = v135;
  (*(v143 + 104))(v135, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v56);
  LOBYTE(v67) = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v74 = *(v71 + 8);
  v73 = v71 + 8;
  v75 = v72;
  v76 = v74;
  v74(v75, v56);
  if (v67)
  {
    v148 = v76;
    v143 = v73;
    v77 = v56;
    v78 = v44;
    v79 = v116;
    v80 = v142;
    v64(v116, v142, v78);
    (*(v43 + 56))(v79, 0, 1, v78);
    v27 = v117;
    sub_1007C7688(v79, v117);
    sub_1000095E8(v79, &unk_1011803F0, &qword_100EBA6C0);
    v81 = v118;
    if ((*(v118 + 48))(v27, 1, v115) == 1)
    {
      v148(v70, v77);
      (*(v43 + 8))(v80, v78);
      v47 = &qword_1011848A0;
      v48 = &unk_100EC64F0;
      goto LABEL_8;
    }

    v145 = type metadata accessor for PlaybackIntentDescriptor;
    v103 = v114;
    sub_1007CD8EC(v27, v114, type metadata accessor for PlaybackIntentDescriptor);
    v104 = type metadata accessor for TaskPriority();
    v105 = v111;
    (*(*(v104 - 8) + 56))(v111, 1, 1, v104);
    v106 = v113;
    sub_1007CD954(v103, v113, type metadata accessor for PlaybackIntentDescriptor);
    type metadata accessor for MainActor();
    v107 = static MainActor.shared.getter();
    v108 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v109 = swift_allocObject();
    *(v109 + 16) = v107;
    *(v109 + 24) = &protocol witness table for MainActor;
    sub_1007CD8EC(v106, v109 + v108, v145);
    sub_1001F4F78(0, 0, v105, &unk_100ECA700, v109);

    sub_1007CD9CC(v103, type metadata accessor for PlaybackIntentDescriptor);
    v148(v70, v139);
    (*(v43 + 8))(v80, v78);
  }

  else
  {
    v100 = type metadata accessor for IndexPath();
    v101 = v119;
    (*(*(v100 - 8) + 56))(v119, 1, 1, v100);
    sub_100376F7C(v101, &v149);
    sub_1000095E8(v101, &unk_10118BCE0, &qword_100EC6450);
    v102 = v142;
    sub_100860C78(v70, v142, &v149);
    sub_10012BA6C(&v149);
    v76(v70, v56);
    (*(v43 + 8))(v102, v44);
  }
}

uint64_t sub_1007C7688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v35 = a2;
  sub_10010FC20(&unk_1011803F0, &qword_100EBA6C0);
  __chkstk_darwin();
  v32 = &v31 - v3;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v7 = &v31 - v6;
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v2;
  v12 = *(*&v2[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController] + 48);
  swift_beginAccess();
  v13 = v12[4];
  v40[2] = v12[3];
  v40[3] = v13;
  v14 = v12[6];
  v40[4] = v12[5];
  v40[5] = v14;
  v15 = v12[2];
  v40[0] = v12[1];
  v40[1] = v15;
  v16 = v34;
  sub_1001103E0(v40, &v37);
  sub_1001087C4(v16, v7);
  sub_100110418(v40);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &unk_10118CDB0, &unk_100EC0360);
    v17 = 1;
    v18 = v35;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    (*(v9 + 16))(v5, v11, v8);
    swift_storeEnumTagMultiPayload();
    v19 = v16;
    v20 = v32;
    sub_1000089F8(v19, v32, &unk_1011803F0, &qword_100EBA6C0);
    v21 = type metadata accessor for MusicMovie();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      sub_1000095E8(v20, &unk_1011803F0, &qword_100EBA6C0);
      v37 = 0u;
      v38 = 0u;
      v39 = 0;
    }

    else
    {
      *(&v38 + 1) = v21;
      v39 = sub_1007CDB28(&unk_10118AB60, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      v23 = sub_10001C8B8(&v37);
      (*(v22 + 32))(v23, v20, v21);
    }

    v24 = v33;
    v36[0] = v33;
    v25 = v33;
    v26 = String.init<A>(reflecting:)();
    v36[3] = &type metadata for Player.CommandIssuerIdentity;
    v36[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v36[0] = v26;
    v36[1] = v27;
    v28 = v25;
    v18 = v35;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, &v37, 3, 0, 0, 1, 0, 1, v35, v24, v36);
    (*(v9 + 8))(v11, v8);
    v17 = 0;
  }

  v29 = type metadata accessor for PlaybackIntentDescriptor(0);
  return (*(*(v29 - 8) + 56))(v18, v17, 1, v29);
}

unint64_t sub_1007C7C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v104 = a5;
  v7 = type metadata accessor for UUID();
  v113 = *(v7 - 8);
  __chkstk_darwin();
  v112 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v110 = v9;
  v111 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v116 = &v95 - v10;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v12 = &v95 - v11;
  v106 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v107 = v13;
  v108 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = &v95 - v14;
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v16 = &v95 - v15;
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v103 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = &v95 - v18;
  __chkstk_darwin();
  v20 = &v95 - v19;
  __chkstk_darwin();
  v22 = &v95 - v21;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v114 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v117 = &v95 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v26 = Strong;
  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100EBC6B0;
  sub_100008FE4(a3, v27 + 32);
  v28 = [v26 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v101 = v133[0];
  sub_1000089F8(a4, v16, &unk_10118CDB0, &unk_100EC0360);
  PlaybackIntentDescriptor.IntentType.init(_:)(v16, v22);
  memset(v133, 0, 40);
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v29 = qword_101218AD8;
  sub_1000089F8(v22, v20, &unk_1011838E0, &unk_100EC1670);
  v30 = v29;
  v31 = UIViewController.playActivityInformation.getter();
  v99 = v32;
  v100 = v31;
  v34 = v33;
  v98 = v35;
  sub_1000089F8(v133, &v125, &unk_101183910, &unk_100EBDD00);
  v102 = v7;
  v115 = v26;
  if (*(&v126 + 1))
  {
    sub_100059A8C(&v125, &v129);
  }

  else
  {
    *&v134 = v26;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v37 = v26;
    sub_10010FC20(&unk_101183920, &unk_100EC0330);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v137, &v129);
    }

    else
    {
      v139 = 0;
      v137 = 0u;
      v138 = 0u;
      *&v129 = v37;
      v38 = v37;
      v39 = String.init<A>(reflecting:)();
      v130 = &type metadata for Player.CommandIssuerIdentity;
      v131 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v129 = v39;
      *(&v129 + 1) = v40;
      if (*(&v138 + 1))
      {
        sub_1000095E8(&v137, &unk_101183910, &unk_100EBDD00);
      }
    }

    if (*(&v126 + 1))
    {
      sub_1000095E8(&v125, &unk_101183910, &unk_100EBDD00);
    }
  }

  v41 = v117;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v30, v20, v100, v99, v34, v98, &v129, v117);
  sub_1000095E8(v133, &unk_101183910, &unk_100EBDD00);
  sub_1000095E8(v22, &unk_1011838E0, &unk_100EC1670);
  v42 = type metadata accessor for Actions.PlaybackContext(0);
  v43 = *(v42 - 8);
  (*(v43 + 56))(v41, 0, 1, v42);
  v44 = type metadata accessor for PlaylistContext(0);
  (*(*(v44 - 8) + 56))(v118, 1, 1, v44);
  v45 = type metadata accessor for IndexPath();
  v46 = *(v45 - 8);
  (*(v46 + 16))(v12, v104, v45);
  (*(v46 + 56))(v12, 0, 1, v45);
  v47 = v115;
  sub_100376F7C(v12, v133);
  sub_1000095E8(v12, &unk_10118BCE0, &qword_100EC6450);
  v48 = v116;
  sub_1007C2FEC(v116);
  v49 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  sub_100008FE4(v27 + 32, v132);

  sub_1000089F8(v133, &v125, &unk_1011845E0, &unk_100EBF3A0);
  if (v128 == 1)
  {
    v139 = 0;
    v137 = 0u;
    v138 = 0u;
    v140 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v47, &v137, &v129);
    v50 = v114;
    if (v128 != 1)
    {
      sub_1000095E8(&v125, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v125, &v129);
    v50 = v114;
  }

  swift_getObjectType();
  v51 = swift_conformsToProtocol2();
  if (v51)
  {
    v99 = v51;
    v52 = v47;
    v100 = v47;
  }

  else
  {
    v99 = 0;
    v100 = 0;
  }

  v104 = swift_allocBox();
  v54 = v53;
  sub_1000089F8(v117, v50, &unk_10118AB20, &unk_100EBF390);
  v55 = *(v43 + 48);
  if (v55(v50, 1, v42) == 1)
  {
    v56 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v57 = v105;
    (*(*(v56 - 8) + 56))(v105, 1, 1, v56);
    v127 = 0;
    v125 = 0u;
    v126 = 0u;
    v58 = v57;
    v59 = v103;
    sub_1000089F8(v58, v103, &unk_1011838E0, &unk_100EC1670);
    v98 = v30;
    v60 = UIViewController.playActivityInformation.getter();
    v96 = v62;
    v97 = v61;
    v64 = v63;
    sub_1000089F8(&v125, &v123, &unk_101183910, &unk_100EBDD00);
    if (v124)
    {
      sub_100059A8C(&v123, &v134);
    }

    else
    {
      v122 = v47;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v65 = v47;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v119, &v134);
        v50 = v114;
      }

      else
      {
        v121 = 0;
        v119 = 0u;
        v120 = 0u;
        *&v134 = v65;
        v66 = v65;
        v67 = String.init<A>(reflecting:)();
        *(&v135 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v136 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v134 = v67;
        *(&v134 + 1) = v68;
        v50 = v114;
        if (*(&v120 + 1))
        {
          sub_1000095E8(&v119, &unk_101183910, &unk_100EBDD00);
        }
      }

      v47 = v115;
      v59 = v103;
      if (v124)
      {
        sub_1000095E8(&v123, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v98, v59, v60, v97, v96, v64, &v134, v54);
    sub_1000095E8(&v125, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v105, &unk_1011838E0, &unk_100EC1670);
    if (v55(v50, 1, v42) != 1)
    {
      sub_1000095E8(v50, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_1007CD8EC(v50, v54, type metadata accessor for Actions.PlaybackContext);
  }

  v69 = *(v42 + 28);
  sub_1000089F8(&v54[v69], &v134, &unk_101183910, &unk_100EBDD00);
  if (*(&v135 + 1))
  {
    sub_100059A8C(&v134, &v125);
  }

  else
  {
    *&v125 = v47;
    v70 = v47;
    v71 = String.init<A>(reflecting:)();
    *(&v126 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v127 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v125 = v71;
    *(&v125 + 1) = v72;
    if (*(&v135 + 1))
    {
      sub_1000095E8(&v134, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_100EBDC20;
  *(v73 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v73 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v73 + 32) = 0x4D747865746E6F43;
  *(v73 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v125, v73 + 72);
  v74 = static Player.CommandIssuer<>.combining(_:)(v73);
  v76 = v75;

  sub_10000959C(&v125);
  *(&v126 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v127 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v125 = v74;
  *(&v125 + 1) = v76;
  sub_10006B010(&v125, &v54[v69], &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v132, &v125);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v114 = String.init<A>(describing:)();
  v105 = v77;
  v103 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v132, &v123);
  sub_10012B7A8(&v129, &v125);
  v78 = v111;
  sub_1000089F8(v116, v111, &unk_1011838D0, &unk_100EC0320);
  v79 = v108;
  sub_1000089F8(v118, v108, &unk_1011845D0, &unk_100EBF380);
  v80 = (*(v109 + 80) + 160) & ~*(v109 + 80);
  v81 = (v110 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
  v83 = (*(v106 + 80) + v82 + 8) & ~*(v106 + 80);
  v110 = (v83 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = (v83 + v107 + 31) & 0xFFFFFFFFFFFFFFF8;
  v85 = swift_allocObject();
  sub_100059A8C(&v123, v85 + 16);
  *(v85 + 56) = v101;
  sub_10012B828(&v125, v85 + 64);
  sub_10003D17C(v78, v85 + v80, &unk_1011838D0, &unk_100EC0320);
  v86 = v104;
  *(v85 + v81) = v103;
  *(v85 + v82) = v86;
  sub_10003D17C(v79, v85 + v83, &unk_1011845D0, &unk_100EBF380);
  v87 = v85 + v110;
  v88 = v99;
  *v87 = v100;
  *(v87 + 8) = v88;
  *(v87 + 16) = 2;
  v89 = (v85 + v84);
  *v89 = variable initialization expression of Library.Context.playlistVariants;
  v89[1] = 0;
  swift_unknownObjectRetain();

  v90 = v112;
  UUID.init()();
  v91 = UUID.uuidString.getter();
  v93 = v92;
  (*(v113 + 8))(v90, v102);
  v141._countAndFlagsBits = v114;
  v141._object = v105;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v134, v141, v91, v93, sub_100217D28, v85);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v129);
  sub_10000959C(v132);

  v36 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v129 = v134;
  sub_100015BB0(&v129);
  v125 = v135;
  sub_100015BB0(&v125);

  sub_1000095E8(v116, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(v133, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v118, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v117, &unk_10118AB20, &unk_100EBF390);
  return v36;
}