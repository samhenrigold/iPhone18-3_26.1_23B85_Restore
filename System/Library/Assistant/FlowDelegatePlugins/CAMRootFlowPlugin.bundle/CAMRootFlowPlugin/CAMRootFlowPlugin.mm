unint64_t sub_1FF0()
{
  v1 = v0;
  v2 = sub_5A318();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision(0);
  __chkstk_darwin(v6);
  v8 = (v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_5E14(v1, v8, type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_5B5A8(32);

    v14 = 0xD00000000000001ELL;
    v15 = 0x800000000005E620;
    sub_5FF4(&qword_71C10, &type metadata accessor for PluginAction, &protocol conformance descriptor for PluginAction);
    v16._countAndFlagsBits = sub_5B798();
    sub_5B388(v16);

    v9 = v14;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_5B7C(v8, &v14);
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_5B5A8(31);

    v12 = 0xD00000000000001DLL;
    v13 = 0x800000000005E640;
    sub_5F90(&v14, v11);
    sub_5B94(&qword_71C18, &qword_5C290);
    v17._countAndFlagsBits = sub_5B358();
    sub_5B388(v17);

    v9 = v12;
    sub_5D00(&v14);
  }

  return v9;
}

uint64_t sub_2290()
{
  v1 = v0;
  v2 = sub_5B94(&qword_71C80, &qword_5C298);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC17CAMRootFlowPlugin29ActionDisambiguationEntryFlow_executionDecision;
  v6 = type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v1 + v5, 1, 1, v6);
  v7(v4, 1, 1, v6);
  swift_beginAccess();
  sub_5BDC(v4, v1 + v5);
  swift_endAccess();
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v8 = sub_5B228();
  sub_5B44(v8, qword_763B8);
  v9 = sub_5B218();
  v10 = sub_5B4B8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "ActionDisambiguationEntryFlow: new instance initialised", v11, 2u);
  }

  return v1;
}

uint64_t sub_245C(uint64_t a1)
{
  v2[133] = v1;
  v2[132] = a1;
  v3 = sub_5A638();
  v2[134] = v3;
  v2[135] = *(v3 - 8);
  v2[136] = swift_task_alloc();
  v2[137] = swift_task_alloc();
  v2[138] = sub_5B94(&qword_71C80, &qword_5C298);
  v2[139] = swift_task_alloc();
  v2[140] = type metadata accessor for ActionDisambiguationStrategy(0);
  v2[141] = swift_task_alloc();
  v2[142] = swift_task_alloc();
  v2[143] = swift_task_alloc();
  v4 = sub_5A318();
  v2[144] = v4;
  v2[145] = *(v4 - 8);
  v2[146] = swift_task_alloc();
  v2[147] = swift_task_alloc();
  v2[148] = swift_task_alloc();
  v2[149] = swift_task_alloc();
  v2[150] = swift_task_alloc();
  v2[151] = swift_task_alloc();
  v2[152] = swift_task_alloc();
  v2[153] = swift_task_alloc();
  v2[154] = swift_task_alloc();
  v2[155] = swift_task_alloc();
  v2[156] = swift_task_alloc();
  v2[157] = swift_task_alloc();
  v2[158] = swift_task_alloc();
  sub_5B94(&qword_71C88, &qword_5C2A0);
  v2[159] = swift_task_alloc();
  v5 = type metadata accessor for CAMDirectInvocation(0);
  v2[160] = v5;
  v2[161] = *(v5 - 8);
  v2[162] = swift_task_alloc();
  v2[163] = swift_task_alloc();
  v6 = sub_5A858();
  v2[164] = v6;
  v2[165] = *(v6 - 8);
  v2[166] = swift_task_alloc();
  v7 = sub_5A838();
  v2[167] = v7;
  v2[168] = *(v7 - 8);
  v2[169] = swift_task_alloc();
  v8 = sub_5A7D8();
  v2[170] = v8;
  v2[171] = *(v8 - 8);
  v2[172] = swift_task_alloc();
  v2[173] = swift_task_alloc();

  return _swift_task_switch(sub_285C, 0, 0);
}

uint64_t sub_285C()
{
  v62 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = v0[173];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[132];
  v5 = sub_5B228();
  v0[174] = sub_5B44(v5, qword_763B8);
  v59 = *(v2 + 16);
  v59(v1, v4, v3);
  v6 = sub_5B218();
  v7 = sub_5B4B8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[173];
  v10 = v0[171];
  v11 = v0[170];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v61 = v58;
    *v12 = 136315138;
    sub_5FF4(&qword_71C90, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v13 = sub_5B798();
    v15 = v14;
    v60 = *(v10 + 8);
    v60(v9, v11);
    v16 = sub_2DC10(v13, v15, &v61);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v6, v7, "ActionDisambiguationEntryFlow: on called with %s", v12, 0xCu);
    sub_5D00(v58);
  }

  else
  {

    v60 = *(v10 + 8);
    v60(v9, v11);
  }

  v17 = v0[166];
  v18 = v0[165];
  v19 = v0[164];
  sub_5A7C8();
  if ((*(v18 + 88))(v17, v19) != enum case for Parse.directInvocation(_:))
  {
    (*(v0[165] + 8))(v0[166], v0[164]);
    goto LABEL_12;
  }

  v20 = v0[169];
  v21 = v0[168];
  v22 = v0[167];
  v23 = v0[166];
  v24 = v0[161];
  v25 = v0[160];
  v26 = v0[159];
  (*(v0[165] + 96))(v23, v0[164]);
  (*(v21 + 32))(v20, v23, v22);
  sub_3601C(v26);
  if ((*(v24 + 48))(v26, 1, v25) == 1)
  {
    v27 = v0[159];
    (*(v0[168] + 8))(v0[169], v0[167]);
    sub_5D4C(v27, &qword_71C88, &qword_5C2A0);
LABEL_12:
    v59(v0[172], v0[132], v0[170]);
    v34 = sub_5B218();
    v35 = sub_5B4C8();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[172];
    v38 = v0[170];
    if (v36)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v61 = v40;
      *v39 = 136315138;
      sub_5FF4(&qword_71C90, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v41 = sub_5B798();
      v43 = v42;
      v60(v37, v38);
      v44 = sub_2DC10(v41, v43, &v61);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_0, v34, v35, "ActionDisambiguationEntryFlow called with unexpected input %s", v39, 0xCu);
      sub_5D00(v40);
    }

    else
    {

      v60(v37, v38);
    }

    v45 = v0[1];

    return v45(0);
  }

  v28 = v0[163];
  v29 = v0[162];
  sub_5DAC(v0[159], v28, type metadata accessor for CAMDirectInvocation);
  sub_5E14(v28, v29, type metadata accessor for CAMDirectInvocation);
  if (swift_getEnumCaseMultiPayload())
  {
    v30 = v0[169];
    v31 = v0[168];
    v32 = v0[167];
    v33 = v0[162];
    sub_5E7C(v0[163], type metadata accessor for CAMDirectInvocation);
    (*(v31 + 8))(v30, v32);
    sub_5E7C(v33, type metadata accessor for CAMDirectInvocation);
    goto LABEL_12;
  }

  v47 = v0[162];
  v48 = v0[158];
  v49 = v0[157];
  v50 = v0[145];
  v51 = v0[144];
  v52 = *(sub_5B94(&qword_71C98, &qword_5C2A8) + 48);
  v53 = *(v50 + 32);
  v0[175] = v53;
  v0[176] = (v50 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v53(v48, v47, v51);
  v53(v49, v47 + v52, v51);
  if (qword_71A40 != -1)
  {
    swift_once();
  }

  v54 = swift_task_alloc();
  v0[177] = v54;
  *v54 = v0;
  v54[1] = sub_3084;
  v55 = v0[158];
  v56 = v0[157];
  v57 = v0[143];

  return sub_603C(v57, v55, v56, qword_76340);
}

uint64_t sub_3084()
{

  return _swift_task_switch(sub_3180, 0, 0);
}

uint64_t sub_3180()
{
  v193 = v0;
  sub_5E14(v0[143], v0[142], type metadata accessor for ActionDisambiguationStrategy);
  v1 = sub_5B218();
  v2 = sub_5B4B8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[142];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v192 = v6;
    *v5 = 136315138;
    v7 = sub_8160();
    v9 = v8;
    sub_5E7C(v4, type metadata accessor for ActionDisambiguationStrategy);
    v10 = sub_2DC10(v7, v9, &v192);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_0, v1, v2, "ActionDisambiguationEntryFlow: disambiguations strategy is %s", v5, 0xCu);
    sub_5D00(v6);
  }

  else
  {

    sub_5E7C(v4, type metadata accessor for ActionDisambiguationStrategy);
  }

  sub_5E14(v0[143], v0[141], type metadata accessor for ActionDisambiguationStrategy);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v72 = v0[175];
      v164 = v0[153];
      v171 = v0[152];
      v73 = v0[151];
      v161 = v73;
      v178 = v0[150];
      v187 = v0[145];
      v174 = v0[144];
      v74 = v0[141];
      v75 = v0[137];
      v183 = v0[136];
      v76 = v0[135];
      v77 = v0[134];
      v78 = sub_5B94(&qword_71CB0, &qword_5C2F0);
      v79 = *(v78 + 48);
      v80 = *(v78 + 64);
      v162 = v77;
      (*(v76 + 32))(v75, v74, v77);
      v72(v164, v74 + v79, v174);
      v72(v171, v74 + v80, v174);
      v160 = *(v187 + 16);
      v160(v73, v164, v174);
      v160(v178, v171, v174);
      v165 = *(v76 + 16);
      v165(v183, v75, v77);
      sub_5A868();
      v81 = type metadata accessor for DefaultCatExecutor();
      v82 = swift_allocObject();
      sub_5A148();
      v0[50] = sub_5A5D8();
      v0[51] = &protocol witness table for AppShortcutProvider;
      sub_5F2C(v0 + 47);
      sub_5A5C8();
      v83 = type metadata accessor for CoreServicesProvider();
      v84 = swift_allocObject();
      sub_5A6C8();
      v0[60] = v81;
      v0[61] = &off_6E270;
      v0[57] = v82;
      v0[65] = v83;
      v0[66] = &off_6E328;
      v0[62] = v84;
      v172 = type metadata accessor for AppShortcutEnablementFlow(0);
      v85 = swift_allocObject();
      v86 = sub_5EDC((v0 + 57), v81);
      v87 = *(v81 - 8);
      v88 = swift_task_alloc();
      v159 = *(v87 + 16);
      v159(v88, v86, v81);
      v89 = v0[65];
      v90 = sub_5EDC((v0 + 62), v89);
      v91 = *(v89 - 8);
      v92 = swift_task_alloc();
      (*(v91 + 16))(v92, v90, v89);
      v93 = *v88;
      v94 = *v92;
      v0[70] = v81;
      v0[71] = &off_6E270;
      v0[67] = v93;
      v0[75] = v83;
      v0[76] = &off_6E328;
      v0[72] = v94;
      *(v85 + 2) = 3;
      v160(&v85[OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_appShortcutAction], v161, v174);
      v160(&v85[OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_otherAction], v178, v174);
      v165(&v85[OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_appShortcutInvocation], v183, v162);
      sub_5F90((v0 + 37), (v85 + 24));
      sub_5F90((v0 + 67), (v85 + 64));
      sub_5F90((v0 + 42), (v85 + 104));
      sub_5F90((v0 + 47), (v85 + 144));
      sub_5F90((v0 + 72), (v85 + 184));
      sub_5F90((v85 + 64), (v0 + 77));
      v95 = v0[80];
      v96 = sub_5EDC((v0 + 77), v95);
      v97 = *(v95 - 8);
      v98 = swift_task_alloc();
      (*(v97 + 16))(v98, v96, v95);
      v99 = *v98;
      v0[85] = v81;
      v0[86] = &off_6E270;
      v0[82] = v99;
      type metadata accessor for CAMDisambiguateCATs();
      v100 = swift_allocObject();
      v101 = sub_5EDC((v0 + 82), v81);
      v102 = swift_task_alloc();
      v159(v102, v101, v81);
      v103 = *v102;
      v100[5] = v81;
      v100[6] = &off_6E270;
      v100[2] = v103;
      sub_5D00(v0 + 82);

      sub_5D00(v0 + 77);

      *(v85 + 33) = v100;
      sub_5F90((v85 + 64), (v0 + 87));
      v104 = v0[90];
      v105 = sub_5EDC((v0 + 87), v104);
      v106 = *(v104 - 8);
      v107 = swift_task_alloc();
      (*(v106 + 16))(v107, v105, v104);
      v108 = *v107;
      v0[95] = v81;
      v0[96] = &off_6E270;
      v0[92] = v108;
      v109 = type metadata accessor for CAMDisambiguateCATPatternsExecutor();
      v110 = swift_allocObject();
      v111 = sub_5EDC((v0 + 92), v81);
      v112 = swift_task_alloc();
      v159(v112, v111, v81);
      v113 = *v112;
      v110[5] = v81;
      v110[6] = &off_6E270;
      v110[2] = v113;
      sub_5D00(v0 + 92);

      sub_5D00(v0 + 87);

      *(v85 + 37) = v109;
      *(v85 + 38) = &off_6E1D0;
      *(v85 + 34) = v110;
      sub_5F90((v0 + 52), (v85 + 224));
      v114 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_state;
      v115 = sub_5B94(&qword_71CA0, &unk_5C2B0);
      (*(*(v115 - 8) + 56))(&v85[v114], 1, 2, v115);
      v116 = sub_5B218();
      v117 = sub_5B4B8();
      v118 = os_log_type_enabled(v116, v117);
      v119 = v0[151];
      v120 = v0[150];
      v121 = v0[145];
      v122 = v0[144];
      v188 = v0[136];
      v123 = v0[135];
      v124 = v0[134];
      if (v118)
      {
        v179 = v0[150];
        v125 = swift_slowAlloc();
        v175 = v119;
        v126 = swift_slowAlloc();
        v192 = v126;
        *v125 = 136315138;
        *(v125 + 4) = sub_2DC10(0xD00000000000008FLL, 0x800000000005E660, &v192);
        _os_log_impl(&dword_0, v116, v117, "%s new instance", v125, 0xCu);
        sub_5D00(v126);

        sub_5D00(v0 + 52);
        sub_5D00(v0 + 42);
        sub_5D00(v0 + 37);
        v127 = v188;
        v189 = *(v123 + 8);
        v189(v127, v124);
        v128 = *(v121 + 8);
        v128(v179, v122);
        v129 = v175;
      }

      else
      {

        sub_5D00(v0 + 52);
        sub_5D00(v0 + 42);
        sub_5D00(v0 + 37);
        v130 = v188;
        v189 = *(v123 + 8);
        v189(v130, v124);
        v128 = *(v121 + 8);
        v128(v120, v122);
        v129 = v119;
      }

      v128(v129, v122);
      sub_5D00(v0 + 47);
      sub_5D00(v0 + 72);
      sub_5D00(v0 + 67);
      v131 = v0[153];
      v132 = v0[152];
      v133 = v0[144];
      v32 = v0[139];
      v134 = v0[137];
      v135 = v0[134];
      v180 = v0[133];
      sub_5D00(v0 + 62);

      sub_5D00(v0 + 57);

      v32[3] = v172;
      v32[4] = sub_5FF4(&qword_71CB8, type metadata accessor for AppShortcutEnablementFlow, &unk_5C878);
      *v32 = v85;
      v128(v132, v133);
      v128(v131, v133);
      v189(v134, v135);
      v136 = type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v136 - 8) + 56))(v32, 0, 1, v136);
      v35 = OBJC_IVAR____TtC17CAMRootFlowPlugin29ActionDisambiguationEntryFlow_executionDecision;
      v36 = v180;
LABEL_19:
      swift_beginAccess();
      v70 = v36 + v35;
      goto LABEL_20;
    }
  }

  else if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v12 = v0[158];
      v13 = v0[157];
      v14 = v0[149];
      v15 = v0[148];
      v16 = v0[147];
      v17 = v0[146];
      v18 = v0[145];
      v19 = v0[144];
      (v0[175])(v14, v0[141], v19);
      v20 = *(v18 + 16);
      v20(v15, v12, v19);
      v20(v16, v13, v19);
      v20(v17, v14, v19);
      sub_5A148();
      sub_5A6C8();
      v0[25] = &type metadata for SNLGTemplatingSectionGenerator;
      v0[26] = &off_6E890;
      v185 = type metadata accessor for VerbEntityDisambiguationFlow(0);
      v21 = swift_allocObject();
      sub_5EDC((v0 + 22), &type metadata for SNLGTemplatingSectionGenerator);
      v0[30] = &type metadata for SNLGTemplatingSectionGenerator;
      v0[31] = &off_6E890;
      v20(v21 + OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_firstAction, v15, v19);
      v20(v21 + OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_secondAction, v16, v19);
      v20(v21 + OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_fallBackAction, v17, v19);
      sub_5F90((v0 + 27), v21 + 16);
      sub_5F90((v0 + 12), v21 + 56);
      sub_5F90((v0 + 17), v21 + 96);
      v22 = OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_state;
      v23 = sub_5B94(&qword_71CA0, &unk_5C2B0);
      (*(*(v23 - 8) + 56))(v21 + v22, 1, 2, v23);
      v24 = sub_5B218();
      v25 = sub_5B4B8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v24, v25, "VerbEntityDisambiguationFlow: new instance initialised", v26, 2u);
      }

      v27 = v0[148];
      v28 = v0[147];
      v29 = v0[146];
      v30 = v0[145];
      v31 = v0[144];
      v32 = v0[139];
      v177 = v0[149];
      v182 = v0[133];

      sub_5D00(v0 + 17);
      sub_5D00(v0 + 12);
      v33 = *(v30 + 8);
      v33(v29, v31);
      v33(v28, v31);
      v33(v27, v31);
      sub_5D00(v0 + 27);
      sub_5D00(v0 + 22);
      v32[3] = v185;
      v32[4] = sub_5FF4(&qword_71CA8, type metadata accessor for VerbEntityDisambiguationFlow, &unk_5E310);
      *v32 = v21;
      v33(v177, v31);
      v34 = type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v34 - 8) + 56))(v32, 0, 1, v34);
      v35 = OBJC_IVAR____TtC17CAMRootFlowPlugin29ActionDisambiguationEntryFlow_executionDecision;
      v36 = v182;
    }

    else
    {
      v32 = v0[139];
      v36 = v0[133];
      (v0[175])(v32, v0[141], v0[144]);
      v71 = type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v71 - 8) + 56))(v32, 0, 1, v71);
      v35 = OBJC_IVAR____TtC17CAMRootFlowPlugin29ActionDisambiguationEntryFlow_executionDecision;
    }

    goto LABEL_19;
  }

  v37 = v0[158];
  v38 = v0[157];
  v39 = v0[155];
  v167 = v39;
  v40 = v0[154];
  v168 = v40;
  v170 = v0[156];
  v41 = v0[145];
  v42 = v0[144];
  (v0[175])();
  v166 = *(v41 + 16);
  v166(v39, v37, v42);
  v166(v40, v38, v42);
  sub_5A868();
  v43 = type metadata accessor for DefaultCatExecutor();
  v44 = swift_allocObject();
  sub_5A6C8();
  sub_5A148();
  v163 = type metadata accessor for CoreServicesProvider();
  v45 = swift_allocObject();
  v0[5] = v43;
  v0[6] = &off_6E270;
  v0[2] = v44;
  v0[100] = v163;
  v0[101] = &off_6E328;
  v0[97] = v45;
  v186 = type metadata accessor for AppNameDisambiguationFlow(0);
  v46 = swift_allocObject();
  v47 = sub_5EDC((v0 + 2), v43);
  v48 = *(v43 - 8);
  v49 = swift_task_alloc();
  (*(v48 + 16))(v49, v47, v43);
  v50 = v0[100];
  v51 = sub_5EDC((v0 + 97), v50);
  v52 = *(v50 - 8);
  v53 = swift_task_alloc();
  (*(v52 + 16))(v53, v51, v50);
  v54 = *v49;
  v55 = *v53;
  v0[35] = v43;
  v0[36] = &off_6E270;
  v0[32] = v54;
  v0[10] = v163;
  v0[11] = &off_6E328;
  v0[7] = v55;
  v166(v46 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_firstAction, v167, v42);
  v166(v46 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_secondAction, v168, v42);
  v166(v46 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_fallBackAction, v170, v42);
  sub_5F90((v0 + 102), v46 + 16);
  sub_5F90((v0 + 32), v46 + 56);
  sub_5F90((v0 + 107), v46 + 96);
  sub_5F90((v0 + 112), v46 + 136);
  sub_5F90((v0 + 7), v46 + 176);
  v56 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_state;
  v57 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  (*(*(v57 - 8) + 56))(v46 + v56, 1, 3, v57);
  v58 = sub_5B218();
  v59 = sub_5B4B8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_0, v58, v59, "AppNameDisambiguationFlow: new instance initialised", v60, 2u);
  }

  v61 = v0[156];
  v62 = v0[155];
  v63 = v0[154];
  v64 = v0[145];
  v65 = v0[144];
  v32 = v0[139];
  v66 = v0[133];

  sub_5D00(v0 + 112);
  sub_5D00(v0 + 107);
  sub_5D00(v0 + 102);
  v67 = *(v64 + 8);
  v67(v63, v65);
  v67(v62, v65);
  v67(v61, v65);
  sub_5D00(v0 + 7);
  sub_5D00(v0 + 32);
  sub_5D00(v0 + 97);

  sub_5D00(v0 + 2);

  v32[3] = v186;
  v32[4] = sub_5FF4(&qword_71CC8, type metadata accessor for AppNameDisambiguationFlow, &unk_5C560);
  *v32 = v46;
  v68 = type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v68 - 8) + 56))(v32, 0, 1, v68);
  v69 = OBJC_IVAR____TtC17CAMRootFlowPlugin29ActionDisambiguationEntryFlow_executionDecision;
  swift_beginAccess();
  v70 = v66 + v69;
