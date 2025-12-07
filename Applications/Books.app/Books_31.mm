uint64_t sub_10043AA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE0C00, &unk_1008214B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10043AB00(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE0C00, &unk_1008214B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10043AB68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE0C00, &unk_1008214B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ThemeStateOverlayView(uint64_t a1)
{
  result = qword_100AE3668;
  if (!qword_100AE3668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10043AC4C(uint64_t a1)
{
  sub_10079F244();
  if (v1 <= 0x3F)
  {
    sub_100247D70(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10043ACFC(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079F174();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_10079F194();
  (*(v5 + 104))(v7, enum case for BookThemeViewModel.OverlayState.cloud(_:), v4);
  v11 = sub_10079F164();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  if (sub_10079F1C4())
  {
    v13 = sub_10079F144() ^ 1;
  }

  else
  {
    v13 = 0;
  }

  *a1 = sub_10079E444();
  a1[1] = v14;
  v15 = sub_1001F1160(&qword_100AE36B0, &qword_1008259F8);
  sub_10043AE98(v2, v13 & 1, v11 & 1, a1 + *(v15 + 44));
}

void sub_10043AE98(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v23 = a1;
  v5 = sub_1001F1160(&qword_100AE36B8, &qword_100825A00);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_1001F1160(&qword_100AE36C0, &qword_100825A08);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  __chkstk_darwin(v15);
  v17 = &v23 - v16;
  v18 = sub_10079DDC4();
  *v7 = sub_10079CB24();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v19 = &v7[*(sub_1001F1160(&qword_100AE36C8, &qword_100825A10) + 44)];
  *v19 = sub_10079C8F4();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = sub_1001F1160(&qword_100AE36D0, &qword_100825A18);
  sub_10043B114(v23, v24, &v19[*(v20 + 44)]);
  if (v25)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 2.0;
  }

  sub_10020B3C8(v7, v14, &qword_100AE36B8, &qword_100825A00);
  *&v14[*(v9 + 44)] = v21;
  sub_10020B3C8(v14, v17, &qword_100AE36C0, &qword_100825A08);
  sub_1000077D8(v17, v11, &qword_100AE36C0, &qword_100825A08);
  *a4 = v18;
  *(a4 + 8) = 256;
  *(a4 + 16) = 0x3FF0000000000000;
  v22 = sub_1001F1160(&qword_100AE36D8, &qword_100825A20);
  sub_1000077D8(v11, a4 + *(v22 + 48), &qword_100AE36C0, &qword_100825A08);

  sub_100007840(v17, &qword_100AE36C0, &qword_100825A08);
  sub_100007840(v11, &qword_100AE36C0, &qword_100825A08);
}

uint64_t sub_10043B114@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v194 = a2;
  v204 = a3;
  v179 = sub_1001F1160(&qword_100AE36E0, &qword_100825A28);
  __chkstk_darwin(v179);
  v180 = v156 - v4;
  v199 = sub_1001F1160(&qword_100AE36E8, &unk_100825A30);
  __chkstk_darwin(v199);
  v181 = v156 - v5;
  v169 = sub_1001F1160(&qword_100AEE330, &unk_10083E850);
  v168 = *(v169 - 8);
  __chkstk_darwin(v169);
  v167 = v156 - v6;
  v166 = sub_1001F1160(&qword_100AE36F0, &qword_100825A40);
  __chkstk_darwin(v166);
  v171 = v156 - v7;
  v165 = sub_1001F1160(&qword_100AE36F8, &qword_100825A48);
  __chkstk_darwin(v165);
  v172 = v156 - v8;
  v170 = sub_1001F1160(&qword_100AE3700, &qword_100825A50);
  __chkstk_darwin(v170);
  v174 = v156 - v9;
  v173 = sub_1001F1160(&qword_100AE3708, &qword_100825A58);
  __chkstk_darwin(v173);
  v176 = v156 - v10;
  v178 = sub_1001F1160(&qword_100AE3710, &unk_100825A60);
  __chkstk_darwin(v178);
  v175 = v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v177 = v156 - v13;
  v14 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v14 - 8);
  v188 = v156 - v15;
  v191 = sub_10079D4D4();
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v187 = v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1001F1160(&qword_100AD1CD8, &unk_10080B710);
  __chkstk_darwin(v189);
  v182 = (v156 - v17);
  v192 = sub_1001F1160(&qword_100AD1CC8, &qword_10080B708);
  __chkstk_darwin(v192);
  v185 = v156 - v18;
  v193 = sub_1001F1160(&qword_100AD1CA8, &qword_100825A70);
  __chkstk_darwin(v193);
  v163 = (v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v184 = v156 - v21;
  v197 = sub_1001F1160(&qword_100AE3718, &qword_100825A78);
  __chkstk_darwin(v197);
  v162 = v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v164 = v156 - v24;
  __chkstk_darwin(v25);
  v183 = v156 - v26;
  __chkstk_darwin(v27);
  v186 = v156 - v28;
  v205 = sub_1001F1160(&qword_100AE3720, &qword_100825A80);
  __chkstk_darwin(v205);
  v203 = v156 - v29;
  v200 = sub_1001F1160(&qword_100AE3728, &qword_100825A88);
  __chkstk_darwin(v200);
  v31 = v156 - v30;
  v32 = sub_1001F1160(&qword_100AE3730, &qword_100825A90);
  __chkstk_darwin(v32);
  v34 = v156 - v33;
  v198 = sub_1001F1160(&qword_100AE3738, &qword_100825A98);
  __chkstk_darwin(v198);
  v36 = v156 - v35;
  v201 = sub_1001F1160(&qword_100AE3740, &qword_100825AA0);
  __chkstk_darwin(v201);
  v38 = v156 - v37;
  v39 = sub_10079F174();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = v156 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1001F1160(&qword_100AE3748, &qword_100825AA8);
  __chkstk_darwin(v43 - 8);
  v202 = v156 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = v156 - v46;
  v196 = a1;
  v195 = *a1;
  sub_10079F194();
  v48 = (*(v40 + 88))(v42, v39);
  if (v48 == enum case for BookThemeViewModel.OverlayState.none(_:))
  {
    swift_storeEnumTagMultiPayload();
    sub_10043CD78();
    sub_10079CCA4();
    sub_1000077D8(v36, v31, &qword_100AE3738, &qword_100825A98);
    swift_storeEnumTagMultiPayload();
    sub_10043CCEC();
    sub_10043CE04();
    sub_10079CCA4();
    sub_100007840(v36, &qword_100AE3738, &qword_100825A98);
    sub_1000077D8(v38, v203, &qword_100AE3740, &qword_100825AA0);
    swift_storeEnumTagMultiPayload();
    sub_10043CC60();
    sub_10079CCA4();
    sub_100007840(v38, &qword_100AE3740, &qword_100825AA0);
  }

  else
  {
    v156[1] = v32;
    v157 = v34;
    v158 = v36;
    v159 = v31;
    v160 = v38;
    v161 = v47;
    if (v48 == enum case for BookThemeViewModel.OverlayState.cloud(_:))
    {
      v49 = sub_10079DF24();
      v50 = v190;
      v51 = v187;
      v52 = v191;
      (*(v190 + 104))(v187, enum case for Font.TextStyle.caption(_:), v191);
      v53 = sub_10079D3A4();
      v54 = v188;
      (*(*(v53 - 8) + 56))(v188, 1, 1, v53);
      sub_10079D3F4();
      v55 = sub_10079D434();
      sub_100007840(v54, &unk_100AD1FC0, &unk_10080B850);
      (*(v50 + 8))(v51, v52);
      KeyPath = swift_getKeyPath();
      v57 = v182;
      v58 = (v182 + *(v189 + 36));
      v59 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
      v60 = enum case for Image.Scale.medium(_:);
      v61 = sub_10079DF84();
      (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
      *v58 = swift_getKeyPath();
      *v57 = v49;
      v57[1] = KeyPath;
      v57[2] = v55;
      if (v194)
      {
        sub_10079F1E4();
        sub_10079DEA4();
        v62 = sub_10079DE24();
      }

      else
      {
        v62 = sub_10079F1D4();
      }

      v47 = v161;
      v65 = v159;
      v66 = v158;
      v67 = swift_getKeyPath();
      v68 = v185;
      sub_10020B3C8(v57, v185, &qword_100AD1CD8, &unk_10080B710);
      v69 = (v68 + *(v192 + 36));
      *v69 = v67;
      v69[1] = v62;
      type metadata accessor for ThemeStateOverlayView(0);
      sub_1001F1160(&qword_100AD6BC0, &unk_100825980);
      v70 = v196;
      sub_10079BDF4();
      sub_10079BDF4();
      sub_10079E474();
      sub_10079BE54();
      v71 = v184;
      sub_10020B3C8(v68, v184, &qword_100AD1CC8, &qword_10080B708);
      v72 = (v71 + *(v193 + 36));
      v73 = v207;
      *v72 = v206;
      v72[1] = v73;
      v72[2] = v208;
      v75 = v70[1];
      v74 = v70[2];
      v76 = sub_10079D294();
      v77 = v71;
      v78 = v183;
      sub_10020B3C8(v77, v183, &qword_100AD1CA8, &qword_100825A70);
      v79 = v78 + *(v197 + 36);
      *v79 = v76;
      *(v79 + 8) = v74;
      *(v79 + 16) = 0;
      *(v79 + 24) = 0;
      *(v79 + 32) = v75;
      *(v79 + 40) = 0;
      v80 = v186;
      sub_10020B3C8(v78, v186, &qword_100AE3718, &qword_100825A78);
      sub_1000077D8(v80, v157, &qword_100AE3718, &qword_100825A78);
      swift_storeEnumTagMultiPayload();
      sub_10043CD78();
      sub_10079CCA4();
      sub_1000077D8(v66, v65, &qword_100AE3738, &qword_100825A98);
      swift_storeEnumTagMultiPayload();
      sub_10043CCEC();
      sub_10043CE04();
      v81 = v160;
      sub_10079CCA4();
      sub_100007840(v66, &qword_100AE3738, &qword_100825A98);
      sub_1000077D8(v81, v203, &qword_100AE3740, &qword_100825AA0);
      swift_storeEnumTagMultiPayload();
      sub_10043CC60();
      sub_10079CCA4();
      sub_100007840(v81, &qword_100AE3740, &qword_100825AA0);
      sub_100007840(v80, &qword_100AE3718, &qword_100825A78);
    }

    else if (v48 == enum case for BookThemeViewModel.OverlayState.spinner(_:))
    {
      v63 = v167;
      sub_10079BDC4();
      if (v194)
      {
        _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
        v64 = sub_10079DE24();
      }

      else
      {
        v64 = 0;
      }

      v47 = v161;
      v120 = v176;
      v121 = swift_getKeyPath();
      v122 = v171;
      (*(v168 + 32))(v171, v63, v169);
      v123 = (v122 + *(v166 + 36));
      *v123 = v121;
      v123[1] = v64;
      v124 = v172;
      v125 = &v172[*(v165 + 36)];
      v126 = *(sub_1001F1160(&unk_100ADB9A0, &qword_100825AC0) + 28);
      v127 = enum case for ControlSize.small(_:);
      v128 = sub_10079BC54();
      (*(*(v128 - 8) + 104))(v125 + v126, v127, v128);
      *v125 = swift_getKeyPath();
      sub_10020B3C8(v122, v124, &qword_100AE36F0, &qword_100825A40);
      sub_10079F1E4();
      v129 = sub_10079DEA4();
      v130 = swift_getKeyPath();
      v131 = v124;
      v132 = v174;
      sub_10020B3C8(v131, v174, &qword_100AE36F8, &qword_100825A48);
      v133 = (v132 + *(v170 + 36));
      *v133 = v130;
      v133[1] = v129;
      type metadata accessor for ThemeStateOverlayView(0);
      sub_1001F1160(&qword_100AD6BC0, &unk_100825980);
      sub_10079BDF4();
      sub_10079BDF4();
      sub_10079E474();
      sub_10079BE54();
      sub_10020B3C8(v132, v120, &qword_100AE3700, &qword_100825A50);
      v134 = (v120 + *(v173 + 36));
      v135 = v207;
      *v134 = v206;
      v134[1] = v135;
      v134[2] = v208;
      sub_1001F1160(&qword_100AE17F0, &qword_100822890);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10080EFF0;
      LOBYTE(v126) = sub_10079D2A4();
      *(inited + 32) = v126;
      v137 = sub_10079D2E4();
      *(inited + 33) = v137;
      v138 = sub_10079D2D4();
      sub_10079D2D4();
      if (sub_10079D2D4() != v126)
      {
        v138 = sub_10079D2D4();
      }

      sub_10079D2D4();
      if (sub_10079D2D4() != v137)
      {
        v138 = sub_10079D2D4();
      }

      sub_10079BBA4();
      v140 = v139;
      v142 = v141;
      v144 = v143;
      v146 = v145;
      v147 = v175;
      sub_10020B3C8(v120, v175, &qword_100AE3708, &qword_100825A58);
      v148 = v147 + *(v178 + 36);
      *v148 = v138;
      *(v148 + 8) = v140;
      *(v148 + 16) = v142;
      *(v148 + 24) = v144;
      *(v148 + 32) = v146;
      *(v148 + 40) = 0;
      v149 = v177;
      sub_10020B3C8(v147, v177, &qword_100AE3710, &unk_100825A60);
      sub_1000077D8(v149, v180, &qword_100AE3710, &unk_100825A60);
      swift_storeEnumTagMultiPayload();
      sub_10043CE90();
      sub_10043CD78();
      v150 = v181;
      sub_10079CCA4();
      sub_1000077D8(v150, v159, &qword_100AE36E8, &unk_100825A30);
      swift_storeEnumTagMultiPayload();
      sub_10043CCEC();
      sub_10043CE04();
      v151 = v160;
      sub_10079CCA4();
      sub_100007840(v150, &qword_100AE36E8, &unk_100825A30);
      sub_1000077D8(v151, v203, &qword_100AE3740, &qword_100825AA0);
      swift_storeEnumTagMultiPayload();
      sub_10043CC60();
      sub_10079CCA4();
      sub_100007840(v151, &qword_100AE3740, &qword_100825AA0);
      sub_100007840(v149, &qword_100AE3710, &unk_100825A60);
    }

    else if (v48 == enum case for BookThemeViewModel.OverlayState.override(_:))
    {
      v82 = sub_10079DF24();
      v83 = v190;
      v84 = v187;
      v85 = v191;
      (*(v190 + 104))(v187, enum case for Font.TextStyle.caption(_:), v191);
      v86 = sub_10079D3A4();
      v87 = v188;
      (*(*(v86 - 8) + 56))(v188, 1, 1, v86);
      sub_10079D3F4();
      v88 = sub_10079D434();
      sub_100007840(v87, &unk_100AD1FC0, &unk_10080B850);
      (*(v83 + 8))(v84, v85);
      v89 = swift_getKeyPath();
      v90 = v163;
      v91 = (v163 + *(v189 + 36));
      v92 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
      v93 = enum case for Image.Scale.small(_:);
      v94 = sub_10079DF84();
      (*(*(v94 - 8) + 104))(v91 + v92, v93, v94);
      *v91 = swift_getKeyPath();
      *v90 = v82;
      v90[1] = v89;
      v90[2] = v88;
      sub_10079F1E4();
      v95 = sub_10079DEA4();
      v96 = swift_getKeyPath();
      v97 = (v90 + *(v192 + 36));
      *v97 = v96;
      v97[1] = v95;
      type metadata accessor for ThemeStateOverlayView(0);
      sub_1001F1160(&qword_100AD6BC0, &unk_100825980);
      sub_10079BDF4();
      sub_10079BDF4();
      sub_10079E474();
      sub_10079BE54();
      v98 = (v90 + *(v193 + 36));
      v99 = v207;
      *v98 = v206;
      v98[1] = v99;
      v98[2] = v208;
      sub_1001F1160(&qword_100AE17F0, &qword_100822890);
      v100 = swift_initStackObject();
      *(v100 + 16) = xmmword_10080EFF0;
      LOBYTE(v89) = sub_10079D2A4();
      *(v100 + 32) = v89;
      v101 = sub_10079D2E4();
      *(v100 + 33) = v101;
      v102 = sub_10079D2D4();
      sub_10079D2D4();
      if (sub_10079D2D4() != v89)
      {
        v102 = sub_10079D2D4();
      }

      sub_10079D2D4();
      v103 = sub_10079D2D4();
      v47 = v161;
      if (v103 != v101)
      {
        v102 = sub_10079D2D4();
      }

      v104 = v203;
      v105 = v197;
      sub_10079BBA4();
      v107 = v106;
      v109 = v108;
      v111 = v110;
      v113 = v112;
      v114 = v162;
      sub_10020B3C8(v90, v162, &qword_100AD1CA8, &qword_100825A70);
      v115 = v114 + *(v105 + 36);
      *v115 = v102;
      *(v115 + 8) = v107;
      *(v115 + 16) = v109;
      *(v115 + 24) = v111;
      *(v115 + 32) = v113;
      *(v115 + 40) = 0;
      v116 = v114;
      v117 = v164;
      sub_10020B3C8(v116, v164, &qword_100AE3718, &qword_100825A78);
      sub_1000077D8(v117, v180, &qword_100AE3718, &qword_100825A78);
      swift_storeEnumTagMultiPayload();
      sub_10043CE90();
      sub_10043CD78();
      v118 = v181;
      sub_10079CCA4();
      sub_1000077D8(v118, v159, &qword_100AE36E8, &unk_100825A30);
      swift_storeEnumTagMultiPayload();
      sub_10043CCEC();
      sub_10043CE04();
      v119 = v160;
      sub_10079CCA4();
      sub_100007840(v118, &qword_100AE36E8, &unk_100825A30);
      sub_1000077D8(v119, v104, &qword_100AE3740, &qword_100825AA0);
      swift_storeEnumTagMultiPayload();
      sub_10043CC60();
      sub_10079CCA4();
      sub_100007840(v119, &qword_100AE3740, &qword_100825AA0);
      sub_100007840(v117, &qword_100AE3718, &qword_100825A78);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_10043CC60();
      v47 = v161;
      sub_10079CCA4();
      (*(v40 + 8))(v42, v39);
    }
  }

  v152 = v202;
  sub_1000077D8(v47, v202, &qword_100AE3748, &qword_100825AA8);
  v153 = v204;
  *v204 = 0;
  *(v153 + 8) = 1;
  v154 = sub_1001F1160(&qword_100AE3798, &qword_100825AC8);
  sub_1000077D8(v152, v153 + *(v154 + 48), &qword_100AE3748, &qword_100825AA8);
  sub_100007840(v47, &qword_100AE3748, &qword_100825AA8);
  return sub_100007840(v152, &qword_100AE3748, &qword_100825AA8);
}

unint64_t sub_10043CC60()
{
  result = qword_100AE3750;
  if (!qword_100AE3750)
  {
    sub_1001F1234(&qword_100AE3740, &qword_100825AA0);
    sub_10043CCEC();
    sub_10043CE04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3750);
  }

  return result;
}

unint64_t sub_10043CCEC()
{
  result = qword_100AE3758;
  if (!qword_100AE3758)
  {
    sub_1001F1234(&qword_100AE3738, &qword_100825A98);
    sub_10043CD78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3758);
  }

  return result;
}

unint64_t sub_10043CD78()
{
  result = qword_100AE3760;
  if (!qword_100AE3760)
  {
    sub_1001F1234(&qword_100AE3718, &qword_100825A78);
    sub_1001F1440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3760);
  }

  return result;
}

unint64_t sub_10043CE04()
{
  result = qword_100AE3768;
  if (!qword_100AE3768)
  {
    sub_1001F1234(&qword_100AE36E8, &unk_100825A30);
    sub_10043CE90();
    sub_10043CD78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3768);
  }

  return result;
}

unint64_t sub_10043CE90()
{
  result = qword_100AE3770;
  if (!qword_100AE3770)
  {
    sub_1001F1234(&qword_100AE3710, &unk_100825A60);
    sub_10043CF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3770);
  }

  return result;
}

unint64_t sub_10043CF1C()
{
  result = qword_100AE3778;
  if (!qword_100AE3778)
  {
    sub_1001F1234(&qword_100AE3708, &qword_100825A58);
    sub_10043CFA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3778);
  }

  return result;
}

unint64_t sub_10043CFA8()
{
  result = qword_100AE3780;
  if (!qword_100AE3780)
  {
    sub_1001F1234(&qword_100AE3700, &qword_100825A50);
    sub_10043D060();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3780);
  }

  return result;
}

unint64_t sub_10043D060()
{
  result = qword_100AE3788;
  if (!qword_100AE3788)
  {
    sub_1001F1234(&qword_100AE36F8, &qword_100825A48);
    sub_10043D118();
    sub_100005920(&qword_100ADB998, &unk_100ADB9A0, &qword_100825AC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3788);
  }

  return result;
}

unint64_t sub_10043D118()
{
  result = qword_100AE3790;
  if (!qword_100AE3790)
  {
    sub_1001F1234(&qword_100AE36F0, &qword_100825A40);
    sub_100005920(&qword_100ADC4E8, &qword_100AEE330, &unk_10083E850, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3790);
  }

  return result;
}

unint64_t sub_10043D200()
{
  result = qword_100AE37B0;
  if (!qword_100AE37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE37B0);
  }

  return result;
}

unint64_t sub_10043D258()
{
  result = qword_100AE37B8;
  if (!qword_100AE37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE37B8);
  }

  return result;
}

unint64_t sub_10043D318()
{
  result = qword_100AE37C0;
  if (!qword_100AE37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE37C0);
  }

  return result;
}

uint64_t sub_10043D36C()
{
  v0 = sub_100796814();
  sub_100009A38(v0, qword_100B23358);
  sub_100008B98(v0, qword_100B23358);
  return sub_1007967E4();
}

uint64_t sub_10043D3D0(uint64_t a1)
{
  *(v2 + 1688) = v1;
  *(v2 + 1680) = a1;
  return _swift_task_switch(sub_10043D3F4, 0, 0);
}

