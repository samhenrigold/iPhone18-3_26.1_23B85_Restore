void sub_22C1BEC10()
{
  sub_22BE19130();
  v2 = v0;
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  v110 = v7;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v8);
  sub_22BE19E94();
  v9 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE17B98();
  v118 = v11;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E94();
  v112 = v13;
  v14 = sub_22BE183BC();
  type metadata accessor for ContextProtoSpanMatchedEntity(v14);
  sub_22BE179D8();
  v113 = v15;
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  v106 = v16;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  sub_22BE19E94();
  v99 = v18;
  sub_22BE183BC();
  v19 = sub_22C270FD4();
  sub_22BE179D8();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_22BE18928();
  MEMORY[0x28223BE20](v23);
  sub_22BE19490();
  v119 = v24;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v25);
  sub_22C1CEBCC();
  MEMORY[0x28223BE20](v26);
  sub_22BE19E94();
  sub_22BE38A28(v27);
  v28 = *(v4 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22C1CF078();
  sub_22BE7038C(v29, v30, v31);
  sub_22C1CF050();
  v114 = v19;
  v115 = v4;
  v117 = v21;
  v111 = v28;
  if (v28)
  {
    v32 = 0;
    v107 = v4 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v108 = (v21 + 8);
    v109 = *(v4 + 16);
    v102 = v1;
    while (v109 != v32)
    {
      if (v32 >= *(v4 + 16))
      {
        goto LABEL_22;
      }

      v33 = *(v21 + 16);
      v33(v119, v107 + *(v21 + 72) * v32, v19);
      v33(v1, v119, v19);
      sub_22C270FB4();
      v0 = v2;
      sub_22C105684(v110, v34, v35, v36, v37, v38, v39, v40, v99, v102);
      if (v2)
      {
        v96 = *v108;
        v97 = sub_22BE33B3C();
        v96(v97);

        (v96)(v119, v19);
        goto LABEL_19;
      }

      v41 = sub_22C270FC4();
      sub_22C1C4190(v41, v42, v43, v44, v45, v46, v47, v48, v100, v103);
      v50 = v49;
      v51 = *(v113 + 20);
      sub_22C272594();
      v52 = v106;
      sub_22BE1A140();
      sub_22BE19DC4(v53, v54, v55, v56);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v57 = *v108;
      (*v108)(v1, v19);
      sub_22BE23490(v118, v106 + v51, &qword_27D909128, &qword_22C294AA0);
      *v106 = v50;
      (v57)(v119, v19);
      v59 = *(v121 + 16);
      v58 = *(v121 + 24);
      if (v59 >= v58 >> 1)
      {
        v62 = sub_22BE3D1E4(v58);
        sub_22BE7038C(v62, v59 + 1, 1);
        v52 = v106;
        sub_22C1CF050();
      }

      ++v32;
      *(v121 + 16) = v59 + 1;
      sub_22BE25AD8();
      sub_22BE3C5C0();
      sub_22C1CEB4C(v52, v60, v61);
      v19 = v114;
      v4 = v115;
      v21 = v117;
      v1 = v102;
      if (v111 == v32)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_9:
    v120 = (v21 + 8);
    for (i = v111; ; ++i)
    {
      v64 = *(v4 + 16);
      if (i == v64)
      {

        goto LABEL_20;
      }

      if (i >= v64)
      {
        goto LABEL_23;
      }

      sub_22BE25AD8();
      sub_22BE46DDC();
      v66 = *(v65 + 16);
      v66();
      sub_22BE39EA0();
      v66();
      sub_22C270FB4();
      v67 = sub_22C1CF27C();
      sub_22C105684(v67, v68, v69, v70, v71, v72, v73, v74, v99, v102);
      if (v0)
      {
        break;
      }

      v75 = sub_22C270FC4();
      sub_22C1C4190(v75, v76, v77, v78, v79, v80, v81, v82, v101, v104);
      v84 = v83;
      v85 = *(v113 + 20);
      sub_22C272594();
      sub_22BE1A140();
      sub_22BE19DC4(v86, v87, v88, v89);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v90 = *v120;
      (*v120)(v105, v19);
      sub_22BE23490(v112, v99 + v85, &qword_27D909128, &qword_22C294AA0);
      *v99 = v84;
      v90(v116, v19);
      v92 = *(v121 + 16);
      v91 = *(v121 + 24);
      if (v92 >= v91 >> 1)
      {
        v95 = sub_22BE3D1E4(v91);
        sub_22BE7038C(v95, v92 + 1, 1);
        sub_22C1CF050();
      }

      *(v121 + 16) = v92 + 1;
      sub_22BE25AD8();
      sub_22BE3C5C0();
      sub_22C1CEB4C(v99, v93, v94);
      v19 = v114;
      v4 = v115;
    }

    v98 = sub_22C1CF05C();
    (v66)(v98);

    (v66)(v116, v19);
LABEL_19:

LABEL_20:
    sub_22BE22978();
    sub_22BE18478();
  }
}

void sub_22C1BF26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v14 = sub_22BE25D84();
  v15 = type metadata accessor for ContextProtoRetrievedTool(v14);
  v16 = sub_22BE17A18(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BE193B0(v17, v70);
  MEMORY[0x28223BE20](v18);
  sub_22BE22D7C(v19, v20, v21, v22, v23, v24, v25, v26, v71);
  sub_22C270C24();
  sub_22BE179D8();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v30);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v31);
  sub_22BE23730(v32, v33, v34, v35, v36, v37, v38, v39, v72);
  MEMORY[0x28223BE20](v40);
  sub_22BE26800();
  v41 = *(v13 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE2C294();
  sub_22BE703E4(v42, v43, v44);
  sub_22BE3E47C();
  if (v41)
  {
    sub_22BE1C3D4();
    while (1)
    {
      sub_22C1CF13C();
      if (v45)
      {
        break;
      }

      sub_22BE39418();
      if (v56)
      {
        goto LABEL_22;
      }

      v46 = sub_22BE25BB8();
      v28(v46);
      v47 = sub_22C1CEC40();
      v28(v47);
      sub_22BE23360();
      ContextProtoRetrievedTool.init(handwritten:)();
      if (v11)
      {
LABEL_17:

        v68 = sub_22BE203E8();
        v69(v68);

LABEL_19:
        sub_22C1CED0C();
        sub_22BE18478();
        return;
      }

      v48 = sub_22BE2902C();
      v49(v48);
      sub_22BE1B698();
      if (v56)
      {
        sub_22BE3D1E4(v50);
        sub_22C1CF178();
        sub_22BE703E4(v53, v54, v55);
        v10 = a10;
      }

      v12 = (v12 + 1);
      *(v10 + 16) = v13;
      sub_22BE197A0();
      sub_22BE37B68();
      sub_22C1CEB4C(v74, v51, v52);
      sub_22BE323D0();
      v28 = v73;
      if (v45)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    sub_22BE40C98();
    while (1)
    {
      sub_22BE447AC();
      if (v45)
      {

        goto LABEL_19;
      }

      if (v56)
      {
        break;
      }

      v57 = sub_22BE1A084();
      v12(v57);
      v58 = sub_22C1CEC40();
      v12(v58);
      sub_22C1CF124();
      ContextProtoRetrievedTool.init(handwritten:)();
      if (v11)
      {
        goto LABEL_17;
      }

      v59 = sub_22BE203E8();
      v60(v59);
      sub_22C1CEC50();
      if (v56)
      {
        v65 = sub_22BE19808(v61);
        sub_22BE703E4(v65, v66, v67);
        v10 = a10;
      }

      *(v10 + 16) = v12;
      sub_22BE197A0();
      sub_22BE37B68();
      sub_22C1CEB4C(v62, v63, v64);
      sub_22BE27AB8();
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_22C1BF534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = v12;
  v91 = sub_22C270B74();
  sub_22BE179D8();
  v82 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v16);
  sub_22BE19E94();
  v86 = v17;
  v18 = sub_22BE5CE4C(&qword_27D9090D0, &unk_22C294B30);
  v19 = sub_22BE19448(v18);
  MEMORY[0x28223BE20](v19);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v20);
  sub_22BE32374();
  type metadata accessor for ContextProtoToolQueryOutput(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v21);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v22);
  sub_22BE19E94();
  v23 = sub_22BE183BC();
  v24 = type metadata accessor for ToolQuery.Output(v23);
  v25 = sub_22BE17A18(v24);
  v27 = v26;
  MEMORY[0x28223BE20](v25);
  sub_22BE183AC();
  sub_22BE2351C();
  MEMORY[0x28223BE20](v28);
  sub_22BE3A4D8();
  MEMORY[0x28223BE20](v29);
  sub_22BE255B8();
  MEMORY[0x28223BE20](v30);
  sub_22BE19E94();
  sub_22BEC03A4(v31);
  v32 = *(v13 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE34198();
  sub_22BE7043C(v33, v34, v35);
  v89 = v13;
  v90 = v27;
  if (v32)
  {
    v84 = v10;
    v36 = v13;
    v37 = 0;
    v85 = *(v36 + 16);
    sub_22BE19E14();
    v83 = v39 + v38;
    v40 = v82;
    while (v85 != v37)
    {
      if (v37 >= *(v89 + 16))
      {
        goto LABEL_23;
      }

      sub_22C1CEAA4(v83 + *(v27 + 72) * v37, v84, type metadata accessor for ToolQuery.Output);
      v41 = sub_22BE3EA80();
      sub_22C1CEAA4(v41, v42, type metadata accessor for ToolQuery.Output);
      sub_22C108D54();
      v43 = sub_22BE1AEE4();
      v44(v43);
      ContextProtoRetrievedTool.Definition.init(handwritten:)();
      if (v11)
      {
LABEL_19:

        sub_22C1CEAFC();
        sub_22BE25C08();
        sub_22C1CEAFC();

LABEL_20:
        sub_22BE29F1C();
        sub_22BE18478();
        return;
      }

      v45 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
      sub_22BE187DC();
      sub_22BE19DC4(v46, v47, v48, v45);
      sub_22BE1A140();
      sub_22BE19DC4(v49, v50, v51, v45);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22C1CEAFC();
      sub_22BE23108();
      sub_22C1CEAFC();
      v52 = sub_22BE196A8();
      sub_22BE23490(v52, v53, &qword_27D9090D0, &unk_22C294B30);
      v55 = *(a10 + 16);
      v54 = *(a10 + 24);
      if (v55 >= v54 >> 1)
      {
        v59 = sub_22BE3D1E4(v54);
        sub_22BE7043C(v59, v55 + 1, 1);
      }

      ++v37;
      *(a10 + 16) = v55 + 1;
      sub_22BE197A0();
      sub_22C1CEF64(v58, v56 + v57 * v55);
      v27 = v90;
      if (v32 == v37)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v40 = v82;
LABEL_11:
    v60 = v87;
    while (1)
    {
      sub_22BE39418();
      if (v62)
      {

        goto LABEL_20;
      }

      if (v61)
      {
        break;
      }

      sub_22C1CEC64();
      sub_22C1CEAA4(v63 + *(v27 + 72) * v32, v60, type metadata accessor for ToolQuery.Output);
      v64 = sub_22BE1AB1C();
      sub_22C1CEAA4(v64, v65, type metadata accessor for ToolQuery.Output);
      (*(v40 + 16))(v86, v88, v91);
      ContextProtoRetrievedTool.Definition.init(handwritten:)();
      if (v11)
      {
        goto LABEL_19;
      }

      v66 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
      v67 = sub_22BE360A0();
      sub_22BE19DC4(v67, v68, v69, v66);
      sub_22BE28D2C();
      sub_22BE19DC4(v70, v71, v72, v73);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v60 = v87;
      sub_22C1CEAFC();
      sub_22BE1B18C();
      sub_22C1CEAFC();
      v74 = sub_22BF6AC14();
      sub_22BE23490(v74, v75, &qword_27D9090D0, &unk_22C294B30);
      v77 = *(a10 + 16);
      v76 = *(a10 + 24);
      if (v77 >= v76 >> 1)
      {
        v81 = sub_22BE3D1E4(v76);
        sub_22BE7043C(v81, v77 + 1, 1);
      }

      *(a10 + 16) = v77 + 1;
      sub_22BE197A0();
      sub_22C1CEF64(v80, v78 + v79 * v77);
      ++v32;
      v27 = v90;
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_22C1BFAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v10;
  v14 = v13;
  v203 = type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v16);
  sub_22BE19E94();
  sub_22BE190A8(v17);
  v18 = sub_22BE5CE4C(&qword_27D90F098, &unk_22C2AE7E0);
  v19 = sub_22BE19448(v18);
  MEMORY[0x28223BE20](v19);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v20);
  sub_22BE19E94();
  v22 = sub_22BE18950(v21);
  v23 = type metadata accessor for Expression(v22);
  v24 = sub_22BE19448(v23);
  MEMORY[0x28223BE20](v24);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v25);
  sub_22BE19E94();
  sub_22BE190A8(v26);
  v27 = sub_22BE5CE4C(&qword_27D90F0A8, &qword_22C2B5B70);
  v28 = sub_22BE19448(v27);
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  v190 = v29;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v30);
  sub_22BE19E94();
  v201 = v31;
  sub_22BE183BC();
  v198 = sub_22C26E684();
  sub_22BE179D8();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  sub_22BE17A44();
  v197 = v35;
  v36 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v37 = sub_22BE19448(v36);
  MEMORY[0x28223BE20](v37);
  sub_22BE17B98();
  v194 = v38;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v39);
  sub_22BE19E94();
  v202 = v40;
  v41 = sub_22BE183BC();
  type metadata accessor for TranscriptProtoProgramStatement(v41);
  sub_22BE179D8();
  v193 = v42;
  MEMORY[0x28223BE20](v42);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v43);
  sub_22BE19E94();
  v45 = sub_22BE18950(v44);
  v46 = type metadata accessor for ProgramStatement(v45);
  sub_22BE179D8();
  v48 = v47;
  MEMORY[0x28223BE20](v49);
  sub_22BE17B98();
  v188 = v50;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v51);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v52);
  sub_22BE255B8();
  MEMORY[0x28223BE20](v53);
  sub_22BE19E94();
  sub_22BE190A8(v54);
  v55 = *(v14 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE34198();
  sub_22BE70494(v56, v57, v58);
  v59 = a10;
  v199 = v14;
  v196 = v46;
  v192 = v48;
  if (v55)
  {
    v60 = 0;
    sub_22BE19E14();
    v171 = v14 + v61;
    v173 = *(v14 + 16);
    v170 = v33 + 16;
    v169 = v33 + 8;
    v204 = v55;
    v168 = v33;
    v172 = v11;
    while (1)
    {
      sub_22C1CF130();
      if (v62 == v60)
      {
        break;
      }

      if (v60 >= *(v14 + 16))
      {
        goto LABEL_27;
      }

      v206 = v59;
      v186 = v60;
      sub_22BE426A4();
      sub_22C1CEAA4(v63, v11, v64);
      sub_22C1CEAA4(v11, v188, v48);
      sub_22BE33554();
      v65(v197, v188, v198);
      v66 = sub_22C26E674();
      v67 = sub_22C26E654();
      v69 = v68;
      v70 = type metadata accessor for TranscriptProtoStatementID(0);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE33554();
      v71 = sub_22BE33BE8();
      v72(v71);
      *v194 = v66;
      *(v194 + 8) = v67;
      *(v194 + 16) = v69;
      sub_22BE187DC();
      sub_22BE19DC4(v73, v74, v75, v70);
      sub_22C1CEECC();
      sub_22C1CEAA4(v188 + v76, v175, v77);
      TranscriptProtoExpression.init(handwritten:)(v175, v78, v79, v80, v81, v82, v83, v84, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177);
      if (v12)
      {
        v165 = v194;
LABEL_23:
        sub_22BE1B13C();
        sub_22C1CEAFC();
        sub_22BE233E8(v165, &qword_27D9090F8, &unk_22C2AE4A0);

        sub_22C1CEAFC();

LABEL_24:
        sub_22BE18478();
        return;
      }

      v85 = type metadata accessor for TranscriptProtoExpression(0);
      v86 = 1;
      sub_22BE187DC();
      sub_22BE19DC4(v87, v88, v89, v85);
      v185 = *(v188 + v46[6]);
      v90 = v188 + v46[8];
      v183 = *v90;
      v184 = *(v188 + v46[7]);
      v182 = *(v90 + 4);
      v91 = *(v188 + v46[9]);
      if (v91 != 2)
      {
        *v166 = 2;
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        *v166 = v91 & 1;
        sub_22BE29210();
        sub_22C1CEB4C(v166, v179, v92);
        v86 = 0;
      }

      sub_22BE19DC4(v179, v86, 1, v203);
      sub_22BE1A140();
      sub_22BE19DC4(v93, v94, v95, v70);
      v96 = v193[5];
      sub_22BE1A140();
      sub_22BE19DC4(v97, v98, v99, v85);
      v100 = v193[7];
      sub_22BE417A8(v193[6]);
      v101 = v193[9];
      v102 = v174 + v193[8];
      sub_22BE1A140();
      sub_22BE19DC4(v103, v104, v105, v203);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1B13C();
      sub_22C1CEAFC();
      sub_22BE23490(v194, v174, &qword_27D9090F8, &unk_22C2AE4A0);
      sub_22BE23490(v190, v174 + v96, &qword_27D90F0A8, &qword_22C2B5B70);
      *(v174 + v181) = v185;
      *(v174 + v100) = v184;
      *v102 = v183;
      *(v102 + 4) = v182;
      sub_22BE23490(v179, v174 + v101, &qword_27D90F098, &unk_22C2AE7E0);
      v11 = v172;
      sub_22BE200D4();
      sub_22C1CEAFC();
      v59 = v206;
      a10 = v206;
      v107 = *(v206 + 16);
      v106 = *(v206 + 24);
      if (v107 >= v106 >> 1)
      {
        sub_22BE3D1E4(v106);
        sub_22BE31778();
        sub_22BE70494(v110, v111, v112);
        v59 = v206;
      }

      v60 = v186 + 1;
      *(v59 + 16) = v107 + 1;
      sub_22BE197A0();
      sub_22C1CEEB4();
      sub_22C1CEB4C(v174, v108, v109);
      v55 = v204;
      v12 = 0;
      v14 = v199;
      v48 = v192;
      if (v204 == v186 + 1)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v113 = v178;
    while (1)
    {
      v114 = *(v14 + 16);
      if (v55 == v114)
      {

        goto LABEL_24;
      }

      if (v55 >= v114)
      {
        break;
      }

      v205 = v55;
      v207 = v59;
      sub_22BE19E14();
      sub_22BE426A4();
      sub_22C1CEAA4(v115, v113, v116);
      sub_22C1CEAA4(v113, v200, v48);
      sub_22C1CF1E8();
      v117 = sub_22BE336E8();
      v118(v117);
      v119 = sub_22C26E674();
      v120 = sub_22C26E654();
      v121 = sub_22C1CF35C();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v122 = sub_22BE31038();
      v123(v122);
      *v202 = v119;
      *(v202 + 8) = v120;
      *(v202 + 16) = v12;
      sub_22BE187DC();
      sub_22BE19DC4(v124, v125, v126, v121);
      sub_22C1CEECC();
      sub_22C1CEAA4(v200 + v127, v177, v128);
      TranscriptProtoExpression.init(handwritten:)(v177, v129, v130, v131, v132, v133, v134, v135, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177);
      if (v12)
      {
        v165 = v202;
        goto LABEL_23;
      }

      v136 = type metadata accessor for TranscriptProtoExpression(0);
      v137 = 1;
      sub_22BE187DC();
      sub_22BE19DC4(v138, v139, v140, v136);
      v195 = *(v200 + v196[6]);
      v191 = *(v200 + v196[7]);
      v141 = v200 + v196[8];
      v189 = *v141;
      v187 = *(v141 + 4);
      v142 = *(v200 + v196[9]);
      if (v142 != 2)
      {
        *v167 = 2;
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        *v167 = v142 & 1;
        sub_22BE29210();
        sub_22C1CEB4C(v167, v180, v143);
        v137 = 0;
      }

      sub_22BE19DC4(v180, v137, 1, v203);
      sub_22BE1A140();
      sub_22BE19DC4(v144, v145, v146, v121);
      v147 = v193[5];
      sub_22BE1A140();
      sub_22BE19DC4(v148, v149, v150, v136);
      v151 = v193[6];
      v152 = v193[7];
      v153 = v193[9];
      v154 = v176 + v193[8];
      sub_22BE1A140();
      sub_22BE19DC4(v155, v156, v157, v203);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1B13C();
      sub_22C1CEAFC();
      sub_22BE23490(v202, v176, &qword_27D9090F8, &unk_22C2AE4A0);
      sub_22BE23490(v201, v176 + v147, &qword_27D90F0A8, &qword_22C2B5B70);
      *(v176 + v151) = v195;
      *(v176 + v152) = v191;
      *v154 = v189;
      *(v154 + 4) = v187;
      sub_22BE23490(v180, v176 + v153, &qword_27D90F098, &unk_22C2AE7E0);
      v113 = v178;
      sub_22BE291B0();
      sub_22C1CEAFC();
      v59 = v207;
      sub_22BE35D84();
      sub_22BE3FFA0();
      if (v159)
      {
        sub_22BE3D1E4(v158);
        sub_22BE31778();
        sub_22BE70494(v162, v163, v164);
        v59 = a10;
      }

      *(v59 + 16) = v203;
      sub_22BE197A0();
      sub_22C1CEEB4();
      sub_22C1CEB4C(v176, v160, v161);
      v55 = v205 + 1;
      v14 = v199;
      v12 = 0;
      v48 = v192;
    }

    __break(1u);
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_22C1C05C8(uint64_t a1)
{
  v2 = type metadata accessor for ContextProtoSampleInvocation(0);
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = v47 - v6;
  v58 = sub_22C270F64();
  v7 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v51 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = v47 - v10;
  MEMORY[0x28223BE20](v11);
  v53 = v47 - v12;
  v13 = *(a1 + 16);
  v61 = MEMORY[0x277D84F90];
  sub_22BE7059C(0, v13, 0);
  v14 = v61;
  v55 = a1;
  if (v13)
  {
    v15 = 0;
    v16 = *(a1 + 16);
    v49 = v13;
    v50 = v16;
    v48 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v47[2] = v7 + 8;
    v47[3] = v7 + 16;
    v17 = v57;
    while (v50 != v15)
    {
      v18 = *(v7 + 16);
      v19 = v4;
      v20 = v58;
      v18(v17, v48 + *(v7 + 72) * v15, v58);
      v21 = v51;
      v18(v51, v17, v20);
      v56 = sub_22C270F44();
      v23 = v22;
      sub_22C270F54();
      v25 = v24;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v26 = *(v7 + 8);
      v26(v21, v20);
      v27 = v20;
      v4 = v19;
      v26(v17, v27);
      *v19 = v56;
      *(v19 + 8) = v23;
      *(v19 + 16) = v25;
      v61 = v14;
      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_22BE7059C(v28 > 1, v29 + 1, 1);
        v14 = v61;
      }

      ++v15;
      *(v14 + 16) = v29 + 1;
      sub_22C1CEB4C(v19, v14 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v29, type metadata accessor for ContextProtoSampleInvocation);
      v13 = v49;
      if (v49 == v15)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v56 = v7 + 16;
    v51 = (v7 + 8);
    for (i = v7; ; v7 = i)
    {
      v30 = *(v55 + 16);
      if (v13 == v30)
      {

        return;
      }

      if (v13 >= v30)
      {
        break;
      }

      v31 = v55 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13;
      v32 = *(v7 + 16);
      v33 = v7;
      v34 = v13;
      v35 = v53;
      v36 = v58;
      v32(v53, v31, v58);
      v37 = v57;
      v32(v57, v35, v36);
      v38 = sub_22C270F44();
      v40 = v39;
      sub_22C270F54();
      v42 = v41;
      v43 = v54;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v44 = *(v33 + 8);
      v44(v37, v36);
      v44(v35, v36);
      *v43 = v38;
      *(v43 + 8) = v40;
      *(v43 + 16) = v42;
      v61 = v14;
      v46 = *(v14 + 16);
      v45 = *(v14 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_22BE7059C(v45 > 1, v46 + 1, 1);
        v43 = v54;
        v14 = v61;
      }

      *(v14 + 16) = v46 + 1;
      sub_22C1CEB4C(v43, v14 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v46, type metadata accessor for ContextProtoSampleInvocation);
      v13 = v34 + 1;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C1C0A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE48298();
  v14 = sub_22C26E684();
  sub_22BE179D8();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v18);
  sub_22C1CEBCC();
  MEMORY[0x28223BE20](v19);
  sub_22BE19E94();
  sub_22BE190A8(v20);
  v21 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v22 = sub_22BE19448(v21);
  MEMORY[0x28223BE20](v22);
  sub_22BE17B98();
  v164 = v23;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v24);
  sub_22BE19490();
  v162 = v25;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v26);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v27);
  sub_22C1CEC08(v28, v29, v30, v31, v32, v33, v34, v35, v11);
  v36 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v37 = sub_22BE19448(v36);
  MEMORY[0x28223BE20](v37);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v38);
  sub_22BE3E3EC(v39, v40, v41, v42, v43, v44, v45, v46, v147);
  type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  sub_22BE179D8();
  v168 = v47;
  MEMORY[0x28223BE20](v47);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v48);
  sub_22BE2BC40(v49, v50, v51, v52, v53, v54, v55, v56, v148);
  v167 = type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v57);
  sub_22BE17B98();
  v175 = v58;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v59);
  sub_22C1CECC4(v60, v61, v62, v63, v64, v65, v66, v67, v149);
  MEMORY[0x28223BE20](v68);
  sub_22BE23730(v69, v70, v71, v72, v73, v74, v75, v76, v150);
  MEMORY[0x28223BE20](v77);
  sub_22BE19E94();
  v178 = v78;
  v79 = *(v12 + 16);
  v80 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE706A4(v80, v79, 0);
  v157 = v12;
  v184 = v14;
  if (v79)
  {
    v82 = 0;
    sub_22BE3766C();
    sub_22BE417A8(v12 + v83);
    v161 = *(v12 + 16);
    v152 = (v16 + 8);
    v159 = v16;
    v84 = v154;
    v151 = v13;
    while (v161 != v82)
    {
      sub_22BE32574();
      sub_22C1CEAA4(v85, v173, v86);
      sub_22C1CEAA4(v173, v175, v10);
      v182 = v175[1];
      v169 = v175[2];
      v171 = *v175;
      v176 = v175[3];
      sub_22BE3BB64(v175 + *(v167 + 24), v162, &qword_27D907240, &unk_22C2B5B80);
      sub_22BE3BB64(v162, v164, &qword_27D907240, &unk_22C2B5B80);
      sub_22BE1AB5C(v164, 1, v14);
      if (v87)
      {

        sub_22BE233E8(v162, &qword_27D907240, &unk_22C2B5B80);
        v88 = sub_22BE1A8C4();
        sub_22BE233E8(v88, v89, &unk_22C2B5B80);
        v10 = type metadata accessor for TranscriptProtoStatementID(0);
        v99 = v13;
        v100 = 1;
      }

      else
      {
        sub_22BE33554();
        v90 = sub_22BE35838();
        v91(v90);
        sub_22BE33554();
        sub_22C1CF288();
        v92();

        v158 = sub_22C26E674();
        v93 = sub_22C26E654();
        sub_22C1CF270(v93);
        v10 = type metadata accessor for TranscriptProtoStatementID(0);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        v94 = a10;
        v95 = v79;
        v96 = *v152;
        (*v152)(v163, v14);
        v96(v153, v14);
        v79 = v95;
        a10 = v94;
        v13 = v151;
        v84 = v154;
        sub_22BE233E8(v162, &qword_27D907240, &unk_22C2B5B80);
        *v151 = v158;
        sub_22BE2BCA8();
        *(v151 + 8) = v98;
        *(v151 + 16) = v97;
        v99 = v151;
        v100 = 0;
      }

      sub_22BE19DC4(v99, v100, 1, v10);
      v101 = *(v168 + 24);
      type metadata accessor for TranscriptProtoStatementID(0);
      sub_22BE1A140();
      sub_22BE19DC4(v102, v103, v104, v10);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22C1CEE3C();
      sub_22C1CEAFC();
      sub_22C1CEAFC();
      *v84 = v171;
      v84[1] = v182;
      v84[2] = v169;
      v84[3] = v176;
      sub_22BE23490(v13, v84 + v101, &qword_27D9090F8, &unk_22C2AE4A0);
      v106 = *(a10 + 16);
      v105 = *(a10 + 24);
      if (v106 >= v105 >> 1)
      {
        sub_22BE3D1E4(v105);
        sub_22BE39E18();
        sub_22BE706A4(v109, v110, v111);
      }

      ++v82;
      *(a10 + 16) = v106 + 1;
      sub_22BE25AD8();
      sub_22BE41748();
      sub_22C1CEB4C(v84, v107, v108);
      v16 = v159;
      if (v79 == v82)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v160 = (v16 + 8);
    v112 = v157;
    v113 = v156;
    v114 = v181;
    while (1)
    {
      v115 = *(v112 + 16);
      if (v79 == v115)
      {

        sub_22BE18478();
        return;
      }

      if (v79 >= v115)
      {
        break;
      }

      sub_22BE25AD8();
      sub_22BE32574();
      sub_22C1CEAA4(v116, v178, v117);
      sub_22BE354D0();
      sub_22C1CEAA4(v118, v119, v120);
      v121 = v179[1];
      v174 = *v179;
      v170 = v179[2];
      v183 = v179[3];
      sub_22BE3BB64(v179 + *(v167 + 24), v180, &qword_27D907240, &unk_22C2B5B80);
      v122 = sub_22BE260B8();
      sub_22BE3BB64(v122, v123, &qword_27D907240, &unk_22C2B5B80);
      v124 = sub_22BE2BA98();
      sub_22BE1AB5C(v124, v125, v184);
      v177 = v79;
      v172 = v121;
      if (v87)
      {

        sub_22BE233E8(v180, &qword_27D907240, &unk_22C2B5B80);
        sub_22BE233E8(v113, &qword_27D907240, &unk_22C2B5B80);
        v132 = type metadata accessor for TranscriptProtoStatementID(0);
        v134 = sub_22BE3C598();
      }

      else
      {
        sub_22C1CF1E8();
        v126 = sub_22BE260B8();
        v127(v126);
        sub_22BE354D0();
        v128();

        v165 = sub_22C26E674();
        v129 = sub_22C26E654();
        v131 = v130;
        v132 = type metadata accessor for TranscriptProtoStatementID(0);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        v133 = *v160;
        (*v160)(v163, v184);
        v133(v155, v184);
        sub_22BE233E8(v180, &qword_27D907240, &unk_22C2B5B80);
        *v181 = v165;
        *(v181 + 8) = v129;
        v114 = v181;
        v113 = v156;
        v112 = v157;
        *(v181 + 16) = v131;
        v134 = v181;
        v135 = 0;
      }

      sub_22BE19DC4(v134, v135, 1, v132);
      v136 = *(v168 + 24);
      type metadata accessor for TranscriptProtoStatementID(0);
      sub_22BE1A140();
      sub_22BE19DC4(v137, v138, v139, v132);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22C1CEE3C();
      sub_22C1CEAFC();
      sub_22C1CEAFC();
      *v166 = v174;
      v166[1] = v172;
      v166[2] = v170;
      v166[3] = v183;
      sub_22BE23490(v114, v166 + v136, &qword_27D9090F8, &unk_22C2AE4A0);
      v141 = *(a10 + 16);
      v140 = *(a10 + 24);
      if (v141 >= v140 >> 1)
      {
        sub_22BE3D1E4(v140);
        sub_22BE39E18();
        sub_22BE706A4(v144, v145, v146);
      }

      *(a10 + 16) = v141 + 1;
      sub_22BE25AD8();
      sub_22BE41748();
      sub_22C1CEB4C(v166, v142, v143);
      v79 = v177 + 1;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C1C1424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v13);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E94();
  v67 = v15;
  sub_22BE183BC();
  v70 = sub_22C26E684();
  sub_22BE179D8();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v19);
  sub_22BE19490();
  v71 = v20;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v21);
  sub_22BE19E94();
  v66 = v22;
  v23 = *(v12 + 16);
  v24 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE705F4(v24, v23, 0);
  v72 = v12;
  if (v23)
  {
    v26 = 0;
    sub_22BE3766C();
    v63 = v12 + v27;
    v64 = v28;
    sub_22BE487F0();
    v73 = v23;
    while (v64 != v26)
    {
      v29 = v17[2];
      v29(v71, v63 + v17[9] * v26, v70);
      v30 = sub_22BE31038();
      (v29)(v30);
      v69 = a10;
      v68 = sub_22C26E674();
      v31 = sub_22C26E654();
      v33 = v32;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v34 = v10;
      v35 = v17[1];
      v36 = sub_22BE261AC();
      v35(v36);
      v37 = sub_22BE2BA80();
      v35(v37);
      v10 = v34;
      *v34 = v68;
      *(v34 + 8) = v31;
      a10 = v69;
      *(v10 + 16) = v33;
      v39 = *(v69 + 16);
      v38 = *(v69 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_22BE3D1E4(v38);
        sub_22BE31778();
        sub_22BE705F4(v43, v44, v45);
        a10 = v69;
      }

      ++v26;
      *(a10 + 16) = v39 + 1;
      sub_22BE25AD8();
      sub_22C1CEF14(v42, a10 + v40 + *(v41 + 72) * v39);
      v12 = v72;
      v23 = v73;
      if (v73 == v26)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    sub_22BE487F0();
    for (i = v17; ; v17 = i)
    {
      v46 = *(v12 + 16);
      if (v23 == v46)
      {

        sub_22BE18478();
        return;
      }

      if (v23 >= v46)
      {
        break;
      }

      sub_22BE3766C();
      v48 = v12 + v47 + v17[9] * v23;
      v74 = v23;
      v49 = v17[2];
      v49(v66, v48, v70);
      v49(v71, v66, v70);
      LODWORD(v49) = sub_22C26E674();
      v50 = sub_22C26E654();
      v52 = v51;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v53 = v17[1];
      v54 = sub_22BE261AC();
      v53(v54);
      (v53)(v66, v70);
      *v67 = v49;
      *(v67 + 8) = v50;
      *(v67 + 16) = v52;
      v56 = *(a10 + 16);
      v55 = *(a10 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_22BE3D1E4(v55);
        sub_22BE31778();
        sub_22BE705F4(v60, v61, v62);
      }

      *(a10 + 16) = v56 + 1;
      sub_22BE25AD8();
      sub_22C1CEF14(v59, a10 + v57 + *(v58 + 72) * v56);
      v12 = v72;
      v23 = v74 + 1;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C1C1808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v15 = sub_22BE17BC4();
  v16 = type metadata accessor for TranscriptProtoASTFlatValue(v15);
  v17 = sub_22BE17A18(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v18);
  sub_22BE25A90();
  v19 = type metadata accessor for AST.FlatValue(0);
  v20 = sub_22BE17A18(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BE17B98();
  v49 = v21;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v22);
  sub_22BE23858();
  MEMORY[0x28223BE20](v23);
  sub_22BE32374();
  v24 = *(v10 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22C1CF078();
  sub_22BE707AC(v25, v26, v27);
  v28 = a10;
  if (!v24)
  {
    goto LABEL_7;
  }

  v29 = 0;
  v48 = *(v10 + 16);
  sub_22BE19E14();
  while (v48 != v29)
  {
    sub_22BE295A0();
    sub_22C1CEAA4(v30, v13, v31);
    sub_22C1CEAA4(v13, v49, v10);
    TranscriptProtoASTFlatValue.init(handwritten:)();
    sub_22C1CEE0C();
    sub_22C1CEAFC();
    sub_22BE35D84();
    sub_22BE3FFA0();
    if (v33)
    {
      sub_22BE3D1E4(v32);
      sub_22BE31778();
      sub_22BE707AC(v36, v37, v38);
      v28 = a10;
    }

    ++v29;
    *(v28 + 16) = v10;
    sub_22BE197A0();
    sub_22C1CED38();
    sub_22C1CEB4C(v12, v34, v35);
    if (v24 == v29)
    {
      while (1)
      {
LABEL_7:
        v39 = *(v10 + 16);
        if (v24 == v39)
        {

          sub_22BE18478();
          return;
        }

        if (v24 >= v39)
        {
          break;
        }

        sub_22BE25AD8();
        sub_22BE295A0();
        sub_22C1CEAA4(v40, v14, v41);
        sub_22C1CEAA4(v14, v13, v10);
        TranscriptProtoASTFlatValue.init(handwritten:)();
        sub_22C1CEE0C();
        sub_22C1CEAFC();
        sub_22BE3FFA0();
        if (v33)
        {
          sub_22BE3D1E4(v42);
          sub_22BE31778();
          sub_22BE707AC(v45, v46, v47);
        }

        *(v28 + 16) = v10;
        sub_22BE2C704();
        sub_22C1CED38();
        sub_22C1CEB4C(v11, v43, v44);
        ++v24;
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
}

void sub_22C1C1AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = v12;
  v14 = type metadata accessor for AST.FlatValue(0);
  v15 = sub_22BE19448(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE17A44();
  sub_22BEC03A4(v16);
  v17 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v18 = sub_22BE19448(v17);
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  sub_22BE4201C();
  MEMORY[0x28223BE20](v19);
  sub_22BE23730(v20, v21, v22, v23, v24, v25, v26, v27, v140);
  MEMORY[0x28223BE20](v28);
  sub_22BE19490();
  v150 = v29;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v30);
  sub_22BE2BC40(v31, v32, v33, v34, v35, v36, v37, v38, v141);
  type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  sub_22BE179D8();
  v154 = v39;
  MEMORY[0x28223BE20](v39);
  sub_22BE18928();
  MEMORY[0x28223BE20](v40);
  sub_22C1CEC08(v41, v42, v43, v44, v45, v46, v47, v48, v142);
  v153 = type metadata accessor for AST.Update(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v49);
  sub_22BE17B98();
  v146 = v50;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v51);
  sub_22BE409D8();
  MEMORY[0x28223BE20](v52);
  sub_22C1CEC1C();
  MEMORY[0x28223BE20](v53);
  sub_22BE3E3EC(v54, v55, v56, v57, v58, v59, v60, v61, v143);
  v62 = *(v13 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE34198();
  sub_22BE70804(v63, v64, v65);
  v156 = v13;
  if (!v62)
  {
    goto LABEL_7;
  }

  v66 = 0;
  sub_22BE19E14();
  v144 = v13 + v67;
  v145 = v68;
  v162 = v62;
  while (v145 != v66)
  {
    sub_22BE36014();
    sub_22C1CEAA4(v69, v157, v70);
    sub_22C1CEAA4(v157, v146, v11);
    sub_22BE295A0();
    sub_22C1CEAA4(v146, v155, v71);
    TranscriptProtoASTFlatValue.init(handwritten:)();
    v72 = v10;
    v73 = type metadata accessor for TranscriptProtoASTFlatValue(0);
    sub_22BE187DC();
    sub_22BE19DC4(v74, v75, v76, v73);

    sub_22C1C1808(v77, v78, v79, v80, v81, v82, v83, v84, v144, v145);
    v152 = v85;
    sub_22C1CEAA4(v146 + *(v153 + 28), v155, v157);
    TranscriptProtoASTFlatValue.init(handwritten:)();
    sub_22BE187DC();
    sub_22BE3A034(v86, v87, v88, v73);
    v151 = *(v146 + v89);
    v90 = *(v154 + 24);
    sub_22BE28D2C();
    sub_22BE19DC4(v91, v92, v93, v94);
    v11 = *(v154 + 28);
    sub_22BE28D2C();
    v10 = v72;
    sub_22BE19DC4(v95, v96, v97, v98);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C1CEAFC();
    sub_22C1CEAFC();
    sub_22BE23490(v159, v72 + v90, &qword_27D90EE30, &unk_22C2AE760);
    *v72 = v152;
    sub_22BE23490(v147, v72 + v11, &qword_27D90EE30, &unk_22C2AE760);
    *(v72 + 8) = v151;
    sub_22C1CF084();
    if (v100)
    {
      sub_22BE3D1E4(v99);
      sub_22C1CF294();
      sub_22BE70804(v103, v104, v105);
    }

    ++v66;
    *(a10 + 16) = v11;
    sub_22BE197A0();
    sub_22BE389CC();
    sub_22C1CEB4C(v72, v101, v102);
    v62 = v162;
    v13 = v156;
    if (v162 == v66)
    {
      while (1)
      {
LABEL_7:
        v106 = *(v13 + 16);
        if (v62 == v106)
        {

          sub_22BE18478();
          return;
        }

        if (v62 >= v106)
        {
          break;
        }

        sub_22BE19E14();
        sub_22BE36014();
        sub_22C1CEAA4(v107, v161, v108);
        sub_22C1CEAA4(v161, v148, v11);
        sub_22C1CEAA4(v148, v155, type metadata accessor for AST.FlatValue);
        v11 = v149;
        TranscriptProtoASTFlatValue.init(handwritten:)();
        v109 = type metadata accessor for TranscriptProtoASTFlatValue(0);
        sub_22BE187DC();
        sub_22BE19DC4(v110, v111, v112, v109);

        sub_22C1C1808(v113, v114, v115, v116, v117, v118, v119, v120, v144, v145);
        v158 = v121;
        sub_22C1CEAA4(v148 + *(v153 + 28), v155, type metadata accessor for AST.FlatValue);
        TranscriptProtoASTFlatValue.init(handwritten:)();
        sub_22BE187DC();
        sub_22BE19DC4(v122, v123, v124, v109);
        v125 = *(v148 + *(v153 + 24));
        v126 = *(v154 + 24);
        sub_22BE1A140();
        sub_22BE19DC4(v127, v128, v129, v109);
        v130 = *(v154 + 28);
        sub_22BE1A140();
        sub_22BE19DC4(v131, v132, v133, v109);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        sub_22C1CEAFC();
        sub_22C1CEAFC();
        sub_22BE23490(v149, v160 + v126, &qword_27D90EE30, &unk_22C2AE760);
        *v160 = v158;
        sub_22BE23490(v150, v160 + v130, &qword_27D90EE30, &unk_22C2AE760);
        *(v160 + 8) = v125;
        sub_22C1CF084();
        if (v100)
        {
          sub_22BE3D1E4(v134);
          sub_22C1CF294();
          sub_22BE70804(v137, v138, v139);
        }

        *(a10 + 16) = v149;
        sub_22BE197A0();
        sub_22BE389CC();
        sub_22C1CEB4C(v160, v135, v136);
        ++v62;
        v13 = v156;
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
}

void sub_22C1C2144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE38A98();
  v14 = type metadata accessor for TranscriptProtoCandidate(0);
  v15 = sub_22BE17A18(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE193B0(v16, v71);
  MEMORY[0x28223BE20](v17);
  sub_22BE19E94();
  v77 = v18;
  v19 = sub_22BE183BC();
  v20 = type metadata accessor for Candidate(v19);
  v21 = sub_22BE17A18(v20);
  v23 = v22;
  MEMORY[0x28223BE20](v21);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v24);
  sub_22BE23858();
  MEMORY[0x28223BE20](v25);
  sub_22BE23730(v26, v27, v28, v29, v30, v31, v32, v33, v72);
  MEMORY[0x28223BE20](v34);
  sub_22BE3E3EC(v35, v36, v37, v38, v39, v40, v41, v42, v73);
  v43 = *(v12 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22C1CF078();
  sub_22BE708B4(v44, v45, v46);
  sub_22BE35CC8();
  if (!v43)
  {
    goto LABEL_9;
  }

  v47 = 0;
  sub_22C1CEC30();
  v74 = v48;
  while (1)
  {
    if (v74 == v47)
    {
      goto LABEL_19;
    }

    sub_22BE27A88();
    if (v59)
    {
      goto LABEL_20;
    }

    sub_22BE36598();
    sub_22C1CEDC4();
    sub_22C1CEAA4(v49, v13, v50);
    v51 = sub_22BE289D8();
    sub_22C1CEAA4(v51, v52, v23);
    sub_22BE351D8();
    TranscriptProtoCandidate.init(handwritten:)();
    if (v11)
    {
      break;
    }

    sub_22BE23650();
    sub_22C1CEAFC();
    sub_22BE182F0();
    if (v59)
    {
      v56 = sub_22BE1A028(v53);
      sub_22BE708B4(v56, v57, v58);
      v10 = a10;
    }

    ++v47;
    *(v10 + 16) = v23;
    sub_22BE2C704();
    sub_22C1CED70();
    sub_22C1CEB4C(v76, v54, v55);
    if (v43 == v47)
    {
      while (1)
      {
LABEL_9:
        sub_22BE47E0C();
        if (v60)
        {

          goto LABEL_17;
        }

        if (v59)
        {
          break;
        }

        sub_22BE3766C();
        sub_22C1CEF8C(v61, v62);
        sub_22C1CEDC4();
        sub_22C1CEAA4(v63, v75, v64);
        sub_22C1CEFE0();
        sub_22BE3E778();
        TranscriptProtoCandidate.init(handwritten:)();
        if (v11)
        {
          goto LABEL_16;
        }

        sub_22BE23650();
        sub_22C1CEAFC();
        sub_22BE182F0();
        if (v59)
        {
          v68 = sub_22BE1A028(v65);
          sub_22BE708B4(v68, v69, v70);
          v10 = a10;
        }

        *(v10 + 16) = v23;
        sub_22BE2C704();
        sub_22C1CED70();
        sub_22C1CEB4C(v77, v66, v67);
        sub_22BE3C654();
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }
  }

LABEL_16:

  sub_22BE23650();
  sub_22C1CEAFC();

LABEL_17:
  sub_22BE29F1C();
  sub_22BE18478();
}

void sub_22C1C241C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE38A98();
  v216 = sub_22BE5CE4C(&qword_27D909040, &qword_22C2CC990);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v14);
  sub_22BE23730(v15, v16, v17, v18, v19, v20, v21, v22, v183);
  MEMORY[0x28223BE20](v23);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v24);
  sub_22BE19490();
  v215 = v25;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v26);
  sub_22BE19E94();
  v209 = v27;
  sub_22BE183BC();
  v228 = sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v29);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v30);
  sub_22BE255B8();
  MEMORY[0x28223BE20](v31);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v32);
  sub_22C1CEC9C();
  MEMORY[0x28223BE20](v33);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v34);
  sub_22BE3913C();
  MEMORY[0x28223BE20](v35);
  sub_22BE19E94();
  sub_22BE18950(v36);
  v37 = sub_22C272874();
  sub_22BE179D8();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v41);
  sub_22BE26800();
  v42 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v43 = sub_22BE19448(v42);
  MEMORY[0x28223BE20](v43);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v44);
  sub_22BE19E94();
  v46 = sub_22BE18950(v45);
  v190 = type metadata accessor for TranscriptProtoVariableSetter(v46);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v47);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v48);
  sub_22BE19E94();
  v50 = sub_22BE18950(v49);
  type metadata accessor for VariableSetter(v50);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v51);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v52);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v53);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v54);
  sub_22BE19E94();
  sub_22BE190A8(v55);
  v56 = *(v11 + 16);
  v57 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE7090C(v57, v56, 0);
  v192 = v11;
  v229 = v37;
  v213 = v39;
  v199 = v12;
  if (!v56)
  {
    goto LABEL_26;
  }

  sub_22C1CEC30();
  v186 = *(v11 + 16);
  sub_22BE36638(v39 + 16);
  v195 = v56;
  while (2)
  {
    if (v58 == v186)
    {
LABEL_61:
      __break(1u);
      break;
    }

    if (v58 < *(v11 + 16))
    {
      sub_22C1CEEFC();
      v60 = v59;
      sub_22C1CEAA4(v61, v194, v62);
      sub_22C1CF288();
      sub_22C1CEAA4(v63, v64, v65);
      sub_22BE32C24();
      (*v204)(v187, &v205[*(v66 + 20)], v37);
      sub_22BE236D4();
      v67 = v10;
      sub_22C272854();
      if (v10)
      {

        sub_22BE33554();
        v179 = sub_22BE261AC();
        v180(v179);
        sub_22BE1A420();
        sub_22C1CEAFC();
        goto LABEL_53;
      }

      v191 = v60 + 1;
      sub_22BE3974C();
      v202 = *v68;
      v69 = sub_22BE261AC();
      v70(v69);
      v71 = sub_22BE27A44();
      v72 = v228;
      v211 = v73;
      (v73)(v71);
      sub_22BE187DC();
      sub_22BE19DC4(v74, v75, v76, v228);
      v77 = *v205;

      v78 = sub_22C272E84();
      sub_22C1CEE84();
      v80 = v79 >> 6;

      v81 = 0;
      v201 = v80;
      if (!v228)
      {
        goto LABEL_8;
      }

      do
      {
        v221 = v78;
LABEL_12:
        v83 = *(v77 + 48);
        v84 = sub_22C26E684();
        sub_22BE179D8();
        v86 = v85;
        (*(v87 + 16))(v226, v83 + *(v87 + 72) * (__clz(__rbit64(v72)) | (v81 << 6)), v84);
        sub_22C1CF148();
        sub_22BE3CB90();
        v88();
        sub_22BE3BB64(v226, v215, &qword_27D909040, &qword_22C2CC990);
        v89 = *(v216 + 48);
        v217 = sub_22C26E674();
        v219 = *(v86 + 8);
        v219(v215, v84);
        v202(v215 + v89, v229);
        sub_22BE3BB64(v226, v200, &qword_27D909040, &qword_22C2CC990);
        v90 = *(v216 + 48);
        sub_22C272854();
        v202(v200 + v90, v229);
        sub_22BE22DF4();
        sub_22C1CF028();
        v211();
        v219(v200, v84);
        sub_22BE33554();
        v91(v225, v223, v200 + v90);
        swift_isUniquelyReferenced_nonNull_native();
        sub_22BE60364(v217);
        sub_22C1CF0B4();
        v37 = v229;
        if (__OFADD__(v94, v95))
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v96 = v92;
        v97 = v93;
        sub_22BE5CE4C(&qword_27D915598, &qword_22C2CC610);
        if (sub_22C273C44())
        {
          v98 = sub_22BE60364(v217);
          v80 = v201;
          if ((v97 & 1) != (v99 & 1))
          {
            goto LABEL_64;
          }

          v96 = v98;
        }

        else
        {
          v80 = v201;
        }

        v78 = v221;
        if (v97)
        {
          sub_22C1CF2F8();
          sub_22C1CF028();
          v100();
          v101 = sub_22C1CF184();
          v102(v101);
          sub_22BE233E8(v226, &qword_27D909040, &qword_22C2CC990);
        }

        else
        {
          sub_22BE45B78(v221 + 8 * (v96 >> 6));
          *(*(v221 + 48) + 4 * v96) = v103;
          sub_22C1CF2F8();
          sub_22C1CF028();
          v211();
          v104 = sub_22C1CF184();
          v105(v104);
          sub_22BE233E8(v226, &qword_27D909040, &qword_22C2CC990);
          v106 = *(v221 + 16);
          v107 = __OFADD__(v106, 1);
          v108 = v106 + 1;
          if (v107)
          {
            goto LABEL_59;
          }

          *(v221 + 16) = v108;
        }

        v72 &= v72 - 1;
        v39 = v213;
        v67 = 0;
      }

      while (v72);
      while (1)
      {
LABEL_8:
        v82 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (v82 >= v80)
        {
          break;
        }

        v72 = *(v67 + 8 * v82);
        ++v81;
        if (v72)
        {
          v221 = v78;
          v81 = v82;
          goto LABEL_12;
        }
      }

      v109 = v190;
      v110 = *(v190 + 20);
      sub_22BE1A140();
      sub_22BE3A034(v111, v112, v113, v228);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1A420();
      sub_22C1CEAFC();
      sub_22BE36404();
      sub_22BE23490(v193, v185 + v110, &qword_27D909128, &qword_22C294AA0);
      *v185 = v78;
      sub_22C1CF000();
      if (v115)
      {
        v118 = sub_22BE19808(v114);
        sub_22BE7090C(v118, v119, v120);
        v109 = a10;
      }

      *(v109 + 16) = v78;
      sub_22BE197A0();
      sub_22BE42758();
      sub_22C1CEB4C(v185, v116, v117);
      v56 = v195;
      v58 = v191;
      v10 = 0;
      v11 = v192;
      v12 = v199;
      if (v191 != v195)
      {
        continue;
      }

LABEL_26:
      v212 = (v39 + 16);
      v214 = (v39 + 8);
LABEL_27:
      v121 = *(v11 + 16);
      if (v56 == v121)
      {

LABEL_54:
        sub_22BE29F1C();
        sub_22BE18478();
        return;
      }

      if (v56 >= v121)
      {
        goto LABEL_63;
      }

      sub_22C1CEC30();
      sub_22C1CEEFC();
      sub_22C1CEAA4(v122, v189, v123);
      sub_22C1CF288();
      sub_22C1CEAA4(v124, v125, v126);
      sub_22BE32C24();
      v210 = *v212;
      (*v212)(v12, &v198[*(v127 + 20)], v37);
      v128 = v10;
      sub_22C272854();
      if (!v10)
      {
        v196 = v56 + 1;
        v206 = *v214;
        v129 = sub_22BE36318();
        v130(v129);
        v131 = sub_22BE336E8();
        v132 = v228;
        v220 = v133;
        (v133)(v131);
        sub_22BE187DC();
        sub_22BE19DC4(v134, v135, v136, v228);
        v137 = *v198;

        v138 = sub_22C272E84();
        sub_22C1CEE84();
        v140 = v139 >> 6;
        v218 = v137;

        v141 = 0;
        v203 = v140;
        if (!v228)
        {
          goto LABEL_32;
        }

        while (1)
        {
          v142 = v39;
          v227 = v138;
LABEL_36:
          v144 = __clz(__rbit64(v132)) | (v141 << 6);
          v145 = *(v218 + 48);
          v146 = sub_22C26E684();
          sub_22BE179D8();
          v148 = v147;
          (*(v149 + 16))(v209, v145 + *(v149 + 72) * v144, v146);
          v210(v209 + *(v216 + 48), (*(v218 + 56) + *(v142 + 72) * v144), v229);
          sub_22BE3BB64(v209, v215, &qword_27D909040, &qword_22C2CC990);
          v150 = *(v216 + 48);
          v222 = sub_22C26E674();
          v224 = *(v148 + 8);
          v224(v215, v146);
          v206(v215 + v150, v229);
          sub_22BE3BB64(v209, v197, &qword_27D909040, &qword_22C2CC990);
          v151 = *(v216 + 48);
          sub_22BE204A4();
          sub_22C272854();
          v206(v197 + v151, v229);
          sub_22BE1B18C();
          sub_22C1CF028();
          v220();
          v224(v197, v146);
          sub_22BE33554();
          v152(v208, v207, v197 + v151);
          swift_isUniquelyReferenced_nonNull_native();
          sub_22BE60364(v222);
          sub_22C1CF0B4();
          if (__OFADD__(v155, v156))
          {
            break;
          }

          v157 = v153;
          v158 = v154;
          sub_22BE5CE4C(&qword_27D915598, &qword_22C2CC610);
          if (sub_22C273C44())
          {
            v159 = sub_22BE60364(v222);
            v12 = v199;
            if ((v158 & 1) != (v160 & 1))
            {
              goto LABEL_64;
            }

            v157 = v159;
          }

          else
          {
            v12 = v199;
          }

          v138 = v227;
          if (v158)
          {
            sub_22C1CF2B8();
            sub_22C1CF028();
            v161();
            v162 = sub_22C1CF19C();
            v163(v162);
            sub_22BE233E8(v209, &qword_27D909040, &qword_22C2CC990);
          }

          else
          {
            sub_22BE45B78(v227 + 8 * (v157 >> 6));
            *(*(v227 + 48) + 4 * v157) = v222;
            sub_22C1CF2B8();
            sub_22C1CF028();
            v220();
            v164 = sub_22C1CF19C();
            v165(v164);
            sub_22BE233E8(v209, &qword_27D909040, &qword_22C2CC990);
            v166 = *(v227 + 16);
            v107 = __OFADD__(v166, 1);
            v167 = v166 + 1;
            if (v107)
            {
              goto LABEL_60;
            }

            *(v227 + 16) = v167;
          }

          v132 &= v132 - 1;
          v39 = v213;
          v128 = 0;
          v140 = v203;
          if (!v132)
          {
LABEL_32:
            while (1)
            {
              v143 = v141 + 1;
              if (__OFADD__(v141, 1))
              {
                goto LABEL_56;
              }

              if (v143 >= v140)
              {

                v168 = v190;
                v169 = *(v190 + 20);
                sub_22BE1A140();
                sub_22BE3A034(v170, v171, v172, v228);
                _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
                sub_22BE1A420();
                sub_22C1CEAFC();
                sub_22BE36404();
                sub_22BE23490(v188, v184 + v169, &qword_27D909128, &qword_22C294AA0);
                *v184 = v138;
                sub_22C1CF000();
                if (v115)
                {
                  v176 = sub_22BE19808(v173);
                  sub_22BE7090C(v176, v177, v178);
                  v168 = a10;
                }

                *(v168 + 16) = v138;
                sub_22BE197A0();
                sub_22BE42758();
                sub_22C1CEB4C(v184, v174, v175);
                v10 = 0;
                v37 = v229;
                v11 = v192;
                v56 = v196;
                goto LABEL_27;
              }

              v132 = *(v128 + 8 * v143);
              ++v141;
              if (v132)
              {
                v142 = v39;
                v227 = v138;
                v141 = v143;
                goto LABEL_36;
              }
            }
          }
        }

LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v181 = sub_22BE36318();
      v182(v181);
      sub_22BE1A420();
      sub_22C1CEAFC();
LABEL_53:
      sub_22BE36404();

      goto LABEL_54;
    }

    break;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_22C2740B4();
  __break(1u);
}

void sub_22C1C36F4()
{
  v4 = sub_22BE48298();
  type metadata accessor for TranscriptProtoSpeechPackage.Token(v4);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v5);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v6);
  sub_22BE39EE8();
  v82 = sub_22C26EB64();
  sub_22BE179D8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v10);
  sub_22BE41674();
  MEMORY[0x28223BE20](v11);
  sub_22C1CEC74(v12, v13, v14, v15, v16, v17, v18, v19, v73);
  v20 = *(v1 + 16);
  v84 = MEMORY[0x277D84F90];
  sub_22C1CF078();
  sub_22BE70964(v21, v22, v23);
  v24 = v84;
  v81 = v8;
  if (!v20)
  {
    goto LABEL_7;
  }

  v25 = 0;
  sub_22BE19E14();
  v74 = v1 + v26;
  v75 = v27;
  v83 = v20;
  while (v75 != v25)
  {
    v79 = v24;
    v28 = v8[2];
    v29 = v8;
    v28(v80, v74 + v8[9] * v25, v82);
    v28(v0, v80, v82);
    v30 = sub_22C26EB34();
    v77 = v31;
    v78 = v30;
    v32 = sub_22C26EB04();
    sub_22C26EB54();
    v34 = v33;
    sub_22C26EB14();
    v36 = v35;
    sub_22C26EB44();
    v38 = v37;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v39 = v29[1];
    v40 = sub_22BE3CC34();
    v39(v40);
    v41 = sub_22BE2684C();
    v39(v41);
    v24 = v79;
    *v2 = v78;
    v2[1] = v77;
    v2[2] = v32;
    v2[3] = v34;
    v2[4] = v36;
    v2[5] = v38;
    v43 = *(v79 + 16);
    v42 = *(v79 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_22BE1AAE4(v42);
      sub_22BE39E18();
      sub_22BE70964(v46, v47, v48);
      v24 = v79;
    }

    ++v25;
    *(v24 + 16) = v43 + 1;
    sub_22BE197A0();
    sub_22BE39368();
    sub_22C1CEB4C(v2, v44, v45);
    v20 = v83;
    v8 = v81;
    if (v83 == v25)
    {
      while (1)
      {
LABEL_7:
        sub_22BE47E0C();
        if (v50)
        {

          return;
        }

        if (v49)
        {
          break;
        }

        sub_22BE3766C();
        v53 = v81[2];
        v53(v76, v51 + v52 + v81[9] * v20, v82);
        v54 = sub_22BE1B73C();
        (v53)(v54);
        v55 = sub_22C26EB34();
        v57 = v56;
        v58 = sub_22C26EB04();
        sub_22C26EB54();
        v60 = v59;
        sub_22C26EB14();
        v62 = v61;
        sub_22C26EB44();
        v64 = v63;
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        v65 = v81[1];
        v65(v80, v82);
        v65(v76, v82);
        *v3 = v55;
        v3[1] = v57;
        v3[2] = v58;
        v3[3] = v60;
        v3[4] = v62;
        v3[5] = v64;
        v67 = *(v24 + 16);
        v66 = *(v24 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_22BE1AAE4(v66);
          sub_22BE31778();
          sub_22BE70964(v70, v71, v72);
        }

        *(v24 + 16) = v67 + 1;
        sub_22BE197A0();
        sub_22BE39368();
        sub_22C1CEB4C(v3, v68, v69);
        ++v20;
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
}

void sub_22C1C3B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v14);
  sub_22C1CEC74(v15, v16, v17, v18, v19, v20, v21, v22, v57);
  sub_22C26EAF4();
  sub_22BE179D8();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v26);
  sub_22C1CECB0();
  MEMORY[0x28223BE20](v27);
  sub_22BE19E94();
  sub_22BE38A28(v28);
  v29 = *(v12 + 16);
  v30 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE709BC(v30, v29, 0);
  v31 = a10;
  v62 = v12;
  if (v29)
  {
    v32 = 0;
    v59 = v29;
    v60 = *(v12 + 16);
    sub_22BE3766C();
    sub_22BE487F0();
    while (v60 != v32)
    {
      v33 = sub_22C1CF034();
      v10(v33);
      v34 = sub_22C1CF25C();
      v10(v34);
      v10 = v29;
      sub_22C26EAE4();
      sub_22C1C36F4();
      sub_22BE34048();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v35 = sub_22C1CF248();
      (v12)(v35);
      v36 = sub_22BE37B20();
      (v12)(v36);
      sub_22BE391B4();
      if (v38)
      {
        v42 = sub_22BE1A028(v37);
        sub_22BE709BC(v42, v43, v44);
        v31 = a10;
      }

      ++v32;
      *(v31 + 16) = v61;
      sub_22BE25AD8();
      sub_22BE46DDC();
      sub_22BE32EC8();
      sub_22C1CEB4C(v39, v40, v41);
      v29 = v59;
      if (v59 == v32)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    sub_22BE487F0();
    while (1)
    {
      v45 = *(v62 + 16);
      if (v29 == v45)
      {

        sub_22BE18478();
        return;
      }

      if (v29 >= v45)
      {
        break;
      }

      sub_22BE3766C();
      v46 = sub_22BE3CFD4();
      v10(v46);
      v47 = sub_22BE2684C();
      v10(v47);
      v10 = v63;
      sub_22C26EAE4();
      sub_22C1C36F4();
      sub_22BE34048();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v48 = *(v24 + 8);
      v49 = sub_22BE37B20();
      v48(v49);
      v50 = sub_22BE36658();
      v48(v50);
      sub_22C1CF154();
      if (v38)
      {
        v54 = sub_22BE19808(v51);
        sub_22BE709BC(v54, v55, v56);
        v31 = a10;
      }

      *(v31 + 16) = v48;
      sub_22BE25AD8();
      sub_22BE32EC8();
      sub_22C1CEB4C(v58, v52, v53);
      ++v29;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C1C3E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v14);
  sub_22C1CEC74(v15, v16, v17, v18, v19, v20, v21, v22, v75);
  sub_22C26EB94();
  sub_22BE179D8();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v26);
  sub_22C1CECB0();
  MEMORY[0x28223BE20](v27);
  sub_22BE19E94();
  sub_22BE38A28(v28);
  v29 = *(v12 + 16);
  v30 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE70A14(v30, v29, 0);
  v31 = a10;
  v81 = v12;
  if (v29)
  {
    v32 = 0;
    v78 = v29;
    v79 = *(v12 + 16);
    sub_22BE3766C();
    sub_22BE487F0();
    v77 = v33;
    while (v79 != v32)
    {
      v34 = sub_22C1CF034();
      v10(v34);
      v35 = sub_22C1CF25C();
      v10(v35);
      v10 = v29;
      v36 = sub_22C26EAE4();
      sub_22C1C3B30(v36, v37, v38, v39, v40, v41, v42, v43, v76, v77);
      sub_22BE34048();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v44 = sub_22C1CF248();
      (v12)(v44);
      v45 = sub_22BE37B20();
      (v12)(v45);
      sub_22BE391B4();
      if (v47)
      {
        v51 = sub_22BE1A028(v46);
        sub_22BE70A14(v51, v52, v53);
        v31 = a10;
      }

      ++v32;
      *(v31 + 16) = v80;
      sub_22BE25AD8();
      sub_22BE46DDC();
      sub_22C1CEE6C();
      sub_22C1CEB4C(v48, v49, v50);
      v29 = v78;
      if (v78 == v32)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    sub_22BE487F0();
    v54 = v76;
    while (1)
    {
      v55 = *(v81 + 16);
      if (v29 == v55)
      {

        sub_22BE18478();
        return;
      }

      if (v29 >= v55)
      {
        break;
      }

      sub_22BE3766C();
      v56 = sub_22BE3CFD4();
      v10(v56);
      v57 = sub_22BE2684C();
      v10(v57);
      v10 = v82;
      v58 = sub_22C26EAE4();
      sub_22C1C3B30(v58, v59, v60, v61, v62, v63, v64, v65, v76, v77);
      sub_22BE34048();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v66 = *(v24 + 8);
      v67 = sub_22BE37B20();
      v66(v67);
      v68 = sub_22BE36658();
      v66(v68);
      sub_22C1CF154();
      if (v47)
      {
        v72 = sub_22BE19808(v69);
        sub_22BE70A14(v72, v73, v74);
        v31 = a10;
      }

      *(v31 + 16) = v66;
      sub_22BE25AD8();
      sub_22C1CEE6C();
      sub_22C1CEB4C(v54, v70, v71);
      ++v29;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C1C4190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v14 = sub_22BE25D84();
  v15 = type metadata accessor for ContextProtoEntityMatch(v14);
  v16 = sub_22BE17A18(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BE193B0(v17, v70);
  MEMORY[0x28223BE20](v18);
  sub_22BE22D7C(v19, v20, v21, v22, v23, v24, v25, v26, v71);
  sub_22C270AF4();
  sub_22BE179D8();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v30);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v31);
  sub_22BE23730(v32, v33, v34, v35, v36, v37, v38, v39, v72);
  MEMORY[0x28223BE20](v40);
  sub_22BE26800();
  v41 = *(v13 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE2C294();
  sub_22BE70A6C(v42, v43, v44);
  sub_22BE3E47C();
  if (v41)
  {
    sub_22BE1C3D4();
    while (1)
    {
      sub_22C1CF13C();
      if (v45)
      {
        break;
      }

      sub_22BE39418();
      if (v56)
      {
        goto LABEL_22;
      }

      v46 = sub_22BE25BB8();
      v28(v46);
      v47 = sub_22C1CEC40();
      v28(v47);
      sub_22BE23360();
      ContextProtoEntityMatch.init(handwritten:)();
      if (v11)
      {
LABEL_17:

        v68 = sub_22BE203E8();
        v69(v68);

LABEL_19:
        sub_22C1CED0C();
        sub_22BE18478();
        return;
      }

      v48 = sub_22BE2902C();
      v49(v48);
      sub_22BE1B698();
      if (v56)
      {
        sub_22BE3D1E4(v50);
        sub_22C1CF178();
        sub_22BE70A6C(v53, v54, v55);
        v10 = a10;
      }

      v12 = (v12 + 1);
      *(v10 + 16) = v13;
      sub_22BE197A0();
      sub_22BE41538();
      sub_22C1CEB4C(v74, v51, v52);
      sub_22BE323D0();
      v28 = v73;
      if (v45)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    sub_22BE40C98();
    while (1)
    {
      sub_22BE447AC();
      if (v45)
      {

        goto LABEL_19;
      }

      if (v56)
      {
        break;
      }

      v57 = sub_22BE1A084();
      v12(v57);
      v58 = sub_22C1CEC40();
      v12(v58);
      sub_22C1CF124();
      ContextProtoEntityMatch.init(handwritten:)();
      if (v11)
      {
        goto LABEL_17;
      }

      v59 = sub_22BE203E8();
      v60(v59);
      sub_22C1CEC50();
      if (v56)
      {
        v65 = sub_22BE19808(v61);
        sub_22BE70A6C(v65, v66, v67);
        v10 = a10;
      }

      *(v10 + 16) = v12;
      sub_22BE197A0();
      sub_22BE41538();
      sub_22C1CEB4C(v62, v63, v64);
      sub_22BE27AB8();
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_22C1C4458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE38A98();
  v14 = type metadata accessor for TranscriptProtoShimParameter(0);
  v15 = sub_22BE17A18(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE193B0(v16, v71);
  MEMORY[0x28223BE20](v17);
  sub_22BE19E94();
  v77 = v18;
  v19 = sub_22BE183BC();
  v20 = type metadata accessor for ClientAction.ShimParameter(v19);
  v21 = sub_22BE17A18(v20);
  v23 = v22;
  MEMORY[0x28223BE20](v21);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v24);
  sub_22BE23858();
  MEMORY[0x28223BE20](v25);
  sub_22BE23730(v26, v27, v28, v29, v30, v31, v32, v33, v72);
  MEMORY[0x28223BE20](v34);
  sub_22BE3E3EC(v35, v36, v37, v38, v39, v40, v41, v42, v73);
  v43 = *(v12 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22C1CF078();
  sub_22BE70B74(v44, v45, v46);
  sub_22BE35CC8();
  if (!v43)
  {
    goto LABEL_9;
  }

  v47 = 0;
  sub_22C1CEC30();
  v74 = v48;
  while (1)
  {
    if (v74 == v47)
    {
      goto LABEL_19;
    }

    sub_22BE27A88();
    if (v59)
    {
      goto LABEL_20;
    }

    sub_22BE36598();
    sub_22C1CEE54();
    sub_22C1CEAA4(v49, v13, v50);
    v51 = sub_22BE289D8();
    sub_22C1CEAA4(v51, v52, v23);
    sub_22BE351D8();
    TranscriptProtoShimParameter.init(handwritten:)();
    if (v11)
    {
      break;
    }

    sub_22BE287E4();
    sub_22C1CEAFC();
    sub_22BE182F0();
    if (v59)
    {
      v56 = sub_22BE1A028(v53);
      sub_22BE70B74(v56, v57, v58);
      v10 = a10;
    }

    ++v47;
    *(v10 + 16) = v23;
    sub_22BE2C704();
    sub_22BE38570();
    sub_22C1CEB4C(v76, v54, v55);
    if (v43 == v47)
    {
      while (1)
      {
LABEL_9:
        sub_22BE47E0C();
        if (v60)
        {

          goto LABEL_17;
        }

        if (v59)
        {
          break;
        }

        sub_22BE3766C();
        sub_22C1CEF8C(v61, v62);
        sub_22C1CEE54();
        sub_22C1CEAA4(v63, v75, v64);
        sub_22C1CEFE0();
        sub_22BE3E778();
        TranscriptProtoShimParameter.init(handwritten:)();
        if (v11)
        {
          goto LABEL_16;
        }

        sub_22BE287E4();
        sub_22C1CEAFC();
        sub_22BE182F0();
        if (v59)
        {
          v68 = sub_22BE1A028(v65);
          sub_22BE70B74(v68, v69, v70);
          v10 = a10;
        }

        *(v10 + 16) = v23;
        sub_22BE2C704();
        sub_22BE38570();
        sub_22C1CEB4C(v77, v66, v67);
        sub_22BE3C654();
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }
  }

LABEL_16:

  sub_22BE287E4();
  sub_22C1CEAFC();

LABEL_17:
  sub_22BE29F1C();
  sub_22BE18478();
}

void sub_22C1C4730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE48298();
  v176 = sub_22C270F24();
  sub_22BE179D8();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22BE17B98();
  sub_22BE4201C();
  MEMORY[0x28223BE20](v18);
  sub_22BE19E94();
  sub_22BEC07BC(v19);
  v20 = sub_22BE5CE4C(&qword_27D9091A8, &qword_22C27FDA0);
  v21 = sub_22BE19448(v20);
  MEMORY[0x28223BE20](v21);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v22);
  sub_22BE2BC40(v23, v24, v25, v26, v27, v28, v29, v30, v152);
  v175 = sub_22C26E684();
  sub_22BE179D8();
  v171 = v31;
  MEMORY[0x28223BE20](v32);
  sub_22BE17A44();
  sub_22BEC03A4(v33);
  v34 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v35 = sub_22BE19448(v34);
  MEMORY[0x28223BE20](v35);
  sub_22BE17B98();
  v165 = v36;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v37);
  sub_22C1CEC08(v38, v39, v40, v41, v42, v43, v44, v45, v153);
  type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v46);
  sub_22BE17B98();
  v164 = v47;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v48);
  sub_22BE19E94();
  v166 = v49;
  v50 = sub_22BE183BC();
  type metadata accessor for RetrievedContextStatement(v50);
  sub_22BE179D8();
  v52 = v51;
  MEMORY[0x28223BE20](v53);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v54);
  sub_22BE19490();
  v56 = v55;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v57);
  sub_22C1CEC1C();
  MEMORY[0x28223BE20](v58);
  sub_22BE1C17C();
  v59 = *(v12 + 16);
  v60 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE70BCC(v60, v59, 0);
  v61 = a10;
  v177 = v12;
  v173 = v52;
  if (!v59)
  {
    v63 = v11;
    goto LABEL_11;
  }

  v161 = v10;
  sub_22BE19E14();
  sub_22BE41EA0(v12 + v62);
  sub_22BE417A8(*(v12 + 16));
  v159 = v171 + 16;
  sub_22C1CEFD4(v171 + 8);
  sub_22BE271B0(v16 + 16);
  v63 = v11;
  v179 = v59;
  v156 = v16;
  v155 = v13;
  v162 = v56;
  while (1)
  {
    sub_22C1CF2AC();
    if (v65 == v64)
    {
      goto LABEL_23;
    }

    if (v64 >= *(v12 + 16))
    {
      goto LABEL_24;
    }

    v172 = v64;
    sub_22BE3CB90();
    sub_22BE23F2C();
    sub_22C1CEAA4(v66, v56, v67);
    sub_22C1CEAA4(v56, v161, v61);
    sub_22BE33554();
    v68 = sub_22BE261AC();
    v69(v68);
    v70 = sub_22C26E674();
    v71 = sub_22C26E654();
    v181 = v63;
    v73 = v72;
    v74 = type metadata accessor for TranscriptProtoStatementID(0);
    v75 = v165;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE33554();
    v76(v174, v175);
    *v165 = v70;
    *(v165 + 8) = v71;
    *(v165 + 16) = v73;
    sub_22BE187DC();
    sub_22BE19DC4(v77, v78, v79, v74);
    sub_22BE46818();
    v81(v167, v161 + v80, v176);
    ContextProtoRetrievedContext.init(context:)(v167, v82, v83, v84, v85, v86, v87, v88, v154, v155, SWORD2(v155), SBYTE6(v155), SHIBYTE(v155), v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
    v63 = v181;
    if (v181)
    {
      break;
    }

    v89 = type metadata accessor for ContextProtoRetrievedContext(0);
    v90 = sub_22BE360A0();
    sub_22BE19DC4(v90, v91, v92, v89);
    sub_22BE28D2C();
    sub_22BE19DC4(v93, v94, v95, v96);
    sub_22BE43214();
    sub_22BE1A140();
    sub_22BE3A034(v97, v98, v99, v89);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE1813C();
    sub_22C1CEAFC();
    v56 = v162;
    sub_22C1CEAFC();
    v100 = sub_22BE36658();
    sub_22BE23490(v100, v101, &qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE23490(v14, v164 + v70, &qword_27D9091A8, &qword_22C27FDA0);
    sub_22BE182F0();
    if (v103)
    {
      v106 = sub_22BE1A028(v102);
      sub_22BE70BCC(v106, v107, v108);
      v61 = a10;
    }

    *(v61 + 16) = v70;
    sub_22BE197A0();
    sub_22C1CEE24();
    sub_22C1CEB4C(v164, v104, v105);
    v59 = v179;
    v12 = v177;
    v52 = v173;
    v13 = v155;
    v16 = v156;
    if (v179 == v172 + 1)
    {
      while (1)
      {
LABEL_11:
        v109 = *(v12 + 16);
        if (v59 == v109)
        {

          goto LABEL_21;
        }

        if (v59 >= v109)
        {
          break;
        }

        v180 = v59;
        sub_22BE19E14();
        sub_22BE23F2C();
        sub_22C1CEAA4(v110, v13, v111);
        v112 = sub_22BE2BA80();
        sub_22C1CEAA4(v112, v113, v61);
        v114 = sub_22BE261AC();
        v115(v114);
        v116 = sub_22C26E674();
        v117 = sub_22C26E654();
        sub_22C1CF35C();
        sub_22C1CF2CC();
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        v118 = sub_22BE2BD4C();
        v119 = v178;
        v120(v118, v175);
        *v178 = v116;
        *(v178 + 8) = v117;
        *(v178 + 16) = v16;
        v16 = v169;
        v121 = sub_22BE360A0();
        sub_22BE19DC4(v121, v122, v123, v52);
        sub_22C1CF1F4();
        v125(v170, v168 + v124, v176);
        ContextProtoRetrievedContext.init(context:)(v170, v126, v127, v128, v129, v130, v131, v132, v154, v155, SWORD2(v155), SBYTE6(v155), SHIBYTE(v155), v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
        if (v63)
        {
          goto LABEL_20;
        }

        v133 = type metadata accessor for ContextProtoRetrievedContext(0);
        sub_22BE187DC();
        sub_22BE19DC4(v134, v135, v136, v133);
        sub_22BE1A140();
        sub_22BE19DC4(v137, v138, v139, v52);
        sub_22BE43214();
        sub_22BE1A140();
        sub_22BE3A034(v140, v141, v142, v133);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        sub_22BE1813C();
        sub_22C1CEAFC();
        sub_22BE2565C();
        sub_22C1CEAFC();
        v143 = sub_22BE3C968();
        sub_22BE23490(v143, v144, &qword_27D9090F8, &unk_22C2AE4A0);
        sub_22BE23490(v169, v166 + v117, &qword_27D9091A8, &qword_22C27FDA0);
        v146 = *(v61 + 16);
        v145 = *(v61 + 24);
        if (v146 >= v145 >> 1)
        {
          sub_22BE3D1E4(v145);
          sub_22BE39E18();
          sub_22BE70BCC(v149, v150, v151);
        }

        *(v61 + 16) = v146 + 1;
        sub_22BE197A0();
        sub_22C1CEE24();
        sub_22C1CEB4C(v166, v147, v148);
        v59 = v180 + 1;
        v12 = v177;
        v52 = v173;
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }
  }

  v119 = v75;
LABEL_20:

  sub_22BE1813C();
  sub_22C1CEAFC();
  sub_22BE2565C();
  sub_22C1CEAFC();
  sub_22BE233E8(v119, &qword_27D9090F8, &unk_22C2AE4A0);

LABEL_21:
  sub_22BE18478();
}

uint64_t sub_22C1C4F4C(uint64_t a1)
{
  v2 = sub_22C271944();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v46 - v6;
  MEMORY[0x28223BE20](v7);
  v58 = &v46 - v8;
  MEMORY[0x28223BE20](v9);
  v57 = &v46 - v10;
  MEMORY[0x28223BE20](v11);
  v63 = &v46 - v12;
  MEMORY[0x28223BE20](v13);
  v64 = &v46 - v14;
  v15 = *(a1 + 16);
  v66 = MEMORY[0x277D84F90];
  result = sub_22BE70C7C(0, v15, 0);
  v17 = v66;
  v61 = *MEMORY[0x277D1F170];
  v56 = *MEMORY[0x277D1F188];
  v50 = *MEMORY[0x277D1F180];
  v49 = *MEMORY[0x277D1F198];
  v48 = *MEMORY[0x277D1F178];
  v47 = *MEMORY[0x277D1F1A0];
  v60 = a1;
  if (v15)
  {
    v18 = 0;
    v19 = *(a1 + 16);
    v53 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v54 = v19;
    v51 = v3 + 88;
    v52 = v3 + 16;
    v62 = (v3 + 8);
    v65 = v15;
    while (v54 != v18)
    {
      if (v18 >= *(a1 + 16))
      {
        goto LABEL_45;
      }

      v20 = *(v3 + 16);
      v21 = v58;
      v20(v58, v53 + *(v3 + 72) * v18, v2);
      v22 = v59;
      v20(v59, v21, v2);
      v23 = v55;
      v20(v55, v22, v2);
      v24 = (*(v3 + 88))(v23, v2);
      if (v24 == v61)
      {
        v25 = 0;
      }

      else if (v24 == v56)
      {
        v25 = 1;
      }

      else if (v24 == v50)
      {
        v25 = 2;
      }

      else if (v24 == v49)
      {
        v25 = 3;
      }

      else if (v24 == v48)
      {
        v25 = 4;
      }

      else
      {
        if (v24 != v47)
        {
          v43 = v59;
          v64 = v58;
          v42 = v55;
LABEL_42:

          sub_22C108358();
          swift_allocError();
          *v44 = 0;
          swift_willThrow();
          v45 = *v62;
          (*v62)(v43, v2);
          v45(v64, v2);
          v45(v42, v2);

          return v17;
        }

        v25 = 5;
      }

      v26 = *v62;
      (*v62)(v59, v2);
      result = (v26)(v58, v2);
      v66 = v17;
      v28 = *(v17 + 16);
      v27 = *(v17 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_22BE70C7C(v27 > 1, v28 + 1, 1);
        v17 = v66;
      }

      ++v18;
      *(v17 + 16) = v28 + 1;
      *(v17 + v28 + 32) = v25;
      v15 = v65;
      a1 = v60;
      if (v65 == v18)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    v59 = (v3 + 88);
    v62 = (v3 + 8);
    v29 = v63;
    while (1)
    {
      v30 = *(a1 + 16);
      if (v15 == v30)
      {

        return v17;
      }

      if (v15 >= v30)
      {
        break;
      }

      v31 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v32 = *(v3 + 72);
      v65 = v15;
      v33 = v31 + v32 * v15;
      v34 = *(v3 + 16);
      v35 = v64;
      v34(v64, v33, v2);
      v34(v29, v35, v2);
      v36 = v57;
      v34(v57, v29, v2);
      v37 = (*(v3 + 88))(v36, v2);
      if (v37 == v61)
      {
        v38 = 0;
      }

      else if (v37 == v56)
      {
        v38 = 1;
      }

      else if (v37 == v50)
      {
        v38 = 2;
      }

      else if (v37 == v49)
      {
        v38 = 3;
      }

      else if (v37 == v48)
      {
        v38 = 4;
      }

      else
      {
        if (v37 != v47)
        {
          v42 = v57;
          v43 = v63;
          goto LABEL_42;
        }

        v38 = 5;
      }

      v39 = *v62;
      (*v62)(v63, v2);
      result = (v39)(v64, v2);
      v66 = v17;
      v41 = *(v17 + 16);
      v40 = *(v17 + 24);
      if (v41 >= v40 >> 1)
      {
        result = sub_22BE70C7C(v40 > 1, v41 + 1, 1);
        v17 = v66;
      }

      *(v17 + 16) = v41 + 1;
      *(v17 + v41 + 32) = v38;
      v15 = v65 + 1;
      a1 = v60;
    }

    __break(1u);
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void sub_22C1C557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v206 = v11;
  v14 = v13;
  v15 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v16 = sub_22BE19448(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BE17B98();
  v189 = v17;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v18);
  sub_22BE19E94();
  sub_22BE190A8(v19);
  v20 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v21 = sub_22BE19448(v20);
  MEMORY[0x28223BE20](v21);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v22);
  sub_22BE19E94();
  v190 = v23;
  sub_22BE183BC();
  v205 = sub_22C270FD4();
  sub_22BE179D8();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v27);
  sub_22BE19E94();
  sub_22BE190A8(v28);
  v29 = sub_22BE5CE4C(&qword_27D909138, &qword_22C2B5A80);
  v30 = sub_22BE19448(v29);
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v31);
  sub_22BE19E94();
  sub_22BE18950(v32);
  v198 = sub_22C26E684();
  sub_22BE179D8();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  sub_22BE17A44();
  v197 = v36;
  v37 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v38 = sub_22BE19448(v37);
  MEMORY[0x28223BE20](v38);
  sub_22BE17B98();
  v202 = v39;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v40);
  sub_22BE1C17C();
  type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
  sub_22BE179D8();
  v191 = v41;
  MEMORY[0x28223BE20](v41);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v42);
  sub_22BE19E94();
  v44 = sub_22BE18950(v43);
  v196 = type metadata accessor for SpanMatchedEntityStatement(v44);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v45);
  sub_22BE17B98();
  sub_22BE3BF80();
  MEMORY[0x28223BE20](v46);
  sub_22BE409D8();
  MEMORY[0x28223BE20](v47);
  sub_22BE19490();
  v193 = v48;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v49);
  sub_22BE2BC40(v50, v51, v52, v53, v54, v55, v56, v57, v176);
  v58 = *(v14 + 16);
  v59 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE70CF4(v59, v58, 0);
  v199 = v14;
  v195 = v12;
  if (!v58)
  {
    goto LABEL_9;
  }

  v60 = 0;
  sub_22BE3766C();
  sub_22BE41EA0(v14 + v61);
  sub_22C1CEFB0(*(v14 + 16));
  sub_22C1CEFD4(v34 + 8);
  sub_22BE271B0(v25 + 16);
  v203 = v58;
  v184 = v25;
  do
  {
    sub_22BE3974C();
    if (v62 == v60)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    if (v60 >= *(v14 + 16))
    {
      goto LABEL_21;
    }

    v194 = v60;
    sub_22BE3CB90();
    sub_22BE36D0C();
    sub_22C1CEAA4(v63, v200, v64);
    sub_22C1CEAA4(v200, v201, v60);
    sub_22BE33554();
    sub_22BE25300();
    v65();
    v66 = sub_22C26E674();
    v67 = sub_22C26E654();
    sub_22C1CF35C();
    sub_22C1CF2CC();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE33554();
    v68 = sub_22BE336E8();
    v69(v68);
    *v202 = v66;
    *(v202 + 8) = v67;
    *(v202 + 16) = v14;
    sub_22BE187DC();
    sub_22BE19DC4(v70, v71, v72, v25);
    sub_22BE46818();
    v74(v187, v201 + v73, v205);
    sub_22C270FB4();
    sub_22C105684(v189, v75, v76, v77, v78, v79, v80, v81, v177, v180);
    if (v206)
    {

      v12 = v202;
      goto LABEL_18;
    }

    v82 = sub_22C270FC4();
    sub_22C1C4190(v82, v83, v84, v85, v86, v87, v88, v89, v178, v181);
    v206 = 0;
    v90 = sub_22BE17BC4();
    type metadata accessor for ContextProtoSpanMatchedEntity(v90);
    sub_22C1CF0A4();
    sub_22C272594();
    sub_22BE1A140();
    sub_22BE19DC4(v91, v92, v93, v94);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v95 = sub_22BE2BD4C();
    v96(v95, v205);
    sub_22BE23490(v188, v186 + v66, &qword_27D909128, &qword_22C294AA0);
    *v186 = v202;
    sub_22BE187DC();
    sub_22BE19DC4(v97, v98, v99, v14);
    sub_22BE1A140();
    sub_22BE19DC4(v100, v101, v102, v25);
    v103 = *(v191 + 20);
    sub_22BE28D2C();
    sub_22BE3A034(v104, v105, v106, v107);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE272F4();
    sub_22C1CEAFC();
    sub_22C1CEAFC();
    sub_22BE23490(v202, v10, &qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE23490(v186, v10 + v103, &qword_27D909138, &qword_22C2B5A80);
    v109 = *(a10 + 16);
    v108 = *(a10 + 24);
    if (v109 >= v108 >> 1)
    {
      v112 = sub_22BE19808(v108);
      sub_22BE70CF4(v112, v113, v114);
    }

    v60 = (v60 + 1);
    *(a10 + 16) = v109 + 1;
    sub_22BE25AD8();
    sub_22BE3CBF8();
    sub_22C1CEB4C(v10, v110, v111);
    v58 = v203;
    v14 = v199;
    v12 = v195;
    v25 = v184;
  }

  while (v203 != (v194 + 1));
  while (1)
  {
LABEL_9:
    v115 = *(v14 + 16);
    if (v58 == v115)
    {

      goto LABEL_19;
    }

    if (v58 >= v115)
    {
      goto LABEL_22;
    }

    sub_22BE3766C();
    v204 = v58;
    sub_22BE36D0C();
    sub_22C1CEAA4(v116, v192, v117);
    sub_22BE354D0();
    sub_22C1CEAA4(v118, v119, v120);
    v121 = sub_22BE200D4();
    v122(v121);
    v123 = sub_22C26E674();
    v124 = sub_22C26E654();
    v126 = v125;
    v127 = type metadata accessor for TranscriptProtoStatementID(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v34 + 8))(v197, v198);
    *v12 = v123;
    *(v12 + 8) = v124;
    *(v12 + 16) = v126;
    sub_22BE187DC();
    sub_22BE19DC4(v128, v129, v130, v127);
    (*(v25 + 16))(v185, v193 + *(v196 + 20), v205);
    sub_22BE204A4();
    sub_22C270FB4();
    sub_22C105684(v123, v131, v132, v133, v134, v135, v136, v137, v177, v180);
    if (v206)
    {
      break;
    }

    v138 = sub_22C270FC4();
    sub_22C1C4190(v138, v139, v140, v141, v142, v143, v144, v145, v179, v182);
    v206 = 0;
    v147 = v146;
    v148 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
    v149 = *(v148 + 20);
    sub_22C272594();
    sub_22BE1A140();
    sub_22BE19DC4(v150, v151, v152, v153);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v154 = sub_22BE2BD4C();
    v155(v154, v205);
    sub_22BE23490(v190, v183 + v149, &qword_27D909128, &qword_22C294AA0);
    *v183 = v147;
    sub_22BE187DC();
    sub_22BE19DC4(v156, v157, v158, v148);
    sub_22BE1A140();
    sub_22BE19DC4(v159, v160, v161, v127);
    v162 = *(v191 + 20);
    sub_22BE28D2C();
    sub_22BE3A034(v163, v164, v165, v166);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE272F4();
    sub_22C1CEAFC();
    sub_22C1CEAFC();
    v12 = v195;
    sub_22BE23490(v195, v180, &qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE23490(v183, v180 + v162, &qword_27D909138, &qword_22C2B5A80);
    v168 = *(a10 + 16);
    v167 = *(a10 + 24);
    if (v168 >= v167 >> 1)
    {
      v171 = sub_22BE1A028(v167);
      sub_22BE70CF4(v171, v172, v173);
    }

    *(a10 + 16) = v168 + 1;
    sub_22BE25AD8();
    sub_22BE3CBF8();
    sub_22C1CEB4C(v180, v169, v170);
    v58 = v204 + 1;
    v14 = v199;
  }

LABEL_18:
  v174 = sub_22BE2BD4C();
  v175(v174, v205);
  sub_22BE272F4();
  sub_22C1CEAFC();
  sub_22BE35838();
  sub_22C1CEAFC();
  sub_22BE233E8(v12, &qword_27D9090F8, &unk_22C2AE4A0);

LABEL_19:
  sub_22BE18478();
}

void sub_22C1C5FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE38A98();
  v14 = type metadata accessor for TranscriptProtoStatementResult(0);
  v15 = sub_22BE17A18(v14);
  MEMORY[0x28223BE20](v15);
  sub_22BE193B0(v16, v71);
  MEMORY[0x28223BE20](v17);
  sub_22BE19E94();
  v77 = v18;
  v19 = sub_22BE183BC();
  v20 = type metadata accessor for StatementResult(v19);
  v21 = sub_22BE17A18(v20);
  v23 = v22;
  MEMORY[0x28223BE20](v21);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v24);
  sub_22BE23858();
  MEMORY[0x28223BE20](v25);
  sub_22BE23730(v26, v27, v28, v29, v30, v31, v32, v33, v72);
  MEMORY[0x28223BE20](v34);
  sub_22BE3E3EC(v35, v36, v37, v38, v39, v40, v41, v42, v73);
  v43 = *(v12 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22C1CF078();
  sub_22BE70DA4(v44, v45, v46);
  sub_22BE35CC8();
  if (!v43)
  {
    goto LABEL_9;
  }

  v47 = 0;
  sub_22C1CEC30();
  v74 = v48;
  while (1)
  {
    if (v74 == v47)
    {
      goto LABEL_19;
    }

    sub_22BE27A88();
    if (v59)
    {
      goto LABEL_20;
    }

    sub_22BE36598();
    sub_22BE3CD58();
    sub_22C1CEAA4(v49, v13, v50);
    v51 = sub_22BE289D8();
    sub_22C1CEAA4(v51, v52, v23);
    sub_22BE351D8();
    TranscriptProtoStatementResult.init(handwritten:)();
    if (v11)
    {
      break;
    }

    sub_22BE29F54();
    sub_22C1CEAFC();
    sub_22BE182F0();
    if (v59)
    {
      v56 = sub_22BE1A028(v53);
      sub_22BE70DA4(v56, v57, v58);
      v10 = a10;
    }

    ++v47;
    *(v10 + 16) = v23;
    sub_22BE2C704();
    sub_22C1CED1C();
    sub_22C1CEB4C(v76, v54, v55);
    if (v43 == v47)
    {
      while (1)
      {
LABEL_9:
        sub_22BE47E0C();
        if (v60)
        {

          goto LABEL_17;
        }

        if (v59)
        {
          break;
        }

        sub_22BE3766C();
        sub_22C1CEF8C(v61, v62);
        sub_22BE3CD58();
        sub_22C1CEAA4(v63, v75, v64);
        sub_22C1CEFE0();
        sub_22BE3E778();
        TranscriptProtoStatementResult.init(handwritten:)();
        if (v11)
        {
          goto LABEL_16;
        }

        sub_22BE29F54();
        sub_22C1CEAFC();
        sub_22BE182F0();
        if (v59)
        {
          v68 = sub_22BE1A028(v65);
          sub_22BE70DA4(v68, v69, v70);
          v10 = a10;
        }

        *(v10 + 16) = v23;
        sub_22BE2C704();
        sub_22C1CED1C();
        sub_22C1CEB4C(v77, v66, v67);
        sub_22BE3C654();
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }
  }

LABEL_16:

  sub_22BE29F54();
  sub_22C1CEAFC();

LABEL_17:
  sub_22BE29F1C();
  sub_22BE18478();
}

void sub_22C1C62D0(uint64_t a1)
{
  v3 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v31 - v6;
  v7 = sub_22C271904();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v13);
  v39 = &v31 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = *(a1 + 16);
  v45 = MEMORY[0x277D84F90];
  sub_22BE70DFC(0, v18, 0);
  v19 = v45;
  v40 = v17;
  v38 = v18;
  if (v18)
  {
    v35 = v12;
    v20 = 0;
    v36 = *(a1 + 16);
    v34 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v32 = v8;
    v33 = v8 + 16;
    v44 = (v8 + 8);
    while (v36 != v20)
    {
      if (v20 >= *(a1 + 16))
      {
        goto LABEL_20;
      }

      v17 = v35;
      v21 = v34 + *(v8 + 72) * v20;
      v22 = *(v8 + 16);
      v22(v35, v21, v7);
      v22(v37, v17, v7);
      ContextProtoDynamicEnumerationEntity.init(handwritten:)();
      if (v1)
      {
LABEL_16:

        (*v44)(v17, v7);

        return;
      }

      (*v44)(v17, v7);
      v45 = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_22BE70DFC(v23 > 1, v24 + 1, 1);
        v19 = v45;
      }

      ++v20;
      *(v19 + 16) = v24 + 1;
      sub_22C1CEB4C(v43, v19 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v24, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      v17 = v40;
      v8 = v32;
      if (v38 == v20)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v37 = (v8 + 16);
    v43 = v1;
    v44 = (v8 + 8);
    for (i = v38; ; ++i)
    {
      v26 = *(a1 + 16);
      if (i == v26)
      {

        return;
      }

      if (i >= v26)
      {
        break;
      }

      v27 = *(v8 + 16);
      v27(v17, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * i, v7);
      v27(v39, v17, v7);
      v28 = v43;
      ContextProtoDynamicEnumerationEntity.init(handwritten:)();
      if (v28)
      {
        goto LABEL_16;
      }

      v43 = 0;
      (*v44)(v17, v7);
      v45 = v19;
      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_22BE70DFC(v29 > 1, v30 + 1, 1);
        v19 = v45;
      }

      *(v19 + 16) = v30 + 1;
      sub_22C1CEB4C(v42, v19 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v30, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      v17 = v40;
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_22C1C67A8()
{
  sub_22BE19130();
  v6 = v5;
  v131 = sub_22C271904();
  sub_22BE179D8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  v125 = v10;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v11);
  sub_22BE19E94();
  v128 = v12;
  v13 = sub_22BE5CE4C(&qword_27D9090E8, &qword_22C2B5A90);
  v14 = sub_22BE19448(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  sub_22BE4201C();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E94();
  v127 = v16;
  sub_22BE183BC();
  v130 = sub_22C26E684();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  sub_22BEC03A4(v18);
  v19 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v20 = sub_22BE19448(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v21);
  sub_22C1CEC08(v22, v23, v24, v25, v26, v27, v28, v29, v118);
  type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v31);
  sub_22BE19E94();
  v123 = v32;
  v33 = sub_22BE183BC();
  type metadata accessor for DynamicEnumerationEntityStatement(v33);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v34);
  sub_22BE17B98();
  v122 = v35;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v36);
  sub_22BE23858();
  MEMORY[0x28223BE20](v37);
  sub_22BE19490();
  v126 = v38;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v39);
  sub_22BE25A90();
  v40 = *(v6 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE2C294();
  sub_22BE70E54(v41, v42, v43);
  sub_22C1CF050();
  v132 = v6;
  if (!v40)
  {
    goto LABEL_9;
  }

  v120 = v0;
  v44 = 0;
  sub_22C1CEC64();
  sub_22BE41EA0(v45);
  sub_22BE417A8(*(v6 + 16));
  sub_22C1CF214();
  sub_22C1CEFD4(v46);
  sub_22BE271B0(v8 + 16);
  v119 = v3;
  v134 = v40;
  v121 = v4;
  while (1)
  {
    sub_22C1CF2AC();
    if (v47 == v44)
    {
      goto LABEL_19;
    }

    if (v44 >= *(v6 + 16))
    {
      goto LABEL_20;
    }

    sub_22BE3CB90();
    sub_22C1CEDF4();
    sub_22C1CEAA4(v48, v4, v49);
    sub_22C1CEAA4(v4, v122, v1);
    sub_22BE33554();
    v50 = sub_22BE31038();
    v51(v50);
    v52 = sub_22C26E674();
    v53 = sub_22C26E654();
    v55 = v54;
    v56 = type metadata accessor for TranscriptProtoStatementID(0);
    v57 = v120;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE33554();
    v58 = sub_22BE336E8();
    v59(v58);
    *v120 = v52;
    *(v120 + 8) = v53;
    *(v120 + 16) = v55;
    v60 = sub_22BE360A0();
    sub_22BE19DC4(v60, v61, v62, v56);
    sub_22BE46818();
    v1 = v125;
    v64(v125, v122 + v63, v131);
    ContextProtoDynamicEnumerationEntity.init(handwritten:)();
    if (v2)
    {
      break;
    }

    v65 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
    sub_22BE187DC();
    sub_22BE19DC4(v66, v67, v68, v65);
    sub_22BE28D2C();
    v70 = v69;
    sub_22BE19DC4(v69, v71, v72, v73);
    sub_22BE43214();
    sub_22BE1A140();
    sub_22BE3A034(v74, v75, v76, v65);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE3E9A8();
    sub_22C1CEAFC();
    sub_22BE23490(v120, v70, &qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE23490(v124, v70 + v52, &qword_27D9090E8, &qword_22C2B5A90);
    v4 = v121;
    sub_22BE2565C();
    sub_22C1CEAFC();
    v78 = *(v135 + 16);
    v77 = *(v135 + 24);
    if (v78 >= v77 >> 1)
    {
      v81 = sub_22BE1A028(v77);
      sub_22BE70E54(v81, v82, v83);
      sub_22C1CF050();
    }

    ++v44;
    *(v135 + 16) = v78 + 1;
    sub_22BE25AD8();
    sub_22BE46DDC();
    sub_22BE3C518();
    sub_22C1CEB4C(v70, v79, v80);
    v40 = v134;
    v6 = v132;
    v3 = v119;
    if (v134 == v44)
    {
      while (1)
      {
LABEL_9:
        sub_22BE447AC();
        if (v85)
        {

          goto LABEL_17;
        }

        if (v84)
        {
          break;
        }

        sub_22C1CEC64();
        sub_22C1CEDF4();
        sub_22C1CEAA4(v86, v3, v87);
        sub_22C1CEAA4(v3, v126, v1);
        sub_22C108D54();
        v1 = v129;
        v88 = sub_22BE31038();
        v89(v88);
        v90 = sub_22C26E674();
        v91 = sub_22C26E654();
        sub_22C1CF35C();
        sub_22C1CF2CC();
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        v92 = sub_22BE2BD4C();
        v57 = v133;
        v93(v92, v130);
        *v133 = v90;
        *(v133 + 8) = v91;
        *(v133 + 16) = v40;
        v94 = sub_22BE360A0();
        sub_22BE19DC4(v94, v95, v96, v3);
        sub_22C1CF1F4();
        v98(v128, v126 + v97, v131);
        ContextProtoDynamicEnumerationEntity.init(handwritten:)();
        if (v2)
        {
          goto LABEL_16;
        }

        v99 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
        sub_22BE187DC();
        sub_22BE19DC4(v100, v101, v102, v99);
        sub_22BE1A140();
        sub_22BE19DC4(v103, v104, v105, v3);
        sub_22BE43214();
        sub_22BE1A140();
        sub_22BE3A034(v106, v107, v108, v99);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        sub_22BE3E9A8();
        sub_22C1CEAFC();
        v109 = sub_22BE3C968();
        sub_22BE23490(v109, v110, &qword_27D9090F8, &unk_22C2AE4A0);
        sub_22BE23490(v127, v123 + v91, &qword_27D9090E8, &qword_22C2B5A90);
        sub_22C1CEAFC();
        v112 = *(v135 + 16);
        v111 = *(v135 + 24);
        if (v112 >= v111 >> 1)
        {
          sub_22BE3D1E4(v111);
          sub_22BE39E18();
          sub_22BE70E54(v115, v116, v117);
          sub_22C1CF050();
        }

        *(v135 + 16) = v112 + 1;
        sub_22BE25AD8();
        sub_22BE3C518();
        sub_22C1CEB4C(v123, v113, v114);
        ++v40;
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }
  }

LABEL_16:
  sub_22BE3E9A8();
  sub_22C1CEAFC();
  sub_22BE233E8(v57, &qword_27D9090F8, &unk_22C2AE4A0);

  sub_22C1CEAFC();

LABEL_17:
  sub_22BE18478();
}

void sub_22C1C6FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = v12;
  type metadata accessor for TranscriptProtoResponseParameter(0);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v14);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v15);
  sub_22BE39EE8();
  v78 = sub_22C26FA04();
  sub_22BE179D8();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v19);
  sub_22C1CEC88();
  MEMORY[0x28223BE20](v20);
  sub_22BE19E94();
  v74 = v21;
  v22 = *(v13 + 16);
  v23 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE70EAC(v23, v22, 0);
  v24 = a10;
  v25 = &unk_22C28E000;
  v77 = v17;
  if (v22)
  {
    v26 = 0;
    v73 = *(v13 + 16);
    sub_22C1CEC30();
    v71 = v27;
    sub_22BE36638((v17 + 2));
    sub_22C1CEFB0((v17 + 1));
    v69 = *(v28 + 1696);
    v70 = v22;
    while (v73 != v26)
    {
      v95 = v24;
      v29 = v17[2];
      v29(v76, v71 + v17[9] * v26, v78);
      v30 = sub_22BE260B8();
      (v29)(v30);
      v31 = sub_22C26F9B4();
      v87 = v32;
      v89 = v31;
      v33 = sub_22C26F9D4();
      v91 = v34;
      v93 = v33;
      v35 = sub_22C26F9C4();
      v83 = v36;
      v85 = v35;
      v81 = sub_22C26F9F4();
      v79 = sub_22C26F9E4();
      v75 = v37;
      LOBYTE(v29) = sub_22C26F994();
      *(v10 + 16) = v69;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v38 = v17[1];
      v39 = sub_22BE29264();
      v38(v39);
      (v38)(v76, v78);
      *v10 = v89;
      *(v10 + 8) = v87;
      sub_22BF158B4(*(v10 + 16), *(v10 + 24));
      *(v10 + 16) = v93;
      *(v10 + 24) = v91;
      *(v10 + 32) = v85;
      *(v10 + 40) = v83;
      *(v10 + 48) = v81;
      *(v10 + 56) = v79;
      *(v10 + 64) = v75;
      *(v10 + 72) = v29;
      v24 = v95;
      sub_22BE35D84();
      if (v76 >= v40 >> 1)
      {
        sub_22BE3D1E4(v40);
        sub_22BE39E18();
        sub_22BE70EAC(v43, v44, v45);
        v24 = a10;
      }

      ++v26;
      *(v24 + 16) = v76 + 1;
      sub_22BE197A0();
      sub_22C1CED54();
      sub_22C1CEB4C(v10, v41, v42);
      v22 = v70;
      v17 = v77;
      v25 = &unk_22C28E000;
      if (v70 == v26)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v72 = v25[106];
    while (1)
    {
      v46 = *(v13 + 16);
      if (v22 == v46)
      {

        sub_22BE18478();
        return;
      }

      if (v22 >= v46)
      {
        break;
      }

      sub_22BE19E14();
      v49 = v77[2];
      v49(v74, v47 + v48 + v77[9] * v22, v78);
      v50 = sub_22BE261AC();
      (v49)(v50);
      v51 = sub_22C26F9B4();
      v88 = v52;
      v90 = v51;
      v53 = sub_22C26F9D4();
      v92 = v54;
      v94 = v53;
      v55 = sub_22C26F9C4();
      v84 = v56;
      v86 = v55;
      v82 = sub_22C26F9F4();
      v57 = sub_22C26F9E4();
      v80 = v58;
      v59 = sub_22C26F994();
      *(v11 + 16) = v72;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v60 = v77[1];
      v60(v76, v78);
      v61 = sub_22BE2684C();
      (v60)(v61);
      *v11 = v90;
      *(v11 + 8) = v88;
      sub_22BF158B4(*(v11 + 16), *(v11 + 24));
      *(v11 + 16) = v94;
      *(v11 + 24) = v92;
      *(v11 + 32) = v86;
      *(v11 + 40) = v84;
      *(v11 + 48) = v82;
      *(v11 + 56) = v57;
      *(v11 + 64) = v80;
      *(v11 + 72) = v59;
      sub_22BE35D84();
      sub_22BE3FFA0();
      if (v63)
      {
        sub_22BE3D1E4(v62);
        sub_22BE31778();
        sub_22BE70EAC(v66, v67, v68);
        v24 = a10;
      }

      *(v24 + 16) = v60;
      sub_22BE197A0();
      sub_22C1CED54();
      sub_22C1CEB4C(v11, v64, v65);
      ++v22;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C1C7468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v14 = sub_22BE25D84();
  v15 = type metadata accessor for TranscriptProtoInterpretedStatementResult(v14);
  v16 = sub_22BE17A18(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BE193B0(v17, v70);
  MEMORY[0x28223BE20](v18);
  sub_22BE22D7C(v19, v20, v21, v22, v23, v24, v25, v26, v71);
  sub_22C2700F4();
  sub_22BE179D8();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v30);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v31);
  sub_22BE23730(v32, v33, v34, v35, v36, v37, v38, v39, v72);
  MEMORY[0x28223BE20](v40);
  sub_22BE26800();
  v41 = *(v13 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE2C294();
  sub_22BE70F5C(v42, v43, v44);
  sub_22BE3E47C();
  if (v41)
  {
    sub_22BE1C3D4();
    while (1)
    {
      sub_22C1CF13C();
      if (v45)
      {
        break;
      }

      sub_22BE39418();
      if (v56)
      {
        goto LABEL_22;
      }

      v46 = sub_22BE25BB8();
      v28(v46);
      v47 = sub_22C1CEC40();
      v28(v47);
      sub_22BE23360();
      TranscriptProtoInterpretedStatementResult.init(handwritten:)();
      if (v11)
      {
LABEL_17:

        v68 = sub_22BE203E8();
        v69(v68);

LABEL_19:
        sub_22C1CED0C();
        sub_22BE18478();
        return;
      }

      v48 = sub_22BE2902C();
      v49(v48);
      sub_22BE1B698();
      if (v56)
      {
        sub_22BE3D1E4(v50);
        sub_22C1CF178();
        sub_22BE70F5C(v53, v54, v55);
        v10 = a10;
      }

      v12 = (v12 + 1);
      *(v10 + 16) = v13;
      sub_22BE197A0();
      sub_22BE22B70();
      sub_22C1CEB4C(v74, v51, v52);
      sub_22BE323D0();
      v28 = v73;
      if (v45)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    sub_22BE40C98();
    while (1)
    {
      sub_22BE447AC();
      if (v45)
      {

        goto LABEL_19;
      }

      if (v56)
      {
        break;
      }

      v57 = sub_22BE1A084();
      v12(v57);
      v58 = sub_22C1CEC40();
      v12(v58);
      sub_22C1CF124();
      TranscriptProtoInterpretedStatementResult.init(handwritten:)();
      if (v11)
      {
        goto LABEL_17;
      }

      v59 = sub_22BE203E8();
      v60(v59);
      sub_22C1CEC50();
      if (v56)
      {
        v65 = sub_22BE19808(v61);
        sub_22BE70F5C(v65, v66, v67);
        v10 = a10;
      }

      *(v10 + 16) = v12;
      sub_22BE197A0();
      sub_22BE22B70();
      sub_22C1CEB4C(v62, v63, v64);
      sub_22BE27AB8();
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_22C1C7730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v14 = sub_22BE25D84();
  v15 = type metadata accessor for TranscriptProtoVisualOutput(v14);
  v16 = sub_22BE17A18(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BE193B0(v17, v70);
  MEMORY[0x28223BE20](v18);
  sub_22BE22D7C(v19, v20, v21, v22, v23, v24, v25, v26, v71);
  sub_22C26F444();
  sub_22BE179D8();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v30);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v31);
  sub_22BE23730(v32, v33, v34, v35, v36, v37, v38, v39, v72);
  MEMORY[0x28223BE20](v40);
  sub_22BE26800();
  v41 = *(v13 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE2C294();
  sub_22BE7100C(v42, v43, v44);
  sub_22BE3E47C();
  if (v41)
  {
    sub_22BE1C3D4();
    while (1)
    {
      sub_22C1CF13C();
      if (v45)
      {
        break;
      }

      sub_22BE39418();
      if (v56)
      {
        goto LABEL_22;
      }

      v46 = sub_22BE25BB8();
      v28(v46);
      v47 = sub_22C1CEC40();
      v28(v47);
      sub_22BE23360();
      TranscriptProtoVisualOutput.init(handwritten:)();
      if (v11)
      {
LABEL_17:

        v68 = sub_22BE203E8();
        v69(v68);

LABEL_19:
        sub_22C1CED0C();
        sub_22BE18478();
        return;
      }

      v48 = sub_22BE2902C();
      v49(v48);
      sub_22BE1B698();
      if (v56)
      {
        sub_22BE3D1E4(v50);
        sub_22C1CF178();
        sub_22BE7100C(v53, v54, v55);
        v10 = a10;
      }

      v12 = (v12 + 1);
      *(v10 + 16) = v13;
      sub_22BE197A0();
      sub_22C1CEDA8();
      sub_22C1CEB4C(v74, v51, v52);
      sub_22BE323D0();
      v28 = v73;
      if (v45)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    sub_22BE40C98();
    while (1)
    {
      sub_22BE447AC();
      if (v45)
      {

        goto LABEL_19;
      }

      if (v56)
      {
        break;
      }

      v57 = sub_22BE1A084();
      v12(v57);
      v58 = sub_22C1CEC40();
      v12(v58);
      sub_22C1CF124();
      TranscriptProtoVisualOutput.init(handwritten:)();
      if (v11)
      {
        goto LABEL_17;
      }

      v59 = sub_22BE203E8();
      v60(v59);
      sub_22C1CEC50();
      if (v56)
      {
        v65 = sub_22BE19808(v61);
        sub_22BE7100C(v65, v66, v67);
        v10 = a10;
      }

      *(v10 + 16) = v12;
      sub_22BE197A0();
      sub_22C1CEDA8();
      sub_22C1CEB4C(v62, v63, v64);
      sub_22BE27AB8();
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void QueryDecorationToolRetrievalResponse.init(transcript:)()
{
  sub_22BE3F494();
  v4 = v0;
  v6 = v5;
  v7 = sub_22BE5CE4C(&qword_27D909270, &unk_22C2CB810);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE19E64();
  v9 = sub_22C2725B4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v10);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v11);
  sub_22BE1C17C();
  v101 = sub_22C2728E4();
  sub_22BE179D8();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  sub_22BE3BF80();
  MEMORY[0x28223BE20](v15);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v16);
  sub_22BE19E94();
  v99 = v17;
  v18 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1A174();
  v95 = v20;
  sub_22BE183BC();
  v96 = sub_22C2725C4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v21);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v22);
  sub_22BE19E94();
  sub_22BE183BC();
  v102 = sub_22C272984();
  sub_22BE179D8();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22BE17B98();
  v94 = v26;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v27);
  v36 = sub_22BE22D7C(v28, v29, v30, v31, v32, v33, v34, v35, v87);
  v93 = type metadata accessor for ContextProtoToolRetrievalType(v36);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v37);
  sub_22BE179EC();
  sub_22BE22DB8();
  v97 = *(*(v6 + 48) + 16);
  v92 = (v24 + 32);
  sub_22C1CF214();
  sub_22C1CEFB0(v38);
  sub_22BE271B0(v13 + 16);
  v39 = MEMORY[0x277D84F98];
  v88 = v24;
  sub_22BE417A8(v24 + 8);
  v91 = v1;
  v90 = v3;
  for (i = v41; ; v41 = i)
  {
    if (v97 == v40)
    {

      sub_22C0F3228();
      if (v4)
      {
        sub_22BE3842C();
        sub_22C1CEAFC();

        goto LABEL_23;
      }

      sub_22BE1AB1C();
      sub_22C2719D4();
      sub_22BE3842C();
      goto LABEL_22;
    }

    if (v40 >= *(v41 + 16))
    {
      break;
    }

    sub_22BE25AD8();
    v98 = v45;
    sub_22C1CEAA4(v43 + v42 + *(v44 + 72) * v45, v2, type metadata accessor for ContextProtoToolRetrievalType);
    sub_22BE3BB64(v2, v95, &qword_27D909280, &unk_22C294B50);
    v46 = sub_22BE391E8();
    sub_22BE1AB5C(v46, v47, v96);
    if (v48)
    {

      sub_22BE233E8(v95, &qword_27D909280, &unk_22C294B50);
      sub_22BE5CE4C(&qword_27D912030, &unk_22C2B5E40);
      sub_22C273074();
      v77 = sub_22C108598();
      v78 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v77);
      sub_22BE29564(v78, v79);
      sub_22BE3842C();
      sub_22C1CF32C();
      goto LABEL_21;
    }

    sub_22C108D54();
    v49 = sub_22BE3C968();
    v50(v49);
    v51 = sub_22BE29264();
    v52(v51);
    sub_22C272974();
    if (v4)
    {
      sub_22BE3842C();
      sub_22C1CF32C();
      sub_22C1CF1E8();
      v80 = sub_22BF6AC14();
      v86(v80, v85);
      sub_22BE1B52C();
      sub_22C1CEAFC();
LABEL_23:

LABEL_24:
      sub_22BE22978();
      sub_22BE3CAD8();
      return;
    }

    sub_22C1CF1E8();
    v53 = sub_22BF6AC14();
    v54(v53);
    (*v92)(v103, v94, v102);
    sub_22BE3BB64(v2 + *(v93 + 20), v1, &qword_27D909270, &unk_22C2CB810);
    sub_22BE19FE0(v1);
    if (v48)
    {

      sub_22BE233E8(v1, &qword_27D909270, &unk_22C2CB810);
      sub_22BE5CE4C(&qword_27D912038, &unk_22C2B5E50);
      sub_22C273074();
      v81 = sub_22C108598();
      v82 = sub_22BE196B4(&type metadata for TranscriptConversion.Error, v81);
      sub_22BE29564(v82, v83);
      sub_22BE3842C();
      sub_22C1CF32C();
      sub_22BE33554();
      v84(v103, v102);
LABEL_21:
      sub_22BE1B52C();
LABEL_22:
      sub_22C1CEAFC();
      goto LABEL_24;
    }

    sub_22BE33554();
    v55(v3, v1, v9);
    sub_22BE33554();
    v56 = sub_22BE36658();
    v57(v56);
    sub_22BE3E778();
    sub_22C2728D4();
    sub_22BE33554();
    v58 = v9;
    v59(v3, v9);
    v60 = *(v13 + 32);
    v61 = sub_22BE1AB1C();
    v60(v61);
    sub_22BE33554();
    sub_22BE25300();
    v62();
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE603AC();
    sub_22C1CF0B4();
    if (__OFADD__(v65, v66))
    {
      goto LABEL_27;
    }

    v67 = v63;
    v68 = v64;
    sub_22BE5CE4C(&qword_27D915490, &unk_22C2CB820);
    if (sub_22C273C44())
    {
      sub_22BE603AC();
      if ((v68 & 1) != (v70 & 1))
      {
        goto LABEL_29;
      }

      v67 = v69;
    }

    if (v68)
    {
      v71 = v101;
      (*(v13 + 40))(v39[7] + *(v13 + 72) * v67, v100, v101);
    }

    else
    {
      sub_22BE45B78(&v39[v67 >> 6]);
      (*(v88 + 16))(v39[6] + *(v88 + 72) * v67, v103, v102);
      v71 = v101;
      (v60)(v39[7] + *(v13 + 72) * v67, v100, v101);
      v72 = v39[2];
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (v73)
      {
        goto LABEL_28;
      }

      v39[2] = v74;
    }

    sub_22BE33554();
    v75(v99, v71);
    sub_22BE33554();
    v76(v103, v102);
    sub_22BE1B52C();
    sub_22C1CEAFC();
    v4 = 0;
    v40 = v98 + 1;
    v9 = v58;
    v1 = v91;
    v3 = v90;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_22C2740B4();
  __break(1u);
}

void ContextProtoQueryDecorationToolRetrievalResponse.init(handwritten:)()
{
  sub_22BE3F494();
  v6 = v5;
  sub_22BE36638(v7);
  v8 = sub_22C271784();
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v10 = sub_22BE5CE4C(&qword_27D909060, &qword_22C27FC88);
  sub_22BE18000();
  MEMORY[0x28223BE20](v11);
  sub_22BE17B98();
  v85 = v12;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v13);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v14);
  sub_22BE19490();
  v91 = v15;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v16);
  sub_22BE181E4();
  v17 = type metadata accessor for ContextProtoToolRetrievalType(0);
  v18 = sub_22BE17A18(v17);
  MEMORY[0x28223BE20](v18);
  sub_22BE179EC();
  v21 = v20 - v19;
  sub_22C2719E4();
  sub_22C1CF16C();
  v22 = sub_22C2719F4();
  v24 = v23;
  sub_22C271A04();
  v26 = v25;
  v27 = sub_22C271A14();
  sub_22C1BF26C(v27, v28, v29, v30, v31, v32, v33, v34, v72, v73);
  if (v0)
  {
    sub_22C271A34();
    sub_22BE18524();
    (*(v36 + 8))(v6);

LABEL_15:
    sub_22BE3CAD8();
    return;
  }

  v82 = v21;
  v83 = v2;
  v84 = v1;
  sub_22C1CF270(v35);
  v37 = sub_22C271A24();
  v38 = *(v37 + 16);
  if (!v38)
  {

    v69 = MEMORY[0x277D84F90];
    v68 = v76;
LABEL_14:
    type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C271A34();
    sub_22BE18524();
    (*(v70 + 8))(v6);
    *v68 = v3;
    *(v68 + 8) = v4;
    *(v68 + 16) = v22;
    *(v68 + 24) = v24;
    *(v68 + 32) = v26;
    sub_22BE3974C();
    *(v68 + 40) = v71;
    *(v68 + 48) = v69;
    goto LABEL_15;
  }

  v74 = v24;
  v75 = v6;
  v92 = MEMORY[0x277D84F90];
  sub_22BE34198();
  sub_22BE70D4C(v39, v40, v41);
  v90 = v92;
  v43 = sub_22C259374();
  v81 = v37 + 64;
  v44 = &qword_27D909060;
  v45 = v84;
  v78 = v22;
  v79 = v3;
  v77 = v10;
  v80 = v37;
  while ((v43 & 0x8000000000000000) == 0 && v43 < 1 << *(v37 + 32))
  {
    if (((*(v81 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
    {
      goto LABEL_17;
    }

    if (*(v37 + 36) != v42)
    {
      goto LABEL_18;
    }

    v86 = v38;
    v88 = *(v10 + 48);
    v46 = v43;
    v47 = *(v37 + 48);
    v48 = v44;
    v49 = sub_22C272984();
    sub_22BE179D8();
    v50 = v10;
    v87 = v51;
    (*(v52 + 16))(v45, v47 + *(v52 + 72) * v46, v49);
    v53 = *(v37 + 56);
    v54 = sub_22C2728E4();
    sub_22BE179D8();
    v56 = v55;
    (*(v55 + 16))(v45 + v88, v53 + *(v57 + 72) * v46, v54);
    (*(v87 + 32))(v91, v45, v49);
    (*(v56 + 32))(v91 + *(v50 + 48), v45 + v88, v54);
    sub_22BE3BB64(v91, v83, v48, &qword_22C27FC88);
    v89 = *(v50 + 48);
    sub_22BE3BB64(v91, v85, v48, &qword_22C27FC88);
    sub_22C271774();
    (*(v87 + 8))(v85, v49);
    (*(v56 + 8))(v83 + v89, v54);
    ContextProtoToolRetrievalType.init(handwritten:)();
    v44 = v48;
    sub_22BE233E8(v91, v48, &qword_22C27FC88);
    v58 = v90;
    v60 = *(v90 + 16);
    v59 = *(v90 + 24);
    if (v60 >= v59 >> 1)
    {
      v64 = sub_22BE1AAE4(v59);
      sub_22BE70D4C(v64, v60 + 1, 1);
      v58 = v90;
    }

    *(v58 + 16) = v60 + 1;
    sub_22BE19E14();
    v90 = v61;
    sub_22C1CEB4C(v82, v61 + v62 + *(v63 + 72) * v60, type metadata accessor for ContextProtoToolRetrievalType);
    v37 = v80;
    v43 = sub_22C18DDA4();
    v38 = v86 - 1;
    v10 = v77;
    v22 = v78;
    v3 = v79;
    v45 = v84;
    if (v86 == 1)
    {

      v65 = sub_22BE1A8C4();
      sub_22BE2FC64(v65, v66, v67);
      v6 = v75;
      v68 = v76;
      v24 = v74;
      v69 = v90;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void ContextProtoToolRetrievalType.init(handwritten:)()
{
  sub_22BE19130();
  v45 = v2;
  v4 = v3;
  v44 = sub_22C2725B4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  sub_22BE3A208();
  v46 = sub_22C2728E4();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v11 = v10 - v9;
  v12 = sub_22BE5CE4C(&qword_27D909270, &unk_22C2CB810);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  v43 = v14;
  sub_22BE183BC();
  sub_22C272984();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  sub_22BE1BC40();
  v16 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE2C64C();
  sub_22C271764();
  sub_22C272964();
  v18 = sub_22BE36658();
  v19(v18);
  v20 = sub_22C2725C4();
  sub_22BE187DC();
  sub_22BE19DC4(v21, v22, v23, v20);
  sub_22C271754();
  sub_22C2728C4();
  if (v0)
  {
    sub_22C271784();
    sub_22BE18524();
    (*(v24 + 8))(v4);
    (*(v7 + 8))(v11, v46);
    sub_22BE233E8(v1, &qword_27D909280, &unk_22C294B50);
  }

  else
  {
    (*(v7 + 8))(v11, v46);
    v25 = sub_22BE29264();
    v26(v25);
    sub_22BE187DC();
    sub_22BE19DC4(v27, v28, v29, v44);
    sub_22BE1A140();
    v33 = sub_22C18F17C(v30, v31, v32, v20);
    v34 = *(type metadata accessor for ContextProtoToolRetrievalType(v33) + 20);
    sub_22BE1A140();
    sub_22BE19DC4(v35, v36, v37, v44);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C271784();
    sub_22BE18524();
    (*(v38 + 8))(v4);
    v39 = sub_22BE2684C();
    sub_22BE23490(v39, v40, v41, v42);
    sub_22BE23490(v43, v45 + v34, &qword_27D909270, &unk_22C2CB810);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void DynamicEnumerationEntity.init(transcript:)()
{
  sub_22BE19130();
  sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v2);
  sub_22BE22D7C(v3, v4, v5, v6, v7, v8, v9, v10, v24);
  v11 = sub_22C272874();
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  sub_22BE183BC();
  sub_22C2725A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v13);
  sub_22BE18928();
  MEMORY[0x28223BE20](v14);
  sub_22BE32374();
  sub_22C2728A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v15);
  sub_22BE19338();
  type metadata accessor for ContextProtoDynamicEnumerationEntity(0);

  sub_22C1024DC();
  if (v0)
  {
    sub_22BE25104();
    sub_22C1CEAFC();
  }

  else
  {
    v16 = sub_22BE33B3C();
    v17(v16);
    sub_22C272894();
    v18 = sub_22BF6AC14();
    v19(v18);
    sub_22C101488();
    v20 = sub_22BE3AF28();
    v21(v20);
    sub_22C272864();
    v22 = sub_22BE35838();
    v23(v22);
    sub_22C2718C4();
    sub_22BE25104();
    sub_22C1CEAFC();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void ContextProtoDynamicEnumerationEntity.init(handwritten:)()
{
  sub_22BE19130();
  v3 = v2;
  v49 = v4;
  sub_22C272594();
  sub_22BE179D8();
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE183BC();
  sub_22C272874();
  sub_22BE179D8();
  v53 = v7;
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v52 = v8;
  v9 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v50 = v11;
  sub_22BE183BC();
  v55 = sub_22C2725A4();
  sub_22BE179D8();
  v51 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE3A208();
  sub_22C2728A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v14);
  sub_22BE19338();
  v15 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1A174();
  v18 = v17;
  v19 = sub_22C270C34();
  v21 = v20;
  sub_22C2718F4();
  sub_22C272884();
  if (v0)
  {

    sub_22C271904();
    sub_22BE18524();
    (*(v22 + 8))(v3);
    v23 = sub_22BE3EA80();
    v24(v23);
  }

  else
  {
    v47 = v19;
    v25 = sub_22BE3EA80();
    v26(v25);
    (*(v51 + 32))(v18, v1, v55);
    sub_22BE187DC();
    sub_22BE19DC4(v27, v28, v29, v55);
    v30 = v3;
    sub_22C2718E4();
    sub_22C272854();
    (*(v53 + 8))(v52, v54);
    v31 = sub_22BE39EAC();
    v32(v31);
    sub_22BE187DC();
    v36 = sub_22C18F17C(v33, v34, v35, v48);
    v37 = type metadata accessor for ContextProtoDynamicEnumerationEntity(v36);
    v38 = *(v37 + 20);
    sub_22BE1A140();
    sub_22BE19DC4(v39, v40, v41, v55);
    v42 = *(v37 + 24);
    sub_22BE1A140();
    sub_22BE19DC4(v43, v44, v45, v48);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C271904();
    sub_22BE18524();
    (*(v46 + 8))(v30);
    *v49 = v47;
    v49[1] = v21;
    sub_22BE23490(v18, v49 + v38, &qword_27D90C138, &qword_22C2CB830);
    sub_22BE23490(v50, v49 + v42, &qword_27D909128, &qword_22C294AA0);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void ToolRetrievalType.init(transcript:)()
{
  sub_22BE19130();
  sub_22C2725B4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v1);
  sub_22BE193B0(v2, v23);
  MEMORY[0x28223BE20](v3);
  sub_22BE22D7C(v4, v5, v6, v7, v8, v9, v10, v11, v24);
  v12 = sub_22C2728E4();
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE3A208();
  sub_22C2725C4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v14);
  sub_22BE18928();
  MEMORY[0x28223BE20](v15);
  sub_22BE1C17C();
  sub_22C272984();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  sub_22BE1BC40();
  sub_22C1022DC();
  if (!v0)
  {
    sub_22BE3C6BC();
    v17();
    sub_22C272974();
    v18 = sub_22BE2BA80();
    v19(v18);
    type metadata accessor for ContextProtoToolRetrievalType(0);
    sub_22C1023DC();
    sub_22BE29400();
    sub_22BE260B8();
    sub_22C1CEFBC();
    v20();
    sub_22C2728D4();
    v21 = sub_22BE3C5E4();
    v22(v21);
    sub_22C271774();
  }

  sub_22BE1B52C();
  sub_22C1CEAFC();
  sub_22BE18478();
}

uint64_t SampleInvocation.init(transcript:)(float *a1)
{

  sub_22C270F34();
  sub_22BE26148();
  return sub_22C1CEAFC();
}

uint64_t ContextProtoSampleInvocation.init(handwritten:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C270F44();
  v6 = v5;
  sub_22C270F54();
  v8 = v7;
  type metadata accessor for ContextProtoSampleInvocation(0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C270F64();
  sub_22BE18524();
  result = (*(v9 + 8))(a1);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  return result;
}

uint64_t SpanMatchedEntity.init(transcript:)(uint64_t a1)
{
  v4 = sub_22BE1B18C();
  v6 = sub_22BE5CE4C(v4, v5);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A8B4();
  v8 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  v10 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  sub_22BE3BB64(a1 + *(v10 + 20), v2, &qword_27D909128, &qword_22C294AA0);
  v11 = sub_22BE3D5BC();
  sub_22C0FC7A8(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
  if (!v1)
  {

    sub_22C0F436C();
    sub_22C270FA4();
  }

  sub_22BE26148();
  return sub_22C1CEAFC();
}

uint64_t ContextProtoSpanMatchedEntity.init(handwritten:)()
{
  sub_22C1CECFC();
  v5 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE35AE8();
  v7 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE25CD0();
  sub_22C270FB4();
  v9 = sub_22C1CF27C();
  sub_22C105684(v9, v10, v11, v12, v13, v14, v15, v16, v34, v36);
  if (v1)
  {
    sub_22C270FD4();
    sub_22BE18524();
    return (*(v17 + 8))(v0);
  }

  else
  {
    v19 = sub_22C270FC4();
    sub_22C1C4190(v19, v20, v21, v22, v23, v24, v25, v26, v35, v37);
    v28 = v27;
    type metadata accessor for ContextProtoSpanMatchedEntity(0);
    sub_22C1CF0A4();
    sub_22C272594();
    sub_22BE1A140();
    sub_22BE19DC4(v29, v30, v31, v32);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C270FD4();
    sub_22BE18524();
    (*(v33 + 8))(v0);
    result = sub_22BE23490(v3, v2 + v4, &qword_27D909128, &qword_22C294AA0);
    *v2 = v28;
  }

  return result;
}

void EntityMatch.init(transcript:)()
{
  sub_22BE3F494();
  v3 = v2;
  sub_22C270F94();
  sub_22BE179D8();
  v20 = v5;
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22BE17B98();
  v19 = v6;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E94();
  v8 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  sub_22BE3BF90(v10);
  v11 = sub_22BE5CE4C(&qword_27D9073C0, &qword_22C275330);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  v13 = sub_22BE183BC();
  matched = type metadata accessor for ContextProtoMatchProperties(v13);
  sub_22BE18000();
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  sub_22BE3A208();
  v15 = sub_22C270E54();
  v16 = sub_22BE19448(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  sub_22BE3AC88();
  type metadata accessor for ContextProtoEntityMatch(0);

  sub_22C104A6C();
  if (v0)
  {
    sub_22BE3EB20();
    sub_22C1CEAFC();
  }

  else
  {
    sub_22BE3BB64(v1 + *(matched + 24), v23, &qword_27D909108, &unk_22C2B5E20);
    sub_22C0FFB8C();
    sub_22C270E14();
    sub_22BE22EE0();
    sub_22C1CEAFC();
    (*(v20 + 104))(v19, **(&unk_278725BF0 + *(v3 + 52)), v21);
    v17 = sub_22BE22DF4();
    v18(v17);

    sub_22C270A24();
    sub_22BE3EB20();
    sub_22C1CEAFC();
  }

  sub_22BEE94B0();
  sub_22BE3CAD8();
}

void MatchProperties.init(transcript:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE2C64C();
  v6 = sub_22BE5CE4C(&qword_27D9073C0, &qword_22C275330);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE25CD0();
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  sub_22BE3BB64(v3 + *(matched + 24), v1, &qword_27D909108, &unk_22C2B5E20);
  sub_22C0FFB8C();
  if (!v0)
  {
    sub_22C270E14();
  }

  sub_22BE22EE0();
  sub_22C1CEAFC();
  sub_22BE19650();
  sub_22BE18478();
}

uint64_t EntityMatcherType.init(transcript:)()
{
  sub_22BE367EC();
  sub_22C270F94();
  sub_22BE1834C();
  v0 = sub_22BE27C4C();
  return v1(v0);
}

void ContextProtoEntityMatch.init(handwritten:)()
{
  sub_22BE3F494();
  sub_22BE1B254();
  sub_22C270F94();
  sub_22BE179D8();
  v52 = v6;
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v7);
  sub_22BE32374();
  v8 = sub_22C270E54();
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  sub_22BE1BC40();
  v10 = sub_22BE5CE4C(&qword_27D909118, &unk_22C294B60);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE234F4();
  v49 = sub_22C270AD4();
  v13 = v12;
  v14 = sub_22C270A14();
  v16 = v15;
  v17 = sub_22C270A64();
  v50 = sub_22C270AE4();
  sub_22C270A54();
  v19 = v18;
  sub_22C270AA4();
  ContextProtoMatchProperties.init(handwritten:)();
  if (v2)
  {
    sub_22C270AF4();
    sub_22BE18524();
    (*(v20 + 8))(v1);

LABEL_9:
    sub_22BE3CAD8();
    return;
  }

  v47 = v14;
  v48 = v16;
  v56 = v13;
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v46 = v3;
  sub_22BE187DC();
  sub_22BE19DC4(v21, v22, v23, v24);
  sub_22C270A84();
  sub_22BE29400();
  v25 = sub_22BE23108();
  v26(v25);
  v27 = sub_22BE25C08();
  v29 = v28(v27);
  v30 = 0;
  if (v29 == *MEMORY[0x277D1EE88])
  {
LABEL_8:
    (*(v52 + 8))(v4, v54);
    v31 = sub_22C270AB4();
    v53 = v32;
    v55 = v31;
    v33 = sub_22C270A94();
    v51 = v34;
    v35 = sub_22C270A44();
    v37 = v36;
    v38 = type metadata accessor for ContextProtoEntityMatch(0);
    v39 = *(v38 + 48);
    sub_22BE1A140();
    sub_22BE19DC4(v40, v41, v42, matched);
    v43 = (v0 + *(v38 + 52));
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C270AF4();
    sub_22BE18524();
    (*(v44 + 8))(v1);
    *v0 = v49;
    *(v0 + 8) = v56;
    *(v0 + 16) = v47;
    *(v0 + 24) = v48;
    *(v0 + 32) = v17;
    *(v0 + 40) = v50;
    *(v0 + 48) = v19;
    sub_22BE23490(v46, v0 + v39, &qword_27D909118, &unk_22C294B60);
    *(v0 + 52) = v30;
    *(v0 + 56) = v55;
    *(v0 + 64) = v53;
    *(v0 + 72) = v33;
    *(v0 + 80) = v51;
    *v43 = v35;
    v43[1] = v37;
    goto LABEL_9;
  }

  if (v29 == *MEMORY[0x277D1EE78])
  {
    v30 = 1;
    goto LABEL_8;
  }

  if (v29 == *MEMORY[0x277D1EE80])
  {
    v30 = 2;
    goto LABEL_8;
  }

  sub_22C274004();
  __break(1u);
}

void ContextProtoMatchProperties.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE460C8();
  v4 = sub_22BE5CE4C(&qword_27D9073C0, &qword_22C275330);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE2C64C();
  v6 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE25CD0();
  v8 = sub_22C270E24();
  v10 = v9;
  v11 = sub_22C270E44();
  v13 = v12;
  sub_22C270E34();
  sub_22C107944();
  if (v2)
  {
    sub_22C270E54();
    sub_22BE18524();
    (*(v14 + 8))(v1);
  }

  else
  {
    v23 = v13 & 1;
    if (v13)
    {
      v11 = 0;
    }

    v15 = v10 & 1;
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v8;
    }

    v17 = *(type metadata accessor for ContextProtoMatchProperties(0) + 24);
    type metadata accessor for ContextProtoAliasTypes(0);
    sub_22BE1A140();
    sub_22BE19DC4(v18, v19, v20, v21);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C270E54();
    sub_22BE18524();
    (*(v22 + 8))(v1);
    *v0 = v16;
    *(v0 + 8) = v15;
    *(v0 + 16) = v11;
    *(v0 + 24) = v23;
    sub_22BE23490(v3, v0 + v17, &qword_27D909108, &unk_22C2B5E20);
  }

  sub_22BE19650();
  sub_22BE18478();
}

void sub_22C1CA974()
{
  sub_22BE19130();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_22BE4111C();
  v10 = v9(v8);
  sub_22BE179D8();
  v12 = v11;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE23E58();
  v14 = sub_22BE33BE8();
  v15(v14);
  v16 = sub_22BF6AC14();
  v18 = v17(v16);
  if (v18 == *v7)
  {
    v19 = 0;
LABEL_7:
    (*(v12 + 8))(v1, v10);
    *v0 = v19;
    sub_22BE22978();
    sub_22BE18478();
    return;
  }

  if (v18 == *v5)
  {
    v19 = 1;
    goto LABEL_7;
  }

  if (v18 == *v3)
  {
    v19 = 2;
    goto LABEL_7;
  }

  sub_22BE3FFAC();
  __break(1u);
}

void AliasTypes.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_22BE19130();
  v181 = v24;
  v26 = v25;
  v201 = sub_22BE5CE4C(&qword_27D915498, &unk_22C2CB840);
  sub_22BE18000();
  MEMORY[0x28223BE20](v27);
  sub_22BE17B98();
  v186 = v28;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v29);
  sub_22C1CEC9C();
  MEMORY[0x28223BE20](v30);
  sub_22BE3913C();
  MEMORY[0x28223BE20](v31);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v32);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v33);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v34);
  sub_22BE41674();
  MEMORY[0x28223BE20](v35);
  sub_22BE19E94();
  sub_22BE18950(v36);
  v37 = sub_22C270944();
  sub_22BE179D8();
  v200 = v38;
  MEMORY[0x28223BE20](v39);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v40);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v41);
  v43 = v179 - v42;
  MEMORY[0x28223BE20](v44);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v45);
  sub_22BE409D8();
  MEMORY[0x28223BE20](v46);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v47);
  sub_22BE255B8();
  MEMORY[0x28223BE20](v48);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v49);
  v51 = v179 - v50;
  MEMORY[0x28223BE20](v52);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v53);
  sub_22BE3A4D8();
  MEMORY[0x28223BE20](v54);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v55);
  sub_22BE23730(v56, v57, v58, v59, v60, v61, v62, v63, v179[0]);
  MEMORY[0x28223BE20](v64);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v65);
  sub_22BE25A90();
  sub_22C1CEEE4();
  sub_22C1CE8AC(v66, v67, MEMORY[0x277D1EA00]);
  sub_22C2742B4();
  v68 = v51;
  v69 = *(*v181 + 16);
  if (v69)
  {
    v70 = (*v181 + 32);
    v192 = (v200 + 8);
    v189 = v200 + 32;
    v190 = v22;
    v198 = v200 + 16;
    v199 = v26;
    v193 = v21;
    v194 = v68;
    v191 = v23;
    v195 = v43;
    do
    {
      v71 = *v70;
      v200 = v70 + 1;
      v72 = v197;
      switch(v71)
      {
        case 1:
          sub_22BE204A4();
          sub_22C270934();
          v109 = sub_22BE361E4();
          v110(v109);
          sub_22BE18750();
          v111 = sub_22C1CE8AC(&qword_27D9154A0, v26, MEMORY[0x277D1E9F8]);
          sub_22C1CF0D4(v111);
          sub_22BE1C0B0();
          sub_22C1CE8AC(&qword_27D9154A8, v26, v112);
          sub_22BE3AF28();
          sub_22C1CEFBC();
          sub_22C272FD4();
          sub_22BE1831C();
          sub_22BE3FF54();
          if (v113)
          {
            v160 = sub_22BE22DF4();
            v26(v160);
            sub_22C1CEFA0();
            v72();
            v161 = sub_22BE1B18C();
            (v72)(v161);
            sub_22BE3D6E0(v23);
            v162 = sub_22BE33B3C();
            v26(v162);
          }

          else
          {
            v114 = sub_22BE33B3C();
            v26(v114);
            sub_22C1CECEC();
            sub_22BE358FC();
            v115();
          }

          sub_22C1CF208();
          sub_22BEF88B8(v163, v164, &qword_27D915498, &unk_22C2CB840);
          v165 = sub_22C1CEBE0();
          v26(v165);
          v23 = v191;
          v22 = v190;
          v43 = v195;
          goto LABEL_29;
        case 2:
          sub_22BE236D4();
          sub_22C270904();
          v91 = sub_22BE361E4();
          v92(v91);
          sub_22BE18750();
          v93 = sub_22C1CE8AC(&qword_27D9154A0, v26, MEMORY[0x277D1E9F8]);
          sub_22C1CF0FC(v93);
          sub_22BE1C0B0();
          sub_22C1CE8AC(&qword_27D9154A8, v26, v94);
          sub_22BE29454();
          sub_22C1CEFBC();
          sub_22C272FD4();
          sub_22BE1831C();
          v95 = v183;
          sub_22BE3FF54();
          if (v96)
          {
            v145 = sub_22BE22DF4();
            v26(v145);
            sub_22C1CEFA0();
            v72();
            v146 = sub_22BE18240();
            (v72)(v146);
            sub_22BE3D6E0(v43);
            v147 = sub_22BE23108();
            v26(v147);
          }

          else
          {
            v97 = sub_22BE23108();
            v26(v97);
            sub_22C1CECEC();
            sub_22BE358FC();
            v98();
          }

          v43 = v195;
          sub_22BEF88B8(v95, v196, &qword_27D915498, &unk_22C2CB840);
          v148 = sub_22C1CEBE0();
          v26(v148);
          goto LABEL_24;
        case 3:
          sub_22BE236D4();
          sub_22C2708F4();
          v99 = sub_22BE361E4();
          v100(v99);
          sub_22BE18750();
          v101 = sub_22C1CE8AC(&qword_27D9154A0, v26, MEMORY[0x277D1E9F8]);
          sub_22C1CF0FC(v101);
          sub_22BE1C0B0();
          sub_22C1CE8AC(&qword_27D9154A8, v26, v102);
          sub_22BE29454();
          sub_22C1CEFBC();
          sub_22C272FD4();
          sub_22BE1831C();
          v103 = v184;
          *v184 = v104;
          v105 = *v192;
          if (v106)
          {
            v149 = sub_22BE22DF4();
            v105(v149);
            sub_22C1CEFA0();
            v72();
            v150 = sub_22BE18240();
            (v72)(v150);
            sub_22BE3D6E0(v43);
            v151 = sub_22BE23108();
            v105(v151);
          }

          else
          {
            v107 = sub_22BE23108();
            v105(v107);
            sub_22BE358FC();
            v108();
          }

          v43 = v195;
          sub_22BEF88B8(v103, v196, &qword_27D915498, &unk_22C2CB840);
          v152 = sub_22C1CEBE0();
          v105(v152);
LABEL_24:
          v23 = v191;
          v22 = v190;
          v70 = v200;
          break;
        case 4:
          sub_22BE204A4();
          sub_22C270924();
          v84 = sub_22BE361E4();
          v85(v84);
          sub_22BE18750();
          v86 = sub_22C1CE8AC(&qword_27D9154A0, v26, MEMORY[0x277D1E9F8]);
          sub_22C1CF0D4(v86);
          sub_22BE1C0B0();
          sub_22C1CE8AC(&qword_27D9154A8, v26, v87);
          sub_22BE3AF28();
          sub_22C1CEFBC();
          sub_22C272FD4();
          sub_22BE1831C();
          sub_22BE3FF54();
          if (v88)
          {
            v139 = sub_22BE22DF4();
            v26(v139);
            sub_22C1CEFA0();
            v72();
            v140 = sub_22BE1B18C();
            (v72)(v140);
            sub_22BE3D6E0(v23);
            v141 = sub_22BE33B3C();
            v26(v141);
          }

          else
          {
            v89 = sub_22BE33B3C();
            v26(v89);
            sub_22C1CECEC();
            sub_22BE358FC();
            v90();
          }

          sub_22C1CF208();
          sub_22BEF88B8(v142, v143, &qword_27D915498, &unk_22C2CB840);
          v144 = sub_22C1CEBE0();
          v26(v144);
          v23 = v191;
          v43 = v195;
          v22 = v190;
          v70 = v200;
          break;
        case 5:
          sub_22C270914();
          v116 = v43;
          v117 = v185;
          v118 = sub_22BE31038();
          v188 = v119;
          (v119)(v118);
          sub_22BE18750();
          sub_22C1CE8AC(&qword_27D9154A0, v26, MEMORY[0x277D1E9F8]);
          sub_22BE22DF4();
          v187 = v120;
          sub_22C273984();
          sub_22BE1C0B0();
          sub_22C1CE8AC(&qword_27D9154A8, v26, v121);
          sub_22BE3CC34();
          sub_22C1CEFBC();
          sub_22C272FD4();
          sub_22BE1831C();
          *v117 = v122;
          v123 = *v192;
          if (v124)
          {
            v166 = sub_22BE29264();
            v123(v166);
            sub_22BE358FC();
            v167 = v188;
            v188();
            v168 = v197;
            sub_22BE358FC();
            v167();
            sub_22BE3D6E0(v168);
            v169 = sub_22BE22DF4();
            v123(v169);
          }

          else
          {
            v125 = sub_22BE22DF4();
            v123(v125);
            v126 = sub_22C1CECEC();
            v127(v126, v116, v37);
          }

          sub_22C1CF208();
          sub_22BEF88B8(v170, v171, &qword_27D915498, &unk_22C2CB840);
          v172 = sub_22C1CEBE0();
          v123(v172);
          v22 = v190;
          v23 = v191;
          v43 = v195;
          goto LABEL_34;
        case 6:
          sub_22BE236D4();
          sub_22C2708E4();
          v128 = sub_22BE361E4();
          v129(v128);
          sub_22BE18750();
          sub_22C1CE8AC(&qword_27D9154A0, v26, MEMORY[0x277D1E9F8]);
          sub_22BE204A4();
          v130 = v72;
          v187 = v131;
          sub_22C273984();
          sub_22BE1C0B0();
          sub_22C1CE8AC(&qword_27D9154A8, v26, v132);
          sub_22BE18240();
          sub_22C1CEFBC();
          sub_22C272FD4();
          sub_22BE1831C();
          *v186 = v133;
          v134 = *v192;
          if (v135)
          {
            v173 = sub_22BE33B3C();
            v134(v173);
            sub_22BE39EA0();
            v174 = v188;
            v188();
            sub_22BE39EA0();
            v174();
            sub_22BE3D6E0(v130);
            v175 = sub_22BE23108();
            v134(v175);
          }

          else
          {
            v136 = sub_22BE23108();
            v134(v136);
            v137 = sub_22C1CECEC();
            v138(v137, v43, v37);
          }

          sub_22C1CF208();
          sub_22BEF88B8(v176, v177, &qword_27D915498, &unk_22C2CB840);
          v178 = sub_22C1CEBE0();
          v134(v178);
          v43 = v195;
          v23 = v191;
          v22 = v190;
LABEL_34:
          v70 = v200;
          break;
        default:
          sub_22C2708D4();
          v73 = sub_22BE361E4();
          v74(v73);
          sub_22BE18750();
          v75 = v22;
          v76 = v72;
          v187 = sub_22C1CE8AC(&qword_27D9154A0, v26, MEMORY[0x277D1E9F8]);
          sub_22C273984();
          sub_22BE1C0B0();
          sub_22C1CE8AC(&qword_27D9154A8, v26, v77);
          sub_22BE25C08();
          sub_22C1CEFBC();
          sub_22C272FD4();
          sub_22BE1831C();
          v78 = v182;
          *v182 = v79;
          v80 = *v192;
          if (v81)
          {
            v153 = sub_22BE23108();
            v80(v153);
            v154 = v72 + v78;
            v155 = v188;
            v180 = v80;
            (v188)(v154, v75, v37);
            v156 = sub_22BE33FCC();
            (v155)(v156);
            v80 = v180;
            sub_22BE3D6E0(v76);
            v157 = sub_22BE29264();
            v80(v157);
          }

          else
          {
            v82 = sub_22BE29264();
            v80(v82);
            sub_22C1CECEC();
            sub_22BE39EA0();
            v83();
          }

          v158 = v78;
          v22 = v75;
          v43 = v195;
          sub_22BEF88B8(v158, v196, &qword_27D915498, &unk_22C2CB840);
          v159 = sub_22C1CEBE0();
          v80(v159);
LABEL_29:
          v70 = v200;
          break;
      }

      --v69;
      v26 = v199;
    }

    while (v69);
  }

  sub_22C1CEAFC();
  sub_22BE18478();
}