LABEL_20:
  sub_5BDC(v32, v70);
  swift_endAccess();

  v137 = sub_5B218();
  v138 = sub_5B4B8();

  v139 = os_log_type_enabled(v137, v138);
  v140 = v0[169];
  v141 = v0[168];
  v142 = v0[167];
  v143 = v0[163];
  v144 = v0[158];
  v145 = v0[145];
  v190 = v0[157];
  v191 = v0[144];
  v146 = v0[143];
  if (v139)
  {
    v181 = v0[163];
    v184 = v0[167];
    v147 = v0[139];
    v148 = v0[133];
    v173 = v0[143];
    v149 = swift_slowAlloc();
    v176 = v140;
    v150 = swift_slowAlloc();
    v192 = v150;
    *v149 = 136315138;
    v169 = v144;
    v151 = OBJC_IVAR____TtC17CAMRootFlowPlugin29ActionDisambiguationEntryFlow_executionDecision;
    swift_beginAccess();
    sub_5C4C(v148 + v151, v147);
    v152 = sub_5B358();
    v154 = sub_2DC10(v152, v153, &v192);

    *(v149 + 4) = v154;
    _os_log_impl(&dword_0, v137, v138, "ActionDisambiguationEntryFlow: execution decision is %s", v149, 0xCu);
    sub_5D00(v150);

    sub_5E7C(v173, type metadata accessor for ActionDisambiguationStrategy);
    v155 = *(v145 + 8);
    v155(v190, v191);
    v155(v169, v191);
    sub_5E7C(v181, type metadata accessor for CAMDirectInvocation);
    (*(v141 + 8))(v176, v184);
  }

  else
  {

    sub_5E7C(v146, type metadata accessor for ActionDisambiguationStrategy);
    v156 = *(v145 + 8);
    v156(v190, v191);
    v156(v144, v191);
    sub_5E7C(v143, type metadata accessor for CAMDirectInvocation);
    (*(v141 + 8))(v140, v142);
  }

  v157 = v0[1];

  return v157(1);
}

uint64_t sub_49B8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_5A318();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  sub_5B94(&qword_71C80, &qword_5C298);
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision(0);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_4B18, 0, 0);
}

uint64_t sub_4B18()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ActionDisambiguationEntryFlow: execution called", v4, 2u);
  }

  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);
  v8 = *(v0 + 88);

  v9 = OBJC_IVAR____TtC17CAMRootFlowPlugin29ActionDisambiguationEntryFlow_executionDecision;
  swift_beginAccess();
  sub_5C4C(v8 + v9, v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_5D4C(*(v0 + 120), &qword_71C80, &qword_5C298);
    v10 = sub_5B218();
    v11 = sub_5B4C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "ActionDisambiguationEntryFlow: calling execute with nill execution decision", v12, 2u);
    }

    sub_5A438();
  }

  else
  {
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);
    sub_5DAC(*(v0 + 120), v14, type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision);
    sub_5E14(v14, v13, type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = *(v0 + 152);
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(v0 + 104);
      v17 = *(v0 + 112);
      v19 = *(v0 + 96);
      (*(v18 + 32))(v17, *(v0 + 144), v19);
      sub_5A448();
      (*(v18 + 8))(v17, v19);
      sub_5E7C(v16, type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision);
    }

    else
    {
      sub_5B7C(*(v0 + 144), v0 + 16);
      sub_5CBC((v0 + 16), *(v0 + 40));
      sub_5A088();
      sub_5A428();

      sub_5E7C(v16, type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision);
      sub_5D00((v0 + 16));
    }
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_4E7C()
{
  sub_5D4C(v0 + OBJC_IVAR____TtC17CAMRootFlowPlugin29ActionDisambiguationEntryFlow_executionDecision, &qword_71C80, &qword_5C298);

  return swift_deallocClassInstance();
}

void sub_4F18(uint64_t a1)
{
  sub_4FA8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_4FA8(uint64_t a1)
{
  if (!qword_71AB0)
  {
    type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision(255);
    v1 = sub_5B508();
    if (!v2)
    {
      atomic_store(v1, &qword_71AB0);
    }
  }
}

uint64_t sub_5020(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5058(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = v7 + ((v4 + 16) & ~v4);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = sub_5A318();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      v8 = *(a2 + 3);
      *(a1 + 24) = v8;
      (**(v8 - 8))(a1, a2);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_5184(void *a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_5D00(a1);
  }

  v3 = sub_5A318();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t sub_5208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_5A318();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 24) = v6;
    (**(v6 - 8))(a1, a2);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_52E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_5E7C(a1, type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_5A318();
      (*(*(v5 - 8) + 16))(a1, a2, v5);
    }

    else
    {
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 32);
      (**(v6 - 8))(a1, a2);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *sub_53E0(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5A318();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *sub_54B0(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_5E7C(a1, type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5A318();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_560C(uint64_t a1)
{
  result = sub_5A318();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_56A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_573C;

  return sub_245C(a1);
}

uint64_t sub_573C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_5898(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5934;

  return sub_49B8(a1);
}

uint64_t sub_5934()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_5A28(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ActionDisambiguationEntryFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_5A68()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v0 = sub_5B228();
  sub_5B44(v0, qword_763B8);
  v1 = sub_5B218();
  v2 = sub_5B4C8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "ActionDisambiguationEntryFlow: the synchronous version of on was unexpectedly called.", v3, 2u);
  }

  return 0;
}

uint64_t sub_5B44(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_5B7C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_5B94(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_5BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_71C80, &qword_5C298);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_5C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_71C80, &qword_5C298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_5CBC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_5D00(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_5D4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5B94(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_5DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_5E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_5EDC(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t *sub_5F2C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_5F90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_5FF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_603C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_5B94(&unk_73C70, &unk_5C300);
  v4[6] = swift_task_alloc();
  sub_5B94(&qword_72030, &unk_5E370);
  v4[7] = swift_task_alloc();
  v5 = sub_5A4E8();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_5A318();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_61D8, 0, 0);
}

uint64_t sub_61D8()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[3];
  v5 = v0[4];
  sub_5B94(&qword_724F0, &qword_5C310);
  v6 = *(v3 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_5C2D0;
  v72 = v8;
  v9 = v8 + v7;
  v10 = *(v3 + 16);
  v10(v8 + v7, v4, v2);
  v78 = v6;
  v10(v9 + v6, v5, v2);
  v80 = v9;
  v79 = v10;
  v10(v1, v9, v2);
  v11 = sub_41E68();
  v13 = v12;
  v77 = *(v3 + 8);
  v77(v1, v2);
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_585F4(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_585F4((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[16 * v16];
    *(v17 + 4) = v11;
    *(v17 + 5) = v13;
  }

  v18 = v0[14];
  v19 = v0[11];
  v79(v18, v9 + v6, v19);
  v20 = sub_41E68();
  v22 = v21;
  v77(v18, v19);
  if (v22)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_585F4(0, *(v14 + 2) + 1, 1, v14);
    }

    v24 = *(v14 + 2);
    v23 = *(v14 + 3);
    if (v24 >= v23 >> 1)
    {
      v14 = sub_585F4((v23 > 1), v24 + 1, 1, v14);
    }

    *(v14 + 2) = v24 + 1;
    v25 = &v14[16 * v24];
    *(v25 + 4) = v20;
    *(v25 + 5) = v22;
  }

  v26 = v0[9];
  v71 = sub_9D5C(v14);

  v27 = 0;
  v28 = 0;
  v75 = (v26 + 32);
  v76 = (v26 + 48);
  v73 = v26;
  v74 = (v26 + 56);
  v29 = _swiftEmptyArrayStorage;
  do
  {
    v30 = v27;
    v31 = v0[6];
    v79(v0[13], v80 + v28 * v78, v0[11]);
    sub_5A2D8();
    v32 = sub_5A518();
    v33 = *(v32 - 8);
    v34 = (*(v33 + 48))(v31, 1, v32);
    v35 = v0[13];
    v36 = v0[11];
    v38 = v0[7];
    v37 = v0[8];
    v39 = v0[6];
    if (v34 == 1)
    {
      v77(v0[13], v0[11]);
      sub_5D4C(v39, &unk_73C70, &unk_5C300);
      (*v74)(v38, 1, 1, v37);
LABEL_15:
      sub_5D4C(v0[7], &qword_72030, &unk_5E370);
      goto LABEL_16;
    }

    sub_5A4F8();
    v77(v35, v36);
    (*(v33 + 8))(v39, v32);
    if ((*v76)(v38, 1, v37) == 1)
    {
      goto LABEL_15;
    }

    v40 = *v75;
    (*v75)(v0[10], v0[7], v0[8]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_585CC(0, *(v29 + 2) + 1, 1, v29);
    }

    v42 = *(v29 + 2);
    v41 = *(v29 + 3);
    if (v42 >= v41 >> 1)
    {
      v29 = sub_585CC((v41 > 1), v42 + 1, 1, v29);
    }

    v43 = v0[10];
    v44 = v0[8];
    *(v29 + 2) = v42 + 1;
    v40(&v29[((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v42], v43, v44);
LABEL_16:
    v27 = 1;
    v28 = 1;
  }

  while ((v30 & 1) == 0);
  v45 = sub_9DF4(v29);

  v46 = *(v45 + 16);

  if (v46 == 2)
  {
    v47 = v0[11];
    v49 = v0[2];
    v48 = v0[3];

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v79(v49, v48, v47);
    type metadata accessor for ActionDisambiguationStrategy(0);
    goto LABEL_41;
  }

  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v50 = sub_5B228();
  sub_5B44(v50, qword_763B8);
  v51 = sub_5B218();
  v52 = sub_5B4B8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v51, v52, "ActionDisambiguationStrategy: no two distinct verb entity paraphrases", v53, 2u);
  }

  v54 = *(v71 + 16);

  if (v54 == 2)
  {
    v55 = sub_2BE2C(v72);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v55)
    {
      v56 = swift_task_alloc();
      v0[15] = v56;
      *v56 = v0;
      v56[1] = sub_6AA8;
      v57 = v0[4];
      v58 = v0[5];
      v59 = v0[2];
      v60 = v0[3];

      return sub_6C78(v59, v60, v57, v58);
    }

    v62 = sub_5B218();
    v65 = sub_5B4B8();
    if (os_log_type_enabled(v62, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_0, v62, v65, "ActionDisambiguationStrategy: no app shortcut detected", v66, 2u);
    }
  }

  else
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v62 = sub_5B218();
    v63 = sub_5B4B8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_0, v62, v63, "ActionDisambiguationStrategy: no two distinct app bundle ids", v64, 2u);
    }
  }

  v67 = v0[11];
  v69 = v0[2];
  v68 = v0[3];

  v79(v69, v68, v67);
  type metadata accessor for ActionDisambiguationStrategy(0);
LABEL_41:
  swift_storeEnumTagMultiPayload();

  v70 = v0[1];

  return v70();
}

uint64_t sub_6AA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_6C38()
{
  qword_76358 = sub_5A5D8();
  unk_76360 = &protocol witness table for AppShortcutProvider;
  sub_5F2C(qword_76340);
  return sub_5A5C8();
}

uint64_t sub_6C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_5B94(&unk_72520, &qword_5C320);
  v4[6] = swift_task_alloc();
  v5 = sub_5A638();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_5A318();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_5A858();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v8 = sub_5A7D8();
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v9 = sub_5A8E8();
  v4[26] = v9;
  v4[27] = *(v9 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return _swift_task_switch(sub_6F5C, 0, 0);
}

uint64_t sub_6F5C()
{
  v108 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  *(v0 + 256) = sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ActionDisambiguationStrategy: computing strategy for app shortcut collision", v4, 2u);
  }

  v5 = (v0 + 24);
  v6 = *(v0 + 200);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);

  sub_5A2F8();
  sub_5A7C8();
  v12 = *(v7 + 8);
  *(v0 + 264) = v12;
  *(v0 + 272) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v101 = v12;
  v12(v6, v8);
  v13 = *(v11 + 88);
  *(v0 + 280) = v13;
  *(v0 + 288) = (v11 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v14 = v13(v9, v10);
  v15 = enum case for Parse.uso(_:);
  *(v0 + 312) = enum case for Parse.uso(_:);
  v100 = v15;
  if (v14 == v15)
  {
    v16 = *(v0 + 248);
    v17 = *(v0 + 208);
    v18 = *(v0 + 216);
    v19 = *(v0 + 152);
    (*(*(v0 + 120) + 96))(v19, *(v0 + 112));
    (*(v18 + 32))(v16, v19, v17);
    v20 = sub_5A8A8();
    (*(v18 + 8))(v16, v17);
  }

  else
  {
    (*(*(v0 + 120) + 8))(*(v0 + 152), *(v0 + 112));
    v20 = 0;
  }

  v21 = *(v0 + 192);
  v22 = *(v0 + 160);
  v23 = *(v0 + 144);
  v24 = *(v0 + 112);
  sub_5A2F8();
  sub_5A7C8();
  v101(v21, v22);
  v98 = v13;
  if (v13(v23, v24) == v100)
  {
    v25 = *(v0 + 240);
    v26 = *(v0 + 208);
    v27 = *(v0 + 216);
    v28 = *(v0 + 144);
    (*(*(v0 + 120) + 96))(v28, *(v0 + 112));
    (*(v27 + 32))(v25, v28, v26);
    v29 = sub_5A8A8();
    (*(v27 + 8))(v25, v26);
  }

  else
  {
    (*(*(v0 + 120) + 8))(*(v0 + 144), *(v0 + 112));
    v29 = 0;
  }

  v30 = sub_5B218();
  v31 = sub_5B4B8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109376;
    *(v32 + 4) = v20;
    *(v32 + 8) = 1024;
    *(v32 + 10) = v29;
    _os_log_impl(&dword_0, v30, v31, "ActionDisambiguationStrategy: firstActionIsForAppShortcut=%{BOOL}d, secondActionIsForAppShortcut=%{BOOL}d ", v32, 0xEu);
  }

  if (v20 && v29)
  {
    v33 = sub_5B218();
    v34 = sub_5B4B8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "Disambiguating for App Shortcut vs App Shortcut", v35, 2u);
    }

    v36 = *(v0 + 88);

    v37 = *(v36 + 16);
    v38 = *(v0 + 16);
    goto LABEL_34;
  }

  v39 = *(v0 + 96);
  v40 = *(v0 + 184);
  v97 = *(v0 + 160);
  v41 = *(v0 + 136);
  v42 = *(v0 + 104);
  v99 = *(v0 + 112);
  v43 = *(v0 + 80);
  v44 = !v20;
  if (v20)
  {
    v45 = *(v0 + 32);
  }

  else
  {
    v45 = *(v0 + 24);
  }

  if (v44)
  {
    v46 = *(v0 + 32);
  }

  else
  {
    v46 = *(v0 + 24);
  }

  v47 = *(*(v0 + 88) + 16);
  *(v0 + 296) = v47;
  v47(v42, v46, v43);
  v47(v39, v45, v43);
  sub_5A2F8();
  sub_5A7C8();
  v101(v40, v97);
  if (v98(v41, v99) != v100)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
    v54 = sub_5B218();
    v55 = sub_5B4B8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v107 = v57;
      *v56 = 136315138;
      v58 = sub_2DC10(0x64656C6261736964, 0xE800000000000000, &v107);

      *(v56 + 4) = v58;
      _os_log_impl(&dword_0, v54, v55, "App Shortcut (%s) vs NLV4/POMMES", v56, 0xCu);
      sub_5D00(v57);
    }

    v104 = *(v0 + 312);
    v59 = *(v0 + 280);
    v60 = *(v0 + 264);
    v61 = *(v0 + 176);
    v62 = *(v0 + 160);
    v63 = *(v0 + 128);
    v64 = *(v0 + 112);
    sub_5A2F8();
    sub_5A7C8();
    v60(v61, v62);
    if (v59(v63, v64) == v104)
    {
      v66 = *(v0 + 216);
      v65 = *(v0 + 224);
      v67 = *(v0 + 208);
      v68 = *(v0 + 128);
      v69 = *(v0 + 56);
      v70 = *(v0 + 64);
      v71 = *(v0 + 48);
      (*(*(v0 + 120) + 96))(v68, *(v0 + 112));
      (*(v66 + 32))(v65, v68, v67);
      sub_5A8B8();
      (*(v66 + 8))(v65, v67);
      if ((*(v70 + 48))(v71, 1, v69) != 1)
      {
        v106 = *(*(v0 + 64) + 32);
        v106(*(v0 + 72), *(v0 + 48), *(v0 + 56));
        v84 = sub_5B218();
        v85 = sub_5B4B8();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_0, v84, v85, "Returning appShortcutCollisionWithEnablement as the disambiguation strategy", v86, 2u);
        }

        v103 = *(v0 + 104);
        v87 = *(v0 + 80);
        v88 = *(v0 + 88);
        v89 = *(v0 + 72);
        v90 = *(v0 + 56);
        v91 = *(v0 + 16);

        v92 = sub_5B94(&qword_71CB0, &qword_5C2F0);
        v93 = *(v92 + 48);
        v94 = v91 + *(v92 + 64);
        v106(v91, v89, v90);
        v95 = *(v88 + 32);
        v95(v91 + v93, v103, v87);
        v82 = v94;
        v37 = v95;
        v5 = (v0 + 96);
        goto LABEL_35;
      }

      v72 = *(v0 + 104);
      v73 = *(v0 + 80);
      v74 = *(*(v0 + 88) + 8);
      v74(*(v0 + 96), v73);
      v74(v72, v73);
    }

    else
    {
      v75 = *(v0 + 120);
      v77 = *(v0 + 104);
      v76 = *(v0 + 112);
      v78 = *(v0 + 80);
      v79 = *(v0 + 64);
      v102 = *(v0 + 128);
      v105 = *(v0 + 56);
      v80 = *(v0 + 48);
      v81 = *(*(v0 + 88) + 8);
      v81(*(v0 + 96), v78);
      v81(v77, v78);
      (*(v75 + 8))(v102, v76);
      (*(v79 + 56))(v80, 1, 1, v105);
    }

    sub_5D4C(*(v0 + 48), &unk_72520, &qword_5C320);
    v37 = *(v0 + 296);
    v38 = *(v0 + 16);
LABEL_34:
    v82 = v38;
LABEL_35:
    v37(v82, *v5, *(v0 + 80));
    type metadata accessor for ActionDisambiguationStrategy(0);
    swift_storeEnumTagMultiPayload();

    v83 = *(v0 + 8);

    return v83();
  }

  v48 = *(v0 + 232);
  v49 = *(v0 + 208);
  v50 = *(v0 + 216);
  v51 = *(v0 + 136);
  (*(*(v0 + 120) + 96))(v51, *(v0 + 112));
  (*(v50 + 32))(v48, v51, v49);
  v52 = swift_task_alloc();
  *(v0 + 304) = v52;
  *v52 = v0;
  v52[1] = sub_7A00;
  v53 = *(v0 + 40);

  return USOParse.isEnabledAppShortcutInvocation(provider:)(v53);
}

uint64_t sub_7A00(char a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  *(*v1 + 316) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_7B60, 0, 0);
}

uint64_t sub_7B60(uint64_t a1)
{
  v63 = v1;
  v2 = *(v1 + 316);
  v3 = sub_5B218();
  v4 = sub_5B4B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v62 = v6;
    *v5 = 136315138;
    if (v2)
    {
      v7 = 0x64656C62616E65;
    }

    else
    {
      v7 = 0x64656C6261736964;
    }

    if (v2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    v9 = sub_2DC10(v7, v8, &v62);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "App Shortcut (%s) vs NLV4/POMMES", v5, 0xCu);
    sub_5D00(v6);
  }

  if (v2)
  {
    v10 = sub_5B218();
    v11 = sub_5B4B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "Disambiguating between App Shortcut and NLv4/POMMES", v12, 2u);
    }

    v13 = *(v1 + 104);
    v15 = *(v1 + 80);
    v14 = *(v1 + 88);

    (*(v14 + 8))(v13, v15);
    v16 = *(v14 + 32);
    v17 = (v1 + 96);
    v18 = *(v1 + 16);
    goto LABEL_18;
  }

  v59 = *(v1 + 312);
  v19 = *(v1 + 280);
  v20 = *(v1 + 264);
  v21 = *(v1 + 176);
  v22 = *(v1 + 160);
  v23 = *(v1 + 128);
  v24 = *(v1 + 112);
  sub_5A2F8();
  sub_5A7C8();
  v20(v21, v22);
  if (v19(v23, v24) != v59)
  {
    v36 = *(v1 + 120);
    v35 = *(v1 + 128);
    v38 = *(v1 + 104);
    v37 = *(v1 + 112);
    v39 = *(v1 + 80);
    v40 = *(v1 + 64);
    v60 = *(v1 + 56);
    v41 = *(v1 + 48);
    v42 = *(*(v1 + 88) + 8);
    v42(*(v1 + 96), v39);
    v42(v38, v39);
    (*(v36 + 8))(v35, v37);
    (*(v40 + 56))(v41, 1, 1, v60);
    goto LABEL_17;
  }

  v26 = *(v1 + 216);
  v25 = *(v1 + 224);
  v27 = *(v1 + 208);
  v28 = *(v1 + 128);
  v29 = *(v1 + 56);
  v30 = *(v1 + 64);
  v31 = *(v1 + 48);
  (*(*(v1 + 120) + 96))(v28, *(v1 + 112));
  (*(v26 + 32))(v25, v28, v27);
  sub_5A8B8();
  (*(v26 + 8))(v25, v27);
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    v32 = *(v1 + 104);
    v33 = *(v1 + 80);
    v34 = *(*(v1 + 88) + 8);
    v34(*(v1 + 96), v33);
    v34(v32, v33);
LABEL_17:
    sub_5D4C(*(v1 + 48), &unk_72520, &qword_5C320);
    v16 = *(v1 + 296);
    v17 = (v1 + 24);
    v18 = *(v1 + 16);
