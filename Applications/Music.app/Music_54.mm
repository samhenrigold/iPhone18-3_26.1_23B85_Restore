uint64_t sub_100601A30@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v53 = type metadata accessor for AccessibilityTraits();
  v52 = *(v53 - 8);
  __chkstk_darwin();
  v51 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for AccessibilityChildBehavior();
  v47 = *(v48 - 8);
  __chkstk_darwin();
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101198BE0, &qword_100ED7760);
  __chkstk_darwin();
  v6 = &v44 - v5;
  v7 = sub_10010FC20(&qword_101198BE8, &qword_100ED7768);
  __chkstk_darwin();
  v9 = &v44 - v8;
  v46 = sub_10010FC20(&qword_101198BF0, &qword_100ED7770);
  v10 = *(v46 - 8);
  __chkstk_darwin();
  v12 = &v44 - v11;
  v45 = sub_10010FC20(&qword_101198BF8, &qword_100ED7778);
  __chkstk_darwin();
  v14 = &v44 - v13;
  v50 = sub_10010FC20(&qword_101198C00, &qword_100ED7780);
  __chkstk_darwin();
  v49 = &v44 - v15;
  v54 = sub_10010FC20(&qword_101198C08, &qword_100ED7788);
  __chkstk_darwin();
  v55 = &v44 - v16;
  v17 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCallout];
  v18 = v1;
  if (sub_100602224(v19))
  {
    v20 = static VerticalAlignment.top.getter();
  }

  else
  {
    v20 = static VerticalAlignment.center.getter();
  }

  *v6 = v20;
  *(v6 + 1) = 0;
  v6[16] = 0;
  v21 = sub_10010FC20(&qword_101198C10, &qword_100ED7790);
  sub_1006024B0(v1, v17, &v6[*(v21 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v6, v9, &qword_101198BE0, &qword_100ED7760);
  v22 = &v9[*(v7 + 36)];
  v23 = v64;
  *(v22 + 4) = v63;
  *(v22 + 5) = v23;
  *(v22 + 6) = v65;
  v24 = v60;
  *v22 = v59;
  *(v22 + 1) = v24;
  v25 = v62;
  *(v22 + 2) = v61;
  *(v22 + 3) = v25;
  static AccessibilityChildBehavior.combine.getter();
  v26 = sub_100615C44();
  View.accessibilityElement(children:)();
  (*(v47 + 8))(v4, v48);
  sub_1000095E8(v9, &qword_101198BE8, &qword_100ED7768);
  v27 = v51;
  static AccessibilityTraits.isButton.getter();
  v57 = v7;
  v58 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v46;
  View.accessibilityAddTraits(_:)();
  (*(v52 + 8))(v27, v53);
  (*(v10 + 8))(v12, v28);
  v29 = AccessibilityIdentifier.libraryListCell.unsafeMutableAddressor();
  v30 = *v29;
  v31 = v29[1];
  v32 = v29[2];
  v33 = v29[3];
  v34 = sub_100615CFC();

  v35 = v49;
  View.accessibilityIdentifier(_:)(v30, v31, v32, v33, v45, v34);

  sub_1000095E8(v14, &qword_101198BF8, &qword_100ED7778);
  sub_10010FC20(&qword_10118F1F8, &unk_100ED76C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  v37 = _s8ListCellVMa(0);
  v38 = (v18 + *(v37 + 28));
  v39 = v38[1];
  *(inited + 32) = *v38;
  *(inited + 40) = v39;
  v40 = (v18 + *(v37 + 32));
  v41 = v40[1];
  *(inited + 48) = *v40;
  *(inited + 56) = v41;

  static Text.compact(_:)(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  swift_arrayDestroy();
  sub_100615DF4();
  v42 = v55;
  View.accessibilityInputLabels(_:)();

  sub_1000095E8(v35, &qword_101198C00, &qword_100ED7780);
  __chkstk_darwin();
  _s17ContextMenuButtonVMa(0);
  sub_100615550(&qword_101198C38, &qword_101198C08, &qword_100ED7788, sub_100615DF4);
  sub_10061465C(&qword_101198C40, _s17ContextMenuButtonVMa, &unk_100ED7CB8);
  View.accessibilityActions<A>(_:)();

  return sub_1000095E8(v42, &qword_101198C08, &qword_100ED7788);
}

uint64_t sub_100602224(__n128 a1)
{
  v17 = type metadata accessor for EnvironmentValues();
  v2 = *(v17 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  __chkstk_darwin();
  v6 = &v16 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s8ListCellVMa(0);
  sub_1000089F8(v1 + *(v11 + 56), v6, &qword_10118A610, &qword_100EBCDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    v12 = static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  v14 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

uint64_t sub_1006024B0@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v199 = a2;
  v196 = a3;
  v4 = _s17ContextMenuButtonVMa(0);
  v192 = *(v4 - 8);
  v193 = v4;
  __chkstk_darwin();
  v165 = (&v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_101198C48, &qword_100ED7798);
  __chkstk_darwin();
  v195 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v194 = &v156 - v7;
  v164 = _s27DownloadStatusIndicatorViewVMa(0);
  __chkstk_darwin();
  v161 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118F518, &unk_100ED77A0);
  __chkstk_darwin();
  v166 = &v156 - v9;
  v10 = type metadata accessor for MusicLibrary.DownloadStatus();
  v167 = *(v10 - 8);
  v168 = v10;
  __chkstk_darwin();
  v160 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_10010FC20(&qword_101198C50, &unk_100EDC330);
  __chkstk_darwin();
  v163 = &v156 - v12;
  sub_10010FC20(&qword_10118FE30, &qword_100ED77B0);
  __chkstk_darwin();
  v189 = &v156 - v13;
  v14 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v158 = *(v14 - 8);
  v159 = v14;
  __chkstk_darwin();
  v156 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v157 = &v156 - v16;
  sub_10010FC20(&qword_101198C58, &qword_100ED77B8);
  __chkstk_darwin();
  v191 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v201 = &v156 - v18;
  sub_10010FC20(&qword_101198C60, &qword_100ED77C0);
  __chkstk_darwin();
  v188 = (&v156 - v19);
  v186 = sub_10010FC20(&qword_101198C68, &qword_100ED77C8);
  __chkstk_darwin();
  v190 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v187 = &v156 - v21;
  __chkstk_darwin();
  v203 = &v156 - v22;
  v171 = sub_10010FC20(&qword_101186818, &unk_100ED77D0);
  v23 = *(v171 - 8);
  __chkstk_darwin();
  v25 = &v156 - v24;
  v26 = sub_10010FC20(&qword_101186908, &qword_100EC22D8);
  v27 = *(v26 - 8);
  v173 = v26;
  v174 = v27;
  __chkstk_darwin();
  v169 = &v156 - v28;
  v172 = sub_10010FC20(&qword_101198C70, &qword_100ED77E0) - 8;
  __chkstk_darwin();
  v170 = &v156 - v29;
  v175 = sub_10010FC20(&qword_101198C78, &qword_100ED77E8);
  __chkstk_darwin();
  v177 = &v156 - v30;
  v182 = sub_10010FC20(&qword_101198C80, &qword_100ED77F0);
  __chkstk_darwin();
  v181 = &v156 - v31;
  v185 = sub_10010FC20(&qword_101198C88, &qword_100ED77F8);
  v183 = *(v185 - 8);
  __chkstk_darwin();
  v180 = &v156 - v32;
  v178 = sub_10010FC20(&qword_101198C90, &qword_100ED7800);
  __chkstk_darwin();
  v184 = &v156 - v33;
  v176 = sub_10010FC20(&qword_101198C98, &qword_100ED7808);
  __chkstk_darwin();
  v200 = &v156 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v179 = &v156 - v35;
  __chkstk_darwin();
  v202 = &v156 - v36;
  v37 = _s8ListCellVMa(0);
  v38 = *(v37 + 20);
  v39 = *(v37 + 24);
  v197 = v37;
  v198 = a1;
  v40 = a1 + v38;
  v41 = *(a1 + v39);
  v42 = *(a1 + v39 + 8);
  v43 = *(a1 + v39 + 16);
  v44 = type metadata accessor for ArtworkImage.Info(0);
  v45 = v44[5];
  v46 = (v40 + v44[7]);
  v47 = *(v46 + 26);
  v48 = v46[1];
  v228 = *v46;
  v229[0] = v48;
  *(v229 + 10) = v47;
  static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)(v40, v41, v42, v43, 0, v40 + v45, &v228, v25);
  v49 = v40 + v44[8];
  v50 = *v49;
  v51 = *(v49 + 8);
  LOBYTE(v41) = *(v49 + 16);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v171;
  View.corner(_:)(v50, v51, v41, v171, OpaqueTypeConformance2);
  v54 = *(v23 + 8);
  v55 = v53;
  v54(v25, v53);
  v56 = Border.artwork.unsafeMutableAddressor();
  v57 = *v56;
  v58 = *(v56 + 1);
  LOBYTE(v25) = *(v56 + 16);

  *&v221 = v55;
  *(&v221 + 1) = OpaqueTypeConformance2;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v170;
  v61 = v25;
  v62 = v41;
  v63 = v173;
  v64 = v169;
  View.border(_:corner:)(v57, v61, v50, v51, v62, v173, v59, v58);

  (*(v174 + 8))(v64, v63);
  v65 = v40 + v44[6];
  v66 = *v65;
  LOBYTE(v65) = *(v65 + 8);
  v67 = v60 + *(v172 + 44);
  *v67 = v66;
  *(v67 + 8) = v65;
  *(v67 + 9) = 0;
  [v199 lineHeight];
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v68 = v177;
  sub_10003D17C(v60, v177, &qword_101198C70, &qword_100ED77E0);
  v69 = v175;
  v70 = (v68 + *(v175 + 36));
  v71 = v213;
  v70[4] = v212;
  v70[5] = v71;
  v70[6] = v214;
  v72 = v209;
  *v70 = v208;
  v70[1] = v72;
  v73 = v211;
  v70[2] = v210;
  v70[3] = v73;
  v74 = AccessibilityIdentifier.libraryListCellArtwork.unsafeMutableAddressor();
  v75 = *v74;
  v76 = v74[1];
  v77 = v74[2];
  v78 = v74[3];
  v79 = sub_100615E6C();

  v80 = v181;
  View.accessibilityIdentifier(_:)(v75, v76, v77, v78, v69, v79);

  sub_1000095E8(v68, &qword_101198C78, &qword_100ED77E8);
  *&v221 = 0xD000000000000019;
  *(&v221 + 1) = 0x8000000100E52630;
  sub_100615550(&qword_101198CB0, &qword_101198C80, &qword_100ED77F0, sub_100615E6C);
  v81 = v180;
  View.presentationSource<A>(id:)();
  sub_1000095E8(v80, &qword_101198C80, &qword_100ED77F0);
  LOBYTE(v75) = static Edge.Set.leading.getter();
  v82 = v198;
  EdgeInsets.init(_all:)();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v184;
  (*(v183 + 32))(v184, v81, v185);
  v92 = v91 + *(v178 + 36);
  *v92 = v75;
  *(v92 + 8) = v84;
  *(v92 + 16) = v86;
  *(v92 + 24) = v88;
  *(v92 + 32) = v90;
  *(v92 + 40) = 0;
  v93 = static Alignment.trailing.getter();
  v95 = v94;
  v96 = v179;
  v97 = &v179[*(v176 + 36)];
  sub_100603AC8(v82, v97);
  v98 = (v97 + *(sub_10010FC20(&qword_101198CB8, &qword_100ED7810) + 36));
  *v98 = v93;
  v98[1] = v95;
  sub_10003D17C(v91, v96, &qword_101198C90, &qword_100ED7800);
  v99 = v96;
  v100 = v202;
  sub_10003D17C(v99, v202, &qword_101198C98, &qword_100ED7808);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v184 = v217;
  v185 = v215;
  v182 = v220;
  v183 = v219;
  v207 = 1;
  v206 = v216;
  v205 = v218;
  v101 = static HorizontalAlignment.leading.getter();
  v102 = v188;
  *v188 = v101;
  v102[1] = 0;
  *(v102 + 16) = 0;
  v103 = sub_10010FC20(&qword_101198CC0, &qword_100ED7818);
  sub_100603DC4(v82, v199, v102 + *(v103 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v104 = v102;
  v105 = v187;
  sub_10003D17C(v104, v187, &qword_101198C60, &qword_100ED77C0);
  v106 = (v105 + *(v186 + 36));
  v107 = v226;
  v106[4] = v225;
  v106[5] = v107;
  v106[6] = v227;
  v108 = v222;
  *v106 = v221;
  v106[1] = v108;
  v109 = v224;
  v106[2] = v223;
  v106[3] = v109;
  v110 = sub_10003D17C(v105, v203, &qword_101198C68, &qword_100ED77C8);
  v111 = v197;
  v112 = v189;
  (*(**(v82 + *(v197 + 52) + 8) + 112))(v110);
  v113 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v114 = *(v113 - 8);
  v115 = v82;
  v116 = v100;
  if ((*(v114 + 48))(v112, 1, v113) == 1)
  {
    v117 = sub_1000095E8(v112, &qword_10118FE30, &qword_100ED77B0);
    v118 = v201;
    goto LABEL_8;
  }

  v119 = (*(v114 + 88))(v112, v113);
  v118 = v201;
  if (v119 != enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    v117 = (*(v114 + 8))(v112, v113);
    goto LABEL_8;
  }

  (*(v114 + 96))(v112, v113);
  v121 = v157;
  v120 = v158;
  v122 = v159;
  (*(v158 + 32))(v157, v112, v159);
  v123 = v156;
  (*(v120 + 104))(v156, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.userUploadRequired(_:), v122);
  v124 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
  v125 = *(v120 + 8);
  v125(v123, v122);
  if ((v124 & 1) == 0)
  {
    v117 = (v125)(v121, v122);
    v115 = v198;
LABEL_8:
    v127 = v166;
    (*(**(v115 + *(v111 + 48) + 8) + 112))(v117);
    v128 = v167;
    v129 = v168;
    if ((*(v167 + 48))(v127, 1, v168) == 1)
    {
      sub_1000095E8(v127, &qword_10118F518, &unk_100ED77A0);
      v126 = 1;
    }

    else
    {
      v130 = v160;
      (*(v128 + 32))(v160, v127, v129);
      v131 = v161;
      (*(v128 + 16))(v161, v130, v129);
      (*(v128 + 56))(v131, 0, 1, v129);
      v132 = v164;
      v204 = 0x4000000000000000;
      sub_100363C0C();
      ScaledMetric.init(wrappedValue:)();
      v204 = 0x3FF0000000000000;
      ScaledMetric.init(wrappedValue:)();
      *(v131 + *(v132 + 20)) = 0;
      sub_100616084(v131, v163, _s27DownloadStatusIndicatorViewVMa);
      swift_storeEnumTagMultiPayload();
      sub_1006160EC();
      sub_10061465C(&qword_101198CE0, _s27DownloadStatusIndicatorViewVMa, &unk_100ED7C18);
      _ConditionalContent<>.init(storage:)();
      v133 = v131;
      v111 = v197;
      sub_100615BE4(v133, _s27DownloadStatusIndicatorViewVMa);
      v134 = v130;
      v116 = v202;
      (*(v128 + 8))(v134, v129);
      v115 = v198;
      v126 = 0;
    }

    goto LABEL_11;
  }

  swift_storeEnumTagMultiPayload();
  sub_1006160EC();
  sub_10061465C(&qword_101198CE0, _s27DownloadStatusIndicatorViewVMa, &unk_100ED7C18);
  _ConditionalContent<>.init(storage:)();
  v125(v121, v122);
  v126 = 0;
  v115 = v198;
LABEL_11:
  v135 = sub_10010FC20(&qword_101198CC8, &qword_100ED7820);
  v136 = 1;
  (*(*(v135 - 8) + 56))(v118, v126, 1, v135);
  v137 = (v115 + *(v111 + 44));
  v138 = v193;
  if (*v137)
  {
    v139 = v137[1];
    v140 = v165;
    *v165 = *v137;
    *(v140 + 8) = v139;
    v204 = 0x4046000000000000;
    sub_100363C0C();

    ScaledMetric.init(wrappedValue:)();
    v204 = 0x403C000000000000;
    ScaledMetric.init(wrappedValue:)();
    v141 = v194;
    sub_10061601C(v140, v194, _s17ContextMenuButtonVMa);
    v136 = 0;
  }

  else
  {
    v141 = v194;
  }

  (*(v192 + 56))(v141, v136, 1, v138);
  v142 = v200;
  sub_1000089F8(v116, v200, &qword_101198C98, &qword_100ED7808);
  v143 = v207;
  v144 = v206;
  v145 = v205;
  v146 = v190;
  sub_1000089F8(v203, v190, &qword_101198C68, &qword_100ED77C8);
  v147 = v118;
  v148 = v191;
  sub_1000089F8(v147, v191, &qword_101198C58, &qword_100ED77B8);
  v149 = v195;
  sub_1000089F8(v141, v195, &qword_101198C48, &qword_100ED7798);
  v150 = v196;
  sub_1000089F8(v142, v196, &qword_101198C98, &qword_100ED7808);
  v151 = sub_10010FC20(&qword_101198CD0, &qword_100ED7828);
  v152 = v150 + v151[12];
  *v152 = 0;
  *(v152 + 8) = v143;
  v153 = v184;
  *(v152 + 16) = v185;
  *(v152 + 24) = v144;
  *(v152 + 32) = v153;
  *(v152 + 40) = v145;
  v154 = v182;
  *(v152 + 48) = v183;
  *(v152 + 56) = v154;
  sub_1000089F8(v146, v150 + v151[16], &qword_101198C68, &qword_100ED77C8);
  sub_1000089F8(v148, v150 + v151[20], &qword_101198C58, &qword_100ED77B8);
  sub_1000089F8(v149, v150 + v151[24], &qword_101198C48, &qword_100ED7798);
  sub_1000095E8(v141, &qword_101198C48, &qword_100ED7798);
  sub_1000095E8(v201, &qword_101198C58, &qword_100ED77B8);
  sub_1000095E8(v203, &qword_101198C68, &qword_100ED77C8);
  sub_1000095E8(v202, &qword_101198C98, &qword_100ED7808);
  sub_1000095E8(v149, &qword_101198C48, &qword_100ED7798);
  sub_1000095E8(v148, &qword_101198C58, &qword_100ED77B8);
  sub_1000095E8(v146, &qword_101198C68, &qword_100ED77C8);
  return sub_1000095E8(v200, &qword_101198C98, &qword_100ED7808);
}

uint64_t sub_100603AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s13FavoriteBadgeVMa(0);
  v21[0] = *(v8 - 8);
  __chkstk_darwin();
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v12 = v21 - v11;
  v13 = _s8ListCellVMa(0);
  if (*(a1 + *(v13 + 36)) == 1)
  {
    v14 = a1 + *(v13 + 20);
    v15 = v14 + *(type metadata accessor for ArtworkImage.Info(0) + 28);
    if (*(v15 + 8) == 1)
    {
      v16 = 0.0;
      v17 = 7.0;
      if (*(a1 + 40))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = *v15;
      v17 = 7.0;
      if (*(a1 + 40))
      {
LABEL_10:
        *v10 = v17 + v16;
        *(v10 + 8) = 0;
        v21[1] = 0x4020000000000000;
        (*(v5 + 104))(v7, enum case for Font.TextStyle.largeTitle(_:), v4);
        sub_100363C0C();
        ScaledMetric.init(wrappedValue:relativeTo:)();
        v20 = *(v8 + 24);
        *(v10 + v20) = swift_getKeyPath();
        sub_10010FC20(&qword_1011955D8, &unk_100ED37E0);
        swift_storeEnumTagMultiPayload();
        sub_10061601C(v10, v12, _s13FavoriteBadgeVMa);
        sub_10061601C(v12, a2, _s13FavoriteBadgeVMa);
        return (*(v21[0] + 56))(a2, 0, 1, v8);
      }
    }

    v17 = 0.0;
    goto LABEL_10;
  }

  v18 = *(v21[0] + 56);

  return v18(a2, 1, 1, v8);
}

uint64_t sub_100603DC4@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v126 = a2;
  v138 = a3;
  v119 = sub_10010FC20(&qword_101198CE8, &qword_100ED7830);
  __chkstk_darwin();
  v118 = v116 - v4;
  v5 = sub_10010FC20(&qword_101198CF0, &qword_100ED7838);
  v134 = *(v5 - 8);
  v135 = v5;
  __chkstk_darwin();
  v117 = v116 - v6;
  sub_10010FC20(&qword_101198CF8, &qword_100ED7840);
  __chkstk_darwin();
  v137 = v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v136 = v116 - v8;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v10 = v116 - v9;
  v11 = type metadata accessor for Text.Suffix();
  v122 = *(v11 - 8);
  v123 = v11;
  __chkstk_darwin();
  v121 = v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10010FC20(&qword_101198D00, &qword_100ED7848);
  __chkstk_darwin();
  v120 = v116 - v13;
  v14 = sub_10010FC20(&qword_101198D08, &qword_100ED7850);
  v128 = *(v14 - 8);
  v129 = v14;
  __chkstk_darwin();
  v127 = v116 - v15;
  v125 = sub_10010FC20(&qword_101198D10, &qword_100ED7858);
  __chkstk_darwin();
  v130 = v116 - v16;
  v131 = sub_10010FC20(&qword_101198D18, &qword_100ED7860);
  __chkstk_darwin();
  v132 = v116 - v17;
  sub_10010FC20(&qword_101198D20, &qword_100ED7868);
  __chkstk_darwin();
  v133 = v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v141 = v116 - v19;
  v20 = _s8ListCellVMa(0);
  v21 = *(v20 + 28);
  v22 = v20;
  v139 = a1;
  v140 = v20;
  v23 = a1;
  v24 = (a1 + v21);
  v25 = v24[1];
  *&v154 = *v24;
  *(&v154 + 1) = v25;
  v26 = sub_100009838();

  v116[1] = v26;
  v27 = Text.init<A>(_:)();
  v29 = v28;
  *&v154 = v27;
  *(&v154 + 1) = v28;
  v31 = v30 & 1;
  LOBYTE(v155) = v30 & 1;
  *(&v155 + 1) = v32;
  sub_1000089F8(v23 + *(v22 + 40), v10, &unk_10118D2F0, &unk_100EBCE10);
  v33 = TextBadge.init(for:isPlayable:)(v10, 1);
  v34 = TextBadge.view.getter(v33);
  v36 = v35;
  v38 = v37;
  v39 = v121;
  static Text.Suffix.alwaysVisible(_:)();
  v40 = v38 & 1;
  v41 = v120;
  sub_10011895C(v34, v36, v40);

  View.textSuffix(_:)();
  (*(v122 + 8))(v39, v123);
  v42 = v31;
  v43 = v139;
  sub_10011895C(v27, v29, v42);

  v44 = v126;
  v45 = Font.init(_:)();
  KeyPath = swift_getKeyPath();
  v47 = (v41 + *(sub_10010FC20(&qword_101187818, &unk_100ED7870) + 36));
  *v47 = KeyPath;
  v47[1] = v45;
  sub_100616140(v43, &v154);
  sub_10000954C(&v154, *(&v155 + 1));
  v48 = __chkstk_darwin();
  (*(v50 + 16))(v116 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), v48);
  sub_10000959C(&v154);
  v51 = v124;
  *(v41 + *(v51 + 36)) = AnyShapeStyle.init<A>(_:)();
  [v44 lineHeight];
  [v44 leading];
  v52 = v43 + *(v140 + 20);
  v126 = (v52 + *(type metadata accessor for ArtworkImage.Info(0) + 28));
  sub_100616178();
  v53 = v127;
  View.bodyHeadOutdent(_:)();
  sub_1000095E8(v41, &qword_101198D00, &qword_100ED7848);
  v54 = swift_getKeyPath();
  v55 = v130;
  v56.n128_f64[0] = (*(v128 + 32))(v130, v53, v129);
  v57 = v55 + *(v125 + 36);
  *v57 = v54;
  *(v57 + 8) = 2;
  *(v57 + 16) = 0;
  sub_100602224(v56);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v58 = v132;
  sub_10003D17C(v55, v132, &qword_101198D10, &qword_100ED7858);
  v59 = v131;
  v60 = (v58 + *(v131 + 36));
  v61 = v159;
  v60[4] = v158;
  v60[5] = v61;
  v60[6] = v160;
  v62 = v155;
  *v60 = v154;
  v60[1] = v62;
  v63 = v157;
  v60[2] = v156;
  v60[3] = v63;
  v64 = AccessibilityIdentifier.libraryListCellTitle.unsafeMutableAddressor();
  v65 = *v64;
  v66 = v64[1];
  v67 = v64[2];
  v68 = v64[3];
  v69 = sub_100616318();

  View.accessibilityIdentifier(_:)(v65, v66, v67, v68, v59, v69);

  sub_1000095E8(v58, &qword_101198D18, &qword_100ED7860);
  v70 = (v43 + *(v140 + 32));
  v71 = v70[1];
  if (v71)
  {
    v132 = *v70;
    *&v149[0] = v132;
    *(&v149[0] + 1) = v71;
    v140 = v71;

    v72 = Text.init<A>(_:)();
    v74 = v73;
    v76 = v75;
    v77 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
    Font.init(_:)();
    v78 = Text.font(_:)();
    v80 = v79;
    v82 = v81;

    sub_10011895C(v72, v74, v76 & 1);

    LODWORD(v149[0]) = static HierarchicalShapeStyle.secondary.getter();
    v83 = Text.foregroundStyle<A>(_:)();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    sub_10011895C(v78, v80, v82 & 1);

    LOBYTE(v78) = static Edge.Set.leading.getter();
    sub_100602224(v90);
    EdgeInsets.init(_all:)();
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v152 = v87 & 1;
    v151 = 0;
    v99 = swift_getKeyPath();
    v153 = 0;
    *&v142 = v83;
    *(&v142 + 1) = v85;
    LOBYTE(v143) = v87 & 1;
    *(&v143 + 1) = v89;
    LOBYTE(v144) = v78;
    *(&v144 + 1) = v92;
    *&v145 = v94;
    *(&v145 + 1) = v96;
    *&v146 = v98;
    BYTE8(v146) = 0;
    *&v147 = v99;
    *(&v147 + 1) = 1;
    v148 = 0;
    v100 = AccessibilityIdentifier.libraryListCellSubtitle.unsafeMutableAddressor();
    v101 = *v100;
    v102 = v100[1];
    v103 = v100[2];
    v104 = v100[3];

    v105 = sub_10010FC20(&qword_101198D50, &qword_100ED7888);
    v106 = sub_100616498();
    v107 = v118;
    View.accessibilityIdentifier(_:)(v101, v102, v103, v104, v105, v106);

    v149[4] = v146;
    v149[5] = v147;
    v150 = v148;
    v149[0] = v142;
    v149[1] = v143;
    v149[2] = v144;
    v149[3] = v145;
    sub_1000095E8(v149, &qword_101198D50, &qword_100ED7888);
    sub_100615550(&qword_101198D60, &qword_101198CE8, &qword_100ED7830, sub_100616498);
    v108 = v117;
    View.accessibilityHidden(_:)();
    sub_1000095E8(v107, &qword_101198CE8, &qword_100ED7830);
    v109 = v136;
    sub_10003D17C(v108, v136, &qword_101198CF0, &qword_100ED7838);
    (*(v134 + 56))(v109, 0, 1, v135);
  }

  else
  {
    v109 = v136;
    (*(v134 + 56))(v136, 1, 1, v135);
  }

  v110 = v141;
  v111 = v133;
  sub_1000089F8(v141, v133, &qword_101198D20, &qword_100ED7868);
  v112 = v137;
  sub_1000089F8(v109, v137, &qword_101198CF8, &qword_100ED7840);
  v113 = v138;
  sub_1000089F8(v111, v138, &qword_101198D20, &qword_100ED7868);
  v114 = sub_10010FC20(&qword_101198D48, &qword_100ED7880);
  sub_1000089F8(v112, v113 + *(v114 + 48), &qword_101198CF8, &qword_100ED7840);
  sub_1000095E8(v109, &qword_101198CF8, &qword_100ED7840);
  sub_1000095E8(v110, &qword_101198D20, &qword_100ED7868);
  sub_1000095E8(v112, &qword_101198CF8, &qword_100ED7840);
  return sub_1000095E8(v111, &qword_101198D20, &qword_100ED7868);
}

uint64_t sub_100604B28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(_s8ListCellVMa(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  _s17ContextMenuButtonVMa(0);
  sub_100112878(v4, v5);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();
  return ScaledMetric.init(wrappedValue:)();
}

uint64_t sub_100604BE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v105 = *(v3 - 8);
  v106 = v3;
  __chkstk_darwin();
  v104 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v101 = *(v5 - 8);
  v102 = v5;
  __chkstk_darwin();
  v100 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001109D0(&qword_101198E18, &qword_100ED7990);
  v107 = a1;
  v8 = a1[2];
  v9 = a1[3];
  v109 = v7;
  v110 = v9;
  v98 = a1[4];
  v99 = v8;
  _s9TrackCellV13TrailingIconsVMa(255, v8, v9, v98);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_101184C80, &qword_100EC0810);
  sub_1001109D0(&qword_101198E20, &qword_100ED7998);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v97 = type metadata accessor for VStack();
  v95 = type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_101198E28, &qword_100ED79A0);
  swift_getTupleTypeMetadata3();
  v96 = type metadata accessor for TupleView();
  sub_1001109D0(&qword_101198E30, &qword_100ED79A8);
  sub_1001109D0(&qword_101198E38, &qword_100ED79B0);
  sub_1001109D0(&qword_101198E40, &qword_100ED79B8);
  sub_1001109D0(&qword_101198E48, &unk_100ED79C0);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  sub_100020674(&qword_101198E50, &qword_101198E30, &qword_100ED79A8, &protocol conformance descriptor for _LayoutRoot<A>);
  type metadata accessor for _VariadicView.Tree();
  sub_1001109D0(&unk_10119A2E0, &qword_100ED53A0);
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_101198C48, &qword_100ED7798);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  v82 = type metadata accessor for _ConditionalContent();
  v10 = type metadata accessor for Group();
  v96 = *(v10 - 8);
  __chkstk_darwin();
  v90 = v71 - v11;
  WitnessTable = swift_getWitnessTable();
  v135 = &protocol witness table for _FlexFrameLayout;
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v132 = v12;
  v133 = v13;
  v81 = swift_getWitnessTable();
  v131 = v81;
  v14 = swift_getWitnessTable();
  v123 = v10;
  v124 = v14;
  v15 = v14;
  v71[1] = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v17 = v71 - v16;
  type metadata accessor for AccessibilityAttachmentModifier();
  v18 = type metadata accessor for ModifiedContent();
  v87 = *(v18 - 8);
  __chkstk_darwin();
  v78 = v71 - v19;
  v75 = v18;
  v20 = type metadata accessor for ModifiedContent();
  v89 = *(v20 - 8);
  __chkstk_darwin();
  v79 = v71 - v21;
  v22 = _s17ContextMenuButtonVMa(255);
  v73 = v22;
  v123 = v10;
  v124 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71[2] = OpaqueTypeConformance2;
  v24 = sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v129 = OpaqueTypeConformance2;
  v130 = v24;
  v74 = swift_getWitnessTable();
  v127 = v74;
  v128 = v24;
  v97 = v24;
  v25 = v20;
  v109 = v20;
  v26 = swift_getWitnessTable();
  v77 = v26;
  v76 = sub_10061465C(&qword_101198C40, _s17ContextMenuButtonVMa, &unk_100ED7CB8);
  v123 = v25;
  v124 = v22;
  v125 = v26;
  v126 = v76;
  v85 = &opaque type descriptor for <<opaque return type of View.accessibilityActions<A>(_:)>>;
  v83 = swift_getOpaqueTypeMetadata2();
  v88 = *(v83 - 8);
  __chkstk_darwin();
  v72 = v71 - v27;
  v28 = type metadata accessor for ModifiedContent();
  v93 = *(v28 - 8);
  __chkstk_darwin();
  v71[0] = v71 - v29;
  sub_1001109D0(&unk_101184E90, &unk_100EC0AA0);
  v94 = v28;
  v86 = type metadata accessor for ModifiedContent();
  v95 = *(v86 - 8);
  __chkstk_darwin();
  v91 = v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = v71 - v31;
  v32 = v98;
  v33 = v99;
  v115 = v99;
  v116 = v110;
  v34 = v103;
  v117 = v98;
  v118 = v103;
  v35 = v90;
  Group<A>.init(content:)();
  v36 = v100;
  static AccessibilityChildBehavior.combine.getter();
  View.accessibilityElement(children:)();
  (*(v101 + 8))(v36, v102);
  (*(v96 + 8))(v35, v10);
  v37 = v104;
  static AccessibilityTraits.isButton.getter();
  v38 = v78;
  v39 = OpaqueTypeMetadata2;
  View.accessibilityAddTraits(_:)();
  (*(v105 + 8))(v37, v106);
  (*(v84 + 8))(v17, v39);
  v40 = AccessibilityIdentifier.libraryTrackCell.unsafeMutableAddressor();
  v41 = *v40;
  v42 = v40[1];
  v44 = v40[2];
  v43 = v40[3];

  v45 = v79;
  v46 = v44;
  v47 = v75;
  View.accessibilityIdentifier(_:)(v41, v42, v46, v43, v75, v74);

  (*(v87 + 8))(v38, v47);
  v111 = v33;
  v112 = v110;
  v113 = v32;
  v114 = v34;
  v48 = swift_checkMetadataState();
  v49 = v72;
  v50 = v109;
  v52 = v76;
  v51 = v77;
  View.accessibilityActions<A>(_:)();
  (*(v89 + 8))(v45, v50);
  sub_10010FC20(&qword_10118F1F8, &unk_100ED76C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  v54 = v107;
  v55 = (v34 + *(v107 + 11));
  v56 = v55[1];
  *(inited + 32) = *v55;
  *(inited + 40) = v56;
  v57 = (v34 + *(v54 + 12));
  v58 = v57[1];
  *(inited + 48) = *v57;
  *(inited + 56) = v58;

  static Text.compact(_:)(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  swift_arrayDestroy();
  v123 = v109;
  v124 = v48;
  v125 = v51;
  v126 = v52;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v71[0];
  v61 = v83;
  View.accessibilityInputLabels(_:)();

  (*(v88 + 8))(v49, v61);
  if (*(v34 + *(v54 + 17)) == 1)
  {
    v62 = *HI.Color.prominentTextColor.unsafeMutableAddressor();
    Color.init(_:)();
  }

  v121 = v59;
  v122 = v97;
  v63 = v94;
  v64 = swift_getWitnessTable();
  v65 = v91;
  View.foregroundColor(_:)();

  (*(v93 + 8))(v60, v63);
  v66 = sub_100020674(&unk_1011914C0, &unk_101184E90, &unk_100EC0AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v119 = v64;
  v120 = v66;
  v67 = v86;
  swift_getWitnessTable();
  v68 = v92;
  sub_100663950();
  v69 = *(v95 + 8);
  v69(v65, v67);
  sub_100663950();
  return (v69)(v68, v67);
}

uint64_t sub_100605A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v294 = a4;
  v293 = a3;
  v292 = a2;
  v296 = a1;
  v285 = a5;
  v288 = sub_1001109D0(&qword_101198E18, &qword_100ED7990);
  sub_1001109D0(&qword_101198E28, &qword_100ED79A0);
  _s9TrackCellV13TrailingIconsVMa(255, a2, a3, a4);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  sub_1001109D0(&qword_101198E30, &qword_100ED79A8);
  sub_1001109D0(&qword_101198E38, &qword_100ED79B0);
  sub_1001109D0(&qword_101198E40, &qword_100ED79B8);
  sub_1001109D0(&qword_101198E48, &unk_100ED79C0);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  sub_100020674(&qword_101198E50, &qword_101198E30, &qword_100ED79A8, &protocol conformance descriptor for _LayoutRoot<A>);
  type metadata accessor for _VariadicView.Tree();
  sub_1001109D0(&unk_10119A2E0, &qword_100ED53A0);
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_101198C48, &qword_100ED7798);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  v252 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for HStack();
  v255 = *(v8 - 8);
  __chkstk_darwin();
  v254 = v235 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v253 = v235 - v10;
  v245 = type metadata accessor for Text.Suffix();
  v243 = *(v245 - 8);
  __chkstk_darwin();
  v241 = v235 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_10010FC20(&qword_101189260, &qword_100EC4DB0);
  v247 = *(v248 - 8);
  __chkstk_darwin();
  v244 = v235 - v12;
  v242 = sub_10010FC20(&qword_101198B50, &qword_100EDE3F0);
  __chkstk_darwin();
  v246 = v235 - v13;
  v249 = sub_10010FC20(&qword_101198E58, &qword_100ED79D0);
  __chkstk_darwin();
  v250 = v235 - v14;
  sub_10010FC20(&qword_101198E60, &qword_100ED79D8);
  __chkstk_darwin();
  v279 = v235 - v15;
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_101184C80, &qword_100EC0810);
  sub_1001109D0(&qword_101198E20, &qword_100ED7998);
  swift_getTupleTypeMetadata3();
  v16 = type metadata accessor for TupleView();
  v17 = swift_getWitnessTable();
  v235[2] = v16;
  v235[1] = v17;
  v237 = *(type metadata accessor for VStack() - 8);
  __chkstk_darwin();
  v236 = v235 - v18;
  v283 = v19;
  v240 = *(type metadata accessor for ModifiedContent() - 8);
  __chkstk_darwin();
  v239 = v235 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v238 = v235 - v21;
  v280 = v22;
  v284 = v8;
  v282 = type metadata accessor for _ConditionalContent();
  v281 = *(v282 - 8);
  __chkstk_darwin();
  v289 = v235 - v23;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v286 = v235 - v24;
  __chkstk_darwin();
  v287 = v235 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v291 = v235 - v26;
  v259 = type metadata accessor for WaveformState();
  v27 = *(v259 - 8);
  __chkstk_darwin();
  v276 = v235 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_10010FC20(&qword_101198E68, &qword_100ED79E0);
  __chkstk_darwin();
  v275 = v235 - v29;
  sub_10010FC20(&qword_101188100, &qword_100EC37B0);
  __chkstk_darwin();
  v31 = v235 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v258 = v235 - v32;
  v33 = type metadata accessor for ArtworkImage.ReusePolicy();
  v34 = *(v33 - 8);
  __chkstk_darwin();
  v36 = v235 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_10010FC20(&unk_1011A1400, &unk_100ECAD80);
  v260 = *(v261 - 8);
  __chkstk_darwin();
  v38 = v235 - v37;
  v266 = sub_10010FC20(&qword_101198E70, &qword_100ED79E8);
  __chkstk_darwin();
  v40 = v235 - v39;
  v270 = sub_10010FC20(&qword_101198E78, &qword_100ED79F0);
  v268 = *(v270 - 8);
  __chkstk_darwin();
  v263 = v235 - v41;
  v267 = sub_10010FC20(&qword_101198E80, &qword_100ED79F8);
  v264 = *(v267 - 8);
  __chkstk_darwin();
  v262 = v235 - v42;
  v269 = sub_10010FC20(&qword_101198E88, &qword_100ED7A00);
  __chkstk_darwin();
  v265 = v235 - v43;
  v273 = sub_10010FC20(&qword_101198E90, &qword_100ED7A08);
  __chkstk_darwin();
  v274 = v235 - v44;
  sub_10010FC20(&qword_101198E98, &qword_100ED7A10);
  __chkstk_darwin();
  v278 = (v235 - v45);
  v271 = sub_10010FC20(&qword_101198EA0, &qword_100ED7A18);
  __chkstk_darwin();
  v277 = v235 - v46;
  __chkstk_darwin();
  v290 = v235 - v47;
  v257 = type metadata accessor for ArtworkImage.Info(0);
  v48 = *(v257 + 20);
  v49 = _s9TrackCellVMa(0, v292, v293, v294);
  v50 = v296;
  v51 = sub_100607C08(&v305);
  (*(v34 + 104))(v36, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v33, v51);
  v52 = v50 + v48;
  v53 = v38;
  v54 = static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v50, v52, &v305, v36, v38);
  (*(v34 + 8))(v36, v33, v54);
  v295 = v49;
  v55 = *(v50 + *(v49 + 80));
  v256 = v55;
  if (v55)
  {
    swift_getKeyPath();
    *&v306 = v55;
    sub_10061465C(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken, &unk_100EC377C);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v56 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
    swift_beginAccess();
    v57 = v55 + v56;
    v58 = v258;
    sub_1000089F8(v57, v258, &qword_101188100, &qword_100EC37B0);
    v59 = v259;
  }

  else
  {
    v58 = v258;
    v59 = v259;
    (*(v27 + 56))(v258, 1, 1, v259);
  }

  sub_1000089F8(v58, v31, &qword_101188100, &qword_100EC37B0);
  v60 = *(v27 + 48);
  v61 = v60(v31, 1, v59);
  v62 = v276;
  if (v61 == 1)
  {
    (*(v27 + 104))(v276, enum case for WaveformState.hidden(_:), v59);
    if (v60(v31, 1, v59) != 1)
    {
      sub_1000095E8(v31, &qword_101188100, &qword_100EC37B0);
    }
  }

  else
  {
    (*(v27 + 32))(v276, v31, v59);
  }

  static Color.black.getter();
  v63 = Color.opacity(_:)();

  sub_1000095E8(v58, &qword_101188100, &qword_100EC37B0);
  v64 = v275;
  *(v275 + *(v272 + 36)) = v63;
  (*(v27 + 32))(v64, v62, v59);
  (*(v260 + 32))(v40, v53, v261);
  v65 = v266;
  sub_10003D17C(v64, &v40[*(v266 + 36)], &qword_101198E68, &qword_100ED79E0);
  v66 = v257;
  v67 = v296;
  v68 = v296 + *(v257 + 32);
  v69 = *v68;
  v70 = *(v68 + 8);
  v71 = *(v68 + 16);
  v72 = sub_100616954();
  v73 = v263;
  View.corner(_:)(v69, v70, v71, v65, v72);
  sub_1000095E8(v40, &qword_101198E70, &qword_100ED79E8);
  v74 = Border.artwork.unsafeMutableAddressor();
  v75 = *v74;
  v76 = *(v74 + 1);
  LOBYTE(v64) = *(v74 + 16);

  *&v306 = v65;
  *(&v306 + 1) = v72;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v78 = v262;
  v79 = v69;
  v80 = v270;
  View.border(_:corner:)(v75, v64, v79, v70, v71, v270, OpaqueTypeConformance2, v76);

  (*(v268 + 8))(v73, v80);
  v81 = v67 + *(v66 + 24);
  v82 = *v81;
  LOBYTE(v80) = *(v81 + 8);
  v83 = v265;
  (*(v264 + 32))(v265, v78, v267);
  v84 = v269;
  v85 = v83 + *(v269 + 36);
  *v85 = v82;
  *(v85 + 8) = v80;
  *(v85 + 9) = 0;
  v86 = AccessibilityIdentifier.libraryTrackCellArtwork.unsafeMutableAddressor();
  v87 = *v86;
  v88 = v86[1];
  v89 = v86[2];
  v90 = v86[3];
  v91 = sub_100616A24();

  v92 = v274;
  View.accessibilityIdentifier(_:)(v87, v88, v89, v90, v84, v91);

  sub_1000095E8(v83, &qword_101198E88, &qword_100ED7A00);
  v93 = v256;
  if (v256)
  {
    v93 = sub_1002743BC();
    v95 = v94;
  }

  else
  {
    v95 = 0;
  }

  v96 = v290;
  v97 = sub_100616B30();
  v98 = v278;
  View.accessibilityLabel(_:)(v93, v95, v273, v97);

  sub_1000095E8(v92, &qword_101198E90, &qword_100ED7A08);
  v99 = static Alignment.trailing.getter();
  v101 = v100;
  v102 = v277;
  v103 = &v277[*(v271 + 36)];
  v104 = v296;
  sub_100607CE4(v296, v292, v293, v294, v103);
  v105 = (v103 + *(sub_10010FC20(&qword_101198CB8, &qword_100ED7810) + 36));
  *v105 = v99;
  v105[1] = v101;
  sub_10003D17C(v98, v102, &qword_101198E98, &qword_100ED7A10);
  LOBYTE(v99) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  sub_10003D17C(v102, v96, &qword_101198EA0, &qword_100ED7A18);
  v114 = v96 + *(v288 + 36);
  *v114 = v99;
  *(v114 + 8) = v107;
  *(v114 + 16) = v109;
  *(v114 + 24) = v111;
  *(v114 + 32) = v113;
  *(v114 + 40) = 0;
  v115 = v295;
  v116 = (v104 + *(v295 + 44));
  v117 = v116[1];
  v274 = *v116;
  *&v306 = v274;
  *(&v306 + 1) = v117;
  v118 = sub_100009838();
  v276 = v117;

  v288 = v118;
  v119 = Text.init<A>(_:)();
  v121 = v120;
  LODWORD(v277) = v122;
  v275 = *(v115 + 64);
  v123 = v286;
  sub_1000089F8(v104 + v275, v286, &unk_10118D2F0, &unk_100EBCE10);
  v124 = sub_100607F84(v115);
  v125 = TextBadge.init(for:isPlayable:)(v123, v124 & 1);
  v126 = TextBadge.view.getter(v125);
  v128 = v127;
  v130 = v129;
  v131 = static Text.+ infix(_:_:)();
  v133 = v132;
  LOBYTE(v104) = v134;
  v278 = v135;
  sub_10011895C(v126, v128, v130 & 1);

  sub_10011895C(v119, v121, v277 & 1);

  static Font.callout.getter();
  v136 = Text.font(_:)();
  v138 = v137;
  v140 = v139;

  sub_10011895C(v131, v133, v104 & 1);

  if (sub_100607F84(v295))
  {
    v141 = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    v141 = static HierarchicalShapeStyle.tertiary.getter();
  }

  LODWORD(v306) = v141;
  v142 = Text.foregroundStyle<A>(_:)();
  v143 = v138;
  v145 = v144;
  v147 = v146;
  v149 = v148;
  sub_10011895C(v136, v143, v140 & 1);

  *&v306 = v142;
  *(&v306 + 1) = v145;
  LOBYTE(v307) = v147 & 1;
  *(&v307 + 1) = v149;
  v150 = AccessibilityIdentifier.libraryTrackCellTitle.unsafeMutableAddressor();
  v151 = *v150;
  v152 = v150[1];
  v153 = v150[2];
  v154 = v150[3];
  v278 = v150;

  View.accessibilityIdentifier(_:)(v151, v152, v153, v154, &type metadata for Text, &protocol witness table for Text);

  sub_10011895C(v142, v145, v147 & 1);

  v155 = v295;
  v156 = (v296 + *(v295 + 48));
  v157 = v156[1];
  if (v157)
  {
    v158 = *v156;
    v159 = v157;
  }

  else
  {
    v158 = 0;
    v159 = 0xE000000000000000;
  }

  *&v306 = v158;
  *(&v306 + 1) = v159;

  v160 = Text.init<A>(_:)();
  v162 = v161;
  v164 = v163;
  if (sub_100607F84(v155))
  {
    v165 = static HierarchicalShapeStyle.secondary.getter();
  }

  else
  {
    v165 = static HierarchicalShapeStyle.tertiary.getter();
  }

  LODWORD(v306) = v165;
  v166 = Text.foregroundStyle<A>(_:)();
  v168 = v167;
  v170 = v169;
  v172 = v171;
  sub_10011895C(v160, v162, v164 & 1);

  *&v306 = v166;
  *(&v306 + 1) = v168;
  LOBYTE(v307) = v170 & 1;
  *(&v307 + 1) = v172;
  v173 = AccessibilityIdentifier.libraryTrackCellSubtitle.unsafeMutableAddressor();
  v174 = *v173;
  v175 = v173[1];
  v176 = v173[2];
  v177 = v173[3];

  v178 = v287;
  View.accessibilityIdentifier(_:)(v174, v175, v176, v177, &type metadata for Text, &protocol witness table for Text);

  sub_10011895C(v166, v168, v170 & 1);

  v179 = v295;
  v180 = v296;
  if (sub_100608118())
  {
    static HorizontalAlignment.leading.getter();
    __chkstk_darwin();
    v181 = v291;
    v182 = v236;
    VStack.init(alignment:spacing:content:)();
    static Alignment.leading.getter();
    v233 = v283;
    v234 = swift_getWitnessTable();
    v183 = v239;
    View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v237 + 8))(v182, v233);
    v297 = v234;
    v298 = &protocol witness table for _FlexFrameLayout;
    v184 = v280;
    v185 = swift_getWitnessTable();
    v186 = v238;
    sub_100663950();
    v187 = *(v240 + 8);
    v187(v183, v184);
    sub_100663950();
    v188 = v284;
    v189 = swift_getWitnessTable();
    sub_100653878(v183, v184, v188, v185, v189);
    v190 = v183;
    v191 = v290;
    v187(v190, v184);
    v187(v186, v184);
    v192 = v178;
  }

  else
  {
    *&v306 = v274;
    *(&v306 + 1) = v276;

    v193 = Text.init<A>(_:)();
    v195 = v194;
    *&v306 = v193;
    *(&v306 + 1) = v194;
    v197 = v196 & 1;
    LOBYTE(v307) = v196 & 1;
    *(&v307 + 1) = v198;
    v199 = v286;
    sub_1000089F8(v180 + v275, v286, &unk_10118D2F0, &unk_100EBCE10);
    v200 = sub_100607F84(v179);
    v201 = TextBadge.init(for:isPlayable:)(v199, v200 & 1);
    v202 = TextBadge.view.getter(v201);
    v204 = v203;
    v206 = v205;
    v207 = v241;
    static Text.Suffix.alwaysVisible(_:)();
    sub_10011895C(v202, v204, v206 & 1);

    v208 = v244;
    View.textSuffix(_:)();
    (*(v243 + 8))(v207, v245);
    sub_10011895C(v193, v195, v197);

    if (sub_100607F84(v179))
    {
      v209 = static HierarchicalShapeStyle.primary.getter();
    }

    else
    {
      v209 = static HierarchicalShapeStyle.tertiary.getter();
    }

    v210 = v209;
    v211 = v280;
    v212 = v246;
    (*(v247 + 32))(v246, v208, v248);
    *(v212 + *(v242 + 36)) = v210;
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    v213 = v250;
    sub_10003D17C(v212, v250, &qword_101198B50, &qword_100EDE3F0);
    v214 = v249;
    v215 = (v213 + *(v249 + 36));
    v216 = v307;
    *v215 = v306;
    v215[1] = v216;
    v215[2] = v308;
    v217 = *v278;
    v218 = v278[1];
    v219 = v278[2];
    v220 = v278[3];
    v221 = sub_100616B60();

    View.accessibilityIdentifier(_:)(v217, v218, v219, v220, v214, v221);

    sub_1000095E8(v213, &qword_101198E58, &qword_100ED79D0);
    static VerticalAlignment.center.getter();
    __chkstk_darwin();
    v191 = v290;
    v192 = v287;
    v222 = v254;
    HStack.init(alignment:spacing:content:)();
    v223 = v284;
    v224 = swift_getWitnessTable();
    v225 = v253;
    sub_100663950();
    v226 = *(v255 + 8);
    v226(v222, v223);
    sub_100663950();
    v303 = swift_getWitnessTable();
    v304 = &protocol witness table for _FlexFrameLayout;
    v227 = swift_getWitnessTable();
    sub_100653970(v222, v211, v223, v227, v224);
    v226(v222, v223);
    v226(v225, v223);
    v181 = v291;
    sub_1000095E8(v279, &qword_101198E60, &qword_100ED79D8);
  }

  v301 = swift_getWitnessTable();
  v302 = &protocol witness table for _FlexFrameLayout;
  v228 = swift_getWitnessTable();
  v229 = swift_getWitnessTable();
  v299 = v228;
  v300 = v229;
  v230 = v282;
  swift_getWitnessTable();
  v231 = v289;
  sub_100663950();
  (*(v281 + 8))(v231, v230);
  sub_1000095E8(v192, &qword_101184C80, &qword_100EC0810);
  sub_1000095E8(v181, &qword_101184C80, &qword_100EC0810);
  return sub_1000095E8(v191, &qword_101198E18, &qword_100ED7990);
}

