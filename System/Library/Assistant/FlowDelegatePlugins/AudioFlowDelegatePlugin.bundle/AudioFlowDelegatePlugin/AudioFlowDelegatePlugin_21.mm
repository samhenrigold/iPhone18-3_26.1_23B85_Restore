void sub_26BFD4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v50 = a4;
  v51 = a3;
  v8 = sub_2C8E80();
  v45 = *(v8 - 8);
  v46 = v8;
  __chkstk_darwin(v8);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v49 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v47 = *(v11 + 16);
  v48 = v16;
  v47(v15, v16, v10);

  v17 = sub_2CDFE0();
  v18 = sub_2CE690();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v43 = a5;
    v21 = a1;
    v22 = a2;
    v23 = v20;
    aBlock[0] = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_3F08(v21, v22, aBlock);
    _os_log_impl(&dword_0, v17, v18, "PlayMediaRCHFlowWrapper#saveToSiriMemory successful 1p, also donating INInteraction on behalf of: %{public}s", v19, 0xCu);
    sub_306C(v23);
  }

  v24 = *(v11 + 8);
  v24(v15, v10);
  v25 = v51;
  v26 = sub_2CE6E0();
  if (v26)
  {
    v27 = v26;
    v28 = [v25 identifier];
    if (v28)
    {
      v29 = v28;
      sub_2CE270();
    }

    else
    {
      v34 = v44;
      sub_2C8E70();
      sub_2C8E50();
      (*(v45 + 8))(v34, v46);
    }

    v35 = sub_2CE260();

    [v27 setIdentifier:v35];

    v36 = objc_allocWithZone(INInteraction);
    v37 = [v36 initWithIntent:v27 response:v50];

    isa = sub_2C8B90().super.isa;
    [v37 setDateInterval:isa];

    v39 = sub_2CE260();
    v40 = swift_allocObject();
    *(v40 + 16) = v27;
    aBlock[4] = sub_27535C;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25FAD4;
    aBlock[3] = &unk_33C528;
    v41 = _Block_copy(aBlock);
    v42 = v27;

    [v37 _donateInteractionWithBundleId:v39 completion:v41];
    _Block_release(v41);
  }

  else
  {
    v30 = v49;
    v47(v49, v48, v10);
    v31 = sub_2CDFE0();
    v32 = sub_2CE690();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "PlayMediaRCHFlowWrapper#saveToSiriMemory Cannot convert intent to SiriRemembers intent. Bailing on INInteraction donation", v33, 2u);
    }

    v24(v30, v10);
  }
}

uint64_t sub_26C518(uint64_t a1, void *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v6);
  v10 = v35 - v9 + 16;
  if (a1)
  {
    swift_errorRetain();
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v11 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v10, v11, v4);
    swift_errorRetain();
    v12 = sub_2CDFE0();
    v13 = sub_2CE680();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v35[0] = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      v16 = sub_2CEEF0();
      v18 = sub_3F08(v16, v17, v35);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_0, v12, v13, "PlayMediaRCHFlowWrapper#saveToSiriMemory error donating INInteraction: %{public}s", v14, 0xCu);
      sub_306C(v15);
    }

    else
    {
    }

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v19 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v8, v19, v4);
    v20 = a2;
    v21 = sub_2CDFE0();
    v22 = sub_2CE690();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136315138;
      v25 = [v20 identifier];
      if (v25)
      {
        v26 = v25;
        v27 = sub_2CE270();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      v35[0] = v27;
      v35[1] = v29;
      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v31 = sub_2CE2A0();
      v33 = sub_3F08(v31, v32, &v36);

      *(v23 + 4) = v33;
      _os_log_impl(&dword_0, v21, v22, "PlayMediaRCHFlowWrapper#saveToSiriMemory also successfully donated INInteraction with identifier: %s", v23, 0xCu);
      sub_306C(v24);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_26C940(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v34 = sub_2CE150();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CE180();
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_356378, &qword_2D8590);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - v12;
  v31 = sub_2CBA10();
  sub_F3F4(a2, v13, &qword_356378, &qword_2D8590);
  v14 = *(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  sub_14A58(v13, v15 + ((v14 + 24) & ~v14), &qword_356378, &qword_2D8590);
  v43 = sub_2753E0;
  v44 = v15;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v32 = &v41;
  v41 = sub_A4294;
  v42 = &unk_33C5A0;
  v16 = _Block_copy(&aBlock);

  sub_2CE160();
  v38 = _swiftEmptyArrayStorage;
  v29 = sub_270D7C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v28 = sub_20410(&qword_34DD48, &qword_2D5F80);
  v30 = sub_72068(&qword_34FF30, &qword_34DD48, &qword_2D5F80, &protocol conformance descriptor for [A]);
  v17 = v34;
  sub_2CEC10();
  v18 = v31;
  sub_2CE9C0();
  _Block_release(v16);

  v19 = *(v37 + 8);
  v37 += 8;
  v31 = v19;
  v19(v5, v17);
  v20 = *(v36 + 8);
  v36 += 8;
  v27 = v20;
  v20(v9, v35);

  v21 = sub_2CBA10();
  sub_F3F4(v33, v13, &qword_356378, &qword_2D8590);
  v22 = swift_allocObject();
  sub_14A58(v13, v22 + ((v14 + 16) & ~v14), &qword_356378, &qword_2D8590);
  v43 = sub_275574;
  v44 = v22;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_A4294;
  v42 = &unk_33C5F0;
  v23 = _Block_copy(&aBlock);
  sub_2CE160();
  v38 = _swiftEmptyArrayStorage;
  v24 = v34;
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v23);

  v31(v5, v24);
  v27(v9, v35);
}

uint64_t sub_26CE58(uint64_t a1, void *a2)
{
  v4 = sub_2CDFD0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v8 = qword_35F760;
  sub_2CDFB0();
  sub_2CE9E0();
  sub_2CDFA0();
  sub_26CFCC(a1, a2);
  sub_2CE9D0();
  sub_2CDFA0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26CFCC(uint64_t a1, id a2)
{
  v174 = a2;
  v3 = sub_2CC2B0();
  v152 = *(v3 - 8);
  v153 = v3;
  __chkstk_darwin(v3);
  v151 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CC780();
  v167 = *(v5 - 8);
  v168 = v5;
  __chkstk_darwin(v5);
  v166 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_356378, &qword_2D8590);
  v8 = __chkstk_darwin(v7 - 8);
  v169 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v165 = &v148 - v11;
  __chkstk_darwin(v10);
  v164 = &v148 - v12;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v148 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v163 = &v148 - v18;
  v19 = __chkstk_darwin(v17);
  v149 = &v148 - v20;
  __chkstk_darwin(v19);
  v22 = &v148 - v21;
  v177 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v23 = __chkstk_darwin(v177);
  v25 = &v148 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v161 = &v148 - v27;
  v28 = __chkstk_darwin(v26);
  v160 = &v148 - v29;
  v30 = __chkstk_darwin(v28);
  v159 = &v148 - v31;
  v32 = __chkstk_darwin(v30);
  v158 = &v148 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v148 - v35;
  v37 = __chkstk_darwin(v34);
  v156 = &v148 - v38;
  v39 = __chkstk_darwin(v37);
  v155 = &v148 - v40;
  v41 = __chkstk_darwin(v39);
  v154 = &v148 - v42;
  v43 = __chkstk_darwin(v41);
  v150 = &v148 - v44;
  v45 = __chkstk_darwin(v43);
  v47 = &v148 - v46;
  v48 = __chkstk_darwin(v45);
  v50 = &v148 - v49;
  __chkstk_darwin(v48);
  v52 = &v148 - v51;
  if (a1)
  {
    sub_2CC0B0();
  }

  else
  {
    v53 = sub_2CBF80();
    (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
  }

  v157 = v36;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v54 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v55 = *(v14 + 16);
  v172 = v14 + 16;
  v173 = v54;
  v171 = v55;
  v55(v22, v54, v13);
  sub_F3F4(v52, v50, &qword_34DD30, &unk_2D1BC0);
  v56 = sub_2CDFE0();
  v57 = v22;
  v58 = sub_2CE670();
  v59 = os_log_type_enabled(v56, v58);
  v175 = v14;
  v176 = v13;
  v178 = v52;
  v162 = v25;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v179[0] = v61;
    *v60 = 136315138;
    v170 = v57;
    sub_F3F4(v50, v47, &qword_34DD30, &unk_2D1BC0);
    v62 = sub_2CE2A0();
    v64 = v63;
    sub_30B8(v50, &qword_34DD30, &unk_2D1BC0);
    v65 = sub_3F08(v62, v64, v179);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_0, v56, v58, "PlayMediaRCHFlowWrapper#logCoreAnalytics supplying CoreAnalytics instrumentation, with appSelectionReport: %s...", v60, 0xCu);
    sub_306C(v61);

    v66 = *(v175 + 8);
    v66(v170, v176);
  }

  else
  {

    sub_30B8(v50, &qword_34DD30, &unk_2D1BC0);
    v66 = *(v14 + 8);
    v66(v57, v13);
  }

  v67 = v174;
  v68 = v164;
  sub_F3F4(v174, v164, &qword_356378, &qword_2D8590);
  v69 = sub_20410(&qword_3524B0, &unk_2D8440);
  v70 = *(v69 - 8);
  v71 = *(v70 + 48);
  v72 = v71(v68, 1, v69);
  v73 = v165;
  if (v72 == 1)
  {
    sub_30B8(v68, &qword_356378, &qword_2D8590);
LABEL_16:
    v177 = 0;
    goto LABEL_17;
  }

  if ((*(v70 + 88))(v68, v69) != enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v70 + 8))(v68, v69);
    goto LABEL_16;
  }

  (*(v70 + 96))(v68, v69);
  v177 = *(v68 + 8);
  v74 = *(v68 + 16);

  v171(v149, v173, v176);
  v75 = sub_2CDFE0();
  v76 = sub_2CE670();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_0, v75, v76, "PlayMediaRCHFlowWrapper#logCoreAnalytics supplying intent from complete FlowResult", v77, 2u);
    v67 = v174;
  }

  v66(v149, v176);
LABEL_17:
  sub_F3F4(v67, v73, &qword_356378, &qword_2D8590);
  v78 = v71(v73, 1, v69);
  v170 = v66;
  if (v78 == 1)
  {
    sub_30B8(v73, &qword_356378, &qword_2D8590);
LABEL_28:
    v165 = 0;
    v84 = 0xE000000000000000;
    goto LABEL_29;
  }

  if ((*(v70 + 88))(v73, v69) != enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v70 + 8))(v73, v69);
    goto LABEL_28;
  }

  (*(v70 + 96))(v73, v69);
  v79 = *(v73 + 16);

  v80 = sub_2CCF90();
  v82 = v81;

  if (v82)
  {
    v83 = v80;
  }

  else
  {
    v83 = 0;
  }

  v165 = v83;
  if (v82)
  {
    v84 = v82;
  }

  else
  {
    v84 = 0xE000000000000000;
  }

  v67 = v174;
LABEL_29:
  v85 = v166;
  v86 = v167;
  v87 = v168;
  (*(v167 + 104))(v166, enum case for CoreAnalyticsResponses.FabricatedPlayCodes.generalUnsuccessful(_:), v168);
  v174 = sub_2CC770();
  (*(v86 + 8))(v85, v87);
  v88 = v169;
  sub_F3F4(v67, v169, &qword_356378, &qword_2D8590);
  if (v71(v88, 1, v69) == 1)
  {
    sub_30B8(v88, &qword_356378, &qword_2D8590);
  }

  else
  {
    if ((*(v70 + 88))(v88, v69) == enum case for RCHFlowResult.complete<A, B>(_:))
    {
      (*(v70 + 96))(v88, v69);
      v89 = *(v88 + 8);
      v90 = *(v88 + 16);

      v174 = [v90 code];
      v91 = [v90 code];

      v92 = v91 == &dword_4;
      goto LABEL_35;
    }

    (*(v70 + 8))(v88, v69);
  }

  v92 = 0;
LABEL_35:
  v93 = HIBYTE(v84) & 0xF;
  if ((v84 & 0x2000000000000000) == 0)
  {
    v93 = v165 & 0xFFFFFFFFFFFFLL;
  }

  if (v93)
  {
    v167 = v92;
    sub_20410(&qword_34DD38, &unk_2D3B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D1AB0;
    *(inited + 32) = 0x6449707061;
    v168 = inited + 32;
    *(inited + 40) = 0xE500000000000000;
    v95 = sub_2CE260();

    *(inited + 48) = v95;
    *(inited + 56) = 1701080931;
    *(inited + 64) = 0xE400000000000000;
    *(inited + 72) = sub_2CE560();
    *(inited + 80) = 0x70616C45656D6974;
    *(inited + 88) = 0xEB00000000646573;
    v96 = v150;
    sub_F3F4(v178, v150, &qword_34DD30, &unk_2D1BC0);
    v97 = sub_2CBF80();
    v98 = *(v97 - 8);
    v99 = *(v98 + 48);
    if (v99(v96, 1, v97) == 1)
    {
      sub_30B8(v96, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      sub_2CBEF0();
      (*(v98 + 8))(v96, v97);
    }

    *(inited + 96) = sub_2CE500();
    *(inited + 104) = 0x65636E6174736E69;
    *(inited + 112) = 0xE800000000000000;
    v105 = v151;
    sub_2CC2A0();
    sub_2CC280();
    (*(v152 + 8))(v105, v153);
    *(inited + 120) = sub_2CE560();
    *(inited + 128) = 0x756F43736D657469;
    *(inited + 136) = 0xEA0000000000746ELL;
    if (v177)
    {
      v106 = [v177 mediaItems];
      if (v106)
      {
        sub_334A0(0, &qword_356F50, INMediaItem_ptr);
        v107 = sub_2CE410();

        if (v107 >> 62)
        {
          sub_2CEDA0();
        }
      }

      *(inited + 144) = sub_2CE560();
      *(inited + 152) = 0x7265666E49707061;
      *(inited + 160) = 0xEB00000000646572;
      v108 = sub_2CE730();
    }

    else
    {
      *(inited + 144) = sub_2CE560();
      *(inited + 152) = 0x7265666E49707061;
      *(inited + 160) = 0xEB00000000646572;
      v108 = 1;
    }

    *(inited + 168) = [objc_allocWithZone(NSNumber) initWithBool:v108 & 1];
    *(inited + 176) = 0x706D657474417361;
    *(inited + 184) = 0xEB00000000646574;
    v109 = v178;
    *(inited + 192) = [objc_allocWithZone(NSNumber) initWithBool:{v99(v178, 1, v97) != 1}];
    *(inited + 200) = 0x646573557361;
    *(inited + 208) = 0xE600000000000000;
    v110 = v154;
    sub_F3F4(v109, v154, &qword_34DD30, &unk_2D1BC0);
    v111 = v99;
    v112 = v99(v110, 1, v97);
    v113 = v157;
    v169 = v98;
    if (v112 == 1)
    {
      sub_30B8(v110, &qword_34DD30, &unk_2D1BC0);
      v114 = 0;
    }

    else
    {
      v114 = sub_2CBEE0();
      (*(v98 + 8))(v110, v97);
    }

    *(inited + 216) = [objc_allocWithZone(NSNumber) initWithBool:v114 & 1];
    strcpy((inited + 224), "asExperimentId");
    *(inited + 239) = -18;
    v115 = v155;
    sub_F3F4(v109, v155, &qword_34DD30, &unk_2D1BC0);
    v116 = v111;
    if (v111(v115, 1, v97) == 1)
    {
      sub_30B8(v115, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      sub_2CBF10();
      (*(v169 + 8))(v115, v97);
    }

    v117 = sub_2CE260();

    *(inited + 240) = v117;
    strcpy((inited + 248), "asTreatmentId");
    *(inited + 262) = -4864;
    v118 = v156;
    sub_F3F4(v109, v156, &qword_34DD30, &unk_2D1BC0);
    if (v116(v118, 1, v97) == 1)
    {
      sub_30B8(v118, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      sub_2CBF00();
      (*(v169 + 8))(v118, v97);
    }

    v119 = sub_2CE260();

    *(inited + 264) = v119;
    *(inited + 272) = 0x756F6C6C6F527361;
    *(inited + 280) = 0xEB00000000644974;
    sub_F3F4(v109, v113, &qword_34DD30, &unk_2D1BC0);
    if (v116(v113, 1, v97) == 1)
    {
      sub_30B8(v113, &qword_34DD30, &unk_2D1BC0);
      v120 = v169;
    }

    else
    {
      sub_2CBF70();
      v120 = v169;
      (*(v169 + 8))(v113, v97);
    }

    v121 = sub_2CE260();

    *(inited + 288) = v121;
    *(inited + 296) = 0x6469666E6F437361;
    *(inited + 304) = 0xEF73624165636E65;
    v122 = v158;
    sub_F3F4(v109, v158, &qword_34DD30, &unk_2D1BC0);
    if (v116(v122, 1, v97) == 1)
    {
      sub_30B8(v122, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      sub_2CBF20();
      (*(v120 + 8))(v122, v97);
    }

    v123 = v162;
    v124 = v159;
    *(inited + 312) = sub_2CE500();
    *(inited + 320) = 0xD000000000000010;
    *(inited + 328) = 0x80000000002DB4E0;
    sub_F3F4(v178, v124, &qword_34DD30, &unk_2D1BC0);
    if (v116(v124, 1, v97) == 1)
    {
      sub_30B8(v124, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      sub_2CBF40();
      (*(v120 + 8))(v124, v97);
    }

    v125 = v160;
    *(inited + 336) = sub_2CE500();
    *(inited + 344) = 0x64497070417361;
    *(inited + 352) = 0xE700000000000000;
    sub_F3F4(v178, v125, &qword_34DD30, &unk_2D1BC0);
    if (v116(v125, 1, v97) == 1)
    {
      sub_30B8(v125, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      sub_2CBF30();
      (*(v120 + 8))(v125, v97);
    }

    v126 = sub_2CE260();

    *(inited + 360) = v126;
    *(inited + 368) = 0x7265735577656ELL;
    *(inited + 376) = 0xE700000000000000;
    v127 = v161;
    sub_F3F4(v178, v161, &qword_34DD30, &unk_2D1BC0);
    if (v116(v127, 1, v97) == 1)
    {
      sub_30B8(v127, &qword_34DD30, &unk_2D1BC0);
      v128 = 0;
    }

    else
    {
      v128 = sub_2CBF60();
      (*(v120 + 8))(v127, v97);
    }

    *(inited + 384) = [objc_allocWithZone(NSNumber) initWithBool:v128 & 1];
    strcpy((inited + 392), "successCount");
    *(inited + 405) = 0;
    *(inited + 406) = -5120;
    *(inited + 408) = sub_2CE560();
    *(inited + 416) = 0xD000000000000010;
    *(inited + 424) = 0x80000000002DB500;
    v129 = v178;
    v130 = v116(v178, 1, v97) != 1;
    sub_334A0(0, &qword_353110, NSNumber_ptr);
    *(inited + 432) = sub_2CEB10(v130);
    *(inited + 440) = 0x6F43646573557361;
    *(inited + 448) = 0xEB00000000746E75;
    sub_F3F4(v129, v123, &qword_34DD30, &unk_2D1BC0);
    if (v116(v123, 1, v97) == 1)
    {
      sub_30B8(v123, &qword_34DD30, &unk_2D1BC0);
      v131 = v176;
      v132 = v163;
    }

    else
    {
      v133 = sub_2CBEE0();
      (*(v120 + 8))(v123, v97);
      v131 = v176;
      v132 = v163;
      if (v133)
      {
        v134 = 1;
LABEL_80:
        *(inited + 456) = sub_2CEB10(v134);
        strcpy((inited + 464), "responseCode");
        *(inited + 477) = 0;
        *(inited + 478) = -5120;
        v179[0] = v174;
        sub_2CEE70();
        v135 = sub_2CE260();

        *(inited + 480) = v135;
        v136 = sub_90728(inited);
        swift_setDeallocating();
        sub_20410(&qword_34DD40, &unk_2D1BD0);
        swift_arrayDestroy();
        v171(v132, v173, v131);

        v137 = sub_2CDFE0();
        v138 = sub_2CE670();

        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v179[0] = v140;
          *v139 = 136315138;
          sub_334A0(0, &qword_34DD50, NSObject_ptr);
          v141 = sub_2CE210();
          v143 = sub_3F08(v141, v142, v179);

          *(v139 + 4) = v143;
          _os_log_impl(&dword_0, v137, v138, "PlayMediaRCHFlowWrapper#logCoreAnalytics recording result analytics data: %s", v139, 0xCu);
          sub_306C(v140);
        }

        v170(v132, v131);
        v144 = sub_2CE260();
        v145 = swift_allocObject();
        *(v145 + 16) = v136;
        v179[4] = CommonFlowStrategy.makeParameterMetadata(intent:);
        v179[5] = v145;
        v179[0] = _NSConcreteStackBlock;
        v179[1] = 1107296256;
        v179[2] = sub_25FA38;
        v179[3] = &unk_33C640;
        v146 = _Block_copy(v179);

        AnalyticsSendEventLazy();

        _Block_release(v146);
        return sub_30B8(v178, &qword_34DD30, &unk_2D1BC0);
      }
    }

    v134 = 0;
    goto LABEL_80;
  }

  v100 = v148;
  v101 = v176;
  v171(v148, v173, v176);
  v102 = sub_2CDFE0();
  v103 = sub_2CE680();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&dword_0, v102, v103, "PlayMediaRCHFlowWrapper#logCoreAnalytics no meaningful app identifier", v104, 2u);
  }

  v170(v100, v101);
  return sub_30B8(v178, &qword_34DD30, &unk_2D1BC0);
}

void sub_26E948(uint64_t a1)
{
  v2 = sub_2C8E30();
  v40 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v39 - v10;
  v12 = sub_20410(&qword_356378, &qword_2D8590);
  __chkstk_darwin(v12 - 8);
  v14 = v39 - v13;
  sub_F3F4(a1, v39 - v13, &qword_356378, &qword_2D8590);
  v15 = sub_20410(&qword_3524B0, &unk_2D8440);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_30B8(v14, &qword_356378, &qword_2D8590);
LABEL_17:
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = sub_3ED0(v5, static Logger.default);
    swift_beginAccess();
    (*(v6 + 16))(v9, v30, v5);
    v31 = sub_2CDFE0();
    v32 = sub_2CE690();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "PlayMediaRCHFlowWrapper#logCoreAnalytics skipping daily briefing", v33, 2u);
    }

    (*(v6 + 8))(v9, v5);
    return;
  }

  if ((*(v16 + 88))(v14, v15) != enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v16 + 8))(v14, v15);
    goto LABEL_17;
  }

  (*(v16 + 96))(v14, v15);
  v17 = *(v14 + 1);

  if (!_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v17, &off_330DF0))
  {
    goto LABEL_29;
  }

  v18 = [v17 mediaItems];
  if (!v18)
  {
    goto LABEL_29;
  }

  v19 = v18;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v20 = sub_2CE410();

  if (!(v20 >> 62))
  {
    if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_8;
    }

LABEL_31:

    return;
  }

  if (!sub_2CEDA0())
  {
    goto LABEL_31;
  }

LABEL_8:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = sub_2CECD0();
  }

  else
  {
    if (!*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_34;
    }

    v21 = *(v20 + 32);
  }

  v22 = v21;

  v23 = [v22 identifier];

  if (!v23)
  {
LABEL_29:

    return;
  }

  v39[0] = sub_2CE270();
  v25 = v24;

  v26 = sub_2CCF90();
  if (!v27)
  {
    goto LABEL_28;
  }

  v28 = v27;
  v39[1] = v25;
  if (sub_2CBE30() == v26 && v28 == v29)
  {

    goto LABEL_24;
  }

  v34 = sub_2CEEA0();

  if ((v34 & 1) == 0)
  {
LABEL_28:

    goto LABEL_29;
  }

LABEL_24:
  if (qword_34BF58 != -1)
  {
LABEL_34:
    swift_once();
  }

  v35 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  (*(v6 + 16))(v11, v35, v5);
  v36 = sub_2CDFE0();
  v37 = sub_2CE690();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "PlayMediaRCHFlowWrapper#logCoreAnalytics setting last invocation date for podcast in DailyBriefing synced DB", v38, 2u);
  }

  (*(v6 + 8))(v11, v5);
  sub_2CDC10();
  sub_2CDC00();
  sub_2C8E20();
  sub_2C8E00();
  (*(v40 + 8))(v4, v2);
  sub_2CDBF0();
}