LABEL_18:
    v43 = v18;
    goto LABEL_19;
  }

  v61 = *(*(v1 + 64) + 32);
  v61(*(v1 + 72), *(v1 + 48), *(v1 + 56));
  v46 = sub_5B218();
  v47 = sub_5B4B8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_0, v46, v47, "Returning appShortcutCollisionWithEnablement as the disambiguation strategy", v48, 2u);
  }

  v58 = *(v1 + 104);
  v49 = *(v1 + 80);
  v50 = *(v1 + 88);
  v51 = *(v1 + 72);
  v52 = *(v1 + 56);
  v53 = *(v1 + 16);

  v54 = sub_5B94(&qword_71CB0, &qword_5C2F0);
  v55 = *(v54 + 48);
  v56 = v53 + *(v54 + 64);
  v61(v53, v51, v52);
  v57 = *(v50 + 32);
  v57(v53 + v55, v58, v49);
  v16 = v57;
  v43 = v56;
  v17 = (v1 + 96);
LABEL_19:
  v16(v43, *v17, *(v1 + 80));
  type metadata accessor for ActionDisambiguationStrategy(0);
  swift_storeEnumTagMultiPayload();

  v44 = *(v1 + 8);

  return v44();
}

uint64_t sub_8160()
{
  v1 = sub_5A638();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_5A318();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionDisambiguationStrategy(0);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_85FC(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v18 = sub_5B94(&qword_71CB0, &qword_5C2F0);
      v22 = *(v18 + 48);
      v19 = *(v18 + 64);
      (*(v2 + 32))(v4, v11, v1);
      v23[0] = 0;
      v23[1] = 0xE000000000000000;
      sub_5B5A8(45);

      v23[0] = 0xD00000000000002BLL;
      v23[1] = 0x800000000005E740;
      v25._countAndFlagsBits = sub_5A628();
      sub_5B388(v25);

      v16 = v23[0];
      (*(v2 + 8))(v4, v1);
      v20 = *(v6 + 8);
      v20(&v11[v19], v5);
      v20(&v11[v22], v5);
      return v16;
    }

    (*(v6 + 32))(v8, v11, v5);
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    sub_5B5A8(40);

    v13 = "appShortcutCollision with fallback to ";
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v6 + 32))(v8, v11, v5);
      v23[0] = 0;
      v23[1] = 0xE000000000000000;
      sub_5B5A8(28);

      v14 = 0x800000000005E720;
      v15 = 0xD00000000000001ALL;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 3)
    {
      (*(v6 + 32))(v8, v11, v5);
      strcpy(v23, "redirect to ");
      BYTE5(v23[1]) = 0;
      HIWORD(v23[1]) = -5120;
      goto LABEL_11;
    }

    (*(v6 + 32))(v8, v11, v5);
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    sub_5B5A8(40);

    v13 = "verbEntityParaphrase with fallback to ";
  }

  v14 = (v13 - 32) | 0x8000000000000000;
  v15 = 0xD000000000000026;
LABEL_9:
  v23[0] = v15;
  v23[1] = v14;
LABEL_11:
  sub_9F90(&qword_71C10, &type metadata accessor for PluginAction, &protocol conformance descriptor for PluginAction);
  v24._countAndFlagsBits = sub_5B798();
  sub_5B388(v24);

  v16 = v23[0];
  (*(v6 + 8))(v8, v5);
  return v16;
}

uint64_t type metadata accessor for ActionDisambiguationStrategy(uint64_t a1)
{
  result = qword_720C8;
  if (!qword_720C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_85FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionDisambiguationStrategy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8664(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_5A4E8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_9F90(&qword_72038, &type metadata accessor for ActionParaphrase.VerbEntityParaphrase, &protocol conformance descriptor for ActionParaphrase.VerbEntityParaphrase);
  v33 = a2;
  v11 = sub_5B318();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_9F90(&qword_72040, &type metadata accessor for ActionParaphrase.VerbEntityParaphrase, &protocol conformance descriptor for ActionParaphrase.VerbEntityParaphrase);
      v21 = sub_5B328();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_9050(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_8944(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_5B848();
  sub_5B378();
  v8 = sub_5B868();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_5B7A8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_92F4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_8A94(uint64_t a1)
{
  v2 = v1;
  v36 = sub_5A4E8();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_5B94(&qword_72048, &qword_5C328);
  result = sub_5B588();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_9F90(&qword_72038, &type metadata accessor for ActionParaphrase.VerbEntityParaphrase, &protocol conformance descriptor for ActionParaphrase.VerbEntityParaphrase);
      result = sub_5B318();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_8DF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_5B94(&qword_72050, &unk_5C330);
  result = sub_5B588();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_5B848();
      sub_5B378();
      result = sub_5B868();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_9050(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_5A4E8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_8A94(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_9474();
      goto LABEL_12;
    }

    sub_9808(v10 + 1);
  }

  v12 = *v3;
  sub_9F90(&qword_72038, &type metadata accessor for ActionParaphrase.VerbEntityParaphrase, &protocol conformance descriptor for ActionParaphrase.VerbEntityParaphrase);
  v13 = sub_5B318();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_9F90(&qword_72040, &type metadata accessor for ActionParaphrase.VerbEntityParaphrase, &protocol conformance descriptor for ActionParaphrase.VerbEntityParaphrase);
      v21 = sub_5B328();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_5B7C8();
  __break(1u);
  return result;
}

uint64_t sub_92F4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_8DF0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_96AC();
      goto LABEL_16;
    }

    sub_9B24(v8 + 1);
  }

  v10 = *v4;
  sub_5B848();
  sub_5B378();
  result = sub_5B868();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_5B7A8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_5B7C8();
  __break(1u);
  return result;
}

void *sub_9474()
{
  v1 = v0;
  v2 = sub_5A4E8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5B94(&qword_72048, &qword_5C328);
  v6 = *v0;
  v7 = sub_5B578();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_96AC()
{
  v1 = v0;
  sub_5B94(&qword_72050, &unk_5C330);
  v2 = *v0;
  v3 = sub_5B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_9808(uint64_t a1)
{
  v2 = v1;
  v33 = sub_5A4E8();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_5B94(&qword_72048, &qword_5C328);
  v7 = sub_5B588();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_9F90(&qword_72038, &type metadata accessor for ActionParaphrase.VerbEntityParaphrase, &protocol conformance descriptor for ActionParaphrase.VerbEntityParaphrase);
      result = sub_5B318();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_9B24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_5B94(&qword_72050, &unk_5C330);
  result = sub_5B588();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_5B848();

      sub_5B378();
      result = sub_5B868();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_9D5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_5B488();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_8944(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_9DF4(uint64_t a1)
{
  v2 = sub_5A4E8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_9F90(&qword_72038, &type metadata accessor for ActionParaphrase.VerbEntityParaphrase, &protocol conformance descriptor for ActionParaphrase.VerbEntityParaphrase);
  result = sub_5B488();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_8664(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_9F90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_9FD8(char *a1, char *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
    {
      v9 = sub_5A638();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      v10 = sub_5B94(&qword_71CB0, &qword_5C2F0);
      v11 = *(v10 + 48);
      v12 = sub_5A318();
      v13 = *(*(v12 - 8) + 16);
      v13(&a1[v11], &a2[v11], v12);
      v13(&a1[*(v10 + 64)], &a2[*(v10 + 64)], v12);
    }

    else
    {
      v7 = sub_5A318();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_A284(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      v4 = sub_5A638();
      (*(*(v4 - 8) + 8))(a1, v4);
      v5 = sub_5B94(&qword_71CB0, &qword_5C2F0);
      v6 = *(v5 + 48);
      v7 = sub_5A318();
      v12 = *(*(v7 - 8) + 8);
      (v12)((v7 - 8), a1 + v6, v7);
      v8 = a1 + *(v5 + 64);
      v9 = v7;
      v10 = v12;
      goto LABEL_10;
    }
  }

  else if (result != 2 && result != 3 && result != 4)
  {
    return result;
  }

  v11 = sub_5A318();
  v10 = *(*(v11 - 8) + 8);
  v9 = v11;
  v8 = a1;
LABEL_10:

  return v10(v8, v9);
}

uint64_t sub_A3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
  {
    v8 = sub_5A638();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    v9 = sub_5B94(&qword_71CB0, &qword_5C2F0);
    v10 = *(v9 + 48);
    v11 = sub_5A318();
    v12 = *(*(v11 - 8) + 16);
    v12(a1 + v10, a2 + v10, v11);
    v12(a1 + *(v9 + 64), a2 + *(v9 + 64), v11);
  }

  else
  {
    v6 = sub_5A318();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_A568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_A6F4(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
    {
      v8 = sub_5A638();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      v9 = sub_5B94(&qword_71CB0, &qword_5C2F0);
      v10 = *(v9 + 48);
      v11 = sub_5A318();
      v12 = *(*(v11 - 8) + 16);
      v12(a1 + v10, a2 + v10, v11);
      v12(a1 + *(v9 + 64), a2 + *(v9 + 64), v11);
    }

    else
    {
      v6 = sub_5A318();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_A6F4(uint64_t a1)
{
  v2 = type metadata accessor for ActionDisambiguationStrategy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
  {
    v8 = sub_5A638();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    v9 = sub_5B94(&qword_71CB0, &qword_5C2F0);
    v10 = *(v9 + 48);
    v11 = sub_5A318();
    v12 = *(*(v11 - 8) + 32);
    v12(a1 + v10, a2 + v10, v11);
    v12(a1 + *(v9 + 64), a2 + *(v9 + 64), v11);
  }

  else
  {
    v6 = sub_5A318();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_A8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_A6F4(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
    {
      v8 = sub_5A638();
      (*(*(v8 - 8) + 32))(a1, a2, v8);
      v9 = sub_5B94(&qword_71CB0, &qword_5C2F0);
      v10 = *(v9 + 48);
      v11 = sub_5A318();
      v12 = *(*(v11 - 8) + 32);
      v12(a1 + v10, a2 + v10, v11);
      v12(a1 + *(v9 + 64), a2 + *(v9 + 64), v11);
    }

    else
    {
      v6 = sub_5A318();
      (*(*(v6 - 8) + 32))(a1, a2, v6);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_AA58(uint64_t a1)
{
  result = sub_5A318();
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    v6 = v3;
    result = sub_5A638();
    if (v4 <= 0x3F)
    {
      swift_getTupleTypeLayout3();
      v7 = &v5;
      v8 = v3;
      v9 = v3;
      v10 = v3;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t sub_AB3C(uint64_t a1)
{
  v2[54] = a1;
  v2[55] = v1;
  sub_5B94(&unk_73CE0, &unk_5CB30);
  v2[56] = swift_task_alloc();
  v3 = sub_5A2A8();
  v2[57] = v3;
  v2[58] = *(v3 - 8);
  v2[59] = swift_task_alloc();
  sub_5B94(&unk_72440, &unk_5C460);
  v2[60] = swift_task_alloc();
  v4 = sub_5A908();
  v2[61] = v4;
  v2[62] = *(v4 - 8);
  v2[63] = swift_task_alloc();
  v5 = sub_5A648();
  v2[64] = v5;
  v2[65] = *(v5 - 8);
  v2[66] = swift_task_alloc();
  v6 = sub_5A588();
  v2[67] = v6;
  v2[68] = *(v6 - 8);
  v2[69] = swift_task_alloc();

  return _swift_task_switch(sub_AD80, 0, 0);
}

uint64_t sub_AD80()
{
  v19 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AirplaneModeFlow: execute called", v4, 2u);
  }

  sub_5B018();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v0[70] = v6;
  sub_38208(_swiftEmptyArrayStorage);
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x65736E6F70736572;
  v8 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC00000065646F4DLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v9 = sub_3802C(inited);
  swift_setDeallocating();
  sub_5D4C(v8, &unk_72450, &unk_5C470);
  v10 = sub_5B338();
  v0[71] = v10;
  isa = sub_5B2E8().super.isa;
  v0[72] = isa;

  v12 = sub_5A2B8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v12;
  sub_357CC(v9, sub_41B18, 0, isUniquelyReferenced_nonNull_native, &v18);

  v14 = objc_opt_self();
  v15 = sub_5B2E8().super.isa;
  v0[73] = v15;

  v0[2] = v0;
  v0[7] = v0 + 51;
  v0[3] = sub_B160;
  v16 = swift_continuation_init();
  v0[27] = sub_5B94(&qword_721D0, &qword_5D0A0);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_35658;
  v0[23] = &unk_6DCE8;
  v0[24] = v16;
  [v14 execute:v6 catId:v10 parameters:isa globals:v15 completion:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_B160()
{
  v1 = *(*v0 + 48);
  *(*v0 + 592) = v1;
  if (v1)
  {
    v2 = sub_B740;
  }

  else
  {
    v2 = sub_B270;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_B270()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);
  v22 = *(v0 + 504);
  v24 = *(v0 + 488);
  v25 = *(v0 + 496);
  v7 = *(v0 + 480);
  v23 = *(v0 + 440);

  v8 = *(v0 + 408);
  *(v0 + 600) = v8;

  v9 = v8;
  v10 = [v9 speak];
  sub_5B3D8();

  v11 = [v9 print];
  sub_5B3D8();

  (*(v5 + 104))(v4, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v6);
  v12 = [v9 print];
  v13 = sub_5B3D8();

  v14 = *(v13 + 16);

  sub_41CC4(0, 0xE000000000000000, v14);
  v15 = [v9 meta];

  sub_5B2F8();
  sub_5A528();
  sub_5A868();
  sub_5A868();
  sub_5CBC((v0 + 264), *(v0 + 288));
  sub_5A218();
  v16 = sub_5A488();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  *(v0 + 336) = 0;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  sub_5A3E8();
  sub_5D4C(v0 + 304, &qword_721D8, &qword_5C480);
  sub_5D4C(v7, &unk_72440, &unk_5C460);
  sub_5D00((v0 + 224));
  sub_5D00((v0 + 264));
  v17 = v23[10];
  v18 = v23[11];
  sub_5CBC(v23 + 7, v17);
  *(v0 + 368) = v24;
  *(v0 + 376) = &protocol witness table for AceOutput;
  v19 = sub_5F2C((v0 + 344));
  (*(v25 + 16))(v19, v22, v24);
  v20 = swift_task_alloc();
  *(v0 + 608) = v20;
  *v20 = v0;
  v20[1] = sub_B614;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 344, v17, v18);
}

uint64_t sub_B614()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_BB0C;
  }

  else
  {
    sub_5D00((v2 + 344));
    v3 = sub_B900;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_B740()
{
  v9 = v0;
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  swift_willThrow();

  sub_5B5A8(46);

  v8[0] = 0xD00000000000002CLL;
  v8[1] = 0x800000000005E820;
  swift_getErrorValue();
  v11._countAndFlagsBits = sub_5B7E8();
  sub_5B388(v11);

  sub_5A6C8();
  sub_5A148();
  type metadata accessor for CamErrorFlow();
  swift_allocObject();
  v0[53] = sub_3147C(0xD00000000000002CLL, 0x800000000005E820, v7, v8);
  sub_C118();
  sub_5A418();

  v5 = v0[1];

  return v5();
}

uint64_t sub_B900()
{
  v1 = v0[68];
  v13 = v0[67];
  v14 = v0[69];
  v2 = v0[62];
  v11 = v0[75];
  v12 = v0[63];
  v4 = v0[58];
  v3 = v0[59];
  v5 = v0[56];
  v6 = v0[57];
  v10 = v0[61];
  sub_5CBC((v0[55] + 96), *(v0[55] + 120));
  sub_5A1E8();
  (*(v4 + 104))(v3, enum case for ActivityType.completed(_:), v6);
  v7 = sub_5A168();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v2 + 8))(v12, v10);
  (*(v1 + 8))(v14, v13);

  v8 = v0[1];

  return v8();
}

uint64_t sub_BB0C()
{
  sub_5D00(v0 + 43);
  v1 = v0[68];
  v13 = v0[67];
  v14 = v0[69];
  v2 = v0[62];
  v11 = v0[75];
  v12 = v0[63];
  v4 = v0[58];
  v3 = v0[59];
  v5 = v0[56];
  v6 = v0[57];
  v10 = v0[61];
  sub_5CBC((v0[55] + 96), *(v0[55] + 120));
  sub_5A1E8();
  (*(v4 + 104))(v3, enum case for ActivityType.completed(_:), v6);
  v7 = sub_5A168();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v2 + 8))(v12, v10);
  (*(v1 + 8))(v14, v13);

  v8 = v0[1];

  return v8();
}

uint64_t sub_BD64()
{
  sub_5D00(v0 + 2);
  sub_5D00(v0 + 7);
  sub_5D00(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_BDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_573C;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_BEE0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5934;

  return sub_AB3C(a1);
}

uint64_t sub_BF7C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AirplaneModeFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_BFB4()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v0 = sub_5B228();
  sub_5B44(v0, qword_763B8);
  v1 = sub_5B218();
  v2 = sub_5B4B8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "AirplaneModeFlow input accepted", v3, 2u);
  }

  return 1;
}

uint64_t sub_C0A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_C118()
{
  result = qword_72550;
  if (!qword_72550)
  {
    type metadata accessor for CamErrorFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72550);
  }

  return result;
}

uint64_t sub_C170()
{
  v0 = type metadata accessor for UserHistoryHelper();
  result = swift_allocObject();
  qword_76380 = v0;
  unk_76388 = &off_6E930;
  qword_76368 = result;
  return result;
}

uint64_t sub_C1BC()
{
  qword_763A8 = sub_5A5D8();
  unk_763B0 = &protocol witness table for AppShortcutProvider;
  sub_5F2C(qword_76390);
  return sub_5A5C8();
}

uint64_t sub_C1FC(char *a1)
{
  v2 = sub_5AE48();
  v169 = *(v2 - 8);
  v170 = v2;
  __chkstk_darwin(v2);
  v174 = &v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppNameDisambiguationFlow.State(0);
  v5 = __chkstk_darwin(v4 - 8);
  v149 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v171 = &v141 - v7;
  v8 = sub_5A318();
  v175 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v168 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v144 = &v141 - v12;
  __chkstk_darwin(v11);
  v146 = &v141 - v13;
  v14 = sub_5A8E8();
  v161 = *(v14 - 8);
  __chkstk_darwin(v14);
  v154 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_5B94(&qword_71C88, &qword_5C2A0);
  __chkstk_darwin(v16 - 8);
  v160 = (&v141 - v17);
  v159 = type metadata accessor for CAMDirectInvocation(0);
  v158 = *(v159 - 8);
  v18 = __chkstk_darwin(v159);
  v153 = (&v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v152 = &v141 - v20;
  v157 = sub_5A838();
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v155 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_5A858();
  v178 = *(v176 - 8);
  v22 = __chkstk_darwin(v176);
  v145 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v148 = &v141 - v25;
  __chkstk_darwin(v24);
  v177 = &v141 - v26;
  v27 = sub_5B94(&unk_72560, &qword_5E3E0);
  v28 = __chkstk_darwin(v27 - 8);
  v173 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v162 = &v141 - v31;
  v32 = __chkstk_darwin(v30);
  v147 = &v141 - v33;
  v34 = __chkstk_darwin(v32);
  v151 = &v141 - v35;
  __chkstk_darwin(v34);
  v37 = &v141 - v36;
  v38 = sub_5A7D8();
  v39 = *(v38 - 8);
  v40 = __chkstk_darwin(v38);
  v166 = &v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v141 - v42;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v44 = sub_5B228();
  v45 = sub_5B44(v44, qword_763B8);
  v46 = *(v39 + 16);
  v164 = v39 + 16;
  v163 = v46;
  v46(v43, a1, v38);
  v172 = v45;
  v47 = sub_5B218();
  v48 = sub_5B4B8();
  v49 = os_log_type_enabled(v47, v48);
  v167 = v39;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v143 = v8;
    v142 = v37;
    v51 = v50;
    v52 = swift_slowAlloc();
    v150 = v14;
    v53 = v52;
    v180 = v52;
    *v51 = 136315138;
    sub_1A95C(&qword_71C90, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v54 = sub_5B798();
    v55 = a1;
    v57 = v56;
    v165 = *(v39 + 8);
    v165(v43, v38);
    v58 = sub_2DC10(v54, v57, &v180);
    a1 = v55;

    *(v51 + 4) = v58;
    _os_log_impl(&dword_0, v47, v48, "AppNameDisambiguationFlow: on called with input %s", v51, 0xCu);
    sub_5D00(v53);
    v14 = v150;

    v37 = v142;
    v8 = v143;
  }

  else
  {

    v165 = *(v39 + 8);
    v165(v43, v38);
  }

  v59 = v177;
  sub_5A7C8();
  v60 = v178;
  v61 = v176;
  v62 = (*(v178 + 88))(v59, v176);
  v64 = v174;
  v63 = v175;
  if (v62 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v60 + 96))(v59, v61);
    v65 = v169;
    v66 = v59;
    v67 = v170;
    (*(v169 + 32))(v64, v66, v170);
    v68 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_firstAction;
    v69 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_secondAction;
    v70 = sub_186D8();
    if (!v71)
    {
      (*(v65 + 8))(v64, v67);
      goto LABEL_21;
    }

    v72 = v179 + v69;
    v73 = v162;
    sub_F8F8(v70, v71, v179 + v68, v72, v162);

    (*(v65 + 8))(v64, v67);
    if ((*(v63 + 48))(v73, 1, v8) == 1)
    {
      sub_5D4C(v73, &unk_72560, &qword_5E3E0);
LABEL_21:
      v94 = v173;
      (*(v63 + 56))(v37, 1, 1, v8);
      goto LABEL_44;
    }

    (*(v63 + 32))(v37, v73, v8);
    goto LABEL_42;
  }

  if (v62 != enum case for Parse.directInvocation(_:))
  {
    if (v62 != enum case for Parse.uso(_:))
    {
      v99 = enum case for Parse.empty(_:);
      v100 = v62;
      (*(v175 + 56))(v37, 1, 1, v8);
      if (v100 == v99)
      {
        v101 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_state;
        v102 = v179;
        swift_beginAccess();
        v103 = v102 + v101;
        v104 = v149;
        sub_1BB8C(v103, v149, type metadata accessor for AppNameDisambiguationFlow.State);
        v105 = sub_5B94(&qword_71CC0, &unk_5C2C0);
        if ((*(*(v105 - 8) + 48))(v104, 3, v105) == 1)
        {
          sub_5D4C(v37, &unk_72560, &qword_5E3E0);
          sub_1AF68(v104, type metadata accessor for AppNameDisambiguationFlow.State);
          return 1;
        }

        sub_1AF68(v104, type metadata accessor for AppNameDisambiguationFlow.State);
      }

      else
      {
        (*(v178 + 8))(v177, v61);
      }

      goto LABEL_43;
    }

    (*(v60 + 96))(v59, v61);
    v79 = v154;
    (*(v161 + 32))(v154, v59, v14);
    v80 = v179 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_firstAction;
    v81 = v179 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_secondAction;
    v82 = sub_3F9D8();
    v141 = v38;
    if (v83)
    {
LABEL_15:
      v177 = a1;
      v84 = *(v63 + 56);
      v85 = v151;
      v84(v151, 1, 1, v8);
      sub_5D4C(v85, &unk_72560, &qword_5E3E0);
      v86 = sub_FD9C();
      if (v87)
      {
        v88 = v147;
        sub_F8F8(v86, v87, v80, v81, v147);

        if ((*(v63 + 48))(v88, 1, v8) != 1)
        {
          (*(v161 + 8))(v154, v14);
          v113 = *(v63 + 32);
          v114 = v144;
          v113(v144, v88, v8);
          v113(v37, v114, v8);
          v84(v37, 0, 1, v8);
LABEL_55:
          a1 = v177;
          goto LABEL_56;
        }

        sub_5D4C(v88, &unk_72560, &qword_5E3E0);
      }

      v174 = v84;
      v150 = v14;
      v89 = v148;
      sub_5A7C8();
      v90 = sub_5A7E8();
      v91 = *(v178 + 8);
      v92 = v89;
      v93 = v176;
      v91(v92, v176);
      if (v90)
      {
        (*(v161 + 8))(v154, v150);
LABEL_39:
        v109 = sub_5B94(&qword_71CC0, &unk_5C2C0);
        v110 = v171;
        (*(*(v109 - 8) + 56))(v171, 3, 3, v109);
        v111 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_state;
        v112 = v179;
        swift_beginAccess();
        sub_1AEA0(v110, v112 + v111);
        swift_endAccess();
        return 1;
      }

      v107 = v145;
      sub_5A7C8();
      v108 = sub_5A808();
      v91(v107, v93);
      (*(v161 + 8))(v154, v150);
      if (v108)
      {
        goto LABEL_39;
      }

      (v174)(v37, 1, 1, v8);
      goto LABEL_55;
    }

    if (v82 != 1)
    {
      if (v82)
      {
        if (v82 != -1)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v81 = v80;
      }
    }

    (*(v161 + 8))(v79, v14);
    v137 = v151;
    (*(v63 + 16))(v151, v81, v8);
    v138 = *(v63 + 56);
    v138(v137, 0, 1, v8);
    v139 = *(v63 + 32);
    v140 = v146;
    v139(v146, v137, v8);
    v139(v37, v140, v8);
    v138(v37, 0, 1, v8);
LABEL_56:
    v38 = v141;
    goto LABEL_43;
  }

  (*(v60 + 96))(v59, v61);
  v74 = v156;
  v75 = v155;
  v76 = v157;
  (*(v156 + 32))(v155, v59, v157);
  v77 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_firstAction;
  v178 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_secondAction;
  v78 = v160;
  sub_3601C(v160);
  (*(v74 + 8))(v75, v76);
  if ((*(v158 + 48))(v78, 1, v159) != 1)
  {
    v95 = v78;
    v96 = v152;
    sub_1AF04(v95, v152);
    v97 = v96;
    v98 = v153;
    sub_1AF04(v97, v153);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1AF68(v98, type metadata accessor for CAMDirectInvocation);
      goto LABEL_35;
    }

    if (*v98)
    {
      if (*v98 != 1)
      {
        goto LABEL_35;
      }

      (*(v63 + 16))(v37, v179 + v178, v8);
    }

    else
    {
      (*(v63 + 16))(v37, v179 + v77, v8);
    }

LABEL_42:
    (*(v63 + 56))(v37, 0, 1, v8);
    goto LABEL_43;
  }

  sub_5D4C(v78, &qword_71C88, &qword_5C2A0);
LABEL_35:
  (*(v63 + 56))(v37, 1, 1, v8);
LABEL_43:
  v94 = v173;
LABEL_44:
  sub_1AE38(v37, v94, &unk_72560, &qword_5E3E0);
  if ((*(v63 + 48))(v94, 1, v8) == 1)
  {
    sub_5D4C(v94, &unk_72560, &qword_5E3E0);
    v115 = v166;
    v163(v166, a1, v38);
    v116 = sub_5B218();
    v117 = v38;
    v118 = sub_5B4C8();
    if (os_log_type_enabled(v116, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v180 = v120;
      *v119 = 136315138;
      sub_1A95C(&qword_71C90, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v121 = sub_5B798();
      v123 = v122;
      v165(v115, v117);
      v124 = sub_2DC10(v121, v123, &v180);

      *(v119 + 4) = v124;
      _os_log_impl(&dword_0, v116, v118, "AppNameDisambiguationFlow: could not resolve action from %s", v119, 0xCu);
      sub_5D00(v120);
    }

    else
    {

      v165(v115, v117);
    }

    sub_5A6B8();
    sub_5A6A8();
    sub_5A678();

    sub_5CBC((v179 + 136), *(v179 + 160));
    sub_5A1E8();
    LOBYTE(v180) = 0;
    sub_5A1D8();
    sub_5A158();

    sub_5D4C(v37, &unk_72560, &qword_5E3E0);
    return 0;
  }

  else
  {
    v125 = v168;
    (*(v63 + 32))(v168, v94, v8);
    v126 = sub_5B94(&qword_71CC0, &unk_5C2C0);
    v127 = *(v126 + 48);
    v128 = *(v126 + 64);
    v129 = *(v63 + 16);
    v130 = v171;
    v129(v171, v125, v8);
    v131 = (v130 + v127);
    v132 = v179;
    v129(v131, (v179 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_firstAction), v8);
    v129((v130 + v128), (v132 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_secondAction), v8);
    (*(*(v126 - 8) + 56))(v130, 0, 3, v126);
    v133 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_state;
    swift_beginAccess();
    sub_1AEA0(v130, v132 + v133);
    swift_endAccess();
    v134 = sub_5B218();
    v135 = sub_5B4B8();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      *v136 = 0;
      _os_log_impl(&dword_0, v134, v135, "AppShorcutCollisionFlow: input accepted", v136, 2u);
    }

    (*(v63 + 8))(v125, v8);
    sub_5D4C(v37, &unk_72560, &qword_5E3E0);
    return 1;
  }
}

uint64_t sub_D7D4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  sub_5B94(&qword_73CA0, &qword_5C910);
  v2[9] = swift_task_alloc();
  sub_5B94(&qword_72530, &qword_5C660);
  v2[10] = swift_task_alloc();
  v3 = sub_59E38();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_5A318();
  v2[14] = v4;
  v5 = *(v4 - 8);
  v2[15] = v5;
  v2[16] = *(v5 + 64);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  type metadata accessor for AppNameDisambiguationFlow.State(0);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_DA04, 0, 0);
}

uint64_t sub_DA04()
{
  v81 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AppNameDisambiguationFlow: execute called", v4, 2u);
  }

  v5 = v0[24];
  v6 = v0[7];

  v7 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_state;
  swift_beginAccess();
  sub_1BB8C(v6 + v7, v5, type metadata accessor for AppNameDisambiguationFlow.State);
  v8 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v9 = (*(*(v8 - 8) + 48))(v5, 3, v8);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v20 = sub_5B218();
      v21 = sub_5B4C8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_0, v20, v21, "AppNameDisambiguationFlow: invalid respose", v22, 2u);
      }

      sub_5A6C8();
      sub_5A148();
      type metadata accessor for CamErrorFlow();
      swift_allocObject();
      v0[5] = sub_3147C(0xD000000000000010, 0x800000000005E9C0, v79, v80);
      sub_1A95C(&qword_72550, type metadata accessor for CamErrorFlow, &unk_5CE08);
      sub_5A088();

      sub_5A428();

      goto LABEL_26;
    }

    v26 = [objc_allocWithZone(SAUICloseAssistant) init];
    v0[26] = v26;
    sub_5B94(&qword_72460, &unk_5C5E0);
    v27 = swift_allocObject();
    v0[27] = v27;
    *(v27 + 16) = xmmword_5C4A0;
    *(v27 + 32) = v26;
    v28 = v26;
    v29 = swift_task_alloc();
    v0[28] = v29;
    *v29 = v0;
    v29[1] = sub_E5C4;
    v30 = v0[6];

    return sub_15828(v30, 0xD000000000000019, 0x800000000005E9A0, v27);
  }

  else
  {
    if (!v9)
    {
      v10 = v0[24];
      v76 = v0[21];
      v11 = v0[14];
      v12 = v0[12];
      v72 = v0[11];
      v74 = v0[22];
      v13 = v0[10];
      v14 = *(v8 + 48);
      v15 = *(v8 + 64);
      v16 = *(v0[15] + 32);
      v16(v0[23], v10, v11);
      v16(v74, v10 + v14, v11);
      v75 = v16;
      v16(v76, v10 + v15, v11);
      sub_5A308();
      if ((*(v12 + 48))(v13, 1, v72) == 1)
      {
        sub_5D4C(v0[10], &qword_72530, &qword_5C660);
        v17 = sub_5B218();
        v18 = sub_5B4C8();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_0, v17, v18, "AppShorcutCollisionFlow: could not extract loggingId from input", v19, 2u);
        }
      }

      else
      {
        v31 = v0[12];
        v32 = v0[13];
        v33 = v0[11];
        (*(v31 + 32))(v32, v0[10], v33);
        sub_5A6B8();
        sub_5A6A8();
        sub_5A698();

        (*(v31 + 8))(v32, v33);
      }

      v35 = v0[22];
      v34 = v0[23];
      v36 = v0[20];
      v70 = v0[21];
      v37 = v0[18];
      v38 = v0[19];
      v67 = v36;
      v68 = v38;
      v69 = v37;
      v39 = v0[16];
      v41 = v0[14];
      v40 = v0[15];
      v42 = v0[9];
      v71 = v0[8];
      v73 = v0[17];
      sub_5B448();
      v43 = sub_5B468();
      (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
      v44 = *(v40 + 16);
      v44(v36, v35, v41);
      v44(v38, v70, v41);
      v44(v37, v34, v41);
      v45 = *(v40 + 80);
      v46 = (v45 + 32) & ~v45;
      v47 = (v46 + v39 + v45) & ~v45;
      v48 = (v47 + v39 + v45) & ~v45;
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      v75(v49 + v46, v67, v41);
      v75(v49 + v47, v68, v41);
      v75(v49 + v48, v69, v41);
      *(v49 + ((v39 + v48 + 7) & 0xFFFFFFFFFFFFFFF8)) = v71;
      sub_E9C0(0, 0, v42, &unk_5C688, v49);

      sub_5D4C(v42, &qword_73CA0, &qword_5C910);
      v44(v73, v34, v41);
      v50 = sub_5B218();
      v51 = sub_5B4C8();
      v52 = os_log_type_enabled(v50, v51);
      v53 = v0[17];
      v55 = v0[14];
      v54 = v0[15];
      if (v52)
      {
        v56 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v80[0] = v78;
        *v56 = 136315138;
        sub_1A95C(&qword_71C10, &type metadata accessor for PluginAction, &protocol conformance descriptor for PluginAction);
        v77 = v51;
        v57 = sub_5B798();
        v59 = v58;
        v60 = *(v54 + 8);
        v60(v53, v55);
        v61 = sub_2DC10(v57, v59, v80);

        *(v56 + 4) = v61;
        _os_log_impl(&dword_0, v50, v77, "AppShorcutCollisionFlow: redirecting to resolved action %s", v56, 0xCu);
        sub_5D00(v78);
      }

      else
      {

        v60 = *(v54 + 8);
        v60(v53, v55);
      }

      v62 = v0[22];
      v63 = v0[23];
      v64 = v0[21];
      v65 = v0[14];
      sub_5A448();
      v60(v64, v65);
      v60(v62, v65);
      v60(v63, v65);
LABEL_26:

      v66 = v0[1];

      return v66();
    }

    v23 = swift_task_alloc();
    v0[25] = v23;
    *v23 = v0;
    v23[1] = sub_E3E0;
    v24 = v0[6];

    return sub_EC2C(v24);
  }
}

uint64_t sub_E3E0()
{

  return _swift_task_switch(sub_E4DC, 0, 0);
}

uint64_t sub_E4DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E5C4()
{

  return _swift_task_switch(sub_E6DC, 0, 0);
}

uint64_t sub_E6DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_E7F0, 0, 0);
}