double sub_100607C08@<D0>(_OWORD *a2@<X8>)
{
  if ((sub_100608118() & 1) == 0 || (v5 = v3 + *(type metadata accessor for ArtworkImage.Info(0) + 28), v6 = 1.5, (*(v5 + 8) & 1) == 0) && *v5 > 48.0)
  {
    v6 = 1.0;
  }

  v7 = v3 + *(type metadata accessor for ArtworkImage.Info(0) + 28);
  v8 = *v7;
  v9 = 0.0;
  if (*(v7 + 8))
  {
    v8 = 0.0;
  }

  if (!*(v7 + 24))
  {
    v9 = *(v7 + 16);
  }

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(COERCE__INT64(v6 * v8), 0, COERCE__INT64(v6 * v9), 0, 0, 1, 2, &v12);
  v10 = v13[0];
  *a2 = v12;
  a2[1] = v10;
  result = *(v13 + 10);
  *(a2 + 26) = *(v13 + 10);
  return result;
}

uint64_t sub_100607CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s13FavoriteBadgeVMa(0);
  v21[0] = *(v14 - 8);
  __chkstk_darwin();
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(_s9TrackCellVMa(0, a2, a3, a4) + 60)) == 1)
  {
    v17 = sub_100607C08(&v22);
    *v16 = v22;
    v16[8] = BYTE8(v22);
    v21[1] = 0x4020000000000000;
    (*(v11 + 104))(v13, enum case for Font.TextStyle.largeTitle(_:), v10, v17);
    sub_100363C0C();
    ScaledMetric.init(wrappedValue:relativeTo:)();
    v18 = *(v14 + 24);
    *&v16[v18] = swift_getKeyPath();
    sub_10010FC20(&qword_1011955D8, &unk_100ED37E0);
    swift_storeEnumTagMultiPayload();
    sub_10061601C(v16, a5, _s13FavoriteBadgeVMa);
    return (*(v21[0] + 56))(a5, 0, 1, v14);
  }

  else
  {
    v20 = *(v21[0] + 56);

    return v20(a5, 1, 1, v14);
  }
}

uint64_t sub_100607F84(uint64_t a1)
{
  v3 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = *(**(v1 + *(a1 + 76) + 8) + 256);

  v9(v10);

  (*(v4 + 104))(v6, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v3);
  v11 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v12(v8, v3);
  return v11 & 1;
}