uint64_t sub_10043D3F4()
{
  sub_100795DF4();
  v1 = *(v0 + 1799);
  *(v0 + 1800) = v1;
  if (v1 == 8)
  {
    sub_100795DF4();
    v2 = *(v0 + 1792);
    if (v2 == 2)
    {
      v3 = *(v0 + 1800);
      sub_100795DF4();
      v4 = *(v0 + 1793);
      if (v4 == 2)
      {
        sub_100795DF4();
        v5 = *(v0 + 1794);
        if (v5 == 2)
        {
          if (v3 == 8)
          {
            sub_1001FE9A0();
            swift_allocError();
            *v6 = 0;
            swift_willThrow();
          }

          else
          {
            sub_100795D24();
          }

          v7 = *(v0 + 8);

          return v7();
        }

        sub_100795DF4();
        v24 = *(v0 + 168);
        v25 = *(v0 + 200);
        *(v0 + 288) = *(v0 + 184);
        *(v0 + 304) = v25;
        *(v0 + 320) = *(v0 + 216);
        v26 = *(v0 + 136);
        *(v0 + 224) = *(v0 + 120);
        *(v0 + 240) = v26;
        *(v0 + 256) = *(v0 + 152);
        *(v0 + 272) = v24;
        *(v0 + 1795) = v5 & 1;
        KeyPath = swift_getKeyPath();
        *(v0 + 1768) = KeyPath;
        v27 = swift_task_alloc();
        *(v0 + 1776) = v27;
        v13 = sub_100005920(&qword_100AE3800, &qword_100AE3808, &qword_100825DD8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
        *v27 = v0;
        v27[1] = sub_10043E60C;
        v14 = &type metadata for Bool;
        v15 = v0 + 1795;
      }

      else
      {
        sub_100795DF4();
        v20 = *(v0 + 616);
        *(v0 + 704) = *(v0 + 600);
        *(v0 + 720) = v20;
        *(v0 + 736) = *(v0 + 632);
        v21 = *(v0 + 552);
        *(v0 + 640) = *(v0 + 536);
        *(v0 + 656) = v21;
        v22 = *(v0 + 584);
        *(v0 + 672) = *(v0 + 568);
        *(v0 + 688) = v22;
        *(v0 + 1796) = v4 & 1;
        KeyPath = swift_getKeyPath();
        *(v0 + 1744) = KeyPath;
        v23 = swift_task_alloc();
        *(v0 + 1752) = v23;
        v13 = sub_100005920(&qword_100AE3800, &qword_100AE3808, &qword_100825DD8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
        *v23 = v0;
        v23[1] = sub_10043E2C8;
        v14 = &type metadata for Bool;
        v15 = v0 + 1796;
      }
    }

    else
    {
      sub_100795DF4();
      v16 = *(v0 + 984);
      *(v0 + 1104) = *(v0 + 1000);
      v17 = *(v0 + 1032);
      *(v0 + 1120) = *(v0 + 1016);
      *(v0 + 1136) = v17;
      v18 = *(v0 + 968);
      *(v0 + 1056) = *(v0 + 952);
      *(v0 + 1072) = v18;
      *(v0 + 1152) = *(v0 + 1048);
      *(v0 + 1088) = v16;
      *(v0 + 1797) = v2 & 1;
      KeyPath = swift_getKeyPath();
      *(v0 + 1720) = KeyPath;
      v19 = swift_task_alloc();
      *(v0 + 1728) = v19;
      v13 = sub_100005920(&qword_100AE3810, &qword_100AE3818, &qword_100825E30, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
      *v19 = v0;
      v19[1] = sub_10043DE80;
      v14 = &type metadata for BookPageNavigationSetting;
      v15 = v0 + 1797;
    }
  }

  else
  {
    sub_100795DF4();
    v8 = *(v0 + 1400);
    *(v0 + 1520) = *(v0 + 1416);
    v9 = *(v0 + 1448);
    *(v0 + 1536) = *(v0 + 1432);
    *(v0 + 1552) = v9;
    v10 = *(v0 + 1384);
    *(v0 + 1472) = *(v0 + 1368);
    *(v0 + 1488) = v10;
    *(v0 + 1568) = *(v0 + 1464);
    *(v0 + 1504) = v8;
    *(v0 + 1798) = v1;
    KeyPath = swift_getKeyPath();
    *(v0 + 1696) = KeyPath;
    v12 = swift_task_alloc();
    *(v0 + 1704) = v12;
    v13 = sub_100005920(&qword_100AE3820, &qword_100AE3828, &unk_100825E60, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    *v12 = v0;
    v12[1] = sub_10043D8E8;
    v14 = &type metadata for BookThemeSetting;
    v15 = v0 + 1798;
  }

  return AppEntity._setValue<A, B, C>(_:for:)(v15, KeyPath, v14, v13);
}

uint64_t sub_10043D8E8()
{
  v2 = *v1;
  v3 = *v1 + 1472;
  *(*v1 + 1712) = v0;

  v4 = *v3;
  v5 = *(v3 + 32);
  if (v0)
  {
    *(v2 + 1592) = *(v3 + 16);
    *(v2 + 1608) = v5;
    *(v2 + 1576) = v4;
    v6 = *(v3 + 48);
    v7 = *(v3 + 64);
    v8 = *(v3 + 80);
    *(v2 + 1672) = *(v3 + 96);
    *(v2 + 1640) = v7;
    *(v2 + 1656) = v8;
    *(v2 + 1624) = v6;
    sub_10043F470(v2 + 1576);

    v9 = sub_10043E808;
  }

  else
  {
    *(v2 + 32) = *(v3 + 16);
    *(v2 + 48) = v5;
    *(v2 + 16) = v4;
    v10 = *(v3 + 48);
    v11 = *(v3 + 64);
    v12 = *(v3 + 80);
    *(v2 + 112) = *(v3 + 96);
    *(v2 + 80) = v11;
    *(v2 + 96) = v12;
    *(v2 + 64) = v10;
    sub_10043F470(v2 + 16);

    v9 = sub_10043DA94;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10043DA94()
{
  sub_100795DF4();
  v1 = *(v0 + 1792);
  if (v1 == 2)
  {
    v2 = *(v0 + 1800);
    sub_100795DF4();
    v3 = *(v0 + 1793);
    if (v3 == 2)
    {
      sub_100795DF4();
      v4 = *(v0 + 1794);
      if (v4 == 2)
      {
        if (v2 == 8)
        {
          sub_1001FE9A0();
          swift_allocError();
          *v5 = 0;
          swift_willThrow();
        }

        else
        {
          sub_100795D24();
        }

        v6 = *(v0 + 8);

        return v6();
      }

      sub_100795DF4();
      v19 = *(v0 + 168);
      v20 = *(v0 + 200);
      *(v0 + 288) = *(v0 + 184);
      *(v0 + 304) = v20;
      *(v0 + 320) = *(v0 + 216);
      v21 = *(v0 + 136);
      *(v0 + 224) = *(v0 + 120);
      *(v0 + 240) = v21;
      *(v0 + 256) = *(v0 + 152);
      *(v0 + 272) = v19;
      *(v0 + 1795) = v4 & 1;
      KeyPath = swift_getKeyPath();
      *(v0 + 1768) = KeyPath;
      v22 = swift_task_alloc();
      *(v0 + 1776) = v22;
      v12 = sub_100005920(&qword_100AE3800, &qword_100AE3808, &qword_100825DD8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
      *v22 = v0;
      v22[1] = sub_10043E60C;
      v13 = &type metadata for Bool;
      v14 = v0 + 1795;
    }

    else
    {
      sub_100795DF4();
      v15 = *(v0 + 616);
      *(v0 + 704) = *(v0 + 600);
      *(v0 + 720) = v15;
      *(v0 + 736) = *(v0 + 632);
      v16 = *(v0 + 552);
      *(v0 + 640) = *(v0 + 536);
      *(v0 + 656) = v16;
      v17 = *(v0 + 584);
      *(v0 + 672) = *(v0 + 568);
      *(v0 + 688) = v17;
      *(v0 + 1796) = v3 & 1;
      KeyPath = swift_getKeyPath();
      *(v0 + 1744) = KeyPath;
      v18 = swift_task_alloc();
      *(v0 + 1752) = v18;
      v12 = sub_100005920(&qword_100AE3800, &qword_100AE3808, &qword_100825DD8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
      *v18 = v0;
      v18[1] = sub_10043E2C8;
      v13 = &type metadata for Bool;
      v14 = v0 + 1796;
    }
  }

  else
  {
    sub_100795DF4();
    v7 = *(v0 + 984);
    *(v0 + 1104) = *(v0 + 1000);
    v8 = *(v0 + 1032);
    *(v0 + 1120) = *(v0 + 1016);
    *(v0 + 1136) = v8;
    v9 = *(v0 + 968);
    *(v0 + 1056) = *(v0 + 952);
    *(v0 + 1072) = v9;
    *(v0 + 1152) = *(v0 + 1048);
    *(v0 + 1088) = v7;
    *(v0 + 1797) = v1 & 1;
    KeyPath = swift_getKeyPath();
    *(v0 + 1720) = KeyPath;
    v11 = swift_task_alloc();
    *(v0 + 1728) = v11;
    v12 = sub_100005920(&qword_100AE3810, &qword_100AE3818, &qword_100825E30, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    *v11 = v0;
    v11[1] = sub_10043DE80;
    v13 = &type metadata for BookPageNavigationSetting;
    v14 = v0 + 1797;
  }

  return AppEntity._setValue<A, B, C>(_:for:)(v14, KeyPath, v13, v12);
}

uint64_t sub_10043DE80()
{
  v2 = *v1;
  v3 = *v1 + 1056;
  *(*v1 + 1736) = v0;

  v4 = *v3;
  if (v0)
  {
    v5 = *(v3 + 32);
    *(v2 + 1176) = *(v3 + 16);
    *(v2 + 1192) = v5;
    *(v2 + 1160) = v4;
    v6 = *(v3 + 48);
    v7 = *(v3 + 64);
    v8 = *(v3 + 80);
    *(v2 + 1256) = *(v3 + 96);
    *(v2 + 1224) = v7;
    *(v2 + 1240) = v8;
    *(v2 + 1208) = v6;
    sub_10043F470(v2 + 1160);

    v9 = sub_10043E820;
  }

  else
  {
    v10 = *(v3 + 16);
    *(v2 + 1296) = *(v3 + 32);
    *(v2 + 1280) = v10;
    *(v2 + 1264) = v4;
    v11 = *(v3 + 48);
    v12 = *(v3 + 64);
    v13 = *(v3 + 80);
    *(v2 + 1360) = *(v3 + 96);
    *(v2 + 1344) = v13;
    *(v2 + 1328) = v12;
    *(v2 + 1312) = v11;
    sub_10043F470(v2 + 1264);

    v9 = sub_10043E034;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10043E034()
{
  sub_100795DF4();
  v1 = *(v0 + 1793);
  if (v1 == 2)
  {
    sub_100795DF4();
    v2 = *(v0 + 1794);
    if (v2 == 2)
    {
      sub_100795D24();
      v3 = *(v0 + 8);

      return v3();
    }

    sub_100795DF4();
    v12 = *(v0 + 168);
    v13 = *(v0 + 200);
    *(v0 + 288) = *(v0 + 184);
    *(v0 + 304) = v13;
    *(v0 + 320) = *(v0 + 216);
    v14 = *(v0 + 136);
    *(v0 + 224) = *(v0 + 120);
    *(v0 + 240) = v14;
    *(v0 + 256) = *(v0 + 152);
    *(v0 + 272) = v12;
    *(v0 + 1795) = v2 & 1;
    KeyPath = swift_getKeyPath();
    *(v0 + 1768) = KeyPath;
    v15 = swift_task_alloc();
    *(v0 + 1776) = v15;
    v10 = sub_100005920(&qword_100AE3800, &qword_100AE3808, &qword_100825DD8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    *v15 = v0;
    v15[1] = sub_10043E60C;
    v11 = v0 + 1795;
  }

  else
  {
    sub_100795DF4();
    v5 = *(v0 + 616);
    *(v0 + 704) = *(v0 + 600);
    *(v0 + 720) = v5;
    *(v0 + 736) = *(v0 + 632);
    v6 = *(v0 + 552);
    *(v0 + 640) = *(v0 + 536);
    *(v0 + 656) = v6;
    v7 = *(v0 + 584);
    *(v0 + 672) = *(v0 + 568);
    *(v0 + 688) = v7;
    *(v0 + 1796) = v1 & 1;
    KeyPath = swift_getKeyPath();
    *(v0 + 1744) = KeyPath;
    v9 = swift_task_alloc();
    *(v0 + 1752) = v9;
    v10 = sub_100005920(&qword_100AE3800, &qword_100AE3808, &qword_100825DD8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    *v9 = v0;
    v9[1] = sub_10043E2C8;
    v11 = v0 + 1796;
  }

  return AppEntity._setValue<A, B, C>(_:for:)(v11, KeyPath, &type metadata for Bool, v10);
}

uint64_t sub_10043E2C8()
{
  v2 = *v1;
  v3 = *v1 + 640;
  *(*v1 + 1760) = v0;

  v4 = *v3;
  v5 = *(v3 + 32);
  if (v0)
  {
    *(v2 + 760) = *(v3 + 16);
    *(v2 + 776) = v5;
    *(v2 + 744) = v4;
    v6 = *(v3 + 48);
    v7 = *(v3 + 64);
    v8 = *(v3 + 80);
    *(v2 + 840) = *(v3 + 96);
    *(v2 + 808) = v7;
    *(v2 + 824) = v8;
    *(v2 + 792) = v6;
    sub_10043F470(v2 + 744);

    v9 = sub_10043E838;
  }

  else
  {
    *(v2 + 864) = *(v3 + 16);
    *(v2 + 880) = v5;
    *(v2 + 848) = v4;
    v10 = *(v3 + 48);
    v11 = *(v3 + 64);
    v12 = *(v3 + 80);
    *(v2 + 944) = *(v3 + 96);
    *(v2 + 912) = v11;
    *(v2 + 928) = v12;
    *(v2 + 896) = v10;
    sub_10043F470(v2 + 848);

    v9 = sub_10043E474;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10043E474()
{
  sub_100795DF4();
  v1 = *(v0 + 1794);
  if (v1 == 2)
  {
    sub_100795D24();
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_100795DF4();
    v4 = *(v0 + 168);
    v5 = *(v0 + 200);
    *(v0 + 288) = *(v0 + 184);
    *(v0 + 304) = v5;
    *(v0 + 320) = *(v0 + 216);
    v6 = *(v0 + 136);
    *(v0 + 224) = *(v0 + 120);
    *(v0 + 240) = v6;
    *(v0 + 256) = *(v0 + 152);
    *(v0 + 272) = v4;
    *(v0 + 1795) = v1 & 1;
    KeyPath = swift_getKeyPath();
    *(v0 + 1768) = KeyPath;
    v8 = swift_task_alloc();
    *(v0 + 1776) = v8;
    v9 = sub_100005920(&qword_100AE3800, &qword_100AE3808, &qword_100825DD8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
    *v8 = v0;
    v8[1] = sub_10043E60C;

    return AppEntity._setValue<A, B, C>(_:for:)(v0 + 1795, KeyPath, &type metadata for Bool, v9);
  }
}

uint64_t sub_10043E60C()
{
  v2 = *v1;
  *(*v1 + 1784) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 256);
    *(v2 + 344) = *(v2 + 240);
    *(v2 + 360) = v4;
    *(v2 + 328) = v3;
    v5 = *(v2 + 272);
    v6 = *(v2 + 288);
    v7 = *(v2 + 304);
    *(v2 + 424) = *(v2 + 320);
    *(v2 + 392) = v6;
    *(v2 + 408) = v7;
    *(v2 + 376) = v5;
    sub_10043F470(v2 + 328);

    v8 = sub_10043E850;
  }

  else
  {
    v9 = *(v2 + 240);
    *(v2 + 432) = *(v2 + 224);
    *(v2 + 448) = v9;
    v10 = *(v2 + 256);
    v11 = *(v2 + 272);
    v12 = *(v2 + 288);
    v13 = *(v2 + 304);
    *(v2 + 528) = *(v2 + 320);
    *(v2 + 496) = v12;
    *(v2 + 512) = v13;
    *(v2 + 464) = v10;
    *(v2 + 480) = v11;
    sub_10043F470(v2 + 432);

    v8 = sub_10043E7A4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10043E7A4(uint64_t a1)
{
  sub_100795D24();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10043E868@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD15F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100796814();
  v3 = sub_100008B98(v2, qword_100B23358);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10043E918(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_10043E9C4;

  return sub_10043D3D0(a1);
}

uint64_t sub_10043E9C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_10043EAB8@<D0>(_OWORD *a1@<X8>)
{
  sub_10043EC34(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_10043EAF8(uint64_t a1)
{
  v2 = sub_10043D318();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10043EB38()
{
  result = qword_100AE37C8;
  if (!qword_100AE37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE37C8);
  }

  return result;
}

uint64_t sub_10043EB90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10043EBD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10043EC34@<X0>(uint64_t *a1@<X8>)
{
  v56 = a1;
  v1 = sub_1001F1160(&qword_100AE37D0, &qword_10083C520);
  __chkstk_darwin(v1 - 8);
  v55 = &v47 - v2;
  v68 = sub_100796274();
  v3 = *(v68 - 8);
  __chkstk_darwin(v68);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AD5CB0, &unk_100811910);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v12 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v47 - v13;
  v54 = sub_1001F1160(&qword_100AE22F0, &unk_100823B70);
  v60 = sub_100796814();
  v15 = *(v60 - 8);
  v16 = *(v15 + 56);
  v61 = v15 + 56;
  v16(v14, 1, 1, v60);
  v64 = v16;
  v17 = sub_100795CE4();
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0;
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v19(v11, 1, 1, v17);
  v19(v8, 1, 1, v17);
  v65 = enum case for InputConnectionBehavior.default(_:);
  v66 = *(v3 + 104);
  v67 = v3 + 104;
  v66(v5);
  sub_100408CA8();
  v57 = v14;
  v58 = v5;
  v54 = sub_100795E64();
  v53 = sub_1001F1160(&qword_100AE37D8, &qword_100825D88);
  v21 = v14;
  v22 = v60;
  v16(v21, 1, 1, v60);
  LOBYTE(v69) = 1;
  v59 = v19;
  v19(v11, 1, 1, v17);
  v23 = v8;
  v19(v8, 1, 1, v17);
  v24 = v68;
  (v66)(v5, v65, v68);
  sub_10043F41C();
  v25 = v57;
  v26 = v11;
  v53 = sub_100795E34();
  sub_1001F1160(&qword_100AE37E8, &qword_100825D90);
  v27 = v64;
  v64(v25, 1, 1, v22);
  LOBYTE(v69) = 8;
  v62 = v20;
  v63 = v17;
  v28 = v59;
  v59(v26, 1, 1, v17);
  v28(v23, 1, 1, v17);
  v29 = v65;
  v30 = v66;
  (v66)(v58, v65, v24);
  sub_10021F600();
  v52 = sub_100795E34();
  v51 = sub_1001F1160(&qword_100AE37F0, &qword_100825D98);
  v31 = v60;
  v27(v25, 1, 1, v60);
  LOBYTE(v69) = 2;
  v32 = v63;
  v33 = v59;
  v59(v26, 1, 1, v63);
  v33(v23, 1, 1, v32);
  v34 = v33;
  v35 = v58;
  v30(v58, v29, v68);
  sub_1003FCD84();
  v36 = v57;
  v51 = sub_100795E34();
  sub_1001F1160(&qword_100AE37F8, &qword_100825DA0);
  v64(v36, 1, 1, v31);
  LOBYTE(v69) = 2;
  v37 = sub_1007A2674();
  v38 = *(v37 - 8);
  v48 = *(v38 + 56);
  v49 = v38 + 56;
  v39 = v55;
  v48(v55, 1, 1, v37);
  v34(v26, 1, 1, v63);
  v40 = v65;
  v41 = v68;
  v42 = v66;
  (v66)(v35, v65, v68);
  v50 = sub_100795EB4();
  v64(v36, 1, 1, v60);
  LOBYTE(v69) = 2;
  v48(v39, 1, 1, v37);
  v59(v26, 1, 1, v63);
  v42(v35, v40, v41);
  result = sub_100795EB4();
  v44 = v56;
  v45 = v53;
  *v56 = v54;
  v44[1] = v45;
  v46 = v51;
  v44[2] = v52;
  v44[3] = v46;
  v44[4] = v50;
  v44[5] = result;
  return result;
}

unint64_t sub_10043F41C()
{
  result = qword_100AE37E0;
  if (!qword_100AE37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE37E0);
  }

  return result;
}

uint64_t sub_10043F504()
{
  v0 = sub_1001F1160(&qword_100AE39D0, &unk_100825F38);
  sub_100009A38(v0, qword_100AE3830);
  sub_100008B98(v0, qword_100AE3830);
  if (qword_100AD1920 != -1)
  {
    swift_once();
  }

  v1 = qword_100B236A8;
  sub_1001F1160(&qword_100AE39F8, &unk_100825F78);
  return sub_100798F14();
}

uint64_t sub_10043F5F4()
{
  v0 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  sub_100009A38(v0, qword_100AE3848);
  sub_100008B98(v0, qword_100AE3848);
  if (qword_100AD1920 != -1)
  {
    swift_once();
  }

  v1 = qword_100B236A8;
  return sub_100798F14();
}

uint64_t sub_10043F6C0()
{
  v0 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  sub_100009A38(v0, qword_100AE3860);
  sub_100008B98(v0, qword_100AE3860);
  v1 = [objc_opt_self() bu_groupUserDefaults];
  return sub_100798F14();
}

uint64_t sub_10043F770()
{
  v0 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  sub_100009A38(v0, qword_100AE3878);
  sub_100008B98(v0, qword_100AE3878);
  v1 = [objc_opt_self() bu_groupUserDefaults];
  return sub_100798F14();
}

uint64_t sub_10043F820()
{
  v0 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  sub_100009A38(v0, qword_100AE3890);
  sub_100008B98(v0, qword_100AE3890);
  v1 = [objc_opt_self() bu_groupUserDefaults];
  return sub_100798F14();
}

uint64_t sub_10043F8D0()
{
  v1[14] = v0;
  v1[15] = *v0;
  sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  v1[16] = swift_task_alloc();
  v2 = sub_1001F1160(&qword_100AE39D0, &unk_100825F38);
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v3 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v4 = sub_100796DA4();
  v1[23] = v4;
  v1[24] = *(v4 - 8);
  v1[25] = swift_task_alloc();
  sub_1001F1160(&qword_100AE39D8, &qword_100825F48);
  v1[26] = swift_task_alloc();
  sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v5 = sub_100796BB4();
  v1[29] = v5;
  v1[30] = *(v5 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  sub_1001F1160(&qword_100AE39E0, &unk_100834C90);
  v1[35] = swift_task_alloc();
  v6 = type metadata accessor for YearInReview.RemoteConfiguration.DateRange(0);
  v1[36] = v6;
  v1[37] = *(v6 - 8);
  v1[38] = swift_task_alloc();
  sub_1001F1160(&qword_100AD6948, &qword_100825F50);
  v1[39] = swift_task_alloc();
  v7 = type metadata accessor for YearInReview.RemoteConfiguration(0);
  v1[40] = v7;
  v1[41] = *(v7 - 8);
  v1[42] = swift_task_alloc();

  return _swift_task_switch(sub_10043FCE4, 0, 0);
}

uint64_t sub_10043FCE4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 112);
  v5 = OBJC_IVAR____TtC5Books33YearInReviewNotificationScheduler_config;
  swift_beginAccess();
  sub_1000077D8(v4 + v5, v3, &qword_100AD6948, &qword_100825F50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 312);
    v7 = &qword_100AD6948;
    v8 = &qword_100825F50;
LABEL_5:
    sub_100007840(v6, v7, v8);
    if (qword_100AD1608 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 168);
    v15 = *(v0 + 176);
    v17 = *(v0 + 160);
    v18 = sub_100008B98(v17, qword_100AE3848);
    (*(v16 + 16))(v15, v18, v17);
    sub_100798EE4();
    (*(v16 + 8))(v15, v17);
    if ((*(v0 + 73) & 1) == 0)
    {
      v20 = *(v0 + 120);
      v19 = *(v0 + 128);
      v21 = *(v0 + 112);
      sub_1007A2714();
      v22 = sub_1007A2744();
      (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = v21;
      v23[5] = v20;

      sub_1005E3DA4(0, 0, v19, &unk_100825F60, v23);

      sub_100007840(v19, &qword_100AD67D0, &qword_100814660);
    }

    v92 = 0;
    goto LABEL_10;
  }

  v9 = *(v0 + 336);
  v10 = *(v0 + 320);
  v11 = *(v0 + 288);
  v12 = *(v0 + 296);
  v13 = *(v0 + 280);
  sub_100443804(*(v0 + 312), v9, type metadata accessor for YearInReview.RemoteConfiguration);
  sub_1000077D8(v9 + *(v10 + 20), v13, &qword_100AE39E0, &unk_100834C90);
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    v14 = *(v0 + 280);
    sub_1004438C0(*(v0 + 336), type metadata accessor for YearInReview.RemoteConfiguration);
    v7 = &qword_100AE39E0;
    v8 = &unk_100834C90;
    v6 = v14;
    goto LABEL_5;
  }

  v27 = (v0 + 224);
  v26 = *(v0 + 224);
  v28 = *(v0 + 304);
  v29 = *(v0 + 232);
  v30 = *(v0 + 240);
  v31 = *(v0 + 208);
  sub_100443804(*(v0 + 280), v28, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
  sub_1000077D8(v28, v31, &qword_100AE39D8, &qword_100825F48);
  sub_1002D73A4(v31, v26);
  v32 = *(v30 + 48);
  if (v32(v26, 1, v29) == 1)
  {
    goto LABEL_16;
  }

  v27 = (v0 + 216);
  v33 = *(v0 + 216);
  v34 = *(v0 + 304);
  v35 = *(v0 + 288);
  v36 = *(v0 + 232);
  v37 = *(v0 + 208);
  v93 = *(*(v0 + 240) + 32);
  v93(*(v0 + 272), *(v0 + 224), v36);
  sub_1000077D8(v34 + *(v35 + 20), v37, &qword_100AE39D8, &qword_100825F48);
  sub_1002D73A4(v37, v33);
  if (v32(v33, 1, v36) == 1)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 272), *(v0 + 232));
LABEL_16:
    v38 = *(v0 + 336);
    v39 = *(v0 + 304);
    sub_100007840(*v27, &unk_100ADB5C0, &unk_100816880);
    sub_10044386C();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
    sub_1004438C0(v39, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
    sub_1004438C0(v38, type metadata accessor for YearInReview.RemoteConfiguration);

    v41 = *(v0 + 8);

    return v41();
  }

  v43 = *(v0 + 240);
  v42 = *(v0 + 248);
  v44 = *(v0 + 232);
  v93(*(v0 + 264), *(v0 + 216), v44);
  sub_100796B74();
  v45 = sub_100796B14();
  v46 = *(v43 + 8);
  *(v0 + 344) = v46;
  *(v0 + 352) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46(v42, v44);
  if (v45)
  {
    (*(*(v0 + 240) + 16))(*(v0 + 256), *(v0 + 272), *(v0 + 232));
  }

  else
  {
    v47 = *(v0 + 248);
    v48 = *(v0 + 232);
    v50 = *(v0 + 192);
    v49 = *(v0 + 200);
    v51 = *(v0 + 184);
    sub_100796B74();
    sub_100796D64();
    sub_100796A14();
    (*(v50 + 8))(v49, v51);
    v46(v47, v48);
  }

  v52 = *(v0 + 336);
  v53 = *v52;
  *(v0 + 360) = *v52;
  if (sub_100443E88(v53))
  {
    if (qword_100AD1608 != -1)
    {
      swift_once();
    }

    v55 = *(v0 + 168);
    v54 = *(v0 + 176);
    v56 = *(v0 + 160);
    v57 = sub_100008B98(v56, qword_100AE3848);
    (*(v55 + 16))(v54, v57, v56);
    sub_100798EE4();
    (*(v55 + 8))(v54, v56);
    v58 = *(v0 + 336);
    v59 = *(v0 + 304);
    v61 = *(v0 + 264);
    v60 = *(v0 + 272);
    v62 = *(v0 + 256);
    v63 = *(v0 + 232);
    if (*(v0 + 76) == 1)
    {
      v46(*(v0 + 256), *(v0 + 232));
      v46(v61, v63);
      v46(v60, v63);
      sub_1004438C0(v59, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
      sub_1004438C0(v58, type metadata accessor for YearInReview.RemoteConfiguration);
      v92 = 1;
    }

    else
    {
      v71 = *(v0 + 128);
      v89 = *(v0 + 120);
      v91 = *(v0 + 304);
      v72 = *(v0 + 112);
      sub_1007A2714();
      v73 = sub_1007A2744();
      v92 = 1;
      (*(*(v73 - 8) + 56))(v71, 0, 1, v73);
      v90 = v58;
      v74 = swift_allocObject();
      v74[2] = 0;
      v74[3] = 0;
      v74[4] = v72;
      v74[5] = v89;

      sub_1005E3DA4(0, 0, v71, &unk_100825F70, v74);

      sub_100007840(v71, &qword_100AD67D0, &qword_100814660);
      v46(v62, v63);
      v46(v61, v63);
      v46(v60, v63);
      sub_1004438C0(v91, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
      sub_1004438C0(v90, type metadata accessor for YearInReview.RemoteConfiguration);
    }

    goto LABEL_10;
  }

  if (qword_100AD1618 != -1)
  {
    swift_once();
  }

  v65 = *(v0 + 168);
  v64 = *(v0 + 176);
  v66 = *(v0 + 160);
  v67 = sub_100008B98(v66, qword_100AE3878);
  v68 = *(v65 + 16);
  *(v0 + 368) = v68;
  *(v0 + 376) = (v65 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v68(v64, v67, v66);
  sub_100798EE4();
  v69 = *(v65 + 8);
  *(v0 + 384) = v69;
  *(v0 + 392) = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v69(v64, v66);
  if ((*(v0 + 74) & 1) == 0)
  {
    if (qword_100AD1600 != -1)
    {
      swift_once();
    }

    v76 = *(v0 + 144);
    v75 = *(v0 + 152);
    v77 = *(v0 + 136);
    v78 = sub_100008B98(v77, qword_100AE3830);
    (*(v76 + 16))(v75, v78, v77);
    sub_100798EE4();
    (*(v76 + 8))(v75, v77);
    if ((*(v0 + 72) & 1) == 0 && v53 == *(v0 + 64))
    {
      v94 = *(v0 + 336);
      v79 = *(v0 + 304);
      v81 = *(v0 + 264);
      v80 = *(v0 + 272);
      v82 = *(v0 + 256);
      v83 = *(v0 + 232);
      sub_100441BD8(v53);
      v46(v82, v83);
      v46(v81, v83);
      v46(v80, v83);
      sub_1004438C0(v79, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
      sub_1004438C0(v94, type metadata accessor for YearInReview.RemoteConfiguration);
      v92 = 2;
LABEL_10:

      v24 = *(v0 + 8);

      return v24(v92);
    }
  }

  if ((sub_100796B14() & 1) == 0)
  {
    v84 = *(v0 + 336);
    v85 = *(v0 + 304);
    v87 = *(v0 + 264);
    v86 = *(v0 + 272);
    v88 = *(v0 + 232);
    v46(*(v0 + 256), v88);
    v46(v87, v88);
    v46(v86, v88);
    sub_1004438C0(v85, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
    sub_1004438C0(v84, type metadata accessor for YearInReview.RemoteConfiguration);
    v92 = 3;
    goto LABEL_10;
  }

  sub_10000E3E8((*(v0 + 112) + 16), *(*(v0 + 112) + 40));
  v70 = swift_task_alloc();
  *(v0 + 400) = v70;
  *v70 = v0;
  v70[1] = sub_1004409C4;

  return sub_1004B8F78(2);
}

uint64_t sub_1004409C4(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100440BA0;
  }

  else
  {
    *(v4 + 77) = a1 & 1;
    v5 = sub_100440AF4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100440AF4()
{
  *(v0 + 78) = *(v0 + 77);
  sub_10000E3E8((*(v0 + 112) + 16), *(*(v0 + 112) + 40));
  v1 = swift_task_alloc();
  *(v0 + 408) = v1;
  *v1 = v0;
  v1[1] = sub_100440C48;

  return sub_1004B8F78(0);
}

uint64_t sub_100440BA0()
{
  *(v0 + 78) = 0;
  sub_10000E3E8((*(v0 + 112) + 16), *(*(v0 + 112) + 40));
  v1 = swift_task_alloc();
  *(v0 + 408) = v1;
  *v1 = v0;
  v1[1] = sub_100440C48;

  return sub_1004B8F78(0);
}

uint64_t sub_100440C48(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100440FA8;
  }

  else
  {
    *(v4 + 79) = a1 & 1;
    v5 = sub_100440D78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100440D78()
{
  if (*(v0 + 79) == 1)
  {
    sub_10000E3E8((*(v0 + 112) + 16), *(*(v0 + 112) + 40));
    v1 = swift_task_alloc();
    *(v0 + 416) = v1;
    *v1 = v0;
    v1[1] = sub_100441140;

    return sub_1004B8F78(1);
  }

  else
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 336);
    v5 = *(v0 + 304);
    v7 = *(v0 + 264);
    v6 = *(v0 + 272);
    v8 = *(v0 + 232);
    v3(*(v0 + 256), v8);
    v3(v7, v8);
    v3(v6, v8);
    sub_1004438C0(v5, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
    sub_1004438C0(v4, type metadata accessor for YearInReview.RemoteConfiguration);

    v9 = *(v0 + 8);

    return v9(4);
  }
}

uint64_t sub_100440FA8()
{
  v1 = v0[43];
  v2 = v0[42];
  v3 = v0[38];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[29];
  v1(v0[32], v6);
  v1(v5, v6);
  v1(v4, v6);
  sub_1004438C0(v3, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
  sub_1004438C0(v2, type metadata accessor for YearInReview.RemoteConfiguration);

  v7 = v0[1];

  return v7(4);
}

uint64_t sub_100441140(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_10044424C;
  }

  else
  {
    *(v4 + 89) = a1 & 1;
    v5 = sub_100441270;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100441270()
{
  if (*(v0 + 89) != 1)
  {
    goto LABEL_6;
  }

  if (qword_100AD1620 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 78);
  v2 = *(v0 + 384);
  v3 = *(v0 + 368);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = sub_100008B98(v5, qword_100AE3890);
  v3(v4, v6, v5);
  sub_100798EE4();
  v2(v4, v5);
  if ((*(v0 + 75) & 1) != 0 || v1)
  {
    v15 = swift_task_alloc();
    *(v0 + 424) = v15;
    *v15 = v0;
    v15[1] = sub_100441520;
    v16 = *(v0 + 360);
    v17 = *(v0 + 256);

    return sub_100441D80(v16, v17);
  }

  else
  {
LABEL_6:
    v7 = *(v0 + 344);
    v8 = *(v0 + 336);
    v9 = *(v0 + 304);
    v11 = *(v0 + 264);
    v10 = *(v0 + 272);
    v12 = *(v0 + 232);
    v7(*(v0 + 256), v12);
    v7(v11, v12);
    v7(v10, v12);
    sub_1004438C0(v9, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
    sub_1004438C0(v8, type metadata accessor for YearInReview.RemoteConfiguration);

    v13 = *(v0 + 8);

    return v13(4);
  }
}

uint64_t sub_100441520()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_10044187C;
  }

  else
  {
    v2 = sub_100441634;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100441634()
{
  if (qword_100AD1600 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 344);
  v13 = *(v0 + 304);
  v14 = *(v0 + 336);
  v11 = *(v0 + 264);
  v12 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = sub_100008B98(v7, qword_100AE3830);
  (*(v6 + 16))(v5, v8, v7);
  *(v0 + 80) = v1;
  *(v0 + 88) = 0;
  sub_100798EF4();
  (*(v6 + 8))(v5, v7);
  sub_100441BD8(v1);
  v2(v3, v4);
  v2(v11, v4);
  v2(v12, v4);
  sub_1004438C0(v13, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
  sub_1004438C0(v14, type metadata accessor for YearInReview.RemoteConfiguration);

  v9 = *(v0 + 8);

  return v9(5);
}

uint64_t sub_10044187C()
{
  v23 = v0;
  if (qword_100AD1628 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AE38A8);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[45];
    v5 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v5 = 136315394;
    v0[12] = v4;
    v6 = sub_1007A22F4();
    v8 = sub_1000070F4(v6, v7, v22);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v9 = sub_1007A3B84();
    v11 = sub_1000070F4(v9, v10, v22);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cannot schedule notification for year in review %s: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = v0[43];
  v21 = v0[42];
  v13 = v0[38];
  v15 = v0[33];
  v14 = v0[34];
  v16 = v0[32];
  v17 = v0[29];
  sub_10044386C();
  swift_allocError();
  *v18 = 1;
  swift_willThrow();

  v12(v16, v17);
  v12(v15, v17);
  v12(v14, v17);
  sub_1004438C0(v13, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
  sub_1004438C0(v21, type metadata accessor for YearInReview.RemoteConfiguration);

  v19 = v0[1];

  return v19();
}

void sub_100441BD8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Books33YearInReviewNotificationScheduler_experienceSeenObserver;
  if (!*(v1 + OBJC_IVAR____TtC5Books33YearInReviewNotificationScheduler_experienceSeenObserver))
  {
    v15 = 0xD000000000000012;
    v16 = 0x80000001008D4F80;
    v14 = a1;
    v17._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v17);

    v3 = swift_allocObject();
    swift_weakInit();
    v4 = type metadata accessor for DefaultsObserver();
    v5 = objc_allocWithZone(v4);
    v6 = &v5[OBJC_IVAR____TtC5BooksP33_8A1BE8AE8AE70CC0220B9F5FF837F82D16DefaultsObserver_keyPath];
    *v6 = 0xD000000000000012;
    *(v6 + 1) = 0x80000001008D4F80;
    v7 = &v5[OBJC_IVAR____TtC5BooksP33_8A1BE8AE8AE70CC0220B9F5FF837F82D16DefaultsObserver_callback];
    *v7 = sub_100444154;
    v7[1] = v3;
    v13.receiver = v5;
    v13.super_class = v4;

    v8 = objc_msgSendSuper2(&v13, "init");
    v9 = *(v1 + v2);
    *(v1 + v2) = v8;
    v10 = v8;

    if (qword_100AD1920 != -1)
    {
      swift_once();
    }

    v11 = qword_100B236A8;
    v12 = sub_1007A2214();

    [v11 addObserver:v10 forKeyPath:v12 options:1 context:0];
  }
}

uint64_t sub_100441D80(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_100796BB4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1007A21B4();
  v3[9] = swift_task_alloc();
  v5 = sub_1007A21D4();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = sub_100796CF4();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100441F40, 0, 0);
}

uint64_t sub_100441F40(uint64_t a1)
{
  v61 = v1;
  v2 = v1[17];
  v3 = v1[14];
  v4 = v1[15];
  v56 = v1[16];
  v6 = v1[12];
  v5 = v1[13];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[3];
  v55 = v9;
  sub_100796C74();
  v10 = sub_1004439A4(v9, v2);
  v53 = v11;
  v54 = v10;
  v57 = *(v4 + 8);
  v57(v2, v3);
  v47 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v1[18] = v47;
  sub_1007A2154();
  sub_100796C94();
  v52 = *(v8 + 16);
  v52(v6, v5, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v50 = objc_opt_self();
  v12 = [v50 bundleForClass:ObjCClassFromMetadata];
  v49 = *(v4 + 16);
  v49(v56, v2, v3);
  sub_1007A22D4(v6, 0, 0, v12, v56, "Year in Review notification title", 33, 2);
  v57(v2, v3);
  v48 = *(v8 + 8);
  v48(v5, v7);
  v13 = sub_1007A2214();

  [v47 setTitle:v13];

  sub_1007A21A4();
  v63._countAndFlagsBits = 0xD000000000000033;
  v63._object = 0x80000001008D5010;
  sub_1007A2194(v63);
  v64._countAndFlagsBits = v54;
  v64._object = v53;
  sub_1007A2184(v64);

  v65._countAndFlagsBits = 46;
  v65._object = 0xE100000000000000;
  sub_1007A2194(v65);
  sub_1007A21C4();
  sub_100796C94();
  v52(v6, v5, v7);
  v14 = [v50 bundleForClass:ObjCClassFromMetadata];
  v49(v56, v2, v3);
  sub_1007A22D4(v6, 0, 0, v14, v56, "Year in Review notification body with %@ being the year", 55, 2);
  v57(v2, v3);
  v48(v5, v7);
  v15 = sub_1007A2214();

  [v47 setBody:v15];

  [v47 setInterruptionLevel:1];
  v16 = sub_1007A2214();
  [v47 setCategoryIdentifier:v16];

  sub_100796B34();
  v18 = [objc_opt_self() triggerWithTimeInterval:0 repeats:v17];
  v1[19] = v18;
  v59 = 762472825;
  v60 = 0xE400000000000000;
  v1[2] = v55;
  v66._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v66);

  v20 = v59;
  v19 = v60;
  v21 = v47;
  v22 = v18;
  v23 = sub_1007A2214();
  v24 = [objc_opt_self() requestWithIdentifier:v23 content:v21 trigger:v22];
  v1[20] = v24;

  if (qword_100AD1628 != -1)
  {
    swift_once();
  }

  v25 = v1[7];
  v26 = v1[8];
  v27 = v1[6];
  v28 = v1[4];
  v29 = sub_10079ACE4();
  sub_100008B98(v29, qword_100AE38A8);
  (*(v25 + 16))(v26, v28, v27);

  v30 = sub_10079ACC4();
  v31 = sub_1007A2994();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v1[7];
  v34 = v1[8];
  v35 = v1[6];
  if (v32)
  {
    v36 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = sub_1000070F4(v20, v19, &v59);

    *(v36 + 4) = v37;
    *(v36 + 12) = 2080;
    sub_10044419C(&unk_100AE9A30, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v38 = sub_1007A3A74();
    v40 = v39;
    (*(v33 + 8))(v34, v35);
    v41 = sub_1000070F4(v38, v40, &v59);

    *(v36 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v30, v31, "Scheduling notification %s to trigger at %s", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v33 + 8))(v34, v35);
  }

  v42 = v1[5];
  v43 = v42[10];
  v44 = v42[11];
  sub_10000E3E8(v42 + 7, v43);
  v58 = (*(v44 + 8) + **(v44 + 8));
  v45 = swift_task_alloc();
  v1[21] = v45;
  *v45 = v1;
  v45[1] = sub_100442708;

  return v58(v24, v43, v44);
}

uint64_t sub_100442708()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1004428E0;
  }

  else
  {
    v2 = sub_10044281C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10044281C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004428E0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004429A4()
{
  v1 = *v0;
  v2 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_1007A2714();
  v5 = sub_1007A2744();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v6[5] = v1;

  sub_1005E3DA4(0, 0, v4, &unk_100825F88, v6);

  return sub_100007840(v4, &qword_100AD67D0, &qword_100814660);
}

uint64_t sub_100442B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100442BCC, 0, 0);
}

uint64_t sub_100442BCC()
{
  v1 = *(v0 + 24);
  v2 = v1[10];
  v3 = v1[11];
  sub_10000E3E8(v1 + 7, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100442CF4;

  return v6(v2, v3);
}

uint64_t sub_100442CF4(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_100442DF4, 0, 0);
}

char *sub_100442DF4()
{
  v35 = v0;
  v1 = *(v0 + 64);
  v34 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_30:
    v2 = sub_1007A38D4();
    v3 = *(v0 + 64);
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v1;
  }

  v4 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = v1 & 0xFFFFFFFFFFFFFF8;
    v8 = v3 + 32;
    do
    {
      if (v6)
      {
        v9 = sub_1007A3784();
      }

      else
      {
        if (v5 >= *(v7 + 16))
        {
          goto LABEL_29;
        }

        v9 = *(v8 + 8 * v5);
      }

      v10 = v9;
      v0 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v11 = [v9 identifier];
      sub_1007A2254();

      v37._countAndFlagsBits = 762472825;
      v37._object = 0xE400000000000000;
      v1 = sub_1007A2474(v37);

      if (v1)
      {
        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        v1 = &v34;
        sub_1007A37E4();
      }

      else
      {
      }

      ++v5;
    }

    while (v0 != v2);
    v0 = v33;
    v12 = v34;
    v4 = _swiftEmptyArrayStorage;

    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

  v12 = _swiftEmptyArrayStorage;

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  if ((v12 & 0x4000000000000000) != 0)
  {
LABEL_31:
    v13 = sub_1007A38D4();
    if (!v13)
    {
      goto LABEL_32;
    }

    goto LABEL_19;
  }

  v13 = *(v12 + 16);
  if (!v13)
  {
LABEL_32:

    goto LABEL_33;
  }

LABEL_19:
  v34 = _swiftEmptyArrayStorage;
  result = sub_1003BD0CC(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
    return result;
  }

  v15 = 0;
  v4 = v34;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = sub_1007A3784();
    }

    else
    {
      v16 = *(v12 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = [v16 identifier];
    v19 = sub_1007A2254();
    v21 = v20;

    v34 = v4;
    v23 = v4[2];
    v22 = v4[3];
    if (v23 >= v22 >> 1)
    {
      sub_1003BD0CC((v22 > 1), v23 + 1, 1);
      v4 = v34;
    }

    ++v15;
    v4[2] = v23 + 1;
    v24 = &v4[2 * v23];
    v24[4] = v19;
    v24[5] = v21;
  }

  while (v13 != v15);

  v0 = v33;
LABEL_33:
  *(v0 + 16) = v4;
  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_10023D44C();
  if (sub_1007A28A4())
  {
    v25 = *(v0 + 24);
    v26 = v25[10];
    v27 = v25[11];
    sub_10000E3E8(v25 + 7, v26);
    (*(v27 + 24))(v4, v26, v27);
  }

  if (qword_100AD1608 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 40);
  v28 = *(v0 + 48);
  v30 = *(v0 + 32);
  v31 = sub_100008B98(v30, qword_100AE3848);
  (*(v29 + 16))(v28, v31, v30);
  *(v0 + 72) = 1;
  sub_100798EF4();
  (*(v29 + 8))(v28, v30);

  v32 = *(v0 + 8);

  return v32();
}

double sub_1004431E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      if (*(a1 + 16))
      {
        v4 = sub_1002F9CF4();
        if (v5)
        {
          sub_100007484(*(a1 + 56) + 32 * v4, v7);
          sub_1000076D4(v7, v8);
          sub_100007484(v8, v7);
          if ((swift_dynamicCast() & 1) != 0 && v6 == 1)
          {
            sub_1004429A4();

            sub_1000074E0(v8);
            return result;
          }

          sub_1000074E0(v8);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1004432E8()
{
  v1 = OBJC_IVAR____TtC5Books33YearInReviewNotificationScheduler_experienceSeenObserver;
  v2 = *(v0 + OBJC_IVAR____TtC5Books33YearInReviewNotificationScheduler_experienceSeenObserver);
  if (v2)
  {
    v3 = qword_100AD1920;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = qword_100B236A8;

    v6 = sub_1007A2214();

    [v5 removeObserver:v4 forKeyPath:v6];
  }

  sub_1000074E0((v0 + 16));
  sub_1000074E0((v0 + 56));
  sub_100007840(v0 + OBJC_IVAR____TtC5Books33YearInReviewNotificationScheduler_config, &qword_100AD6948, &qword_100825F50);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for YearInReviewNotificationScheduler(uint64_t a1)
{
  result = qword_100AE38F8;
  if (!qword_100AE38F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100443480(uint64_t a1)
{
  sub_100443524(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100443524(uint64_t a1)
{
  if (!qword_100AE6840)
  {
    type metadata accessor for YearInReview.RemoteConfiguration(255);
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, &qword_100AE6840);
    }
  }
}

uint64_t sub_100443744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_100442B00(a1, v4, v5, v6);
}

uint64_t sub_100443804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10044386C()
{
  result = qword_100AE39E8;
  if (!qword_100AE39E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE39E8);
  }

  return result;
}

uint64_t sub_1004438C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100443920()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE38A8);
  sub_100008B98(v0, qword_100AE38A8);
  return sub_10079ACD4();
}

uint64_t sub_1004439A4(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_100796A54();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100796A74();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_100796DA4();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v15 - 8);
  v17 = &v31 - v16;
  v18 = sub_100796BB4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796D04();
  v36 = a1;
  sub_100796A24();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100007840(v17, &unk_100ADB5C0, &unk_100816880);
    if (qword_100AD1628 != -1)
    {
      swift_once();
    }

    v22 = sub_10079ACE4();
    sub_100008B98(v22, qword_100AE38A8);
    v23 = sub_10079ACC4();
    v24 = sub_1007A29B4();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v36;
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to create date for last day of '%ld'.", v27, 0xCu);
    }

    v37 = v26;
    return sub_1007A3A74();
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_100796404();
    sub_100796A44();
    sub_100796A34();
    (*(v31 + 8))(v5, v32);
    v29 = *(v33 + 8);
    v30 = v35;
    v29(v7, v35);
    sub_100796A64();
    v29(v10, v30);
    sub_10044419C(&qword_100AE39F0, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    sub_100796B94();
    v29(v13, v30);
    (*(v19 + 8))(v21, v18);
    return v37;
  }
}

id sub_100443E88(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - v4;
  if (qword_100AD1610 != -1)
  {
    swift_once();
  }

  v6 = sub_100008B98(v2, qword_100AE3860);
  (*(v3 + 16))(v5, v6, v2);
  sub_100798EE4();
  (*(v3 + 8))(v5, v2);
  if (v12)
  {
    return 0;
  }

  v12 = 0xD000000000000012;
  v13 = 0x80000001008D4F80;
  v11[1] = a1;
  v14._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v14);

  if (qword_100AD1920 != -1)
  {
    swift_once();
  }

  v8 = qword_100B236A8;
  v9 = sub_1007A2214();

  v10 = [v8 BOOLForKey:v9];

  return v10;
}

uint64_t sub_100444094(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_100442B00(a1, v4, v5, v6);
}

uint64_t sub_10044415C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10044419C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004441F8()
{
  result = qword_100AE3A00;
  if (!qword_100AE3A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3A00);
  }

  return result;
}

id sub_1004443C4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_10044446C()
{
  v1 = v0 + OBJC_IVAR____TtC5Books18ToastContainerView_contentInsets;
  swift_beginAccess();
  return *v1;
}

void sub_1004444B8(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC5Books18ToastContainerView_contentInsets);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
}

uint64_t sub_100444524()
{
  v1 = (v0 + OBJC_IVAR____TtC5Books18ToastContainerView_backgroundLayerGroupName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id sub_1004445DC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Books18ToastContainerView_containerView);
  [v3 bounds];
  [a1 setFrame:?];
  v4 = [a1 layer];
  [v4 setCornerRadius:16.0];

  [a1 setAutoresizingMask:18];

  return [v3 addSubview:a1];
}

void sub_100444694()
{
  v1 = OBJC_IVAR____TtC5Books18ToastContainerView_containerView;
  type metadata accessor for ToastContainerView.ContainerView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC5Books18ToastContainerView_backgroundView;
  v3 = [objc_opt_self() effectWithStyle:10];
  v4 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v3];

  *(v0 + v2) = v4;
  *(v0 + OBJC_IVAR____TtC5Books18ToastContainerView_defaultHeight) = 0x4055000000000000;
  *(v0 + OBJC_IVAR____TtC5Books18ToastContainerView_defaultHeightInset) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC5Books18ToastContainerView_defaultWidthInset) = 0x4034000000000000;
  v5 = (v0 + OBJC_IVAR____TtC5Books18ToastContainerView_backgroundLayerGroupName);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC5Books18ToastContainerView_contentInsets);
  v7 = *&UIEdgeInsetsZero.bottom;
  *v6 = *&UIEdgeInsetsZero.top;
  v6[1] = v7;
  sub_1007A38A4();
  __break(1u);
}

double sub_1004447D4@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(a1);

  return result;
}

void sub_10044484C()
{
  v1 = sub_1007A3854();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for State(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BookReaderChromeState(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  if (*(v0 + OBJC_IVAR____TtC5Books26BookReaderChromeController_hasActivePageMovement) == 1)
  {
    if (qword_100AD1630 != -1)
    {
      swift_once();
    }

    v17 = sub_10079ACE4();
    sub_100008B98(v17, qword_100AE3A98);
    v23 = sub_10079ACC4();
    v18 = sub_1007A29D4();
    if (os_log_type_enabled(v23, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v23, v18, "Chrome visibility changes paused (page movement in progress)", v19, 2u);
    }

    v20 = v23;
  }

  else
  {
    v21 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_10043809C(v0 + v21, v7, type metadata accessor for State);
    sub_1007A3834();
    sub_100446470(v4, v16);
    (*(v2 + 8))(v4, v1);
    sub_10044893C(v7, type metadata accessor for State);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v13);

    v22 = sub_100641198(v13, v16);
    sub_10044893C(v13, type metadata accessor for BookReaderChromeState);
    if ((v22 & 1) == 0)
    {
      sub_10043809C(v16, v13, type metadata accessor for BookReaderChromeState);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10043809C(v13, v10, type metadata accessor for BookReaderChromeState);

      sub_10079B9B4();
      sub_10044893C(v13, type metadata accessor for BookReaderChromeState);
    }

    sub_1004467F8();
    sub_10044893C(v16, type metadata accessor for BookReaderChromeState);
  }
}

uint64_t sub_100444C5C(uint64_t a1)
{
  v3 = type metadata accessor for State(0);
  __chkstk_darwin(v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = v1 + OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  sub_10043809C(v9, v8, type metadata accessor for State);
  swift_beginAccess();
  sub_1004485D8(a1, v9);
  swift_endAccess();
  sub_10043809C(v9, v5, type metadata accessor for State);
  v10 = sub_10044876C(v8, v5);
  sub_10044893C(v5, type metadata accessor for State);
  if ((v10 & 1) == 0)
  {
    v11 = sub_1007A2B24();
    *(v9 + v3[21]) = v11 & 1;
    if ((v11 & 1) != v8[v3[21]])
    {
      *(v9 + v3[23]) = 0;
      *(v9 + v3[22]) = 0;
    }

    sub_10044484C();
  }

  sub_10044893C(a1, type metadata accessor for State);
  return sub_10044893C(v8, type metadata accessor for State);
}

uint64_t sub_100444E04(int a1)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_1001F1160(&qword_100AF2700, &qword_1008261F0);
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  __chkstk_darwin(v3);
  v32 = &v30 - v5;
  v6 = type metadata accessor for State(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1001F1160(&qword_100AE3CD0, &qword_1008261E8);
  v10 = *(v31 - 8);
  __chkstk_darwin(v31);
  v12 = &v30 - v11;
  v13 = type metadata accessor for BookReaderChromeState(0);
  __chkstk_darwin(v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  v30 = OBJC_IVAR____TtC5Books26BookReaderChromeController__chromeState;
  *(&v30 - v17) = 0;
  v20 = *(v19 + 24);
  v21 = enum case for BookContentHeaderStyle.primary(_:);
  v22 = sub_10079F4E4();
  (*(*(v22 - 8) + 104))(&v18[v20], v21, v22);
  v18[v13[7]] = 0;
  v18[v13[8]] = 1;
  v18[v13[9]] = 0;
  v18[v13[10]] = 0;
  *&v18[v13[11]] = 0;
  v18[v13[12]] = 0;
  v18[v13[13]] = 0;
  v18[v13[14]] = 1;
  v18[v13[15]] = 0;
  sub_10043809C(v18, v15, type metadata accessor for BookReaderChromeState);
  sub_10079B964();
  sub_10044893C(v18, type metadata accessor for BookReaderChromeState);
  (*(v10 + 32))(v2 + v30, v12, v31);
  v23 = OBJC_IVAR____TtC5Books26BookReaderChromeController_axNotificationTask;
  *(v2 + OBJC_IVAR____TtC5Books26BookReaderChromeController_axNotificationTask) = 0;
  v24 = OBJC_IVAR____TtC5Books26BookReaderChromeController_reapplyStateTask;
  v25 = sub_1001F1160(&unk_100AE3B30, &qword_1008260D8);
  (*(*(v25 - 8) + 56))(v2 + v24, 1, 1, v25);
  *(v2 + OBJC_IVAR____TtC5Books26BookReaderChromeController_hasActivePageMovement) = 0;
  sub_1007A3834();
  sub_1007A3834();
  sub_1007A3834();
  *v9 = v33;
  *(v9 + 1) = 0;
  *(v9 + 9) = 0;
  v9[v7[22]] = 0;
  v9[v7[23]] = 0;
  v9[v7[24]] = 0;
  v9[v7[25]] = 0;
  sub_100448CC8(v9, v2 + OBJC_IVAR____TtC5Books26BookReaderChromeController_state);
  v26 = v32;
  sub_1007A2B54();
  swift_allocObject();
  swift_weakInit();
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  v28 = sub_10079BB04();

  (*(v35 + 8))(v26, v27);
  *(v2 + v23) = v28;

  sub_10044484C();
  return v2;
}

double sub_100445294(char *a1, uint64_t a2)
{
  v3 = type metadata accessor for State(0);
  __chkstk_darwin(v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    v10 = Strong;
    swift_beginAccess();
    sub_10043809C(v10 + v9, v5, type metadata accessor for State);
    v5[*(v3 + 84)] = v6;
    sub_100444C5C(v5);
  }

  return result;
}

void sub_10044539C(char a1)
{
  v3 = sub_1007A3854();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for State(0);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC5Books26BookReaderChromeController_hasActivePageMovement);
  *(v1 + OBJC_IVAR____TtC5Books26BookReaderChromeController_hasActivePageMovement) = a1;
  if (v13 == 1 && (a1 & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    v18 = type metadata accessor for State;
    sub_10043809C(v1 + v14, v12, type metadata accessor for State);
    sub_1007A3834();
    v15 = v7[18];
    v16 = *(v4 + 40);
    v16(&v12[v15], v6, v3);
    (*(v4 + 24))(&v12[v7[17]], &v12[v15], v3);
    sub_1007A3834();
    v16(&v12[v7[19]], v6, v3);
    v17 = v18;
    sub_10043809C(v12, v9, v18);
    sub_100444C5C(v9);
    sub_10044893C(v12, v17);
    sub_10044484C();
  }
}

uint64_t sub_1004455C4()
{
  v1 = sub_1007A3854();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  __chkstk_darwin(v8);
  v21 = &v21 - v9;
  v10 = type metadata accessor for State(0);
  __chkstk_darwin(v10);
  v22 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  v15 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  v23 = v0;
  sub_10043809C(v0 + v15, v14, type metadata accessor for State);
  if (qword_100AD1640 != -1)
  {
    swift_once();
  }

  v16 = *(v10 + 72);
  sub_1007A3834();
  sub_1007A3844();
  v17 = *(v2 + 8);
  v17(v4, v1);
  sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  if (sub_1007A20E4())
  {
    v18 = v21;
    (*(v2 + 32))(v21, v7, v1);
  }

  else
  {
    v17(v7, v1);
    v18 = v21;
    (*(v2 + 16))(v21, &v14[v16], v1);
  }

  (*(v2 + 40))(&v14[v16], v18, v1);
  (*(v2 + 24))(&v14[*(v10 + 68)], &v14[v16], v1);
  v14[2] = 1;
  v19 = v22;
  sub_10043809C(v14, v22, type metadata accessor for State);
  sub_100444C5C(v19);
  return sub_10044893C(v14, type metadata accessor for State);
}

uint64_t sub_100445924(int a1)
{
  v29 = sub_1007A3854();
  v3 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  __chkstk_darwin(v9);
  v30 = &v26 - v10;
  v11 = type metadata accessor for State(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = v1 + OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  if (*(v17 + 3) == 1 && (a1 & 1) == 0)
  {
    v26 = v3;
    v27 = a1;
    v28 = v1;
    sub_10043809C(v17, v16, type metadata accessor for State);
    if (qword_100AD1640 != -1)
    {
      swift_once();
    }

    v18 = *(v11 + 72);
    sub_1007A3834();
    sub_1007A3844();
    v19 = v26;
    v20 = *(v26 + 8);
    v21 = v5;
    v22 = v18;
    v23 = v29;
    v20(v21, v29);
    sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    if (sub_1007A20E4())
    {
      v24 = v30;
      (v19)[4](v30, v8, v23);
    }

    else
    {
      v20(v8, v23);
      v24 = v30;
      (v19)[2](v30, &v16[v22], v23);
    }

    LOBYTE(a1) = v27;
    (v19)[5](&v16[v22], v24, v23);
    sub_100444C5C(v16);
  }

  sub_10043809C(v17, v13, type metadata accessor for State);
  v13[3] = a1 & 1;
  return sub_100444C5C(v13);
}

uint64_t sub_100445C80(int a1)
{
  v29 = sub_1007A3854();
  v3 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  __chkstk_darwin(v9);
  v30 = &v26 - v10;
  v11 = type metadata accessor for State(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = v1 + OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  if (*(v17 + 5) == 1 && (a1 & 1) == 0)
  {
    v26 = v3;
    v27 = a1;
    v28 = v1;
    sub_10043809C(v17, v16, type metadata accessor for State);
    if (qword_100AD1640 != -1)
    {
      swift_once();
    }

    v18 = *(v11 + 72);
    sub_1007A3834();
    sub_1007A3844();
    v19 = v26;
    v20 = *(v26 + 8);
    v21 = v5;
    v22 = v18;
    v23 = v29;
    v20(v21, v29);
    sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    if (sub_1007A20E4())
    {
      v24 = v30;
      (v19)[4](v30, v8, v23);
    }

    else
    {
      v20(v8, v23);
      v24 = v30;
      (v19)[2](v30, &v16[v22], v23);
    }

    LOBYTE(a1) = v27;
    (v19)[5](&v16[v22], v24, v23);
    sub_100444C5C(v16);
  }

  sub_10043809C(v17, v13, type metadata accessor for State);
  v13[5] = a1 & 1;
  return sub_100444C5C(v13);
}

uint64_t sub_100445FDC()
{
  v1 = sub_1007A3854();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1);
  v35 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v34 - v4;
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for State(0);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v17 = type metadata accessor for BookReaderChromeState(0);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = (&v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v20);

  v21 = *(v20 + *(v18 + 52));
  sub_10044893C(v20, type metadata accessor for BookReaderChromeState);
  v22 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  if (v21 == 1)
  {
    swift_beginAccess();
    sub_10043809C(v0 + v22, v16, type metadata accessor for State);
    sub_1007A3834();
    v23 = *(v8 + 72);
    v25 = v37;
    v24 = v38;
    (*(v37 + 40))(&v16[v23], v7, v38);
    (*(v25 + 24))(&v16[*(v8 + 68)], &v16[v23], v24);
    sub_10043809C(v16, v13, type metadata accessor for State);
    sub_100444C5C(v13);
    return sub_10044893C(v16, type metadata accessor for State);
  }

  else
  {
    v27 = v8;
    v28 = v37;
    v29 = v38;
    swift_beginAccess();
    sub_10043809C(v0 + v22, v10, type metadata accessor for State);
    if (qword_100AD1640 != -1)
    {
      swift_once();
    }

    v30 = *(v27 + 72);
    sub_1007A3834();
    v31 = v35;
    sub_1007A3844();
    v32 = *(v28 + 8);
    v32(v7, v29);
    sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    if (sub_1007A20E4())
    {
      v33 = v36;
      (*(v28 + 32))(v36, v31, v29);
    }

    else
    {
      v32(v31, v29);
      v33 = v36;
      (*(v28 + 16))(v36, &v10[v30], v29);
    }

    (*(v28 + 40))(&v10[v30], v33, v29);
    return sub_100444C5C(v10);
  }
}

uint64_t sub_100446470@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v6 = sub_10079F4E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100447E58(a1);
  v11 = v2[6];
  v31 = v10;
  v32 = v11;
  if (v2[2] == 1 && (type metadata accessor for State(0), sub_1007A3854(), sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant), (sub_1007A20D4() & 1) == 0))
  {
    v12 = &enum case for BookContentHeaderStyle.secondary(_:);
  }

  else
  {
    v12 = &enum case for BookContentHeaderStyle.primary(_:);
  }

  (*(v7 + 104))(v9, *v12, v6);
  v13 = sub_100447F90(a1);
  v14 = v2[8];
  v29 = v13;
  v30 = v14;
  v28 = sub_1004480FC(a1);
  v27 = sub_100448264(a1);
  v15 = sub_10044838C(a1);
  if (qword_100AD1638 != -1)
  {
    swift_once();
  }

  if (byte_100AE3AB0 & 1) != 0 || v2[3] == 1 || (v16 = type metadata accessor for State(0), v2[*(v16 + 84)] == 1) && v2[*(v16 + 88)] != 1 || (sub_1007A3854(), sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant), (sub_1007A20D4()) || (v2[11])
  {
    v17 = 1;
  }

  else
  {
    v17 = v2[12];
  }

  v18 = sub_1004484E8(a1);
  v19 = type metadata accessor for State(0);
  if (v3[v19[21]])
  {
    v20 = v3[v19[22]] ^ 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = v3[v19[20]];
  *a2 = v31 & 1;
  a2[1] = v32;
  v22 = type metadata accessor for BookReaderChromeState(0);
  result = (*(v7 + 32))(&a2[v22[6]], v9, v6);
  v24 = v30;
  a2[v22[7]] = v29;
  a2[v22[8]] = v24;
  a2[v22[9]] = v28 & 1;
  a2[v22[10]] = v27 & 1;
  v25 = &a2[v22[11]];
  *v25 = v15 & 1;
  v25[1] = HIBYTE(v15) & 1;
  a2[v22[12]] = v17;
  a2[v22[13]] = v18 & 1;
  a2[v22[14]] = v20 & 1;
  a2[v22[15]] = v21;
  return result;
}

uint64_t sub_1004467F8()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AE3CA8, &unk_1008261A8);
  __chkstk_darwin(v2 - 8);
  v102 = &v89 - v3;
  v4 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v4 - 8);
  v98 = &v89 - v5;
  v100 = sub_1001F1160(&qword_100AE3CB0, &qword_1008261B8);
  __chkstk_darwin(v100);
  v103 = &v89 - v6;
  v7 = type metadata accessor for State(0);
  v8 = (v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AE3CB8, &unk_1008261C0);
  __chkstk_darwin(v11 - 8);
  v93 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v104 = &v89 - v14;
  __chkstk_darwin(v15);
  v108 = &v89 - v16;
  __chkstk_darwin(v17);
  v107 = &v89 - v18;
  v19 = sub_1007A3854();
  v20 = *(v19 - 8);
  v21 = v20;
  __chkstk_darwin(v19);
  v23 = (&v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = v22;
  __chkstk_darwin(v24);
  v109 = &v89 - v25;
  v26 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  v106 = type metadata accessor for State;
  v110 = v1;
  sub_10043809C(v1 + v26, v10, type metadata accessor for State);
  sub_1007A3834();
  sub_1001F1160(&qword_100AE0A38, &qword_100821358);
  v27 = *(v20 + 72);
  v105 = v20;
  v28 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v95 = *(v20 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100812CF0;
  v96 = v28;
  v30 = v29 + v28;
  v31 = v21 + 16;
  v32 = *(v21 + 16);
  v32(v30, &v10[v8[19]], v19);
  v32(v30 + v27, &v10[v8[20]], v19);
  v33 = v19;
  v34 = &v10[v8[21]];
  v101 = v32;
  v32(v30 + 2 * v27, v34, v19);
  v112 = v23;
  sub_1003CD920(sub_10044899C, v111, v29);
  v35 = v107;
  sub_100447BA8(v36, v107);

  sub_10044893C(v10, v106);
  v37 = v105;
  v38 = *(v105 + 8);
  v106 = v23;
  v39 = v23;
  v40 = v35;
  v38(v39, v33);
  v41 = *(v37 + 48);
  if (v41(v40, 1, v33) != 1)
  {
    v94 = v38;
    v46 = *(v37 + 32);
    v47 = v109;
    v107 = v37 + 32;
    v92 = v46;
    v46(v109, v40, v33);
    v48 = v37;
    v49 = v108;
    v99 = v31;
    v50 = v101;
    v101(v108, v47, v33);
    v51 = *(v48 + 56);
    v52 = 1;
    v51(v49, 0, 1, v33);
    v53 = OBJC_IVAR____TtC5Books26BookReaderChromeController_reapplyStateTask;
    v54 = v110;
    swift_beginAccess();
    v55 = sub_1001F1160(&unk_100AE3B30, &qword_1008260D8);
    v90 = *(v55 - 8);
    v56 = *(v90 + 48);
    v91 = v55;
    if (!v56(v54 + v53, 1))
    {
      v50(v104, v110 + v53, v33);
      v52 = 0;
    }

    v105 = v53;
    v57 = v104;
    v51(v104, v52, 1, v33);
    v58 = *(v100 + 48);
    v59 = v108;
    v60 = v103;
    sub_100448A9C(v108, v103);
    sub_100448A9C(v57, v60 + v58);
    if (v41(v60, 1, v33) == 1)
    {
      sub_100007840(v57, &qword_100AE3CB8, &unk_1008261C0);
      v61 = v103;
      sub_100007840(v59, &qword_100AE3CB8, &unk_1008261C0);
      v62 = v41(v61 + v58, 1, v33);
      v63 = v109;
      if (v62 == 1)
      {
        sub_100007840(v61, &qword_100AE3CB8, &unk_1008261C0);
        return v94(v63, v33);
      }
    }

    else
    {
      v64 = v93;
      sub_100448A9C(v60, v93);
      if (v41(v60 + v58, 1, v33) != 1)
      {
        v83 = v60 + v58;
        v84 = v60;
        v85 = v106;
        v92(v106, v83, v33);
        sub_100448C80(&qword_100AE3CC0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
        v86 = v59;
        v87 = sub_1007A2124();
        v88 = v94;
        v94(v85, v33);
        sub_100007840(v104, &qword_100AE3CB8, &unk_1008261C0);
        sub_100007840(v86, &qword_100AE3CB8, &unk_1008261C0);
        v88(v64, v33);
        sub_100007840(v84, &qword_100AE3CB8, &unk_1008261C0);
        v63 = v109;
        if (v87)
        {
          return v94(v63, v33);
        }

LABEL_11:
        v65 = sub_1007A2744();
        v66 = v98;
        (*(*(v65 - 8) + 56))(v98, 1, 1, v65);
        v67 = swift_allocObject();
        swift_weakInit();
        v68 = v106;
        v69 = v101;
        v101(v106, v63, v33);
        sub_1007A26F4();

        v70 = sub_1007A26E4();
        v71 = v96;
        v72 = v33;
        v73 = (v97 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
        v74 = swift_allocObject();
        *(v74 + 16) = v70;
        *(v74 + 24) = &protocol witness table for MainActor;
        v92((v74 + v71), v68, v72);
        *(v74 + v73) = v67;

        sub_10050CBCC(0, 0, v66, &unk_1008261D8, v74);
        v75 = v91;
        v76 = *(v91 + 48);
        v77 = v102;
        v78 = v109;
        v69(v102, v109, v72);
        sub_10079B884();
        swift_allocObject();
        v79 = sub_10079B894();
        v94(v78, v72);
        *(v77 + v76) = v79;
        (*(v90 + 56))(v77, 0, 1, v75);
        v80 = v105;
        v81 = v110;
        swift_beginAccess();
        sub_100448A2C(v77, v81 + v80);
        return swift_endAccess();
      }

      sub_100007840(v104, &qword_100AE3CB8, &unk_1008261C0);
      v61 = v103;
      sub_100007840(v59, &qword_100AE3CB8, &unk_1008261C0);
      v94(v64, v33);
      v63 = v109;
    }

    sub_100007840(v61, &qword_100AE3CB0, &qword_1008261B8);
    goto LABEL_11;
  }

  sub_100007840(v40, &qword_100AE3CB8, &unk_1008261C0);
  v42 = sub_1001F1160(&unk_100AE3B30, &qword_1008260D8);
  v43 = v102;
  (*(*(v42 - 8) + 56))(v102, 1, 1, v42);
  v44 = OBJC_IVAR____TtC5Books26BookReaderChromeController_reapplyStateTask;
  v45 = v110;
  swift_beginAccess();
  sub_100448A2C(v43, v45 + v44);
  return swift_endAccess();
}

uint64_t sub_10044737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_1007A3864();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_1007A26F4();
  v5[13] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_100447470, v8, v7);
}

uint64_t sub_100447470()
{
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  sub_1007A3B54();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  v2 = sub_100448C80(&qword_100AD76C0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  *v1 = v0;
  v1[1] = sub_100447568;
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v5, v0 + 40, v3, v4, v2);
}

uint64_t sub_100447568()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  v3 = v2[14];
  v4 = v2[15];
  if (v0)
  {
    v5 = sub_10044774C;
  }

  else
  {
    v5 = sub_1004476AC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1004476AC()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10044484C();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10044774C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004477B8()
{
  v1 = OBJC_IVAR____TtC5Books26BookReaderChromeController__chromeState;
  v2 = sub_1001F1160(&qword_100AE3CD0, &qword_1008261E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100007840(v0 + OBJC_IVAR____TtC5Books26BookReaderChromeController_reapplyStateTask, &qword_100AE3CA8, &unk_1008261A8);
  sub_10044893C(v0 + OBJC_IVAR____TtC5Books26BookReaderChromeController_state, type metadata accessor for State);

  return swift_deallocClassInstance();
}

void sub_1004478DC(uint64_t a1)
{
  sub_1004479F0(319);
  if (v1 <= 0x3F)
  {
    sub_100447A48(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for State(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1004479F0(uint64_t a1)
{
  if (!qword_100AE3B20)
  {
    type metadata accessor for BookReaderChromeState(255);
    v1 = sub_10079B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_100AE3B20);
    }
  }
}

void sub_100447A48(uint64_t a1)
{
  if (!qword_100AE3B28)
  {
    sub_1001F1234(&unk_100AE3B30, &qword_1008260D8);
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, &qword_100AE3B28);
    }
  }
}

uint64_t sub_100447AF4(uint64_t a1)
{
  result = sub_1007A3854();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100447BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1007A3854();
  __chkstk_darwin(*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = __chkstk_darwin(v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10.n128_f64[0]);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
        v21 = sub_1007A20D4();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t sub_100447E58(uint64_t a1)
{
  if (v1[1] & 1) != 0 || (v1[5] & 1) != 0 || (v1[3])
  {
    return 1;
  }

  if (qword_100AD1638 != -1)
  {
    swift_once();
  }

  if (byte_100AE3AB0)
  {
    return 1;
  }

  if (v1[9])
  {
    return 1;
  }

  v2 = type metadata accessor for State(0);
  if (v1[*(v2 + 84)] == 1 && v1[*(v2 + 88)] != 1)
  {
    return 1;
  }

  sub_1007A3854();
  sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  if (sub_1007A20D4() & 1) != 0 || (v1[11])
  {
    return 1;
  }

  else
  {
    return v1[12];
  }
}

uint64_t sub_100447F90(uint64_t a1)
{
  if (v1[2] != 1)
  {
    return 0;
  }

  v2 = type metadata accessor for State(0);
  sub_1007A3854();
  sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  if (sub_1007A20D4())
  {
    return 0;
  }

  if (qword_100AD1638 != -1)
  {
    swift_once();
  }

  if (byte_100AE3AB0 & 1) != 0 || (sub_1007A20D4() & 1) == 0 && ((v1[3] & 1) != 0 || v1[*(v2 + 84)] == 1 && v1[*(v2 + 88)] != 1 || (sub_1007A20D4() & 1) != 0 || (v1[11] & 1) != 0 || (v1[12]))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1004480FC(uint64_t a1)
{
  if (qword_100AD1638 != -1)
  {
    swift_once();
  }

  if (byte_100AE3AB0)
  {
    return 1;
  }

  if (v1[7])
  {
    return 0;
  }

  if (v1[3])
  {
    return 1;
  }

  v3 = type metadata accessor for State(0);
  if (v1[*(v3 + 84)] == 1 && v1[*(v3 + 88)] != 1)
  {
    return 1;
  }

  sub_1007A3854();
  sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  if (sub_1007A20D4() & 1) != 0 || (v1[11] & 1) != 0 || (v1[12])
  {
    return 1;
  }

  return sub_1007A20D4() & 1;
}

uint64_t sub_100448264(uint64_t a1)
{
  if (qword_100AD1638 != -1)
  {
    swift_once();
  }

  if (byte_100AE3AB0)
  {
    return 1;
  }

  if (v1[3])
  {
    return 0;
  }

  v3 = type metadata accessor for State(0);
  if (v1[*(v3 + 84)] == 1 && v1[*(v3 + 88)] != 1)
  {
    return 1;
  }

  sub_1007A3854();
  sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  if (sub_1007A20D4() & 1) != 0 || (v1[11])
  {
    return 1;
  }

  return v1[12];
}

uint64_t sub_10044838C(uint64_t a1)
{
  if (v1[3])
  {
    v2 = 0;
    v3 = 0;
    return v3 | v2;
  }

  if (qword_100AD1638 != -1)
  {
    swift_once();
  }

  if (byte_100AE3AB0)
  {
    goto LABEL_6;
  }

  v2 = v1[9];
  if (v2 != 1)
  {
    v4 = type metadata accessor for State(0);
    if (v1[*(v4 + 84)] == 1 && v1[*(v4 + 88)] != 1)
    {
      goto LABEL_6;
    }

    sub_1007A3854();
    sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    if (sub_1007A20D4())
    {
      v2 = 1;
      goto LABEL_14;
    }

    if (v1[11])
    {
LABEL_6:
      v2 = 1;
      goto LABEL_14;
    }

    v2 = v1[12];
  }

LABEL_14:
  if (v1[4])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return v3 | v2;
}

uint64_t sub_1004484E8(uint64_t a1)
{
  if (v1[3] & 1) != 0 || (v1[9])
  {
    return 0;
  }

  v3 = type metadata accessor for State(0);
  if (v1[*(v3 + 84)] == 1 && (v1[*(v3 + 92)] & 1) != 0)
  {
    return 1;
  }

  if (v1[10])
  {
    return 1;
  }

  sub_1007A3854();
  sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  if (sub_1007A20D4() & 1) != 0 || (v1[11])
  {
    return 1;
  }

  else
  {
    return v1[12];
  }
}

uint64_t sub_1004485D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044863C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE3A98);
  sub_100008B98(v0, qword_100AE3A98);
  sub_10001389C();
  return sub_1007A3404();
}

void sub_1004486B4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1007A2214();
  v2 = [v0 BOOLForKey:v1];

  byte_100AE3AB0 = v2;
}

uint64_t sub_100448744()
{
  result = sub_1007A3CE4();
  qword_100AE3AB8 = result;
  unk_100AE3AC0 = v1;
  return result;
}

uint64_t sub_10044876C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6] || a1[7] != a2[7] || a1[8] != a2[8] || a1[9] != a2[9] || a1[10] != a2[10] || a1[11] != a2[11] || a1[12] != a2[12])
  {
    return 0;
  }

  v5 = type metadata accessor for State(0);
  if ((sub_1007A3824() & 1) != 0 && (sub_1007A3824() & 1) != 0 && (sub_1007A3824() & 1) != 0 && a1[v5[20]] == a2[v5[20]] && a1[v5[21]] == a2[v5[21]] && a1[v5[22]] == a2[v5[22]])
  {
    v6 = a1[v5[23]] ^ a2[v5[23]] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_10044893C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10044899C(uint64_t a1)
{
  sub_1007A3854();
  sub_100448C80(&qword_100AE3CC8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  return sub_1007A20D4() & 1;
}

uint64_t sub_100448A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE3CA8, &unk_1008261A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100448A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE3CB8, &unk_1008261C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100448B0C(uint64_t a1)
{
  v4 = *(sub_1007A3854() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_10044737C(a1, v6, v7, v1 + v5, v8);
}

void sub_100448C2C()
{
  sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);

  sub_1007A2764();
}

uint64_t sub_100448C80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100448CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100448D34(uint64_t a1)
{
  result = sub_10079E404();
  v2 = 10.0;
  if (result)
  {
    v2 = 20.0;
  }

  qword_100B23378 = *&v2;
  return result;
}

uint64_t sub_100448D64()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE3CD8);
  sub_100008B98(v0, qword_100AE3CD8);
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  return sub_1007A33F4();
}

double sub_100448E70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

uint64_t sub_10044900C(char *a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v11 = *(v4 + 16);
  v11(&v14 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  sub_10079B964();
  v12 = *(v4 + 8);
  v12(a1, v3);
  return (v12)(v10, v3);
}

double sub_100449170@<D0>(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(a3);

  return result;
}

char *ChromeStyle.init()()
{
  v0 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v0 - 8);
  v130 = &v103 - v1;
  v2 = sub_10079D4D4();
  v128 = *(v2 - 8);
  v129 = v2;
  __chkstk_darwin(v2);
  v127 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100AD50E0, &qword_10080FBE0);
  v125 = *(v4 - 8);
  v126 = v4;
  __chkstk_darwin(v4);
  v124 = &v103 - v5;
  v123 = sub_1001F1160(&qword_100AE3CF0, &qword_1008261F8);
  v136 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v103 - v6;
  v121 = sub_10079EDE4();
  v135 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v119 = &v103 - v9;
  v132 = sub_1001F1160(&qword_100AE3CF8, &qword_100826200);
  v134 = *(v132 - 8);
  __chkstk_darwin(v132);
  v118 = &v103 - v10;
  v117 = sub_10079ED74();
  v133 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v115 = &v103 - v13;
  v114 = sub_1001F1160(&qword_100AE3D00, &qword_100838CA0);
  v113 = *(v114 - 1);
  __chkstk_darwin(v114);
  v15 = &v103 - v14;
  v112 = sub_1001F1160(&qword_100AE3D08, &unk_1008291D0);
  v111 = *(v112 - 1);
  __chkstk_darwin(v112);
  v110 = &v103 - v16;
  v109 = sub_1001F1160(&qword_100AE3D10, &qword_100826208);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v103 - v17;
  v18 = sub_10079CEE4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v106 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v105 = &v103 - v22;
  v104 = sub_1001F1160(&qword_100AE3D18, &qword_100826210);
  v23 = *(v104 - 8);
  __chkstk_darwin(v104);
  v25 = &v103 - v24;
  v26 = sub_10079BC44();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v30);
  v33 = &v103 - v32;
  v34 = OBJC_IVAR___REChromeStyle__colorScheme;
  (*(v27 + 104))(&v103 - v32, enum case for ColorScheme.light(_:), v26, v31);
  (*(v27 + 16))(v29, v33, v26);
  sub_10079B964();
  (*(v27 + 8))(v33, v26);
  v35 = v131;
  (*(v23 + 32))(&v131[v34], v25, v104);
  v36 = OBJC_IVAR___REChromeStyle__verticalSizeClass;
  v37 = v105;
  (*(v19 + 104))(v105, enum case for UserInterfaceSizeClass.regular(_:), v18);
  (*(v19 + 16))(v106, v37, v18);
  v38 = v107;
  sub_10079B964();
  (*(v19 + 8))(v37, v18);
  v39 = v35;
  (*(v108 + 32))(&v35[v36], v38, v109);
  v40 = OBJC_IVAR___REChromeStyle__statusBarHeight;
  v138 = 0x4046000000000000;
  v41 = v110;
  sub_10079B964();
  (*(v111 + 32))(&v35[v40], v41, v112);
  v42 = OBJC_IVAR___REChromeStyle__pageBackgroundColor;
  v138 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  sub_10079B964();
  v43 = *(v113 + 32);
  v44 = v114;
  v43(&v39[v42], v15, v114);
  v45 = OBJC_IVAR___REChromeStyle__pageTextColor;
  v138 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  sub_10079B964();
  v43(&v39[v45], v15, v44);
  v46 = OBJC_IVAR___REChromeStyle__themeSeparatorColor;
  v138 = _s5Books11ChromeStyleC20_themeSecondaryLabel33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI5ColorVGvpfi_0();
  sub_10079B964();
  v43(&v39[v46], v15, v44);
  v47 = OBJC_IVAR___REChromeStyle__themeSecondaryLabel;
  v138 = _s5Books11ChromeStyleC20_themeSecondaryLabel33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI5ColorVGvpfi_0();
  sub_10079B964();
  v43(&v39[v47], v15, v44);
  v48 = OBJC_IVAR___REChromeStyle__secondaryButtonLabelColor;
  v138 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  sub_10079B964();
  v43(&v39[v48], v15, v44);
  v49 = OBJC_IVAR___REChromeStyle__secondaryButtonFillColor;
  v138 = _s5Books11ChromeStyleC20_themeSecondaryLabel33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI5ColorVGvpfi_0();
  sub_10079B964();
  v43(&v39[v49], v15, v44);
  v113 = OBJC_IVAR___REChromeStyle__buttonStyle;
  v50 = v115;
  _s5Books11ChromeStyleC015_buttonDisabledC033_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy8BookEPUB0P11ThemeEntityV06ButtonC0VGvpfi_0();
  v51 = v133;
  v52 = *(v133 + 16);
  v53 = v116;
  v54 = v117;
  v52(v116, v50, v117);
  v112 = v52;
  v55 = v118;
  sub_10079B964();
  v114 = *(v51 + 8);
  (v114)(v50, v54);
  v133 = v51 + 8;
  v111 = *(v134 + 32);
  v134 += 32;
  v56 = v55;
  v57 = v55;
  v58 = v132;
  (v111)(&v39[v113], v56, v132);
  v113 = OBJC_IVAR___REChromeStyle__buttonDisabledStyle;
  _s5Books11ChromeStyleC015_buttonDisabledC033_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy8BookEPUB0P11ThemeEntityV06ButtonC0VGvpfi_0();
  v52(v53, v50, v54);
  sub_10079B964();
  v59 = v114;
  (v114)(v50, v54);
  v60 = v58;
  v61 = v111;
  (v111)(&v39[v113], v57, v60);
  v62 = OBJC_IVAR___REChromeStyle__secondaryButtonStyle;
  _s5Books11ChromeStyleC015_buttonDisabledC033_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy8BookEPUB0P11ThemeEntityV06ButtonC0VGvpfi_0();
  v112(v53, v50, v54);
  sub_10079B964();
  v59(v50, v54);
  v61(&v39[v62], v57, v132);
  v63 = OBJC_IVAR___REChromeStyle__downloadProgressStyle;
  v64 = v119;
  _s5Books11ChromeStyleC016_downloadSpinnerC033_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy8BookEPUB0P11ThemeEntityV08ProgressC0VGvpfi_0();
  v65 = v135;
  v134 = *(v135 + 16);
  v66 = v120;
  v67 = v121;
  (v134)(v120, v64, v121);
  v68 = v122;
  sub_10079B964();
  v69 = *(v65 + 8);
  v135 = v65 + 8;
  v69(v64, v67);
  v70 = *(v136 + 32);
  v136 += 32;
  v71 = v131;
  v72 = &v131[v63];
  v73 = v68;
  v74 = v68;
  v75 = v123;
  v70(v72, v73, v123);
  v76 = OBJC_IVAR___REChromeStyle__downloadSpinnerStyle;
  _s5Books11ChromeStyleC016_downloadSpinnerC033_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy8BookEPUB0P11ThemeEntityV08ProgressC0VGvpfi_0();
  (v134)(v66, v64, v67);
  sub_10079B964();
  v69(v64, v67);
  v70(&v71[v76], v74, v75);
  v77 = OBJC_IVAR___REChromeStyle__isLeftMenu;
  LOBYTE(v138) = 0;
  v78 = v124;
  sub_10079B964();
  v79 = *(v125 + 32);
  v80 = &v71[v77];
  v81 = v71;
  v82 = v126;
  v79(v80, v78, v126);
  v83 = OBJC_IVAR___REChromeStyle__isDarkTheme;
  LOBYTE(v138) = 0;
  sub_10079B964();
  v79(&v81[v83], v78, v82);
  v84 = OBJC_IVAR___REChromeStyle__themeHasDarkBackground;
  LOBYTE(v138) = 0;
  sub_10079B964();
  v79(&v81[v84], v78, v82);
  *&v81[OBJC_IVAR___REChromeStyle_menuPositionObserver] = 0;
  v136 = OBJC_IVAR___REChromeStyle_controlFont;
  v85 = v127;
  v86 = v128;
  v135 = *(v128 + 104);
  v87 = v129;
  (v135)(v127, enum case for Font.TextStyle.body(_:), v129);
  v88 = sub_10079D3A4();
  v134 = *(*(v88 - 8) + 56);
  v89 = v130;
  (v134)(v130, 1, 1, v88);
  v90 = sub_10079D434();
  sub_100007840(v89, &unk_100AD1FC0, &unk_10080B850);
  v91 = *(v86 + 8);
  v91(v85, v87);
  *&v81[v136] = v90;
  v92 = OBJC_IVAR___REChromeStyle_controlSubtitleFont;
  (v135)(v85, enum case for Font.TextStyle.caption(_:), v87);
  (v134)(v89, 1, 1, v88);
  v93 = sub_10079D434();
  sub_100007840(v89, &unk_100AD1FC0, &unk_10080B850);
  v91(v85, v87);
  *&v81[v92] = v93;
  v94 = type metadata accessor for ChromeStyle(0);
  v137.receiver = v81;
  v137.super_class = v94;
  v95 = objc_msgSendSuper2(&v137, "init");
  sub_10000A7C4(0, &qword_100ADC810, NSUserDefaults_ptr);
  v96 = v95;
  v97 = sub_1007A2A04();
  LOBYTE(v86) = [v97 BKMenuOnLeft];

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v138) = v86;
  v98 = v96;
  sub_10079B9B4();
  v99 = sub_1007A2A04();
  v138 = v99;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v100 = sub_100796894();

  v101 = *&v98[OBJC_IVAR___REChromeStyle_menuPositionObserver];
  *&v98[OBJC_IVAR___REChromeStyle_menuPositionObserver] = v100;

  return v98;
}

uint64_t type metadata accessor for ChromeStyle(uint64_t a1)
{
  result = qword_100AE3DD8;
  if (!qword_100AE3DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10044A328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001F1160(&qword_100AEF300, &unk_100826800);
    sub_100796884();
    if (v5 == 2)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9B4();
    }
  }
}

uint64_t sub_10044A40C(uint64_t a1, uint64_t a2, double a3)
{
  v89 = a1;
  v4 = sub_10079EDE4();
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v86 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v85 = v77 - v7;
  v83 = sub_10079ED74();
  v90 = *(v83 - 8);
  __chkstk_darwin(v83);
  v84 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = v77 - v10;
  v11 = sub_10079CEE4();
  v79 = *(v11 - 8);
  v80 = v11;
  __chkstk_darwin(v11);
  v81 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v78 = v77 - v14;
  v15 = sub_10079BC44();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v77 - v20;
  swift_getKeyPath();
  v77[2] = OBJC_IVAR____TtC5Books19BookReaderViewModel___observationRegistrar;
  v91[1] = a2;
  v77[1] = sub_10044DB90();
  sub_100797A14();

  v22 = OBJC_IVAR____TtC5Books19BookReaderViewModel__themeColorScheme;
  swift_beginAccess();
  v23 = *(v16 + 16);
  v23(v21, a2 + v22, v15);
  swift_getKeyPath();
  swift_getKeyPath();
  v23(v18, v21, v15);
  v24 = v77[3];
  sub_10079B9B4();
  (*(v16 + 8))(v21, v15);
  swift_getKeyPath();
  v91[0] = a2;
  sub_100797A14();

  v25 = *(a2 + OBJC_IVAR____TtC5Books19BookReaderViewModel__backgroundColor);
  v26 = sub_10079DEA4();
  swift_getKeyPath();
  swift_getKeyPath();
  v91[0] = v26;
  v27 = v24;
  sub_10079B9B4();
  swift_getKeyPath();
  v91[0] = a2;
  sub_100797A14();

  v28 = *(a2 + OBJC_IVAR____TtC5Books19BookReaderViewModel__textColor);
  v29 = sub_10079DEA4();
  swift_getKeyPath();
  swift_getKeyPath();
  v91[0] = v29;
  v30 = v27;
  sub_10079B9B4();
  v31 = [objc_opt_self() currentTraitCollection];
  v32 = [v31 verticalSizeClass];

  v34 = v78;
  v33 = v79;
  v35 = &enum case for UserInterfaceSizeClass.regular(_:);
  if (v32 != 2)
  {
    v35 = &enum case for UserInterfaceSizeClass.compact(_:);
  }

  v36 = v80;
  (*(v79 + 104))(v78, *v35, v80);
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v33;
  v38 = *(v33 + 16);
  v39 = v36;
  v38(v81, v34, v36);
  v40 = v30;
  sub_10079B9B4();
  (*(v37 + 8))(v34, v39);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v91);

  v41 = v91[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v91[0] = v41;
  v42 = v40;
  sub_10079B9B4();
  v43 = sub_10079EE94();
  swift_getKeyPath();
  swift_getKeyPath();
  v91[0] = v43;
  v44 = v42;
  sub_10079B9B4();
  v45 = sub_10079EE04();
  swift_getKeyPath();
  swift_getKeyPath();
  v91[0] = v45;
  v46 = v44;
  sub_10079B9B4();
  v47 = v82;
  sub_10079EEC4();
  v48 = sub_10079ED64();
  v49 = v90;
  v50 = *(v90 + 8);
  v51 = v83;
  v50(v47, v83);
  v81 = v50;
  swift_getKeyPath();
  swift_getKeyPath();
  v91[0] = v48;
  v52 = v46;
  sub_10079B9B4();
  sub_10079EEC4();
  v53 = sub_10079ED54();
  v50(v47, v51);
  swift_getKeyPath();
  swift_getKeyPath();
  v91[0] = v53;
  v54 = v52;
  sub_10079B9B4();
  sub_10079ED84();
  swift_getKeyPath();
  swift_getKeyPath();
  v55 = v49 + 16;
  v56 = *(v49 + 16);
  v90 = v55;
  v57 = v84;
  v56(v84, v47, v51);
  v58 = v54;
  sub_10079B9B4();
  v59 = v81;
  (v81)(v47, v51);
  sub_10079EE84();
  swift_getKeyPath();
  swift_getKeyPath();
  v56(v57, v47, v51);
  v60 = v58;
  sub_10079B9B4();
  v59(v47, v51);
  sub_10079EEC4();
  swift_getKeyPath();
  swift_getKeyPath();
  v56(v57, v47, v51);
  v61 = v60;
  sub_10079B9B4();
  v59(v47, v51);
  v62 = v85;
  sub_10079EED4();
  swift_getKeyPath();
  swift_getKeyPath();
  v64 = v86;
  v63 = v87;
  v90 = *(v87 + 16);
  v65 = v88;
  (v90)(v86, v62, v88);
  v66 = v61;
  sub_10079B9B4();
  v67 = *(v63 + 8);
  v67(v62, v65);
  sub_10079EEB4();
  swift_getKeyPath();
  swift_getKeyPath();
  (v90)(v64, v62, v65);
  v68 = v66;
  sub_10079B9B4();
  v67(v62, v65);
  LOBYTE(v50) = sub_10079EE44();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v91[0]) = v50 & 1;
  v69 = v68;
  sub_10079B9B4();
  sub_10079EF04();
  v70 = sub_10079EF74();
  v72 = v71;
  v73 = 1;
  if (v70 != sub_10079EF74() || v72 != v74)
  {
    v73 = sub_1007A3AB4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v91[0]) = v73 & 1;
  v75 = v69;
  return sub_10079B9B4();
}

uint64_t ChromeStyle.accentColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v6);

  (*(v1 + 104))(v3, enum case for ColorScheme.dark(_:), v0);
  v7 = sub_10079BC34();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    return _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v10 = [objc_opt_self() bc_booksKeyColor];
  return sub_10079DEA4();
}

BOOL ChromeStyle.isRightMenu.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return (v1 & 1) == 0;
}

double ChromeStyle.menuBottomInset.getter()
{
  v0 = sub_10079CEE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v6);

  (*(v1 + 104))(v3, enum case for UserInterfaceSizeClass.compact(_:), v0);
  v7 = sub_10079CED4();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  result = 20.0;
  if (v7)
  {
    return 17.0;
  }

  return result;
}

double ChromeStyle.floatingButtonTapMargin(targetSize:)(double a1)
{
  if (qword_100AD17D0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = (a1 - *&static REConstants.floatingButtonHeight) * 0.5;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t ChromeStyle.secondaryLabelColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v6);

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  v7 = sub_10079BC34();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  else
  {
    _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v9 = sub_10079DE24();

  return v9;
}

uint64_t ChromeStyle.labelBlendMode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10079BC44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v8);

  (*(v3 + 104))(v5, enum case for ColorScheme.light(_:), v2);
  v9 = sub_10079BC34();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  v11 = sub_10079E534();
  v12 = &enum case for BlendMode.plusDarker(_:);
  if ((v9 & 1) == 0)
  {
    v12 = &enum case for BlendMode.plusLighter(_:);
  }

  return (*(*(v11 - 8) + 104))(a1, *v12, v11);
}

uint64_t ChromeStyle.controlBackgroundColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v6);

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  sub_10079BC34();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return sub_10079DE54();
}

uint64_t ChromeStyle.disabledMaskColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v6);

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  sub_10079BC34();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return sub_10079DE54();
}