uint64_t sub_E7F0()
{
  if (qword_71A48 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_E8CC;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_4F420(v4, v2, v3);
}

uint64_t sub_E8CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_E9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_5B94(&qword_73CA0, &qword_5C910);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1AE38(a3, v22 - v9, &qword_73CA0, &qword_5C910);
  v11 = sub_5B468();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_5D4C(v10, &qword_73CA0, &qword_5C910);
  }

  else
  {
    sub_5B458();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_5B418();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_5B368() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_EC2C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  sub_5B94(&unk_73CE0, &unk_5CB30);
  v2[14] = swift_task_alloc();
  v3 = sub_5A2A8();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v4 = sub_5A718();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  sub_5B94(&qword_72530, &qword_5C660);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v5 = sub_59E38();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_EE2C, 0, 0);
}

uint64_t sub_EE2C()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  *(v0 + 216) = sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AppNameDisambiguationFlow: rendering disambiguation", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  *v5 = v0;
  v5[1] = sub_EF84;

  return sub_10F98(v0 + 56);
}

uint64_t sub_EF84()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_F744;
  }

  else
  {
    v2 = sub_F098;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_F098()
{
  v2 = (v0 + 176);
  v1 = *(v0 + 176);
  v3 = v0 + 16;
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  sub_5B7C((v0 + 56), v0 + 16);
  sub_5A308();
  v6 = *(v5 + 48);
  if (v6(v1, 1, v4) != 1)
  {
    v2 = (v0 + 168);
    v7 = *(v0 + 168);
    v8 = *(v0 + 184);
    v9 = *(*(v0 + 192) + 32);
    (v9)(*(v0 + 208), *(v0 + 176), v8);
    sub_5A308();
    if (v6(v7, 1, v8) != 1)
    {
      v13 = *(v0 + 192);
      v29 = *(v0 + 200);
      v14 = *(v0 + 184);
      v15 = *(v0 + 152);
      v30 = *(v0 + 144);
      v31 = *(v0 + 160);
      v16 = *(v0 + 208);
      v9();
      sub_5A6B8();
      sub_5A6A8();
      sub_5B94(&unk_72540, &unk_5C670);
      v17 = *(v13 + 72);
      v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_5C2D0;
      v20 = v19 + v18;
      v21 = *(v13 + 16);
      v21(v20, v16, v14);
      v21(v20 + v17, v29, v14);
      (*(v15 + 104))(v31, enum case for CAMDisambiguationDialogType.appName(_:), v30);
      sub_5A688();

      (*(v15 + 8))(v31, v30);
      v22 = *(v13 + 8);
      v22(v29, v14);
      v23 = v16;
      v3 = v0 + 16;
      v22(v23, v14);
      goto LABEL_8;
    }

    (*(*(v0 + 192) + 8))(*(v0 + 208), *(v0 + 184));
  }

  sub_5D4C(*v2, &qword_72530, &qword_5C660);
  v10 = sub_5B218();
  v11 = sub_5B4B8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "AppNameDisambiguationFlow: could not extract loggingIds for actions. SELF message was not emitted as a result.", v12, 2u);
  }

LABEL_8:
  v24 = *(v0 + 104);
  v25 = v24[15];
  v26 = v24[16];
  sub_5CBC(v24 + 12, v25);
  v27 = swift_task_alloc();
  *(v0 + 240) = v27;
  *v27 = v0;
  v27[1] = sub_F424;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v3, v25, v26);
}

uint64_t sub_F424()
{

  if (v0)
  {

    v1 = sub_1BBF4;
  }

  else
  {
    v1 = sub_F53C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_F53C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  sub_5CBC((v0[13] + 136), *(v0[13] + 160));
  sub_5A1E8();
  (*(v2 + 104))(v1, enum case for ActivityType.disambiguation(_:), v4);
  v5 = enum case for SiriKitReliabilityCodes.disambiguationShortcutVsOther(_:);
  v6 = sub_5A168();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v3, v5, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  sub_5A1C8();
  sub_5A158();

  sub_5A408();
  sub_5D00(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_F744()
{
  swift_errorRetain();
  v1 = sub_5B218();
  v2 = sub_5B4C8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "AppNameDisambiguationFlow: Cannot create output for disambiguation, will redirect to fall back action. Error: %@", v3, 0xCu);
    sub_5D4C(v4, &qword_72538, &qword_5C668);
  }

  sub_5A448();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_F8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a3;
  v43 = a1;
  v44 = a2;
  v7 = sub_5A318();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v11 = sub_5B228();
  v40 = sub_5B44(v11, qword_763B8);
  v12 = sub_5B218();
  v13 = sub_5B4B8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = a4;
    v16 = swift_slowAlloc();
    v45 = v16;
    *v14 = 136315138;
    *(v14 + 4) = sub_2DC10(0xD000000000000027, 0x800000000005E970, &v45);
    _os_log_impl(&dword_0, v12, v13, "AppNameDisambiguationFlow: %s", v14, 0xCu);
    sub_5D00(v16);
    a4 = v15;
  }

  sub_5B94(&qword_724F0, &qword_5C310);
  v17 = *(v8 + 72);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_5C2D0;
  v20 = v19 + v18;
  v42 = v8;
  v23 = *(v8 + 16);
  v21 = v8 + 16;
  v22 = v23;
  v23(v20, v41, v7);
  v23((v20 + v17), a4, v7);
  v23(v10, v20, v7);
  v24 = sub_41E68();
  if (v25)
  {
    if (v24 == v43 && v25 == v44)
    {
      goto LABEL_15;
    }

    v27 = sub_5B7A8();

    if (v27)
    {
LABEL_16:
      v31 = v42;

      (*(v31 + 32))(a5, v10, v7);
      v32 = 0;
      return (*(v31 + 56))(a5, v32, 1, v7);
    }
  }

  v41 = a5;
  v28 = *(v21 - 8);
  v28(v10, v7);
  v22(v10, v20 + v17, v7);
  v29 = sub_41E68();
  if (v30)
  {
    if (v29 == v43 && v30 == v44)
    {
      a5 = v41;
LABEL_15:

      goto LABEL_16;
    }

    v33 = sub_5B7A8();

    if (v33)
    {
      a5 = v41;
      goto LABEL_16;
    }
  }

  v28(v10, v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v34 = v44;

  v35 = sub_5B218();
  v36 = sub_5B4B8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v45 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_2DC10(v43, v34, &v45);
    _os_log_impl(&dword_0, v35, v36, "AppNameDisambiguationFlow: No match found for appBundleId %s", v37, 0xCu);
    sub_5D00(v38);
  }

  v32 = 1;
  a5 = v41;
  v31 = v42;
  return (*(v31 + 56))(a5, v32, 1, v7);
}

uint64_t sub_FD9C()
{
  v1 = v0;
  v2 = sub_5A318();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5ABE8();
  v133 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v131 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v132 = &v116 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v116 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v116 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v116 - v18;
  __chkstk_darwin(v17);
  v130 = &v116 - v20;
  v21 = sub_4FA30();
  if (!v21)
  {
    goto LABEL_27;
  }

  v22 = v21;
  v129 = v13;
  v23 = sub_5AE28();
  if (!*(v23 + 16) || (v24 = sub_37278(0x636E657265666572, 0xE900000000000065), (v25 & 1) == 0))
  {
LABEL_25:

LABEL_26:

LABEL_27:
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v34 = sub_5B228();
    sub_5B44(v34, qword_763B8);
    v35 = sub_5B218();
    v36 = sub_5B4B8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v136[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_2DC10(0xD000000000000016, 0x800000000005E930, v136);
      _os_log_impl(&dword_0, v35, v36, "%s: Cannot find node in USO tree that contains app name identifiers", v37, 0xCu);
      sub_5D00(v38);
    }

    return 0;
  }

  v26 = *(*(v23 + 56) + 8 * v24);

  if (v26 >> 62)
  {
    if (sub_5B678())
    {
      goto LABEL_6;
    }

LABEL_114:

    goto LABEL_27;
  }

  if (!*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_114;
  }

LABEL_6:
  v128 = v6;
  if ((v26 & 0xC000000000000001) != 0)
  {
    v6 = sub_5B5B8();
  }

  else
  {
    if (!*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_117;
    }

    v6 = *(v26 + 32);
  }

  if (!sub_5AE78())
  {
    goto LABEL_34;
  }

  v27 = sub_5AE88();

  if (*(v27 + 16))
  {
    v28 = sub_37278(0xD000000000000010, 0x800000000005E950);
    if (v29)
    {
      v26 = *(*(v27 + 56) + 8 * v28);

      if (v26 >> 62)
      {
        goto LABEL_118;
      }

      if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_14;
      }
    }
  }