uint64_t sub_26F018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v27 = sub_20410(&qword_3524B0, &unk_2D8440);
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v27);
  v7 = &v24 - v6;
  v28 = sub_2CC040();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2CDFE0();
  v16 = sub_2CE670();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v9;
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "PlayMediaRCHFlowWrapper#logReliability performing reliability test...", v17, 2u);
    v9 = v25;
  }

  (*(v11 + 8))(v13, v10);
  sub_2CC030();
  v18 = v27;
  (*(v4 + 16))(v7, a1, v27);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  (*(v4 + 32))(v20 + v19, v7, v18);
  v21 = (v20 + ((v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v30;
  *v21 = v29;
  v21[1] = v22;

  sub_2CC020();

  return (*(v26 + 8))(v9, v28);
}

uint64_t sub_26F3BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v112 = a6;
  v113 = a2;
  v109 = a5;
  v110 = a1;
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v100[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = sub_20410(&qword_3524B0, &unk_2D8440);
  v12 = *(v114 - 8);
  __chkstk_darwin(v114);
  v14 = &v100[-v13];
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v115 = &v100[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v105 = &v100[-v20];
  v21 = __chkstk_darwin(v19);
  v111 = &v100[-v22];
  v23 = __chkstk_darwin(v21);
  v104 = &v100[-v24];
  __chkstk_darwin(v23);
  v26 = &v100[-v25];
  if (a3)
  {
    v106 = a4;
    v107 = v11;
    v108 = v9;
    swift_errorRetain();
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v27 = sub_3ED0(v15, static Logger.default);
    swift_beginAccess();
    (*(v16 + 16))(v26, v27, v15);
    swift_errorRetain();
    v28 = sub_2CDFE0();
    v29 = sub_2CE680();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v103 = v8;
      v31 = v30;
      v102 = swift_slowAlloc();
      v118[0] = v102;
      *v31 = 136446210;
      swift_getErrorValue();
      v101 = v29;
      v32 = sub_2CEEF0();
      v34 = v15;
      v35 = v16;
      v36 = sub_3F08(v32, v33, v118);

      *(v31 + 4) = v36;
      v16 = v35;
      v15 = v34;
      _os_log_impl(&dword_0, v28, v101, "PlayMediaRCHFlowWrapper#logReliability nowPlaying app error:%{public}s", v31, 0xCu);
      sub_306C(v102);

      v8 = v103;

      v37 = -1;

      (*(v16 + 8))(v26, v34);
    }

    else
    {

      (*(v16 + 8))(v26, v15);
      v37 = -1;
    }

    v11 = v107;
    v9 = v108;
    a4 = v106;
  }

  else
  {
    v37 = -2;
  }

  v38 = a4;
  v39 = v114;
  (*(v12 + 16))(v14, v38, v114);
  v40 = (*(v12 + 88))(v14, v39);
  v41 = v115;
  if (v40 != enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v12 + 8))(v14, v39);
    goto LABEL_45;
  }

  v42 = v39;
  v43 = v16;
  (*(v12 + 96))(v14, v42);
  v44 = *(v14 + 1);
  v45 = *(v14 + 2);

  if ([v45 code] != &dword_4)
  {
    if (v112)
    {
      if (v113 && (v109 == v110 && v112 == v113 || (sub_2CEEA0() & 1) != 0))
      {
        goto LABEL_26;
      }
    }

    else if (!v113)
    {
LABEL_26:
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v59 = sub_3ED0(v15, static Logger.default);
      swift_beginAccess();
      v60 = v105;
      (*(v43 + 16))(v105, v59, v15);
      v61 = sub_2CDFE0();
      v62 = sub_2CE670();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v114 = v15;
        v64 = v63;
        v65 = swift_slowAlloc();
        v113 = v45;
        v66 = v65;
        *v64 = 136315138;
        v116 = 2;
        v117 = v65;
        v67 = sub_2CEE70();
        v69 = v11;
        v70 = sub_3F08(v67, v68, &v117);

        *(v64 + 4) = v70;
        v11 = v69;
        v71 = v62;
        v37 = 2;
        _os_log_impl(&dword_0, v61, v71, "PlayMediaRCHFlowWrapper#logReliability sirikit failure & playback queue correct: %s...", v64, 0xCu);
        sub_306C(v66);

        (*(v43 + 8))(v105, v114);
      }

      else
      {

        (*(v43 + 8))(v60, v15);
        v37 = 2;
      }

      goto LABEL_45;
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v84 = sub_3ED0(v15, static Logger.default);
    swift_beginAccess();
    (*(v43 + 16))(v41, v84, v15);
    v85 = sub_2CDFE0();
    v86 = sub_2CE670();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v114 = v15;
      v88 = v87;
      v89 = swift_slowAlloc();
      v113 = v45;
      v90 = v89;
      *v88 = 136315138;
      v116 = 3;
      v117 = v89;
      v91 = sub_2CEE70();
      v93 = v11;
      v94 = sub_3F08(v91, v92, &v117);

      *(v88 + 4) = v94;
      v11 = v93;
      v95 = v86;
      v37 = 3;
      _os_log_impl(&dword_0, v85, v95, "PlayMediaRCHFlowWrapper#logReliability sirikit failure & playback queue incorrect: %s...", v88, 0xCu);
      sub_306C(v90);

      (*(v43 + 8))(v115, v114);
    }

    else
    {

      (*(v43 + 8))(v41, v15);
      v37 = 3;
    }

    goto LABEL_45;
  }

  if (v112)
  {
    v46 = v111;
    if (v113 && (v109 == v110 && v112 == v113 || (sub_2CEEA0() & 1) != 0))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v46 = v111;
    if (!v113)
    {
LABEL_16:
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v47 = sub_3ED0(v15, static Logger.default);
      swift_beginAccess();
      v48 = v104;
      (*(v43 + 16))(v104, v47, v15);
      v49 = sub_2CDFE0();
      v50 = sub_2CE670();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v114 = v15;
        v52 = v51;
        v53 = swift_slowAlloc();
        v113 = v45;
        v54 = v53;
        v116 = 0;
        v117 = v53;
        *v52 = 136315138;
        v55 = sub_2CEE70();
        v57 = v11;
        v58 = sub_3F08(v55, v56, &v117);

        *(v52 + 4) = v58;
        v11 = v57;
        _os_log_impl(&dword_0, v49, v50, "PlayMediaRCHFlowWrapper#logReliability sirikit success & playback queue correct: %s...", v52, 0xCu);
        sub_306C(v54);

        (*(v43 + 8))(v104, v114);
      }

      else
      {

        (*(v43 + 8))(v48, v15);
      }

      v37 = 0;
      goto LABEL_45;
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v72 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v43 + 16))(v46, v72, v15);
  v73 = sub_2CDFE0();
  v74 = sub_2CE670();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v114 = v15;
    v76 = v75;
    v77 = swift_slowAlloc();
    v113 = v45;
    v78 = v77;
    *v76 = 136315138;
    v116 = 1;
    v117 = v77;
    v79 = sub_2CEE70();
    v81 = v11;
    v82 = sub_3F08(v79, v80, &v117);

    *(v76 + 4) = v82;
    v11 = v81;
    v83 = v74;
    v37 = 1;
    _os_log_impl(&dword_0, v73, v83, "PlayMediaRCHFlowWrapper#logReliability sirikit success & playback queue incorrect: %s...", v76, 0xCu);
    sub_306C(v78);

    (*(v43 + 8))(v111, v114);
  }

  else
  {

    (*(v43 + 8))(v46, v15);
    v37 = 1;
  }

LABEL_45:
  v96 = sub_2CE9F0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v97 = qword_35F760;
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_2D0090;
  *(v98 + 56) = &type metadata for Int;
  *(v98 + 64) = &protocol witness table for Int;
  *(v98 + 32) = v37;
  sub_2CDFC0();
  sub_2CDF90(v96, &dword_0, v97, "playFlowFrameWrapperPlaybackInfo", 32, 2, v11, "sirikitPlaybackQueueStatus=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 85, 2, v98);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_27010C()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_input, &qword_34E480, &qword_2D2280);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_siriKitTaskLoggingProvider));

  v1 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_signpost;
  v2 = sub_2CDFD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_start;
  v4 = sub_2C8E30();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_result, &qword_356378, &qword_2D8590);
  return v0;
}

uint64_t sub_27024C()
{
  sub_27010C();

  return swift_deallocClassInstance();
}

void sub_2702CC(uint64_t a1)
{
  sub_B104C(319);
  if (v1 <= 0x3F)
  {
    sub_2CDFD0();
    if (v2 <= 0x3F)
    {
      sub_2C8E30();
      if (v3 <= 0x3F)
      {
        sub_27042C(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_27042C(uint64_t a1)
{
  if (!qword_356088)
  {
    sub_2DB30(&qword_3524B0, &unk_2D8440);
    v1 = sub_2CEB90();
    if (!v2)
    {
      atomic_store(v1, &qword_356088);
    }
  }
}

void (*sub_270490(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2CB190();
  return sub_AED18;
}

uint64_t sub_27058C()
{
  type metadata accessor for PriorResultContext(0);
  v0 = swift_allocObject();
  v1 = (v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_refId);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_appSelectionUsed) = 0;
  *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_mediaSearch) = 0;
  *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_requestCancelled) = 0;
  *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_previousDisambiguationCancelled) = 0;
  result = sub_2C8DF0();
  qword_35F860 = v0;
  return result;
}

uint64_t sub_27061C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a3;
  v42 = a2;
  v41 = a1;
  v7 = sub_2CE000();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CBF80();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  v16 = sub_2C8E30();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C8E20();
  v20 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_time;
  swift_beginAccess();
  v21 = v19;
  v22 = v41;
  (*(v17 + 40))(v5 + v20, v21, v16);
  swift_endAccess();
  if (v22)
  {
    sub_2CC0B0();
    if ((*(v10 + 48))(v15, 1, v9))
    {
      sub_30B8(v15, &qword_34DD30, &unk_2D1BC0);
      v23 = 0;
    }

    else
    {
      (*(v10 + 16))(v12, v15, v9);
      sub_30B8(v15, &qword_34DD30, &unk_2D1BC0);
      v23 = sub_2CBEE0();
      (*(v10 + 8))(v12, v9);
    }

    v26 = v45;
    v25 = v46;
    v27 = v43;
    v28 = v44;
    *(v5 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_appSelectionUsed) = v23 & 1;
    v29 = sub_2CC0A0();
    v24 = [v29 mediaSearch];
  }

  else
  {
    v24 = 0;
    *(v5 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_appSelectionUsed) = 0;
    v26 = v45;
    v25 = v46;
    v27 = v43;
    v28 = v44;
  }

  v30 = *(v5 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_mediaSearch);
  *(v5 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_mediaSearch) = v24;

  *(v5 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_requestCancelled) = v42 & 1;
  v31 = (v5 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_refId);
  *v31 = v27;
  v31[1] = a4;

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v32 = sub_3ED0(v25, static Logger.default);
  swift_beginAccess();
  (*(v26 + 16))(v28, v32, v25);

  v33 = sub_2CDFE0();
  v34 = sub_2CE670();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v48 = a4;
    v49 = v36;
    *v35 = 136315138;
    v47 = v27;

    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v37 = sub_2CE2A0();
    v39 = sub_3F08(v37, v38, &v49);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_0, v33, v34, "PriorResultContext#update set prior result context for refId: %s", v35, 0xCu);
    sub_306C(v36);
  }

  return (*(v26 + 8))(v28, v25);
}

uint64_t sub_270B54()
{
  v1 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_time;
  v2 = sub_2C8E30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_270C3C(uint64_t a1)
{
  result = sub_2C8E30();
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

uint64_t sub_270D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_270DC4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = sub_4F538(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_236A58(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_4F538(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = sub_2CEEE0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = v13;
    sub_23632C();
    v13 = v22;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_237944(v13, a2, a3, a1, v12);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = 32 * v13;
  sub_E2DC((v12[7] + 32 * v13), a4);
  result = sub_E2DC(a1, (v12[7] + v20));
LABEL_11:
  *v6 = v12;
  return result;
}

unint64_t sub_270F10(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_270F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6, char *a7)
{
  v170 = a7;
  v169 = a6;
  v167 = a5;
  v168 = a4;
  v166 = a2;
  v165 = a1;
  v8 = sub_2CB850();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v150 - v14;
  __chkstk_darwin(v13);
  v17 = &v150 - v16;
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v164 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v163 = &v150 - v23;
  v24 = __chkstk_darwin(v22);
  v161 = &v150 - v25;
  v26 = __chkstk_darwin(v24);
  v162 = &v150 - v27;
  v28 = __chkstk_darwin(v26);
  v160 = &v150 - v29;
  v30 = __chkstk_darwin(v28);
  v159 = &v150 - v31;
  v32 = __chkstk_darwin(v30);
  v157 = &v150 - v33;
  v34 = __chkstk_darwin(v32);
  v154 = &v150 - v35;
  v36 = __chkstk_darwin(v34);
  v156 = &v150 - v37;
  __chkstk_darwin(v36);
  v39 = &v150 - v38;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v155 = v12;
  v40 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  v41 = *(v19 + 16);
  v172 = v40;
  v173 = v41;
  v174 = v19 + 16;
  v41(v39, v40, v18);
  v42 = *(v9 + 16);
  v177 = a3;
  v153 = v9 + 16;
  v152 = v42;
  v42(v17, a3, v8);
  v43 = v9;
  v44 = sub_2CDFE0();
  v178 = v19;
  v45 = v44;
  v46 = sub_2CE670();
  v47 = os_log_type_enabled(v45, v46);
  v171 = v39;
  v48 = v8;
  v49 = v17;
  v176 = v18;
  if (v47)
  {
    v50 = swift_slowAlloc();
    v51 = v43;
    v158 = v43;
    v52 = v50;
    v53 = swift_slowAlloc();
    *&v181 = v53;
    *v52 = 136446210;
    v150 = sub_2CB840();
    v151 = v15;
    v55 = v54;
    v56 = *(v51 + 8);
    v56(v49, v48);
    v57 = sub_3F08(v150, v55, &v181);
    v15 = v151;

    *(v52 + 4) = v57;
    _os_log_impl(&dword_0, v45, v46, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors code: %{public}s", v52, 0xCu);
    sub_306C(v53);

    v58 = v171;
    v171 = *(v178 + 8);
    v171(v58, v176);
    v43 = v158;
  }

  else
  {

    v56 = *(v43 + 8);
    v56(v49, v8);
    v59 = v171;
    v171 = *(v178 + 8);
    v171(v59, v18);
  }

  v62 = *(v43 + 104);
  v60 = v43 + 104;
  v61 = v62;
  v62(v15, enum case for PlaybackCode.iTunesAccountError(_:), v48);
  sub_270D7C(&qword_353CD8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
  v63 = sub_2CE250();
  v56(v15, v48);
  if (v63)
  {
    if (sub_2CB650())
    {
      v64 = v163;
      v65 = v176;
      v173(v163, v172, v176);
      v66 = sub_2CDFE0();
      v67 = sub_2CE690();
      v68 = os_log_type_enabled(v66, v67);
      v69 = v168;
      if (v68)
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_0, v66, v67, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors using special dialog for homepod account error code", v70, 2u);
      }

      v171(v64, v65);
      v182 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v183 = &off_3381B8;
      *&v181 = v167;
      v71 = v167;
      sub_241978(v69, &v181, v169, v170);
    }

    else
    {
      v81 = v164;
      v82 = v176;
      v173(v164, v172, v176);
      v83 = sub_2CDFE0();
      v84 = sub_2CE690();
      v85 = os_log_type_enabled(v83, v84);
      v86 = v168;
      if (v85)
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_0, v83, v84, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors using special dialog for signIntoMusicAccount error code", v87, 2u);
      }

      v171(v81, v82);
      v182 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v183 = &off_3381B8;
      *&v181 = v167;
      v88 = v167;
      sub_241FF8(v165, v86, &v181, v169, v170);
    }

    return sub_30B8(&v181, &qword_34C6C0, &qword_2D0710);
  }

  v61(v15, enum case for PlaybackCode.noNetwork(_:), v48);
  v164 = v56;
  v72 = sub_2CE250();
  (v164)(v15, v48);
  if (v72)
  {
    v73 = v168;
    v74 = sub_2CCF90();
    v76 = v75;
    v77 = sub_2CBE30();
    if (v76)
    {
      v79 = v176;
      if (v74 == v77 && v76 == v78)
      {

        v80 = v162;
LABEL_29:
        v173(v80, v172, v79);
        v107 = sub_2CDFE0();
        v108 = sub_2CE690();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          *v109 = 0;
          _os_log_impl(&dword_0, v107, v108, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors using special dialog for unsupportMediaItemsCellularDataSettings code", v109, 2u);
        }

        v171(v80, v79);
        v182 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
        v183 = &off_3381B8;
        *&v181 = v167;
        v110 = v167;
        v111 = v165;
        v112 = v73;
LABEL_39:
        sub_33504(v111, v112, &v181, v169, v170);
        return sub_30B8(&v181, &qword_34C6C0, &qword_2D0710);
      }

      v106 = sub_2CEEA0();

      v80 = v162;
      if (v106)
      {
        goto LABEL_29;
      }
    }

    else
    {

      v79 = v176;
    }

    v113 = v161;
    v173(v161, v172, v79);
    v114 = sub_2CDFE0();
    v115 = sub_2CE690();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_0, v114, v115, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors using special dialog for noNetwork code", v116, 2u);
    }

    v171(v113, v79);
    v182 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v183 = &off_3381B8;
    *&v181 = v167;
    v117 = v167;
    sub_348A4(v165, v73, &v181, v169, v170);
    return sub_30B8(&v181, &qword_34C6C0, &qword_2D0710);
  }

  v61(v15, enum case for PlaybackCode.gdprNeededInGroup(_:), v48);
  v89 = sub_2CE250();
  (v164)(v15, v48);
  if (v89)
  {
    v184 = v165;

    v90 = sub_2CB650();
    v180 = &type metadata for Bool;
    LOBYTE(v179) = v90 & 1;
    sub_270DC4(&v179, 0x6F50656D6F487369, 0xE900000000000064, &v181);
    sub_30B8(&v181, &qword_34CEA0, &qword_2D0FC0);
    v91 = v160;
    v92 = v176;
    v173(v160, v172, v176);
    v93 = sub_2CDFE0();
    v94 = sub_2CE690();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_0, v93, v94, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors using special dialog for gdprNeededInGroup code", v95, 2u);
    }

    v171(v91, v92);
    v96 = v184;
    v182 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v183 = &off_3381B8;
    *&v181 = v167;
    v97 = v167;
    sub_35588(v96, v168, &v181, v169, v170);

    return sub_30B8(&v181, &qword_34C6C0, &qword_2D0710);
  }

  v98 = v61;
  v61(v15, enum case for PlaybackCode.operationApplicationRequiresPreflight(_:), v48);
  v99 = sub_2CE250();
  (v164)(v15, v48);
  if (v99)
  {
    v100 = v159;
    v101 = v176;
    v173(v159, v172, v176);
    v102 = sub_2CDFE0();
    v103 = sub_2CE690();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_0, v102, v103, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors using special dialog for operationApplicationRequiresPreflight code", v104, 2u);
    }

    v171(v100, v101);
    v182 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v183 = &off_3381B8;
    *&v181 = v167;
    v105 = v167;
    sub_37600(v165, v168, &v181, v169, v170);
    return sub_30B8(&v181, &qword_34C6C0, &qword_2D0710);
  }

  v61(v15, enum case for PlaybackCode.musicCellularDataOff(_:), v48);
  v118 = sub_2CE250();
  (v164)(v15, v48);
  if (v118)
  {
    v119 = v157;
    v120 = v176;
    v173(v157, v172, v176);
    v121 = sub_2CDFE0();
    v122 = sub_2CE690();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_0, v121, v122, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors using special dialog (musicCellularDataOff) for unsupportMediaItemsCellularDataSettings code", v123, 2u);
    }

    v171(v119, v120);
    v182 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v183 = &off_3381B8;
    *&v181 = v167;
    v124 = v167;
    v111 = v165;
    v112 = v168;
    goto LABEL_39;
  }

  v158 = v60;
  v61(v15, enum case for PlaybackCode.appNotInstalled(_:), v48);
  v126 = sub_2CE250();
  (v164)(v15, v48);
  if (v126)
  {
    v127 = v154;
    v128 = v176;
    v173(v154, v172, v176);
    v129 = sub_2CDFE0();
    v130 = sub_2CE690();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_0, v129, v130, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors using special dialog for appNotInstalled code", v131, 2u);
    }

    v171(v127, v128);
    v182 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v183 = &off_3381B8;
    *&v181 = v167;
    v132 = v167;
    sub_35C1C(v165, v168, &v181, v169, v170);
    return sub_30B8(&v181, &qword_34C6C0, &qword_2D0710);
  }

  v133 = v156;
  v134 = v176;
  v173(v156, v172, v176);
  v135 = v155;
  v152(v155, v177, v48);
  v136 = sub_2CDFE0();
  v137 = sub_2CE680();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v177 = v48;
    v139 = v138;
    v140 = v98;
    v141 = swift_slowAlloc();
    *&v181 = v141;
    *v139 = 136446210;
    v142 = sub_2CB840();
    v144 = v143;
    (v164)(v135, v177);
    v145 = sub_3F08(v142, v144, &v181);

    *(v139 + 4) = v145;
    _os_log_impl(&dword_0, v136, v137, "PlayMediaRCHFlowWrapper#sharedErrorDialogHandlingForPFSQTerminalErrors should NOT be here, PFSQ terminal errors and tracking have gotten out of sync, this needs to be fixed! The unhandled playbackCode: %{public}s", v139, 0xCu);
    sub_306C(v141);
    v98 = v140;

    v48 = v177;

    v146 = v156;
    v147 = v176;
  }

  else
  {

    (v164)(v135, v48);
    v146 = v133;
    v147 = v134;
  }

  v171(v146, v147);
  sub_270D7C(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
  v148 = swift_allocError();
  v98(v149, enum case for PlaybackCode.notSupported(_:), v48);
  v175 = v148;
  return swift_willThrow();
}

uint64_t sub_272348(uint64_t a1)
{
  v2 = sub_20410(&qword_356378, &qword_2D8590);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = v17 - v4;
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v10 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2CDFE0();
  v12 = sub_2CE670();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "PlayMediaRCHFlowWrapper#logCoreAnalytics", v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  sub_2CC0E0();
  sub_2CBC60();
  sub_35E0(v17, v17[3]);
  sub_2CBE60();
  sub_F3F4(a1, v5, &qword_356378, &qword_2D8590);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_14A58(v5, v15 + v14, &qword_356378, &qword_2D8590);
  sub_2CC0C0();

  return sub_306C(v17);
}