void ContextProtoAliasTypes.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE1B254();
  sub_22C270944();
  sub_22BE179D8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22BE19338();
  type metadata accessor for ContextProtoAliasTypes(0);
  v54 = v0;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C2708D4();
  sub_22C1CEEE4();
  sub_22C1CE8AC(v4, v5, MEMORY[0x277D1E9F8]);
  sub_22BE415C8();
  v6 = sub_22C273974();
  v7 = *(v2 + 8);
  v8 = sub_22BE1AB1C();
  v7(v8);
  if (v6)
  {
    sub_22BE66A04(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = v9;
    v11 = *(v9 + 24);
    if (*(v9 + 16) >= v11 >> 1)
    {
      sub_22BE3CB24(v11);
      v10 = v40;
    }

    sub_22C1CF01C();
    *(v12 + 32) = 0;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  sub_22C270934();
  sub_22BE415C8();
  v13 = sub_22C273974();
  v14 = sub_22BE1AB1C();
  v7(v14);
  if (v13)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE46BC0();
      v10 = v41;
    }

    sub_22BE37518();
    if (v16)
    {
      sub_22BE3CB24(v15);
      v10 = v42;
    }

    sub_22C1CF01C();
    *(v17 + 32) = 1;
  }

  sub_22C270904();
  sub_22BE415C8();
  v18 = sub_22C273974();
  v19 = sub_22BE1AB1C();
  v7(v19);
  if (v18)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE46BC0();
      v10 = v43;
    }

    sub_22BE37518();
    if (v16)
    {
      sub_22BE3CB24(v20);
      v10 = v44;
    }

    sub_22C1CF01C();
    *(v21 + 32) = 2;
  }

  sub_22C2708F4();
  sub_22BE415C8();
  v22 = sub_22C273974();
  v23 = sub_22BE1AB1C();
  v7(v23);
  if (v22)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE46BC0();
      v10 = v45;
    }

    sub_22BE37518();
    if (v16)
    {
      sub_22BE3CB24(v24);
      v10 = v46;
    }

    sub_22C1CF01C();
    *(v25 + 32) = 3;
  }

  sub_22C270924();
  sub_22BE415C8();
  v26 = sub_22C273974();
  v27 = sub_22BE1AB1C();
  v7(v27);
  if (v26)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE46BC0();
      v10 = v47;
    }

    sub_22BE37518();
    if (v16)
    {
      sub_22BE3CB24(v28);
      v10 = v48;
    }

    sub_22C1CF01C();
    *(v29 + 32) = 4;
  }

  sub_22C270914();
  sub_22BE415C8();
  v30 = sub_22C273974();
  v31 = sub_22BE1AB1C();
  v7(v31);
  if (v30)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE46BC0();
      v10 = v49;
    }

    sub_22BE37518();
    if (v16)
    {
      sub_22BE3CB24(v32);
      v10 = v50;
    }

    sub_22C1CF01C();
    *(v33 + 32) = 5;
  }

  sub_22C2708E4();
  sub_22BE415C8();
  v34 = sub_22C273974();
  v35 = sub_22BE1AB1C();
  v7(v35);
  if (v34)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE46BC0();
      v10 = v51;
    }

    v37 = *(v10 + 16);
    v36 = *(v10 + 24);
    if (v37 >= v36 >> 1)
    {
      v52 = sub_22BE1AAE4(v36);
      sub_22BE66A04(v52, v37 + 1, 1, v10);
      v10 = v53;
    }

    v38 = sub_22BE336E8();
    v7(v38);
    *(v10 + 16) = v37 + 1;
    *(v10 + v37 + 32) = 6;
  }

  else
  {
    v39 = sub_22BE336E8();
    v7(v39);
  }

  *v54 = v10;
  sub_22BE18478();
}