uint64_t sub_100608118()
{
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin();
  v28 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10010FC20(&qword_101185768, &qword_100EDBB70);
  __chkstk_darwin();
  v4 = &v28 - v3;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v28 - v6;
  __chkstk_darwin();
  v9 = (&v28 - v8);
  v10 = type metadata accessor for DynamicTypeSize();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v28 - v14;
  v31 = v0;
  sub_10056CABC((&v28 - v14));
  (*(v11 + 104))(v13, enum case for DynamicTypeSize.accessibility3(_:), v10);
  sub_10061465C(&qword_1011810B0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v16 = dispatch thunk of static Comparable.< infix(_:_:)();
  v17 = *(v11 + 8);
  v17(v13, v10);
  v17(v15, v10);
  if ((v16 & 1) == 0)
  {
    sub_10056CAE4(v9);
    v20 = v32;
    v19 = v33;
    (*(v32 + 104))(v7, enum case for UserInterfaceSizeClass.compact(_:), v33);
    (*(v20 + 56))(v7, 0, 1, v19);
    v21 = *(v30 + 48);
    sub_1000089F8(v9, v4, &unk_101184290, &qword_100EC0E60);
    sub_1000089F8(v7, &v4[v21], &unk_101184290, &qword_100EC0E60);
    v22 = *(v20 + 48);
    if (v22(v4, 1, v19) == 1)
    {
      sub_1000095E8(v7, &unk_101184290, &qword_100EC0E60);
      sub_1000095E8(v9, &unk_101184290, &qword_100EC0E60);
      if (v22(&v4[v21], 1, v19) == 1)
      {
        sub_1000095E8(v4, &unk_101184290, &qword_100EC0E60);
        v18 = 1;
        return v18 & 1;
      }
    }

    else
    {
      v23 = v29;
      sub_1000089F8(v4, v29, &unk_101184290, &qword_100EC0E60);
      if (v22(&v4[v21], 1, v19) != 1)
      {
        v24 = v28;
        (*(v20 + 32))(v28, &v4[v21], v19);
        sub_10061465C(&qword_101185778, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
        v25 = v23;
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        v26 = *(v20 + 8);
        v26(v24, v19);
        sub_1000095E8(v7, &unk_101184290, &qword_100EC0E60);
        sub_1000095E8(v9, &unk_101184290, &qword_100EC0E60);
        v26(v25, v19);
        sub_1000095E8(v4, &unk_101184290, &qword_100EC0E60);
        return v18 & 1;
      }

      sub_1000095E8(v7, &unk_101184290, &qword_100EC0E60);
      sub_1000095E8(v9, &unk_101184290, &qword_100EC0E60);
      (*(v20 + 8))(v23, v19);
    }

    sub_1000095E8(v4, &qword_101185768, &qword_100EDBB70);
    v18 = 0;
    return v18 & 1;
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1006086F0@<X0>(void (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = a4;
  v52 = a3;
  v60 = a2;
  v49 = a1;
  v59 = a8;
  v54 = sub_10010FC20(&qword_101198ED0, &qword_100ED7A48);
  v55 = *(v54 - 8);
  __chkstk_darwin();
  v43 = &v43 - v11;
  v56 = sub_10010FC20(&qword_101198E20, &qword_100ED7998);
  __chkstk_darwin();
  v58 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v43 - v13;
  v53 = sub_10010FC20(&qword_101184C80, &qword_100EC0810);
  __chkstk_darwin();
  v57 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v43 - v15;
  sub_1001109D0(&qword_101198E18, &qword_100ED7990);
  _s9TrackCellV13TrailingIconsVMa(255, a5, a6, a7);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for HStack();
  v46 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v43 - v17;
  v19 = type metadata accessor for ModifiedContent();
  v48 = *(v19 - 8);
  __chkstk_darwin();
  v21 = &v43 - v20;
  v47 = type metadata accessor for ModifiedContent();
  v61 = *(v47 - 8);
  __chkstk_darwin();
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v43 - v24;
  static VerticalAlignment.center.getter();
  v63 = a5;
  v64 = a6;
  v65 = a7;
  v66 = v49;
  v67 = v60;
  HStack.init(alignment:spacing:content:)();
  WitnessTable = _s9TrackCellVMa(0, a5, a6, a7);
  sub_100607C08(&v73);
  static Alignment.center.getter();
  v25 = swift_getWitnessTable();
  View.frame(width:height:alignment:)();
  (*(v46 + 8))(v18, v16);
  static Edge.Set.bottom.getter();
  v72[5] = v25;
  v72[6] = &protocol witness table for _FrameLayout;
  v26 = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v48 + 8))(v21, v19);
  v72[3] = v26;
  v72[4] = &protocol witness table for _PaddingLayout;
  v27 = v47;
  v48 = swift_getWitnessTable();
  sub_100663950();
  v28 = v27;
  v49 = *(v61 + 8);
  v49(v23, v27);
  v29 = v50;
  sub_1000089F8(v52, v50, &qword_101184C80, &qword_100EC0810);
  if (*(v60 + *(WitnessTable + 48) + 8))
  {
    v30 = static Font.footnote.getter();
    KeyPath = swift_getKeyPath();
    v32 = v43;
    sub_1000089F8(v44, v43, &qword_101184C80, &qword_100EC0810);
    v33 = v54;
    v34 = (v32 + *(v54 + 36));
    *v34 = KeyPath;
    v34[1] = v30;
    v35 = v51;
    sub_10003D17C(v32, v51, &qword_101198ED0, &qword_100ED7A48);
    v36 = 0;
    v37 = v33;
  }

  else
  {
    v35 = v51;
    v37 = v54;
    v36 = 1;
  }

  (*(v55 + 56))(v35, v36, 1, v37);
  v38 = v28;
  (*(v61 + 16))(v23, v62, v28);
  v72[0] = v23;
  v39 = v57;
  sub_1000089F8(v29, v57, &qword_101184C80, &qword_100EC0810);
  v72[1] = v39;
  v40 = v58;
  sub_1000089F8(v35, v58, &qword_101198E20, &qword_100ED7998);
  v72[2] = v40;
  v71[0] = v38;
  v71[1] = v53;
  v71[2] = v56;
  v68 = v48;
  v69 = sub_100617E28(&qword_1011860C0, &qword_101184C80, &qword_100EC0810);
  v70 = sub_100617300(&qword_101198ED8, &qword_101198E20, &qword_100ED7998, sub_100616C2C);
  sub_1006769F4(v72, 3uLL, v71);
  sub_1000095E8(v35, &qword_101198E20, &qword_100ED7998);
  sub_1000095E8(v29, &qword_101184C80, &qword_100EC0810);
  v41 = v49;
  v49(v62, v38);
  sub_1000095E8(v40, &qword_101198E20, &qword_100ED7998);
  sub_1000095E8(v39, &qword_101184C80, &qword_100EC0810);
  return v41(v23, v38);
}

uint64_t sub_100608FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a1;
  v30 = a6;
  v10 = sub_10010FC20(&qword_101198E18, &qword_100ED7990);
  __chkstk_darwin();
  v12 = &v28 - v11;
  v13 = _s9TrackCellV13TrailingIconsVMa(0, a3, a4, a5);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v28 - v17;
  v19 = _s9TrackCellVMa(0, a3, a4, a5);
  v20 = *(a2 + v19[19] + 8);
  v21 = *(a2 + v19[18] + 8);
  v22 = (a2 + v19[21]);
  v23 = *v22;
  v24 = v22[1];

  sub_100112878(v23, v24);
  sub_1006092D4(v20, v21, 0, 0, 1, v23, v24, v16);
  WitnessTable = swift_getWitnessTable();
  sub_100663950();
  v26 = *(v14 + 8);
  v26(v16, v13);
  sub_1000089F8(v29, v12, &qword_101198E18, &qword_100ED7990);
  v35 = 0;
  v36 = 1;
  v37[0] = v12;
  v37[1] = &v35;
  (*(v14 + 16))(v16, v18, v13);
  v37[2] = v16;
  v34[0] = v10;
  v34[1] = &type metadata for Spacer;
  v34[2] = v13;
  v31 = sub_100616D04();
  v32 = &protocol witness table for Spacer;
  v33 = WitnessTable;
  sub_1006769F4(v37, 3uLL, v34);
  v26(v18, v13);
  v26(v16, v13);
  return sub_1000095E8(v12, &qword_101198E18, &qword_100ED7990);
}

uint64_t sub_1006092D4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a1;
  v15 = *(*a2 + class metadata base offset for MusicLibrary.ItemState + 8);
  *a8 = sub_10060CE3C(a1, v15, a3, a4);
  *(a8 + 8) = v16;
  v17 = *(v14 + 88);
  *(a8 + 16) = sub_10060CECC(a2);
  *(a8 + 24) = v18;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5 & 1;
  *(a8 + 56) = a6;
  *(a8 + 64) = a7;
  v19 = *(_s9TrackCellV13TrailingIconsVMa(0, *(v14 + 80), v17, v15) + 56);
  *(a8 + v19) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100609420@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v179 = a8;
  v178 = a7;
  v177 = a6;
  v166 = a5;
  v165 = a4;
  v159 = a3;
  v180 = a2;
  v167 = a1;
  v175 = a9;
  sub_1001109D0(&qword_101198E30, &qword_100ED79A8);
  sub_1001109D0(&qword_101198E38, &qword_100ED79B0);
  sub_1001109D0(&qword_101198E40, &qword_100ED79B8);
  sub_1001109D0(&qword_101198E48, &unk_100ED79C0);
  v12 = _s9TrackCellV13TrailingIconsVMa(255, a6, a7, a8);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  v13 = type metadata accessor for TupleView();
  sub_100020674(&qword_101198E50, &qword_101198E30, &qword_100ED79A8, &protocol conformance descriptor for _LayoutRoot<A>);
  v138 = v13;
  v14 = type metadata accessor for _VariadicView.Tree();
  sub_1001109D0(&unk_10119A2E0, &qword_100ED53A0);
  v15 = type metadata accessor for ModifiedContent();
  v16 = sub_1001109D0(&qword_101198C48, &qword_100ED7798);
  swift_getTupleTypeMetadata2();
  v17 = type metadata accessor for TupleView();
  v147 = *(v17 - 8);
  __chkstk_darwin();
  v146 = &v129 - v18;
  v142 = _s17ContextMenuButtonVMa(0);
  v141 = *(v142 - 8);
  __chkstk_darwin();
  v130 = (&v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = v16;
  __chkstk_darwin();
  v143 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v144 = &v129 - v21;
  v139 = v14;
  v137 = *(v14 - 8);
  __chkstk_darwin();
  v136 = &v129 - v22;
  v134 = type metadata accessor for SplitPercentageLayout();
  v133 = *(v134 - 8);
  __chkstk_darwin();
  v132 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v15;
  v149 = *(v15 - 8);
  __chkstk_darwin();
  v140 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v135 = &v129 - v25;
  __chkstk_darwin();
  v161 = &v129 - v26;
  v27 = sub_1001109D0(&qword_101198E28, &qword_100ED79A0);
  swift_getTupleTypeMetadata3();
  v28 = type metadata accessor for TupleView();
  v158 = *(v28 - 8);
  __chkstk_darwin();
  v157 = &v129 - v29;
  v160 = v12;
  v153 = *(v12 - 8);
  __chkstk_darwin();
  v154 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v156 = &v129 - v31;
  sub_10010FC20(&qword_101198F08, &unk_100ED7A80);
  __chkstk_darwin();
  v150 = (&v129 - v32);
  v155 = v27;
  __chkstk_darwin();
  v152 = &v129 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v151 = &v129 - v34;
  __chkstk_darwin();
  v176 = &v129 - v35;
  v36 = type metadata accessor for UserInterfaceSizeClass();
  v37 = *(v36 - 8);
  __chkstk_darwin();
  v131 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10010FC20(&qword_101185768, &qword_100EDBB70) - 8;
  __chkstk_darwin();
  v41 = &v129 - v40;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v162 = &v129 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v129 - v43;
  __chkstk_darwin();
  v46 = (&v129 - v45);
  v173 = v28;
  v174 = v17;
  v172 = type metadata accessor for _ConditionalContent();
  v171 = *(v172 - 8);
  __chkstk_darwin();
  v170 = &v129 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v169 = &v129 - v48;
  v164 = sub_10010FC20(&qword_101198E18, &qword_100ED7990);
  __chkstk_darwin();
  v168 = &v129 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = v167;
  v167 = &v129 - v51;
  sub_1000089F8(v50, &v129 - v51, &qword_101198E18, &qword_100ED7990);
  v163 = _s9TrackCellVMa(0, v177, v178, v179);
  sub_10056CAE4(v46);
  (*(v37 + 104))(v44, enum case for UserInterfaceSizeClass.compact(_:), v36);
  (*(v37 + 56))(v44, 0, 1, v36);
  v52 = *(v39 + 56);
  sub_1000089F8(v46, v41, &unk_101184290, &qword_100EC0E60);
  sub_1000089F8(v44, &v41[v52], &unk_101184290, &qword_100EC0E60);
  v53 = *(v37 + 48);
  if (v53(v41, 1, v36) == 1)
  {
    sub_1000095E8(v44, &unk_101184290, &qword_100EC0E60);
    sub_1000095E8(v46, &unk_101184290, &qword_100EC0E60);
    v54 = v53(&v41[v52], 1, v36);
    v55 = v163;
    if (v54 == 1)
    {
      sub_1000095E8(v41, &unk_101184290, &qword_100EC0E60);
      v56 = v180;
LABEL_11:
      v82 = static HorizontalAlignment.leading.getter();
      v83 = v150;
      *v150 = v82;
      v83[1] = 0;
      *(v83 + 16) = 0;
      v84 = sub_10010FC20(&qword_101198F20, &qword_100ED7A90);
      sub_10060AEB4(v56, v159, v165, v166, v177, v178, v179, v83 + *(v84 + 44));
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v85 = v83;
      v86 = v151;
      sub_10003D17C(v85, v151, &qword_101198F08, &unk_100ED7A80);
      v87 = v155;
      v88 = (v86 + *(v155 + 36));
      v89 = v198[5];
      v88[4] = v198[4];
      v88[5] = v89;
      v88[6] = v198[6];
      v90 = v198[1];
      *v88 = v198[0];
      v88[1] = v90;
      v91 = v198[3];
      v88[2] = v198[2];
      v88[3] = v91;
      v92 = v86;
      v93 = v176;
      sub_10003D17C(v92, v176, &qword_101198E28, &qword_100ED79A0);
      v94 = *(v56 + v55[19] + 8);
      v95 = *(v56 + v55[18] + 8);
      v96 = (v56 + v55[21]);
      v97 = *v96;
      v98 = v96[1];

      sub_100112878(v97, v98);
      v99 = v154;
      sub_1006092D4(v94, v95, 0, 0, 1, v97, v98, v154);
      v100 = v160;
      WitnessTable = swift_getWitnessTable();
      v102 = v156;
      sub_100663950();
      v103 = v153;
      v104 = *(v153 + 8);
      v104(v99, v100);
      v105 = v152;
      sub_1000089F8(v93, v152, &qword_101198E28, &qword_100ED79A0);
      v187 = 0;
      v188 = 1;
      v189 = v105;
      v190 = &v187;
      (*(v103 + 16))(v99, v102, v100);
      v191 = v99;
      v184 = v87;
      v185 = &type metadata for Spacer;
      v186 = v100;
      v181 = sub_100616F38();
      v182 = &protocol witness table for Spacer;
      v183 = WitnessTable;
      v106 = v157;
      sub_1006769F4(&v189, 3uLL, &v184);
      v104(v99, v100);
      sub_1000095E8(v105, &qword_101198E28, &qword_100ED79A0);
      v107 = v173;
      v108 = swift_getWitnessTable();
      v109 = v174;
      v110 = swift_getWitnessTable();
      v111 = v169;
      sub_100653878(v106, v107, v109, v108, v110);
      (*(v158 + 8))(v106, v107);
      v104(v102, v100);
      sub_1000095E8(v176, &qword_101198E28, &qword_100ED79A0);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  sub_1000089F8(v41, v162, &unk_101184290, &qword_100EC0E60);
  if (v53(&v41[v52], 1, v36) == 1)
  {
    sub_1000095E8(v44, &unk_101184290, &qword_100EC0E60);
    sub_1000095E8(v46, &unk_101184290, &qword_100EC0E60);
    (*(v37 + 8))(v162, v36);
    v55 = v163;
LABEL_6:
    sub_1000095E8(v41, &qword_101185768, &qword_100EDBB70);
    v56 = v180;
    goto LABEL_7;
  }

  v77 = &v41[v52];
  v78 = v131;
  (*(v37 + 32))(v131, v77, v36);
  sub_10061465C(&qword_101185778, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v79 = v162;
  v80 = dispatch thunk of static Equatable.== infix(_:_:)();
  v81 = *(v37 + 8);
  v81(v78, v36);
  sub_1000095E8(v44, &unk_101184290, &qword_100EC0E60);
  sub_1000095E8(v46, &unk_101184290, &qword_100EC0E60);
  v81(v79, v36);
  sub_1000095E8(v41, &unk_101184290, &qword_100EC0E60);
  v56 = v180;
  v55 = v163;
  if (v80)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (sub_10060AC30(v55, v57))
  {
    goto LABEL_11;
  }

  v58 = v132;
  SplitPercentageLayout.init(axis:locations:)();
  v59 = sub_10060B554(v58, v177, v178, v179);
  (*(v133 + 8))(v58, v134);
  v60 = __chkstk_darwin();
  v61 = v136;
  (v59)(sub_100616E74, v60);

  v62 = sub_100020674(&qword_101198F10, &qword_101198E30, &qword_100ED79A8, &protocol conformance descriptor for _LayoutRoot<A>);
  v63 = swift_getWitnessTable();
  v196 = v62;
  v197 = v63;
  v64 = v139;
  v65 = swift_getWitnessTable();
  v66 = 1;
  v67 = v135;
  View.lineLimit(_:)();
  (*(v137 + 8))(v61, v64);
  v68 = sub_100020674(&qword_1011860B8, &unk_10119A2E0, &qword_100ED53A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v194 = v65;
  v195 = v68;
  v69 = v148;
  v179 = swift_getWitnessTable();
  sub_100663950();
  v180 = *(v149 + 8);
  (v180)(v67, v69);
  v70 = (v56 + v55[21]);
  v71 = v173;
  if (*v70)
  {
    v72 = v70[1];
    v73 = v130;
    *v130 = *v70;
    *(v73 + 8) = v72;
    v74 = v142;
    *&v198[0] = 0x4046000000000000;
    sub_100363C0C();

    ScaledMetric.init(wrappedValue:)();
    *&v198[0] = 0x403C000000000000;
    ScaledMetric.init(wrappedValue:)();
    v75 = v144;
    sub_10061601C(v73, v144, _s17ContextMenuButtonVMa);
    v66 = 0;
    v76 = v174;
  }

  else
  {
    v76 = v174;
    v75 = v144;
    v74 = v142;
  }

  (*(v141 + 56))(v75, v66, 1, v74);
  v112 = v140;
  (*(v149 + 16))(v140, v161, v69);
  *&v198[0] = v112;
  v113 = v75;
  v114 = v143;
  sub_1000089F8(v75, v143, &qword_101198C48, &qword_100ED7798);
  *(&v198[0] + 1) = v114;
  v189 = v69;
  v190 = v145;
  v184 = v179;
  v185 = sub_100616E84();
  v115 = v146;
  sub_1006769F4(v198, 2uLL, &v189);
  sub_1000095E8(v114, &qword_101198C48, &qword_100ED7798);
  v116 = v112;
  v117 = v180;
  (v180)(v116, v69);
  v118 = swift_getWitnessTable();
  v119 = swift_getWitnessTable();
  v111 = v169;
  sub_100653970(v115, v71, v76, v118, v119);
  (*(v147 + 8))(v115, v76);
  sub_1000095E8(v113, &qword_101198C48, &qword_100ED7798);
  (v117)(v161, v69);
LABEL_14:
  v120 = v167;
  v121 = v168;
  sub_1000089F8(v167, v168, &qword_101198E18, &qword_100ED7990);
  v189 = v121;
  v122 = v171;
  v123 = v170;
  v124 = v172;
  (*(v171 + 16))(v170, v111, v172);
  v190 = v123;
  v184 = v164;
  v185 = v124;
  v181 = sub_100616D04();
  v125 = swift_getWitnessTable();
  v126 = swift_getWitnessTable();
  v192 = v125;
  v193 = v126;
  v182 = swift_getWitnessTable();
  sub_1006769F4(&v189, 2uLL, &v184);
  v127 = *(v122 + 8);
  v127(v111, v124);
  sub_1000095E8(v120, &qword_101198E18, &qword_100ED7990);
  v127(v123, v124);
  return sub_1000095E8(v121, &qword_101198E18, &qword_100ED7990);
}

uint64_t sub_10060AC30(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v17 = *(v4 - 8);
  v18 = v4;
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(v2 + *(a1 + 92), v8, &qword_10118A610, &qword_100EBCDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v6, v18);
  }

  v15 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v10 + 8))(v12, v9);
  return v15 & 1;
}

uint64_t sub_10060AEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v57 = a7;
  v55 = a4;
  v50 = a2;
  v51 = a3;
  v61 = a8;
  v54 = sub_10010FC20(&qword_101198ED0, &qword_100ED7A48);
  __chkstk_darwin();
  v56 = &v50 - v11;
  v12 = sub_10010FC20(&qword_101198F38, &qword_100ED7A98);
  v58 = *(v12 - 8);
  v59 = v12;
  __chkstk_darwin();
  v53 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = &v50 - v14;
  sub_10010FC20(&qword_101198F40, &qword_100ED7AA0);
  __chkstk_darwin();
  v60 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v50 - v16;
  v18 = sub_10010FC20(&qword_101198F48, &qword_100ED7AA8);
  __chkstk_darwin();
  v20 = &v50 - v19;
  sub_10010FC20(&qword_101198F50, &qword_100ED7AB0);
  __chkstk_darwin();
  v22 = &v50 - v21;
  sub_10010FC20(&qword_101198F58, &qword_100ED7AB8);
  __chkstk_darwin();
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v50 - v25;
  v27 = _s9TrackCellVMa(0, a5, a6, v57);
  v57 = a1;
  if (sub_10060AC30(v27, v28))
  {
    sub_1000089F8(v50, v22, &qword_101184C80, &qword_100EC0810);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101184C80, &qword_100EC0810);
    sub_100617E28(&qword_1011860C0, &qword_101184C80, &qword_100EC0810);
    sub_100616FF0();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v29 = static Font.callout.getter();
    KeyPath = swift_getKeyPath();
    sub_1000089F8(v51, v20, &qword_101198E60, &qword_100ED79D8);
    v31 = &v20[*(sub_10010FC20(&qword_101198F60, &qword_100ED7AC0) + 36)];
    *v31 = KeyPath;
    v31[1] = v29;
    v32 = swift_getKeyPath();
    v33 = &v20[*(v18 + 36)];
    *v33 = v32;
    *(v33 + 1) = 1;
    v33[16] = 0;
    sub_1000089F8(v20, v22, &qword_101198F48, &qword_100ED7AA8);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101184C80, &qword_100EC0810);
    sub_100617E28(&qword_1011860C0, &qword_101184C80, &qword_100EC0810);
    sub_100616FF0();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v20, &qword_101198F48, &qword_100ED7AA8);
  }

  v34 = v59;
  if (*(v57 + *(v27 + 48) + 8))
  {
    v35 = static Font.footnote.getter();
    v36 = swift_getKeyPath();
    v37 = v56;
    sub_1000089F8(v55, v56, &qword_101184C80, &qword_100EC0810);
    v38 = (v37 + *(v54 + 36));
    *v38 = v36;
    v38[1] = v35;
    v40 = sub_10060AC30(v27, v39);
    v41 = swift_getKeyPath();
    v42 = v53;
    sub_10003D17C(v37, v53, &qword_101198ED0, &qword_100ED7A48);
    v43 = v42 + *(v34 + 36);
    *v43 = v41;
    *(v43 + 8) = (v40 & 1) == 0;
    *(v43 + 16) = v40 & 1;
    v44 = v52;
    sub_10003D17C(v42, v52, &qword_101198F38, &qword_100ED7A98);
    sub_10003D17C(v44, v17, &qword_101198F38, &qword_100ED7A98);
    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  (*(v58 + 56))(v17, v45, 1, v34);
  sub_1000089F8(v26, v24, &qword_101198F58, &qword_100ED7AB8);
  v46 = v60;
  sub_1000089F8(v17, v60, &qword_101198F40, &qword_100ED7AA0);
  v47 = v61;
  sub_1000089F8(v24, v61, &qword_101198F58, &qword_100ED7AB8);
  v48 = sub_10010FC20(&qword_101198F80, &unk_100ED7AC8);
  sub_1000089F8(v46, v47 + *(v48 + 48), &qword_101198F40, &qword_100ED7AA0);
  sub_1000095E8(v17, &qword_101198F40, &qword_100ED7AA0);
  sub_1000095E8(v26, &qword_101198F58, &qword_100ED7AB8);
  sub_1000095E8(v46, &qword_101198F40, &qword_100ED7AA0);
  return sub_1000095E8(v24, &qword_101198F58, &qword_100ED7AB8);
}

uint64_t (*sub_10060B554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for SplitPercentageLayout();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin();
  (*(v9 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  (*(v9 + 32))(&v13[v12], &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  return sub_100617578;
}

uint64_t sub_10060B69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v13 = type metadata accessor for SplitPercentageLayout();
  sub_1001109D0(&qword_101198E38, &qword_100ED79B0);
  sub_1001109D0(&qword_101198E40, &qword_100ED79B8);
  sub_1001109D0(&qword_101198E48, &unk_100ED79C0);
  _s9TrackCellV13TrailingIconsVMa(255, a4, a5, a6);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  v14 = type metadata accessor for TupleView();
  v15 = sub_10061465C(&qword_101198FE0, &type metadata accessor for SplitPercentageLayout, &protocol conformance descriptor for SplitPercentageLayout);
  WitnessTable = swift_getWitnessTable();
  return sub_10060B86C(a1, a2, v13, v14, v15, WitnessTable, x8_0);
}

uint64_t sub_10060B86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[0] = a6;
  v18[1] = a7;
  v13 = *(a3 - 8);
  __chkstk_darwin();
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _LayoutRoot();
  v16 = __chkstk_darwin();
  (*(v13 + 16))(v15, v7, a3, v16);
  _LayoutRoot.init(_:)();
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = v18[0];
  v18[8] = a1;
  v18[9] = a2;
  swift_getWitnessTable();
  return _VariadicView.Tree.init(_:content:)();
}

uint64_t sub_10060BA14@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v84 = a5;
  v85 = a4;
  v100 = a3;
  v101 = a1;
  v87 = a2;
  v99 = a7;
  sub_1001109D0(&qword_101198E48, &unk_100ED79C0);
  _s9TrackCellV13TrailingIconsVMa(255, a4, a5, a6);
  swift_getTupleTypeMetadata3();
  v10 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v92 = v10;
  v11 = type metadata accessor for HStack();
  v95 = *(v11 - 8);
  __chkstk_darwin();
  v93 = &v80 - v12;
  v96 = type metadata accessor for ModifiedContent();
  v98 = *(v96 - 8);
  __chkstk_darwin();
  v89 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v80 - v14;
  v80 = sub_10010FC20(&unk_101184C90, &unk_100EC0820);
  __chkstk_darwin();
  v81 = &v80 - v15;
  v16 = sub_10010FC20(&qword_101198F88, &qword_100ED7AD8);
  v86 = *(v16 - 8);
  __chkstk_darwin();
  v83 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v82 = &v80 - v18;
  v90 = sub_10010FC20(&qword_101198E40, &qword_100ED79B8);
  __chkstk_darwin();
  v94 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v80 - v20;
  v21 = sub_10010FC20(&qword_101198F90, &qword_100ED7AE0) - 8;
  __chkstk_darwin();
  v23 = &v80 - v22;
  v24 = sub_10010FC20(&qword_101198E38, &qword_100ED79B0);
  __chkstk_darwin();
  v102 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v80 - v26;
  __chkstk_darwin();
  v29 = &v80 - v28;
  v30 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1000089F8(v101, v23, &qword_101198E60, &qword_100ED79D8);
  v39 = &v23[*(v21 + 44)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v23, v27, &qword_101198F90, &qword_100ED7AE0);
  v88 = v24;
  v40 = &v27[*(v24 + 36)];
  v41 = v112;
  v42 = v114;
  v43 = v115;
  *(v40 + 4) = v113;
  *(v40 + 5) = v42;
  *(v40 + 6) = v43;
  v44 = v110;
  *v40 = v109;
  *(v40 + 1) = v44;
  *(v40 + 2) = v111;
  *(v40 + 3) = v41;
  v45 = v27;
  v46 = v84;
  v101 = v29;
  sub_10003D17C(v45, v29, &qword_101198E38, &qword_100ED79B0);
  v47 = _s9TrackCellVMa(0, v85, v46, a6);
  v48 = 1;
  if (*(v87 + *(v47 + 88)) >= 800.0)
  {
    v49 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = v81;
    sub_1000089F8(v100, v81, &qword_101184C80, &qword_100EC0810);
    v59 = v58 + *(v80 + 36);
    *v59 = v49;
    *(v59 + 8) = v51;
    *(v59 + 16) = v53;
    *(v59 + 24) = v55;
    *(v59 + 32) = v57;
    *(v59 + 40) = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v60 = v58;
    v61 = v83;
    sub_10003D17C(v60, v83, &unk_101184C90, &unk_100EC0820);
    v62 = (v61 + *(v16 + 36));
    v63 = v116[5];
    v62[4] = v116[4];
    v62[5] = v63;
    v62[6] = v116[6];
    v64 = v116[1];
    *v62 = v116[0];
    v62[1] = v64;
    v65 = v116[3];
    v62[2] = v116[2];
    v62[3] = v65;
    v66 = v61;
    v67 = v82;
    sub_10003D17C(v66, v82, &qword_101198F88, &qword_100ED7AD8);
    sub_10003D17C(v67, v103, &qword_101198F88, &qword_100ED7AD8);
    v48 = 0;
  }

  (*(v86 + 56))(v103, v48, 1, v16);
  static VerticalAlignment.center.getter();
  __chkstk_darwin();
  v68 = v93;
  HStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  v79 = swift_getWitnessTable();
  v69 = v89;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v95 + 8))(v68, v11);
  v108[3] = v79;
  v108[4] = &protocol witness table for _FlexFrameLayout;
  v70 = v96;
  v71 = swift_getWitnessTable();
  v72 = v97;
  sub_100663950();
  v73 = v98;
  v100 = *(v98 + 8);
  v100(v69, v70);
  v74 = v102;
  sub_1000089F8(v101, v102, &qword_101198E38, &qword_100ED79B0);
  v108[0] = v74;
  v75 = v103;
  v76 = v94;
  sub_1000089F8(v103, v94, &qword_101198E40, &qword_100ED79B8);
  v108[1] = v76;
  (*(v73 + 16))(v69, v72, v70);
  v108[2] = v69;
  v107[0] = v88;
  v107[1] = v90;
  v107[2] = v70;
  v104 = sub_1006171BC();
  v105 = sub_100617300(&qword_101198FA8, &qword_101198E40, &qword_100ED79B8, sub_10061737C);
  v106 = v71;
  sub_1006769F4(v108, 3uLL, v107);
  v77 = v100;
  v100(v72, v70);
  sub_1000095E8(v75, &qword_101198E40, &qword_100ED79B8);
  sub_1000095E8(v101, &qword_101198E38, &qword_100ED79B0);
  v77(v69, v70);
  sub_1000095E8(v76, &qword_101198E40, &qword_100ED79B8);
  return sub_1000095E8(v102, &qword_101198E38, &qword_100ED79B0);
}

uint64_t sub_10060C420@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v92 = a2;
  v102 = a6;
  v103 = _s9TrackCellV13TrailingIconsVMa(0, a3, a4, a5);
  v99 = *(v103 - 8);
  __chkstk_darwin();
  v101 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v89 - v11;
  v91 = sub_10010FC20(&unk_101184C90, &unk_100EC0820);
  __chkstk_darwin();
  v13 = &v89 - v12;
  v96 = sub_10010FC20(&qword_101198F88, &qword_100ED7AD8);
  __chkstk_darwin();
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = &v89 - v16;
  v94 = sub_10010FC20(&qword_101198FC0, &qword_100ED7AE8);
  __chkstk_darwin();
  v18 = &v89 - v17;
  v95 = sub_10010FC20(&qword_101198FC8, &unk_100ED7AF0);
  __chkstk_darwin();
  v20 = &v89 - v19;
  v97 = sub_10010FC20(&qword_101198E48, &unk_100ED79C0);
  __chkstk_darwin();
  v98 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v89 - v22;
  v24 = _s9TrackCellVMa(0, a3, a4, a5);
  v25 = v24;
  v26 = *(a1 + *(v24 + 88));
  v104 = v23;
  if (v26 >= 800.0)
  {
    v92 = v20;
    v93 = v18;
    v43 = (a1 + *(v24 + 52));
    v44 = v43[1];
    if (v44)
    {
      v45 = *v43;
      v46 = v44;
    }

    else
    {
      v45 = 0;
      v46 = 0xE000000000000000;
    }

    *&v123 = v45;
    *(&v123 + 1) = v46;
    sub_100009838();

    v47 = Text.init<A>(_:)();
    v49 = v48;
    v51 = v50;
    v52 = sub_100607F84(v25);
    v90 = a1;
    if (v52)
    {
      v53 = static HierarchicalShapeStyle.secondary.getter();
    }

    else
    {
      v53 = static HierarchicalShapeStyle.tertiary.getter();
    }

    LODWORD(v123) = v53;
    v54 = Text.foregroundStyle<A>(_:)();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    sub_10011895C(v47, v49, v51 & 1);

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v61 = v58 & 1;
    LOBYTE(v137) = v58 & 1;
    v62 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v134) = 0;
    *&v105 = v54;
    *(&v105 + 1) = v56;
    LOBYTE(v106) = v61;
    *(&v106 + 1) = v60;
    v111 = v120;
    v112 = v121;
    v113 = v122;
    v107 = v116;
    v108 = v117;
    v109 = v118;
    v110 = v119;
    LOBYTE(v114) = v62;
    *(&v114 + 1) = v63;
    *&v115[0] = v64;
    *(&v115[0] + 1) = v65;
    *&v115[1] = v66;
    BYTE8(v115[1]) = 0;
    v67 = AccessibilityIdentifier.libraryTrackCellDetailText.unsafeMutableAddressor();
    v68 = *v67;
    v69 = v67[1];
    v70 = v67[2];
    v71 = v67[3];

    v72 = sub_10010FC20(&qword_101181120, &qword_100EBCC08);
    v73 = sub_100119518();
    v74 = v92;
    View.accessibilityIdentifier(_:)(v68, v69, v70, v71, v72, v73);

    v131 = v113;
    v132 = v114;
    v133[0] = v115[0];
    *(v133 + 9) = *(v115 + 9);
    v127 = v109;
    v128 = v110;
    v129 = v111;
    v130 = v112;
    v123 = v105;
    v124 = v106;
    v125 = v107;
    v126 = v108;
    sub_1000095E8(&v123, &qword_101181120, &qword_100EBCC08);
    sub_1000089F8(v74, v93, &qword_101198FC8, &unk_100ED7AF0);
    swift_storeEnumTagMultiPayload();
    sub_100615550(&qword_101198FD0, &qword_101198FC8, &unk_100ED7AF0, sub_100119518);
    sub_10061737C();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v74, &qword_101198FC8, &unk_100ED7AF0);
    a1 = v90;
  }

  else
  {
    v27 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_1000089F8(v92, v13, &qword_101184C80, &qword_100EC0810);
    v36 = &v13[*(v91 + 36)];
    *v36 = v27;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10003D17C(v13, v15, &unk_101184C90, &unk_100EC0820);
    v37 = &v15[*(v96 + 36)];
    v38 = v128;
    *(v37 + 4) = v127;
    *(v37 + 5) = v38;
    *(v37 + 6) = v129;
    v39 = v124;
    *v37 = v123;
    *(v37 + 1) = v39;
    v40 = v126;
    *(v37 + 2) = v125;
    *(v37 + 3) = v40;
    v41 = v15;
    v42 = v93;
    sub_10003D17C(v41, v93, &qword_101198F88, &qword_100ED7AD8);
    sub_1000089F8(v42, v18, &qword_101198F88, &qword_100ED7AD8);
    swift_storeEnumTagMultiPayload();
    sub_100615550(&qword_101198FD0, &qword_101198FC8, &unk_100ED7AF0, sub_100119518);
    sub_10061737C();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v42, &qword_101198F88, &qword_100ED7AD8);
  }

  v75 = *(a1 + v25[19] + 8);
  v76 = *(a1 + v25[18] + 8);
  v77 = (a1 + v25[14]);
  v78 = *v77;
  v79 = v77[1];

  v80 = v101;
  sub_1006092D4(v75, v76, v78, v79, 0, 0, 0, v101);
  v81 = v103;
  WitnessTable = swift_getWitnessTable();
  v83 = v100;
  sub_100663950();
  v84 = v99;
  v85 = *(v99 + 8);
  v85(v80, v81);
  v86 = v104;
  v87 = v98;
  sub_1000089F8(v104, v98, &qword_101198E48, &unk_100ED79C0);
  v137 = 0;
  v138 = 0;
  *&v105 = v87;
  *(&v105 + 1) = &v137;
  (*(v84 + 16))(v80, v83, v81);
  *&v106 = v80;
  *&v116 = v97;
  *(&v116 + 1) = &type metadata for Spacer;
  *&v117 = v81;
  v134 = sub_1006174C0();
  v135 = &protocol witness table for Spacer;
  v136 = WitnessTable;
  sub_1006769F4(&v105, 3uLL, &v116);
  v85(v83, v81);
  sub_1000095E8(v86, &qword_101198E48, &unk_100ED79C0);
  v85(v80, v81);
  return sub_1000095E8(v87, &qword_101198E48, &unk_100ED79C0);
}

