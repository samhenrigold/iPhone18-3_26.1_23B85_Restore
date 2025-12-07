uint64_t sub_1DC3A9218(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1DC3AC0B0(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC60, &qword_1DC524898);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B8, &unk_1DC522F90);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DC3AC0B0((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DC3A9344(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1DC33F29C(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B8, &unk_1DC522F90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC68, &unk_1DC5248A0);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DC33F29C((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1DC3A9470()
{
  OUTLINED_FUNCTION_33();
  v130 = v2;
  v131 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  v120 = &v119 - v5;
  v6 = OUTLINED_FUNCTION_12();
  v7 = type metadata accessor for NLRouterTurnContext(v6);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v119 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v123 = v13;
  OUTLINED_FUNCTION_22();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v119 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v119 - v18;
  v20 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v126 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  v121 = v23;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23_1();
  v124 = v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23_1();
  v122 = v27;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_23_1();
  v125 = v29;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_32_11();
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v128 = v32;
  v129 = v31;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1();
  v35 = v34 - v33;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v36 = sub_1DC2BE518();
  v37 = OUTLINED_FUNCTION_130();
  v127 = v35;
  sub_1DC2A2ED0("HeuristicRules.MultiTurnHeuristicRule", 37, 2, v36, v37 & 1, v35);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v38 = sub_1DC345DF4();
  v40 = v39;
  v42 = v38 == sub_1DC312FB4(0) && v40 == v41;
  if (v42)
  {

    goto LABEL_13;
  }

  v43 = sub_1DC51825C();

  if (v43)
  {
    goto LABEL_13;
  }

  v44 = sub_1DC345DF4();
  v46 = sub_1DC312F68(v44, v45);
  if (v46 == 4)
  {
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v20);
LABEL_11:
    v50 = &qword_1ECC7CA40;
    v51 = &unk_1DC5233A0;
    v52 = v19;
LABEL_12:
    sub_1DC28EB30(v52, v50, v51);
    goto LABEL_13;
  }

  sub_1DC312E7C(v46, v19);
  OUTLINED_FUNCTION_39(v19, 1, v20);
  if (v42)
  {
    goto LABEL_11;
  }

  v105 = v126;
  v106 = *(v126 + 32);
  v106(v0, v19, v20);
  v107 = type metadata accessor for NLRouterServiceRequest(0);
  v108 = v120;
  sub_1DC28F358(&v131[*(v107 + 20)], v120, &qword_1ECC7BFD0, &unk_1DC522550);
  v109 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v109, v110, v7);
  if (v111)
  {
    (*(v105 + 8))(v0, v20);
    v50 = &qword_1ECC7BFD0;
    v51 = &unk_1DC522550;
    v52 = v108;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_18();
  sub_1DC3ABF98(v108, v119, v112);
  type metadata accessor for NLRouterBypassUtils();
  sub_1DC309850();
  if ((v113 & 1) != 0 && !*(*&v131[*(v107 + 24)] + 16))
  {
    sub_1DC517B9C();
    v114 = OUTLINED_FUNCTION_31_4();
    v115 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v115, v116, v117, v118, 64, 2);

    OUTLINED_FUNCTION_2_24();
    sub_1DC3AC428();
    v69 = v130;
    v106(v130, v0, v20);
LABEL_29:
    v68 = 0;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_2_24();
  sub_1DC3AC428();
  (*(v126 + 8))(v0, v20);
LABEL_13:
  v53 = *&v131[*(type metadata accessor for NLRouterServiceRequest(0) + 24)];
  v54 = *(v53 + 16);
  if (v54)
  {
    v55 = (v53 + 48 * v54);
    v56 = *(v55 - 1);
    v57 = *(v55 + 2);
    v58 = *(v55 + 24);
    v132[0] = *(v55 - 2);
    v132[1] = v56;
    v133 = *v55;
    v134 = v57;
    v135 = v58;
    sub_1DC3A9D88();
    OUTLINED_FUNCTION_39(v17, 1, v20);
    if (!v42)
    {
      v70 = v125;
      v71 = v126;
      v72 = *(v126 + 32);
      v72(v125, v17, v20);
      v73 = sub_1DC517B9C();
      v74 = sub_1DC2BE518();
      (*(v71 + 16))(v122, v70, v20);
      if (os_log_type_enabled(v74, v73))
      {
        v76 = OUTLINED_FUNCTION_63();
        v132[0] = swift_slowAlloc();
        *v76 = 136315138;
        v77 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
        LODWORD(v131) = v73;
        v78 = v72;
        v79 = v77;
        v81 = v80;
        v82 = OUTLINED_FUNCTION_56_0();
        v83(v82);
        v84 = v79;
        v72 = v78;
        v85 = sub_1DC291244(v84, v81, v132);

        *(v76 + 4) = v85;
        _os_log_impl(&dword_1DC287000, v74, v131, "[MultiTurnHeuristicRule] This is an SDA followup, returning %s", v76, 0xCu);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_66();
      }

      else
      {

        v99 = OUTLINED_FUNCTION_56_0();
        v100(v99);
      }

      v69 = v130;
      v72(v130, v125, v20);
      goto LABEL_29;
    }

    sub_1DC28EB30(v17, &qword_1ECC7CA40, &unk_1DC5233A0);
    v59 = v123;
    sub_1DC3AA4F8();
    v60 = OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_39(v60, v61, v20);
    v62 = v126;
    if (!v42)
    {
      v86 = *(v126 + 32);
      v87 = v124;
      v86(v124, v59, v20);
      v88 = sub_1DC517B9C();
      v89 = sub_1DC2BE518();
      (*(v62 + 16))(v121, v87, v20);
      if (os_log_type_enabled(v89, v88))
      {
        v91 = OUTLINED_FUNCTION_63();
        v131 = v86;
        v92 = v91;
        v132[0] = swift_slowAlloc();
        *v92 = 136315138;
        v93 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
        v95 = v94;
        v96 = OUTLINED_FUNCTION_56_0();
        v97(v96);
        v98 = sub_1DC291244(v93, v95, v132);

        *(v92 + 4) = v98;
        _os_log_impl(&dword_1DC287000, v89, v88, "[MultiTurnHeuristicRule] This is a planner followup, returning %s", v92, 0xCu);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_66();
        v86 = v131;
        OUTLINED_FUNCTION_66();
      }

      else
      {

        v101 = OUTLINED_FUNCTION_56_0();
        v102(v101);
      }

      v69 = v130;
      v86(v130, v124, v20);
      goto LABEL_29;
    }

    sub_1DC28EB30(v59, &qword_1ECC7CA40, &unk_1DC5233A0);
  }

  else
  {
    sub_1DC517B9C();
    v63 = OUTLINED_FUNCTION_31_4();
    v64 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v64, v65, v66, v67, 55, 2);
  }

  v68 = 1;
  v69 = v130;
LABEL_30:
  __swift_storeEnumTagSinglePayload(v69, v68, 1, v20);
  v103 = sub_1DC2BE518();
  v104 = v127;
  sub_1DC2B8848(v127, "HeuristicRules.MultiTurnHeuristicRule", 37, 2, v103);

  (*(v128 + 8))(v104, v129);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3A9D88()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v93 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v90 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_35_13();
  v13 = type metadata accessor for TurnSummary.ExecutionSource(v12);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v91 = v15;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  v92 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v18);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v90 - v20;
  v22 = type metadata accessor for NLRouterTurnContext(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = *(v2 + 32);
  v28 = *(type metadata accessor for NLRouterServiceRequest(0) + 20);
  v90 = v4;
  sub_1DC28F358(v4 + v28, v21, &qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_39(v21, 1, v22);
  if (!v37)
  {
    OUTLINED_FUNCTION_12_18();
    sub_1DC3ABF98(v21, v26, v29);
    sub_1DC3AB2F0();
    if (v30)
    {
      sub_1DC2D8C78(v27, v9);
      v31 = type metadata accessor for TurnSummary(0);
      OUTLINED_FUNCTION_39(v9, 1, v31);
      if (v37)
      {
        sub_1DC28EB30(v9, &qword_1ECC7BFC0, &unk_1DC522540);
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v32, v33, v34, v13);
      }

      else
      {
        sub_1DC28F358(&v9[*(v31 + 28)], v0, &qword_1ECC7BFC8, &unk_1DC524050);
        sub_1DC3AC428();
        v35 = OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_39(v35, v36, v13);
        if (!v37)
        {
          OUTLINED_FUNCTION_13_17();
          v47 = v92;
          sub_1DC3ABF98(v0, v92, v48);
          v49 = v91;
          sub_1DC3AC47C(v47, v91, type metadata accessor for TurnSummary.ExecutionSource);
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 4, v50);
          if ((EnumTagSinglePayload - 2) < 2)
          {
            sub_1DC517BAC();
            sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
            v52 = sub_1DC2BE518();
            v53 = OUTLINED_FUNCTION_40_1();
            sub_1DC516F0C(v53, v54, v55, v56, 76, 2);

            OUTLINED_FUNCTION_0_41();
            sub_1DC3AC428();
            OUTLINED_FUNCTION_2_24();
            sub_1DC3AC428();
            v57 = MEMORY[0x1E69D02F8];
LABEL_34:
            v86 = *v57;
            v87 = sub_1DC5157EC();
            OUTLINED_FUNCTION_35();
            v89 = v93;
            (*(v88 + 104))(v93, v86, v87);
            v43 = v89;
            v44 = 0;
            v45 = 1;
            v46 = v87;
            goto LABEL_13;
          }

          if (EnumTagSinglePayload != 1)
          {
            sub_1DC517BAC();
            sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
            v76 = sub_1DC2BE518();
            v77 = OUTLINED_FUNCTION_40_1();
            sub_1DC516F0C(v77, v78, v79, v80, 90, 2);

            sub_1DC3AC428();
            OUTLINED_FUNCTION_2_24();
            sub_1DC3AC428();
            sub_1DC5157EC();
            OUTLINED_FUNCTION_19();
            __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
            sub_1DC3AC428();
            goto LABEL_14;
          }

          sub_1DC517BAC();
          sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
          v58 = sub_1DC2BE518();
          v59 = OUTLINED_FUNCTION_40_1();
          sub_1DC516F0C(v59, v60, v61, v62, 74, 2);

          type metadata accessor for HeuristicRoutingRequest(0);
          v63 = v90;
          if ((sub_1DC51577C() & 1) == 0)
          {
            sub_1DC517B9C();
            v70 = OUTLINED_FUNCTION_31_4();
            v71 = OUTLINED_FUNCTION_40_1();
            v75 = 100;
            goto LABEL_33;
          }

          type metadata accessor for NLRouterBypassUtils();
          if ((sub_1DC309474(v63) & 1) == 0)
          {
            goto LABEL_25;
          }

          sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
          v64 = sub_1DC346164();
          v66 = v65;
          if (v64 == sub_1DC313520(1) && v66 == v67)
          {
          }

          else
          {
            v69 = sub_1DC51825C();

            if ((v69 & 1) == 0)
            {
LABEL_25:
              if (sub_1DC309808())
              {
                sub_1DC517B9C();
                v70 = OUTLINED_FUNCTION_31_4();
                v71 = OUTLINED_FUNCTION_40_1();
                v75 = 89;
LABEL_33:
                sub_1DC516F0C(v71, v72, v73, v74, v75, 2);

                OUTLINED_FUNCTION_0_41();
                sub_1DC3AC428();
                OUTLINED_FUNCTION_2_24();
                sub_1DC3AC428();
                v57 = MEMORY[0x1E69D02D8];
                goto LABEL_34;
              }

              sub_1DC32BBE0();
              if (v85)
              {
                sub_1DC517B9C();
                v70 = OUTLINED_FUNCTION_31_4();
                v71 = OUTLINED_FUNCTION_40_1();
                v75 = 92;
                goto LABEL_33;
              }

              OUTLINED_FUNCTION_0_41();
              sub_1DC3AC428();
              goto LABEL_11;
            }
          }

          sub_1DC517B9C();
          v70 = OUTLINED_FUNCTION_31_4();
          v71 = OUTLINED_FUNCTION_40_1();
          v75 = 79;
          goto LABEL_33;
        }
      }

      sub_1DC28EB30(v0, &qword_1ECC7BFC8, &unk_1DC524050);
      sub_1DC517BAC();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v38 = sub_1DC2BE518();
      v39 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v39, v40, v41, v42, 79, 2);
    }

LABEL_11:
    OUTLINED_FUNCTION_2_24();
    sub_1DC3AC428();
    goto LABEL_12;
  }

  sub_1DC28EB30(v21, &qword_1ECC7BFD0, &unk_1DC522550);
LABEL_12:
  sub_1DC5157EC();
  OUTLINED_FUNCTION_19();
LABEL_13:
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
LABEL_14:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3AA4F8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v173 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v166 = v6;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v167 = v8;
  OUTLINED_FUNCTION_12();
  v9 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v165 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v162 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  v163 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_1();
  v161 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  v164 = v18;
  OUTLINED_FUNCTION_12();
  v175 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v171 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v174 = v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v169 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v24);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v159 - v26;
  v28 = type metadata accessor for TurnSummary.ExecutionSource(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  v168 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v32);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v159 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v36);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v37);
  v38 = OUTLINED_FUNCTION_35_13();
  v39 = type metadata accessor for NLRouterNLParseResponse(v38);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_1();
  v172 = (v42 - v41);
  v43 = OUTLINED_FUNCTION_12();
  v44 = type metadata accessor for NLRouterServiceRequest(v43);
  v45 = *(v44 + 32);
  v170 = v2;
  sub_1DC28F358(v2 + v45, v35, &qword_1ECC7C158, &unk_1DC5234A0);
  v46 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v35, 1, v46);
  if (v52)
  {
    sub_1DC28EB30(v35, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v39);
  }

  else
  {
    sub_1DC28F358(v35, v0, &qword_1ECC7C160, qword_1DC5233B0);
    sub_1DC3AC428();
    v50 = OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_39(v50, v51, v39);
    if (!v52)
    {
      sub_1DC3ABF98(v0, v172, type metadata accessor for NLRouterNLParseResponse);
      type metadata accessor for NLRouterBypassUtils();
      sub_1DC308134(*(v170 + *(v44 + 24)), v27);
      OUTLINED_FUNCTION_39(v27, 1, v28);
      v58 = v9;
      if (v57)
      {
        OUTLINED_FUNCTION_1_29();
        sub_1DC3AC428();
        sub_1DC28EB30(v27, &qword_1ECC7BFC8, &unk_1DC524050);
LABEL_52:
        v53 = v173;
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_13_17();
      v59 = v168;
      v61 = sub_1DC3ABF98(v27, v168, v60);
      if (qword_1ECC815C0 != -1)
      {
LABEL_76:
        v61 = OUTLINED_FUNCTION_15_11(&qword_1ECC815C0);
      }

      MEMORY[0x1EEE9AC00](v61);
      v159[-2] = v59;
      if (!sub_1DC3AB458(sub_1DC3AC3B0, &v159[-4], v62))
      {
        OUTLINED_FUNCTION_1_29();
        sub_1DC3AC428();
        OUTLINED_FUNCTION_0_41();
LABEL_51:
        sub_1DC3AC428();
        goto LABEL_52;
      }

      v159[1] = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
      v63 = sub_1DC3457F4();
      v65 = v64;
      v67 = v63 == sub_1DC312FB4(0) && v65 == v66;
      v160 = v58;
      if (v67)
      {
      }

      else
      {
        v68 = sub_1DC51825C();

        if ((v68 & 1) == 0)
        {
          v69 = 0;
          v70 = *v172;
          v71 = *(*v172 + 16);
          v159[2] = v171 + 16;
          v72 = v171;
          v35 = v175;
          do
          {
            if (v71 == v69)
            {
              goto LABEL_25;
            }

            if (v69 >= *(v70 + 16))
            {
              __break(1u);
              goto LABEL_76;
            }

            v59 = v58;
            OUTLINED_FUNCTION_24();
            v74 = v169;
            (*(v72 + 16))(v169, v70 + v73 + *(v72 + 72) * v69++, v35);
            sub_1DC5111AC();
            sub_1DC3AB52C();
            v76 = v75;

            (*(v72 + 8))(v74, v35);
            v58 = v59;
          }

          while ((v76 & 1) == 0);
          v77 = sub_1DC3457F4();
          v79 = sub_1DC312F68(v77, v78);
          if (v79 == 4)
          {
            v80 = v167;
            OUTLINED_FUNCTION_19();
            __swift_storeEnumTagSinglePayload(v81, v82, v83, v59);
LABEL_59:
            sub_1DC28EB30(v80, &qword_1ECC7CA40, &unk_1DC5233A0);
            goto LABEL_25;
          }

          v80 = v167;
          sub_1DC312E7C(v79, v167);
          OUTLINED_FUNCTION_39(v80, 1, v59);
          if (v52)
          {
            goto LABEL_59;
          }

          v136 = v164;
          v135 = v165;
          v137 = *(v165 + 32);
          v137(v164, v80, v59);
          type metadata accessor for HeuristicRoutingRequest(0);
          sub_1DC32FD38();
          if ((v138 & 1) == 0)
          {
            (*(v135 + 8))(v136, v59);
            goto LABEL_25;
          }

          v139 = sub_1DC517B9C();
          sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
          v140 = sub_1DC2BE518();
          v141 = v161;
          (*(v135 + 16))(v161, v136, v59);
          if (os_log_type_enabled(v140, v139))
          {
            OUTLINED_FUNCTION_63();
            v176[0] = OUTLINED_FUNCTION_36_14();
            *v135 = 136315138;
            v142 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
            v144 = v143;
            (*(v35 + 8))(v141, v160);
            v145 = sub_1DC291244(v142, v144, v176);
            v136 = v164;

            *(v135 + 4) = v145;
            _os_log_impl(&dword_1DC287000, v140, v139, "[MultiTurnHeuristicRule] Planner followup with ordinal reference routing to: %s", v135, 0xCu);
            OUTLINED_FUNCTION_37_8();
            v58 = v160;
            OUTLINED_FUNCTION_66();
            OUTLINED_FUNCTION_66();
          }

          else
          {

            (*(v135 + 8))(v141, v59);
          }

          goto LABEL_74;
        }
      }

LABEL_25:
      v84 = *v172;
      v85 = *(*v172 + 16);
      v86 = MEMORY[0x1E69E7CC0];
      if (v85)
      {
        v176[0] = MEMORY[0x1E69E7CC0];
        sub_1DC3AC0D0(0, v85, 0);
        v86 = v176[0];
        v171 = *(v171 + 16);
        OUTLINED_FUNCTION_24();
        v88 = v84 + v87;
        v90 = *(v89 + 56);
        v35 = v89;
        v91 = (v89 - 8);
        do
        {
          v93 = v174;
          v92 = v175;
          (v171)(v174, v88, v175);
          sub_1DC5111AC();
          sub_1DC3AB944();
          v95 = v94;

          (*v91)(v93, v92);
          v176[0] = v86;
          v97 = *(v86 + 16);
          v96 = *(v86 + 24);
          v98 = v97 + 1;
          if (v97 >= v96 >> 1)
          {
            v100 = OUTLINED_FUNCTION_23_18(v96);
            sub_1DC3AC0D0(v100, v97 + 1, 1);
            v86 = v176[0];
          }

          *(v86 + 16) = v98;
          v99 = (v86 + 3 * v97);
          v99[32] = v95 & 1;
          v99[33] = BYTE1(v95) & 1;
          v99[34] = (v95 & 0xFFFF0000) != 0;
          v88 += v90;
          --v85;
        }

        while (v85);
        v58 = v160;
      }

      else
      {
        v98 = *(MEMORY[0x1E69E7CC0] + 16);
        v101 = MEMORY[0x1E69E7CC0];
        if (!v98)
        {
LABEL_41:

          if (*(v101 + 16))
          {
            v110 = *(v101 + 33);
            v111 = *(v101 + 34);

            if (v110 == 1)
            {
              v112 = sub_1DC345718();
              v114 = v113;
              if (v112 == sub_1DC312FB4(0) && v114 == v115)
              {
              }

              else
              {
                v117 = sub_1DC51825C();

                if ((v117 & 1) == 0)
                {
                  v118 = sub_1DC345718();
                  v120 = sub_1DC312F68(v118, v119);
                  if (v120 == 4)
                  {
                    v121 = v166;
                    OUTLINED_FUNCTION_19();
                    __swift_storeEnumTagSinglePayload(v122, v123, v124, v160);
                  }

                  else
                  {
                    v121 = v166;
                    sub_1DC312E7C(v120, v166);
                    OUTLINED_FUNCTION_39(v121, 1, v160);
                    if (!v52)
                    {
                      v146 = v165;
                      v137 = *(v165 + 32);
                      v136 = v163;
                      v58 = v160;
                      v137(v163, v121, v160);
                      v147 = sub_1DC517B9C();
                      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
                      v148 = sub_1DC2BE518();
                      v149 = v162;
                      (*(v146 + 16))(v162, v136, v58);
                      if (os_log_type_enabled(v148, v147))
                      {
                        OUTLINED_FUNCTION_63();
                        v176[0] = OUTLINED_FUNCTION_36_14();
                        *v146 = 136315138;
                        v151 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
                        LODWORD(v175) = v147;
                        v152 = v137;
                        v153 = v151;
                        v155 = v154;
                        (*(v35 + 8))(v149, v160);
                        v156 = v153;
                        v137 = v152;
                        v157 = sub_1DC291244(v156, v155, v176);
                        v136 = v163;

                        *(v146 + 4) = v157;
                        _os_log_impl(&dword_1DC287000, v148, v175, "[MultiTurnHeuristicRule] Planner followup with supported parse, sending to %s", v146, 0xCu);
                        OUTLINED_FUNCTION_37_8();
                        v58 = v160;
                        OUTLINED_FUNCTION_66();
                        OUTLINED_FUNCTION_66();
                      }

                      else
                      {

                        (*(v146 + 8))(v149, v58);
                      }

LABEL_74:
                      OUTLINED_FUNCTION_1_29();
                      sub_1DC3AC428();
                      OUTLINED_FUNCTION_0_41();
                      sub_1DC3AC428();
                      v158 = v173;
                      v137(v173, v136, v58);
                      v53 = v158;
                      v54 = 0;
                      goto LABEL_54;
                    }
                  }

                  sub_1DC28EB30(v121, &qword_1ECC7CA40, &unk_1DC5233A0);
                }
              }
            }

            if (v111)
            {
              sub_1DC517B9C();
              sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
              v130 = sub_1DC2BE518();
              v131 = OUTLINED_FUNCTION_40_1();
              sub_1DC516F0C(v131, v132, v133, v134, 87, 2);

              OUTLINED_FUNCTION_1_29();
              sub_1DC3AC428();
              OUTLINED_FUNCTION_0_41();
              sub_1DC3AC428();
              OUTLINED_FUNCTION_19();
              v56 = v160;
              goto LABEL_55;
            }

            OUTLINED_FUNCTION_1_29();
            sub_1DC3AC428();
            OUTLINED_FUNCTION_0_41();
            sub_1DC3AC428();
            v53 = v173;
            v58 = v160;
LABEL_53:
            v54 = 1;
LABEL_54:
            v55 = 1;
            v56 = v58;
            goto LABEL_55;
          }

          sub_1DC517B9C();
          sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
          v125 = sub_1DC2BE518();
          v126 = OUTLINED_FUNCTION_40_1();
          sub_1DC516F0C(v126, v127, v128, v129, 49, 2);

          OUTLINED_FUNCTION_1_29();
          sub_1DC3AC428();
          OUTLINED_FUNCTION_0_41();
          goto LABEL_51;
        }
      }

      v102 = (v86 + 34);
      v101 = MEMORY[0x1E69E7CC0];
      do
      {
        v103 = *(v102 - 2);
        v104 = *(v102 - 1);
        v105 = *v102;
        if ((v103 & 1) != 0 || *v102)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v176[0] = v101;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DC3AC0D0(0, *(v101 + 16) + 1, 1);
            v101 = v176[0];
          }

          v35 = *(v101 + 16);
          v107 = *(v101 + 24);
          if (v35 >= v107 >> 1)
          {
            v109 = OUTLINED_FUNCTION_23_18(v107);
            sub_1DC3AC0D0(v109, v35 + 1, 1);
            v101 = v176[0];
          }

          *(v101 + 16) = v35 + 1;
          v108 = (v101 + 3 * v35);
          v108[32] = v103;
          v108[33] = v104;
          v108[34] = v105;
          v58 = v160;
        }

        v102 += 3;
        --v98;
      }

      while (v98);
      goto LABEL_41;
    }
  }

  sub_1DC28EB30(v0, &qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_19();
  v56 = v9;
LABEL_55:
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3AB2F0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_155();
  v1 = sub_1DC5119DC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = 0;
  v9 = *(v0 + 16);
  v10 = *(v9 + 16);
  while (1)
  {
    if (v10 == v8)
    {
      type metadata accessor for NLRouterBypassUtils();
      if ((sub_1DC308CDC() & 1) == 0)
      {
        sub_1DC308E38();
      }

      goto LABEL_11;
    }

    if (v8 >= *(v9 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_24();
    (*(v3 + 16))(v7, v9 + v11 + *(v3 + 72) * v8, v1);
    if (sub_1DC51194C() & 1) != 0 || (sub_1DC51191C())
    {
      v15 = OUTLINED_FUNCTION_56_0();
      v16(v15);
LABEL_11:
      OUTLINED_FUNCTION_34();
      return;
    }

    v12 = sub_1DC51195C();
    v13 = OUTLINED_FUNCTION_56_0();
    v14(v13);
    ++v8;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

BOOL sub_1DC3AB458(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for TurnSummary.ExecutionSource(0) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

void sub_1DC3AB52C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_155();
  sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12();
  v3 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v40 = v7;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32_11();
  v9 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = *(v0 + 16);
  if (!v16)
  {
LABEL_22:
    OUTLINED_FUNCTION_34();
    return;
  }

  v17 = *(v11 + 16);
  OUTLINED_FUNCTION_24();
  v19 = v0 + v18;
  v43 = (v5 + 8);
  v44 = v17;
  v39 = v1;
  v20 = *(v11 + 72);
  v41 = v20;
  v42 = v9;
  while (1)
  {
    v17(v15, v19, v9);
    if ((sub_1DC5114CC() & 1) == 0)
    {
      v23 = OUTLINED_FUNCTION_8_13();
      v24(v23, v9);
      goto LABEL_9;
    }

    sub_1DC51154C();
    v21 = sub_1DC51177C();
    v22 = *v43;
    (*v43)(v1, v3);
    if ((v21 & 1) == 0)
    {
      v25 = OUTLINED_FUNCTION_8_13();
      v9 = v42;
      v26(v25, v42);
      v17 = v44;
LABEL_8:
      v20 = v41;
      goto LABEL_9;
    }

    sub_1DC51154C();
    sub_1DC51178C();
    v22(v40, v3);
    v27 = sub_1DC5138FC();
    v28 = OUTLINED_FUNCTION_34_12();
    v29(v28);
    v30 = MEMORY[0x1E1292F90](v27);
    v31 = v30;
    v9 = v42;
    v17 = v44;
    if (v30 >> 62)
    {
      v32 = sub_1DC51802C();
    }

    else
    {
      v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v1 = v39;
    if (!v32)
    {
      v37 = OUTLINED_FUNCTION_8_13();
      v38(v37, v42);

      goto LABEL_8;
    }

    if ((v31 & 0xC000000000000001) == 0)
    {
      break;
    }

    MEMORY[0x1E1296800](0, v31);
LABEL_17:

    type metadata accessor for NLRouterBypassUtils();
    sub_1DC309998();
    v34 = v33;

    v35 = OUTLINED_FUNCTION_8_13();
    v36(v35, v42);
    v20 = v41;
    if (v34)
    {
      goto LABEL_22;
    }

LABEL_9:
    v19 += v20;
    if (!--v16)
    {
      goto LABEL_22;
    }
  }

  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_17;
  }

  __break(1u);
}

void sub_1DC3AB944()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_155();
  sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12();
  v2 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v41 = v6;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v44 = v8;
  OUTLINED_FUNCTION_12();
  v45 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v50 = *(v0 + 16);
  if (v50)
  {
    v40 = 0;
    v42 = 0;
    v15 = 0;
    v43 = (v4 + 8);
    v16 = v10 + 16;
    OUTLINED_FUNCTION_24();
    v48 = v0 + v17;
    v49 = v18;
    v46 = *(v16 + 56);
    v47 = (v16 - 8);
    v19 = v41;
    v20 = v45;
    v39 = v2;
    do
    {
      v49(v14, v48 + v46 * v15, v20);
      if (sub_1DC5114CC())
      {
        sub_1DC51154C();
        v20 = sub_1DC51177C();
        v21 = *v43;
        (*v43)(v44, v2);
        if (v20)
        {
          sub_1DC51154C();
          sub_1DC51178C();
          v21(v19, v2);
          sub_1DC5138FC();
          v24 = OUTLINED_FUNCTION_33_14();
          v25(v24);
          if (v42)
          {
            v42 = 1;
          }

          else
          {
            type metadata accessor for NLRouterBypassUtils();
            v42 = sub_1DC309EB4();
          }

          if (_MergedGlobals_14 != -1)
          {
            OUTLINED_FUNCTION_14_10();
            swift_once();
          }

          v26 = qword_1ECC8F990;
          v27 = *(qword_1ECC8F990 + 16);
          if (v27)
          {
            v52 = MEMORY[0x1E69E7CC0];
            sub_1DC33F29C(0, v27, 0);
            v28 = v26 + 32;
            do
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B8, &unk_1DC522F90);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC68, &unk_1DC5248A0);
              swift_dynamicCast();
              v30 = *(v52 + 16);
              v29 = *(v52 + 24);
              if (v30 >= v29 >> 1)
              {
                v31 = OUTLINED_FUNCTION_23_18(v29);
                sub_1DC33F29C(v31, v30 + 1, 1);
              }

              *(v52 + 16) = v30 + 1;
              *(v52 + 8 * v30 + 32) = v51;
              v28 += 8;
              --v27;
            }

            while (v27);
          }

          sub_1DC30AD70();
          v20 = v32;

          v19 = v41;
          if (v20)
          {
            v33 = OUTLINED_FUNCTION_7_16();
            v34(v33);

            v2 = v39;
          }

          else
          {
            v2 = v39;
            if (qword_1EDAC9528 != -1)
            {
              OUTLINED_FUNCTION_11_19();
              swift_once();
            }

            v20 = sub_1DC3A9344(qword_1ECC8F998);
            sub_1DC30AD70();
            v36 = v35;

            v37 = OUTLINED_FUNCTION_7_16();
            v38(v37);
            v40 |= v36;
          }
        }

        else
        {
          v22 = OUTLINED_FUNCTION_7_16();
          v23(v22);
        }
      }

      else
      {
        (*v47)(v14, v20);
      }

      ++v15;
    }

    while (v15 != v50);
  }

  OUTLINED_FUNCTION_34();
}

