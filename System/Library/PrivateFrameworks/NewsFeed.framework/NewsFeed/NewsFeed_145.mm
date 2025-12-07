uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE15openInNewWindow8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(void *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 contentType] == 1)
  {
    if (qword_1EC87DC48 != -1)
    {
      swift_once();
    }

    v8 = sub_1D725C42C();
    __swift_project_value_buffer(v8, qword_1EC9BAD78);
    v9 = sub_1D725C3FC();
    v10 = sub_1D7262EDC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D5B42000, v9, v10, "Context menu item 'openInNewWindow' not available for web articles", v11, 2u);
      MEMORY[0x1DA6FD500](v11, -1, -1);
    }

    return 0;
  }

  else
  {
    if (qword_1EDF3AFB0 != -1)
    {
      swift_once();
    }

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = objc_opt_self();

    swift_unknownObjectRetain();
    v15 = [v14 bundleForClass_];
    sub_1D725811C();

    sub_1D725F71C();
    sub_1D725F70C();
    (*(v3 + 104))(v7, *MEMORY[0x1E69D7B48], v2);
    v16[1] = a1;
    v16[2] = 0;
    v17 = 1;
    sub_1D725D3DC();
    swift_allocObject();
    return sub_1D725D3AC();
  }
}

uint64_t sub_1D687891C(void *a1, char a2)
{
  v4 = sub_1D725DC6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AFB0 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();

  v11 = a1;
  v12 = [v10 bundleForClass_];
  sub_1D725811C();

  sub_1D725F71C();
  sub_1D725F70C();
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7B48], v4);
  v14[1] = a1;
  v14[2] = 0;
  v15 = a2;
  sub_1D725D3DC();
  swift_allocObject();
  return sub_1D725D3AC();
}