uint64_t sub_10060CD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = (a1 + *(_s9TrackCellVMa(0, a2, a3, a4) + 84));
  v7 = *v6;
  v8 = v6[1];
  *a5 = *v6;
  a5[1] = v8;
  _s17ContextMenuButtonVMa(0);
  sub_100112878(v7, v8);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();
  return ScaledMetric.init(wrappedValue:)();
}

uint64_t sub_10060CE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MusicItemState(0, *(*a1 + 80), *(*a1 + 88), a4);
  swift_getWitnessTable();

  return ObservedObject.init(wrappedValue:)();
}

uint64_t sub_10060CECC(void *a1)
{
  type metadata accessor for MusicLibrary.ItemState();
  swift_getWitnessTable();

  return ObservedObject.init(wrappedValue:)();
}

__n128 sub_10060CF68@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011993A8, &qword_100ED7DF8);
  __chkstk_darwin();
  v11 = v18 - v10;
  sub_10056CABC(v9);
  v12 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v7 + 8))(v9, v6);
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = v12 & 1;
  v13 = sub_10010FC20(&qword_1011993B0, &qword_100ED7E00);
  sub_10060D194(v3, a1[2], a1[3], a1[4], &v11[*(v13 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v11, a2, &qword_1011993A8, &qword_100ED7DF8);
  v14 = a2 + *(sub_10010FC20(&qword_1011993B8, &qword_100ED7E08) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_10060D194@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v108 = a3;
  v119 = a5;
  v121 = _s17ContextMenuButtonVMa(0);
  v115 = *(v121 - 8);
  __chkstk_darwin();
  v107 = (&v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_101198C48, &qword_100ED7798);
  __chkstk_darwin();
  v118 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v117 = &v102 - v10;
  v11 = sub_10010FC20(&qword_1011993C0, &qword_100ED7E10);
  v113 = *(v11 - 8);
  v114 = v11;
  __chkstk_darwin();
  v106 = &v102 - v12;
  sub_10010FC20(&qword_1011993C8, &qword_100ED7E18);
  __chkstk_darwin();
  v116 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v124 = &v102 - v14;
  v111 = _s27DownloadStatusIndicatorViewVMa(0);
  __chkstk_darwin();
  v16 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10010FC20(&qword_101198C50, &unk_100EDC330);
  __chkstk_darwin();
  v110 = &v102 - v17;
  v18 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v120 = *(v18 - 8);
  __chkstk_darwin();
  v104 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v102 - v20;
  __chkstk_darwin();
  v22 = &v102 - v21;
  v23 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v102 - v27;
  sub_10010FC20(&qword_101198CC8, &qword_100ED7820);
  __chkstk_darwin();
  v112 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v102 - v29;
  _s9TrackCellV13TrailingIconsVMa(0, a2, v108, a4);
  v123 = a1;
  v30 = *(*a1[1] + 256);

  v30(v31);
  v32 = v120;

  v33 = (*(v32 + 88))(v22, v18);
  v105 = v18;
  if (v33 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v32 + 96))(v22, v18);
    v34 = v102;
    (*(v24 + 32))(v102, v22, v23);
    (*(v24 + 104))(v26, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.userUploadRequired(_:), v23);
    v35 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
    v36 = *(v24 + 8);
    v36(v26, v23);
    if (v35)
    {
      swift_storeEnumTagMultiPayload();
      sub_1006160EC();
      sub_10061465C(&qword_101198CE0, _s27DownloadStatusIndicatorViewVMa, &unk_100ED7C18);
      _ConditionalContent<>.init(storage:)();
      v36(v34, v23);
      v37 = v121;
      v38 = v123;
      goto LABEL_7;
    }

    v36(v34, v23);
  }

  else
  {
    (*(v32 + 8))(v22, v18);
  }

  v37 = v121;
  v38 = v123;

  dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();

  v39 = type metadata accessor for MusicLibrary.DownloadStatus();
  (*(*(v39 - 8) + 56))(v16, 0, 1, v39);
  v40 = v111;
  *&v131[0] = 0x4000000000000000;
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();
  *&v131[0] = 0x3FF0000000000000;
  ScaledMetric.init(wrappedValue:)();
  v16[*(v40 + 20)] = 0;
  sub_100616084(v16, v110, _s27DownloadStatusIndicatorViewVMa);
  swift_storeEnumTagMultiPayload();
  sub_1006160EC();
  sub_10061465C(&qword_101198CE0, _s27DownloadStatusIndicatorViewVMa, &unk_100ED7C18);
  _ConditionalContent<>.init(storage:)();
  sub_100615BE4(v16, _s27DownloadStatusIndicatorViewVMa);
LABEL_7:
  if (*(v38 + 48) != 1)
  {
    if (qword_10117F720 != -1)
    {
      swift_once();
    }

    v46 = [qword_101218CE8 stringFromSeconds:Duration.components.getter()];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    *&v131[0] = v47;
    *(&v131[0] + 1) = v49;
    sub_100009838();
    v50 = Text.init<A>(_:)();
    v52 = v51;
    v54 = v53;
    v110 = Text.monospacedDigit()();
    v111 = v55;
    v57 = v56;
    v59 = v58;
    sub_10011895C(v50, v52, v54 & 1);

    v60 = *(*v123[1] + 256);

    v62 = v103;
    v60(v61);

    v63 = v120;
    v64 = v104;
    v65 = v105;
    (*(v120 + 104))(v104, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v105);
    LOBYTE(v50) = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
    v66 = *(v63 + 8);
    v66(v64, v65);
    v66(v62, v65);
    if (v50)
    {
      v67 = static HierarchicalShapeStyle.secondary.getter();
    }

    else
    {
      v67 = static HierarchicalShapeStyle.tertiary.getter();
    }

    LODWORD(v131[0]) = v67;
    v68 = v110;
    v69 = Text.foregroundStyle<A>(_:)();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    sub_10011895C(v68, v57, v59 & 1);

    v76 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v134 = v73 & 1;
    v133 = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *(&v135[6] + 7) = *&v135[21];
    *(&v135[8] + 7) = *&v135[23];
    *(&v135[10] + 7) = *&v135[25];
    *(&v135[12] + 7) = v136;
    *(v135 + 7) = *&v135[15];
    *(&v135[2] + 7) = *&v135[17];
    *(&v135[4] + 7) = *&v135[19];
    *&v125 = v69;
    *(&v125 + 1) = v71;
    LOBYTE(v126) = v73 & 1;
    *(&v126 + 1) = v75;
    LOBYTE(v127) = v76;
    *(&v127 + 1) = v78;
    *&v128 = v80;
    *(&v128 + 1) = v82;
    *&v129[0] = v84;
    BYTE8(v129[0]) = 0;
    *(&v129[4] + 9) = *&v135[8];
    *(&v129[5] + 9) = *&v135[10];
    *(&v129[6] + 9) = *&v135[12];
    *(v129 + 9) = *v135;
    *(&v129[1] + 9) = *&v135[2];
    *(&v129[2] + 9) = *&v135[4];
    *(&v129[3] + 9) = *&v135[6];
    *(&v129[7] + 1) = *(&v136 + 1);
    v130 = 0x3FF0000000000000;
    v85 = AccessibilityIdentifier.libraryTrackCellDuration.unsafeMutableAddressor();
    v86 = *v85;
    v87 = v85[1];
    v88 = v85[2];
    v89 = v85[3];

    v90 = sub_10010FC20(&qword_1011993D8, &qword_100ED7E28);
    v91 = sub_100618458();
    v92 = v106;
    View.accessibilityIdentifier(_:)(v86, v87, v88, v89, v90, v91);

    v131[10] = v129[6];
    v131[11] = v129[7];
    v132 = v130;
    v131[6] = v129[2];
    v131[7] = v129[3];
    v131[8] = v129[4];
    v131[9] = v129[5];
    v131[2] = v127;
    v131[3] = v128;
    v131[4] = v129[0];
    v131[5] = v129[1];
    v131[0] = v125;
    v131[1] = v126;
    sub_1000095E8(v131, &qword_1011993D8, &qword_100ED7E28);
    v93 = v124;
    sub_10003D17C(v92, v124, &qword_1011993C0, &qword_100ED7E10);
    (*(v113 + 56))(v93, 0, 1, v114);
    v37 = v121;
    v38 = v123;
    v41 = v123[7];
    if (v41)
    {
      goto LABEL_9;
    }

LABEL_16:
    v45 = 1;
    v44 = v117;
    goto LABEL_17;
  }

  (*(v113 + 56))(v124, 1, 1, v114);
  v41 = v38[7];
  if (!v41)
  {
    goto LABEL_16;
  }

LABEL_9:
  v42 = v38[8];
  v43 = v107;
  *v107 = v41;
  *(v43 + 8) = v42;
  *&v131[0] = 0x4046000000000000;
  sub_100363C0C();

  ScaledMetric.init(wrappedValue:)();
  *&v131[0] = 0x403C000000000000;
  ScaledMetric.init(wrappedValue:)();
  v44 = v117;
  sub_10061601C(v43, v117, _s17ContextMenuButtonVMa);
  v45 = 0;
LABEL_17:
  (*(v115 + 56))(v44, v45, 1, v37);
  v94 = v122;
  v95 = v112;
  sub_1000089F8(v122, v112, &qword_101198CC8, &qword_100ED7820);
  v96 = v124;
  v97 = v116;
  sub_1000089F8(v124, v116, &qword_1011993C8, &qword_100ED7E18);
  v98 = v118;
  sub_1000089F8(v44, v118, &qword_101198C48, &qword_100ED7798);
  v99 = v119;
  sub_1000089F8(v95, v119, &qword_101198CC8, &qword_100ED7820);
  v100 = sub_10010FC20(&qword_1011993D0, &qword_100ED7E20);
  sub_1000089F8(v97, v99 + *(v100 + 48), &qword_1011993C8, &qword_100ED7E18);
  sub_1000089F8(v98, v99 + *(v100 + 64), &qword_101198C48, &qword_100ED7798);
  sub_1000095E8(v44, &qword_101198C48, &qword_100ED7798);
  sub_1000095E8(v96, &qword_1011993C8, &qword_100ED7E18);
  sub_1000095E8(v94, &qword_101198CC8, &qword_100ED7820);
  sub_1000095E8(v98, &qword_101198C48, &qword_100ED7798);
  sub_1000095E8(v97, &qword_1011993C8, &qword_100ED7E18);
  return sub_1000095E8(v95, &qword_101198CC8, &qword_100ED7820);
}

__n128 sub_10060E0B8@<Q0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for AccessibilityTraits();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin();
  v43 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v39 - 8);
  __chkstk_darwin();
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_101198D68, &qword_100ED78C8);
  __chkstk_darwin();
  v9 = &v36 - v8;
  v10 = sub_10010FC20(&qword_101198D70, &qword_100ED78D0);
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin();
  v12 = &v36 - v11;
  v38 = sub_10010FC20(&qword_101198D78, &qword_100ED78D8);
  __chkstk_darwin();
  v14 = &v36 - v13;
  sub_10010FC20(&qword_101198D80, &qword_100ED78E0);
  __chkstk_darwin();
  v42 = &v36 - v15;
  v16 = [objc_opt_self() preferredFontForTextStyle:v1[4]];
  if (sub_10060E61C(v17))
  {
    v18 = static VerticalAlignment.firstTextLineCenter.getter();
  }

  else
  {
    v18 = static VerticalAlignment.center.getter();
  }

  *v9 = v18;
  *(v9 + 1) = 0;
  v9[16] = 0;
  v19 = sub_10010FC20(&qword_101198D88, &qword_100ED78E8);
  sub_10060E8A8(v1, v16, &v9[*(v19 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v37 = v16;
  v20 = sub_100020674(&qword_101198D90, &qword_101198D68, &qword_100ED78C8, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v6, v39);
  sub_1000095E8(v9, &qword_101198D68, &qword_100ED78C8);
  v21 = AccessibilityIdentifier.libraryTextCell.unsafeMutableAddressor();
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];

  *&v47 = v7;
  *(&v47 + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v24;
  v28 = v41;
  View.accessibilityIdentifier(_:)(v22, v23, v27, v25, v41, OpaqueTypeConformance2);

  (*(v40 + 8))(v12, v28);
  v29 = v43;
  static AccessibilityTraits.isButton.getter();
  sub_100616570();
  v30 = v42;
  View.accessibilityAddTraits(_:)();
  (*(v44 + 8))(v29, v45);
  sub_1000095E8(v14, &qword_101198D78, &qword_100ED78D8);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

  v31 = v46;
  sub_10003D17C(v30, v46, &qword_101198D80, &qword_100ED78E0);
  v32 = v31 + *(sub_10010FC20(&qword_101198DA0, &unk_100ED78F0) + 36);
  v33 = v52;
  *(v32 + 64) = v51;
  *(v32 + 80) = v33;
  *(v32 + 96) = v53;
  v34 = v48;
  *v32 = v47;
  *(v32 + 16) = v34;
  result = v50;
  *(v32 + 32) = v49;
  *(v32 + 48) = result;
  return result;
}

uint64_t sub_10060E61C(__n128 a1)
{
  v17 = type metadata accessor for EnvironmentValues();
  v2 = *(v17 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  __chkstk_darwin();
  v6 = &v16 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s8TextCellVMa(0);
  sub_1000089F8(v1 + *(v11 + 40), v6, &qword_10118A610, &qword_100EBCDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    v12 = static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  v14 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

uint64_t sub_10060E8A8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a2;
  v131 = a3;
  v128 = sub_10010FC20(&qword_10118E9A8, &qword_100ECACF8);
  v127 = *(v128 - 8);
  __chkstk_darwin();
  v126 = &v108 - v4;
  v125 = sub_10010FC20(&qword_101198DA8, &unk_100ED7900);
  __chkstk_darwin();
  v130 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v124 = &v108 - v6;
  __chkstk_darwin();
  v129 = &v108 - v7;
  v8 = sub_10010FC20(&qword_1011A1440, &unk_100ECAF00);
  __chkstk_darwin();
  v10 = &v108 - v9;
  sub_10010FC20(&qword_101198DB0, &qword_100ED7910);
  __chkstk_darwin();
  v12 = &v108 - v11;
  v117 = sub_10010FC20(&qword_101198DB8, &qword_100ED7918);
  __chkstk_darwin();
  v14 = (&v108 - v13);
  v118 = sub_10010FC20(&qword_101198DC0, &qword_100ED7920);
  __chkstk_darwin();
  v119 = &v108 - v15;
  v120 = sub_10010FC20(&qword_101198DC8, &qword_100ED7928);
  __chkstk_darwin();
  v17 = &v108 - v16;
  v18 = sub_10010FC20(&qword_101198DD0, &qword_100ED7930);
  v116 = *(v18 - 8);
  __chkstk_darwin();
  v115 = &v108 - v19;
  v20 = sub_10010FC20(&qword_101198DD8, &qword_100ED7938);
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v114 = &v108 - v22;
  sub_10010FC20(&qword_101198DE0, &qword_100ED7940);
  __chkstk_darwin();
  v123 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = a1[1];
  v132 = &v108 - v24;
  v122 = v25;
  v121 = a1;
  if (v25)
  {
    v111 = v17;
    v112 = v21;
    v108 = v18;
    v109 = v20;
    v113 = v10;
    v110 = v8;

    Image.init(systemName:)();
    v26 = *(_s8TextCellVMa(0) + 28);
    v27 = type metadata accessor for SymbolRenderingMode();
    v28 = *(v27 - 8);
    (*(v28 + 16))(v12, a1 + v26, v27);
    (*(v28 + 56))(v12, 0, 1, v27);
    v29 = Image.symbolRenderingMode(_:)();

    sub_1000095E8(v12, &qword_101198DB0, &qword_100ED7910);
    v30 = static Font.title2.getter();
    KeyPath = swift_getKeyPath();
    v32 = (v14 + *(sub_10010FC20(&qword_101198DF0, &unk_100ED7950) + 36));
    v33 = *(sub_10010FC20(&qword_1011A13C0, &qword_100EC0AD0) + 28);
    v34 = enum case for Image.Scale.medium(_:);
    v35 = type metadata accessor for Image.Scale();
    (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
    *v32 = swift_getKeyPath();
    v36 = v133;
    *v14 = v29;
    v14[1] = KeyPath;
    v14[2] = v30;
    *(v14 + *(v117 + 36)) = static Color.accentColor.getter();
    sub_10010FC20(&qword_10119A070, "@R\n");
    ScaledMetric.wrappedValue.getter();
    [v36 lineHeight];
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v37 = v119;
    sub_10003D17C(v14, v119, &qword_101198DB8, &qword_100ED7918);
    v38 = (v37 + *(v118 + 36));
    v39 = v143;
    v40 = v144;
    v38[4] = v142;
    v38[5] = v39;
    v38[6] = v40;
    v41 = v139;
    *v38 = v138;
    v38[1] = v41;
    v42 = v141;
    v38[2] = v140;
    v38[3] = v42;
    v43 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = v111;
    sub_10003D17C(v37, v111, &qword_101198DC0, &qword_100ED7920);
    v53 = v120;
    v54 = v52 + *(v120 + 36);
    *v54 = v43;
    *(v54 + 8) = v45;
    *(v54 + 16) = v47;
    *(v54 + 24) = v49;
    *(v54 + 32) = v51;
    *(v54 + 40) = 0;
    v55 = enum case for DynamicTypeSize.accessibility2(_:);
    v56 = type metadata accessor for DynamicTypeSize();
    v57 = v113;
    (*(*(v56 - 8) + 104))(v113, v55, v56);
    sub_10061465C(&qword_1011A1490, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    v59 = v112;
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v60 = sub_10061669C();
    v61 = sub_100020674(&qword_1011A14A0, &qword_1011A1440, &unk_100ECAF00, &protocol conformance descriptor for PartialRangeThrough<A>);
    v62 = v115;
    v63 = v52;
    v64 = v53;
    v65 = v110;
    View.dynamicTypeSize<A>(_:)();
    sub_1000095E8(v57, &qword_1011A1440, &unk_100ECAF00);
    sub_1000095E8(v63, &qword_101198DC8, &qword_100ED7928);
    v134 = v64;
    v135 = v65;
    v136 = v60;
    v137 = v61;
    swift_getOpaqueTypeConformance2();
    v66 = v114;
    v67 = v108;
    View.accessibilityHidden(_:)();
    (*(v116 + 8))(v62, v67);
    v68 = v132;
    sub_10003D17C(v66, v132, &qword_101198DD8, &qword_100ED7938);
    (*(v59 + 56))(v68, 0, 1, v109);
  }

  else
  {
    (*(v21 + 56))(&v108 - v24, 1, 1, v20);
  }

  v69 = v121[3];
  v134 = v121[2];
  v135 = v69;
  sub_100009838();

  v70 = Text.init<A>(_:)();
  v72 = v71;
  v74 = v73;
  v75 = v133;
  Font.init(_:)();
  v76 = Text.font(_:)();
  v78 = v77;
  v80 = v79;

  sub_10011895C(v70, v72, v74 & 1);

  LODWORD(v134) = static HierarchicalShapeStyle.primary.getter();
  v81 = Text.foregroundStyle<A>(_:)();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  sub_10011895C(v76, v78, v80 & 1);

  v134 = v81;
  v135 = v83;
  LOBYTE(v136) = v85 & 1;
  v137 = v87;
  v89 = sub_10060E61C(v88);
  if (v122)
  {
    if (v89)
    {
      _s8TextCellVMa(0);
      sub_10010FC20(&qword_10119A070, "@R\n");
      ScaledMetric.wrappedValue.getter();
    }
  }

  v90 = v126;
  View.bodyHeadOutdent(_:)();
  sub_10011895C(v81, v83, v85 & 1);

  v91 = static Edge.Set.vertical.getter();
  _s8TextCellVMa(0);
  sub_10010FC20(&qword_10119A070, "@R\n");
  ScaledMetric.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v100 = v124;
  (*(v127 + 32))(v124, v90, v128);
  v101 = v100 + *(v125 + 36);
  *v101 = v91;
  *(v101 + 8) = v93;
  *(v101 + 16) = v95;
  *(v101 + 24) = v97;
  *(v101 + 32) = v99;
  *(v101 + 40) = 0;
  v102 = v129;
  sub_10003D17C(v100, v129, &qword_101198DA8, &unk_100ED7900);
  v103 = v132;
  v104 = v123;
  sub_1000089F8(v132, v123, &qword_101198DE0, &qword_100ED7940);
  v105 = v130;
  sub_1000089F8(v102, v130, &qword_101198DA8, &unk_100ED7900);
  v106 = v131;
  sub_1000089F8(v104, v131, &qword_101198DE0, &qword_100ED7940);
  v107 = sub_10010FC20(&qword_101198DE8, &qword_100ED7948);
  sub_1000089F8(v105, v106 + *(v107 + 48), &qword_101198DA8, &unk_100ED7900);
  sub_1000095E8(v102, &qword_101198DA8, &unk_100ED7900);
  sub_1000095E8(v103, &qword_101198DE0, &qword_100ED7940);
  sub_1000095E8(v105, &qword_101198DA8, &unk_100ED7900);
  return sub_1000095E8(v104, &qword_101198DE0, &qword_100ED7940);
}

uint64_t sub_10060F6C4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AccessibilityTraits();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101184C80, &qword_100EC0810);
  __chkstk_darwin();
  v13 = &v53 - v12;
  sub_10010FC20(&qword_1011987E0, &unk_100ED7430);
  __chkstk_darwin();
  v18 = __chkstk_darwin();
  if (a1)
  {
    v19 = *(v15 + 56);

    return v19(a4, 1, 1, v18);
  }

  else
  {
    *&v61 = a2;
    *(&v61 + 1) = a3;
    v57 = v14;
    v60 = v15;
    v56 = v17;
    v59 = &v53 - v16;
    sub_100009838();

    v21 = Text.init<A>(_:)();
    v23 = v22;
    v25 = v24;
    v58 = a4;
    static Font.body.getter();
    v26 = Text.font(_:)();
    v54 = v9;
    v27 = v26;
    v29 = v28;
    v53 = v13;
    v31 = v30;
    v55 = v8;

    sub_10011895C(v21, v23, v25 & 1);

    static Font.Weight.semibold.getter();
    v32 = Text.fontWeight(_:)();
    v34 = v33;
    v36 = v35;
    sub_10011895C(v27, v29, v31 & 1);

    LODWORD(v61) = static HierarchicalShapeStyle.primary.getter();
    v37 = Text.foregroundStyle<A>(_:)();
    v39 = v38;
    LOBYTE(v27) = v40;
    v42 = v41;
    sub_10011895C(v32, v34, v36 & 1);

    *&v61 = v37;
    *(&v61 + 1) = v39;
    LOBYTE(v32) = v27 & 1;
    LOBYTE(v62) = v27 & 1;
    *(&v62 + 1) = v42;
    static AccessibilityTraits.isHeader.getter();
    v43 = v53;
    View.accessibilityAddTraits(_:)();
    (*(v54 + 8))(v11, v55);
    sub_10011895C(v37, v39, v32);

    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v44 = v56;
    sub_10003D17C(v43, v56, &qword_101184C80, &qword_100EC0810);
    v45 = v57;
    v46 = (v44 + *(v57 + 36));
    v47 = v66;
    v46[4] = v65;
    v46[5] = v47;
    v46[6] = v67;
    v48 = v62;
    *v46 = v61;
    v46[1] = v48;
    v49 = v64;
    v46[2] = v63;
    v46[3] = v49;
    v50 = v59;
    sub_10003D17C(v44, v59, &qword_1011987E0, &unk_100ED7430);
    v51 = v50;
    v52 = v58;
    sub_10003D17C(v51, v58, &qword_1011987E0, &unk_100ED7430);
    return (*(v60 + 56))(v52, 0, 1, v45);
  }
}

double sub_10060FBA8@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return result;
}

void sub_10060FBB0(char a1)
{
  if (*(v1 + 48) == (a1 & 1))
  {
    *(v1 + 48) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_10061465C(&unk_101193C40, _s17PlayShuffleHeaderV10DataSourceCMa, &unk_100ED73D4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10060FCC0()
{
  swift_getKeyPath();
  sub_10061465C(&unk_101193C40, _s17PlayShuffleHeaderV10DataSourceCMa, &unk_100ED73D4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

void sub_10060FD60(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10061465C(&unk_101193C40, _s17PlayShuffleHeaderV10DataSourceCMa, &unk_100ED73D4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 48);
}

uint64_t sub_10060FE38()
{

  v1 = OBJC_IVAR____TtCVE5MusicO9MusicCore7Library17PlayShuffleHeader10DataSource___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10060FF0C(uint64_t a1)
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

void sub_10060FFB8(uint64_t a2@<X8>)
{

  v3 = static PlayIntentButtonStack.playShuffle(_:)();
  v5 = v4;
  v7 = v6;

  v8 = static Edge.Set.bottom.getter();
  swift_getKeyPath();
  sub_10061465C(&unk_101193C40, _s17PlayShuffleHeaderV10DataSourceCMa, &unk_100ED73D4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 48) = v14;
  *(a2 + 56) = v16;
  *(a2 + 64) = 0;
  *(a2 + 72) = v17;
  *(a2 + 80) = v18;
  *(a2 + 88) = v19;
  *(a2 + 96) = v20;
  *(a2 + 104) = v21;
  *(a2 + 112) = 0;
}

uint64_t sub_10061011C(unsigned int a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = &v34 - v4;
  sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  __chkstk_darwin();
  v7 = &v34 - v6;
  v8 = type metadata accessor for PlaybackIntentDescriptor(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v38 = &v34 - v11;
  v12 = __chkstk_darwin();
  v14 = &v34 - v13;
  (*(a2 + 16))(v12);
  v39 = v9;
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v15 = sub_1000095E8(v7, &qword_1011848A0, &unk_100EC64F0);
  }

  else
  {
    v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = 0xD000000000000015;
    sub_10061601C(v7, v14, type metadata accessor for PlaybackIntentDescriptor);
    v41 = 0x2E726564616548;
    v42 = 0xE700000000000000;
    v36 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v16 = 0xD000000000000018;
        v17 = "PlayIntentButton.sing";
      }

      else
      {
        v17 = "Header.PlaybackControls: ";
      }
    }

    else
    {
      v17 = "PlayIntentButton.shuffle";
    }

    v18._object = (v17 | 0x8000000000000000);
    v18._countAndFlagsBits = v16;
    String.append(_:)(v18);

    v19 = v41;
    v20 = v42;
    v21 = &v14[*(v8 + 32)];
    if (*(v21 + 24))
    {
      v35 = v5;
      sub_100008FE4(v21, &v41);
      v22 = v43;
      v23 = v44;
      sub_10000954C(&v41, v43);
      v40[3] = &type metadata for Player.CommandIssuerIdentity;
      v40[4] = &protocol witness table for Player.CommandIssuerIdentity;
      v40[0] = v19;
      v40[1] = v20;

      v24 = Player.CommandIssuer.appending(_:)(v40, v22, v23);
      v26 = v25;
      sub_10000959C(v40);
      sub_10000959C(&v41);
      v43 = &type metadata for Player.CommandIssuerIdentity;
      v44 = &protocol witness table for Player.CommandIssuerIdentity;
      if (v26)
      {

        v19 = v24;
        v20 = v26;
      }

      v5 = v35;
    }

    else
    {
      v43 = &type metadata for Player.CommandIssuerIdentity;
      v44 = &protocol witness table for Player.CommandIssuerIdentity;
    }

    v41 = v19;
    v42 = v20;
    sub_1003F8500(&v41, v21);
    PlaybackIntentDescriptor.configure(for:)(v36);
    v27 = v38;
    sub_100616084(v14, v38, type metadata accessor for PlaybackIntentDescriptor);
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
    v29 = v37;
    sub_100616084(v27, v37, type metadata accessor for PlaybackIntentDescriptor);
    type metadata accessor for MainActor();
    v30 = static MainActor.shared.getter();
    v31 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = &protocol witness table for MainActor;
    sub_10061601C(v29, v32 + v31, type metadata accessor for PlaybackIntentDescriptor);
    sub_1001F4F78(0, 0, v5, &unk_100ECA700, v32);

    sub_100615BE4(v27, type metadata accessor for PlaybackIntentDescriptor);
    v15 = sub_100615BE4(v14, type metadata accessor for PlaybackIntentDescriptor);
  }

  return (*(a2 + 32))(v15);
}

uint64_t sub_1006105E0@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_101188610, &qword_100EC4D60);
  __chkstk_darwin();
  v7 = &v29 - v6;
  v32 = sub_10010FC20(&qword_101199400, &qword_100ED7E38);
  __chkstk_darwin();
  v9 = &v29 - v8;
  v31 = Image.init(systemName:)();
  v30 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  _s13FavoriteBadgeVMa(0);
  sub_10010FC20(&qword_10119A070, "@R\n");
  ScaledMetric.wrappedValue.getter();
  v11 = type metadata accessor for Font.Design();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = static Font.system(size:weight:design:)();
  sub_1000095E8(v7, &qword_101188610, &qword_100EC4D60);
  v13 = swift_getKeyPath();
  if (*(v1 + 8))
  {
    v14 = 0.0;
  }

  else
  {
    v14 = *v1;
  }

  sub_10056CF8C(v5);
  v15 = ContentSizeCategory.isAccessibilityCategory.getter();
  (*(v3 + 8))(v5, v2);
  v16 = 4.0;
  if (v15)
  {
    v16 = 2.0;
  }

  v34 = v31;
  v35 = KeyPath;
  v36 = v30;
  v37 = v13;
  v38 = v12;
  v39 = -(v14 + v16);
  v40 = 0;
  v17 = AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor();
  v18 = *v17;
  v19 = v17[1];

  v20 = sub_10010FC20(&qword_101199408, &qword_100ED7E40);
  v21 = sub_10061859C();
  View.accessibilityLabel(_:)(v18, v19, v20, v21);

  v22 = AccessibilityIdentifier.libraryFavoriteBadge.unsafeMutableAddressor();
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = v22[3];
  v27 = sub_100618628();

  View.accessibilityIdentifier(_:)(v23, v24, v25, v26, v32, v27);

  return sub_1000095E8(v9, &qword_101199400, &qword_100ED7E38);
}

uint64_t sub_10061099C(uint64_t a1)
{
  type metadata accessor for ContentSizeCategory();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return EnvironmentValues.sizeCategory.setter();
}

double sub_100610A68@<D0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  _s17ContextMenuButtonVMa(0);
  sub_10010FC20(&qword_10119A070, "@R\n");
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = static Alignment.center.getter();
  v9 = v8;
  v10 = a1 + *(sub_10010FC20(&qword_101199270, &qword_100ED7D38) + 36);
  sub_100610B98(v3);
  v11 = (v10 + *(sub_10010FC20(&qword_101199278, &qword_100ED7D40) + 36));
  *v11 = v7;
  v11[1] = v9;
  *a1 = KeyPath;
  *(a1 + 8) = v5;
  result = *&v14;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  *(a1 + 16) = v13;
  return result;
}

uint64_t sub_100610B98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  _s17ContextMenuButtonVMa(0);
  sub_10010FC20(&qword_10119A070, "@R\n");
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v7[39] = v10;
  *&v7[23] = v9;
  *&v7[7] = v8;
  *&v6[1] = *v7;
  *&v4 = v1;
  *(&v4 + 1) = v2;
  *&v5 = *&v11[0];
  *(&v5 + 1) = *&v11[0];
  v6[0] = 0;
  *&v6[17] = *&v7[16];
  *&v6[33] = *&v7[32];
  sub_100112878(v1, v2);
  sub_10010FC20(&qword_101199280, &qword_100ED7D48);
  sub_100617CC4();
  View.accessibilityHidden(_:)();
  v11[2] = *v6;
  v11[3] = *&v6[16];
  v11[4] = *&v6[32];
  v12 = *(&v10 + 1);
  v11[0] = v4;
  v11[1] = v5;
  return sub_1000095E8(v11, &qword_101199280, &qword_100ED7D48);
}

uint64_t sub_100610D48(uint64_t result, uint64_t a2, char a3)
{
  v4 = &v3[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize];
  v5 = *&v3[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize];
  v6 = *&v3[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize + 8];
  v7 = v3[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize + 16];
  *v4 = *&result;
  v4[1] = *&a2;
  *(v4 + 16) = a3 & 1;
  if (a3)
  {
    if (v7)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((v7 & 1) != 0 || (v5 == *&result ? (v8 = v6 == *&a2) : (v8 = 0), !v8))
  {
LABEL_11:
    [v3 setPointerInteractionEnabled:{1, v5, v6}];
    v9 = *v4;
    v10 = *(v4 + 1);
    v11 = *(v4 + 16);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    *(v12 + 32) = v11;
    UIButton.pointerStyleProvider.setter();

    *&result = COERCE_DOUBLE([v3 setNeedsLayout]);
  }

  return result;
}

id sub_100610E30(char *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = &a1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider];
  v6 = *&a1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider];
  v7 = *&a1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider + 8];
  *v5 = *v1;
  *(v5 + 1) = v4;
  sub_100112878(v3, v4);
  result = sub_100020438(v6, v7);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = &a1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize];
  v13 = *&a1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize];
  v14 = *&a1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize + 8];
  v15 = a1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize + 16];
  *v12 = v9;
  *(v12 + 1) = v10;
  v12[16] = v11;
  if (v11)
  {
    if (v15)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((v15 & 1) != 0 || (v9 == v13 ? (v16 = v10 == v14) : (v16 = 0), !v16))
  {
LABEL_11:
    [a1 setPointerInteractionEnabled:1];
    v17 = *v12;
    v18 = *(v12 + 1);
    v19 = v12[16];
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = v18;
    *(v20 + 32) = v19;
    UIButton.pointerStyleProvider.setter();

    return [a1 setNeedsLayout];
  }

  return result;
}