char *sub_1DC3ABE8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1DC2E54B8();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_1DC3ABF98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_35();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DC3ABFF8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1DC3AC2E8(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

char *sub_1DC3AC0B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC3AC0F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DC3AC0D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC3AC1EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DC3AC0F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1DC2E54B8();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_1DC3AC1EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D198, &unk_1DC5270C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 3 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1DC3AC2E8(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1DC3ABE8C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1DC3AC350(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TurnSummary.ExecutionSource(0);
  sub_1DC3AC3D0();
  return sub_1DC5176CC() & 1;
}

unint64_t sub_1DC3AC3D0()
{
  result = qword_1ECC7BD58;
  if (!qword_1ECC7BD58)
  {
    type metadata accessor for TurnSummary.ExecutionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BD58);
  }

  return result;
}

uint64_t sub_1DC3AC428()
{
  v1 = OUTLINED_FUNCTION_155();
  v2(v1);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1DC3AC47C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_35();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MultiTurnParseResults(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MultiTurnParseResults(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1DC3AC604@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v199 = a2;
  v200 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  v187 = &v181 - v4;
  OUTLINED_FUNCTION_12();
  v215 = sub_1DC51665C();
  OUTLINED_FUNCTION_0();
  v236 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v214 = v8 - v7;
  OUTLINED_FUNCTION_12();
  v221 = sub_1DC5118BC();
  OUTLINED_FUNCTION_0();
  v216 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v190 = v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v181 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v189 = &v181 - v16;
  OUTLINED_FUNCTION_12();
  v205 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v234 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v188 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v222 = &v181 - v21;
  OUTLINED_FUNCTION_12();
  v229 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v233 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v228 = v25 - v24;
  OUTLINED_FUNCTION_12();
  v212 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v226 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  v211 = v29 - v28;
  OUTLINED_FUNCTION_12();
  sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v201 = v30;
  v202 = v31;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v213 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v34);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v181 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v38);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = (&v181 - v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v42);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v181 - v44;
  v204 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_1();
  v51 = v50 - v49;
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v197 = v53;
  v198 = v52;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_1();
  v56 = v55 - v54;
  v57 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v58 = sub_1DC2BE518();
  v59 = OUTLINED_FUNCTION_130();
  v196 = v56;
  v206 = v57;
  sub_1DC2A2ED0("HeuristicRules.MDMRRewriteRule", 30, 2, v58, v59 & 1, v56);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v60 = sub_1DC34635C();
  v62 = v61;
  v64 = v60 == sub_1DC313520(1) && v62 == v63;
  if (v64)
  {
  }

  else
  {
    v65 = sub_1DC51825C();

    if ((v65 & 1) == 0)
    {
      v66 = sub_1DC517B9C();
      v67 = sub_1DC2BE518();
      sub_1DC516F0C(v66, &dword_1DC287000, v67, "[MDMRRewriteRule] rule is off", 29, 2, MEMORY[0x1E69E7CC0]);

      v68 = v199;
      v69 = 1;
      v70 = v204;
      goto LABEL_71;
    }
  }

  v186 = v15;
  v71 = type metadata accessor for HeuristicRoutingRequest(0);
  v72 = v200;
  v73 = v204;
  (*(v47 + 16))(v51, v200 + *(v71 + 20), v204);
  v74 = (*(v47 + 88))(v51, v73);
  v75 = *MEMORY[0x1E69D02D8];
  v185 = v47;
  (*(v47 + 8))(v51, v73);
  if (v74 != v75)
  {
    goto LABEL_70;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1A8, &qword_1DC527118);
  inited = swift_initStackObject();
  inited[1] = xmmword_1DC522F10;
  sub_1DC35DA6C(0x525F6E6F6D6D6F63, 0xEF7265646E696D65, 0, v239);
  v77 = v239[1];
  inited[2] = v239[0];
  inited[3] = v77;
  inited[4] = v239[2];
  sub_1DC35DA6C(0x4E5F6E6F6D6D6F63, 0xEB0000000065746FLL, 0, v240);
  v78 = v240[1];
  inited[5] = v240[0];
  inited[6] = v78;
  v235 = inited;
  inited[7] = v240[2];
  v79 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v72 + *(v79 + 20), v45, &qword_1ECC7BFD0, &unk_1DC522550);
  v80 = type metadata accessor for NLRouterTurnContext(0);
  if (__swift_getEnumTagSinglePayload(v45, 1, v80) == 1)
  {
    sub_1DC28EB30(v45, &qword_1ECC7BFD0, &unk_1DC522550);
    v217 = 0;
  }

  else
  {
    v217 = *&v45[*(v80 + 36)];

    sub_1DC3ADBF8(v45, type metadata accessor for NLRouterTurnContext);
  }

  v81 = v212;
  v82 = v201;
  v83 = v226;
  sub_1DC28F358(v200 + *(v79 + 32), v37, &qword_1ECC7C158, &unk_1DC5234A0);
  v84 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v37, 1, v84) == 1)
  {

    v85 = &qword_1ECC7C158;
    v86 = &unk_1DC5234A0;
    v87 = v37;
LABEL_16:
    sub_1DC28EB30(v87, v85, v86);
LABEL_70:
    v68 = v199;
    v69 = 1;
    v70 = v73;
    goto LABEL_71;
  }

  sub_1DC28F358(v37, v41, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC3ADBF8(v37, type metadata accessor for NLRouterTurnProbingResult);
  v88 = type metadata accessor for NLRouterNLParseResponse(0);
  if (__swift_getEnumTagSinglePayload(v41, 1, v88) == 1)
  {

    v85 = &qword_1ECC7C160;
    v86 = qword_1DC5233B0;
    v87 = v41;
    goto LABEL_16;
  }

  v89 = *v41;

  result = sub_1DC3ADBF8(v41, type metadata accessor for NLRouterNLParseResponse);
  v195 = *(v89 + 16);
  if (!v195)
  {
LABEL_69:

    goto LABEL_70;
  }

  v91 = 0;
  v225 = 0;
  v194 = v89 + ((*(v202 + 80) + 32) & ~*(v202 + 80));
  v193 = v202 + 16;
  v230 = v83 + 8;
  v231 = v83 + 16;
  v227 = (v233 + 8);
  v220 = (v234 + 8);
  v208 = v216 + 16;
  v207 = (v236 + 8);
  v209 = (v216 + 8);
  v183 = (v216 + 32);
  v191 = v89;
  v192 = (v202 + 8);
  v92 = v211;
  v93 = v205;
  while (1)
  {
    if (v91 >= *(v89 + 16))
    {
      __break(1u);
LABEL_77:
      __break(1u);
      return result;
    }

    v94 = *(v202 + 72);
    v203 = v91;
    (*(v202 + 16))(v213, v194 + v94 * v91, v82);
    v95 = sub_1DC5111AC();
    v234 = *(v95 + 16);
    if (v234)
    {
      break;
    }

LABEL_67:
    v165 = v203 + 1;
    result = (*v192)(v213, v82);
    v91 = v165;
    v64 = v165 == v195;
    v89 = v191;
    if (v64)
    {
      goto LABEL_69;
    }
  }

  v96 = 0;
  v97 = *(v83 + 80);
  v232 = v95;
  v233 = v95 + ((v97 + 32) & ~v97);
  while (2)
  {
    if (v96 >= *(v95 + 16))
    {
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    (*(v83 + 16))(v92, v233 + *(v83 + 72) * v96, v81);
    if ((sub_1DC5114CC() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_22();
      v112 = OUTLINED_FUNCTION_159();
      v113(v112);
      goto LABEL_56;
    }

    v73 = v228;
    sub_1DC51154C();
    v98 = sub_1DC51177C();
    v99 = v92;
    v100 = *v227;
    (*v227)(v73, v229);
    if ((v98 & 1) == 0 || (v101 = type metadata accessor for NLRouterBypassUtils(), v102 = v228, sub_1DC51154C(), v73 = v222, sub_1DC51178C(), v100(v102, v229), v224 = v101, v103 = sub_1DC307E5C(v73), v219 = *v220, v219(v73, v93), !v103))
    {
      OUTLINED_FUNCTION_3_22();
      v114(v99, v81);
      v92 = v99;
      goto LABEL_55;
    }

    v104 = 0;
    v236 = v103;
    while (1)
    {
      if (v104 == 6)
      {

        OUTLINED_FUNCTION_3_22();
        v92 = v211;
        v81 = v212;
        goto LABEL_37;
      }

      v106 = *(&v235[v104 + 2] + 1);
      v107 = *&v235[v104 + 4];
      v108 = *(&v235[v104 + 4] + 1);
      v241 = *&v235[v104 + 2];
      v105 = v241;
      v242 = v106;
      v243 = v235[v104 + 3];
      v244 = v107;
      v245 = v108;
      v109 = v243;

      if (v105 == sub_1DC514F1C() && v106 == v110)
      {
        break;
      }

      v73 = sub_1DC51825C();

      if (v73)
      {
        goto LABEL_39;
      }

      v104 += 3;
    }

LABEL_39:
    if (v109)
    {

      v237 = sub_1DC514F0C();
      v238 = v117;
      MEMORY[0x1EEE9AC00](v237);
      OUTLINED_FUNCTION_6_18();
      v118 = v225;
      v73 = sub_1DC2CF098(sub_1DC327C74, v119, v109);
      v225 = v118;

      if (v73)
      {

        v120 = sub_1DC517B9C();
        v121 = sub_1DC2BE518();
        sub_1DC516F0C(v120, &dword_1DC287000, v121, "[MDMRRewriteRule] task verb present but didn't match", 52, 2, MEMORY[0x1E69E7CC0]);
        goto LABEL_44;
      }
    }

    sub_1DC305AEC();
    v73 = v123;
    v125 = v221;
    if (*(v124 + 16) >= 2uLL)
    {

      v126 = sub_1DC517B9C();
      v121 = sub_1DC2BE518();
      sub_1DC516F0C(v126, &dword_1DC287000, v121, "[MDMRRewriteRule] matched Entity ID count more than 1. Don't rewrite for parse", 78, 2, MEMORY[0x1E69E7CC0]);
LABEL_44:

      OUTLINED_FUNCTION_3_22();
      v92 = v211;
      v81 = v212;
      v127 = OUTLINED_FUNCTION_159();
      v128(v127);
LABEL_54:
      v93 = v205;
LABEL_55:
      v83 = v226;
LABEL_56:
      ++v96;
      v95 = v232;
      if (v96 == v234)
      {

        v73 = v204;
        v82 = v201;
        goto LABEL_67;
      }

      continue;
    }

    break;
  }

  v218 = v124;
  if ((v122 & 1) == 0 || (v129 = v217) == 0)
  {
    OUTLINED_FUNCTION_3_22();
    v140 = v211;
    v81 = v212;
    v141(v211, v212);

    v92 = v140;

LABEL_53:

    goto LABEL_54;
  }

  v184 = v123;
  v210 = *(v217 + 16);

  v130 = 0;
  v73 = v190;
  while (1)
  {
    if (v210 == v130)
    {
      OUTLINED_FUNCTION_3_22();
      v142 = v211;
      v81 = v212;
      v143(v211, v212);

      v92 = v142;

      goto LABEL_53;
    }

    if (v130 >= *(v129 + 16))
    {
      goto LABEL_73;
    }

    v131 = v129 + ((*(v216 + 80) + 32) & ~*(v216 + 80));
    v132 = *(v216 + 72);
    v223 = v130;
    (*(v216 + 16))(v73, v131 + v132 * v130, v125);
    v133 = v214;
    sub_1DC51186C();
    v134 = sub_1DC51664C();
    v136 = v135;
    v137 = (*v207)(v133, v215);
    v224 = &v181;
    v237 = v134;
    v238 = v136;
    MEMORY[0x1EEE9AC00](v137);
    OUTLINED_FUNCTION_6_18();
    v138 = v225;
    LOBYTE(v134) = sub_1DC2CF098(sub_1DC2CF174, v139, v218);
    v225 = v138;

    if (v134)
    {
      break;
    }

    v130 = v223 + 1;
    v125 = v221;
    (*v209)(v73, v221);
    v129 = v217;
  }

  v144 = *v183;
  v145 = v186;
  v146 = v73;
  v73 = v221;
  (*v183)(v186, v146, v221);
  v144(v189, v145, v73);
  sub_1DC51182C();
  v93 = v225;
  v147 = sub_1DC5138FC();
  v148 = v73;
  if (v93)
  {

    v149 = OUTLINED_FUNCTION_7_17();
    v150(v149);
    v151 = OUTLINED_FUNCTION_2_25();
    v152(v151, v73);
    OUTLINED_FUNCTION_3_22();
    v92 = v211;
    v81 = v212;
    v153 = OUTLINED_FUNCTION_159();
    v154(v153);
    v225 = 0;
    goto LABEL_55;
  }

  v225 = 0;
  v73 = v147;
  v155 = OUTLINED_FUNCTION_7_17();
  v156(v155);
  v157 = sub_1DC5146FC();
  v81 = v212;
  if (!v157)
  {

    v162 = OUTLINED_FUNCTION_2_25();
    v164 = v148;
LABEL_65:
    v163(v162, v164);
    OUTLINED_FUNCTION_3_22();
    v92 = v211;
LABEL_37:
    v115 = OUTLINED_FUNCTION_159();
    v116(v115);
    goto LABEL_55;
  }

  v224 = v73;
  v73 = v157;

  sub_1DC51483C();

  v210 = sub_1DC35D470(&v237, 1, v184);
  v159 = v158;
  v182 = v160;
  v219 = v161;
  sub_1DC28EB30(&v237, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v223 = v159;
  if (!v159)
  {

    v162 = OUTLINED_FUNCTION_2_25();
    v164 = v221;
    goto LABEL_65;
  }

LABEL_74:
  v234 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFA8, &unk_1DC5224D0);
  v233 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v169 = v168;
  v231 = (*(v168 + 80) + 32) & ~*(v168 + 80);
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_1DC522F20;
  MEMORY[0x1EEE9AC00](v170);
  v171 = v223;
  *(&v181 - 4) = v210;
  *(&v181 - 3) = v171;
  v172 = v219;
  *(&v181 - 2) = v182;
  *(&v181 - 1) = v172;
  v173 = v187;
  sub_1DC51583C();
  v174 = sub_1DC51587C();
  result = __swift_getEnumTagSinglePayload(v173, 1, v174);
  if (result == 1)
  {
    goto LABEL_77;
  }

  swift_setDeallocating();
  sub_1DC3ADB50();

  v175 = v231;
  (*(*(v174 - 8) + 32))(v170 + v231, v173, v174);
  (*(v169 + 104))(v170 + v175, *MEMORY[0x1E69D0330], v233);

  v176 = OUTLINED_FUNCTION_2_25();
  v177(v176, v221);
  OUTLINED_FUNCTION_3_22();
  v178(v211, v212);
  (*v192)(v213, v201);
  v179 = v199;
  *v199 = v170;
  v180 = v204;
  (*(v185 + 104))(v179, *MEMORY[0x1E69D02C8], v204);
  v68 = v179;
  v69 = 0;
  v70 = v180;
LABEL_71:
  __swift_storeEnumTagSinglePayload(v68, v69, 1, v70);
  v166 = sub_1DC2BE518();
  v167 = v196;
  sub_1DC2B8848(v196, "HeuristicRules.MDMRRewriteRule", 30, 2, v166);

  return (*(v197 + 8))(v167, v198);
}

uint64_t sub_1DC3ADB50()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DC3ADB94()
{

  sub_1DC51586C();

  return sub_1DC51585C();
}

uint64_t sub_1DC3ADBF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DC3ADC60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1B0, &qword_1DC527198);
  v0 = sub_1DC510F7C();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DC522F00;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x1E69D0988], v0);
  v8(v7 + v4, *MEMORY[0x1E69D0970], v0);
  result = (v8)(v7 + 2 * v4, *MEMORY[0x1E69D0960], v0);
  qword_1ECC8F418 = v6;
  return result;
}