uint64_t sub_272654(uint64_t a1)
{
  v73 = a1;
  v1 = sub_2CE150();
  v84 = *(v1 - 8);
  v85 = v1;
  __chkstk_darwin(v1);
  v82 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2CE180();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20410(&qword_3524B0, &unk_2D8440);
  v78 = *(v4 - 8);
  v79 = v4;
  v76 = *(v78 + 64);
  __chkstk_darwin(v4);
  v77 = &v63 - v5;
  v67 = sub_2C8E30();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v71 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2C8BB0();
  v7 = *(v87 - 8);
  v8 = __chkstk_darwin(v87);
  v75 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v72 = &v63 - v11;
  v74 = v12;
  __chkstk_darwin(v10);
  v86 = &v63 - v13;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v63 - v19;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v22 = *(v15 + 16);
  v22(v20, v21, v14);
  v23 = sub_2CDFE0();
  v24 = sub_2CE670();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v70 = v14;
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "PlayMediaRCHFlowWrapper#saveToSiriMemory", v25, 2u);
    v14 = v70;
  }

  v27 = *(v15 + 8);
  v26 = v15 + 8;
  v69 = v27;
  v27(v20, v14);
  v28 = v71;
  sub_2C8E10();
  v29 = v86;
  sub_2C8BA0();
  v22(v18, v21, v14);
  v30 = v72;
  v70 = *(v7 + 16);
  v68 = v7 + 16;
  v70(v72, v29, v87);
  v31 = sub_2CDFE0();
  v32 = sub_2CE690();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v64 = v18;
    v65 = v26;
    v34 = v33;
    v35 = v28;
    aBlock[0] = swift_slowAlloc();
    *v34 = 136315394;
    sub_2C8E10();
    sub_270D7C(&qword_353CA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v63 = v7;
    v36 = v67;
    v37 = sub_2CEE70();
    v38 = v30;
    v40 = v39;
    (*(v66 + 8))(v35, v36);
    v41 = sub_3F08(v37, v40, aBlock);

    *(v34 + 4) = v41;
    *(v34 + 12) = 2080;
    sub_270D7C(&qword_356380, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
    v42 = sub_2CEE70();
    v44 = v43;
    v7 = v63;
    v45 = *(v63 + 8);
    v71 = ((v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v72 = v45;
    (v45)(v38, v87);
    v46 = sub_3F08(v42, v44, aBlock);

    *(v34 + 14) = v46;
    _os_log_impl(&dword_0, v31, v32, "PlayMediaRCHFlowWrapper#saveToSiriMemory called at: %s and dateInterval: %s", v34, 0x16u);
    swift_arrayDestroy();

    v69(v64, v14);
  }

  else
  {

    v47 = *(v7 + 8);
    v71 = ((v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v72 = v47;
    (v47)(v30, v87);
    v69(v18, v14);
  }

  v69 = sub_2CBA10();
  v49 = v77;
  v48 = v78;
  v50 = v79;
  (*(v78 + 16))(v77, v73, v79);
  v51 = v75;
  v52 = v86;
  v53 = v87;
  v70(v75, v86, v87);
  v54 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v55 = (v76 + *(v7 + 80) + v54) & ~*(v7 + 80);
  v56 = swift_allocObject();
  (*(v48 + 32))(v56 + v54, v49, v50);
  (*(v7 + 32))(v56 + v55, v51, v53);
  aBlock[4] = sub_275284;
  aBlock[5] = v56;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A4294;
  aBlock[3] = &unk_33C4D8;
  v57 = _Block_copy(aBlock);
  v58 = v80;
  sub_2CE160();
  v88 = _swiftEmptyArrayStorage;
  sub_270D7C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_72068(&qword_34FF30, &qword_34DD48, &qword_2D5F80, &protocol conformance descriptor for [A]);
  v59 = v82;
  v60 = v85;
  sub_2CEC10();
  v61 = v69;
  sub_2CE9C0();
  _Block_release(v57);

  (*(v84 + 8))(v59, v60);
  (*(v81 + 8))(v58, v83);
  (v72)(v52, v53);
}

uint64_t sub_2730D4(uint64_t a1)
{
  v93 = a1;
  v1 = sub_2CE150();
  v87 = *(v1 - 8);
  v88 = v1;
  __chkstk_darwin(v1);
  v85 = v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_2CE180();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2CE130();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = (v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = sub_2CE1A0();
  v82 = *(v89 - 8);
  v5 = __chkstk_darwin(v89);
  v77 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v81 = v71 - v7;
  v8 = sub_20410(&qword_3524B0, &unk_2D8440);
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = __chkstk_darwin(v8);
  v76 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v10;
  __chkstk_darwin(v9);
  v12 = v71 - v11;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v73 = v71 - v19;
  v20 = __chkstk_darwin(v18);
  v74 = v71 - v21;
  __chkstk_darwin(v20);
  v23 = v71 - v22;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v24 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v90 = *(v14 + 16);
  v90(v23, v24, v13);
  v25 = sub_2CDFE0();
  v26 = sub_2CE670();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "PlayMediaRCHFlowWrapper#logReliability", v27, 2u);
  }

  v28 = *(v14 + 8);
  v28(v23, v13);
  v30 = v91;
  v29 = v92;
  v72 = *(v91 + 16);
  v72(v12, v93, v92);
  if ((*(v30 + 88))(v12, v29) == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v30 + 96))(v12, v29);
    v31 = *v12;
    v32 = *(v12 + 2);

    v33 = sub_2CCF90();
    if (v34)
    {
      v35 = v33;
      v36 = v34;
      v71[0] = v28;
      v71[1] = v31;
      v37 = sub_2CBD40();
      aBlock = v35;
      v96 = v36;
      __chkstk_darwin(v37);
      v71[-2] = &aBlock;
      LOBYTE(v35) = sub_13964(sub_13A68, &v71[-4], v37);

      if (v35)
      {
        v38 = sub_270F10(0x63uLL) + 1;
        if (v38 <= 5)
        {
          v47 = v74;
          v90(v74, v24, v13);
          v48 = sub_2CDFE0();
          v49 = sub_2CE670();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 134217984;
            *(v50 + 4) = v38;
            _os_log_impl(&dword_0, v48, v49, "PlayMediaRCHFlowWrapper#logReliability random roll: %ld (/100) was <= 5 for 5%% chance, continuing with reliability test.", v50, 0xCu);
          }

          (v71[0])(v47, v13);
          sub_2CBC60();
          sub_35E0(&aBlock, v98);
          v51 = sub_2CBE60();
          v53 = v52;
          sub_306C(&aBlock);
          v90 = sub_2CBA10();
          v54 = v77;
          sub_2CE190();
          v55 = v78;
          *v78 = 5;
          v56 = v79;
          v57 = v80;
          (*(v79 + 104))(v55, enum case for DispatchTimeInterval.seconds(_:), v80);
          v58 = v81;
          sub_2CE1B0();
          (*(v56 + 8))(v55, v57);
          v82 = *(v82 + 8);
          (v82)(v54, v89);
          v59 = v76;
          v60 = v92;
          v72(v76, v93, v92);
          v61 = v91;
          v62 = (*(v91 + 80) + 16) & ~*(v91 + 80);
          v63 = (v75 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
          v64 = swift_allocObject();
          (*(v61 + 32))(v64 + v62, v59, v60);
          v65 = (v64 + v63);
          *v65 = v51;
          v65[1] = v53;
          v99 = sub_275078;
          v100 = v64;
          aBlock = _NSConcreteStackBlock;
          v96 = 1107296256;
          v97 = sub_A4294;
          v98 = &unk_33C460;
          v66 = _Block_copy(&aBlock);
          v67 = v83;
          sub_2CE160();
          v94 = _swiftEmptyArrayStorage;
          sub_270D7C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_20410(&qword_34DD48, &qword_2D5F80);
          sub_72068(&qword_34FF30, &qword_34DD48, &qword_2D5F80, &protocol conformance descriptor for [A]);
          v68 = v85;
          v69 = v88;
          sub_2CEC10();
          v70 = v90;
          sub_2CE9A0();

          _Block_release(v66);

          (*(v87 + 8))(v68, v69);
          (*(v84 + 8))(v67, v86);
          (v82)(v58, v89);
        }

        else
        {
          v39 = v73;
          v90(v73, v24, v13);
          v40 = sub_2CDFE0();
          v41 = sub_2CE670();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 134217984;
            *(v42 + 4) = v38;
            _os_log_impl(&dword_0, v40, v41, "PlayMediaRCHFlowWrapper#logReliability random roll: %ld (/100) was NOT <= 5 for 5%% chance, skipping...", v42, 0xCu);
          }

          return (v71[0])(v39, v13);
        }
      }

      v28 = v71[0];
    }

    else
    {
    }
  }

  else
  {
    (*(v30 + 8))(v12, v29);
  }

  v90(v17, v24, v13);
  v44 = sub_2CDFE0();
  v45 = sub_2CE670();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "PlayMediaRCHFlowWrapper#logReliability not a music or podcast bundle identifier, skipping logging reliability info", v46, 2u);
  }

  return (v28)(v17, v13);
}

uint64_t sub_273CB0(uint64_t a1)
{
  v2 = sub_20410(&qword_3524B0, &unk_2D8440);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - v5;
  v7 = sub_20410(&qword_34E4B0, &qword_2D3520);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_2CB460();
  if (v10)
  {
    sub_2CB130();

    v10 = sub_2CD390();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  sub_2CE4B0();
  v13 = sub_2CE4D0();
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  (*(v3 + 16))(v6, a1, v2);
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v3 + 32))(v15 + v14, v6, v2);
  v16 = (v15 + ((v4 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v10;
  v16[1] = v12;
  sub_ABBE8(0, 0, v9, &unk_2D85A0, v15);
}

uint64_t sub_273EEC()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = sub_2CE260();
  v6 = [v4 initWithSuiteName:v5];

  if (!v6)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v10 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v3, v10, v0);
    v11 = sub_2CDFE0();
    v12 = sub_2CE680();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "PlayMediaRCHFlowWrapper#throttleAllowSTCReporting unable to access defaults", v13, 2u);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  v7 = sub_2CEFC0();
  v8 = sub_2CE260();
  v9 = [v6 objectForKey:v8];

  if (v9)
  {
    sub_2CEC00();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && (v7 < v17[1] || sub_2CEFD0() <= 3600.0))
    {

      return 0;
    }
  }

  else
  {
    sub_30B8(v20, &qword_34CEA0, &qword_2D0FC0);
  }

  isa = sub_2CEFB0().super.super.isa;
  v16 = sub_2CE260();
  [v6 setObject:isa forKey:v16];

  return 1;
}

uint64_t sub_274228(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v2 = sub_2CE000();
  v62 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v63 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v56 = &v54 - v6;
  __chkstk_darwin(v5);
  v59 = &v54 - v7;
  v8 = sub_2CBB10();
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = __chkstk_darwin(v8);
  v57 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v64 = &v54 - v11;
  v12 = sub_2CDFD0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE9D0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFA0();
  sub_2CBC60();
  sub_35E0(v65, v65[3]);
  v17 = sub_2CBE60();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 4144959;
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE300000000000000;
  }

  sub_306C(v65);
  v21 = sub_2CE9F0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0090;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_1087C();
  *(v22 + 32) = v19;
  *(v22 + 40) = v20;
  sub_2CDFC0();
  sub_2CDF90(v21, &dword_0, v16, "playFlowFrameWrapperExitEvent", 29, 2, v15, "refId=%{signpost.telemetry:string1,public}@", 43, 2, v22);

  (*(v13 + 8))(v15, v12);
  if (qword_34C020 != -1)
  {
    swift_once();
  }

  v24 = v62;
  v23 = v63;
  if (byte_35F858 == 1)
  {
    sub_2CB4A0();
    sub_2CB490();
    sub_2CB480();

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v25 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    v26 = v59;
    v55 = *(v24 + 16);
    v55(v59, v25, v2);
    v27 = v58;

    v28 = sub_2CDFE0();
    v29 = sub_2CE660();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v27;
      v32 = swift_slowAlloc();
      v65[0] = v32;
      *v30 = 136315138;
      swift_beginAccess();
      v33 = *(v31 + 16);
      v34 = *(v31 + 24);

      v35 = sub_3F08(v33, v34, v65);
      v23 = v63;

      *(v30 + 4) = v35;
      _os_log_impl(&dword_0, v28, v29, "PlayMediaRCHFlowWrapper#exit, result: %s", v30, 0xCu);
      sub_306C(v32);

      v36 = *(v24 + 8);
      v36(v59, v2);
    }

    else
    {

      v36 = *(v24 + 8);
      v36(v26, v2);
    }

    v37 = v57;
    v39 = v60;
    v38 = v61;
    (*(v60 + 16))(v57, v64, v61);
    v40 = (*(v39 + 88))(v37, v38);
    if (v40 == enum case for STCAuditStatus.failedThenCompleted(_:) || v40 == enum case for STCAuditStatus.completedThenFailed(_:) || v40 == enum case for STCAuditStatus.incomplete(_:))
    {
      v43 = sub_273EEC();
      v44 = v56;
      v55(v56, v25, v2);
      v45 = sub_2CDFE0();
      v46 = sub_2CE680();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 67109120;
        *(v47 + 4) = v43 & 1;
        _os_log_impl(&dword_0, v45, v46, "PlayMediaRCHFlowWrapper#exit negative STC case, allow report generation: %{BOOL}d", v47, 8u);
        v44 = v56;
      }

      v36(v44, v2);
      if (v43)
      {
        sub_2CC230();
        v48 = v64;
        sub_2CBB00();
        swift_beginAccess();

        sub_2CC1E0();

        (*(v60 + 8))(v48, v61);
      }

      else
      {
        (*(v60 + 8))(v64, v61);
      }
    }

    else
    {
      v41 = v61;
      v42 = *(v60 + 8);
      v42(v64, v61);
      v42(v37, v41);
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v49 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v24 + 16))(v23, v49, v2);
  v50 = sub_2CDFE0();
  v51 = sub_2CE690();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_0, v50, v51, "PlayMediaRCHFlowWrapper#exit done.", v52, 2u);
  }

  return (*(v24 + 8))(v23, v2);
}

uint64_t sub_274B20()
{
  v0 = sub_2CB850();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CB6C0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  sub_2CC920();
  (*(v5 + 104))(v8, enum case for DomainCode.mediaRemoteCommand(_:), v4);
  sub_270D7C(&qword_356370, &type metadata accessor for DomainCode, &protocol conformance descriptor for DomainCode);
  sub_2CE3E0();
  sub_2CE3E0();
  v11 = *(v5 + 8);
  v11(v8, v4);
  v11(v10, v4);
  if (v27 == v29)
  {
    return 0;
  }

  sub_2CC920();
  v13 = sub_2CB6B0();
  v11(v10, v4);
  v27 = v13;
  v30._countAndFlagsBits = sub_2CEE70();
  v27 = 40;
  v28 = 0xE100000000000000;
  sub_2CE350(v30);

  v31._countAndFlagsBits = 41;
  v31._object = 0xE100000000000000;
  sub_2CE350(v31);

  v15 = v27;
  v14 = v28;
  sub_2CC940();
  v16 = sub_2CB820();
  (*(v1 + 8))(v3, v0);
  v27 = v16;
  v32._countAndFlagsBits = sub_2CEE70();
  v27 = 40;
  v28 = 0xE100000000000000;
  sub_2CE350(v32);

  v33._countAndFlagsBits = 41;
  v33._object = 0xE100000000000000;
  sub_2CE350(v33);

  v17 = v27;
  v18 = v28;
  v27 = v15;
  v28 = v14;

  v34._countAndFlagsBits = v17;
  v34._object = v18;
  sub_2CE350(v34);

  v20 = v27;
  v19 = v28;
  v21 = sub_2CC910();
  v23 = v22;
  v27 = v20;
  v28 = v19;

  v35._countAndFlagsBits = v21;
  v35._object = v23;
  sub_2CE350(v35);

  v24 = v27;
  v25 = v28;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_2CECB0(32);

  v27 = 0xD00000000000001ELL;
  v28 = 0x80000000002E0910;
  v36._countAndFlagsBits = v24;
  v36._object = v25;
  sub_2CE350(v36);

  return v27;
}