char *sub_100610F44()
{
  ObjectType = swift_getObjectType();
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v3 = &v29 - v2;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v0[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v0[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v29.receiver = v0;
  v29.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  static UIButton.Configuration.plain()();
  UIButton.Configuration.contentInsets.setter();
  v15 = [objc_opt_self() labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  UIButton.Configuration.cornerStyle.setter();
  v16 = [objc_opt_self() currentTraitCollection];
  v17 = [v16 userInterfaceIdiom];

  if (v17 == 6)
  {
    v18 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
  }

  else
  {
    sub_100009F78(0, &qword_101183A00, UIFont_ptr);
    v18 = static UIFont.preferredFont(forTextStyle:weight:)();
  }

  v19 = v18;
  v20 = [objc_opt_self() configurationWithFont:v18 scale:2];
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() systemImageNamed:v21 withConfiguration:v20];

  UIButton.Configuration.image.setter();
  (*(v9 + 16))(v3, v11, v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  v23 = v14;
  UIButton.configuration.setter();
  [v23 setContextMenuInteractionEnabled:1];
  [v23 setShowsMenuAsPrimaryAction:1];

  [v23 setPointerInteractionEnabled:1];
  v24 = *&v23[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize];
  v25 = *&v23[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize + 8];
  v26 = v23[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize + 16];
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v27 + 24) = v25;
  *(v27 + 32) = v26;
  UIButton.pointerStyleProvider.setter();

  (*(v9 + 8))(v11, v8);
  return v23;
}

uint64_t sub_1006113F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_10010FC20(qword_101198800, &unk_100ED7450);
  __chkstk_darwin();
  v10 = &v39 - v9;
  v11 = type metadata accessor for UIPointerEffect();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  SymbolButton.Configuration.hitRectMinimumSize.unsafeMutableAddressor();
  if (a6)
  {
    v40.origin.x = v17;
    v40.origin.y = v19;
    v40.size.width = v21;
    v40.size.height = v23;
    CGRectGetWidth(v40);
    v41.origin.x = v17;
    v41.origin.y = v19;
    v41.size.width = v21;
    v41.size.height = v23;
    CGRectGetHeight(v41);
  }

  v24 = [a1 traitCollection];
  [v24 displayScale];

  CGRect.centeringAlong(axes:bounds:scale:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  (*(v12 + 16))(v15, a2, v11);
  v42.origin.x = v26;
  v42.origin.y = v28;
  v42.size.width = v30;
  v42.size.height = v32;
  Width = CGRectGetWidth(v42);
  v43.origin.x = v26;
  v43.origin.y = v28;
  v43.size.width = v30;
  v43.size.height = v32;
  Height = CGRectGetHeight(v43);
  if (Height < Width)
  {
    Width = Height;
  }

  sub_100009F78(0, &unk_101189DF0, UIPointerStyle_ptr);
  *v10 = v26;
  *(v10 + 1) = v28;
  *(v10 + 2) = v30;
  *(v10 + 3) = v32;
  *(v10 + 4) = Width * 0.5;
  v35 = enum case for UIPointerShape.roundedRect(_:);
  v36 = type metadata accessor for UIPointerShape();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v10, v35, v36);
  (*(v37 + 56))(v10, 0, 1, v36);
  return UIPointerStyle.init(effect:shape:)();
}

uint64_t sub_100611720()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UIBackgroundConfiguration();
  v37 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v36 - v8;
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = &v36 - v11;
  v39.receiver = v1;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, "layoutSubviews", v10);
  v13 = &v1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize];
  if (v1[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize + 16])
  {
    top = NSDirectionalEdgeInsetsZero.top;
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
  }

  else
  {
    v19 = *v13;
    v18 = v13[1];
    [v1 bounds];
    v20 = CGRectGetWidth(v40) - v19;
    [v1 bounds];
    top = (CGRectGetHeight(v41) - v18) * 0.5;
    leading = v20 * 0.5;
    bottom = top;
    trailing = leading;
  }

  UIButton.configuration.getter();
  v21 = type metadata accessor for UIButton.Configuration();
  v22 = *(*(v21 - 8) + 48);
  if (v22(v12, 1, v21))
  {
    sub_1000095E8(v12, &unk_101183AB0, &qword_100EBF4D0);
LABEL_16:
    UIButton.configuration.getter();
    if (v22(v9, 1, v21))
    {
      sub_1000089F8(v9, v7, &unk_101183AB0, &qword_100EBF4D0);
      UIButton.configuration.setter();
      return sub_1000095E8(v9, &unk_101183AB0, &qword_100EBF4D0);
    }

    else
    {
      v35 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundInsets.setter();
      v35(v38, 0);
      return UIButton.configuration.setter();
    }
  }

  UIButton.Configuration.background.getter();
  UIBackgroundConfiguration.backgroundInsets.getter();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v37 + 8))(v5, v3);
  result = sub_1000095E8(v12, &unk_101183AB0, &qword_100EBF4D0);
  if (v24 != top || v26 != leading || v28 != bottom || v30 != trailing)
  {
    goto LABEL_16;
  }

  return result;
}

char *sub_100611AF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *&result[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider];
    if (v4)
    {
      v5 = *&result[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider + 8];
      sub_100112878(*&result[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider], v5);

      v6 = v4(_swiftEmptyArrayStorage);
      sub_100020438(v4, v5);
      return v6;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100611D64(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_100611DA0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = [objc_allocWithZone(_s17ContextMenuButtonV6ButtonV15UIContextButtonCMa()) init];
  v7 = &v6[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider];
  v8 = *&v6[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider];
  v9 = *&v6[OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider + 8];
  *v7 = v1;
  v7[1] = v2;
  sub_100112878(v1, v2);
  sub_100020438(v8, v9);
  sub_100610D48(v3, v4, v5);
  v10 = AccessibilityIdentifier.contextualMenuButton.unsafeMutableAddressor();
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];

  v15 = UIView.withAccessibilityIdentifier(_:)(v11, v12, v13, v14);

  return v15;
}

uint64_t sub_100611EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100618F7C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100611F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100618F7C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100611F88(uint64_t a1)
{
  sub_100618F7C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100611FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v38 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v38 - 8);
  __chkstk_darwin();
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_101199510, &qword_100ED7FB8);
  __chkstk_darwin();
  v10 = &v36 - v9;
  v11 = sub_10010FC20(&qword_101199518, &qword_100ED7FC0);
  __chkstk_darwin();
  v13 = &v36 - v12;
  v14 = *(a1 + 24);
  v40 = *(a1 + 16);
  v41 = v14;
  v43 = type metadata accessor for _OverlayModifier();
  v15 = type metadata accessor for ModifiedContent();
  v45 = *(v15 - 8);
  __chkstk_darwin();
  v39 = &v36 - v16;
  v17 = type metadata accessor for ModifiedContent();
  v46 = *(v17 - 8);
  __chkstk_darwin();
  v42 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v36 - v19;
  v37 = v3;

  v55 = Image.init(systemName:)();
  static AccessibilityChildBehavior.ignore.getter();
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v7, v38);

  v20 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v22 = &v10[*(v8 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  static Font.Weight.bold.getter();
  sub_100618FD0();
  View.fontWeight(_:)();
  sub_1000095E8(v10, &qword_101199510, &qword_100ED7FB8);
  v23 = &v13[*(sub_10010FC20(&qword_101199528, &qword_100ED7FC8) + 36)];
  v24 = *(sub_10010FC20(&qword_1011A13C0, &qword_100EC0AD0) + 28);
  v25 = enum case for Image.Scale.medium(_:);
  v26 = type metadata accessor for Image.Scale();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  LODWORD(v25) = static HierarchicalShapeStyle.tertiary.getter();
  *&v13[*(sub_10010FC20(&qword_101199530, &qword_100ED7FD0) + 36)] = v25;
  v27 = v37;
  *&v13[*(v11 + 36)] = *(v37 + 16);
  v48 = v40;
  v49 = v41;
  v50 = v27;
  static Alignment.center.getter();
  v28 = sub_1006190C4();
  v29 = v39;
  View.overlay<A>(alignment:content:)();
  sub_1000095E8(v13, &qword_101199518, &qword_100ED7FC0);
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  v53 = v28;
  v54 = WitnessTable;
  v35 = swift_getWitnessTable();
  v31 = v42;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v45 + 8))(v29, v15);
  v51 = v35;
  v52 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  v32 = v44;
  sub_100663950();
  v33 = *(v46 + 8);
  v33(v31, v17);
  sub_100663950();
  return (v33)(v32, v17);
}

uint64_t sub_1006125B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15StatusIndicatorVMa(0, v6, v7, v8);
  sub_100663950();
  sub_100663950();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_1006126B0@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101199298, &qword_100ED7D50);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v17 - v8;
  strcpy(v18, "xmark.icloud");
  BYTE5(v18[1]) = 0;
  HIWORD(v18[1]) = -5120;
  v18[2] = 0x3FF0000000000000;
  static AccessibilityChildBehavior.ignore.getter();
  v10 = sub_10010FC20(&qword_1011992A0, &qword_100ED7D58);
  v11 = sub_100020674(&qword_1011992A8, &qword_1011992A0, &qword_100ED7D58, &unk_100ED7F18);
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v2);
  LocalizedStringKey.init(stringLiteral:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  LOBYTE(v3) = v15;
  v18[0] = v10;
  v18[1] = v11;
  swift_getOpaqueTypeConformance2();
  View.accessibility(label:)();
  sub_10011895C(v12, v14, v3 & 1);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10061297C@<X0>(uint64_t a1@<X8>)
{
  v162 = a1;
  v151 = sub_10010FC20(&qword_1011992B0, &qword_100ED7D60);
  __chkstk_darwin();
  v141 = &v117 - v2;
  v150 = sub_10010FC20(&qword_1011992B8, &qword_100ED7D68);
  __chkstk_darwin();
  v4 = &v117 - v3;
  v156 = sub_10010FC20(&qword_1011992C0, &qword_100ED7D70);
  __chkstk_darwin();
  v152 = &v117 - v5;
  v154 = sub_10010FC20(&qword_1011992C8, &qword_100ED7D78);
  __chkstk_darwin();
  v155 = &v117 - v6;
  v161 = sub_10010FC20(&qword_1011992D0, &qword_100ED7D80);
  __chkstk_darwin();
  v157 = &v117 - v7;
  v121 = sub_10010FC20(&qword_101199298, &qword_100ED7D50);
  v120 = *(v121 - 8);
  __chkstk_darwin();
  v119 = &v117 - v8;
  v122 = sub_10010FC20(&qword_1011992D8, &qword_100ED7D88);
  __chkstk_darwin();
  v123 = &v117 - v9;
  v153 = sub_10010FC20(&qword_1011992E0, &qword_100ED7D90);
  __chkstk_darwin();
  v124 = &v117 - v10;
  v132 = type metadata accessor for AccessibilityTraits();
  v131 = *(v132 - 8);
  __chkstk_darwin();
  v130 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for AccessibilityChildBehavior();
  v143 = *(v144 - 8);
  __chkstk_darwin();
  v142 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for CircularProgressView.LineStyle();
  v133 = *(v135 - 8);
  __chkstk_darwin();
  v134 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_10010FC20(&qword_1011992E8, &qword_100ED7D98);
  __chkstk_darwin();
  v15 = (&v117 - v14);
  v139 = sub_10010FC20(&qword_1011992F0, &qword_100ED7DA0);
  v138 = *(v139 - 8);
  __chkstk_darwin();
  v137 = &v117 - v16;
  v128 = sub_10010FC20(&qword_1011992F8, &qword_100ED7DA8);
  __chkstk_darwin();
  v140 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v126 = &v117 - v18;
  __chkstk_darwin();
  v127 = &v117 - v19;
  v149 = sub_10010FC20(&qword_101199300, &qword_100ED7DB0);
  __chkstk_darwin();
  v129 = &v117 - v20;
  v158 = sub_10010FC20(&qword_101199308, &qword_100ED7DB8);
  __chkstk_darwin();
  v160 = &v117 - v21;
  v145 = sub_10010FC20(&qword_101199310, &qword_100ED7DC0);
  __chkstk_darwin();
  v147 = &v117 - v22;
  v159 = sub_10010FC20(&qword_101199318, &qword_100ED7DC8);
  __chkstk_darwin();
  v148 = &v117 - v23;
  v24 = sub_10010FC20(&qword_101199320, &qword_100ED7DD0);
  __chkstk_darwin();
  v26 = &v117 - v25;
  v146 = sub_10010FC20(&qword_101199328, &qword_100ED7DD8);
  __chkstk_darwin();
  v125 = &v117 - v27;
  sub_10010FC20(&qword_10118F518, &unk_100ED77A0);
  __chkstk_darwin();
  v29 = (&v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v31 = &v117 - v30;
  v32 = v1;
  sub_1000089F8(v1, &v117 - v30, &qword_10118F518, &unk_100ED77A0);
  v33 = type metadata accessor for MusicLibrary.DownloadStatus();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v31, 1, v33) == 1)
  {
LABEL_2:
    v35 = v31;
    if (*(v32 + *(_s27DownloadStatusIndicatorViewVMa(0) + 20)) == 1)
    {
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v36 = v166[0];
      v37 = v166[1];
      v38 = v167;
      v39 = v168;
      LOBYTE(v163) = 1;
      v165 = v166[1];
      v164 = v168;
      *v4 = 0;
      v4[8] = 1;
      *(v4 + 2) = v36;
      v4[24] = v37;
      *(v4 + 4) = v38;
      v4[40] = v39;
      *(v4 + 3) = v169;
      swift_storeEnumTagMultiPayload();
      sub_10010FC20(&qword_101199330, &qword_100ED7DE0);
      sub_100617DA4();
      sub_100617E28(&qword_101199340, &qword_1011992B0, &qword_100ED7D60);
      v40 = v152;
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v85 = v141;
      View.accessibility(hidden:)();
      sub_1000089F8(v85, v4, &qword_1011992B0, &qword_100ED7D60);
      swift_storeEnumTagMultiPayload();
      sub_10010FC20(&qword_101199330, &qword_100ED7DE0);
      sub_100617DA4();
      sub_100617E28(&qword_101199340, &qword_1011992B0, &qword_100ED7D60);
      v40 = v152;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v85, &qword_1011992B0, &qword_100ED7D60);
    }

    sub_1000089F8(v40, v155, &qword_1011992C0, &qword_100ED7D70);
    swift_storeEnumTagMultiPayload();
    sub_100615550(&qword_101199348, &qword_1011992E0, &qword_100ED7D90, sub_100617ED0);
    sub_100617FFC();
    v86 = v157;
    _ConditionalContent<>.init(storage:)();
    sub_1000089F8(v86, v160, &qword_1011992D0, &qword_100ED7D80);
    swift_storeEnumTagMultiPayload();
    sub_1006180A8();
    sub_1006183A0();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v86, &qword_1011992D0, &qword_100ED7D80);
    sub_1000095E8(v40, &qword_1011992C0, &qword_100ED7D70);
    return sub_1000095E8(v35, &qword_10118F518, &unk_100ED77A0);
  }

  v117 = v1;
  v118 = v31;
  sub_1000089F8(v31, v29, &qword_10118F518, &unk_100ED77A0);
  v41 = (*(v34 + 88))(v29, v33);
  if (v41 != enum case for MusicLibrary.DownloadStatus.downloading(_:))
  {
    if (v41 == enum case for MusicLibrary.DownloadStatus.downloadWaiting(_:))
    {
      strcpy(v166, "circle.dashed");
      HIWORD(v166[1]) = -4864;
      v167 = 0x3FF0000000000000;
      LocalizedStringKey.init(stringLiteral:)();
      v87 = Text.init(_:tableName:bundle:comment:)();
      v89 = v88;
      v91 = v90;
      sub_10010FC20(&qword_1011992A0, &qword_100ED7D58);
      sub_100020674(&qword_1011992A8, &qword_1011992A0, &qword_100ED7D58, &unk_100ED7F18);
      View.accessibility(label:)();
      sub_10011895C(v87, v89, v91 & 1);

      v92 = AccessibilityIdentifier.downloadStatus.unsafeMutableAddressor();
      v93 = *v92;
      v94 = v92[1];
      v95 = v92[2];
      v96 = v92[3];
      v97 = sub_10061818C();

      v98 = v125;
      View.accessibilityIdentifier(_:)(v93, v94, v95, v96, v24, v97);

      sub_1000095E8(v26, &qword_101199320, &qword_100ED7DD0);
      sub_1000089F8(v98, v147, &qword_101199328, &qword_100ED7DD8);
      swift_storeEnumTagMultiPayload();
      sub_100615550(&qword_101199368, &qword_101199328, &qword_100ED7DD8, sub_10061818C);
      sub_100615550(&qword_101199378, &qword_101199300, &qword_100ED7DB0, sub_100618274);
      v99 = v148;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v99, v160, &qword_101199318, &qword_100ED7DC8);
      swift_storeEnumTagMultiPayload();
      sub_1006180A8();
      sub_1006183A0();
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v99, &qword_101199318, &qword_100ED7DC8);
      sub_1000095E8(v98, &qword_101199328, &qword_100ED7DD8);
LABEL_16:
      v35 = v118;
      return sub_1000095E8(v35, &qword_10118F518, &unk_100ED77A0);
    }

    if (v41 != enum case for MusicLibrary.DownloadStatus.downloaded(_:))
    {
      (*(v34 + 8))(v29, v33);
      v31 = v118;
      v32 = v117;
      goto LABEL_2;
    }

    v166[0] = 0xD000000000000016;
    v166[1] = 0x8000000100E526C0;
    v167 = 0x3FF0000000000000;
    v100 = v142;
    static AccessibilityChildBehavior.ignore.getter();
    v101 = sub_10010FC20(&qword_1011992A0, &qword_100ED7D58);
    v102 = sub_100020674(&qword_1011992A8, &qword_1011992A0, &qword_100ED7D58, &unk_100ED7F18);
    v103 = v119;
    View.accessibilityElement(children:)();
    (*(v143 + 8))(v100, v144);
    LocalizedStringKey.init(stringLiteral:)();
    v104 = Text.init(_:tableName:bundle:comment:)();
    v106 = v105;
    v108 = v107;
    v166[0] = v101;
    v166[1] = v102;
    swift_getOpaqueTypeConformance2();
    v109 = v123;
    v110 = v121;
    View.accessibility(label:)();
    sub_10011895C(v104, v106, v108 & 1);

    (*(v120 + 8))(v103, v110);
    v111 = AccessibilityIdentifier.downloadStatus.unsafeMutableAddressor();
    v112 = *v111;
    v113 = v111[1];
    v114 = v111[2];
    v115 = v111[3];
    v116 = sub_100617ED0();

    v79 = v124;
    View.accessibilityIdentifier(_:)(v112, v113, v114, v115, v122, v116);

    sub_1000095E8(v109, &qword_1011992D8, &qword_100ED7D88);
    v80 = &qword_1011992E0;
    v81 = &qword_100ED7D90;
    sub_1000089F8(v79, v155, &qword_1011992E0, &qword_100ED7D90);
    swift_storeEnumTagMultiPayload();
    sub_100615550(&qword_101199348, &qword_1011992E0, &qword_100ED7D90, sub_100617ED0);
    sub_100617FFC();
    v82 = v157;
    _ConditionalContent<>.init(storage:)();
    v83 = &qword_1011992D0;
    v84 = &qword_100ED7D80;
    sub_1000089F8(v82, v160, &qword_1011992D0, &qword_100ED7D80);