uint64_t sub_1DC3ADD88@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v158 = a1;
  v153 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v137 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v138 = (&v136 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14(&v136 - v9);
  v152 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v139 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v12);
  v148 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v143 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v15);
  v160 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v142 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v18);
  v150 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v146 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v149 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v22);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14(&v136 - v24);
  v25 = sub_1DC510F7C();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1DC510FAC();
  OUTLINED_FUNCTION_0();
  v170 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_1();
  v171 = v33;
  sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v173 = v35;
  v174 = v34;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15();
  v145 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v136 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v40);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v136 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v44);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v136 - v46;
  v48 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v50);
  v156 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v155 = v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v136 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v56 = sub_1DC2BE518();
  v57 = OUTLINED_FUNCTION_130();
  v154 = v54;
  v157 = v55;
  sub_1DC2A2ED0("HeuristicRules.NLXOverridesExceptionsRule", 41, 2, v56, v57 & 1, v54);

  v58 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v158 + *(v58 + 32), v43, &qword_1ECC7C158, &unk_1DC5234A0);
  v59 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v43, 1, v59) == 1)
  {
    sub_1DC28EB30(v43, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v48);
LABEL_4:
    sub_1DC28EB30(v47, &qword_1ECC7C160, qword_1DC5233B0);
LABEL_5:
    OUTLINED_FUNCTION_8_14();
    v60 = sub_1DC517B9C();
    OUTLINED_FUNCTION_11_20();
    v61 = sub_1DC2BE518();
    sub_1DC516F0C(v60, &dword_1DC287000, v61, "[NLXOverridesExceptionsRule] NL parse does not have overrides. Skipping...", 74, 2, MEMORY[0x1E69E7CC0]);

    goto LABEL_6;
  }

  sub_1DC28F358(v43, v47, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC3A5DA0(v43, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v47, 1, v48) == 1)
  {
    goto LABEL_4;
  }

  v136 = v58;
  v66 = v151;
  sub_1DC2E53A4(v47, v151);
  v67 = 0;
  v68 = *v66;
  v165 = (v170 + 1);
  v166 = v39;
  v170 = *(v68 + 16);
  v168 = v173 + 16;
  v169 = (v173 + 8);
  v164 = (v27 + 8);
  v167 = v68;
  do
  {
    if (v67 == v170)
    {
      OUTLINED_FUNCTION_0_42();
      goto LABEL_5;
    }

    if (v67 >= *(v68 + 16))
    {
      __break(1u);
      goto LABEL_56;
    }

    v69 = *(v173 + 72);
    v163 = v68 + ((*(v173 + 80) + 32) & ~*(v173 + 80));
    v162 = v69;
    v161 = *(v173 + 16);
    v161(v39, v163 + v69 * v67, v174);
    if (qword_1ECC7FCA0 != -1)
    {
      OUTLINED_FUNCTION_3_23();
      swift_once();
    }

    ++v67;
    v70 = qword_1ECC8F418;
    v71 = v171;
    sub_1DC51120C();
    sub_1DC510F8C();
    (*v165)(v71, v172);
    v72 = 0;
    v66 = *(v70 + 16);
    do
    {
      v73 = v72;
      if (v66 == v72)
      {
        break;
      }

      v72 = (v72 + 1);
      sub_1DC3AF49C(&qword_1ECC7BE30, MEMORY[0x1E69D0990], MEMORY[0x1E69D09A0]);
    }

    while ((sub_1DC5176CC() & 1) == 0);
    v43 = *v169;
    v39 = v166;
    (*v169)(v166, v174);
    (*v164)(v30, v25);
    v68 = v167;
  }

  while (v66 == v73);
  v74 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v75 = sub_1DC345D18();
  v77 = v76;
  v78 = sub_1DC312FB4(0);
  v80 = v75 == v78 && v77 == v79;
  if (v80)
  {

    OUTLINED_FUNCTION_11_20();
    goto LABEL_27;
  }

  v81 = sub_1DC51825C();

  OUTLINED_FUNCTION_11_20();
  if (v81)
  {
LABEL_27:
    OUTLINED_FUNCTION_0_42();
    OUTLINED_FUNCTION_8_14();
    goto LABEL_7;
  }

  v82 = v144;
  sub_1DC3EAD64(v144);
  v83 = type metadata accessor for QDContextState(0);
  if (__swift_getEnumTagSinglePayload(v82, 1, v83) == 1)
  {
    sub_1DC28EB30(v82, &qword_1ECC7BEB8, &unk_1DC527150);
    goto LABEL_27;
  }

  v84 = *v82;
  v85 = sub_1DC3A5DA0(v82, type metadata accessor for QDContextState);
  LOBYTE(v176) = v84;
  LOBYTE(v175[0]) = 3;
  sub_1DC3A56C4(v85, v86, v87);
  result = sub_1DC5176CC();
  if ((result & 1) == 0)
  {
    goto LABEL_27;
  }

  v144 = v74;
  v88 = 0;
  v89 = v167;
  v164 = *(v167 + 16);
  v39 = (v146 + 16);
  v173 = v142 + 8;
  v170 = (v143 + 8);
  v90 = v150;
  v91 = v149;
  v92 = v145;
  while (2)
  {
    if (v88 == v164)
    {
      OUTLINED_FUNCTION_0_42();
      OUTLINED_FUNCTION_8_14();
LABEL_51:
      OUTLINED_FUNCTION_11_20();
      goto LABEL_7;
    }

    if (v88 >= *(v89 + 16))
    {
      __break(1u);
      return result;
    }

    v161(v92, v163 + v88 * v162, v174);
    v93 = sub_1DC5111AC();
    v94 = *(v93 + 16);
    if (!v94)
    {

LABEL_47:
      v88 = (v88 + 1);
      result = (v43)(v92, v174);
      continue;
    }

    break;
  }

  v165 = v88;
  v95 = (*(v146 + 80) + 32) & ~*(v146 + 80);
  v166 = v93;
  v96 = v93 + v95;
  v97 = *(v146 + 72);
  v98 = *(v146 + 16);
  v171 = v97;
  v172 = v98;
  while (2)
  {
    v98(v91, v96, v90);
    if ((sub_1DC5114CC() & 1) == 0)
    {
      v111 = OUTLINED_FUNCTION_13_18();
      v112(v111);
      goto LABEL_44;
    }

    v99 = v39;
    v100 = v159;
    sub_1DC51154C();
    v101 = sub_1DC51177C();
    v102 = *v173;
    (*v173)(v100, v160);
    if ((v101 & 1) == 0 || (type metadata accessor for NLRouterBypassUtils(), v103 = v159, sub_1DC51154C(), v104 = v147, sub_1DC51178C(), v105 = v103, v90 = v150, v102(v105, v160), v106 = sub_1DC307E5C(v104), v107 = v104, v91 = v149, (*v170)(v107, v148), !v106))
    {
      v113 = OUTLINED_FUNCTION_13_18();
      v114(v113);
      v39 = v99;
      v97 = v171;
      v98 = v172;
      goto LABEL_44;
    }

    sub_1DC51478C();

    v108 = OUTLINED_FUNCTION_13_18();
    v109(v108);
    v175[0] = v176;
    v175[1] = v177;
    v39 = v99;
    if (!*(&v177 + 1))
    {
      sub_1DC28EB30(v175, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v98 = v172;
      goto LABEL_43;
    }

    sub_1DC514ACC();
    v110 = swift_dynamicCast();
    v98 = v172;
    if ((v110 & 1) == 0)
    {
LABEL_43:
      v97 = v171;
LABEL_44:
      v96 += v97;
      if (!--v94)
      {

        v92 = v145;
        v89 = v167;
        v88 = v165;
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  (v43)(v145, v174);
  v115 = sub_1DC345D18();
  v117 = sub_1DC312F68(v115, v116);
  if (v117 == 4)
  {
    OUTLINED_FUNCTION_0_42();
    v66 = v141;
    v43 = v152;
    __swift_storeEnumTagSinglePayload(v141, 1, 1, v152);
    v39 = v153;
    goto LABEL_54;
  }

  v66 = v141;
  sub_1DC312E7C(v117, v141);
  v43 = v152;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v66, 1, v152);
  v39 = v153;
  if (EnumTagSinglePayload != 1)
  {
LABEL_56:
    v119 = v139;
    v120 = *(v139 + 32);
    v121 = v140;
    v120(v140, v66, v43);
    v122 = *(v136 + 20);
    v123 = v138;
    sub_1DC28F358(v158 + v122, v138, &qword_1ECC7BFD0, &unk_1DC522550);
    type metadata accessor for NLRouterTurnContext(0);
    OUTLINED_FUNCTION_11_6(v123);
    if (v80)
    {
      sub_1DC28EB30(v123, &qword_1ECC7BFD0, &unk_1DC522550);
    }

    else
    {
      v124 = *v123;

      OUTLINED_FUNCTION_46();
      sub_1DC3A5DA0(v123, v125);
      v126 = sub_1DC3AEE9C(v124);

      if (v126)
      {
        v127 = sub_1DC517B9C();
        v128 = sub_1DC2BE518();
        sub_1DC516F0C(v127, &dword_1DC287000, v128, "[NLXOverridesExceptionsRule] Unsend message + Email in foreground detected. Ongoing Send message, skipping...", 109, 2, MEMORY[0x1E69E7CC0]);
LABEL_66:

        (*(v119 + 8))(v121, v43);
        OUTLINED_FUNCTION_0_42();
        goto LABEL_51;
      }
    }

    v129 = v137;
    sub_1DC28F358(v158 + v122, v137, &qword_1ECC7BFD0, &unk_1DC522550);
    OUTLINED_FUNCTION_11_6(v129);
    if (v80)
    {
      sub_1DC28EB30(v129, &qword_1ECC7BFD0, &unk_1DC522550);
    }

    else
    {
      v130 = *(v129 + 8);

      OUTLINED_FUNCTION_46();
      sub_1DC3A5DA0(v129, v131);
      v132 = sub_1DC3AEE9C(v130);

      if (v132)
      {
        v133 = sub_1DC517B9C();
        v128 = sub_1DC2BE518();
        sub_1DC516F0C(v133, &dword_1DC287000, v128, "[NLXOverridesExceptionsRule] Unsend message + Email in foreground detected. Previously executed a send message, skipping...", 123, 2, MEMORY[0x1E69E7CC0]);
        goto LABEL_66;
      }
    }

    v134 = sub_1DC517B9C();
    OUTLINED_FUNCTION_11_20();
    v135 = sub_1DC2BE518();
    sub_1DC516F0C(v134, &dword_1DC287000, v135, "[NLXOverridesExceptionsRule] Unsend message + Email in foreground detected. Overriding USO parse.", 97, 2, MEMORY[0x1E69E7CC0]);

    OUTLINED_FUNCTION_0_42();
    v120(v39, v121, v43);
    v62 = 0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_42();
LABEL_54:
  OUTLINED_FUNCTION_11_20();
  sub_1DC28EB30(v66, &qword_1ECC7CA40, &unk_1DC5233A0);
LABEL_6:
  v62 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v39, v62, 1, v43);
  v63 = sub_1DC2BE518();
  v64 = v154;
  sub_1DC2B8848(v154, "HeuristicRules.NLXOverridesExceptionsRule", 41, 2, v63);

  return (*(v155 + 8))(v64, v156);
}

BOOL sub_1DC3AEE9C(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    v5 = *(sub_1DC510F1C() - 8);
    ++v2;
  }

  while (!sub_1DC3AEF44(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4));
  return v3 != v4;
}

BOOL sub_1DC3AEF44(uint64_t a1)
{
  v2 = sub_1DC5149BC();
  OUTLINED_FUNCTION_0();
  v41 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v38 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C238, &qword_1DC527190);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v39 = v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v37 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C890, &qword_1DC5234B0);
  OUTLINED_FUNCTION_10(v18);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  type metadata accessor for NLRouterBypassUtils();
  v22 = sub_1DC510F1C();
  OUTLINED_FUNCTION_35();
  (*(v23 + 16))(v21, a1, v22);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
  sub_1DC307F68(v21);
  sub_1DC28EB30(v21, &qword_1ECC7C890, &qword_1DC5234B0);
  sub_1DC51478C();

  if (!v42[3])
  {
    v26 = &qword_1ECC7D3F0;
    v27 = &qword_1DC5238B0;
    v28 = v42;
    goto LABEL_7;
  }

  sub_1DC51497C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1DC51475C();

  if (v42[0] && (v24 = sub_1DC51477C(), , v24))
  {
    v25 = v40;
    sub_1DC5149AC();
  }

  else
  {
    v25 = v40;
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v2);
  }

  v30 = v41;
  (*(v41 + 104))(v16, *MEMORY[0x1E69D1D40], v2);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v2);
  v31 = *(v6 + 48);
  sub_1DC28F358(v25, v9, &qword_1ECC7C200, &qword_1DC523020);
  sub_1DC28F358(v16, &v9[v31], &qword_1ECC7C200, &qword_1DC523020);
  OUTLINED_FUNCTION_11_6(v9);
  if (v33)
  {

    OUTLINED_FUNCTION_80(v16);
    OUTLINED_FUNCTION_80(v25);
    OUTLINED_FUNCTION_11_6(&v9[v31]);
    if (!v33)
    {
      goto LABEL_19;
    }

    v26 = &qword_1ECC7C200;
    v27 = &qword_1DC523020;
    v28 = v9;
LABEL_7:
    sub_1DC28EB30(v28, v26, v27);
    return 0;
  }

  v32 = v39;
  sub_1DC28F358(v9, v39, &qword_1ECC7C200, &qword_1DC523020);
  OUTLINED_FUNCTION_11_6(&v9[v31]);
  if (v33)
  {

    OUTLINED_FUNCTION_80(v16);
    OUTLINED_FUNCTION_80(v25);
    (*(v30 + 8))(v32, v2);
LABEL_19:
    sub_1DC28EB30(v9, &qword_1ECC7C238, &qword_1DC527190);
    return 1;
  }

  v34 = v38;
  (*(v30 + 32))(v38, &v9[v31], v2);
  sub_1DC3AF49C(&qword_1ECC7C208, MEMORY[0x1E69D1D48], MEMORY[0x1E69D1D50]);
  v35 = sub_1DC5176CC();

  v36 = *(v30 + 8);
  v36(v34, v2);
  sub_1DC28EB30(v16, &qword_1ECC7C200, &qword_1DC523020);
  sub_1DC28EB30(v25, &qword_1ECC7C200, &qword_1DC523020);
  v36(v32, v2);
  sub_1DC28EB30(v9, &qword_1ECC7C200, &qword_1DC523020);
  return (v35 & 1) == 0;
}

uint64_t sub_1DC3AF49C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DC3AF4E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        return 0;
      }

      goto LABEL_5;
    case 2:
      if (a6 == 2)
      {
        goto LABEL_5;
      }

      return 0;
    case 3:
      if (a6 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    default:
      if (a6)
      {
        return 0;
      }

LABEL_5:
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return sub_1DC51825C();
      }
  }
}

uint64_t sub_1DC3AF584@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1DC3AF594()
{
  type metadata accessor for ServiceStore();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for ServiceStoreServiceKeyingFields(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1B8, &qword_1DC5271A0);
  OUTLINED_FUNCTION_0_43();
  sub_1DC2B3338(v1, v2, &unk_1DC527410);
  *(v0 + 112) = sub_1DC51764C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1C0, qword_1DC5271A8);
  result = sub_1DC51764C();
  *(v0 + 120) = result;
  qword_1ECC8F6E8 = v0;
  return result;
}