uint64_t sub_274F20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_274F38(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&qword_3524B0, &unk_2D8440) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_E664;

  return sub_266764(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_275078()
{
  v1 = *(sub_20410(&qword_3524B0, &unk_2D8440) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_26F018(v0 + v2, v4, v5);
}

uint64_t sub_275114()
{
  v1 = sub_20410(&qword_3524B0, &unk_2D8440);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_2751C0(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(sub_20410(&qword_3524B0, &unk_2D8440) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_26F3BC(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t sub_275284()
{
  v1 = *(sub_20410(&qword_3524B0, &unk_2D8440) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2C8BB0() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26B5C0(v0 + v2, v5);
}

uint64_t sub_275364(uint64_t a1)
{
  v3 = *(sub_20410(&qword_356378, &qword_2D8590) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26C940(a1, v4);
}

uint64_t sub_2753E0()
{
  v1 = *(sub_20410(&qword_356378, &qword_2D8590) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_26CE58(v2, v3);
}

uint64_t sub_275450()
{
  v1 = *(sub_20410(&qword_356378, &qword_2D8590) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_20410(&qword_3524B0, &unk_2D8440);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

void sub_275574()
{
  v1 = *(sub_20410(&qword_356378, &qword_2D8590) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_26E948(v2);
}

uint64_t sub_275608(uint64_t a1)
{
  v3 = *(sub_2CC950() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = (v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_26234C(a1, v1 + v4, v8, v9, v10, v12, v13);
}

uint64_t sub_2756CC(void (*a1)(char *), uint64_t a2)
{
  v5 = *(sub_2CC950() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_262BFC(a1, a2, v6);
}

uint64_t sub_27574C()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_27579C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_356378, &qword_2D8590);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27580C()
{
  v1 = *(sub_2CC950() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + v4);
  v8 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_2642CC(v6, v0 + v2, v5, v7, v9, v10);
}

uint64_t *PlayMedia.flowStrategy.unsafeMutableAddressor()
{
  if (qword_34C030 != -1)
  {
    swift_once();
  }

  return &static PlayMedia.flowStrategy;
}

uint64_t *PlayMedia.childFlowFactory.unsafeMutableAddressor()
{
  if (qword_34C038 != -1)
  {
    swift_once();
  }

  return &static PlayMedia.childFlowFactory;
}

uint64_t sub_2759D8()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v3, v0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  sub_285EC(&static StringsBackedAppNameResolver.shared, v11);
  sub_2CB4A0();
  v4 = sub_2CB490();

  sub_2C9A00();
  type metadata accessor for PlayMediaFlowStrategy(0);
  v5 = swift_allocObject();
  sub_EEAC(v10, v9);
  sub_285EC(v11, v8);
  v6 = sub_275FB0(v8, v4, v9, v5);

  sub_306C(v10);
  result = sub_28648(v11);
  static PlayMedia.flowStrategy = v6;
  return result;
}

uint64_t sub_275B94()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v3, v0);
  result = sub_1EB740();
  static PlayMedia.childFlowFactory = result;
  return result;
}

uint64_t sub_275C88(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_275CE8()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v3, v0);
  sub_2CD0A0();
  result = sub_2CD090();
  static PlayMedia.intentHandler = result;
  return result;
}

uint64_t *PlayMedia.intentHandler.unsafeMutableAddressor()
{
  if (qword_34C040 != -1)
  {
    swift_once();
  }

  return &static PlayMedia.intentHandler;
}

id static PlayMedia.intentHandler.getter()
{
  if (qword_34C040 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static PlayMedia.intentHandler;

  return v0;
}

void static PlayMedia.intentHandler.setter(uint64_t a1)
{
  if (qword_34C040 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static PlayMedia.intentHandler;
  static PlayMedia.intentHandler = a1;
}

uint64_t (*static PlayMedia.intentHandler.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_34C040 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void *sub_275FB0(_OWORD *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_2CC2B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CB4A0();
  v52[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v30 = v12;
  v31 = a3;
  v52[3] = v12;
  v52[0] = a2;
  a4[2] = _swiftEmptyArrayStorage;
  a4[3] = 1307;
  a4[4] = 0;
  a4[5] = 0;
  sub_EEAC(a3, &v49);
  LODWORD(a3) = CATDefaultMode;
  v13 = sub_2CBC00();
  v14 = sub_2CBBF0();

  sub_2CC2A0();
  type metadata accessor for CatService();
  v15 = swift_allocObject();
  v47 = &type metadata for StringsBackedAppNameResolver;
  v48 = sub_2869C();
  v16 = swift_allocObject();
  *&v46 = v16;
  v17 = a1[3];
  v16[3] = a1[2];
  v16[4] = v17;
  v16[5] = a1[4];
  v18 = a1[1];
  v16[1] = *a1;
  v16[2] = v18;
  v45[3] = v13;
  v45[4] = &protocol witness table for MorphunProvider;
  v45[0] = v14;
  v44[3] = v8;
  v44[4] = &protocol witness table for FeatureFlagProvider;
  v19 = sub_F390(v44);
  (*(v9 + 16))(v19, v11, v8);
  *(v15 + 296) = a3;
  sub_EEAC(v44, v15 + 256);
  sub_EEAC(&v46, v43);
  sub_EEAC(v45, v42);
  sub_EEAC(&v49, v41);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v20 = sub_2CCA30();
  v21 = sub_2CCA20();
  v38[3] = v20;
  v38[4] = &protocol witness table for MultiUserConnectionProvider;
  v38[0] = v21;
  v37[3] = sub_2CB9E0();
  v37[4] = &protocol witness table for DeviceProvider;
  sub_F390(v37);
  sub_2CB9C0();
  sub_EEAC(v43, v15 + 16);
  sub_EEAC(v42, v15 + 216);
  sub_EEAC(v41, v15 + 56);
  sub_EEAC(v38, v15 + 96);
  sub_EEAC(v37, v15 + 176);
  sub_286F0(v39, &v32);
  if (v33)
  {

    sub_28760(v39);
    sub_306C(v41);
    sub_306C(v42);
    sub_306C(v43);
    (*(v9 + 8))(v11, v8);
    sub_306C(&v49);
    sub_306C(v44);
    sub_306C(v45);
    sub_306C(&v46);
    sub_306C(v37);
    sub_306C(v38);
    sub_F338(&v32, &v34);
  }

  else
  {
    sub_EEAC(v41, &v34);
    v22 = sub_2C9E60();
    swift_allocObject();
    v23 = sub_2C9E50();
    v35 = v22;
    v36 = &protocol witness table for ContactsManager;

    *&v34 = v23;
    sub_28760(v39);
    sub_306C(v41);
    sub_306C(v42);
    sub_306C(v43);
    (*(v9 + 8))(v11, v8);
    sub_306C(&v49);
    sub_306C(v44);
    sub_306C(v45);
    sub_306C(&v46);
    sub_306C(v37);
    sub_306C(v38);
    if (v33)
    {
      sub_28760(&v32);
    }
  }

  sub_F338(&v34, v15 + 136);
  a4[6] = v15;
  v50 = sub_2CC360();
  v51 = &protocol witness table for StringsFileResolver;
  sub_F390(&v49);

  sub_2CC350();
  v24 = v30;
  v25 = sub_2CB490();
  v47 = v24;
  v48 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v46 = v25;
  sub_20410(&qword_3563C0, &unk_2D8600);
  v26 = swift_allocObject();
  v26[13] = 0xD000000000000011;
  v26[14] = 0x80000000002DA8D0;
  v26[2] = v15;
  sub_F338(&v49, (v26 + 3));
  sub_F338(&v46, (v26 + 8));
  a4[7] = v26;
  sub_EEAC(v52, (a4 + 8));
  v50 = v8;
  v51 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v49);
  sub_2CC2A0();
  v27 = type metadata accessor for SiriAudioOutputProvider();
  v28 = swift_allocObject();
  sub_F338(&v49, v28 + 16);
  v50 = v27;
  v51 = &off_337EB0;
  *&v49 = v28;
  sub_306C(v31);
  sub_306C(v52);
  sub_F338(&v49, (a4 + 13));
  return a4;
}

__n128 sub_2764D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2764EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_276534(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2765C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3[3];
  v6 = v3[4];
  sub_35E0(v3, v5);
  return a3(v5, v6);
}

uint64_t getEnumTagSinglePayload for MediaPlayerAttributes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaPlayerAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2767AC()
{
  result = qword_3563C8;
  if (!qword_3563C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3563C8);
  }

  return result;
}

double sub_276800(uint64_t a1, unsigned __int8 a2)
{
  sub_2CE310();

  return result;
}

Swift::Int sub_27692C(uint64_t a1, unsigned __int8 a2)
{
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

unint64_t sub_276A94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_276D6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_276AC4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000776FLL;
  v4 = 0x4E676E6979616C70;
  v5 = 0xE800000000000000;
  v6 = 0x73756F6976657270;
  if (v2 != 6)
  {
    v6 = 0x64656D616ELL;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7478654E79616C70;
  if (v2 != 4)
  {
    v8 = 1954047342;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x7473614C79616C70;
  if (v2 != 2)
  {
    v10 = 0x4E676E6979616C70;
    v9 = 0xEB00000000747865;
  }

  if (*v1)
  {
    v4 = 0x4C676E6979616C70;
    v3 = 0xEB00000000747361;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

uint64_t sub_276BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_276DB8();
  v5 = sub_276E0C();
  v6 = sub_276E60();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_276C58()
{
  result = qword_3563D0;
  if (!qword_3563D0)
  {
    sub_2DB30(&qword_3563D8, &qword_2D8738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3563D0);
  }

  return result;
}

unint64_t sub_276CC0()
{
  result = qword_3563E0;
  if (!qword_3563E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3563E0);
  }

  return result;
}

unint64_t sub_276D18()
{
  result = qword_3563E8;
  if (!qword_3563E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3563E8);
  }

  return result;
}

unint64_t sub_276D6C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_330E20;
  v6._object = a2;
  v4 = sub_2CEDF0(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_276DB8()
{
  result = qword_3563F0;
  if (!qword_3563F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3563F0);
  }

  return result;
}

unint64_t sub_276E0C()
{
  result = qword_3563F8;
  if (!qword_3563F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3563F8);
  }

  return result;
}

unint64_t sub_276E60()
{
  result = qword_356400;
  if (!qword_356400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_356400);
  }

  return result;
}

uint64_t sub_276EB4(char a1)
{
  v2 = sub_2CDD90();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = sub_2CDD70();
  if (a1)
  {
    sub_2CDD60();
    if (*(v9 + 16) && (v10 = sub_4F464(v6), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 16 * v10);
      v13 = *(v3 + 8);

      v13(v6, v2);

      return v12;
    }

    else
    {

      (*(v3 + 8))(v6, v2);
      return 0x69736976656C6574;
    }
  }

  else
  {
    sub_2CDD80();
    if (*(v9 + 16) && (v15 = sub_4F464(v8), (v16 & 1) != 0))
    {
      v17 = *(*(v9 + 56) + 16 * v15);
      v18 = *(v3 + 8);

      v18(v8, v2);

      return v17;
    }

    else
    {

      (*(v3 + 8))(v8, v2);
      return 0x7674656C707061;
    }
  }
}

uint64_t sub_2770BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v51 = sub_2CDD90();
  v55 = *(v51 - 1);
  v4 = __chkstk_darwin(v51);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v49 - v7;
  v9 = sub_2CDF60();
  v56 = *(v9 - 8);
  v57 = v9;
  __chkstk_darwin(v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v16 = sub_2CDF40();
  if (!v17)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v40 = sub_3ED0(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v15, v40, v12);
    v39 = v57;
    v55 = *(v56 + 16);
    (v55)(v11, v54, v57);
    v41 = sub_2CDFE0();
    v42 = sub_2CE690();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = v51;
      *v43 = 136446210;
      sub_278438();
      LODWORD(v50) = v42;
      v44 = sub_2CEE70();
      v52 = v2;
      v46 = v45;
      (*(v56 + 8))(v11, v57);
      v47 = sub_3F08(v44, v46, &v59);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_0, v41, v50, "Cannot get deviceType for device: %{public}s. Skipping pruning", v43, 0xCu);
      sub_306C(v51);

      v39 = v57;

      (*(v13 + 8))(v15, v12);
      v38 = v56;
    }

    else
    {

      v38 = v56;
      (*(v56 + 8))(v11, v39);
      (*(v13 + 8))(v15, v12);
    }

    v37 = v53;
    (v55)(v53, v54, v39);
    goto LABEL_19;
  }

  v18 = v17;
  v50 = v16;
  v52 = v2;
  sub_20410(&unk_356F40, &unk_2D0740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0E40;
  v20 = sub_2CDD70();
  sub_2CDD80();
  if (*(v20 + 16) && (v21 = sub_4F464(v8), (v22 & 1) != 0))
  {
    v23 = (*(v20 + 56) + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = *(v55 + 8);

    v27 = v51;
    v26(v8, v51);
  }

  else
  {

    v26 = *(v55 + 8);
    v27 = v51;
    v26(v8, v51);
    v24 = 0xE700000000000000;
    v25 = 0x7674656C707061;
  }

  *(inited + 32) = v25;
  *(inited + 40) = v24;
  v28 = sub_2CDD70();
  sub_2CDD60();
  if (*(v28 + 16) && (v29 = sub_4F464(v6), (v30 & 1) != 0))
  {
    v31 = (*(v28 + 56) + 16 * v29);
    v33 = *v31;
    v32 = v31[1];

    v26(v6, v27);
  }

  else
  {

    v34 = (v26)(v6, v27);
    v32 = 0xEA00000000006E6FLL;
    v33 = 0x69736976656C6574;
  }

  *(inited + 48) = v33;
  *(inited + 56) = v32;
  v58[0] = v50;
  v58[1] = v18;
  __chkstk_darwin(v34);
  *(&v49 - 2) = v58;
  v35 = sub_13964(sub_334E8, (&v49 - 4), inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  if ((v35 & 1) == 0)
  {
    v38 = v56;
    v39 = v57;
    v37 = v53;
    (*(v56 + 16))(v53, v54, v57);
LABEL_19:
    v36 = 0;
    return (*(v38 + 56))(v37, v36, 1, v39);
  }

  v36 = 1;
  v37 = v53;
  v38 = v56;
  v39 = v57;
  return (*(v38 + 56))(v37, v36, 1, v39);
}

uint64_t sub_27771C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v125 = a3;
  v131 = a4;
  v6 = sub_2CDD90();
  v129 = *(v6 - 8);
  v130 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v122 - v10;
  v12 = sub_2CDF60();
  v13 = *(v12 - 8);
  v132 = v12;
  v133 = v13;
  v14 = __chkstk_darwin(v12);
  v124 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v122 - v16;
  v18 = sub_2CE000();
  v126 = *(v18 - 8);
  v127 = v18;
  v19 = __chkstk_darwin(v18);
  v128 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v123 = &v122 - v22;
  __chkstk_darwin(v21);
  v24 = &v122 - v23;
  v25 = sub_2CDF30();
  v135 = a1;
  if (v26)
  {
    v27 = v25;
    v28 = v26;

    v29 = sub_2CDF50();
    if (v30)
    {
      if (v27 == v29 && v28 == v30)
      {
        swift_bridgeObjectRelease_n();
LABEL_8:

        goto LABEL_14;
      }

      v32 = sub_2CEEA0();

      if (v32)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v136 = v27;
    v137 = v28;
    __chkstk_darwin(v31);
    *(&v122 - 2) = &v136;
    v33 = v134;
    v34 = sub_13964(sub_334E8, (&v122 - 4), a2);
    v134 = v33;

    if (v34)
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v35 = v127;
      v36 = sub_3ED0(v127, static Logger.default);
      swift_beginAccess();
      v37 = v126;
      (*(v126 + 16))(v24, v36, v35);
      v38 = v132;
      v39 = v133;
      v130 = *(v133 + 16);
      v130(v17, v135, v132);
      v40 = sub_2CDFE0();
      v41 = sub_2CE690();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v128 = v42;
        v129 = swift_slowAlloc();
        v138 = v129;
        *v42 = 136446210;
        sub_278438();
        v43 = sub_2CEE70();
        v45 = v44;
        (*(v39 + 8))(v17, v38);
        v46 = sub_3F08(v43, v45, &v138);

        v47 = v128;
        *(v128 + 4) = v46;
        _os_log_impl(&dword_0, v40, v41, "User asked for device %{public}s by name. Skipping pruning", v47, 0xCu);
        sub_306C(v129);

        (*(v126 + 8))(v24, v127);
      }

      else
      {

        (*(v39 + 8))(v17, v38);
        (*(v37 + 8))(v24, v127);
      }

      v119 = v131;
      v130(v131, v135, v38);
      return (*(v39 + 56))(v119, 0, 1, v38);
    }
  }

LABEL_14:
  v48 = sub_2CDF50();
  if (v49)
  {
    v50 = v48;
    v51 = v49;
    v52 = *(a2 + 16);
    v53 = a2 + 40;
    v54 = v52 + 1;
    while (1)
    {
      if (!--v54)
      {
        goto LABEL_31;
      }

      v55 = sub_2CE2B0();
      v57 = v56;
      if (v55 == sub_2CE2B0() && v57 == v58)
      {
        break;
      }

      v53 += 16;
      v60 = sub_2CEEA0();

      if (v60)
      {
        goto LABEL_24;
      }
    }

LABEL_24:
    if (!*(v125 + 16) || (, sub_4F8DC(v50, v51), v62 = v61, , (v62 & 1) == 0) || (v63 = , v64 = sub_1DFB50(v63), , !v64))
    {
LABEL_31:

      goto LABEL_32;
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v65 = v127;
    v66 = sub_3ED0(v127, static Logger.default);
    swift_beginAccess();
    v67 = v126;
    v68 = v123;
    (*(v126 + 16))(v123, v66, v65);

    v69 = sub_2CDFE0();
    v70 = sub_2CE690();

    v71 = os_log_type_enabled(v69, v70);
    v72 = v132;
    if (v71)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v138 = v74;
      *v73 = 136315138;
      v75 = sub_3F08(v50, v51, &v138);

      *(v73 + 4) = v75;
      _os_log_impl(&dword_0, v69, v70, "All devices in room: %s are TVs and the user explicitly asked for the room in the intent. Skipping pruning", v73, 0xCu);
      sub_306C(v74);

      v72 = v132;

      (*(v67 + 8))(v123, v65);
    }

    else
    {

      (*(v67 + 8))(v68, v65);
    }

    v120 = v133;
    v121 = v131;
    (*(v133 + 16))(v131, v135, v72);
    return (*(v120 + 56))(v121, 0, 1, v72);
  }

  else
  {
LABEL_32:
    v76 = v128;
    v77 = sub_2CDF40();
    if (v78)
    {
      v79 = v77;
      v80 = v78;
      sub_20410(&unk_356F40, &unk_2D0740);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2D0E40;
      v82 = sub_2CDD70();
      sub_2CDD80();
      if (*(v82 + 16) && (v83 = sub_4F464(v11), (v84 & 1) != 0))
      {
        v85 = (*(v82 + 56) + 16 * v83);
        v87 = *v85;
        v86 = v85[1];
        v88 = v129[1];

        v88(v11, v130);
      }

      else
      {

        v88 = v129[1];
        v88(v11, v130);
        v86 = 0xE700000000000000;
        v87 = 0x7674656C707061;
      }

      *(inited + 32) = v87;
      *(inited + 40) = v86;
      v89 = sub_2CDD70();
      sub_2CDD60();
      if (*(v89 + 16) && (v90 = sub_4F464(v9), (v91 & 1) != 0))
      {
        v92 = (*(v89 + 56) + 16 * v90);
        v94 = *v92;
        v93 = v92[1];

        v88(v9, v130);
      }

      else
      {

        v95 = (v88)(v9, v130);
        v93 = 0xEA00000000006E6FLL;
        v94 = 0x69736976656C6574;
      }

      *(inited + 48) = v94;
      *(inited + 56) = v93;
      v136 = v79;
      v137 = v80;
      __chkstk_darwin(v95);
      *(&v122 - 2) = &v136;
      v96 = sub_13964(sub_13A68, (&v122 - 4), inited);
      swift_setDeallocating();
      swift_arrayDestroy();

      if (v96)
      {
        return (*(v133 + 56))(v131, 1, 1, v132);
      }

      else
      {
        v115 = v133;
        v116 = v131;
        v117 = v132;
        (*(v133 + 16))(v131, v135, v132);
        return (*(v115 + 56))(v116, 0, 1, v117);
      }
    }

    else
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v98 = v127;
      v99 = sub_3ED0(v127, static Logger.default);
      swift_beginAccess();
      v100 = v126;
      (*(v126 + 16))(v76, v99, v98);
      v102 = v132;
      v101 = v133;
      v103 = v124;
      v130 = *(v133 + 16);
      v130(v124, v135, v132);
      v104 = v76;
      v105 = sub_2CDFE0();
      v106 = sub_2CE690();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v138 = v108;
        *v107 = 136446210;
        sub_278438();
        v109 = sub_2CEE70();
        v110 = v103;
        v111 = v109;
        v113 = v112;
        (*(v133 + 8))(v110, v102);
        v114 = sub_3F08(v111, v113, &v138);

        *(v107 + 4) = v114;
        _os_log_impl(&dword_0, v105, v106, "Cannot get deviceType for device: %{public}s. Skipping pruning", v107, 0xCu);
        sub_306C(v108);

        v101 = v133;

        (*(v100 + 8))(v128, v127);
      }

      else
      {

        (*(v101 + 8))(v103, v102);
        (*(v100 + 8))(v104, v98);
      }

      v118 = v131;
      v130(v131, v135, v102);
      return (*(v101 + 56))(v118, 0, 1, v102);
    }
  }
}

unint64_t sub_278438()
{
  result = qword_356408;
  if (!qword_356408)
  {
    sub_2CDF60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_356408);
  }

  return result;
}

uint64_t sub_278490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v32 = a5;
  v33 = a8;
  v30 = a7;
  v31 = a1;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  v19 = sub_2CDFE0();
  v20 = sub_2CE670();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v29 = a2;
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "ResponseFactory+Utilities#makeResponseOutput...", v21, 2u);
    a2 = v29;
  }

  (*(v15 + 8))(v17, v14);
  v22 = sub_2CB460();
  if (!v22)
  {
    sub_2CB180();
    v22 = sub_2CB170();
  }

  v23 = v22;
  v24 = sub_2CB180();
  __chkstk_darwin(v24);
  v25 = v32;
  v26 = v33;
  *(&v28 - 10) = v30;
  *(&v28 - 9) = v26;
  *(&v28 - 8) = v23;
  *(&v28 - 7) = v25;
  *(&v28 - 6) = a6;
  *(&v28 - 5) = v9;
  *(&v28 - 4) = v31;
  *(&v28 - 3) = a2;
  *(&v28 - 2) = a3;
  *(&v28 - 1) = a4;
  sub_2CB0F0();
}

uint64_t sub_278728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v65 = a3;
  v62 = a6;
  v63 = a7;
  v61 = a5;
  v56 = a4;
  v64 = a2;
  v11 = type metadata accessor for ResponseFactoryOutputContext(0);
  v57 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v59 = v13;
  v60 = a9;
  v66 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(a9 - 8);
  __chkstk_darwin(v12);
  v54 = v14;
  v55 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CB260();
  v51 = *(v15 - 8);
  v52 = v15;
  __chkstk_darwin(v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v53 = a10;
  v22 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  (*(v19 + 16))(v21, v22, v18);

  v23 = sub_2CDFE0();
  v24 = sub_2CE660();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v50 = a8;
    v26 = v25;
    v27 = swift_slowAlloc();
    v49 = v18;
    v28 = v27;
    v67 = v27;
    *v26 = 136315138;
    sub_2CB130();
    sub_2CD3C0();

    v29 = sub_2CB200();
    v31 = v30;
    (*(v51 + 8))(v17, v52);
    v32 = sub_3F08(v29, v31, &v67);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_0, v23, v24, "ResponseFactory+Utilities#makeResponseOutput with responseMode = %s", v26, 0xCu);
    sub_306C(v28);

    a8 = v50;

    (*(v19 + 8))(v21, v49);
  }

  else
  {

    (*(v19 + 8))(v21, v18);
  }

  v33 = v58;
  v34 = v55;
  v35 = v60;
  (*(v58 + 16))(v55, v56, v60);
  sub_27D16C(a8, v66);
  v36 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v37 = (v54 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (*(v57 + 80) + v39 + 8) & ~*(v57 + 80);
  v41 = swift_allocObject();
  v42 = v53;
  *(v41 + 16) = v35;
  *(v41 + 24) = v42;
  (*(v33 + 32))(v41 + v36, v34, v35);
  *(v41 + v37) = v61;
  v44 = v62;
  v43 = v63;
  *(v41 + v38) = v62;
  *(v41 + v39) = v43;
  sub_27D1F0(v66, v41 + v40);

  v45 = v44;
  v46 = v43;
  sub_20410(qword_34C798, &qword_2D0DA0);
  sub_2CE4E0();
}

uint64_t sub_278C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a1;
  v16 = sub_2CE000();
  v8[10] = v16;
  v8[11] = *(v16 - 8);
  v8[12] = swift_task_alloc();
  v17 = swift_task_alloc();
  v8[13] = v17;
  *v17 = v8;
  v17[1] = sub_278DE0;

  return sub_2791B4(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_278DE0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_278F68;
  }

  else
  {
    v2 = sub_278EF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_278EF4()
{
  *(v0[9] + 40) = v0[14] != 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_278F68()
{
  v22 = v0;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = sub_2CDFE0();
  v6 = sub_2CE680();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_2CEEF0();
    v14 = sub_3F08(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v5, v6, "ResponseFactory+Utilities#makeResponseOutput error: %s", v10, 0xCu);
    sub_306C(v11);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v16 = *(v0 + 88);
    v15 = *(v0 + 96);
    v17 = *(v0 + 80);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 112);
  **(v0 + 72) = v18;
  *(*(v0 + 72) + 40) = v18 != 0;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2791B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = a7;
  v8[12] = v7;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  sub_2C9B80();
  v8[13] = swift_task_alloc();
  v9 = sub_2CA630();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = sub_2CE000();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();

  return _swift_task_switch(sub_279308, 0, 0);
}

uint64_t sub_279308()
{
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2CDFE0();
  v6 = sub_2CE670();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "ResponseFactory+Utilities#responseOutput...", v7, 2u);
  }

  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  v11 = v0[9];

  (*(v9 + 8))(v8, v10);
  if (*v11)
  {
    goto LABEL_8;
  }

  v12 = v0[9];
  if (*(v12 + *(type metadata accessor for ResponseFactoryOutputContext(0) + 24)))
  {
    swift_errorRetain();
LABEL_8:
    swift_willThrow();
    swift_errorRetain();

    v13 = v0[1];

    return v13();
  }

  v15 = sub_2CB460();
  if (!v15)
  {
    sub_2CB180();
    v15 = sub_2CB170();
  }

  v0[20] = v15;
  v16 = v0[9];
  v17 = v15;
  sub_2C9B20();
  v18 = swift_task_alloc();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  sub_2CA560();

  v19 = swift_task_alloc();
  v0[21] = v19;
  *v19 = v0;
  v19[1] = sub_2795CC;
  v20 = v0[16];
  v21 = v0[11];
  v22 = v0[9];
  v23 = v0[10];
  v24 = v0[7];
  v25 = v0[8];
  v26 = v0[5];
  v27 = v0[6];

  return sub_279E20(v26, v20, v27, v24, v25, v22, v23, v21);
}

uint64_t sub_2795CC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_27978C;
  }

  else
  {
    v2 = sub_2796E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2796E0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_27978C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_279838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[2] = a3;
  v4 = sub_20410(&qword_356418, &unk_2D8890);
  __chkstk_darwin(v4 - 8);
  v40 = v35 - v5;
  v6 = sub_2CA1B0();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v37 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_34C820, &unk_2D0A30);
  __chkstk_darwin(v8 - 8);
  v36 = v35 - v9;
  v10 = sub_2CB260();
  __chkstk_darwin(v10 - 8);
  v35[1] = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_356410, &qword_2D8888);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v35 - v16;
  v18 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v18 - 8);
  v20 = v35 - v19;
  v21 = type metadata accessor for ResponseFactoryOutputContext(0);
  sub_F3F4(a2 + v21[8], v20, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  v22 = v21[5];
  sub_F3F4(a2 + v22, v17, &qword_356410, &qword_2D8888);
  v23 = type metadata accessor for SnippetModelResponse(0);
  v24 = *(*(v23 - 8) + 48);
  if (v24(v17, 1, v23) == 1)
  {
    sub_30B8(v17, &qword_356410, &qword_2D8888);
  }

  else
  {

    sub_27D3E8(v17);
  }

  sub_2CA5D0();
  sub_F3F4(a2 + v22, v15, &qword_356410, &qword_2D8888);
  if (v24(v15, 1, v23) == 1)
  {
    sub_30B8(v15, &qword_356410, &qword_2D8888);
  }

  else
  {

    sub_27D3E8(v15);
  }

  v25 = v36;
  sub_2CA600();
  sub_2CA5E0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a2 + v21[7], v25, &qword_34C820, &unk_2D0A30);
  v26 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
  {
    sub_30B8(v25, &qword_34C820, &unk_2D0A30);
  }

  else
  {
    v27 = *(v25 + *(v26 + 48));
    v28 = [v27 catId];

    sub_2CE270();
    v29 = sub_2CA130();
    (*(*(v29 - 8) + 8))(v25, v29);
  }

  sub_2CA590();
  sub_2CA610();
  v30 = v37;
  sub_2CA1C0();
  sub_2CA190();
  sub_2CA1A0();
  v32 = v38;
  v31 = v39;
  v33 = v40;
  (*(v38 + 16))(v40, v30, v39);
  (*(v32 + 56))(v33, 0, 1, v31);
  sub_2CA5C0();
  return (*(v32 + 8))(v30, v31);
}

uint64_t sub_279E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[57] = a8;
  v9[58] = v8;
  v9[55] = a6;
  v9[56] = a7;
  v9[53] = a1;
  v9[54] = a2;
  v10 = sub_2CE000();
  v9[59] = v10;
  v9[60] = *(v10 - 8);
  v9[61] = swift_task_alloc();
  v9[62] = swift_task_alloc();
  v9[63] = swift_task_alloc();
  v9[64] = swift_task_alloc();
  v9[65] = swift_task_alloc();
  v9[66] = swift_task_alloc();
  v9[67] = swift_task_alloc();
  sub_20410(&qword_34C820, &unk_2D0A30);
  v9[68] = swift_task_alloc();
  v9[69] = swift_task_alloc();
  v9[70] = swift_task_alloc();
  v9[71] = swift_task_alloc();
  sub_20410(&qword_356410, &qword_2D8888);
  v9[72] = swift_task_alloc();
  v9[73] = swift_task_alloc();
  v9[74] = swift_task_alloc();
  v9[75] = swift_task_alloc();
  v9[76] = swift_task_alloc();
  v9[77] = swift_task_alloc();
  sub_20410(&unk_3530C0, &unk_2D0A40);
  v9[78] = swift_task_alloc();
  v9[79] = swift_task_alloc();
  v9[80] = swift_task_alloc();
  v9[81] = swift_task_alloc();
  v9[82] = swift_task_alloc();
  v9[83] = swift_task_alloc();
  v11 = sub_2CD230();
  v9[84] = v11;
  v9[85] = *(v11 - 8);
  v9[86] = swift_task_alloc();
  v9[87] = swift_task_alloc();
  v9[88] = swift_task_alloc();
  v9[89] = swift_task_alloc();
  v9[90] = swift_task_alloc();
  v9[91] = swift_task_alloc();

  return _swift_task_switch(sub_27A10C, 0, 0);
}

uint64_t sub_27A10C()
{
  v1 = v0[77];
  v2 = v0[55];
  v3 = type metadata accessor for ResponseFactoryOutputContext(0);
  v4 = v2;
  v233 = *(v3 + 20);
  sub_F3F4(v2 + v233, v1, &qword_356410, &qword_2D8888);
  v5 = type metadata accessor for SnippetModelResponse(0);
  v6 = *(*(v5 - 8) + 48);
  v7 = v6(v1, 1, v5);
  v8 = v0[85];
  v9 = v0[84];
  v10 = v0[83];
  v11 = v0[77];
  v234 = v6;
  if (v7 == 1)
  {
    sub_30B8(v11, &qword_356410, &qword_2D8888);
    (*(v8 + 56))(v10, 1, 1, v9);
LABEL_4:
    sub_30B8(v0[83], &unk_3530C0, &unk_2D0A40);
    v15 = v4;
    v16 = v233;
    goto LABEL_11;
  }

  v12 = v0[77];
  sub_F3F4(v11 + *(v5 + 20), v10, &unk_3530C0, &unk_2D0A40);
  v13 = v12;
  v6 = v234;
  sub_27D3E8(v13);
  v14 = *(v8 + 48);
  if (v14(v10, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  v17 = v0[76];
  v18 = *(v0[85] + 32);
  v18(v0[91], v0[83], v0[84]);
  sub_F3F4(v4 + v233, v17, &qword_356410, &qword_2D8888);
  if (v234(v17, 1, v5) == 1)
  {
    v19 = v0[85];
    v20 = v0[84];
    v21 = v0[82];
    v22 = v0[76];
    (*(v19 + 8))(v0[91], v20);
    sub_30B8(v22, &qword_356410, &qword_2D8888);
    (*(v19 + 56))(v21, 1, 1, v20);
  }

  else
  {
    v232 = v18;
    v23 = v0[84];
    v24 = v0[82];
    v25 = v0[76];
    sub_F3F4(v25, v24, &unk_3530C0, &unk_2D0A40);
    sub_27D3E8(v25);
    if (v14(v24, 1, v23) != 1)
    {
      v196 = v0[71];
      v197 = v0[55];
      v232(v0[90], v0[82], v0[84]);
      sub_F3F4(v197 + *(v3 + 28), v196, &qword_34C820, &unk_2D0A30);
      v198 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
      if ((*(*(v198 - 8) + 48))(v196, 1, v198) != 1)
      {
        v203 = v0[71];
        v204 = *(v203 + *(v198 + 48));
        v0[92] = v204;
        v205 = sub_2CA130();
        (*(*(v205 - 8) + 8))(v203, v205);
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v206 = v0[67];
        v207 = v0[59];
        v208 = v0[60];
        v209 = sub_3ED0(v207, static Logger.default);
        swift_beginAccess();
        (*(v208 + 16))(v206, v209, v207);
        v210 = sub_2CDFE0();
        v211 = sub_2CE670();
        if (os_log_type_enabled(v210, v211))
        {
          v212 = swift_slowAlloc();
          *v212 = 0;
          _os_log_impl(&dword_0, v210, v211, "ResponseFactory+Utilities#responseOutput creating response with dialog and snippets on the result and conversation space", v212, 2u);
        }

        v213 = v0[91];
        v214 = v0[90];
        v215 = v0[85];
        v216 = v0[84];
        v217 = v0[67];
        v218 = v0[59];
        v219 = v0[60];

        (*(v219 + 8))(v217, v218);
        v0[25] = v216;
        v220 = sub_27D444();
        v0[26] = v220;
        v221 = sub_F390(v0 + 22);
        v222 = *(v215 + 16);
        v222(v221, v213, v216);
        v0[30] = v216;
        v0[31] = v220;
        v223 = sub_F390(v0 + 27);
        v222(v223, v214, v216);
        sub_20410(&unk_351900, &unk_2D0960);
        v224 = swift_allocObject();
        v0[93] = v224;
        *(v224 + 16) = xmmword_2D0770;
        *(v224 + 32) = v204;
        v225 = v204;
        v226 = swift_task_alloc();
        v0[94] = v226;
        *v226 = v0;
        v226[1] = sub_27B9A0;
        v227 = v0[57];
        v228 = v0[56];
        v229 = v0[53];
        v230 = v0[54];

        return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)(v229, v0 + 22, v0 + 27, v224, v230, v228, v227);
      }

      v15 = v4;
      v199 = v0[91];
      v200 = v0[84];
      v201 = v0[71];
      v202 = *(v0[85] + 8);
      v202(v0[90], v200);
      v202(v199, v200);
      sub_30B8(v201, &qword_34C820, &unk_2D0A30);
      goto LABEL_10;
    }

    (*(v0[85] + 8))(v0[91], v0[84]);
  }

  v15 = v4;
  sub_30B8(v0[82], &unk_3530C0, &unk_2D0A40);
LABEL_10:
  v16 = v233;
  v6 = v234;
LABEL_11:
  v26 = v0[75];
  sub_F3F4(v15 + v16, v26, &qword_356410, &qword_2D8888);
  v27 = v6(v26, 1, v5);
  v28 = v0[85];
  v29 = v0[84];
  v30 = v0[81];
  v31 = v0[75];
  if (v27 == 1)
  {
    sub_30B8(v31, &qword_356410, &qword_2D8888);
    (*(v28 + 56))(v30, 1, 1, v29);
LABEL_14:
    v34 = v0[81];
    v35 = &unk_3530C0;
    v36 = &unk_2D0A40;
    goto LABEL_15;
  }

  v32 = v0[75];
  sub_F3F4(v31 + *(v5 + 20), v0[81], &unk_3530C0, &unk_2D0A40);
  v33 = v32;
  v6 = v234;
  sub_27D3E8(v33);
  if ((*(v28 + 48))(v30, 1, v29) == 1)
  {
    goto LABEL_14;
  }

  v82 = v0[70];
  v83 = v0[55];
  (*(v0[85] + 32))(v0[89], v0[81], v0[84]);
  sub_F3F4(v83 + *(v3 + 28), v82, &qword_34C820, &unk_2D0A30);
  v84 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if ((*(*(v84 - 8) + 48))(v82, 1, v84) != 1)
  {
    v148 = v0[70];
    v149 = *(v148 + *(v84 + 48));
    v0[95] = v149;
    v150 = sub_2CA130();
    (*(*(v150 - 8) + 8))(v148, v150);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v151 = v0[66];
    v152 = v0[59];
    v153 = v0[60];
    v154 = sub_3ED0(v152, static Logger.default);
    swift_beginAccess();
    (*(v153 + 16))(v151, v154, v152);
    v155 = sub_2CDFE0();
    v156 = sub_2CE670();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      *v157 = 0;
      _os_log_impl(&dword_0, v155, v156, "ResponseFactory+Utilities#responseOutput creating response with a dialog and a snippet on the result space", v157, 2u);
    }

    v158 = v0[89];
    v159 = v0[85];
    v160 = v0[84];
    v161 = v0[66];
    v162 = v0[59];
    v163 = v0[60];

    (*(v163 + 8))(v161, v162);
    v0[20] = v160;
    v0[21] = sub_27D444();
    v164 = sub_F390(v0 + 17);
    (*(v159 + 16))(v164, v158, v160);
    sub_20410(&unk_351900, &unk_2D0960);
    v165 = swift_allocObject();
    v0[96] = v165;
    *(v165 + 16) = xmmword_2D0770;
    *(v165 + 32) = v149;
    v166 = v149;
    v167 = swift_task_alloc();
    v0[97] = v167;
    *v167 = v0;
    v167[1] = sub_27BD00;
    v168 = v0[57];
    v169 = v0[56];
    v170 = v0[53];
    v171 = v0[54];

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v170, v0 + 17, v165, v171, v169, v168);
  }

  v85 = v0[70];
  (*(v0[85] + 8))(v0[89], v0[84]);
  v35 = &qword_34C820;
  v36 = &unk_2D0A30;
  v34 = v85;