LABEL_15:
    swift_storeEnumTagMultiPayload();
    sub_1006180A8();
    sub_1006183A0();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v82, v83, v84);
    sub_1000095E8(v79, v80, v81);
    goto LABEL_16;
  }

  (*(v34 + 96))(v29, v33);
  v42 = *v29;
  *v15 = 0xD000000000000016;
  v15[1] = 0x8000000100E526C0;
  v15[2] = 0;
  v43 = v136;
  v44 = v15 + *(v136 + 40);
  v45 = [objc_opt_self() tertiaryLabelColor];
  Color.init(_:)();
  _s27DownloadStatusIndicatorViewVMa(0);
  sub_10010FC20(&qword_10119A070, "@R\n");
  ScaledMetric.wrappedValue.getter();
  (*(v133 + 104))(v134, enum case for CircularProgressView.LineStyle.round(_:), v135);
  LOBYTE(v166[0]) = 0;
  CircularProgressView.init(value:trackColor:lineWidth:lineStyle:)();
  sub_10010FC20(&qword_101199398, &qword_100ED7DE8);
  TintShapeStyle.init()();
  ScaledMetric.wrappedValue.getter();
  v46 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = &v44[*(sub_10010FC20(&qword_1011993A0, &qword_100ED7DF0) + 36)];
  *v55 = v46;
  *(v55 + 1) = v48;
  *(v55 + 2) = v50;
  *(v55 + 3) = v52;
  *(v55 + 4) = v54;
  v55[40] = 0;
  v56 = v142;
  static AccessibilityChildBehavior.ignore.getter();
  v57 = sub_100020674(&qword_101199388, &qword_1011992E8, &qword_100ED7D98, &unk_100ED7F18);
  v58 = v137;
  View.accessibilityElement(children:)();
  (*(v143 + 8))(v56, v144);
  sub_1000095E8(v15, &qword_1011992E8, &qword_100ED7D98);
  LocalizedStringKey.init(stringLiteral:)();
  v59 = Text.init(_:tableName:bundle:comment:)();
  v61 = v60;
  LOBYTE(v56) = v62;
  v166[0] = v43;
  v166[1] = v57;
  swift_getOpaqueTypeConformance2();
  v63 = v140;
  v64 = v139;
  View.accessibility(label:)();
  sub_10011895C(v59, v61, v56 & 1);

  result = (*(v138 + 8))(v58, v64);
  v66 = round(v42 * 100.0);
  if ((*&v66 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v66 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v66 < 9.22337204e18)
  {
    v163 = v66;
    v166[0] = dispatch thunk of CustomStringConvertible.description.getter();
    v166[1] = v67;
    v68._countAndFlagsBits = 37;
    v68._object = 0xE100000000000000;
    String.append(_:)(v68);
    v69 = v126;
    v70 = v128;
    ModifiedContent<>.accessibility(value:)();

    sub_1000095E8(v63, &qword_1011992F8, &qword_100ED7DA8);
    v71 = v130;
    static AccessibilityTraits.updatesFrequently.getter();
    v72 = v127;
    ModifiedContent<>.accessibilityAddTraits(_:)();
    (*(v131 + 8))(v71, v132);
    sub_1000095E8(v69, &qword_1011992F8, &qword_100ED7DA8);
    v73 = AccessibilityIdentifier.downloadStatus.unsafeMutableAddressor();
    v74 = *v73;
    v75 = v73[1];
    v76 = v73[2];
    v77 = v73[3];
    v78 = sub_100618274();

    v79 = v129;
    View.accessibilityIdentifier(_:)(v74, v75, v76, v77, v70, v78);

    sub_1000095E8(v72, &qword_1011992F8, &qword_100ED7DA8);
    v80 = &qword_101199300;
    v81 = &qword_100ED7DB0;
    sub_1000089F8(v79, v147, &qword_101199300, &qword_100ED7DB0);
    swift_storeEnumTagMultiPayload();
    sub_100615550(&qword_101199368, &qword_101199328, &qword_100ED7DD8, sub_10061818C);
    sub_100615550(&qword_101199378, &qword_101199300, &qword_100ED7DB0, sub_100618274);
    v82 = v148;
    _ConditionalContent<>.init(storage:)();
    v83 = &qword_101199318;
    v84 = &qword_100ED7DC8;
    sub_1000089F8(v82, v160, &qword_101199318, &qword_100ED7DC8);
    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100614348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_10010FC20(&qword_1011888C0, &qword_100EC2FA0);
  __chkstk_darwin();
  v6 = &v17 - v5;
  v7 = type metadata accessor for UIBackgroundConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v17 - v11;
  if ((UICellConfigurationState.isFocused.getter() & 1) != 0 && (v13 = [objc_opt_self() currentDevice], v14 = objc_msgSend(v13, "userInterfaceIdiom"), v13, v14 != 6))
  {
    static UIBackgroundConfiguration.clear()();
    UIBackgroundConfiguration.cornerRadius.setter();
    v15 = [objc_opt_self() tintColor];
    UIBackgroundConfiguration.strokeColor.setter();
    UIBackgroundConfiguration.strokeWidth.setter();
    UIBackgroundConfiguration.strokeOutset.setter();
    (*(v8 + 32))(v12, v10, v7);
  }

  else
  {
    static UIBackgroundConfiguration.clear()();
  }

  (*(v8 + 16))(v6, v12, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  UICollectionViewCell.backgroundConfiguration.setter();
  return (*(v8 + 8))(v12, v7);
}

unint64_t sub_1006145B8()
{
  result = qword_1011987D0;
  if (!qword_1011987D0)
  {
    sub_1001109D0(&qword_1011987C8, &qword_100ED7428);
    sub_100617428(&qword_1011987D8, &qword_1011987E0, &unk_100ED7430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011987D0);
  }

  return result;
}

uint64_t sub_10061465C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006146C8(void *a1)
{
  type metadata accessor for ArtworkImage.Info(319);
  if (v2 <= 0x3F)
  {
    sub_1000308A0(319, &qword_10118F6F0, &type metadata for String);
    if (v3 <= 0x3F)
    {
      sub_100617AE4(319, &qword_101198888, &type metadata accessor for ContentRating, &type metadata accessor for Optional);
      if (v4 <= 0x3F)
      {
        v5 = a1[2];
        type metadata accessor for MusicLibrary.ItemState();
        swift_getWitnessTable();
        type metadata accessor for ObservedObject();
        if (v7 <= 0x3F)
        {
          type metadata accessor for MusicItemState(255, v5, a1[3], v6);
          swift_getWitnessTable();
          type metadata accessor for ObservedObject();
          if (v8 <= 0x3F)
          {
            sub_100617AE4(319, &qword_101198890, type metadata accessor for WaveformPlayer.ListenerToken, &type metadata accessor for Optional);
            if (v9 <= 0x3F)
            {
              sub_100266B58(319, &qword_1011A11C0, &unk_10118F700, "dM\n", &type metadata accessor for Optional);
              if (v10 <= 0x3F)
              {
                sub_100617AE4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
                if (v11 <= 0x3F)
                {
                  sub_100266B58(319, &qword_101185558, &unk_101184290, &qword_100EC0E60, &type metadata accessor for Environment);
                  if (v12 <= 0x3F)
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

void sub_100614A0C(uint64_t a1)
{
  sub_1000308A0(319, &qword_10118F6F0, &type metadata for String);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TextStyle(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SymbolRenderingMode();
      if (v3 <= 0x3F)
      {
        sub_100402A50(319);
        if (v4 <= 0x3F)
        {
          sub_100617AE4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100614B64(uint64_t a1)
{
  type metadata accessor for ArtworkImage.Info(319);
  if (v1 <= 0x3F)
  {
    sub_1000308A0(319, &qword_101186618, &type metadata for ArtworkImage.GridPreview.ViewModel);
    if (v2 <= 0x3F)
    {
      sub_1000308A0(319, &qword_10118F6F0, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_100617AE4(319, &qword_101198888, &type metadata accessor for ContentRating, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100266B58(319, &qword_1011A11C0, &unk_10118F700, "dM\n", &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100614D7C(319, &qword_1011989A8, &unk_1011847C0, &unk_100EC0480, &unk_1011847D0);
            if (v6 <= 0x3F)
            {
              sub_100614D7C(319, &unk_1011989B0, &unk_10118D300, &qword_100EBCE20, &qword_10118D310);
              if (v7 <= 0x3F)
              {
                sub_100617AE4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
                if (v8 <= 0x3F)
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

void sub_100614D7C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1001109D0(a3, a4);
    sub_100020674(a5, a3, a4, &protocol conformance descriptor for OptionalObservableObject<A>);
    v9 = type metadata accessor for ObservedObject();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100614E70(uint64_t a1)
{
  type metadata accessor for ArtworkImage.Info(319);
  if (v1 <= 0x3F)
  {
    sub_1000308A0(319, &qword_101186618, &type metadata for ArtworkImage.GridPreview.ViewModel);
    if (v2 <= 0x3F)
    {
      sub_1000308A0(319, &qword_10118F6F0, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_100617AE4(319, &qword_101198888, &type metadata accessor for ContentRating, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100617AE4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_100614FD4()
{
  result = qword_101198AB8;
  if (!qword_101198AB8)
  {
    sub_1001109D0(&qword_101198AC0, &qword_100ED74D8);
    sub_100615060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198AB8);
  }

  return result;
}

unint64_t sub_100615060()
{
  result = qword_101198AC8;
  if (!qword_101198AC8)
  {
    sub_1001109D0(&qword_101198AD0, &qword_100ED74E0);
    sub_100218D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198AC8);
  }

  return result;
}

uint64_t sub_100615158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v14 - v9;
  v11(v8);
  sub_100663950();
  v12 = *(v5 + 8);
  v12(v7, a4);
  sub_100663950();
  return (v12)(v10, a4);
}

unint64_t sub_10061528C()
{
  result = qword_101198B10;
  if (!qword_101198B10)
  {
    sub_1001109D0(&qword_101198AE8, &qword_100ED7638);
    sub_100615344();
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198B10);
  }

  return result;
}

unint64_t sub_100615344()
{
  result = qword_101198B18;
  if (!qword_101198B18)
  {
    sub_1001109D0(&qword_101198AE0, &qword_100ED7630);
    sub_100020674(&qword_101198B20, &qword_101198AD8, &qword_100ED7628, &protocol conformance descriptor for VStack<A>);
    sub_100020674(&qword_1011860B8, &unk_10119A2E0, &qword_100ED53A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198B18);
  }

  return result;
}

unint64_t sub_100615428()
{
  result = qword_101198B28;
  if (!qword_101198B28)
  {
    sub_1001109D0(&qword_101198AF8, &qword_100ED7648);
    sub_1001109D0(&qword_101198AE8, &qword_100ED7638);
    sub_10061528C();
    swift_getOpaqueTypeConformance2();
    sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198B28);
  }

  return result;
}

uint64_t sub_100615550(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100615604(uint64_t a1)
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v3 = v19 - v2;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v5 = v19 - v4;
  sub_1000089F8(a1, v3, &unk_101188920, &qword_100EBCC50);
  v6 = type metadata accessor for Artwork();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    v8 = &unk_101188920;
    v9 = &qword_100EBCC50;
    v10 = v3;
  }

  else
  {
    Artwork.url(width:height:)();
    (*(v7 + 8))(v3, v6);
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v5, 1, v11) != 1)
    {
      v14 = URL.absoluteString.getter();
      v16 = v15;
      (*(v12 + 8))(v5, v11);
      v19[2] = v14;
      v19[3] = v16;
      v19[0] = 0x6E6569736E617274;
      v19[1] = 0xE900000000000074;
      sub_100009838();
      v17 = StringProtocol.contains<A>(_:)();

      v13 = v17 ^ 1;
      return v13 & 1;
    }

    v8 = &qword_101183A20;
    v9 = &unk_100EBCF80;
    v10 = v5;
  }

  sub_1000095E8(v10, v8, v9);
  v13 = 0;
  return v13 & 1;
}

unint64_t sub_100615888()
{
  result = qword_101198BA0;
  if (!qword_101198BA0)
  {
    sub_1001109D0(&qword_101198B70, &qword_100ED7708);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198BA0);
  }

  return result;
}

unint64_t sub_10061592C()
{
  result = qword_101198BB0;
  if (!qword_101198BB0)
  {
    sub_1001109D0(&qword_101198B78, &qword_100ED7710);
    sub_10024E84C();
    sub_100020674(&qword_101198BB8, &qword_101198BA8, &qword_100ED7738, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198BB0);
  }

  return result;
}

unint64_t sub_1006159E4()
{
  result = qword_101198BC0;
  if (!qword_101198BC0)
  {
    sub_1001109D0(&qword_101198B60, &qword_100ED76F8);
    sub_100615A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198BC0);
  }

  return result;
}

unint64_t sub_100615A70()
{
  result = qword_101198BC8;
  if (!qword_101198BC8)
  {
    sub_1001109D0(&qword_101198B58, &qword_100ED76F0);
    sub_100615AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198BC8);
  }

  return result;
}

unint64_t sub_100615AFC()
{
  result = qword_101198BD0;
  if (!qword_101198BD0)
  {
    sub_1001109D0(&qword_101198B50, &qword_100EDE3F0);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_101184E40, &qword_10119A240, &qword_100EC09F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198BD0);
  }

  return result;
}

uint64_t sub_100615BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100615C44()
{
  result = qword_101198C18;
  if (!qword_101198C18)
  {
    sub_1001109D0(&qword_101198BE8, &qword_100ED7768);
    sub_100020674(&qword_101198C20, &qword_101198BE0, &qword_100ED7760, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198C18);
  }

  return result;
}

unint64_t sub_100615CFC()
{
  result = qword_101198C28;
  if (!qword_101198C28)
  {
    sub_1001109D0(&qword_101198BF8, &qword_100ED7778);
    sub_1001109D0(&qword_101198BE8, &qword_100ED7768);
    sub_100615C44();
    swift_getOpaqueTypeConformance2();
    sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198C28);
  }

  return result;
}

unint64_t sub_100615E6C()
{
  result = qword_101198CA0;
  if (!qword_101198CA0)
  {
    sub_1001109D0(&qword_101198C78, &qword_100ED77E8);
    sub_100615EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198CA0);
  }

  return result;
}

unint64_t sub_100615EF8()
{
  result = qword_101198CA8;
  if (!qword_101198CA8)
  {
    sub_1001109D0(&qword_101198C70, &qword_100ED77E0);
    sub_1001109D0(&qword_101186908, &qword_100EC22D8);
    sub_1001109D0(&qword_101186818, &unk_100ED77D0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198CA8);
  }

  return result;
}

uint64_t sub_10061601C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100616084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1006160EC()
{
  result = qword_101198CD8;
  if (!qword_101198CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198CD8);
  }

  return result;
}

unint64_t sub_100616178()
{
  result = qword_101198D28;
  if (!qword_101198D28)
  {
    sub_1001109D0(&qword_101198D00, &qword_100ED7848);
    sub_100616230();
    sub_100020674(&qword_101185BE0, &qword_101185BE8, &qword_100EDC400, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198D28);
  }

  return result;
}

unint64_t sub_100616230()
{
  result = qword_101198D30;
  if (!qword_101198D30)
  {
    sub_1001109D0(&qword_101187818, &unk_100ED7870);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198D30);
  }

  return result;
}

unint64_t sub_100616318()
{
  result = qword_101198D38;
  if (!qword_101198D38)
  {
    sub_1001109D0(&qword_101198D18, &qword_100ED7860);
    sub_1006163A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198D38);
  }

  return result;
}

unint64_t sub_1006163A4()
{
  result = qword_101198D40;
  if (!qword_101198D40)
  {
    sub_1001109D0(&qword_101198D10, &qword_100ED7858);
    sub_1001109D0(&qword_101198D00, &qword_100ED7848);
    sub_100616178();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0, &qword_100ED53A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198D40);
  }

  return result;
}

unint64_t sub_100616498()
{
  result = qword_101198D58;
  if (!qword_101198D58)
  {
    sub_1001109D0(&qword_101198D50, &qword_100ED7888);
    sub_100544124();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0, &qword_100ED53A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198D58);
  }

  return result;
}

unint64_t sub_100616570()
{
  result = qword_101198D98;
  if (!qword_101198D98)
  {
    sub_1001109D0(&qword_101198D78, &qword_100ED78D8);
    sub_1001109D0(&qword_101198D68, &qword_100ED78C8);
    sub_100020674(&qword_101198D90, &qword_101198D68, &qword_100ED78C8, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198D98);
  }

  return result;
}

unint64_t sub_10061669C()
{
  result = qword_101198DF8;
  if (!qword_101198DF8)
  {
    sub_1001109D0(&qword_101198DC8, &qword_100ED7928);
    sub_100616728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198DF8);
  }

  return result;
}

unint64_t sub_100616728()
{
  result = qword_101198E00;
  if (!qword_101198E00)
  {
    sub_1001109D0(&qword_101198DC0, &qword_100ED7920);
    sub_1006167B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198E00);
  }

  return result;
}

unint64_t sub_1006167B4()
{
  result = qword_101198E08;
  if (!qword_101198E08)
  {
    sub_1001109D0(&qword_101198DB8, &qword_100ED7918);
    sub_10061686C();
    sub_100020674(&unk_101199EA0, &qword_1011879C8, &qword_100EE1C80, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198E08);
  }

  return result;
}

unint64_t sub_10061686C()
{
  result = qword_101198E10;
  if (!qword_101198E10)
  {
    sub_1001109D0(&qword_101198DF0, &unk_100ED7950);
    sub_100238768();
    sub_100020674(&qword_1011A1670, &qword_1011A13C0, &qword_100EC0AD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198E10);
  }

  return result;
}

unint64_t sub_100616954()
{
  result = qword_101198EA8;
  if (!qword_101198EA8)
  {
    sub_1001109D0(&qword_101198E70, &qword_100ED79E8);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_101198EB0, &qword_101198E68, &qword_100ED79E0, &unk_100ECAA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198EA8);
  }

  return result;
}

unint64_t sub_100616A24()
{
  result = qword_101198EB8;
  if (!qword_101198EB8)
  {
    sub_1001109D0(&qword_101198E88, &qword_100ED7A00);
    sub_1001109D0(&qword_101198E78, &qword_100ED79F0);
    sub_1001109D0(&qword_101198E70, &qword_100ED79E8);
    sub_100616954();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198EB8);
  }

  return result;
}

unint64_t sub_100616B60()
{
  result = qword_101198EC8;
  if (!qword_101198EC8)
  {
    sub_1001109D0(&qword_101198E58, &qword_100ED79D0);
    sub_100615AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198EC8);
  }

  return result;
}

unint64_t sub_100616C2C()
{
  result = qword_101198EE0;
  if (!qword_101198EE0)
  {
    sub_1001109D0(&qword_101198ED0, &qword_100ED7A48);
    sub_100617E28(&qword_1011860C0, &qword_101184C80, &qword_100EC0810);
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198EE0);
  }

  return result;
}

unint64_t sub_100616D04()
{
  result = qword_101198EE8;
  if (!qword_101198EE8)
  {
    sub_1001109D0(&qword_101198E18, &qword_100ED7990);
    sub_100616D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198EE8);
  }

  return result;
}

unint64_t sub_100616D90()
{
  result = qword_101198EF0;
  if (!qword_101198EF0)
  {
    sub_1001109D0(&qword_101198EA0, &qword_100ED7A18);
    sub_100615550(&qword_101198EF8, &qword_101198E98, &qword_100ED7A10, sub_100616B30);
    sub_100020674(&qword_101198F00, &qword_101198CB8, &qword_100ED7810, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198EF0);
  }

  return result;
}

unint64_t sub_100616E84()
{
  result = qword_101198F18;
  if (!qword_101198F18)
  {
    sub_1001109D0(&qword_101198C48, &qword_100ED7798);
    sub_10061465C(&qword_101198C40, _s17ContextMenuButtonVMa, &unk_100ED7CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198F18);
  }

  return result;
}

unint64_t sub_100616F38()
{
  result = qword_101198F28;
  if (!qword_101198F28)
  {
    sub_1001109D0(&qword_101198E28, &qword_100ED79A0);
    sub_100020674(&qword_101198F30, &qword_101198F08, &unk_100ED7A80, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198F28);
  }

  return result;
}

unint64_t sub_100616FF0()
{
  result = qword_101198F68;
  if (!qword_101198F68)
  {
    sub_1001109D0(&qword_101198F48, &qword_100ED7AA8);
    sub_1006170A8();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0, &qword_100ED53A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198F68);
  }

  return result;
}

unint64_t sub_1006170A8()
{
  result = qword_101198F70;
  if (!qword_101198F70)
  {
    sub_1001109D0(&qword_101198F60, &qword_100ED7AC0);
    sub_100615550(&qword_101198F78, &qword_101198E60, &qword_100ED79D8, sub_100616B60);
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198F70);
  }

  return result;
}

unint64_t sub_1006171BC()
{
  result = qword_101198F98;
  if (!qword_101198F98)
  {
    sub_1001109D0(&qword_101198E38, &qword_100ED79B0);
    sub_100617248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198F98);
  }

  return result;
}

unint64_t sub_100617248()
{
  result = qword_101198FA0;
  if (!qword_101198FA0)
  {
    sub_1001109D0(&qword_101198F90, &qword_100ED7AE0);
    sub_100615550(&qword_101198F78, &qword_101198E60, &qword_100ED79D8, sub_100616B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198FA0);
  }

  return result;
}

uint64_t sub_100617300(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10061737C()
{
  result = qword_101198FB0;
  if (!qword_101198FB0)
  {
    sub_1001109D0(&qword_101198F88, &qword_100ED7AD8);
    sub_100617428(&qword_101198FB8, &unk_101184C90, &unk_100EC0820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198FB0);
  }

  return result;
}

uint64_t sub_100617428(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    sub_100617E28(&qword_1011860C0, &qword_101184C80, &qword_100EC0810);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006174C0()
{
  result = qword_101198FD8;
  if (!qword_101198FD8)
  {
    sub_1001109D0(&qword_101198E48, &unk_100ED79C0);
    sub_100615550(&qword_101198FD0, &qword_101198FC8, &unk_100ED7AF0, sub_100119518);
    sub_10061737C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198FD8);
  }

  return result;
}

uint64_t sub_100617578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  type metadata accessor for SplitPercentageLayout();

  return sub_10060B69C(a1, a2, v7, v8, v9, a3);
}

void sub_10061765C(uint64_t a1)
{
  sub_100617AE4(319, &unk_101199050, &type metadata accessor for MusicLibrary.DownloadStatus, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100402A50(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100617750(uint64_t a1)
{
  sub_100266B58(319, &qword_1011A11C0, &unk_10118F700, "dM\n", &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100402A50(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100617808(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MusicItemState(255, a1[2], a1[3], a4);
  swift_getWitnessTable();
  type metadata accessor for ObservedObject();
  if (v4 <= 0x3F)
  {
    type metadata accessor for MusicLibrary.ItemState();
    swift_getWitnessTable();
    type metadata accessor for ObservedObject();
    if (v5 <= 0x3F)
    {
      sub_1000308A0(319, &qword_1011991A0, &type metadata for Duration);
      if (v6 <= 0x3F)
      {
        sub_100266B58(319, &qword_1011A11C0, &unk_10118F700, "dM\n", &type metadata accessor for Optional);
        if (v7 <= 0x3F)
        {
          sub_100617AE4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100617A08(uint64_t a1)
{
  sub_1000308A0(319, &qword_101194178, &type metadata for CGFloat);
  if (v1 <= 0x3F)
  {
    sub_100402A50(319);
    if (v2 <= 0x3F)
    {
      sub_100617AE4(319, &unk_101199218, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100617AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100617B48()
{
  result = qword_101199260;
  if (!qword_101199260)
  {
    sub_1001109D0(&qword_101198DA0, &unk_100ED78F0);
    sub_100615550(&qword_101199268, &qword_101198D80, &qword_100ED78E0, sub_100616570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199260);
  }

  return result;
}

unint64_t sub_100617CC4()
{
  result = qword_101199288;
  if (!qword_101199288)
  {
    sub_1001109D0(&qword_101199280, &qword_100ED7D48);
    sub_100617D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199288);
  }

  return result;
}

unint64_t sub_100617D50()
{
  result = qword_101199290;
  if (!qword_101199290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199290);
  }

  return result;
}

unint64_t sub_100617DA4()
{
  result = qword_101199338;
  if (!qword_101199338)
  {
    sub_1001109D0(&qword_101199330, &qword_100ED7DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199338);
  }

  return result;
}

uint64_t sub_100617E28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100617ED0()
{
  result = qword_101199350;
  if (!qword_101199350)
  {
    sub_1001109D0(&qword_1011992D8, &qword_100ED7D88);
    sub_1001109D0(&qword_1011992A0, &qword_100ED7D58);
    sub_100020674(&qword_1011992A8, &qword_1011992A0, &qword_100ED7D58, &unk_100ED7F18);
    swift_getOpaqueTypeConformance2();
    sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199350);
  }

  return result;
}

unint64_t sub_100617FFC()
{
  result = qword_101199358;
  if (!qword_101199358)
  {
    sub_1001109D0(&qword_1011992C0, &qword_100ED7D70);
    sub_100617DA4();
    sub_100617E28(&qword_101199340, &qword_1011992B0, &qword_100ED7D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199358);
  }

  return result;
}

unint64_t sub_1006180A8()
{
  result = qword_101199360;
  if (!qword_101199360)
  {
    sub_1001109D0(&qword_101199318, &qword_100ED7DC8);
    sub_100615550(&qword_101199368, &qword_101199328, &qword_100ED7DD8, sub_10061818C);
    sub_100615550(&qword_101199378, &qword_101199300, &qword_100ED7DB0, sub_100618274);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199360);
  }

  return result;
}

unint64_t sub_10061818C()
{
  result = qword_101199370;
  if (!qword_101199370)
  {
    sub_1001109D0(&qword_101199320, &qword_100ED7DD0);
    sub_100020674(&qword_1011992A8, &qword_1011992A0, &qword_100ED7D58, &unk_100ED7F18);
    sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199370);
  }

  return result;
}

unint64_t sub_100618274()
{
  result = qword_101199380;
  if (!qword_101199380)
  {
    sub_1001109D0(&qword_1011992F8, &qword_100ED7DA8);
    sub_1001109D0(&qword_1011992E8, &qword_100ED7D98);
    sub_100020674(&qword_101199388, &qword_1011992E8, &qword_100ED7D98, &unk_100ED7F18);
    swift_getOpaqueTypeConformance2();
    sub_10061465C(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199380);
  }

  return result;
}

unint64_t sub_1006183A0()
{
  result = qword_101199390;
  if (!qword_101199390)
  {
    sub_1001109D0(&qword_1011992D0, &qword_100ED7D80);
    sub_100615550(&qword_101199348, &qword_1011992E0, &qword_100ED7D90, sub_100617ED0);
    sub_100617FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199390);
  }

  return result;
}

unint64_t sub_100618458()
{
  result = qword_1011993E0;
  if (!qword_1011993E0)
  {
    sub_1001109D0(&qword_1011993D8, &qword_100ED7E28);
    sub_100618510();
    sub_100020674(&qword_1011993F0, &qword_1011993F8, &unk_100EE31F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011993E0);
  }

  return result;
}

unint64_t sub_100618510()
{
  result = qword_1011A1620;
  if (!qword_1011A1620)
  {
    sub_1001109D0(&qword_1011993E8, &qword_100ED7E30);
    sub_100544124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1620);
  }

  return result;
}

unint64_t sub_10061859C()
{
  result = qword_101199410;
  if (!qword_101199410)
  {
    sub_1001109D0(&qword_101199408, &qword_100ED7E40);
    sub_1005963C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199410);
  }

  return result;
}

uint64_t sub_100618658(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1006186B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10061871C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1006187A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
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

void sub_100618930(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
      if (v10)
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
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

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

unint64_t sub_100618BA0()
{
  result = qword_1011994A0;
  if (!qword_1011994A0)
  {
    sub_1001109D0(&qword_101199270, &qword_100ED7D38);
    sub_100618C58();
    sub_100020674(&qword_1011994D0, &qword_101199278, &qword_100ED7D40, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011994A0);
  }

  return result;
}

unint64_t sub_100618C58()
{
  result = qword_1011994A8;
  if (!qword_1011994A8)
  {
    sub_1001109D0(&qword_1011994B0, &qword_100ED7E68);
    sub_100618CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011994A8);
  }

  return result;
}

unint64_t sub_100618CE4()
{
  result = qword_1011994B8;
  if (!qword_1011994B8)
  {
    sub_1001109D0(&qword_1011994C0, &qword_100ED7E70);
    sub_100618D9C();
    sub_100020674(&unk_1011914C0, &unk_101184E90, &unk_100EC0AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011994B8);
  }

  return result;
}

unint64_t sub_100618D9C()
{
  result = qword_1011994C8;
  if (!qword_1011994C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011994C8);
  }

  return result;
}

unint64_t sub_100618DF0()
{
  result = qword_1011994D8;
  if (!qword_1011994D8)
  {
    sub_1001109D0(&qword_1011994E0, &qword_100ED7E78);
    sub_1006180A8();
    sub_1006183A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011994D8);
  }

  return result;
}

unint64_t sub_100618E7C()
{
  result = qword_1011994E8;
  if (!qword_1011994E8)
  {
    sub_1001109D0(&qword_1011993B8, &qword_100ED7E08);
    sub_100020674(&qword_1011994F0, &qword_1011993A8, &qword_100ED7DF8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011994E8);
  }

  return result;
}

unint64_t sub_100618F7C()
{
  result = qword_101199508;
  if (!qword_101199508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199508);
  }

  return result;
}

unint64_t sub_100618FD0()
{
  result = qword_101199520;
  if (!qword_101199520)
  {
    sub_1001109D0(&qword_101199510, &qword_100ED7FB8);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199520);
  }

  return result;
}

unint64_t sub_1006190C4()
{
  result = qword_101199538;
  if (!qword_101199538)
  {
    sub_1001109D0(&qword_101199518, &qword_100ED7FC0);
    sub_100619150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199538);
  }

  return result;
}

unint64_t sub_100619150()
{
  result = qword_101199540;
  if (!qword_101199540)
  {
    sub_1001109D0(&qword_101199530, &qword_100ED7FD0);
    sub_100619208();
    sub_100020674(&unk_101184E40, &qword_10119A240, &qword_100EC09F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199540);
  }

  return result;
}

unint64_t sub_100619208()
{
  result = qword_101199548;
  if (!qword_101199548)
  {
    sub_1001109D0(&qword_101199528, &qword_100ED7FC8);
    sub_1001109D0(&qword_101199510, &qword_100ED7FB8);
    sub_100618FD0();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011A1670, &qword_1011A13C0, &qword_100EC0AD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199548);
  }

  return result;
}

void sub_100619300(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v46 = &v45 - v6;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = Notification.userInfo.getter();
  if (!v17)
  {

LABEL_21:

    goto LABEL_22;
  }

  v18 = v17;
  v50 = v7;
  v51 = v9;
  AnyHashable.init<A>(_:)();
  if (!*(v18 + 16) || (v19 = sub_1000160B4(v54), (v20 & 1) == 0))
  {

    goto LABEL_17;
  }

  sub_10000DD18(*(v18 + 56) + 32 * v19, &v52);
  sub_10001621C(v54);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_20;
  }

  v21 = v50;
  v50 = v10;
  v51 = v12;
  AnyHashable.init<A>(_:)();
  if (!*(v18 + 16) || (v22 = sub_1000160B4(v54), (v23 & 1) == 0))
  {
LABEL_17:

    sub_10001621C(v54);
LABEL_22:
    v30 = Logger.carMetrics.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v30, v2);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "❌ Missing PAF key information", v33, 2u);
    }

    (*(v3 + 8))(v5, v2);
    return;
  }

  sub_10000DD18(*(v18 + 56) + 32 * v22, &v52);
  sub_10001621C(v54);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  v24 = v50;
  v52 = v48;
  v53 = v14;
  AnyHashable.init<A>(_:)();
  if (*(v18 + 16) && (v25 = sub_1000160B4(v54), (v26 & 1) != 0))
  {
    sub_10000DD18(*(v18 + 56) + 32 * v25, &v52);
    sub_10001621C(v54);
    v27 = swift_dynamicCast();
    if (v27)
    {
      v28 = v50;
    }

    else
    {
      v28 = 0;
    }

    if (v27)
    {
      v29 = v51;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    sub_10001621C(v54);
    v28 = 0;
    v29 = 0;
  }

  v52 = v49;
  v53 = v16;
  AnyHashable.init<A>(_:)();
  if (*(v18 + 16) && (v34 = sub_1000160B4(v54), (v35 & 1) != 0))
  {
    sub_10000DD18(*(v18 + 56) + 32 * v34, &v52);
    sub_10001621C(v54);

    v36 = swift_dynamicCast();
    if (v36)
    {
      v37 = v50;
    }

    else
    {
      v37 = 0;
    }

    v38 = v36 ^ 1;
  }

  else
  {

    sub_10001621C(v54);
    v37 = 0;
    v38 = 1;
  }

  static ApplicationCapabilities.shared.getter(v54);
  sub_100014984(v54);
  if (v55 == 2)
  {

LABEL_37:
    v40 = type metadata accessor for TaskPriority();
    v41 = v46;
    (*(*(v40 - 8) + 56))(v46, 1, 1, v40);
    type metadata accessor for MainActor();
    v42 = v47;

    v43 = static MainActor.shared.getter();
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = &protocol witness table for MainActor;
    *(v44 + 32) = v42;
    *(v44 + 40) = v21;
    *(v44 + 48) = v24;
    *(v44 + 56) = v28;
    *(v44 + 64) = v29;
    *(v44 + 72) = v37;
    *(v44 + 80) = v38;
    sub_1001F4CB8(0, 0, v41, &unk_100ED7FF8, v44);

    return;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v39)
  {
    goto LABEL_37;
  }
}

uint64_t sub_1006199B0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 64) = a10;
  *(v10 + 40) = a8;
  *(v10 + 48) = a9;
  *(v10 + 32) = a7;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  type metadata accessor for MainActor();
  *(v10 + 56) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100619A54, v12, v11);
}

uint64_t sub_100619A54()
{

  sub_100619CDC();
  v2 = v1;
  if (v1)
  {
    goto LABEL_2;
  }

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v3 = (*(*qword_101218AC8 + 528))();
  if (v3)
  {
    v4 = v3;
    if (*(v3 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost) == 1)
    {
      v5 = (*((swift_isaMask & *v3) + 0x138))();

      if (v5 == 1)
      {
LABEL_2:
        sub_100619FD4((v2 & 1) == 0, *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 64) & 1, *(v0 + 16), *(v0 + 24));
      }
    }

    else
    {
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100619BE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = *(v1 + 80);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10002F3F4;

  return sub_1006199B0(v7, v8, a1, v4, v5, v6, v9, v10, v11, v12);
}

void sub_100619CDC()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_100062364();
  sub_100061F5C();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
    v6 = v29;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
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

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v15)
    {
      while (1)
      {
        v16 = [v15 session];
        v17 = [v16 role];

        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {
          break;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          goto LABEL_25;
        }

        v5 = v13;
        v6 = v14;
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v15 = v24;
          v13 = v5;
          v14 = v6;
          if (v24)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_10005C9F8(v2);
    }

    else
    {
LABEL_23:
      sub_10005C9F8(v2);
    }
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_23;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_100619FD4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7)
{
  v40 = a4;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  v41 = *(v17 - 8);
  __chkstk_darwin();
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1 & 1;
  static CarNowPlayingMetrics.persistedMetricsData(for:)(v46);
  v21 = v47;
  v22 = v46[1];
  if (v47)
  {
    v23 = *v46;
  }

  else
  {
    v23 = 0.0;
  }

  if (!v47)
  {
    v22 = 0;
  }

  v24 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
  }

  else
  {
    v42 = v13;
    v25 = vabdd_f64(a7, a6);
    if (v47)
    {
      v26 = v48;
    }

    else
    {
      v21 = &_swiftEmptySetSingleton;
      v26 = 0;
    }

    v45 = v21;
    if (!a3 || !a2 && a3 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (a5 & 1) != 0 || v40 < 2)
    {
      sub_10061A3A4(v46, &v49);
    }

    else
    {
      sub_10061A3A4(v46, &v49);

      sub_1003B3170(&v49, a2, a3);

      if (v26 <= v40)
      {
        v26 = v40;
      }
    }

    v27 = v25 + v23;
    if (v47)
    {
      v28 = v46[2];
      sub_10061A414(v46);
    }

    else
    {
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v28 = v29;
      (*(v41 + 8))(v19, v17);
    }

    v49.n128_f64[0] = v27;
    v49.n128_u64[1] = v24;
    v50 = v28;
    v51 = v45;
    v52 = v26;
    static CarNowPlayingMetrics.storeMetricsData(_:for:)(&v49, v20);

    v30 = Logger.carMetrics.unsafeMutableAddressor();
    v31 = v42;
    (*(v14 + 16))(v16, v30, v42);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136446210;
      v43 = v20;
      v36 = String.init<A>(describing:)();
      v38 = sub_1000105AC(v36, v37, &v44);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Stored metrics data for eventType=%{public}s", v34, 0xCu);
      sub_10000959C(v35);
    }

    (*(v14 + 8))(v16, v31);
  }
}