uint64_t sub_1DC3AF6B0(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1DC2977A8(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC3AF700(void *a1)
{
  OUTLINED_FUNCTION_12_0();
  v4 = (*(v3 + 120))(v7);
  sub_1DC3B0D3C(a1);
  swift_unknownObjectRelease();
  v4(v7, 0);
  v5 = (*(*v1 + 144))(v7);
  sub_1DC298864(a1);

  return v5(v7, 0);
}

uint64_t sub_1DC3AF7E0()
{
  OUTLINED_FUNCTION_37_4();

  swift_unknownObjectRelease();
  sub_1DC2989EC(*(v0 + 168));

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC3AF88C()
{
  OUTLINED_FUNCTION_37_4();
  v1 = *(v0 + 200);

  swift_unknownObjectRelease();

  v2 = OUTLINED_FUNCTION_63_0();
  v3(v2);
  sub_1DC2989EC(*(v0 + 168));

  OUTLINED_FUNCTION_2_2();

  return v4();
}

uint64_t sub_1DC3AF95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1DC2DB2AC();
  v11 = sub_1DC517AAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1DC28EB30(v10, &unk_1ECC7D050, &qword_1DC523AC0);
  }

  else
  {
    sub_1DC517A9C();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1DC517A7C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1DC51779C() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1DC28EB30(a3, &unk_1ECC7D050, &qword_1DC523AC0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DC28EB30(a3, &unk_1ECC7D050, &qword_1DC523AC0);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1DC3AFBE4()
{
  OUTLINED_FUNCTION_1_0();
  v1[7] = v0;
  v1[6] = v2;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = sub_1DC514FBC();
  v1[8] = v6;
  OUTLINED_FUNCTION_52(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_118();
  v8 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  OUTLINED_FUNCTION_10(v8);
  v1[11] = OUTLINED_FUNCTION_118();

  return MEMORY[0x1EEE6DFA0](sub_1DC3AFCBC, v0, 0);
}

uint64_t sub_1DC3AFCBC()
{
  OUTLINED_FUNCTION_37_4();
  v1 = v0[7];
  v2 = (*(v0[4] + 16))(v0[5]);
  (*(*v1 + 128))(v2);
  v3 = OUTLINED_FUNCTION_63_0();
  v5 = sub_1DC3AF6B0(v3, v4);
  v0[12] = v5;

  if (v5)
  {

    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v9[1] = sub_1DC3AFE88;
    v10.n128_u64[0] = v0[6];

    return MEMORY[0x1EEE40F70](v0 + 15, &unk_1DC5271E0, v5, &type metadata for ServiceSetupResponse, v10);
  }

  else
  {
    v11 = v0[11];
    sub_1DC3B0E88(v6, v7, v8);
    OUTLINED_FUNCTION_23_19();
    OUTLINED_FUNCTION_33_1(&type metadata for ServiceSetupError, v12);
    *v13 = 0xD00000000000002CLL;
    v13[1] = 0x80000001DC5447A0;
    OUTLINED_FUNCTION_18_17(v13, 3, v16);
    sub_1DC2989EC(v11);

    OUTLINED_FUNCTION_2_2();

    return v14();
  }
}

uint64_t sub_1DC3AFE88()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_38();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    v7 = *(v3 + 56);
    v8 = sub_1DC3B03D8;
  }

  else
  {
    v9 = *(v3 + 56);

    v8 = sub_1DC3AFF9C;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DC3AFF9C(uint64_t a1)
{
  v60 = v1;
  if (*(v1 + 120))
  {
    sub_1DC517B9C();
    v2 = OUTLINED_FUNCTION_21_2();
    v3 = sub_1DC296DBC();
    if (OUTLINED_FUNCTION_36_15(v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v58 = v5;
      *v4 = 136315394;
      v6 = sub_1DC5183EC();
      v8 = sub_1DC291244(v6, v7, &v58);

      *(v4 + 4) = v8;
      *(v4 + 12) = 2080;
      *(v1 + 122) = 1;
      v9 = sub_1DC51777C();
      v11 = sub_1DC291244(v9, v10, &v58);

      *(v4 + 14) = v11;
      OUTLINED_FUNCTION_27_11();
      _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E1298840](v5, -1, -1);
      OUTLINED_FUNCTION_31();
    }

    v58 = 0;
    v59 = 0xE000000000000000;
    v57 = *(v1 + 24);
    sub_1DC517F4C();

    v58 = 0xD00000000000002ELL;
    v59 = 0x80000001DC544810;
    *(v1 + 121) = 1;
    v17 = sub_1DC51777C();
    MEMORY[0x1E1296160](v17);

    v19 = v58;
    v20 = v59;
    v23 = sub_1DC3B0E88(v18, v21, v22);
    v24 = OUTLINED_FUNCTION_33_1(&type metadata for ServiceSetupError, v23);
    *v25 = v19;
    *(v25 + 8) = v20;
    *(v25 + 16) = 1;
    *(v25 + 24) = v57;
    swift_willThrow();
    goto LABEL_6;
  }

  v26 = *(v1 + 112);
  OUTLINED_FUNCTION_12_0();
  v28 = (*(v27 + 160))();
  v24 = v26;
  if (v26)
  {
LABEL_6:
    v30 = *(v1 + 64);
    *(v1 + 16) = v24;
    v31 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
    if (swift_dynamicCast())
    {

      sub_1DC517B9C();
      v32 = OUTLINED_FUNCTION_21_2();
      v33 = sub_1DC296DBC();
      if (OUTLINED_FUNCTION_36_15(v33))
      {
        swift_slowAlloc();
        v34 = OUTLINED_FUNCTION_111();
        v58 = v34;
        v35 = OUTLINED_FUNCTION_27_14(4.8149e-34);
        v37 = sub_1DC291244(v35, v36, &v58);

        *(v30 + 4) = v37;
        OUTLINED_FUNCTION_27_11();
        _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        OUTLINED_FUNCTION_67();
        OUTLINED_FUNCTION_31();
      }

      v43 = *(v1 + 88);
      v45 = *(v1 + 72);
      v44 = *(v1 + 80);
      v46 = *(v1 + 64);
      sub_1DC3B0E88(v47, v48, v49);
      OUTLINED_FUNCTION_23_19();
      OUTLINED_FUNCTION_33_1(&type metadata for ServiceSetupError, v50);
      *v51 = 0xD00000000000003BLL;
      v51[1] = 0x80000001DC5447D0;
      OUTLINED_FUNCTION_18_17(v51, 2, v57);

      sub_1DC2989EC(v43);
      (*(v45 + 8))(v44, v46);
    }

    else
    {
      sub_1DC2989EC(*(v1 + 88));
    }

    OUTLINED_FUNCTION_2_2();

    return v52();
  }

  v54 = v28;
  v55 = v29;
  sub_1DC2989EC(*(v1 + 88));

  v56 = *(v1 + 8);

  return v56(v54, v55);
}

uint64_t sub_1DC3B03D8()
{
  v28 = v0;

  v1 = *(v0 + 112);
  *(v0 + 16) = v1;
  v2 = *(v0 + 80);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  if (swift_dynamicCast())
  {

    sub_1DC517B9C();
    v4 = OUTLINED_FUNCTION_21_2();
    v5 = sub_1DC296DBC();
    if (OUTLINED_FUNCTION_36_15(v5))
    {
      swift_slowAlloc();
      v6 = OUTLINED_FUNCTION_111();
      v27 = v6;
      v7 = OUTLINED_FUNCTION_27_14(4.8149e-34);
      v9 = sub_1DC291244(v7, v8, &v27);

      *(v2 + 4) = v9;
      OUTLINED_FUNCTION_27_11();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_31();
    }

    v15 = *(v0 + 88);
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 64);
    sub_1DC3B0E88(v19, v20, v21);
    OUTLINED_FUNCTION_23_19();
    OUTLINED_FUNCTION_33_1(&type metadata for ServiceSetupError, v22);
    *v23 = 0xD00000000000003BLL;
    v23[1] = 0x80000001DC5447D0;
    OUTLINED_FUNCTION_18_17(v23, 2, v26);

    sub_1DC2989EC(v15);
    (*(v17 + 8))(v16, v18);
  }

  else
  {
    sub_1DC2989EC(*(v0 + 88));
  }

  OUTLINED_FUNCTION_2_2();

  return v24();
}

uint64_t sub_1DC3B05C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  *v5 = v2;
  v5[1] = sub_1DC29F120;
  v7 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a2, &type metadata for ServiceSetupResponse, v6, v7);
}

uint64_t sub_1DC3B069C()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DC3B06CC()
{
  sub_1DC3B069C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DC3B0720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a1 == a3 && a2 == a4;
      if (v4 || (sub_1DC51825C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DC3B0784(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC3B07A4(char a1)
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0]((a1 & 1u) + 1);
  return sub_1DC51833C();
}

uint64_t sub_1DC3B0824(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](a2 & 1);
  return sub_1DC51833C();
}

uint64_t sub_1DC3B0868(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0]((a2 & 1u) + 1);
  return sub_1DC51833C();
}

uint64_t sub_1DC3B08B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3B0784(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC3B08DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC3B079C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1DC3B0908(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DC3B0938@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3B0908(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1DC3B0964(void *a1, void *a2)
{
  v4 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD30, &qword_1DC524D20);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = *a1 == *a2 && a1[1] == a2[1];
  if (v19 || (v20 = sub_1DC51825C(), result = 0, (v20 & 1) != 0))
  {
    v31 = v6;
    type metadata accessor for ServiceStoreServiceKeyingFields(0);
    v22 = *(v15 + 48);
    sub_1DC2DB2AC();
    sub_1DC2DB2AC();
    OUTLINED_FUNCTION_14_2(v18);
    if (v19)
    {
      OUTLINED_FUNCTION_14_2(&v18[v22]);
      if (v19)
      {
        sub_1DC28EB30(v18, &qword_1ECC7CD00, &unk_1DC5259F0);
        return 1;
      }
    }

    else
    {
      sub_1DC2DB2AC();
      OUTLINED_FUNCTION_14_2(&v18[v22]);
      if (!v23)
      {
        v24 = v31;
        (*(v31 + 32))(v10, &v18[v22], v4);
        OUTLINED_FUNCTION_7_18();
        sub_1DC2B3338(v25, v26, MEMORY[0x1E6969788]);
        v27 = sub_1DC5176CC();
        v28 = *(v24 + 8);
        v29 = OUTLINED_FUNCTION_43();
        v28(v29);
        (v28)(v14, v4);
        sub_1DC28EB30(v18, &qword_1ECC7CD00, &unk_1DC5259F0);
        return (v27 & 1) != 0;
      }

      (*(v31 + 8))(v14, v4);
    }

    sub_1DC28EB30(v18, &unk_1ECC7CD30, &qword_1DC524D20);
    return 0;
  }

  return result;
}

uint64_t sub_1DC3B0C54()
{
  sub_1DC5182FC();
  sub_1DC298098(v1);
  return sub_1DC51833C();
}

uint64_t ServiceSetupConfiguration.locale.getter()
{
  sub_1DC510C8C();
  OUTLINED_FUNCTION_35();
  v0 = OUTLINED_FUNCTION_43();

  return v1(v0);
}

uint64_t sub_1DC3B0D3C(void *a1)
{
  v2 = v1;
  v3 = sub_1DC2977A8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1F0, &qword_1DC527710);
  sub_1DC517FFC();
  v6 = *(v10 + 48);
  v7 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  sub_1DC2989EC(v6 + *(*(v7 - 8) + 72) * v5);
  v8 = *(*(v10 + 56) + 16 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1B8, &qword_1DC5271A0);
  sub_1DC2B3338(&unk_1ECC7BD90, type metadata accessor for ServiceStoreServiceKeyingFields, &unk_1DC527410);
  sub_1DC51800C();
  *v2 = v10;
  return v8;
}

unint64_t sub_1DC3B0E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D1C8;
  if (!qword_1ECC7D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D1C8);
  }

  return result;
}

uint64_t sub_1DC3B0EDC()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DC29F200;

  return sub_1DC3B05C8(v3, v0);
}

unsigned __int8 *sub_1DC3B0F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1DC51799C();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DC3B1A10(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DC517F8C();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_1DC3B1500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D1D8;
  if (!qword_1ECC7D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D1D8);
  }

  return result;
}

unint64_t sub_1DC3B1558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D1E0;
  if (!qword_1ECC7D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D1E0);
  }

  return result;
}

uint64_t sub_1DC3B15F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_41_0(*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 > 3)
  {
    return OUTLINED_FUNCTION_41_0(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }
}

uint64_t sub_1DC3B162C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DC3B16B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_41_0(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_41_0(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_41_0(v4);
}

uint64_t sub_1DC3B1704(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *_s13CDMFoundation12ServiceStateOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1DC3B1880()
{
  v11 = MEMORY[0x1E69E6158];
  sub_1DC3B18DC(319);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_17_12(v0, v1, v2, v3, v4, v5, v6, v7, v8, *v9, *&v9[4], 0, v10, v11, v12);
  }
}

void sub_1DC3B18DC(uint64_t a1)
{
  if (!qword_1ECC7BE50)
  {
    sub_1DC510C8C();
    v1 = sub_1DC517D8C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECC7BE50);
    }
  }
}

void sub_1DC3B195C()
{
  v0 = sub_1DC510C8C();
  if (v1 <= 0x3F)
  {
    v13 = v0;
    sub_1DC3B19C0();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_17_12(v2, v3, v4, v5, v6, v7, v8, v9, v10, *v11, *&v11[4], 0, v12, v13, v14);
    }
  }
}

void sub_1DC3B19C0()
{
  if (!qword_1ECC7B900)
  {
    v0 = sub_1DC517D8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC7B900);
    }
  }
}

uint64_t sub_1DC3B1A10(uint64_t a1, unint64_t a2)
{
  v2 = sub_1DC3B1A7C(sub_1DC3B1A78, 0, a1, a2);
  v6 = sub_1DC3B1AB0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1DC3B1AB0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1DC517DBC();
    if (!v9 || (v10 = v9, v11 = sub_1DC291E08(v9, 0), v12 = sub_1DC3B1C10(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1DC51780C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1DC51780C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1DC517F8C();
LABEL_4:

  return sub_1DC51780C();
}

unint64_t sub_1DC3B1C10(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1DC375D08(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1DC51791C();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1DC517F8C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1DC375D08(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1DC5178FC();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1DC3B1E30()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F9A0);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = 0xD000000000000016;
  *(v4 + 24) = 0x80000001DC544940;
  strcpy((v4 + 32), "DOCFileEntity");
  *(v4 + 46) = -4864;
  *v3 = v4;
  OUTLINED_FUNCTION_7_1();
  v6 = *(v5 + 104);

  return v6(v3);
}

uint64_t sub_1DC3B1F10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v73 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1F8, &qword_1DC527718);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D200, &qword_1DC527720);
  v15 = OUTLINED_FUNCTION_10(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D208, &qword_1DC5293D0);
  v19 = OUTLINED_FUNCTION_10(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - v24;
  v26 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  sub_1DC5171CC();
  if (qword_1ECC88A80 != -1)
  {
    OUTLINED_FUNCTION_0_44(&qword_1ECC88A80);
  }

  __swift_project_value_buffer(v26, qword_1ECC8F9A0);
  v33 = sub_1DC5172DC();
  (*(v28 + 8))(v31, v26);
  if (v33)
  {
    v34 = v32;
    sub_1DC5171FC();
    v35 = sub_1DC51734C();
    OUTLINED_FUNCTION_4_24(v25);
    if (v36)
    {
      sub_1DC2AAF50(v25, &qword_1ECC7D208, &qword_1DC5293D0);
      v70 = 0xE000000000000000;
      v71 = 0;
    }

    else
    {
      v47 = sub_1DC51730C();
      v70 = v48;
      v71 = v47;
      OUTLINED_FUNCTION_7_1();
      (*(v49 + 8))(v25, v35);
    }

    v50 = v72;
    sub_1DC5171FC();
    OUTLINED_FUNCTION_4_24(v22);
    if (v36)
    {
      sub_1DC2AAF50(v22, &qword_1ECC7D208, &qword_1DC5293D0);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D210, &qword_1DC527728);
      __swift_storeEnumTagSinglePayload(v13, 1, 1, v51);
    }

    else
    {
      sub_1DC51733C();
      OUTLINED_FUNCTION_7_1();
      (*(v52 + 8))(v22, v35);
    }

    sub_1DC3B2578(v13, v17);
    sub_1DC2AAF50(v13, &qword_1ECC7D1F8, &qword_1DC527718);
    v53 = sub_1DC51088C();
    if (__swift_getEnumTagSinglePayload(v17, 1, v53) == 1)
    {
      sub_1DC2AAF50(v17, &qword_1ECC7D200, &qword_1DC527720);
      v41 = 0;
      v42 = 0xE000000000000000;
    }

    else
    {
      v41 = sub_1DC51087C();
      v42 = v54;
      OUTLINED_FUNCTION_7_1();
      (*(v55 + 8))(v17, v53);
    }

    v56 = v73;
    v57 = sub_1DC5171EC();
    v58 = OUTLINED_FUNCTION_6_19(0x7263u);
    sub_1DC30F668(v58, v59 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000, v57, v50);

    v60 = sub_1DC5172AC();
    OUTLINED_FUNCTION_4_24(v50);
    if (v36)
    {
      sub_1DC2AAF50(v50, &qword_1ECC7BFF8, &qword_1DC522580);
    }

    else
    {
      sub_1DC382AC0();
      v45 = v61;
      v46 = v62;
      OUTLINED_FUNCTION_7_1();
      (*(v63 + 8))(v50, v60);
      if (v46)
      {
LABEL_19:
        v64 = sub_1DC5171EC();
        sub_1DC30F668(0xD000000000000014, 0x80000001DC5448A0, v64, v56);

        OUTLINED_FUNCTION_4_24(v56);
        if (v36)
        {
          sub_1DC2AAF50(v56, &qword_1ECC7BFF8, &qword_1DC522580);
        }

        else
        {
          sub_1DC382AC0();
          v43 = v65;
          v44 = v66;
          OUTLINED_FUNCTION_7_1();
          (*(v67 + 8))(v56, v60);
          if (v44)
          {
            sub_1DC51721C();
            OUTLINED_FUNCTION_0_2();
            result = (*(v68 + 8))(v34);
LABEL_25:
            v40 = v70;
            v39 = v71;
            goto LABEL_26;
          }
        }

        sub_1DC51721C();
        OUTLINED_FUNCTION_0_2();
        (*(v69 + 8))(v34);

        v43 = 0;
        v44 = 0xE000000000000000;
        goto LABEL_25;
      }
    }

    v45 = 0;
    v46 = 0xE000000000000000;
    goto LABEL_19;
  }

  sub_1DC51721C();
  OUTLINED_FUNCTION_0_2();
  result = (*(v37 + 8))(v32);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
LABEL_26:
  *a2 = v39;
  a2[1] = v40;
  a2[2] = v41;
  a2[3] = v42;
  a2[4] = v43;
  a2[5] = v44;
  a2[6] = v45;
  a2[7] = v46;
  return result;
}

uint64_t sub_1DC3B2578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC51732C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1F8, &qword_1DC527718);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D210, &qword_1DC527728);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v30 - v22;
  sub_1DC3B2A88(a1, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1DC2AAF50(v13, &qword_1ECC7D1F8, &qword_1DC527718);
    v24 = sub_1DC51088C();
    v25 = a2;
    v26 = 1;
    return __swift_storeEnumTagSinglePayload(v25, v26, 1, v24);
  }

  (*(v16 + 32))(v23, v13, v14);
  (*(v16 + 16))(v20, v23, v14);
  if ((*(v16 + 88))(v20, v14) == *MEMORY[0x1E69DB378])
  {
    (*(v16 + 96))(v20, v14);
    (*(v6 + 32))(v9, v20, v4);
    sub_1DC51731C();
    sub_1DC51086C();
    (*(v6 + 8))(v9, v4);
    (*(v16 + 8))(v23, v14);
    v24 = sub_1DC51088C();
    v25 = a2;
    v26 = 0;
    return __swift_storeEnumTagSinglePayload(v25, v26, 1, v24);
  }

  v28 = *(v16 + 8);
  v28(v23, v14);
  v29 = sub_1DC51088C();
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v29);
  return (v28)(v20, v14);
}

uint64_t sub_1DC3B28A8()
{
  v1 = v0;
  sub_1DC517F4C();
  v2 = OUTLINED_FUNCTION_6_19(0x7243u);
  MEMORY[0x1E1296160](v2, v3 | 0xEE00203A00000000);
  MEMORY[0x1E1296160](v1[6], v1[7]);
  MEMORY[0x1E1296160](0xD000000000000019, 0x80000001DC5448C0);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  MEMORY[0x1E1296160](0xD000000000000020, 0x80000001DC5448E0);
  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0xD000000000000023, 0x80000001DC544910);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  return 0;
}