void QueryDecorationInput.init(transcript:)()
{
  sub_22BE19130();
  v3 = v1;
  sub_22BE48298();
  v46 = sub_22C271844();
  sub_22BE179D8();
  v48 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22BE17B98();
  v45 = v6;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v7);
  sub_22BE355FC(v8, v9, v10, v11, v12, v13, v14, v15, v37[0]);
  v16 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v19 = v37 - v18;
  v20 = sub_22C26E1D4();
  sub_22BE179D8();
  v49 = v21;
  MEMORY[0x28223BE20](v22);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v23);
  v25 = v37 - v24;
  v26 = v2[6];
  v27 = v2[7];

  sub_22C101F78(v26, v27);
  if (v3)
  {
    sub_22BE358B0();
    sub_22C1CEAFC();
  }

  else
  {
    v43 = v0;
    v44 = v20;

    sub_22C26E174();

    sub_22C101298();
    sub_22BE233E8(v19, &qword_27D9082F0, &qword_22C27AB00);
    v28 = sub_22C101F78(v2[8], v2[9]);
    v40 = v29;
    v41 = v28;
    v42 = 0;
    v30 = *v2;
    v38 = v25;
    v39 = v30;
    v37[1] = v2[4];
    v31 = v49;
    sub_22C1CF23C();
    v32 = v44;
    v33(v43, v25, v44);
    v34 = *(v2 + 16);

    if (v34)
    {
      v36 = v45;
      v35 = v46;
      if (v34 == 1)
      {
        sub_22C270934();
      }

      else
      {
        sub_22C270904();
      }
    }

    else
    {
      v36 = v45;
      sub_22C2708D4();
      v35 = v46;
    }

    (*(v48 + 32))(v47, v36, v35);

    sub_22C2717C4();
    sub_22BE358B0();
    sub_22C1CEAFC();
    (*(v31 + 8))(v38, v32);
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t QueryDecorationCaller.init(transcript:)(_BYTE *a1)
{
  if (!*a1)
  {
    return sub_22C2708D4();
  }

  if (*a1 == 1)
  {
    return sub_22C270934();
  }

  return sub_22C270904();
}

void sub_22C1CC080(void *a1@<X8>)
{
  QueryDecorationInput.init(transcript:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void ContextProtoQueryDecorationInput.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  v25 = v24;
  v47 = v26;
  sub_22C26E1D4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v27);
  sub_22BE179EC();
  sub_22BE3AC88();
  v28 = sub_22C271844();
  v29 = sub_22BE19448(v28);
  MEMORY[0x28223BE20](v29);
  sub_22BE179EC();
  v30 = sub_22C2717D4();
  v48 = v31;
  v32 = sub_22C271804();
  v49 = v33;
  sub_22C2717E4();
  ContextProtoQueryDecorationCaller.init(handwritten:)();
  if (v23)
  {
  }

  else
  {
    sub_22C2717F4();
    v45 = sub_22C26E184();
    v46 = v34;
    v35 = sub_22BE2BA80();
    v36(v35);
    v37 = sub_22C2717A4();
    v39 = v38;
    v40 = sub_22C2717B4();
    v41 = sub_22C1C4F4C(v40);
    v42 = sub_22C271794();
    v44 = v43;
    type metadata accessor for ContextProtoQueryDecorationInput(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

    *v47 = v30;
    *(v47 + 8) = v48;
    *(v47 + 16) = a13;
    *(v47 + 40) = v49;
    *(v47 + 48) = v45;
    *(v47 + 56) = v46;
    *(v47 + 64) = v37;
    *(v47 + 24) = v41;
    *(v47 + 32) = v32;
    *(v47 + 72) = v39;
    *(v47 + 80) = v42;
    *(v47 + 88) = v44;
  }

  sub_22BE18478();
}

void ContextProtoQueryDecorationCaller.init(handwritten:)()
{
  sub_22BE19130();
  v25 = v0;
  sub_22C271844();
  sub_22BE179D8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22BE18928();
  MEMORY[0x28223BE20](v4);
  sub_22BE26800();
  v5 = sub_22BE1AB1C();
  v6(v5);
  sub_22C2708D4();
  sub_22C1CE8AC(&qword_27D9154B0, MEMORY[0x277D1F0F8], MEMORY[0x277D1F100]);
  sub_22BE18240();
  v7 = sub_22C272FD4();
  v8 = *(v2 + 8);
  v9 = sub_22BE35838();
  v8(v9);
  if (v7)
  {
    v10 = sub_22BE431C0();
    v8(v10);
    v11 = sub_22BE36680();
    v8(v11);
    v12 = 0;
  }

  else
  {
    sub_22C270934();
    sub_22BE18240();
    v13 = sub_22C272FD4();
    v14 = sub_22BE35838();
    v8(v14);
    if (v13)
    {
      v15 = sub_22BE431C0();
      v8(v15);
      v16 = sub_22BE36680();
      v8(v16);
      v12 = 1;
    }

    else
    {
      sub_22C270904();
      sub_22BE18240();
      v17 = sub_22C272FD4();
      v18 = sub_22BE35838();
      v8(v18);
      v19 = sub_22BE36680();
      v8(v19);
      if ((v17 & 1) == 0)
      {
        v21 = sub_22C108358();
        v22 = sub_22BE196B4(&type metadata for HandwrittenConversion.Error, v21);
        sub_22BE3C74C(v22, v23);
        v24 = sub_22BE431C0();
        v8(v24);
        goto LABEL_8;
      }

      v20 = sub_22BE431C0();
      v8(v20);
      v12 = 2;
    }
  }

  *v25 = v12;
LABEL_8:
  sub_22BE22978();
  sub_22BE18478();
}

uint64_t QueryDecorationCoreService.init(transcript:)()
{
  sub_22BE367EC();
  sub_22C271944();
  sub_22BE1834C();
  v0 = sub_22BE27C4C();
  return v1(v0);
}

uint64_t ContextProtoQueryDecorationCoreService.init(handwritten:)()
{
  sub_22BE38A98();
  v1 = v0;
  sub_22C271944();
  sub_22BE179D8();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = sub_22BE18B58(v5, v21);
  v7(v6);
  v8 = sub_22BE36680();
  v10 = v9(v8);
  if (v10 == *MEMORY[0x277D1F170])
  {
    v11 = 0;
LABEL_13:
    v12 = sub_22BE3C5E4();
    result = v13(v12);
    *v1 = v11;
    return result;
  }

  if (v10 == *MEMORY[0x277D1F188])
  {
    v11 = 1;
    goto LABEL_13;
  }

  if (v10 == *MEMORY[0x277D1F180])
  {
    v11 = 2;
    goto LABEL_13;
  }

  if (v10 == *MEMORY[0x277D1F198])
  {
    v11 = 3;
    goto LABEL_13;
  }

  if (v10 == *MEMORY[0x277D1F178])
  {
    v11 = 4;
    goto LABEL_13;
  }

  if (v10 == *MEMORY[0x277D1F1A0])
  {
    v11 = 5;
    goto LABEL_13;
  }

  v15 = sub_22C108358();
  v16 = sub_22BE196B4(&type metadata for HandwrittenConversion.Error, v15);
  sub_22BE3C74C(v16, v17);
  v18 = *(v3 + 8);
  v19 = sub_22BE3C5E4();
  v18(v19);
  v20 = sub_22BE36680();
  return (v18)(v20);
}

void VersionedQueryDecorationOutput.init(transcript:)()
{
  sub_22BE19130();
  v34 = v0;
  v5 = v4;
  v6 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE23E58();
  v8 = sub_22BE5CE4C(&qword_27D912018, &unk_22C2B7810);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE35AE8();
  v10 = sub_22C271994();
  sub_22BE179D8();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE1BC40();
  (*(v12 + 104))(v2, *MEMORY[0x277D1F1B8], v10);
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v33 = *&v5[*(DecorationOutput + 48)];
  if (v5[8] == 1)
  {

    sub_22C0F3740(v15, v16, v17, v18, v19, v20, v21, v22, v33, v34);
    if (v1)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  sub_22BE3BB64(&v5[*(DecorationOutput + 44)], v3, &qword_27D90C100, &unk_22C294B20);
  sub_22C0FDCA0();
  if (v1)
  {

LABEL_7:

    sub_22BE365C4();
    v23 = sub_22BE3AF28();
    v24(v23);
    goto LABEL_8;
  }

  if (v5[24] == 1)
  {

    sub_22C0F9B80(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  }

  if (v5[40] == 1)
  {

    sub_22C0F34B4();
  }

  sub_22C2719B4();
  sub_22BE365C4();
LABEL_8:
  sub_22BE29F1C();
  sub_22BE18478();
}

uint64_t VersionedQueryDecorationOutput.Version.init(transcript:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1F1B8];
  sub_22C271994();
  sub_22BE1834C();
  return (*(v3 + 104))(a1, v2);
}

void sub_22C1CCB24(void *a1@<X8>)
{
  VersionedQueryDecorationOutput.init(transcript:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void ContextProtoVersionedQueryDecorationOutput.init(handwritten:)()
{
  sub_22BE19130();
  v6 = v5;
  v59 = v7;
  v8 = sub_22C271994();
  sub_22BE179D8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v12);
  sub_22BE26800();
  v13 = sub_22BE5CE4C(&qword_27D912018, &unk_22C2B7810);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A8B4();
  v15 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
  v16 = sub_22BE19448(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v17);
  sub_22BE25A90();
  sub_22C271984();
  sub_22C1BEC10();
  if (v0)
  {
  }

  else
  {
    v55 = v2;
    v56 = v10;
    v57 = v3;
    v58 = v18;
    v19 = sub_22C271984();
    if (v19)
    {
    }

    sub_22C271954();
    v20 = v1;
    sub_22C105F94();
    v21 = v4;
    v22 = sub_22C271974();
    v23 = MEMORY[0x277D84F90];
    if (!v22)
    {
      v22 = MEMORY[0x277D84F90];
    }

    sub_22C1C62D0(v22);
    v25 = v24;
    v26 = sub_22C271974();
    if (v26)
    {
    }

    v27 = sub_22C2719A4();
    if (!v27)
    {
      v27 = v23;
    }

    sub_22C1B27C4(v27, v28, v29, v30, v31, v32, v33, v34, v51, v52);
    v53 = v35;
    v54 = v25;
    v36 = sub_22C2719A4();
    if (v36)
    {
    }

    sub_22C2719C4();
    (*(v56 + 16))(v21, v57, v8);
    v37 = sub_22BE33BE8();
    if (v38(v37) == *MEMORY[0x277D1F1B8])
    {
      (*(v56 + 8))(v57, v8);
      sub_22BE3BB64(v20, v55, &qword_27D90C100, &unk_22C294B20);
      sub_22C271964();
      sub_22C1CF16C();
      DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
      v40 = *(DecorationOutput + 44);
      type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
      sub_22BE1A140();
      sub_22BE19DC4(v41, v42, v43, v44);
      v45 = (v59 + *(DecorationOutput + 48));
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

      sub_22BE233E8(v20, &qword_27D90C100, &unk_22C294B20);
      *v59 = v58;
      *(v59 + 8) = v19 != 0;
      sub_22C1CF344(v55, v59 + v40);
      *(v59 + 16) = v54;
      *(v59 + 24) = v26 != 0;
      *(v59 + 32) = v53;
      *(v59 + 40) = v36 != 0;
      *v45 = v56 + 8;
      v45[1] = v36;
    }

    else
    {

      v46 = sub_22C108358();
      v47 = sub_22BE196B4(&type metadata for HandwrittenConversion.Error, v46);
      sub_22BE3C74C(v47, v48);

      v49 = *(v56 + 8);
      v49(v57, v8);
      sub_22BE233E8(v20, &qword_27D90C100, &unk_22C294B20);
      v50 = sub_22BE33BE8();
      (v49)(v50);
    }
  }

  sub_22BE22978();
  sub_22BE18478();
}

uint64_t ContextProtoVersionedQueryDecorationOutput.Version.init(handwritten:)()
{
  sub_22BE38A98();
  v2 = sub_22C271994();
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  sub_22BE1BC40();
  sub_22C116380();
  v6(v1, v0, v2);
  v7 = sub_22BE431C0();
  if (v8(v7) == *MEMORY[0x277D1F1B8])
  {
    v9 = sub_22BE3C5E4();
    return v10(v9);
  }

  else
  {
    v12 = sub_22C108358();
    v13 = sub_22BE196B4(&type metadata for HandwrittenConversion.Error, v12);
    sub_22BE3C74C(v13, v14);
    v15 = *(v4 + 8);
    v16 = sub_22BE3C5E4();
    v15(v16);
    v17 = sub_22BE431C0();
    return (v15)(v17);
  }
}

uint64_t QueryDecorationOutput.init(transcript:)()
{
  sub_22BE38A98();
  v4 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1A8B4();
  v6 = sub_22BE5CE4C(&qword_27D912018, &unk_22C2B7810);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE25CD0();
  if (v2[8] == 1 && (v8 = , sub_22C0F3740(v8, v9, v10, v11, v12, v13, v14, v15, v26, v27), v0))
  {
    sub_22BE41348();
  }

  else
  {
    DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
    sub_22BE3BB64(&v2[*(DecorationOutput + 40)], v3, &qword_27D90C100, &unk_22C294B20);
    sub_22BE3D5BC();
    sub_22C0FDCA0();
    if (v0)
    {
      sub_22BE41348();
    }

    else
    {
      if (v2[24] == 1)
      {

        sub_22C0F9B80(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27);
      }

      if (v2[40] == 1)
      {

        sub_22C0F34B4();
      }

      sub_22BE415C8();
      v1 = sub_22C271884();
      sub_22BE41348();
    }
  }

  return v1;
}

uint64_t sub_22C1CD32C@<X0>(uint64_t *a1@<X8>)
{
  result = QueryDecorationOutput.init(transcript:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void ContextProtoQueryDecorationOutput.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE460C8();
  v4 = sub_22BE5CE4C(&qword_27D912018, &unk_22C2B7810);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1A8B4();
  v6 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = sub_22C271894();
  sub_22C1CF0C4(v11);
  sub_22C1BEC10();
  if (v2)
  {
  }

  else
  {
    v13 = v12;
    v14 = sub_22C271894();
    if (v14)
    {
    }

    sub_22C271854();
    sub_22C105F94();
    v15 = sub_22C271874();
    v16 = sub_22C1CF0C4(v15);
    sub_22C1C62D0(v16);
    v49 = v17;
    v18 = sub_22C271874();
    if (v18)
    {
    }

    v19 = sub_22C2718A4();
    v20 = sub_22C1CF0C4(v19);
    sub_22C1B27C4(v20, v21, v22, v23, v24, v25, v26, v27, v44, v45);
    v48 = v28;
    v29 = sub_22C2718A4();
    if (v29)
    {
    }

    v46 = v18 != 0;
    v47 = v29 != 0;
    HIDWORD(v45) = v14 != 0;
    v30 = sub_22BE18240();
    sub_22BE3BB64(v30, v31, v32, v33);
    v34 = sub_22C271864();
    v44 = v35;
    DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
    v37 = *(DecorationOutput + 40);
    type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
    sub_22BE1A140();
    sub_22BE19DC4(v38, v39, v40, v41);
    v42 = (v0 + *(DecorationOutput + 44));
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

    sub_22BE233E8(v10, &qword_27D90C100, &unk_22C294B20);
    *v0 = v13;
    *(v0 + 8) = BYTE4(v45);
    sub_22BE23490(v3, v0 + v37, &qword_27D90C100, &unk_22C294B20);
    *(v0 + 16) = v49;
    *(v0 + 24) = v46;
    *(v0 + 32) = v48;
    *(v0 + 40) = v47;
    v43 = v44;
    *v42 = v34;
    v42[1] = v43;
  }

  sub_22BE19650();
  sub_22BE18478();
}

unint64_t sub_22C1CD634()
{
  result = qword_27D9154B8;
  if (!qword_27D9154B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9154B8);
  }

  return result;
}

uint64_t sub_22C1CD694(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D9154C0, MEMORY[0x277D1EE00], &protocol conformance descriptor for RetrievedContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CD740(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D9154C8, MEMORY[0x277D1EDC0], &protocol conformance descriptor for ContextMetadata);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CD7EC(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D9154D0, MEMORY[0x277D1F0A8], &protocol conformance descriptor for StructuredContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CD898(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D9154D8, MEMORY[0x277D1F038], &protocol conformance descriptor for StructuredContext.NowPlayingMediaItemContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CD944(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D9154E0, MEMORY[0x277D1EF78], &protocol conformance descriptor for StructuredContext.SiriRequestContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CD9F0(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D9154E8, MEMORY[0x277D1F058], &protocol conformance descriptor for StructuredContext.UIMetadata);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDA9C(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D9154F0, MEMORY[0x277D1F040], &protocol conformance descriptor for StructuredContext.UIMetadata.Window);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDB48(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D9154F8, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDBF4(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915500, MEMORY[0x277D1EA08], &protocol conformance descriptor for Confidence);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDCA0(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915508, MEMORY[0x277D1F1F8], &protocol conformance descriptor for ContextualEntityDisplayRepresentation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDD4C(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915510, MEMORY[0x277D1EA48], &protocol conformance descriptor for BoundingBox);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDDF8(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915518, MEMORY[0x277D1EDD0], &protocol conformance descriptor for SurroundingText);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDEA4(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915520, MEMORY[0x277D1ED00], &protocol conformance descriptor for RetrievedTool.Definition);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDF50(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915528, MEMORY[0x277D1EDB8], &protocol conformance descriptor for UIControlTool);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDFFC(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915530, MEMORY[0x277D1ED90], &protocol conformance descriptor for RetrievedTool);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE0A8(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915538, type metadata accessor for ToolQuery.Output, &protocol conformance descriptor for ToolQuery.Output);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE154(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915540, MEMORY[0x277D1F1D8], &protocol conformance descriptor for QueryDecorationToolRetrievalResponse);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE200(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915548, MEMORY[0x277D1F138], &protocol conformance descriptor for DynamicEnumerationEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE2AC(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915550, MEMORY[0x277D1F0B0], &protocol conformance descriptor for ToolRetrievalType);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE358(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915558, MEMORY[0x277D1EE20], &protocol conformance descriptor for SampleInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE404(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915560, MEMORY[0x277D1EEB0], &protocol conformance descriptor for SpanMatchedEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE4B0(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915568, MEMORY[0x277D1EB88], &protocol conformance descriptor for EntityMatch);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE55C(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915570, MEMORY[0x277D1EDC8], &protocol conformance descriptor for MatchProperties);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE608(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915578, MEMORY[0x277D1E9E8], &protocol conformance descriptor for AliasTypes);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE6B4(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915580, MEMORY[0x277D1F0C0], &protocol conformance descriptor for QueryDecorationInput);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE760(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915588, MEMORY[0x277D1F1C0], &protocol conformance descriptor for VersionedQueryDecorationOutput);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE80C(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915590, MEMORY[0x277D1F118], &protocol conformance descriptor for QueryDecorationOutput);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE8AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for ContextConversion(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextConversion.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C1CEAA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE1834C();
  v4 = sub_22BE19454();
  v5(v4);
  return a2;
}

uint64_t sub_22C1CEAFC()
{
  v1 = sub_22BE17BC4();
  v2(v1);
  sub_22BE18524();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22C1CEB4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE1834C();
  v4 = sub_22BE19454();
  v5(v4);
  return a2;
}

uint64_t sub_22C1CEBA4()
{

  return sub_22C1CEAFC();
}

uint64_t sub_22C1CEF14(uint64_t a1, uint64_t a2)
{

  return sub_22C1CEB4C(v2, a2, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_22C1CEF3C()
{

  return sub_22C1CEAFC();
}

uint64_t sub_22C1CEF64(uint64_t a1, uint64_t a2)
{

  return sub_22C1CEB4C(v2, a2, type metadata accessor for ContextProtoToolQueryOutput);
}

uint64_t sub_22C1CEFE0()
{
  v4 = *(v2 - 128);

  return sub_22C1CEAA4(v0, v4, v1);
}

uint64_t sub_22C1CF0C4(uint64_t result)
{
  if (!result)
  {
    return v1;
  }

  return result;
}

uint64_t sub_22C1CF0D4(uint64_t a1)
{
  *(v1 - 232) = a1;

  return sub_22C273984();
}

uint64_t sub_22C1CF0FC(uint64_t a1)
{
  *(v1 - 232) = a1;

  return sub_22C273984();
}

uint64_t sub_22C1CF1CC@<X0>(uint64_t a1@<X8>)
{

  return sub_22C101EF8(a1 | (v1 << 32));
}

uint64_t sub_22C1CF30C()
{

  return sub_22C273974();
}

uint64_t sub_22C1CF32C()
{

  return sub_22C1CEAFC();
}

uint64_t sub_22C1CF344(uint64_t a1, uint64_t a2)
{

  return sub_22BE23490(a1, a2, v2, v3);
}

uint64_t sub_22C1CF35C()
{

  return type metadata accessor for TranscriptProtoStatementID(0);
}

uint64_t Array<A>.init<A>(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22C0F0608();
  if (!v3)
  {
    sub_22C2735B4();
    sub_22BE17E90();
    swift_getWitnessTable();
    a2 = sub_22C2735C4();
  }

  (*(*(a3 - 8) + 8))(a1, a3);
  return a2;
}

uint64_t sub_22C1CF4E0(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90CAB0, type metadata accessor for ResponseGenerationProtoResponseGenerationInput, &protocol conformance descriptor for ResponseGenerationProtoResponseGenerationInput);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseGenerationInput.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for ResponseGenerationProtoResponseGenerationInput);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1CF6C4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90CA38, type metadata accessor for ResponseGenerationProtoStatementResultDigest, &protocol conformance descriptor for ResponseGenerationProtoStatementResultDigest);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    StatementResultDigest.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for ResponseGenerationProtoStatementResultDigest);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1CF8A8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoRetrievedContext(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C0F8, type metadata accessor for ContextProtoRetrievedContext, &protocol conformance descriptor for ContextProtoRetrievedContext);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RetrievedContext.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, v20, SDWORD2(v20), SWORD6(v20), SBYTE14(v20), SHIBYTE(v20), v21, *(&v21 + 1), v22, v23, v24, v25, v26, v27, v28, v29);
    sub_22C1EE0BC(v11, type metadata accessor for ContextProtoRetrievedContext);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1CFA8C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoContextMetadata(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C2E0, type metadata accessor for ContextProtoContextMetadata, &protocol conformance descriptor for ContextProtoContextMetadata);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ContextMetadata.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for ContextProtoContextMetadata);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1CFC70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for ContextProtoStructuredContext(0);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C350, type metadata accessor for ContextProtoStructuredContext, &protocol conformance descriptor for ContextProtoStructuredContext);
  sub_22C270734();
  if (!v3)
  {
    sub_22C1EE064();
    StructuredContext.init(transcript:)(v10, a3);
    sub_22C1EE0BC(v13, type metadata accessor for ContextProtoStructuredContext);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1CFE54(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C368, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem, &protocol conformance descriptor for ContextProtoStructedContextNowPlayingMediaItem);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    StructuredContext.NowPlayingMediaItemContext.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D0038(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContext);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    StructuredContext.SiriRequestContext.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D021C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C450, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    StructuredContext.UIMetadata.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D0400(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C468, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    StructuredContext.UIMetadata.Window.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  }

  return sub_22BE29DD4(a1, a2);
}

double sub_22C1D05E4(uint64_t a1, unint64_t a2)
{
  v6 = sub_22C270524();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for ContextProtoCGRect(0);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C480, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    CGRect.init(transcript:)();
    v3 = v12;
    sub_22C1EE0BC(v10, type metadata accessor for ContextProtoCGRect);
  }

  sub_22BE29DD4(a1, a2);
  return v3;
}

uint64_t sub_22C1D0820(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoConfidence(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C338, type metadata accessor for ContextProtoConfidence, &protocol conformance descriptor for ContextProtoConfidence);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  sub_22C270954();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for ContextProtoConfidence);
  return sub_22C1EE0BC(v11, type metadata accessor for ContextProtoConfidence);
}

uint64_t sub_22C1D0A24(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C2F8, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, &protocol conformance descriptor for ContextProtoContextualEntityDisplayRepresentation);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  sub_22C101F78(*v8, v8[1]);

  sub_22C271A44();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  return sub_22C1EE0BC(v11, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
}

uint64_t sub_22C1D0C5C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoBoundingBox(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v13 = *v8;
  LOBYTE(v17[0]) = *(v8 + 4);
  sub_22C101EF8(v13 | (LOBYTE(v17[0]) << 32));
  v14 = v8[2];
  LOBYTE(v17[0]) = *(v8 + 12);
  sub_22C101EF8(v14 | (LOBYTE(v17[0]) << 32));
  v15 = v8[4];
  LOBYTE(v17[0]) = *(v8 + 20);
  sub_22C101EF8(v15 | (LOBYTE(v17[0]) << 32));
  v16 = v8[6];
  LOBYTE(v17[0]) = *(v8 + 28);
  sub_22C101EF8(v16 | (LOBYTE(v17[0]) << 32));
  sub_22C2709A4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for ContextProtoBoundingBox);
  return sub_22C1EE0BC(v11, type metadata accessor for ContextProtoBoundingBox);
}

uint64_t sub_22C1D0F18(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoSurroundingText(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90BF88, type metadata accessor for ContextProtoSurroundingText, &protocol conformance descriptor for ContextProtoSurroundingText);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    SurroundingText.init(transcript:)(v8);
    sub_22C1EE0BC(v11, type metadata accessor for ContextProtoSurroundingText);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D10FC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C560, type metadata accessor for ContextProtoRetrievedTool.Definition, &protocol conformance descriptor for ContextProtoRetrievedTool.Definition);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RetrievedTool.Definition.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for ContextProtoRetrievedTool.Definition);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D12E0(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoUIControlTool(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C578, type metadata accessor for ContextProtoUIControlTool, &protocol conformance descriptor for ContextProtoUIControlTool);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    UIControlTool.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for ContextProtoUIControlTool);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D14C4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoRetrievedTool(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C1B8, type metadata accessor for ContextProtoRetrievedTool, &protocol conformance descriptor for ContextProtoRetrievedTool);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RetrievedTool.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for ContextProtoRetrievedTool);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D16A8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  Output = type metadata accessor for ContextProtoToolQueryOutput(0);
  MEMORY[0x28223BE20](Output);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C5C8, type metadata accessor for ContextProtoToolQueryOutput, &protocol conformance descriptor for ContextProtoToolQueryOutput);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ToolQuery.Output.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for ContextProtoToolQueryOutput);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D188C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, &protocol conformance descriptor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    QueryDecorationToolRetrievalResponse.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D1A70(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C0F0, type metadata accessor for ContextProtoDynamicEnumerationEntity, &protocol conformance descriptor for ContextProtoDynamicEnumerationEntity);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    DynamicEnumerationEntity.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D1C54(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoToolRetrievalType(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C1C0, type metadata accessor for ContextProtoToolRetrievalType, &protocol conformance descriptor for ContextProtoToolRetrievalType);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ToolRetrievalType.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for ContextProtoToolRetrievalType);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D1E38(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoSampleInvocation(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C158, type metadata accessor for ContextProtoSampleInvocation, &protocol conformance descriptor for ContextProtoSampleInvocation);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C270F34();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for ContextProtoSampleInvocation);
  return sub_22C1EE0BC(v11, type metadata accessor for ContextProtoSampleInvocation);
}

uint64_t sub_22C1D2054@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v6 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - v7;
  v9 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_22C270524();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  MEMORY[0x28223BE20](v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v25 - v15;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C0E8, type metadata accessor for ContextProtoSpanMatchedEntity, &protocol conformance descriptor for ContextProtoSpanMatchedEntity);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  sub_22BE22868();
  sub_22C0FC7A8(v8, v18, v19, v20, v21, v22, v23, v24, *&v25[0], *(&v25[0] + 1));

  sub_22C0F436C();
  sub_22C270FA4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v13, type metadata accessor for ContextProtoSpanMatchedEntity);
  return sub_22C1EE0BC(v16, type metadata accessor for ContextProtoSpanMatchedEntity);
}