uint64_t sub_10061A3A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101199620, &qword_100ED8000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10061A414(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101199620, &qword_100ED8000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10061A47C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v54) = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TVSeason();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin();
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TVShow();
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin();
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin();
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (_s10TVEpisodesVMa(0) - 8);
  __chkstk_darwin();
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___headerRegistration;
  v16 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  (*(*(v16 - 8) + 56))(&v3[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___listCellRegistration;
  v18 = sub_10010FC20(&unk_1011996B8, &qword_100ED8048);
  (*(*(v18 - 8) + 56))(&v3[v17], 1, 1, v18);
  *&v3[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView] = 0;
  v19 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_prefetchingController;
  v20 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v3[v19] = sub_10003AAD8(0xD00000000000001ALL, 0x8000000100E52800);
  *&v3[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_dragDropController] = 0;
  *&v3[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___searchController] = 0;
  v21 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___actionMetricsReportingContext;
  v22 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v22 - 8) + 56))(&v3[v21], 1, 1, v22);
  sub_100623E10(a1, &v3[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_scope], _s10TVEpisodesV5ScopeOMa);
  v23 = &v14[v12[8]];
  v55 = a1;
  v24 = a1;
  v25 = ObjectType;
  sub_100623E10(v24, v23, _s10TVEpisodesV5ScopeOMa);
  *v14 = 12;
  type metadata accessor for MusicLibrary();
  *(v14 + 1) = static MusicLibrary.shared.getter();
  v26 = &v14[v12[10]];
  *v26 = 0;
  *(v26 + 1) = 0xE000000000000000;
  *&v14[v12[11]] = 260;
  v27 = &v14[v12[12]];
  *v27 = 0;
  *(v27 + 1) = 0xE000000000000000;
  *&v14[v12[13]] = _swiftEmptyArrayStorage;
  *&v14[v12[14]] = &_swiftEmptySetSingleton;
  v28 = &v14[v12[15]];
  *v28 = 0;
  *(v28 + 1) = 0xE000000000000000;
  *&v14[v12[16]] = _swiftEmptyArrayStorage;
  v14[v12[9]] = v54;
  sub_10010FC20(&qword_1011996C8, &qword_100ED8078);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController] = sub_1003A0F90(v14);
  v56.receiver = v3;
  v56.super_class = v25;
  v29 = objc_msgSendSuper2(&v56, "initWithNibName:bundle:", 0, 0);
  sub_100623E10(v29 + OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_scope, v11, _s10TVEpisodesV5ScopeOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v50;
    v30 = v51;
    v32 = v52;
    (*(v51 + 32))(v50, v11, v52);
    v33 = v29;
    TVSeason.showName.getter();
    (*(v30 + 8))(v31, v32);
  }

  else
  {
    v35 = v48;
    v34 = v49;
    (*(v48 + 32))(v9, v11, v49);
    v36 = v29;
    TVShow.name.getter();
    (*(v35 + 8))(v9, v34);
  }

  v37 = String._bridgeToObjectiveC()();

  [v29 setTitle:v37];

  UIViewController.playActivityFeatureIdentifier.setter(17);
  v38 = [v29 traitCollection];

  v39 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v41 = v40;

  if ((v41 & 1) == 0)
  {
    v42 = [v29 navigationItem];
    [v42 setLargeTitleDisplayMode:v39];
  }

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v43 = swift_allocObject();
  v54 = xmmword_100EBC6B0;
  *(v43 + 16) = xmmword_100EBC6B0;
  v44 = sub_100217F14();
  *(v43 + 32) = &type metadata for LibraryFilterTrait;
  *(v43 + 40) = v44;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v45 = swift_allocObject();
  *(v45 + 16) = v54;
  v46 = sub_100137E8C();
  *(v45 + 32) = &type metadata for MusicLibraryTrait;
  *(v45 + 40) = v46;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_100623EC0(v55, _s10TVEpisodesV5ScopeOMa);
  return v29;
}

double sub_10061AB20()
{
  v1 = v0;
  v46.receiver = v0;
  v46.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v46, "viewDidLoad");
  v3 = sub_10061B028(v2);
  v4 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView;
  v5 = *&v1[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView];
  v6 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
  v7 = v5;
  v8 = [v6 init];
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
  *(v11 + 80) = 0;
  *(v11 + 88) = v9;
  v12 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_1002193FC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010B7C08;
  v13 = _Block_copy(aBlock);

  v14 = [v12 initWithSectionProvider:v13 configuration:v8];

  _Block_release(v13);

  [v3 setCollectionViewLayout:v14];

  v15 = *&v1[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_prefetchingController];
  [*&v1[v4] setPrefetchDataSource:v15];
  v16 = (v15 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v17 = *(v15 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v18 = *(v15 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider + 8);
  *v16 = sub_100622B10;
  v16[1] = 0;
  sub_100020438(v17, v18);
  v19 = (v15 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v20 = *(v15 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v21 = *(v15 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider + 8);
  *v19 = sub_10061B4EC;
  v19[1] = 0;
  sub_100020438(v20, v21);
  v22 = *&v1[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = *(v22 + 32);
  v25 = *(v22 + 40);
  *(v22 + 32) = sub_100623F28;
  *(v22 + 40) = v23;

  sub_100020438(v24, v25);

  v26 = sub_10061BFEC();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = *(v26 + 88);
  v29 = *(v26 + 96);
  *(v26 + 88) = sub_100623F30;
  *(v26 + 96) = v27;

  sub_100020438(v28, v29);

  v43[3] = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v30 = sub_10001C8B8(v43);
  sub_10061C1F0(v30);
  v44[3] = sub_10010FC20(&unk_1011996B8, &qword_100ED8048);
  v31 = sub_10001C8B8(v44);
  sub_10061C478(v31);
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
  *(v34 + 24) = sub_100623F38;
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

  *&v1[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_dragDropController] = v34;

  return result;
}

id sub_10061B028(__n128 a1)
{
  v2 = v1;
  v3 = _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin();
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICollectionLayoutListConfiguration();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView;
  v15 = *&v2[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView];
  if (v15)
  {
    v16 = *&v2[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView];
LABEL_9:
    v52 = v15;
    return v16;
  }

  v53[1] = v3;
  sub_100009F78(0, &qword_101184600, UICollectionViewCompositionalLayout_ptr);
  (*(v7 + 104))(v9, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v6);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v17 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v11 + 8))(v13, v10);
  v18 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v18);
  v19 = v17;
  v20 = sub_100188F30(v19, 1, 0);
  result = [v2 view];
  if (result)
  {
    v22 = result;
    [result bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v55.receiver = v20;
    v55.super_class = v18;
    v31 = v20;
    objc_msgSendSuper2(&v55, "frame");
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v54.receiver = v31;
    v54.super_class = v18;
    objc_msgSendSuper2(&v54, "setFrame:", v24, v26, v28, v30);
    sub_1001891B4(v33, v35, v37, v39);
    [v31 setAutoresizingMask:18];

    result = [v2 view];
    if (result)
    {
      v40 = result;
      [result addSubview:v31];

      v41 = v31;
      [v41 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v41 setDataSource:v2];
      [v41 setDelegate:v2];
      [v41 setKeyboardDismissMode:1];
      [v41 setAllowsFocus:1];
      [v41 setRemembersLastFocusedIndexPath:1];

      sub_100623E10(&v2[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_scope], v5, _s10TVEpisodesV5ScopeOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v43 = "Library.TVAndMovies.SeasonView";
      if (EnumCaseMultiPayload == 1)
      {
        v43 = "pisodesViewController.swift";
        v44 = 0xD00000000000001ELL;
      }

      else
      {
        v44 = 0xD00000000000001CLL;
      }

      v45 = v43 | 0x8000000000000000;
      v56 = AccessibilityIdentifier.init(name:)(*&v44);
      countAndFlagsBits = v56.rawValue._countAndFlagsBits;
      object = v56.rawValue._object;
      v48 = v56.name._countAndFlagsBits;
      v49 = v56.name._object;
      sub_100623EC0(v5, _s10TVEpisodesV5ScopeOMa);
      v50 = UIView.withAccessibilityIdentifier(_:)(countAndFlagsBits, object, v48, v49);

      v51 = *&v2[v14];
      *&v2[v14] = v50;
      v16 = v50;

      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10061B4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v30 = a3;
  v4 = sub_10010FC20(&qword_10118D130, &qword_100EBD670);
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin();
  v6 = &v25 - v5;
  v7 = sub_10010FC20(&qword_10118D140, &qword_100EC8E78);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v25 - v9;
  v11 = type metadata accessor for TVEpisode();
  v25 = *(v11 - 8);
  v26 = v11;
  __chkstk_darwin();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101199738, &qword_100ED8118);
  __chkstk_darwin();
  v15 = &v25 - v14;
  v16 = sub_10010FC20(&qword_10118D150, &unk_100ED8080);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v25 - v18;
  sub_1000089F8(a1, v31, &unk_101183F30, qword_100EBF960);
  if (!v32)
  {
    sub_1000095E8(v31, &unk_101183F30, qword_100EBF960);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_7;
  }

  v20 = swift_dynamicCast();
  (*(v17 + 56))(v15, v20 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_7:
    sub_1000095E8(v15, &qword_101199738, &qword_100ED8118);
    v24 = type metadata accessor for Artwork();
    return (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
  }

  (*(v17 + 32))(v19, v15, v16);
  v21 = MusicLibrarySectionedResponse.sections.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v21 + 16))
  {
    (*(v8 + 16))(v10, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);

    MusicLibrarySection.items.getter();
    (*(v8 + 8))(v10, v7);
    IndexPath.item.getter();
    v23 = v28;
    MusicItemCollection.subscript.getter();
    (*(v27 + 8))(v6, v23);
    TVEpisode.artwork.getter();
    (*(v25 + 8))(v13, v26);
    return (*(v17 + 8))(v19, v16);
  }

  __break(1u);
  return result;
}

char *sub_10061B9C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10010FC20(&qword_10118D150, &unk_100ED8080);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v43 - v4;
  sub_10010FC20(&qword_10118D148, &unk_100EC8E80);
  __chkstk_darwin();
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v43 - v8;
  sub_10010FC20(&qword_101199738, &qword_100ED8118);
  __chkstk_darwin();
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v43 - v12;
  __chkstk_darwin();
  v15 = v43 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v43[0] = v5;
    v46 = v3;
    RequestResponse.Revision.content.getter(v9);
    v18 = sub_10010FC20(&qword_10118D158, &unk_100EC8E90);
    v19 = *(v18 - 8);
    v20 = *(v19 + 48);
    v43[1] = v19 + 48;
    v44 = v20;
    if (v20(v9, 1, v18) == 1)
    {
      sub_1000095E8(v9, &qword_10118D148, &unk_100EC8E80);
      v21 = 1;
      v22 = v46;
    }

    else
    {
      v22 = v46;
      (*(v46 + 16))(v15, v9, v2);
      sub_1000095E8(v9, &qword_10118D158, &unk_100EC8E90);
      v21 = 0;
    }

    (*(v22 + 56))(v15, v21, 1, v2);
    v23 = *&v17[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_prefetchingController];
    sub_1000089F8(v15, v13, &qword_101199738, &qword_100ED8118);
    v45 = *(v22 + 48);
    if (v45(v13, 1, v2) == 1)
    {
      sub_1000095E8(v13, &qword_101199738, &qword_100ED8118);
      v47 = 0u;
      v48 = 0u;
    }

    else
    {
      *(&v48 + 1) = v2;
      v24 = sub_10001C8B8(&v47);
      (*(v22 + 32))(v24, v13, v2);
    }

    v25 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
    swift_beginAccess();
    sub_10006B010(&v47, v23 + v25, &unk_101183F30, qword_100EBF960);
    swift_endAccess();
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v7);

    if (v44(v7, 1, v18) == 1)
    {
      sub_1000095E8(v7, &qword_10118D148, &unk_100EC8E80);
      v26 = 1;
      v27 = v46;
    }

    else
    {
      v27 = v46;
      v28 = v43[0];
      (*(v46 + 16))(v43[0], v7, v2);
      sub_1000095E8(v7, &qword_10118D158, &unk_100EC8E90);
      v29 = MusicLibrarySectionedResponse.isEmpty.getter(v2);
      (*(v27 + 8))(v28, v2);
      v26 = !v29;
    }

    [v17 setNeedsUpdateContentUnavailableConfiguration];
    v31 = sub_10061B028(v30);
    [v31 setBouncesVertically:v26 & 1];

    v32 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView;
    [*&v17[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v26 & 1];
    [*&v17[v32] reloadData];
    v33 = sub_10061BFEC();
    sub_1000089F8(v15, v11, &qword_101199738, &qword_100ED8118);
    if (v45(v11, 1, v2) == 1)
    {
      sub_1000095E8(v11, &qword_101199738, &qword_100ED8118);
    }

    else
    {
      v34 = MusicLibrarySectionedResponse.isEmpty.getter(v2);
      (*(v27 + 8))(v11, v2);
      if (!v34)
      {
        v42 = *(v33 + 64);
        *(v33 + 64) = 1;
        if (v42)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    v35 = (*(*&v17[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
    v36 = v35[1];
    if (v36)
    {
      v37 = *v35 & 0xFFFFFFFFFFFFLL;
      if ((v36 & 0x2000000000000000) != 0)
      {
        v38 = HIBYTE(v36) & 0xF;
      }

      else
      {
        v38 = v37;
      }

      v39 = v38 != 0;
      v40 = *(v33 + 64);
      *(v33 + 64) = v39;
      if (v40 == v39)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v41 = *(v33 + 64);
      *(v33 + 64) = 0;
      if ((v41 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_19:
    sub_10043EAB8();
LABEL_20:

    return sub_1000095E8(v15, &qword_101199738, &qword_100ED8118);
  }

  return result;
}

uint64_t sub_10061BFEC()
{
  v1 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___searchController];
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

double sub_10061C090(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController);
    v11 = Strong;

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      a1 = 0;
      v12 = 0xE000000000000000;
    }

    v13 = *(v10 + 48);
    v14 = *(*v13 + 96);
    swift_beginAccess();
    sub_100623E10(v13 + v14, v7, _s10TVEpisodesVMa);
    v15 = &v7[*(v5 + 32)];

    *v15 = a1;
    *(v15 + 1) = v12;
    sub_10037745C(v7);
  }

  return result;
}

uint64_t sub_10061C1F0@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___headerRegistration;
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

uint64_t sub_10061C478@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_10010FC20(&unk_1011996F8, &qword_100ED80A0);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v14[-v6];
  v8 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v7, &unk_1011996F8, &qword_100ED80A0);
  v9 = sub_10010FC20(&unk_1011996B8, &qword_100ED8048);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1000095E8(v7, &unk_1011996F8, &qword_100ED80A0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for TVEpisode();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v10 + 16))(v5, a1, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v8, &unk_1011996F8, &qword_100ED80A0);
  return swift_endAccess();
}

char *sub_10061C718(uint64_t a1, uint64_t a2)
{
  _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v6 = &v27 - v5;
  sub_10010FC20(&unk_1011996D0, &unk_100ED8090);
  __chkstk_darwin();
  v8 = &v27 - v7;
  v9 = type metadata accessor for TVEpisode();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v27 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v28 = v12;
    v17 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController;

    sub_10037C290(a1, v8);

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_1000095E8(v8, &unk_1011996D0, &unk_100ED8090);
      return 0;
    }

    else
    {
      (*(v10 + 32))(v14, v8, v9);
      v18 = *(*&v16[v17] + 48);
      v19 = *(*v18 + 96);
      swift_beginAccess();
      sub_100623E10(v18 + v19, v4, _s10TVEpisodesVMa);
      sub_100651550(v6);
      sub_100623EC0(v4, _s10TVEpisodesVMa);
      v20 = type metadata accessor for MusicPlaybackIntentDescriptor();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v6, 1, v20) == 1)
      {
        sub_1000095E8(v6, &unk_10118CDB0, &unk_100EC0360);
        v22 = 0;
      }

      else
      {
        v22 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v21 + 8))(v6, v20);
      }

      v23 = sub_10079B338(v22);
      v24 = sub_100797240(&off_10109BEB0, v23);

      v25 = v28;
      (*(v10 + 16))(v28, v14, v9);
      v26 = sub_10079F8F4(v24, v25);

      (*(v10 + 8))(v14, v9);
      return v26;
    }
  }

  return result;
}

void sub_10061CCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[4] = a1;
  v31[5] = a4;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v31[3] = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v31[2] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v31[1] = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118D148, &unk_100EC8E80);
  __chkstk_darwin();
  v9 = v31 - v8;
  v10 = sub_10010FC20(&qword_10118D150, &unk_100ED8080);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v31 - v12;
  v14 = sub_10010FC20(&qword_10118D140, &qword_100EC8E78);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = v31 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = Strong;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v22 = sub_10010FC20(&qword_10118D158, &unk_100EC8E90);
  if ((*(*(v22 - 8) + 48))(v9, 1, v22) == 1)
  {
    sub_1000095E8(v9, &qword_10118D148, &unk_100EC8E80);

    return;
  }

  (*(v11 + 16))(v13, v9, v10);
  sub_1000095E8(v9, &qword_10118D158, &unk_100EC8E90);
  v23 = MusicLibrarySectionedResponse.sections.getter();
  (*(v11 + 8))(v13, v10);
  v24 = IndexPath.section.getter();
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v24 >= *(v23 + 16))
  {
LABEL_12:
    __break(1u);
    return;
  }

  (*(v15 + 16))(v17, v23 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v24, v14);

  (*(v15 + 32))(v19, v17, v14);
  swift_getKeyPath();
  MusicLibrarySection.subscript.getter();

  if (v33)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {
    v27 = v32;
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v28._countAndFlagsBits = 0x206E6F73616553;
    v28._object = 0xE700000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
    v31[7] = v27;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    v25 = String.init(localized:table:bundle:locale:comment:)();
    v26 = v30;
  }

  sub_1005FF7FC(v25, v26, &v32);

  UICollectionViewCell.contentConfiguration.setter();

  (*(v15 + 8))(v19, v14);
}