LABEL_33:

  while (1)
  {
LABEL_34:
    if (!sub_5AE78())
    {

      goto LABEL_26;
    }

    v40 = sub_5AE88();

    if (!*(v40 + 16) || (v41 = sub_37278(1701667182, 0xE400000000000000), (v42 & 1) == 0))
    {

      goto LABEL_27;
    }

    v26 = *(*(v40 + 56) + 8 * v41);

    if (v26 >> 62)
    {
      if (sub_5B678())
      {
        goto LABEL_39;
      }

LABEL_121:

      goto LABEL_114;
    }

    if (!*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_121;
    }

LABEL_39:
    if ((v26 & 0xC000000000000001) == 0)
    {
      if (!*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_125;
      }

      goto LABEL_41;
    }

LABEL_122:
    v43 = sub_5B5B8();
LABEL_42:
    v120 = v3;
    v116 = v1;
    v121 = v6;
    v117 = v5;
    v122 = v22;
    v118 = v2;

    v119 = v43;
    v44 = sub_5AE68();
    v6 = v44;
    v127 = *(v44 + 16);
    if (v127)
    {
      break;
    }

    v45 = _swiftEmptyArrayStorage;
    v46 = v128;
LABEL_60:

    if (v45[2])
    {
      v57 = v133;
      v58 = v130;
      (v133[2])(v130, v45 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v46);

      v59 = sub_5ABC8();

      (v57[1])(v58, v46);
      return v59;
    }

    v26 = v119;
    v19 = sub_5AE68();
    v5 = *(v19 + 2);
    v2 = v121;
    if (!v5)
    {
      v16 = _swiftEmptyArrayStorage;
      v6 = v120;
LABEL_79:

      if (*(v16 + 2))
      {
        v70 = v133;
        v71 = v128;
        v72 = v129;
        (v133[2])(v129, &v16[(*(v70 + 80) + 32) & ~*(v70 + 80)], v128);

        v59 = sub_5ABC8();

        (v70[1])(v72, v71);
        return v59;
      }

      if (qword_71A58 != -1)
      {
        swift_once();
      }

      v73 = sub_5B228();
      v74 = sub_5B44(v73, qword_763B8);
      v75 = sub_5B218();
      v76 = sub_5B4B8();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v136[0] = v78;
        *v77 = 136315138;
        *(v77 + 4) = sub_2DC10(0xD000000000000016, 0x800000000005E930, v136);
        _os_log_impl(&dword_0, v75, v76, "%s: No value can be derived for appBundleId", v77, 0xCu);
        sub_5D00(v78);
      }

      v79 = sub_5B218();
      v80 = sub_5B4B8();
      v81 = os_log_type_enabled(v79, v80);
      v132 = v74;
      if (v81)
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v136[0] = v83;
        *v82 = 136315138;
        *(v82 + 4) = sub_2DC10(0xD000000000000016, 0x800000000005E930, v136);
        _os_log_impl(&dword_0, v79, v80, "%s: Attempting string match", v82, 0xCu);
        sub_5D00(v83);
      }

      sub_5B94(&qword_724F0, &qword_5C310);
      v84 = *(v6 + 72);
      v85 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_5C2D0;
      v87 = v86 + v85;
      v90 = *(v6 + 16);
      v88 = v6 + 16;
      v89 = v90;
      v91 = v116;
      v92 = v118;
      v90(v87, &v116[OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_firstAction], v118);
      v90((v87 + v84), &v91[OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_secondAction], v92);
      v93 = (v88 - 8);
      v94 = v117;
      v120 = v88;
      v90(v117, v87, v92);
      v95 = sub_5CBC(v91 + 22, *(v91 + 25));
      v96 = sub_180B4(*v95);
      v133 = (v88 - 8);
      if (v97)
      {
        v98 = v96;
        v99 = v97;
        v100 = sub_5AE58();
        if (v101)
        {
          if (v98 == v100 && v99 == v101)
          {
            v3 = v118;
            goto LABEL_100;
          }

          v102 = sub_5B7A8();

          if (v102)
          {
            v3 = v118;
            goto LABEL_104;
          }
        }

        v19 = *v133;
        v94 = v117;
        v92 = v118;
        (*v133)(v117, v118);
      }

      else
      {
        v19 = *v93;
        (*v93)(v94, v92);
      }

      v89(v94, v87 + v84, v92);
      v103 = sub_5CBC(v116 + 22, *(v116 + 25));
      v104 = sub_180B4(*v103);
      if (!v105)
      {
        (v19)(v94, v92);
        goto LABEL_112;
      }

      v98 = v104;
      v99 = v105;
      v106 = sub_5AE58();
      if (!v107)
      {
        v108 = v94;
        v3 = v118;
        goto LABEL_111;
      }

      v3 = v118;
      if (v98 == v106 && v99 == v107)
      {
LABEL_100:
      }

      else
      {
        v109 = sub_5B7A8();

        if ((v109 & 1) == 0)
        {
          goto LABEL_110;
        }
      }

LABEL_104:

      v110 = sub_5B218();
      v111 = sub_5B4B8();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v136[0] = swift_slowAlloc();
        *v112 = 136315394;
        *(v112 + 4) = sub_2DC10(0xD000000000000016, 0x800000000005E930, v136);
        *(v112 + 12) = 2080;
        v113 = sub_2DC10(v98, v99, v136);

        *(v112 + 14) = v113;
        _os_log_impl(&dword_0, v110, v111, "%s: Matched exact name %s", v112, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v114 = v133;
      v115 = v117;
      v59 = sub_41E68();

      (*v114)(v115, v3);
      return v59;
    }

    v1 = 0;
    v22 = v132;
    v130 = (v133 + 2);
    v126 = (v133 + 4);
    v16 = _swiftEmptyArrayStorage;
    v127 = (v133 + 1);
    v125 = v5;
    while (v1 < *(v19 + 2))
    {
      v3 = (*(v133 + 80) + 32) & ~*(v133 + 80);
      v60 = v133[9];
      v61 = v128;
      (v133[2])(v22, &v19[v3 + v60 * v1], v128);
      v26 = v22;
      v62 = sub_5ABD8();
      if (v63)
      {
        if (v62 == 0x656D614E707061 && v63 == 0xE700000000000000)
        {

          v22 = v132;
        }

        else
        {
          v26 = v63;
          v64 = sub_5B7A8();

          v22 = v132;
          if ((v64 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        v136[0] = sub_5ABC8();
        v136[1] = v65;
        v134 = 46;
        v135 = 0xE100000000000000;
        sub_1AB80();
        v26 = sub_5B528();

        if (v26)
        {
          v66 = *v126;
          (*v126)(v131, v22, v61);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v137[0] = v16;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v26 = v137;
            sub_375EC(0, *(v16 + 2) + 1, 1);
            v22 = v132;
            v16 = v137[0];
          }

          v69 = *(v16 + 2);
          v68 = *(v16 + 3);
          if (v69 >= v68 >> 1)
          {
            v26 = v137;
            sub_375EC((v68 > 1), v69 + 1, 1);
            v22 = v132;
            v16 = v137[0];
          }

          *(v16 + 2) = v69 + 1;
          v66(&v16[v3 + v69 * v60], v131, v128);
          v5 = v125;
          goto LABEL_65;
        }
      }

LABEL_64:
      (*v127)(v22, v61);
LABEL_65:
      ++v1;
      v6 = v120;
      v2 = v121;
      if (v5 == v1)
      {
        goto LABEL_79;
      }
    }

LABEL_117:
    __break(1u);
LABEL_118:
    if (!sub_5B678())
    {
      goto LABEL_33;
    }

LABEL_14:
    if ((v26 & 0xC000000000000001) == 0)
    {
      if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
      {

        goto LABEL_17;
      }

      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      if (!sub_5B678())
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    sub_5B5B8();
LABEL_17:

    v30 = sub_5AE78();

    if (v30)
    {
      v31 = sub_5AE88();

      if (!*(v31 + 16))
      {
        goto LABEL_33;
      }

      v32 = sub_37278(1701667182, 0xE400000000000000);
      if ((v33 & 1) == 0)
      {
        goto LABEL_33;
      }

      v26 = *(*(v31 + 56) + 8 * v32);

      if (v26 >> 62)
      {
        goto LABEL_126;
      }

      if (!*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_33;
      }

LABEL_22:
      if ((v26 & 0xC000000000000001) != 0)
      {
        goto LABEL_122;
      }

      if (!*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_25;
      }

LABEL_41:
      v43 = *(v26 + 32);

      goto LABEL_42;
    }
  }

  v3 = 0;
  v125 = (v133 + 4);
  v126 = (v133 + 2);
  v124 = (v133 + 1);
  v45 = _swiftEmptyArrayStorage;
  v46 = v128;
  v123 = v44;
  while (v3 < *(v6 + 16))
  {
    v47 = (*(v133 + 80) + 32) & ~*(v133 + 80);
    v48 = v133[9];
    (v133[2])(v19, v6 + v47 + v48 * v3, v46);
    v49 = sub_5ABD8();
    if (v50)
    {
      if (v49 == 0x64695F6D657469 && v50 == 0xE700000000000000)
      {

LABEL_52:
        v52 = *v125;
        (*v125)(v16, v19, v46);
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v136[0] = v45;
        if ((v53 & 1) == 0)
        {
          sub_375EC(0, v45[2] + 1, 1);
          v45 = v136[0];
        }

        v55 = v45[2];
        v54 = v45[3];
        if (v55 >= v54 >> 1)
        {
          sub_375EC((v54 > 1), v55 + 1, 1);
          v45 = v136[0];
        }

        v45[2] = v55 + 1;
        v56 = v45 + v47 + v55 * v48;
        v46 = v128;
        v52(v56, v16, v128);
        v6 = v123;
        goto LABEL_45;
      }

      v51 = sub_5B7A8();

      if (v51)
      {
        goto LABEL_52;
      }
    }

    (*v124)(v19, v46);
LABEL_45:
    if (v127 == ++v3)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_110:
  v108 = v117;
LABEL_111:
  (v19)(v108, v3);

LABEL_112:

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return 0;
}

uint64_t sub_10F98(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v2[40] = *v1;
  sub_5B94(&unk_72440, &unk_5C460);
  v2[41] = swift_task_alloc();
  v3 = sub_5A488();
  v2[42] = v3;
  v2[43] = *(v3 - 8);
  v2[44] = swift_task_alloc();
  v4 = sub_5AA98();
  v2[45] = v4;
  v2[46] = *(v4 - 8);
  v2[47] = swift_task_alloc();
  sub_5B94(&qword_724E8, &qword_5D090);
  v2[48] = swift_task_alloc();
  v5 = sub_5A3B8();
  v2[49] = v5;
  v2[50] = *(v5 - 8);
  v2[51] = swift_task_alloc();
  v6 = sub_5A5B8();
  v2[52] = v6;
  v2[53] = *(v6 - 8);
  v2[54] = swift_task_alloc();
  v7 = sub_5A648();
  v2[55] = v7;
  v2[56] = *(v7 - 8);
  v2[57] = swift_task_alloc();
  v8 = sub_5A588();
  v2[58] = v8;
  v2[59] = *(v8 - 8);
  v2[60] = swift_task_alloc();

  return _swift_task_switch(sub_112BC, 0, 0);
}

uint64_t sub_112BC()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AppNameDisambiguationFlow: building output", v4, 2u);
  }

  v5 = *(v0 + 312);
  v6 = *(v0 + 320);

  sub_5B94(&qword_724F0, &qword_5C310);
  v7 = sub_5A318();
  *(v0 + 488) = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = *(v8 + 80);
  *(v0 + 600) = v10;
  v11 = (v10 + 32) & ~v10;
  v12 = swift_allocObject();
  *(v0 + 496) = v12;
  *(v12 + 16) = xmmword_5C2D0;
  v13 = *(v8 + 16);
  v13(v12 + v11, v5 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_firstAction, v7);
  v13(v12 + v11 + v9, v5 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_secondAction, v7);
  sub_5B638();
  sub_3856C(0);
  sub_5B618();
  sub_5B648();
  sub_5B658();
  sub_5B628();
  sub_3856C(1);
  sub_5B618();
  sub_5B648();
  sub_5B658();
  sub_5B628();
  *(v0 + 504) = _swiftEmptyArrayStorage;
  v14 = swift_allocObject();
  *(v0 + 512) = v14;
  *(v14 + 16) = v5;
  *(v14 + 24) = v6;

  v15 = swift_task_alloc();
  *(v0 + 520) = v15;
  *v15 = v0;
  v15[1] = sub_11608;

  return sub_505A4(&unk_5C630, v14, v12);
}

uint64_t sub_11608(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 528) = a1;

  if (v1)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1182C, 0, 0);
  }
}

uint64_t sub_1182C()
{
  v1 = v0[66];
  sub_5F90(v0[39] + 56, (v0 + 25));
  sub_5CBC(v0 + 25, v0[28]);
  sub_5B94(&qword_724F8, &qword_5C638);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  v0[35] = 0x73656D614E707061;
  v0[36] = 0xE800000000000000;
  sub_5B568();
  v3 = *(v1 + 16);
  if (v3)
  {
    v18 = inited;
    v4 = v0[66];
    sub_37758(0, v3, 0);
    v5 = _swiftEmptyArrayStorage[2];
    v6 = 2 * v5;
    v7 = (v4 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = _swiftEmptyArrayStorage[3];

      if (v5 >= v10 >> 1)
      {
        sub_37758((v10 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v11 = &_swiftEmptyArrayStorage[v6];
      v11[4] = v8;
      v11[5] = v9;
      v6 += 2;
      v7 += 4;
      ++v5;
      --v3;
    }

    while (v3);
    inited = v18;
  }

  *(inited + 96) = sub_5B94(&qword_72500, &unk_5C640);
  *(inited + 72) = _swiftEmptyArrayStorage;
  v12 = sub_38208(inited);
  v0[67] = v12;
  swift_setDeallocating();
  sub_5D4C(inited + 32, &qword_72508, &unk_5D130);
  sub_5B94(&qword_721C8, &unk_5CD60);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_5C390;
  *(v13 + 32) = 0x65736E6F70736572;
  v14 = v13 + 32;
  *(v13 + 72) = &type metadata for String;
  *(v13 + 40) = 0xEC00000065646F4DLL;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0xE000000000000000;
  v15 = sub_3802C(v13);
  v0[68] = v15;
  swift_setDeallocating();
  sub_5D4C(v14, &unk_72450, &unk_5C470);
  v16 = swift_task_alloc();
  v0[69] = v16;
  *v16 = v0;
  v16[1] = sub_11B0C;

  return sub_3419C(0xD000000000000025, 0x800000000005E900, v12, v15);
}

uint64_t sub_11B0C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 560) = a1;
  *(v3 + 568) = v1;

  if (v1)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v4 = sub_12110;
  }

  else
  {
    v4 = sub_11CCC;
  }

  return _swift_task_switch(v4, 0, 0);
}

void *sub_11CCC()
{
  v1 = v0[70];
  sub_5D00(v0 + 25);
  v2 = [v1 print];
  v3 = sub_5B3D8();

  v4 = [v1 speak];
  v5 = sub_5B3D8();

  v6 = [v1 spokenOnly];
  sub_1AB38(0, &qword_72510, NSNumber_ptr);
  v7 = sub_5B3D8();

  v8 = sub_135B4(v3, v5, v7);

  v9 = v8[2];
  if (v9)
  {
    v10 = v0[53];
    v11 = v0[50];
    result = sub_376F4(0, v9, 0);
    v13 = 0;
    v29 = v8;
    v30 = v8[2];
    v26 = (v11 + 56);
    v27 = v10;
    v14 = (v8 + 8);
    v28 = v9;
    while (v30 != v13)
    {
      if (v13 >= v8[2])
      {
        goto LABEL_12;
      }

      v15 = v0[48];
      v31 = v0[49];
      v16 = *v14;

      v17 = v16;
      v33._countAndFlagsBits = 35;
      v33._object = 0xE100000000000000;
      sub_5B388(v33);
      v0[37] = v13;
      v34._countAndFlagsBits = sub_5B798();
      sub_5B388(v34);

      sub_5A398();
      (*v26)(v15, 1, 1, v31);
      [v17 BOOLValue];
      sub_5A598();

      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (v19 >= v18 >> 1)
      {
        sub_376F4((v18 > 1), v19 + 1, 1);
      }

      v20 = v0[54];
      v21 = v0[52];
      ++v13;
      _swiftEmptyArrayStorage[2] = v19 + 1;
      result = (*(v27 + 32))(_swiftEmptyArrayStorage + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v19, v20, v21);
      v14 += 5;
      v8 = v29;
      if (v28 == v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:

    (*(v0[56] + 104))(v0[57], enum case for BehaviorAfterSpeaking.listen(_:), v0[55]);
    sub_5A548();
    v22 = swift_task_alloc();
    v0[72] = v22;
    *v22 = v0;
    v22[1] = sub_121E4;
    v23 = v0[66];
    v24 = v0[63];
    v25 = v0[60];

    return sub_14CD0(v23, v24, v25);
  }

  return result;
}

uint64_t sub_12110()
{
  sub_5D00((v0 + 200));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_121E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 584) = a1;
  *(v3 + 592) = v1;

  if (v1)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v4 = sub_12790;
  }

  else
  {

    v4 = sub_12394;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_12394()
{
  v1 = *(v0 + 592);
  sub_139A8(*(v0 + 496), *(v0 + 376));
  if (v1)
  {
    v2 = *(v0 + 560);
    (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    v18 = *(v0 + 560);
    v17 = *(v0 + 480);
    v19 = *(v0 + 472);
    v20 = *(v0 + 464);
    v4 = *(v0 + 376);
    v5 = *(v0 + 360);
    v6 = *(v0 + 368);
    v7 = *(v0 + 344);
    v8 = *(v0 + 352);
    v14 = *(v0 + 328);
    v15 = *(v0 + 336);
    v9 = *(v0 + 312);
    v16 = *(v0 + 304);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_5A478();
    sub_5B94(&qword_72518, &unk_5C650);
    v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_5C390;
    (*(v6 + 16))(v11 + v10, v4, v5);
    sub_5A458();
    sub_5CBC((v9 + 16), *(v9 + 40));
    sub_5A218();
    (*(v7 + 16))(v14, v8, v15);
    (*(v7 + 56))(v14, 0, 1, v15);
    v12 = sub_5A908();
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0;
    *(v0 + 240) = 0u;
    v16[3] = v12;
    v16[4] = &protocol witness table for AceOutput;
    sub_5F2C(v16);
    sub_5A3E8();

    sub_5D4C(v0 + 240, &qword_721D8, &qword_5C480);
    sub_5D4C(v14, &unk_72440, &unk_5C460);
    (*(v7 + 8))(v8, v15);
    (*(v6 + 8))(v4, v5);
    (*(v19 + 8))(v17, v20);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_12790()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_12884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_59E68();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_5A858();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = sub_5A7D8();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = sub_5A8E8();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  sub_5B94(&unk_72520, &qword_5C320);
  v3[24] = swift_task_alloc();
  v8 = sub_5A638();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_12B14, 0, 0);
}

uint64_t sub_12B14(uint64_t a1)
{
  v1[2] = sub_41E68();
  v1[3] = v2;
  v1[28] = v2;
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = sub_5CBC((v1[8] + 176), *(v1[8] + 200));
  v1[4] = sub_180B4(*v3);
  v1[5] = v4;
  v1[29] = v4;
  if (!v4)
  {

LABEL_7:
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v23 = sub_5B228();
    sub_5B44(v23, qword_763B8);
    v24 = sub_5B218();
    v25 = sub_5B4C8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "AppNameDisambiguationFlow: cannot map action to AppDisambiguationDisplayInfo", v26, 2u);
    }

    v27 = v1[7];

    type metadata accessor for AppNameDisambiguationError(0);
    sub_1A95C(&unk_724B8, type metadata accessor for AppNameDisambiguationError, &unk_5C738);
    swift_allocError();
    v29 = v28;
    v30 = sub_5A318();
    (*(*(v30 - 8) + 16))(v29, v27, v30);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v31 = v1[1];
    goto LABEL_16;
  }

  v5 = v1[19];
  v6 = v1[16];
  v7 = v1[17];
  v8 = v1[15];
  v9 = v1[12];
  v10 = v1[13];
  sub_5A2F8();
  sub_5A7C8();
  v11 = *(v7 + 8);
  v11(v5, v6);
  v12 = *(v10 + 88);
  v13 = v12(v8, v9);
  if (v13 != enum case for Parse.uso(_:))
  {
    v32 = v1[25];
    v33 = v1[26];
    v34 = v1[24];
    (*(v1[13] + 8))(v1[15], v1[12]);
    (*(v33 + 56))(v34, 1, 1, v32);
LABEL_15:
    sub_5D4C(v1[24], &unk_72520, &qword_5C320);
    v42 = v1[28];
    v41 = v1[29];
    v43 = v1[2];
    v44 = v1[6];
    *v44 = v1[4];
    v44[1] = v41;
    v44[2] = v43;
    v44[3] = v42;

    v31 = v1[1];
LABEL_16:

    return v31();
  }

  v14 = v13;
  v15 = v1[21];
  v55 = v1[20];
  v56 = v1[23];
  v16 = v1[18];
  v17 = v1[15];
  v58 = v1[14];
  v59 = v1[12];
  v60 = v1[16];
  v54 = *(v1[13] + 96);
  v54(v17);
  v18 = v56;
  v57 = *(v15 + 32);
  v57(v18, v17, v55);
  sub_5A2F8();
  sub_5A7C8();
  v11(v16, v60);
  if (v12(v58, v59) == v14)
  {
    v20 = v1[21];
    v19 = v1[22];
    v21 = v1[20];
    v22 = v1[14];
    (v54)(v22, v1[12]);
    v57(v19, v22, v21);
    sub_5A878();
    (*(v20 + 8))(v19, v21);
  }

  else
  {
    (*(v1[13] + 8))(v1[14], v1[12]);
  }

  v35 = v1[25];
  v36 = v1[26];
  v37 = v1[23];
  v38 = v1[24];
  v39 = v1[20];
  v40 = v1[21];
  sub_5A8B8();
  (*(v40 + 8))(v37, v39);
  if ((*(v36 + 48))(v38, 1, v35) == 1)
  {
    goto LABEL_15;
  }

  v47 = v1[10];
  v46 = v1[11];
  v48 = v1[8];
  v49 = v1[9];
  (*(v1[26] + 32))(v1[27], v1[24], v1[25]);
  sub_5CBC((v48 + 16), *(v48 + 40));
  sub_5A208();
  v50 = sub_59E48();
  v52 = v51;
  v1[30] = v51;
  (*(v47 + 8))(v46, v49);
  if (qword_71A50 != -1)
  {
    swift_once();
  }

  v53 = swift_task_alloc();
  v1[31] = v53;
  *v53 = v1;
  v53[1] = sub_131A0;

  return AppShortcutInvocation.exists(siriLanguage:provider:)(v50, v52, qword_76390);
}

uint64_t sub_131A0(char a1)
{
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_132C0, 0, 0);
}