uint64_t sub_1DC3B29A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC88A80 != -1)
  {
    OUTLINED_FUNCTION_0_44(&qword_1ECC88A80);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F9A0);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

double sub_1DC3B2A34@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DC3B1F10(a1, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_1DC3B2A88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1F8, &qword_1DC527718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC3B2B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  sub_1DC2A32B0(a1, a2, a3);
  v12 = sub_1DC517E1C();
  v14 = v13;

  *a7 = v12;
  a7[1] = v14;
  a7[2] = a3;
  v15 = type metadata accessor for RVSRequest(0);
  result = sub_1DC3B3C24(a4, a7 + v15[6], &qword_1ECC7D390, &qword_1DC527790);
  *(a7 + v15[7]) = a5;
  *(a7 + v15[8]) = a6;
  return result;
}

uint64_t sub_1DC3B2C10(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001DC5449C0 == a2)
  {

    v4 = 0;
  }

  else
  {
    sub_1DC51825C();
    OUTLINED_FUNCTION_168();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC3B2CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3B2E80(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC3B2D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3B2E80(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1DC3B2D50(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D218, &qword_1DC527798);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DC3B2E80(v10, v11, v12);
  sub_1DC51835C();
  sub_1DC51818C();
  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1DC3B2E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC88A90;
  if (!qword_1ECC88A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC88A90);
  }

  return result;
}

void sub_1DC3B2ED4()
{
  OUTLINED_FUNCTION_35_14();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D220, &qword_1DC5277A0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_24_12();
  v7 = sub_1DC3B2E80(v4, v5, v6);
  OUTLINED_FUNCTION_13_19(&type metadata for RVSResponse.CodingKeys, v8, v7);
  if (!v0)
  {
    sub_1DC5180CC();
    v9 = OUTLINED_FUNCTION_15_12();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_37_9();
}

void sub_1DC3B2FE8(void *a1@<X8>)
{
  sub_1DC3B2ED4();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_1DC3B3030(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001DC5449E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    sub_1DC51825C();
    OUTLINED_FUNCTION_168();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC3B3100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3B329C(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC3B3138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3B329C(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

void sub_1DC3B3170()
{
  OUTLINED_FUNCTION_35_14();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D228, &unk_1DC5277A8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_7_19();
  v5 = sub_1DC3B329C(v2, v3, v4);
  OUTLINED_FUNCTION_6_20(&type metadata for LVCTurn.CodingKeys, v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
  v7 = sub_1DC3B3438(&qword_1ECC7B9F8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  OUTLINED_FUNCTION_19_17(v7, v8);
  v9 = OUTLINED_FUNCTION_30_15();
  v10(v9, v0);
  OUTLINED_FUNCTION_37_9();
}

unint64_t sub_1DC3B329C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC88A98;
  if (!qword_1ECC88A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC88A98);
  }

  return result;
}

void sub_1DC3B32F0()
{
  OUTLINED_FUNCTION_35_14();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D230, &qword_1DC5277B8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_24_12();
  v7 = sub_1DC3B329C(v4, v5, v6);
  OUTLINED_FUNCTION_13_19(&type metadata for LVCTurn.CodingKeys, v8, v7);
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
    sub_1DC3B3438(&qword_1ECC7B9E8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    v9 = OUTLINED_FUNCTION_10_21();
    OUTLINED_FUNCTION_32_12(v9, v10);
    v11 = OUTLINED_FUNCTION_15_12();
    v12(v11);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_37_9();
}

uint64_t sub_1DC3B3438(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7C130, &unk_1DC5240F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DC3B34A4(void *a1@<X8>)
{
  sub_1DC3B32F0();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1DC3B3530()
{
  v1 = OUTLINED_FUNCTION_17_13(0x5463766Cu);
  v3 = v3 && v2 == 0xE800000000000000;
  if (v3)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_26_13(v1);
    OUTLINED_FUNCTION_168();
    v4 = v0 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC3B35E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3B37C4(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC3B3620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3B37C4(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

void sub_1DC3B3658()
{
  OUTLINED_FUNCTION_35_14();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D238, &qword_1DC5277C0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_7_19();
  v6 = sub_1DC3B37C4(v3, v4, v5);
  v8 = OUTLINED_FUNCTION_6_20(&type metadata for LVCHistory.CodingKeys, v7, v6);
  (*(*v0 + 88))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D240, &qword_1DC5277C8);
  v9 = sub_1DC3B3A64(&qword_1ECC7D248, sub_1DC3B3818);
  OUTLINED_FUNCTION_18_18(v9, v10);

  v11 = OUTLINED_FUNCTION_30_15();
  v12(v11, v1);
  OUTLINED_FUNCTION_37_9();
}

unint64_t sub_1DC3B37C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC88AA0;
  if (!qword_1ECC88AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC88AA0);
  }

  return result;
}

unint64_t sub_1DC3B3818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D250;
  if (!qword_1ECC7D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D250);
  }

  return result;
}

uint64_t sub_1DC3B386C(void *a1)
{
  OUTLINED_FUNCTION_10_0();
  v2 = swift_allocObject();
  sub_1DC3B38B4(a1);
  return v2;
}

uint64_t sub_1DC3B38B4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D258, &qword_1DC5277D0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_36_16(MEMORY[0x1E69E7CC0]);
  v9 = sub_1DC3B37C4(v6, v7, v8);
  OUTLINED_FUNCTION_27_15(&type metadata for LVCHistory.CodingKeys, v10, v9);
  if (v2)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D240, &qword_1DC5277C8);
    sub_1DC3B3A64(&qword_1ECC7D260, sub_1DC3B3ACC);
    v11 = OUTLINED_FUNCTION_10_21();
    OUTLINED_FUNCTION_34_13(v11, v12);
    v13 = OUTLINED_FUNCTION_12_19();
    v14(v13);
    OUTLINED_FUNCTION_5_16();
    swift_beginAccess();
    *v3 = v16;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1DC3B3A64(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7D240, &qword_1DC5277C8);
    v5 = a2();
    result = OUTLINED_FUNCTION_33_16(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DC3B3ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D268;
  if (!qword_1ECC7D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D268);
  }

  return result;
}

uint64_t sub_1DC3B3B20@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DC3B3BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DC3B3C24(a1, a3, &qword_1ECC7CFB0, qword_1DC526050);
  v5 = type metadata accessor for DialogState(0);
  return sub_1DC3B3C24(a2, a3 + *(v5 + 20), &unk_1ECC7D3A0, &unk_1DC522560);
}

uint64_t sub_1DC3B3C24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_54_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11_0();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return v4;
}

uint64_t sub_1DC3B3CA4(uint64_t a1)
{
  OUTLINED_FUNCTION_5_16();
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1DC3B3D24()
{
  v1 = OUTLINED_FUNCTION_17_13(0x54737672u);
  v3 = v3 && v2 == 0xE800000000000000;
  if (v3)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_26_13(v1);
    OUTLINED_FUNCTION_168();
    v4 = v0 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC3B3DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3B3F80(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC3B3DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3B3F80(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

void sub_1DC3B3E24()
{
  OUTLINED_FUNCTION_35_14();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D270, &qword_1DC5277D8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_7_19();
  v6 = sub_1DC3B3F80(v3, v4, v5);
  v8 = OUTLINED_FUNCTION_6_20(&type metadata for RVSHistory.CodingKeys, v7, v6);
  (*(*v0 + 88))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D278, &qword_1DC5277E0);
  OUTLINED_FUNCTION_4_25();
  v11 = sub_1DC3B3FD4(v9, v10);
  OUTLINED_FUNCTION_18_18(v11, v12);

  v13 = OUTLINED_FUNCTION_30_15();
  v14(v13, v1);
  OUTLINED_FUNCTION_37_9();
}

unint64_t sub_1DC3B3F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC88AA8;
  if (!qword_1ECC88AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC88AA8);
  }

  return result;
}

uint64_t sub_1DC3B3FD4(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7D278, &qword_1DC5277E0);
    v5 = a2();
    result = OUTLINED_FUNCTION_33_16(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DC3B403C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D288;
  if (!qword_1ECC7D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D288);
  }

  return result;
}

uint64_t sub_1DC3B4090(void *a1)
{
  OUTLINED_FUNCTION_10_0();
  v2 = swift_allocObject();
  sub_1DC3B40D8(a1);
  return v2;
}

uint64_t sub_1DC3B40D8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D290, &qword_1DC5277E8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_36_16(MEMORY[0x1E69E7CC0]);
  v9 = sub_1DC3B3F80(v6, v7, v8);
  OUTLINED_FUNCTION_27_15(&type metadata for RVSHistory.CodingKeys, v10, v9);
  if (v2)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D278, &qword_1DC5277E0);
    OUTLINED_FUNCTION_3_24();
    sub_1DC3B3FD4(v11, v12);
    v13 = OUTLINED_FUNCTION_10_21();
    OUTLINED_FUNCTION_34_13(v13, v14);
    v15 = OUTLINED_FUNCTION_12_19();
    v16(v15);
    OUTLINED_FUNCTION_5_16();
    swift_beginAccess();
    *v3 = v18;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

unint64_t sub_1DC3B4278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D2A0;
  if (!qword_1ECC7D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D2A0);
  }

  return result;
}

uint64_t sub_1DC3B42CC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DC3B434C()
{
  v1 = OUTLINED_FUNCTION_17_13(0x54737474u);
  v3 = v3 && v2 == 0xE800000000000000;
  if (v3)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_26_13(v1);
    OUTLINED_FUNCTION_168();
    v4 = v0 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC3B43DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3B4574(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1DC3B4414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC3B4574(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

void sub_1DC3B444C()
{
  OUTLINED_FUNCTION_35_14();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2A8, &qword_1DC5277F0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_7_19();
  v5 = sub_1DC3B4574(v2, v3, v4);
  OUTLINED_FUNCTION_6_20(&type metadata for TTSHistory.CodingKeys, v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D278, &qword_1DC5277E0);
  OUTLINED_FUNCTION_4_25();
  v9 = sub_1DC3B3FD4(v7, v8);
  OUTLINED_FUNCTION_19_17(v9, v10);
  v11 = OUTLINED_FUNCTION_30_15();
  v12(v11, v0);
  OUTLINED_FUNCTION_37_9();
}

unint64_t sub_1DC3B4574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC88AB0[0];
  if (!qword_1ECC88AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC88AB0);
  }

  return result;
}

void sub_1DC3B45C8()
{
  OUTLINED_FUNCTION_35_14();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2B0, &qword_1DC5277F8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_24_12();
  v7 = sub_1DC3B4574(v4, v5, v6);
  OUTLINED_FUNCTION_13_19(&type metadata for TTSHistory.CodingKeys, v8, v7);
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D278, &qword_1DC5277E0);
    OUTLINED_FUNCTION_3_24();
    sub_1DC3B3FD4(v9, v10);
    v11 = OUTLINED_FUNCTION_10_21();
    OUTLINED_FUNCTION_32_12(v11, v12);
    v13 = OUTLINED_FUNCTION_15_12();
    v14(v13);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_37_9();
}

void sub_1DC3B470C(void *a1@<X8>)
{
  sub_1DC3B45C8();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1DC3B477C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_22_12();
  sub_1DC3B488C(v1, v2, v3, v4);
  if (v5 <= 0x3F)
  {
    v6 = OUTLINED_FUNCTION_22_12();
    sub_1DC3B488C(v6, v7, 255, v8);
    if (v9 <= 0x3F)
    {
      v10 = OUTLINED_FUNCTION_22_12();
      sub_1DC3B488C(v10, v11, v12, v13);
      if (v14 <= 0x3F)
      {
        sub_1DC3B48E0();
        if (v15 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DC3B488C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a4(a3);
    v5 = sub_1DC517D8C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DC3B48E0()
{
  if (!qword_1ECC7BD70)
  {
    v0 = sub_1DC517D8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC7BD70);
    }
  }
}

uint64_t sub_1DC3B4930(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_1DC3B49CC(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_22_12();
  sub_1DC3B488C(v1, v2, 255, v3);
  if (v4 <= 0x3F)
  {
    v5 = OUTLINED_FUNCTION_22_12();
    sub_1DC3B488C(v5, v6, 255, v7);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *_s13CDMFoundation10LVCHistoryC10CodingKeysOwst_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DC3B4B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC89140[0];
  if (!qword_1ECC89140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89140);
  }

  return result;
}

unint64_t sub_1DC3B4BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC89350[0];
  if (!qword_1ECC89350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89350);
  }

  return result;
}

unint64_t sub_1DC3B4C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC89560[0];
  if (!qword_1ECC89560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89560);
  }

  return result;
}

unint64_t sub_1DC3B4C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC89770[0];
  if (!qword_1ECC89770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89770);
  }

  return result;
}

unint64_t sub_1DC3B4CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC89980[0];
  if (!qword_1ECC89980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89980);
  }

  return result;
}

unint64_t sub_1DC3B4D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC89A90;
  if (!qword_1ECC89A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC89A90);
  }

  return result;
}

unint64_t sub_1DC3B4DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC89A98[0];
  if (!qword_1ECC89A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89A98);
  }

  return result;
}

unint64_t sub_1DC3B4DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC89B20;
  if (!qword_1ECC89B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC89B20);
  }

  return result;
}

unint64_t sub_1DC3B4E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC89B28[0];
  if (!qword_1ECC89B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89B28);
  }

  return result;
}

unint64_t sub_1DC3B4EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC89BB0;
  if (!qword_1ECC89BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC89BB0);
  }

  return result;
}

unint64_t sub_1DC3B4F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC89BB8[0];
  if (!qword_1ECC89BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89BB8);
  }

  return result;
}

unint64_t sub_1DC3B4F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC89C40;
  if (!qword_1ECC89C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC89C40);
  }

  return result;
}

unint64_t sub_1DC3B4FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC89C48[0];
  if (!qword_1ECC89C48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89C48);
  }

  return result;
}

unint64_t sub_1DC3B5008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC89CD0;
  if (!qword_1ECC89CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC89CD0);
  }

  return result;
}

unint64_t sub_1DC3B5060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC89CD8[0];
  if (!qword_1ECC89CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89CD8);
  }

  return result;
}

uint64_t sub_1DC3B5114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v6[3] = &type metadata for IntelligenceFlowFeatureFlags;
  v6[4] = sub_1DC3B516C(a1, a2, a3);
  LOBYTE(v6[0]) = v3;
  v4 = sub_1DC510D0C();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4 & 1;
}

unint64_t sub_1DC3B516C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7BBC8;
  if (!qword_1ECC7BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BBC8);
  }

  return result;
}