LABEL_15:
  sub_30B8(v34, v35, v36);
  v37 = v0[74];
  sub_F3F4(v15 + v16, v37, &qword_356410, &qword_2D8888);
  v38 = v6(v37, 1, v5);
  v39 = v0[85];
  v40 = v0[84];
  v41 = v0[80];
  v42 = v0[74];
  if (v38 == 1)
  {
    sub_30B8(v42, &qword_356410, &qword_2D8888);
    (*(v39 + 56))(v41, 1, 1, v40);
  }

  else
  {
    v43 = v0[74];
    sub_F3F4(v42 + *(v5 + 20), v0[80], &unk_3530C0, &unk_2D0A40);
    v44 = v43;
    v6 = v234;
    sub_27D3E8(v44);
    if ((*(v39 + 48))(v41, 1, v40) != 1)
    {
      (*(v0[85] + 32))(v0[88], v0[80], v0[84]);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v86 = v0[65];
      v87 = v0[59];
      v88 = v0[60];
      v89 = sub_3ED0(v87, static Logger.default);
      swift_beginAccess();
      (*(v88 + 16))(v86, v89, v87);
      v90 = sub_2CDFE0();
      v91 = sub_2CE670();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&dword_0, v90, v91, "ResponseFactory+Utilities#responseOutput creating response with a snippet on the result space and no dialog", v92, 2u);
      }

      v93 = v0[88];
      v94 = v0[85];
      v95 = v0[84];
      v96 = v0[65];
      v97 = v0[59];
      v98 = v0[60];

      (*(v98 + 8))(v96, v97);
      v0[15] = v95;
      v0[16] = sub_27D444();
      v99 = sub_F390(v0 + 12);
      (*(v94 + 16))(v99, v93, v95);
      v100 = swift_task_alloc();
      v0[98] = v100;
      *v100 = v0;
      v100[1] = sub_27C040;
      v101 = v0[57];
      v102 = v0[56];
      v103 = v0[53];
      v104 = v0[54];

      return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:outputGenerationManifest:)(v103, v0 + 12, v104, v102, v101);
    }
  }

  v45 = v0[73];
  sub_30B8(v0[80], &unk_3530C0, &unk_2D0A40);
  sub_F3F4(v15 + v16, v45, &qword_356410, &qword_2D8888);
  v46 = v6(v45, 1, v5);
  v47 = v0[85];
  v48 = v0[84];
  v49 = v0[79];
  v50 = v0[73];
  if (v46 == 1)
  {
    sub_30B8(v50, &qword_356410, &qword_2D8888);
    (*(v47 + 56))(v49, 1, 1, v48);
  }

  else
  {
    v51 = v0[73];
    sub_F3F4(v50, v0[79], &unk_3530C0, &unk_2D0A40);
    v52 = v51;
    v6 = v234;
    sub_27D3E8(v52);
    if ((*(v47 + 48))(v49, 1, v48) != 1)
    {
      v125 = v0[69];
      v126 = v0[55];
      (*(v0[85] + 32))(v0[87], v0[79], v0[84]);
      sub_F3F4(v126 + *(v3 + 28), v125, &qword_34C820, &unk_2D0A30);
      v127 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
      if ((*(*(v127 - 8) + 48))(v125, 1, v127) != 1)
      {
        v172 = v0[69];
        v173 = *(v172 + *(v127 + 48));
        v0[99] = v173;
        v174 = sub_2CA130();
        (*(*(v174 - 8) + 8))(v172, v174);
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v175 = v0[64];
        v176 = v0[59];
        v177 = v0[60];
        v178 = sub_3ED0(v176, static Logger.default);
        swift_beginAccess();
        (*(v177 + 16))(v175, v178, v176);
        v179 = sub_2CDFE0();
        v180 = sub_2CE670();
        if (os_log_type_enabled(v179, v180))
        {
          v181 = swift_slowAlloc();
          *v181 = 0;
          _os_log_impl(&dword_0, v179, v180, "ResponseFactory+Utilities#responseOutput creating response with a dialog and a snippet on the conversation space", v181, 2u);
        }

        v182 = v0[87];
        v183 = v0[85];
        v184 = v0[84];
        v185 = v0[64];
        v186 = v0[59];
        v187 = v0[60];

        (*(v187 + 8))(v185, v186);
        v0[10] = v184;
        v0[11] = sub_27D444();
        v188 = sub_F390(v0 + 7);
        (*(v183 + 16))(v188, v182, v184);
        sub_20410(&unk_351900, &unk_2D0960);
        v189 = swift_allocObject();
        v0[100] = v189;
        *(v189 + 16) = xmmword_2D0770;
        *(v189 + 32) = v173;
        v190 = v173;
        v191 = swift_task_alloc();
        v0[101] = v191;
        *v191 = v0;
        v191[1] = sub_27C354;
        v192 = v0[57];
        v193 = v0[56];
        v194 = v0[53];
        v195 = v0[54];

        return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v194, v0 + 7, v189, v195, v193, v192);
      }

      v128 = v0[69];
      (*(v0[85] + 8))(v0[87], v0[84]);
      v54 = &qword_34C820;
      v55 = &unk_2D0A30;
      v53 = v128;
      goto LABEL_22;
    }
  }

  v53 = v0[79];
  v54 = &unk_3530C0;
  v55 = &unk_2D0A40;
LABEL_22:
  sub_30B8(v53, v54, v55);
  v56 = v0[72];
  sub_F3F4(v15 + v16, v56, &qword_356410, &qword_2D8888);
  v57 = v6(v56, 1, v5);
  v58 = v0[85];
  v59 = v0[84];
  v60 = v0[78];
  v61 = v0[72];
  if (v57 == 1)
  {
    sub_30B8(v0[72], &qword_356410, &qword_2D8888);
    (*(v58 + 56))(v60, 1, 1, v59);
    goto LABEL_25;
  }

  sub_F3F4(v0[72], v0[78], &unk_3530C0, &unk_2D0A40);
  sub_27D3E8(v61);
  if ((*(v58 + 48))(v60, 1, v59) == 1)
  {
LABEL_25:
    v62 = v0[68];
    v63 = v0[55];
    sub_30B8(v0[78], &unk_3530C0, &unk_2D0A40);
    sub_F3F4(v63 + *(v3 + 28), v62, &qword_34C820, &unk_2D0A30);
    v64 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
    v65 = (*(*(v64 - 8) + 48))(v62, 1, v64);
    v66 = v0[68];
    if (v65 == 1)
    {
      sub_30B8(v66, &qword_34C820, &unk_2D0A30);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v68 = v0[60];
      v67 = v0[61];
      v69 = v0[59];
      v70 = sub_3ED0(v69, static Logger.default);
      swift_beginAccess();
      (*(v68 + 16))(v67, v70, v69);
      v71 = sub_2CDFE0();
      v72 = sub_2CE670();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_0, v71, v72, "ResponseFactory+Utilities#responseOutput creating an empty response", v73, 2u);
      }

      v75 = v0[60];
      v74 = v0[61];
      v76 = v0[59];

      (*(v75 + 8))(v74, v76);
      v77 = swift_task_alloc();
      v0[106] = v77;
      *v77 = v0;
      v77[1] = sub_27CCBC;
      v78 = v0[57];
      v79 = v0[56];
      v80 = v0[53];
      v81 = v0[54];

      return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v80, _swiftEmptyArrayStorage, v81, v79, v78);
    }

    else
    {
      v105 = *(v66 + *(v64 + 48));
      v0[103] = v105;
      v106 = v66;
      v107 = sub_2CA130();
      (*(*(v107 - 8) + 8))(v106, v107);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v108 = v0[62];
      v109 = v0[59];
      v110 = v0[60];
      v111 = sub_3ED0(v109, static Logger.default);
      swift_beginAccess();
      (*(v110 + 16))(v108, v111, v109);
      v112 = sub_2CDFE0();
      v113 = sub_2CE670();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_0, v112, v113, "ResponseFactory+Utilities#responseOutput creating response with a dialog and no snippets", v114, 2u);
      }

      v115 = v0[62];
      v116 = v0[59];
      v117 = v0[60];

      (*(v117 + 8))(v115, v116);
      sub_20410(&unk_351900, &unk_2D0960);
      v118 = swift_allocObject();
      v0[104] = v118;
      *(v118 + 16) = xmmword_2D0770;
      *(v118 + 32) = v105;
      v119 = v105;
      v120 = swift_task_alloc();
      v0[105] = v120;
      *v120 = v0;
      v120[1] = sub_27C9A8;
      v121 = v0[57];
      v122 = v0[56];
      v123 = v0[53];
      v124 = v0[54];

      return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v123, v118, v124, v122, v121);
    }
  }

  (*(v0[85] + 32))(v0[86], v0[78], v0[84]);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v129 = v0[63];
  v130 = v0[59];
  v131 = v0[60];
  v132 = sub_3ED0(v130, static Logger.default);
  swift_beginAccess();
  (*(v131 + 16))(v129, v132, v130);
  v133 = sub_2CDFE0();
  v134 = sub_2CE670();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    *v135 = 0;
    _os_log_impl(&dword_0, v133, v134, "ResponseFactory+Utilities#responseOutput creating response with a snippet on the conversation space and no dialog.", v135, 2u);
  }

  v136 = v0[86];
  v137 = v0[85];
  v138 = v0[84];
  v139 = v0[63];
  v140 = v0[59];
  v141 = v0[60];

  (*(v141 + 8))(v139, v140);
  v0[5] = v138;
  v0[6] = sub_27D444();
  v142 = sub_F390(v0 + 2);
  (*(v137 + 16))(v142, v136, v138);
  v143 = swift_task_alloc();
  v0[102] = v143;
  *v143 = v0;
  v143[1] = sub_27C694;
  v144 = v0[57];
  v145 = v0[56];
  v146 = v0[53];
  v147 = v0[54];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:outputGenerationManifest:)(v146, v0 + 2, v147, v145, v144);
}

uint64_t sub_27B9A0()
{
  v1 = *v0;

  sub_306C((v1 + 216));
  sub_306C((v1 + 176));

  return _swift_task_switch(sub_27BAC8, 0, 0);
}

uint64_t sub_27BAC8()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_27BD00()
{
  v1 = *v0;

  sub_306C((v1 + 136));

  return _swift_task_switch(sub_27BE20, 0, 0);
}

uint64_t sub_27BE20()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_27C040()
{
  v1 = *v0;

  sub_306C((v1 + 96));

  return _swift_task_switch(sub_27C144, 0, 0);
}

uint64_t sub_27C144()
{
  (*(v0[85] + 8))(v0[88], v0[84]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_27C354()
{
  v1 = *v0;

  sub_306C((v1 + 56));

  return _swift_task_switch(sub_27C474, 0, 0);
}

uint64_t sub_27C474()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_27C694()
{
  v1 = *v0;

  sub_306C((v1 + 16));

  return _swift_task_switch(sub_27C798, 0, 0);
}

uint64_t sub_27C798()
{
  (*(v0[85] + 8))(v0[86], v0[84]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_27C9A8()
{

  return _swift_task_switch(sub_27CAC0, 0, 0);
}

uint64_t sub_27CAC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27CCBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_27D16C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseFactoryOutputContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27D1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseFactoryOutputContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27D254(uint64_t a1)
{
  v3 = v2;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = (*(*(v6 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for ResponseFactoryOutputContext(0) - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  v13 = *(v1 + v8);
  v14 = *(v1 + v9);
  v15 = *(v1 + v10);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_E664;

  return sub_278C98(a1, v1 + v7, v13, v14, v15, v1 + v12, v6, v5);
}

uint64_t sub_27D3E8(uint64_t a1)
{
  v2 = type metadata accessor for SnippetModelResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27D444()
{
  result = qword_34CC78;
  if (!qword_34CC78)
  {
    sub_2CD230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CC78);
  }

  return result;
}

void sub_27D4C4(uint64_t a1)
{
  sub_CEE50(319, &qword_356490, &qword_356498, &qword_2D88C8);
  if (v1 <= 0x3F)
  {
    sub_27D730(319, &unk_3564A0, &type metadata accessor for AppIntentPerformOptions);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27D5A4(uint64_t a1)
{
  sub_CEE50(319, &qword_34F358, &qword_34C6E0, &unk_2D0730);
  if (v1 <= 0x3F)
  {
    sub_27D730(319, &qword_356540, type metadata accessor for SnippetModelResponse);
    if (v2 <= 0x3F)
    {
      sub_CEE50(319, &qword_34F350, &qword_34C6E8, &unk_2D0FF0);
      if (v3 <= 0x3F)
      {
        sub_27D730(319, &qword_355FB0, &type metadata accessor for NLContextUpdate);
        if (v4 <= 0x3F)
        {
          sub_CEE50(319, &qword_34EE80, &unk_34EE88, qword_2D2CB8);
          if (v5 <= 0x3F)
          {
            sub_27D730(319, &unk_356548, type metadata accessor for ResponseFactoryOutputContext.AppIntentOutputContext);
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

void sub_27D730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2CEB90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s21ConfirmIntentStrategyCMa_1(uint64_t a1)
{
  result = qword_3565B8;
  if (!qword_3565B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27D7D0(uint64_t a1)
{
  sub_27FDA8(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void *sub_27D888()
{

  sub_306C((v0 + 24));
  sub_306C((v0 + 64));
  sub_30B8(v0 + qword_3566B0, qword_34F2C8, &unk_2D3070);
  return v0;
}

uint64_t sub_27D8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v79 = a2;
  v2 = sub_20410(qword_34F2C8, &unk_2D3070);
  __chkstk_darwin(v2 - 8);
  v73 = &v70 - v3;
  v4 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v83 = &v70 - v8;
  v82 = sub_2CA870();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CA7B0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v78 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2CE000();
  v13 = *(v89 - 8);
  v14 = __chkstk_darwin(v89);
  v76 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v77 = &v70 - v17;
  v18 = __chkstk_darwin(v16);
  v72 = &v70 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v70 - v21;
  __chkstk_darwin(v20);
  v24 = &v70 - v23;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v25 = v89;
  v26 = sub_3ED0(v89, static Logger.default);
  swift_beginAccess();
  v27 = *(v13 + 16);
  v86 = v13 + 16;
  v87 = v26;
  v85 = v27;
  v27(v24, v26, v25);
  v28 = sub_2CDFE0();
  v29 = sub_2CE670();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "ConfirmIntentStrategy#actionForInput...", v30, 2u);
  }

  v31 = *(v13 + 8);
  v32 = v89;
  v84 = v13 + 8;
  v31(v24, v89);
  v85(v22, v87, v32);
  v33 = v78;
  (*(v11 + 16))(v78, v88, v10);
  v34 = sub_2CDFE0();
  v35 = sub_2CE690();
  v36 = os_log_type_enabled(v34, v35);
  v75 = v7;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v71 = v31;
    v38 = v37;
    v39 = swift_slowAlloc();
    v92[0] = v39;
    *v38 = 136315138;
    sub_280B28(&qword_34CD00, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v40 = sub_2CEE70();
    v42 = v41;
    (*(v11 + 8))(v33, v10);
    v43 = sub_3F08(v40, v42, v92);
    v44 = v89;

    *(v38 + 4) = v43;
    _os_log_impl(&dword_0, v34, v35, "ConfirmIntentStrategy#actionForInput input:%s", v38, 0xCu);
    sub_306C(v39);

    v31 = v71;

    v31(v22, v44);
  }

  else
  {

    (*(v11 + 8))(v33, v10);
    v31(v22, v89);
  }

  v45 = v80;
  sub_2CA790();
  v46 = sub_D1D64(v45, &v90);
  (*(v81 + 8))(v45, v82, v46);
  if (v91)
  {
    sub_F338(&v90, v92);
    sub_35E0(v92, v92[3]);
    v47 = v83;
    sub_2CD480();
    v48 = sub_2CD490();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v47, 1, v48) == 1)
    {
LABEL_10:
      v85(v77, v87, v89);
      v50 = sub_2CDFE0();
      v51 = sub_2CE690();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_0, v50, v51, "ConfirmIntentStrategy#actionForInput no valid confirmation in the intent, ignoring", v52, 2u);
      }

      v31(v77, v89);
      sub_2C9CF0();
      goto LABEL_21;
    }

    v58 = v75;
    sub_F3F4(v83, v75, &qword_34CCE8, &unk_2D0E20);
    v59 = (*(v49 + 88))(v58, v48);
    if (v59 == enum case for CommonAudio.Confirmation.yes(_:))
    {
      v60 = &enum case for ConfirmationResponse.confirmed(_:);
    }

    else
    {
      if (v59 != enum case for CommonAudio.Confirmation.no(_:))
      {
        if (v59 == enum case for CommonAudio.Confirmation.cancel(_:))
        {
          v85(v72, v87, v89);
          v67 = sub_2CDFE0();
          v68 = sub_2CE690();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 0;
            _os_log_impl(&dword_0, v67, v68, "ConfirmIntentStrategy#actionForInput request is cancelled", v69, 2u);
          }

          v31(v72, v89);
          sub_2C9CD0();
          goto LABEL_21;
        }

        (*(v49 + 8))(v58, v48);
        goto LABEL_10;
      }

      v60 = &enum case for ConfirmationResponse.rejected(_:);
    }

    v61 = *v60;
    v62 = sub_2CA360();
    v63 = *(v62 - 8);
    v64 = v73;
    (*(v63 + 104))(v73, v61, v62);
    (*(v63 + 56))(v64, 0, 1, v62);
    v65 = qword_3566B0;
    v66 = v74;
    swift_beginAccess();
    sub_280AB8(v64, v66 + v65);
    swift_endAccess();
    sub_2C9CE0();
LABEL_21:
    sub_30B8(v83, &qword_34CCE8, &unk_2D0E20);
    return sub_306C(v92);
  }

  sub_30B8(&v90, &qword_34CCF0, &unk_2D1270);
  v53 = v76;
  v85(v76, v87, v89);
  v54 = sub_2CDFE0();
  v55 = sub_2CE690();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_0, v54, v55, "ConfirmIntentStrategy#actionForInput received invalid intent", v56, 2u);
  }

  v31(v53, v89);
  return sub_2C9CF0();
}

uint64_t sub_27E3C0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v5 + 16);
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = a3;
  v14 = *(*v12 + 240);

  v15 = a2;

  v16 = a3;
  v14(a1, v15, a3, sub_2808A8, v13);
}

uint64_t sub_27E4BC(void *a1, void *a2, uint64_t a3, void *a4, void (*a5)(void *), uint64_t a6, uint64_t a7)
{
  v67 = a7;
  v78 = a5;
  v79 = a6;
  v76 = a3;
  v77 = a4;
  v72 = a1;
  v7 = *a2;
  v75 = a2;
  v63 = v7;
  v8 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v8 - 8);
  v74 = &v61 - v9;
  v64 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v65 = *(v64 - 8);
  v10 = *(v65 + 64);
  v11 = __chkstk_darwin(v64);
  v66 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v70 = &v61 - v13;
  __chkstk_darwin(v12);
  v73 = &v61 - v14;
  v15 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v15 - 8);
  v71 = &v61 - v16;
  v17 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v17 - 8);
  v69 = &v61 - v18;
  v19 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v19 - 8);
  v68 = &v61 - v20;
  v62 = sub_2CCB30();
  v21 = *(v62 - 8);
  __chkstk_darwin(v62);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CCAC0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v28);
  v30 = (&v61 - v29);
  sub_F3F4(v72, &v61 - v29, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v30;
    (*(v25 + 104))(v27, enum case for AdditionalMetricsDescription.ModuleName.ccifs(_:), v24);
    v32 = v62;
    (*(v21 + 104))(v23, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v62);
    swift_getErrorValue();
    sub_2CEEF0();
    v74 = sub_2CCAE0();

    (*(v21 + 8))(v23, v32);
    (*(v25 + 8))(v27, v24);
    v75 = sub_35E0(v75 + 3, v75[6]);
    v33 = enum case for ActivityType.failed(_:);
    v34 = sub_2C9C20();
    v35 = *(v34 - 8);
    v36 = v68;
    (*(v35 + 104))(v68, v33, v34);
    (*(v35 + 56))(v36, 0, 1, v34);
    v37 = sub_2CA130();
    v38 = v69;
    (*(*(v37 - 8) + 56))(v69, 1, 1, v37);
    v39 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v40 = sub_2C98F0();
    v41 = *(v40 - 8);
    v42 = v71;
    (*(v41 + 104))(v71, v39, v40);
    (*(v41 + 56))(v42, 0, 1, v40);
    sub_2CB4E0();

    sub_30B8(v42, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v38, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v36, &qword_34CB88, &unk_2D0D90);
    v80[0] = v31;
    v81 = 1;
    swift_errorRetain();
    v78(v80);

    return sub_30B8(v80, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v44 = v73;
    sub_24BE0(v30, v73);
    v46 = *(v63 + 80);
    v45 = *(v63 + 88);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    v47 = v77;
    sub_B7294(v74);
    v48 = v75;
    v72 = sub_35E0(v75 + 8, v75[11]);
    v49 = v70;
    sub_F3F4(v44, v70, &qword_34C6E8, &unk_2D0FF0);
    v50 = *(v49 + *(v64 + 48));
    v51 = v44;
    v52 = v66;
    sub_F3F4(v51, v66, &qword_34C6E8, &unk_2D0FF0);
    v53 = (*(v65 + 80) + 56) & ~*(v65 + 80);
    v54 = swift_allocObject();
    v54[2] = v46;
    v54[3] = v45;
    v55 = v76;
    v54[4] = v48;
    v54[5] = v55;
    v54[6] = v47;
    sub_24BE0(v52, v54 + v53);
    v56 = (v54 + ((v10 + v53 + 7) & 0xFFFFFFFFFFFFFFF8));
    v57 = v79;
    *v56 = v78;
    v56[1] = v57;

    v58 = v47;

    v59 = v74;
    sub_1C1A94(v49, v50, v74, sub_2809DC, v54);

    sub_30B8(v59, &unk_353020, &unk_2D0970);
    sub_30B8(v73, &qword_34C6E8, &unk_2D0FF0);
    v60 = sub_2CA130();
    return (*(*(v60 - 8) + 8))(v49, v60);
  }
}

uint64_t sub_27EDF0(void *a1, void *a2, uint64_t a3, void *a4, void (*a5)(void *), uint64_t a6)
{
  v72 = a5;
  v73 = a6;
  v70 = a3;
  v71 = a4;
  v68 = a1;
  v69 = a2;
  v62 = *a2;
  v6 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v6 - 8);
  v66 = &v57 - v7;
  v58 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v59 = *(v58 - 8);
  v8 = *(v59 + 64);
  v9 = __chkstk_darwin(v58);
  v60 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v64 = &v57 - v11;
  __chkstk_darwin(v10);
  v61 = &v57 - v12;
  v13 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v13 - 8);
  v67 = (&v57 - v14);
  v15 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v15 - 8);
  v65 = &v57 - v16;
  v17 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v17 - 8);
  v63 = &v57 - v18;
  v57 = sub_2CCB30();
  v19 = *(v57 - 8);
  __chkstk_darwin(v57);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CCAC0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v26);
  v28 = (&v57 - v27);
  sub_F3F4(v68, &v57 - v27, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    (*(v23 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.ccifs(_:), v22);
    v30 = v57;
    (*(v19 + 104))(v21, enum case for AdditionalMetricsDescription.SourceFunction.rejResp(_:), v57);
    swift_getErrorValue();
    sub_2CEEF0();
    v68 = sub_2CCAE0();

    (*(v19 + 8))(v21, v30);
    (*(v23 + 8))(v25, v22);
    v69 = sub_35E0(v69 + 3, v69[6]);
    v31 = enum case for ActivityType.failed(_:);
    v32 = sub_2C9C20();
    v33 = *(v32 - 8);
    v34 = v63;
    (*(v33 + 104))(v63, v31, v32);
    (*(v33 + 56))(v34, 0, 1, v32);
    v35 = sub_2CA130();
    v36 = v65;
    (*(*(v35 - 8) + 56))(v65, 1, 1, v35);
    v37 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v38 = sub_2C98F0();
    v39 = *(v38 - 8);
    v40 = v67;
    (*(v39 + 104))(v67, v37, v38);
    (*(v39 + 56))(v40, 0, 1, v38);
    sub_2CB4E0();

    sub_30B8(v40, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v36, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v34, &qword_34CB88, &unk_2D0D90);
    v74[0] = v29;
    v75 = 1;
    swift_errorRetain();
    v72(v74);

    return sub_30B8(v74, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v42 = v61;
    sub_24BE0(v28, v61);
    v43 = v69;
    v67 = sub_35E0(v69 + 8, v69[11]);
    v44 = v64;
    sub_F3F4(v42, v64, &qword_34C6E8, &unk_2D0FF0);
    v68 = *(v44 + *(v58 + 48));
    v45 = sub_2CA000();
    v46 = v66;
    (*(*(v45 - 8) + 56))(v66, 1, 1, v45);
    v47 = v60;
    sub_F3F4(v42, v60, &qword_34C6E8, &unk_2D0FF0);
    v48 = (*(v59 + 80) + 56) & ~*(v59 + 80);
    v49 = swift_allocObject();
    v50 = v62;
    v49[2] = *(v62 + 80);
    v49[3] = *(v50 + 88);
    v49[4] = v43;
    v51 = v71;
    v49[5] = v70;
    v49[6] = v51;
    sub_24BE0(v47, v49 + v48);
    v52 = (v49 + ((v8 + v48 + 7) & 0xFFFFFFFFFFFFFFF8));
    v53 = v73;
    *v52 = v72;
    v52[1] = v53;

    v54 = v51;

    v55 = v68;
    sub_1C2330(v44, v68, v46, sub_280894, v49);

    sub_30B8(v46, &unk_353020, &unk_2D0970);
    sub_30B8(v42, &qword_34C6E8, &unk_2D0FF0);
    v56 = sub_2CA130();
    return (*(*(v56 - 8) + 8))(v44, v56);
  }
}

uint64_t sub_27F700(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, unsigned int *a8, unsigned int *a9)
{
  v44 = a8;
  v55 = a7;
  v56 = a6;
  v50 = a5;
  v52 = a3;
  v53 = a4;
  v46 = a2;
  v54 = a1;
  v48 = a9;
  v9 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v9 - 8);
  v51 = &v43 - v10;
  v49 = sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8;
  __chkstk_darwin(v49);
  v45 = &v43 - v11;
  v12 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v12 - 8);
  v47 = &v43 - v13;
  v14 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  v17 = sub_2CCB20();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2CCB30();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CCAC0();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 104))(v28, enum case for AdditionalMetricsDescription.ModuleName.ccifs(_:), v25);
  (*(v22 + 104))(v24, *v44, v21);
  (*(v18 + 104))(v20, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v17);
  v29 = sub_2CCAD0();
  v43 = v30;
  v44 = v29;
  (*(v18 + 8))(v20, v17);
  (*(v22 + 8))(v24, v21);
  (*(v26 + 8))(v28, v25);
  sub_35E0(v46 + 3, v46[6]);
  v31 = *v48;
  v32 = sub_2C9C20();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v16, v31, v32);
  (*(v33 + 56))(v16, 0, 1, v32);
  v34 = v45;
  sub_F3F4(v50, v45, &qword_34C6E8, &unk_2D0FF0);

  v35 = sub_2CA130();
  v36 = *(v35 - 8);
  v37 = v47;
  (*(v36 + 32))(v47, v34, v35);
  (*(v36 + 56))(v37, 0, 1, v35);
  v38 = enum case for SiriKitReliabilityCodes.success(_:);
  v39 = sub_2C98F0();
  v40 = *(v39 - 8);
  v41 = v51;
  (*(v40 + 104))(v51, v38, v39);
  (*(v40 + 56))(v41, 0, 1, v39);
  sub_2CB4E0();

  sub_30B8(v41, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v37, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v16, &qword_34CB88, &unk_2D0D90);
  return v56(v54);
}