uint64_t sub_132C0()
{
  if (*(v0 + 256) == 1)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    v2 = *(v0 + 224);
    v1 = *(v0 + 232);
    v3 = *(v0 + 16);
    v4 = *(v0 + 48);
    *v4 = *(v0 + 32);
    v4[1] = v1;
    v4[2] = v3;
    v4[3] = v2;

    v5 = *(v0 + 8);
  }

  else
  {

    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v6 = sub_5B228();
    sub_5B44(v6, qword_763B8);
    v7 = sub_5B218();
    v8 = sub_5B4C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "AppNameDisambiguationFlow: appShortcut invocation does not exist", v9, 2u);
    }

    v11 = *(v0 + 208);
    v10 = *(v0 + 216);
    v12 = *(v0 + 200);

    type metadata accessor for AppNameDisambiguationError(0);
    sub_1A95C(&unk_724B8, type metadata accessor for AppNameDisambiguationError, &unk_5C738);
    swift_allocError();
    (*(v11 + 16))(v13, v10, v12);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v11 + 8))(v10, v12);

    v5 = *(v0 + 8);
  }

  return v5();
}

void *sub_135B4(char *a1, char *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = *(a1 + 2);
  v42 = a3 >> 62;
  v43 = *(a2 + 2);
  if (a3 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_5B678())
  {
    v8 = i >= v43 ? v43 : i;
    v9 = v8 >= v6 ? v6 : v8;
    result = sub_37738(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      break;
    }

    v11 = v9;
    v32 = v8;
    v37 = v3;
    v41 = v6;
    v33 = v4;
    v34 = v5;
    if (v9)
    {
      v38 = v3 & 0xFFFFFFFFFFFFFF8;
      v39 = v3 & 0xC000000000000001;
      v35 = v3 + 32;

      v12 = 0;
      v3 = (v4 + 40);
      v13 = (v5 + 40);
      v40 = v11;
      while (v6 != v12)
      {
        if (v43 == v12)
        {
          goto LABEL_45;
        }

        v5 = *(v13 - 1);
        v14 = *v13;
        v4 = *(v3 - 8);
        v15 = *v3;
        if (v42)
        {
          v16 = sub_5B678();
        }

        else
        {
          v16 = *(v38 + 16);
        }

        if (v12 == v16)
        {
          goto LABEL_46;
        }

        v44 = v4;
        v45 = v5;
        if (v39)
        {

          v17 = sub_5B5B8();
        }

        else
        {
          if (v12 >= *(v38 + 16))
          {
            goto LABEL_47;
          }

          v18 = *(v35 + 8 * v12);

          v17 = v18;
        }

        v5 = v17;
        v20 = _swiftEmptyArrayStorage[2];
        v19 = _swiftEmptyArrayStorage[3];
        v4 = (v20 + 1);
        v11 = v40;
        if (v20 >= v19 >> 1)
        {
          sub_37738((v19 > 1), v20 + 1, 1);
          v11 = v40;
        }

        ++v12;
        _swiftEmptyArrayStorage[2] = v4;
        v21 = &_swiftEmptyArrayStorage[5 * v20];
        v21[4] = v45;
        v21[5] = v14;
        v21[6] = v44;
        v21[7] = v15;
        v21[8] = v5;
        v3 += 16;
        v13 += 2;
        v6 = v41;
        if (v11 == v12)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }

    else
    {

LABEL_27:
      if (v6 <= v32)
      {
LABEL_43:

        return _swiftEmptyArrayStorage;
      }

      v22 = 16 * v11 + 40;
      v4 = &v34[v22];
      v23 = &v33[v22];
      while (v11 < v6)
      {
        if (v43 == v11)
        {
          goto LABEL_43;
        }

        v25 = *(v4 - 1);
        v24 = *v4;
        v3 = *(v23 - 1);
        v26 = *v23;
        if (v42)
        {
          v5 = v11;
          if (v11 == sub_5B678())
          {
            goto LABEL_43;
          }
        }

        else if (v11 == *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_43;
        }

        v46 = v3;
        if ((v37 & 0xC000000000000001) != 0)
        {

          v27 = v11;
          v29 = sub_5B5B8();
        }

        else
        {
          if (v11 >= *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_49;
          }

          v27 = v11;
          v28 = *(v37 + 32 + 8 * v11);

          v29 = v28;
        }

        v3 = _swiftEmptyArrayStorage[2];
        v30 = _swiftEmptyArrayStorage[3];
        v5 = (v3 + 1);
        if (v3 >= v30 >> 1)
        {
          v36 = v29;
          sub_37738((v30 > 1), v3 + 1, 1);
          v29 = v36;
        }

        v11 = v27 + 1;
        _swiftEmptyArrayStorage[2] = v5;
        v31 = &_swiftEmptyArrayStorage[5 * v3];
        v31[4] = v25;
        v31[5] = v24;
        v31[6] = v46;
        v31[7] = v26;
        v31[8] = v29;
        v4 += 16;
        v23 += 16;
        v6 = v41;
        if (v41 == v11)
        {
          goto LABEL_43;
        }
      }
    }

    __break(1u);
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_139A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v78 = sub_5B94(&qword_72498, &qword_5C608);
  v6 = __chkstk_darwin(v78);
  v76 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v77 = &v60 - v8;
  v75 = sub_5AA18();
  v9 = *(v75 - 8);
  __chkstk_darwin(v75);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_5AA98();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v66 = &v60 - v17;
  v18 = sub_5AAC8();
  v61 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v65 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  v62 = a2;
  v64 = v13;
  v63 = v19;
  if (v21)
  {
    v60 = v12;
    v82[0] = _swiftEmptyArrayStorage;
    v70 = v21;
    sub_376B0(0, v21, 0);
    v80 = v82[0];
    v22 = 0;
    v74 = sub_5A318();
    v23 = *(v74 - 8);
    v24 = *(v23 + 16);
    v72 = v23 + 16;
    v73 = v24;
    v25 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v71 = (v23 + 32);
    v67 = *(v23 + 72);
    v68 = v9 + 32;
    v69 = v9;
    while (1)
    {
      v81 = v3;
      v26 = v16;
      v28 = v77;
      v27 = v78;
      v29 = *(v78 + 48);
      v30 = v74;
      v73(&v77[v29], v25, v74);
      v31 = v76;
      *v76 = v22;
      v32 = *(v27 + 48);
      v33 = &v28[v29];
      v34 = v31;
      (*v71)(&v31[v32], v33, v30);
      v35 = v81;
      sub_1418C((v34 + v32), v79, v11);
      if (v35)
      {
        break;
      }

      v36 = v26;
      sub_5D4C(v34, &qword_72498, &qword_5C608);
      v37 = v80;
      v82[0] = v80;
      v39 = *(v80 + 16);
      v38 = *(v80 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_376B0((v38 > 1), v39 + 1, 1);
        v37 = v82[0];
      }

      ++v22;
      *(v37 + 16) = v39 + 1;
      v40 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v80 = v37;
      v19 = (*(v69 + 32))(v37 + v40 + *(v69 + 72) * v39, v11, v75);
      v25 += v67;
      v3 = 0;
      v16 = v36;
      if (v70 == v22)
      {
        v12 = v60;
        v13 = v64;
        goto LABEL_9;
      }
    }

    sub_5D4C(v34, &qword_72498, &qword_5C608);
  }

  else
  {
LABEL_9:
    __chkstk_darwin(v19);
    *(&v60 - 2) = v42;
    sub_1A95C(&qword_724A0, &type metadata accessor for Siri_Nlu_External_SystemGaveOptions, &protocol conformance descriptor for Siri_Nlu_External_SystemGaveOptions);
    v43 = v65;
    sub_5B138();

    __chkstk_darwin(v44);
    *(&v60 - 2) = v43;
    v45 = sub_1A95C(&qword_724A8, &type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
    v46 = v66;
    sub_5B138();
    v81 = v3;
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v47 = sub_5B228();
    sub_5B44(v47, qword_763B8);
    v48 = *(v13 + 16);
    v48(v16, v46, v12);
    v49 = sub_5B218();
    v50 = sub_5B4B8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = v16;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v83 = v53;
      *v52 = 136315138;
      sub_5AB48();
      LODWORD(v80) = v50;
      v82[3] = v12;
      v82[4] = v45;
      v54 = sub_5F2C(v82);
      v48(v54, v51, v12);
      v55 = sub_5AB38();
      v57 = v56;
      (*(v64 + 8))(v51, v12);
      sub_5D00(v82);
      v58 = sub_2DC10(v55, v57, &v83);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_0, v49, v80, "AppNameDisambiguationFlow: systemDialogAct: %s", v52, 0xCu);
      sub_5D00(v53);
      v13 = v64;
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }

    v59 = v63;
    (*(v13 + 32))(v62, v66, v12);
    return (*(v61 + 8))(v65, v59);
  }
}

uint64_t sub_1418C@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v58 = a3;
  v64 = sub_5A318();
  v5 = *(v64 - 8);
  __chkstk_darwin(v64);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_5AA58();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5A938();
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5B94(&qword_724B0, &unk_5C610);
  __chkstk_darwin(v13 - 8);
  v15 = v53 - v14;
  v16 = sub_5ABE8();
  v61 = *(v16 - 8);
  v62 = v16;
  __chkstk_darwin(v16);
  v63 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_41E68();
  if (v18)
  {
    v54 = v5;
    v19 = sub_5CBC((a2 + 176), *(a2 + 200));
    sub_180B4(*v19);
    if (v20)
    {
      sub_5ABB8();
      sub_5ACF8();
      swift_allocObject();
      sub_5ACE8();
      sub_5ACD8();

      if (sub_5ACC8())
      {
        sub_5ABA8();
      }

      sub_5AD78();
      swift_allocObject();
      v21 = sub_5AD68();
      sub_5AD98();
      sub_5B94(&qword_72460, &unk_5C5E0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_5C4A0;
      *(v22 + 32) = v21;
      v23 = sub_5AC48();
      (*(*(v23 - 8) + 56))(v15, 1, 1, v23);

      v24 = sub_5AC28();

      sub_5D4C(v15, &qword_724B0, &unk_5C610);
      v25 = v60;
      v26 = sub_5AB78();
      v53[1] = v24;
      if (v25)
      {
        if (qword_71A58 != -1)
        {
          swift_once();
        }

        v60 = v21;
        v27 = sub_5B228();
        sub_5B44(v27, qword_763B8);
        swift_errorRetain();
        v28 = sub_5B218();
        v29 = sub_5B4C8();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v66 = v31;
          *v30 = 136315138;
          v65 = v25;
          swift_errorRetain();
          sub_5B94(&qword_724C8, &qword_5E270);
          v32 = sub_5B358();
          v34 = sub_2DC10(v32, v33, &v66);

          *(v30 + 4) = v34;
          _os_log_impl(&dword_0, v28, v29, "AppNameDisambiguationFlow: error building system dialog act for disambiguation: %s", v30, 0xCu);
          sub_5D00(v31);
        }

        v35 = v64;
        type metadata accessor for AppNameDisambiguationError(0);
        sub_1A95C(&unk_724B8, type metadata accessor for AppNameDisambiguationError, &unk_5C738);
        swift_allocError();
        (*(v54 + 16))(v36, a1, v35);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return (*(v61 + 8))(v63, v62);
      }

      else
      {
        __chkstk_darwin(v26);
        v53[-2] = v12;
        sub_1A95C(&qword_724D0, &type metadata accessor for Siri_Nlu_External_UserStatedTask, &protocol conformance descriptor for Siri_Nlu_External_UserStatedTask);
        v51 = v59;
        sub_5B138();
        v52 = sub_5AA18();
        __chkstk_darwin(v52);
        v53[-2] = v9;
        sub_1A95C(&qword_724D8, &type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
        sub_5B138();

        (*(v61 + 8))(v63, v62);
        (*(v57 + 8))(v9, v51);
        return (*(v55 + 8))(v12, v56);
      }
    }

    v5 = v54;
  }

  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v38 = sub_5B228();
  sub_5B44(v38, qword_763B8);
  v39 = *(v5 + 16);
  v63 = a1;
  v40 = v64;
  v39(v7, a1, v64);
  v41 = sub_5B218();
  v42 = sub_5B4C8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v62 = v39;
    v45 = v44;
    v66 = v44;
    *v43 = 136315138;
    sub_1A95C(&qword_71C10, &type metadata accessor for PluginAction, &protocol conformance descriptor for PluginAction);
    v46 = sub_5B798();
    v48 = v47;
    (*(v5 + 8))(v7, v64);
    v49 = sub_2DC10(v46, v48, &v66);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_0, v41, v42, "AppNameDisambiguationFlow: failed to create SDA option for plugin action %s", v43, 0xCu);
    sub_5D00(v45);
    v39 = v62;

    v40 = v64;
  }

  else
  {

    (*(v5 + 8))(v7, v40);
  }

  type metadata accessor for AppNameDisambiguationError(0);
  sub_1A95C(&unk_724B8, type metadata accessor for AppNameDisambiguationError, &unk_5C738);
  swift_allocError();
  v39(v50, v63, v40);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_14BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(char *))
{
  v6 = a3(0);
  __chkstk_darwin(v6);
  v8 = v11 - v7;
  (*(v9 + 16))(v11 - v7, a2);
  return a4(v8);
}

uint64_t sub_14CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_14CF4, 0, 0);
}

uint64_t sub_14CF4()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AppNameDisambiguationFlow: Creating disambiguation views for non watchOS", v4, 2u);
  }

  v5 = v0[5];
  v6 = v0[3];

  v0[6] = sub_1A23C();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  v0[7] = v8;
  *(v8 + 16) = &unk_5C5C8;
  *(v8 + 24) = v7;

  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_14EE4;
  v10 = v0[2];

  return sub_4FCF4(&unk_5C5D8, v8, v10);
}

uint64_t sub_14EE4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_1529C;
  }

  else
  {
    v4 = sub_15018;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_15018()
{
  v1 = v0[9];
  v2 = v0[6];
  sub_5B94(&qword_72460, &unk_5C5E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_5C4A0;
  *(v3 + 32) = v2;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v2;
    sub_5B638();
    v6 = (v1 + 32);
    do
    {
      v7 = *v6;
      v6 += 3;
      v8 = v7;
      sub_5B618();
      sub_5B648();
      sub_5B658();
      sub_5B628();
      --v4;
    }

    while (v4);
  }

  else
  {
    v9 = v2;
  }

  v10 = v0[3];
  sub_17D0C(_swiftEmptyArrayStorage);

  if (v10 >> 62)
  {
    sub_5B94(&qword_72468, &qword_5C5F0);
    sub_5B668();
  }

  else
  {
    sub_5B7B8();
  }

  sub_1AB38(0, &unk_72470, SACardSnippet_ptr);
  v11 = sub_5B498();

  v12 = v11;
  sub_5B3B8();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_5B3E8();
  }

  v13 = v0[6];
  sub_5B408();

  v14 = v0[1];

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_1529C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_15300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a5;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  return _swift_task_switch(sub_15328, 0, 0);
}

unint64_t sub_15328()
{
  v1 = v0[7];
  result = v0[2];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_5B5B8();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)) <= result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v3 = *(v1 + 8 * result + 32);
LABEL_5:
  v4 = v3;
  v0[8] = v3;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1540C;
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];

  return sub_1A6D0(v9, v8, v6, v7, v4);
}

uint64_t sub_1540C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;
  *(*v4 + 80) = v3;

  if (v3)
  {

    return _swift_task_switch(sub_15580, 0, 0);
  }

  else
  {

    v10 = *(v9 + 8);

    return v10(a1, a2, a3);
  }
}

uint64_t sub_15580()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_155E4(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v11 = (a3 + *a3);
  v9 = swift_task_alloc();
  *(v3 + 24) = v9;
  *v9 = v3;
  v9[1] = sub_15704;

  return v11(v4, v5, v6, v7, v8);
}

uint64_t sub_15704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    v10[1] = a2;
    v10[2] = a3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_15828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[39] = a4;
  v5[40] = v4;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  sub_5B94(&unk_73CE0, &unk_5CB30);
  v5[41] = swift_task_alloc();
  v6 = sub_5A2A8();
  v5[42] = v6;
  v5[43] = *(v6 - 8);
  v5[44] = swift_task_alloc();
  sub_5B94(&unk_72440, &unk_5C460);
  v5[45] = swift_task_alloc();
  v7 = sub_5A908();
  v5[46] = v7;
  v5[47] = *(v7 - 8);
  v5[48] = swift_task_alloc();
  v8 = sub_5A648();
  v5[49] = v8;
  v5[50] = *(v8 - 8);
  v5[51] = swift_task_alloc();
  v9 = sub_5A588();
  v5[52] = v9;
  v5[53] = *(v9 - 8);
  v5[54] = swift_task_alloc();

  return _swift_task_switch(sub_15A74, 0, 0);
}

uint64_t sub_15A74()
{
  sub_5CBC((v0[40] + 56), *(v0[40] + 80));
  v1 = sub_38208(_swiftEmptyArrayStorage);
  v0[55] = v1;
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x65736E6F70736572;
  v3 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC00000065646F4DLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v4 = sub_3802C(inited);
  v0[56] = v4;
  swift_setDeallocating();
  sub_5D4C(v3, &unk_72450, &unk_5C470);
  v5 = swift_task_alloc();
  v0[57] = v5;
  *v5 = v0;
  v5[1] = sub_15BE0;
  v7 = v0[37];
  v6 = v0[38];

  return sub_3419C(v7, v6, v1, v4);
}

uint64_t sub_15BE0(uint64_t a1)
{
  *(*v2 + 464) = a1;

  if (v1)
  {

    v3 = sub_16150;
  }

  else
  {

    v3 = sub_15D54;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_15D54()
{
  v1 = *(v0 + 464);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v13 = *(v0 + 392);
  v16 = *(v0 + 368);
  v17 = *(v0 + 376);
  v4 = *(v0 + 360);
  v15 = *(v0 + 320);
  v14 = *(v0 + 384);

  v5 = [v1 speak];
  sub_5B3D8();

  v6 = [v1 print];
  sub_5B3D8();

  (*(v3 + 104))(v2, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v13);
  sub_5A538();
  sub_5A868();
  sub_5A868();
  sub_5CBC((v0 + 136), *(v0 + 160));
  sub_5A218();
  v7 = sub_5A488();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  *(v0 + 208) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 176) = 0u;
  sub_5A3C8();
  sub_5D4C(v0 + 176, &qword_721D8, &qword_5C480);
  sub_5D4C(v4, &unk_72440, &unk_5C460);
  sub_5D00((v0 + 96));
  sub_5D00((v0 + 136));
  v8 = v15[15];
  v9 = v15[16];
  sub_5CBC(v15 + 12, v8);
  *(v0 + 240) = v16;
  *(v0 + 248) = &protocol witness table for AceOutput;
  v10 = sub_5F2C((v0 + 216));
  (*(v17 + 16))(v10, v14, v16);
  v11 = swift_task_alloc();
  *(v0 + 472) = v11;
  *v11 = v0;
  v11[1] = sub_16034;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 216, v8, v9);
}