uint64_t ChromeStyle.controlContrastForegroundColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v6);

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  sub_10079BC34();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return sub_10079DE54();
}

uint64_t sub_10044BDD0(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v4 = sub_10079BC44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v15 - v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v10);

  (*(v5 + 104))(v7, enum case for ColorScheme.light(_:), v4);
  v11 = sub_10079BC34();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v13 = (v12)(v10, v4);
  if (v11)
  {
    return a1(v13);
  }

  else
  {
    return a2(v13);
  }
}

uint64_t ChromeStyle.contentFloatingSecondaryTextColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v6);

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  sub_10079BC34();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return sub_10079DE54();
}

uint64_t ChromeStyle.controlContrastBackgroundColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v6);

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  sub_10079BC34();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return sub_10079DE54();
}

uint64_t ChromeStyle.orientationLockHintForegroundColor(locked:)(char a1)
{
  v2 = sub_10079BC44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  if (a1)
  {
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v8);

    (*(v3 + 104))(v5, enum case for ColorScheme.light(_:), v2);
    v9 = sub_10079BC34();
    v10 = *(v3 + 8);
    v10(v5, v2);
    v10(v8, v2);
    if (v9)
    {
      return _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }
  }

  return _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
}

uint64_t ChromeStyle.orientationLockHintBackgroundColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v6);

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  sub_10079BC34();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return sub_10079DE54();
}