uint64_t sub_27FD38()
{
  sub_27D888();

  return swift_deallocClassInstance();
}

void sub_27FDA8(uint64_t a1)
{
  if (!qword_356738)
  {
    sub_2CA360();
    v1 = sub_2CEB90();
    if (!v2)
    {
      atomic_store(v1, &qword_356738);
    }
  }
}

uint64_t sub_27FEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = type metadata accessor for CommonConfirmIntentFlowStrategy(0, *(a6 + 80), *(a6 + 88), a4);

  return a8(a1, a2, a3, a4, a5, v14, a7);
}

uint64_t sub_27FF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for CommonConfirmIntentFlowStrategy(0, *(a7 + 80), *(a7 + 88), a4);

  return ConfirmIntentFlowStrategy.makeErrorResponse(app:intent:intentResponse:error:_:)(a1, a2, a3, a4, a5, a6, v15, a8);
}

uint64_t sub_280010(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v5 = v4;
  v59 = a4;
  v60 = a3;
  v55 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_2CA320();
  sub_2DB30(&qword_34C6E0, &unk_2D0730);
  v6 = sub_2CEFA0();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v56 = (&v51 - v7);
  v8 = sub_2CE000();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v53 = &v51 - v12;
  v52 = sub_20410(qword_34F2C8, &unk_2D3070);
  v13 = __chkstk_darwin(v52);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v51 - v16;
  v18 = sub_2CA360();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = qword_3566B0;
  swift_beginAccess();
  sub_F3F4(v5 + v22, v17, qword_34F2C8, &unk_2D3070);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_30B8(v17, qword_34F2C8, &unk_2D3070);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v23 = v62;
    v24 = sub_3ED0(v62, static Logger.default);
    swift_beginAccess();
    v25 = v61;
    (*(v61 + 16))(v11, v24, v23);
    v26 = sub_2CDFE0();
    v27 = sub_2CE680();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "ConfirmIntentStrategy#parseConfirmationResponse confirmationResponse is nil, this is not expected", v28, 2u);
    }

    (*(v25 + 8))(v11, v23);
    v29 = sub_2CB850();
    sub_280B28(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v30 = swift_allocError();
    (*(*(v29 - 8) + 104))(v31, enum case for PlaybackCode.ceGE52(_:), v29);
    v32 = v56;
    *v56 = v30;
    v33 = v58;
    swift_storeEnumTagMultiPayload();
    v60(v32);
    return (*(v57 + 8))(v32, v33);
  }

  else
  {
    v35 = *(v19 + 32);
    v51 = v21;
    v35(v21, v17, v18);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v36 = v62;
    v37 = sub_3ED0(v62, static Logger.default);
    swift_beginAccess();
    v38 = v61;
    v39 = v53;
    (*(v61 + 16))(v53, v37, v36);

    v40 = sub_2CDFE0();
    v41 = sub_2CE690();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63 = v43;
      *v42 = 136315138;
      sub_F3F4(v5 + v22, v15, qword_34F2C8, &unk_2D3070);
      v44 = sub_2CE2A0();
      v46 = sub_3F08(v44, v45, &v63);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_0, v40, v41, "ConfirmIntentStrategy#parseConfirmationResponse confirmation response: %s", v42, 0xCu);
      sub_306C(v43);

      (*(v61 + 8))(v39, v62);
    }

    else
    {

      (*(v38 + 8))(v39, v36);
    }

    v47 = v51;
    (*(v19 + 16))(v15, v51, v18);
    (*(v19 + 56))(v15, 0, 1, v18);
    v48 = v55;
    v49 = v56;
    sub_2CA310();
    v50 = v58;
    swift_storeEnumTagMultiPayload();
    v60(v49);
    (*(v57 + 8))(v49, v50);
    return (*(v19 + 8))(v47, v18);
  }
}

uint64_t sub_2807C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;

  v10 = a2;

  sub_2850FC(a1, sub_280884, v9);
}

uint64_t sub_2808B8()
{
  v1 = (sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = sub_2CA130();
  (*(*(v5 - 8) + 8))(v4, v5);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_2809F0(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v7 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_27F700(a1, *(v3 + 32), *(v3 + 40), *(v3 + 48), v3 + v8, *v9, *(v9 + 8), a2, a3);
}

uint64_t sub_280AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(qword_34F2C8, &unk_2D3070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_280B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_280B70()
{
  sub_2CEF50();
  sub_2CE310();
  return sub_2CEF80();
}

Swift::Int sub_280BE4(uint64_t a1)
{
  sub_2CEF50();
  sub_2CE310();
  return sub_2CEF80();
}

void sub_280C38(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_330F28;
  v6._object = v3;
  v5 = sub_2CEDF0(v4, v6);

  *a2 = v5 != 0;
}

unint64_t sub_280CAC(uint64_t a1)
{
  type metadata accessor for DialogHistoryProvider();
  v1 = swift_allocObject();
  result = sub_280D48();
  *(v1 + 16) = result;
  qword_35F900 = v1;
  return result;
}

uint64_t sub_280CEC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_280D48()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_2CE260();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_9:
    sub_30B8(&v8, &qword_34CEA0, &qword_2D0FC0);
    return sub_9062C(_swiftEmptyArrayStorage);
  }

  v3 = sub_2CE260();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_2CEC00();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  sub_20410(&qword_356808, &qword_2D8AD8);
  if (swift_dynamicCast())
  {
    return v6;
  }

  return sub_9062C(_swiftEmptyArrayStorage);
}

uint64_t sub_280EB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D05D8();
  v52 = a4;
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v53 = v8;
    v54 = v9;
    v57 = 0x7C295C3F2A2E285CLL;
    v58 = 0xEF5D5C3F2A2E5B5CLL;
    sub_B96A0();
    v12 = sub_2CEBD0();
    v14 = v13;
    v15 = sub_2CE320();
    result = sub_2CE320();
    if (__OFSUB__(v15, result))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v15 - result < 35 || sub_2CE320() < 6)
    {
    }

    else
    {

      v10 = v12;
      v11 = v14;
    }
  }

  else
  {
    v10 = sub_1D05D8();
    v11 = v17;
  }

  v18 = sub_1D05E4();
  if (!v19)
  {
    v20 = sub_1D05E4();
    v21 = v31;
    v30 = a1;
    goto LABEL_25;
  }

  v20 = v18;
  v21 = v19;
  v49 = a5;
  v22 = sub_1D05D8();
  if (!v23)
  {
    v32 = sub_1D05D8();
    v30 = a1;
    if (!v33)
    {
      goto LABEL_25;
    }

    v24 = v32;
    v28 = v33;
    goto LABEL_19;
  }

  v24 = v22;
  v25 = v23;
  v53 = v22;
  v54 = v23;
  v57 = 0x7C295C3F2A2E285CLL;
  v58 = 0xEF5D5C3F2A2E5B5CLL;
  sub_B96A0();
  v26 = sub_2CEBD0();
  v28 = v27;
  v29 = sub_2CE320();
  result = sub_2CE320();
  if (__OFSUB__(v29, result))
  {
LABEL_45:
    __break(1u);
    return result;
  }

  if (v29 - result >= 35)
  {
    v30 = a1;
    if (sub_2CE320() <= 5)
    {

      v28 = v25;
    }

    else
    {

      v24 = v26;
    }

LABEL_19:
    a5 = v49;
    goto LABEL_20;
  }

  v28 = v25;
  a5 = v49;
  v30 = a1;
LABEL_20:
  if (sub_2CE320() > 59)
  {
  }

  else
  {
    v53 = v20;
    v54 = v21;
    v57 = v24;
    v58 = v28;
    sub_B96A0();
    v34 = sub_2CEBF0();

    if ((v34 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v20 = 0;
  v21 = 0;
LABEL_25:
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  v36 = inited;
  *(inited + 16) = xmmword_2D10E0;
  *(inited + 32) = 0x656C746974;
  if (v11)
  {
    v37 = v10;
  }

  else
  {
    v37 = 0;
  }

  v38 = 0xE000000000000000;
  if (v11)
  {
    v39 = v11;
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v37;
  *(inited + 56) = v39;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x747369747261;
  if (v21)
  {
    v40 = v20;
  }

  else
  {
    v40 = 0;
  }

  if (v21)
  {
    v38 = v21;
  }

  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = v40;
  *(inited + 104) = v38;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x756F436567617375;
  *(inited + 136) = 0xEA0000000000746ELL;
  v41 = *sub_35E0((v50 + 8), *(v50 + 32));
  swift_beginAccess();
  v42 = *(v41 + 16);
  if (*(v42 + 16))
  {

    v43 = sub_4F538(0xD00000000000001ALL, 0x80000000002DA500);
    v44 = v52;
    if (v45)
    {
      v46 = *(*(v42 + 56) + 8 * v43);
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
    v44 = v52;
  }

  *(v36 + 168) = &type metadata for Int;
  *(v36 + 144) = v46;
  v47 = sub_112C0(v36);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v55 = sub_D8B98();
  v56 = &off_3381B8;
  v53 = a2;
  v48 = a2;
  sub_250C6C(v47, v30, &v53, v44, a5);

  return sub_30B8(&v53, &qword_34C6C0, &qword_2D0710);
}

void sub_281390()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16))
  {

    v3 = sub_4F538(0xD00000000000001ALL, 0x80000000002DA500);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v1 + 16);
    *(v1 + 16) = 0x8000000000000000;
    sub_2377E0(v7, 0xD00000000000001ALL, 0x80000000002DA500, isUniquelyReferenced_nonNull_native);
    *(v1 + 16) = v14;
    swift_endAccess();
    v9 = objc_allocWithZone(NSUserDefaults);
    v10 = sub_2CE260();
    v11 = [v9 initWithSuiteName:v10];

    if (v11)
    {

      isa = sub_2CE1F0().super.isa;

      v13 = sub_2CE260();
      [v11 setObject:isa forKey:v13];
    }
  }
}

uint64_t sub_28155C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2815A4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_281614()
{
  result = qword_356810[0];
  if (!qword_356810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_356810);
  }

  return result;
}