uint64_t sub_16034()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_1650C;
  }

  else
  {
    sub_5D00((v2 + 216));
    v3 = sub_1631C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_16150()
{
  v11 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);

  v2 = sub_5B218();
  v3 = sub_5B4C8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[37];
    v4 = v0[38];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2DC10(v5, v4, &v10);
    _os_log_impl(&dword_0, v2, v3, "Couldn't create a dialog for %s.", v6, 0xCu);
    sub_5D00(v7);
  }

  sub_5A438();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1631C()
{
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  sub_5CBC((v0[40] + 136), *(v0[40] + 160));
  sub_5A1E8();
  (*(v2 + 104))(v1, enum case for ActivityType.canceled(_:), v3);
  v5 = sub_5A168();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_5A1C8();
  sub_5A158();

  v6 = v0[58];
  v8 = v0[53];
  v7 = v0[54];
  v9 = v0[52];
  v11 = v0[47];
  v10 = v0[48];
  v12 = v0[46];
  sub_5A438();

  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1650C()
{
  v19 = v0;
  sub_5D00(v0 + 27);
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  swift_errorRetain();
  v2 = sub_5B218();
  v3 = sub_5B4C8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_5B7E8();
    v8 = sub_2DC10(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error publishing output %s.", v4, 0xCu);
    sub_5D00(v5);
  }

  else
  {
  }

  v9 = v0[58];
  v11 = v0[53];
  v10 = v0[54];
  v12 = v0[52];
  v14 = v0[47];
  v13 = v0[48];
  v15 = v0[46];
  sub_5A438();

  (*(v14 + 8))(v13, v15);
  (*(v11 + 8))(v10, v12);

  v16 = v0[1];

  return v16();
}

uint64_t sub_167A0()
{
  sub_5D00(v0 + 2);
  sub_5D00(v0 + 7);
  sub_5D00(v0 + 12);
  sub_5D00(v0 + 17);
  sub_5D00(v0 + 22);
  v1 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_firstAction;
  v2 = sub_5A318();
  v3 = *(*(v2 - 8) + 8);
  v3(&v0[v1], v2);
  v3(&v0[OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_secondAction], v2);
  v3(&v0[OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_fallBackAction], v2);
  sub_1AF68(&v0[OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_state], type metadata accessor for AppNameDisambiguationFlow.State);

  return swift_deallocClassInstance();
}

uint64_t sub_168FC(uint64_t a1)
{
  result = sub_5A318();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AppNameDisambiguationFlow.State(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_16A00(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 3, v7))
  {
    v12 = sub_5A318();
    v13 = *(*(v12 - 8) + 16);
    v13(a1, a2, v12);
    v13((a1 + *(v7 + 48)), (a2 + *(v7 + 48)), v12);
    v13((a1 + *(v7 + 64)), (a2 + *(v7 + 64)), v12);
    (*(v8 + 56))(a1, 0, 3, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_16BD8(uint64_t a1)
{
  v2 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  result = (*(*(v2 - 8) + 48))(a1, 3, v2);
  if (!result)
  {
    v4 = sub_5A318();
    v6 = *(*(v4 - 8) + 8);
    (v6)((v4 - 8), a1, v4);
    v6(a1 + *(v2 + 48), v4);
    v5 = a1 + *(v2 + 64);

    return (v6)(v5, v4);
  }

  return result;
}

char *sub_16CF4(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 3, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_5A318();
    v11 = *(*(v10 - 8) + 16);
    v11(a1, a2, v10);
    v11(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v10);
    v11(&a1[*(v6 + 64)], &a2[*(v6 + 64)], v10);
    (*(v7 + 56))(a1, 0, 3, v6);
    return a1;
  }
}

char *sub_16E90(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 3, v6);
  v10 = v8(a2, 3, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_5A318();
      v12 = *(*(v11 - 8) + 16);
      v12(a1, a2, v11);
      v12(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v11);
      v12(&a1[*(v6 + 64)], &a2[*(v6 + 64)], v11);
      (*(v7 + 56))(a1, 0, 3, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v15 = sub_5A318();
      v16 = *(*(v15 - 8) + 24);
      v16(a1, a2, v15);
      v16(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v15);
      v16(&a1[*(v6 + 64)], &a2[*(v6 + 64)], v15);
      return a1;
    }

    sub_5D4C(a1, &qword_71CC0, &unk_5C2C0);
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

char *sub_170E4(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 3, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_5A318();
    v11 = *(*(v10 - 8) + 32);
    v11(a1, a2, v10);
    v11(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v10);
    v11(&a1[*(v6 + 64)], &a2[*(v6 + 64)], v10);
    (*(v7 + 56))(a1, 0, 3, v6);
    return a1;
  }
}

char *sub_17280(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 3, v6);
  v10 = v8(a2, 3, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_5A318();
      v12 = *(*(v11 - 8) + 32);
      v12(a1, a2, v11);
      v12(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v11);
      v12(&a1[*(v6 + 64)], &a2[*(v6 + 64)], v11);
      (*(v7 + 56))(a1, 0, 3, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v15 = sub_5A318();
      v16 = *(*(v15 - 8) + 40);
      v16(a1, a2, v15);
      v16(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v15);
      v16(&a1[*(v6 + 64)], &a2[*(v6 + 64)], v15);
      return a1;
    }

    sub_5D4C(a1, &qword_71CC0, &unk_5C2C0);
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t sub_174E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_17574(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_17604(uint64_t a1)
{
  v2 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 3, v2);
}

uint64_t sub_17678(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 3, v4);
}

uint64_t sub_176F4(uint64_t a1)
{
  result = sub_5A318();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_17810(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5934;

  return sub_D7D4(a1);
}

uint64_t sub_178AC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AppNameDisambiguationFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_178E8()
{
  v1 = sub_5A638();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_5A318();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppNameDisambiguationError(0);
  __chkstk_darwin(v12);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BB8C(v0, v14, type metadata accessor for AppNameDisambiguationError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v17 = *v14;
    v18 = v14[1];
    v20 = 0;
    v21 = 0xE000000000000000;
    if (EnumCaseMultiPayload == 2)
    {
      sub_5B5A8(22);

      v20 = 0xD000000000000014;
      v21 = 0x800000000005E9E0;
    }

    else
    {
      sub_5B5A8(17);

      v20 = 0x20676E6973726150;
      v21 = 0xEF203A726F727265;
    }

    v24._countAndFlagsBits = v17;
    v24._object = v18;
    sub_5B388(v24);

    return v20;
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v2 + 32))(v7, v14, v1);
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_5B5A8(27);

    v20 = 0xD000000000000019;
    v21 = 0x800000000005EA00;
    (*(v2 + 16))(v5, v7, v1);
    v23._countAndFlagsBits = sub_5B358();
    sub_5B388(v23);

    v16 = v20;
    (*(v2 + 8))(v7, v1);
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_5B5A8(36);

    v20 = 0xD000000000000022;
    v21 = 0x800000000005EA20;
    sub_1A95C(&qword_71C10, &type metadata accessor for PluginAction, &protocol conformance descriptor for PluginAction);
    v22._countAndFlagsBits = sub_5B798();
    sub_5B388(v22);

    v16 = v20;
    (*(v9 + 8))(v11, v8);
  }

  return v16;
}

uint64_t sub_17D0C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_5B678();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_5B678();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_17DFC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_17E9C(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_17DFC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_5B678();
LABEL_9:
  result = sub_5B5C8();
  *v2 = result;
  return result;
}

uint64_t sub_17E9C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_5B678();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_5B678();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A624();
          for (i = 0; i != v6; ++i)
          {
            sub_5B94(&qword_72480, &qword_5C5F8);
            v9 = sub_1802C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_1AB38(0, &unk_73CB0, SFCardSection_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1802C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_5B5B8();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_180AC;
  }

  __break(1u);
  return result;
}

uint64_t sub_180B4(uint64_t a1)
{
  v2 = sub_5B94(&qword_724E0, &qword_5C620);
  __chkstk_darwin(v2 - 8);
  v4 = (&v39 - v3);
  v5 = sub_59E98();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5A858();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_5A7D8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;

  v16 = sub_41E68();
  if (!v17)
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v24 = sub_5B228();
    sub_5B44(v24, qword_763B8);
    v25 = sub_5B218();
    v26 = sub_5B4C8();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_15;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "PluginAction: cannot convert to app name if it cannot be mapped to a appBundleId", v27, 2u);
LABEL_14:

LABEL_15:

LABEL_16:

    return 0;
  }

  v18 = v17;
  v40 = v16;
  v19 = sub_35C44(v16, v17);
  if (!v20)
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v28 = sub_5B228();
    sub_5B44(v28, qword_763B8);

    v25 = sub_5B218();
    v29 = sub_5B4C8();

    if (!os_log_type_enabled(v25, v29))
    {

      goto LABEL_16;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v44 = v31;
    *v30 = 136315138;
    v32 = sub_2DC10(v40, v18, &v44);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_0, v25, v29, "PluginAction: cannot get app bundle record for appBundleId %s", v30, 0xCu);
    sub_5D00(v31);

    goto LABEL_14;
  }

  v39 = v19;
  v40 = v20;

  sub_5A2F8();
  sub_5A7C8();
  (*(v13 + 8))(v15, v12);
  if ((*(v9 + 88))(v11, v8) != enum case for Parse.pommesResponse(_:))
  {
    (*(v9 + 8))(v11, v8);
    goto LABEL_18;
  }

  (*(v9 + 96))(v11, v8);
  v21 = *v11;
  sub_438F4(v4);
  v23 = v41;
  v22 = v42;
  if ((*(v41 + 48))(v4, 1, v42) == 1)
  {

    sub_5D4C(v4, &qword_724E0, &qword_5C620);
LABEL_18:

    return v39;
  }

  (*(v23 + 32))(v7, v4, v22);
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v34 = sub_5B228();
  sub_5B44(v34, qword_763B8);
  v35 = sub_5B218();
  v36 = sub_5B4B8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_0, v35, v36, "PluginAction: overriding to pommes sash instead of app name", v37, 2u);
  }

  v38 = sub_59E88();
  (*(v23 + 8))(v7, v22);

  return v38;
}

uint64_t sub_186D8()
{
  v0 = sub_5AC18();
  v163 = *(v0 - 8);
  __chkstk_darwin(v0);
  v162 = &v151 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_5B94(&qword_72570, &qword_5C690);
  __chkstk_darwin(v2 - 8);
  v4 = &v151 - v3;
  v5 = sub_5ABF8();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v161 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v160 = &v151 - v9;
  v10 = sub_5B94(&qword_72578, &qword_5C698);
  __chkstk_darwin(v10 - 8);
  v165 = &v151 - v11;
  v167 = sub_5AC68();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v164 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5B94(&qword_72580, &qword_5C6A0);
  v14 = __chkstk_darwin(v13 - 8);
  v169 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v171 = &v151 - v17;
  v18 = __chkstk_darwin(v16);
  v173 = &v151 - v19;
  v20 = __chkstk_darwin(v18);
  v176 = &v151 - v21;
  v22 = __chkstk_darwin(v20);
  v183 = &v151 - v23;
  __chkstk_darwin(v22);
  v25 = &v151 - v24;
  v26 = sub_5AC98();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v168 = &v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v170 = &v151 - v31;
  v32 = __chkstk_darwin(v30);
  v172 = &v151 - v33;
  v34 = __chkstk_darwin(v32);
  v174 = &v151 - v35;
  v36 = __chkstk_darwin(v34);
  v181 = &v151 - v37;
  __chkstk_darwin(v36);
  v39 = &v151 - v38;
  sub_5AE38();
  v182 = sub_5B94(&qword_72588, &qword_5C6A8);
  v40 = swift_dynamicCast();
  v41 = *(v27 + 56);
  if ((v40 & 1) == 0)
  {
    v41(v25, 1, 1, v26);
LABEL_20:
    v55 = &qword_72580;
    v56 = &qword_5C6A0;
    v57 = v25;
    goto LABEL_30;
  }

  v154 = v0;
  v155 = v4;
  v156 = v6;
  v157 = v5;
  v179 = v27 + 56;
  v178 = v41;
  v41(v25, 0, 1, v26);
  v175 = v27;
  v42 = *(v27 + 32);
  v180 = v26;
  v159 = v27 + 32;
  v158 = v42;
  v42(v39, v25, v26);
  v177 = v39;
  v43 = v39;
  v44 = sub_5AC88();
  v45 = v44;
  v46 = *(v44 + 16);
  if (!v46)
  {
    v49 = _swiftEmptyArrayStorage;
LABEL_22:

    if (v49[2])
    {
      sub_5F90((v49 + 4), &v189);

      v5 = v183;
      v58 = v180;
      v59 = swift_dynamicCast();
      v178(v5, v59 ^ 1u, 1, v58);
      v60 = v175;
      v61 = v175 + 48;
      v62 = *(v175 + 48);
      if (v62(v5, 1, v58) == 1)
      {
        (*(v60 + 8))(v177, v58);
        goto LABEL_28;
      }

      v152 = v62;
      v153 = v61;
      v67 = v181;
      v158(v181, v5, v58);
      v68 = sub_5AC88();
      v69 = v68;
      v70 = *(v68 + 16);
      if (v70)
      {
        v71 = 0;
        v39 = 0x646E616D6D6F63;
        v25 = (v68 + 32);
        v72 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v71 >= *(v69 + 16))
          {
            __break(1u);
LABEL_125:
            v158(v168, v25, v67);
            result = sub_5AC88();
            v126 = result;
            v127 = *(result + 16);
            if (!v127)
            {
              v130 = _swiftEmptyArrayStorage;
LABEL_143:

              if (v130[2])
              {
                sub_5F90((v130 + 4), &v189);

                v86 = v165;
                v85 = v167;
                v137 = swift_dynamicCast();
                v39 = v166;
                (*(v166 + 56))(v86, v137 ^ 1u, 1, v85);
                v138 = (*(v39 + 48))(v86, 1, v85);
                v84 = v180;
                if (v138 != 1)
                {
                  goto LABEL_149;
                }

                v139 = *(v175 + 8);
                v139(v168, v180);
                v139(v170, v84);
                v139(v172, v84);
                v139(v174, v84);
                v139(v181, v84);
                v139(v72, v84);
              }

              else
              {

                v140 = *(v175 + 8);
                v141 = v180;
                v140(v168, v180);
                v140(v170, v141);
                v140(v172, v141);
                v140(v174, v141);
                v140(v181, v141);
                v140(v72, v141);
                v86 = v165;
                (*(v166 + 56))(v165, 1, 1, v167);
              }

              v55 = &qword_72578;
              v56 = &qword_5C698;
              v57 = v86;
              goto LABEL_30;
            }

            v128 = 0;
            v129 = result + 32;
            v130 = _swiftEmptyArrayStorage;
            while (2)
            {
              if (v128 >= *(v126 + 16))
              {
                goto LABEL_158;
              }

              sub_5F90(v129, &v185);
              sub_5CBC(&v185, v186);
              if (sub_5AB98() != 0x746163696C707061 || v131 != 0xED000064496E6F69)
              {
                v133 = sub_5B7A8();

                if (v133)
                {
LABEL_137:
                  sub_5B7C(&v185, &v184);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v188 = v130;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_37630(0, v130[2] + 1, 1);
                    v130 = v188;
                  }

                  v136 = v130[2];
                  v135 = v130[3];
                  if (v136 >= v135 >> 1)
                  {
                    sub_37630((v135 > 1), v136 + 1, 1);
                    v130 = v188;
                  }

                  v130[2] = v136 + 1;
                  result = sub_5B7C(&v184, &v130[5 * v136 + 4]);
                }

                else
                {
                  result = sub_5D00(&v185);
                }

                v72 = v177;
                ++v128;
                v129 += 40;
                if (v127 == v128)
                {
                  goto LABEL_143;
                }

                continue;
              }

              break;
            }

            goto LABEL_137;
          }

          sub_5F90(v25, &v185);
          v67 = sub_5CBC(&v185, v186);
          if (sub_5AB98() == 0x646E616D6D6F63 && v73 == 0xE700000000000000)
          {
            break;
          }

          v67 = v73;
          v5 = sub_5B7A8();

          if (v5)
          {
            goto LABEL_44;
          }

          sub_5D00(&v185);
LABEL_35:
          ++v71;
          v25 += 40;
          if (v70 == v71)
          {
            goto LABEL_50;
          }
        }

LABEL_44:
        sub_5B7C(&v185, &v184);
        v75 = swift_isUniquelyReferenced_nonNull_native();
        v188 = v72;
        if ((v75 & 1) == 0)
        {
          v67 = &v188;
          sub_37630(0, v72[2] + 1, 1);
          v72 = v188;
        }

        v77 = v72[2];
        v76 = v72[3];
        v5 = v77 + 1;
        if (v77 >= v76 >> 1)
        {
          v67 = &v188;
          sub_37630((v76 > 1), v77 + 1, 1);
          v72 = v188;
        }

        v72[2] = v5;
        sub_5B7C(&v184, &v72[5 * v77 + 4]);
        goto LABEL_35;
      }

      v72 = _swiftEmptyArrayStorage;
LABEL_50:

      if (!v72[2])
      {

        v80 = *(v175 + 8);
        v81 = v180;
        v80(v181, v180);
        v80(v177, v81);
        v82 = &v192;
        goto LABEL_78;
      }

      sub_5F90((v72 + 4), &v189);

      v25 = v176;
      v67 = v180;
      v78 = swift_dynamicCast();
      v178(v25, v78 ^ 1u, 1, v67);
      if (v152(v25, 1, v67) == 1)
      {
        v79 = *(v175 + 8);
        v79(v181, v67);
LABEL_75:
        v93 = v177;
LABEL_76:
        v79(v93, v67);
        goto LABEL_20;
      }

      v158(v174, v25, v67);
      v83 = sub_5AC88();
      v84 = v83;
      v85 = *(v83 + 16);
      if (v85)
      {
        v72 = 0;
        v86 = v83 + 32;
        v87 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v72 >= *(v84 + 16))
          {
            __break(1u);
LABEL_149:
            v142 = v164;
            (*(v39 + 32))(v164, v86, v85);
            v143 = sub_5AC58();
            if (*(v143 + 16))
            {
              v144 = v163;
              v145 = v162;
              v146 = v154;
              (*(v163 + 16))(v162, v143 + ((*(v144 + 80) + 32) & ~*(v144 + 80)), v154);

              v5 = v155;
              sub_5AC08();
              (*(v39 + 8))(v142, v85);
              v147 = *(v175 + 8);
              v147(v168, v84);
              v147(v170, v84);
              v147(v172, v84);
              v147(v174, v84);
              v147(v181, v84);
              v147(v72, v84);
              (*(v144 + 8))(v145, v146);
              v99 = v156;
              v96 = v157;
              if ((*(v156 + 48))(v5, 1, v157) != 1)
              {
                v148 = *(v99 + 32);
                v149 = v160;
                v148(v160, v5, v96);
                v5 = v161;
                v148(v161, v149, v96);
                if ((*(v99 + 88))(v5, v96) == enum case for TerminalElement.Value.string(_:))
                {
                  (*(v99 + 96))(v5, v96);
                  return *v5;
                }

LABEL_156:
                (*(v99 + 8))(v5, v96);
                return 0;
              }
            }

            else
            {

              (*(v39 + 8))(v142, v85);
              v150 = *(v175 + 8);
              v150(v168, v84);
              v150(v170, v84);
              v150(v172, v84);
              v150(v174, v84);
              v150(v181, v84);
              v150(v72, v84);
              v5 = v155;
              (*(v156 + 56))(v155, 1, 1, v157);
            }

            v55 = &qword_72570;
            v56 = &qword_5C690;
LABEL_29:
            v57 = v5;
LABEL_30:
            sub_5D4C(v57, v55, v56);
            return 0;
          }

          sub_5F90(v86, &v185);
          v39 = v187;
          sub_5CBC(&v185, v186);
          if (sub_5AB98() == 0x7463656A627573 && v88 == 0xE700000000000000)
          {
            break;
          }

          v5 = sub_5B7A8();

          if (v5)
          {
            goto LABEL_66;
          }

          sub_5D00(&v185);
LABEL_57:
          v72 = (v72 + 1);
          v86 += 40;
          if (v85 == v72)
          {
            goto LABEL_72;
          }
        }

LABEL_66:
        sub_5B7C(&v185, &v184);
        v90 = swift_isUniquelyReferenced_nonNull_native();
        v188 = v87;
        if ((v90 & 1) == 0)
        {
          sub_37630(0, v87[2] + 1, 1);
          v87 = v188;
        }

        v39 = v87[2];
        v91 = v87[3];
        v5 = v39 + 1;
        if (v39 >= v91 >> 1)
        {
          sub_37630((v91 > 1), v39 + 1, 1);
          v87 = v188;
        }

        v87[2] = v5;
        sub_5B7C(&v184, &v87[5 * v39 + 4]);
        goto LABEL_57;
      }

      v87 = _swiftEmptyArrayStorage;
LABEL_72:

      if (!v87[2])
      {

        v94 = *(v175 + 8);
        v81 = v180;
        v94(v174, v180);
        v94(v181, v81);
        v94(v177, v81);
        v82 = &v191;
        goto LABEL_78;
      }

      sub_5F90((v87 + 4), &v189);

      v25 = v173;
      v67 = v180;
      v92 = swift_dynamicCast();
      v178(v25, v92 ^ 1u, 1, v67);
      if (v152(v25, 1, v67) == 1)
      {
        v79 = *(v175 + 8);
        v79(v174, v67);
        v79(v181, v67);
        goto LABEL_75;
      }

      v158(v172, v25, v67);
      v95 = sub_5AC88();
      v96 = v95;
      v97 = *(v95 + 16);
      if (v97)
      {
        v98 = 0;
        v99 = v95 + 32;
        v100 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v98 >= *(v96 + 16))
          {
            __break(1u);
            goto LABEL_156;
          }

          sub_5F90(v99, &v185);
          sub_5CBC(&v185, v186);
          if (sub_5AB98() == 0x636E75614C707061 && v101 == 0xE900000000000068)
          {
            break;
          }

          v5 = sub_5B7A8();

          if (v5)
          {
            goto LABEL_91;
          }

          sub_5D00(&v185);
LABEL_82:
          ++v98;
          v99 += 40;
          if (v97 == v98)
          {
            goto LABEL_97;
          }
        }

LABEL_91:
        sub_5B7C(&v185, &v184);
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v188 = v100;
        if ((v103 & 1) == 0)
        {
          sub_37630(0, v100[2] + 1, 1);
          v100 = v188;
        }

        v105 = v100[2];
        v104 = v100[3];
        v5 = v105 + 1;
        if (v105 >= v104 >> 1)
        {
          sub_37630((v104 > 1), v105 + 1, 1);
          v100 = v188;
        }

        v100[2] = v5;
        sub_5B7C(&v184, &v100[5 * v105 + 4]);
        goto LABEL_82;
      }

      v100 = _swiftEmptyArrayStorage;
LABEL_97:

      if (v100[2])
      {
        sub_5F90((v100 + 4), &v189);

        v5 = v171;
        v43 = v180;
        v106 = swift_dynamicCast();
        v178(v5, v106 ^ 1u, 1, v43);
        v107 = v152(v5, 1, v43);
        v108 = v177;
        if (v107 != 1)
        {
          goto LABEL_102;
        }

        v109 = *(v175 + 8);
        v109(v172, v43);
        v109(v174, v43);
        v109(v181, v43);
        v109(v108, v43);
LABEL_28:
        v55 = &qword_72580;
        v56 = &qword_5C6A0;
        goto LABEL_29;
      }

      v110 = *(v175 + 8);
      v111 = v180;
      v110(v172, v180);
      v110(v174, v111);
      v110(v181, v111);
      v110(v177, v111);
      v5 = v171;
      v64 = v171;
      v65 = v111;
    }

    else
    {

      v63 = v180;
      (*(v175 + 8))(v177, v180);
      v5 = v183;
      v64 = v183;
      v65 = v63;
    }

    v178(v64, 1, 1, v65);
    goto LABEL_28;
  }

  v47 = 0;
  v39 = 0x6E6F69746361;
  v48 = v44 + 32;
  v49 = _swiftEmptyArrayStorage;
  while (v47 < *(v45 + 16))
  {
    sub_5F90(v48, &v185);
    v43 = sub_5CBC(&v185, v186);
    if (sub_5AB98() == 0x6E6F69746361 && v50 == 0xE600000000000000)
    {

LABEL_14:
      sub_5B7C(&v185, &v184);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v188 = v49;
      if ((v52 & 1) == 0)
      {
        v43 = &v188;
        sub_37630(0, v49[2] + 1, 1);
        v49 = v188;
      }

      v54 = v49[2];
      v53 = v49[3];
      v5 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        v43 = &v188;
        sub_37630((v53 > 1), v54 + 1, 1);
        v49 = v188;
      }

      v49[2] = v5;
      sub_5B7C(&v184, &v49[5 * v54 + 4]);
      goto LABEL_5;
    }

    v43 = v50;
    v5 = sub_5B7A8();

    if (v5)
    {
      goto LABEL_14;
    }

    sub_5D00(&v185);