void sub_10061D1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&unk_10118D320, &unk_100EC9050);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v20 - v12;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    __chkstk_darwin();
    v20[-4] = a3;
    v20[-3] = v14;
    v20[-2] = a1;
    v20[-1] = a5;
    v15 = v14;
    sub_10010FC20(&unk_1011847A0, &unk_100EC0470);
    v16 = _s8ListCellVMa(255);
    v17 = sub_100623E78(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);
    v20[0] = v16;
    v20[1] = v17;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v19 = *(v9 + 8);
    v19(v11, v8);
    static Edge.Set.vertical.getter();
    v20[3] = v8;
    v20[4] = sub_100020674(&unk_1011847B0, &unk_10118D320, &unk_100EC9050, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v20);
    UIHostingConfiguration.margins(_:_:)();
    v19(v13, v8);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_10061D4D0@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a3;
  v82 = a4;
  v83 = a2;
  v5 = type metadata accessor for TVEpisode();
  v79 = *(v5 - 8);
  v80 = v5;
  __chkstk_darwin();
  v76 = v6;
  v77 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v84 = v67 - v7;
  v8 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v70 = *(v8 - 8);
  __chkstk_darwin();
  v10 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for Date.FormatStyle.DateStyle();
  v11 = *(v69 - 8);
  __chkstk_darwin();
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v15 = v67 - v14;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v17 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v19 = v67 - v18;
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v21 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = _s8ListCellVMa(0);
  __chkstk_darwin();
  v23 = v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  TVEpisode.artworkViewModel.getter(v19);
  v24 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v24 - 8) + 56))(v17, 6, 11, v24);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0x405C71C71C71C71CLL, 0, 0x4050000000000000, 0, 0x3FFC71C71C71C71CLL, 0, 2, v88);
  v25 = Corner.small.unsafeMutableAddressor();
  v26 = *v25;
  v27 = v25[1];
  v28 = *(v25 + 16);
  v78 = v21;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v19, v17, 0, 1, v88, v26, v27, v28, v21);
  v75 = TVEpisode.title.getter();
  v74 = v29;
  TVEpisode.releaseDate.getter();
  v30 = type metadata accessor for Date();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v15, 1, v30) == 1)
  {
    sub_1000095E8(v15, &qword_101188C20, &qword_100EC2030);
    v72 = 0;
    v71 = 0;
  }

  else
  {
    static Date.FormatStyle.DateStyle.long.getter();
    static Date.FormatStyle.TimeStyle.omitted.getter();
    v72 = Date.formatted(date:time:)();
    v71 = v32;
    (v70[1])(v10, v8);
    (*(v11 + 8))(v13, v69);
    (*(v31 + 8))(v15, v30);
  }

  v33 = type metadata accessor for ContentRating();
  v34 = *(v33 - 8);
  v68 = *(v34 + 56);
  v67[2] = v34 + 56;
  v68(v84, 1, 1, v33);
  sub_1007BAD38(a1);
  v86 = sub_10010FC20(&qword_101199708, &unk_100EE39E0);
  v87 = sub_100020674(&unk_101199710, &qword_101199708, &unk_100EE39E0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10001C8B8(v85);
  dispatch thunk of MusicLibrary.ItemState.$downloadStatus.getter();

  v69 = sub_10010FC20(&unk_1011847C0, &unk_100EC0480);
  swift_allocObject();
  v70 = OptionalObservableObject.init(publisher:)(v85);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v35 = sub_100623E78(&qword_101199720, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v36 = v80;
  v37 = a1;
  v38 = *(*Player.state<A>(for:)(a1, v80, v35) + 280);
  v86 = sub_10010FC20(&qword_101199728, &unk_100ED91C0);
  v87 = sub_100020674(&qword_101199730, &qword_101199728, &unk_100ED91C0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10001C8B8(v85);
  v38();

  sub_10010FC20(&unk_10118D300, &qword_100EBCE20);
  swift_allocObject();
  v67[1] = OptionalObservableObject.init(publisher:)(v85);
  v39 = swift_allocObject();
  v67[0] = v39;
  swift_unknownObjectWeakInit();
  v40 = v79;
  v41 = v77;
  (*(v79 + 16))(v77, v37, v36);
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v43 = swift_allocObject();
  v76 = v43;
  v44 = v81;
  *(v43 + 16) = v39;
  *(v43 + 24) = v44;
  (*(v40 + 32))(v43 + v42, v41, v36);

  v45 = v44;
  v46 = static HierarchicalShapeStyle.primary.getter();
  *(v23 + 3) = &type metadata for HierarchicalShapeStyle;
  *(v23 + 4) = &protocol witness table for HierarchicalShapeStyle;
  *v23 = v46;
  v23[40] = 0;
  v47 = v73;
  v48 = &v23[v73[6]];
  v49 = v73[9];
  v50 = v73[10];
  v68(&v23[v50], 1, 1, v33);
  v81 = &v23[v47[11]];
  v51 = v47[14];
  *&v23[v51] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v52 = v78;
  sub_100623E10(v78, &v23[v47[5]], type metadata accessor for ArtworkImage.Info);
  *(v48 + 1) = 0;
  *(v48 + 2) = 0;
  *v48 = 0;
  v53 = &v23[v47[7]];
  v54 = v74;
  *v53 = v75;
  v53[1] = v54;
  v55 = &v23[v47[8]];
  v56 = v71;
  *v55 = v72;
  v55[1] = v56;
  v23[v49] = 0;
  v57 = v84;
  sub_100123348(v84, &v23[v50]);
  v58 = &v23[v47[12]];
  sub_100020674(&unk_1011847D0, &unk_1011847C0, &unk_100EC0480, &protocol conformance descriptor for OptionalObservableObject<A>);

  *v58 = ObservedObject.init(wrappedValue:)();
  v58[1] = v59;
  v60 = &v23[v47[13]];
  sub_100020674(&qword_10118D310, &unk_10118D300, &qword_100EBCE20, &protocol conformance descriptor for OptionalObservableObject<A>);
  v61 = ObservedObject.init(wrappedValue:)();
  v63 = v62;

  sub_1000095E8(v57, &unk_10118D2F0, &unk_100EBCE10);
  sub_100623EC0(v52, type metadata accessor for ArtworkImage.Info);

  *v60 = v61;
  v60[1] = v63;
  v64 = v81;
  v65 = v76;
  *v81 = sub_100623D9C;
  *(v64 + 1) = v65;
  sub_100623E78(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_100623E78(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);

  View.artworkCaching(owner:)();

  return sub_100623EC0(v23, _s8ListCellVMa);
}

char *sub_10061E048(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v124 = a4;
  v5 = type metadata accessor for UUID();
  v133 = *(v5 - 8);
  v134 = v5;
  __chkstk_darwin();
  v132 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v128 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v7;
  __chkstk_darwin();
  v9 = &v116 - v8;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v125 = &v116 - v10;
  v127 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  v11 = *(v127 + 64);
  __chkstk_darwin();
  v129 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v142 = &v116 - v12;
  _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v123 = &v116 - v15;
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v126 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v116 - v17;
  __chkstk_darwin();
  v138 = &v116 - v19;
  __chkstk_darwin();
  v137 = &v116 - v20;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v136 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v141 = &v116 - v22;
  sub_10010FC20(&unk_1011996D0, &unk_100ED8090);
  __chkstk_darwin();
  v24 = &v116 - v23;
  v25 = type metadata accessor for TVEpisode();
  v139 = *(v25 - 8);
  v140 = v25;
  __chkstk_darwin();
  v27 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for IndexPath();
  v144 = *(v28 - 8);
  v145 = v28;
  __chkstk_darwin();
  v30 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v143 = &v116 - v31;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v122 = v18;
    v135 = v9;
    v34 = result;
    v35 = sub_10061B028(v33);
    v36 = [v35 indexPathForCell:a3];

    if (v36)
    {
      v120 = v11;
      v121 = v27;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = v143;
      v37 = v144;
      v39 = v145;
      (*(v144 + 32))(v143, v30, v145);
      v40 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController;

      sub_10037C290(v38, v24);

      v42 = v139;
      v41 = v140;
      if ((*(v139 + 48))(v24, 1, v140) == 1)
      {
        (*(v37 + 8))(v38, v39);

        sub_1000095E8(v24, &unk_1011996D0, &unk_100ED8090);
        return 0;
      }

      else
      {
        v43 = v121;
        (*(v42 + 32))(v121, v24, v41);
        sub_10010FC20(&unk_101183900, &unk_100EC1680);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_100EBC6B0;
        *(v44 + 56) = v41;
        *(v44 + 64) = sub_100623E78(&unk_1011996E0, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
        v45 = sub_10001C8B8((v44 + 32));
        (*(v42 + 16))(v45, v43, v41);
        v46 = [v34 traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        v119 = v160[0];
        v47 = *(*&v34[v40] + 48);
        v48 = *(*v47 + 96);
        swift_beginAccess();
        sub_100623E10(v47 + v48, v14, _s10TVEpisodesVMa);
        v49 = v123;
        sub_100651550(v123);
        sub_100623EC0(v14, _s10TVEpisodesVMa);
        v50 = v137;
        PlaybackIntentDescriptor.IntentType.init(_:)(v49, v137);
        memset(v160, 0, 40);
        if (qword_10117F608 != -1)
        {
          swift_once();
        }

        v51 = qword_101218AD8;
        sub_1000089F8(v50, v138, &unk_1011838E0, &unk_100EC1670);
        v123 = v51;
        v52 = UIViewController.playActivityInformation.getter();
        v54 = v53;
        v56 = v55;
        v58 = v57;
        sub_1000089F8(v160, &v152, &unk_101183910, &unk_100EBDD00);
        v59 = v120;
        v124 = v34;
        if (*(&v153 + 1))
        {
          sub_100059A8C(&v152, &v156);
          v60 = v122;
        }

        else
        {
          *&v161 = v34;
          sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
          v61 = v34;
          sub_10010FC20(&unk_101183920, &unk_100EC0330);
          if (swift_dynamicCast())
          {
            sub_100059A8C(&v164, &v156);
            v60 = v122;
          }

          else
          {
            v166 = 0;
            v164 = 0u;
            v165 = 0u;
            *&v156 = v61;
            v62 = v61;
            v63 = String.init<A>(reflecting:)();
            v157 = &type metadata for Player.CommandIssuerIdentity;
            v158 = &protocol witness table for Player.CommandIssuerIdentity;
            *&v156 = v63;
            *(&v156 + 1) = v64;
            v60 = v122;
            if (*(&v165 + 1))
            {
              sub_1000095E8(&v164, &unk_101183910, &unk_100EBDD00);
            }
          }

          v50 = v137;
          if (*(&v153 + 1))
          {
            sub_1000095E8(&v152, &unk_101183910, &unk_100EBDD00);
          }
        }

        v65 = v141;
        Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v123, v138, v52, v54, v56, v58, &v156, v141);
        sub_1000095E8(v160, &unk_101183910, &unk_100EBDD00);
        sub_1000095E8(v50, &unk_1011838E0, &unk_100EC1670);
        v66 = type metadata accessor for Actions.PlaybackContext(0);
        v67 = *(v66 - 8);
        (*(v67 + 56))(v65, 0, 1, v66);
        v68 = type metadata accessor for PlaylistContext(0);
        (*(*(v68 - 8) + 56))(v142, 1, 1, v68);
        v69 = v144;
        v70 = v125;
        v71 = v145;
        (*(v144 + 16))(v125, v143, v145);
        (*(v69 + 56))(v70, 0, 1, v71);
        v72 = v124;
        sub_100376EFC(v70, v160);
        sub_1000095E8(v70, &unk_10118BCE0, &qword_100EC6450);
        v73 = v135;
        sub_10061F408(v135);
        v74 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
        sub_100008FE4(v44 + 32, v159);

        sub_1000089F8(v160, &v152, &unk_1011845E0, &unk_100EBF3A0);
        if (v155 == 1)
        {
          v166 = 0;
          v164 = 0u;
          v165 = 0u;
          v167 = xmmword_100EBCEF0;
          PresentationSource.init(viewController:position:)(v72, &v164, &v156);
          v75 = v136;
          if (v155 != 1)
          {
            sub_1000095E8(&v152, &unk_1011845E0, &unk_100EBF3A0);
          }
        }

        else
        {
          sub_10012B828(&v152, &v156);
          v75 = v136;
        }

        swift_getObjectType();
        v76 = swift_conformsToProtocol2();
        if (v76)
        {
          v125 = v76;
          v77 = v72;
          v137 = v72;
        }

        else
        {
          v137 = 0;
          v125 = 0;
        }

        v138 = swift_allocBox();
        v79 = v78;
        sub_1000089F8(v141, v75, &unk_10118AB20, &unk_100EBF390);
        v80 = *(v67 + 48);
        if (v80(v75, 1, v66) == 1)
        {
          v81 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
          (*(*(v81 - 8) + 56))(v60, 1, 1, v81);
          v154 = 0;
          v152 = 0u;
          v153 = 0u;
          sub_1000089F8(v60, v126, &unk_1011838E0, &unk_100EC1670);
          v123 = v123;
          v82 = UIViewController.playActivityInformation.getter();
          v117 = v84;
          v118 = v83;
          v86 = v85;
          sub_1000089F8(&v152, &v150, &unk_101183910, &unk_100EBDD00);
          if (v151)
          {
            sub_100059A8C(&v150, &v161);
          }

          else
          {
            v149 = v72;
            sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
            v87 = v72;
            sub_10010FC20(&unk_101183920, &unk_100EC0330);
            if (swift_dynamicCast())
            {
              sub_100059A8C(&v146, &v161);
              v75 = v136;
            }

            else
            {
              v148 = 0;
              v146 = 0u;
              v147 = 0u;
              *&v161 = v87;
              v88 = v87;
              v89 = String.init<A>(reflecting:)();
              *(&v162 + 1) = &type metadata for Player.CommandIssuerIdentity;
              v163 = &protocol witness table for Player.CommandIssuerIdentity;
              *&v161 = v89;
              *(&v161 + 1) = v90;
              v75 = v136;
              if (*(&v147 + 1))
              {
                sub_1000095E8(&v146, &unk_101183910, &unk_100EBDD00);
              }
            }

            v60 = v122;
            if (v151)
            {
              sub_1000095E8(&v150, &unk_101183910, &unk_100EBDD00);
            }
          }

          Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v123, v126, v82, v118, v117, v86, &v161, v79);
          sub_1000095E8(&v152, &unk_101183910, &unk_100EBDD00);
          sub_1000095E8(v60, &unk_1011838E0, &unk_100EC1670);
          v91 = v80(v75, 1, v66);
          v59 = v120;
          if (v91 != 1)
          {
            sub_1000095E8(v75, &unk_10118AB20, &unk_100EBF390);
          }
        }

        else
        {
          sub_100623D20(v75, v79, type metadata accessor for Actions.PlaybackContext);
        }

        v92 = &v79[*(v66 + 28)];
        sub_1000089F8(v92, &v161, &unk_101183910, &unk_100EBDD00);
        if (*(&v162 + 1))
        {
          sub_100059A8C(&v161, &v152);
        }

        else
        {
          *&v152 = v124;
          v93 = v124;
          v94 = String.init<A>(reflecting:)();
          *(&v153 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v154 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v152 = v94;
          *(&v152 + 1) = v95;
          if (*(&v162 + 1))
          {
            sub_1000095E8(&v161, &unk_101183910, &unk_100EBDD00);
          }
        }

        sub_10010FC20(&unk_101183930, &unk_100EC1690);
        v96 = swift_allocObject();
        *(v96 + 16) = xmmword_100EBDC20;
        *(v96 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v96 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v96 + 32) = 0x4D747865746E6F43;
        *(v96 + 40) = 0xEB00000000756E65;
        sub_100008FE4(&v152, v96 + 72);
        v97 = static Player.CommandIssuer<>.combining(_:)(v96);
        v99 = v98;

        sub_10000959C(&v152);
        *(&v153 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v154 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v152 = v97;
        *(&v152 + 1) = v99;
        sub_10006B010(&v152, v92, &unk_101183910, &unk_100EBDD00);
        sub_100008FE4(v159, &v152);
        sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
        v136 = String.init<A>(describing:)();
        v126 = v100;
        v123 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100008FE4(v159, &v150);
        sub_10012B7A8(&v156, &v152);
        v101 = v128;
        sub_1000089F8(v135, v128, &unk_1011838D0, &unk_100EC0320);
        v102 = v129;
        sub_1000089F8(v142, v129, &unk_1011845D0, &unk_100EBF380);
        v103 = (*(v130 + 80) + 160) & ~*(v130 + 80);
        v104 = (v131 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
        v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
        v106 = (*(v127 + 80) + v105 + 8) & ~*(v127 + 80);
        v131 = (v106 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
        v107 = swift_allocObject();
        sub_100059A8C(&v150, v107 + 16);
        *(v107 + 56) = v119;
        sub_10012B828(&v152, v107 + 64);
        sub_10003D17C(v101, v107 + v103, &unk_1011838D0, &unk_100EC0320);
        *(v107 + v104) = v123;
        *(v107 + v105) = v138;
        sub_10003D17C(v102, v107 + v106, &unk_1011845D0, &unk_100EBF380);
        v108 = v107 + v131;
        v109 = v125;
        *v108 = v137;
        *(v108 + 8) = v109;
        *(v108 + 16) = 2;
        v110 = (v107 + ((v106 + v59 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v110 = variable initialization expression of Library.Context.playlistVariants;
        v110[1] = 0;
        swift_unknownObjectRetain();

        v111 = v132;
        UUID.init()();
        v112 = UUID.uuidString.getter();
        v114 = v113;
        (*(v133 + 8))(v111, v134);
        v168._countAndFlagsBits = v136;
        v168._object = v126;
        ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v161, v168, v112, v114, sub_10021953C, v107);
        swift_unknownObjectRelease();
        sub_10012BA6C(&v156);
        sub_10000959C(v159);

        v115 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
        v156 = v161;
        sub_100015BB0(&v156);
        v152 = v162;
        sub_100015BB0(&v152);

        sub_1000095E8(v135, &unk_1011838D0, &unk_100EC0320);
        sub_1000095E8(v160, &unk_1011845E0, &unk_100EBF3A0);
        sub_1000095E8(v142, &unk_1011845D0, &unk_100EBF380);
        sub_1000095E8(v141, &unk_10118AB20, &unk_100EBF390);
        (*(v139 + 8))(v121, v140);
        (*(v144 + 8))(v143, v145);
        return v115;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10061F408@<X0>(char *a1@<X8>)
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
  v11 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v10, &unk_1011838D0, &unk_100EC0320);
  v12 = type metadata accessor for Actions.MetricsReportingContext(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return sub_100623D20(v10, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

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
  sub_100623E10(a1, v8, type metadata accessor for Actions.MetricsReportingContext);
  (*(v13 + 56))(v8, 0, 1, v12);
  v26 = v34;
  swift_beginAccess();
  sub_10006B010(v8, v26 + v11, &unk_1011838D0, &unk_100EC0320);
  return swift_endAccess();
}

uint64_t sub_10061F8A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v16 - v8;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v10 == a3)
  {
    goto LABEL_7;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
    strcpy(v16, "Unknown kind=");
    v16[7] = -4864;
    v13._countAndFlagsBits = a2;
    v13._object = a3;
    String.append(_:)(v13);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_7:
  }

  sub_10061C1F0(v9);
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  v14 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v7 + 8))(v9, v6);
  return v14;
}

void *sub_10061FBC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&unk_1011996B8, &qword_100ED8048);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - v5;
  sub_10010FC20(&unk_1011996D0, &unk_100ED8090);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v17 - v9;
  sub_10037C290(a2, &v17 - v9);
  sub_10061C478(v6);
  v11 = sub_1007FD6F4(v6, a2, v10);
  (*(v4 + 8))(v6, v3);
  sub_1000089F8(v10, v8, &unk_1011996D0, &unk_100ED8090);
  v12 = type metadata accessor for TVEpisode();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1000095E8(v8, &unk_1011996D0, &unk_100ED8090);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  else
  {
    *(&v18 + 1) = v12;
    v19 = sub_100623E78(&qword_1011996F0, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    v14 = sub_10001C8B8(&v17);
    (*(v13 + 32))(v14, v8, v12);
  }

  v15 = sub_1004F24B0(&v17);

  sub_1000095E8(v10, &unk_1011996D0, &unk_100ED8090);
  sub_1000095E8(&v17, &qword_1011A3DD0, &unk_100EC03F0);
  return v15;
}

BOOL sub_10061FFAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
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

uint64_t sub_1006200A0(void *a1, uint64_t a2)
{
  v3 = v2;
  v75 = a1;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v67 = &v61 - v5;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v64 = &v61 - v6;
  sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  __chkstk_darwin();
  v68 = &v61 - v7;
  v66 = type metadata accessor for PlaybackIntentDescriptor(0);
  v69 = *(v66 - 8);
  __chkstk_darwin();
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v8;
  __chkstk_darwin();
  v63 = &v61 - v9;
  v70 = type metadata accessor for GenericMusicItem();
  v10 = *(v70 - 8);
  __chkstk_darwin();
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v73 = *(v13 - 8);
  v74 = v13;
  __chkstk_darwin();
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v61 - v16;
  sub_10010FC20(&unk_1011996D0, &unk_100ED8090);
  __chkstk_darwin();
  v65 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v61 - v18;
  v20 = type metadata accessor for TVEpisode();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v72 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v75 deselectItemAtIndexPath:isa animated:1];

  v75 = v3;
  v24 = [v3 navigationItem];
  v25 = [v24 searchController];

  if (v25)
  {
    v26 = [v25 searchBar];

    [v26 resignFirstResponder];
  }

  sub_10037C290(a2, v19);
  v27 = v21;
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v28 = &unk_1011996D0;
    v29 = &unk_100ED8090;
    v30 = v19;
    return sub_1000095E8(v30, v28, v29);
  }

  v32 = *(v21 + 32);
  v33 = v72;
  v32(v72, v19, v20);
  v34 = v27;
  v35 = *(v27 + 16);
  v35(v12, v33, v20);
  v36 = v70;
  (*(v10 + 104))(v12, enum case for GenericMusicItem.tvEpisode(_:), v70);
  v37 = v71;
  sub_100538C48(v12, v71);
  v38 = v36;
  v39 = v37;
  (*(v10 + 8))(v12, v38);
  v40 = v73;
  v41 = *(v73 + 104);
  v70 = v20;
  v42 = v74;
  v41(v15, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v74);
  LOBYTE(v37) = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v44 = *(v40 + 8);
  v43 = v40 + 8;
  v45 = v15;
  v46 = v44;
  (v44)(v45, v42);
  if (v37)
  {
    v67 = v46;
    v47 = v65;
    v48 = v70;
    v35(v65, v33, v70);
    (*(v34 + 56))(v47, 0, 1, v48);
    v49 = v68;
    sub_1006209AC(v47, v68);
    sub_1000095E8(v47, &unk_1011996D0, &unk_100ED8090);
    v50 = v69;
    if ((*(v69 + 48))(v49, 1, v66) == 1)
    {
      (v67)(v39, v74);
      (*(v34 + 8))(v33, v48);
      v28 = &qword_1011848A0;
      v29 = &unk_100EC64F0;
      v30 = v49;
      return sub_1000095E8(v30, v28, v29);
    }

    v53 = v63;
    sub_100623D20(v49, v63, type metadata accessor for PlaybackIntentDescriptor);
    v54 = type metadata accessor for TaskPriority();
    v55 = v64;
    (*(*(v54 - 8) + 56))(v64, 1, 1, v54);
    v56 = v62;
    sub_100623E10(v53, v62, type metadata accessor for PlaybackIntentDescriptor);
    type metadata accessor for MainActor();
    v57 = static MainActor.shared.getter();
    v58 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v59 = swift_allocObject();
    v73 = v43;
    v60 = v59;
    *(v59 + 16) = v57;
    *(v59 + 24) = &protocol witness table for MainActor;
    sub_100623D20(v56, v59 + v58, type metadata accessor for PlaybackIntentDescriptor);
    sub_1001F4F78(0, 0, v55, &unk_100ECA700, v60);

    sub_100623EC0(v53, type metadata accessor for PlaybackIntentDescriptor);
    (v67)(v39, v74);
    return (*(v34 + 8))(v72, v48);
  }

  else
  {
    v51 = type metadata accessor for IndexPath();
    v52 = v67;
    (*(*(v51 - 8) + 56))(v67, 1, 1, v51);
    sub_100376EFC(v52, v76);
    sub_1000095E8(v52, &unk_10118BCE0, &qword_100EC6450);
    sub_100860424(v39, v33, v76);
    sub_10012BA6C(v76);
    (v46)(v39, v42);
    return (*(v34 + 8))(v33, v70);
  }
}

uint64_t sub_1006209AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v36 = a2;
  sub_10010FC20(&unk_1011996D0, &unk_100ED8090);
  __chkstk_darwin();
  v33 = &v32 - v3;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v9 = &v32 - v8;
  v10 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v2;
  v14 = *(*&v2[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController] + 48);
  v15 = *(*v14 + 96);
  swift_beginAccess();
  v16 = v14 + v15;
  v17 = v35;
  sub_100623E10(v16, v7, _s10TVEpisodesVMa);
  sub_100651C9C(v17, v9);
  sub_100623EC0(v7, _s10TVEpisodesVMa);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000095E8(v9, &unk_10118CDB0, &unk_100EC0360);
    v18 = 1;
    v19 = v36;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(v11 + 16))(v5, v13, v10);
    swift_storeEnumTagMultiPayload();
    v20 = v17;
    v21 = v33;
    sub_1000089F8(v20, v33, &unk_1011996D0, &unk_100ED8090);
    v22 = type metadata accessor for TVEpisode();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      sub_1000095E8(v21, &unk_1011996D0, &unk_100ED8090);
      v38 = 0u;
      v39 = 0u;
      v40 = 0;
    }

    else
    {
      *(&v39 + 1) = v22;
      v40 = sub_100623E78(&unk_1011996E0, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      v24 = sub_10001C8B8(&v38);
      (*(v23 + 32))(v24, v21, v22);
    }

    v25 = v34;
    v37[0] = v34;
    v26 = v34;
    v27 = String.init<A>(reflecting:)();
    v37[3] = &type metadata for Player.CommandIssuerIdentity;
    v37[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v37[0] = v27;
    v37[1] = v28;
    v29 = v26;
    v19 = v36;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, &v38, 3, 0, 0, 1, 0, 1, v36, v25, v37);
    (*(v11 + 8))(v13, v10);
    v18 = 0;
  }

  v30 = type metadata accessor for PlaybackIntentDescriptor(0);
  return (*(*(v30 - 8) + 56))(v19, v18, 1, v30);
}

uint64_t sub_100620F98(uint64_t a1)
{
  type metadata accessor for TVEpisode();
  v2 = __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1, v2);
  return sub_1007351F8(v4, 1);
}

unint64_t sub_100621058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v110 = a4;
  v5 = type metadata accessor for UUID();
  v118 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v116 = v8;
  v117 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = &v100 - v9;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v109 = &v100 - v10;
  v112 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v113 = v11;
  v114 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v100 - v12;
  _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v16 = &v100 - v15;
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v108 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v100 - v18;
  __chkstk_darwin();
  v20 = &v100 - v19;
  __chkstk_darwin();
  v22 = &v100 - v21;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v119 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v121 = &v100 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v26 = Strong;
  v106 = v7;
  v107 = v5;
  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100EBC6B0;
  v28 = type metadata accessor for TVEpisode();
  *(v27 + 56) = v28;
  *(v27 + 64) = sub_100623E78(&unk_1011996E0, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v29 = sub_10001C8B8((v27 + 32));
  (*(*(v28 - 8) + 16))(v29, a3, v28);
  v30 = [v26 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v105 = v138[0];
  v31 = *(*&v26[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController] + 48);
  v32 = *(*v31 + 96);
  swift_beginAccess();
  sub_100623E10(v31 + v32, v14, _s10TVEpisodesVMa);
  sub_100651550(v16);
  sub_100623EC0(v14, _s10TVEpisodesVMa);
  PlaybackIntentDescriptor.IntentType.init(_:)(v16, v22);
  memset(v138, 0, 40);
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v33 = qword_101218AD8;
  sub_1000089F8(v22, v20, &unk_1011838E0, &unk_100EC1670);
  v34 = v33;
  v104 = UIViewController.playActivityInformation.getter();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_1000089F8(v138, &v130, &unk_101183910, &unk_100EBDD00);
  v120 = v26;
  v103 = v34;
  if (*(&v131 + 1))
  {
    sub_100059A8C(&v130, &v134);
  }

  else
  {
    *&v139 = v26;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v42 = v26;
    sub_10010FC20(&unk_101183920, &unk_100EC0330);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v142, &v134);
    }

    else
    {
      v144 = 0;
      v142 = 0u;
      v143 = 0u;
      *&v134 = v42;
      v43 = v42;
      v44 = String.init<A>(reflecting:)();
      v135 = &type metadata for Player.CommandIssuerIdentity;
      v136 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v134 = v44;
      *(&v134 + 1) = v45;
      if (*(&v143 + 1))
      {
        sub_1000095E8(&v142, &unk_101183910, &unk_100EBDD00);
      }
    }

    v34 = v103;
    if (*(&v131 + 1))
    {
      sub_1000095E8(&v130, &unk_101183910, &unk_100EBDD00);
    }
  }

  v46 = v121;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v34, v20, v104, v36, v38, v40, &v134, v121);
  sub_1000095E8(v138, &unk_101183910, &unk_100EBDD00);
  sub_1000095E8(v22, &unk_1011838E0, &unk_100EC1670);
  v47 = type metadata accessor for Actions.PlaybackContext(0);
  v48 = *(v47 - 8);
  (*(v48 + 56))(v46, 0, 1, v47);
  v49 = type metadata accessor for PlaylistContext(0);
  (*(*(v49 - 8) + 56))(v122, 1, 1, v49);
  v50 = type metadata accessor for IndexPath();
  v51 = *(v50 - 8);
  v52 = v109;
  (*(v51 + 16))(v109, v110, v50);
  (*(v51 + 56))(v52, 0, 1, v50);
  v53 = v120;
  sub_100376EFC(v52, v138);
  sub_1000095E8(v52, &unk_10118BCE0, &qword_100EC6450);
  v54 = v123;
  sub_10061F408(v123);
  v55 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  sub_100008FE4(v27 + 32, v137);

  sub_1000089F8(v138, &v130, &unk_1011845E0, &unk_100EBF3A0);
  if (v133 == 1)
  {
    v144 = 0;
    v142 = 0u;
    v143 = 0u;
    v145 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v53, &v142, &v134);
    v56 = v119;
    if (v133 != 1)
    {
      sub_1000095E8(&v130, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v130, &v134);
    v56 = v119;
  }

  swift_getObjectType();
  v57 = swift_conformsToProtocol2();
  if (v57)
  {
    v104 = v57;
    v58 = v53;
    v109 = v53;
  }

  else
  {
    v109 = 0;
    v104 = 0;
  }

  v110 = swift_allocBox();
  v60 = v59;
  sub_1000089F8(v121, v56, &unk_10118AB20, &unk_100EBF390);
  v61 = *(v48 + 48);
  if (v61(v56, 1, v47) == 1)
  {
    v62 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v63 = v111;
    (*(*(v62 - 8) + 56))(v111, 1, 1, v62);
    v132 = 0;
    v130 = 0u;
    v131 = 0u;
    v64 = v63;
    v65 = v108;
    sub_1000089F8(v64, v108, &unk_1011838E0, &unk_100EC1670);
    v103 = v103;
    v66 = UIViewController.playActivityInformation.getter();
    v101 = v68;
    v102 = v67;
    v70 = v69;
    sub_1000089F8(&v130, &v128, &unk_101183910, &unk_100EBDD00);
    if (v129)
    {
      sub_100059A8C(&v128, &v139);
    }

    else
    {
      v127 = v53;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v71 = v53;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v124, &v139);
        v56 = v119;
      }

      else
      {
        v126 = 0;
        v124 = 0u;
        v125 = 0u;
        *&v139 = v71;
        v72 = v71;
        v73 = String.init<A>(reflecting:)();
        *(&v140 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v141 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v139 = v73;
        *(&v139 + 1) = v74;
        v56 = v119;
        if (*(&v125 + 1))
        {
          sub_1000095E8(&v124, &unk_101183910, &unk_100EBDD00);
        }
      }

      v53 = v120;
      v65 = v108;
      if (v129)
      {
        sub_1000095E8(&v128, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v103, v65, v66, v102, v101, v70, &v139, v60);
    sub_1000095E8(&v130, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v111, &unk_1011838E0, &unk_100EC1670);
    if (v61(v56, 1, v47) != 1)
    {
      sub_1000095E8(v56, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_100623D20(v56, v60, type metadata accessor for Actions.PlaybackContext);
  }

  v75 = *(v47 + 28);
  sub_1000089F8(&v60[v75], &v139, &unk_101183910, &unk_100EBDD00);
  if (*(&v140 + 1))
  {
    sub_100059A8C(&v139, &v130);
  }

  else
  {
    *&v130 = v53;
    v76 = v53;
    v77 = String.init<A>(reflecting:)();
    *(&v131 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v132 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v130 = v77;
    *(&v130 + 1) = v78;
    if (*(&v140 + 1))
    {
      sub_1000095E8(&v139, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_100EBDC20;
  *(v79 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v79 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v79 + 32) = 0x4D747865746E6F43;
  *(v79 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v130, v79 + 72);
  v80 = static Player.CommandIssuer<>.combining(_:)(v79);
  v82 = v81;

  sub_10000959C(&v130);
  *(&v131 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v132 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v130 = v80;
  *(&v130 + 1) = v82;
  sub_10006B010(&v130, &v60[v75], &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v137, &v130);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v119 = String.init<A>(describing:)();
  v111 = v83;
  v108 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v137, &v128);
  sub_10012B7A8(&v134, &v130);
  v84 = v117;
  sub_1000089F8(v123, v117, &unk_1011838D0, &unk_100EC0320);
  v85 = v114;
  sub_1000089F8(v122, v114, &unk_1011845D0, &unk_100EBF380);
  v86 = (*(v115 + 80) + 160) & ~*(v115 + 80);
  v87 = (v116 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
  v89 = (*(v112 + 80) + v88 + 8) & ~*(v112 + 80);
  v116 = (v89 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v89 + v113 + 31) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  sub_100059A8C(&v128, v91 + 16);
  *(v91 + 56) = v105;
  sub_10012B828(&v130, v91 + 64);
  sub_10003D17C(v84, v91 + v86, &unk_1011838D0, &unk_100EC0320);
  *(v91 + v87) = v108;
  *(v91 + v88) = v110;
  sub_10003D17C(v85, v91 + v89, &unk_1011845D0, &unk_100EBF380);
  v92 = v91 + v116;
  v93 = v104;
  *v92 = v109;
  *(v92 + 8) = v93;
  *(v92 + 16) = 2;
  v94 = (v91 + v90);
  *v94 = variable initialization expression of Library.Context.playlistVariants;
  v94[1] = 0;
  swift_unknownObjectRetain();

  v95 = v106;
  UUID.init()();
  v96 = UUID.uuidString.getter();
  v98 = v97;
  (*(v118 + 8))(v95, v107);
  v146._countAndFlagsBits = v119;
  v146._object = v111;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v139, v146, v96, v98, sub_100217D28, v91);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v134);
  sub_10000959C(v137);

  v41 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v134 = v139;
  sub_100015BB0(&v134);
  v130 = v140;
  sub_100015BB0(&v130);

  sub_1000095E8(v123, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(v138, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v122, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v121, &unk_10118AB20, &unk_100EBF390);
  return v41;
}

id sub_1006222E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = sub_10023D4E4(v9, 0, 1);

  (*(v7 + 8))(v9, v6);

  return v11;
}

uint64_t sub_100622440()
{
  sub_10010FC20(&qword_10118D148, &unk_100EC8E80);
  __chkstk_darwin();
  v1 = &v11 - v0;
  v2 = sub_10010FC20(&qword_10118D150, &unk_100ED8080);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v8 = sub_10010FC20(&qword_10118D158, &unk_100EC8E90);
  if ((*(*(v8 - 8) + 48))(v1, 1, v8) == 1)
  {
    sub_1000095E8(v1, &qword_10118D148, &unk_100EC8E80);
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &qword_10118D158, &unk_100EC8E90);
    (*(v3 + 32))(v7, v5, v2);
    if (MusicLibrarySectionedResponse.isEmpty.getter(v2))
    {
      *(&v12 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v13 = &protocol witness table for UIContentUnavailableConfiguration;
      v9 = sub_10001C8B8(&v11);
      sub_1007DBC74(v9);
      UIViewController.contentUnavailableConfiguration.setter();
      return (*(v3 + 8))(v7, v2);
    }

    (*(v3 + 8))(v7, v2);
  }

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

uint64_t type metadata accessor for LibraryTVEpisodesViewController(uint64_t a1)
{
  result = qword_1011996A0;
  if (!qword_1011996A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100622970(uint64_t a1)
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650, &qword_100EC02B0);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &qword_1011996B0, &unk_1011996B8, &qword_100ED8048);
    if (v2 <= 0x3F)
    {
      _s10TVEpisodesV5ScopeOMa(319);
      if (v3 <= 0x3F)
      {
        sub_1002114E8(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

double sub_100622B10()
{
  v0 = [objc_opt_self() currentTraitCollection];
  [v0 displayScale];

  return 113.777778;
}

uint64_t sub_100622B80(char *a1)
{
  v2 = _s10TVEpisodesVMa(0) - 8;
  *&v3 = __chkstk_darwin().n128_u64[0];
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&a1[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController];
  v7 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v8 = sub_10049CB78();

  v9 = *(v6 + 48);
  v10 = *(*v9 + 96);
  swift_beginAccess();
  sub_100623E10(v9 + v10, v5, _s10TVEpisodesVMa);
  v5[*(v2 + 36)] = v8 & 1;
  return sub_10037745C(v5);
}

uint64_t sub_100622CC4(char *a1)
{
  _s10TVEpisodesVMa(0);
  *&v2 = __chkstk_darwin().n128_u64[0];
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&a1[OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_responseController];
  v6 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v7 = v11[1];
  v8 = *(v5 + 48);
  v9 = *(*v8 + 96);
  swift_beginAccess();
  sub_100623E10(v8 + v9, v4, _s10TVEpisodesVMa);

  *(v4 + 1) = v7;
  return sub_10037745C(v4);
}

uint64_t sub_100622DF0()
{
  sub_10010FC20(&qword_10118D148, &unk_100EC8E80);
  __chkstk_darwin();
  v1 = &v10 - v0;
  v2 = sub_10010FC20(&qword_10118D150, &unk_100ED8080);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&qword_10118D158, &unk_100EC8E90);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &qword_10118D148, &unk_100EC8E80);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &qword_10118D158, &unk_100EC8E90);
    v8 = MusicLibrarySectionedResponse.sections.getter();
    (*(v3 + 8))(v5, v2);
    v7 = *(v8 + 16);
  }

  return v7;
}

uint64_t sub_100622FF4(unint64_t a1)
{
  v19 = a1;
  v1 = sub_10010FC20(&qword_10118D130, &qword_100EBD670);
  v18 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = sub_10010FC20(&qword_10118D140, &qword_100EC8E78);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - v6;
  sub_10010FC20(&qword_10118D148, &unk_100EC8E80);
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = sub_10010FC20(&qword_10118D150, &unk_100ED8080);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - v12;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v14 = sub_10010FC20(&qword_10118D158, &unk_100EC8E90);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_1000095E8(v9, &qword_10118D148, &unk_100EC8E80);
    return 0;
  }

  (*(v11 + 16))(v13, v9, v10);
  sub_1000095E8(v9, &qword_10118D158, &unk_100EC8E90);
  v16 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v11 + 8))(v13, v10);
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v16 + 16) <= v19)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v7, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v4);

  MusicLibrarySection.items.getter();
  (*(v5 + 8))(v7, v4);
  sub_100020674(&unk_10118C270, &qword_10118D130, &qword_100EBD670, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v17 = dispatch thunk of Collection.distance(from:to:)();
  (*(v18 + 8))(v3, v1);
  return v17;
}

id sub_100623410(uint64_t a1)
{
  sub_10010FC20(&unk_1011996D0, &unk_100ED8090);
  __chkstk_darwin();
  v3 = &v39 - v2;
  v4 = type metadata accessor for TVEpisode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v55 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v39 - v7;
  __chkstk_darwin();
  v10 = &v39 - v9;
  v11 = *(type metadata accessor for IndexPath() - 8);
  __chkstk_darwin();
  v15 = __chkstk_darwin();
  v16 = &v39 - v12;
  if (!*(a1 + 16))
  {
    return 0;
  }

  v53 = v10;
  v54 = v11;
  v17 = *(v11 + 16);
  v18 = *(v11 + 80);
  v56 = v13;
  v50 = v17;
  v51 = v14;
  (v17)(&v39 - v12, a1 + ((v18 + 32) & ~v18), v13, v15);
  sub_10037C290(v16, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    (*(v54 + 8))(v16, v56);
    sub_1000095E8(v3, &unk_1011996D0, &unk_100ED8090);
    return 0;
  }

  v45 = ~v18;
  v52 = v16;
  v20 = v5;
  v49 = *(v5 + 32);
  v40 = v18;
  v21 = v8;
  v22 = v5 + 32;
  v23 = v53;
  v49(v53, v3, v4);
  v43 = v22;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v48 = v20;
  v41 = *(v20 + 16);
  v41(v21, v23, v4);
  v24 = *(v20 + 80);
  v25 = v4;
  v42 = v24 | 7;
  v44 = swift_allocObject();
  v49((v44 + ((v24 + 16) & ~v24)), v21, v4);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v55;
  v27 = v25;
  v46 = v25;
  v41(v55, v23, v25);
  v28 = v51;
  v29 = v56;
  v50(v51, v52, v56);
  v30 = (v24 + 24) & ~v24;
  v31 = (v6 + v40 + v30) & v45;
  v32 = swift_allocObject();
  *(v32 + 16) = v39;
  v49((v32 + v30), v26, v27);
  v33 = v54;
  (*(v54 + 32))(v32 + v31, v28, v29);
  v34 = objc_opt_self();
  v61 = sub_100623BE8;
  v62 = v44;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100747E6C;
  v60 = &unk_1010B7A50;
  v35 = _Block_copy(&aBlock);

  v61 = sub_100623C48;
  v62 = v32;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100747EBC;
  v60 = &unk_1010B7A78;
  v36 = _Block_copy(&aBlock);

  v37 = isa;
  v38 = [v34 configurationWithIdentifier:isa previewProvider:v35 actionProvider:v36];

  _Block_release(v36);
  _Block_release(v35);
  (*(v48 + 8))(v53, v46);
  (*(v33 + 8))(v52, v56);

  return v38;
}

void sub_100623A2C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___headerRegistration;
  v3 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___listCellRegistration;
  v5 = sub_10010FC20(&unk_1011996B8, &qword_100ED8048);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___collectionView) = 0;
  v6 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_prefetchingController;
  v7 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v6) = sub_10003AAD8(0xD00000000000001ALL, 0x8000000100E52800);
  *(v1 + OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___searchController) = 0;
  v8 = OBJC_IVAR____TtC5Music31LibraryTVEpisodesViewController____lazy_storage___actionMetricsReportingContext;
  v9 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100623BE8()
{
  v1 = *(type metadata accessor for TVEpisode() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100620F98(v2);
}

unint64_t sub_100623C48(uint64_t a1)
{
  v3 = *(type metadata accessor for TVEpisode() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100621058(a1, v7, v1 + v4, v8);
}

uint64_t sub_100623D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}