id sub_281680(SEL *a1)
{
  result = [v1 mediaItems];
  if (result)
  {
    v4 = result;
    sub_736BC();
    v5 = sub_2CE410();

    if (v5 >> 62)
    {
      result = sub_2CEDA0();
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_4:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = sub_2CECD0();
        }

        else
        {
          if (!*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v6 = *(v5 + 32);
        }

        v7 = v6;

        v8 = [v7 *a1];

        if (v8)
        {
          v9 = sub_2CE270();

          return v9;
        }

        return 0;
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_281798(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CBFB0();
}

BOOL sub_2817EC(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CBFD0();
}

BOOL sub_281840(uint64_t a1, void *a2, uint64_t a3)
{
  swift_getWitnessTable();
  v5.value._countAndFlagsBits = a1;
  v5.value._object = a2;

  return sub_2CBFF0(v5);
}

uint64_t sub_2818AC(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CBFE0();
}

BOOL sub_281900(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CC010();
}

uint64_t sub_281954(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CBF90();
}

uint64_t sub_2819A8(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_2CBFC0();
}

void *sub_281ADC()
{

  sub_306C((v0 + 24));
  sub_306C((v0 + 64));

  return v0;
}

uint64_t sub_281B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a3;
  v57 = a2;
  v65 = a1;
  v5 = sub_2CDFD0();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  v7 = __chkstk_darwin(v5);
  v8 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = &v55 - v9;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v55 - v14;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v17 = *(v11 + 16);
  v58 = v16;
  v56 = v17;
  v17(v15, v16, v10);
  v18 = sub_2CDFE0();
  v19 = sub_2CE670();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "CommonDialogProvider#makeGenericErrorDialog", v20, 2u);
  }

  v21 = *(v11 + 8);
  v63 = v11 + 8;
  v60 = v21;
  v21(v15, v10);
  v64 = sub_112C0(_swiftEmptyArrayStorage);
  v61 = v4[2];
  v22 = v4[13];
  v23 = v4[14];
  v66 = v22;
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v55 = v10;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v24 = qword_35F760;
  v25 = v67;
  sub_2CDFB0();
  v27 = v68;
  v26 = v69;
  (*(v68 + 16))(v8, v25, v69);
  v28 = (*(v27 + 80) + 33) & ~*(v27 + 80);
  v29 = (v6 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = "catServiceExecute";
  *(v30 + 24) = 17;
  *(v30 + 32) = 2;
  (*(v27 + 32))(v30 + v28, v8, v26);
  v31 = (v30 + v29);
  v32 = v59;
  *v31 = v57;
  v31[1] = v32;

  v33 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2D0E40;
  *(v34 + 56) = &type metadata for String;
  v35 = sub_1087C();
  *(v34 + 32) = v66;
  *(v34 + 40) = v23;
  *(v34 + 96) = &type metadata for String;
  *(v34 + 104) = v35;
  *(v34 + 64) = v35;
  strcpy((v34 + 72), "GenericError");
  *(v34 + 85) = 0;
  *(v34 + 86) = -5120;

  LOBYTE(v53) = 2;
  sub_2CDF90(v33, &dword_0, v24, "catServiceExecute", 17, 2, v25, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v53, v34);

  v36 = swift_allocObject();
  *(v36 + 16) = sub_13D80;
  *(v36 + 24) = v30;
  v37 = v62;
  v38 = v55;
  v56(v62, v58, v55);

  v39 = sub_2CDFE0();
  v40 = sub_2CE660();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v41 = 136315394;
    v42 = v66;
    *(v41 + 4) = sub_3F08(v66, v23, &v70);
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_3F08(0x45636972656E6547, 0xEC000000726F7272, &v70);
    _os_log_impl(&dword_0, v39, v40, "Evaluating CAT family:%s id:%s...", v41, 0x16u);
    swift_arrayDestroy();

    v60(v37, v38);
  }

  else
  {

    v60(v37, v38);
    v42 = v66;
  }

  v70 = v42;
  v71 = v23;

  v74._countAndFlagsBits = 35;
  v74._object = 0xE100000000000000;
  sub_2CE350(v74);
  v75._countAndFlagsBits = 0x45636972656E6547;
  v75._object = 0xEC000000726F7272;
  sub_2CE350(v75);
  v43 = v70;
  v44 = v71;
  v45 = sub_2CB460();
  if (!v45)
  {
    sub_2CB180();
    v45 = sub_2CB170();
  }

  v46 = v45;
  v47 = swift_allocObject();
  v47[2] = v46;
  v47[3] = sub_13DB4;
  v47[4] = v36;
  v48 = sub_2CB180();
  __chkstk_darwin(v48);
  v50 = v64;
  v49 = v65;
  *(&v55 - 10) = v61;
  *(&v55 - 9) = v50;
  *(&v55 - 8) = v49;
  *(&v55 - 7) = v72;
  *(&v55 - 6) = 0;
  *(&v55 - 5) = v43;
  v52 = v44;
  v53 = sub_3E06C;
  v54 = v47;

  sub_2CB0F0();

  (*(v68 + 8))(v67, v69);
  return sub_30B8(v72, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_2822EC(uint64_t a1, char *a2, char *a3)
{
  v50 = a2;
  v55 = a1;
  v5 = sub_2CE000();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v58 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v47 - v12;
  v14 = sub_112C0(_swiftEmptyArrayStorage);
  v53 = v3[2];
  v54 = v14;
  v15 = v3[13];
  v48 = v3[14];
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v56 = v8;
  v57 = v7;
  (*(v8 + 32))(v19 + v17, v11, v7);
  v20 = (v19 + v18);
  *v20 = v50;
  v20[1] = a3;

  v21 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v49 = v15;
  *(v22 + 32) = v15;
  v24 = v48;
  *(v22 + 40) = v48;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = 0x6E496567726142;
  *(v22 + 80) = 0xE700000000000000;

  LOBYTE(v45) = 2;
  v50 = v13;
  sub_2CDF90(v21, &dword_0, v16, "catServiceExecute", 17, 2, v13, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v45, v22);

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13D80;
  *(v25 + 24) = v19;
  v26 = qword_34BF58;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v52;
  v28 = sub_3ED0(v52, static Logger.default);
  swift_beginAccess();
  v29 = v51;
  v30 = v58;
  (*(v51 + 16))(v58, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v47 = v25;
    v59 = v34;
    *v33 = 136315394;
    v35 = v49;
    *(v33 + 4) = sub_3F08(v49, v24, &v59);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_3F08(0x6E496567726142, 0xE700000000000000, &v59);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();
    v25 = v47;

    (*(v29 + 8))(v58, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v35 = v49;
  }

  v59 = v35;
  v60 = v24;

  v63._countAndFlagsBits = 35;
  v63._object = 0xE100000000000000;
  sub_2CE350(v63);
  v64._countAndFlagsBits = 0x6E496567726142;
  v64._object = 0xE700000000000000;
  sub_2CE350(v64);
  v36 = v59;
  v37 = v60;
  v38 = sub_2CB460();
  if (!v38)
  {
    sub_2CB180();
    v38 = sub_2CB170();
  }

  v39 = v38;
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = sub_13DB4;
  v40[4] = v25;
  v41 = sub_2CB180();
  __chkstk_darwin(v41);
  v42 = v54;
  *(&v47 - 10) = v53;
  *(&v47 - 9) = v42;
  *(&v47 - 8) = v55;
  *(&v47 - 7) = v61;
  *(&v47 - 6) = 0;
  *(&v47 - 5) = v36;
  v44 = v37;
  v45 = sub_3E06C;
  v46 = v40;

  sub_2CB0F0();

  (*(v56 + 8))(v50, v57);
  return sub_30B8(v61, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_282998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6)
{
  v67 = a5;
  v70 = a1;
  v71 = a2;
  v8 = sub_2CE000();
  v76 = *(v8 - 8);
  v77 = v8;
  v9 = __chkstk_darwin(v8);
  v74 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = &v62 - v11;
  v12 = sub_2CDFD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v62 - v17;
  v69 = v6[2];
  v19 = v6[13];
  v62 = v6[14];
  v75 = 0x80000000002DAA60;
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v20 = qword_35F760;
  sub_2CDFB0();
  (*(v13 + 16))(v16, v18, v12);
  v21 = (*(v13 + 80) + 33) & ~*(v13 + 80);
  v22 = v14 + v21 + 7;
  v23 = v18;
  v24 = v22 & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v72 = v13;
  v73 = v12;
  (*(v13 + 32))(v25 + v21, v16, v12);
  v26 = (v25 + v24);
  *v26 = v67;
  v26[1] = a6;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v66 = v19;
  *(v28 + 32) = v19;
  v30 = v62;
  *(v28 + 40) = v62;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000015;
  *(v28 + 80) = v75;

  LOBYTE(v60) = 2;
  v67 = v23;
  sub_2CDF90(v27, &dword_0, v20, "catServiceExecute", 17, 2, v23, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v60, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v63 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v77;
  v34 = sub_3ED0(v77, static Logger.default);
  swift_beginAccess();
  v35 = v76;
  v36 = *(v76 + 16);
  v37 = v68;
  v65 = v34;
  v64 = v36;
  v36(v68, v34, v33);

  v38 = sub_2CDFE0();
  v39 = sub_2CE660();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v40 = 136315394;
    v41 = v66;
    *(v40 + 4) = sub_3F08(v66, v30, &v78);
    *(v40 + 12) = 2080;
    v42 = v75;
    *(v40 + 14) = sub_3F08(0xD000000000000015, v75, &v78);
    _os_log_impl(&dword_0, v38, v39, "Evaluating CAT family:%s id:%s...", v40, 0x16u);
    swift_arrayDestroy();

    v43 = v37;
    v44 = *(v76 + 8);
    v44(v43, v77);
  }

  else
  {

    v45 = v37;
    v44 = *(v35 + 8);
    v44(v45, v33);
    v42 = v75;
    v41 = v66;
  }

  v78 = v41;
  v79 = v30;

  v82._countAndFlagsBits = 35;
  v82._object = 0xE100000000000000;
  sub_2CE350(v82);
  v83._countAndFlagsBits = 0xD000000000000015;
  v83._object = v42;
  sub_2CE350(v83);
  v47 = v78;
  v46 = v79;
  v48 = sub_2CB460();
  if (!v48)
  {
    sub_2CB180();
    v48 = sub_2CB170();
  }

  v49 = v48;
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = sub_13DB4;
  v50[4] = v63;
  v51 = sub_2CB180();
  __chkstk_darwin(v51);
  v52 = v70;
  *(&v62 - 10) = v69;
  *(&v62 - 9) = v52;
  *(&v62 - 8) = v71;
  *(&v62 - 7) = v80;
  *(&v62 - 6) = 0;
  *(&v62 - 5) = v47;
  v59 = v46;
  v60 = sub_3E06C;
  v61 = v50;

  sub_2CB0F0();

  (*(v72 + 8))(v67, v73);
  sub_30B8(v80, &qword_34C6C0, &qword_2D0710);
  v53 = v74;
  v54 = v77;
  v64(v74, v65, v77);
  v55 = sub_2CDFE0();
  v56 = sub_2CE690();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_0, v55, v56, "CommonDialogProvider#makeFailureHandlingIntentDialog", v57, 2u);
  }

  return (v44)(v53, v54);
}

uint64_t sub_28315C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, void (*a6)(__int128 *), uint64_t a7)
{
  v8 = v7;
  v167 = a7;
  v166 = a6;
  v171 = a5;
  v174 = a1;
  v158 = *v7;
  v173 = sub_2CDFD0();
  v172 = *(v173 - 8);
  v12 = __chkstk_darwin(v173);
  v168 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v160 = &v154 - v15;
  v159 = v16;
  __chkstk_darwin(v14);
  v169 = &v154 - v17;
  v154 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v154);
  v155 = (&v154 - v18);
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v157 = &v154 - v25;
  __chkstk_darwin(v24);
  v27 = &v154 - v26;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v28 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  v29 = v20;
  v30 = *(v20 + 16);
  v163 = v28;
  v162 = v20 + 16;
  v161 = v30;
  v30(v27, v28, v19);
  v31 = sub_2CDFE0();
  v32 = sub_2CE670();
  v33 = os_log_type_enabled(v31, v32);
  v170 = v19;
  if (v33)
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v31, v32, "CommonDialogProvider#makePromptForConfirmationDialog", v34, 2u);
    v19 = v170;
  }

  v35 = *(v29 + 8);
  v165 = v29 + 8;
  v164 = v35;
  v35(v27, v19);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 72) = sub_2CCFB0();
  *(inited + 48) = v174;

  v37 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v180 = v37;
  if ((a2 != 0x657449616964656DLL || a3 != 0xEA0000000000736DLL) && (sub_2CEEA0() & 1) == 0)
  {
    v157 = v8[2];
    v46 = v8[13];
    v47 = v8[14];
    v179 = v171;
    v48 = v171;
    sub_20410(&unk_3530B0, &qword_2D2270);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v178 = 0;
      v176 = 0u;
      v177 = 0u;
    }

    v171 = v46;
    v158 = v37;
    v169 = 0x80000000002DDA60;
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v49 = qword_35F760;
    v50 = v168;
    sub_2CDFB0();
    v51 = v172;
    v52 = v160;
    v53 = v173;
    (*(v172 + 16))(v160, v50, v173);
    v54 = (*(v51 + 80) + 33) & ~*(v51 + 80);
    v55 = (v159 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = "catServiceExecute";
    *(v56 + 24) = 17;
    *(v56 + 32) = 2;
    (*(v51 + 32))(v56 + v54, v52, v53);
    v57 = (v56 + v55);
    v58 = v167;
    *v57 = v166;
    v57[1] = v58;

    v59 = sub_2CE9E0();
    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_2D0E40;
    *(v60 + 56) = &type metadata for String;
    v61 = sub_1087C();
    *(v60 + 32) = v171;
    *(v60 + 40) = v47;
    *(v60 + 96) = &type metadata for String;
    *(v60 + 104) = v61;
    *(v60 + 64) = v61;
    *(v60 + 72) = 0xD000000000000020;
    *(v60 + 80) = v169;

    LOBYTE(v152) = 2;
    sub_2CDF90(v59, &dword_0, v49, "catServiceExecute", 17, 2, v50, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v152, v60);

    v62 = swift_allocObject();
    *(v62 + 16) = sub_13D80;
    *(v62 + 24) = v56;
    v63 = v170;
    v161(v23, v163, v170);

    v64 = sub_2CDFE0();
    v65 = sub_2CE660();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v175[0] = swift_slowAlloc();
      *v66 = 136315394;
      *(v66 + 4) = sub_3F08(v171, v47, v175);
      *(v66 + 12) = 2080;
      v67 = v169;
      *(v66 + 14) = sub_3F08(0xD000000000000020, v169, v175);
      _os_log_impl(&dword_0, v64, v65, "Evaluating CAT family:%s id:%s...", v66, 0x16u);
      swift_arrayDestroy();

      v164(v23, v63);
    }

    else
    {

      v164(v23, v63);
      v67 = v169;
    }

    v175[0] = v171;
    v175[1] = v47;

    v181._countAndFlagsBits = 35;
    v181._object = 0xE100000000000000;
    sub_2CE350(v181);
    v182._countAndFlagsBits = 0xD000000000000020;
    v182._object = v67;
    sub_2CE350(v182);
    v75 = v175[0];
    v76 = v175[1];
    v77 = sub_2CB460();
    if (!v77)
    {
      sub_2CB180();
      v77 = sub_2CB170();
    }

    v78 = v77;
    v79 = swift_allocObject();
    v79[2] = v78;
    v79[3] = sub_13DB4;
    v79[4] = v62;
    v80 = sub_2CB180();
    __chkstk_darwin(v80);
    v81 = v158;
    *(&v154 - 10) = v157;
    *(&v154 - 9) = v81;
    *(&v154 - 8) = v174;
    *(&v154 - 7) = &v176;
    *(&v154 - 6) = 0;
    *(&v154 - 5) = v75;
    v151 = v76;
    v152 = sub_3E06C;
    v153 = v79;

    sub_2CB0F0();

    (*(v172 + 8))(v168, v173);
    goto LABEL_84;
  }

  v38 = [a4 itemToConfirm];
  sub_2CEC00();
  swift_unknownObjectRelease();
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  if (!swift_dynamicCast())
  {
    v44 = 0;
    v45 = 0;
    v39 = 0;
    v42 = 0;
    v168 = 0;
    goto LABEL_41;
  }

  v39 = v175[0];
  v40 = [v175[0] artist];
  if (v40)
  {
    v41 = v40;
    v42 = sub_2CE270();
    v168 = v43;
  }

  else
  {
    v42 = 0;
    v168 = 0;
  }

  v68 = [v39 title];
  if (!v68)
  {
    if (v168)
    {
      sub_2CE2B0();
LABEL_28:
      if (!v74)
      {
        goto LABEL_40;
      }

      goto LABEL_35;
    }

LABEL_38:
    v44 = 0;
    v45 = 0;
    v168 = 0;
    goto LABEL_41;
  }

  v69 = v68;
  sub_2CE270();

  v70 = sub_2CE2B0();
  v72 = v71;

  if (!v168)
  {
    if (v72)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v73 = sub_2CE2B0();
  if (!v72)
  {
    goto LABEL_28;
  }

  if (!v74)
  {
LABEL_35:

    goto LABEL_36;
  }

  if (v70 != v73 || v72 != v74)
  {
    v85 = sub_2CEEA0();

    if (v85)
    {
      goto LABEL_40;
    }

LABEL_36:
    v82 = [v39 title];
    if (v82)
    {
      v83 = v82;
      v44 = sub_2CE270();
      v45 = v84;

      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_40:
  v44 = 0;
  v45 = 0;
LABEL_41:
  objc_opt_self();
  v86 = swift_dynamicCastObjCClass();
  v156 = v39;
  if (!v86)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v93 = 0xE300000000000000;
      v94 = 4473921;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v93 = 0xE600000000000000;
        v94 = 0x484352414553;
      }

      else
      {
        objc_opt_self();
        v145 = swift_dynamicCastObjCClass();
        if (!v145)
        {

          v147 = sub_2CB850();
          sub_124424();
          v148 = swift_allocError();
          (*(*(v147 - 8) + 104))(v149, enum case for PlaybackCode.ceGE10(_:), v147);
          v150 = v155;
          *v155 = v148;
          swift_storeEnumTagMultiPayload();
          v166(v150);

          v141 = &unk_3519A0;
          v142 = &qword_2D0980;
          v143 = v150;
          return sub_30B8(v143, v141, v142);
        }

        v146 = [v145 affinityType];
        if (v146 == &dword_0 + 1)
        {
          v93 = 0xE400000000000000;
          v94 = 1162561868;
        }

        else
        {
          v93 = 0xE700000000000000;
          if (v146 == &dword_0 + 2)
          {
            v94 = 0x454B494C534944;
          }

          else
          {
            v94 = 0x4E574F4E4B4E55;
          }
        }
      }
    }

    goto LABEL_68;
  }

  v87 = v86;
  v155 = v44;
  v88 = [v86 mediaSearch];
  if (!v88)
  {
    goto LABEL_54;
  }

  v89 = v88;
  v90 = [v88 genreNames];

  if (v90)
  {
    v91 = sub_2CE410();

    if (v91[2])
    {
      v92 = v91[4];
      v90 = v91[5];

      if (!v39)
      {
        goto LABEL_60;
      }

LABEL_55:
      v95 = [v39 privateMediaItemValueData];
      if (v95)
      {
        v96 = v95;
        v97 = [v95 provider];

        if (v97)
        {
          v98 = sub_2CE270();
          v100 = v99;

          v101 = HIBYTE(v100) & 0xF;
          if ((v100 & 0x2000000000000000) == 0)
          {
            v101 = v98 & 0xFFFFFFFFFFFFLL;
          }

          if (v101)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_60;
    }

LABEL_54:
    v92 = 0;
    v90 = 0;
    if (!v39)
    {
      goto LABEL_60;
    }

    goto LABEL_55;
  }

  v92 = 0;
  if (v39)
  {
    goto LABEL_55;
  }

LABEL_60:
  if (!_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v87, &off_32F160))
  {

    goto LABEL_67;
  }

LABEL_61:
  if (!v90)
  {
LABEL_67:
    v93 = 0xE400000000000000;
    v94 = 1497451600;
    v44 = v155;
    goto LABEL_68;
  }

  v102 = HIBYTE(v90) & 0xF;
  if ((v90 & 0x2000000000000000) == 0)
  {
    v102 = v92 & 0xFFFFFFFFFFFFLL;
  }

  v44 = v155;
  if (v102)
  {

    v42 = 0;
    v103 = 1;
    v93 = 0xE400000000000000;
    v168 = 0xE000000000000000;
    v94 = 1497451600;
    goto LABEL_70;
  }

  v93 = 0xE400000000000000;
  v94 = 1497451600;
LABEL_68:
  if (!v45)
  {
    sub_236110(0x436F54656C746974, 0xEE006D7269666E6FLL, v175);
    sub_30B8(v175, &qword_34CEA0, &qword_2D0FC0);
    v103 = 0;
    goto LABEL_72;
  }

  v103 = 0;
  v90 = v45;
  v92 = v44;
LABEL_70:
  *(&v177 + 1) = &type metadata for String;
  *&v176 = v92;
  *(&v176 + 1) = v90;
  sub_E2DC(&v176, v175);
  v104 = v180;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v179 = v104;
  sub_237690(v175, 0x436F54656C746974, 0xEE006D7269666E6FLL, isUniquelyReferenced_nonNull_native);
  v180 = v179;
LABEL_72:
  if (v168)
  {
    *(&v177 + 1) = &type metadata for String;
    *&v176 = v42;
    *(&v176 + 1) = v168;
    sub_E2DC(&v176, v175);
    v106 = v180;
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v179 = v106;
    sub_237690(v175, 0x6F54747369747261, 0xEF6D7269666E6F43, v107);
    v108 = v179;
  }

  else
  {
    sub_236110(0x6F54747369747261, 0xEF6D7269666E6F43, &v176);
    sub_30B8(&v176, &qword_34CEA0, &qword_2D0FC0);
    v108 = v180;
  }

  *(&v177 + 1) = &type metadata for Bool;
  LOBYTE(v176) = v103;
  sub_E2DC(&v176, v175);
  v109 = swift_isUniquelyReferenced_nonNull_native();
  v179 = v108;
  sub_237690(v175, 0x5265726E65477369, 0xEC0000006F696461, v109);
  v110 = v179;
  v180 = v179;
  *(&v177 + 1) = &type metadata for String;
  *&v176 = v94;
  *(&v176 + 1) = v93;
  sub_E2DC(&v176, v175);
  v111 = swift_isUniquelyReferenced_nonNull_native();
  v179 = v110;
  sub_237690(v175, 0x7954746E65746E69, 0xEA00000000006570, v111);
  v168 = v179;
  v155 = v8[2];
  v112 = v8[14];
  v154 = v8[13];
  v179 = v171;
  v113 = v171;
  sub_20410(&unk_3530B0, &qword_2D2270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v178 = 0;
    v176 = 0u;
    v177 = 0u;
  }

  v171 = 0x80000000002DDA90;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v114 = qword_35F760;
  v115 = v169;
  sub_2CDFB0();
  v116 = v172;
  v117 = v160;
  v118 = v173;
  (*(v172 + 16))(v160, v115, v173);
  v119 = (*(v116 + 80) + 33) & ~*(v116 + 80);
  v120 = (v159 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v121 = swift_allocObject();
  *(v121 + 16) = "catServiceExecute";
  *(v121 + 24) = 17;
  *(v121 + 32) = 2;
  (*(v116 + 32))(v121 + v119, v117, v118);
  v122 = (v121 + v120);
  v123 = v167;
  *v122 = v166;
  v122[1] = v123;

  v124 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_2D0E40;
  *(v125 + 56) = &type metadata for String;
  v126 = sub_1087C();
  v127 = v154;
  *(v125 + 32) = v154;
  *(v125 + 40) = v112;
  *(v125 + 96) = &type metadata for String;
  *(v125 + 104) = v126;
  *(v125 + 64) = v126;
  *(v125 + 72) = 0xD000000000000011;
  *(v125 + 80) = v171;

  LOBYTE(v152) = 2;
  sub_2CDF90(v124, &dword_0, v114, "catServiceExecute", 17, 2, v115, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v152, v125);

  v128 = swift_allocObject();
  *(v128 + 16) = sub_13D80;
  *(v128 + 24) = v121;
  v129 = v157;
  v130 = v170;
  v161(v157, v163, v170);

  v131 = sub_2CDFE0();
  v132 = sub_2CE660();

  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v175[0] = swift_slowAlloc();
    *v133 = 136315394;
    *(v133 + 4) = sub_3F08(v127, v112, v175);
    *(v133 + 12) = 2080;
    *(v133 + 14) = sub_3F08(0xD000000000000011, v171, v175);
    _os_log_impl(&dword_0, v131, v132, "Evaluating CAT family:%s id:%s...", v133, 0x16u);
    swift_arrayDestroy();
  }

  v164(v129, v130);
  v175[0] = v127;
  v175[1] = v112;

  v183._countAndFlagsBits = 35;
  v183._object = 0xE100000000000000;
  sub_2CE350(v183);
  v184._countAndFlagsBits = 0xD000000000000011;
  v184._object = v171;
  sub_2CE350(v184);
  v134 = v175[0];
  v135 = v175[1];
  v136 = sub_2CB460();
  if (!v136)
  {
    sub_2CB180();
    v136 = sub_2CB170();
  }

  v137 = v136;
  v138 = swift_allocObject();
  v138[2] = v137;
  v138[3] = sub_13DB4;
  v138[4] = v128;
  v139 = sub_2CB180();
  __chkstk_darwin(v139);
  v140 = v168;
  *(&v154 - 10) = v155;
  *(&v154 - 9) = v140;
  *(&v154 - 8) = v174;
  *(&v154 - 7) = &v176;
  *(&v154 - 6) = 0;
  *(&v154 - 5) = v134;
  v151 = v135;
  v152 = sub_3E06C;
  v153 = v138;

  sub_2CB0F0();

  (*(v172 + 8))(v169, v173);
LABEL_84:
  v141 = &qword_34C6C0;
  v142 = &qword_2D0710;
  v143 = &v176;
  return sub_30B8(v143, v141, v142);
}