uint64_t sub_22C1D2370(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoEntityMatch(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C1D0, type metadata accessor for ContextProtoEntityMatch, &protocol conformance descriptor for ContextProtoEntityMatch);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    EntityMatch.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for ContextProtoEntityMatch);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D2554@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v6 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_22BE5CE4C(&qword_27D9073C0, &qword_22C275330);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22C270524();
  MEMORY[0x28223BE20](v8 - 8);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  MEMORY[0x28223BE20](matched);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v17 - v13;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C618, type metadata accessor for ContextProtoMatchProperties, &protocol conformance descriptor for ContextProtoMatchProperties);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v16 = *v11;
  v17[1] = *(v11 + 2);
  v17[2] = v16;
  v18 = v11[24];
  sub_22BE22868();
  sub_22C0FFB8C();
  sub_22C270E14();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v11, type metadata accessor for ContextProtoMatchProperties);
  return sub_22C1EE0BC(v14, type metadata accessor for ContextProtoMatchProperties);
}

uint64_t sub_22C1D2858(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for ContextProtoAliasTypes(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C630, type metadata accessor for ContextProtoAliasTypes, &protocol conformance descriptor for ContextProtoAliasTypes);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    AliasTypes.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, v20, SDWORD2(v20), SHIDWORD(v20), v21, *(&v21 + 1), v22, v23, v24, v25, v26, v27, v28, v29);
    sub_22C1EE0BC(v11, type metadata accessor for ContextProtoAliasTypes);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D2A3C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  DecorationInput = type metadata accessor for ContextProtoQueryDecorationInput(0);
  MEMORY[0x28223BE20](DecorationInput);
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C508, type metadata accessor for ContextProtoQueryDecorationInput, &protocol conformance descriptor for ContextProtoQueryDecorationInput);
  v10 = DecorationInput;
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    QueryDecorationInput.init(transcript:)();
    v10 = v11;
    sub_22C1EE0BC(v9, type metadata accessor for ContextProtoQueryDecorationInput);
  }

  sub_22BE29DD4(a1, a2);
  return v10;
}