LABEL_5:
    ++v47;
    v48 += 40;
    if (v46 == v47)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_102:
  v158(v170, v5, v43);
  result = sub_5AC88();
  v112 = result;
  v113 = *(result + 16);
  if (!v113)
  {
    v116 = _swiftEmptyArrayStorage;
LABEL_120:

    if (v116[2])
    {
      sub_5F90((v116 + 4), &v189);

      v25 = v169;
      v67 = v180;
      v123 = swift_dynamicCast();
      v178(v25, v123 ^ 1u, 1, v67);
      v124 = v152(v25, 1, v67);
      v72 = v177;
      if (v124 != 1)
      {
        goto LABEL_125;
      }

      v79 = *(v175 + 8);
      v79(v170, v67);
      v79(v172, v67);
      v79(v174, v67);
      v79(v181, v67);
      v93 = v72;
      goto LABEL_76;
    }

    v125 = *(v175 + 8);
    v81 = v180;
    v125(v170, v180);
    v125(v172, v81);
    v125(v174, v81);
    v125(v181, v81);
    v125(v177, v81);
    v82 = &v190;
LABEL_78:
    v25 = *(v82 - 32);
    v178(v25, 1, 1, v81);
    goto LABEL_20;
  }

  v114 = 0;
  v115 = result + 32;
  v116 = _swiftEmptyArrayStorage;
  while (v114 < *(v112 + 16))
  {
    sub_5F90(v115, &v185);
    sub_5CBC(&v185, v186);
    if (sub_5AB98() == 7368801 && v117 == 0xE300000000000000)
    {

LABEL_114:
      sub_5B7C(&v185, &v184);
      v120 = swift_isUniquelyReferenced_nonNull_native();
      v188 = v116;
      if ((v120 & 1) == 0)
      {
        sub_37630(0, v116[2] + 1, 1);
        v116 = v188;
      }

      v122 = v116[2];
      v121 = v116[3];
      if (v122 >= v121 >> 1)
      {
        sub_37630((v121 > 1), v122 + 1, 1);
        v116 = v188;
      }

      v116[2] = v122 + 1;
      result = sub_5B7C(&v184, &v116[5 * v122 + 4]);
      goto LABEL_105;
    }

    v119 = sub_5B7A8();

    if (v119)
    {
      goto LABEL_114;
    }

    result = sub_5D00(&v185);
LABEL_105:
    ++v114;
    v115 += 40;
    if (v113 == v114)
    {
      goto LABEL_120;
    }
  }

  __break(1u);
LABEL_158:
  __break(1u);
  return result;
}

id sub_1A23C()
{
  v0 = [objc_allocWithZone(SFTitleCardSection) init];
  if (*(sub_5A568() + 16))
  {

    v1 = sub_5B338();
  }

  else
  {

    v1 = 0;
  }

  [v0 setTitle:v1];

  [v0 setSeparatorStyle:5];
  return v0;
}

uint64_t sub_1A2F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1A410;

  return sub_15300(a1, a2, a3, a4, a5, v13, v12);
}

uint64_t sub_1A410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_1A524()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A55C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BBF8;

  return sub_155E4(a1, a2, v6);
}

unint64_t sub_1A624()
{
  result = qword_72488;
  if (!qword_72488)
  {
    sub_1A688(&qword_72480, &qword_5C5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72488);
  }

  return result;
}

uint64_t sub_1A688(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1A6F8, 0, 0);
}

uint64_t sub_1A6F8()
{
  v1 = [objc_allocWithZone(SFRowCardSection) init];

  v2 = sub_5A358();
  [v1 setLeadingText:v2];

  sub_5B94(&qword_72460, &unk_5C5E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_5C4A0;
  v4 = v1;
  *(v3 + 32) = sub_5A368();
  sub_1AB38(0, &qword_72490, SFAbstractCommand_ptr);
  isa = sub_5B3C8().super.isa;

  [v4 setCommands:isa];

  v6 = [objc_allocWithZone(SFAppIconImage) init];
  v7 = sub_5B338();
  [v6 setBundleIdentifier:v7];

  v8 = v6;
  [v4 setImage:v8];

  [v4 setSeparatorStyle:2];
  v9 = v0[1];
  v10 = v0[2];
  v11 = v0[3];

  return v9(v4, v10, v11);
}

uint64_t sub_1A95C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AA4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1AA84(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_5934;

  return sub_12884(a1, a2, v6);
}

uint64_t sub_1AB38(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1AB80()
{
  result = qword_73CD0;
  if (!qword_73CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73CD0);
  }

  return result;
}

uint64_t sub_1ABD4()
{
  v1 = sub_5A318();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v3 + v6) & ~v3;
  v8 = (v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);
  v9(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_1ACF0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_5A318() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v7 + v8 + v6) & ~v6;
  v10 = (v9 + v8 + v6) & ~v6;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1BBF8;

  return sub_E7CC(a1, v11, v12, v1 + v7, v1 + v9, v1 + v10);
}

uint64_t sub_1AE38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5B94(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AEA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppNameDisambiguationFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAMDirectInvocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t destroy for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo(uint64_t a1)
{
}

void *initializeWithCopy for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

__n128 initializeWithTake for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *assignWithTake for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo(uint64_t result, int a2, int a3)
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

uint64_t *sub_1B1D0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v9 = a2[1];
      *a1 = *a2;
      a1[1] = v9;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v7 = sub_5A638();
      }

      else
      {
        v7 = sub_5A318();
      }

      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1B340(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2 || result == 3)
    {
    }
  }

  else
  {
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      v4 = sub_5A638();
    }

    else
    {
      v4 = sub_5A318();
    }

    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *sub_1B404(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v7 = a2[1];
    *a1 = *a2;
    a1[1] = v7;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v6 = sub_5A638();
    }

    else
    {
      v6 = sub_5A318();
    }

    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *sub_1B528(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1AF68(a1, type metadata accessor for AppNameDisambiguationError);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      *a1 = *a2;
      a1[1] = a2[1];
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v6 = sub_5A638();
      }

      else
      {
        v6 = sub_5A318();
      }

      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *sub_1B680(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = sub_5A638();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_5A318();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_1B7A0(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1AF68(a1, type metadata accessor for AppNameDisambiguationError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = sub_5A638();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_5A318();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_1B8E4(uint64_t a1)
{
  result = sub_5A318();
  if (v2 <= 0x3F)
  {
    result = sub_5A638();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t destroy for AppNameDisambiguationFlow.Card(id *a1)
{
}

void *sub_1B9F4(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for AppNameDisambiguationFlow.Card(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

__n128 initializeWithTake for AppNameDisambiguationFlow.Card(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for AppNameDisambiguationFlow.Card(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppNameDisambiguationFlow.Card(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for AppNameDisambiguationFlow.Card(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BB8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_1BC04(void *a1)
{
  v2 = type metadata accessor for AppShortcutEnablementFlow.State(0);
  __chkstk_darwin(v2 - 8);
  v148 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_5B94(&qword_72530, &qword_5C660);
  __chkstk_darwin(v4 - 8);
  v155 = &v132 - v5;
  v147 = sub_59E38();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v142 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5A318();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_5A8E8();
  v138 = *(v139 - 8);
  v11 = __chkstk_darwin(v139);
  v134 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v135 = &v132 - v13;
  v144 = sub_5A838();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v151 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_5A858();
  v161 = *(v163 - 8);
  v15 = __chkstk_darwin(v163);
  v137 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v132 - v17;
  v19 = sub_5B94(&unk_72560, &qword_5E3E0);
  v20 = __chkstk_darwin(v19 - 8);
  v152 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v133 = &v132 - v23;
  v24 = __chkstk_darwin(v22);
  v140 = &v132 - v25;
  __chkstk_darwin(v24);
  v160 = &v132 - v26;
  v27 = sub_5A7D8();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v145 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v141 = &v132 - v32;
  v33 = __chkstk_darwin(v31);
  v136 = &v132 - v34;
  __chkstk_darwin(v33);
  v36 = &v132 - v35;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v37 = sub_5B228();
  v38 = sub_5B44(v37, qword_763B8);
  v39 = *(v28 + 16);
  v165 = a1;
  v149 = v39;
  v150 = v28 + 16;
  v39(v36, a1, v27);
  v164 = v38;
  v40 = sub_5B218();
  v41 = sub_5B4B8();
  v42 = os_log_type_enabled(v40, v41);
  v159 = v7;
  v162 = v8;
  v156 = v27;
  v157 = v10;
  v154 = v28;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v166 = v44;
    *v43 = 136315138;
    sub_29850(&qword_71C90, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v45 = sub_5B798();
    v47 = v46;
    v153 = *(v28 + 8);
    v153(v36, v27);
    v48 = sub_2DC10(v45, v47, &v166);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_0, v40, v41, "AppShortcutEnablementFlow received input %s", v43, 0xCu);
    sub_5D00(v44);

    v7 = v159;
    v8 = v162;
  }

  else
  {

    v153 = *(v28 + 8);
    v153(v36, v27);
  }

  v49 = *(v8 + 56);
  v50 = v160;
  v49(v160, 1, 1, v7);
  sub_5A7C8();
  v51 = v161;
  v52 = v7;
  v53 = *(v161 + 88);
  v54 = v163;
  v55 = v53(v18, v163);
  if (v55 == enum case for Parse.NLv3IntentOnly(_:))
  {
    sub_5D4C(v50, &unk_72560, &qword_5E3E0);
    v49(v50, 1, 1, v52);
    v56 = sub_5B218();
    v57 = sub_5B4C8();
    v58 = v52;
    if (os_log_type_enabled(v56, v57))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_0, v56, v57, "AppShortcutEnablementFlow received unsupported NLv3IntentOnly parse", v59, 2u);
    }

    (*(v161 + 8))(v18, v163);
    goto LABEL_10;
  }

  v132 = v49;
  if (v55 != enum case for Parse.directInvocation(_:))
  {
    if (v55 == enum case for Parse.uso(_:))
    {
      (*(v51 + 96))(v18, v54);
      v72 = v138;
      v73 = v134;
      v74 = v139;
      (*(v138 + 32))(v134, v18, v139);
      v75 = v133;
      sub_2647C(v73, v158 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_appShortcutAction, v158 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_otherAction, v133);
      (*(v72 + 8))(v73, v74);
      sub_5D4C(v50, &unk_72560, &qword_5E3E0);
      sub_298FC(v75, v50, &unk_72560, &qword_5E3E0);
      v58 = v159;
    }

    else
    {
      sub_5D4C(v50, &unk_72560, &qword_5E3E0);
      v58 = v159;
      v132(v50, 1, 1, v159);
      (*(v51 + 8))(v18, v54);
    }

LABEL_10:
    v60 = v157;
    v61 = v155;
    v62 = v152;
    v63 = v162;
    goto LABEL_26;
  }

  v64 = *(v51 + 96);
  v64(v18, v54);
  (*(v143 + 32))(v151, v18, v144);
  v134 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_otherAction;
  v65 = v136;
  v133 = v158 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_appShortcutAction;
  sub_5A2F8();
  v66 = v137;
  sub_5A7C8();
  v67 = v163;
  v153(v65, v156);
  if (v53(v66, v67) == enum case for Parse.uso(_:))
  {
    v64(v66, v67);
    v68 = v138;
    v69 = v135;
    v70 = v139;
    (*(v138 + 32))(v135, v66, v139);
    v71 = sub_5A8A8();
    (*(v68 + 8))(v69, v70);
  }

  else
  {
    (*(v51 + 8))(v66, v67);
    v71 = 0;
  }

  v76 = &v134[v158];
  v77 = sub_5A818();
  v79 = v78;
  v80 = sub_5A1A8();
  v81 = [v80 identifier];

  v82 = sub_5B348();
  v84 = v83;

  v61 = v155;
  if (v77 == v82 && v79 == v84)
  {

LABEL_21:
    (*(v143 + 8))(v151, v144);
    v50 = v160;
    sub_5D4C(v160, &unk_72560, &qword_5E3E0);
    if (v71)
    {
      v86 = v133;
    }

    else
    {
      v86 = v76;
    }

    v87 = v140;
    v58 = v159;
    (*(v162 + 16))(v140, v86, v159);
    v88 = 0;
    v89 = v132;
    goto LABEL_25;
  }

  v85 = sub_5B7A8();

  if (v85)
  {
    goto LABEL_21;
  }

  v122 = sub_5A818();
  v124 = v123;
  v125 = sub_5A198();
  v126 = [v125 identifier];

  v127 = sub_5B348();
  v129 = v128;

  if (v122 == v127 && v124 == v129)
  {

    (*(v143 + 8))(v151, v144);
    sub_5D4C(v160, &unk_72560, &qword_5E3E0);
    v89 = v132;
LABEL_45:
    if (v71)
    {
      v131 = v76;
    }

    else
    {
      v131 = v133;
    }

    v87 = v140;
    v58 = v159;
    (*(v162 + 16))(v140, v131, v159);
    v88 = 0;
    v50 = v160;
    goto LABEL_25;
  }

  v130 = sub_5B7A8();

  (*(v143 + 8))(v151, v144);
  sub_5D4C(v160, &unk_72560, &qword_5E3E0);
  v89 = v132;
  if (v130)
  {
    goto LABEL_45;
  }

  v88 = 1;
  v58 = v159;
  v50 = v160;
  v87 = v140;
LABEL_25:
  v89(v87, v88, 1, v58);
  sub_298FC(v87, v50, &unk_72560, &qword_5E3E0);
  v63 = v162;
  v60 = v157;
  v62 = v152;
LABEL_26:
  sub_1AE38(v50, v62, &unk_72560, &qword_5E3E0);
  LODWORD(v163) = (*(v63 + 48))(v62, 1, v58);
  if (v163 == 1)
  {
    sub_5D4C(v62, &unk_72560, &qword_5E3E0);
    v102 = v145;
    v103 = v156;
    v149(v145, v165, v156);
    v104 = sub_5B218();
    v105 = sub_5B4C8();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      *v106 = 136315394;
      *(v106 + 4) = sub_2DC10(0x7475706E69286E6FLL, 0xEA0000000000293ALL, &v166);
      *(v106 + 12) = 2080;
      sub_29850(&qword_71C90, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v107 = sub_5B798();
      v108 = v50;
      v110 = v109;
      v153(v102, v103);
      v111 = sub_2DC10(v107, v110, &v166);
      v50 = v108;

      *(v106 + 14) = v111;
      _os_log_impl(&dword_0, v104, v105, "%s could not resolve action from %s", v106, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v153(v102, v103);
    }

    sub_5A6B8();
    sub_5A6A8();
    sub_5A678();
  }

  else
  {
    (*(v63 + 32))(v60, v62, v58);
    sub_5A308();
    v90 = v146;
    v91 = v147;
    if ((*(v146 + 48))(v61, 1, v147) == 1)
    {
      sub_5D4C(v61, &qword_72530, &qword_5C660);
      v92 = v141;
      v93 = v156;
      v149(v141, v165, v156);
      v94 = sub_5B218();
      v95 = sub_5B4C8();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v166 = v165;
        *v96 = 136315138;
        sub_29850(&qword_71C90, &type metadata accessor for Input, &protocol conformance descriptor for Input);
        v97 = sub_5B798();
        v98 = v50;
        v100 = v99;
        v153(v92, v93);
        v101 = sub_2DC10(v97, v100, &v166);
        v50 = v98;

        *(v96 + 4) = v101;
        _os_log_impl(&dword_0, v94, v95, "AppShortcutEnablementFlow could not extract loggingId from %s", v96, 0xCu);
        sub_5D00(v165);
        v58 = v159;
      }

      else
      {

        v153(v92, v93);
      }
    }

    else
    {
      v112 = v142;
      (*(v90 + 32))(v142, v61, v91);
      sub_5A6B8();
      sub_5A6A8();
      sub_5A698();

      (*(v90 + 8))(v112, v91);
    }

    v113 = v148;
    (*(v63 + 16))(v148, v60, v58);
    v114 = sub_5B94(&qword_71CA0, &unk_5C2B0);
    (*(*(v114 - 8) + 56))(v113, 0, 2, v114);
    v115 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_state;
    v116 = v158;
    swift_beginAccess();
    sub_29898(v113, v116 + v115);
    swift_endAccess();
    v117 = sub_5B218();
    v118 = sub_5B4B8();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_0, v117, v118, "AppShortcutEnablementFlow input accepted", v119, 2u);
    }

    (*(v63 + 8))(v60, v58);
  }

  v120 = v163 != 1;
  sub_5D4C(v50, &unk_72560, &qword_5E3E0);
  return v120;
}

uint64_t sub_1D04C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_5A858();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_5A7D8();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_5A8E8();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  sub_5B94(&unk_72520, &qword_5C320);
  v2[17] = swift_task_alloc();
  v6 = sub_5A638();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v7 = sub_5A318();
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  type metadata accessor for AppShortcutEnablementFlow.State(0);
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_1D2F8, 0, 0);
}

uint64_t sub_1D2F8()
{
  v72 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  v0[27] = sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AppShortcutEnablementFlow called", v4, 2u);
  }

  v5 = v0[26];
  v6 = v0[7];

  v7 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_state;
  swift_beginAccess();
  sub_297EC(v6 + v7, v5);
  v8 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v9 = (*(*(v8 - 8) + 48))(v5, 2, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = swift_task_alloc();
      v0[28] = v10;
      *v10 = v0;
      v10[1] = sub_1DC38;
      v11 = v0[6];

      return sub_1E184(v11);
    }

    v45 = sub_5B218();
    v46 = sub_5B4C8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "AppShortcutEnablementFlow got invalid respose", v47, 2u);
    }

    sub_5A6C8();
    sub_5A148();
    type metadata accessor for CamErrorFlow();
    swift_allocObject();
    v0[5] = sub_3147C(0xD000000000000010, 0x800000000005E9C0, v70, v71);
    sub_29850(&qword_72550, type metadata accessor for CamErrorFlow, &unk_5CE08);
    sub_5A088();

    sub_5A428();

    goto LABEL_24;
  }

  v14 = v0[12];
  v13 = v0[13];
  v16 = v0[10];
  v15 = v0[11];
  v17 = v0[8];
  v18 = v0[9];
  (*(v0[23] + 32))(v0[25], v0[26], v0[22]);
  sub_5A628();
  sub_5B288();

  sub_5A2F8();
  sub_5A7C8();
  (*(v14 + 8))(v13, v15);
  v19 = (*(v18 + 88))(v16, v17);
  v20 = v0[18];
  v21 = v0[19];
  v22 = v0[17];
  if (v19 != enum case for Parse.uso(_:))
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    (*(v21 + 56))(v22, 1, 1, v20);
    goto LABEL_18;
  }

  v24 = v0[15];
  v23 = v0[16];
  v25 = v0[14];
  v26 = v0[10];
  (*(v0[9] + 96))(v26, v0[8]);
  (*(v24 + 32))(v23, v26, v25);
  LOBYTE(v71[0]) = 1;
  sub_5A8B8();
  (*(v24 + 8))(v23, v25);
  if ((*(v21 + 48))(v22, 1, v20) == 1)
  {
LABEL_18:
    sub_5D4C(v0[17], &unk_72520, &qword_5C320);
    v48 = sub_5B218();
    v49 = sub_5B4B8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "App Shortcuts declined by user after ambiguous first run prompt", v50, 2u);
    }

    (*(v0[23] + 16))(v0[24], v0[25], v0[22]);
    v51 = sub_5B218();
    v52 = sub_5B4C8();
    v53 = os_log_type_enabled(v51, v52);
    v55 = v0[23];
    v54 = v0[24];
    v56 = v0[22];
    if (v53)
    {
      v57 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v71[0] = v69;
      *v57 = 136315138;
      sub_29850(&qword_71C10, &type metadata accessor for PluginAction, &protocol conformance descriptor for PluginAction);
      v58 = sub_5B798();
      v60 = v59;
      v61 = *(v55 + 8);
      v61(v54, v56);
      v62 = sub_2DC10(v58, v60, v71);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_0, v51, v52, "AppShortcutEnablementFlow redirecting to resolved action %s", v57, 0xCu);
      sub_5D00(v69);
    }

    else
    {

      v61 = *(v55 + 8);
      v61(v54, v56);
    }

    v63 = v0[25];
    v64 = v0[22];
    sub_5A448();
    v61(v63, v64);
LABEL_24:

    v65 = v0[1];

    return v65();
  }

  v28 = v0[20];
  v27 = v0[21];
  v29 = v0[18];
  v30 = v0[19];
  (*(v30 + 32))(v27, v0[17], v29);
  (*(v30 + 16))(v28, v27, v29);
  v31 = sub_5B218();
  v32 = sub_5B4B8();
  v33 = os_log_type_enabled(v31, v32);
  v35 = v0[19];
  v34 = v0[20];
  v36 = v0[18];
  if (v33)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v71[0] = v38;
    *v37 = 136315138;
    v68 = sub_5A628();
    v40 = v39;
    v43 = *(v35 + 8);
    v42 = v35 + 8;
    v41 = v43;
    v43(v34, v36);
    v44 = sub_2DC10(v68, v40, v71);

    *(v37 + 4) = v44;
    _os_log_impl(&dword_0, v31, v32, "App Shortcuts for %s enabled after ambiguous first run prompt", v37, 0xCu);
    sub_5D00(v38);
  }

  else
  {

    v66 = *(v35 + 8);
    v42 = v35 + 8;
    v41 = v66;
    v66(v34, v36);
  }

  v0[29] = v42;
  v0[30] = v41;
  v67 = swift_task_alloc();
  v0[31] = v67;
  *v67 = v0;
  v67[1] = sub_1DE00;

  return AppShortcutInvocation.enableAppShortcuts()();
}