uint64_t sub_284914(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5)
{
  v63 = a5;
  v58 = a4;
  v65 = a1;
  v62 = sub_2CE000();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v55 - v14;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x6574656D61726170;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v64 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v60 = v5[2];
  v17 = v5[13];
  v68 = v5[14];
  v72 = 0;
  memset(v71, 0, sizeof(v71));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = v15;
  v20 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v21 = v9;
  v22 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = "catServiceExecute";
  *(v23 + 24) = 17;
  *(v23 + 32) = 2;
  v66 = v10;
  v24 = *(v10 + 32);
  v67 = v21;
  v24(v23 + v20, v13, v21);
  v25 = (v23 + v22);
  v26 = v63;
  *v25 = v58;
  v25[1] = v26;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v57 = v17;
  v30 = v68;
  *(v28 + 32) = v17;
  *(v28 + 40) = v30;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD00000000000001BLL;
  v58 = 0x80000000002E0D90;
  *(v28 + 80) = 0x80000000002E0D90;

  LOBYTE(v53) = 2;
  v63 = v19;
  sub_2CDF90(v27, &dword_0, v18, "catServiceExecute", 17, 2, v19, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v53, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v23;
  v56 = v31;
  v32 = qword_34BF58;

  v33 = v30;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = v62;
  v35 = sub_3ED0(v62, static Logger.default);
  swift_beginAccess();
  v36 = v61;
  v37 = v59;
  (*(v61 + 16))(v59, v35, v34);

  v38 = sub_2CDFE0();
  v39 = sub_2CE660();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v40 = 136315394;
    v41 = v57;
    *(v40 + 4) = sub_3F08(v57, v68, &v69);
    *(v40 + 12) = 2080;
    v42 = v58;
    *(v40 + 14) = sub_3F08(0xD00000000000001BLL, v58, &v69);
    _os_log_impl(&dword_0, v38, v39, "Evaluating CAT family:%s id:%s...", v40, 0x16u);
    swift_arrayDestroy();
    v33 = v68;

    (*(v36 + 8))(v37, v34);
    v43 = v66;
  }

  else
  {

    (*(v36 + 8))(v37, v34);
    v43 = v66;
    v42 = v58;
    v41 = v57;
  }

  v69 = v41;
  v70 = v33;

  v73._countAndFlagsBits = 35;
  v73._object = 0xE100000000000000;
  sub_2CE350(v73);
  v74._countAndFlagsBits = 0xD00000000000001BLL;
  v74._object = v42;
  sub_2CE350(v74);
  v45 = v69;
  v44 = v70;
  v46 = sub_2CB460();
  if (!v46)
  {
    sub_2CB180();
    v46 = sub_2CB170();
  }

  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = sub_13DB4;
  v48[4] = v56;
  v49 = sub_2CB180();
  __chkstk_darwin(v49);
  v50 = v64;
  *(&v55 - 10) = v60;
  *(&v55 - 9) = v50;
  *(&v55 - 8) = v65;
  *(&v55 - 7) = v71;
  *(&v55 - 6) = 0;
  *(&v55 - 5) = v45;
  v52 = v44;
  v53 = sub_3E06C;
  v54 = v48;

  sub_2CB0F0();

  (*(v43 + 8))(v63, v67);
  return sub_30B8(v71, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_2850FC(uint64_t a1, char *a2, char *a3)
{
  v51 = a2;
  v56 = a1;
  v5 = sub_2CE000();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v59 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v47 - v12;
  v14 = sub_112C0(_swiftEmptyArrayStorage);
  v54 = v3[2];
  v55 = v14;
  v15 = v3[13];
  v48 = v3[14];
  v60 = 0x80000000002E0D60;
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v57 = v8;
  v58 = v7;
  (*(v8 + 32))(v19 + v17, v11, v7);
  v20 = (v19 + v18);
  *v20 = v51;
  v20[1] = a3;

  v21 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v50 = v15;
  *(v22 + 32) = v15;
  v24 = v48;
  *(v22 + 40) = v48;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = 0xD000000000000023;
  *(v22 + 80) = v60;

  LOBYTE(v45) = 2;
  v51 = v13;
  sub_2CDF90(v21, &dword_0, v16, "catServiceExecute", 17, 2, v13, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v45, v22);

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13D80;
  *(v25 + 24) = v19;
  v49 = v25;
  v26 = qword_34BF58;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v53;
  v28 = sub_3ED0(v53, static Logger.default);
  swift_beginAccess();
  v29 = v52;
  v30 = v59;
  (*(v52 + 16))(v59, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = v50;
    *(v33 + 4) = sub_3F08(v50, v24, &v61);
    *(v33 + 12) = 2080;
    v35 = v60;
    *(v33 + 14) = sub_3F08(0xD000000000000023, v60, &v61);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v59, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v35 = v60;
    v34 = v50;
  }

  v61 = v34;
  v62 = v24;

  v65._countAndFlagsBits = 35;
  v65._object = 0xE100000000000000;
  sub_2CE350(v65);
  v66._countAndFlagsBits = 0xD000000000000023;
  v66._object = v35;
  sub_2CE350(v66);
  v37 = v61;
  v36 = v62;
  v38 = sub_2CB460();
  if (!v38)
  {
    sub_2CB180();
    v38 = sub_2CB170();
  }

  v39 = v38;
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = sub_13DB4;
  v40[4] = v49;
  v41 = sub_2CB180();
  __chkstk_darwin(v41);
  v42 = v55;
  *(&v47 - 10) = v54;
  *(&v47 - 9) = v42;
  *(&v47 - 8) = v56;
  *(&v47 - 7) = v63;
  *(&v47 - 6) = 0;
  *(&v47 - 5) = v37;
  v44 = v36;
  v45 = sub_3E06C;
  v46 = v40;

  sub_2CB0F0();

  (*(v57 + 8))(v51, v58);
  return sub_30B8(v63, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_2857C8(uint64_t a1, char *a2, char *a3)
{
  v51 = a2;
  v56 = a1;
  v5 = sub_2CE000();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v59 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v47 - v12;
  v14 = sub_112C0(_swiftEmptyArrayStorage);
  v54 = v3[2];
  v55 = v14;
  v15 = v3[13];
  v48 = v3[14];
  v60 = 0x80000000002E0D40;
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v57 = v8;
  v58 = v7;
  (*(v8 + 32))(v19 + v17, v11, v7);
  v20 = (v19 + v18);
  *v20 = v51;
  v20[1] = a3;

  v21 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v50 = v15;
  *(v22 + 32) = v15;
  v24 = v48;
  *(v22 + 40) = v48;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = 0xD000000000000014;
  *(v22 + 80) = v60;

  LOBYTE(v45) = 2;
  v51 = v13;
  sub_2CDF90(v21, &dword_0, v16, "catServiceExecute", 17, 2, v13, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v45, v22);

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13D80;
  *(v25 + 24) = v19;
  v49 = v25;
  v26 = qword_34BF58;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v53;
  v28 = sub_3ED0(v53, static Logger.default);
  swift_beginAccess();
  v29 = v52;
  v30 = v59;
  (*(v52 + 16))(v59, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = v50;
    *(v33 + 4) = sub_3F08(v50, v24, &v61);
    *(v33 + 12) = 2080;
    v35 = v60;
    *(v33 + 14) = sub_3F08(0xD000000000000014, v60, &v61);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v59, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v35 = v60;
    v34 = v50;
  }

  v61 = v34;
  v62 = v24;

  v65._countAndFlagsBits = 35;
  v65._object = 0xE100000000000000;
  sub_2CE350(v65);
  v66._countAndFlagsBits = 0xD000000000000014;
  v66._object = v35;
  sub_2CE350(v66);
  v37 = v61;
  v36 = v62;
  v38 = sub_2CB460();
  if (!v38)
  {
    sub_2CB180();
    v38 = sub_2CB170();
  }

  v39 = v38;
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = sub_13DB4;
  v40[4] = v49;
  v41 = sub_2CB180();
  __chkstk_darwin(v41);
  v42 = v55;
  *(&v47 - 10) = v54;
  *(&v47 - 9) = v42;
  *(&v47 - 8) = v56;
  *(&v47 - 7) = v63;
  *(&v47 - 6) = 0;
  *(&v47 - 5) = v37;
  v44 = v36;
  v45 = sub_3E06C;
  v46 = v40;

  sub_2CB0F0();

  (*(v57 + 8))(v51, v58);
  return sub_30B8(v63, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_285E94(unint64_t a1, char *a2)
{
  v49 = a1;
  v50 = a2;
  v3 = sub_2CE000();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v57 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CDFD0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v46 - v10;
  v12 = sub_112C0(_swiftEmptyArrayStorage);
  v53 = v2[2];
  v54 = v12;
  v13 = v2[13];
  v46 = v2[14];
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v14 = qword_35F760;
  sub_2CDFB0();
  (*(v6 + 16))(v9, v11, v5);
  v15 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = "catServiceExecute";
  *(v17 + 24) = 17;
  *(v17 + 32) = 2;
  v55 = v6;
  v56 = v5;
  (*(v6 + 32))(v17 + v15, v9, v5);
  v18 = (v17 + v16);
  v19 = v50;
  *v18 = v49;
  v18[1] = v19;

  v20 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2D0E40;
  *(v21 + 56) = &type metadata for String;
  v22 = sub_1087C();
  v48 = v13;
  *(v21 + 32) = v13;
  v23 = v46;
  *(v21 + 40) = v46;
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v22;
  *(v21 + 64) = v22;
  *(v21 + 72) = 0xD000000000000017;
  v49 = 0x80000000002E0D20;
  *(v21 + 80) = 0x80000000002E0D20;

  LOBYTE(v44) = 2;
  v50 = v11;
  sub_2CDF90(v20, &dword_0, v14, "catServiceExecute", 17, 2, v11, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v44, v21);

  v24 = swift_allocObject();
  *(v24 + 16) = sub_13D80;
  *(v24 + 24) = v17;
  v47 = v24;
  v25 = qword_34BF58;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = v52;
  v27 = sub_3ED0(v52, static Logger.default);
  swift_beginAccess();
  v28 = v51;
  v29 = v57;
  (*(v51 + 16))(v57, v27, v26);

  v30 = sub_2CDFE0();
  v31 = sub_2CE660();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v32 = 136315394;
    v33 = v48;
    *(v32 + 4) = sub_3F08(v48, v23, &v58);
    *(v32 + 12) = 2080;
    v34 = v49;
    *(v32 + 14) = sub_3F08(0xD000000000000017, v49, &v58);
    _os_log_impl(&dword_0, v30, v31, "Evaluating CAT family:%s id:%s...", v32, 0x16u);
    swift_arrayDestroy();

    (*(v28 + 8))(v57, v26);
  }

  else
  {

    (*(v28 + 8))(v29, v26);
    v33 = v48;
    v34 = v49;
  }

  v58 = v33;
  v59 = v23;

  v62._countAndFlagsBits = 35;
  v62._object = 0xE100000000000000;
  sub_2CE350(v62);
  v63._countAndFlagsBits = 0xD000000000000017;
  v63._object = v34;
  sub_2CE350(v63);
  v36 = v58;
  v35 = v59;
  v37 = sub_2CB460();
  if (!v37)
  {
    sub_2CB180();
    v37 = sub_2CB170();
  }

  v38 = v37;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = sub_13DB4;
  v39[4] = v47;
  v40 = sub_2CB180();
  __chkstk_darwin(v40);
  v41 = v54;
  *(&v46 - 10) = v53;
  *(&v46 - 9) = v41;
  *(&v46 - 8) = 0;
  *(&v46 - 7) = v60;
  *(&v46 - 6) = 0;
  *(&v46 - 5) = v36;
  v43 = v35;
  v44 = sub_3E06C;
  v45 = v39;

  sub_2CB0F0();

  (*(v55 + 8))(v50, v56);
  return sub_30B8(v60, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_28653C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v61 = a1;
  v5 = sub_2CE000();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v55 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v58 = v3[2];
  v14 = v3[13];
  v50 = v3[14];
  v49 = 0x80000000002E0D00;
  v59 = sub_112C0(_swiftEmptyArrayStorage);
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v15 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v16 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = "catServiceExecute";
  *(v18 + 24) = 17;
  *(v18 + 32) = 2;
  v60 = v8;
  v19 = *(v8 + 32);
  v62 = v7;
  v19(v18 + v16, v11);
  v20 = (v18 + v17);
  *v20 = v54;
  v20[1] = a3;

  v21 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v54 = v14;
  v24 = v50;
  *(v22 + 32) = v14;
  *(v22 + 40) = v24;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = 0xD000000000000011;
  v25 = v49;
  *(v22 + 80) = v49;

  LOBYTE(v47) = 2;
  v52 = v13;
  sub_2CDF90(v21, &dword_0, v15, "catServiceExecute", 17, 2, v13, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v47, v22);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v18;
  v51 = v26;
  v27 = qword_34BF58;
  v53 = v18;

  v28 = v24;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v32 = v55;
  v31 = v56;
  (*(v56 + 16))(v55, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v54;
    *(v35 + 4) = sub_3F08(v54, v28, &v63);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0xD000000000000011, v25, &v63);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v32, v29);
    v37 = v60;
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v37 = v60;
    v36 = v54;
  }

  v63 = v36;
  v64 = v28;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000011;
  v68._object = v25;
  sub_2CE350(v68);
  v39 = v63;
  v38 = v64;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v51;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v44 = v59;
  *(&v49 - 10) = v58;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v61;
  *(&v49 - 7) = v65;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v39;
  v46 = v38;
  v47 = sub_3E06C;
  v48 = v42;

  sub_2CB0F0();

  (*(v37 + 8))(v52, v62);
  return sub_30B8(v65, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_286C18(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v61 = a1;
  v5 = sub_2CE000();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v55 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v58 = v3[2];
  v14 = v3[13];
  v50 = v3[14];
  v49 = 0x80000000002E0CE0;
  v59 = sub_112C0(_swiftEmptyArrayStorage);
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v15 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v16 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = "catServiceExecute";
  *(v18 + 24) = 17;
  *(v18 + 32) = 2;
  v60 = v8;
  v19 = *(v8 + 32);
  v62 = v7;
  v19(v18 + v16, v11);
  v20 = (v18 + v17);
  *v20 = v54;
  v20[1] = a3;

  v21 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v54 = v14;
  v24 = v50;
  *(v22 + 32) = v14;
  *(v22 + 40) = v24;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = 0xD000000000000013;
  v25 = v49;
  *(v22 + 80) = v49;

  LOBYTE(v47) = 2;
  v52 = v13;
  sub_2CDF90(v21, &dword_0, v15, "catServiceExecute", 17, 2, v13, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v47, v22);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v18;
  v51 = v26;
  v27 = qword_34BF58;
  v53 = v18;

  v28 = v24;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v32 = v55;
  v31 = v56;
  (*(v56 + 16))(v55, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v54;
    *(v35 + 4) = sub_3F08(v54, v28, &v63);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0xD000000000000013, v25, &v63);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v32, v29);
    v37 = v60;
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v37 = v60;
    v36 = v54;
  }

  v63 = v36;
  v64 = v28;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000013;
  v68._object = v25;
  sub_2CE350(v68);
  v39 = v63;
  v38 = v64;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v51;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v44 = v59;
  *(&v49 - 10) = v58;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v61;
  *(&v49 - 7) = v65;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v39;
  v46 = v38;
  v47 = sub_3E06C;
  v48 = v42;

  sub_2CB0F0();

  (*(v37 + 8))(v52, v62);
  return sub_30B8(v65, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_2872F4(uint64_t a1, char *a2, char *a3)
{
  v50 = a2;
  v55 = a1;
  v5 = sub_2CE000();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v58 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v47 - v12;
  v14 = sub_112C0(_swiftEmptyArrayStorage);
  v53 = v3[2];
  v54 = v14;
  v15 = v3[13];
  v48 = v3[14];
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v56 = v8;
  v57 = v7;
  (*(v8 + 32))(v19 + v17, v11, v7);
  v20 = (v19 + v18);
  *v20 = v50;
  v20[1] = a3;

  v21 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v49 = v15;
  *(v22 + 32) = v15;
  v24 = v48;
  *(v22 + 40) = v48;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = 0x416D7269666E6F43;
  *(v22 + 80) = 0xEA00000000007070;

  LOBYTE(v45) = 2;
  v50 = v13;
  sub_2CDF90(v21, &dword_0, v16, "catServiceExecute", 17, 2, v13, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v45, v22);

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13D80;
  *(v25 + 24) = v19;
  v26 = qword_34BF58;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v52;
  v28 = sub_3ED0(v52, static Logger.default);
  swift_beginAccess();
  v29 = v51;
  v30 = v58;
  (*(v51 + 16))(v58, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v47 = v25;
    v59 = v34;
    *v33 = 136315394;
    v35 = v49;
    *(v33 + 4) = sub_3F08(v49, v24, &v59);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_3F08(0x416D7269666E6F43, 0xEA00000000007070, &v59);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();
    v25 = v47;

    (*(v29 + 8))(v58, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v35 = v49;
  }

  v59 = v35;
  v60 = v24;

  v63._countAndFlagsBits = 35;
  v63._object = 0xE100000000000000;
  sub_2CE350(v63);
  v64._countAndFlagsBits = 0x416D7269666E6F43;
  v64._object = 0xEA00000000007070;
  sub_2CE350(v64);
  v36 = v59;
  v37 = v60;
  v38 = sub_2CB460();
  if (!v38)
  {
    sub_2CB180();
    v38 = sub_2CB170();
  }

  v39 = v38;
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = sub_13DB4;
  v40[4] = v25;
  v41 = sub_2CB180();
  __chkstk_darwin(v41);
  v42 = v54;
  *(&v47 - 10) = v53;
  *(&v47 - 9) = v42;
  *(&v47 - 8) = v55;
  *(&v47 - 7) = v61;
  *(&v47 - 6) = 0;
  *(&v47 - 5) = v36;
  v44 = v37;
  v45 = sub_3E06C;
  v46 = v40;

  sub_2CB0F0();

  (*(v56 + 8))(v50, v57);
  return sub_30B8(v61, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_2879AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v61 = a4;
  v60 = a3;
  v67 = a1;
  v65 = sub_2CE000();
  v7 = *(v65 - 8);
  __chkstk_darwin(v65);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  v12 = __chkstk_darwin(v10);
  v13 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v70 = &v58 - v14;
  v15 = sub_112C0(_swiftEmptyArrayStorage);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = a2;
    if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v17, &off_32F280))
    {
      *(&v77 + 1) = &type metadata for Bool;
      LOBYTE(v76) = 1;
      sub_E2DC(&v76, v73);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v15;
      sub_237690(v73, 0xD000000000000012, 0x80000000002E0CC0, isUniquelyReferenced_nonNull_native);

      v15 = v74;
    }

    else
    {
    }
  }

  v62 = v5[2];
  v20 = v5[13];
  v68 = v5[14];
  v79 = a2;
  v21 = a2;
  sub_20410(&unk_3530B0, &qword_2D2270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  v69 = v20;
  v63 = v9;
  v64 = v7;
  v66 = v15;
  v59 = 0x80000000002E0CA0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  v23 = v70;
  sub_2CDFB0();
  v24 = v71;
  v25 = v72;
  (*(v71 + 16))(v13, v23, v72);
  v26 = (*(v24 + 80) + 33) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = "catServiceExecute";
  *(v27 + 24) = 17;
  *(v27 + 32) = 2;
  (*(v24 + 32))(v27 + v26, v13, v25);
  v28 = (v27 + ((v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  v29 = v61;
  *v28 = v60;
  v28[1] = v29;

  v30 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2D0E40;
  *(v31 + 56) = &type metadata for String;
  v32 = sub_1087C();
  v33 = v68;
  *(v31 + 32) = v69;
  *(v31 + 40) = v33;
  *(v31 + 96) = &type metadata for String;
  *(v31 + 104) = v32;
  *(v31 + 64) = v32;
  *(v31 + 72) = 0xD000000000000017;
  v34 = v59;
  *(v31 + 80) = v59;

  LOBYTE(v56) = 2;
  sub_2CDF90(v30, &dword_0, v22, "catServiceExecute", 17, 2, v23, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v56, v31);

  v35 = swift_allocObject();
  *(v35 + 16) = sub_13D80;
  *(v35 + 24) = v27;
  v60 = v35;
  v36 = qword_34BF58;
  v61 = v27;

  v37 = v34;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = v65;
  v39 = sub_3ED0(v65, static Logger.default);
  swift_beginAccess();
  v40 = v64;
  v41 = v63;
  (*(v64 + 16))(v63, v39, v38);

  v42 = sub_2CDFE0();
  v43 = sub_2CE660();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v44 = 136315394;
    v45 = v69;
    *(v44 + 4) = sub_3F08(v69, v68, &v74);
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_3F08(0xD000000000000017, v37, &v74);
    _os_log_impl(&dword_0, v42, v43, "Evaluating CAT family:%s id:%s...", v44, 0x16u);
    swift_arrayDestroy();
    v33 = v68;

    (*(v40 + 8))(v41, v38);
  }

  else
  {

    (*(v40 + 8))(v41, v38);
    v45 = v69;
  }

  v74 = v45;
  v75 = v33;

  v80._countAndFlagsBits = 35;
  v80._object = 0xE100000000000000;
  sub_2CE350(v80);
  v81._countAndFlagsBits = 0xD000000000000017;
  v81._object = v37;
  sub_2CE350(v81);
  v47 = v74;
  v46 = v75;
  v48 = sub_2CB460();
  if (!v48)
  {
    sub_2CB180();
    v48 = sub_2CB170();
  }

  v49 = v48;
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = sub_13DB4;
  v50[4] = v60;
  v51 = sub_2CB180();
  __chkstk_darwin(v51);
  v53 = v66;
  v52 = v67;
  *(&v58 - 10) = v62;
  *(&v58 - 9) = v53;
  *(&v58 - 8) = v52;
  *(&v58 - 7) = &v76;
  *(&v58 - 6) = 0;
  *(&v58 - 5) = v47;
  v55 = v46;
  v56 = sub_3E06C;
  v57 = v50;

  sub_2CB0F0();

  (*(v71 + 8))(v70, v72);
  return sub_30B8(&v76, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_2881BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v57 = a1;
  v58 = a2;
  v6 = sub_2CE000();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v60 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v54 = v4[2];
  v15 = v4[13];
  v48 = v4[14];
  v55 = sub_112C0(_swiftEmptyArrayStorage);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v17 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v56 = v9;
  v20 = *(v9 + 32);
  v59 = v8;
  v20(v19 + v17, v12);
  v21 = (v19 + v18);
  *v21 = v51;
  v21[1] = a4;

  v22 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v51 = v15;
  *(v23 + 32) = v15;
  v25 = v48;
  *(v23 + 40) = v48;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = 0x6F656D6954707041;
  *(v23 + 80) = 0xEA00000000007475;

  LOBYTE(v46) = 2;
  v50 = v14;
  sub_2CDF90(v22, &dword_0, v16, "catServiceExecute", 17, 2, v14, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v46, v23);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v19;
  v49 = v26;
  v27 = qword_34BF58;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = v53;
  v29 = sub_3ED0(v53, static Logger.default);
  swift_beginAccess();
  v30 = v52;
  v31 = v60;
  (*(v52 + 16))(v60, v29, v28);

  v32 = sub_2CDFE0();
  v33 = sub_2CE660();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = v51;
    *(v34 + 4) = sub_3F08(v51, v25, &v61);
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_3F08(0x6F656D6954707041, 0xEA00000000007475, &v61);
    _os_log_impl(&dword_0, v32, v33, "Evaluating CAT family:%s id:%s...", v34, 0x16u);
    swift_arrayDestroy();

    (*(v30 + 8))(v60, v28);
  }

  else
  {

    (*(v30 + 8))(v31, v28);
    v35 = v51;
  }

  v61 = v35;
  v62 = v25;

  v63._countAndFlagsBits = 35;
  v63._object = 0xE100000000000000;
  sub_2CE350(v63);
  v64._countAndFlagsBits = 0x6F656D6954707041;
  v64._object = 0xEA00000000007475;
  sub_2CE350(v64);
  v37 = v61;
  v36 = v62;
  v38 = sub_2CB460();
  if (!v38)
  {
    sub_2CB180();
    v38 = sub_2CB170();
  }

  v39 = v38;
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = sub_13DB4;
  v40[4] = v49;
  v41 = sub_2CB180();
  __chkstk_darwin(v41);
  v42 = v55;
  *(&v48 - 10) = v54;
  *(&v48 - 9) = v42;
  v43 = v58;
  *(&v48 - 8) = v57;
  *(&v48 - 7) = v43;
  *(&v48 - 6) = 0;
  *(&v48 - 5) = v37;
  v45 = v36;
  v46 = sub_3E06C;
  v47 = v40;

  sub_2CB0F0();

  return (*(v56 + 8))(v50, v59);
}

void sub_288840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_28B888(a3, v9);
  if (v10)
  {
    sub_20410(&unk_3530B0, &qword_2D2270);
    if (swift_dynamicCast())
    {
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_30B8(v9, &qword_34C6C0, &qword_2D0710);
    v7 = 0;
  }

  sub_28B8F8(v7, a4, a5);
}

uint64_t sub_28891C(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v6);
  v8 = (&v87 - v7);
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2CDFD0();
  v98 = *(v99 - 8);
  v13 = __chkstk_darwin(v99);
  v95 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v14;
  __chkstk_darwin(v13);
  v16 = &v87 - v15;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    sub_10C40();
    v26 = swift_allocError();
    *v27 = 0xD000000000000023;
    v27[1] = 0x80000000002E0C10;
    *v8 = v26;
    swift_storeEnumTagMultiPayload();
    a2(v8);
    v28 = &unk_3519A0;
    v29 = &qword_2D0980;
    v30 = v8;
    return sub_30B8(v30, v28, v29);
  }

  v89 = a2;
  v90 = a3;
  v91 = v12;
  v92 = v10;
  v93 = v9;
  v94 = a1;
  sub_1D15EC();
  v18 = v17;
  sub_20410(&qword_356898, &qword_2D8DB0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000016;
  *(inited + 16) = xmmword_2D5F90;
  *(inited + 40) = 0x80000000002DE7E0;
  if (v18)
  {
    v20 = sub_2CE2B0();
    v22 = v21;
    v23 = sub_2CE2B0();
    if (v22)
    {
      if (v20 == v23 && v22 == v24)
      {
        v25 = 1;
      }

      else
      {
        v25 = sub_2CEEA0();
      }

      *(inited + 48) = v25 & 1;
      strcpy((inited + 56), "isStoryTelling");
      *(inited + 71) = -18;
      goto LABEL_13;
    }
  }

  else
  {
    sub_2CE2B0();
  }

  *(inited + 48) = 0;
  strcpy((inited + 56), "isStoryTelling");
  *(inited + 71) = -18;
  if (!v18)
  {
    sub_2CE2B0();
    goto LABEL_17;
  }

LABEL_13:
  v31 = sub_2CE2B0();
  v33 = v32;
  v34 = sub_2CE2B0();
  if (v33)
  {
    if (v31 == v34 && v33 == v35)
    {
      v36 = 1;
    }

    else
    {
      v36 = sub_2CEEA0();
    }

    *(inited + 72) = v36 & 1;
    strcpy((inited + 80), "isStorySleep");
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    goto LABEL_21;
  }

LABEL_17:

  *(inited + 72) = 0;
  strcpy((inited + 80), "isStorySleep");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  if (!v18)
  {
    sub_2CE2B0();
    goto LABEL_25;
  }

LABEL_21:
  v37 = sub_2CE2B0();
  v39 = v38;
  v40 = sub_2CE2B0();
  if (v39)
  {
    if (v37 == v40 && v39 == v41)
    {
      v42 = 1;
    }

    else
    {
      v42 = sub_2CEEA0();
    }

    *(inited + 96) = v42 & 1;
    *(inited + 104) = 0xD000000000000011;
    *(inited + 112) = 0x80000000002DE800;
    goto LABEL_29;
  }

LABEL_25:

  *(inited + 96) = 0;
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x80000000002DE800;
  if (!v18)
  {
    sub_2CE2B0();
    goto LABEL_33;
  }

LABEL_29:
  v43 = sub_2CE2B0();
  v45 = v44;
  v46 = sub_2CE2B0();
  if (v45)
  {
    if (v43 == v46 && v45 == v47)
    {
      v48 = 1;
    }

    else
    {
      v48 = sub_2CEEA0();
    }

    *(inited + 120) = v48 & 1;
    strcpy((inited + 128), "isWordOfTheDay");
    *(inited + 143) = -18;
    goto LABEL_37;
  }

LABEL_33:

  *(inited + 120) = 0;
  strcpy((inited + 128), "isWordOfTheDay");
  *(inited + 143) = -18;
  if (v18)
  {
LABEL_37:
    v50 = sub_2CE2B0();
    v52 = v51;

    v53 = sub_2CE2B0();
    if (v52)
    {
      if (v50 == v53 && v52 == v54)
      {

        v49 = 1;
      }

      else
      {
        v49 = sub_2CEEA0();
      }
    }

    else
    {
      v49 = 0;
    }

    goto LABEL_43;
  }

  sub_2CE2B0();
  v49 = 0;
LABEL_43:

  *(inited + 144) = v49 & 1;
  v55 = sub_8FF78(inited);
  swift_setDeallocating();
  sub_20410(&qword_3568A0, &qword_2D8DB8);
  swift_arrayDestroy();
  v88 = *(v96 + 16);
  v96 = sub_234764(v55);

  v102 = 0;
  memset(v101, 0, sizeof(v101));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v56 = qword_35F760;
  sub_2CDFB0();
  v57 = v16;
  v58 = v98;
  v59 = v95;
  v60 = v99;
  (*(v98 + 16))(v95, v57, v99);
  v61 = (*(v58 + 80) + 33) & ~*(v58 + 80);
  v62 = (v97 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 16) = "catServiceExecute";
  *(v63 + 24) = 17;
  *(v63 + 32) = 2;
  (*(v58 + 32))(v63 + v61, v59, v60);
  v64 = (v63 + v62);
  v65 = v90;
  *v64 = v89;
  v64[1] = v65;

  v66 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_2D0E40;
  *(v67 + 56) = &type metadata for String;
  v68 = sub_1087C();
  *(v67 + 32) = 0x6964654D79616C50;
  *(v67 + 40) = 0xEF746E65746E4961;
  *(v67 + 96) = &type metadata for String;
  *(v67 + 104) = v68;
  *(v67 + 64) = v68;
  *(v67 + 72) = 0xD000000000000013;
  *(v67 + 80) = 0x80000000002E02E0;
  LOBYTE(v85) = 2;
  v97 = v57;
  sub_2CDF90(v66, &dword_0, v56, "catServiceExecute", 17, 2, v57, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v85, v67);

  v69 = swift_allocObject();
  *(v69 + 16) = sub_13D80;
  *(v69 + 24) = v63;
  v70 = qword_34BF58;

  if (v70 != -1)
  {
    swift_once();
  }

  v71 = v93;
  v72 = sub_3ED0(v93, static Logger.default);
  swift_beginAccess();
  v73 = v92;
  v74 = v91;
  (*(v92 + 16))(v91, v72, v71);
  v75 = sub_2CDFE0();
  v76 = sub_2CE660();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v100[0] = swift_slowAlloc();
    *v77 = 136315394;
    *(v77 + 4) = sub_3F08(0x6964654D79616C50, 0xEF746E65746E4961, v100);
    *(v77 + 12) = 2080;
    *(v77 + 14) = sub_3F08(0xD000000000000013, 0x80000000002E02E0, v100);
    _os_log_impl(&dword_0, v75, v76, "Evaluating CAT family:%s id:%s...", v77, 0x16u);
    swift_arrayDestroy();
  }

  (*(v73 + 8))(v74, v71);
  v78 = sub_2CB460();
  if (!v78)
  {
    sub_2CB180();
    v78 = sub_2CB170();
  }

  v79 = v78;
  v80 = swift_allocObject();
  v80[2] = v79;
  v80[3] = sub_13DB4;
  v80[4] = v69;
  v81 = sub_2CB180();
  __chkstk_darwin(v81);
  v82 = v96;
  *(&v87 - 10) = v88;
  *(&v87 - 9) = v82;
  *(&v87 - 8) = 0;
  *(&v87 - 7) = v101;
  *(&v87 - 3) = xmmword_2D8CF0;
  v84 = 0x80000000002E0C40;
  v85 = sub_3E06C;
  v86 = v80;

  sub_2CB0F0();

  (*(v98 + 8))(v97, v99);
  v28 = &qword_34C6C0;
  v29 = &qword_2D0710;
  v30 = v101;
  return sub_30B8(v30, v28, v29);
}