uint64_t sub_22C1D2C3C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  MEMORY[0x28223BE20](DecorationOutput);
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C4C8, type metadata accessor for ContextProtoVersionedQueryDecorationOutput, &protocol conformance descriptor for ContextProtoVersionedQueryDecorationOutput);
  v10 = DecorationOutput;
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    VersionedQueryDecorationOutput.init(transcript:)();
    v10 = v11;
    sub_22C1EE0BC(v9, type metadata accessor for ContextProtoVersionedQueryDecorationOutput);
  }

  sub_22BE29DD4(a1, a2);
  return v10;
}

uint64_t sub_22C1D2E3C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  MEMORY[0x28223BE20](DecorationOutput);
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C4F0, type metadata accessor for ContextProtoQueryDecorationOutput, &protocol conformance descriptor for ContextProtoQueryDecorationOutput);
  v10 = DecorationOutput;
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    v10 = QueryDecorationOutput.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for ContextProtoQueryDecorationOutput);
  }

  sub_22BE29DD4(a1, a2);
  return v10;
}

uint64_t sub_22C1D303C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoEvent(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&unk_28107AB68, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Session.Event.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoEvent);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D3220(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoTranscript(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F360, type metadata accessor for TranscriptProtoTranscript, &protocol conformance descriptor for TranscriptProtoTranscript);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Session.Transcript.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoTranscript);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D3404(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoTimepoint(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_281078C68, type metadata accessor for TranscriptProtoTimepoint, &protocol conformance descriptor for TranscriptProtoTimepoint);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Timepoint.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoTimepoint);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D35E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C270524();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for TranscriptProtoParticipantID(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_22C270514();
  sub_22C1EE01C(&unk_281076C00, type metadata accessor for TranscriptProtoParticipantID, &protocol conformance descriptor for TranscriptProtoParticipantID);
  v8 = v4;
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EDFC4();
    v8 = *v6;

    sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoParticipantID);
  }

  return v8;
}