unint64_t sub_1DC3B51C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D2B8;
  if (!qword_1ECC7D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D2B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DC3B5324()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F9B8);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F9B8);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000011;
  v2[3] = 0x80000001DC544A50;
  v2[4] = 0xD000000000000010;
  v2[5] = 0x80000001DC528070;
  *v1 = v2;
  v3 = *MEMORY[0x1E69DB098];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1DC3B5400@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC89E60 != -1)
  {
    OUTLINED_FUNCTION_0_45(&qword_1ECC89E60);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F9B8);
  OUTLINED_FUNCTION_2_5();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC3B549C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v74 = v3;
  v75 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v73 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v72 = v68 - v8;
  v82 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v77 = v9;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v70 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v71 = v68 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v76 = v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v68 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v68 - v20;
  v22 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v78 = (v25 - v24);
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v79 = v27;
  v80 = v26;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v31 = sub_1DC2BE518();
  v32 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.AlarmRule", 24, 2, v31, v32 & 1, v30);

  v33 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v33 + 32), v18, &qword_1ECC7C158, &unk_1DC5234A0);
  v34 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v34) == 1)
  {
    sub_1DC28EB30(v18, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
LABEL_4:
    sub_1DC28EB30(v21, &qword_1ECC7C160, qword_1DC5233B0);
    v35 = v81;
    v36 = v82;
    v37 = 1;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v35, v37, 1, v36);
    v55 = sub_1DC2BE518();
    sub_1DC2B8848(v30, "HeuristicRules.AlarmRule", 24, 2, v55);

    return (*(v79 + 8))(v30, v80);
  }

  sub_1DC28F358(v18, v21, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v18, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    goto LABEL_4;
  }

  sub_1DC2E53A4(v21, v78);
  v38 = type metadata accessor for HeuristicRoutingRequest(0);
  v40 = v76;
  v39 = v77;
  v41 = *(v77 + 16);
  v69 = *(v38 + 20);
  v42 = v82;
  v41(v76, a1 + v69, v82);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v43 = sub_1DC3431F0();
  v45 = v44;
  if (v43 == sub_1DC312FB4(0) && v45 == v46)
  {

    goto LABEL_15;
  }

  v48 = sub_1DC51825C();

  if (v48)
  {
LABEL_15:
    v53 = sub_1DC5157DC();
    sub_1DC2E5408(v78, type metadata accessor for NLRouterNLParseResponse);
    if (v53)
    {
      (*(v39 + 8))(v40, v42);
      v37 = 1;
      v54 = v81;
    }

    else
    {
      v54 = v81;
      (*(v39 + 32))(v81, v40, v42);
      v37 = 0;
    }

    v35 = v54;
    v36 = v42;
    goto LABEL_19;
  }

  v49 = sub_1DC3431F0();
  v51 = sub_1DC312F68(v49, v50);
  if (v51 == 4)
  {
    v52 = v72;
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v42);
LABEL_14:
    sub_1DC28EB30(v52, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_15;
  }

  v52 = v72;
  sub_1DC312E7C(v51, v72);
  if (__swift_getEnumTagSinglePayload(v52, 1, v42) == 1)
  {
    goto LABEL_14;
  }

  v57 = *(v39 + 32);
  v68[1] = v39 + 32;
  v68[2] = a1;
  v68[0] = v57;
  result = v57(v71, v52, v42);
  v58 = 0;
  v59 = *v78;
  v72 = *(*v78 + 16);
  v68[3] = v75 + 16;
  while (1)
  {
    if (v72 == v58)
    {
      v39 = v77;
      v42 = v82;
      (*(v77 + 8))(v71, v82);
      v40 = v76;
      goto LABEL_15;
    }

    if (v58 >= *(v59 + 16))
    {
      break;
    }

    v61 = v74;
    v60 = v75;
    v62 = v73;
    (*(v75 + 16))(v73, v59 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v58++, v74);
    v63 = sub_1DC5111AC();
    v64 = sub_1DC3B5C54(v63);

    result = (*(v60 + 8))(v62, v61);
    if (v64)
    {
      v65 = v70;
      v66 = v71;
      v40 = v76;
      sub_1DC32DE40();
      v39 = v77;
      v67 = *(v77 + 8);
      v42 = v82;
      v67(v66, v82);
      v67(v40, v42);
      (v68[0])(v40, v65, v42);
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC3B5C54(uint64_t a1)
{
  v61 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v60 = v6 - v5;
  v65 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = v3;
    v24 = *(v15 + 16);
    v23 = v15 + 16;
    v22 = v24;
    v25 = a1 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v63 = v24;
    v64 = (v8 + 8);
    v58 = (v21 + 8);
    v59 = v18 - v17;
    v26 = *(v23 + 56);
    v62 = v26;
    do
    {
      v22(v19, v25, v13);
      if (sub_1DC5114CC())
      {
        sub_1DC51154C();
        v27 = sub_1DC51177C();
        v28 = *v64;
        (*v64)(v12, v65);
        if ((v27 & 1) != 0 && (type metadata accessor for NLRouterBypassUtils(), sub_1DC51154C(), sub_1DC51178C(), v28(v12, v65), v29 = sub_1DC307E5C(v60), v19 = v59, (*v58)(v60, v61), v29))
        {

          sub_1DC51478C();

          sub_1DC28F358(v69, v67, &qword_1ECC7D3F0, &qword_1DC5238B0);
          if (v68)
          {
            sub_1DC28F358(v67, v66, &qword_1ECC7D3F0, &qword_1DC5238B0);
            sub_1DC5148DC();
            OUTLINED_FUNCTION_2_28();
            v22 = v63;
            if (swift_dynamicCast())
            {

              sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
              v54 = sub_1DC34328C();

              sub_1DC28EB30(v69, &qword_1ECC7D3F0, &qword_1DC5238B0);
              v56 = OUTLINED_FUNCTION_3_25();
              v57(v56);
              __swift_destroy_boxed_opaque_existential_1Tm(v66);
              sub_1DC28EB30(v67, &qword_1ECC7D3F0, &qword_1DC5238B0);
              return v54 & 1;
            }

            sub_1DC28EB30(v69, &qword_1ECC7D3F0, &qword_1DC5238B0);
            v30 = OUTLINED_FUNCTION_3_25();
            v31(v30);
            sub_1DC51492C();
            v32 = OUTLINED_FUNCTION_2_28();
            if (OUTLINED_FUNCTION_5_28(v32, v33, v34, v35) || (sub_1DC5148FC(), v36 = OUTLINED_FUNCTION_2_28(), OUTLINED_FUNCTION_5_28(v36, v37, v38, v39)) || (sub_1DC5149EC(), v40 = OUTLINED_FUNCTION_2_28(), OUTLINED_FUNCTION_5_28(v40, v41, v42, v43)) || (sub_1DC51498C(), v44 = OUTLINED_FUNCTION_2_28(), OUTLINED_FUNCTION_5_28(v44, v45, v46, v47)))
            {

              __swift_destroy_boxed_opaque_existential_1Tm(v66);
              sub_1DC28EB30(v67, &qword_1ECC7D3F0, &qword_1DC5238B0);
              v54 = 1;
              return v54 & 1;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v66);
          }

          else
          {

            sub_1DC28EB30(v69, &qword_1ECC7D3F0, &qword_1DC5238B0);
            v52 = OUTLINED_FUNCTION_3_25();
            v53(v52);
            v22 = v63;
          }

          sub_1DC28EB30(v67, &qword_1ECC7D3F0, &qword_1DC5238B0);
        }

        else
        {
          v50 = OUTLINED_FUNCTION_3_25();
          v51(v50);
          v22 = v63;
        }

        v26 = v62;
      }

      else
      {
        v48 = OUTLINED_FUNCTION_3_25();
        v49(v48);
      }

      v25 += v26;
      --v20;
    }

    while (v20);
  }

  v54 = 0;
  return v54 & 1;
}

uint64_t sub_1DC3B614C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE0, &unk_1DC5253A0);
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  v112 = &v108 - v5;
  OUTLINED_FUNCTION_12();
  sub_1DC5167EC();
  OUTLINED_FUNCTION_0();
  v110 = v7;
  v111 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OUTLINED_FUNCTION_12();
  v115 = type metadata accessor for NLRouterTurnContext(v9);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v116 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v113 = v14;
  v15 = OUTLINED_FUNCTION_12();
  v16 = type metadata accessor for TurnSummary.ExecutionSource(v15);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v117 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v118 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  v23 = OUTLINED_FUNCTION_10(v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v108 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  v27 = OUTLINED_FUNCTION_10(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_62();
  v119 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_8();
  v114 = v35 - v36;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v108 - v39;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_62();
  v42 = v41;
  OUTLINED_FUNCTION_12();
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v122 = v44;
  v123 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v108 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v47 = sub_1DC2BE518();
  v48 = OUTLINED_FUNCTION_130();
  v121 = v46;
  sub_1DC2A2ED0("HeuristicRules.UndoRule", 23, 2, v47, v48 & 1, v46);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC346908() & 1) == 0)
  {
    v62 = sub_1DC517B9C();
    v63 = sub_1DC2BE518();
    sub_1DC516F0C(v62, &dword_1DC287000, v63, "[UndoRule] rule is off", 22, 2, MEMORY[0x1E69E7CC0]);

    v61 = sub_1DC5157EC();
    v59 = a2;
LABEL_17:
    v60 = 1;
    goto LABEL_18;
  }

  v108 = a2;
  type metadata accessor for HeuristicRoutingRequest(0);
  v49 = v120;
  sub_1DC32BBE0();
  if ((v50 & 1) == 0)
  {
    v61 = sub_1DC5157EC();
    v59 = v108;
    goto LABEL_17;
  }

  v51 = type metadata accessor for NLRouterBypassUtils();
  if ((OUTLINED_FUNCTION_130() & 1) == 0)
  {
    v64 = type metadata accessor for NLRouterServiceRequest(0);
    sub_1DC28F358(v49 + *(v64 + 20), v42, &qword_1ECC7BFD0, &unk_1DC522550);
    v65 = *(v49 + *(v64 + 24));
    v66 = v65[2];
    if (v66)
    {
      sub_1DC2D8C78(v65[6 * v66 + 2], v25);
      v67 = type metadata accessor for TurnSummary(0);
      if (__swift_getEnumTagSinglePayload(v25, 1, v67) != 1)
      {
        v69 = v119;
        sub_1DC28F358(&v25[*(v67 + 28)], v119, &qword_1ECC7BFC8, &unk_1DC524050);
        v70 = v25;
        v68 = v69;
        sub_1DC3B6BFC(v70, type metadata accessor for TurnSummary);
LABEL_14:
        sub_1DC28F358(v68, v30, &qword_1ECC7BFC8, &unk_1DC524050);
        if (__swift_getEnumTagSinglePayload(v30, 1, v16) == 1)
        {
          sub_1DC28EB30(v68, &qword_1ECC7BFC8, &unk_1DC524050);
          sub_1DC28EB30(v42, &qword_1ECC7BFD0, &unk_1DC522550);
          v71 = v30;
          v72 = &qword_1ECC7BFC8;
          v73 = &unk_1DC524050;
LABEL_16:
          sub_1DC28EB30(v71, v72, v73);
          v74 = v108;
          v61 = sub_1DC5157EC();
          v59 = v74;
          goto LABEL_17;
        }

        v120 = v51;
        v78 = v118;
        sub_1DC3B6B9C(v30, v118, type metadata accessor for TurnSummary.ExecutionSource);
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
        v80 = v117;
        __swift_storeEnumTagSinglePayload(v117, 2, 4, v79);
        static TurnSummary.ExecutionSource.== infix(_:_:)();
        v82 = v81;
        OUTLINED_FUNCTION_0_46();
        sub_1DC3B6BFC(v80, v83);
        if (v82)
        {
          OUTLINED_FUNCTION_0_46();
          sub_1DC3B6BFC(v78, v84);
          sub_1DC28EB30(v68, &qword_1ECC7BFC8, &unk_1DC524050);
          sub_1DC28EB30(v42, &qword_1ECC7BFD0, &unk_1DC522550);
          v54 = MEMORY[0x1E69D02F8];
          goto LABEL_6;
        }

        v119 = v79;
        sub_1DC28F358(v42, v40, &qword_1ECC7BFD0, &unk_1DC522550);
        v85 = v115;
        if (__swift_getEnumTagSinglePayload(v40, 1, v115) == 1)
        {
          sub_1DC28EB30(v40, &qword_1ECC7BFD0, &unk_1DC522550);
          v86 = v116;
        }

        else
        {
          OUTLINED_FUNCTION_3_26();
          v87 = v113;
          sub_1DC3B6B9C(v40, v113, v88);
          v89 = *(*v87 + 16);
          OUTLINED_FUNCTION_1_30();
          sub_1DC3B6BFC(v87, v90);
          v86 = v116;
          if (v89)
          {
            goto LABEL_34;
          }
        }

        v91 = v114;
        sub_1DC28F358(v42, v114, &qword_1ECC7BFD0, &unk_1DC522550);
        if (__swift_getEnumTagSinglePayload(v91, 1, v85) == 1)
        {
          v92 = &qword_1ECC7BFD0;
          v93 = &unk_1DC522550;
        }

        else
        {
          OUTLINED_FUNCTION_3_26();
          sub_1DC3B6B9C(v91, v86, v94);
          v91 = v112;
          sub_1DC28F358(v86 + *(v85 + 28), v112, &qword_1ECC7BFE0, &unk_1DC5253A0);
          v95 = v111;
          if (__swift_getEnumTagSinglePayload(v91, 1, v111) != 1)
          {
            v103 = v109;
            v104 = v110;
            (*(v110 + 32))(v109, v91, v95);
            v105 = sub_1DC5167BC();
            (*(v104 + 8))(v103, v95);
            OUTLINED_FUNCTION_1_30();
            sub_1DC3B6BFC(v116, v106);
            if (v105)
            {
              goto LABEL_34;
            }

            goto LABEL_29;
          }

          OUTLINED_FUNCTION_1_30();
          sub_1DC3B6BFC(v86, v96);
          v92 = &qword_1ECC7BFE0;
          v93 = &unk_1DC5253A0;
        }

        sub_1DC28EB30(v91, v92, v93);
LABEL_29:
        if (!sub_1DC307DE8(v65) || (__swift_storeEnumTagSinglePayload(v80, 1, 4, v119), static TurnSummary.ExecutionSource.== infix(_:_:)(), v98 = v97, OUTLINED_FUNCTION_0_46(), sub_1DC3B6BFC(v80, v99), (v98 & 1) == 0))
        {
          OUTLINED_FUNCTION_0_46();
          sub_1DC3B6BFC(v78, v102);
          sub_1DC28EB30(v68, &qword_1ECC7BFC8, &unk_1DC524050);
          v72 = &qword_1ECC7BFD0;
          v73 = &unk_1DC522550;
          v71 = v42;
          goto LABEL_16;
        }

        v100 = sub_1DC517B9C();
        v101 = sub_1DC2BE518();
        sub_1DC516F0C(v100, &dword_1DC287000, v101, "[UndoRule] detected triggerless followup, falling back to siri x", 64, 2, MEMORY[0x1E69E7CC0]);

LABEL_34:
        OUTLINED_FUNCTION_0_46();
        sub_1DC3B6BFC(v78, v107);
        sub_1DC28EB30(v68, &qword_1ECC7BFC8, &unk_1DC524050);
        sub_1DC28EB30(v42, &qword_1ECC7BFD0, &unk_1DC522550);
        goto LABEL_5;
      }

      sub_1DC28EB30(v25, &qword_1ECC7BFC0, &unk_1DC522540);
    }

    v68 = v119;
    __swift_storeEnumTagSinglePayload(v119, 1, 1, v16);
    goto LABEL_14;
  }

  v52 = sub_1DC517B9C();
  v53 = sub_1DC2BE518();
  sub_1DC516F0C(v52, &dword_1DC287000, v53, "[UndoRule] Expect previous task to have executed on companion, discarding undo request.", 87, 2, MEMORY[0x1E69E7CC0]);

LABEL_5:
  v54 = MEMORY[0x1E69D02D8];
LABEL_6:
  v55 = *v54;
  v56 = sub_1DC5157EC();
  OUTLINED_FUNCTION_35();
  v58 = v108;
  (*(v57 + 104))(v108, v55, v56);
  v59 = v58;
  v60 = 0;
  v61 = v56;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v59, v60, 1, v61);
  v75 = sub_1DC2BE518();
  v76 = v121;
  sub_1DC2B8848(v121, "HeuristicRules.UndoRule", 23, 2, v75);

  return (*(v122 + 8))(v76, v123);
}

uint64_t sub_1DC3B6B9C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_35();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DC3B6BFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DC3B6C68(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1DC3B6CB0(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  result = swift_allocObject();
  if (a1 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1;
  }

  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = v3;
  return result;
}

uint64_t sub_1DC3B6CEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v84 = a1;
  v85 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v80 = v10 - v11;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v77 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2C0, &qword_1DC5280F0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_8();
  v79 = v16 - v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v77 - v19;
  v21 = type metadata accessor for TurnInputContainer.TurnInputWrapper(0);
  OUTLINED_FUNCTION_0();
  v81 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v26 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v77 - v28);
  OUTLINED_FUNCTION_12_0();
  v31 = *(v30 + 96);
  v82 = v30 + 96;
  v83 = v31;
  v32 = v31();
  sub_1DC3B73B4(v32, v20);

  v34 = __swift_getEnumTagSinglePayload(v20, 1, v21) == 1;
  v86 = a2;
  if (v34)
  {
    sub_1DC3B765C(v20);
LABEL_4:
    v33 = v85;
    goto LABEL_13;
  }

  sub_1DC3B7F84(v20, v29);
  v34 = *v29 == a2 && v29[1] == a3;
  if (!v34 && (sub_1DC51825C() & 1) == 0)
  {
    sub_1DC3B856C(v29);
    goto LABEL_4;
  }

  v35 = sub_1DC28D414();
  v33 = v85;
  (*(v8 + 16))(v14, v35, v85);

  v36 = sub_1DC516F6C();
  v37 = sub_1DC517BAC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_63();
    v78 = v8;
    v39 = v38;
    v40 = OUTLINED_FUNCTION_82();
    v87[0] = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_1DC291244(v86, a3, v87);
    _os_log_impl(&dword_1DC287000, v36, v37, "Replacing current TurnInput for requestId: %s with a new one", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v33 = v85;
    OUTLINED_FUNCTION_66();
    v8 = v78;
    OUTLINED_FUNCTION_66();
  }

  (*(v8 + 8))(v14, v33);
  v41 = (*(*v4 + 112))(v87);
  v42 = v79;
  sub_1DC3B7494(v79);
  sub_1DC3B765C(v42);
  v41(v87, 0);
  sub_1DC3B856C(v29);
LABEL_13:
  v43 = *(v21 + 20);
  sub_1DC51119C();
  OUTLINED_FUNCTION_35();
  (*(v44 + 16))(&v26[v43], v84);
  v45 = v86;
  *v26 = v86;
  *(v26 + 1) = a3;
  v46 = *(*v4 + 112);

  v47 = v46(v87);
  v49 = v48;
  sub_1DC3B7EF8();
  v50 = *(*v49 + 16);
  sub_1DC3B7F44(v50);
  v51 = *v49;
  *(v51 + 16) = v50 + 1;
  sub_1DC3B7F84(v26, v51 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v50);
  v52 = v47(v87, 0);
  v53 = v83;
  v54 = *((v83)(v52) + 16);

  v56 = v4[3];
  if (v56 >= v54)
  {
    goto LABEL_24;
  }

  v57 = (v53)(v55);
  v58 = sub_1DC3B76C4(v56, v57);
  v60 = v59;
  v62 = v61;
  v64 = v63;
  if ((v63 & 1) == 0)
  {
    goto LABEL_15;
  }

  v67 = v8;
  sub_1DC51827C();
  swift_unknownObjectRetain_n();
  v68 = swift_dynamicCastClass();
  if (!v68)
  {
    swift_unknownObjectRelease();
    v68 = MEMORY[0x1E69E7CC0];
  }

  v69 = *(v68 + 16);

  if (__OFSUB__(v64 >> 1, v62))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v69 != (v64 >> 1) - v62)
  {
LABEL_29:
    swift_unknownObjectRelease();
    v8 = v67;
    v45 = v86;
LABEL_15:
    sub_1DC3B848C(v58, v60, v62, v64);
    v66 = v65;
LABEL_22:
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v66 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v8 = v67;
  v45 = v86;
  if (!v66)
  {
    v66 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

LABEL_23:
  (*(*v4 + 104))(v66);
LABEL_24:
  v70 = sub_1DC28D414();
  v71 = v80;
  (*(v8 + 16))(v80, v70, v33);

  v72 = sub_1DC516F6C();
  v73 = sub_1DC517B9C();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = OUTLINED_FUNCTION_63();
    v75 = OUTLINED_FUNCTION_82();
    v87[0] = v75;
    *v74 = 136315138;
    *(v74 + 4) = sub_1DC291244(v45, a3, v87);
    _os_log_impl(&dword_1DC287000, v72, v73, "Added new turnInput for requestId: %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  return (*(v8 + 8))(v71, v33);
}

uint64_t sub_1DC3B73B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for TurnInputContainer.TurnInputWrapper(0);
    sub_1DC3B85C8(a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a2);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for TurnInputContainer.TurnInputWrapper(0);
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_1DC3B7494@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2C0, &qword_1DC5280F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TurnInputContainer.TurnInputWrapper(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    sub_1DC3B87D8(v5);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_1DC3B765C(v5);
      sub_1DC3B86D4(*(*v1 + 16) - 1, a1);
    }

    else
    {
      sub_1DC3B7F84(v5, v8);
      sub_1DC3B7F84(v8, a1);
    }

    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
  }
}