uint64_t sub_10044C604(SEL *a1)
{
  v1 = [objc_opt_self() *a1];

  return sub_10079DEA4();
}

uint64_t ChromeStyle.materialColor(primary:)(char a1)
{
  v2 = sub_10079BC44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  if ((a1 & 1) == 0)
  {
    return sub_10079DDC4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v8);

  (*(v3 + 104))(v5, enum case for ColorScheme.light(_:), v2);
  v9 = sub_10079BC34();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if ((v9 & 1) == 0)
  {
    return sub_10079DDC4();
  }

  _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v11 = sub_10079DE24();

  return v11;
}

uint64_t sub_10044C804(char a1)
{
  v2 = sub_1001F1160(&qword_100AE3E18, &qword_100826390);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = sub_10079BC44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v9);

  v10 = *(v3 + 56);
  (*(v7 + 32))(v5, v9, v6);
  v5[v10] = a1;
  v11 = (*(v7 + 88))(v5, v6);
  if (v11 == enum case for ColorScheme.light(_:))
  {
    (*(v7 + 8))(v5, v6);
    if (a1)
    {
      return 12;
    }

    else
    {
      return 17;
    }
  }

  else if (v11 == enum case for ColorScheme.dark(_:))
  {
    (*(v7 + 8))(v5, v6);
    if (a1)
    {
      return 17;
    }

    else
    {
      return 12;
    }
  }

  else
  {
    if (qword_100AD1650 != -1)
    {
      swift_once();
    }

    v13 = sub_10079ACE4();
    sub_100008B98(v13, qword_100AE3CD8);
    v14 = sub_10079ACC4();
    v15 = sub_1007A29B4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "unknown material environment", v16, 2u);
    }

    sub_100007840(v5, &qword_100AE3E18, &qword_100826390);
    return 7;
  }
}

uint64_t ChromeStyle.formElementColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v6);

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  v7 = sub_10079BC34();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    return _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  else
  {
    return sub_10079DE54();
  }
}

uint64_t ChromeStyle.checkmarkIconColor.getter()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v6);

  (*(v1 + 104))(v3, enum case for ColorScheme.light(_:), v0);
  sub_10079BC34();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return sub_10079DE54();
}

id ChromeStyle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChromeStyle(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10044D210@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ChromeStyle(0);
  result = sub_10079B8B4();
  *a2 = result;
  return result;
}

void sub_10044D250(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v3);

  *a2 = v3;
}