uint64_t sub_22C1D37B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C270524();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for TranscriptProtoSpanID(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_22C270514();
  sub_22C1EE01C(&unk_28107A328, type metadata accessor for TranscriptProtoSpanID, &protocol conformance descriptor for TranscriptProtoSpanID);
  v8 = v4;
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EDFC4();
    v8 = *v6;
    sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoSpanID);
  }

  return v8;
}

uint64_t sub_22C1D3974(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoPayload(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_2810798C8, type metadata accessor for TranscriptProtoPayload, &protocol conformance descriptor for TranscriptProtoPayload);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Session.Event.Payload.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoPayload);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D3B58(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoSessionStart(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_2810773C0, type metadata accessor for TranscriptProtoSessionStart, &protocol conformance descriptor for TranscriptProtoSessionStart);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    SessionStart.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoSessionStart);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D3D3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v6 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C26EA34();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_22C270524();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = v18 - v15;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910698, type metadata accessor for TranscriptProtoDeviceDetails, &protocol conformance descriptor for TranscriptProtoDeviceDetails);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v18[1] = *v13;

  sub_22C101398();
  sub_22C26EA14();
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
  sub_22C26EA44();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoDeviceDetails);
  return sub_22C1EE0BC(v16, type metadata accessor for TranscriptProtoDeviceDetails);
}