uint64_t type metadata accessor for TurnInputContainer.TurnInputWrapper(uint64_t a1)
{
  result = qword_1ECC825E0;
  if (!qword_1ECC825E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DC3B765C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2C0, &qword_1DC5280F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC3B76C4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1DC2DAEF4(v3, -result, 0);
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      v5 = sub_1DC3B862C(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC3B775C()
{
  v22 = type metadata accessor for TurnInputContainer.TurnInputWrapper(0);
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v5 = v4 - v3;
  v6 = sub_1DC51119C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_12_0();
  v14 = (*(v13 + 96))();
  v15 = *(v14 + 16);
  if (v15)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1DC3B82A4(0, v15, 0);
    v16 = v23;
    v17 = v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v21 = *(v1 + 72);
    do
    {
      sub_1DC3B85C8(v17, v5);
      (*(v8 + 16))(v12, v5 + *(v22 + 20), v6);
      sub_1DC3B856C(v5);
      v19 = *(v23 + 16);
      v18 = *(v23 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DC3B82A4((v18 > 1), v19 + 1, 1);
      }

      *(v23 + 16) = v19 + 1;
      (*(v8 + 32))(v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, v12, v6);
      v17 += v21;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v16;
}

uint64_t sub_1DC3B79B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TurnInputContainer.TurnInputWrapper(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_1();
  v8 = (v7 - v6);
  v9 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v59 = (v13 - v14);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v55 - v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v20 = sub_1DC28D414();
  v21 = *(v11 + 16);
  v60 = v20;
  v61 = v21;
  v62 = v11 + 16;
  (v21)(v19);

  v22 = sub_1DC516F6C();
  v23 = sub_1DC517B9C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_63();
    v56 = v11;
    v25 = v24;
    v26 = OUTLINED_FUNCTION_82();
    v58 = v9;
    v27 = v26;
    v63 = v26;
    *v25 = 136315138;
    *(v25 + 4) = OUTLINED_FUNCTION_7_20();
    _os_log_impl(&dword_1DC287000, v22, v23, "Attempting turnInput rollback to requestId: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v9 = v58;
    OUTLINED_FUNCTION_66();
    v11 = v56;
    OUTLINED_FUNCTION_66();
  }

  v28 = *(v11 + 8);
  v28(v19, v9);
  OUTLINED_FUNCTION_12_0();
  v30 = (*(v29 + 96))();
  if (*(v30 + 16))
  {
    while (1)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DC3B88CC(v30);
        v30 = result;
      }

      v32 = *(v30 + 16);
      if (!v32)
      {
        __break(1u);
        return result;
      }

      v33 = v32 - 1;
      v34 = v30 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v33;
      *(v30 + 16) = v33;
      sub_1DC3B7F84(v34, v8);
      v35 = *v8 == a1 && v8[1] == a2;
      if (v35 || (sub_1DC51825C() & 1) != 0)
      {
        break;
      }

      sub_1DC3B856C(v8);
      if (!*(v30 + 16))
      {
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_12_0();
    (*(v45 + 104))(v30);
    v61(v57, v60, v9);

    v46 = sub_1DC516F6C();
    v47 = sub_1DC517B9C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_63();
      v58 = v9;
      v49 = v48;
      v50 = OUTLINED_FUNCTION_82();
      v63 = v50;
      *v49 = 136315138;
      *(v49 + 4) = OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_13_20(&dword_1DC287000, v51, v52, "Successfully rolled back turnInputContainer to requestId: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      v53 = OUTLINED_FUNCTION_11_21();
      v54 = v58;
    }

    else
    {

      v53 = OUTLINED_FUNCTION_11_21();
      v54 = v9;
    }

    v28(v53, v54);
    sub_1DC3B856C(v8);
    return 1;
  }

  else
  {
LABEL_13:

    v61(v59, v60, v9);

    v36 = sub_1DC516F6C();
    v37 = sub_1DC517BAC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v9;
      v39 = OUTLINED_FUNCTION_63();
      v40 = OUTLINED_FUNCTION_82();
      v63 = v40;
      *v39 = 136315138;
      *(v39 + 4) = OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_13_20(&dword_1DC287000, v41, v42, "Could not rollback since requestId: %s was not found in TurnInputs array");
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      v43 = OUTLINED_FUNCTION_11_21();
      v44 = v38;
    }

    else
    {

      v43 = OUTLINED_FUNCTION_11_21();
      v44 = v9;
    }

    v28(v43, v44);
    return 0;
  }
}

void *sub_1DC3B7EF8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1DC3B7FE8(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_1DC3B7F44(void *result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_1DC3B7FE8((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1DC3B7F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TurnInputContainer.TurnInputWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1DC3B7FE8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_1DC3B80E8(v8, v7);
  v10 = *(type metadata accessor for TurnInputContainer.TurnInputWrapper(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC3B81E4(a4 + v11, v8, v9 + v11, type metadata accessor for TurnInputContainer.TurnInputWrapper);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1DC3B80E8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2C8, &qword_1DC528178);
  v4 = *(type metadata accessor for TurnInputContainer.TurnInputWrapper(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DC3B81E4(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_35(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_52_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_52_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

void *sub_1DC3B82A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC3B82C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DC3B82C4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2D0, &unk_1DC528180);
  v10 = *(sub_1DC51119C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DC51119C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC3B81E4(a4 + v16, v8, v13 + v16, MEMORY[0x1E69D09C8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1DC3B848C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_1DC3B80E8((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      type metadata accessor for TurnInputContainer.TurnInputWrapper(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_1DC3B856C(uint64_t a1)
{
  v2 = type metadata accessor for TurnInputContainer.TurnInputWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC3B85C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TurnInputContainer.TurnInputWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DC3B862C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for TurnInputContainer.TurnInputWrapper(0);
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1DC3B86D4(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1DC3B88CC(v5);
  }

  v6 = v5[2];
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(type metadata accessor for TurnInputContainer.TurnInputWrapper(0) - 8);
    v8 = *(v7 + 72);
    v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v8 * a1;
    sub_1DC3B7F84(v9, a2);
    sub_1DC3B81E4(v9 + v8, v6 - 1 - a1, v9, type metadata accessor for TurnInputContainer.TurnInputWrapper);
    v5[2] = v6 - 1;
    *v2 = v5;
  }
}

uint64_t sub_1DC3B87D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DC3B88CC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v5 - 1;
    v7 = type metadata accessor for TurnInputContainer.TurnInputWrapper(0);
    sub_1DC3B7F84(v3 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v6, a1);
    *(v3 + 16) = v6;
    *v1 = v3;

    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC3B8908(uint64_t a1)
{
  result = sub_1DC51119C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DC3B8984()
{
  sub_1DC5106BC();
  swift_allocObject();
  sub_1DC5106AC();
  type metadata accessor for BloomFilter();
  OUTLINED_FUNCTION_1_31();
  v1 = sub_1DC510A0C();
  v3 = v2;
  v4 = sub_1DC3B8A20();
  OUTLINED_FUNCTION_0_47(v4);
  sub_1DC2AD740(v1, v3);

  if (!v0)
  {
    return v6;
  }

  return result;
}

unint64_t sub_1DC3B8A20()
{
  result = qword_1ECC7D2D8;
  if (!qword_1ECC7D2D8)
  {
    type metadata accessor for BloomFilter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D2D8);
  }

  return result;
}

uint64_t sub_1DC3B8B28()
{
  sub_1DC5106BC();
  swift_allocObject();
  sub_1DC5106AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2E0, &unk_1DC528190);
  OUTLINED_FUNCTION_1_31();
  v1 = sub_1DC510A0C();
  v3 = v2;
  v4 = sub_1DC3B8BD0();
  OUTLINED_FUNCTION_0_47(v4);
  sub_1DC2AD740(v1, v3);

  if (!v0)
  {
    return v6;
  }

  return result;
}

unint64_t sub_1DC3B8BD0()
{
  result = qword_1ECC7D2E8;
  if (!qword_1ECC7D2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7D2E0, &unk_1DC528190);
    sub_1DC3B8A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D2E8);
  }

  return result;
}

id BloomFilterObjectiveCHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BloomFilterObjectiveCHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloomFilterObjectiveCHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BloomFilterObjectiveCHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloomFilterObjectiveCHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC3B8EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v191 = a1;
  v155 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v187 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14(v126 - v6);
  v146 = sub_1DC51125C();
  OUTLINED_FUNCTION_0();
  v186 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v9);
  v148 = sub_1DC51703C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14(v126 - v14);
  v15 = sub_1DC511B5C();
  OUTLINED_FUNCTION_0();
  v184 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v126 - v22;
  v193 = sub_1DC51702C();
  OUTLINED_FUNCTION_0();
  v149 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_1();
  v183 = v26;
  v158 = sub_1DC5170AC();
  OUTLINED_FUNCTION_0();
  v185 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v29);
  v166 = sub_1DC51147C();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  v190 = v126 - v34;
  v189 = sub_1DC51708C();
  OUTLINED_FUNCTION_0();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_1();
  v188 = v38;
  v39 = sub_1DC516F9C();
  OUTLINED_FUNCTION_0();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_1();
  v176 = v43;
  v44 = a2;
  result = sub_1DC51127C();
  v175 = *(v191 + 16);
  if (v175)
  {
    v46 = v41;
    v47 = 0;
    v48 = *(v46 + 16);
    v46 += 16;
    v173 = v48;
    v172 = v191 + ((*(v46 + 64) + 32) & ~*(v46 + 64));
    v171 = v46 + 72;
    v170 = *MEMORY[0x1E69D27F0];
    v164 = *MEMORY[0x1E69D27F8];
    v153 = *MEMORY[0x1E69D27E8];
    v145 = (v187 + 2);
    v144 = (v187 + 1);
    v143 = v11 + 32;
    v142 = v11 + 16;
    v141 = v11 + 88;
    v140 = *MEMORY[0x1E69D2900];
    v136 = *MEMORY[0x1E69D2918];
    v134 = *MEMORY[0x1E69D28F8];
    v131 = *MEMORY[0x1E69D28E8];
    v129 = *MEMORY[0x1E69D2910];
    v127 = *MEMORY[0x1E69D0A08];
    v139 = v186 + 104;
    v138 = (v11 + 8);
    v152 = v185 + 32;
    v187 = (v36 + 8);
    v126[2] = *MEMORY[0x1E69D0A00];
    v151 = v185 + 8;
    v162 = v36 + 32;
    v128 = *MEMORY[0x1E69D09E8];
    v161 = v31 + 16;
    v160 = v31 + 8;
    v130 = *MEMORY[0x1E69D09F0];
    v133 = *MEMORY[0x1E69D0A10];
    v135 = *MEMORY[0x1E69D09F8];
    v137 = v46 - 8;
    v168[1] = v46 + 80;
    v180 = (v149 + 8);
    v181 = v149 + 16;
    v179 = (v184 + 16);
    v178 = v184 + 8;
    v177 = v184 + 32;
    v174 = v46;
    v169 = *(v46 + 56);
    v150 = a2;
    v168[0] = v39;
    v192 = v20;
    v182 = v15;
    do
    {
      v49 = v176;
      v173(v176, v172 + v169 * v47, v39);
      OUTLINED_FUNCTION_37();
      v50 = OUTLINED_FUNCTION_48_0();
      v51(v50);
      OUTLINED_FUNCTION_9_22();
      if (v66)
      {
        OUTLINED_FUNCTION_37();
        v52 = OUTLINED_FUNCTION_48_0();
        v53(v52);
        OUTLINED_FUNCTION_37();
        v54 = v47;
        v56 = v188;
        v55 = v189;
        v57(v188, v49, v189);
        v58 = v190;
        sub_1DC51146C();
        sub_1DC51704C();
        sub_1DC51142C();
        sub_1DC51705C();
        sub_1DC51143C();
        sub_1DC51707C();
        sub_1DC51145C();
        sub_1DC51706C();
        sub_1DC51144C();
        OUTLINED_FUNCTION_37();
        v59 = OUTLINED_FUNCTION_4_26();
        v60 = v166;
        v61(v59, v58, v166);
        sub_1DC51124C();
        OUTLINED_FUNCTION_37();
        v62(v58, v60);
        v63 = *v187;
        v64 = v56;
        v47 = v54;
        v65 = v55;
        v39 = v168[0];
      }

      else
      {
        OUTLINED_FUNCTION_9_22();
        v67 = v167;
        if (v66)
        {
          v159 = v47;
          OUTLINED_FUNCTION_37();
          v68 = OUTLINED_FUNCTION_48_0();
          v69(v68);
          OUTLINED_FUNCTION_37();
          v70 = v157;
          v71 = v158;
          v72(v157, v49, v158);
          v73 = sub_1DC51709C();
          v74 = *(v73 + 16);
          if (v74)
          {
            v75 = (*(v149 + 80) + 32) & ~*(v149 + 80);
            v156 = v73;
            v76 = v73 + v75;
            v77 = *(v149 + 72);
            v185 = *(v149 + 16);
            v186 = v77;
            v78 = MEMORY[0x1E69E7CC0];
            do
            {
              v191 = v78;
              v79 = v183;
              (v185)(v183, v76, v193);
              sub_1DC511B4C();
              sub_1DC51701C();
              sub_1DC511B3C();
              sub_1DC51146C();
              sub_1DC511B2C();
              v80 = v188;
              OUTLINED_FUNCTION_13_21();
              sub_1DC51704C();
              v81 = *v187;
              v82 = v189;
              (*v187)(v80, v189);
              OUTLINED_FUNCTION_14_11();
              OUTLINED_FUNCTION_6_21();
              sub_1DC51142C();
              v83 = OUTLINED_FUNCTION_8_15();
              (v70)(v83);
              OUTLINED_FUNCTION_13_21();
              sub_1DC51705C();
              v81(v80, v82);
              OUTLINED_FUNCTION_14_11();
              OUTLINED_FUNCTION_6_21();
              sub_1DC51143C();
              v84 = OUTLINED_FUNCTION_8_15();
              (v70)(v84);
              OUTLINED_FUNCTION_13_21();
              sub_1DC51706C();
              v81(v80, v82);
              OUTLINED_FUNCTION_14_11();
              OUTLINED_FUNCTION_6_21();
              sub_1DC51144C();
              v85 = OUTLINED_FUNCTION_8_15();
              (v70)(v85);
              OUTLINED_FUNCTION_13_21();
              (*v180)(v79, v193);
              sub_1DC51707C();
              v86 = v80;
              v78 = v191;
              v81(v86, v82);
              v87 = v182;
              OUTLINED_FUNCTION_14_11();
              OUTLINED_FUNCTION_6_21();
              sub_1DC51145C();
              v88 = OUTLINED_FUNCTION_8_15();
              (v70)(v88);
              (*v179)(v192, v23, v87);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v78 = sub_1DC3B9DF0(0, v78[2] + 1, 1, v78);
              }

              v70 = v78[2];
              v89 = v78[3];
              if (v70 >= v89 >> 1)
              {
                v78 = sub_1DC3B9DF0((v89 > 1), v70 + 1, 1, v78);
              }

              v90 = v184;
              (*(v184 + 8))(v23, v87);
              v78[2] = v70 + 1;
              (*(v90 + 32))(v78 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v70, v192, v87);
              v76 += v186;
              --v74;
            }

            while (v74);

            v102 = v150;
            v71 = v158;
            v70 = v157;
            v39 = v168[0];
          }

          else
          {

            v102 = v44;
          }

          v44 = v102;
          sub_1DC51100C();
          OUTLINED_FUNCTION_37();
          result = v110(v70, v71);
          v47 = v159;
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_9_22();
        if (v91)
        {
          OUTLINED_FUNCTION_37();
          v92 = OUTLINED_FUNCTION_48_0();
          v93(v92);
          OUTLINED_FUNCTION_37();
          v94 = v148;
          v95(v67, v49, v148);
          OUTLINED_FUNCTION_37();
          v96 = OUTLINED_FUNCTION_4_26();
          v97(v96, v67, v94);
          OUTLINED_FUNCTION_37();
          v98(v49, v94);
          OUTLINED_FUNCTION_9_22();
          if (v66)
          {
            v99 = OUTLINED_FUNCTION_0_48();
            v101 = v168;
          }

          else
          {
            OUTLINED_FUNCTION_9_22();
            if (v111)
            {
              v99 = OUTLINED_FUNCTION_0_48();
              v101 = &v167;
            }

            else
            {
              OUTLINED_FUNCTION_9_22();
              if (v112)
              {
                v99 = OUTLINED_FUNCTION_0_48();
                v101 = &v165;
              }

              else
              {
                OUTLINED_FUNCTION_9_22();
                if (v113)
                {
                  v99 = OUTLINED_FUNCTION_0_48();
                  v101 = &v163;
                }

                else
                {
                  OUTLINED_FUNCTION_9_22();
                  if (!v114)
                  {
                    sub_1DC28D414();
                    OUTLINED_FUNCTION_37();
                    v115 = OUTLINED_FUNCTION_4_26();
                    v116(v115);
                    v117 = sub_1DC516F6C();
                    v118 = sub_1DC517BAC();
                    if (os_log_type_enabled(v117, v118))
                    {
                      v120 = swift_slowAlloc();
                      *v120 = 0;
                      _os_log_impl(&dword_1DC287000, v117, v118, "DataSource of entity not in NLXTypes enum", v120, 2u);
                      OUTLINED_FUNCTION_11_22();
                    }

                    OUTLINED_FUNCTION_37();
                    v121(v132, v155);
                    v122 = OUTLINED_FUNCTION_0_48();
                    v123(v122, v127, v146);
                    sub_1DC51123C();
                    v124 = *v138;
                    v125 = v148;
                    (*v138)(v67, v148);
                    result = (v124)(v147, v125);
                    goto LABEL_27;
                  }

                  v99 = OUTLINED_FUNCTION_0_48();
                  v101 = &v162;
                }
              }
            }
          }

          v100(v99, *(v101 - 64), v146);
          sub_1DC51123C();
          OUTLINED_FUNCTION_37();
          v64 = v67;
          v65 = v94;
        }

        else
        {
          sub_1DC28D414();
          OUTLINED_FUNCTION_37();
          v103 = OUTLINED_FUNCTION_4_26();
          v104(v103);
          v105 = sub_1DC516F6C();
          v106 = sub_1DC517BAC();
          if (os_log_type_enabled(v105, v106))
          {
            v108 = swift_slowAlloc();
            *v108 = 0;
            _os_log_impl(&dword_1DC287000, v105, v106, "Unknown element type in RRMetadata", v108, 2u);
            OUTLINED_FUNCTION_11_22();
          }

          OUTLINED_FUNCTION_37();
          v109(v154, v155);
          OUTLINED_FUNCTION_37();
          v64 = v176;
          v65 = v39;
        }
      }

      result = (v63)(v64, v65);
LABEL_27:
      ++v47;
    }

    while (v47 != v175);
  }

  return result;
}

void *sub_1DC3B9DF0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_1DC3B9EEC(v8, v7);
  v10 = *(sub_1DC511B5C() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC3B9FE8(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1DC3B9EEC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2F0, &qword_1DC5281E8);
  v4 = *(sub_1DC511B5C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC3B9FE8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC511B5C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC511B5C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC3BA0BC(char a1)
{
  if (a1)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x6961467075746573;
  }
}

uint64_t sub_1DC3BA108(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  else
  {
    v3 = 0xD000000000000017;
  }

  if (v2)
  {
    v4 = 0x80000001DC544C80;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0x80000001DC544C80;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC3BA1AC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  else
  {
    v3 = 0x6961467075746573;
  }

  if (v2)
  {
    v4 = 0xEC0000006572756CLL;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = 0x6961467075746573;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEC0000006572756CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC3BA27C(uint64_t a1, char a2)
{
  sub_1DC51769C();
}

uint64_t sub_1DC3BA2F0(uint64_t a1, char a2)
{
  sub_1DC51769C();
}

uint64_t sub_1DC3BA368(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC3BA3EC(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC3BA474@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3BA4D8(*a1, a1[1], &unk_1F57FB260);
  *a2 = result;
  return result;
}

uint64_t sub_1DC3BA4AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC3BA0BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DC3BA4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1DC51808C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC3BA528(char a1)
{
  if (a1)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1DC3BA588@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3BA4D8(*a1, a1[1], &unk_1F57FB2B0);
  *a2 = result;
  return result;
}

uint64_t sub_1DC3BA5C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC3BA528(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1DC3BA5EC(void *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{

  v8 = sub_1DC3BA4D8(a1, a2, &unk_1F57FB260);
  if (v8 == 2)
  {
    v9 = sub_1DC517B9C();
    v10 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v17 = sub_1DC39905C();
    if (os_log_type_enabled(v17, v9))
    {
      OUTLINED_FUNCTION_63();
      v11 = OUTLINED_FUNCTION_41_3();
      v18 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1DC291244(a1, a2, &v18);
      OUTLINED_FUNCTION_8_16(&dword_1DC287000, v17, v9, "WARN: Failed to convert %s to AutoBugCapture.ErrorType");
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
LABEL_7:
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_42();

      return;
    }
  }

  else
  {
    v12 = v8;

    v13 = sub_1DC3BA4D8(a3, a4, &unk_1F57FB2B0);
    if (v13 == 2)
    {
      v14 = sub_1DC517B9C();
      v15 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v17 = sub_1DC39905C();
      if (os_log_type_enabled(v17, v14))
      {
        OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_41_3();
        OUTLINED_FUNCTION_9_23();
        *v15 = 136315138;
        *(v15 + 4) = sub_1DC291244(a3, a4, &v18);
        OUTLINED_FUNCTION_8_16(&dword_1DC287000, v17, v14, "WARN: Failed to convert %s to AutoBugCapture.ErrorSubType");
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v13;
      v17 = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
      sub_1DC3BA8AC(v12, v16, 0, 0, v17, 15.0);
    }
  }
}

void sub_1DC3BA8AC(char a1, char a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v7 = sub_1DC51737C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = sub_1DC517BEC();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = sub_1DC517BCC();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v38 = sub_1DC5173CC();
  OUTLINED_FUNCTION_0();
  v36 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if (sub_1DC417A58())
  {
    sub_1DC298C74(0, &qword_1EDAC7FA0, 0x1E69E9610);
    sub_1DC51738C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1DC293C2C(&qword_1EDAC7FA8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD20, &qword_1DC525300);
    v32 = v13;
    sub_1DC2C4B5C(&qword_1EDAC7FB0, &unk_1ECC7CD20, &qword_1DC525300);
    sub_1DC517E9C();
    (*(v16 + 104))(v20, *MEMORY[0x1E69E8090], v14);
    v27 = sub_1DC517C1C();
    v28 = swift_allocObject();
    *(v28 + 16) = a5;
    *(v28 + 24) = a1 & 1;
    *(v28 + 25) = a2 & 1;
    *(v28 + 32) = a3;
    *(v28 + 40) = a4;
    *(v28 + 48) = a6;
    aBlock[4] = sub_1DC3BAFD0;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DC2AECB0;
    aBlock[3] = &block_descriptor_10;
    v29 = _Block_copy(aBlock);

    v30 = a5;
    sub_1DC51739C();
    sub_1DC293C2C(&qword_1EDAC7FE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
    sub_1DC2C4B5C(&qword_1EDAC7FC0, &unk_1ECC7CD40, &unk_1DC523860);
    sub_1DC517E9C();
    MEMORY[0x1E12964B0](0, v26, v32, v29);
    _Block_release(v29);

    (*(v9 + 8))(v32, v7);
    (*(v36 + 8))(v26, v38);
  }

  else
  {
    v31 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v40 = sub_1DC39905C();
    sub_1DC516F0C(v31, &dword_1DC287000, v40, "ABC reporting for CDM disabled.", 31, 2, MEMORY[0x1E69E7CC0]);
  }
}

void sub_1DC3BAE10(uint64_t a1)
{
  v1 = sub_1DC517B9C();
  v2 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v7 = sub_1DC39905C();
  if (os_log_type_enabled(v7, v1))
  {
    OUTLINED_FUNCTION_63();
    v3 = OUTLINED_FUNCTION_41_3();
    v8 = v3;
    *v2 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D310, &qword_1DC528368);
    v4 = sub_1DC51777C();
    v6 = sub_1DC291244(v4, v5, &v8);

    *(v2 + 4) = v6;
    OUTLINED_FUNCTION_8_16(&dword_1DC287000, v7, v1, "Received response from diagnostic Reporter snapshot for %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_42();
  }

  else
  {
  }
}

id sub_1DC3BAF44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutoBugCapture();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1DC3BAF9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutoBugCapture();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DC3BAFD0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  v4 = sub_1DC517B9C();
  v5 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v6 = sub_1DC39905C();
  sub_1DC516F0C(v4, &dword_1DC287000, v6, "Reporting error with ABC", 24, 2, MEMORY[0x1E69E7CC0]);

  v7 = sub_1DC5176FC();
  v8 = sub_1DC5176FC();

  v9 = sub_1DC5176FC();

  v10 = sub_1DC5176FC();

  v11 = [objc_opt_self() processInfo];
  v12 = [v11 processName];

  v13 = sub_1DC51772C();
  v15 = v14;

  v59 = sub_1DC3BB6C4(v7, v8, v9, v10, v13, v15, 0, v2);
  if (v59 && (aBlock[0] = 0, v16 = v59, v9 = aBlock, sub_1DC51761C(), v16, (v17 = aBlock[0]) != 0))
  {
    aBlock[4] = sub_1DC3BAE10;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DC389FF0;
    aBlock[3] = &block_descriptor_16;
    v18 = _Block_copy(aBlock);
    v19 = sub_1DC3BB768(v17, 0, 0, v18, v2, v3);

    _Block_release(v18);
    if (v19)
    {
      v20 = sub_1DC517B9C();
      v21 = sub_1DC39905C();
      if (os_log_type_enabled(v21, v20))
      {
        OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_41_3();
        OUTLINED_FUNCTION_9_23();
        OUTLINED_FUNCTION_5_29(4.8149e-34, v22, v23, v24, v25, v26, v27, v28, v29, v59);
        v30 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D308, "ʖ");
        v31 = sub_1DC51777C();
        v33 = sub_1DC291244(v31, v32, aBlock);

        *(v5 + 4) = v33;
        v34 = "Took snapshot for signature: %s";
LABEL_13:
        OUTLINED_FUNCTION_8_16(&dword_1DC287000, v21, v20, v34);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_42();

        goto LABEL_14;
      }
    }

    else
    {
      v20 = sub_1DC517BAC();
      v21 = sub_1DC39905C();
      if (os_log_type_enabled(v21, v20))
      {
        OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_41_3();
        OUTLINED_FUNCTION_9_23();
        OUTLINED_FUNCTION_5_29(4.8149e-34, v48, v49, v50, v51, v52, v53, v54, v55, v59);
        v30 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D308, "ʖ");
        v56 = sub_1DC51777C();
        v58 = sub_1DC291244(v56, v57, aBlock);

        *(v5 + 4) = v58;
        v34 = "Couldn't take snapshot for signature: %s";
        goto LABEL_13;
      }
    }
  }

  else
  {
    v35 = sub_1DC517BAC();
    v21 = sub_1DC39905C();
    if (os_log_type_enabled(v21, v35))
    {
      OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_41_3();
      OUTLINED_FUNCTION_9_23();
      v44 = OUTLINED_FUNCTION_5_29(4.8149e-34, v36, v37, v38, v39, v40, v41, v42, v43, v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D308, "ʖ");
      v45 = sub_1DC51777C();
      v47 = sub_1DC291244(v45, v46, aBlock);

      *(v5 + 4) = v47;
      OUTLINED_FUNCTION_8_16(&dword_1DC287000, v21, v35, "Couldn't parse signature: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_42();

LABEL_14:
      return;
    }
  }
}

unint64_t sub_1DC3BB524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D2F8;
  if (!qword_1ECC7D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D2F8);
  }

  return result;
}

unint64_t sub_1DC3BB57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D300;
  if (!qword_1ECC7D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D300);
  }

  return result;
}

_BYTE *sub_1DC3BB5E8(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1DC3BB6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_1DC5176FC();

  v15 = [a8 signatureWithDomain:a1 type:a2 subType:a3 subtypeContext:a4 detectedProcess:v14 triggerThresholdValues:a7];

  return v15;
}

id sub_1DC3BB768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v11 = sub_1DC51760C();
  v12 = [a5 snapshotWithSignature:v11 duration:a2 event:a3 payload:a4 reply:a6];

  return v12;
}

id sub_1DC3BB814()
{
  type metadata accessor for AssistantNLRequestHandler(0);
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1DC333108(0xD00000000000001ELL, 0x80000001DC545050, 8);
  qword_1EDAC9538 = result;
  return result;
}

uint64_t sub_1DC3BB8AC(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_referenceResolutionProxy;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_1DC28F9B0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1DC3BBA8C()
{
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();

  return OUTLINED_FUNCTION_31_0();
}

uint64_t sub_1DC3BBADC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_selectedRcId);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1DC3BBB88()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_didUpdateTurnContainer;
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DC3BBBC8(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_didUpdateTurnContainer;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1DC3BBC54()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_pullingEntitiesOnSiriPrompt;
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DC3BBC94(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_pullingEntitiesOnSiriPrompt;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1DC3BBD90(uint64_t *a1)
{
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
}

uint64_t sub_1DC3BBE28()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_deviceSupportsPersona;
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DC3BBE68(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_deviceSupportsPersona;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1DC3BBEF4()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMultilingualResponseVariantSelectorEnabled;
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DC3BBF34(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMultilingualResponseVariantSelectorEnabled;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1DC3BBFC0()
{
  if (!OUTLINED_FUNCTION_284(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_rootRequestId))
  {
    OUTLINED_FUNCTION_229_0();
  }

  return OUTLINED_FUNCTION_43();
}

void sub_1DC3BC010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v23;
  a20 = v24;
  v140 = v25;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D330, &unk_1DC5283B0);
  OUTLINED_FUNCTION_10(v30);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v32);
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v143 = v34;
  v144 = v33;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  v148 = v35;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v37);
  v38 = sub_1DC515E1C();
  v39 = OUTLINED_FUNCTION_2_29(v38, &a17);
  v150 = v40;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v41);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CED8, &qword_1DC525810) - 8;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  v45 = OUTLINED_FUNCTION_10(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23_1();
  v149 = v47;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_56_1();
  v50 = sub_1DC5168FC();
  OUTLINED_FUNCTION_0();
  v52 = v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_38_1();
  v147 = *(v54 + 344);
  v147(v152);
  OUTLINED_FUNCTION_121_1(v152, v153);
  v55 = OUTLINED_FUNCTION_176();
  v56(v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v152);
  v57 = sub_1DC2A0AE0();
  v58 = OUTLINED_FUNCTION_162_3();
  v142 = v59;
  (v59)(v58, v57, v50);
  v60 = swift_allocObject();
  v60[2] = v20;
  v60[3] = v29;
  v145 = v29;
  v60[4] = v27;
  v151 = v20;

  v146 = v27;

  sub_1DC5168CC();

  v141 = *(v52 + 8);
  v141(v22, v50);
  (*(v150 + 104))(v21, *MEMORY[0x1E69D0530]);
  v61 = OUTLINED_FUNCTION_23_20();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v139);
  v64 = *(v138 + 56);
  sub_1DC28F414(v140, v137, &unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_201_0();
  sub_1DC28F414(v65, v66, v67, v68);
  OUTLINED_FUNCTION_30_8(v137);
  if (!v78)
  {
    OUTLINED_FUNCTION_159_0();
    sub_1DC28F414(v74, v75, v76, v77);
    OUTLINED_FUNCTION_30_8(v137 + v64);
    if (!v78)
    {
      (*(v150 + 32))(v136, v137 + v64);
      sub_1DC3D8E40(&qword_1ECC7BB40, MEMORY[0x1E69D0568], MEMORY[0x1E69D0570]);
      OUTLINED_FUNCTION_63_0();
      v135 = sub_1DC5176CC();
      v81 = *(v150 + 8);
      v82 = OUTLINED_FUNCTION_65_1();
      v81(v82);
      v83 = OUTLINED_FUNCTION_174();
      sub_1DC28EB30(v83, v84, &qword_1DC525380);
      v69 = v139;
      v81(&unk_1ECC7D340);
      v85 = OUTLINED_FUNCTION_146_1();
      v72 = sub_1DC28EB30(v85, v86, &qword_1DC525380);
      v73 = v143;
      v70 = v144;
      v71 = v149;
      if ((v135 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    sub_1DC28EB30(v21, &unk_1ECC7D340, &qword_1DC525380);
    v79 = OUTLINED_FUNCTION_318();
    v69 = v139;
    v80(v79);
    v70 = v144;
    v71 = v149;
LABEL_9:
    sub_1DC28EB30(v137, &qword_1ECC7CED8, &qword_1DC525810);
    v73 = v143;
    goto LABEL_16;
  }

  sub_1DC28EB30(v21, &unk_1ECC7D340, &qword_1DC525380);
  v69 = v139;
  OUTLINED_FUNCTION_39(v137 + v64, 1, v139);
  v70 = v144;
  v71 = v149;
  if (!v78)
  {
    goto LABEL_9;
  }

  v72 = sub_1DC28EB30(v137, &unk_1ECC7D340, &qword_1DC525380);
  v73 = v143;
LABEL_11:
  (v147)(v152, v72);
  v87 = v154;
  __swift_project_boxed_opaque_existential_1(v152, v153);
  v88 = OUTLINED_FUNCTION_23_2();
  if (v89(v88, v87))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v152);
    sub_1DC28D414();
    OUTLINED_FUNCTION_4_2();
    v90();
    v91 = sub_1DC516F6C();
    v92 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_14_7(v92))
    {
      v93 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v93);
      OUTLINED_FUNCTION_27_16();
      _os_log_impl(v94, v95, v96, v97, v98, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    v99 = OUTLINED_FUNCTION_60();
    v101 = v100(v99);
    goto LABEL_23;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v152);
  v71 = v149;
LABEL_16:
  sub_1DC28D414();
  OUTLINED_FUNCTION_4_2();
  v102 = OUTLINED_FUNCTION_233_0();
  v103(v102);
  v104 = OUTLINED_FUNCTION_16();
  sub_1DC28F414(v104, v105, v106, v107);
  v108 = sub_1DC516F6C();
  v109 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_197_0(v109))
  {
    OUTLINED_FUNCTION_63();
    v110 = OUTLINED_FUNCTION_117();
    v152[0] = v110;
    *v71 = 136315138;
    OUTLINED_FUNCTION_193_0();
    sub_1DC28F414(v111, v112, v113, v114);
    v115 = OUTLINED_FUNCTION_34_11();
    v116 = v69;
    OUTLINED_FUNCTION_39(v115, v117, v69);
    if (v78)
    {
      sub_1DC28EB30(v71, &unk_1ECC7D340, &qword_1DC525380);
      v122 = 0xED00006465696669;
      v120 = 0x6365707320746F6ELL;
    }

    else
    {
      v120 = sub_1DC515E0C();
      v122 = v121;
      v123 = OUTLINED_FUNCTION_149();
      v124(v123);
    }

    sub_1DC28EB30(v149, &unk_1ECC7D340, &qword_1DC525380);
    sub_1DC291244(v120, v122, v152);
    OUTLINED_FUNCTION_10_19();

    *(v71 + 4) = v116;
    _os_log_impl(&dword_1DC287000, v108, v109, "requestType:%s, calling fetchAndParseSalientEntities.", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v110);
    OUTLINED_FUNCTION_102();
    OUTLINED_FUNCTION_58();

    (*(v73 + 8))(v148, v70);
  }

  else
  {

    sub_1DC28EB30(v71, &unk_1ECC7D340, &qword_1DC525380);
    v118 = OUTLINED_FUNCTION_73();
    v119(v118);
  }

  sub_1DC51713C();
  OUTLINED_FUNCTION_83(&a12);
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v125, v126, v127, v128);
  sub_1DC2C8CC4();
  v101 = sub_1DC28EB30(v108, &unk_1ECC7D330, &unk_1DC5283B0);
LABEL_23:
  (v147)(v152, v101);
  v129 = v154;
  __swift_project_boxed_opaque_existential_1(v152, v153);
  v130 = OUTLINED_FUNCTION_23_2();
  v131(v130, v129);
  __swift_destroy_boxed_opaque_existential_1Tm(v152);
  v132 = OUTLINED_FUNCTION_78_6();
  v142(v132);
  v133 = swift_allocObject();
  v133[2] = v151;
  v133[3] = v145;
  v133[4] = v146;

  OUTLINED_FUNCTION_170_1();
  sub_1DC5168CC();

  v134 = OUTLINED_FUNCTION_30();
  (v141)(v134);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3BCA44()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_228_0();
  sub_1DC51373C();
  OUTLINED_FUNCTION_0();
  v9 = v4;
  v10 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = OUTLINED_FUNCTION_9_24();
  type metadata accessor for AssistantNLRequestHandler(v5);
  v6 = sub_1DC3BCBAC();
  (*(*v0 + 832))(v6, v2);

  sub_1DC2C5FC4(v0 + 16, v11);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_1DC515D6C();
  sub_1DC515B5C();
  v7 = OUTLINED_FUNCTION_104_1();
  v8(v7);

  (*(v9 + 8))(v1, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3BCBAC()
{
  OUTLINED_FUNCTION_38_2();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v2 = sub_1DC5159CC();
  v3 = [v2 recognition];

  if (v3)
  {
    AFSpeechRecognition.toNLXAsrHypotheses()();
    v5 = v4;

    return v5;
  }

  else
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v7(v0);
    v8 = sub_1DC516F6C();
    sub_1DC517BAC();
    OUTLINED_FUNCTION_116();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v10);
      OUTLINED_FUNCTION_51_8(&dword_1DC287000, v11, v12, "Recognition is nil");
      OUTLINED_FUNCTION_58();
    }

    v13 = OUTLINED_FUNCTION_36();
    v14(v13);
    return MEMORY[0x1E69E7CC0];
  }
}

void sub_1DC3BCCF4()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v4 = v3;
  v5 = sub_1DC51373C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_21();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  sub_1DC515C0C();
  OUTLINED_FUNCTION_183();
  v11 = (*(v10 + 1040))();

  if (v11)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_90();
    v12 = OUTLINED_FUNCTION_233_0();
    v13(v12);
    v14 = v4;
    v15 = sub_1DC516F6C();
    v16 = sub_1DC517B9C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_140();
      v37[0] = OUTLINED_FUNCTION_143();
      *v17 = 136315394;
      v18 = sub_1DC515D6C();
      OUTLINED_FUNCTION_376(v18, v19);
      OUTLINED_FUNCTION_374();
      *(v17 + 4) = v7;
      *(v17 + 12) = 2080;
      v20 = sub_1DC515B5C();
      OUTLINED_FUNCTION_376(v20, v21);
      OUTLINED_FUNCTION_374();
      *(v17 + 14) = v7;
      _os_log_impl(&dword_1DC287000, v15, v16, "textBasedResultCandidateMessage is a machine utterance. requestId: %s, rcId: %s", v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_54_12();
    }

    v22 = OUTLINED_FUNCTION_73();
    v23(v22);
    sub_1DC3C0090();
  }

  else
  {
    type metadata accessor for AssistantNLRequestHandler(0);
    sub_1DC515C0C();
    sub_1DC3BD06C();
    OUTLINED_FUNCTION_149_0();

    v24 = OUTLINED_FUNCTION_187();
    v25(v24);

    sub_1DC2C5FC4(v2 + 16, v37);
    v26 = v38;
    v27 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v36 = v5;
    v28 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
    v29 = sub_1DC515D6C();
    v30 = v1;
    v31 = v2;
    v33 = v32;
    v34 = sub_1DC515B5C();
    (*(v27 + 56))(v31 + v28, v29, v33, v34, v35, v30, v26, v27);

    (*(v7 + 8))(v30, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3BD06C()
{
  OUTLINED_FUNCTION_33();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_7_21();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D350, &unk_1DC52EF90);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  v5 = sub_1DC510F3C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v22 = sub_1DC51141C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC51140C();

  sub_1DC5113FC();
  sub_1DC5113BC();
  sub_1DC51100C();
  sub_1DC510B5C();
  sub_1DC5138EC();
  v12 = OUTLINED_FUNCTION_149();
  v13(v12);
  v14 = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_39(v14, v15, v5);
  if (v16)
  {
    sub_1DC510F2C();
    v17 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_39(v17, v18, v5);
    if (!v16)
    {
      sub_1DC28EB30(v1, &unk_1ECC7D350, &unk_1DC52EF90);
    }
  }

  else
  {
    v7 += 32;
    v19 = OUTLINED_FUNCTION_60();
    v20(v19);
  }

  sub_1DC5113CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC48, &unk_1DC5283C0);
  OUTLINED_FUNCTION_337();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DC522F20;
  (*(v10 + 32))(v21 + v7, v0, v22);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3BD314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = sub_1DC51110C();
  v28 = OUTLINED_FUNCTION_10(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_24();
  v110 = sub_1DC5137CC();
  OUTLINED_FUNCTION_0();
  v113 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  v108 = v31;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_62();
  v111 = v33;
  OUTLINED_FUNCTION_12();
  v112 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_1();
  v109 = v35;
  OUTLINED_FUNCTION_12();
  v36 = sub_1DC51139C();
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v38);
  v39 = sub_1DC51136C();
  v40 = OUTLINED_FUNCTION_10(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v41);
  v42 = sub_1DC515F7C();
  OUTLINED_FUNCTION_0();
  v118 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_1();
  v117 = v45;
  OUTLINED_FUNCTION_12();
  v46 = sub_1DC515F6C();
  OUTLINED_FUNCTION_0();
  v121 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_107_0();
  v50 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v52 = v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_56_1();
  sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v114 = v56;
  v115 = v55;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_2_1();
  v120 = v57;
  sub_1DC51163C();
  sub_1DC28D414();
  OUTLINED_FUNCTION_4_2();
  v116 = v50;
  v106 = v58;
  (v58)(v22);
  v59 = v26;
  v60 = sub_1DC516F6C();
  v61 = sub_1DC517BAC();

  v119 = v59;
  if (os_log_type_enabled(v60, v61))
  {
    OUTLINED_FUNCTION_63();
    v122 = OUTLINED_FUNCTION_73_5();
    *v21 = 136315138;
    sub_1DC515C8C();
    OUTLINED_FUNCTION_107_3();
    sub_1DC3D8E40(v62, v63, MEMORY[0x1E69D0648]);
    v64 = sub_1DC51823C();
    v65 = v42;
    v67 = v66;
    (*(v121 + 8))(v20, v46);
    v68 = OUTLINED_FUNCTION_98_5();
    sub_1DC291244(v68, v67, v69);
    OUTLINED_FUNCTION_155_0();
    v42 = v65;

    *(v21 + 4) = v64;
    OUTLINED_FUNCTION_236_0(&dword_1DC287000, v60, v61, "🫨 Generating parse for gesture input: %s with comparable probability: 1.0", v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
    OUTLINED_FUNCTION_114_1();
    v21 = v105;
    OUTLINED_FUNCTION_66();
  }

  v70 = *(v52 + 8);
  v70(v22, v116);
  v71 = sub_1DC515C8C();
  MEMORY[0x1E1294800](v71);
  v72 = *(v121 + 8);
  v73 = OUTLINED_FUNCTION_314();
  v72(v73);
  v74 = OUTLINED_FUNCTION_229();
  v76 = v75(v74);
  if (v76 == *MEMORY[0x1E69D0650])
  {
    sub_1DC51135C();
    v77 = v120;
    sub_1DC5115DC();
LABEL_7:
    sub_1DC51121C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D150, qword_1DC526DD8);
    OUTLINED_FUNCTION_33_17();
    *(swift_allocObject() + 16) = xmmword_1DC522F20;
    OUTLINED_FUNCTION_19_1();
    v79(v78 + v46, v77, v115);
    sub_1DC51100C();
    sub_1DC5111DC();
    sub_1DC5137BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D370, &unk_1DC5283D0);
    OUTLINED_FUNCTION_33_17();
    *(swift_allocObject() + 16) = xmmword_1DC522F20;
    OUTLINED_FUNCTION_44_8();
    v81(v80 + v46, v109, v112);
    sub_1DC51378C();
    sub_1DC51370C();
    sub_1DC5137AC();
    type metadata accessor for CDMNluResponse(0);
    OUTLINED_FUNCTION_32_5();
    v82 = OUTLINED_FUNCTION_238_0();
    v83(v82);
    v84 = CDMNluResponse.__allocating_init(swiftProto:)(v108);
    OUTLINED_FUNCTION_38_1();
    (*(v85 + 936))(v119, v84);

    (*(v113 + 8))(v111, v110);
    v86 = OUTLINED_FUNCTION_74_0();
    v87(v86);
    (*(v114 + 8))(v120, v115);
    goto LABEL_12;
  }

  if (v76 == *MEMORY[0x1E69D0658])
  {
    sub_1DC51138C();
    v77 = v120;
    sub_1DC5115FC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_184(&a17);
  OUTLINED_FUNCTION_262();
  v106();
  v88 = v119;
  v89 = sub_1DC516F6C();
  sub_1DC517BAC();

  if (OUTLINED_FUNCTION_301())
  {
    OUTLINED_FUNCTION_63();
    v123 = OUTLINED_FUNCTION_73_5();
    *v21 = 136315138;
    OUTLINED_FUNCTION_106();
    sub_1DC515C8C();
    OUTLINED_FUNCTION_107_3();
    sub_1DC3D8E40(v90, v91, MEMORY[0x1E69D0648]);
    v92 = sub_1DC51823C();
    v93 = v42;
    v95 = v94;
    v96 = OUTLINED_FUNCTION_78_6();
    v72(v96);
    v97 = OUTLINED_FUNCTION_98_5();
    sub_1DC291244(v97, v95, v98);
    OUTLINED_FUNCTION_155_0();
    v42 = v93;

    *(v21 + 4) = v92;
    OUTLINED_FUNCTION_85_6();
    _os_log_impl(v99, v100, v101, v102, v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_40_0();

    v104 = v107;
  }

  else
  {

    v104 = OUTLINED_FUNCTION_184_1();
  }

  v70(v104, v116);
  (*(v114 + 8))(v120, v115);
  (*(v118 + 8))(v117, v42);
LABEL_12:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3BDC3C()
{
  OUTLINED_FUNCTION_33();
  sub_1DC515F6C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_79();
  sub_1DC51373C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_7_21();
  sub_1DC515C8C();
  OUTLINED_FUNCTION_183();
  v2 = OUTLINED_FUNCTION_77_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_35_0();
  v5(v4);
  OUTLINED_FUNCTION_183();
  v6 = OUTLINED_FUNCTION_314();
  v7(v6);
  v8 = OUTLINED_FUNCTION_47_0();
  v9(v8);
  OUTLINED_FUNCTION_34();
}