void sub_1D6878B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for OpenCommandContext);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D6878C04(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v328 = a5;
  v334 = a4;
  v285 = a2;
  v286 = a3;
  sub_1D5B49C54(0, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  v305 = *(v8 - 8);
  v306 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v304 = (&v277 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v309 = &v277 - v13;
  sub_1D5B49C54(0, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  v293 = *(v14 - 8);
  v294 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v292 = &v277 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v300 = &v277 - v19;
  sub_1D5B49C54(0, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatObject);
  v303 = v20;
  v307 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v326 = (&v277 - v22);
  sub_1D5EA1328(0);
  v289 = *(v23 - 8);
  v290 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v288 = (&v277 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26, v27);
  v299 = &v277 - v28;
  sub_1D5B49C54(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
  v291 = v29;
  v311 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v30);
  v332 = (&v277 - v31);
  sub_1D5B49C54(0, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  v297 = *(v32 - 8);
  v298 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v296 = &v277 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v301 = &v277 - v37;
  sub_1D5C2C40C(0);
  v287 = v38;
  v330 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v39);
  v308 = &v277 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49C54(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
  v325 = v41;
  v283 = *(v41 - 1);
  MEMORY[0x1EEE9AC00](v41, v42);
  v324 = (&v277 - v43);
  sub_1D5B49C54(0, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  v322 = *(v44 - 1);
  v323 = v44;
  MEMORY[0x1EEE9AC00](v44, v45);
  v284 = &v277 - v46;
  sub_1D5B49C54(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  v295 = v47;
  v331 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v48);
  v333 = (&v277 - v49);
  sub_1D5B49C54(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
  v321 = v50;
  v281 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v51);
  v320 = &v277 - v52;
  sub_1D5B49C54(0, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  v318 = *(v53 - 8);
  v319 = v53;
  MEMORY[0x1EEE9AC00](v53, v54);
  v282 = &v277 - v55;
  sub_1D5B49C54(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
  v317 = v56;
  v280 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v277 - v58;
  sub_1D5B49C54(0, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  v315 = *(v60 - 8);
  v316 = v60;
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v277 - v62;
  sub_1D5B49C54(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v64 - 8, v65);
  v329 = &v277 - v66;
  sub_1D5B49C54(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  v314 = v67;
  v310 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = (&v277 - v69);
  sub_1D5B49C54(0, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  v312 = *(v71 - 8);
  v313 = v71;
  MEMORY[0x1EEE9AC00](v71, v72);
  v74 = (&v277 - v73);
  *(a6 + 10) = xmmword_1D72830B0;
  v75 = *(a1 + 24);
  *a6 = *(a1 + 16);
  a6[1] = v75;
  *(a6 + 48) = *(a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  v76 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
  swift_beginAccess();
  *(a6 + 49) = *(a1 + v76);
  v77 = (a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
  swift_beginAccess();
  v79 = *v77;
  v78 = v77[1];

  a6[2] = v79;
  a6[3] = v78;
  v80 = (a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__comment);
  swift_beginAccess();
  v81 = *v80;
  v82 = v80[1];
  a6[4] = v81;
  a6[5] = v82;
  v83 = MEMORY[0x1E69E7CC0];
  a6[7] = MEMORY[0x1E69E7CC0];
  v84 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups;
  swift_beginAccess();
  v302 = a1;
  v85 = *(a1 + v84);
  v86 = *(v85 + 16);
  v327 = a6;
  if (v86)
  {
    v278 = v59;
    v336 = v83;

    sub_1D6998D58(0, v86, 0);
    v87 = v336;
    v88 = *(v310 + 80);
    v279 = v85;
    v89 = v85 + ((v88 + 32) & ~v88);
    v310 = *(v310 + 72);
    do
    {
      sub_1D6884A5C(v89, v70, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      sub_1D5EA17B4(0, &qword_1EDF341E0, &type metadata for FormatGroup);
      v91 = *(v90 + 48);
      v92 = v70[7];
      v74[6] = v70[6];
      v74[7] = v92;
      v74[8] = v70[8];
      v93 = v70[5];
      v74[4] = v70[4];
      v74[5] = v93;
      v94 = v70[3];
      v74[2] = v70[2];
      v74[3] = v94;
      v95 = v70[1];
      *v74 = *v70;
      v74[1] = v95;
      v96 = v329;
      sub_1D6884AD0(v70 + *(v314 + 36), v329, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
      sub_1D5C50270(v96, v74 + v91, type metadata accessor for FormatMetadata);
      swift_storeEnumTagMultiPayload();
      v336 = v87;
      v98 = *(v87 + 16);
      v97 = *(v87 + 24);
      if (v98 >= v97 >> 1)
      {
        sub_1D6998D58((v97 > 1), v98 + 1, 1);
        v87 = v336;
      }

      *(v87 + 16) = v98 + 1;
      sub_1D6884AD0(v74, v87 + ((*(v312 + 80) + 32) & ~*(v312 + 80)) + *(v312 + 72) * v98, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
      v89 += v310;
      --v86;
    }

    while (v86);

    a6 = v327;
    v59 = v278;
  }

  else
  {

    v87 = MEMORY[0x1E69E7CC0];
  }

  a6[8] = v87;
  v99 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
  v100 = v302;
  swift_beginAccess();
  v101 = *(v100 + v99);
  v102 = *(v101 + 16);
  v103 = MEMORY[0x1E69E7CC0];
  if (v102)
  {
    v336 = MEMORY[0x1E69E7CC0];

    sub_1D6998D38(0, v102, 0);
    v103 = v336;
    v104 = *(v280 + 80);
    v314 = v101;
    v105 = v101 + ((v104 + 32) & ~v104);
    v106 = *(v280 + 72);
    do
    {
      sub_1D6884A5C(v105, v59, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
      sub_1D5EA17B4(0, &qword_1EDF34010, &type metadata for FormatStyle);
      v108 = *(v107 + 48);
      *(v63 + 8) = *(v59 + 8);
      v109 = *(v59 + 3);
      *(v63 + 2) = *(v59 + 2);
      *(v63 + 3) = v109;
      v110 = *(v59 + 1);
      *v63 = *v59;
      *(v63 + 1) = v110;
      v111 = v329;
      sub_1D6884AD0(&v59[*(v317 + 36)], v329, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
      sub_1D5C50270(v111, &v63[v108], type metadata accessor for FormatMetadata);
      swift_storeEnumTagMultiPayload();
      v336 = v103;
      v113 = *(v103 + 16);
      v112 = *(v103 + 24);
      if (v113 >= v112 >> 1)
      {
        sub_1D6998D38((v112 > 1), v113 + 1, 1);
        v103 = v336;
      }

      *(v103 + 16) = v113 + 1;
      sub_1D6884AD0(v63, v103 + ((*(v315 + 80) + 32) & ~*(v315 + 80)) + *(v315 + 72) * v113, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
      v105 += v106;
      --v102;
    }

    while (v102);

    a6 = v327;
  }

  a6[10] = v103;
  v114 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
  swift_beginAccess();
  v115 = *(v302 + v114);
  v116 = *(v115 + 16);
  v117 = MEMORY[0x1E69E7CC0];
  if (v116)
  {
    v336 = MEMORY[0x1E69E7CC0];

    sub_1D6998D18(0, v116, 0);
    v117 = v336;
    v118 = v282;
    v119 = *(v281 + 80);
    v317 = v115;
    v120 = v115 + ((v119 + 32) & ~v119);
    v121 = *(v281 + 72);
    do
    {
      v122 = v320;
      sub_1D6884A5C(v120, v320, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
      sub_1D5EA17B4(0, &qword_1EDF343F0, &type metadata for FormatType);
      v124 = *(v123 + 48);
      v125 = *(v122 + 64);
      *(v118 + 48) = *(v122 + 48);
      *(v118 + 64) = v125;
      *(v118 + 80) = *(v122 + 80);
      v126 = *(v122 + 32);
      *(v118 + 16) = *(v122 + 16);
      *(v118 + 32) = v126;
      *v118 = *v122;
      v127 = v122 + *(v321 + 36);
      v128 = v329;
      sub_1D6884AD0(v127, v329, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
      sub_1D5C50270(v128, v118 + v124, type metadata accessor for FormatMetadata);
      swift_storeEnumTagMultiPayload();
      v336 = v117;
      v130 = *(v117 + 16);
      v129 = *(v117 + 24);
      if (v130 >= v129 >> 1)
      {
        sub_1D6998D18((v129 > 1), v130 + 1, 1);
        v117 = v336;
      }

      *(v117 + 16) = v130 + 1;
      sub_1D6884AD0(v118, v117 + ((*(v318 + 80) + 32) & ~*(v318 + 80)) + *(v318 + 72) * v130, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
      v120 += v121;
      --v116;
    }

    while (v116);

    a6 = v327;
  }

  a6[13] = v117;
  v131 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
  swift_beginAccess();
  v132 = v302;
  v133 = *(v302 + v131);
  v134 = *(v133 + 16);
  v135 = MEMORY[0x1E69E7CC0];
  if (v134)
  {
    v336 = MEMORY[0x1E69E7CC0];

    sub_1D6998CF8(0, v134, 0);
    v135 = v336;
    v136 = *(v283 + 80);
    v321 = v133;
    v137 = v133 + ((v136 + 32) & ~v136);
    v138 = *(v283 + 72);
    v139 = v284;
    do
    {
      v140 = v324;
      sub_1D6884A5C(v137, v324, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
      sub_1D5EA17B4(0, &qword_1EDF30528, &type metadata for FormatDecoration);
      v142 = *(v141 + 48);
      v143 = v140[5];
      v139[4] = v140[4];
      v139[5] = v143;
      *(v139 + 91) = *(v140 + 91);
      v144 = v140[3];
      v139[2] = v140[2];
      v139[3] = v144;
      v145 = v140[1];
      *v139 = *v140;
      v139[1] = v145;
      v146 = v140 + *(v325 + 9);
      v147 = v329;
      sub_1D6884AD0(v146, v329, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
      sub_1D5C50270(v147, v139 + v142, type metadata accessor for FormatMetadata);
      swift_storeEnumTagMultiPayload();
      v336 = v135;
      v149 = *(v135 + 16);
      v148 = *(v135 + 24);
      if (v149 >= v148 >> 1)
      {
        sub_1D6998CF8((v148 > 1), v149 + 1, 1);
        v135 = v336;
      }

      *(v135 + 16) = v149 + 1;
      sub_1D6884AD0(v139, v135 + ((*(v322 + 80) + 32) & ~*(v322 + 80)) + v322[9] * v149, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
      v137 += v138;
      --v134;
    }

    while (v134);

    a6 = v327;
    v132 = v302;
  }

  v151 = v285;
  v150 = v286;
  a6[14] = v135;
  a6[15] = v151;
  a6[16] = v150;
  v152 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
  swift_beginAccess();
  a6[17] = *(v132 + v152);
  v153 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__selectors;
  swift_beginAccess();
  a6[18] = *(v132 + v153);
  v154 = *(v132 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem);
  v155 = *(v132 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem + 8);
  v156 = a6[20];
  v157 = a6[21];

  sub_1D5D5FDA4(v154, v155);
  sub_1D5C5D428(v156, v157);
  a6[20] = v154;
  a6[21] = v155;
  v158 = v132 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions;
  v159 = type metadata accessor for FormatPackage(0);
  sub_1D6884BB4(v158, a6 + *(v159 + 92), type metadata accessor for FormatCompilerOptions);
  if (qword_1EDF3CA50 != -1)
  {
    goto LABEL_138;
  }

  while (1)
  {
    v160 = sub_1D725BD1C();
    v161 = __swift_project_value_buffer(v160, qword_1EDF3CA58);
    (*(*(v160 - 8) + 16))(a6 + *(v159 + 96), v161, v160);
    v162 = type metadata accessor for FormatCompilerOptions(0);
    sub_1D5D5FBC4(v158 + *(v162 + 28), a6 + *(v159 + 100));
    v158 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__traits;
    swift_beginAccess();
    *(a6 + *(v159 + 104)) = *(v132 + v158);
    v163 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items;
    swift_beginAccess();
    v132 = *(v132 + v163);
    v325 = *(v132 + 16);
    if (v325)
    {
      v324 = (v132 + ((v331[80] + 32) & ~v331[80]));
      v159 = v334;
      v164 = v334 + 56;

      v165 = 0;
      v322 = MEMORY[0x1E69E7CC0];
      v166 = &type metadata for FormatItem;
      v323 = v132;
      while (v165 < *(v132 + 16))
      {
        v167 = v166;
        sub_1D6884A5C(v324 + *(v331 + 9) * v165, v333, &qword_1EDF338A0, sub_1D5B4AD74, v166, type metadata accessor for FormatObject);
        if (*(v159 + 16) && (v158 = v334, v168 = *v333, v169 = v333[1], sub_1D7264A0C(), MEMORY[0x1DA6FC0B0](1), sub_1D72621EC(), v170 = sub_1D7264A5C(), v171 = -1 << *(v158 + 32), v172 = v170 & ~v171, ((*(v164 + ((v172 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v172) & 1) != 0))
        {
          v173 = ~v171;
          v158 = *(v334 + 48);
          while (1)
          {
            v174 = v158 + 24 * v172;
            if (*(v174 + 16) == 1)
            {
              v175 = *v174 == v168 && *(v174 + 8) == v169;
              if (v175 || (sub_1D72646CC() & 1) != 0)
              {
                break;
              }
            }

            v172 = (v172 + 1) & v173;
            if (((*(v164 + ((v172 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v172) & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          v166 = v167;
          sub_1D5EA17B4(0, &qword_1EDF34648, v167);
          v177 = *(v176 + 48);
          v178 = v333;
          v179 = *(v333 + 5);
          v180 = v295;
          v181 = v296;
          *(v296 + 4) = *(v333 + 4);
          v181[5] = v179;
          v181[6] = *(v178 + 6);
          *(v181 + 105) = *(v178 + 105);
          v182 = *(v178 + 3);
          v181[2] = *(v178 + 2);
          v181[3] = v182;
          v183 = *(v178 + 1);
          *v181 = *v178;
          v181[1] = v183;
          v184 = v329;
          sub_1D6884AD0(v178 + *(v180 + 36), v329, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
          sub_1D5C50270(v184, v181 + v177, type metadata accessor for FormatMetadata);
          swift_storeEnumTagMultiPayload();
          sub_1D6884AD0(v181, v301, &unk_1EDF2C868, sub_1D5B4AD74, v167, type metadata accessor for FormatFileReference);
          v185 = v322;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v185 = sub_1D6992BEC(0, v185[2] + 1, 1, v185);
          }

          a6 = v327;
          v132 = v323;
          v158 = v185[2];
          v186 = v185[3];
          v322 = v185;
          if (v158 >= v186 >> 1)
          {
            v322 = sub_1D6992BEC((v186 > 1), v158 + 1, 1, v322);
          }

          v187 = v322;
          v322[2] = v158 + 1;
          sub_1D6884AD0(v301, v187 + ((*(v297 + 80) + 32) & ~*(v297 + 80)) + *(v297 + 72) * v158, &unk_1EDF2C868, sub_1D5B4AD74, v167, type metadata accessor for FormatFileReference);
        }

        else
        {
LABEL_29:
          v166 = v167;
          sub_1D6884B44(v333, &qword_1EDF338A0, sub_1D5B4AD74, v167);
          a6 = v327;
          v132 = v323;
        }

        ++v165;
        v159 = v334;
        if (v165 == v325)
        {

          v188 = v322;
          goto LABEL_49;
        }
      }

LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v188 = MEMORY[0x1E69E7CC0];
LABEL_49:
    a6[9] = v188;
    v189 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets;
    v190 = v302;
    swift_beginAccess();
    v132 = *(v190 + v189);
    v333 = *(v132 + 16);
    if (v333)
    {
      v331 = (v132 + ((*(v330 + 80) + 32) & ~*(v330 + 80)));
      v158 = v334;
      v191 = v334 + 56;

      v192 = 0;
      v324 = MEMORY[0x1E69E7CC0];
      v325 = v132;
      v159 = v308;
      while (1)
      {
        if (v192 >= *(v132 + 16))
        {
          goto LABEL_135;
        }

        sub_1D6884BB4(&v331[v330[9] * v192], v159, sub_1D5C2C40C);
        v193 = *v159;
        swift_beginAccess();
        if (*(v158 + 16))
        {
          v195 = *(v193 + 16);
          v194 = *(v193 + 24);
          sub_1D7264A0C();
          MEMORY[0x1DA6FC0B0](0);

          sub_1D72621EC();
          v196 = sub_1D7264A5C();
          v197 = -1 << *(v158 + 32);
          v198 = v196 & ~v197;
          if ((*(v191 + ((v198 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v198))
          {
            v199 = ~v197;
            v200 = *(v334 + 48);
            while (1)
            {
              v201 = v200 + 24 * v198;
              if (!*(v201 + 16))
              {
                v202 = *v201 == v195 && *(v201 + 8) == v194;
                if (v202 || (sub_1D72646CC() & 1) != 0)
                {
                  break;
                }
              }

              v198 = (v198 + 1) & v199;
              if (((*(v191 + ((v198 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v198) & 1) == 0)
              {
                goto LABEL_51;
              }
            }

            sub_1D6884C7C(0);
            v204 = *(v203 + 48);
            v205 = v287;
            v206 = v288;
            *v288 = v193;
            v207 = v308;
            v208 = v329;
            sub_1D6884A5C(&v308[*(v205 + 36)], v329, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
            sub_1D5C50270(v208, v206 + v204, type metadata accessor for FormatMetadata);
            swift_storeEnumTagMultiPayload();

            sub_1D6884C1C(v207, sub_1D5C2C40C);
            sub_1D5C50270(v206, v299, sub_1D5EA1328);
            v209 = v324;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v209 = sub_1D6992BB8(0, v209[2] + 1, 1, v209);
            }

            a6 = v327;
            v132 = v325;
            v211 = v209[2];
            v210 = v209[3];
            v324 = v209;
            if (v211 >= v210 >> 1)
            {
              v324 = sub_1D6992BB8((v210 > 1), v211 + 1, 1, v324);
            }

            v212 = v324;
            v324[2] = v211 + 1;
            sub_1D5C50270(v299, v212 + ((*(v289 + 80) + 32) & ~*(v289 + 80)) + *(v289 + 72) * v211, sub_1D5EA1328);
            v158 = v334;
            v159 = v308;
            goto LABEL_53;
          }

LABEL_51:

          a6 = v327;
          v158 = v334;
          v159 = v308;
          v132 = v325;
        }

        sub_1D6884C1C(v159, sub_1D5C2C40C);
LABEL_53:
        if (++v192 == v333)
        {

          v213 = v302;
          v214 = v324;
          goto LABEL_72;
        }
      }
    }

    v213 = v190;
    v214 = MEMORY[0x1E69E7CC0];
LABEL_72:
    a6[11] = v214;
    v215 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries;
    v158 = v213;
    swift_beginAccess();
    v132 = *(v158 + v215);
    v333 = *(v132 + 16);
    if (!v333)
    {
      break;
    }

    v331 = (v132 + ((*(v311 + 80) + 32) & ~*(v311 + 80)));
    v159 = v334;
    v216 = v334 + 56;

    v217 = 0;
    v325 = MEMORY[0x1E69E7CC0];
    v218 = &type metadata for FormatSupplementary;
    v330 = v132;
    while (v217 < *(v132 + 16))
    {
      v219 = v218;
      sub_1D6884A5C(&v331[*(v311 + 72) * v217], v332, &qword_1EDF338C0, sub_1D5B4BADC, v218, type metadata accessor for FormatObject);
      if (*(v159 + 16) && (v220 = *v332, v221 = v332[1], v158 = v334, sub_1D7264A0C(), MEMORY[0x1DA6FC0B0](2), sub_1D72621EC(), v222 = sub_1D7264A5C(), v223 = -1 << *(v158 + 32), v224 = v222 & ~v223, ((*(v216 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v224) & 1) != 0))
      {
        v225 = ~v223;
        v158 = *(v334 + 48);
        while (1)
        {
          v226 = v158 + 24 * v224;
          if (*(v226 + 16) >= 2u)
          {
            v227 = *v226 == v220 && *(v226 + 8) == v221;
            if (v227 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }
          }

          v224 = (v224 + 1) & v225;
          if (((*(v216 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v224) & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        v218 = v219;
        sub_1D5EA17B4(0, &qword_1EDF2BE08, v219);
        v229 = *(v228 + 48);
        v230 = v332;
        v231 = *(v332 + 5);
        v232 = v291;
        v233 = v292;
        *(v292 + 4) = *(v332 + 4);
        v233[5] = v231;
        *(v233 + 89) = *(v230 + 89);
        v234 = v230[3];
        v233[2] = v230[2];
        v233[3] = v234;
        v235 = v230[1];
        *v233 = *v230;
        v233[1] = v235;
        v236 = v329;
        sub_1D6884AD0(v230 + *(v232 + 36), v329, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
        sub_1D5C50270(v236, v233 + v229, type metadata accessor for FormatMetadata);
        swift_storeEnumTagMultiPayload();
        sub_1D6884AD0(v233, v300, &qword_1EDF2C878, sub_1D5B4BADC, v219, type metadata accessor for FormatFileReference);
        v237 = v325;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v237 = sub_1D699297C(0, v237[2] + 1, 1, v237);
        }

        a6 = v327;
        v132 = v330;
        v158 = v237[2];
        v238 = v237[3];
        v325 = v237;
        if (v158 >= v238 >> 1)
        {
          v325 = sub_1D699297C((v238 > 1), v158 + 1, 1, v325);
        }

        v239 = v325;
        v325[2] = v158 + 1;
        sub_1D6884AD0(v300, v239 + ((*(v293 + 80) + 32) & ~*(v293 + 80)) + *(v293 + 72) * v158, &qword_1EDF2C878, sub_1D5B4BADC, v219, type metadata accessor for FormatFileReference);
      }

      else
      {
LABEL_74:
        v218 = v219;
        sub_1D6884B44(v332, &qword_1EDF338C0, sub_1D5B4BADC, v219);
        a6 = v327;
        v132 = v330;
      }

      ++v217;
      v159 = v334;
      if (v217 == v333)
      {

        v240 = v325;
        goto LABEL_94;
      }
    }

LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    swift_once();
  }

  v240 = MEMORY[0x1E69E7CC0];
LABEL_94:

  a6[12] = v240;
  v159 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations;
  v158 = v302;
  swift_beginAccess();
  v241 = *(v158 + v159);
  v242 = v328;
  v317 = *(v241 + 16);
  if (!v317)
  {
    v276 = MEMORY[0x1E69E7CC0];
    goto LABEL_132;
  }

  v316 = v241 + ((*(v307 + 80) + 32) & ~*(v307 + 80));
  v243 = v328 + 56;

  v245 = 0;
  a6 = MEMORY[0x1E69E7CC0];
  v246 = v244;
  v315 = v244;
  while (2)
  {
    if (v245 >= *(v246 + 16))
    {
      goto LABEL_137;
    }

    v324 = v245;
    v325 = a6;
    v247 = v326;
    sub_1D6884A5C(v316 + *(v307 + 72) * v245, v326, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatObject);
    v248 = *v247;
    v249 = v247[1];
    v250 = v247[3];
    v319 = v247[2];
    v320 = v248;
    v322 = v249;
    v323 = v250;
    v251 = v247[5];
    v318 = v247[4];
    v321 = v251;
    v252 = v247[6];
    v334 = *(v252 + 16);
    if (v334)
    {
      a6 = 0;
      v331 = (v252 + 32);
      v159 = MEMORY[0x1E69E7CC0];
      v332 = v252;
      while (1)
      {
        v330 = v159;
        v253 = a6;
        while (1)
        {
          if (v253 >= *(v252 + 16))
          {
            __break(1u);
            goto LABEL_134;
          }

          a6 = (v253 + 1);
          if (!*(v242 + 16))
          {
            goto LABEL_103;
          }

          v254 = &v331[40 * v253];
          v255 = *v254;
          v158 = *(v254 + 1);
          v256 = *(v254 + 3);
          v333 = *(v254 + 2);
          v257 = *(v254 + 4);
          sub_1D7264A0C();

          swift_bridgeObjectRetain_n();
          sub_1D72621EC();
          v258 = sub_1D7264A5C();
          v259 = -1 << *(v242 + 32);
          v159 = v258 & ~v259;
          if ((*(v243 + ((v159 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v159))
          {
            break;
          }

LABEL_102:

          swift_bridgeObjectRelease_n();
          v252 = v332;
LABEL_103:
          v253 = a6;
          if (a6 == v334)
          {
            v159 = v330;
            goto LABEL_122;
          }
        }

        v132 = ~v259;
        while (1)
        {
          v260 = (*(v242 + 48) + 16 * v159);
          v261 = *v260 == v255 && v260[1] == v158;
          if (v261 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v159 = (v159 + 1) & v132;
          if (((*(v243 + ((v159 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v159) & 1) == 0)
          {
            goto LABEL_102;
          }
        }

        v159 = v330;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v335 = v159;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6998D78(0, *(v159 + 16) + 1, 1);
          v159 = v335;
        }

        v264 = *(v159 + 16);
        v263 = *(v159 + 24);
        v132 = v264 + 1;
        if (v264 >= v263 >> 1)
        {
          sub_1D6998D78((v263 > 1), v264 + 1, 1);
          v159 = v335;
        }

        *(v159 + 16) = v132;
        v265 = (v159 + 40 * v264);
        v265[4] = v255;
        v265[5] = v158;
        v252 = v332;
        v265[6] = v333;
        v265[7] = v256;
        v265[8] = v257;
        v242 = v328;
        if (a6 == v334)
        {
LABEL_122:
          if (*(v159 + 16))
          {
            goto LABEL_125;
          }

LABEL_96:

          sub_1D6884B44(v326, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization);
          v246 = v315;
          a6 = v325;
          goto LABEL_97;
        }
      }
    }

    v159 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_96;
    }

LABEL_125:
    v266 = v159;
    sub_1D5EA17B4(0, &qword_1EDF2DC48, &type metadata for FormatLocalization);
    v268 = *(v267 + 48);
    v269 = v304;
    v270 = v319;
    v132 = v322;
    v271 = v323;
    *v304 = v320;
    v269[1] = v132;
    v269[2] = v270;
    v269[3] = v271;
    v272 = v321;
    v269[4] = v318;
    v269[5] = v272;
    v269[6] = v266;
    v273 = v326;
    v274 = v329;
    sub_1D6884A5C(v326 + *(v303 + 36), v329, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);

    sub_1D6884B44(v273, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization);
    sub_1D5C50270(v274, v269 + v268, type metadata accessor for FormatMetadata);
    swift_storeEnumTagMultiPayload();
    sub_1D6884AD0(v269, v309, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
    a6 = v325;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a6 = sub_1D6992740(0, a6[2] + 1, 1, a6);
    }

    v158 = a6[2];
    v275 = a6[3];
    v159 = v158 + 1;
    v246 = v315;
    if (v158 >= v275 >> 1)
    {
      a6 = sub_1D6992740((v275 > 1), v158 + 1, 1, a6);
    }

    a6[2] = v159;
    sub_1D6884AD0(v309, a6 + ((*(v305 + 80) + 32) & ~*(v305 + 80)) + *(v305 + 72) * v158, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
LABEL_97:
    v245 = v324 + 1;
    if ((v324 + 1) != v317)
    {
      continue;
    }

    break;
  }

  v276 = a6;
  a6 = v327;
LABEL_132:

  a6[19] = v276;
}

uint64_t FormatPackage.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatPackage.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void FormatPackage.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void FormatPackage.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatPackage.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void FormatPackage.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void FormatPackage.packages.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 56) = v2;
}

void FormatPackage.groups.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 64) = v2;
}

void FormatPackage.items.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 72) = v2;
}

void FormatPackage.styles.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 80) = v2;
}

void FormatPackage.snippets.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 88) = v2;
}

void FormatPackage.supplementaries.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 96) = v2;
}

void FormatPackage.types.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 104) = v2;
}

void FormatPackage.decorations.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 112) = v2;
}

void FormatPackage.localizations.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 152) = v2;
}

uint64_t FormatPackage.columnSystem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 168);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5D5FDA4(v2, v3);
}

uint64_t FormatPackage.columnSystem.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1D5C5D428(*(v1 + 160), *(v1 + 168));
  *(v1 + 160) = v2;
  *(v1 + 168) = v3;
  return result;
}

uint64_t FormatPackage.compilerOptions.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FormatPackage(0) + 92);

  return sub_1D687B9CC(a1, v3);
}

uint64_t sub_1D687B9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCompilerOptions(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FormatPackage.formatVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormatPackage(0) + 96);
  v4 = sub_1D725BD1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FormatPackage.formatVersion.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatPackage(0) + 96);
  v4 = sub_1D725BD1C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FormatPackage.editorProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatPackage(0) + 100);

  return sub_1D5D5FBC4(v3, a1);
}

uint64_t FormatPackage.traits.getter()
{
  type metadata accessor for FormatPackage(0);
}

void sub_1D687BC30(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatPackage(0) + 104);

  *(a2 + v4) = v3;
}

void FormatPackage.traits.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatPackage(0) + 104);

  *(v1 + v3) = a1;
}

uint64_t FormatPackage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1D5B4BE38(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v110 = v101 - v6;
  sub_1D5B4BE38(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], v3);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v109 = v101 - v9;
  v10 = sub_1D725BD1C();
  v103 = *(v10 - 8);
  v104 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v108 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4BE38(0, &qword_1EDF29BD0, type metadata accessor for FormatCompilerOptions, v3);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v107 = v101 - v15;
  v16 = type metadata accessor for FormatCompilerOptions(0);
  v105 = *(v16 - 8);
  v106 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D725895C();
  v112 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49C54(0, &qword_1EDF19C68, sub_1D5E19454, &type metadata for FormatPackage.CodingKeys, MEMORY[0x1E69E6F48]);
  v25 = v24;
  v113 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = v101 - v27;
  v115 = type metadata accessor for FormatPackage(0);
  MEMORY[0x1EEE9AC00](v115, v29);
  v31 = v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v116 = v31;
  *(v31 + 10) = xmmword_1D72830B0;
  v32 = a1[3];
  v114 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D5E19454();
  v33 = v117;
  sub_1D7264B0C();
  if (v33)
  {
    v117 = v33;
    v38 = v116;
    __swift_destroy_boxed_opaque_existential_1(v114);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    LODWORD(v105) = 0;
    LODWORD(v106) = 0;
    LODWORD(v107) = 0;
    LODWORD(v108) = 0;
    LODWORD(v109) = 0;
    LODWORD(v110) = 0;
    LODWORD(v111) = 0;
    LODWORD(v112) = 0;
    LODWORD(v113) = 0;
    goto LABEL_4;
  }

  v34 = v112;
  v35 = v20;
  v102 = v19;
  LOBYTE(v118) = 0;
  v36 = sub_1D726422C();
  v48 = v116;
  if (!v37)
  {
    sub_1D725894C();
    v49 = sub_1D725893C();
    v50 = v28;
    v52 = v51;
    (*(v34 + 8))(v23, v35);
    v37 = v52;
    v28 = v50;
    v36 = v49;
  }

  *v48 = v36;
  v48[1] = v37;
  v120 = 3;
  sub_1D5C2B52C();
  sub_1D726431C();
  *(v48 + 48) = v118;
  v120 = 4;
  sub_1D5C2B7DC();
  sub_1D726427C();
  v53 = v118;
  if (v118 == 5)
  {
    v53 = 4;
  }

  *(v48 + 49) = v53;
  LOBYTE(v118) = 1;
  v54 = sub_1D726422C();
  v56 = v55;

  v48[2] = v54;
  v48[3] = v56;
  LOBYTE(v118) = 2;
  v48[4] = sub_1D726422C();
  v48[5] = v57;
  v101[1] = v57;
  sub_1D5B4A5A0(0);
  v120 = 5;
  sub_1D5B4A1EC(qword_1EDF3E280, sub_1D5B4A5A0, &protocol conformance descriptor for FormatFileReferenceCollection<A>);
  sub_1D726427C();
  v58 = v118;
  v59 = MEMORY[0x1E69E7CC0];
  if (!v118)
  {
    v58 = MEMORY[0x1E69E7CC0];
  }

  v48[7] = v58;
  sub_1D5B49C54(0, &qword_1EDF21290, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReferenceCollection);
  v120 = 6;
  sub_1D6883544();
  sub_1D726427C();
  v60 = v118;
  if (!v118)
  {
    v60 = v59;
  }

  v48[8] = v60;
  sub_1D5B49C54(0, &qword_1EDF212B0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReferenceCollection);
  v120 = 7;
  sub_1D68835D4();
  sub_1D726427C();
  v61 = v118;
  if (!v118)
  {
    v61 = v59;
  }

  v48[9] = v61;
  sub_1D5B49C54(0, &qword_1EDF21280, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReferenceCollection);
  v120 = 8;
  sub_1D6883664();
  sub_1D726427C();
  v117 = 0;
  v62 = v118;
  if (!v118)
  {
    v62 = v59;
  }

  v48[10] = v62;
  sub_1D68836F4(0);
  v120 = 9;
  sub_1D5B4A1EC(&qword_1EDF21278, sub_1D68836F4, &protocol conformance descriptor for FormatFileReferenceCollection<A>);
  v63 = v117;
  sub_1D726427C();
  v117 = v63;
  if (v63)
  {
    (*(v113 + 8))(v28, v25);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    LODWORD(v105) = 0;
    LODWORD(v106) = 0;
    LODWORD(v107) = 0;
    LODWORD(v108) = 0;
    LODWORD(v109) = 0;
    LODWORD(v110) = 0;
    LODWORD(v111) = 0;
    LODWORD(v112) = 0;
    LODWORD(v113) = 0;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v38 = v116;
LABEL_44:
    __swift_destroy_boxed_opaque_existential_1(v114);

LABEL_4:

    if (v39)
    {

      v46 = v115;
      if (!v40)
      {
LABEL_6:
        if (!v41)
        {
          goto LABEL_7;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v46 = v115;
      if (!v40)
      {
        goto LABEL_6;
      }
    }

    if (!v41)
    {
LABEL_7:
      if (!v42)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_24:

    if (!v42)
    {
LABEL_8:
      if (!v43)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }

LABEL_25:

    if (!v43)
    {
LABEL_9:
      if (!v44)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }

LABEL_26:

    if (!v44)
    {
LABEL_10:
      if (!v45)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }

LABEL_27:

    if (!v45)
    {
LABEL_11:
      if (!v105)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }

LABEL_28:

    if (!v105)
    {
LABEL_12:
      if (!v106)
      {
        goto LABEL_13;
      }

      goto LABEL_30;
    }

LABEL_29:

    if (!v106)
    {
LABEL_13:
      if (!v107)
      {
        goto LABEL_14;
      }

      goto LABEL_31;
    }

LABEL_30:

    if (!v107)
    {
LABEL_14:
      if (!v108)
      {
        goto LABEL_15;
      }

      goto LABEL_32;
    }

LABEL_31:

    if (!v108)
    {
LABEL_15:
      if (!v109)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }

LABEL_32:

    if (!v109)
    {
LABEL_16:
      if (!v110)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_33:

    if (!v110)
    {
LABEL_18:
      result = sub_1D5C5D428(*(v38 + 20), *(v38 + 21));
      if (v111)
      {
        result = sub_1D6884C1C(&v38[v46[23]], type metadata accessor for FormatCompilerOptions);
        if (!v112)
        {
LABEL_20:
          if (!v113)
          {
            return result;
          }

          return sub_1D5CDE59C(&v38[v46[25]], &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        }
      }

      else if (!v112)
      {
        goto LABEL_20;
      }

      result = (*(v103 + 8))(&v38[v46[24]], v104);
      if (!v113)
      {
        return result;
      }

      return sub_1D5CDE59C(&v38[v46[25]], &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    }

LABEL_17:

    goto LABEL_18;
  }

  v64 = v118;
  if (!v118)
  {
    v64 = v59;
  }

  *(v116 + 11) = v64;
  sub_1D5B49C54(0, &qword_1EDF212C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReferenceCollection);
  v120 = 10;
  sub_1D6883788();
  v65 = v117;
  sub_1D726427C();
  v117 = v65;
  if (v65)
  {
    (*(v113 + 8))(v28, v25);
    v44 = 0;
    v45 = 0;
    LODWORD(v105) = 0;
    LODWORD(v106) = 0;
    LODWORD(v107) = 0;
    LODWORD(v108) = 0;
    LODWORD(v109) = 0;
    LODWORD(v110) = 0;
    LODWORD(v111) = 0;
    LODWORD(v112) = 0;
    LODWORD(v113) = 0;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v38 = v116;
    goto LABEL_44;
  }

  v66 = v118;
  if (!v118)
  {
    v66 = v59;
  }

  *(v116 + 12) = v66;
  sub_1D5B49C54(0, &qword_1EDF212A0, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReferenceCollection);
  v120 = 11;
  sub_1D6883818();
  v67 = v117;
  sub_1D726427C();
  v117 = v67;
  if (v67)
  {
    (*(v113 + 8))(v28, v25);
    v45 = 0;
    LODWORD(v105) = 0;
    LODWORD(v106) = 0;
    LODWORD(v107) = 0;
    LODWORD(v108) = 0;
    LODWORD(v109) = 0;
    LODWORD(v110) = 0;
    LODWORD(v111) = 0;
    LODWORD(v112) = 0;
    LODWORD(v113) = 0;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v38 = v116;
    goto LABEL_44;
  }

  v68 = v118;
  if (!v118)
  {
    v68 = v59;
  }

  *(v116 + 13) = v68;
  sub_1D5B49C54(0, &qword_1EDF212E0, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReferenceCollection);
  v120 = 12;
  sub_1D68838A8();
  v69 = v117;
  sub_1D726427C();
  v117 = v69;
  if (v69)
  {
    (*(v113 + 8))(v28, v25);
    LODWORD(v105) = 0;
    LODWORD(v106) = 0;
    LODWORD(v107) = 0;
    LODWORD(v108) = 0;
    LODWORD(v109) = 0;
    LODWORD(v110) = 0;
    LODWORD(v111) = 0;
    LODWORD(v112) = 0;
    LODWORD(v113) = 0;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    v38 = v116;
    goto LABEL_44;
  }

  v70 = v118;
  if (!v118)
  {
    v70 = v59;
  }

  *(v116 + 14) = v70;
  sub_1D5B4BE38(0, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition, MEMORY[0x1E69E62F8]);
  v120 = 13;
  sub_1D6883938();
  v71 = v117;
  sub_1D726427C();
  v117 = v71;
  if (v71)
  {
    (*(v113 + 8))(v28, v25);
    LODWORD(v106) = 0;
    LODWORD(v107) = 0;
    LODWORD(v108) = 0;
    LODWORD(v109) = 0;
    LODWORD(v110) = 0;
    LODWORD(v111) = 0;
    LODWORD(v112) = 0;
    LODWORD(v113) = 0;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    LODWORD(v105) = 1;
    v38 = v116;
    goto LABEL_44;
  }

  v72 = v118;
  if (!v118)
  {
    v72 = v59;
  }

  *(v116 + 15) = v72;
  sub_1D5B4BE38(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
  v120 = 14;
  sub_1D5CABC04();
  v73 = v117;
  sub_1D726427C();
  v117 = v73;
  if (v73)
  {
    (*(v113 + 8))(v28, v25);
    LODWORD(v107) = 0;
    LODWORD(v108) = 0;
    LODWORD(v109) = 0;
    LODWORD(v110) = 0;
    LODWORD(v111) = 0;
    LODWORD(v112) = 0;
    LODWORD(v113) = 0;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    LODWORD(v105) = 1;
    LODWORD(v106) = 1;
    v38 = v116;
    goto LABEL_44;
  }

  v74 = v118;
  if (!v118)
  {
    v74 = v59;
  }

  *(v116 + 16) = v74;
  sub_1D5B4BE38(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
  v120 = 15;
  sub_1D6668A14();
  v75 = v117;
  sub_1D726427C();
  v117 = v75;
  if (v75)
  {
    (*(v113 + 8))(v28, v25);
    LODWORD(v108) = 0;
    LODWORD(v109) = 0;
    LODWORD(v110) = 0;
    LODWORD(v111) = 0;
    LODWORD(v112) = 0;
    LODWORD(v113) = 0;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    LODWORD(v105) = 1;
    LODWORD(v106) = 1;
    LODWORD(v107) = 1;
    v38 = v116;
    goto LABEL_44;
  }

  v76 = v118;
  if (!v118)
  {
    v76 = v59;
  }

  *(v116 + 17) = v76;
  sub_1D5B81B04();
  v120 = 16;
  sub_1D5C4EA9C();
  v77 = v117;
  sub_1D726427C();
  v117 = v77;
  if (v77)
  {
    (*(v113 + 8))(v28, v25);
    LODWORD(v109) = 0;
    LODWORD(v110) = 0;
    LODWORD(v111) = 0;
    LODWORD(v112) = 0;
    LODWORD(v113) = 0;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    LODWORD(v105) = 1;
    LODWORD(v106) = 1;
    LODWORD(v107) = 1;
    LODWORD(v108) = 1;
    v38 = v116;
    goto LABEL_44;
  }

  v78 = v118;
  if (!v118)
  {
    v78 = MEMORY[0x1E69E7CD0];
  }

  *(v116 + 18) = v78;
  sub_1D5B49C54(0, &qword_1EDF212D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReferenceCollection);
  v120 = 17;
  sub_1D6883A10();
  v79 = v117;
  sub_1D726427C();
  v117 = v79;
  if (v79)
  {
    (*(v113 + 8))(v28, v25);
    LODWORD(v110) = 0;
    LODWORD(v111) = 0;
    LODWORD(v112) = 0;
    LODWORD(v113) = 0;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    LODWORD(v105) = 1;
    LODWORD(v106) = 1;
    LODWORD(v107) = 1;
    LODWORD(v108) = 1;
    LODWORD(v109) = 1;
    v38 = v116;
    goto LABEL_44;
  }

  v80 = v118;
  if (!v118)
  {
    v80 = v59;
  }

  *(v116 + 19) = v80;
  v120 = 18;
  sub_1D5C8F7D4();
  v81 = v117;
  sub_1D726427C();
  v117 = v81;
  if (v81 || (v82 = v118, v83 = v119, v84 = v116, sub_1D5C5D428(*(v116 + 20), *(v116 + 21)), *(v84 + 20) = v82, *(v84 + 21) = v83, LOBYTE(v118) = 19, sub_1D5B4A1EC(&qword_1EDF29BD8, type metadata accessor for FormatCompilerOptions, &protocol conformance descriptor for FormatCompilerOptions), v85 = v117, sub_1D726427C(), (v117 = v85) != 0))
  {
    (*(v113 + 8))(v28, v25);
    LODWORD(v111) = 0;
    LODWORD(v112) = 0;
    LODWORD(v113) = 0;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    LODWORD(v105) = 1;
    LODWORD(v106) = 1;
    LODWORD(v107) = 1;
    LODWORD(v108) = 1;
    LODWORD(v109) = 1;
    LODWORD(v110) = 1;
    v38 = v116;
    goto LABEL_44;
  }

  v86 = *(v105 + 48);
  v105 += 48;
  if (v86(v107, 1, v106) == 1)
  {
    if (qword_1EC87D4C8 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
    v88 = __swift_project_value_buffer(v87, qword_1EC881E08);
    v89 = v106;
    v90 = v102;
    sub_1D6884BB4(v88, &v102[*(v106 + 24)], type metadata accessor for FormatCompilerOptions.Newsroom);
    v91 = *(v89 + 28);
    v92 = sub_1D725B76C();
    (*(*(v92 - 8) + 56))(&v90[v91], 1, 1, v92);
    *v90 = v59;
    *(v90 + 1) = v59;
    *&v90[*(v89 + 32)] = MEMORY[0x1E69E7CD0];
    if (v86(v107, 1, v89) != 1)
    {
      sub_1D5CDE59C(v107, &qword_1EDF29BD0, type metadata accessor for FormatCompilerOptions);
    }
  }

  else
  {
    sub_1D5C50270(v107, v102, type metadata accessor for FormatCompilerOptions);
  }

  sub_1D5C50270(v102, &v116[v115[23]], type metadata accessor for FormatCompilerOptions);
  LOBYTE(v118) = 20;
  sub_1D5B4A1EC(&qword_1EDF43A48, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B58]);
  v93 = v117;
  sub_1D726427C();
  v117 = v93;
  if (v93)
  {
    (*(v113 + 8))(v28, v25);
    LODWORD(v112) = 0;
    LODWORD(v113) = 0;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    LODWORD(v105) = 1;
    LODWORD(v106) = 1;
    LODWORD(v107) = 1;
    LODWORD(v108) = 1;
    LODWORD(v109) = 1;
    LODWORD(v110) = 1;
    LODWORD(v111) = 1;
    v38 = v116;
    goto LABEL_44;
  }

  v94 = *(v103 + 48);
  if (v94(v109, 1, v104) == 1)
  {
    __swift_project_boxed_opaque_existential_1(v114, v114[3]);
    v95 = sub_1D7264AFC();
    Dictionary<>.formatVersion.getter(v95, v108);

    if (v94(v109, 1, v104) != 1)
    {
      sub_1D5CDE59C(v109, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    }
  }

  else
  {
    (*(v103 + 32))(v108, v109, v104);
  }

  (*(v103 + 32))(&v116[v115[24]], v108, v104);
  sub_1D725B76C();
  LOBYTE(v118) = 21;
  sub_1D5B4A1EC(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A70]);
  v96 = v117;
  sub_1D726427C();
  v117 = v96;
  if (v96)
  {
    (*(v113 + 8))(v28, v25);
    LODWORD(v113) = 0;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    LODWORD(v105) = 1;
    LODWORD(v106) = 1;
    LODWORD(v107) = 1;
    LODWORD(v108) = 1;
    LODWORD(v109) = 1;
    LODWORD(v110) = 1;
    LODWORD(v111) = 1;
    LODWORD(v112) = 1;
    v38 = v116;
    goto LABEL_44;
  }

  sub_1D5FC55FC(v110, &v116[v115[25]]);
  v120 = 22;
  v97 = v117;
  sub_1D726427C();
  v117 = v97;
  if (v97)
  {
    (*(v113 + 8))(v28, v25);
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 1;
    LODWORD(v105) = 1;
    LODWORD(v106) = 1;
    LODWORD(v107) = 1;
    LODWORD(v108) = 1;
    LODWORD(v109) = 1;
    LODWORD(v110) = 1;
    LODWORD(v111) = 1;
    LODWORD(v112) = 1;
    LODWORD(v113) = 1;
    v38 = v116;
    goto LABEL_44;
  }

  v98 = v118;
  (*(v113 + 8))(v28, v25);
  v99 = MEMORY[0x1E69E7CD0];
  if (v98)
  {
    v99 = v98;
  }

  v100 = v116;
  *&v116[v115[26]] = v99;
  sub_1D6884BB4(v100, v111, type metadata accessor for FormatPackage);
  __swift_destroy_boxed_opaque_existential_1(v114);
  return sub_1D6884C1C(v100, type metadata accessor for FormatPackage);
}

uint64_t FormatPackage.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5B4BE38(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v462 = &v459 - v6;
  v466 = sub_1D725B76C();
  v465 = *(v466 - 8);
  MEMORY[0x1EEE9AC00](v466, v7);
  v463 = &v459 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v467 = &v459 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v464 = &v459 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v461 = &v459 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v468 = &v459 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v470 = &v459 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v471 = &v459 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v472 = &v459 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v473 = &v459 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v474 = &v459 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v475 = &v459 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v476 = &v459 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v477 = &v459 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v478 = &v459 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v482 = &v459 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v479 = &v459 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v480 = &v459 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v481 = &v459 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v483 = &v459 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v484 = &v459 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v485 = &v459 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v494 = &v459 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v486 = &v459 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v78 = &v459 - v77;
  sub_1D6883AA0(0);
  v80 = v79;
  MEMORY[0x1EEE9AC00](v79, v81);
  v83 = &v459 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a1[3];
  v85 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v84);
  v86 = type metadata accessor for FormatPackage(0);
  v87 = sub_1D5E19454();
  v469 = v86;
  sub_1D5D2EE70(v86, &type metadata for FormatPackage.CodingKeys, v88, v84, v86, &type metadata for FormatPackage.CodingKeys, &type metadata for FormatVersions.JazzkonC, v85, v83, v87, &off_1F51F6C78);
  v89 = *v2;
  v90 = v2[1];
  v490 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v91 = sub_1D725BD1C();
  v92 = __swift_project_value_buffer(v91, qword_1EDFFCD30);
  v93 = *(v91 - 8);
  v94 = *(v93 + 16);
  v488 = v92;
  v489 = v91;
  v491 = v94;
  v493 = v93 + 16;
  (v94)(v78);
  v492 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v500 = v89;
  v501 = v90;
  v502 = 0;
  v95 = &v83[*(v80 + 44)];
  v497 = v78;
  v97 = *v95;
  v96 = *(v95 + 1);
  v98 = swift_allocObject();
  v498 = &v459;
  *(v98 + 16) = 0;
  *(v98 + 24) = v97;
  *(v98 + 32) = v96;
  MEMORY[0x1EEE9AC00](v98, v99);
  *(&v459 - 4) = sub_1D5B4AA6C;
  *(&v459 - 3) = 0;
  v457 = sub_1D6884CF0;
  v458 = v100;
  v101 = swift_allocObject();
  *(v101 + 16) = 0;
  v487 = v97;
  *(v101 + 24) = v97;
  *(v101 + 32) = v96;
  sub_1D5B49C54(0, &qword_1EC87F8E0, sub_1D5E19454, &type metadata for FormatPackage.CodingKeys, MEMORY[0x1E69E6F58]);
  v103 = v102;
  v104 = sub_1D6883B3C();
  swift_retain_n();
  v495 = v103;
  v496 = v104;
  v105 = sub_1D72647CC();
  v106 = v83;
  v107 = swift_allocObject();
  *(v107 + 16) = v105;
  *(v107 + 24) = 0;
  v108 = (v106 + *(v80 + 36));
  v109 = v108[3];
  v110 = v108[4];
  v111 = __swift_project_boxed_opaque_existential_1(v108, v109);
  MEMORY[0x1EEE9AC00](v111, v112);
  MEMORY[0x1EEE9AC00](v113, v114);
  *(&v459 - 4) = sub_1D60565EC;
  *(&v459 - 3) = (&v459 - 6);
  v457 = sub_1D6884CF0;
  v458 = v101;
  v115 = v497;
  v116 = v499;
  sub_1D5D2BC70(v497, sub_1D60566B0, v117, sub_1D60565EC, (&v459 - 6), v109, v110);
  if (v116)
  {
    sub_1D6884C1C(v115, type metadata accessor for FormatVersionRequirement);

    v118 = v106;
LABEL_33:
    v221 = v118;
    return sub_1D6884C1C(v221, sub_1D6883AA0);
  }

  v499 = v108;
  v460 = v96;

  sub_1D72647EC();
  v459 = 0;
  v498 = v106;
  sub_1D6884C1C(v115, type metadata accessor for FormatVersionRequirement);

  v119 = v486;
  v121 = v488;
  v120 = v489;
  v122 = v491;
  v491(v486, v488, v489);
  swift_storeEnumTagMultiPayload();
  sub_1D6884C1C(v119, type metadata accessor for FormatVersionRequirement);
  v123 = v490;
  v124 = v490[4];
  v125 = v490[5];
  v122(v494, v121, v120);
  swift_storeEnumTagMultiPayload();
  v502 = 2;
  v126 = swift_allocObject();
  v128 = v126;
  *(v126 + 16) = 2;
  v129 = v487;
  v130 = v460;
  *(v126 + 24) = v487;
  *(v126 + 32) = v130;
  if (v125)
  {
    v497 = &v459;
    v500 = v124;
    v501 = v125;
    MEMORY[0x1EEE9AC00](v126, v127);
    *(&v459 - 4) = sub_1D5B4AA6C;
    *(&v459 - 3) = 0;
    v457 = sub_1D6884CF0;
    v458 = v128;
    v131 = swift_allocObject();
    *(v131 + 16) = 2;
    *(v131 + 24) = v129;
    *(v131 + 32) = v130;
    swift_retain_n();

    v132 = sub_1D72647CC();
    v133 = swift_allocObject();
    *(v133 + 16) = v132;
    *(v133 + 24) = 2;
    v134 = v499[3];
    v135 = v499[4];
    v136 = __swift_project_boxed_opaque_existential_1(v499, v134);
    MEMORY[0x1EEE9AC00](v136, v137);
    MEMORY[0x1EEE9AC00](v138, v139);
    *(&v459 - 4) = sub_1D615B4A4;
    *(&v459 - 3) = (&v459 - 6);
    v457 = sub_1D6884CF0;
    v458 = v131;
    v140 = v494;
    v141 = v459;
    v143 = sub_1D5D2F7A4(v494, sub_1D615B49C, v142, sub_1D615B4A4, (&v459 - 6), v134, v135);
    if (v141)
    {

      v118 = v498;
      sub_1D6884C1C(v140, type metadata accessor for FormatVersionRequirement);
      goto LABEL_33;
    }

    v145 = v143;

    if (v145)
    {
      sub_1D72647EC();
      v120 = v489;
      v123 = v490;
      v129 = v487;
      v121 = v488;
      v459 = 0;

      sub_1D6884C1C(v494, type metadata accessor for FormatVersionRequirement);
      v144 = v460;
    }

    else
    {
      v459 = 0;

      sub_1D6884C1C(v140, type metadata accessor for FormatVersionRequirement);
      v120 = v489;
      v123 = v490;
      v144 = v460;
      v129 = v487;
      v121 = v488;
    }
  }

  else
  {

    sub_1D6884C1C(v494, type metadata accessor for FormatVersionRequirement);

    v144 = v130;
  }

  v146 = *(v123 + 48);
  v147 = v485;
  v491(v485, v121, v120);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v500) = v146;
  v502 = 3;
  v148 = swift_allocObject();
  v497 = &v459;
  *(v148 + 16) = 3;
  *(v148 + 24) = v129;
  *(v148 + 32) = v144;
  MEMORY[0x1EEE9AC00](v148, v149);
  *(&v459 - 4) = sub_1D5B4AA6C;
  *(&v459 - 3) = 0;
  v457 = sub_1D6884CF0;
  v458 = v150;
  v151 = swift_allocObject();
  *(v151 + 16) = 3;
  *(v151 + 24) = v129;
  *(v151 + 32) = v144;
  swift_retain_n();
  v152 = v498;
  v153 = sub_1D72647CC();
  v154 = swift_allocObject();
  *(v154 + 16) = v153;
  *(v154 + 24) = 3;
  v155 = v499[3];
  v156 = v499[4];
  v157 = __swift_project_boxed_opaque_existential_1(v499, v155);
  MEMORY[0x1EEE9AC00](v157, v158);
  MEMORY[0x1EEE9AC00](v159, v160);
  *(&v459 - 4) = sub_1D615B4A4;
  *(&v459 - 3) = (&v459 - 6);
  v457 = sub_1D6884CF0;
  v458 = v151;
  v161 = v459;
  sub_1D5D2BC70(v147, sub_1D615B49C, v162, sub_1D615B4A4, (&v459 - 6), v155, v156);
  if (v161)
  {
    sub_1D6884C1C(v147, type metadata accessor for FormatVersionRequirement);

    v118 = v152;
    goto LABEL_33;
  }

  sub_1D5D2B3EC();
  sub_1D72647EC();
  sub_1D6884C1C(v147, type metadata accessor for FormatVersionRequirement);

  v163 = *(v490 + 49);
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v164 = v489;
  v165 = __swift_project_value_buffer(v489, qword_1EDFFCCE8);
  v166 = v484;
  v167 = v491;
  v491(v484, v165, v164);
  swift_storeEnumTagMultiPayload();
  if (v163 == 4)
  {
    sub_1D6884C1C(v166, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v182 = swift_allocObject();
    *(v182 + 16) = 4;
    *(v182 + 24) = v487;
    *(v182 + 32) = v460;

    v183 = sub_1D72647CC();
    v184 = swift_allocObject();
    *(v184 + 16) = v183;
    *(v184 + 24) = 4;
    v185 = v499[3];
    v186 = v499[4];
    v187 = __swift_project_boxed_opaque_existential_1(v499, v185);
    MEMORY[0x1EEE9AC00](v187, v188);
    MEMORY[0x1EEE9AC00](v189, v190);
    *(&v459 - 4) = sub_1D5B4AA6C;
    *(&v459 - 3) = 0;
    v457 = sub_1D6884CF0;
    v458 = v182;
    sub_1D5D2F7A4(v166, sub_1D615B49C, v191, sub_1D615B4A4, (&v459 - 6), v185, v186);

    LOBYTE(v500) = 4;
    v502 = v163;
    sub_1D61A7178();
    sub_1D72647EC();
    sub_1D6884C1C(v484, type metadata accessor for FormatVersionRequirement);
    v167 = v491;
  }

  v168 = v490;
  v169 = v490[7];
  v170 = v483;
  v167(v483, v488, v164);
  swift_storeEnumTagMultiPayload();
  if (*(v169 + 16))
  {
    v171 = swift_allocObject();
    *(v171 + 16) = 5;
    *(v171 + 24) = v487;
    *(v171 + 32) = v460;

    v172 = sub_1D72647CC();
    v173 = swift_allocObject();
    *(v173 + 16) = v172;
    *(v173 + 24) = 5;
    v174 = v499[3];
    v175 = v499[4];
    v176 = __swift_project_boxed_opaque_existential_1(v499, v174);
    MEMORY[0x1EEE9AC00](v176, v177);
    MEMORY[0x1EEE9AC00](v178, v179);
    *(&v459 - 4) = sub_1D5B4AA6C;
    *(&v459 - 3) = 0;
    v457 = sub_1D6883C84;
    v458 = v171;
    v181 = sub_1D5D2F7A4(v170, sub_1D60566B0, v180, sub_1D60565EC, (&v459 - 6), v174, v175);
    v193 = v181;

    v192 = v482;
    if (v193)
    {
      v502 = 5;
      v500 = v169;
      sub_1D5B4A5A0(0);
      sub_1D5B4A1EC(&qword_1EDF0A490, sub_1D5B4A5A0, &protocol conformance descriptor for FormatFileReferenceCollection<A>);
      sub_1D72647EC();
      v168 = v490;

      sub_1D6884C1C(v483, type metadata accessor for FormatVersionRequirement);
      v167 = v491;
    }

    else
    {
      sub_1D6884C1C(v483, type metadata accessor for FormatVersionRequirement);

      v167 = v491;
      v168 = v490;
    }
  }

  else
  {
    sub_1D6884C1C(v170, type metadata accessor for FormatVersionRequirement);
    v192 = v482;
  }

  v194 = v168[8];
  v195 = v481;
  v167(v481, v488, v489);
  swift_storeEnumTagMultiPayload();
  if (*(v194 + 16))
  {
    v196 = swift_allocObject();
    *(v196 + 16) = 6;
    *(v196 + 24) = v487;
    *(v196 + 32) = v460;

    v197 = sub_1D72647CC();
    v198 = swift_allocObject();
    *(v198 + 16) = v197;
    *(v198 + 24) = 6;
    v199 = v499[3];
    v200 = v499[4];
    v201 = __swift_project_boxed_opaque_existential_1(v499, v199);
    MEMORY[0x1EEE9AC00](v201, v202);
    MEMORY[0x1EEE9AC00](v203, v204);
    *(&v459 - 4) = sub_1D5B4AA6C;
    *(&v459 - 3) = 0;
    v457 = sub_1D6884CF0;
    v458 = v196;
    v206 = sub_1D5D2F7A4(v195, sub_1D615B49C, v205, sub_1D615B4A4, (&v459 - 6), v199, v200);
    v207 = v206;

    v192 = v482;
    if (v207)
    {
      v502 = 6;
      v500 = v194;
      sub_1D5B49C54(0, &qword_1EDF21290, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReferenceCollection);
      sub_1D68840F8();
      sub_1D72647EC();
      v168 = v490;

      sub_1D6884C1C(v481, type metadata accessor for FormatVersionRequirement);
      v167 = v491;
    }

    else
    {
      sub_1D6884C1C(v481, type metadata accessor for FormatVersionRequirement);

      v167 = v491;
      v168 = v490;
    }
  }

  else
  {
    sub_1D6884C1C(v195, type metadata accessor for FormatVersionRequirement);
  }

  v208 = v168[9];
  v209 = v480;
  v167(v480, v488, v489);
  swift_storeEnumTagMultiPayload();
  if (*(v208 + 16))
  {
    v210 = swift_allocObject();
    *(v210 + 16) = 7;
    *(v210 + 24) = v487;
    *(v210 + 32) = v460;

    v211 = sub_1D72647CC();
    v212 = swift_allocObject();
    *(v212 + 16) = v211;
    *(v212 + 24) = 7;
    v213 = v499[3];
    v214 = v499[4];
    v215 = __swift_project_boxed_opaque_existential_1(v499, v213);
    MEMORY[0x1EEE9AC00](v215, v216);
    MEMORY[0x1EEE9AC00](v217, v218);
    *(&v459 - 4) = sub_1D5B4AA6C;
    *(&v459 - 3) = 0;
    v457 = sub_1D6884CF0;
    v458 = v210;
    v220 = sub_1D5D2F7A4(v209, sub_1D615B49C, v219, sub_1D615B4A4, (&v459 - 6), v213, v214);
    v224 = v220;

    v223 = v482;
    if (v224)
    {
      v502 = 7;
      v500 = v208;
      sub_1D5B49C54(0, &qword_1EDF212B0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReferenceCollection);
      sub_1D6884068();
      sub_1D72647EC();
      v225 = v480;

      sub_1D6884C1C(v225, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D6884C1C(v480, type metadata accessor for FormatVersionRequirement);
    }

    v167 = v491;
  }

  else
  {
    v223 = v192;
    sub_1D6884C1C(v209, type metadata accessor for FormatVersionRequirement);
  }

  v226 = v490;
  v227 = v490[10];
  v228 = v479;
  v167(v479, v488, v489);
  swift_storeEnumTagMultiPayload();
  if (*(v227 + 16))
  {
    v229 = swift_allocObject();
    *(v229 + 16) = 8;
    *(v229 + 24) = v487;
    *(v229 + 32) = v460;

    v230 = sub_1D72647CC();
    v231 = swift_allocObject();
    *(v231 + 16) = v230;
    *(v231 + 24) = 8;
    v232 = v499[3];
    v233 = v499[4];
    v234 = __swift_project_boxed_opaque_existential_1(v499, v232);
    MEMORY[0x1EEE9AC00](v234, v235);
    MEMORY[0x1EEE9AC00](v236, v237);
    *(&v459 - 4) = sub_1D5B4AA6C;
    *(&v459 - 3) = 0;
    v457 = sub_1D6884CF0;
    v458 = v229;
    LOBYTE(v232) = sub_1D5D2F7A4(v228, sub_1D615B49C, v238, sub_1D615B4A4, (&v459 - 6), v232, v233);

    if (v232)
    {
      v502 = 8;
      v500 = v227;
      sub_1D5B49C54(0, &qword_1EDF21280, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReferenceCollection);
      sub_1D6883FD8();
      sub_1D72647EC();

      sub_1D6884C1C(v479, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D6884C1C(v479, type metadata accessor for FormatVersionRequirement);
    }

    v167 = v491;
    v239 = v482;
    v226 = v490;
  }

  else
  {
    sub_1D6884C1C(v228, type metadata accessor for FormatVersionRequirement);
    v239 = v223;
  }

  v240 = v489;
  v241 = v226[11];
  v167(v239, v488, v489);
  swift_storeEnumTagMultiPayload();
  if (*(v241 + 16))
  {
    v242 = swift_allocObject();
    *(v242 + 16) = 9;
    *(v242 + 24) = v487;
    *(v242 + 32) = v460;

    v243 = sub_1D72647CC();
    v244 = swift_allocObject();
    *(v244 + 16) = v243;
    *(v244 + 24) = 9;
    v245 = v499[3];
    v246 = v499[4];
    v247 = __swift_project_boxed_opaque_existential_1(v499, v245);
    v497 = &v459;
    MEMORY[0x1EEE9AC00](v247, v248);
    MEMORY[0x1EEE9AC00](v249, v250);
    *(&v459 - 4) = sub_1D5B4AA6C;
    *(&v459 - 3) = 0;
    v457 = sub_1D6884CF0;
    v458 = v242;
    v252 = sub_1D5D2F7A4(v239, sub_1D615B49C, v251, sub_1D615B4A4, (&v459 - 6), v245, v246);
    v253 = v252;

    if (v253)
    {
      v502 = 9;
      v500 = v241;
      sub_1D68836F4(0);
      sub_1D5B4A1EC(&qword_1EC88D458, sub_1D68836F4, &protocol conformance descriptor for FormatFileReferenceCollection<A>);
      sub_1D72647EC();

      sub_1D6884C1C(v482, type metadata accessor for FormatVersionRequirement);
      v240 = v489;
      v226 = v490;
      v167 = v491;
    }

    else
    {
      sub_1D6884C1C(v482, type metadata accessor for FormatVersionRequirement);

      v167 = v491;
      v226 = v490;
    }
  }

  else
  {
    sub_1D6884C1C(v239, type metadata accessor for FormatVersionRequirement);
  }

  v254 = v226[12];
  v255 = v478;
  v167(v478, v488, v240);
  swift_storeEnumTagMultiPayload();
  if (*(v254 + 16))
  {
    v256 = swift_allocObject();
    *(v256 + 16) = 10;
    *(v256 + 24) = v487;
    *(v256 + 32) = v460;

    v257 = sub_1D72647CC();
    v258 = swift_allocObject();
    *(v258 + 16) = v257;
    *(v258 + 24) = 10;
    v259 = v499[3];
    v260 = v499[4];
    v261 = __swift_project_boxed_opaque_existential_1(v499, v259);
    MEMORY[0x1EEE9AC00](v261, v262);
    MEMORY[0x1EEE9AC00](v263, v264);
    *(&v459 - 4) = sub_1D5B4AA6C;
    *(&v459 - 3) = 0;
    v457 = sub_1D6884CF0;
    v458 = v256;
    v266 = sub_1D5D2F7A4(v255, sub_1D615B49C, v265, sub_1D615B4A4, (&v459 - 6), v259, v260);
    v268 = v266;

    if (v268)
    {
      v502 = 10;
      v500 = v254;
      sub_1D5B49C54(0, &qword_1EDF212C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReferenceCollection);
      sub_1D6883F48();
      sub_1D72647EC();

      sub_1D6884C1C(v478, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D6884C1C(v478, type metadata accessor for FormatVersionRequirement);
    }

    v267 = v489;
    v167 = v491;
  }

  else
  {
    v267 = v240;
    sub_1D6884C1C(v255, type metadata accessor for FormatVersionRequirement);
  }

  v269 = v477;
  v270 = v490[13];
  v167(v477, v488, v267);
  swift_storeEnumTagMultiPayload();
  if (*(v270 + 16))
  {
    v271 = swift_allocObject();
    *(v271 + 16) = 11;
    *(v271 + 24) = v487;
    *(v271 + 32) = v460;

    v272 = sub_1D72647CC();
    v273 = swift_allocObject();
    *(v273 + 16) = v272;
    *(v273 + 24) = 11;
    v274 = v499[3];
    v275 = v499[4];
    v276 = __swift_project_boxed_opaque_existential_1(v499, v274);
    MEMORY[0x1EEE9AC00](v276, v277);
    MEMORY[0x1EEE9AC00](v278, v279);
    *(&v459 - 4) = sub_1D5B4AA6C;
    *(&v459 - 3) = 0;
    v457 = sub_1D6884CF0;
    v458 = v271;
    v281 = sub_1D5D2F7A4(v269, sub_1D615B49C, v280, sub_1D615B4A4, (&v459 - 6), v274, v275);
    v282 = v281;

    if (v282)
    {
      v502 = 11;
      v500 = v270;
      sub_1D5B49C54(0, &qword_1EDF212A0, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReferenceCollection);
      sub_1D6883EB8();
      sub_1D72647EC();

      sub_1D6884C1C(v477, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D6884C1C(v477, type metadata accessor for FormatVersionRequirement);
    }

    v267 = v489;
  }

  else
  {
    sub_1D6884C1C(v269, type metadata accessor for FormatVersionRequirement);
  }

  v283 = v490[14];
  v284 = v476;
  v491(v476, v488, v267);
  swift_storeEnumTagMultiPayload();
  if (!*(v283 + 16))
  {
    v296 = v284;
LABEL_69:
    sub_1D6884C1C(v296, type metadata accessor for FormatVersionRequirement);
    goto LABEL_73;
  }

  v285 = swift_allocObject();
  *(v285 + 16) = 12;
  *(v285 + 24) = v487;
  *(v285 + 32) = v460;

  v286 = sub_1D72647CC();
  v287 = swift_allocObject();
  *(v287 + 16) = v286;
  *(v287 + 24) = 12;
  v288 = v499[3];
  v289 = v499[4];
  v290 = __swift_project_boxed_opaque_existential_1(v499, v288);
  MEMORY[0x1EEE9AC00](v290, v291);
  MEMORY[0x1EEE9AC00](v292, v293);
  *(&v459 - 4) = sub_1D5B4AA6C;
  *(&v459 - 3) = 0;
  v457 = sub_1D6884CF0;
  v458 = v285;
  v295 = sub_1D5D2F7A4(v284, sub_1D615B49C, v294, sub_1D615B4A4, (&v459 - 6), v288, v289);
  v297 = v295;

  if (v297)
  {
    v502 = 12;
    v500 = v283;
    sub_1D5B49C54(0, &qword_1EDF212E0, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReferenceCollection);
    sub_1D6883E28();
    sub_1D72647EC();

    v296 = v476;
    goto LABEL_69;
  }

  sub_1D6884C1C(v476, type metadata accessor for FormatVersionRequirement);

LABEL_73:
  v298 = v490[15];
  v299 = v475;
  v491(v475, v488, v489);
  swift_storeEnumTagMultiPayload();
  v500 = v298;
  v502 = 13;
  v300 = swift_allocObject();
  *(v300 + 16) = 13;
  v301 = v487;
  v302 = v460;
  *(v300 + 24) = v487;
  *(v300 + 32) = v302;
  MEMORY[0x1EEE9AC00](v300, v303);
  *(&v459 - 4) = sub_1D5B4AA6C;
  *(&v459 - 3) = 0;
  v457 = sub_1D6884CF0;
  v458 = v304;
  v305 = swift_allocObject();
  *(v305 + 16) = 13;
  *(v305 + 24) = v301;
  *(v305 + 32) = v302;
  swift_retain_n();
  v306 = sub_1D72647CC();
  v307 = swift_allocObject();
  *(v307 + 16) = v306;
  *(v307 + 24) = 13;
  v308 = v499[3];
  v309 = v499[4];
  v310 = __swift_project_boxed_opaque_existential_1(v499, v308);
  MEMORY[0x1EEE9AC00](v310, v311);
  MEMORY[0x1EEE9AC00](v312, v313);
  *(&v459 - 4) = sub_1D615B4A4;
  *(&v459 - 3) = (&v459 - 6);
  v457 = sub_1D6884CF0;
  v458 = v305;
  sub_1D5D2BC70(v299, sub_1D615B49C, v314, sub_1D615B4A4, (&v459 - 6), v308, v309);

  sub_1D5B4BE38(0, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition, MEMORY[0x1E69E62F8]);
  sub_1D6883CB0();
  sub_1D72647EC();
  sub_1D6884C1C(v475, type metadata accessor for FormatVersionRequirement);

  v315 = v490[16];
  v316 = v474;
  v491(v474, v488, v489);
  swift_storeEnumTagMultiPayload();
  v500 = v315;
  v502 = 14;
  v317 = swift_allocObject();
  *(v317 + 16) = 14;
  v318 = v487;
  v319 = v460;
  *(v317 + 24) = v487;
  *(v317 + 32) = v319;
  MEMORY[0x1EEE9AC00](v317, v320);
  *(&v459 - 4) = sub_1D5B4AA6C;
  *(&v459 - 3) = 0;
  v457 = sub_1D6884CF0;
  v458 = v321;
  v322 = swift_allocObject();
  *(v322 + 16) = 14;
  *(v322 + 24) = v318;
  *(v322 + 32) = v319;
  swift_retain_n();
  v323 = sub_1D72647CC();
  v324 = swift_allocObject();
  *(v324 + 16) = v323;
  *(v324 + 24) = 14;
  v325 = v499[3];
  v326 = v499[4];
  v327 = __swift_project_boxed_opaque_existential_1(v499, v325);
  MEMORY[0x1EEE9AC00](v327, v328);
  MEMORY[0x1EEE9AC00](v329, v330);
  *(&v459 - 4) = sub_1D615B4A4;
  *(&v459 - 3) = (&v459 - 6);
  v457 = sub_1D6884CF0;
  v458 = v322;
  sub_1D5D2BC70(v316, sub_1D615B49C, v331, sub_1D615B4A4, (&v459 - 6), v325, v326);

  sub_1D5B4BE38(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
  sub_1D66856D0();
  sub_1D72647EC();
  sub_1D6884C1C(v474, type metadata accessor for FormatVersionRequirement);

  v332 = v490[17];
  v491(v473, v488, v489);
  swift_storeEnumTagMultiPayload();
  if (*(v332 + 16))
  {
    v333 = swift_allocObject();
    *(v333 + 16) = 15;
    *(v333 + 24) = v487;
    *(v333 + 32) = v460;

    v334 = sub_1D72647CC();
    v335 = swift_allocObject();
    *(v335 + 16) = v334;
    *(v335 + 24) = 15;
    v336 = v499[3];
    v337 = v499[4];
    v338 = __swift_project_boxed_opaque_existential_1(v499, v336);
    MEMORY[0x1EEE9AC00](v338, v339);
    MEMORY[0x1EEE9AC00](v340, v341);
    *(&v459 - 4) = sub_1D5B4AA6C;
    *(&v459 - 3) = 0;
    v457 = sub_1D6884CF0;
    v458 = v333;
    LOBYTE(v336) = sub_1D5D2F7A4(v473, sub_1D615B49C, v342, sub_1D615B4A4, (&v459 - 6), v336, v337);

    if ((v336 & 1) == 0)
    {
      sub_1D6884C1C(v473, type metadata accessor for FormatVersionRequirement);

      goto LABEL_78;
    }

    v502 = 15;
    v500 = v332;
    sub_1D5B4BE38(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    sub_1D60AD304();
    sub_1D72647EC();
  }

  sub_1D6884C1C(v473, type metadata accessor for FormatVersionRequirement);
LABEL_78:
  v343 = v499[3];
  v344 = v499[4];
  v345 = __swift_project_boxed_opaque_existential_1(v499, v343);
  v346 = sub_1D602437C(v345, v343, &type metadata for FormatVersions.SydroC, v344, &off_1F51F6A98);
  v347 = v490[18];
  if (v346)
  {
  }

  else
  {
    sub_1D688217C(v490[18]);
    v347 = v348;
  }

  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v349 = v489;
  v350 = __swift_project_value_buffer(v489, qword_1EDFFCD50);
  v491(v472, v350, v349);
  v351 = swift_storeEnumTagMultiPayload();
  MEMORY[0x1EEE9AC00](v351, v352);
  v457 = v347;
  if (*(v347 + 16))
  {
    v497 = &v459;
    MEMORY[0x1EEE9AC00](v353, v354);
    v457 = sub_1D6883D88;
    v458 = v355;
    v356 = swift_allocObject();
    *(v356 + 16) = 16;
    *(v356 + 24) = v487;
    *(v356 + 32) = v460;

    v357 = sub_1D72647CC();
    v358 = swift_allocObject();
    *(v358 + 16) = v357;
    *(v358 + 24) = 16;
    v359 = v499[3];
    v360 = v499[4];
    v361 = __swift_project_boxed_opaque_existential_1(v499, v359);
    MEMORY[0x1EEE9AC00](v361, v362);
    MEMORY[0x1EEE9AC00](v363, v364);
    *(&v459 - 4) = sub_1D6883D90;
    *(&v459 - 3) = (&v459 - 4);
    v457 = sub_1D6884CF0;
    v458 = v356;
    LOBYTE(v359) = sub_1D5D2F7A4(v472, sub_1D615B49C, v365, sub_1D615B4A4, (&v459 - 6), v359, v360);

    if (v359)
    {
      sub_1D5E08EAC(v347, v498, 16);
    }
  }

  sub_1D6884C1C(v472, type metadata accessor for FormatVersionRequirement);
  v366 = v490[19];
  v491(v471, v488, v489);
  swift_storeEnumTagMultiPayload();
  if (!*(v366 + 16))
  {
    goto LABEL_90;
  }

  v367 = swift_allocObject();
  *(v367 + 16) = 17;
  *(v367 + 24) = v487;
  *(v367 + 32) = v460;

  v368 = sub_1D72647CC();
  v369 = swift_allocObject();
  *(v369 + 16) = v368;
  *(v369 + 24) = 17;
  v370 = v499[3];
  v371 = v499[4];
  v372 = __swift_project_boxed_opaque_existential_1(v499, v370);
  MEMORY[0x1EEE9AC00](v372, v373);
  MEMORY[0x1EEE9AC00](v374, v375);
  *(&v459 - 4) = sub_1D5B4AA6C;
  *(&v459 - 3) = 0;
  v457 = sub_1D6884CF0;
  v458 = v367;
  LOBYTE(v370) = sub_1D5D2F7A4(v471, sub_1D615B49C, v376, sub_1D615B4A4, (&v459 - 6), v370, v371);

  if (v370)
  {
    v502 = 17;
    v500 = v366;
    sub_1D5B49C54(0, &qword_1EDF212D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReferenceCollection);
    sub_1D6883D98();
    sub_1D72647EC();

LABEL_90:
    sub_1D6884C1C(v471, type metadata accessor for FormatVersionRequirement);
    goto LABEL_91;
  }

  sub_1D6884C1C(v471, type metadata accessor for FormatVersionRequirement);

LABEL_91:
  v377 = v490[20];
  v378 = v490[21];
  v491(v470, v350, v489);
  swift_storeEnumTagMultiPayload();
  v502 = 18;
  v379 = swift_allocObject();
  v381 = v379;
  *(v379 + 16) = 18;
  v382 = v460;
  *(v379 + 24) = v487;
  *(v379 + 32) = v382;
  if (v378 == 2)
  {

    sub_1D6884C1C(v470, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v500 = v377;
    v501 = v378;
    MEMORY[0x1EEE9AC00](v379, v380);
    *(&v459 - 4) = sub_1D5B4AA6C;
    *(&v459 - 3) = 0;
    v457 = sub_1D6884CF0;
    v458 = v381;
    v383 = swift_allocObject();
    *(v383 + 16) = 18;
    *(v383 + 24) = v487;
    *(v383 + 32) = v460;
    swift_retain_n();
    sub_1D5D5FDA4(v377, v378);
    v384 = sub_1D72647CC();
    v385 = swift_allocObject();
    *(v385 + 16) = v384;
    *(v385 + 24) = 18;
    v386 = v499[3];
    v387 = v499[4];
    v388 = __swift_project_boxed_opaque_existential_1(v499, v386);
    MEMORY[0x1EEE9AC00](v388, v389);
    MEMORY[0x1EEE9AC00](v390, v391);
    *(&v459 - 4) = sub_1D615B4A4;
    *(&v459 - 3) = (&v459 - 6);
    v457 = sub_1D6884CF0;
    v458 = v383;
    LOBYTE(v386) = sub_1D5D2F7A4(v470, sub_1D615B49C, v392, sub_1D615B4A4, (&v459 - 6), v386, v387);

    if (v386)
    {
      sub_1D668F320();
      sub_1D72647EC();
    }

    sub_1D5F33294(v500, v501);
    sub_1D6884C1C(v470, type metadata accessor for FormatVersionRequirement);
  }

  v393 = v468;
  v491(v468, v488, v489);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v500) = 19;
  v394 = swift_allocObject();
  v497 = &v459;
  *(v394 + 16) = 19;
  v395 = v487;
  v396 = v460;
  *(v394 + 24) = v487;
  *(v394 + 32) = v396;
  MEMORY[0x1EEE9AC00](v394, v397);
  *(&v459 - 4) = sub_1D5B4AA6C;
  *(&v459 - 3) = 0;
  v457 = sub_1D6884CF0;
  v458 = v398;
  v399 = swift_allocObject();
  *(v399 + 16) = 19;
  *(v399 + 24) = v395;
  *(v399 + 32) = v396;
  swift_retain_n();
  v400 = sub_1D72647CC();
  v401 = swift_allocObject();
  *(v401 + 16) = v400;
  *(v401 + 24) = 19;
  v402 = v499[3];
  v403 = v499[4];
  v404 = __swift_project_boxed_opaque_existential_1(v499, v402);
  MEMORY[0x1EEE9AC00](v404, v405);
  MEMORY[0x1EEE9AC00](v406, v407);
  *(&v459 - 4) = sub_1D615B4A4;
  *(&v459 - 3) = (&v459 - 6);
  sub_1D5D2BC70(v393, sub_1D615B49C, v408, sub_1D615B4A4, (&v459 - 6), v402, v403);

  type metadata accessor for FormatCompilerOptions(0);
  sub_1D5B4A1EC(&qword_1EDF0E3A0, type metadata accessor for FormatCompilerOptions, &protocol conformance descriptor for FormatCompilerOptions);
  sub_1D72647EC();
  sub_1D6884C1C(v468, type metadata accessor for FormatVersionRequirement);

  v409 = v461;
  v491(v461, v488, v489);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v500) = 20;
  v410 = swift_allocObject();
  v497 = &v459;
  *(v410 + 16) = 20;
  v411 = v487;
  v412 = v460;
  *(v410 + 24) = v487;
  *(v410 + 32) = v412;
  MEMORY[0x1EEE9AC00](v410, v413);
  *(&v459 - 4) = sub_1D5B4AA6C;
  *(&v459 - 3) = 0;
  v457 = sub_1D6884CF0;
  v458 = v414;
  v415 = swift_allocObject();
  *(v415 + 16) = 20;
  *(v415 + 24) = v411;
  *(v415 + 32) = v412;
  swift_retain_n();
  v416 = sub_1D72647CC();
  v417 = swift_allocObject();
  *(v417 + 16) = v416;
  *(v417 + 24) = 20;
  v418 = v499[3];
  v419 = v499[4];
  v420 = __swift_project_boxed_opaque_existential_1(v499, v418);
  MEMORY[0x1EEE9AC00](v420, v421);
  MEMORY[0x1EEE9AC00](v422, v423);
  *(&v459 - 4) = sub_1D615B4A4;
  *(&v459 - 3) = (&v459 - 6);
  v457 = sub_1D6884CF0;
  v458 = v415;
  sub_1D5D2BC70(v409, sub_1D615B49C, v424, sub_1D615B4A4, (&v459 - 6), v418, v419);

  sub_1D5B4A1EC(&qword_1EDF178C0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B40]);
  sub_1D72647EC();
  sub_1D6884C1C(v461, type metadata accessor for FormatVersionRequirement);

  v425 = *(v469 + 100);
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v426 = v489;
  v427 = __swift_project_value_buffer(v489, qword_1EDFFCD68);
  v491(v464, v427, v426);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v500) = 21;
  v428 = swift_allocObject();
  *(v428 + 16) = 21;
  v429 = v460;
  *(v428 + 24) = v487;
  *(v428 + 32) = v429;
  v430 = v490 + v425;
  v431 = v462;
  sub_1D5D5FBC4(v430, v462);
  if ((*(v465 + 48))(v431, 1, v466) == 1)
  {

    sub_1D6884C1C(v464, type metadata accessor for FormatVersionRequirement);

    sub_1D5CDE59C(v462, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  }

  else
  {
    v432 = (*(v465 + 32))(v463, v462, v466);
    MEMORY[0x1EEE9AC00](v432, v433);
    *(&v459 - 4) = sub_1D5B4AA6C;
    *(&v459 - 3) = 0;
    v457 = sub_1D6884CF0;
    v458 = v428;
    v434 = swift_allocObject();
    *(v434 + 16) = 21;
    *(v434 + 24) = v487;
    *(v434 + 32) = v460;
    swift_retain_n();
    v435 = sub_1D72647CC();
    v436 = swift_allocObject();
    *(v436 + 16) = v435;
    *(v436 + 24) = 21;
    v437 = v499[3];
    v438 = v499[4];
    v439 = __swift_project_boxed_opaque_existential_1(v499, v437);
    MEMORY[0x1EEE9AC00](v439, v440);
    MEMORY[0x1EEE9AC00](v441, v442);
    *(&v459 - 4) = sub_1D60565EC;
    *(&v459 - 3) = (&v459 - 6);
    v457 = sub_1D6884CF0;
    v458 = v434;
    LOBYTE(v437) = sub_1D5D2F7A4(v464, sub_1D615B49C, v443, sub_1D615B4A4, (&v459 - 6), v437, v438);

    if (v437)
    {
      sub_1D5B4A1EC(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
      sub_1D72647EC();
    }

    (*(v465 + 8))(v463, v466);
    sub_1D6884C1C(v464, type metadata accessor for FormatVersionRequirement);
  }

  v444 = *(v490 + *(v469 + 104));
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v445 = v489;
  v446 = __swift_project_value_buffer(v489, qword_1EDFFCE38);
  v491(v467, v446, v445);
  swift_storeEnumTagMultiPayload();
  if (*(v444 + 16))
  {
    v447 = swift_allocObject();
    *(v447 + 16) = 22;
    *(v447 + 24) = v487;
    *(v447 + 32) = v460;

    v448 = sub_1D72647CC();
    v449 = swift_allocObject();
    *(v449 + 16) = v448;
    *(v449 + 24) = 22;
    v450 = v499[3];
    v451 = v499[4];
    v452 = __swift_project_boxed_opaque_existential_1(v499, v450);
    MEMORY[0x1EEE9AC00](v452, v453);
    MEMORY[0x1EEE9AC00](v454, v455);
    *(&v459 - 4) = sub_1D5B4AA6C;
    *(&v459 - 3) = 0;
    v457 = sub_1D6884CF0;
    v458 = v447;
    LOBYTE(v450) = sub_1D5D2F7A4(v467, sub_1D615B49C, v456, sub_1D615B4A4, (&v459 - 6), v450, v451);

    if (v450)
    {
      sub_1D5E08EAC(v444, v498, 22);
    }
  }

  sub_1D6884C1C(v467, type metadata accessor for FormatVersionRequirement);
  v221 = v498;
  return sub_1D6884C1C(v221, sub_1D6883AA0);
}

void sub_1D688217C(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v9 = (*(a1 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v5)))));
    v10 = *v9;
    v11 = v9[1];
    v5 &= v5 - 1;
    sub_1D5EC10B0();
    sub_1D5EC1104();

    if (sub_1D7261EEC())
    {
    }

    else
    {
      v12 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D5BFC364(0, *(v16 + 16) + 1, 1);
        v12 = v16;
      }

      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D5BFC364((v13 > 1), v14 + 1, 1);
        v12 = v16;
      }

      *(v12 + 16) = v14 + 1;
      v16 = v12;
      v15 = v12 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v11;
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      sub_1D5B86020(v16);

      return;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

unint64_t sub_1D688235C(uint64_t a1)
{
  sub_1D7263D4C();

  v1 = sub_1D7262B1C();
  MEMORY[0x1DA6F9910](v1);

  return 0xD00000000000001ALL;
}

unint64_t sub_1D68823EC(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 1701605234;
      break;
    case 4:
      result = 0x6F69746365726964;
      break;
    case 5:
      result = 0x736567616B636170;
      break;
    case 6:
      result = 0x7370756F7267;
      break;
    case 7:
      result = 0x736D657469;
      break;
    case 8:
      result = 0x73656C797473;
      break;
    case 9:
      result = 0x7374657070696E73;
      break;
    case 10:
      result = 0x656D656C70707573;
      break;
    case 11:
      result = 0x7365707974;
      break;
    case 12:
      result = 0x697461726F636564;
      break;
    case 13:
      result = 0x73746F6C73;
      break;
    case 14:
      result = 0x69747265706F7270;
      break;
    case 15:
      result = 0x736E6F6974706FLL;
      break;
    case 16:
      result = 0x726F7463656C6573;
      break;
    case 17:
      result = 0x617A696C61636F6CLL;
      break;
    case 18:
      result = 0x79536E6D756C6F63;
      break;
    case 19:
      result = 0x72656C69706D6F63;
      break;
    case 20:
      result = 0x655674616D726F66;
      break;
    case 21:
      result = 0xD000000000000010;
      break;
    case 22:
      result = 0x737469617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D688266C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D68823EC(*a1);
  v5 = v4;
  if (v3 == sub_1D68823EC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D68826F4()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D68823EC(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6882758(uint64_t a1)
{
  sub_1D68823EC(*v1);
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D68827AC(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D68823EC(v2);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D688280C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6884A08(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D688283C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D68823EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D6882870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6884A08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D68828A4(uint64_t a1)
{
  v2 = sub_1D5E19454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D68828E0(uint64_t a1)
{
  v2 = sub_1D5E19454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D688291C(void *a1@<X8>)
{
  v93 = a1;
  v1 = type metadata accessor for FormatCompilerOptions(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v96 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v73 - v6;
  v8 = sub_1D725BD1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v97 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v73 - v14;
  v16 = sub_1D725895C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725894C();
  v91 = sub_1D725893C();
  v92 = v21;
  (*(v17 + 8))(v20, v16);
  if (qword_1EDF3CA50 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v8, qword_1EDF3CA58);
  v95 = v9;
  v23 = *(v9 + 16);
  v23(v15, v22, v8);
  if (qword_1EC87D4C8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  v25 = __swift_project_value_buffer(v24, qword_1EC881E08);
  v26 = v7;
  sub_1D6884BB4(v25, &v7[v1[6]], type metadata accessor for FormatCompilerOptions.Newsroom);
  v27 = v1[7];
  v28 = sub_1D725B76C();
  (*(*(v28 - 8) + 56))(&v7[v27], 1, 1, v28);
  v29 = MEMORY[0x1E69E7CC0];
  *v7 = MEMORY[0x1E69E7CC0];
  *(v7 + 1) = v29;
  *&v7[v1[8]] = MEMORY[0x1E69E7CD0];
  v108 = sub_1D5F62D3C(v29);
  v30 = sub_1D5F62D78(v29);
  sub_1D6985734(v30);
  v31 = sub_1D5F62DB4(v29);
  sub_1D6985734(v31);
  v32 = sub_1D5F62DF0(v29);
  sub_1D6985734(v32);
  v33 = sub_1D5F62FF8(v29);
  sub_1D6985734(v33);
  v23(v97, v15, v8);
  sub_1D5C5D464(v29, v107);
  v34 = v107[0];
  v35 = v107[1];
  v36 = v107[2];
  sub_1D5CCCC20(MEMORY[0x1E69E7CC0], v106);
  v87 = v106[0];
  v88 = v36;
  v86 = v106[1];
  sub_1D5CA3FB0(MEMORY[0x1E69E7CC0], v105);
  v82 = v105[1];
  v83 = v105[0];
  v37 = MEMORY[0x1E69E7CC0];
  sub_1D5C4B5C8(MEMORY[0x1E69E7CC0], v104);
  v84 = v104[1];
  v85 = v104[0];
  sub_1D5CAF23C(v37, v103);
  v94 = v15;
  v38 = v103[0];
  v78 = v103[1];
  sub_1D5CA84CC(MEMORY[0x1E69E7CC0], v102);
  v39 = v8;
  v40 = v102[0];
  v76 = v102[1];
  sub_1D6F1C000(MEMORY[0x1E69E7CC0], v108, v101);
  v77 = v40;
  v80 = v38;
  v89 = v35;
  v90 = v34;
  v74 = v101[1];
  v75 = v101[0];
  sub_1D5CB13C8(MEMORY[0x1E69E7CC0], &v100);
  sub_1D6884BB4(v26, v96, type metadata accessor for FormatCompilerOptions);
  type metadata accessor for FormatPackageInventory(0);
  v41 = swift_allocObject();
  v79 = v26;
  v42 = (v41 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
  *v42 = 0;
  v42[1] = 0;
  v43 = (v41 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__comment);
  *v43 = 0;
  v43[1] = 0;
  v45 = v91;
  v44 = v92;
  *(v41 + 16) = v91;
  *(v41 + 24) = v44;
  v81 = v100;
  v23((v41 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_version), v97, v39);
  *(v41 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) = 0;
  v46 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
  swift_beginAccess();
  *(v41 + v46) = 4;
  swift_beginAccess();
  *v42 = 0;
  v42[1] = 0;

  swift_beginAccess();
  *v43 = 0;
  v43[1] = 0;

  v47 = (v41 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
  swift_beginAccess();
  v48 = v89;
  *v47 = v90;
  v47[1] = v48;
  v47[2] = v88;
  v49 = (v41 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items);
  swift_beginAccess();
  v50 = v86;
  *v49 = v87;
  v49[1] = v50;
  v51 = (v41 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets);
  swift_beginAccess();
  v52 = v82;
  *v51 = v83;
  v51[1] = v52;
  v53 = (v41 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v54 = v84;
  *v53 = v85;
  v53[1] = v54;
  v55 = (v41 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots);
  swift_beginAccess();
  v56 = v78;
  *v55 = v80;
  v55[1] = v56;
  v57 = (v41 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries);
  swift_beginAccess();
  v58 = v76;
  *v57 = v77;
  v57[1] = v58;
  v59 = (v41 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types);
  swift_beginAccess();
  v60 = v74;
  *v59 = v75;
  v59[1] = v60;
  v61 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
  swift_beginAccess();
  v62 = MEMORY[0x1E69E7CC0];
  *(v41 + v61) = MEMORY[0x1E69E7CC0];
  v63 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
  swift_beginAccess();
  *(v41 + v63) = v62;
  sub_1D5B49D58(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v98 = 0x2D6567616B636170;
  v99 = 0xEF2D74756F79616CLL;
  MEMORY[0x1DA6F9910](v45, v44);

  v65 = v99;
  *(inited + 32) = v98;
  *(inited + 40) = v65;
  v66 = MEMORY[0x1E69E7CD0];
  v67 = sub_1D5BA8750(inited, MEMORY[0x1E69E7CD0]);
  swift_setDeallocating();
  sub_1D5BFB68C(inited + 32);
  v68 = *(v95 + 8);
  v68(v97, v39);
  sub_1D6884C1C(v79, type metadata accessor for FormatCompilerOptions);
  v68(v94, v39);
  v69 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__selectors;
  swift_beginAccess();
  *(v41 + v69) = v67;
  v70 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations;
  swift_beginAccess();
  *(v41 + v70) = v81;
  sub_1D5C50270(v96, v41 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, type metadata accessor for FormatCompilerOptions);
  *(v41 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem) = xmmword_1D72830B0;
  v71 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
  swift_beginAccess();
  *(v41 + v71) = v62;
  v72 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__traits;
  swift_beginAccess();
  *(v41 + v72) = v66;
  sub_1D6878C04(v41, v62, v62, v66, v66, v93);
}

unint64_t sub_1D6883544()
{
  result = qword_1EDF21298;
  if (!qword_1EDF21298)
  {
    sub_1D5B49C54(255, &qword_1EDF21290, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReferenceCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21298);
  }

  return result;
}

unint64_t sub_1D68835D4()
{
  result = qword_1EDF212B8;
  if (!qword_1EDF212B8)
  {
    sub_1D5B49C54(255, &qword_1EDF212B0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReferenceCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF212B8);
  }

  return result;
}

unint64_t sub_1D6883664()
{
  result = qword_1EDF21288;
  if (!qword_1EDF21288)
  {
    sub_1D5B49C54(255, &qword_1EDF21280, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReferenceCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21288);
  }

  return result;
}

void sub_1D68836F4(uint64_t a1)
{
  if (!qword_1EDF21270)
  {
    v2 = type metadata accessor for FormatSnippet();
    v3 = sub_1D5B4A1EC(&qword_1EDF455A0, type metadata accessor for FormatSnippet, &protocol conformance descriptor for FormatSnippet);
    v5 = type metadata accessor for FormatFileReferenceCollection(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EDF21270);
    }
  }
}

unint64_t sub_1D6883788()
{
  result = qword_1EDF212C8;
  if (!qword_1EDF212C8)
  {
    sub_1D5B49C54(255, &qword_1EDF212C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReferenceCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF212C8);
  }

  return result;
}

unint64_t sub_1D6883818()
{
  result = qword_1EDF212A8;
  if (!qword_1EDF212A8)
  {
    sub_1D5B49C54(255, &qword_1EDF212A0, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReferenceCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF212A8);
  }

  return result;
}

unint64_t sub_1D68838A8()
{
  result = qword_1EDF212E8[0];
  if (!qword_1EDF212E8[0])
  {
    sub_1D5B49C54(255, &qword_1EDF212E0, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReferenceCollection);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF212E8);
  }

  return result;
}

unint64_t sub_1D6883938()
{
  result = qword_1EDF1B0F0;
  if (!qword_1EDF1B0F0)
  {
    sub_1D5B4BE38(255, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition, MEMORY[0x1E69E62F8]);
    sub_1D5B4A1EC(&qword_1EDF2AB28, type metadata accessor for FormatSlotDefinition, &protocol conformance descriptor for FormatSlotDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B0F0);
  }

  return result;
}

unint64_t sub_1D6883A10()
{
  result = qword_1EDF212D8;
  if (!qword_1EDF212D8)
  {
    sub_1D5B49C54(255, &qword_1EDF212D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReferenceCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF212D8);
  }

  return result;
}

void sub_1D6883AA0(uint64_t a1)
{
  if (!qword_1EC88D430)
  {
    sub_1D5B49C54(255, &qword_1EC87F8E0, sub_1D5E19454, &type metadata for FormatPackage.CodingKeys, MEMORY[0x1E69E6F58]);
    v3 = v2;
    v4 = sub_1D6883B3C();
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC88D430);
    }
  }
}

unint64_t sub_1D6883B3C()
{
  result = qword_1EC87F8E8;
  if (!qword_1EC87F8E8)
  {
    sub_1D5B49C54(255, &qword_1EC87F8E0, sub_1D5E19454, &type metadata for FormatPackage.CodingKeys, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F8E8);
  }

  return result;
}

uint64_t sub_1D6883BCC(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_1D5B4BE38(0, &qword_1EDF01CF0, sub_1D5D29154, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FormatPackage.CodingKeys;
  *(inited + 64) = sub_1D5E19454();
  *(inited + 32) = v3;

  sub_1D5D291B8(inited);
  return a1;
}

unint64_t sub_1D6883CB0()
{
  result = qword_1EDF04E68;
  if (!qword_1EDF04E68)
  {
    sub_1D5B4BE38(255, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition, MEMORY[0x1E69E62F8]);
    sub_1D5B4A1EC(&qword_1EDF0ED20, type metadata accessor for FormatSlotDefinition, &protocol conformance descriptor for FormatSlotDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04E68);
  }

  return result;
}

unint64_t sub_1D6883D98()
{
  result = qword_1EC88D438;
  if (!qword_1EC88D438)
  {
    sub_1D5B49C54(255, &qword_1EDF212D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReferenceCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D438);
  }

  return result;
}

unint64_t sub_1D6883E28()
{
  result = qword_1EC88D440;
  if (!qword_1EC88D440)
  {
    sub_1D5B49C54(255, &qword_1EDF212E0, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReferenceCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D440);
  }

  return result;
}

unint64_t sub_1D6883EB8()
{
  result = qword_1EC88D448;
  if (!qword_1EC88D448)
  {
    sub_1D5B49C54(255, &qword_1EDF212A0, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReferenceCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D448);
  }

  return result;
}

unint64_t sub_1D6883F48()
{
  result = qword_1EC88D450;
  if (!qword_1EC88D450)
  {
    sub_1D5B49C54(255, &qword_1EDF212C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReferenceCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D450);
  }

  return result;
}

unint64_t sub_1D6883FD8()
{
  result = qword_1EC88D460;
  if (!qword_1EC88D460)
  {
    sub_1D5B49C54(255, &qword_1EDF21280, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReferenceCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D460);
  }

  return result;
}

unint64_t sub_1D6884068()
{
  result = qword_1EC88D468;
  if (!qword_1EC88D468)
  {
    sub_1D5B49C54(255, &qword_1EDF212B0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReferenceCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D468);
  }

  return result;
}

unint64_t sub_1D68840F8()
{
  result = qword_1EC88D470;
  if (!qword_1EC88D470)
  {
    sub_1D5B49C54(255, &qword_1EDF21290, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReferenceCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D470);
  }

  return result;
}

uint64_t _s8NewsFeed13FormatPackageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4BE38(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v43[-v11];
  sub_1D5D5FB44(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v43[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_59;
  }

  v18 = *(a1 + 24);
  v19 = *(a2 + 24);
  if (v18)
  {
    if (!v19 || (*(a1 + 16) != *(a2 + 16) || v18 != v19) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else if (v19)
  {
    goto LABEL_59;
  }

  v20 = *(a1 + 40);
  v21 = *(a2 + 40);
  if (v20)
  {
    if (!v21 || (*(a1 + 32) != *(a2 + 32) || v20 != v21) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else if (v21)
  {
    goto LABEL_59;
  }

  if ((sub_1D6DD7E4C(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    goto LABEL_59;
  }

  v22 = *(a1 + 49);
  v23 = *(a2 + 49);
  if (v22 == 4)
  {
    if (v23 != 4)
    {
      goto LABEL_59;
    }
  }

  else if (v22 != v23)
  {
    goto LABEL_59;
  }

  if ((sub_1D63449AC(*(a1 + 56), *(a2 + 56)) & 1) == 0 || (sub_1D6359118(*(a1 + 64), *(a2 + 64)) & 1) == 0 || (sub_1D6358EF4(*(a1 + 72), *(a2 + 72)) & 1) == 0 || (sub_1D6358CD0(*(a1 + 80), *(a2 + 80)) & 1) == 0 || (sub_1D6358C7C(*(a1 + 88), *(a2 + 88)) & 1) == 0 || (sub_1D6358A58(*(a1 + 96), *(a2 + 96)) & 1) == 0 || (sub_1D6358834(*(a1 + 104), *(a2 + 104)) & 1) == 0 || (sub_1D6358610(*(a1 + 112), *(a2 + 112)) & 1) == 0 || (sub_1D635677C(*(a1 + 120), *(a2 + 120)) & 1) == 0 || (sub_1D633C994(*(a1 + 128), *(a2 + 128)) & 1) == 0 || (sub_1D633BCCC(*(a1 + 136), *(a2 + 136)) & 1) == 0 || (sub_1D5BFC390(*(a1 + 144), *(a2 + 144)) & 1) == 0 || (sub_1D63583EC(*(a1 + 152), *(a2 + 152)) & 1) == 0)
  {
    goto LABEL_59;
  }

  v24 = *(a1 + 160);
  v25 = *(a1 + 168);
  v26 = *(a2 + 168);
  v45 = *(a2 + 160);
  v46 = v24;
  if (v25 == 2)
  {
    if (v26 == 2)
    {
      v25 = 2;
      sub_1D5D5FDA4(v46, 2uLL);
      sub_1D5D5FDA4(v45, 2uLL);
      goto LABEL_51;
    }

    goto LABEL_39;
  }

  if (v26 == 2)
  {
LABEL_39:
    v27 = v46;
    sub_1D5D5FDA4(v46, v25);
    v28 = v45;
    sub_1D5D5FDA4(v45, v26);
    sub_1D5C5D428(v27, v25);
    v29 = v28;
    v30 = v26;
LABEL_49:
    sub_1D5C5D428(v29, v30);
    goto LABEL_59;
  }

  if (!v25)
  {
    if (!v26)
    {
LABEL_45:
      sub_1D5D5FDA4(v46, v25);
      v31 = v45;
      sub_1D5D5FDA4(v45, v25);
      sub_1D5F33294(v46, v25);
      sub_1D5F33294(v31, v25);
      sub_1D5C5D428(v31, v25);
      sub_1D5C5D428(v46, v25);
      goto LABEL_51;
    }

LABEL_47:
    v32 = v46;
    sub_1D5D5FDA4(v46, v25);
    v33 = v45;
    sub_1D5D5FDA4(v45, v26);
    sub_1D5D5FDA4(v32, v25);
    sub_1D5F33294(v32, v25);
    sub_1D5F33294(v33, v26);
LABEL_48:
    v29 = v46;
    v30 = v25;
    goto LABEL_49;
  }

  if (v25 == 1)
  {
    if (v26 != 1)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (v26 < 2)
  {
    goto LABEL_47;
  }

  sub_1D5D5FDA4(v46, v25);
  sub_1D5D5FDA4(v46, v25);
  sub_1D5D5FDA4(v45, v26);
  sub_1D5D5FDA4(v46, v25);
  sub_1D5D5FDA4(v45, v26);
  sub_1D5D5FDA4(v46, v25);
  sub_1D5D5FDA4(v45, v26);
  sub_1D6366584(v46 & 1, v25, v45 & 1, v26);
  v44 = v34;
  sub_1D5F33294(v46, v25);
  sub_1D5F33294(v45, v26);
  sub_1D5C5D428(v45, v26);
  sub_1D5C5D428(v46, v25);
  sub_1D5C5D428(v45, v26);
  sub_1D5C5D428(v46, v25);
  if ((v44 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_51:
  sub_1D5C5D428(v46, v25);
  v35 = type metadata accessor for FormatPackage(0);
  if ((_s8NewsFeed21FormatCompilerOptionsV2eeoiySbAC_ACtFZ_0((a1 + v35[23]), (a2 + v35[23])) & 1) == 0 || (sub_1D725BCBC() & 1) == 0)
  {
    goto LABEL_59;
  }

  v36 = v35[25];
  v37 = *(v14 + 48);
  sub_1D5D5FBC4(a1 + v36, v17);
  v46 = v37;
  sub_1D5D5FBC4(a2 + v36, &v17[v37]);
  v38 = *(v5 + 48);
  if (v38(v17, 1, v4) == 1)
  {
    if (v38(&v17[v46], 1, v4) == 1)
    {
      sub_1D5CDE59C(v17, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
LABEL_62:
      v39 = sub_1D5BFC390(*(a1 + v35[26]), *(a2 + v35[26]));
      return v39 & 1;
    }

    goto LABEL_58;
  }

  sub_1D5D5FBC4(v17, v12);
  if (v38(&v17[v46], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_58:
    sub_1D6884C1C(v17, sub_1D5D5FB44);
    goto LABEL_59;
  }

  (*(v5 + 32))(v8, &v17[v46], v4);
  sub_1D5B4A1EC(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
  v41 = sub_1D7261FBC();
  v42 = *(v5 + 8);
  v42(v8, v4);
  v42(v12, v4);
  sub_1D5CDE59C(v17, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if (v41)
  {
    goto LABEL_62;
  }

LABEL_59:
  v39 = 0;
  return v39 & 1;
}

unint64_t sub_1D6884904()
{
  result = qword_1EC88D480;
  if (!qword_1EC88D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D480);
  }

  return result;
}

unint64_t sub_1D688495C()
{
  result = qword_1EDF331C0;
  if (!qword_1EDF331C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF331C0);
  }

  return result;
}

unint64_t sub_1D68849B4()
{
  result = qword_1EDF331C8;
  if (!qword_1EDF331C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF331C8);
  }

  return result;
}

unint64_t sub_1D6884A08(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72648CC();

  if (v2 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6884A5C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5B49C54(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6884AD0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5B49C54(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6884B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  sub_1D5B49C54(0, a2, a3, a4, type metadata accessor for FormatObject);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D6884BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6884C1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6884C7C(uint64_t a1)
{
  if (!qword_1EDF32E98)
  {
    type metadata accessor for FormatSnippet();
    type metadata accessor for FormatMetadata(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF32E98);
    }
  }
}

uint64_t FormatLineScoreDataVisualization.query.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FormatLineScoreDataVisualization.eventIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatLineScoreDataVisualization.tagIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double FormatLineScoreDataVisualization.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

double FormatLineScoreDataVisualization.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;

  return result;
}

double FormatLineScoreDataVisualization.query.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  return result;
}

void *FormatLineScoreDataVisualization.__allocating_init(eventIdentifier:tagIdentifier:selectors:properties:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  swift_beginAccess();
  v16[6] = a5;
  swift_beginAccess();
  v16[7] = a6;
  swift_beginAccess();
  v16[8] = a7;
  v16[9] = a8;
  return v16;
}

void *FormatLineScoreDataVisualization.init(eventIdentifier:tagIdentifier:selectors:properties:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  swift_beginAccess();
  v8[6] = a5;
  swift_beginAccess();
  v8[7] = a6;
  swift_beginAccess();
  v8[8] = a7;
  v8[9] = a8;
  return v8;
}

uint64_t sub_1D6885148(uint64_t a1)
{
  v2 = sub_1D5E19400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6885184(uint64_t a1)
{
  v2 = sub_1D5E19400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLineScoreDataVisualization.deinit()
{

  return v0;
}

uint64_t FormatLineScoreDataVisualization.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void FormatLineScoreDataVisualization.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6885C44(0, &qword_1EC87F8C8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E19400();
  sub_1D7264B5C();
  v17 = 0;
  sub_1D72643FC();
  if (v2)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v17 = 1;
    sub_1D72643FC();
    swift_beginAccess();
    if (*(v3[6] + 16))
    {

      sub_1D5E066B0(v11, v10, 2);
    }

    swift_beginAccess();
    v12 = v3[7];
    if (*(v12 + 16))
    {
      v16 = 3;
      v15 = v12;
      sub_1D6885BD0();
      sub_1D5E4C584();
      sub_1D5E4C5D4();

      sub_1D72647EC();
    }

    swift_beginAccess();
    v13 = v3[8];
    v14 = v3[9];

    sub_1D5EAEDCC(v13, v14, 4);
    (*(v7 + 8))(v10, v6);
  }
}

uint64_t FormatLineScoreDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatLineScoreDataVisualization.init(from:)(a1);
  return v2;
}

void *FormatLineScoreDataVisualization.init(from:)(void *a1)
{
  v4 = *v1;
  v40 = v2;
  v41 = v4;
  sub_1D5E18934(0);
  v37 = v5;
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v9 = v8;
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6885C44(0, &qword_1EC88D488, MEMORY[0x1E69E6F48]);
  v14 = v13;
  v39 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v34 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E19400();
  v18 = v40;
  v19 = v1;
  sub_1D7264B0C();
  if (v18)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v12;
    v21 = v39;
    LOBYTE(v42) = 0;
    v1[2] = sub_1D72642BC();
    v1[3] = v22;
    LOBYTE(v42) = 1;
    v1[4] = sub_1D72642BC();
    v1[5] = v24;
    v40 = v1;
    LOBYTE(v42) = 2;
    v25 = sub_1D726434C();
    if (v25)
    {
      v45 = 2;
      sub_1D6885CA8(&qword_1EDF3BE00, 255, sub_1D5C8CD38, MEMORY[0x1E69D6380]);
      v26 = v9;
      sub_1D726431C();
      v27 = v14;
      v28 = sub_1D725A74C();
      (*(v36 + 8))(v20, v26);
    }

    else
    {
      v28 = MEMORY[0x1E69E7CD0];
      v27 = v14;
    }

    v40[6] = v28;
    LOBYTE(v42) = 3;
    if (sub_1D726434C())
    {
      v45 = 3;
      sub_1D6885CA8(&qword_1EDF3BD70, 255, sub_1D5E18934, MEMORY[0x1E69D64C8]);
      v29 = v37;
      v30 = v38;
      sub_1D726431C();
      v31 = sub_1D725A74C();
      (*(v35 + 8))(v30, v29);
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    v40[7] = v31;
    v45 = 4;
    if (sub_1D726434C())
    {
      v44 = 4;
      sub_1D726431C();
      v33 = v42;
      v32 = v43;
    }

    else
    {
      v33 = 0;
      v32 = 0xE000000000000000;
    }

    (*(v21 + 8))(v17, v27);
    v19 = v40;
    v40[8] = v33;
    v19[9] = v32;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v19;
}

void *sub_1D6885B48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatLineScoreDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1D6885BD0()
{
  result = qword_1EC87F8D8;
  if (!qword_1EC87F8D8)
  {
    sub_1D6885C44(255, &qword_1EC87F8C8, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F8D8);
  }

  return result;
}

void sub_1D6885C44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E19400();
    v7 = a3(a1, &type metadata for FormatLineScoreDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6885CA8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6885CF0(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6885CA8(&qword_1EC885B08, a2, type metadata accessor for FormatLineScoreDataVisualization, &protocol conformance descriptor for FormatLineScoreDataVisualization);
  a1[2] = sub_1D6885CA8(&qword_1EC885B48, v3, type metadata accessor for FormatLineScoreDataVisualization, &protocol conformance descriptor for FormatLineScoreDataVisualization);
  result = sub_1D6885CA8(&qword_1EC88D490, v4, type metadata accessor for FormatLineScoreDataVisualization, &protocol conformance descriptor for FormatLineScoreDataVisualization);
  a1[3] = result;
  return result;
}

unint64_t sub_1D6885E28()
{
  result = qword_1EC88D498;
  if (!qword_1EC88D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D498);
  }

  return result;
}

unint64_t sub_1D6885E80()
{
  result = qword_1EC88D4A0;
  if (!qword_1EC88D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D4A0);
  }

  return result;
}

unint64_t sub_1D6885ED8()
{
  result = qword_1EC88D4A8;
  if (!qword_1EC88D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D4A8);
  }

  return result;
}

uint64_t FormatAnchor.rawValue.getter()
{
  v1 = *v0;
  v2 = 7368564;
  v3 = 0x7265746E656368;
  if (v1 != 5)
  {
    v3 = 0x7265746E656376;
  }

  v4 = 0x676E696C69617274;
  if (v1 != 3)
  {
    v4 = 0x7265746E6563;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D6F74746F62;
  if (v1 != 1)
  {
    v5 = 0x676E696461656CLL;
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

double sub_1D6886008(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

void sub_1D6886104(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368564;
  v5 = 0xE700000000000000;
  v6 = 0x7265746E656368;
  if (v2 != 5)
  {
    v6 = 0x7265746E656376;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676E696C69617274;
  if (v2 != 3)
  {
    v8 = 0x7265746E6563;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6D6F74746F62;
  if (v2 != 1)
  {
    v10 = 0x676E696461656CLL;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1D68861C8(uint64_t a1)
{
  *(a1 + 8) = sub_1D68861F8();
  result = sub_1D5CA002C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D68861F8()
{
  result = qword_1EC88D4B0;
  if (!qword_1EC88D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D4B0);
  }

  return result;
}

unint64_t sub_1D688624C(uint64_t a1)
{
  result = sub_1D5C9FDB4();
  *(a1 + 8) = result;
  return result;
}

uint64_t FormatVideoNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D6886320(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_beginAccess();
  v227 = v2;
  v8 = v2[6];
  swift_beginAccess();
  v228 = a1;
  v9 = *(a1 + 48);
  v269 = MEMORY[0x1E69E7CC8];
  v10 = *(v8 + 16);
  if (__OFADD__(v10, *(v9 + 16)))
  {
    goto LABEL_111;
  }

  v246 = *(v9 + 16);
  v224 = v6;
  v226 = v4;
  sub_1D6889008(0);
  v225 = v5;

  v223 = v7;

  sub_1D7261DAC();
  v249 = sub_1D698F4BC(0, v10, 0, MEMORY[0x1E69E7CC0]);
  v11 = *(v8 + 16);
  v229 = v9;
  if (v11)
  {
    v12 = 0;
    v13 = v8;
    v14 = (v8 + 32);
    v15 = v11 - 1;
    while (1)
    {
      v16 = *v14;
      v17 = v14[2];
      v282 = v14[1];
      v283 = v17;
      v281 = v16;
      v18 = v14[3];
      v19 = v14[4];
      v20 = v14[6];
      v286 = v14[5];
      v287 = v20;
      v284 = v18;
      v285 = v19;
      v21 = v14[7];
      v22 = v14[8];
      v23 = v14[9];
      v291 = *(v14 + 160);
      v289 = v22;
      v290 = v23;
      v288 = v21;
      v24 = v281;
      sub_1D62B7AA4(&v281, &v270);
      sub_1D62B7AA4(&v281, &v270);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v251 = v269;
      v26 = sub_1D6D8CB60();
      v28 = v269[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
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
        result = sub_1D726493C();
        __break(1u);
        return result;
      }

      v32 = v27;
      if (v269[3] < v31)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_9;
      }

      v52 = v26;
      sub_1D6D84AD4();
      v26 = v52;
      if (v32)
      {
LABEL_10:
        v34 = v251;
        v35 = *(v251 + 56) + 168 * v26;
        v37 = *(v35 + 16);
        v36 = *(v35 + 32);
        v270 = *v35;
        v271 = v37;
        v272 = v36;
        v38 = *(v35 + 96);
        v40 = *(v35 + 48);
        v39 = *(v35 + 64);
        v275 = *(v35 + 80);
        v276 = v38;
        v273 = v40;
        v274 = v39;
        v42 = *(v35 + 128);
        v41 = *(v35 + 144);
        v43 = *(v35 + 112);
        v280 = *(v35 + 160);
        v278 = v42;
        v279 = v41;
        v277 = v43;
        v44 = v281;
        v45 = v283;
        *(v35 + 16) = v282;
        *(v35 + 32) = v45;
        *v35 = v44;
        v46 = v284;
        v47 = v285;
        v48 = v287;
        *(v35 + 80) = v286;
        *(v35 + 96) = v48;
        *(v35 + 48) = v46;
        *(v35 + 64) = v47;
        v49 = v288;
        v50 = v289;
        v51 = v290;
        *(v35 + 160) = v291;
        *(v35 + 128) = v50;
        *(v35 + 144) = v51;
        *(v35 + 112) = v49;
        sub_1D62B7B00(&v270);
        goto LABEL_14;
      }

LABEL_12:
      v34 = v251;
      *(v251 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v34[6] + 16 * v26) = v24;
      v53 = v34[7] + 168 * v26;
      v54 = v291;
      v56 = v289;
      v55 = v290;
      *(v53 + 112) = v288;
      *(v53 + 128) = v56;
      *(v53 + 144) = v55;
      *(v53 + 160) = v54;
      v58 = v286;
      v57 = v287;
      v59 = v285;
      *(v53 + 48) = v284;
      *(v53 + 64) = v59;
      *(v53 + 80) = v58;
      *(v53 + 96) = v57;
      v61 = v282;
      v60 = v283;
      *v53 = v281;
      *(v53 + 16) = v61;
      *(v53 + 32) = v60;
      v62 = v34[2];
      v30 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v30)
      {
        goto LABEL_107;
      }

      v34[2] = v63;

LABEL_14:
      v269 = v34;

      sub_1D62B7B00(&v281);
      v65 = *(v249 + 2);
      v64 = *(v249 + 3);
      if (v65 >= v64 >> 1)
      {
        v249 = sub_1D698F4BC((v64 > 1), v65 + 1, 1, v249);
      }

      *(v249 + 2) = v65 + 1;
      *&v249[16 * v65 + 32] = v24;
      if (v15 == v12)
      {
        v66 = v229;
        goto LABEL_21;
      }

      ++v12;
      v14 = (v14 + 168);
      if (v12 >= *(v13 + 16))
      {
        goto LABEL_103;
      }
    }

    sub_1D6D72608(v31, isUniquelyReferenced_nonNull_native);
    v26 = sub_1D6D8CB60();
    if ((v32 & 1) != (v33 & 1))
    {
      goto LABEL_112;
    }

LABEL_9:
    if (v32)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v66 = v9;
LABEL_21:
  v67 = sub_1D698F4BC(0, v246, 0, MEMORY[0x1E69E7CC0]);
  v68 = v67;
  v69 = *(v66 + 16);
  if (!v69)
  {

    v72 = v68;
    goto LABEL_69;
  }

  v70 = 0;
  v247 = v69 - 1;
  v71 = 32;
  v72 = v67;
  do
  {
    v73 = *(v66 + v71);
    v74 = *(v66 + v71 + 32);
    v282 = *(v66 + v71 + 16);
    v283 = v74;
    v281 = v73;
    v75 = *(v66 + v71 + 48);
    v76 = *(v66 + v71 + 64);
    v77 = *(v66 + v71 + 96);
    v286 = *(v66 + v71 + 80);
    v287 = v77;
    v284 = v75;
    v285 = v76;
    v78 = *(v66 + v71 + 112);
    v79 = *(v66 + v71 + 128);
    v80 = *(v66 + v71 + 144);
    v291 = *(v66 + v71 + 160);
    v289 = v79;
    v290 = v80;
    v288 = v78;
    v81 = v281;
    v82 = v269;
    if (v269[2])
    {
      sub_1D62B7AA4(&v281, &v270);
      v83 = sub_1D6D8CB60();
      if (v84)
      {
        v85 = v82[7] + 168 * v83;
        v87 = *(v85 + 16);
        v86 = *(v85 + 32);
        v270 = *v85;
        v271 = v87;
        v272 = v86;
        v88 = *(v85 + 48);
        v89 = *(v85 + 64);
        v90 = *(v85 + 96);
        v275 = *(v85 + 80);
        v276 = v90;
        v273 = v88;
        v274 = v89;
        v91 = *(v85 + 112);
        v92 = *(v85 + 128);
        v93 = *(v85 + 144);
        v280 = *(v85 + 160);
        v278 = v92;
        v279 = v93;
        v277 = v91;
        v94 = v271;
        if (!v271)
        {
          v94 = v282;
        }

        v95 = *(&v271 + 1);
        v96 = *(&v271 + 1);
        if ((~*(&v271 + 1) & 0xF000000000000007) == 0)
        {
          v96 = *(&v282 + 1);
          sub_1D5D04BD4(*(&v282 + 1));
        }

        v97 = v272;
        if (!v272)
        {
        }

        v231 = v97;
        v98 = BYTE8(v273);
        v234 = v273;
        v235 = *(&v272 + 1);
        v241 = v273;
        v243 = *(&v272 + 1);
        v239 = BYTE8(v273);
        if (BYTE8(v273) >= 0xFEu)
        {
          v241 = v284;
          v243 = *(&v283 + 1);
          v239 = BYTE8(v284);
          sub_1D5ED34B0(*(&v283 + 1), v284, SBYTE8(v284));
        }

        v232 = v94;
        v233 = v72;
        v99 = &v274;
        if (v279 == 254)
        {
          v99 = &v285;
          sub_1D688911C(&v285, &v251, sub_1D615C3A4);
        }

        v100 = v99[3];
        v264 = v99[2];
        v265 = v100;
        v266 = v99[4];
        v267 = *(v99 + 80);
        v101 = *v99;
        v102 = v99[1];
        v103 = *(&v279 + 1);
        v104 = *(&v279 + 1);
        v262 = v101;
        v263 = v102;
        if ((~*(&v279 + 1) & 0xF000000000000007) == 0)
        {
          v104 = *(&v290 + 1);
          sub_1D5CFCFAC(*(&v290 + 1));
        }

        v105 = v280;
        if (v280 == 2)
        {
          v105 = v291;
        }

        v230 = v105;
        v106 = v270;
        *&v268[39] = v264;
        *&v268[55] = v265;
        *&v268[71] = v266;
        v268[87] = v267;
        *&v268[7] = v262;
        *&v268[23] = v263;
        sub_1D62B7AA4(&v270, &v251);

        sub_1D5D04BD4(v95);

        sub_1D5ED34B0(v235, v234, v98);
        sub_1D688911C(&v274, &v251, sub_1D615C3A4);
        sub_1D5CFCFAC(v103);
        v107 = swift_isUniquelyReferenced_nonNull_native();
        v108 = sub_1D6D8CB60();
        v110 = v82[2];
        v111 = (v109 & 1) == 0;
        v30 = __OFADD__(v110, v111);
        v112 = v110 + v111;
        if (v30)
        {
          goto LABEL_109;
        }

        v113 = v109;
        if (v82[3] >= v112)
        {
          v66 = v229;
          v72 = v233;
          if ((v107 & 1) == 0)
          {
            v166 = v108;
            sub_1D6D84AD4();
            v108 = v166;
            if (v113)
            {
              goto LABEL_53;
            }

            goto LABEL_61;
          }
        }

        else
        {
          sub_1D6D72608(v112, v107);
          v108 = sub_1D6D8CB60();
          v66 = v229;
          v72 = v233;
          if ((v113 & 1) != (v114 & 1))
          {
            goto LABEL_112;
          }
        }

        if (v113)
        {
LABEL_53:
          v141 = v82[7] + 168 * v108;
          v143 = *(v141 + 16);
          v142 = *(v141 + 32);
          v251 = *v141;
          v252 = v143;
          v253 = v142;
          v144 = *(v141 + 96);
          v146 = *(v141 + 48);
          v145 = *(v141 + 64);
          v256 = *(v141 + 80);
          v257 = v144;
          v254 = v146;
          v255 = v145;
          v148 = *(v141 + 128);
          v147 = *(v141 + 144);
          v149 = *(v141 + 160);
          v258 = *(v141 + 112);
          v261 = v149;
          v259 = v148;
          v260 = v147;
          *v141 = v106;
          *(v141 + 16) = v232;
          *(v141 + 24) = v96;
          *(v141 + 32) = v231;
          *(v141 + 40) = v243;
          *(v141 + 48) = v241;
          *(v141 + 56) = v239;
          v150 = *&v268[48];
          *(v141 + 89) = *&v268[32];
          *(v141 + 105) = v150;
          *(v141 + 121) = *&v268[64];
          *(v141 + 137) = *&v268[80];
          v151 = *&v268[16];
          *(v141 + 57) = *v268;
          *(v141 + 73) = v151;
          *(v141 + 152) = v104;
          *(v141 + 160) = v230;
          sub_1D62B7B00(&v251);
LABEL_63:
          sub_1D62B7B00(&v270);
          sub_1D62B7B00(&v281);
          v269 = v82;
          goto LABEL_64;
        }

LABEL_61:
        v82[(v108 >> 6) + 8] |= 1 << v108;
        *(v82[6] + 16 * v108) = v106;
        v167 = v82[7] + 168 * v108;
        v168 = *v268;
        *(v167 + 73) = *&v268[16];
        *(v167 + 57) = v168;
        v169 = *&v268[48];
        *(v167 + 121) = *&v268[64];
        v170 = *&v268[32];
        *(v167 + 105) = v169;
        *v167 = v106;
        *(v167 + 16) = v232;
        *(v167 + 24) = v96;
        *(v167 + 32) = v231;
        *(v167 + 40) = v243;
        *(v167 + 48) = v241;
        *(v167 + 56) = v239;
        *(v167 + 137) = *&v268[80];
        *(v167 + 89) = v170;
        *(v167 + 152) = v104;
        *(v167 + 160) = v230;
        v171 = v82[2];
        v30 = __OFADD__(v171, 1);
        v172 = v171 + 1;
        if (v30)
        {
          goto LABEL_110;
        }

        v82[2] = v172;

        goto LABEL_63;
      }
    }

    else
    {
      sub_1D62B7AA4(&v281, &v270);
    }

    sub_1D62B7AA4(&v281, &v270);
    v115 = swift_isUniquelyReferenced_nonNull_native();
    *&v251 = v82;
    v116 = sub_1D6D8CB60();
    v118 = v82[2];
    v119 = (v117 & 1) == 0;
    v30 = __OFADD__(v118, v119);
    v120 = v118 + v119;
    if (v30)
    {
      goto LABEL_106;
    }

    v121 = v117;
    if (v82[3] < v120)
    {
      sub_1D6D72608(v120, v115);
      v116 = sub_1D6D8CB60();
      if ((v121 & 1) != (v122 & 1))
      {
        goto LABEL_112;
      }

LABEL_49:
      if ((v121 & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_50;
    }

    if (v115)
    {
      goto LABEL_49;
    }

    v152 = v116;
    sub_1D6D84AD4();
    v116 = v152;
    if ((v121 & 1) == 0)
    {
LABEL_55:
      v123 = v251;
      *(v251 + 8 * (v116 >> 6) + 64) |= 1 << v116;
      *(v123[6] + 16 * v116) = v81;
      v153 = v123[7] + 168 * v116;
      v154 = v291;
      v156 = v289;
      v155 = v290;
      *(v153 + 112) = v288;
      *(v153 + 128) = v156;
      *(v153 + 144) = v155;
      *(v153 + 160) = v154;
      v158 = v286;
      v157 = v287;
      v159 = v285;
      *(v153 + 48) = v284;
      *(v153 + 64) = v159;
      *(v153 + 80) = v158;
      *(v153 + 96) = v157;
      v161 = v282;
      v160 = v283;
      *v153 = v281;
      *(v153 + 16) = v161;
      *(v153 + 32) = v160;
      v162 = v123[2];
      v30 = __OFADD__(v162, 1);
      v163 = v162 + 1;
      if (v30)
      {
        goto LABEL_108;
      }

      v123[2] = v163;

      goto LABEL_57;
    }

LABEL_50:
    v123 = v251;
    v124 = *(v251 + 56) + 168 * v116;
    v126 = *(v124 + 16);
    v125 = *(v124 + 32);
    v270 = *v124;
    v271 = v126;
    v272 = v125;
    v127 = *(v124 + 96);
    v129 = *(v124 + 48);
    v128 = *(v124 + 64);
    v275 = *(v124 + 80);
    v276 = v127;
    v273 = v129;
    v274 = v128;
    v131 = *(v124 + 128);
    v130 = *(v124 + 144);
    v132 = *(v124 + 112);
    v280 = *(v124 + 160);
    v278 = v131;
    v279 = v130;
    v277 = v132;
    v133 = v281;
    v134 = v283;
    *(v124 + 16) = v282;
    *(v124 + 32) = v134;
    *v124 = v133;
    v135 = v284;
    v136 = v285;
    v137 = v287;
    *(v124 + 80) = v286;
    *(v124 + 96) = v137;
    *(v124 + 48) = v135;
    *(v124 + 64) = v136;
    v138 = v288;
    v139 = v289;
    v140 = v290;
    *(v124 + 160) = v291;
    *(v124 + 128) = v139;
    *(v124 + 144) = v140;
    *(v124 + 112) = v138;
    sub_1D62B7B00(&v270);
LABEL_57:
    v269 = v123;
    v164 = *(v72 + 2);
    v165 = *(v72 + 3);

    if (v164 >= v165 >> 1)
    {
      v72 = sub_1D698F4BC((v165 > 1), v164 + 1, 1, v72);
    }

    sub_1D62B7B00(&v281);
    *(v72 + 2) = v164 + 1;
    *&v72[16 * v164 + 32] = v81;
LABEL_64:
    if (v247 == v70)
    {
      goto LABEL_67;
    }

    ++v70;
    v71 += 168;
  }

  while (v70 < *(v66 + 16));
  __break(1u);
LABEL_67:

LABEL_69:
  *&v281 = v72;

  sub_1D6985DAC(v173);
  v174 = *(v281 + 16);
  if (v174)
  {
    v175 = 0;
    v176 = v281 + 40;
    v244 = v281 + 40;
    v248 = MEMORY[0x1E69E7CC0];
LABEL_71:
    v177 = v72;
    v178 = v269;
    v179 = v176 + 16 * v175;
    v180 = v175;
    while (v180 < v174)
    {
      v175 = v180 + 1;
      if (__OFADD__(v180, 1))
      {
        goto LABEL_105;
      }

      if (v178[2])
      {

        v181 = sub_1D6D8CB60();
        if (v182)
        {
          v183 = v178[7] + 168 * v181;
          v185 = *(v183 + 16);
          v184 = *(v183 + 32);
          v281 = *v183;
          v282 = v185;
          v283 = v184;
          v186 = *(v183 + 48);
          v187 = *(v183 + 64);
          v188 = *(v183 + 96);
          v286 = *(v183 + 80);
          v287 = v188;
          v284 = v186;
          v285 = v187;
          v189 = *(v183 + 112);
          v190 = *(v183 + 128);
          v191 = *(v183 + 144);
          v291 = *(v183 + 160);
          v289 = v190;
          v290 = v191;
          v288 = v189;
          sub_1D62B7AA4(&v281, &v270);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v248 = sub_1D698DF54(0, *(v248 + 2) + 1, 1, v248);
          }

          v72 = v177;
          v176 = v244;
          v193 = *(v248 + 2);
          v192 = *(v248 + 3);
          if (v193 >= v192 >> 1)
          {
            v248 = sub_1D698DF54((v192 > 1), v193 + 1, 1, v248);
          }

          *(v248 + 2) = v193 + 1;
          v194 = &v248[168 * v193];
          v195 = v281;
          v196 = v283;
          *(v194 + 3) = v282;
          *(v194 + 4) = v196;
          *(v194 + 2) = v195;
          v197 = v284;
          v198 = v285;
          v199 = v287;
          *(v194 + 7) = v286;
          *(v194 + 8) = v199;
          *(v194 + 5) = v197;
          *(v194 + 6) = v198;
          v200 = v288;
          v201 = v289;
          v202 = v290;
          v194[192] = v291;
          *(v194 + 10) = v201;
          *(v194 + 11) = v202;
          *(v194 + 9) = v200;
          if (v175 != v174)
          {
            goto LABEL_71;
          }

          goto LABEL_86;
        }
      }

      ++v180;
      v179 += 16;
      if (v175 == v174)
      {
        goto LABEL_86;
      }
    }

    goto LABEL_104;
  }

  v248 = MEMORY[0x1E69E7CC0];
LABEL_86:

  v203 = v227[7];
  if (!v203)
  {
    v203 = *(v228 + 56);
  }

  v204 = v227[8];
  v205 = v204;
  if ((~v204 & 0xF000000000000007) == 0)
  {
    v205 = *(v228 + 64);
    sub_1D5D04BD4(v205);
  }

  v206 = v227[9];
  if (!v206)
  {
  }

  v207 = *(v227 + 96);
  v238 = v227[10];
  v250 = v238;
  v236 = v206;
  v237 = v227[11];
  v245 = v237;
  v208 = *(v227 + 96);
  if (v207 >= 0xFE)
  {
    v208 = *(v228 + 96);
    v250 = *(v228 + 80);
    v245 = *(v228 + 88);
    sub_1D5ED34B0(v250, v245, v208);
  }

  LOBYTE(v286) = *(v227 + 184);
  v209 = *(v227 + 19);
  v283 = *(v227 + 17);
  v284 = v209;
  v285 = *(v227 + 21);
  v210 = *(v227 + 15);
  v281 = *(v227 + 13);
  v282 = v210;
  v240 = v205;
  v242 = v203;
  if (v286 == 254)
  {
    v211 = *(v228 + 152);
    v253 = *(v228 + 136);
    v254 = v211;
    v255 = *(v228 + 168);
    LOBYTE(v256) = *(v228 + 184);
    v212 = *(v228 + 120);
    v251 = *(v228 + 104);
    v252 = v212;
    sub_1D688911C(&v251, &v270, sub_1D615C3A4);
    v272 = v253;
    v273 = v254;
    v274 = v255;
    LOBYTE(v275) = v256;
    v213 = v251;
    v214 = v252;
  }

  else
  {
    v215 = *(v227 + 19);
    v272 = *(v227 + 17);
    v273 = v215;
    v274 = *(v227 + 21);
    LOBYTE(v275) = *(v227 + 184);
    v213 = *(v227 + 13);
    v214 = *(v227 + 15);
  }

  v270 = v213;
  v271 = v214;
  v216 = v227[24];
  v217 = v216;
  if ((~v216 & 0xF000000000000007) == 0)
  {
    v217 = *(v228 + 192);
    sub_1D5CFCFAC(v217);
  }

  v218 = *(v227 + 200);
  if (v218 == 2)
  {
    LOBYTE(v218) = *(v228 + 200);
  }

  v219 = swift_allocObject();
  swift_beginAccess();
  *(v219 + 16) = v226;
  *(v219 + 24) = v225;
  *(v219 + 32) = v224;
  *(v219 + 40) = v223;
  swift_beginAccess();
  v220 = v273;
  *(v219 + 136) = v272;
  *(v219 + 152) = v220;
  *(v219 + 168) = v274;
  v221 = v271;
  *(v219 + 104) = v270;
  *(v219 + 48) = v248;
  *(v219 + 56) = v242;
  *(v219 + 64) = v240;
  *(v219 + 72) = v236;
  *(v219 + 80) = v250;
  *(v219 + 88) = v245;
  *(v219 + 96) = v208;
  *(v219 + 184) = v275;
  *(v219 + 120) = v221;
  *(v219 + 192) = v217;
  *(v219 + 200) = v218;

  sub_1D5D04BD4(v204);

  sub_1D5ED34B0(v238, v237, v207);
  sub_1D688911C(&v281, &v251, sub_1D615C3A4);
  sub_1D5CFCFAC(v216);
  return v219;
}

void sub_1D68872C8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  v5 = *(v4 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1D698DF54(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v85 = sub_1D698DF18(0, v5, 0, v6);
  v89 = *(v4 + 16);
  if (v89)
  {
    v8 = 0;
    v87 = v2;
    v88 = v4 + 32;
    v86 = v4;
    while (1)
    {
      v9 = v88 + 168 * v8;
      v10 = *v9;
      v11 = *(v9 + 32);
      v92 = *(v9 + 16);
      v93 = v11;
      v91 = v10;
      v12 = *(v9 + 48);
      v13 = *(v9 + 64);
      v14 = *(v9 + 96);
      v96 = *(v9 + 80);
      v97 = v14;
      v94 = v12;
      v95 = v13;
      v15 = *(v9 + 112);
      v16 = *(v9 + 128);
      v17 = *(v9 + 144);
      v101 = *(v9 + 160);
      v99 = v16;
      v100 = v17;
      v98 = v15;
      v18 = v91;
      sub_1D62B7AA4(&v91, &v102);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v102 = v18;

      v19 = sub_1D6844380(&v102);

      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = 0;
        v22 = 32;
        while (1)
        {
          if (v21 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v24 = *(v19 + v22 + 16);
          v23 = *(v19 + v22 + 32);
          v25 = *(v19 + v22);
          v114 = *(v19 + v22 + 48);
          v113[1] = v24;
          v113[2] = v23;
          v113[0] = v25;
          v26 = v24;
          sub_1D5E3B610(v113, &v102);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v21;
          sub_1D5E3B66C(v113);
          v22 += 56;
          if (v20 == v21)
          {
            goto LABEL_10;
          }
        }

        sub_1D5E3B66C(v113);
        if (v26 <= 1)
        {
          v40 = *(v7 + 2);
          v39 = *(v7 + 3);
          v27 = v86;
          v2 = v87;
          if (v40 >= v39 >> 1)
          {
            v7 = sub_1D698DF54((v39 > 1), v40 + 1, 1, v7);
          }

          *(v7 + 2) = v40 + 1;
          v41 = &v7[168 * v40];
          v42 = v91;
          v43 = v93;
          *(v41 + 3) = v92;
          *(v41 + 4) = v43;
          *(v41 + 2) = v42;
          v44 = v94;
          v45 = v95;
          v46 = v97;
          *(v41 + 7) = v96;
          *(v41 + 8) = v46;
          *(v41 + 5) = v44;
          *(v41 + 6) = v45;
          v47 = v98;
          v48 = v99;
          v49 = v100;
          v41[192] = v101;
          *(v41 + 10) = v48;
          *(v41 + 11) = v49;
          *(v41 + 9) = v47;
        }

        else
        {
          v110 = v99;
          v111 = v100;
          LOBYTE(v112) = v101;
          v106 = v95;
          v107 = v96;
          v108 = v97;
          v109 = v98;
          v102 = v91;
          v103 = v92;
          v104 = v93;
          v105 = v94;
          sub_1D62B7AA4(&v91, v90);
          v27 = v86;
          v29 = v85[2];
          v28 = v85[3];
          v2 = v87;
          if (v29 >= v28 >> 1)
          {
            v85 = sub_1D698DF18((v28 > 1), v29 + 1, 1, v85);
          }

          sub_1D62B7B00(&v91);
          v85[2] = v29 + 1;
          v30 = &v85[22 * v29];
          v31 = v104;
          v32 = v102;
          *(v30 + 3) = v103;
          *(v30 + 4) = v31;
          *(v30 + 2) = v32;
          v33 = v105;
          v34 = v106;
          v35 = v108;
          *(v30 + 7) = v107;
          *(v30 + 8) = v35;
          *(v30 + 5) = v33;
          *(v30 + 6) = v34;
          v36 = v109;
          v37 = v111;
          v38 = v112;
          *(v30 + 10) = v110;
          *(v30 + 11) = v37;
          *(v30 + 9) = v36;
          v30[24] = v38;
          v30[25] = v26;
        }
      }

      else
      {
LABEL_10:
        sub_1D62B7B00(&v91);

        v27 = v86;
        v2 = v87;
      }

      if (++v8 == v89)
      {
        break;
      }

      if (v8 >= *(v27 + 16))
      {
        goto LABEL_34;
      }
    }
  }

  sub_1D688906C(0);
  v50 = sub_1D72626AC();

  v51 = *(v50 + 16);
  if (v51)
  {
    v52 = v51 - 1;
    for (i = 32; ; i += 176)
    {
      v54 = *(v50 + i);
      v55 = *(v50 + i + 32);
      v103 = *(v50 + i + 16);
      v104 = v55;
      v102 = v54;
      v56 = *(v50 + i + 48);
      v57 = *(v50 + i + 64);
      v58 = *(v50 + i + 96);
      v107 = *(v50 + i + 80);
      v108 = v58;
      v105 = v56;
      v106 = v57;
      v59 = *(v50 + i + 112);
      v60 = *(v50 + i + 128);
      v61 = *(v50 + i + 160);
      v111 = *(v50 + i + 144);
      v112 = v61;
      v109 = v59;
      v110 = v60;
      sub_1D688911C(&v102, &v91, sub_1D688906C);
      v63 = *(v7 + 2);
      v62 = *(v7 + 3);
      if (v63 >= v62 >> 1)
      {
        v7 = sub_1D698DF54((v62 > 1), v63 + 1, 1, v7);
      }

      *(v7 + 2) = v63 + 1;
      v64 = &v7[168 * v63];
      v65 = v102;
      v66 = v104;
      *(v64 + 3) = v103;
      *(v64 + 4) = v66;
      *(v64 + 2) = v65;
      v67 = v105;
      v68 = v106;
      v69 = v108;
      *(v64 + 7) = v107;
      *(v64 + 8) = v69;
      *(v64 + 5) = v67;
      *(v64 + 6) = v68;
      v70 = v109;
      v71 = v110;
      v72 = v111;
      v64[192] = v112;
      *(v64 + 10) = v71;
      *(v64 + 11) = v72;
      *(v64 + 9) = v70;
      if (!v52)
      {
        break;
      }

      --v52;
    }
  }

  v73 = *(v7 + 2);

  if (v73)
  {
    v74 = 0;
    v75 = v7 + 32;
    while (v74 < *(v7 + 2))
    {
      v76 = *v75;
      v77 = *(v75 + 2);
      v103 = *(v75 + 1);
      v104 = v77;
      v102 = v76;
      v78 = *(v75 + 3);
      v79 = *(v75 + 4);
      v80 = *(v75 + 6);
      v107 = *(v75 + 5);
      v108 = v80;
      v105 = v78;
      v106 = v79;
      v81 = *(v75 + 7);
      v82 = *(v75 + 8);
      v83 = *(v75 + 9);
      LOBYTE(v112) = v75[160];
      v110 = v82;
      v111 = v83;
      v109 = v81;
      ++v74;
      v99 = v82;
      v100 = v83;
      v101 = v112;
      v95 = v106;
      v96 = v107;
      v97 = v80;
      v98 = v81;
      v91 = v102;
      v92 = v103;
      v93 = v104;
      v94 = v105;
      swift_allocObject();
      sub_1D62B7AA4(&v102, v90);
      v84 = sub_1D6889184(v2, &v91);

      v75 += 168;
      v2 = v84;
      if (v73 == v74)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_31:
  }
}

uint64_t sub_1D68878A0()
{
  v2 = v0;
  swift_beginAccess();
  v3 = v0[3];
  v35 = v0[2];
  v4 = v0[4];
  v5 = v0[5];
  v33 = v4;
  swift_beginAccess();
  v6 = v2[6];
  v7 = v2[8];
  v32 = v5;
  v30 = v2[7];
  if ((~v7 & 0xF000000000000007) != 0)
  {
    v36[0] = v2[8];

    sub_1D5D04BD4(v7);
    sub_1D6C051DC(&v38);

    v7 = v38;
  }

  else
  {
  }

  v8 = v2[9];
  v34 = v3;
  if (v8)
  {
    v29 = sub_1D600CADC(v8);
  }

  else
  {
    v29 = 0;
  }

  v10 = v2[10];
  v9 = v2[11];
  v11 = *(v2 + 96);
  v12 = *(v2 + 19);
  v40 = *(v2 + 17);
  v41 = v12;
  v42 = *(v2 + 21);
  v43 = *(v2 + 184);
  v13 = v43;
  v14 = *(v2 + 15);
  v38 = *(v2 + 13);
  v39 = v14;
  v31 = v6;
  if (v43 == 254)
  {
    sub_1D5ED34B0(v10, v9, v11);
    v15 = v38;
    v16 = DWORD2(v38);
    v1 = HIDWORD(v38);
    v17 = *(&v39 + 1);
    v18 = v39;
    v26 = v40;
    v27 = v41;
    v28 = *(&v42 + 1);
    v19 = v42;
  }

  else
  {
    v28 = *(&v42 + 1);
    v19 = v42;
    v20 = *(&v40 + 1);
    v17 = *(&v39 + 1);
    v18 = v39;
    v16 = DWORD2(v38);
    v15 = v38;
    v27 = v41;
    v37[0] = v40;
    sub_1D688911C(&v38, v36, sub_1D615C3A4);
    sub_1D688911C(&v38, v36, sub_1D615C3A4);
    sub_1D5ED34B0(v10, v9, v11);
    sub_1D6E0CAE0(v36);

    sub_1D615F660(&v38, sub_1D615C3A4);
    *&v21 = v36[0];
    *(&v21 + 1) = v20;
    v26 = v21;
  }

  v22 = v2[24];
  if ((~v22 & 0xF000000000000007) != 0)
  {
    v37[0] = v2[24];

    sub_1D6E0CAE0(v36);

    v22 = v36[0];
  }

  v23 = *(v2 + 200);
  v24 = swift_allocObject();
  swift_beginAccess();
  *(v24 + 16) = v35;
  *(v24 + 24) = v34;
  *(v24 + 32) = v33;
  *(v24 + 40) = v32;
  swift_beginAccess();
  *(v24 + 48) = v31;
  *(v24 + 56) = v30;
  *(v24 + 64) = v7;
  *(v24 + 72) = v29;
  *(v24 + 80) = v10;
  *(v24 + 88) = v9;
  *(v24 + 96) = v11;
  *(v24 + 104) = v15;
  *(v24 + 112) = v16;
  *(v24 + 116) = v1;
  *(v24 + 120) = v18;
  *(v24 + 128) = v17;
  *(v24 + 152) = v27;
  *(v24 + 136) = v26;
  *(v24 + 168) = v19;
  *(v24 + 176) = v28;
  *(v24 + 184) = v13;
  *(v24 + 192) = v22;
  *(v24 + 200) = v23;
  return v24;
}

double FormatVideoNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t FormatVideoNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double FormatVideoNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

uint64_t FormatVideoNodeStyle.background.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return sub_1D5D04BD4(v2);
}

uint64_t FormatVideoNodeStyle.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 96);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatVideoNodeStyle.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v4 = *(v1 + 168);
  v10 = *(v1 + 152);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 184);
  v6 = *(v1 + 120);
  v9[0] = *(v1 + 104);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D688911C(v9, v8, sub_1D615C3A4);
}

uint64_t FormatVideoNodeStyle.tintColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 192);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatVideoNodeStyle.__allocating_init(identifier:class:selectors:alpha:background:borders:cornerRadius:shadow:tintColor:ignoresSmartInvertColors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t *a11, char a12)
{
  v18 = swift_allocObject();
  v19 = *a6;
  v20 = *a7;
  v26 = a9[1];
  v27 = *a9;
  v21 = *(a9 + 16);
  v22 = *a11;
  swift_beginAccess();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  swift_beginAccess();
  v23 = *(a10 + 48);
  *(v18 + 136) = *(a10 + 32);
  *(v18 + 152) = v23;
  *(v18 + 168) = *(a10 + 64);
  v24 = *(a10 + 16);
  *(v18 + 104) = *a10;
  *(v18 + 48) = a5;
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  *(v18 + 72) = a8;
  *(v18 + 80) = v27;
  *(v18 + 88) = v26;
  *(v18 + 96) = v21;
  *(v18 + 184) = *(a10 + 80);
  *(v18 + 120) = v24;
  *(v18 + 192) = v22;
  *(v18 + 200) = a12;
  return v18;
}

uint64_t FormatVideoNodeStyle.init(identifier:class:selectors:alpha:background:borders:cornerRadius:shadow:tintColor:ignoresSmartInvertColors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t *a11, char a12)
{
  v17 = *a6;
  v18 = *a7;
  v19 = *a9;
  v20 = a9[1];
  v24 = *(a9 + 16);
  v25 = *a11;
  swift_beginAccess();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  swift_beginAccess();
  v21 = *(a10 + 48);
  *(v12 + 136) = *(a10 + 32);
  *(v12 + 152) = v21;
  *(v12 + 168) = *(a10 + 64);
  v22 = *(a10 + 16);
  *(v12 + 104) = *a10;
  *(v12 + 48) = a5;
  *(v12 + 56) = v17;
  *(v12 + 64) = v18;
  *(v12 + 72) = a8;
  *(v12 + 80) = v19;
  *(v12 + 88) = v20;
  *(v12 + 96) = v24;
  *(v12 + 184) = *(a10 + 80);
  *(v12 + 120) = v22;
  *(v12 + 192) = v25;
  *(v12 + 200) = a12;
  return v12;
}

uint64_t FormatVideoNodeStyle.deinit()
{

  sub_1D5C8500C(*(v0 + 64));

  sub_1D5ED348C(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  sub_1D600ECE4(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));
  sub_1D5C84FF4(*(v0 + 192));
  return v0;
}

uint64_t FormatVideoNodeStyle.__deallocating_deinit()
{
  FormatVideoNodeStyle.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6888108@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66CD6B4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t FormatVideoNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatVideoNodeStyle.Selector.background.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_1D5D04BD4(v2);
}

uint64_t FormatVideoNodeStyle.Selector.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 56);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatVideoNodeStyle.Selector.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v4 = *(v1 + 128);
  v10 = *(v1 + 112);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 144);
  v6 = *(v1 + 80);
  v9[0] = *(v1 + 64);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D688911C(v9, v8, sub_1D615C3A4);
}

uint64_t FormatVideoNodeStyle.Selector.tintColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 152);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatVideoNodeStyle.auxViewRequirements.getter()
{
  v1 = *(v0 + 64);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    v4 = &protocol witness table for FormatBackground;
    v3 = &type metadata for FormatBackground;
    v2 = *(v0 + 64);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  v16[0] = v2;
  v16[3] = v3;
  v16[4] = v4;
  sub_1D5D04BD4(v1);
  sub_1D67AE3F4(v16, v15);
  sub_1D67AE3F4(v15, &v10);
  if (v11)
  {
    sub_1D5B63F14(&v10, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = (*(v6 + 8))(v5, v6);
    v8 = sub_1D5EECE3C(v7, MEMORY[0x1E69E7CD0]);
    sub_1D60EEB74(v15);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1D60EEB74(v15);
    sub_1D60EEB74(&v10);
    v8 = MEMORY[0x1E69E7CD0];
  }

  sub_1D60EEB74(v16);
  return v8;
}

uint64_t sub_1D6888378()
{
  v1 = *v0;
  sub_1D5B56218(0, &qword_1EDF195B8, &qword_1EDF1C7D8, &qword_1EDF1C7E0, &protocol descriptor for FormatAuxiliaryViewRequirementProviding);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_1D7273AE0;
  v4 = *(v1 + 64);
  if ((~v4 & 0xF000000000000007) != 0)
  {
    v7 = &protocol witness table for FormatBackground;
    v6 = &type metadata for FormatBackground;
    v5 = *(v1 + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v5;
  *(inited + 56) = v6;
  *(inited + 64) = v7;
  sub_1D5D04BD4(v4);
  v8 = sub_1D6E27AC0();
  swift_setDeallocating();
  sub_1D60EEB74(v3 + 32);
  return v8;
}

BOOL _s8NewsFeed20FormatVideoNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v43 = *(a1 + 5);
  v9 = *(a1 + 56);
  v10 = *(a1 + 7);
  v80 = *(a1 + 6);
  v81 = v10;
  v82 = *(a1 + 8);
  v83 = *(a1 + 144);
  v11 = *(a1 + 5);
  v78 = *(a1 + 4);
  v79 = v11;
  v12 = a1[19];
  v40 = *(a1 + 160);
  v13 = *a2;
  v14 = a2[1];
  v16 = a2[2];
  v15 = a2[3];
  v17 = a2[4];
  v18 = a2[5];
  v19 = a2[6];
  v20 = *(a2 + 56);
  v89 = *(a2 + 144);
  v21 = *(a2 + 8);
  v87 = *(a2 + 7);
  v88 = v21;
  v22 = *(a2 + 6);
  v85 = *(a2 + 5);
  v86 = v22;
  v84 = *(a2 + 4);
  v41 = a2[19];
  v42 = v19;
  v39 = *(a2 + 160);
  if ((v4 != v13 || v5 != v14) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v16)
    {
      return 0;
    }

    v38 = v12;

    sub_1D633A310(v6, v16);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v16)
    {
      return 0;
    }

    v38 = v12;
  }

  if ((~v7 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v7);
    sub_1D5D04BD4(v15);
    if ((~v15 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v7);
      goto LABEL_18;
    }

LABEL_15:
    sub_1D5C8500C(v7);
    sub_1D5C8500C(v15);
    return 0;
  }

  *&v60 = v7;
  if ((~v15 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v7);
    sub_1D5D04BD4(v15);
    sub_1D5D04BD4(v7);

    goto LABEL_15;
  }

  *v72 = v15;
  sub_1D5D04BD4(v7);
  sub_1D5D04BD4(v15);
  sub_1D5D04BD4(v7);
  v26 = static FormatBackground.== infix(_:_:)(&v60, v72);

  sub_1D5C8500C(v7);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  if (v8)
  {
    if (!v17)
    {
      return 0;
    }

    sub_1D633C9E8(v8, v17);
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v9 > 0xFD)
  {
    v29 = *(&v43 + 1);
    v30 = v43;
    sub_1D5ED34B0(v43, *(&v43 + 1), v9);
    v31 = v42;
    sub_1D5ED34B0(v18, v42, v20);
    if (v20 > 0xFD)
    {
      sub_1D5ED348C(v43, *(&v43 + 1), v9);
      goto LABEL_30;
    }

LABEL_28:
    sub_1D5ED348C(v30, v29, v9);
    sub_1D5ED348C(v18, v31, v20);
    return 0;
  }

  v29 = *(&v43 + 1);
  v30 = v43;
  v60 = v43;
  LOBYTE(v61) = v9;
  if (v20 > 0xFD)
  {
    sub_1D5ED34B0(v43, *(&v43 + 1), v9);
    v31 = v42;
    sub_1D5ED34B0(v18, v42, v20);
    sub_1D5ED34B0(v43, *(&v43 + 1), v9);
    sub_1D5ED34A0(v43, *(&v43 + 1), v9);
    goto LABEL_28;
  }

  *v72 = v18;
  *&v72[8] = v42;
  v72[16] = v20;
  sub_1D5ED34B0(v43, *(&v43 + 1), v9);
  sub_1D5ED34B0(v18, v42, v20);
  sub_1D5ED34B0(v43, *(&v43 + 1), v9);
  v32 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v60, v72);
  sub_1D5ED34A0(*v72, *&v72[8], v72[16]);
  sub_1D5ED34A0(v60, *(&v60 + 1), v61);
  sub_1D5ED348C(v43, *(&v43 + 1), v9);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v75 = v80;
  v76 = v81;
  v77 = v82;
  v73 = v78;
  v74 = v79;
  *&v72[23] = v85;
  *&v72[39] = v86;
  *&v72[55] = v87;
  *&v72[71] = v88;
  v33 = v83;
  *&v72[7] = v84;
  v34 = v89;
  if (v83 == 254)
  {
    if (v89 == 254)
    {
      v62 = v80;
      v63 = v81;
      v64 = v82;
      v60 = v78;
      v61 = v79;
      v65 = -2;
      sub_1D688911C(&v78, &v54, sub_1D615C3A4);
      sub_1D688911C(&v84, &v54, sub_1D615C3A4);
      sub_1D615F660(&v60, sub_1D615C3A4);
      goto LABEL_38;
    }

    sub_1D688911C(&v78, &v60, sub_1D615C3A4);
    sub_1D688911C(&v84, &v60, sub_1D615C3A4);
LABEL_36:
    v62 = v75;
    v63 = v76;
    v64 = v77;
    v60 = v73;
    v61 = v74;
    v68 = *&v72[32];
    v69 = *&v72[48];
    *v70 = *&v72[64];
    v66 = *v72;
    v65 = v33;
    *&v70[15] = *&v72[79];
    v67 = *&v72[16];
    v71 = v34;
    sub_1D615F660(&v60, sub_1D615F6C0);
    return 0;
  }

  v62 = v80;
  v63 = v81;
  v64 = v82;
  v60 = v78;
  v61 = v79;
  v65 = v83;
  v56 = v80;
  v57 = v81;
  v58 = v82;
  v59 = v83;
  v54 = v78;
  v55 = v79;
  if (v89 == 254)
  {
    v50 = v62;
    v51 = v63;
    v52 = v64;
    v53 = v65;
    v48 = v60;
    v49 = v61;
    sub_1D688911C(&v78, v46, sub_1D615C3A4);
    sub_1D688911C(&v84, v46, sub_1D615C3A4);
    sub_1D688911C(&v60, v46, sub_1D615C3A4);
    sub_1D601144C(&v48);
    goto LABEL_36;
  }

  v50 = v86;
  v51 = v87;
  v52 = v88;
  v48 = v84;
  v49 = v85;
  v53 = v89;
  sub_1D688911C(&v78, v46, sub_1D615C3A4);
  sub_1D688911C(&v84, v46, sub_1D615C3A4);
  sub_1D688911C(&v60, v46, sub_1D615C3A4);
  v35 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v54, &v48);
  v44[2] = v50;
  v44[3] = v51;
  v44[4] = v52;
  v45 = v53;
  v44[0] = v48;
  v44[1] = v49;
  sub_1D601144C(v44);
  v46[2] = v56;
  v46[3] = v57;
  v46[4] = v58;
  v47 = v59;
  v46[0] = v54;
  v46[1] = v55;
  sub_1D601144C(v46);
  v50 = v75;
  v51 = v76;
  v52 = v77;
  v48 = v73;
  v49 = v74;
  v53 = v33;
  sub_1D615F660(&v48, sub_1D615C3A4);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  if ((~v38 & 0xF000000000000007) == 0)
  {
    v36 = v41;
    sub_1D5CFCFAC(v38);
    sub_1D5CFCFAC(v41);
    if ((~v41 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v38);
      goto LABEL_45;
    }

LABEL_43:
    sub_1D5C84FF4(v38);
    sub_1D5C84FF4(v36);
    return 0;
  }

  *&v60 = v38;
  v36 = v41;
  if ((~v41 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v38);
    sub_1D5CFCFAC(v41);
    sub_1D5CFCFAC(v38);

    goto LABEL_43;
  }

  *v72 = v41;
  sub_1D5CFCFAC(v38);
  sub_1D5CFCFAC(v41);
  sub_1D5CFCFAC(v38);
  v37 = static FormatColor.== infix(_:_:)(&v60, v72);

  sub_1D5C84FF4(v38);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  if (v40 != 2)
  {
    return v39 != 2 && ((v39 ^ v40) & 1) == 0;
  }

  return v39 == 2;
}

uint64_t sub_1D6888BF0(uint64_t a1)
{
  result = sub_1D6888D4C(&qword_1EC88D4B8, &protocol conformance descriptor for FormatVideoNodeStyle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6888C58(uint64_t a1)
{
  *(a1 + 16) = sub_1D6888D4C(&qword_1EDF0EC18, &protocol conformance descriptor for FormatVideoNodeStyle);
  result = sub_1D6888D4C(&qword_1EC887770, &protocol conformance descriptor for FormatVideoNodeStyle);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D6888CC0(void *a1)
{
  a1[1] = sub_1D6888D4C(&qword_1EDF0EC18, &protocol conformance descriptor for FormatVideoNodeStyle);
  a1[2] = sub_1D6888D4C(&qword_1EC887770, &protocol conformance descriptor for FormatVideoNodeStyle);
  result = sub_1D6888D4C(&qword_1EC88D4C0, &protocol conformance descriptor for FormatVideoNodeStyle);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6888D4C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatVideoNodeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6888D8C(uint64_t a1)
{
  result = sub_1D6888DB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6888DB4()
{
  result = qword_1EC88D4C8;
  if (!qword_1EC88D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D4C8);
  }

  return result;
}

unint64_t sub_1D6888E08(uint64_t a1)
{
  *(a1 + 8) = sub_1D66F5CD4();
  result = sub_1D66CE4F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6888E38(void *a1)
{
  a1[1] = sub_1D66F5CD4();
  a1[2] = sub_1D66CE4F0();
  result = sub_1D6888E70();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6888E70()
{
  result = qword_1EC88D4D0;
  if (!qword_1EC88D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88D4D0);
  }

  return result;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D6888F44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_1D6888F8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D6889008(uint64_t a1)
{
  if (!qword_1EC88D4D8)
  {
    sub_1D601014C();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88D4D8);
    }
  }
}

void sub_1D688906C(uint64_t a1)
{
  if (!qword_1EC88D4E0)
  {
    v2 = sub_1D68890C8();
    v4 = type metadata accessor for FormatNodeStyleSelectorOrder(a1, &type metadata for FormatVideoNodeStyle.Selector, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EC88D4E0);
    }
  }
}

unint64_t sub_1D68890C8()
{
  result = qword_1EC88EE10;
  if (!qword_1EC88EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88EE10);
  }

  return result;
}

uint64_t sub_1D688911C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6889184(uint64_t a1, __int128 *a2)
{
  v4 = a2[9];
  v53 = a2[8];
  v54 = v4;
  v55 = *(a2 + 160);
  v5 = a2[5];
  v49 = a2[4];
  v50 = v5;
  v6 = a2[7];
  v51 = a2[6];
  v52 = v6;
  v7 = a2[1];
  v45 = *a2;
  v46 = v7;
  v8 = a2[3];
  v47 = a2[2];
  v48 = v8;
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  swift_beginAccess();
  *(v2 + 16) = v9;
  *(v2 + 24) = v10;
  v11 = *(a1 + 40);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 40) = v11;
  swift_beginAccess();
  v12 = *(a1 + 48);
  swift_beginAccess();
  *(v2 + 48) = v12;
  v13 = v46;
  if (!v46)
  {
  }

  *(v2 + 56) = v13;
  v14 = *(&v46 + 1);
  v15 = *(&v46 + 1);
  if ((~*(&v46 + 1) & 0xF000000000000007) == 0)
  {
    v15 = *(a1 + 64);
    sub_1D5D04BD4(v15);
  }

  *(v2 + 64) = v15;
  v16 = v47;
  if (!v47)
  {
  }

  *(v2 + 72) = v16;
  v17 = *(&v47 + 1);
  v18 = v48;
  v19 = BYTE8(v48);
  v32 = *(&v47 + 1);
  v20 = v48;
  v21 = BYTE8(v48);
  if (BYTE8(v48) >= 0xFEu)
  {
    v17 = *(a1 + 80);
    v20 = *(a1 + 88);
    v21 = *(a1 + 96);
    sub_1D5ED34B0(v17, v20, v21);
  }

  *(v2 + 80) = v17;
  *(v2 + 88) = v20;
  *(v2 + 96) = v21;
  if (v54 == 254)
  {
    v22 = *(a1 + 152);
    v35 = *(a1 + 136);
    v36 = v22;
    v37 = *(a1 + 168);
    v38 = *(a1 + 184);
    v23 = *(a1 + 120);
    v33 = *(a1 + 104);
    v34 = v23;
    sub_1D688911C(&v33, &v39, sub_1D615C3A4);
    v41 = v35;
    v42 = v36;
    v43 = v37;
    v44 = v38;
    v24 = v33;
    v25 = v34;
  }

  else
  {
    v41 = v51;
    v42 = v52;
    v43 = v53;
    v44 = v54;
    v24 = v49;
    v25 = v50;
  }

  v39 = v24;
  v40 = v25;
  v26 = v42;
  *(v2 + 136) = v41;
  *(v2 + 152) = v26;
  *(v2 + 168) = v43;
  v27 = v40;
  *(v2 + 104) = v39;
  *(v2 + 184) = v44;
  v28 = *(&v54 + 1);
  v29 = *(&v54 + 1);
  *(v2 + 120) = v27;
  if ((~v29 & 0xF000000000000007) == 0)
  {
    v29 = *(a1 + 192);
    sub_1D5CFCFAC(v29);
  }

  *(v2 + 192) = v29;

  sub_1D5D04BD4(v14);

  sub_1D5ED34B0(v32, v18, v19);
  sub_1D688911C(&v49, &v33, sub_1D615C3A4);
  sub_1D5CFCFAC(v28);
  sub_1D62B7B00(&v45);
  v30 = v55;
  if (v55 == 2)
  {
    v30 = *(a1 + 200);
  }

  *(v2 + 200) = v30;
  return v2;
}

void *sub_1D6889468(__int128 *a1, uint64_t a2)
{
  v3 = a1[7];
  v76 = a1[6];
  v77 = v3;
  v78 = a1[8];
  v79 = *(a1 + 18);
  v4 = a1[3];
  v72 = a1[2];
  v73 = v4;
  v5 = a1[5];
  v74 = a1[4];
  v75 = v5;
  v6 = a1[1];
  v70 = *a1;
  v71 = v6;
  sub_1D5B56218(0, &qword_1EC880AC0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1D7274590;
  sub_1D679C3C4(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  sub_1D5EA74B8(0);
  v8 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v50 = *(*(v7 - 8) + 72);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7273AE0;
  v10 = (v9 + v8);
  if (a2)
  {
    v11 = *(a2 + 40);
    v49 = *(a2 + 32);

    v12 = sub_1D68878A0();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 64) = 0x4800000000000000;
    v14 = sub_1D601118C;
  }

  else
  {
    v14 = sub_1D70DD9D8;
    v13 = 0;
    v49 = 0;
    v11 = 0xE000000000000000;
  }

  v15 = type metadata accessor for FormatInspectionItem(0);
  v16 = (v10 + *(v15 + 24));
  *v16 = v14;
  v16[1] = v13;
  v17 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  *(v9 + v8) = v49;
  v10[2] = 0;
  v10[3] = 0;
  v10[1] = v11;
  v18 = v10 + *(v15 + 28);
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = -1;
  v19 = *(*(v15 - 8) + 56);
  (v19)(v10, 0, 1, v15);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v9, v66);
  swift_setDeallocating();
  sub_1D615F660(v10, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(v51 + 56) = &type metadata for FormatInspectionGroup;
  *(v51 + 64) = &off_1F518B2C0;
  v20 = swift_allocObject();
  *(v51 + 32) = v20;
  v21 = v66[1];
  *(v20 + 16) = v66[0];
  *(v20 + 32) = v21;
  *(v20 + 48) = v67;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7279960;
  v23 = v22 + v8;
  v24 = sub_1D711F844(1701869908, 0xE400000000000000, 0x6F65646956, 0xE500000000000000, (v22 + v8));
  v19(v22 + v8, 0, 1, v15, v24);
  if (a2)
  {
    v25 = *(a2 + 56);

    v26 = sub_1D711B070(0x6168706C41, 0xE500000000000000, v25, (v23 + v50));
    v19(v23 + v50, 0, 1, v15, v26);
    v27 = v50;
    v28 = *(a2 + 64);
    sub_1D5D04BD4(v28);
  }

  else
  {
    v29 = sub_1D711B070(0x6168706C41, 0xE500000000000000, 0, (v23 + v50));
    v19(v23 + v50, 0, 1, v15, v29);
    v27 = v50;
    v28 = 0xF000000000000007;
  }

  sub_1D7125A4C(0x756F72676B636142, 0xEA0000000000646ELL, v28, v23 + 2 * v27);
  (v19)(v23 + 2 * v27, 0, 1, v15);
  if (a2)
  {
    v30 = *(a2 + 192);
    sub_1D5CFCFAC(v30);
    sub_1D711B4B4(0x6C6F4320746E6954, 0xEA0000000000726FLL, v30, (v23 + 3 * v27));
    (v19)(v23 + 3 * v27, 0, 1, v15);
    v31 = *(a2 + 200);
  }

  else
  {
    sub_1D711B4B4(0x6C6F4320746E6954, 0xEA0000000000726FLL, 0xF000000000000007, (v23 + 3 * v27));
    (v19)(v23 + 3 * v27, 0, 1, v15);
    v31 = 2;
  }

  sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, v31, (v23 + 4 * v27));
  (v19)(v23 + 4 * v27, 0, 1, v15);
  sub_1D6795150(2003134806, 0xE400000000000000, 0, 0, v22, v68);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v51 + 96) = &type metadata for FormatInspectionGroup;
  *(v51 + 104) = &off_1F518B2C0;
  v32 = swift_allocObject();
  *(v51 + 72) = v32;
  v33 = v68[1];
  *(v32 + 16) = v68[0];
  *(v32 + 32) = v33;
  *(v32 + 48) = v69;
  v64[6] = v76;
  v64[7] = v77;
  v64[8] = v78;
  v65 = v79;
  v64[2] = v72;
  v64[3] = v73;
  v64[4] = v74;
  v64[5] = v75;
  v64[0] = v70;
  v64[1] = v71;
  if (a2)
  {
    v34 = *(a2 + 80);
    v35 = *(a2 + 88);
    v36 = *(a2 + 96);
    sub_1D5ED34B0(v34, v35, v36);
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = -2;
  }

  *&v58 = v34;
  *(&v58 + 1) = v35;
  LOBYTE(v59) = v36;
  v37 = sub_1D6D9893C(v64, &v58);
  sub_1D5ED348C(v58, *(&v58 + 1), v59);
  *(v51 + 136) = &type metadata for FormatInspection;
  *(v51 + 144) = &off_1F51E3FD0;
  *(v51 + 112) = v37;
  if (a2)
  {
    v38 = *(a2 + 152);
    v60 = *(a2 + 136);
    v61 = v38;
    v62 = *(a2 + 168);
    v63 = *(a2 + 184);
    v39 = *(a2 + 120);
    v58 = *(a2 + 104);
    v59 = v39;
    sub_1D688911C(&v58, &v52, sub_1D615C3A4);
    v40 = v58;
    v41 = v59;
    v42 = v60;
    v43 = v61;
    v44 = v62;
    v45 = v63;
  }

  else
  {
    v40 = 0uLL;
    v45 = -2;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
  }

  v52 = v40;
  v53 = v41;
  v54 = v42;
  v55 = v43;
  v56 = v44;
  v57 = v45;
  v46 = sub_1D686F740(&v70, &v52);
  v60 = v54;
  v61 = v55;
  v62 = v56;
  v63 = v57;
  v58 = v52;
  v59 = v53;
  sub_1D615F660(&v58, sub_1D615C3A4);
  *(v51 + 176) = &type metadata for FormatInspection;
  *(v51 + 184) = &off_1F51E3FD0;
  *(v51 + 152) = v46;
  v47 = sub_1D7073500(v51);
  swift_setDeallocating();
  sub_1D5BFB8A8(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v47;
}

uint64_t sub_1D6889C4C()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x776F6C6C61736944;
  }

  v2 = *v0;
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](v2, v1);
  return 0xD00000000000001FLL;
}

uint64_t FeedSponsorshipBannerAd.init(identifier:sponsoredBanner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for FeedSponsorshipBannerAd(0) + 20);
  v7 = sub_1D72608BC();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t FeedSponsorshipBannerAd.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void FeedSponsorshipBannerAd.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t FeedSponsorshipBannerAd.sponsoredBanner.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedSponsorshipBannerAd(0) + 20);
  v4 = sub_1D72608BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double FeedSponsorshipBannerAd.groupItem.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1D6889ED4(v1, a1);
  type metadata accessor for FeedGroupItem(0);

  swift_storeEnumTagMultiPayload();
  return result;
}

uint64_t sub_1D6889ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedSponsorshipBannerAd(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1D6889F38@<D0>(uint64_t a1@<X8>)
{
  sub_1D6889ED4(v1, a1);
  type metadata accessor for FeedGroupItem(0);

  swift_storeEnumTagMultiPayload();
  return result;
}

uint64_t static FeedSponsorshipBannerAd.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

char *sub_1D6889FB8()
{
  v1 = sub_1D72608BC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedSponsorshipBannerAd(0);
  (*(v2 + 16))(v5, v0 + *(v6 + 20), v1);
  v7 = (*(v2 + 88))(v5, v1);
  if (v7 == *MEMORY[0x1E69B40B0])
  {
    v8 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    v11 = v10 + 1;
    v12 = "sponsored-banner-ad-unfilled";
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1D5B858EC((v9 > 1), v10 + 1, 1, v8);
    }

    v13 = 0xD00000000000001DLL;
LABEL_8:
    *(v8 + 2) = v11;
    v15 = &v8[16 * v10];
    *(v15 + 4) = v13;
    *(v15 + 5) = v12 | 0x8000000000000000;
    v16 = v8;
    (*(v2 + 8))(v5, v1);
    return v16;
  }

  if (v7 == *MEMORY[0x1E69B40A8])
  {
    v13 = 0xD00000000000001CLL;
    v8 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = *(v8 + 2);
    v14 = *(v8 + 3);
    v11 = v10 + 1;
    v12 = "Duplicate Group by Identifier, ";
    if (v10 >= v14 >> 1)
    {
      v8 = sub_1D5B858EC((v14 > 1), v10 + 1, 1, v8);
    }

    goto LABEL_8;
  }

  result = sub_1D72646BC();
  __break(1u);
  return result;
}

uint64_t sub_1D688A208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1D688A25C(uint64_t a1@<X1>, void *a2@<X8>)
{
  FeedCursorContainer.init(cursor:)();
  *a2 = v4;
  a2[1] = a1;
}

void sub_1D688A350(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1;
  sub_1D688A6DC(v6, v5);
}

uint64_t sub_1D688A3F0()
{

  v1 = *(v0 + qword_1EC88D500);
  v2 = *(v0 + qword_1EC88D500 + 8);

  return sub_1D5B74328(v1, v2);
}

uint64_t sub_1D688A460(uint64_t a1)
{

  v2 = *(a1 + qword_1EC88D500);
  v3 = *(a1 + qword_1EC88D500 + 8);

  return sub_1D5B74328(v2, v3);
}

uint64_t sub_1D688A4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1D688A554(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v1 = sub_1D726203C();
    v2 = [objc_opt_self() systemImageNamed_];

    if (v2)
    {
      return;
    }

    __break(1u);
  }

  v3 = sub_1D726203C();
  v4 = [objc_opt_self() systemImageNamed_];

  if (!v4)
  {
    __break(1u);
  }
}

void sub_1D688A608(char *a1, char *a2)
{
  v4 = *a2;
  v3 = (*&a1[qword_1EC88D4F0])(&v4);
  [a1 setImage_];
}

double sub_1D688A6DC(uint64_t a1, uint64_t a2)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v17 - v9;
  if ((*(v2 + qword_1EC88D4E8) & 0x8000000000000000) != 0)
  {
    v14 = *(v2 + qword_1EC88D4F8);

    sub_1D725972C();
    v14(v6);
    v12 = *(v4 + 8);
    v12(v6, v3);
    sub_1D725973C();
    v15 = *(v2 + qword_1EC88D500);
    if (v15)
    {
      sub_1D725972C();
      v15(v10);
      goto LABEL_6;
    }
  }

  else
  {
    v11 = *(v2 + qword_1EC88D4F8);

    sub_1D725B31C();
    v11(v6);
    v12 = *(v4 + 8);
    v12(v6, v3);
    sub_1D725B32C();
    v13 = *(v2 + qword_1EC88D500);
    if (v13)
    {
      sub_1D725B31C();
      v13(v10);
LABEL_6:

      v12(v10, v3);
      return result;
    }
  }

  return result;
}

void sub_1D688A968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  sub_1D688ABE4(0, v11, v12, v13);
  v15 = v14;
  v16 = objc_allocWithZone(v14);
  *&v16[qword_1EC88D4E8] = a1 | 0x8000000000000000;
  v17 = &v16[qword_1EC88D4F0];
  *v17 = sub_1D688ABC4;
  *(v17 + 1) = v10;
  v18 = &v16[qword_1EC88D4F8];
  *v18 = sub_1D688AE98;
  *(v18 + 1) = 0;
  v19 = &v16[qword_1EC88D500];
  *v19 = 0;
  *(v19 + 1) = 0;
  v26.receiver = v16;
  v26.super_class = v15;

  v20 = objc_msgSendSuper2(&v26, sel_init);
  sub_1D725972C();
  if (v25 == 1)
  {
    v21 = sub_1D726203C();
    v22 = [objc_opt_self() systemImageNamed_];

    if (v22)
    {
LABEL_5:

      [v20 setImage_];

      v24 = v20;
      [v24 setTarget_];
      [v24 setAction_];

      sub_1D725975C();

      return;
    }

    __break(1u);
  }

  v23 = sub_1D726203C();
  v22 = [objc_opt_self() systemImageNamed_];

  if (v22)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1D688ABE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EC88D608)
  {
    v4 = type metadata accessor for DebugFormatEditorBarButtonItem(0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EC88D608);
    }
  }
}

void sub_1D688AC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  sub_1D688ABE4(0, v11, v12, v13);
  v15 = v14;
  v16 = objc_allocWithZone(v14);
  *&v16[qword_1EC88D4E8] = a1;
  v17 = &v16[qword_1EC88D4F0];
  *v17 = sub_1D688AE94;
  *(v17 + 1) = v10;
  v18 = &v16[qword_1EC88D4F8];
  *v18 = sub_1D688AE98;
  *(v18 + 1) = 0;
  v19 = &v16[qword_1EC88D500];
  *v19 = 0;
  *(v19 + 1) = 0;
  v26.receiver = v16;
  v26.super_class = v15;

  v20 = objc_msgSendSuper2(&v26, sel_init);
  sub_1D725B31C();
  if (v25 == 1)
  {
    v21 = sub_1D726203C();
    v22 = [objc_opt_self() systemImageNamed_];

    if (v22)
    {
LABEL_5:

      [v20 setImage_];

      v24 = v20;
      [v24 setTarget_];
      [v24 setAction_];

      sub_1D725B35C();

      return;
    }

    __break(1u);
  }

  v23 = sub_1D726203C();
  v22 = [objc_opt_self() systemImageNamed_];

  if (v22)
  {
    goto LABEL_5;
  }

  __break(1u);
}

__n128 FeedItemSupplementaryAttributes.frame.getter()
{
  v1 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D688AFEC(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v7 = *(v4 + 5);
      v19[4] = *(v4 + 4);
      v19[5] = v7;
      v8 = *(v4 + 7);
      v19[6] = *(v4 + 6);
      v19[7] = v8;
      v9 = *(v4 + 1);
      v19[0] = *v4;
      v19[1] = v9;
      v10 = *(v4 + 3);
      v19[2] = *(v4 + 2);
      v19[3] = v10;
      v11 = *(v4 + 16);
      sub_1D6729D5C(v19);
      v12 = *(v11 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
      swift_beginAccess();
      v13 = *(v12 + 32);
      v17 = *(v12 + 16);
      v18 = v13;
    }

    else
    {
      sub_1D5BAA13C(0);
      v15 = &v4[*(v14 + 48)];
      v16 = *(v15 + 1);
      v17 = *v15;
      v18 = v16;
      sub_1D688B118(v4, type metadata accessor for InternalErrorViewLayout.Context);
    }

    return v17;
  }

  else
  {
    return *v4;
  }
}

uint64_t sub_1D688AFEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FeedItemSupplementaryAttributes.shouldIntegral.getter()
{
  v1 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D688AFEC(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = type metadata accessor for FeedItemSupplementaryAttributes;
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v6 = type metadata accessor for InternalErrorViewLayout.Context;
    }

    sub_1D688B118(v4, v6);
  }

  return 0;
}

uint64_t sub_1D688B118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FeedItemSupplementaryAttributes.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D688AFEC(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = *(v7 + 5);
      v22[4] = *(v7 + 4);
      v22[5] = v12;
      v13 = *(v7 + 7);
      v22[6] = *(v7 + 6);
      v22[7] = v13;
      v14 = *(v7 + 1);
      v22[0] = *v7;
      v22[1] = v14;
      v15 = *(v7 + 3);
      v22[2] = *(v7 + 2);
      v22[3] = v15;
      v16 = *(v7 + 16);
      sub_1D6729D5C(v22);
      v17 = *(*(v16 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 192);

      v18 = sub_1D725EF8C();
      v19 = MEMORY[0x1E69D8470];
      if (!v17)
      {
        v19 = MEMORY[0x1E69D8478];
      }

      return (*(*(v18 - 8) + 104))(a1, *v19, v18);
    }

    else
    {
      v20 = *MEMORY[0x1E69D8478];
      v21 = sub_1D725EF8C();
      (*(*(v21 - 8) + 104))(a1, v20, v21);
      return sub_1D688B118(v7, type metadata accessor for InternalErrorViewLayout.Context);
    }
  }

  else
  {
    v9 = *MEMORY[0x1E69D8470];
    v10 = sub_1D725EF8C();
    return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }
}

uint64_t FeedItemSupplementaryAttributes.ordering.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D688AFEC(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_1D688B118(v7, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_6:
    v16 = MEMORY[0x1E69D8680];
    goto LABEL_7;
  }

  v9 = *(v7 + 5);
  v20[4] = *(v7 + 4);
  v20[5] = v9;
  v10 = *(v7 + 7);
  v20[6] = *(v7 + 6);
  v20[7] = v10;
  v11 = *(v7 + 1);
  v20[0] = *v7;
  v20[1] = v11;
  v12 = *(v7 + 3);
  v20[2] = *(v7 + 2);
  v20[3] = v12;
  v13 = *(v7 + 16);
  sub_1D6729D5C(v20);
  v14 = *(v13 + 48);
  v15 = *(v13 + 56);

  if (v15)
  {
    goto LABEL_6;
  }

  *a1 = v14;
  v16 = MEMORY[0x1E69D8678];
LABEL_7:
  v17 = *v16;
  v18 = sub_1D725F3DC();
  return (*(*(v18 - 8) + 104))(a1, v17, v18);
}

uint64_t sub_1D688B4C4(uint64_t a1)
{
  v2 = sub_1D688BF0C(&qword_1EDF353E8, &protocol conformance descriptor for FeedItemSupplementaryAttributes);

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D688B51C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](v2, a2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D688AFEC(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = type metadata accessor for FeedItemSupplementaryAttributes;
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v7 = type metadata accessor for InternalErrorViewLayout.Context;
    }

    sub_1D688B118(v4, v7);
  }

  return 0;
}

uint64_t FeedItemSupplementaryAttributes.formatImageRequests(options:)(double *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D688AFEC(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = v7[1];
      v16[0] = *v7;
      v16[1] = v10;
      v11 = v7[3];
      v16[2] = v7[2];
      v16[3] = v11;
      v12 = v7[7];
      v16[6] = v7[6];
      v16[7] = v12;
      v13 = v7[5];
      v16[4] = v7[4];
      v16[5] = v13;
      sub_1D5EBA458(a1, *(&v16[0] + 1));
      v15 = v14;

      sub_1D6729D5C(v16);
      return v15;
    }

    else
    {
      sub_1D688B118(v7, type metadata accessor for InternalErrorViewLayout.Context);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D688B704(double *a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D688AFEC(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v7 = v4[1];
      v14[0] = *v4;
      v14[1] = v7;
      v8 = v4[3];
      v14[2] = v4[2];
      v14[3] = v8;
      v9 = v4[7];
      v14[6] = v4[6];
      v14[7] = v9;
      v10 = v4[5];
      v14[4] = v4[4];
      v14[5] = v10;
      sub_1D5EBA458(a1, *(&v14[0] + 1));
      v12 = v11;

      sub_1D6729D5C(v14);
      return v12;
    }

    sub_1D688B118(v4, type metadata accessor for InternalErrorViewLayout.Context);
  }

  return 0;
}

uint64_t FeedItemSupplementaryAttributes.pinTrait.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1D5BAAA78(0, &unk_1EDF439A0, MEMORY[0x1E69D8558]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v24 - v6;
  v8 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D688AFEC(v2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_1D688B118(v11, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_7:
    v22 = *MEMORY[0x1E69D8540];
    v23 = sub_1D725F15C();
    return (*(*(v23 - 8) + 104))(a1, v22, v23);
  }

  v13 = *(v11 + 5);
  v24[4] = *(v11 + 4);
  v24[5] = v13;
  v14 = *(v11 + 7);
  v24[6] = *(v11 + 6);
  v24[7] = v14;
  v15 = *(v11 + 1);
  v24[0] = *v11;
  v24[1] = v15;
  v16 = *(v11 + 3);
  v24[2] = *(v11 + 2);
  v24[3] = v16;
  v17 = *(v11 + 16);
  sub_1D6729D5C(v24);
  sub_1D68727B4(v17 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_pinTrait, v7, &unk_1EDF439A0, MEMORY[0x1E69D8558]);

  v18 = sub_1D725F15C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v7, 1, v18) != 1)
  {
    return (*(v19 + 32))(a1, v7, v18);
  }

  (*(v19 + 104))(a1, *MEMORY[0x1E69D8540], v18);
  result = (v20)(v7, 1, v18);
  if (result != 1)
  {
    return sub_1D6872B14(v7, &unk_1EDF439A0, MEMORY[0x1E69D8558]);
  }

  return result;
}

uint64_t FeedItemSupplementaryAttributes.rubberbandTrait.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1D5BAAA78(0, &qword_1EDF43998, MEMORY[0x1E69D86D0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v24 - v6;
  v8 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D688AFEC(v2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_1D688B118(v11, type metadata accessor for InternalErrorViewLayout.Context);
LABEL_7:
    v22 = *MEMORY[0x1E69D86C0];
    v23 = sub_1D725F49C();
    return (*(*(v23 - 8) + 104))(a1, v22, v23);
  }

  v13 = *(v11 + 5);
  v24[4] = *(v11 + 4);
  v24[5] = v13;
  v14 = *(v11 + 7);
  v24[6] = *(v11 + 6);
  v24[7] = v14;
  v15 = *(v11 + 1);
  v24[0] = *v11;
  v24[1] = v15;
  v16 = *(v11 + 3);
  v24[2] = *(v11 + 2);
  v24[3] = v16;
  v17 = *(v11 + 16);
  sub_1D6729D5C(v24);
  sub_1D68727B4(v17 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_rubberbandTrait, v7, &qword_1EDF43998, MEMORY[0x1E69D86D0]);

  v18 = sub_1D725F49C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v7, 1, v18) != 1)
  {
    return (*(v19 + 32))(a1, v7, v18);
  }

  (*(v19 + 104))(a1, *MEMORY[0x1E69D86C0], v18);
  result = (v20)(v7, 1, v18);
  if (result != 1)
  {
    return sub_1D6872B14(v7, &qword_1EDF43998, MEMORY[0x1E69D86D0]);
  }

  return result;
}

uint64_t FeedItemSupplementaryAttributes.groupLayoutKey.getter()
{
  v1 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D688AFEC(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v7 = v4[5];
      v12[4] = v4[4];
      v12[5] = v7;
      v8 = v4[7];
      v12[6] = v4[6];
      v12[7] = v8;
      v9 = v4[1];
      v12[0] = *v4;
      v12[1] = v9;
      v10 = v4[3];
      v12[2] = v4[2];
      v12[3] = v10;

      v11 = *&v12[0];

      sub_1D6729D5C(v12);
      return v11;
    }

    else
    {
      sub_1D688B118(v4, type metadata accessor for InternalErrorViewLayout.Context);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D688BF0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FeedItemSupplementaryAttributes(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D688BF50(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](v2, a2);
  v4 = (v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D688AFEC(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v7 = v4[5];
      v13[4] = v4[4];
      v13[5] = v7;
      v8 = v4[7];
      v13[6] = v4[6];
      v13[7] = v8;
      v9 = v4[1];
      v13[0] = *v4;
      v13[1] = v9;
      v10 = v4[3];
      v13[2] = v4[2];
      v13[3] = v10;

      v11 = *&v13[0];

      sub_1D6729D5C(v13);
      return v11;
    }

    sub_1D688B118(v4, type metadata accessor for InternalErrorViewLayout.Context);
  }

  return 0;
}

char *sub_1D688C048(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_1D725895C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8NewsFeed31FormatMicaSectionDecorationView_micaView;
  *&v5[v16] = [objc_allocWithZone(sub_1D725F90C()) initWithFrame_];
  v17 = &v5[OBJC_IVAR____TtC8NewsFeed31FormatMicaSectionDecorationView_token];
  sub_1D725894C();
  v18 = sub_1D725893C();
  v20 = v19;
  (*(v12 + 8))(v15, v11);
  *v17 = v18;
  v17[1] = v20;
  v21 = OBJC_IVAR____TtC8NewsFeed31FormatMicaSectionDecorationView_model;
  v22 = type metadata accessor for FormatMicaSectionDecorationItem(0);
  (*(*(v22 - 8) + 56))(&v5[v21], 1, 1, v22);
  v25.receiver = v5;
  v25.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  [v23 addSubview_];
  return v23;
}

uint64_t sub_1D688C558(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for FormatMicaSectionDecorationItem(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v35 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5BB2500(0, qword_1EDF1F920, type metadata accessor for FormatMicaSectionDecorationItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v34 - v14;
  v16 = sub_1D725895C();
  v17 = *(v16 - 8);
  *&v19 = MEMORY[0x1EEE9AC00](v16, v18).n128_u64[0];
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38.receiver = v2;
  v38.super_class = ObjectType;
  objc_msgSendSuper2(&v38, sel_applyLayoutAttributes_, a1, v19);
  sub_1D725894C();
  v22 = sub_1D725893C();
  v24 = v23;
  (*(v17 + 8))(v21, v16);
  v25 = v36;
  v26 = &v2[OBJC_IVAR____TtC8NewsFeed31FormatMicaSectionDecorationView_token];
  *v26 = v22;
  v26[1] = v24;

  v27 = *(v25 + 56);
  v27(v15, 1, 1, v5);
  v28 = OBJC_IVAR____TtC8NewsFeed31FormatMicaSectionDecorationView_model;
  swift_beginAccess();
  sub_1D688DB7C(v15, &v2[v28]);
  swift_endAccess();
  sub_1D72634AC();
  sub_1D725C9AC();
  result = swift_dynamicCastClass();
  if (result)
  {
    v30 = a1;
    sub_1D725C97C();
    if (!v37[3])
    {

      sub_1D688DC10(v37);
      v27(v11, 1, 1, v5);
      return sub_1D688D83C(v11);
    }

    sub_1D5B49474(0, &qword_1EC88D628, MEMORY[0x1E69D86E8]);
    v31 = swift_dynamicCast();
    v27(v11, v31 ^ 1u, 1, v5);
    if ((*(v25 + 48))(v11, 1, v5) == 1)
    {

      return sub_1D688D83C(v11);
    }

    v32 = v35;
    sub_1D688D8C8(v11, v35);
    sub_1D688DC98(v32, v15);
    v27(v15, 0, 1, v5);
    swift_beginAccess();
    sub_1D688DB7C(v15, &v2[v28]);
    swift_endAccess();
    sub_1D725F8DC();
    v37[0] = *v32;
    v33 = *(v5 + 20);

    sub_1D688C984(v37, v32 + v33);

    return sub_1D688D92C(v32);
  }

  return result;
}

void sub_1D688C984(uint64_t *a1, uint64_t a2)
{
  sub_1D5BB2500(0, &qword_1EDF3B668, MEMORY[0x1E69D78C0], MEMORY[0x1E69E6720]);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v35 - v8;
  v10 = sub_1D7261ACC();
  v11 = *(v10 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v10, v12).n128_u64[0];
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (*a1 < 0)
  {
    v30 = v16 & 0x7FFFFFFFFFFFFFFFLL;
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);
    v33 = [v2 traitCollection];
    v34 = [v33 userInterfaceStyle];

    if (v34 == 2)
    {
      aBlock[0] = v32;
    }

    else
    {
      aBlock[0] = v31;
    }

    sub_1D688C984(aBlock, a2);
  }

  else
  {
    v17 = *(v16 + 16);
    v38 = *&v2[OBJC_IVAR____TtC8NewsFeed31FormatMicaSectionDecorationView_token];
    v36 = a2;
    v18 = *&v2[OBJC_IVAR____TtC8NewsFeed31FormatMicaSectionDecorationView_token + 8];
    v37 = v17;

    v19 = v6;
    v20 = [v2 traitCollection];
    v35 = [v20 userInterfaceStyle];

    sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
    (*(v11 + 104))(v15, *MEMORY[0x1E69E7F88], v10);
    v21 = sub_1D72630CC();
    (*(v11 + 8))(v15, v10);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D688D988(v36, v9, &qword_1EDF3B668, MEMORY[0x1E69D78C0]);
    v23 = (*(v19 + 80) + 56) & ~*(v19 + 80);
    v24 = swift_allocObject();
    v26 = v37;
    v25 = v38;
    v24[2] = v37;
    v24[3] = v22;
    v24[4] = v25;
    v24[5] = v18;
    v24[6] = v35;
    sub_1D688DA08(v9, v24 + v23);
    aBlock[4] = sub_1D688DA9C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_50;
    v27 = _Block_copy(aBlock);
    v28 = v26;

    v29 = [v28 downloadIfNeededWithCompletionQueue:v21 completion:v27];
    _Block_release(v27);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D688CDD4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1D5BB2500(0, qword_1EDF1F920, type metadata accessor for FormatMicaSectionDecorationItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for FormatMicaSectionDecorationItem(0);
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v8, v10).n128_u64[0];
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_traitCollectionDidChange_, a1, v11);
  v14 = OBJC_IVAR____TtC8NewsFeed31FormatMicaSectionDecorationView_model;
  swift_beginAccess();
  sub_1D688D988(v1 + v14, v7, qword_1EDF1F920, type metadata accessor for FormatMicaSectionDecorationItem);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D688D83C(v7);
  }

  sub_1D688D8C8(v7, v13);
  v17 = *v13;
  v16 = *(v8 + 20);

  sub_1D688C984(&v17, v13 + v16);

  return sub_1D688D92C(v13);
}

uint64_t sub_1D688D084(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v35 = a3;
  v36 = a5;
  v37 = a2;
  v38 = a4;
  v7 = sub_1D72585BC();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = sub_1D7261ABC();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v40 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D7261B2C();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BB2500(0, &qword_1EDF3B668, MEMORY[0x1E69D78C0], MEMORY[0x1E69E6720]);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v33 - v18;
  sub_1D5B5A498(0, &qword_1EDF04348, 0x1E6979400);
  v20 = sub_1D726207C();
  v21 = sub_1D62020BC(a1, v20);
  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  v22 = sub_1D726308C();
  sub_1D688D988(v34, v19, &qword_1EDF3B668, MEMORY[0x1E69D78C0]);
  v23 = (*(v16 + 80) + 56) & ~*(v16 + 80);
  v24 = swift_allocObject();
  v25 = v38;
  v27 = v35;
  v26 = v36;
  v24[2] = v37;
  v24[3] = v27;
  v24[4] = v25;
  v24[5] = v26;
  v24[6] = v21;
  sub_1D688DA08(v19, v24 + v23);
  aBlock[4] = sub_1D688DAB4;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_11_1;
  v28 = _Block_copy(aBlock);

  v29 = v21;

  sub_1D7261AEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D5F5D6D4();
  sub_1D5BB2500(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D5F5D72C();
  v30 = v40;
  v31 = v43;
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v14, v30, v28);
  _Block_release(v28);

  (*(v42 + 8))(v30, v31);
  return (*(v39 + 8))(v14, v41);
}

void sub_1D688D6B8(uint64_t a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC8NewsFeed31FormatMicaSectionDecorationView_token) == a2 && *(Strong + OBJC_IVAR____TtC8NewsFeed31FormatMicaSectionDecorationView_token + 8) == a3;
    if (v11 || (sub_1D72646CC() & 1) != 0)
    {
      v12 = [v10 traitCollection];
      v13 = [v12 userInterfaceStyle];

      if (v13 == a4)
      {
        v14 = OBJC_IVAR____TtC8NewsFeed31FormatMicaSectionDecorationView_micaView;
        v15 = *&v10[OBJC_IVAR____TtC8NewsFeed31FormatMicaSectionDecorationView_micaView];
        sub_1D725F8EC();

        v16 = *&v10[v14];
        sub_1D725F8FC();

        v10 = v16;
      }
    }
  }
}

uint64_t sub_1D688D83C(uint64_t a1)
{
  sub_1D5BB2500(0, qword_1EDF1F920, type metadata accessor for FormatMicaSectionDecorationItem, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D688D8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatMicaSectionDecorationItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D688D92C(uint64_t a1)
{
  v2 = type metadata accessor for FormatMicaSectionDecorationItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D688D988(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5BB2500(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D688DA08(uint64_t a1, uint64_t a2)
{
  sub_1D5BB2500(0, &qword_1EDF3B668, MEMORY[0x1E69D78C0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D688DACC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  sub_1D5BB2500(0, &qword_1EDF3B668, MEMORY[0x1E69D78C0], MEMORY[0x1E69E6720]);
  v3 = *(v2 - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return a1(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D688DB7C(uint64_t a1, uint64_t a2)
{
  sub_1D5BB2500(0, qword_1EDF1F920, type metadata accessor for FormatMicaSectionDecorationItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D688DC10(uint64_t a1)
{
  sub_1D5BFB840(0, &qword_1EC88D620, &qword_1EC88D628, MEMORY[0x1E69D86E8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D688DC98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatMicaSectionDecorationItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D688DD04(uint64_t a1)
{
  v72 = a1;
  v2 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v71 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1D68A8C44(0, qword_1EDF22DE0, type metadata accessor for LiveActivityCommandContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v68 = &v67 - v8;
  v9 = sub_1D725C2AC();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68A8C44(0, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext, v5);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v67 - v15;
  v17 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v67 - v23);
  v25 = *v1;
  v26 = *(v1 + 8);
  v27 = *(v1 + 16);
  v28 = *(v1 + 24);
  v29 = *(v1 + 48);
  if (*(v1 + 50))
  {
    v30 = 8;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30 & 0xFFFFFFF8 | (v29 >> 11) & 7;
  if (v31 > 4)
  {
    if (v31 <= 6)
    {
      v40 = *v1;
      v41 = v88;
      if (v31 == 5)
      {
        sub_1D6B7BCEC(*(v72 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v73);
        if (!v41)
        {
          v1 = sub_1D6898BC4(&v73, v40);
          sub_1D5F2DF58(&v73);
        }
      }

      else
      {
        v1 = v72;
        sub_1D6B7B65C(*(v72 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v73);
        if (!v41)
        {
          v83[0] = v73;
          v83[1] = v74;
          v84 = v75;
          sub_1D6896A54(v83, v1, v40, v26, v27, v28, v73);
          v1 = v66;
          sub_1D62058A0(v83);
        }
      }
    }

    else
    {
      v35 = v88;
      if (v31 == 7)
      {
        v85[0] = *v1;
        v85[1] = v26;
        v85[2] = v27;
        v85[3] = v28;
        v86 = *(v1 + 32);
        v87 = v29 & 0xC7FF;
        v1 = v85;
        sub_1D68A62E4(v72);
        if (!v35)
        {
          v88 = 0;
          sub_1D725C29C();
          if (qword_1EDF3B000 != -1)
          {
            swift_once();
          }

          v46 = v68;
          v47 = v69;
          v48 = v70;
          (*(v69 + 16))(v68, v12, v70);
          v49 = type metadata accessor for LiveActivityCommandContext(0);
          v50 = *(v49 + 20);
          v51 = *MEMORY[0x1E69B6958];
          v52 = sub_1D725C1EC();
          (*(*(v52 - 8) + 104))(v46 + v50, v51, v52);
          (*(*(v49 - 8) + 56))(v46, 0, 1, v49);
          type metadata accessor for FormatCommandAction();
          swift_allocObject();

          v1 = sub_1D68ABD38(v53, v46);

          (*(v47 + 8))(v12, v48);
        }
      }

      else
      {
        if (v31 != 8)
        {
          v1 = *v1;
          v54 = v71;
          sub_1D6B7B210(*(v72 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v71);
          if (v35)
          {
            return v1;
          }

          if (v1)
          {
            if (qword_1EDF3AFA0 != -1)
            {
              swift_once();
            }

            v55 = qword_1EDF3AFA8;
            v56 = *(v54 + 56);
            type metadata accessor for FormatCommandAction();
            swift_allocObject();

            v57 = v56;
            v58 = sub_1D68AC870(v55, v56);
          }

          else
          {
            if (qword_1EDF3AE18 != -1)
            {
              swift_once();
            }

            v63 = qword_1EDF3AE20;
            v64 = *(v54 + 56);
            type metadata accessor for FormatCommandAction();
            swift_allocObject();

            v65 = v64;
            v58 = sub_1D68A9450(v63, v64, 257);
          }

          v1 = v58;

          v44 = type metadata accessor for FeedRecipe;
          v45 = v54;
          goto LABEL_56;
        }

        if (*v1)
        {
          if (*v1 == 1)
          {
            if (qword_1EDF16C08 != -1)
            {
              swift_once();
            }

            type metadata accessor for FormatCommandAction();
            swift_allocObject();

            v37 = sub_1D68AC420(v36, 1);
          }

          else
          {
            if (qword_1EDF16C20 != -1)
            {
              swift_once();
            }

            type metadata accessor for FormatCommandAction();
            swift_allocObject();

            v37 = sub_1D68AC648(v62, 1);
          }
        }

        else
        {
          if (qword_1EDF16BF0 != -1)
          {
            swift_once();
          }

          type metadata accessor for FormatCommandAction();
          swift_allocObject();

          v37 = sub_1D68AC1F8(v61, 1);
        }

        v1 = v37;
      }
    }
  }

  else
  {
    if (v31 > 1)
    {
      v32 = v88;
      v1 = v72;
      if (v31 != 2)
      {
        v33 = v25;
        if (v31 == 3)
        {
          sub_1D6B7C06C(*(v72 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v73);
          if (!v32)
          {
            v1 = sub_1D6896CAC(v74, v1, v33, v26, v27, v34);
            sub_1D5EE5B54(&v73);
          }
        }

        else
        {
          sub_1D6B7C1C8(*(v72 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v73);
          if (!v32)
          {
            v81[6] = v79;
            v82[0] = v80[0];
            *(v82 + 9) = *(v80 + 9);
            v81[2] = v75;
            v81[3] = v76;
            v81[4] = v77;
            v81[5] = v78;
            v81[0] = v73;
            v81[1] = v74;
            v1 = sub_1D68963C8(v81, v33);
            sub_1D5ECF320(v81);
          }
        }

        return v1;
      }

      sub_1D6B7C374(*(v72 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v20);
      if (v32)
      {
        return v1;
      }

      if (qword_1EDF3B0A0 != -1)
      {
        swift_once();
      }

      sub_1D68B021C(v20, v16, type metadata accessor for FeedHeadline);
      v42 = type metadata accessor for FeedHeadlineAudioCommandContext(0);
      (*(*(v42 - 8) + 56))(v16, 0, 1, v42);
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v1 = sub_1D68A9DE8(v43, v16);

      v44 = type metadata accessor for FeedHeadline;
      v45 = v20;
LABEL_56:
      sub_1D5D511FC(v45, v44);
      return v1;
    }

    v38 = v88;
    if (v31)
    {
      v1 = *v1;
      sub_1D6B7C374(*(v72 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v67 - v23);
      if (!v38)
      {
        v1 = sub_1D6898218(v24, v1, v59);
        sub_1D5D511FC(v24, type metadata accessor for FeedHeadline);
      }
    }

    else
    {
      v73.n128_u64[0] = *v1;
      v73.n128_u64[1] = v26;
      *&v74 = v27;
      BYTE8(v74) = v28;
      v1 = &v73;
      v39 = sub_1D6202538(v72);
      if (!v38)
      {
        return v39;
      }
    }
  }

  return v1;
}

uint64_t sub_1D688E6FC(uint64_t a1, char *a2)
{
  v91 = a2;
  v147 = a1;
  v3 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v90 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v89 - v24;
  v26 = *v2;
  v27 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
  v28 = *(v2 + 1);
  v29 = *(v2 + 2);
  v31 = *(v2 + 3);
  v30 = *(v2 + 4);
  v32 = *(v2 + 5);
  v33 = v2[48];
  switch((2 * v2[49]) | ((v33 & 8) != 0))
  {
    case 1:
      v35 = *v2;
      v76 = v92;
      sub_1D6B7C1C8(*(v147 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v122);
      if (!v76)
      {
        v119 = v128;
        v120[0] = v129[0];
        *(v120 + 9) = *(v129 + 9);
        v115 = v124;
        v116 = v125;
        v117 = v126;
        v118 = v127;
        v113 = v122;
        v114 = v123;
        v110 = v128;
        v111[0] = v129[0];
        *(v111 + 9) = *(v129 + 9);
        v106 = v124;
        v107 = v125;
        v108 = v126;
        v109 = v127;
        LOBYTE(v100) = v35;
        v104 = v122;
        v105 = v123;
        v35 = sub_1D6AD7608(&v104);
        sub_1D5ECF320(&v113);
      }

      break;
    case 2:
      v137 = *v2;
      v138 = v27;
      v140 = BYTE6(v27);
      v139 = WORD2(v27);
      v141 = v28;
      v142 = v29;
      v143 = v31;
      v144 = v30;
      v145 = v32;
      v146 = v33 & 0xF7;
      v35 = &v137;
      v59 = v92;
      v40 = sub_1D68911E8(v147, v91);
      if (!v59)
      {
        goto LABEL_14;
      }

      break;
    case 3:
    case 4:
      v34 = v26 | (v27 << 8);
      v35 = *(v2 + 1);
      v36 = v29;

      v37 = v34;
      v38 = v34;
      v39 = v92;
      v40 = sub_1D6F6EAAC(v147, v37, v35, v36, v38, v35, v36);
      if (!v39)
      {
LABEL_14:
        v35 = v40;
      }

      break;
    case 5:
      v35 = *v2;
      v58 = v92;
      sub_1D6B7C374(*(v147 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v21);
      if (!v58)
      {
        LOBYTE(v122) = v35;
        v35 = FormatAudioTrackBinding.Text.text(from:)(v21);
        v49 = type metadata accessor for FeedHeadline;
        v50 = v21;
        goto LABEL_34;
      }

      break;
    case 6:
      v35 = *v2;
      v51 = v147;
      v52 = v92;
      sub_1D6B7C06C(*(v147 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v122);
      if (!v52)
      {
        LOBYTE(v113) = v35;
        v53 = swift_allocObject();
        *(v53 + 16) = sub_1D68B04D0;
        *(v53 + 24) = v51;
        ObjectType = swift_getObjectType();
        swift_retain_n();
        v55 = swift_unknownObjectRetain();
        v35 = sub_1D6E410E4(v55, sub_1D68AF30C, v53, &v113, ObjectType);

        swift_unknownObjectRelease();

        sub_1D5EE5B54(&v122);
      }

      break;
    case 7:
      v35 = *v2;
      v77 = v92;
      sub_1D6B7BE60(*(v147 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v17);
      if (!v77)
      {
        LOBYTE(v122) = v35;
        v35 = FormatWebEmbedBinding.Text.text(from:)(v17);
        v49 = type metadata accessor for FeedWebEmbed;
        v50 = v17;
        goto LABEL_34;
      }

      break;
    case 8:
      v80 = *(v2 + 3);
      v81 = *(v2 + 4);
      v89 = *(v2 + 5);
      v82 = v29;
      v83 = v27;
      v84 = v28;
      v35 = v26;
      v85 = v147;
      v86 = v92;
      sub_1D6B7BCEC(*(v147 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v122);
      if (!v86)
      {
        LOBYTE(v113) = v35;
        *(&v113 + 1) = v83;
        BYTE7(v113) = BYTE6(v83);
        *(&v113 + 5) = WORD2(v83);
        *(&v113 + 1) = v84;
        *&v114 = v82;
        *(&v114 + 1) = v80;
        *&v115 = v81;
        *(&v115 + 1) = v89;
        LOBYTE(v116) = v33 & 0xF7;

        v35 = FormatPuzzleBinding.Text.text(from:computedContext:selectors:)(&v122, v91, sub_1D68B04D0, v85);

        sub_1D5F2DF58(&v122);
      }

      break;
    case 9:
      v63 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
      v64 = *(v2 + 1);
      v65 = *v2;
      v35 = v147;
      v66 = v92;
      sub_1D6B7BBAC(*(v147 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v100);
      if (!v66)
      {
        v99[0] = v100;
        v99[1] = v101;
        v99[2] = v102;
        v99[3] = v103;
        v93[0] = v100;
        v93[1] = v101;
        v93[2] = v102;
        v93[3] = v103;
        v67 = *(v35 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
        v113 = *(v35 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
        v114 = v67;
        v68 = *(v35 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
        v69 = *(v35 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
        v116 = *(v35 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
        v117 = v68;
        v115 = v69;
        v94 = v65;
        v97 = BYTE6(v63);
        v96 = WORD2(v63);
        v95 = v63;
        v98 = v64;
        *&v118 = *(v35 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
        v106 = v69;
        v107 = v116;
        v108 = *(v35 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
        *&v109 = *(v35 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
        v104 = v113;
        v105 = v67;
        sub_1D5CF6A5C(&v113, &v122);
        v35 = FormatPuzzleTypeBinding.Text.text(from:config:)(v93, &v104);
        v124 = v106;
        v125 = v107;
        v126 = v108;
        *&v127 = v109;
        v122 = v104;
        v123 = v105;
        sub_1D5D09C48(&v122);
        sub_1D5F2DE58(v99);
      }

      break;
    case 10:
      v35 = *v2;
      v79 = v92;
      sub_1D6B7B9A4(*(v147 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v13);
      if (!v79)
      {
        LOBYTE(v122) = v35;
        v35 = FormatPuzzleStatisticBinding.Text.text(from:)(v13);
        v49 = type metadata accessor for FeedPuzzleStatistic;
        v50 = v13;
        goto LABEL_34;
      }

      break;
    case 11:
      v35 = *v2;
      v56 = v92;
      sub_1D6B7B794(*(v147 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v9);
      if (!v56)
      {
        if (v35)
        {
          v57 = (v9 + *(v6 + 20) + 16);
        }

        else
        {
          v57 = v9;
        }

        v35 = *v57;

        v49 = type metadata accessor for FeedCustomItem;
        v50 = v9;
        goto LABEL_34;
      }

      break;
    case 12:
      v60 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
      v61 = *(v2 + 1);
      v35 = *v2;
      v62 = v92;
      sub_1D6B7B65C(*(v147 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v122);
      if (!v62)
      {
        LOBYTE(v113) = v35;
        BYTE7(v113) = BYTE6(v60);
        *(&v113 + 5) = WORD2(v60);
        *(&v113 + 1) = v60;
        BYTE8(v113) = v61;
        sub_1D67CEAD8(&v122);
        v35 = v88;
        swift_unknownObjectRelease();
      }

      break;
    case 13:
      v35 = *v2;
      v78 = v92;
      sub_1D6B7B418(*(v147 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v122);
      if (!v78)
      {
        v120[5] = v133;
        v120[6] = v134;
        v120[7] = v135;
        v120[1] = v129[1];
        v120[2] = v130;
        v120[3] = v131;
        v120[4] = v132;
        v117 = v126;
        v118 = v127;
        v119 = v128;
        v120[0] = v129[0];
        v113 = v122;
        v114 = v123;
        v115 = v124;
        v116 = v125;
        v111[5] = v133;
        v111[6] = v134;
        v111[7] = v135;
        v111[1] = v129[1];
        v111[2] = v130;
        v111[3] = v131;
        v111[4] = v132;
        v108 = v126;
        v109 = v127;
        v110 = v128;
        v111[0] = v129[0];
        v104 = v122;
        v105 = v123;
        v121 = v136;
        LOBYTE(v100) = v35;
        v112 = v136;
        v106 = v124;
        v107 = v125;

        v35 = FormatPaywallBinding.Text.text(from:selectors:)(&v104, sub_1D68B04D0);

        sub_1D5F2DFAC(&v113);
      }

      break;
    case 14:
      v41 = *(v2 + 3);
      v42 = *(v2 + 4);
      v89 = *(v2 + 5);
      v43 = v29;
      v44 = v27;
      v45 = v28;
      v35 = v26;
      v46 = v147;
      v47 = v90;
      v48 = v92;
      sub_1D6B7B210(*(v147 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v90);
      if (!v48)
      {
        LOBYTE(v122) = v35;
        *(&v122 + 1) = v44;
        BYTE7(v122) = BYTE6(v44);
        *(&v122 + 5) = WORD2(v44);
        *(&v122 + 1) = v45;
        *&v123 = v43;
        *(&v123 + 1) = v41;
        *&v124 = v42;
        *(&v124 + 1) = v89;

        v35 = sub_1D7006CB0(v47, sub_1D68B04D0, v46);

        v49 = type metadata accessor for FeedRecipe;
        v50 = v47;
LABEL_34:
        sub_1D5D511FC(v50, v49);
      }

      break;
    default:
      v70 = *(v2 + 3);
      v89 = *(v2 + 5);
      v90 = v30;
      v71 = v29;
      v72 = v27;
      v73 = v28;
      v35 = v26;
      v74 = v147;
      v75 = v92;
      sub_1D6B7C374(*(v147 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v25);
      if (!v75)
      {
        LOBYTE(v122) = v35;
        *(&v122 + 1) = v72;
        BYTE7(v122) = BYTE6(v72);
        *(&v122 + 5) = WORD2(v72);
        *(&v122 + 1) = v73;
        *&v123 = v71;
        *(&v123 + 1) = v70;
        *&v124 = v90;
        *(&v124 + 1) = v89;
        LOBYTE(v125) = v33 & 0xF7;

        v35 = FormatHeadlineBinding.Text.text(from:computedContext:selectors:)(v25, v91, sub_1D68B04D0, v74);

        sub_1D5D511FC(v25, type metadata accessor for FeedHeadline);
      }

      break;
  }

  return v35;
}

uint64_t sub_1D688F2A4(uint64_t a1, char *a2)
{
  v107 = a2;
  v110 = a1;
  v105 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v105, v3);
  v106 = (&v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D68A8C44(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *(&v109 + 1) = &v102 - v7;
  v8 = type metadata accessor for FormatOption(0);
  v108 = *(v8 - 8);
  *&v109 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v104 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v103 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v102 - v32;
  v34 = *v2;
  v35 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
  v37 = *(v2 + 1);
  v36 = *(v2 + 2);
  v39 = *(v2 + 3);
  v38 = *(v2 + 4);
  v40 = *(v2 + 5);
  v41 = v2[48];
  switch((2 * v2[49]) | ((v41 & 8) != 0))
  {
    case 1:
      v48 = *v2;
      v87 = v165;
      sub_1D6B7C1C8(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v140);
      if (!v87)
      {
        v137 = v146;
        v138[0] = v147[0];
        *(v138 + 9) = *(v147 + 9);
        v133 = v142;
        v134 = v143;
        v135 = v144;
        v136 = v145;
        v131 = v140;
        v132 = v141;
        v128 = v146;
        v129[0] = v147[0];
        *(v129 + 9) = *(v147 + 9);
        v124 = v142;
        v125 = v143;
        v126 = v144;
        v127 = v145;
        LOBYTE(v118) = v48;
        v122 = v140;
        v123 = v141;
        v48 = sub_1D6AD7608(&v122);
        sub_1D5ECF320(&v131);
      }

      break;
    case 2:
      v155 = *v2;
      v156 = v35;
      v158 = BYTE6(v35);
      v157 = WORD2(v35);
      v159 = v37;
      v160 = v36;
      v161 = v39;
      v162 = v38;
      v163 = v40;
      v164 = v41 & 0xF7;
      v48 = &v155;
      v69 = v165;
      v70 = sub_1D6891E18(v110, v107);
      if (!v69)
      {
        v48 = v70;
      }

      break;
    case 3:
    case 4:
      v42 = *(v2 + 2);
      v43 = v34 | (v35 << 8);
      v44 = v110;

      v45 = *(&v109 + 1);
      v46 = v37;
      FormatOptionCollection.subscript.getter(v43, v37, *(&v109 + 1));
      if ((*(v108 + 48))(v45, 1, v109) == 1)
      {
        sub_1D68AF29C(v45, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v47 = v106;
        *v106 = v43;
        *(v47 + 8) = v37;
        swift_storeEnumTagMultiPayload();
        v48 = *(v44 + 48);
        sub_1D68ADD5C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        v49 = swift_allocError();
        sub_1D68B021C(v47, v50, type metadata accessor for FormatLayoutError);
        if (v48)
        {
          *&v140 = 0x3A676E697373694DLL;
          *(&v140 + 1) = 0xEB000000007B7B20;
          MEMORY[0x1DA6F9910](v43, v37);
          MEMORY[0x1DA6F9910](32125, 0xE200000000000000);
          v48 = v140;
          sub_1D5D511FC(v47, type metadata accessor for FormatLayoutError);
        }

        else
        {
          swift_willThrow();
          sub_1D5D511FC(v47, type metadata accessor for FormatLayoutError);
        }
      }

      else
      {

        v98 = v104;
        sub_1D5D5E40C(v45, v104, type metadata accessor for FormatOption);
        v48 = *(v98 + 16);

        v99 = v165;
        sub_1D6B755A8(v44, &v140);
        if (!v99)
        {

          v48 = sub_1D6B7FCB4(v140, v43, v46, v42, v44);
        }

        sub_1D5D511FC(v98, type metadata accessor for FormatOption);
      }

      break;
    case 5:
      v48 = *v2;
      v68 = v165;
      sub_1D6B7C374(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), v29);
      if (!v68)
      {
        LOBYTE(v140) = v48;
        v48 = FormatAudioTrackBinding.Text.text(from:)(v29);
        v59 = type metadata accessor for FeedHeadline;
        v60 = v29;
        goto LABEL_39;
      }

      break;
    case 6:
      v48 = *v2;
      v61 = v110;
      v62 = v165;
      sub_1D6B7C06C(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v140);
      if (!v62)
      {
        LOBYTE(v131) = v48;
        v63 = swift_allocObject();
        *(v63 + 16) = sub_1D68B04D4;
        *(v63 + 24) = v61;
        ObjectType = swift_getObjectType();
        swift_retain_n();
        v65 = swift_unknownObjectRetain();
        v48 = sub_1D6E410E4(v65, sub_1D68B04F0, v63, &v131, ObjectType);

        swift_unknownObjectRelease();

        sub_1D5EE5B54(&v140);
      }

      break;
    case 7:
      v48 = *v2;
      v88 = v165;
      sub_1D6B7BE60(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), v25);
      if (!v88)
      {
        LOBYTE(v140) = v48;
        v48 = FormatWebEmbedBinding.Text.text(from:)(v25);
        v59 = type metadata accessor for FeedWebEmbed;
        v60 = v25;
        goto LABEL_39;
      }

      break;
    case 8:
      v91 = *(v2 + 3);
      v92 = *(v2 + 4);
      *(&v109 + 1) = *(v2 + 5);
      v93 = v36;
      v94 = v35;
      v95 = v37;
      v48 = v34;
      v96 = v110;
      v97 = v165;
      sub_1D6B7BCEC(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v140);
      if (!v97)
      {
        LOBYTE(v131) = v48;
        *(&v131 + 1) = v94;
        BYTE7(v131) = BYTE6(v94);
        *(&v131 + 5) = WORD2(v94);
        *(&v131 + 1) = v95;
        *&v132 = v93;
        *(&v132 + 1) = v91;
        *&v133 = v92;
        *(&v133 + 1) = *(&v109 + 1);
        LOBYTE(v134) = v41 & 0xF7;

        v48 = FormatPuzzleBinding.Text.text(from:computedContext:selectors:)(&v140, v107, sub_1D68B04D4, v96);

        sub_1D5F2DF58(&v140);
      }

      break;
    case 9:
      v74 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
      v75 = *(v2 + 1);
      v76 = *v2;
      v48 = v110;
      v77 = v165;
      sub_1D6B7BBAC(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v118);
      if (!v77)
      {
        v117[0] = v118;
        v117[1] = v119;
        v117[2] = v120;
        v117[3] = v121;
        v111[0] = v118;
        v111[1] = v119;
        v111[2] = v120;
        v111[3] = v121;
        v78 = *(v48 + 64);
        v131 = *(v48 + 48);
        v132 = v78;
        v79 = *(v48 + 112);
        v80 = *(v48 + 80);
        v134 = *(v48 + 96);
        v135 = v79;
        v133 = v80;
        v112 = v76;
        v115 = BYTE6(v74);
        v114 = WORD2(v74);
        v113 = v74;
        v116 = v75;
        *&v136 = *(v48 + 128);
        v124 = v80;
        v125 = v134;
        v126 = *(v48 + 112);
        *&v127 = *(v48 + 128);
        v122 = v131;
        v123 = v78;
        sub_1D5CF6A5C(&v131, &v140);
        v48 = FormatPuzzleTypeBinding.Text.text(from:config:)(v111, &v122);
        v142 = v124;
        v143 = v125;
        v144 = v126;
        *&v145 = v127;
        v140 = v122;
        v141 = v123;
        sub_1D5D09C48(&v140);
        sub_1D5F2DE58(v117);
      }

      break;
    case 10:
      v48 = *v2;
      v90 = v165;
      sub_1D6B7B9A4(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), v21);
      if (!v90)
      {
        LOBYTE(v140) = v48;
        v48 = FormatPuzzleStatisticBinding.Text.text(from:)(v21);
        v59 = type metadata accessor for FeedPuzzleStatistic;
        v60 = v21;
        goto LABEL_39;
      }

      break;
    case 11:
      v48 = *v2;
      v66 = v165;
      sub_1D6B7B794(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), v17);
      if (!v66)
      {
        if (v48)
        {
          v67 = (v17 + *(v14 + 20) + 16);
        }

        else
        {
          v67 = v17;
        }

        v48 = *v67;

        sub_1D5D511FC(v17, type metadata accessor for FeedCustomItem);
      }

      break;
    case 12:
      v71 = *(v2 + 1) | ((*(v2 + 5) | (v2[7] << 16)) << 32);
      v72 = *(v2 + 1);
      v48 = *v2;
      v73 = v165;
      sub_1D6B7B65C(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v140);
      if (!v73)
      {
        LOBYTE(v131) = v48;
        BYTE7(v131) = BYTE6(v71);
        *(&v131 + 5) = WORD2(v71);
        *(&v131 + 1) = v71;
        BYTE8(v131) = v72;
        sub_1D67CEAD8(&v140);
        v48 = v101;
        swift_unknownObjectRelease();
      }

      break;
    case 13:
      v48 = *v2;
      v89 = v165;
      sub_1D6B7B418(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v140);
      if (!v89)
      {
        v138[5] = v151;
        v138[6] = v152;
        v138[7] = v153;
        v138[1] = v147[1];
        v138[2] = v148;
        v138[3] = v149;
        v138[4] = v150;
        v135 = v144;
        v136 = v145;
        v137 = v146;
        v138[0] = v147[0];
        v131 = v140;
        v132 = v141;
        v133 = v142;
        v134 = v143;
        v129[5] = v151;
        v129[6] = v152;
        v129[7] = v153;
        v129[1] = v147[1];
        v129[2] = v148;
        v129[3] = v149;
        v129[4] = v150;
        v126 = v144;
        v127 = v145;
        v128 = v146;
        v129[0] = v147[0];
        v122 = v140;
        v123 = v141;
        v139 = v154;
        LOBYTE(v118) = v48;
        v130 = v154;
        v124 = v142;
        v125 = v143;

        v48 = FormatPaywallBinding.Text.text(from:selectors:)(&v122, sub_1D68B04D4);

        sub_1D5F2DFAC(&v131);
      }

      break;
    case 14:
      v51 = *(v2 + 3);
      v52 = *(v2 + 4);
      *(&v109 + 1) = *(v2 + 5);
      v53 = v36;
      v54 = v35;
      v55 = v37;
      v48 = v34;
      v56 = v110;
      v57 = v103;
      v58 = v165;
      sub_1D6B7B210(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), v103);
      if (!v58)
      {
        LOBYTE(v140) = v48;
        *(&v140 + 1) = v54;
        BYTE7(v140) = BYTE6(v54);
        *(&v140 + 5) = WORD2(v54);
        *(&v140 + 1) = v55;
        *&v141 = v53;
        *(&v141 + 1) = v51;
        *&v142 = v52;
        *(&v142 + 1) = *(&v109 + 1);

        v48 = sub_1D7006CB0(v57, sub_1D68B04D4, v56);

        v59 = type metadata accessor for FeedRecipe;
        v60 = v57;
        goto LABEL_39;
      }

      break;
    default:
      v81 = *(v2 + 3);
      *&v109 = *(v2 + 4);
      *(&v109 + 1) = v40;
      v82 = v36;
      v83 = v35;
      v84 = v37;
      v48 = v34;
      v85 = v110;
      v86 = v165;
      sub_1D6B7C374(*(v110 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), v33);
      if (!v86)
      {
        LOBYTE(v140) = v48;
        *(&v140 + 1) = v83;
        BYTE7(v140) = BYTE6(v83);
        *(&v140 + 5) = WORD2(v83);
        *(&v140 + 1) = v84;
        *&v141 = v82;
        *(&v141 + 1) = v81;
        v142 = v109;
        LOBYTE(v143) = v41 & 0xF7;

        v48 = FormatHeadlineBinding.Text.text(from:computedContext:selectors:)(v33, v107, sub_1D68B04D4, v85);

        v59 = type metadata accessor for FeedHeadline;
        v60 = v33;
LABEL_39:
        sub_1D5D511FC(v60, v59);
      }

      break;
  }

  return v48;
}