uint64_t sub_22C1D402C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910680, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType, &protocol conformance descriptor for TranscriptProtoDeviceDetailsDeviceType);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  sub_22C26EA14();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
}

uint64_t sub_22C1D4228@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = sub_22C26E244();
  MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22C270524();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v17 - v13;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&unk_281075FE0, type metadata accessor for TranscriptProtoLocaleSettings, &protocol conformance descriptor for TranscriptProtoLocaleSettings);
  v15 = v21;
  sub_22C270734();
  if (v15)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C26E1E4();

  sub_22C26E1E4();

  sub_22C26E1E4();
  sub_22C26EC54();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoLocaleSettings);
  return sub_22C1EE0BC(v14, type metadata accessor for TranscriptProtoLocaleSettings);
}

uint64_t sub_22C1D4508(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoGenderSettings(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910668, type metadata accessor for TranscriptProtoGenderSettings, &protocol conformance descriptor for TranscriptProtoGenderSettings);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  GenderSettings.init(transcript:)();
  sub_22BE29DD4(a1, a2);
  return sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoGenderSettings);
}

uint64_t sub_22C1D46F4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F388, type metadata accessor for TranscriptProtoDateTimeContext, &protocol conformance descriptor for TranscriptProtoDateTimeContext);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    DateTimeContext.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoDateTimeContext);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D48D8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoUserTurnStarted(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F3A0, type metadata accessor for TranscriptProtoUserTurnStarted, &protocol conformance descriptor for TranscriptProtoUserTurnStarted);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    UserTurnStarted.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoUserTurnStarted);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D4ABC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v27 = a3;
  v5 = sub_22BE5CE4C(&qword_27D90E4F0, &qword_22C2CC7E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C270524();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = type metadata accessor for TranscriptProtoUserTurn(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F3B8, type metadata accessor for TranscriptProtoUserTurn, &protocol conformance descriptor for TranscriptProtoUserTurn);
  v18 = v31;
  sub_22C270734();
  if (v18)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v20 = v27;
  sub_22C1EE064();
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    sub_22BE33928(v7, &qword_27D90E4F0, &qword_22C2CC7E0);
    *&v28 = v8;
    sub_22BE5CE4C(&qword_27D9155D0, &qword_22C2CC7E8);
    v21 = sub_22C273074();
    v23 = v22;
    sub_22C108598();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0;
    swift_willThrow();
    sub_22BE29DD4(a1, a2);
    sub_22C1EE0BC(v14, type metadata accessor for TranscriptProtoUserTurn);
    return sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoUserTurn);
  }

  else
  {
    sub_22BE29DD4(a1, a2);
    sub_22C1EE0BC(v14, type metadata accessor for TranscriptProtoUserTurn);
    sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoUserTurn);
    sub_22C1EDFC4();
    v25 = swift_getEnumCaseMultiPayload() == 1;
    result = sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoUserTurnEnum);
    *v20 = v25;
  }

  return result;
}