uint64_t sub_10044D2D0(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

void sub_10044D398(uint64_t a1)
{
  sub_10044D654(319, &qword_100AE3DE8, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_10044D654(319, &qword_100AE3DF0, &type metadata accessor for UserInterfaceSizeClass);
    if (v2 <= 0x3F)
    {
      sub_100205C6C(319, &qword_100AE3DF8, &type metadata for CGFloat);
      if (v3 <= 0x3F)
      {
        sub_100205C6C(319, &qword_100AE3E00, &type metadata for Color);
        if (v4 <= 0x3F)
        {
          sub_10044D654(319, &qword_100AE3E08, &type metadata accessor for BookThemeEntity.ButtonStyle);
          if (v5 <= 0x3F)
          {
            sub_10044D654(319, &qword_100AE3E10, &type metadata accessor for BookThemeEntity.ProgressStyle);
            if (v6 <= 0x3F)
            {
              sub_100205C6C(319, &qword_100AEB4D0, &type metadata for Bool);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10044D654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10079B9D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_10044D6A8@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10044D728(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

uint64_t sub_10044D840(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;

  return sub_10079B9B4();
}

double sub_10044D980@<D0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(a4);

  return result;
}

uint64_t sub_10044DA20(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v9 = (a5)(0, a2, a3, a4);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v21 - v15;
  v17 = *(v10 + 16);
  v17(&v21 - v15, a1, v9, v14);
  v18 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  (v17)(v12, v16, v9);
  v19 = v18;
  sub_10079B9B4();
  return (*(v10 + 8))(v16, v9);
}

unint64_t sub_10044DB90()
{
  result = qword_100AF2550;
  if (!qword_100AF2550)
  {
    type metadata accessor for BookReaderViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2550);
  }

  return result;
}

uint64_t type metadata accessor for ReadingSettingsView(uint64_t a1)
{
  result = qword_100AE3ED0;
  if (!qword_100AE3ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10044DC6C(uint64_t a1)
{
  sub_10044DFB4();
  if (v1 <= 0x3F)
  {
    sub_10044E0FC(319, &qword_100AE3EE8, &type metadata accessor for ReadingSettingsViewModel, &type metadata accessor for Bindable);
    if (v2 <= 0x3F)
    {
      sub_10044E018(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for REActionMenuState(319);
        if (v4 <= 0x3F)
        {
          sub_10044E0FC(319, &qword_100ADB690, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_100247C8C(319);
            if (v6 <= 0x3F)
            {
              sub_10024BB20(319, &qword_100AD6F10, &unk_100ADB6B0, qword_100816980, &type metadata accessor for Environment);
              if (v7 <= 0x3F)
              {
                sub_10044E0AC(319, &qword_100AD8BE0, &type metadata for Bool, &type metadata accessor for Environment);
                if (v8 <= 0x3F)
                {
                  sub_10044E0AC(319, &qword_100AE3F00, &type metadata for Bool, &type metadata accessor for State);
                  if (v9 <= 0x3F)
                  {
                    sub_10044E0AC(319, &qword_100AD6F30, &type metadata for CGFloat, &type metadata accessor for State);
                    if (v10 <= 0x3F)
                    {
                      sub_10044E0FC(319, &qword_100AE3F10, type metadata accessor for UIDeviceOrientation, &type metadata accessor for State);
                      if (v11 <= 0x3F)
                      {
                        sub_10044E0FC(319, &unk_100AE3F18, type metadata accessor for BrightnessController, &type metadata accessor for Bindable);
                        if (v12 <= 0x3F)
                        {
                          sub_10024BBD0();
                          if (v13 <= 0x3F)
                          {
                            sub_10024BB20(319, &qword_100AE3F28, &unk_100AE3F30, qword_100826870, &type metadata accessor for State);
                            if (v14 <= 0x3F)
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
    }
  }
}

unint64_t sub_10044DFB4()
{
  result = qword_100AE3EE0;
  if (!qword_100AE3EE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100AE3EE0);
  }

  return result;
}

void sub_10044E018(uint64_t a1)
{
  if (!qword_100AE3EF0)
  {
    type metadata accessor for OrientationLockHintViewModel(255);
    sub_100460EB4(&qword_100AD8CC8, type metadata accessor for OrientationLockHintViewModel, &protocol conformance descriptor for OrientationLockHintViewModel);
    v1 = sub_10079C054();
    if (!v2)
    {
      atomic_store(v1, &qword_100AE3EF0);
    }
  }
}

void sub_10044E0AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10044E0FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_10044E17C@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a2;
  v42 = a4;
  v7 = sub_100796CF4();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_1007A21D4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  v19 = sub_1001F1160(&qword_100AE4570, &qword_1008270F8);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v36 - v21;
  sub_1000077D8(v4, &v36 - v21, &qword_100AE4528, &qword_1008270C8);
  v22[*(v20 + 44)] = a1;
  if (a3)
  {
    v23 = a3;
    v24 = v41;
  }

  else
  {
    sub_1007A2154();
    v36 = v11;
    sub_100796C94();
    v25 = *(v13 + 16);
    v37 = v12;
    v25(v15, v18, v12);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v28 = v38;
    v29 = v39;
    v30 = v11;
    v31 = v40;
    (*(v39 + 16))(v38, v30, v40);
    v24 = sub_1007A22D4(v15, v41, 0, v27, v28, "Accessibility string for using VoiceOver double tapping to select", 65, 2);
    v23 = v32;
    (*(v29 + 8))(v36, v31);
    (*(v13 + 8))(v18, v37);
  }

  v33 = v42;
  sub_10020B3C8(v22, v42, &qword_100AE4570, &qword_1008270F8);
  v34 = v33 + *(sub_1001F1160(&qword_100AE4530, &qword_1008270D0) + 36);
  *v34 = (a1 & 1) == 0;
  *(v34 + 8) = v24;
  *(v34 + 16) = v23;

  return result;
}

uint64_t sub_10044E4EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1007A0444();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10044E544()
{
  v0 = sub_10079C3D4();
  sub_100009A38(v0, qword_100AE3E20);
  v1 = sub_100008B98(v0, qword_100AE3E20);
  if (qword_100AD1648 != -1)
  {
    swift_once();
  }

  v2 = qword_100B23378;
  v3 = *(v0 + 20);
  v4 = enum case for RoundedCornerStyle.continuous(_:);
  v5 = sub_10079C9E4();
  result = (*(*(v5 - 8) + 104))(&v1[v3], v4, v5);
  *v1 = v2;
  *(v1 + 1) = v2;
  return result;
}

uint64_t sub_10044E630@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for ReadingSettingsView(0);
  sub_1000077D8(v1 + *(v10 + 44), v9, &unk_100ADB730, &qword_1008121A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079BC44();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1007A29C4();
    v14 = sub_10079D244();
    sub_10079AB44(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10044E838@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ReadingSettingsView(0);
  sub_1000077D8(v1 + *(v10 + 52), v9, &unk_100ADB4C0, &qword_100813DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10020B3C8(v9, a1, &unk_100ADB6B0, qword_100816980);
  }

  v12 = sub_1007A29C4();
  v13 = sub_10079D244();
  sub_10079AB44(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10044EA20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ReadingSettingsView(0);
  sub_1000077D8(v1 + *(v10 + 56), v9, &unk_100ADB4C0, &qword_100813DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10020B3C8(v9, a1, &unk_100ADB6B0, qword_100816980);
  }

  v12 = sub_1007A29C4();
  v13 = sub_10079D244();
  sub_10079AB44(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10044EC08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v120 = a1;
  v118 = sub_1001F1160(&unk_100AE3FB0, &qword_1008138C0);
  __chkstk_darwin(v118);
  v117 = v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v115 = v101 - v5;
  v6 = sub_10079C0E4();
  v133 = *(v6 - 8);
  v134 = v6;
  __chkstk_darwin(v6);
  v132 = v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v131 = v101 - v9;
  v102 = sub_1001F1160(&qword_100AD53B0, &qword_1008268D0);
  __chkstk_darwin(v102);
  v116 = v101 - v10;
  v11 = sub_10079D074();
  v129 = *(v11 - 8);
  v130 = v11;
  __chkstk_darwin(v11);
  v128 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ReadingSettingsView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v123 = sub_1001F1160(&qword_100AE3FC0, &qword_1008268D8);
  v16 = *(v123 - 1);
  __chkstk_darwin(v123);
  v18 = v101 - v17;
  v122 = (sub_1001F1160(&qword_100AE3FC8, &qword_1008268E0) - 8);
  __chkstk_darwin(v122);
  v121 = v101 - v19;
  v137 = sub_1001F1160(&qword_100AE3FD0, &qword_1008268E8);
  __chkstk_darwin(v137);
  v138 = v101 - v20;
  v127 = sub_1001F1160(&qword_100AE3FD8, &qword_1008268F0);
  v124 = *(v127 - 8);
  __chkstk_darwin(v127);
  v139 = v101 - v21;
  v136 = sub_1001F1160(&qword_100AE3FE0, &qword_1008268F8);
  v126 = *(v136 - 8);
  __chkstk_darwin(v136);
  v125 = v101 - v22;
  v105 = sub_1001F1160(&qword_100AE3FE8, &qword_100826900);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v135 = v101 - v23;
  v109 = sub_1001F1160(&qword_100AE3FF0, &qword_100826908);
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v103 = v101 - v24;
  v108 = sub_1001F1160(&qword_100AE3FF8, &qword_100826910);
  __chkstk_darwin(v108);
  v106 = v101 - v25;
  v26 = sub_1001F1160(&qword_100AE4000, &qword_100826918);
  __chkstk_darwin(v26 - 8);
  v111 = v101 - v27;
  v110 = sub_1001F1160(&qword_100AE4008, &qword_100826920);
  __chkstk_darwin(v110);
  v114 = v101 - v28;
  v112 = sub_1001F1160(&qword_100AE4010, &qword_100826928);
  __chkstk_darwin(v112);
  v113 = v101 - v29;
  v119 = v13;
  v30 = *(v13 + 96);
  v31 = v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = (v1 + v30);
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = v32[2];
  *&v142 = v33;
  BYTE8(v142) = v34;
  *&v143 = v35;
  v101[2] = sub_1001F1160(&qword_100AE4018, &qword_100826930);
  sub_10079DFF4();
  v36 = v140;
  if (v141)
  {
    v36 = 320.0;
  }

  sub_10044FD4C(v18, fmin(v36, 768.0));
  sub_10045FFF4(v1, v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingSettingsView);
  v37 = *(v14 + 80);
  v38 = (v37 + 16) & ~v37;
  v39 = swift_allocObject();
  sub_100460DB0(v31, v39 + v38, type metadata accessor for ReadingSettingsView);
  v40 = *(v16 + 32);
  v41 = v121;
  v40(v121, v18, v123);
  v42 = (v41 + *(v122 + 11));
  *v42 = sub_1004588E4;
  v42[1] = v39;
  v42[2] = 0;
  v42[3] = 0;
  sub_10045FFF4(v1, v31, type metadata accessor for ReadingSettingsView);
  v43 = swift_allocObject();
  sub_100460DB0(v31, v43 + v38, type metadata accessor for ReadingSettingsView);
  v44 = v41;
  v45 = v138;
  sub_10020B3C8(v44, v138, &qword_100AE3FC8, &qword_1008268E0);
  v46 = (v45 + *(v137 + 36));
  *v46 = 0;
  v46[1] = 0;
  v46[2] = sub_1004588FC;
  v46[3] = v43;
  LOBYTE(v45) = sub_10079D254();
  sub_10079D264();
  sub_10079D264();
  if (sub_10079D264() != v45)
  {
    sub_10079D264();
  }

  v123 = type metadata accessor for ReadingSettingsView;
  sub_10045FFF4(v2, v31, type metadata accessor for ReadingSettingsView);
  v47 = swift_allocObject();
  v122 = type metadata accessor for ReadingSettingsView;
  sub_100460DB0(v31, v47 + v38, type metadata accessor for ReadingSettingsView);
  sub_10079E474();
  v48 = v2;
  v49 = v38 + v15;
  v50 = sub_100458994();
  v51 = (v37 + 16) & ~v37;
  v52 = v137;
  v53 = v138;
  sub_10079D9E4();

  sub_100007840(v53, &qword_100AE3FD0, &qword_1008268E8);
  type metadata accessor for CGSize(0);
  v55 = v54;
  v138 = v48;
  sub_10045FFF4(v48, v31, v123);
  v123 = v37;
  v101[1] = v49;
  v56 = swift_allocObject();
  v121 = v31;
  sub_100460DB0(v31, v56 + v38, v122);
  *&v142 = v52;
  *(&v142 + 1) = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v100 = sub_100460EB4(&unk_100AE40C0, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  v58 = v125;
  v59 = v127;
  v60 = v139;
  sub_10079D884();

  (*(v124 + 8))(v60, v59);
  v61 = v128;
  sub_10079D064();
  *&v142 = v59;
  *(&v142 + 1) = v55;
  *&v143 = OpaqueTypeConformance2;
  *(&v143 + 1) = v100;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v136;
  v139 = v62;
  sub_10079D9A4();
  (*(v129 + 8))(v61, v130);
  (*(v126 + 8))(v58, v63);
  v65 = v133;
  v64 = v134;
  v66 = *(v133 + 104);
  v67 = v131;
  v66(v131, enum case for DynamicTypeSize.xSmall(_:), v134);
  v68 = v132;
  v66(v132, enum case for DynamicTypeSize.xxxLarge(_:), v64);
  sub_100460EB4(&qword_100AD6D58, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_1007A20F4();
  if (result)
  {
    v70 = *(v65 + 32);
    v71 = v115;
    v70(v115, v67, v64);
    v72 = v118;
    v70((v71 + *(v118 + 48)), v68, v64);
    v137 = v51;
    v73 = v117;
    sub_1000077D8(v71, v117, &unk_100AE3FB0, &qword_1008138C0);
    v74 = *(v72 + 48);
    v75 = v116;
    v70(v116, v73, v64);
    v76 = *(v65 + 8);
    v76(v73 + v74, v64);
    sub_10020B3C8(v71, v73, &unk_100AE3FB0, &qword_1008138C0);
    v70((v75 + *(v102 + 36)), (v73 + *(v72 + 48)), v64);
    v76(v73, v64);
    *&v142 = v136;
    *(&v142 + 1) = v139;
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AE40D0, &qword_100AD53B0, &qword_1008268D0, &protocol conformance descriptor for ClosedRange<A>);
    v77 = v103;
    v78 = v105;
    v79 = v135;
    sub_10079D7E4();
    sub_100007840(v75, &qword_100AD53B0, &qword_1008268D0);
    (*(v104 + 8))(v79, v78);
    v80 = v138;
    v81 = v121;
    sub_10045FFF4(v138, v121, type metadata accessor for ReadingSettingsView);
    v82 = swift_allocObject();
    sub_100460DB0(v81, v82 + v137, type metadata accessor for ReadingSettingsView);
    v83 = v106;
    (*(v107 + 32))(v106, v77, v109);
    v84 = (v83 + *(v108 + 36));
    *v84 = sub_100458E34;
    v84[1] = v82;
    sub_100458EA4();
    v85 = v111;
    sub_10079DA54();
    sub_100007840(v83, &qword_100AE3FF8, &qword_100826910);
    v86 = v119;
    v87 = v80 + *(v119 + 100);
    v88 = *v87;
    v89 = *(v87 + 8);
    v90 = *(v87 + 16);
    *&v142 = v88;
    BYTE8(v142) = v89;
    *&v143 = v90;
    sub_10079DFF4();
    sub_10079E474();
    sub_10079BE54();
    v91 = v85;
    v92 = v114;
    sub_10020B3C8(v91, v114, &qword_100AE4000, &qword_100826918);
    v93 = (v92 + *(v110 + 36));
    v94 = v143;
    *v93 = v142;
    v93[1] = v94;
    v93[2] = v144;
    if (*(v80 + *(v86 + 28)))
    {
      v95 = 0x4028000000000000;
    }

    else
    {
      v95 = 0;
    }

    v96 = sub_10079D294();
    v97 = v113;
    sub_10020B3C8(v92, v113, &qword_100AE4008, &qword_100826920);
    v98 = v97 + *(v112 + 36);
    *v98 = v96;
    *(v98 + 8) = 0;
    *(v98 + 16) = v95;
    *(v98 + 24) = v95;
    *(v98 + 32) = v95;
    *(v98 + 40) = 0;
    v99 = v120;
    sub_10020B3C8(v97, v120, &qword_100AE4010, &qword_100826928);
    result = sub_1001F1160(&qword_100AE40E8, &qword_100826980);
    *(v99 + *(result + 36)) = 256;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10044FD4C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v265 = a1;
  v264 = sub_1001F1160(&qword_100AE4100, &qword_100819F08);
  __chkstk_darwin(v264);
  v263 = &v217 - v5;
  v278 = sub_1001F1160(&unk_100AE3E50, &qword_100826840);
  v262 = *(v278 - 8);
  __chkstk_darwin(v278);
  v261 = &v217 - v6;
  v7 = sub_10079D074();
  v259 = *(v7 - 8);
  v260 = v7;
  __chkstk_darwin(v7);
  v258 = &v217 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10079CF24();
  v256 = *(v9 - 8);
  v257 = v9;
  __chkstk_darwin(v9);
  v255 = &v217 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = sub_10079E234();
  __chkstk_darwin(v254);
  v253 = &v217 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = sub_10079BC44();
  v281 = *(v276 - 8);
  __chkstk_darwin(v276);
  v275 = &v217 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v274 = &v217 - v14;
  v236 = sub_10079E534();
  v234 = *(v236 - 8);
  __chkstk_darwin(v236);
  v230 = &v217 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_1001F1160(&qword_100AE4108, &qword_1008269C0);
  __chkstk_darwin(v228);
  v233 = &v217 - v16;
  v231 = sub_1001F1160(&qword_100AE4110, &qword_1008269C8);
  __chkstk_darwin(v231);
  v237 = &v217 - v17;
  v235 = sub_1001F1160(&qword_100AE4118, &qword_1008269D0);
  __chkstk_darwin(v235);
  v239 = &v217 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v232 = &v217 - v20;
  __chkstk_darwin(v21);
  v238 = &v217 - v22;
  v23 = sub_1001F1160(&qword_100AE4120, &qword_1008269D8);
  __chkstk_darwin(v23 - 8);
  v240 = &v217 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v279 = (&v217 - v26);
  v27 = sub_1001F1160(&qword_100AE4128, &qword_1008269E0);
  __chkstk_darwin(v27 - 8);
  v280 = (&v217 - v28);
  v242 = sub_1001F1160(&qword_100AE4130, &qword_1008269E8);
  __chkstk_darwin(v242);
  v246 = &v217 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v241 = &v217 - v31;
  __chkstk_darwin(v32);
  v245 = &v217 - v33;
  v269 = sub_1001F1160(&qword_100AE4138, &qword_1008269F0);
  v229 = *(v269 - 8);
  __chkstk_darwin(v269);
  v223 = &v217 - v34;
  v35 = sub_1001F1160(&qword_100AE4140, &qword_1008269F8);
  __chkstk_darwin(v35 - 8);
  v244 = &v217 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v217 - v38;
  v40 = sub_1001F1160(&qword_100AE4148, &qword_100826A00);
  __chkstk_darwin(v40 - 8);
  v243 = &v217 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v217 - v43;
  v45 = sub_1001F1160(&unk_100AE4150, &unk_100826A08);
  __chkstk_darwin(v45 - 8);
  v273 = &v217 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v49 = &v217 - v48;
  v247 = sub_1001F1160(&qword_100AE4050, &qword_100826948);
  __chkstk_darwin(v247);
  v51 = &v217 - v50;
  v249 = sub_1001F1160(&qword_100AE4038, &qword_100826940);
  __chkstk_darwin(v249);
  v248 = &v217 - v52;
  v53 = sub_1001F1160(&qword_100AE4030, &qword_100826938);
  v251 = *(v53 - 8);
  v252 = v53;
  __chkstk_darwin(v53);
  v250 = &v217 - v54;
  v55 = type metadata accessor for ReadingSettingsView(0);
  v267 = *(v55 - 8);
  __chkstk_darwin(v55);
  v266 = v56;
  v282 = &v217 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v57 - 8);
  v59 = &v217 - v58;
  v60 = *(v2 + *(v55 + 28));
  v61 = sub_1004522D4();
  v62 = 3.0;
  if (v61)
  {
    v62 = 6.0;
  }

  LODWORD(v227) = v60;
  if (v60)
  {
    v63 = 10.0;
  }

  else
  {
    v63 = 16.0;
  }

  v64 = 40.0;
  if (v60)
  {
    v64 = 24.0;
  }

  v225 = a2 - v64;
  v226 = v63;
  v65 = floor((a2 - v64 - (v62 + -1.0) * 10.0) / v62);
  v66 = 12.0;
  if (!v60)
  {
    v66 = 16.0;
  }

  v270 = v55;
  v67 = (v2 + *(v55 + 76));
  v68 = *v67;
  v69 = *(v67 + 1);
  v224 = v65;
  v70 = v65 - v66;
  v297 = v68;
  v298 = v69;
  sub_1001F1160(&qword_100AD7168, &qword_100813F20);
  sub_10079DFF4();
  v283 = v2;
  v277 = v51;
  v268 = v39;
  if (*&v286 != v70)
  {
    v71 = sub_1007A2744();
    (*(*(v71 - 8) + 56))(v59, 1, 1, v71);
    v72 = v282;
    sub_10045FFF4(v2, v282, type metadata accessor for ReadingSettingsView);
    sub_1007A26F4();
    v73 = sub_1007A26E4();
    v74 = (*(v267 + 80) + 32) & ~*(v267 + 80);
    v75 = (v266 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    *(v76 + 16) = v73;
    *(v76 + 24) = &protocol witness table for MainActor;
    v77 = v76 + v74;
    v3 = v283;
    v78 = v72;
    v39 = v268;
    sub_100460DB0(v78, v77, type metadata accessor for ReadingSettingsView);
    *(v76 + v75) = v70;
    v79 = v76;
    v51 = v277;
    sub_1003457A0(0, 0, v59, &unk_100826A20, v79);
  }

  *v51 = sub_10079CB24();
  *(v51 + 1) = 0;
  v51[16] = 0;
  sub_100453250();
  *v44 = sub_10079CB24();
  *(v44 + 1) = 0x4028000000000000;
  v44[16] = 0;
  v80 = sub_1001F1160(&unk_100AE4160, &qword_100826A28);
  sub_1004535B0(v3, &v44[*(v80 + 44)]);
  v81 = sub_100452C7C();
  v271 = v49;
  v272 = v44;
  if (v81)
  {
    v82 = v223;
    sub_10079E244();
    v83 = sub_10079D2B4();
    sub_10079BBA4();
    v84 = v269;
    v85 = v82 + *(v269 + 36);
    *v85 = v83;
    *(v85 + 8) = v86;
    *(v85 + 16) = v87;
    *(v85 + 24) = v88;
    *(v85 + 32) = v89;
    *(v85 + 40) = 0;
    sub_10020B3C8(v82, v39, &qword_100AE4138, &qword_1008269F0);
    v90 = 0;
  }

  else
  {
    v90 = 1;
    v84 = v269;
  }

  (*(v229 + 56))(v39, v90, 1, v84);
  v91 = sub_10079CB24();
  v92 = v280;
  *v280 = v91;
  v92[1] = 0;
  *(v92 + 16) = 0;
  v93 = v227;
  if (v227)
  {
    sub_10079E474();
    sub_10079BE54();
    LOBYTE(v337[0]) = 1;
    LOBYTE(v316) = v328;
    LOBYTE(v311) = v330;
    LOBYTE(v286) = 0;
    v297 = 0;
    LOBYTE(v298) = 1;
    v299 = v327;
    LOBYTE(v300) = v328;
    v301 = v329;
    LOBYTE(v302) = v330;
    v303 = v331;
    v304 = 0;
  }

  else
  {
    sub_10079E474();
    sub_10079BE54();
    LOBYTE(v337[0]) = 1;
    LOBYTE(v316) = v328;
    LOBYTE(v311) = v330;
    LOBYTE(v286) = 1;
    v297 = 0;
    LOBYTE(v298) = 1;
    v299 = v327;
    LOBYTE(v300) = v328;
    v301 = v329;
    LOBYTE(v302) = v330;
    v303 = v331;
    v304 = 1;
  }

  sub_1001F1160(&qword_100AD4988, &qword_100826A30);
  sub_1001FA380();
  sub_10079CCA4();
  v94 = sub_10079CB24();
  v95 = v279;
  *v279 = v94;
  v95[1] = 0;
  *(v95 + 16) = 0;
  v229 = *(v270 + 20);
  v96 = v283;
  sub_10079E304();
  v269 = sub_1007A14D4();

  v97 = v282;
  sub_10045FFF4(v96, v282, type metadata accessor for ReadingSettingsView);
  v98 = *(v267 + 80);
  v99 = (v98 + 16) & ~v98;
  v100 = v99 + v266;
  v223 = swift_allocObject();
  sub_100460DB0(v97, &v223[v99], type metadata accessor for ReadingSettingsView);
  v222 = sub_10079D284();
  sub_10079BBA4();
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v108 = v107;
  LOBYTE(v297) = 0;
  sub_10079E474();
  sub_10079BE54();
  LOBYTE(v337[0]) = 1;
  LOBYTE(v311) = v333;
  LOBYTE(v292) = v335;
  if (v93)
  {
    LOBYTE(v286) = 0;
    v297 = 0;
    LOBYTE(v298) = 1;
    v299 = v332;
    LOBYTE(v300) = v333;
    v301 = v334;
    LOBYTE(v302) = v335;
    v303 = v336;
    v304 = 0;
  }

  else
  {
    LOBYTE(v286) = 1;
    v297 = 0;
    LOBYTE(v298) = 1;
    v299 = v332;
    LOBYTE(v300) = v333;
    v301 = v334;
    LOBYTE(v302) = v335;
    v303 = v336;
    v304 = 1;
  }

  sub_1001F1160(&qword_100AD4988, &qword_100826A30);
  sub_1001FA380();
  sub_10079CCA4();
  v109 = v274;
  v110 = v275;
  v111 = v282;
  sub_10045FFF4(v283, v282, type metadata accessor for ReadingSettingsView);
  v266 = v98;
  v227 = v100;
  v112 = swift_allocObject();
  v267 = (v98 + 16) & ~v98;
  sub_100460DB0(v111, v112 + v99, type metadata accessor for ReadingSettingsView);
  sub_1006DA238(sub_10045E4F0, v112, v337);
  sub_10044E630(v109);
  v113 = v281;
  v114 = v276;
  v219 = *(v281 + 104);
  v220 = v281 + 104;
  v219(v110, enum case for ColorScheme.dark(_:), v276);
  LOBYTE(v112) = sub_10079BC34();
  v115 = *(v113 + 8);
  v281 = v113 + 8;
  v115(v110, v114);
  v221 = v115;
  v115(v109, v114);
  v116 = v234;
  v117 = &enum case for BlendMode.plusLighter(_:);
  if ((v112 & 1) == 0)
  {
    v117 = &enum case for BlendMode.plusDarker(_:);
  }

  v118 = v230;
  v119 = v236;
  (*(v234 + 104))(v230, *v117, v236);
  v120 = sub_1001F1160(&qword_100AE4178, &qword_100826A38);
  v218 = v280 + *(v120 + 44);
  v121 = sub_1001F1160(&qword_100AE4180, &qword_100826A40);
  v122 = v279 + *(v121 + 44);
  v123 = v233;
  (*(v116 + 32))(&v233[*(v228 + 36)], v118, v119);
  v124 = v337[1];
  v125 = v337[3];
  v123[2] = v337[2];
  v123[3] = v125;
  v123[4] = v337[4];
  *v123 = v337[0];
  v123[1] = v124;
  LOBYTE(v119) = sub_10079D284();
  sub_10079BBA4();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v134 = v237;
  sub_10020B3C8(v123, v237, &qword_100AE4108, &qword_1008269C0);
  v135 = v134 + *(v231 + 36);
  *v135 = v119;
  *(v135 + 8) = v127;
  *(v135 + 16) = v129;
  *(v135 + 24) = v131;
  *(v135 + 32) = v133;
  *(v135 + 40) = 0;
  LOBYTE(v119) = sub_10079D2B4();
  sub_10079BBA4();
  v137 = v136;
  v139 = v138;
  v141 = v140;
  v143 = v142;
  v144 = v134;
  v145 = v232;
  sub_10020B3C8(v144, v232, &qword_100AE4110, &qword_1008269C8);
  v146 = v145 + *(v235 + 36);
  *v146 = v119;
  *(v146 + 8) = v137;
  *(v146 + 16) = v139;
  *(v146 + 24) = v141;
  *(v146 + 32) = v143;
  *(v146 + 40) = 0;
  v147 = v145;
  v148 = v238;
  sub_10020B3C8(v147, v238, &qword_100AE4118, &qword_1008269D0);
  v294 = v318;
  v295 = v319;
  v296 = v320;
  v292 = v316;
  v293 = v317;
  v149 = v239;
  sub_1000077D8(v148, v239, &qword_100AE4118, &qword_1008269D0);
  *&v286 = v269;
  v151 = v224;
  v150 = v225;
  *(&v286 + 1) = v225;
  *&v287 = v224;
  *(&v287 + 1) = 0x4024000000000000;
  v152 = v226;
  *&v288 = v226;
  *(&v288 + 1) = sub_10045E470;
  v153 = v223;
  *&v289 = v223;
  *(&v289 + 1) = 2;
  LOBYTE(v119) = v222;
  LOBYTE(v290) = v222;
  *(&v290 + 1) = *v321;
  DWORD1(v290) = *&v321[3];
  *(&v290 + 1) = v102;
  *&v291[0] = v104;
  *(&v291[0] + 1) = v106;
  *&v291[1] = v108;
  BYTE8(v291[1]) = 0;
  v154 = v287;
  *v122 = v286;
  *(v122 + 1) = v154;
  *(v122 + 89) = *(v291 + 9);
  v155 = v289;
  *(v122 + 2) = v288;
  *(v122 + 3) = v155;
  v156 = v291[0];
  *(v122 + 4) = v290;
  *(v122 + 5) = v156;
  v157 = v292;
  v158 = v293;
  v159 = v294;
  v160 = v295;
  v122[176] = v296;
  *(v122 + 9) = v159;
  *(v122 + 10) = v160;
  *(v122 + 7) = v157;
  *(v122 + 8) = v158;
  v161 = sub_1001F1160(&qword_100AE4188, &qword_100826A48);
  sub_1000077D8(v149, &v122[*(v161 + 64)], &qword_100AE4118, &qword_1008269D0);
  sub_1000077D8(&v286, &v297, &qword_100AE4190, &qword_100826A50);
  sub_100007840(v148, &qword_100AE4118, &qword_1008269D0);
  sub_100007840(v149, &qword_100AE4118, &qword_1008269D0);
  v297 = v269;
  v298 = v150;
  v299 = v151;
  v300 = 0x4024000000000000;
  v301 = v152;
  v302 = sub_10045E470;
  *&v303 = v153;
  *(&v303 + 1) = 2;
  v304 = v119;
  *v305 = *v321;
  *&v305[3] = *&v321[3];
  v306 = v102;
  v307 = v104;
  v308 = v106;
  v309 = v108;
  v310 = 0;
  sub_100007840(&v297, &qword_100AE4190, &qword_100826A50);
  v313 = v324;
  v314 = v325;
  v315 = v326;
  v311 = v322;
  v312 = v323;
  v162 = v279;
  v163 = v240;
  sub_1000077D8(v279, v240, &qword_100AE4120, &qword_1008269D8);
  v164 = v314;
  v165 = v218;
  *(v218 + 2) = v313;
  *(v165 + 3) = v164;
  v165[64] = v315;
  v166 = v312;
  *v165 = v311;
  *(v165 + 1) = v166;
  v167 = v165;
  v168 = sub_1001F1160(&qword_100AE4198, &qword_100826A58);
  sub_1000077D8(v163, &v167[*(v168 + 48)], &qword_100AE4120, &qword_1008269D8);
  sub_100007840(v162, &qword_100AE4120, &qword_1008269D8);
  sub_100007840(v163, &qword_100AE4120, &qword_1008269D8);
  v169 = *(v283 + *(v270 + 48));
  if (v169)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v170 = v169;
    v171 = v274;
    sub_10079B9A4(v274);

    v172 = v275;
    v173 = v276;
    v219(v275, enum case for ColorScheme.light(_:), v276);
    sub_10079BC34();
    v174 = v172;
    v175 = v221;
    v221(v174, v173);
    v175(v171, v173);
    sub_10079DE54();

    v176 = sub_1001F1160(&qword_100AE41A0, &qword_100826AA8);
    v177 = &v277[*(v176 + 44)];
    v178 = sub_10079DE24();

    v179 = sub_10079D294();
    v180 = v241;
    sub_10020B3C8(v280, v241, &qword_100AE4128, &qword_1008269E0);
    v181 = v180 + *(v242 + 36);
    *v181 = v178;
    *(v181 + 8) = v179;
    v182 = v245;
    sub_10020B3C8(v180, v245, &qword_100AE4130, &qword_1008269E8);
    v183 = v273;
    sub_1000077D8(v271, v273, &unk_100AE4150, &unk_100826A08);
    v184 = v243;
    sub_1000077D8(v272, v243, &qword_100AE4148, &qword_100826A00);
    v185 = v268;
    v186 = v244;
    sub_1000077D8(v268, v244, &qword_100AE4140, &qword_1008269F8);
    v187 = v246;
    sub_1000077D8(v182, v246, &qword_100AE4130, &qword_1008269E8);
    sub_1000077D8(v183, v177, &unk_100AE4150, &unk_100826A08);
    v188 = sub_1001F1160(&qword_100AE41A8, &qword_100826AB0);
    sub_1000077D8(v184, v177 + v188[12], &qword_100AE4148, &qword_100826A00);
    sub_1000077D8(v186, v177 + v188[16], &qword_100AE4140, &qword_1008269F8);
    sub_1000077D8(v187, v177 + v188[20], &qword_100AE4130, &qword_1008269E8);
    sub_100007840(v182, &qword_100AE4130, &qword_1008269E8);
    sub_100007840(v185, &qword_100AE4140, &qword_1008269F8);
    sub_100007840(v272, &qword_100AE4148, &qword_100826A00);
    sub_100007840(v271, &unk_100AE4150, &unk_100826A08);
    sub_100007840(v187, &qword_100AE4130, &qword_1008269E8);
    sub_100007840(v186, &qword_100AE4140, &qword_1008269F8);
    sub_100007840(v184, &qword_100AE4148, &qword_100826A00);
    sub_100007840(v273, &unk_100AE4150, &unk_100826A08);
    KeyPath = swift_getKeyPath();
    v190 = enum case for RoundedCornerStyle.continuous(_:);
    v191 = sub_10079C9E4();
    (*(*(v191 - 8) + 104))(v253, v190, v191);
    sub_100460EB4(&qword_100AE41B0, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
    v192 = v277;
    v193 = sub_10079E2F4();
    v194 = (v192 + *(sub_1001F1160(&qword_100AE4070, &qword_100826958) + 36));
    *v194 = KeyPath;
    v194[1] = v193;
    v195 = swift_getKeyPath();
    if (qword_100AD1660 != -1)
    {
      swift_once();
    }

    v196 = qword_100AE3E38;
    v197 = (v192 + *(sub_1001F1160(&qword_100AE4060, &qword_100826950) + 36));
    *v197 = v195;
    v197[1] = v196;

    v198 = sub_10079DDC4();
    v199 = sub_10079D294();
    v200 = v192 + *(v247 + 36);
    *v200 = v198;
    *(v200 + 8) = v199;
    v201 = v192;
    v202 = v255;
    sub_10079CF04();
    v203 = v283;
    v204 = v282;
    sub_10045FFF4(v283, v282, type metadata accessor for ReadingSettingsView);
    v205 = swift_allocObject();
    sub_100460DB0(v204, v205 + v267, type metadata accessor for ReadingSettingsView);
    sub_100458B60();
    v206 = v248;
    sub_10079D934();

    (*(v256 + 8))(v202, v257);
    sub_100007840(v201, &qword_100AE4050, &qword_100826948);
    v207 = v258;
    sub_10079D064();
    v208 = sub_1004605A8(&qword_100AE4040, &qword_100AE4038, &qword_100826940, sub_100458B60);
    v210 = v249;
    v209 = v250;
    sub_10079D9A4();
    (*(v259 + 8))(v207, v260);
    sub_100007840(v206, &qword_100AE4038, &qword_100826940);
    v211 = v261;
    v212 = v278;
    sub_10079E314();
    swift_getKeyPath();
    v213 = v263;
    sub_10079E334();

    (*(v262 + 8))(v211, v212);
    swift_getKeyPath();
    sub_10079E1E4();

    v214 = sub_100007840(v213, &qword_100AE4100, &qword_100819F08);
    __chkstk_darwin(v214);
    *(&v217 - 2) = v203;
    v284 = v210;
    v285 = v208;
    swift_getOpaqueTypeConformance2();
    v215 = v252;
    sub_10079DAF4();

    return (*(v251 + 8))(v209, v215);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_100460EB4(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

double sub_100451AC4(double a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ReadingSettingsView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v10 - 8);
  v12 = v25 - v11;
  v13 = 768.0;
  if (a1 <= 768.0)
  {
    v13 = a1;
  }

  v14 = v13 + -20.0;
  v15 = (a3 + *(v6 + 104));
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = v15[2];
  v27 = v16;
  v28 = v17;
  v29 = v18;
  sub_1001F1160(&qword_100AE4018, &qword_100826930);
  sub_10079DFF4();
  if ((v26 & 1) != 0 || v14 != v25[1])
  {
    v19 = sub_1007A2744();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    sub_10045FFF4(a3, v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingSettingsView);
    sub_1007A26F4();
    v20 = sub_1007A26E4();
    v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 24) = &protocol witness table for MainActor;
    sub_100460DB0(v9, v23 + v21, type metadata accessor for ReadingSettingsView);
    *(v23 + v22) = v14;
    sub_1003457A0(0, 0, v12, &unk_1008269B0, v23);
  }

  return v14;
}

uint64_t sub_100451D38(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a1;
  *(v5 + 56) = a5;
  sub_1007A26F4();
  *(v5 + 72) = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_100451DD4, v7, v6);
}

uint64_t sub_100451DD4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  v3 = (v2 + *(type metadata accessor for ReadingSettingsView(0) + 96));
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = v3[2];
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  sub_1001F1160(&qword_100AE4018, &qword_100826930);
  sub_10079E004();
  v7 = *(v0 + 8);

  return v7();
}

void sub_100451E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ReadingSettingsView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v13 = floor(*(a2 + 8));
  v14 = (a3 + *(v6 + 108));
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = v14[2];
  v25 = v15;
  v26 = v16;
  v27 = v17;
  sub_1001F1160(&qword_100AE4018, &qword_100826930);
  sub_10079DFF4();
  if ((v24 & 1) != 0 || v13 != v23[1])
  {
    v18 = sub_1007A2744();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    sub_10045FFF4(a3, v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingSettingsView);
    sub_1007A26F4();
    v19 = sub_1007A26E4();
    v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = &protocol witness table for MainActor;
    sub_100460DB0(v9, v22 + v20, type metadata accessor for ReadingSettingsView);
    *(v22 + v21) = v13;
    sub_1003457A0(0, 0, v12, &unk_1008269A0, v22);
  }
}

uint64_t sub_100452104(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a1;
  *(v5 + 56) = a5;
  sub_1007A26F4();
  *(v5 + 72) = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_1004521A0, v7, v6);
}

uint64_t sub_1004521A0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  v3 = (v2 + *(type metadata accessor for ReadingSettingsView(0) + 100));
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = v3[2];
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  sub_1001F1160(&qword_100AE4018, &qword_100826930);
  sub_10079E004();
  v7 = *(v0 + 8);

  return v7();
}

double sub_100452268(uint64_t a1, uint64_t a2)
{
  sub_10045DB44();
  type metadata accessor for ReadingSettingsView(0);
  sub_1001F1160(&unk_100AE40F0, &unk_100826988);
  sub_10079E004();
  return result;
}

uint64_t sub_1004522D4()
{
  v1 = sub_10079CEE4();
  v73 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1001F1160(&unk_100ADBB30, &qword_100813E90);
  __chkstk_darwin(v72);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_1001F1160(&unk_100ADB6B0, qword_100816980);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v58 - v13;
  __chkstk_darwin(v15);
  v70 = &v58 - v16;
  __chkstk_darwin(v17);
  v71 = &v58 - v18;
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  __chkstk_darwin(v22);
  v24 = &v58 - v23;
  v25 = type metadata accessor for ReadingSettingsView(0);
  v26 = *(v25 + 28);
  v74 = v0;
  if (*(v0 + v26) & 1) != 0 || (v29 = v25, v69 = v14, v63 = v11, v30 = [objc_opt_self() currentDevice], v31 = objc_msgSend(v30, "userInterfaceIdiom"), v30, (v68 = v31) == 0) && (swift_getKeyPath(), swift_getKeyPath(), sub_10079B9A4(&v76), , , (v76))
  {
LABEL_2:
    v27 = 0;
    return v27 & 1;
  }

  v62 = v3;
  v32 = (v74 + *(v29 + 80));
  v33 = *v32;
  v34 = v32[1];
  v76 = *v32;
  v77 = v34;
  sub_1001F1160(&unk_100AE40F0, &unk_100826988);
  sub_10079DFF4();
  v67 = v5;
  if (v75 == 3)
  {
    v35 = 1;
  }

  else
  {
    v76 = v33;
    v77 = v34;
    sub_10079DFF4();
    v35 = v75 == 4;
  }

  v61 = v35;
  v36 = (v74 + *(v29 + 84));
  v37 = *v36;
  v38 = v36[1];
  v76 = *v36;
  v77 = v38;
  sub_10079DFF4();
  if (v75 == 3)
  {
    v39 = 1;
  }

  else
  {
    v76 = v37;
    v77 = v38;
    sub_10079DFF4();
    v39 = v75 == 4;
  }

  v60 = v39;
  v76 = v33;
  v77 = v34;
  sub_10079DFF4();
  if (v75 == 5)
  {
    v40 = 1;
  }

  else
  {
    v76 = v33;
    v77 = v34;
    sub_10079DFF4();
    v40 = v75 == 6;
  }

  v59 = v40;
  sub_10044E838(v24);
  v41 = v73;
  v65 = *(v73 + 104);
  v65(v21, enum case for UserInterfaceSizeClass.regular(_:), v1);
  v64 = *(v41 + 56);
  v64(v21, 0, 1, v1);
  v42 = *(v72 + 48);
  sub_1000077D8(v24, v8, &unk_100ADB6B0, qword_100816980);
  sub_1000077D8(v21, &v8[v42], &unk_100ADB6B0, qword_100816980);
  v43 = *(v41 + 48);
  v44 = v43(v8, 1, v1);
  v66 = v43;
  if (v44 == 1)
  {
    sub_100007840(v21, &unk_100ADB6B0, qword_100816980);
    sub_100007840(v24, &unk_100ADB6B0, qword_100816980);
    if (v43(&v8[v42], 1, v1) == 1)
    {
      v45 = v8;
LABEL_24:
      sub_100007840(v45, &unk_100ADB6B0, qword_100816980);
      v27 = 1;
      return v27 & 1;
    }

    goto LABEL_20;
  }

  v46 = v71;
  sub_1000077D8(v8, v71, &unk_100ADB6B0, qword_100816980);
  if (v43(&v8[v42], 1, v1) == 1)
  {
    sub_100007840(v21, &unk_100ADB6B0, qword_100816980);
    sub_100007840(v24, &unk_100ADB6B0, qword_100816980);
    (*(v73 + 8))(v46, v1);
LABEL_20:
    sub_100007840(v8, &unk_100ADBB30, &qword_100813E90);
    goto LABEL_21;
  }

  v53 = v62;
  (*(v73 + 32))(v62, &v8[v42], v1);
  sub_100460EB4(&qword_100AE41D0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v58 = sub_1007A2124();
  v54 = *(v73 + 8);
  v54(v53, v1);
  sub_100007840(v21, &unk_100ADB6B0, qword_100816980);
  sub_100007840(v24, &unk_100ADB6B0, qword_100816980);
  v54(v71, v1);
  sub_100007840(v8, &unk_100ADB6B0, qword_100816980);
  if (v58)
  {
    v27 = 1;
    return v27 & 1;
  }

LABEL_21:
  v47 = v70;
  sub_10044EA20(v70);
  v48 = v69;
  v65(v69, enum case for UserInterfaceSizeClass.compact(_:), v1);
  v64(v48, 0, 1, v1);
  v49 = *(v72 + 48);
  v50 = v67;
  sub_1000077D8(v47, v67, &unk_100ADB6B0, qword_100816980);
  sub_1000077D8(v48, v50 + v49, &unk_100ADB6B0, qword_100816980);
  v51 = v66;
  if (v66(v50, 1, v1) == 1)
  {
    sub_100007840(v48, &unk_100ADB6B0, qword_100816980);
    sub_100007840(v47, &unk_100ADB6B0, qword_100816980);
    if (v51(v50 + v49, 1, v1) == 1)
    {
      v45 = v50;
      goto LABEL_24;
    }

LABEL_27:
    sub_100007840(v50, &unk_100ADBB30, &qword_100813E90);
    if (!v68)
    {
LABEL_33:
      v27 = v61 || v60 && v59;
      return v27 & 1;
    }

    goto LABEL_2;
  }

  v52 = v63;
  sub_1000077D8(v50, v63, &unk_100ADB6B0, qword_100816980);
  if (v51(v50 + v49, 1, v1) == 1)
  {
    sub_100007840(v69, &unk_100ADB6B0, qword_100816980);
    sub_100007840(v47, &unk_100ADB6B0, qword_100816980);
    (*(v73 + 8))(v52, v1);
    goto LABEL_27;
  }

  v55 = v73;
  v56 = v62;
  (*(v73 + 32))(v62, v50 + v49, v1);
  sub_100460EB4(&qword_100AE41D0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v27 = sub_1007A2124();
  v57 = *(v55 + 8);
  v57(v56, v1);
  sub_100007840(v69, &unk_100ADB6B0, qword_100816980);
  sub_100007840(v47, &unk_100ADB6B0, qword_100816980);
  v57(v52, v1);
  sub_100007840(v50, &unk_100ADB6B0, qword_100816980);
  if (!v68 && (v27 & 1) == 0)
  {
    goto LABEL_33;
  }

  return v27 & 1;
}

uint64_t sub_100452C7C()
{
  v0 = sub_10079CEE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001F1160(&unk_100ADBB30, &qword_100813E90);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_1001F1160(&unk_100ADB6B0, qword_100816980);
  __chkstk_darwin(v7 - 8);
  v24 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  type metadata accessor for ReadingSettingsView(0);
  sub_1001F1160(&qword_100AE3E68, &qword_100826848);
  sub_10079E304();

  sub_10044EA20(v14);
  (*(v1 + 104))(v11, enum case for UserInterfaceSizeClass.regular(_:), v0);
  (*(v1 + 56))(v11, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_1000077D8(v14, v6, &unk_100ADB6B0, qword_100816980);
  sub_1000077D8(v11, &v6[v15], &unk_100ADB6B0, qword_100816980);
  v16 = *(v1 + 48);
  if (v16(v6, 1, v0) != 1)
  {
    sub_1000077D8(v6, v24, &unk_100ADB6B0, qword_100816980);
    if (v16(&v6[v15], 1, v0) != 1)
    {
      v18 = v23;
      (*(v1 + 32))(v23, &v6[v15], v0);
      sub_100460EB4(&qword_100AE41D0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v19 = v24;
      v17 = sub_1007A2124();
      v20 = *(v1 + 8);
      v20(v18, v0);
      sub_100007840(v11, &unk_100ADB6B0, qword_100816980);
      sub_100007840(v14, &unk_100ADB6B0, qword_100816980);
      v20(v19, v0);
      sub_100007840(v6, &unk_100ADB6B0, qword_100816980);
      return v17 & 1;
    }

    sub_100007840(v11, &unk_100ADB6B0, qword_100816980);
    sub_100007840(v14, &unk_100ADB6B0, qword_100816980);
    (*(v1 + 8))(v24, v0);
    goto LABEL_6;
  }

  sub_100007840(v11, &unk_100ADB6B0, qword_100816980);
  sub_100007840(v14, &unk_100ADB6B0, qword_100816980);
  if (v16(&v6[v15], 1, v0) != 1)
  {
LABEL_6:
    sub_100007840(v6, &unk_100ADBB30, &qword_100813E90);
    v17 = 0;
    return v17 & 1;
  }

  sub_100007840(v6, &unk_100ADB6B0, qword_100816980);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1004530F8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a1;
  *(v5 + 40) = a5;
  sub_1007A26F4();
  *(v5 + 56) = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_100453194, v7, v6);
}

uint64_t sub_100453194()
{
  v1 = v0[6];
  v2 = v0[5];

  v3 = (v2 + *(type metadata accessor for ReadingSettingsView(0) + 76));
  v4 = *v3;
  v5 = v3[1];
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v1;
  sub_1001F1160(&qword_100AD7168, &qword_100813F20);
  sub_10079E004();
  v6 = v0[1];

  return v6();
}

uint64_t sub_100453250()
{
  v1 = sub_1001F1160(&qword_100AE43D0, &qword_100826DB8);
  __chkstk_darwin(v1);
  v3 = v37 - v2;
  v4 = sub_1001F1160(&qword_100AE43D8, &qword_100826DC0);
  __chkstk_darwin(v4);
  v6 = v37 - v5;
  v7 = sub_1001F1160(&qword_100AE43E0, &qword_100826DC8);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  v10 = sub_1004552A8();
  v12 = v11;
  if (*(v0 + *(type metadata accessor for ReadingSettingsView(0) + 28)) == 1)
  {
    v37[0] = v10;
    v37[1] = v12;
    sub_1003F2178();
    sub_10079D944();

    v13 = sub_10079D2B4();
    sub_10079BBA4();
    v14 = &v9[*(v7 + 36)];
    *v14 = v13;
    *(v14 + 1) = v15;
    *(v14 + 2) = v16;
    *(v14 + 3) = v17;
    *(v14 + 4) = v18;
    v14[40] = 0;
    sub_1000077D8(v9, v6, &qword_100AE43E0, &qword_100826DC8);
    swift_storeEnumTagMultiPayload();
    sub_10045F3E0();
    sub_10045F498();
    sub_10079CCA4();
    return sub_100007840(v9, &qword_100AE43E0, &qword_100826DC8);
  }

  else
  {
    *v3 = sub_10079C8F4();
    *(v3 + 1) = 0;
    v3[16] = 1;
    v20 = sub_1001F1160(&qword_100AE43E8, &qword_100826DD0);
    sub_100455524(v10, v12, v0, &v3[*(v20 + 44)]);

    v21 = sub_10079D2A4();
    sub_10079BBA4();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = &v3[*(sub_1001F1160(&qword_100AE43F0, &qword_100826DD8) + 36)];
    *v30 = v21;
    *(v30 + 1) = v23;
    *(v30 + 2) = v25;
    *(v30 + 3) = v27;
    *(v30 + 4) = v29;
    v30[40] = 0;
    v31 = sub_10079D2B4();
    sub_10079BBA4();
    v32 = &v3[*(v1 + 36)];
    *v32 = v31;
    *(v32 + 1) = v33;
    *(v32 + 2) = v34;
    *(v32 + 3) = v35;
    *(v32 + 4) = v36;
    v32[40] = 0;
    sub_1000077D8(v3, v6, &qword_100AE43D0, &qword_100826DB8);
    swift_storeEnumTagMultiPayload();
    sub_10045F3E0();
    sub_10045F498();
    sub_10079CCA4();
    return sub_100007840(v3, &qword_100AE43D0, &qword_100826DB8);
  }
}

uint64_t sub_1004535B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v3 = sub_1001F1160(&qword_100AE41D8, &qword_100826BA8);
  v114 = *(v3 - 8);
  v115 = v3;
  __chkstk_darwin(v3);
  v121 = &v100 - v4;
  v108 = sub_1001F1160(&qword_100AE41E0, &qword_100826BB0);
  __chkstk_darwin(v108);
  v112 = &v100 - v5;
  v109 = sub_1001F1160(&qword_100AE41E8, &qword_100826BB8);
  __chkstk_darwin(v109);
  v113 = &v100 - v6;
  v7 = sub_1001F1160(&qword_100AE41F0, &qword_100826BC0);
  v8 = *(v7 - 8);
  v122 = v7;
  v123 = v8;
  __chkstk_darwin(v7);
  v111 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v110 = &v100 - v11;
  v12 = sub_1001F1160(&qword_100AE41F8, &qword_100826BC8);
  __chkstk_darwin(v12 - 8);
  v124 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v120 = &v100 - v15;
  v127 = sub_10079BC44();
  v16 = *(v127 - 8);
  __chkstk_darwin(v127);
  v18 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v100 - v20;
  v126 = sub_10079E534();
  v118 = *(v126 - 8);
  __chkstk_darwin(v126);
  v104 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v117 = &v100 - v24;
  v25 = sub_1001F1160(&qword_100AE4200, &qword_100826BD0);
  v26 = v25 - 8;
  __chkstk_darwin(v25);
  v28 = &v100 - v27;
  v116 = sub_1001F1160(&qword_100AE4208, &qword_100826BD8) - 8;
  __chkstk_darwin(v116);
  v119 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v100 - v31;
  __chkstk_darwin(v33);
  v128 = &v100 - v34;
  *v28 = sub_10079C8F4();
  *(v28 + 1) = 0x4024000000000000;
  v28[16] = 0;
  v35 = sub_1001F1160(&qword_100AE4210, &qword_100826BE0);
  sub_100455E98(a1, &v28[*(v35 + 44)]);
  v36 = sub_10079D284();
  sub_10079BBA4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = &v28[*(sub_1001F1160(&qword_100AE4218, &qword_100826BE8) + 36)];
  *v45 = v36;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  *&v28[*(v26 + 44)] = 256;
  sub_10044E630(v21);
  v46 = *(v16 + 104);
  v47 = v18;
  v48 = v18;
  v102 = enum case for ColorScheme.dark(_:);
  v49 = v127;
  v101 = v46;
  v46(v48);
  LOBYTE(v26) = sub_10079BC34();
  v50 = *(v16 + 8);
  v106 = v47;
  v50(v47, v49);
  v105 = v21;
  v107 = v16 + 8;
  v103 = v50;
  v50(v21, v49);
  v51 = v118;
  v52 = *(v118 + 104);
  v53 = &enum case for BlendMode.plusLighter(_:);
  if ((v26 & 1) == 0)
  {
    v53 = &enum case for BlendMode.plusDarker(_:);
  }

  v54 = v117;
  v55 = v126;
  v52(v117, *v53, v126);
  v56 = *(v51 + 32);
  v56(&v32[*(v116 + 44)], v54, v55);
  sub_10020B3C8(v28, v32, &qword_100AE4200, &qword_100826BD0);
  sub_10020B3C8(v32, v128, &qword_100AE4208, &qword_100826BD8);
  if (sub_100452C7C())
  {
    sub_100453F9C();
    v57 = v105;
    sub_10044E630(v105);
    v58 = v106;
    v59 = v127;
    v101(v106, v102, v127);
    v60 = sub_10079BC34();
    v61 = v52;
    v62 = v103;
    v103(v58, v59);
    v62(v57, v59);
    v63 = &enum case for BlendMode.plusLighter(_:);
    if ((v60 & 1) == 0)
    {
      v63 = &enum case for BlendMode.plusDarker(_:);
    }

    v64 = v104;
    v65 = v126;
    v61(v104, *v63, v126);
    v66 = v112;
    v56(&v112[*(v108 + 36)], v64, v65);
    (*(v114 + 32))(v66, v121, v115);
    LOBYTE(v65) = sub_10079D284();
    sub_10079BBA4();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = v66;
    v76 = v113;
    sub_10020B3C8(v75, v113, &qword_100AE41E0, &qword_100826BB0);
    v77 = v76 + *(v109 + 36);
    *v77 = v65;
    *(v77 + 8) = v68;
    *(v77 + 16) = v70;
    *(v77 + 24) = v72;
    *(v77 + 32) = v74;
    *(v77 + 40) = 0;
    LOBYTE(v65) = sub_10079D2B4();
    sub_10079BBA4();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v86 = v111;
    sub_10020B3C8(v76, v111, &qword_100AE41E8, &qword_100826BB8);
    v87 = v122;
    v88 = v86 + *(v122 + 36);
    *v88 = v65;
    *(v88 + 8) = v79;
    *(v88 + 16) = v81;
    *(v88 + 24) = v83;
    *(v88 + 32) = v85;
    *(v88 + 40) = 0;
    v89 = v86;
    v90 = v110;
    sub_10020B3C8(v89, v110, &qword_100AE41F0, &qword_100826BC0);
    v91 = v120;
    sub_10020B3C8(v90, v120, &qword_100AE41F0, &qword_100826BC0);
    v92 = 0;
    v93 = v87;
  }

  else
  {
    v92 = 1;
    v93 = v122;
    v91 = v120;
  }

  (*(v123 + 56))(v91, v92, 1, v93);
  v94 = v128;
  v95 = v119;
  sub_1000077D8(v128, v119, &qword_100AE4208, &qword_100826BD8);
  v96 = v124;
  sub_1000077D8(v91, v124, &qword_100AE41F8, &qword_100826BC8);
  v97 = v125;
  sub_1000077D8(v95, v125, &qword_100AE4208, &qword_100826BD8);
  v98 = sub_1001F1160(&unk_100AE4220, &qword_100826BF0);
  sub_1000077D8(v96, v97 + *(v98 + 48), &qword_100AE41F8, &qword_100826BC8);
  sub_100007840(v91, &qword_100AE41F8, &qword_100826BC8);
  sub_100007840(v94, &qword_100AE4208, &qword_100826BD8);
  sub_100007840(v96, &qword_100AE41F8, &qword_100826BC8);
  return sub_100007840(v95, &qword_100AE4208, &qword_100826BD8);
}

uint64_t sub_100453F9C()
{
  v1 = type metadata accessor for ReadingSettingsView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = sub_1001F1160(&qword_100AE3E68, &qword_100826848);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - v6;
  sub_10079E314();
  swift_getKeyPath();
  sub_10079E334();

  (*(v5 + 8))(v7, v4);
  v8 = v19;
  v9 = v20;
  v10 = v21;
  sub_10045FFF4(v0, v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingSettingsView);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  sub_100460DB0(v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for ReadingSettingsView);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v15 = xmmword_10081BC80;
  v14[1] = sub_10079DF24();
  v14[0] = sub_10079DF24();
  sub_1002582C8();
  return sub_10079E124();
}

double sub_100454284@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for ReadingSettingsView(0);
  sub_100454310(v5, *(a2 + *(v6 + 24)), *(a2 + *(v6 + 24) + 8), v11);
  v7 = v15;
  *(a3 + 64) = v14;
  *(a3 + 80) = v7;
  *(a3 + 96) = v16;
  *(a3 + 112) = v17;
  v8 = v11[1];
  *a3 = v11[0];
  *(a3 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a3 + 32) = v12;
  *(a3 + 48) = v10;
  return result;
}

double sub_100454310@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v37 = a2;
  v38 = a3;
  v8 = type metadata accessor for ReadingSettingsView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  sub_1001F1160(&unk_100AE3E50, &qword_100826840);
  sub_10079E304();
  v17 = sub_1007A1424();

  v39 = a1;
  if (v17)
  {
    v34 = v9;
    v18 = sub_10079F214();
    v20 = v19;

    v21 = sub_10079F214();
    if (v20)
    {
      if (v18 == v21 && v20 == v22)
      {

        v35 = 1;
      }

      else
      {
        v35 = sub_1007A3AB4();
      }
    }

    else
    {
      v35 = 0;
    }

    v9 = v34;
  }

  else
  {
    sub_10079F214();
    v35 = 0;
  }

  LODWORD(v34) = *(v5 + *(v8 + 28));
  sub_10045FFF4(v5, v16, type metadata accessor for ReadingSettingsView);
  v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v24 = swift_allocObject();
  sub_100460DB0(v16, v24 + v23, type metadata accessor for ReadingSettingsView);
  sub_10045FFF4(v5, v13, type metadata accessor for ReadingSettingsView);
  v25 = swift_allocObject();
  sub_100460DB0(v13, v25 + v23, type metadata accessor for ReadingSettingsView);
  v26 = v5;
  v27 = v36;
  sub_10045FFF4(v26, v36, type metadata accessor for ReadingSettingsView);
  v28 = swift_allocObject();
  sub_100460DB0(v27, v28 + v23, type metadata accessor for ReadingSettingsView);
  KeyPath = swift_getKeyPath();
  v40 = 0;
  v30 = v35 & 1;
  *a4 = v34;
  v32 = v37;
  v31 = v38;
  *(a4 + 8) = v39;
  *(a4 + 16) = v32;
  *(a4 + 24) = v31;
  *(a4 + 32) = v30;
  *(a4 + 40) = sub_10045E65C;
  *(a4 + 48) = v24;
  *(a4 + 56) = sub_10045E674;
  *(a4 + 64) = v25;
  *(a4 + 72) = sub_10045E68C;
  *(a4 + 80) = v28;
  *(a4 + 88) = KeyPath;
  *(a4 + 96) = 0;
  *(a4 + 104) = xmmword_100826810;

  return result;
}

double sub_10045467C(void *a1)
{
  type metadata accessor for ReadingSettingsView(0);
  sub_1001F1160(&unk_100AE3E50, &qword_100826840);
  sub_10079E304();
  v2 = sub_1007A1424();

  if (v2)
  {
    sub_10000E3E8(a1, a1[3]);
    sub_1007A1964();
  }

  return result;
}

uint64_t sub_1004547A4(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_10079C834();
  return v3;
}

uint64_t sub_10045480C@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_10079C834();
  *a3 = v5;
  return result;
}

uint64_t sub_100454888(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  a5();

  return sub_10079C844();
}

uint64_t sub_1004548EC(uint64_t a1)
{
  v2 = sub_1007A0514();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1007A1464();
}

uint64_t sub_1004549B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = sub_1001F1160(&qword_100ADB800, &qword_10081A008);
  __chkstk_darwin(v3 - 8);
  v100 = &v83 - v4;
  v5 = type metadata accessor for ReadingSettingsView(0);
  v6 = v5 - 8;
  v97 = *(v5 - 8);
  __chkstk_darwin(v5);
  v102 = v7;
  v103 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10079DD14();
  v98 = *(v8 - 8);
  v99 = v8;
  __chkstk_darwin(v8);
  v96 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v101 = &v83 - v11;
  v12 = sub_1007A0514();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v6 + 28);
  v17 = a1;
  v18 = sub_1001F1160(&unk_100AE3E50, &qword_100826840);
  sub_10079E304();
  sub_1007A1454();

  LOBYTE(v6) = sub_1007A04D4();
  v19 = *(v13 + 8);
  v19(v15, v12);
  if (v6)
  {
    v84 = a1;
    sub_10079E304();
    sub_1007A1454();

    v20 = sub_1007A0464();
    v22 = v21;
    v19(v15, v12);
    v105 = v20;
    v106 = v22;
    v100 = sub_100206ECC();
    v23 = sub_10079D5D4();
    v98 = v24;
    v99 = v23;
    LODWORD(v94) = v25;
    v95 = v26;
    v89 = v16;
    v88 = v18;
    sub_10079E304();
    sub_1007A1454();

    v27 = sub_1007A0494();
    v29 = v28;
    v19(v15, v12);
    v87 = v19;
    v105 = v27;
    v106 = v29;
    v30 = sub_10079D5D4();
    v92 = v31;
    v93 = v30;
    v91 = v32;
    v90 = v33 & 1;
    sub_10079E304();
    sub_1007A1454();

    v34 = sub_1007A04E4();
    v36 = v35;
    v19(v15, v12);
    v105 = v34;
    v106 = v36;
    v37 = sub_10079D5D4();
    v85 = v12;
    v38 = v37;
    v39 = v103;
    v41 = v40;
    v43 = v42;
    v83 = v44;
    v86 = type metadata accessor for ReadingSettingsView;
    sub_10045FFF4(v17, v103, type metadata accessor for ReadingSettingsView);
    v45 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v46 = swift_allocObject();
    v97 = type metadata accessor for ReadingSettingsView;
    sub_100460DB0(v39, v46 + v45, type metadata accessor for ReadingSettingsView);
    sub_10079DCF4();
    sub_10020B430(v38, v41, v43 & 1);

    v47 = v84;
    sub_10079E304();
    sub_1007A1454();

    v48 = sub_1007A04B4();
    v50 = v49;
    v87(v15, v85);
    v105 = v48;
    v106 = v50;
    v51 = sub_10079D5D4();
    v53 = v52;
    v55 = v54;
    v56 = v47;
    v57 = v103;
    sub_10045FFF4(v56, v103, v86);
    v58 = swift_allocObject();
    sub_100460DB0(v57, v58 + v45, v97);
    sub_10079DD04();
    sub_10020B430(v51, v53, v55 & 1);

    return sub_10079DCE4();
  }

  else
  {
    sub_10079E304();
    sub_1007A1454();

    v60 = sub_1007A0464();
    v62 = v61;
    v19(v15, v12);
    v105 = v60;
    v106 = v62;
    sub_100206ECC();
    v63 = sub_10079D5D4();
    v102 = v64;
    v103 = v63;
    LODWORD(v97) = v65;
    v101 = v66;
    sub_10079E304();
    sub_1007A1454();

    v67 = sub_1007A0494();
    v69 = v68;
    v19(v15, v12);
    v105 = v67;
    v106 = v69;
    v70 = sub_10079D5D4();
    v95 = v71;
    v96 = v70;
    v93 = v72 & 1;
    v94 = v73;
    sub_10079E304();
    sub_1007A1454();

    v74 = sub_1007A04A4();
    v76 = v75;
    v19(v15, v12);
    v105 = v74;
    v106 = v76;
    v77 = sub_10079D5D4();
    v79 = v78;
    v81 = v80;
    v82 = v100;
    sub_10079DD04();
    sub_10020B430(v77, v79, v81 & 1);

    (*(v98 + 56))(v82, 0, 1, v99);
    return sub_10079DCD4();
  }
}

uint64_t sub_1004551E4(void *a1)
{
  type metadata accessor for ReadingSettingsView(0);
  sub_1001F1160(&unk_100AE3E50, &qword_100826840);
  sub_10079E304();
  v2 = sub_1007A1444();
  sub_1007A04F4();
  v2(v4, 0);

  sub_10000E3E8(a1, a1[3]);
  return sub_1007A1984();
}

uint64_t sub_1004552A8()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v18[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v18[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_1007A22D4(v10, 0, 0, v15, v3, "Themes & Settings title", 23, 2);
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_100455524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v66 = a3;
  v74 = a4;
  v6 = sub_1001F1160(&qword_100AE4438, &qword_100826DF0);
  __chkstk_darwin(v6 - 8);
  v73 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v57 - v9;
  v10 = type metadata accessor for ReadingSettingsView(0);
  v11 = *(v10 - 8);
  v62 = v10 - 8;
  v67 = v11;
  v65 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v64 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10079CA64();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1001F1160(&qword_100AE4440, &qword_100826DF8);
  __chkstk_darwin(v59);
  v57 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v58 = &v57 - v17;
  v63 = sub_1001F1160(&qword_100AE4448, &qword_100826E00) - 8;
  __chkstk_darwin(v63);
  v72 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v75 = &v57 - v20;
  sub_10079E474();
  sub_10079BE54();
  v71 = v77;
  v70 = v79;
  v69 = v81;
  v68 = v82;
  v91 = 1;
  v90 = v78;
  v89 = v80;
  v83 = a1;
  v84 = a2;
  sub_100206ECC();

  v21 = sub_10079D5D4();
  v23 = v22;
  v25 = v24;
  sub_10079D444();
  sub_10079D3F4();
  sub_10079D464();

  v26 = sub_10079D5A4();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_10020B430(v21, v23, v25 & 1);

  v83 = v26;
  v84 = v28;
  LOBYTE(v85) = v30 & 1;
  v86 = v32;
  sub_10079CA54();
  v33 = v57;
  sub_10079D9D4();
  (*(v60 + 8))(v14, v61);
  sub_10020B430(v26, v28, v30 & 1);

  v34 = v58;
  sub_10079C294();
  sub_100007840(v33, &qword_100AE4440, &qword_100826DF8);
  sub_1001F1160(&qword_100AE3E70, &unk_100813BD0);
  v35 = v66;
  sub_10079CF44();
  sub_10045F5DC();
  v36 = v75;
  sub_10079D9B4();

  sub_100007840(v34, &qword_100AE4440, &qword_100826DF8);
  v37 = v64;
  sub_10045FFF4(v35, v64, type metadata accessor for ReadingSettingsView);
  v38 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v39 = swift_allocObject();
  sub_100460DB0(v37, v39 + v38, type metadata accessor for ReadingSettingsView);
  v40 = (v36 + *(v63 + 44));
  *v40 = sub_10045F698;
  v40[1] = v39;
  v40[2] = 0;
  v40[3] = 0;
  sub_10045FFF4(v35, v37, type metadata accessor for ReadingSettingsView);
  v41 = swift_allocObject();
  sub_100460DB0(v37, v41 + v38, type metadata accessor for ReadingSettingsView);
  type metadata accessor for ChromeStyle(0);
  sub_100460EB4(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
  v42 = sub_10079C484();
  v44 = v43;
  KeyPath = swift_getKeyPath();
  v83 = v42;
  v84 = v44;
  v85 = KeyPath;
  LOBYTE(v86) = 0;
  v87 = sub_10045FB4C;
  v88 = v41;
  sub_10045FBE8();
  v46 = v76;
  sub_10079DA04();

  sub_10079E474();
  sub_10079BE54();
  v67 = v83;
  v66 = v85;
  v65 = v87;
  v64 = v88;
  v94 = 1;
  v93 = v84;
  v92 = v86;
  LOBYTE(v41) = v91;
  LOBYTE(v38) = v90;
  LOBYTE(v23) = v89;
  v47 = v72;
  sub_1000077D8(v36, v72, &qword_100AE4448, &qword_100826E00);
  v48 = v73;
  sub_1000077D8(v46, v73, &qword_100AE4438, &qword_100826DF0);
  LOBYTE(v46) = v94;
  LOBYTE(v34) = v93;
  LODWORD(v63) = v92;
  v49 = v74;
  *v74 = 0;
  *(v49 + 8) = v41;
  v49[2] = v71;
  *(v49 + 24) = v38;
  v49[4] = v70;
  *(v49 + 40) = v23;
  v50 = v68;
  v49[6] = v69;
  v49[7] = v50;
  v51 = v49;
  v52 = sub_1001F1160(qword_100AE4460, &qword_100826E08);
  sub_1000077D8(v47, v51 + v52[12], &qword_100AE4448, &qword_100826E00);
  v53 = v51 + v52[16];
  *v53 = 0;
  *(v53 + 8) = 1;
  sub_1000077D8(v48, v51 + v52[20], &qword_100AE4438, &qword_100826DF0);
  v54 = v51 + v52[24];
  *v54 = 0;
  *(v54 + 8) = v46;
  *(v54 + 16) = v67;
  *(v54 + 24) = v34;
  *(v54 + 32) = v66;
  *(v54 + 40) = v63;
  v55 = v64;
  *(v54 + 48) = v65;
  *(v54 + 56) = v55;
  sub_100007840(v76, &qword_100AE4438, &qword_100826DF0);
  sub_100007840(v75, &qword_100AE4448, &qword_100826E00);
  sub_100007840(v48, &qword_100AE4438, &qword_100826DF0);
  return sub_100007840(v47, &qword_100AE4448, &qword_100826E00);
}

uint64_t sub_100455E38()
{
  type metadata accessor for ReadingSettingsView(0);
  sub_1001F1160(&qword_100AE3E70, &unk_100813BD0);
  return sub_10079CF34();
}

uint64_t sub_100455E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_1001F1160(&qword_100AE4238, &qword_100826C20);
  __chkstk_darwin(v3 - 8);
  v71 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v70 = &v51 - v6;
  v69 = sub_100796CF4();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v51 - v9;
  v64 = sub_1007A21D4();
  v73 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v56 = &v51 - v12;
  v13 = type metadata accessor for ReadingSettingsView(0);
  v58 = *(v13 - 8);
  v14 = *(v58 + 64);
  __chkstk_darwin(v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  __chkstk_darwin(v19);
  v21 = &v51 - v20;
  v65 = sub_1001F1160(&qword_100AE4240, &qword_100826C28) - 8;
  __chkstk_darwin(v65);
  v68 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v51 - v24;
  sub_1001F1160(&unk_100AE3E50, &qword_100826840);
  sub_10079E304();
  v61 = sub_1007A1484();

  sub_10079E304();
  v59 = sub_1007A1494();

  v26 = [objc_opt_self() tertiaryLabelColor];
  sub_10079DEA4();
  v60 = sub_10079DE24();

  sub_10045FFF4(a1, v21, type metadata accessor for ReadingSettingsView);
  v27 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v58 = swift_allocObject();
  sub_100460DB0(v21, v58 + v27, type metadata accessor for ReadingSettingsView);
  v54 = a1;
  sub_10045FFF4(a1, v18, type metadata accessor for ReadingSettingsView);
  v57 = swift_allocObject();
  sub_100460DB0(v18, v57 + v27, type metadata accessor for ReadingSettingsView);
  sub_10045FFF4(a1, v15, type metadata accessor for ReadingSettingsView);
  v55 = swift_allocObject();
  sub_100460DB0(v15, v55 + v27, type metadata accessor for ReadingSettingsView);
  KeyPath = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v28 = v56;
  sub_1007A2154();
  v29 = v63;
  sub_100796C94();
  v30 = v62;
  v31 = v64;
  (*(v73 + 16))(v62, v28, v64);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v35 = v66;
  v34 = v67;
  v36 = v69;
  (*(v67 + 16))(v66, v29, v69);
  v37 = sub_1007A22D4(v30, 0, 0, v33, v35, "Reading settings reset text size menu text", 42, 2);
  v39 = v38;
  (*(v34 + 8))(v29, v36);
  (*(v73 + 8))(v28, v31);
  v79 = 0;
  v78 = 0;
  LOBYTE(v31) = (v61 & 1) == 0;
  LOBYTE(v34) = (v59 & 1) == 0;
  v40 = sub_10079E464();
  v42 = v41;
  v43 = &v25[*(v65 + 44)];
  sub_1004567A0(v43);
  v44 = (v43 + *(sub_1001F1160(&qword_100AE4248, &qword_100826C30) + 36));
  *v44 = v40;
  v44[1] = v42;
  *v25 = KeyPath;
  v25[8] = v79;
  *(v25 + 3) = *(&v74 + 3);
  *(v25 + 9) = v74;
  *(v25 + 2) = v53;
  v25[24] = v78;
  *(v25 + 7) = *&v77[3];
  *(v25 + 25) = *v77;
  *(v25 + 4) = v37;
  *(v25 + 5) = v39;
  v25[48] = v31;
  v25[49] = v34;
  *(v25 + 50) = v75;
  *(v25 + 27) = v76;
  *(v25 + 7) = v60;
  *(v25 + 8) = sub_10045E7BC;
  *(v25 + 9) = v58;
  *(v25 + 10) = sub_10045E838;
  *(v25 + 11) = v57;
  *(v25 + 12) = sub_10045E850;
  *(v25 + 13) = v55;
  v45 = v70;
  sub_100457208(v70);
  v46 = v68;
  sub_1000077D8(v25, v68, &qword_100AE4240, &qword_100826C28);
  v47 = v71;
  sub_1000077D8(v45, v71, &qword_100AE4238, &qword_100826C20);
  v48 = v72;
  sub_1000077D8(v46, v72, &qword_100AE4240, &qword_100826C28);
  v49 = sub_1001F1160(&qword_100AE4250, &qword_100826C38);
  sub_1000077D8(v47, v48 + *(v49 + 48), &qword_100AE4238, &qword_100826C20);
  sub_100007840(v45, &qword_100AE4238, &qword_100826C20);
  sub_100007840(v25, &qword_100AE4240, &qword_100826C28);
  sub_100007840(v47, &qword_100AE4238, &qword_100826C20);
  return sub_100007840(v46, &qword_100AE4240, &qword_100826C28);
}

double sub_1004566C8(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = a1[3];
  v4 = a1[4];
  sub_10000E3E8(a1, v3);
  a2(v3, v4);
  type metadata accessor for ReadingSettingsView(0);

  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079DFF4();
  sub_10079E004();

  return result;
}

uint64_t sub_1004567A0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_10079C894();
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100AE42F0, &qword_100826CF0);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = sub_1001F1160(&qword_100AE42F8, &qword_100826CF8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  type metadata accessor for ReadingSettingsView(0);
  sub_1001F1160(&unk_100AE3E50, &qword_100826840);
  sub_10079E304();
  v13 = sub_1007A14B4();

  if (v13)
  {
    sub_100456B58(v12);
    *&v12[*(sub_1001F1160(&unk_100AE4300, &qword_100826D00) + 36)] = xmmword_100826820;
    sub_10079C884();
    sub_10079E524();
    v14 = sub_100460EB4(&qword_100AD7C28, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    sub_10079BC14();

    (*(v22 + 8))(v3, v1);
    v15 = v23;
    (*(v23 + 16))(v21, v8, v4);
    v25 = v1;
    v26 = v14;
    swift_getOpaqueTypeConformance2();
    v16 = sub_10079BE84();
    (*(v15 + 8))(v8, v4);
    *&v12[*(v9 + 36)] = v16;
    v17 = v24;
    sub_10020B3C8(v12, v24, &qword_100AE42F8, &qword_100826CF8);
    v18 = 0;
    v19 = v17;
  }

  else
  {
    v18 = 1;
    v19 = v24;
  }

  return (*(v10 + 56))(v19, v18, 1, v9);
}

uint64_t sub_100456B58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for ReadingSettingsView(0);
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  __chkstk_darwin(v3);
  v47 = &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AE4310, &qword_100826D08);
  __chkstk_darwin(v5 - 8);
  v7 = &KeyPath - v6;
  v48 = sub_1001F1160(&qword_100AE4318, &unk_100826D10);
  __chkstk_darwin(v48);
  v50 = &KeyPath - v8;
  v9 = *(v1 + *(v3 + 48));
  if (v9)
  {
    v10 = v3;
    v11 = v9;
    v49 = ChromeStyle.accentColor.getter();

    v12 = [objc_opt_self() quaternaryLabelColor];
    __chkstk_darwin(v12);
    v42 = v2;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_10045F254;
    *(v13 + 24) = &v40;
    *&v57 = sub_10040EEA8;
    *(&v57 + 1) = v13;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v56 = sub_100457B70;
    *(&v56 + 1) = &unk_100A1C750;
    v14 = _Block_copy(&aBlock);
    v15 = objc_opt_self();

    v16 = [v15 traitCollectionWithTraits:v14];
    _Block_release(v14);

    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
    }

    else
    {
      v17 = [v12 resolvedColorWithTraitCollection:v16];

      v18 = sub_10079DEA4();
      *v7 = sub_10079C8F4();
      *(v7 + 1) = 0x4018000000000000;
      v7[16] = 0;
      sub_1001F1160(&unk_100AE4380, &unk_100826D20);
      sub_1001F1160(&unk_100AE3E50, &qword_100826840);
      sub_10079E304();
      v19 = sub_1007A14C4();

      if ((v19 & 0x8000000000000000) == 0)
      {
        *&aBlock = 0;
        *(&aBlock + 1) = v19;
        KeyPath = swift_getKeyPath();
        v20 = v18;
        v21 = v47;
        sub_10045FFF4(v2, v47, type metadata accessor for ReadingSettingsView);
        v22 = *(v46 + 80);
        v46 = v10;
        v23 = (v22 + 16) & ~v22;
        v24 = (v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
        v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
        v45 = v2;
        v26 = swift_allocObject();
        sub_100460DB0(v21, v26 + v23, type metadata accessor for ReadingSettingsView);
        *(v26 + v24) = v49;
        *(v26 + v25) = v20;
        *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0x4010000000000000;

        sub_1001F1160(&qword_100AD71E8, &qword_100813FA0);
        sub_1001F1160(&unk_100AE4390, &qword_100826D50);
        sub_100258384();
        v42 = sub_10045F328();
        sub_10079E264();
        v42 = sub_10079E474();
        v43 = v27;
        LOBYTE(v41) = 0;
        v40 = 0x4010000000000000;
        sub_10079C414();
        v28 = v50;
        sub_10020B3C8(v7, v50, &qword_100AE4310, &qword_100826D08);
        v29 = (v28 + *(v48 + 36));
        v30 = v60;
        v29[4] = v59;
        v29[5] = v30;
        v29[6] = v61;
        v31 = v56;
        *v29 = aBlock;
        v29[1] = v31;
        v32 = v58;
        v29[2] = v57;
        v29[3] = v32;
        v33 = sub_10079E524();
        v34 = v45 + *(v46 + 72);
        v35 = *v34;
        v36 = *(v34 + 8);
        v53 = v35;
        v54 = v36;
        sub_1001F1160(&qword_100ADB850, &qword_100814020);
        sub_10079DFF4();

        LOBYTE(v20) = v52;
        v37 = v51;
        sub_10020B3C8(v28, v51, &qword_100AE4318, &unk_100826D10);
        result = sub_1001F1160(&qword_100AE43C8, &qword_100826D68);
        v39 = v37 + *(result + 36);
        *v39 = v33;
        *(v39 + 8) = v20;
        return result;
      }
    }

    __break(1u);
  }

  type metadata accessor for ChromeStyle(0);
  sub_100460EB4(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
  result = sub_10079C474();
  __break(1u);
  return result;
}

uint64_t sub_100457208@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_10079D074();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AE4258, &qword_100826C40);
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v30 = &v26 - v7;
  v27 = sub_1001F1160(&qword_100AE4260, &qword_100826C48);
  __chkstk_darwin(v27);
  v9 = &v26 - v8;
  v10 = type metadata accessor for ReadingSettingsView(0);
  v26 = sub_10079C8F4();
  v37 = 0;
  sub_100457E38(v2, v35);
  v46 = v35[8];
  v47 = v35[9];
  v48 = v35[10];
  v42 = v35[4];
  v43 = v35[5];
  v44 = v35[6];
  v45 = v35[7];
  v38 = v35[0];
  v39 = v35[1];
  v40 = v35[2];
  v41 = v35[3];
  v50[8] = v35[8];
  v50[9] = v35[9];
  v50[10] = v35[10];
  v50[4] = v35[4];
  v50[5] = v35[5];
  v50[6] = v35[6];
  v50[7] = v35[7];
  v50[0] = v35[0];
  v50[1] = v35[1];
  v49 = v35[11];
  v51 = v35[11];
  v50[2] = v35[2];
  v50[3] = v35[3];
  sub_1000077D8(&v38, v34, &qword_100AE4268, &qword_100826C50);
  sub_100007840(v50, &qword_100AE4268, &qword_100826C50);
  *&v36[55] = v41;
  *&v36[39] = v40;
  *&v36[119] = v45;
  *&v36[103] = v44;
  *&v36[87] = v43;
  *&v36[71] = v42;
  *&v36[167] = v48;
  *&v36[151] = v47;
  *&v36[135] = v46;
  *&v36[7] = v38;
  v36[183] = v49;
  *&v36[23] = v39;
  v11 = *(v2 + *(v10 + 48));
  if (v11)
  {
    v12 = v37;
    type metadata accessor for ChromeStyle(0);
    sub_100460EB4(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    v13 = v11;
    v14 = sub_10079B8A4();
    sub_1004587F0();
    sub_10079E474();
    sub_10079BE54();
    if (qword_100AD17D0 != -1)
    {
      swift_once();
    }

    sub_10079E474();
    sub_10079BE54();
    if (qword_100AD1660 != -1)
    {
      swift_once();
    }

    v15 = qword_100AE3E38;
    v16 = sub_10079D294();
    v34[0] = v26;
    LOBYTE(v34[1]) = v12;
    *(&v34[9] + 1) = *&v36[128];
    *(&v34[10] + 1) = *&v36[144];
    *(&v34[11] + 1) = *&v36[160];
    *(&v34[12] + 1) = *&v36[176];
    *(&v34[5] + 1) = *&v36[64];
    *(&v34[6] + 1) = *&v36[80];
    *(&v34[7] + 1) = *&v36[96];
    *(&v34[8] + 1) = *&v36[112];
    *(&v34[1] + 1) = *v36;
    *(&v34[2] + 1) = *&v36[16];
    *(&v34[3] + 1) = *&v36[32];
    *(&v34[4] + 1) = *&v36[48];
    *&v34[13] = v14;
    *(&v34[13] + 1) = v11;
    v34[14] = v34[21];
    v34[15] = v34[22];
    v34[16] = v34[23];
    v34[17] = v34[24];
    v34[18] = v34[25];
    v34[19] = v34[26];
    *&v34[20] = v15;
    BYTE8(v34[20]) = v16;

    sub_10079D064();
    sub_1001F1160(&qword_100AE4270, &qword_100826C58);
    sub_10045E868();
    v17 = v30;
    sub_10079D9A4();
    (*(v28 + 8))(v5, v29);
    memcpy(v35, v34, 0x149uLL);
    sub_100007840(v35, &qword_100AE4270, &qword_100826C58);
    v18 = &v9[*(v27 + 36)];
    v19 = enum case for RoundedCornerStyle.continuous(_:);
    v20 = sub_10079C9E4();
    v21 = *(*(v20 - 8) + 104);
    v21(v18, v19, v20);
    *&v18[*(sub_1001F1160(&unk_100AE42C0, &qword_100815B20) + 36)] = 256;
    (*(v31 + 32))(v9, v17, v32);
    v22 = sub_1001F1160(&qword_100AE4238, &qword_100826C20);
    v23 = v33;
    v24 = v33 + *(v22 + 36);
    v21(v24, v19, v20);
    *(v24 + *(sub_1001F1160(&qword_100AD84E8, &qword_100815B30) + 36)) = 0;
    return sub_10020B3C8(v9, v23, &qword_100AE4260, &qword_100826C48);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_100460EB4(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

double sub_1004578AC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100460EB4(&qword_100AE4230, type metadata accessor for BrightnessController, &unk_100833480);
  sub_100797A14();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

uint64_t sub_10045797C@<X0>(uint64_t a1@<X8>)
{
  sub_10079C984();
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  result = sub_10079D5B4();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

id sub_100457A5C(void *a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for ReadingSettingsView(0) + 48));
  if (v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    sub_10079B9A4(&v7);

    if (v7)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    return [a1 setUserInterfaceStyle:v5];
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_100460EB4(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

double sub_100457B70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  swift_unknownObjectRelease();
  return result;
}

void sub_100457BC4(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  type metadata accessor for ReadingSettingsView(0);
  sub_1001F1160(&unk_100AE3E50, &qword_100826840);
  sub_10079E304();
  v9 = sub_1007A14A4();
  v11 = v10;

  if (v9 >= v8)
  {
    v12 = a2;
  }

  else
  {
    v12 = a3;
  }

  if (v8 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = a2;
  }

  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  sub_10079E474();
  sub_10079BE54();
  *&v15[6] = v16;
  *&v15[22] = v17;
  *&v15[38] = v18;
  *(a4 + 10) = *v15;
  *a4 = v14;
  *(a4 + 8) = 256;
  *(a4 + 26) = *&v15[16];
  *(a4 + 42) = *&v15[32];
  *(a4 + 56) = *(&v18 + 1);
}

void sub_100457CE8(_BYTE *a1@<X8>)
{
  type metadata accessor for ReadingSettingsView(0);
  sub_1001F1160(&unk_100AE3E50, &qword_100826840);
  sub_10079E304();
  v2 = sub_1007A1474();

  *a1 = v2;
}

void sub_100457D60(_BYTE *a1@<X8>)
{
  type metadata accessor for ReadingSettingsView(0);
  sub_1001F1160(&unk_100AE3E50, &qword_100826840);
  sub_10079E304();
  sub_1007A1474();

  v2 = sub_1007A0A14();
  v4 = v3;
  if (v2 == sub_1007A0A14() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1007A3AB4();
  }

  *a1 = v7 & 1;
}

uint64_t sub_100457E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100796CF4();
  *&v76 = *(v4 - 8);
  __chkstk_darwin(v4);
  *&v74 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  *&v75 = &v59 - v7;
  v8 = sub_1007A21D4();
  *&v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  *&v71 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  *&v72 = &v59 - v11;
  v12 = type metadata accessor for ReadingSettingsView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(v16 + 28)))
  {
    v69 = 0;
    v70 = 0;
    v75 = 0u;
    v76 = 0u;
    v17 = 16711680;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
  }

  else
  {
    if (sub_1007A2B24())
    {
      *&v76 = type metadata accessor for ReadingSettingsView;
      sub_10045FFF4(a1, &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingSettingsView);
      *&v75 = sub_1007A26F4();
      v18 = sub_1007A26E4();
      v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = &protocol witness table for MainActor;
      *&v74 = type metadata accessor for ReadingSettingsView;
      sub_100460DB0(&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ReadingSettingsView);
      sub_10045FFF4(a1, &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v76);
      v21 = sub_1007A26E4();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = &protocol witness table for MainActor;
      sub_100460DB0(v15, v22 + v19, v74);
      sub_10079E204();
      v23 = v79;
      v24 = v80;
      sub_1001F1160(&unk_100AE3E50, &qword_100826840);
      sub_10079E304();
      v25 = sub_1007A1434();

      sub_10042FF84(v23, *(&v23 + 1), v24, v25 & 1, &v86);
      LOBYTE(v77[0]) = 0;
      v95 = 0;
    }

    else
    {
      v68 = type metadata accessor for ReadingSettingsView;
      sub_10045FFF4(a1, &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingSettingsView);
      v67 = sub_1007A26F4();
      v69 = v4;
      v26 = sub_1007A26E4();
      v70 = v8;
      v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      *(v28 + 24) = &protocol witness table for MainActor;
      v66 = type metadata accessor for ReadingSettingsView;
      sub_100460DB0(&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for ReadingSettingsView);
      sub_10045FFF4(a1, &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v68);
      v29 = sub_1007A26E4();
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = &protocol witness table for MainActor;
      sub_100460DB0(v15, v30 + v27, v66);
      sub_10079E204();
      v67 = *(&v79 + 1);
      v68 = v79;
      LODWORD(v66) = v80;
      sub_1001F1160(&unk_100AE3E50, &qword_100826840);
      sub_10079E304();
      v65 = sub_1007A1434();

      type metadata accessor for ChromeStyle(0);
      sub_100460EB4(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
      v31 = sub_10079C484();
      v63 = v32;
      v64 = v31;
      KeyPath = swift_getKeyPath();
      v61 = swift_getKeyPath();
      v60 = swift_getKeyPath();
      v59 = swift_getKeyPath();
      v33 = v72;
      sub_1007A2154();
      v34 = v75;
      sub_100796C94();
      v35 = v73;
      v36 = v71;
      (*(v73 + 16))(v71, v33, v70);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v38 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v39 = v76;
      v40 = v74;
      v41 = v69;
      (*(v76 + 16))(v74, v34, v69);
      v42 = sub_1007A22D4(v36, 0, 0, v38, v40, "AX label Describing a button for page navigation animation style", 64, 2);
      v44 = v43;
      (*(v39 + 8))(v34, v41);
      (*(v35 + 8))(v33, v70);
      v99 = 0;
      v98 = 0;
      v97 = 0;
      v96 = 0;
      LOBYTE(v77[0]) = 1;
      *&v86 = v64;
      *(&v86 + 1) = v63;
      *&v87 = KeyPath;
      BYTE8(v87) = 0;
      *&v88 = v61;
      BYTE8(v88) = 0;
      *&v89 = v60;
      BYTE8(v89) = 0;
      *&v90 = v59;
      BYTE8(v90) = 0;
      *&v91 = v42;
      *(&v91 + 1) = v44;
      v92 = v68;
      v93 = v67;
      LOBYTE(v94) = v66;
      HIBYTE(v94) = v65 & 1;
      v95 = 1;
    }

    sub_10045EC18();
    sub_10045EC6C();
    sub_10079CCA4();
    v75 = v80;
    v76 = v79;
    v73 = v84;
    v74 = v81;
    v71 = v83;
    v72 = v82;
    v69 = *(&v85[0] + 1);
    v70 = *&v85[0];
    v17 = LOWORD(v85[1]) | (BYTE2(v85[1]) << 16);
  }

  sub_1007A1024();
  sub_1007A1014();
  type metadata accessor for ChromeStyle(0);
  sub_100460EB4(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
  v45 = sub_10079C484();
  v68 = v46;
  v47 = swift_getKeyPath();
  v48 = swift_getKeyPath();
  sub_100460EB4(&qword_100AE42E0, &type metadata accessor for ThemeAppearanceManager, &protocol conformance descriptor for ThemeAppearanceManager);
  v49 = sub_10079C024();
  v77[0] = v76;
  v77[1] = v75;
  v77[2] = v74;
  v77[3] = v72;
  v77[4] = v71;
  v77[5] = v73;
  v50 = v69;
  v51 = v70;
  *v78 = v70;
  *&v78[8] = v69;
  v78[18] = BYTE2(v17);
  *&v78[16] = v17;
  v84 = v73;
  v85[0] = *v78;
  *(v85 + 15) = *&v78[15];
  v79 = v76;
  v80 = v75;
  v81 = v74;
  v82 = v72;
  v83 = v71;
  v52 = v75;
  v53 = v72;
  v54 = v71;
  *(a2 + 32) = v74;
  *(a2 + 48) = v53;
  *a2 = v79;
  *(a2 + 16) = v52;
  v55 = v85[0];
  *(a2 + 80) = v84;
  *(a2 + 96) = v55;
  v99 = 0;
  v98 = 0;
  v56 = *&v85[1];
  *(a2 + 64) = v54;
  *(a2 + 112) = v56;
  *(a2 + 120) = v45;
  *(a2 + 128) = v68;
  *(a2 + 136) = v49;
  *(a2 + 144) = v57;
  *(a2 + 152) = v47;
  *(a2 + 160) = 0;
  *(a2 + 168) = v48;
  *(a2 + 176) = 0;
  sub_1000077D8(v77, &v86, &qword_100AE42E8, &qword_100826CE8);
  v86 = v76;
  v87 = v75;
  v88 = v74;
  v89 = v72;
  v90 = v71;
  v91 = v73;
  v92 = v51;
  v93 = v50;
  v95 = BYTE2(v17);
  v94 = v17;
  return sub_100007840(&v86, &qword_100AE42E8, &qword_100826CE8);
}

void *sub_1004587F0()
{
  type metadata accessor for ReadingSettingsView(0);
  sub_1001F1160(&qword_100AD7168, &qword_100813F20);
  return sub_10079DFF4();
}

double sub_100458914(char a1, double a2)
{
  v5 = *(type metadata accessor for ReadingSettingsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100451AC4(a2, a1 & 1, v6);
}

unint64_t sub_100458994()
{
  result = qword_100AE4020;
  if (!qword_100AE4020)
  {
    sub_1001F1234(&qword_100AE3FD0, &qword_1008268E8);
    sub_100458A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4020);
  }

  return result;
}

unint64_t sub_100458A20()
{
  result = qword_100AE4028;
  if (!qword_100AE4028)
  {
    sub_1001F1234(&qword_100AE3FC8, &qword_1008268E0);
    sub_1001F1234(&qword_100AE4030, &qword_100826938);
    sub_1001F1234(&qword_100AE4038, &qword_100826940);
    sub_1004605A8(&qword_100AE4040, &qword_100AE4038, &qword_100826940, sub_100458B60);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4028);
  }

  return result;
}

unint64_t sub_100458B60()
{
  result = qword_100AE4048;
  if (!qword_100AE4048)
  {
    sub_1001F1234(&qword_100AE4050, &qword_100826948);
    sub_100458C18();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0, &qword_100831A40, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4048);
  }

  return result;
}

unint64_t sub_100458C18()
{
  result = qword_100AE4058;
  if (!qword_100AE4058)
  {
    sub_1001F1234(&qword_100AE4060, &qword_100826950);
    sub_100458CD0();
    sub_100005920(&qword_100AE4098, &unk_100AE40A0, &unk_100826970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4058);
  }

  return result;
}

unint64_t sub_100458CD0()
{
  result = qword_100AE4068;
  if (!qword_100AE4068)
  {
    sub_1001F1234(&qword_100AE4070, &qword_100826958);
    sub_100005920(&qword_100AE4078, &qword_100AE4080, &qword_100826960, &protocol conformance descriptor for VStack<A>);
    sub_100005920(&qword_100AE4088, &qword_100AE4090, &qword_100826968, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4068);
  }

  return result;
}

void sub_100458DB4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ReadingSettingsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100451E9C(a1, a2, v6);
}

double sub_100458E34(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingSettingsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100452268(a1, v4);
}

unint64_t sub_100458EA4()
{
  result = qword_100AE40D8;
  if (!qword_100AE40D8)
  {
    sub_1001F1234(&qword_100AE3FF8, &qword_100826910);
    sub_1001F1234(&qword_100AE3FE8, &qword_100826900);
    sub_1001F1234(&qword_100AD53B0, &qword_1008268D0);
    sub_1001F1234(&qword_100AE3FE0, &qword_1008268F8);
    sub_1001F1234(&qword_100AE3FD8, &qword_1008268F0);
    type metadata accessor for CGSize(255);
    sub_1001F1234(&qword_100AE3FD0, &qword_1008268E8);
    sub_100458994();
    swift_getOpaqueTypeConformance2();
    sub_100460EB4(&unk_100AE40C0, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AE40D0, &qword_100AD53B0, &qword_1008268D0, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    sub_1004590D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE40D8);
  }

  return result;
}

unint64_t sub_1004590D8()
{
  result = qword_100AE40E0;
  if (!qword_100AE40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE40E0);
  }

  return result;
}

double sub_10045912C()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 3.0;
  if ((*(v0 + 32) & 1) == 0)
  {
    v13 = *(v0 + 96);
    v7 = *(v0 + 88);
    v12 = v7;
    if (v13 == 1)
    {
      return v7;
    }

    else
    {
      v8 = v3;

      v9 = sub_1007A29C4();
      v10 = sub_10079D244();
      sub_10079AB44(v9, &_mh_execute_header, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      sub_10079C814();
      swift_getAtKeyPath();
      sub_100007840(&v12, &qword_100AE4718, &qword_1008271D8);
      (*(v2 + 8))(v5, v8);
      return *&v11[1];
    }
  }

  return result;
}

uint64_t sub_10045929C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v143 = a1;
  v141 = sub_10079CF24();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_10079CA64();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10079D074();
  v115 = *(v120 - 8);
  __chkstk_darwin(v120);
  v106 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1001F1160(&qword_100AE4518, &qword_1008270B8);
  __chkstk_darwin(v109);
  v99 = (&v99 - v6);
  v117 = sub_1001F1160(&qword_100AE4520, &qword_1008270C0);
  v121 = *(v117 - 8);
  __chkstk_darwin(v117);
  v103 = &v99 - v7;
  v119 = sub_1001F1160(&qword_100AE4528, &qword_1008270C8);
  __chkstk_darwin(v119);
  v107 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v112 = &v99 - v10;
  v128 = sub_1001F1160(&qword_100AE4530, &qword_1008270D0);
  __chkstk_darwin(v128);
  v113 = &v99 - v11;
  v133 = sub_1001F1160(&qword_100AE4538, &qword_1008270D8);
  __chkstk_darwin(v133);
  v114 = &v99 - v12;
  v134 = sub_1001F1160(&qword_100AE4540, &qword_1008270E0);
  __chkstk_darwin(v134);
  v144 = &v99 - v13;
  v142 = sub_1001F1160(&qword_100AE4548, &qword_1008270E8);
  __chkstk_darwin(v142);
  v139 = &v99 - v14;
  v15 = sub_100796CF4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v99 - v20;
  v22 = sub_1007A21D4();
  v145 = *(v22 - 8);
  v23 = v145;
  __chkstk_darwin(v22);
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v99 - v27;
  sub_1007A2154();
  sub_100796C94();
  v29 = *(v23 + 16);
  v131 = v23 + 16;
  v132 = v29;
  v116 = v25;
  v108 = v28;
  v30 = v22;
  v110 = v22;
  v29(v25, v28, v22);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v130 = ObjCClassFromMetadata;
  v129 = objc_opt_self();
  v32 = [v129 bundleForClass:ObjCClassFromMetadata];
  v126 = *(v16 + 16);
  v127 = v16 + 16;
  v122 = v18;
  v111 = v21;
  v118 = v15;
  v126(v18, v21, v15);
  v33 = sub_1007A22D4(v25, 0, 0, v32, v18, "Reading settings reset theme menu text", 38, 2);
  v101 = v33;
  v35 = v34;
  v100 = v34;
  v36 = *(v16 + 8);
  v124 = v16 + 8;
  v125 = v36;
  v36(v21, v15);
  v37 = *(v145 + 8);
  v145 += 8;
  v123 = v37;
  v37(v28, v30);
  v38 = swift_allocObject();
  v39 = *(v2 + 80);
  *(v38 + 80) = *(v2 + 64);
  *(v38 + 96) = v39;
  *(v38 + 112) = *(v2 + 96);
  *(v38 + 128) = *(v2 + 112);
  v40 = *(v2 + 16);
  *(v38 + 16) = *v2;
  *(v38 + 32) = v40;
  v41 = *(v2 + 48);
  *(v38 + 48) = *(v2 + 32);
  *(v38 + 64) = v41;
  v42 = swift_allocObject();
  v43 = *(v2 + 80);
  *(v42 + 80) = *(v2 + 64);
  *(v42 + 96) = v43;
  *(v42 + 112) = *(v2 + 96);
  *(v42 + 128) = *(v2 + 112);
  v44 = *(v2 + 16);
  *(v42 + 16) = *v2;
  *(v42 + 32) = v44;
  v45 = *(v2 + 48);
  *(v42 + 48) = *(v2 + 32);
  *(v42 + 64) = v45;
  v104 = v42;
  sub_1004600BC(v2, &v148);
  sub_1004600BC(v2, &v148);
  v46 = sub_10079CB24();
  v47 = v99;
  *v99 = v46;
  *(v47 + 8) = 0;
  *(v47 + 16) = 1;
  v48 = *(sub_1001F1160(&qword_100AE4550, &qword_1008270F0) + 44);
  v102 = sub_10046005C;
  v105 = sub_10046008C;
  sub_10045A22C(v2, sub_10046005C, v38, v33, v35, sub_10046008C, v42, v47 + v48);
  v49 = v106;
  sub_10079D054();
  v50 = sub_100005920(&qword_100AE4558, &qword_100AE4518, &qword_1008270B8, &protocol conformance descriptor for VStack<A>);
  v51 = v103;
  v52 = v109;
  sub_10079D9A4();
  (*(v115 + 8))(v49, v120);
  sub_100007840(v47, &qword_100AE4518, &qword_1008270B8);
  v148 = sub_10079F214();
  v149 = v53;
  v146 = v52;
  v147 = v50;
  swift_getOpaqueTypeConformance2();
  v54 = sub_100206ECC();
  v55 = v107;
  v56 = v117;
  sub_10079D8E4();

  (*(v121 + 8))(v51, v56);
  v148 = sub_10079F1F4();
  v149 = v57;
  v58 = v112;
  v120 = v54;
  sub_10079C1E4();

  sub_100007840(v55, &qword_100AE4528, &qword_1008270C8);
  LOBYTE(v15) = *(v2 + 32);
  v59 = sub_10079F1B4();
  v60 = v113;
  sub_10044E17C(v15, v59, v61, v113);

  sub_100007840(v58, &qword_100AE4528, &qword_1008270C8);
  v62 = v135;
  sub_10079CA44();
  sub_1004600F4();
  v63 = v114;
  sub_10079D9D4();
  (*(v136 + 8))(v62, v137);
  sub_100007840(v60, &qword_100AE4530, &qword_1008270D0);
  v64 = v138;
  sub_10079CF14();
  v65 = swift_allocObject();
  v66 = *(v2 + 80);
  *(v65 + 80) = *(v2 + 64);
  *(v65 + 96) = v66;
  *(v65 + 112) = *(v2 + 96);
  *(v65 + 128) = *(v2 + 112);
  v67 = *(v2 + 16);
  *(v65 + 16) = *v2;
  *(v65 + 32) = v67;
  v68 = *(v2 + 48);
  *(v65 + 48) = *(v2 + 32);
  *(v65 + 64) = v68;
  sub_1004600BC(v2, &v148);
  v69 = v144;
  sub_10079C214();

  (*(v140 + 8))(v64, v141);
  sub_100007840(v63, &qword_100AE4538, &qword_1008270D8);
  v70 = swift_allocObject();
  v71 = *(v2 + 80);
  *(v70 + 80) = *(v2 + 64);
  *(v70 + 96) = v71;
  *(v70 + 112) = *(v2 + 96);
  *(v70 + 128) = *(v2 + 112);
  v72 = *(v2 + 16);
  *(v70 + 16) = *v2;
  *(v70 + 32) = v72;
  v73 = *(v2 + 48);
  *(v70 + 48) = *(v2 + 32);
  *(v70 + 64) = v73;
  v146 = v101;
  v147 = v100;
  sub_1004600BC(v2, &v148);
  v74 = sub_10079D5D4();
  v150 = v75 & 1;
  v76 = &v69[*(v134 + 36)];
  *v76 = sub_100460410;
  *(v76 + 1) = v70;
  *(v76 + 2) = v74;
  *(v76 + 3) = v77;
  v76[32] = v75 & 1;
  *(v76 + 33) = v146;
  *(v76 + 9) = *(&v146 + 3);
  v78 = v102;
  *(v76 + 5) = v79;
  *(v76 + 6) = v78;
  *(v76 + 7) = v38;

  v80 = v108;
  sub_1007A2154();
  v81 = v111;
  sub_100796C94();
  v82 = v116;
  v83 = v110;
  v132(v116, v80, v110);
  v84 = [v129 bundleForClass:v130];
  v85 = v122;
  v86 = v81;
  v87 = v81;
  v88 = v118;
  v126(v122, v86, v118);
  v89 = sub_1007A22D4(v82, 0, 0, v84, v85, "Accessibility string for an action that opens the theme options menu", 68, 2);
  v91 = v90;
  v125(v87, v88);
  v123(v80, v83);
  v148 = v89;
  v149 = v91;
  sub_100460438();
  v92 = v139;
  v93 = v144;
  sub_10079D924();

  sub_100007840(v93, &qword_100AE4540, &qword_1008270E0);
  v94 = swift_allocObject();
  v95 = *(v2 + 80);
  *(v94 + 80) = *(v2 + 64);
  *(v94 + 96) = v95;
  *(v94 + 112) = *(v2 + 96);
  *(v94 + 128) = *(v2 + 112);
  v96 = *(v2 + 16);
  *(v94 + 16) = *v2;
  *(v94 + 32) = v96;
  v97 = *(v2 + 48);
  *(v94 + 48) = *(v2 + 32);
  *(v94 + 64) = v97;
  sub_1004600BC(v2, &v148);
  sub_1004605A8(&qword_100AE45A8, &qword_100AE4548, &qword_1008270E8, sub_100460438);
  sub_10079D764();

  return sub_100007840(v92, &qword_100AE4548, &qword_1008270E8);
}

uint64_t sub_10045A22C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v170 = a6;
  v171 = a7;
  v168 = a4;
  v169 = a5;
  v166 = a2;
  v167 = a3;
  v172 = a8;
  v164 = sub_1001F1160(&qword_100AE45B0, &qword_100827100);
  __chkstk_darwin(v164);
  v165 = &v140 - v9;
  v10 = sub_10079D4D4();
  v159 = *(v10 - 8);
  v160 = v10;
  __chkstk_darwin(v10);
  v158 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for ThemeStateOverlayView(0);
  __chkstk_darwin(v155);
  v157 = (&v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v156 = &v140 - v14;
  v15 = sub_1001F1160(&qword_100AE45B8, &qword_100827108);
  __chkstk_darwin(v15 - 8);
  v17 = &v140 - v16;
  v141 = sub_1001F1160(&qword_100AE45C0, &qword_100827110);
  __chkstk_darwin(v141);
  v19 = &v140 - v18;
  v142 = sub_1001F1160(&qword_100AE45C8, &qword_100827118);
  __chkstk_darwin(v142);
  v21 = &v140 - v20;
  v143 = sub_1001F1160(&qword_100AE45D0, &qword_100827120);
  __chkstk_darwin(v143);
  v23 = &v140 - v22;
  v144 = sub_1001F1160(&qword_100AE45D8, &qword_100827128);
  __chkstk_darwin(v144);
  v146 = &v140 - v24;
  v145 = sub_1001F1160(&qword_100AE45E0, &qword_100827130);
  __chkstk_darwin(v145);
  v148 = &v140 - v25;
  v147 = sub_1001F1160(&qword_100AE45E8, &qword_100827138);
  __chkstk_darwin(v147);
  v151 = &v140 - v26;
  v150 = sub_1001F1160(&qword_100AE45F0, &qword_100827140);
  __chkstk_darwin(v150);
  v173 = &v140 - v27;
  v149 = sub_1001F1160(&qword_100AE45F8, &qword_100827148);
  __chkstk_darwin(v149);
  v174 = &v140 - v28;
  v152 = sub_1001F1160(&qword_100AE4600, &qword_100827150);
  __chkstk_darwin(v152);
  v154 = &v140 - v29;
  v153 = sub_1001F1160(&qword_100AE4608, &qword_100827158);
  __chkstk_darwin(v153);
  v161 = &v140 - v30;
  v163 = sub_1001F1160(&qword_100AE4610, &qword_100827160);
  __chkstk_darwin(v163);
  v162 = &v140 - v31;
  *v17 = sub_10079CB24();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v32 = sub_1001F1160(&qword_100AE4618, &unk_100827168);
  v33 = a1;
  sub_10045B0B4(a1, &v17[*(v32 + 44)]);
  sub_1001F1160(&qword_100AE17F0, &qword_100822890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  v35 = sub_10079D2C4();
  *(inited + 32) = v35;
  v36 = sub_10079D2E4();
  *(inited + 33) = v36;
  v37 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v35)
  {
    v37 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v36)
  {
    v37 = sub_10079D2D4();
  }

  if (*v33)
  {
    v38 = 6.0;
  }

  else
  {
    v38 = 8.0;
  }

  if (*v33)
  {
    v39 = 4.0;
  }

  else
  {
    v39 = 6.0;
  }

  sub_10079BBA4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_10020B3C8(v17, v19, &qword_100AE45B8, &qword_100827108);
  v48 = &v19[*(v141 + 36)];
  *v48 = v37;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  v49 = sub_10079D2A4();
  sub_10079BBA4();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_10020B3C8(v19, v21, &qword_100AE45C0, &qword_100827110);
  v58 = &v21[*(v142 + 36)];
  *v58 = v49;
  *(v58 + 1) = v51;
  *(v58 + 2) = v53;
  *(v58 + 3) = v55;
  *(v58 + 4) = v57;
  v58[40] = 0;
  v59 = sub_10079D2B4();
  sub_10079BBA4();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  sub_10020B3C8(v21, v23, &qword_100AE45C8, &qword_100827118);
  v68 = &v23[*(v143 + 36)];
  *v68 = v59;
  *(v68 + 1) = v61;
  *(v68 + 2) = v63;
  *(v68 + 3) = v65;
  *(v68 + 4) = v67;
  v68[40] = 0;
  v69 = sub_10079E474();
  v71 = v70;
  v72 = v146;
  sub_10020B3C8(v23, v146, &qword_100AE45D0, &qword_100827120);
  v73 = (v72 + *(v144 + 36));
  *v73 = sub_1002581A4;
  v73[1] = 0;
  v73[2] = v69;
  v73[3] = v71;
  v134 = 0;
  LOBYTE(v135) = 1;
  v136 = 0;
  LOBYTE(v137) = 1;
  v138 = sub_10079E474();
  v139 = v74;
  sub_10079C414();
  v75 = v148;
  sub_10020B3C8(v72, v148, &qword_100AE45D8, &qword_100827128);
  v76 = (v75 + *(v145 + 36));
  v77 = v180;
  v76[4] = v179;
  v76[5] = v77;
  v76[6] = v181;
  v78 = v176;
  *v76 = v175;
  v76[1] = v78;
  v79 = v178;
  v76[2] = v177;
  v76[3] = v79;
  v134 = 0;
  LOBYTE(v135) = 1;
  v136 = 0x7FF0000000000000;
  LOBYTE(v137) = 0;
  v138 = sub_10079E474();
  v139 = v80;
  sub_10079C414();
  v81 = v151;
  sub_10020B3C8(v75, v151, &qword_100AE45E0, &qword_100827130);
  v82 = (v81 + *(v147 + 36));
  v83 = v187;
  v82[4] = v186;
  v82[5] = v83;
  v82[6] = v188;
  v84 = v183;
  *v82 = v182;
  v82[1] = v84;
  v85 = v185;
  v82[2] = v184;
  v82[3] = v85;
  v148 = v33;
  v86 = *(v33 + 1);

  sub_10079F1A4();
  v87 = sub_10079DEA4();
  LOBYTE(v71) = sub_10079D294();
  v88 = v81;
  v89 = v173;
  sub_10020B3C8(v88, v173, &qword_100AE45E8, &qword_100827138);
  v90 = v89 + *(v150 + 36);
  *v90 = v87;
  *(v90 + 8) = v71;
  v91 = sub_10079E474();
  v150 = v92;
  v151 = v91;
  v149 = &v174[*(v149 + 9)];
  v94 = v157;
  v93 = v158;
  *v157 = v86;
  *(v94 + 8) = v39;
  *(v94 + 16) = v38;
  *&v189 = 0x402C000000000000;
  v95 = enum case for Font.TextStyle.caption(_:);
  v96 = v160;
  v97 = *(v159 + 104);
  v97(v93, enum case for Font.TextStyle.caption(_:), v160);
  sub_100247DCC();
  sub_10079BDD4();
  *&v189 = 0x4032000000000000;
  v97(v93, v95, v96);
  v98 = v174;
  sub_10079BDD4();
  v99 = v156;
  sub_100460DB0(v94, v156, type metadata accessor for ThemeStateOverlayView);
  v100 = v99;
  v101 = v149;
  sub_100460DB0(v100, v149, type metadata accessor for ThemeStateOverlayView);
  v102 = (v101 + *(sub_1001F1160(&unk_100AE4620, &unk_100827178) + 36));
  v103 = v150;
  *v102 = v151;
  v102[1] = v103;
  sub_10020B3C8(v173, v98, &qword_100AE45F0, &qword_100827140);
  if (qword_100AD1658 != -1)
  {
    swift_once();
  }

  v104 = sub_10079C3D4();
  v105 = sub_100008B98(v104, qword_100AE3E20);
  v106 = v154;
  v107 = &v154[*(v152 + 36)];
  sub_10045FFF4(v105, v107, &type metadata accessor for RoundedRectangle);
  *(v107 + *(sub_1001F1160(&qword_100AD97F8, &qword_100816BF0) + 36)) = 256;
  sub_10020B3C8(v98, v106, &qword_100AE45F8, &qword_100827148);
  v108 = v161;
  v109 = &v161[*(v153 + 36)];
  sub_10045FFF4(v105, v109, &type metadata accessor for RoundedRectangle);
  *(v109 + *(sub_1001F1160(&qword_100AE4630, &qword_100827188) + 36)) = 0;
  sub_10020B3C8(v106, v108, &qword_100AE4600, &qword_100827150);
  v110 = v148;
  LOBYTE(v106) = v148[32];
  v111 = objc_opt_self();
  v112 = &selRef_labelColor;
  if ((v106 & 1) == 0)
  {
    v112 = &selRef_quaternaryLabelColor;
  }

  v113 = [v111 *v112];
  v114 = sub_10079DEA4();
  sub_10045912C();
  sub_10079BCF4();
  v115 = v165;
  sub_10045FFF4(v105, v165, &type metadata accessor for RoundedRectangle);
  v116 = *&v189 * 0.5;
  v117 = v115 + *(v164 + 68);
  sub_10045FFF4(v105, v117, &type metadata accessor for RoundedRectangle);
  *(v117 + *(sub_10079C3C4() + 20)) = v116;
  v118 = v117 + *(sub_1001F1160(&qword_100AE4638, &qword_100827190) + 36);
  v119 = v190;
  *v118 = v189;
  *(v118 + 16) = v119;
  *(v118 + 32) = v191;
  v120 = sub_1001F1160(&qword_100AE4640, &qword_100827198);
  *(v117 + *(v120 + 52)) = v114;
  *(v117 + *(v120 + 56)) = 256;
  v121 = sub_10079E474();
  v123 = v122;
  v124 = (v117 + *(sub_1001F1160(&qword_100AE4648, &qword_1008271A0) + 36));
  *v124 = v121;
  v124[1] = v123;
  v125 = sub_10079E474();
  v127 = v126;
  v128 = v162;
  v129 = &v162[*(v163 + 36)];
  sub_10020B3C8(v115, v129, &qword_100AE45B0, &qword_100827100);
  v130 = (v129 + *(sub_1001F1160(&qword_100AE4650, &qword_1008271A8) + 36));
  *v130 = v125;
  v130[1] = v127;
  v131 = sub_10020B3C8(v108, v128, &qword_100AE4608, &qword_100827158);
  __chkstk_darwin(v131);
  v132 = v166;
  *(&v140 - 8) = v110;
  *(&v140 - 7) = v132;
  sub_1001F1160(&qword_100AE4658, &qword_1008271B0);
  sub_100460670();
  sub_100005920(&unk_100AE46F0, &qword_100AE4658, &qword_1008271B0, &protocol conformance descriptor for TupleView<A>);
  sub_10079D6C4();
  return sub_100007840(v128, &qword_100AE4610, &qword_100827160);
}

uint64_t sub_10045B0B4@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v128 = a2;
  v110 = sub_1001F1160(&qword_100AE4720, &qword_1008271E0);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = v99 - v3;
  v121 = sub_1001F1160(&qword_100AE4728, &qword_1008271E8);
  v118 = *(v121 - 8);
  __chkstk_darwin(v121);
  v116 = v99 - v4;
  v115 = sub_1001F1160(&qword_100AE4730, &qword_1008271F0);
  __chkstk_darwin(v115);
  v125 = v99 - v5;
  v123 = sub_1001F1160(&qword_100AE4738, &qword_1008271F8);
  __chkstk_darwin(v123);
  v126 = v99 - v6;
  v124 = sub_1001F1160(&unk_100AE4740, &unk_100827200);
  __chkstk_darwin(v124);
  v127 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v119 = v99 - v9;
  __chkstk_darwin(v10);
  v132 = v99 - v11;
  v103 = sub_10079D4D4();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v13 - 8);
  v15 = v99 - v14;
  v16 = type metadata accessor for TextFormatSizeLabel(0);
  __chkstk_darwin(v16);
  v18 = (v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = sub_1001F1160(&qword_100AE4750, &qword_100827210);
  __chkstk_darwin(v107);
  v20 = v99 - v19;
  v21 = sub_1001F1160(&qword_100AE4758, &qword_100827218);
  __chkstk_darwin(v21);
  v23 = v99 - v22;
  v122 = sub_1001F1160(&unk_100AE4760, &qword_100827220);
  v120 = *(v122 - 8);
  __chkstk_darwin(v122);
  v117 = v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v135 = v99 - v26;
  v27 = *a1;
  sub_10079E474();
  LODWORD(v133) = v27;
  sub_10079BE54();
  v114 = v145;
  v113 = v147;
  v112 = v149;
  v111 = v150;
  v144 = 1;
  v143 = v146;
  v142 = v148;
  v134 = a1;
  v28 = sub_10079F204();
  v29 = sub_10079F184();
  v30 = sub_10079D3A4();
  v100 = *(v30 - 8);
  v31 = *(v100 + 56);
  v131 = v30;
  v130 = v100 + 56;
  v129 = v31;
  (v31)(v15, 1, 1);
  v32 = sub_10079D424();
  sub_100007840(v15, &unk_100AD1FC0, &unk_10080B850);
  if (v28)
  {
    LODWORD(v106) = v29;

    v33 = sub_1007A0824();
    if (v33 > 1)
    {
      if (v33 != 2)
      {
        v37 = v21;
        v38 = v131;
        (*(v100 + 104))(v15, enum case for Font.Design.serif (_:), v131);
        v39 = v38;
        v21 = v37;
        v129(v15, 0, 1, v39);
        v40 = sub_10079D424();

        sub_100007840(v15, &unk_100AD1FC0, &unk_10080B850);
        v32 = v40;
        goto LABEL_8;
      }
    }

    else if (v33)
    {
      v104 = sub_1007A07F4();
      v99[1] = v34;
      v35 = *(v102 + 104);
      v36 = v101;
      v105 = v21;
      v35(v101, enum case for Font.TextStyle.body(_:), v103);
      v104 = sub_10079D404();

      v21 = v105;
      (*(v102 + 8))(v36, v103);
      v32 = v104;
LABEL_8:
      LOBYTE(v29) = v106;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:
  if (v29)
  {
    v41 = sub_10079D384();

    v32 = v41;
  }

  v43 = *(v134 + 2);
  v42 = *(v134 + 3);
  *v18 = swift_getKeyPath();
  sub_1001F1160(&unk_100ADBC10, &qword_100818090);
  swift_storeEnumTagMultiPayload();
  *(v18 + *(v16 + 20)) = v32;
  v44 = (v18 + *(v16 + 24));
  *v44 = v43;
  v44[1] = v42;

  sub_10079F234();
  sub_10079DEA4();
  sub_10079F224();
  v45 = sub_10079DE24();

  KeyPath = swift_getKeyPath();
  sub_100460DB0(v18, v20, type metadata accessor for TextFormatSizeLabel);
  v47 = &v20[*(v107 + 36)];
  *v47 = KeyPath;
  v47[1] = v45;
  sub_10020B3C8(v20, v23, &qword_100AE4750, &qword_100827210);
  *&v23[*(v21 + 36)] = 257;
  sub_100460E18();
  sub_10079DC94();
  sub_100007840(v23, &qword_100AE4758, &qword_100827218);
  sub_10079E474();
  sub_10079BE54();
  v107 = v151;
  v106 = v153;
  v105 = v155;
  v104 = v156;
  v141 = 1;
  v140 = v152;
  v139 = v154;
  v157 = sub_10079F214();
  v158 = v48;
  sub_100206ECC();
  v49 = sub_10079D5D4();
  v51 = v50;
  v157 = v49;
  v158 = v50;
  v53 = v52 & 1;
  LOBYTE(v159) = v52 & 1;
  v160 = v54;
  v55 = v108;
  sub_10079DC94();
  sub_10020B430(v49, v51, v53);

  v157 = &type metadata for Text;
  v158 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v56 = v116;
  v57 = v110;
  sub_10079D8A4();
  (*(v109 + 8))(v55, v57);
  v58 = sub_10079F204();
  v59 = sub_10079F184();
  v129(v15, 1, 1, v131);
  v60 = sub_10079D424();
  sub_100007840(v15, &unk_100AD1FC0, &unk_10080B850);
  if (v58)
  {

    v61 = sub_1007A0824();
    if (v61 > 1)
    {
      if (v61 != 2)
      {
        v97 = v131;
        (*(v100 + 104))(v15, enum case for Font.Design.serif (_:), v131);
        v129(v15, 0, 1, v97);
        v98 = sub_10079D424();

        sub_100007840(v15, &unk_100AD1FC0, &unk_10080B850);
        v60 = v98;
        if ((v59 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else if (v61)
    {
      sub_1007A07F4();
      v62 = v102;
      v63 = v101;
      v64 = v103;
      (*(v102 + 104))(v101, enum case for Font.TextStyle.body(_:), v103);
      v65 = sub_10079D404();

      (*(v62 + 8))(v63, v64);
      v60 = v65;
      if ((v59 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  if (v59)
  {
LABEL_19:
    v66 = sub_10079D384();

    v60 = v66;
  }

LABEL_20:

  v67 = swift_getKeyPath();
  v68 = v125;
  (*(v118 + 32))(v125, v56, v121);
  v69 = &v68[*(v115 + 36)];
  *v69 = v67;
  v69[1] = v60;
  sub_10079F234();
  sub_10079DEA4();
  sub_10079F224();
  v70 = sub_10079DE24();

  v71 = swift_getKeyPath();
  v72 = v68;
  v73 = v126;
  sub_10020B3C8(v72, v126, &qword_100AE4730, &qword_1008271F0);
  v74 = (v73 + *(v123 + 36));
  *v74 = v71;
  v74[1] = v70;
  v75 = *(v134 + 14) / *(v134 + 13);
  v76 = swift_getKeyPath();
  v77 = v119;
  sub_10020B3C8(v73, v119, &qword_100AE4738, &qword_1008271F8);
  v78 = v77 + *(v124 + 36);
  *v78 = v76;
  *(v78 + 8) = v75;
  v79 = v132;
  sub_10020B3C8(v77, v132, &unk_100AE4740, &unk_100827200);
  sub_10079E474();
  sub_10079BE54();
  v134 = v157;
  v133 = v159;
  v131 = v161;
  v130 = v162;
  v138 = 1;
  v137 = v158;
  v136 = v160;
  LOBYTE(v73) = v144;
  v80 = v143;
  v81 = v142;
  v82 = v120;
  v83 = *(v120 + 16);
  v84 = v117;
  v85 = v122;
  v83(v117, v135, v122);
  LODWORD(v121) = v141;
  LODWORD(v123) = v140;
  LODWORD(v124) = v139;
  v86 = v79;
  v87 = v127;
  sub_1000077D8(v86, v127, &unk_100AE4740, &unk_100827200);
  LODWORD(v125) = v138;
  LODWORD(v126) = v137;
  LODWORD(v129) = v136;
  v88 = v128;
  *v128 = 0;
  *(v88 + 8) = v73;
  v88[2] = v114;
  *(v88 + 24) = v80;
  v88[4] = v113;
  *(v88 + 40) = v81;
  v89 = v111;
  v88[6] = v112;
  v88[7] = v89;
  v90 = sub_1001F1160(&qword_100AE4778, &qword_1008272F8);
  v83(v88 + v90[12], v84, v85);
  v91 = v88 + v90[16];
  *v91 = 0;
  v91[8] = v121;
  *(v91 + 2) = v107;
  v91[24] = v123;
  *(v91 + 4) = v106;
  v91[40] = v124;
  v92 = v104;
  *(v91 + 6) = v105;
  *(v91 + 7) = v92;
  sub_1000077D8(v87, v88 + v90[20], &unk_100AE4740, &unk_100827200);
  v93 = v88 + v90[24];
  *v93 = 0;
  v93[8] = v125;
  *(v93 + 2) = v134;
  v93[24] = v126;
  *(v93 + 4) = v133;
  v93[40] = v129;
  v94 = v130;
  *(v93 + 6) = v131;
  *(v93 + 7) = v94;
  sub_100007840(v132, &unk_100AE4740, &unk_100827200);
  v95 = *(v82 + 8);
  v95(v135, v85);
  sub_100007840(v87, &unk_100AE4740, &unk_100827200);
  return (v95)(v84, v85);
}