uint64_t sub_22C1D4E84(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C270524();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for TranscriptProtoUserTurnSpeech(0);
  MEMORY[0x28223BE20](v4);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F3D0, type metadata accessor for TranscriptProtoUserTurnSpeech, &protocol conformance descriptor for TranscriptProtoUserTurnSpeech);
  result = sub_22C270734();
  if (!v2)
  {
    return sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoUserTurnSpeech);
  }

  return result;
}

uint64_t sub_22C1D4FF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C270524();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for TranscriptProtoUserTurnText(0);
  MEMORY[0x28223BE20](v4);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F3E8, type metadata accessor for TranscriptProtoUserTurnText, &protocol conformance descriptor for TranscriptProtoUserTurnText);
  result = sub_22C270734();
  if (!v2)
  {
    return sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoUserTurnText);
  }

  return result;
}

uint64_t sub_22C1D515C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoSpeechPartialResult(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v20 - v12;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F400, type metadata accessor for TranscriptProtoSpeechPartialResult, &protocol conformance descriptor for TranscriptProtoSpeechPartialResult);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v16 = *v10;
  v15 = v10[1];

  sub_22C0F28E0(v17);
  v19 = v18;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoSpeechPartialResult);
  result = sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoSpeechPartialResult);
  *a3 = v16;
  a3[1] = v15;
  a3[2] = v19;
  return result;
}

uint64_t sub_22C1D5384(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoRequest(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F418, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Request.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoRequest);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D5568(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoRequestContent(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RequestContent.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoRequestContent);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D574C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C270524();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  MEMORY[0x28223BE20](v4);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F450, type metadata accessor for TranscriptProtoRequestContentStopContent, &protocol conformance descriptor for TranscriptProtoRequestContentStopContent);
  result = sub_22C270734();
  if (!v2)
  {
    return sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoRequestContentStopContent);
  }

  return result;
}

uint64_t sub_22C1D58B8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v28 = a3;
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v32 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22C26E684();
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C270524();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  MEMORY[0x28223BE20](v12);
  v14 = (v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = v24 - v16;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&unk_28107DC10, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v26 = v8;
  sub_22C1EE064();
  v20 = *v14;
  v19 = v14[1];

  sub_22C1026C4();
  v25 = v20;
  v21 = v32;
  v24[3] = *v32;

  sub_22C26E664();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v21, type metadata accessor for TranscriptProtoStatementID);
  sub_22C1EE0BC(v14, type metadata accessor for TranscriptProtoRequestContentTextContent);
  sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoRequestContentTextContent);
  v22 = v28;
  *v28 = v25;
  *(v22 + 1) = v19;
  v23 = type metadata accessor for RequestContent.TextContent(0);
  return (*(v27 + 32))(&v22[*(v23 + 20)], v10, v26);
}

uint64_t sub_22C1D5C5C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F470, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RequestContent.SpeechContent.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D5E40(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F488, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C0F22C8(v13, v14, v15, v16, v17, v18, v19, v20, *&v21[0], *(&v21[0] + 1));
  sub_22C26EAD4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoSpeechPackage);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoSpeechPackage);
}

uint64_t sub_22C1D604C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90E5C8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Phrase);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C0F25D4(v13, v14, v15, v16, v17, v18, v19, v20, *&v21[0], *(&v21[0] + 1));
  sub_22C26EAD4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
}

uint64_t sub_22C1D6258(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
  MEMORY[0x28223BE20](v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90E5D8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Interpretation);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C0F28E0(v13);
  sub_22C26EAD4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
}

uint64_t sub_22C1D6464(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90E518, type metadata accessor for TranscriptProtoSpeechPackage.Token, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Token);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();

  sub_22C26EB24();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoSpeechPackage.Token);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoSpeechPackage.Token);
}

uint64_t sub_22C1D669C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_281072DC0, type metadata accessor for TranscriptProtoExternalAgentRequest, &protocol conformance descriptor for TranscriptProtoExternalAgentRequest);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ExternalAgentRequest.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoExternalAgentRequest);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D6880(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F4F0, type metadata accessor for TranscriptProtoRequestPrescribedPlan, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlan);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RequestPrescribedPlan.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D6A64@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  MEMORY[0x28223BE20](v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F508, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanSearchTool);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = *(v8 + 1);
    v13 = v8[16];
    v14 = v8[17];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
    *a3 = v12;
    *(a3 + 8) = v11;
    *(a3 + 16) = v13;
    *(a3 + 17) = v14;
  }

  return result;
}

uint64_t sub_22C1D6C3C@<X0>(void *a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F520, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = v8[1];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    *a3 = v12;
    a3[1] = v11;
  }

  return result;
}

uint64_t sub_22C1D6E04@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F538, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanTextTool);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = *(v8 + 1);
    v13 = v8[16];
    v15 = *(v8 + 3);
    v14 = *(v8 + 4);

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    *a3 = v12;
    *(a3 + 8) = v11;
    *(a3 + 16) = v13;
    *(a3 + 24) = v15;
    *(a3 + 32) = v14;
  }

  return result;
}

uint64_t sub_22C1D6FE4@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F550, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanConvertTool);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = *(v8 + 1);
    v13 = v8[16];
    v15 = *(v8 + 3);
    v14 = *(v8 + 4);
    v16 = *(v8 + 6);
    v19 = *(v8 + 5);

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
    *a3 = v12;
    *(a3 + 8) = v11;
    *(a3 + 16) = v13;
    *(a3 + 24) = v15;
    *(a3 + 32) = v14;
    *(a3 + 40) = v19;
    *(a3 + 48) = v16;
  }

  return result;
}

uint64_t sub_22C1D71E4@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F568, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = *(v8 + 1);
    v13 = v8[16];
    v15 = *(v8 + 3);
    v14 = *(v8 + 4);

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    *a3 = v12;
    *(a3 + 8) = v11;
    *(a3 + 16) = v13;
    *(a3 + 24) = v15;
    *(a3 + 32) = v14;
  }

  return result;
}

uint64_t sub_22C1D73C4@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F580, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = *(v8 + 1);
    v13 = v8[16];
    v15 = *(v8 + 3);
    v14 = *(v8 + 4);

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    *a3 = v12;
    *(a3 + 8) = v11;
    *(a3 + 16) = v13;
    *(a3 + 24) = v15;
    *(a3 + 32) = v14;
  }

  return result;
}

uint64_t sub_22C1D75A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22C26E684();
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v9 = sub_22C270524();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  MEMORY[0x28223BE20](v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v23 - v14;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F598, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenTool);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v24 = v8;
  sub_22C1EE064();
  sub_22C1026C4();
  v17 = v30;
  v23[1] = *v30;

  sub_22C26E664();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoStatementID);
  sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  v18 = &v12[*(v10 + 20)];
  v19 = *v18;
  v20 = v18[8];
  sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  v22 = v26 + *(type metadata accessor for RequestPrescribedPlan.OpenTool(0) + 20);
  result = (*(v25 + 32))();
  *v22 = v21;
  *(v22 + 8) = v20;
  return result;
}

uint64_t sub_22C1D7948@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  MEMORY[0x28223BE20](v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F5B0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v11 = *v8;
    v12 = v8[8];
    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    *a3 = v13;
    *(a3 + 8) = v12;
  }

  return result;
}

uint64_t sub_22C1D7B18@<X0>(void *a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F438, type metadata accessor for TranscriptProtoRequestSuggestedInvocation, &protocol conformance descriptor for TranscriptProtoRequestSuggestedInvocation);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = v8[1];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
    *a3 = v12;
    a3[1] = v11;
  }

  return result;
}

uint64_t sub_22C1D7CE0(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Action.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, v24, v25, v26, v27, v28, v29);
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoAction);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D7EC4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoActionCancellation(0);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F5E8, type metadata accessor for TranscriptProtoActionCancellation, &protocol conformance descriptor for TranscriptProtoActionCancellation);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionCancellation.init(transcript:)();
    sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoActionCancellation);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D80A8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoClientAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F710, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ClientAction.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoClientAction);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D828C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoShimParameter(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90E790, type metadata accessor for TranscriptProtoShimParameter, &protocol conformance descriptor for TranscriptProtoShimParameter);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ClientAction.ShimParameter.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], SDWORD2(v20[0]), SWORD6(v20[0]), SBYTE14(v20[0]), SHIBYTE(v20[0]));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoShimParameter);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D8470@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22BE5CE4C(&qword_27D90E7A8, &unk_22C2B5C40);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22C270524();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = type metadata accessor for TranscriptProtoPersonQuery(0);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v22 - v13;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F760, type metadata accessor for TranscriptProtoPersonQuery, &protocol conformance descriptor for TranscriptProtoPersonQuery);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v16 = *(v11 + 2);
  v24 = *(v11 + 1);
  sub_22BE22868();

  sub_22C0FE2E8();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v14, type metadata accessor for TranscriptProtoPersonQuery);
  v17 = v22[0];
  v18 = *v11;
  v19 = &v11[*(v9 + 28)];
  v21 = *v19;
  v20 = *(v19 + 1);

  result = sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoPersonQuery);
  *a3 = v24;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 17) = v18;
  *(a3 + 24) = v21;
  *(a3 + 32) = v20;
  return result;
}

uint64_t sub_22C1D876C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F7A0, type metadata accessor for TranscriptProtoPhotosCandidates, &protocol conformance descriptor for TranscriptProtoPhotosCandidates);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v16 = *(v10 + 1);
  v15 = *(v10 + 2);

  sub_22C0F2F3C(v17, v18, v19, v20, v21, v22, v23, v24);
  v26 = v25;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoPhotosCandidates);
  result = sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoPhotosCandidates);
  *a3 = v16;
  a3[1] = v15;
  a3[2] = v26;
  return result;
}

uint64_t sub_22C1D89DC@<X0>(_BYTE *a3@<X8>)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  MEMORY[0x28223BE20](v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F778, type metadata accessor for TranscriptProtoPersonQuery.Handle, &protocol conformance descriptor for TranscriptProtoPersonQuery.Handle);
  result = sub_22C270734();
  if (!v3)
  {
    sub_22C1EDFC4();
    v11 = *v8;
    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoPersonQuery.Handle);
    *a3 = v11;
  }

  return result;
}

uint64_t sub_22C1D8B9C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  MEMORY[0x28223BE20](v5 - 8);
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  MEMORY[0x28223BE20](Step);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FB40, type metadata accessor for TranscriptProtoQueryStep, &protocol conformance descriptor for TranscriptProtoQueryStep);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    QueryStep.init(transcript:)(v8, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1));
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoQueryStep);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D8D80@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v68 = a3;
  v80 = sub_22C272874();
  v83 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v81 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v79 = &v64 - v7;
  v93 = sub_22C272594();
  v82 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  v16 = sub_22C270524();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v22 = &v64 - v21;
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FB70, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery, &protocol conformance descriptor for TranscriptProtoQueryPayload.SearchToolQuery);
  v23 = v88;
  sub_22C270734();
  if (v23)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v88 = 0;
  v89 = v15;
  v77 = v12;
  v78 = v9;
  v64 = a1;
  v65 = a2;
  sub_22C1EE064();
  v67 = v19;
  v25 = *v19;
  sub_22BE5CE4C(&qword_27D9155C8, &unk_22C2CC7D0);
  result = sub_22C273D04();
  v26 = 0;
  v27 = *(v25 + 64);
  v66 = v25 + 64;
  v75 = v25;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v31 = (v28 + 63) >> 6;
  v32 = v82;
  v73 = v82 + 16;
  v74 = (v82 + 8);
  v71 = v83 + 32;
  v70 = result + 64;
  v72 = v22;
  v69 = v31;
  v76 = result;
  while (1)
  {
    v33 = v89;
    v34 = v78;
    if (!v30)
    {
      break;
    }

    v35 = v77;
    v36 = __clz(__rbit64(v30));
    v84 = (v30 - 1) & v30;
LABEL_13:
    v40 = v36 | (v26 << 6);
    v41 = *(v75 + 56);
    v42 = (*(v75 + 48) + 16 * v40);
    v43 = v42[1];
    v85 = *v42;
    v86 = v40;
    v44 = *(v32 + 16);
    v45 = v93;
    v44(v89, v41 + *(v32 + 72) * v40, v93);
    v44(v35, v33, v45);
    v44(v34, v35, v45);
    v87 = v43;

    v46 = v81;
    v47 = v88;
    sub_22C272864();
    if (v47)
    {
      v62 = *v74;
      v63 = v93;
      (*v74)(v35, v93);

      v62(v33, v63);
      sub_22BE29DD4(v64, v65);
      sub_22C1EE0BC(v72, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
      return sub_22C1EE0BC(v67, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
    }

    v88 = 0;
    v48 = *v74;
    v49 = v93;
    (*v74)(v35, v93);
    v50 = v83;
    v51 = *(v83 + 32);
    v52 = v79;
    v53 = v46;
    v54 = v80;
    v51(v79, v53, v80);
    v48(v89, v49);
    v55 = v86;
    *(v70 + ((v86 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v86;
    v56 = v76;
    v57 = (*(v76 + 48) + 16 * v55);
    v58 = v87;
    *v57 = v85;
    v57[1] = v58;
    result = (v51)(*(v56 + 56) + *(v50 + 72) * v55, v52, v54);
    v59 = *(v56 + 16);
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_20;
    }

    *(v56 + 16) = v61;
    v32 = v82;
    v22 = v72;
    v31 = v69;
    v30 = v84;
  }

  v37 = v26;
  v38 = v67;
  while (1)
  {
    v26 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v26 >= v31)
    {
      sub_22BE29DD4(v64, v65);
      sub_22C1EE0BC(v22, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
      result = sub_22C1EE0BC(v38, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
      *v68 = v76;
      return result;
    }

    v39 = *(v66 + 8 * v26);
    ++v37;
    if (v39)
    {
      v35 = v77;
      v36 = __clz(__rbit64(v39));
      v84 = (v39 - 1) & v39;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}