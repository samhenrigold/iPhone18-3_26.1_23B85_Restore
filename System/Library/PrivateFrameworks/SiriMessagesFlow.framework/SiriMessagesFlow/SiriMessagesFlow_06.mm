uint64_t sub_267C1DBC8(uint64_t a1)
{
  v2 = type metadata accessor for ConversationAnnounceState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267C1DC24(uint64_t a1, uint64_t a2)
{
  sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00(v39);
  v4 = v40;
  v5 = v41;
  __swift_project_boxed_opaque_existential_0(v39, v40);
  (*(v5 + 40))(v37, 0xD00000000000001ALL, 0x8000000267F122A0, v4, v5);
  if (!v38)
  {
    sub_267B9FED8(v37, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A0, &qword_267EFCDF8);
  if ((OUTLINED_FUNCTION_4_11() & 1) == 0)
  {
LABEL_5:
    __swift_project_boxed_opaque_existential_0(v39, v40);
    v22 = sub_267BA9F38(0, &qword_280229288, 0x277CBEAC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229290, &qword_267EFCDE8);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_267EFC020;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 32) = a1;
    *(v23 + 40) = a2;

    v24 = sub_267C1DEDC();
    *(v23 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229298, &qword_267EFCDF0);
    *(v23 + 64) = v24;
    v25 = sub_267EF95A8();
    v26 = sub_267EF9598();

    v38 = v22;
    v20 = OUTLINED_FUNCTION_3_8(v27, v28, v29, v30, v31, v32, v33, v34, v36, v26);
    goto LABEL_6;
  }

  v6 = sub_267C1DEDC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37[0] = v36;
  sub_267E86CEC(v6, a1, a2, isUniquelyReferenced_nonNull_native);
  v8 = v37[0];
  __swift_project_boxed_opaque_existential_0(v39, v40);
  v9 = sub_267BA9F38(0, &qword_280229288, 0x277CBEAC0);
  sub_267E71910(v8);
  v11 = v10;

  v12 = sub_267C1D5EC(v11);
  v38 = v9;
  v20 = OUTLINED_FUNCTION_3_8(v12, v13, v14, v15, v16, v17, v18, v19, v36, v12);
LABEL_6:
  v21(v20);
  sub_267B9FED8(v37, &qword_28022AEF0, &qword_267EFCDE0);
  return __swift_destroy_boxed_opaque_existential_0(v39);
}

uint64_t sub_267C1DEDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCDC0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000267F12200;
  v8 = MEMORY[0x277D839B0];
  *(inited + 48) = *v0;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD00000000000001CLL;
  *(inited + 88) = 0x8000000267F12220;
  v9 = MEMORY[0x277D83B88];
  *(inited + 96) = *(v0 + 8);
  *(inited + 120) = v9;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x8000000267F12240;
  v10 = type metadata accessor for ConversationAnnounceState(0);
  sub_267BF9918(v0 + v10[6], v6);
  v11 = sub_267EF2CC8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    sub_267B9FED8(v6, &qword_28022BD90, &unk_267EFCDD0);
    *(inited + 144) = 0u;
    *(inited + 160) = 0u;
  }

  else
  {
    *(inited + 168) = v11;
    __swift_allocate_boxed_opaque_existential_0((inited + 144));
    OUTLINED_FUNCTION_5_0();
    (*(v12 + 32))();
  }

  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x8000000267F12260;
  *(inited + 192) = *(v0 + v10[7]);
  *(inited + 216) = v9;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x8000000267F12280;
  sub_267BF9918(v0 + v10[8], v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v11) == 1)
  {
    sub_267B9FED8(v4, &qword_28022BD90, &unk_267EFCDD0);
    *(inited + 240) = 0u;
    *(inited + 256) = 0u;
  }

  else
  {
    *(inited + 264) = v11;
    __swift_allocate_boxed_opaque_existential_0((inited + 240));
    OUTLINED_FUNCTION_5_0();
    (*(v13 + 32))();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEF0, &qword_267EFCDE0);
  return sub_267EF8F28();
}

void sub_267C1E1EC(uint64_t a1)
{
  sub_267C1E278(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_267C1E278(uint64_t a1)
{
  if (!qword_2802292C0)
  {
    sub_267EF2CC8();
    v1 = sub_267EF9888();
    if (!v2)
    {
      atomic_store(v1, &qword_2802292C0);
    }
  }
}

uint64_t sub_267C1E2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v190 = a2;
  v3 = sub_267EF3868();
  OUTLINED_FUNCTION_58();
  v175 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v174 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v9 = OUTLINED_FUNCTION_18(v8);
  MEMORY[0x28223BE20](v9);
  v177 = &v173 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v12 = OUTLINED_FUNCTION_18(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_60();
  v179 = v13 - v14;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v15);
  v189 = &v173 - v16;
  sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v184 = v18;
  v185 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_60();
  v178 = v19 - v20;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v21);
  v181 = &v173 - v22;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v23);
  v25 = &v173 - v24;
  v26 = sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v188 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_60();
  v180 = v29 - v30;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v31);
  v33 = &v173 - v32;
  v34 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_0_0();
  v40 = v39 - v38;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v182 = v26;
  v41 = sub_267EF8A08();
  v42 = __swift_project_value_buffer(v41, qword_280240FB0);
  v43 = *(v36 + 16);
  v186 = a1;
  v43(v40, a1, v34);
  v187 = v42;
  v44 = sub_267EF89F8();
  sub_267EF95C8();
  OUTLINED_FUNCTION_64();
  v46 = os_log_type_enabled(v44, v45);
  v183 = v33;
  v176 = v3;
  if (v46)
  {
    v47 = OUTLINED_FUNCTION_48();
    v48 = OUTLINED_FUNCTION_52();
    v193[0] = v48;
    *v47 = 136315138;
    sub_267BC410C(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v49 = sub_267EF9E58();
    v51 = v50;
    v52 = OUTLINED_FUNCTION_95_0();
    v53(v52);
    v54 = sub_267BA33E8(v49, v51, v193);

    *(v47 + 4) = v54;
    _os_log_impl(&dword_267B93000, v44, v26, "#UnsendMessagesConfirmIntentFlowStrategy received input: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    OUTLINED_FUNCTION_32_0();
    v33 = v183;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v55 = OUTLINED_FUNCTION_95_0();
    v56(v55);
  }

  sub_267EF4B88();
  v58 = v184;
  v57 = v185;
  v59 = *(v184 + 88);
  v60 = v59(v25, v185);
  v61 = v188;
  v62 = v189;
  if (v60 == *MEMORY[0x277D5C150])
  {
    (*(v58 + 96))(v25, v57);
    v63 = v182;
    (*(v61 + 32))(v33, v25, v182);
    v64 = sub_267EF89F8();
    v65 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v65))
    {
      v66 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v66);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v67, v68, "#UnsendMessagesConfirmIntentFlowStrategy received directInvocation");
      OUTLINED_FUNCTION_26();
    }

    sub_267B9CC04(v33, v62);
    v69 = type metadata accessor for DirectInvocationUseCases(0);
    if (__swift_getEnumTagSinglePayload(v62, 1, v69) != 1)
    {
      v70 = v179;
      sub_267B9A598(v62, v179, &unk_28022BBE0, qword_267EFD030);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v71 = sub_267EF8228();
        OUTLINED_FUNCTION_58();
        v72 = v70;
        v74 = v73;
        v76 = (*(v75 + 88))(v72, v71);
        if (v76 == *MEMORY[0x277D5D4E8])
        {
          v77 = sub_267EF89F8();
          v78 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v78))
          {
            v79 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v79);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v80, v81, "#UnsendMessagesConfirmIntentFlowStrategy prompt is confirmed by button press");
            OUTLINED_FUNCTION_26();
          }

          v82 = sub_267EF44F8();
          OUTLINED_FUNCTION_22();
          v83 = OUTLINED_FUNCTION_15_4();
          v84(v83);
          OUTLINED_FUNCTION_9();
          __swift_storeEnumTagSinglePayload(v85, v86, v87, v82);
          v88 = swift_beginAccess();
          OUTLINED_FUNCTION_128(v88, v89, &qword_280229310, &unk_267EFCF70);
          swift_endAccess();
          sub_267EF3E58();
LABEL_44:
          (*(v61 + 8))(v33, v63);
          return sub_267B9F98C(v62, &unk_28022BBE0, qword_267EFD030);
        }

        if (v76 == *MEMORY[0x277D5D4D8])
        {
          v145 = sub_267EF89F8();
          v146 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v146))
          {
            v147 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v147);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v148, v149, "#UnsendMessagesConfirmIntentFlowStrategy prompt is cancelled by button press");
            OUTLINED_FUNCTION_26();
          }

          sub_267EF3E48();
          goto LABEL_44;
        }

        (*(v74 + 8))(v179, v71);
      }

      else
      {
        sub_267C269D0(v70, type metadata accessor for DirectInvocationUseCases);
      }
    }

    v119 = v180;
    (*(v61 + 16))(v180, v33, v63);
    v120 = sub_267EF89F8();
    v121 = v63;
    v122 = sub_267EF95D8();
    if (os_log_type_enabled(v120, v122))
    {
      v123 = OUTLINED_FUNCTION_48();
      v124 = OUTLINED_FUNCTION_52();
      v193[0] = v124;
      *v123 = 136315138;
      v125 = sub_267EF4BC8();
      v126 = v119;
      v128 = v127;
      v129 = *(v61 + 8);
      v129(v126, v121);
      v130 = sub_267BA33E8(v125, v128, v193);

      *(v123 + 4) = v130;
      _os_log_impl(&dword_267B93000, v120, v122, "#UnsendMessagesConfirmIntentFlowStrategy ignoring direct invocation: %s", v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v124);
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      v129 = *(v61 + 8);
      v129(v119, v121);
    }

    sub_267EF3E68();
    v129(v183, v121);
    return sub_267B9F98C(v62, &unk_28022BBE0, qword_267EFD030);
  }

  v90 = v57;
  v91 = *(v58 + 8);
  v91(v25, v90);
  v92 = v181;
  sub_267EF4B88();
  v93 = v59(v92, v90);
  v94 = *MEMORY[0x277D5C168];
  v91(v92, v90);
  if (v93 == v94)
  {
    v95 = sub_267EF89F8();
    v96 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v96))
    {
      v97 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v97);
      v100 = "#UnsendMessagesConfirmIntentFlowStrategy empty input";
LABEL_33:
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v98, v99, v100);
      OUTLINED_FUNCTION_26();
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  v101 = v178;
  sub_267EF4B88();
  v102 = sub_267E57DFC(v101, &v191);
  (v91)(v101, v90, v102);
  if (!v192)
  {
    sub_267B9F98C(&v191, &unk_28022BBF0, &unk_267F01C60);
    v95 = sub_267EF89F8();
    v132 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_36(v132))
    {
      v133 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v133);
      v100 = "#UnsendMessagesConfirmIntentFlowStrategy unsupported input";
      goto LABEL_33;
    }

LABEL_34:

    return sub_267EF3E68();
  }

  sub_267B9A5E8(&v191, v193);
  __swift_project_boxed_opaque_existential_0(v193, v194);
  v103 = OUTLINED_FUNCTION_38_0();
  if (v104(v103))
  {
    v105 = sub_267EF44F8();
    OUTLINED_FUNCTION_22();
    v106 = OUTLINED_FUNCTION_15_4();
    v107(v106);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v105);
    v111 = OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_128(v111, v112, &qword_280229310, &unk_267EFCF70);
    swift_endAccess();
    v113 = sub_267EF89F8();
    v114 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v114))
    {
      v115 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v115);
      v118 = "#UnsendMessagesConfirmIntentFlowStrategy request is to unsend, handling";
LABEL_22:
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v116, v117, v118);
      OUTLINED_FUNCTION_26();
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_0(v193, v194);
    v134 = v174;
    v135 = OUTLINED_FUNCTION_38_0();
    v136(v135);
    v137 = v175;
    v138 = v176;
    v139 = (*(v175 + 88))(v134, v176);
    if (v139 == *MEMORY[0x277D5B970])
    {
      v140 = sub_267EF89F8();
      v141 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v141))
      {
        v142 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v142);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v143, v144, "#UnsendMessagesConfirmIntentFlowStrategy request is cancelled");
        OUTLINED_FUNCTION_26();
      }

      sub_267EF3E48();
      return __swift_destroy_boxed_opaque_existential_0(v193);
    }

    if (v139 != *MEMORY[0x277D5B978])
    {
      if (v139 != *MEMORY[0x277D5B968])
      {
        v168 = sub_267EF89F8();
        v169 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v169))
        {
          v170 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v170);
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v171, v172, "#UnsendMessagesConfirmIntentFlowStrategy no valid confirmation in the intent, ignoring");
          OUTLINED_FUNCTION_26();
        }

        sub_267EF3E68();
        (*(v137 + 8))(v134, v138);
        return __swift_destroy_boxed_opaque_existential_0(v193);
      }

      v160 = sub_267EF44F8();
      OUTLINED_FUNCTION_22();
      v161 = OUTLINED_FUNCTION_15_4();
      v162(v161);
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v163, v164, v165, v160);
      v166 = OUTLINED_FUNCTION_42_2();
      OUTLINED_FUNCTION_128(v166, v167, &qword_280229310, &unk_267EFCF70);
      swift_endAccess();
      goto LABEL_24;
    }

    v150 = sub_267EF44F8();
    OUTLINED_FUNCTION_22();
    v151 = OUTLINED_FUNCTION_15_4();
    v152(v151);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v153, v154, v155, v150);
    v156 = OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_128(v156, v157, &qword_280229310, &unk_267EFCF70);
    swift_endAccess();
    v113 = sub_267EF89F8();
    v158 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v158))
    {
      v159 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v159);
      v118 = "#UnsendMessagesConfirmIntentFlowStrategy request is confirmed";
      goto LABEL_22;
    }
  }

LABEL_24:
  sub_267EF3E58();
  return __swift_destroy_boxed_opaque_existential_0(v193);
}

uint64_t sub_267C1F068()
{
  OUTLINED_FUNCTION_12();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v1[11] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[12] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C1F0F8()
{
  OUTLINED_FUNCTION_53();
  v23 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);

  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 80);
    v6 = OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_52();
    v22 = v7;
    *v6 = 136315138;
    v8 = OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_confirmationResponse;
    swift_beginAccess();
    sub_267B9A598(v5 + v8, v4, &qword_280229310, &unk_267EFCF70);
    OUTLINED_FUNCTION_63();
    v9 = sub_267EF9098();
    v11 = sub_267BA33E8(v9, v10, &v22);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_26();
  }

  v17 = *(v0 + 96);
  v18 = *(v0 + 80);
  v19 = OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_confirmationResponse;
  swift_beginAccess();
  sub_267B9A598(v18 + v19, v17, &qword_280229310, &unk_267EFCF70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229318, &qword_267EFCFA0);
  sub_267EF4668();
  sub_267BA9F38(0, &qword_2802291D0, 0x277CD4290);
  sub_267EF4468();

  OUTLINED_FUNCTION_1();

  return v20();
}

uint64_t sub_267C1F318(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  OUTLINED_FUNCTION_22_0();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267C1F348()
{
  OUTLINED_FUNCTION_56();
  __swift_project_boxed_opaque_existential_0((v0[9] + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_featureFlags), *(v0[9] + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_featureFlags + 24));
  if (sub_267CC8B28() & 1) != 0 && (OUTLINED_FUNCTION_129((v0[9] + 16)), v1 = OUTLINED_FUNCTION_38_0(), v2(v1), __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]), v3 = sub_267BF30D0(), __swift_destroy_boxed_opaque_existential_0(v0 + 2), (v3))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[10] = v4;
    *v4 = v5;
    v4[1] = sub_267C1F4C8;

    return sub_267C1F688();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[11] = v7;
    *v7 = v8;
    v7[1] = sub_267C1F5A8;

    return sub_267C2060C();
  }
}

uint64_t sub_267C1F4C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267C1F5A8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267C1F688()
{
  OUTLINED_FUNCTION_12();
  v1[23] = v2;
  v1[24] = v0;
  v3 = sub_267EF48A8();
  v1[25] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[26] = v4;
  v1[27] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v5);
  v1[28] = OUTLINED_FUNCTION_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v6);
  v1[29] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C1FA50()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  OUTLINED_FUNCTION_106();
  *v5 = *v1;
  *(v6 + 288) = v0;

  OUTLINED_FUNCTION_106();
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C1FBA8()
{
  OUTLINED_FUNCTION_48_1();
  v21 = v1;
  OUTLINED_FUNCTION_53();
  v2 = v0[18];
  v3 = v0[31];
  v4 = v0[24];
  v0[39] = v2;
  v5 = v4[6];
  OUTLINED_FUNCTION_62_1(v4 + 2, v4[5]);
  v6 = *(v5 + 8);
  v7 = v2;
  v8 = OUTLINED_FUNCTION_114_0();
  v6(v8);
  __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_catProvider), *(v4 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_catProvider + 24));
  sub_267BB4A3C();
  v9 = [v3 speakableGroupName];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 spokenPhrase];
    sub_267EF9028();
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v12 = v0[31];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    OUTLINED_FUNCTION_12_0();
    v13 = sub_267EF3C48();
    sub_267BCEA0C(v12);
    if (v13)
    {
      v14 = OUTLINED_FUNCTION_108();
      sub_267DA2578(v14);
    }

    else
    {
      sub_267DA2180();
    }

    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_96();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_117_1(v15);
  OUTLINED_FUNCTION_103();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[41] = v16;
  *v16 = v17;
  v18 = OUTLINED_FUNCTION_22_5(v16);

  return v19(v18);
}

uint64_t sub_267C1FD64()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v2[20] = v1;
  v2[21] = v4;
  v2[22] = v0;
  OUTLINED_FUNCTION_106();
  *v5 = *v1;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_106();
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C1FEBC()
{
  OUTLINED_FUNCTION_48_1();
  v21 = v1;
  OUTLINED_FUNCTION_53();
  v2 = v0[21];
  v3 = v0[31];
  v4 = v0[24];
  v0[39] = v2;
  v5 = v4[6];
  OUTLINED_FUNCTION_62_1(v4 + 2, v4[5]);
  v6 = *(v5 + 8);
  v7 = v2;
  v8 = OUTLINED_FUNCTION_114_0();
  v6(v8);
  __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_catProvider), *(v4 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_catProvider + 24));
  sub_267BB4A3C();
  v9 = [v3 speakableGroupName];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 spokenPhrase];
    sub_267EF9028();
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v12 = v0[31];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    OUTLINED_FUNCTION_12_0();
    v13 = sub_267EF3C48();
    sub_267BCEA0C(v12);
    if (v13)
    {
      v14 = OUTLINED_FUNCTION_108();
      sub_267DA2578(v14);
    }

    else
    {
      sub_267DA2180();
    }

    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_96();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_117_1(v15);
  OUTLINED_FUNCTION_103();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[41] = v16;
  *v16 = v17;
  v18 = OUTLINED_FUNCTION_22_5(v16);

  return v19(v18);
}

uint64_t sub_267C20078()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 336) = v0;

  sub_267B9F98C(v3 + 96, &qword_280229330, &qword_267F092F0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C201C8()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v1 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v3);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_26();
  }

  v9 = *(v0 + 232);
  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v12 = *(v0 + 200);

  (*(v11 + 8))(v10, v12);
  sub_267B9F98C(v9, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_125();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_267C202C8()
{
  OUTLINED_FUNCTION_56();
  sub_267B9F98C(*(v0 + 232), &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267C20358()
{
  OUTLINED_FUNCTION_56();
  sub_267B9F98C(*(v0 + 232), &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267C203E8()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);

  (*(v3 + 8))(v2, v4);
  sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267C204A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_267C204C8, 0, 0);
}

uint64_t sub_267C204C8()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_267EF8178();
  v1[3] = v3;
  v1[4] = sub_267BC410C(qword_280229338, MEMORY[0x277D5D3A0], MEMORY[0x277D5D398]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1);
  v5 = v2 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_sentMessageContext;
  v6 = type metadata accessor for TimedSentMessageContext(0);
  v7 = *(v5 + *(v6 + 32));
  *(v5 + *(v6 + 28));
  v7;

  OUTLINED_FUNCTION_63();
  sub_267EF8468();
  (*(*(v3 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D5D360], v3);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_267C2060C()
{
  OUTLINED_FUNCTION_12();
  v1[88] = v0;
  v1[87] = v2;
  v1[86] = v3;
  v4 = sub_267EF48A8();
  v1[89] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[90] = v5;
  v1[91] = OUTLINED_FUNCTION_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BB00, &unk_267EFCF90);
  OUTLINED_FUNCTION_18(v6);
  v1[92] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v7);
  v1[93] = OUTLINED_FUNCTION_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v8);
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v9 = sub_267EF2BA8();
  v1[97] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[98] = v10;
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v11 = sub_267EF8228();
  v1[101] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v1[102] = v12;
  v1[103] = OUTLINED_FUNCTION_2();
  v13 = sub_267EF79B8();
  v1[104] = v13;
  OUTLINED_FUNCTION_30_0(v13);
  v1[105] = v14;
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

id sub_267C20884()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v3 = sub_267EF8A08();
  v4 = __swift_project_value_buffer(v3, qword_280240FB0);
  v2[111] = v4;
  v191 = v4;
  v5 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v7);
    _os_log_impl(&dword_267B93000, v5, v0, "#UnsendMessagesConfirmIntentFlowStrategy executing pattern to confirm message", v1, 2u);
    OUTLINED_FUNCTION_26();
  }

  v8 = v2[88];

  sub_267EF7958();
  v2[112] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229318, &qword_267EFCFA0);
  v9 = sub_267EF4648();
  v203 = sub_267E80518(v9);
  v2[113] = v203;
  v10 = v8 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_sentMessageContext;
  v11 = type metadata accessor for TimedSentMessageContext(0);
  v12 = *&v10[v11[7]];
  v13 = v8[6];
  __swift_project_boxed_opaque_existential_0(v8 + 2, v8[5]);
  v14 = OUTLINED_FUNCTION_43();
  v15(v14, v13);
  v16 = *&v10[v11[9]];
  v196 = v8;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_catProvider), *(v8 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_catProvider + 24));
  sub_267BB4A3C();
  v17 = [v12 speakableGroupName];
  v193 = v16;
  if (v17)
  {
    v18 = v17;
    v19 = v2;
    v20 = [v17 spokenPhrase];
    sub_267EF9028();
  }

  else
  {
    __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
    OUTLINED_FUNCTION_43();
    v21 = sub_267EF3C48();
    v22 = sub_267BCEA0C(v12);
    if (v21)
    {
      v19 = v2;
      sub_267DA2578(v22);
    }

    else
    {
      v19 = v2;
      sub_267DA2180();
    }
  }

  v23 = v19;
  __swift_destroy_boxed_opaque_existential_0(v19 + 2);
  v24 = v19;
  sub_267EF90F8();

  v25 = sub_267EF4668();
  sub_267EF4648();
  v26 = sub_267EF7C18();
  v28 = v27;

  if (v28)
  {
    v29 = v26;
  }

  else
  {
    v29 = 0;
  }

  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31 = sub_267DA133C(v25, v29, v30);

  v23[82] = v31;
  sub_267BA9F38(0, &unk_28022BB50, 0x277D473F0);
  sub_267EF8348();

  sub_267BA9F38(0, &qword_280229320, 0x277CD3D58);
  v32 = *&v10[v11[8]];
  v33 = v12;
  v34 = v32;
  v35 = sub_267E9299C(v33, v32);
  v24[114] = v35;
  [v35 setIntentHandlingStatus_];
  v24[83] = v35;
  sub_267EF8348();
  v189 = v35;
  v36 = v24[103];
  v187 = *(v24[102] + 104);
  v187(v36, *MEMORY[0x277D5D4E8], v24[101]);
  v37 = v24;
  v38 = v196[6];
  __swift_project_boxed_opaque_existential_0(v196 + 2, v196[5]);
  v39 = OUTLINED_FUNCTION_43();
  v40(v39, v38);
  v41 = sub_267BEA714(v36, v37 + 7);
  __swift_destroy_boxed_opaque_existential_0(v37 + 7);
  v42 = OUTLINED_FUNCTION_50_3();
  v184 = v43;
  v43(v42);
  v37[84] = v41;
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v200 = v37[106];
  v44 = v37[103];
  v45 = v37[101];

  v187(v44, *MEMORY[0x277D5D4D8], v45);
  v46 = v196[6];
  __swift_project_boxed_opaque_existential_0(v196 + 2, v196[5]);
  v47 = OUTLINED_FUNCTION_43();
  v48(v47, v46);
  v49 = sub_267BEA714(v44, v37 + 12);
  __swift_destroy_boxed_opaque_existential_0(v37 + 12);
  v50 = OUTLINED_FUNCTION_50_3();
  v184(v50);
  v37[85] = v49;
  sub_267EF8348();
  v53 = v196;

  OUTLINED_FUNCTION_129(v196 + 2);
  v54 = OUTLINED_FUNCTION_38_0();
  v55(v54);
  sub_267ED9AEC(v33, v193, (v37 + 17), v56, v57, v58, v59, v60, v180, v33, v184, v187, v189, v191, v193, v196, v200, v203, v205, v206);
  v62 = v61;
  v37[115] = v61;
  __swift_destroy_boxed_opaque_existential_0(v37 + 17);
  v63 = sub_267EF96E8();
  v64 = [v33 attachments];
  v65 = v64;
  v66 = v37;
  if ((v63 & 1) == 0)
  {
    if (v64)
    {
      sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
      v37[124] = sub_267EF92F8();

      v91 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v93);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v94, v95, v96, v97, v98, 2u);
        OUTLINED_FUNCTION_26();
      }

      OUTLINED_FUNCTION_129(v53 + 2);
      v99 = OUTLINED_FUNCTION_38_0();
      v100(v99);
      v37[125] = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
      v101 = swift_task_alloc();
      v37[126] = v101;
      *v101 = v37;
      v101[1] = sub_267C221A4;
      OUTLINED_FUNCTION_93();

      __asm { BR              X0 }
    }

    v120 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v122);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v123, v124, v125, v126, v127, 2u);
      OUTLINED_FUNCTION_26();
    }

    v128 = v37[88];

    if (*(v128 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_isDelete) == 1)
    {
      type metadata accessor for UnsendMessagesCATPatternsExecutor(0);
      OUTLINED_FUNCTION_133();
      OUTLINED_FUNCTION_82();
      v129 = sub_267EF78E8();
      v37[35] = 0;
      v37[36] = &off_2878D7F50;
      v37[32] = v129;
      OUTLINED_FUNCTION_62_1(v37 + 32, 0);
      v130 = swift_task_alloc();
      v37[136] = v130;
      OUTLINED_FUNCTION_79_0(v130, v131, v132, v133, v134, v135, v136, v137, v181, v182, v185, v62, v190, v192, v194, v197, v201, v204);
      v138 = swift_task_alloc();
      v37[137] = v138;
      *v138 = v37;
      v138[1] = sub_267C22DFC;
LABEL_62:
      OUTLINED_FUNCTION_93();

      return sub_267E3E1C0();
    }

    type metadata accessor for UnsendMessagesCATPatternsExecutor(0);
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_82();
    v159 = sub_267EF78E8();
    v37[25] = 0;
    v37[26] = &off_2878D7F50;
    v37[22] = v159;
    OUTLINED_FUNCTION_62_1(v37 + 22, 0);
    v160 = swift_task_alloc();
    v37[140] = v160;
    OUTLINED_FUNCTION_79_0(v160, v161, v162, v163, v164, v165, v166, v167, v181, v182, v185, v62, v190, v192, v194, v197, v201, v204);
    v168 = swift_task_alloc();
    v37[141] = v168;
    *v168 = v37;
    v168[1] = sub_267C231C4;
LABEL_67:
    OUTLINED_FUNCTION_93();

    return sub_267E3E7AC();
  }

  if (!v64)
  {
    v106 = v37[97];
    v107 = v37[96];

    __swift_storeEnumTagSinglePayload(v107, 1, 1, v106);
LABEL_51:
    sub_267B9F98C(v66[96], &qword_280229E20, &unk_267EFDCC0);
    v108 = sub_267EF89F8();
    v109 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_36(v109))
    {
      v110 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v110);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v111, v112, "#UnsendMessagesConfirmIntentFlowStrategy URL is missing for an audio message");
      OUTLINED_FUNCTION_26();
    }

    v199 = v66[109];
    v113 = v66[108];
    v114 = v66[107];
    v115 = v66[106];
    v116 = v66[105];
    v117 = v66[104];

    sub_267C266B0();
    swift_allocError();
    *v118 = 0xD000000000000024;
    v118[1] = 0x8000000267F12380;
    swift_willThrow();

    v119 = *(v116 + 8);
    v119(v115, v117);
    v119(v114, v117);
    v119(v113, v117);
    v119(v199, v117);
    v119(v66[110], v66[104]);

    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_93();

    __asm { BRAA            X1, X16 }
  }

  v188 = v62;
  v67 = v37[98];
  sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
  v68 = sub_267EF92F8();

  result = sub_267BAF0DC(v68);
  v70 = result;
  v71 = 0;
  v198 = v68 & 0xFFFFFFFFFFFFFF8;
  v202 = v68 & 0xC000000000000001;
  v183 = v67;
  v186 = (v67 + 32);
  v195 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v70 == v71)
    {
      v104 = v66[97];
      v105 = v66[96];

      sub_267C8F020(v195, v105);

      if (__swift_getEnumTagSinglePayload(v105, 1, v104) == 1)
      {

        goto LABEL_51;
      }

      (*v186)(v66[100], v66[96], v66[97]);
      v139 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v141);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v142, v143, v144, v145, v146, 2u);
        OUTLINED_FUNCTION_26();
      }

      v147 = v66[88];

      if (*(v147 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_isDelete) == 1)
      {
        type metadata accessor for UnsendMessagesCATPatternsExecutor(0);
        OUTLINED_FUNCTION_133();
        OUTLINED_FUNCTION_82();
        v148 = sub_267EF78E8();
        v66[80] = v104;
        v66[81] = &off_2878D7F50;
        v66[77] = v148;
        OUTLINED_FUNCTION_62_1(v66 + 77, v104);
        v149 = swift_task_alloc();
        v66[116] = v149;
        OUTLINED_FUNCTION_80(v149, v150, v151, v152, v153, v154, v155, v156, v181, v183, v186, v188, v190, v192, v195, v198, v202, v204);
        v157 = swift_task_alloc();
        v66[117] = v157;
        *v157 = v66;
        v157[1] = sub_267C2199C;
        goto LABEL_62;
      }

      type metadata accessor for UnsendMessagesCATPatternsExecutor(0);
      OUTLINED_FUNCTION_133();
      OUTLINED_FUNCTION_82();
      v169 = sub_267EF78E8();
      v66[75] = v104;
      v66[76] = &off_2878D7F50;
      v66[72] = v169;
      OUTLINED_FUNCTION_62_1(v66 + 72, v104);
      v170 = swift_task_alloc();
      v66[120] = v170;
      OUTLINED_FUNCTION_80(v170, v171, v172, v173, v174, v175, v176, v177, v181, v183, v186, v188, v190, v192, v195, v198, v202, v204);
      v178 = swift_task_alloc();
      v66[121] = v178;
      *v178 = v66;
      v178[1] = sub_267C21DA0;
      goto LABEL_67;
    }

    if (v202)
    {
      result = MEMORY[0x26D609870](v71, v68);
    }

    else
    {
      if (v71 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_71;
      }

      result = *(v68 + 8 * v71 + 32);
    }

    v72 = result;
    v73 = (v71 + 1);
    if (__OFADD__(v71, 1))
    {
      break;
    }

    v74 = [result audioMessageFile];
    if (!v74)
    {
      v78 = v66[97];
      v79 = v66[95];

      __swift_storeEnumTagSinglePayload(v79, 1, 1, v78);
      goto LABEL_35;
    }

    v75 = v74;
    v76 = [v74 fileURL];

    if (v76)
    {
      sub_267EF2B48();

      v77 = 0;
    }

    else
    {
      v77 = 1;
    }

    v80 = v66[97];
    v81 = v66[95];
    v82 = v66;
    v83 = v66[94];

    __swift_storeEnumTagSinglePayload(v83, v77, 1, v80);
    v84 = v83;
    v66 = v82;
    sub_267C26704(v84, v81);
    if (__swift_getEnumTagSinglePayload(v81, 1, v80) == 1)
    {
LABEL_35:
      result = sub_267B9F98C(v66[95], &qword_280229E20, &unk_267EFDCC0);
      ++v71;
    }

    else
    {
      v85 = *v186;
      (*v186)(v82[99], v82[95], v82[97]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267C70BD8();
        v195 = v89;
      }

      v86 = *(v195 + 16);
      if (v86 >= *(v195 + 24) >> 1)
      {
        sub_267C70BD8();
        v195 = v90;
      }

      v87 = v82[99];
      v88 = v82[97];
      *(v195 + 16) = v86 + 1;
      result = v85(v195 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v86, v87, v88);
      v71 = v73;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_267C2199C()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 944) = v0;

  OUTLINED_FUNCTION_78_0();

  if (!v0)
  {
    *(v3 + 952) = v2;
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_125();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C21ADC()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v2 = *(v0 + 952);
  __swift_destroy_boxed_opaque_existential_0((v0 + 616));
  v3 = OUTLINED_FUNCTION_105_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_127();
  v6 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v1 = 136315138;
    v7 = [v5 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_54_2(v8, v9);
    OUTLINED_FUNCTION_102_0();
    *(v1 + 4) = v7;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v10, v11, "#UnsendMessagesConfirmIntentFlowStrategy pattern %s successfully executed");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v12 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_97(v12);
  v13 = sub_267EF4188();
  OUTLINED_FUNCTION_31_4(v13);
  v14 = OUTLINED_FUNCTION_101_0();
  v15 = OUTLINED_FUNCTION_3_9(v14);
  v16(v15);
  OUTLINED_FUNCTION_10_8();
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_25_5(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_0_8(v18);
  OUTLINED_FUNCTION_46();

  return sub_267BCF3A4(v20, v21, v22, v23, v24);
}

uint64_t sub_267C21C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_85();
  v41 = v21[109];
  OUTLINED_FUNCTION_8_3();
  v23 = v21[100];
  v24 = v21[98];
  v25 = v21[97];

  __swift_destroy_boxed_opaque_existential_0(v21 + 77);
  (*(v24 + 8))(v23, v25);
  v27 = *(v20 + 8);
  v28 = OUTLINED_FUNCTION_63();
  v27(v28);
  v29 = OUTLINED_FUNCTION_50_3();
  v27(v29);
  v30 = OUTLINED_FUNCTION_57_3();
  v27(v30);
  (v27)(v41, v22);
  OUTLINED_FUNCTION_2_16();
  v31 = OUTLINED_FUNCTION_1_16();
  v27(v31);

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, v41, a18, a19, a20);
}

uint64_t sub_267C21DA0()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 976) = v0;

  OUTLINED_FUNCTION_78_0();

  if (!v0)
  {
    *(v3 + 984) = v2;
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_125();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C21EE0()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v2 = *(v0 + 984);
  __swift_destroy_boxed_opaque_existential_0((v0 + 576));
  v3 = OUTLINED_FUNCTION_105_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_127();
  v6 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v1 = 136315138;
    v7 = [v5 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_54_2(v8, v9);
    OUTLINED_FUNCTION_102_0();
    *(v1 + 4) = v7;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v10, v11, "#UnsendMessagesConfirmIntentFlowStrategy pattern %s successfully executed");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v12 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_97(v12);
  v13 = sub_267EF4188();
  OUTLINED_FUNCTION_31_4(v13);
  v14 = OUTLINED_FUNCTION_101_0();
  v15 = OUTLINED_FUNCTION_3_9(v14);
  v16(v15);
  OUTLINED_FUNCTION_10_8();
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_25_5(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_0_8(v18);
  OUTLINED_FUNCTION_46();

  return sub_267BCF3A4(v20, v21, v22, v23, v24);
}

uint64_t sub_267C22030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_85();
  v41 = v21[109];
  OUTLINED_FUNCTION_8_3();
  v23 = v21[100];
  v24 = v21[98];
  v25 = v21[97];

  __swift_destroy_boxed_opaque_existential_0(v21 + 72);
  (*(v24 + 8))(v23, v25);
  v27 = *(v20 + 8);
  v28 = OUTLINED_FUNCTION_63();
  v27(v28);
  v29 = OUTLINED_FUNCTION_50_3();
  v27(v29);
  v30 = OUTLINED_FUNCTION_57_3();
  v27(v30);
  (v27)(v41, v22);
  OUTLINED_FUNCTION_2_16();
  v31 = OUTLINED_FUNCTION_1_16();
  v27(v31);

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, v41, a18, a19, a20);
}

uint64_t sub_267C221A4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1016) = v3;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267C22294()
{
  sub_267EF8458();

  if (*(v0 + 440))
  {
    v1 = *(v0 + 1016);
    sub_267B9A5E8((v0 + 416), v0 + 376);
    sub_267B9AFEC(v0 + 376, v0 + 536);
    sub_267EF8328();

    __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  }

  else
  {
    v2 = *(v0 + 736);

    sub_267B9F98C(v0 + 416, &qword_28022BB10, &qword_267EFDCF0);
    v3 = sub_267EF8338();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  }

  v4 = *(v0 + 736);
  v5 = sub_267EF8338();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
  v7 = *(v0 + 1000);
  v35 = v0 + 296;
  if (EnumTagSinglePayload == 1)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 336));

    sub_267B9F98C(v4, &unk_28022BB00, &unk_267EFCF90);
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0;
  }

  else
  {
    sub_267EF8318();

    __swift_destroy_boxed_opaque_existential_0((v0 + 336));
    v8 = OUTLINED_FUNCTION_108();
    v9(v8);
  }

  v34 = *(v0 + 696);
  if (*(*(v0 + 704) + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_isDelete) == 1)
  {
    v10 = type metadata accessor for UnsendMessagesCATPatternsExecutor(0);
    sub_267EF7B68();
    OUTLINED_FUNCTION_82();
    v11 = sub_267EF78E8();
    *(v0 + 520) = v10;
    *(v0 + 528) = &off_2878D7F50;
    *(v0 + 496) = v11;
    OUTLINED_FUNCTION_62_1((v0 + 496), v10);
    v12 = swift_task_alloc();
    *(v0 + 1024) = v12;
    OUTLINED_FUNCTION_72_1(v12, v13, v14, v15, v16, v17, v18, v19, v33, v34, v35);
    v20 = swift_task_alloc();
    *(v0 + 1032) = v20;
    *v20 = v0;
    v20[1] = sub_267C2260C;
    OUTLINED_FUNCTION_109_0(*(v0 + 920));

    return sub_267E3E1C0();
  }

  else
  {
    v22 = type metadata accessor for UnsendMessagesCATPatternsExecutor(0);
    sub_267EF7B68();
    OUTLINED_FUNCTION_82();
    v23 = sub_267EF78E8();
    *(v0 + 480) = v22;
    *(v0 + 488) = &off_2878D7F50;
    *(v0 + 456) = v23;
    OUTLINED_FUNCTION_62_1((v0 + 456), v22);
    v24 = swift_task_alloc();
    *(v0 + 1056) = v24;
    OUTLINED_FUNCTION_72_1(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35);
    v32 = swift_task_alloc();
    *(v0 + 1064) = v32;
    *v32 = v0;
    v32[1] = sub_267C22A04;
    OUTLINED_FUNCTION_109_0(*(v0 + 920));

    return sub_267E3E7AC();
  }
}

uint64_t sub_267C2260C()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1040) = v0;

  OUTLINED_FUNCTION_78_0();

  if (!v0)
  {
    *(v3 + 1048) = v2;
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_125();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C2274C()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v2 = *(v0 + 1048);
  __swift_destroy_boxed_opaque_existential_0((v0 + 496));
  sub_267B9F98C(v0 + 296, &qword_28022BB10, &qword_267EFDCF0);
  v3 = OUTLINED_FUNCTION_127();
  v4 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v1 = 136315138;
    v5 = [v3 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_54_2(v6, v7);
    OUTLINED_FUNCTION_102_0();
    *(v1 + 4) = v5;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v8, v9, "#UnsendMessagesConfirmIntentFlowStrategy pattern %s successfully executed");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v10 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_97(v10);
  v11 = sub_267EF4188();
  OUTLINED_FUNCTION_31_4(v11);
  v12 = OUTLINED_FUNCTION_101_0();
  v13 = OUTLINED_FUNCTION_3_9(v12);
  v14(v13);
  OUTLINED_FUNCTION_10_8();
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_25_5(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_0_8(v16);
  OUTLINED_FUNCTION_46();

  return sub_267BCF3A4(v18, v19, v20, v21, v22);
}

uint64_t sub_267C228A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_3();

  __swift_destroy_boxed_opaque_existential_0((v21 + 496));
  sub_267B9F98C(v21 + 296, &qword_28022BB10, &qword_267EFDCF0);
  v23 = *(v20 + 8);
  v24 = OUTLINED_FUNCTION_63();
  v23(v24);
  v25 = OUTLINED_FUNCTION_50_3();
  v23(v25);
  v26 = OUTLINED_FUNCTION_57_3();
  v23(v26);
  v27 = OUTLINED_FUNCTION_95_0();
  v23(v27);
  OUTLINED_FUNCTION_2_16();
  v28 = OUTLINED_FUNCTION_1_16();
  v23(v28);

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267C22A04()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1072) = v0;

  OUTLINED_FUNCTION_78_0();

  if (!v0)
  {
    *(v3 + 1080) = v2;
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_125();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C22B44()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v2 = *(v0 + 1080);
  __swift_destroy_boxed_opaque_existential_0((v0 + 456));
  sub_267B9F98C(v0 + 296, &qword_28022BB10, &qword_267EFDCF0);
  v3 = OUTLINED_FUNCTION_127();
  v4 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v1 = 136315138;
    v5 = [v3 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_54_2(v6, v7);
    OUTLINED_FUNCTION_102_0();
    *(v1 + 4) = v5;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v8, v9, "#UnsendMessagesConfirmIntentFlowStrategy pattern %s successfully executed");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v10 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_97(v10);
  v11 = sub_267EF4188();
  OUTLINED_FUNCTION_31_4(v11);
  v12 = OUTLINED_FUNCTION_101_0();
  v13 = OUTLINED_FUNCTION_3_9(v12);
  v14(v13);
  OUTLINED_FUNCTION_10_8();
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_25_5(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_0_8(v16);
  OUTLINED_FUNCTION_46();

  return sub_267BCF3A4(v18, v19, v20, v21, v22);
}

uint64_t sub_267C22C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_3();

  __swift_destroy_boxed_opaque_existential_0((v21 + 456));
  sub_267B9F98C(v21 + 296, &qword_28022BB10, &qword_267EFDCF0);
  v23 = *(v20 + 8);
  v24 = OUTLINED_FUNCTION_63();
  v23(v24);
  v25 = OUTLINED_FUNCTION_50_3();
  v23(v25);
  v26 = OUTLINED_FUNCTION_57_3();
  v23(v26);
  v27 = OUTLINED_FUNCTION_95_0();
  v23(v27);
  OUTLINED_FUNCTION_2_16();
  v28 = OUTLINED_FUNCTION_1_16();
  v23(v28);

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267C22DFC()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1104) = v0;

  OUTLINED_FUNCTION_78_0();

  if (!v0)
  {
    *(v3 + 1112) = v2;
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_125();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C22F3C()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v2 = *(v0 + 1112);
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  v3 = *(v0 + 1112);
  *(v0 + 1152) = v3;
  v4 = v3;
  v5 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v1 = 136315138;
    v6 = [v4 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_54_2(v7, v8);
    OUTLINED_FUNCTION_102_0();
    *(v1 + 4) = v6;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v9, v10, "#UnsendMessagesConfirmIntentFlowStrategy pattern %s successfully executed");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v11 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_97(v11);
  v12 = sub_267EF4188();
  OUTLINED_FUNCTION_31_4(v12);
  v13 = OUTLINED_FUNCTION_101_0();
  v14 = OUTLINED_FUNCTION_3_9(v13);
  v15(v14);
  OUTLINED_FUNCTION_10_8();
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_25_5(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_0_8(v17);
  OUTLINED_FUNCTION_46();

  return sub_267BCF3A4(v19, v20, v21, v22, v23);
}

uint64_t sub_267C23084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_76_0();

  __swift_destroy_boxed_opaque_existential_0((v21 + 256));
  v24 = *(v23 + 8);
  v25 = OUTLINED_FUNCTION_63();
  v24(v25);
  v26 = OUTLINED_FUNCTION_50_3();
  v24(v26);
  v27 = OUTLINED_FUNCTION_57_3();
  v24(v27);
  (v24)(v20, v22);
  OUTLINED_FUNCTION_2_16();
  v28 = OUTLINED_FUNCTION_1_16();
  v24(v28);

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267C231C4()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1136) = v0;

  OUTLINED_FUNCTION_78_0();

  if (!v0)
  {
    *(v3 + 1144) = v2;
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_125();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C23304()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v2 = *(v0 + 1144);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v3 = *(v0 + 1144);
  *(v0 + 1152) = v3;
  v4 = v3;
  v5 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v1 = 136315138;
    v6 = [v4 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_54_2(v7, v8);
    OUTLINED_FUNCTION_102_0();
    *(v1 + 4) = v6;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v9, v10, "#UnsendMessagesConfirmIntentFlowStrategy pattern %s successfully executed");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v11 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_97(v11);
  v12 = sub_267EF4188();
  OUTLINED_FUNCTION_31_4(v12);
  v13 = OUTLINED_FUNCTION_101_0();
  v14 = OUTLINED_FUNCTION_3_9(v13);
  v15(v14);
  OUTLINED_FUNCTION_10_8();
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_25_5(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_0_8(v17);
  OUTLINED_FUNCTION_46();

  return sub_267BCF3A4(v19, v20, v21, v22, v23);
}

uint64_t sub_267C2344C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_76_0();

  __swift_destroy_boxed_opaque_existential_0((v21 + 176));
  v24 = *(v23 + 8);
  v25 = OUTLINED_FUNCTION_63();
  v24(v25);
  v26 = OUTLINED_FUNCTION_50_3();
  v24(v26);
  v27 = OUTLINED_FUNCTION_57_3();
  v24(v27);
  (v24)(v20, v22);
  OUTLINED_FUNCTION_2_16();
  v28 = OUTLINED_FUNCTION_1_16();
  v24(v28);

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267C2358C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v4 = v3;
  OUTLINED_FUNCTION_15_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v4 + 1184) = v0;

  v8 = OUTLINED_FUNCTION_71_0();
  v9(v8);

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v4 + 216));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267C236E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v21 = *(v20 + 912);
  v22 = *(v20 + 880);
  v23 = *(v20 + 872);
  v24 = *(v20 + 864);
  v25 = *(v20 + 856);
  v26 = *(v20 + 848);
  v27 = *(v20 + 840);
  v28 = *(v20 + 832);
  v39 = *(v20 + 824);
  v40 = *(v20 + 800);
  v41 = *(v20 + 792);
  v42 = *(v20 + 768);
  v43 = *(v20 + 760);
  v44 = *(v20 + 752);
  v45 = *(v20 + 744);
  v46 = *(v20 + 736);
  v47 = *(v20 + 728);

  v29 = *(v27 + 8);
  v29(v26, v28);
  v29(v25, v28);
  v29(v24, v28);
  v29(v23, v28);
  v29(v22, v28);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, a18, a19, a20);
}

uint64_t sub_267C23880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v22 = *(v21 + 912);
  OUTLINED_FUNCTION_8_3();

  __swift_destroy_boxed_opaque_existential_0((v21 + 216));
  v24 = *(v20 + 8);
  v25 = OUTLINED_FUNCTION_63();
  v24(v25);
  v26 = OUTLINED_FUNCTION_50_3();
  v24(v26);
  v27 = OUTLINED_FUNCTION_57_3();
  v24(v27);
  v28 = OUTLINED_FUNCTION_95_0();
  v24(v28);
  OUTLINED_FUNCTION_2_16();
  v29 = OUTLINED_FUNCTION_1_16();
  v24(v29);

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267C239D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_267EF2BA8();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v10 = sub_267EF83D8();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C23B34, 0, 0);
}

uint64_t sub_267C23B34()
{
  OUTLINED_FUNCTION_41_2();

  *v3 = v2;
  v4 = type metadata accessor for UnsendMessagesConfirmDeleteParameters(0);
  v5 = v4[10];
  sub_267B9F98C(&v3[v5], &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  OUTLINED_FUNCTION_22();
  v8 = *(v7 + 16);
  v8(&v3[v5], v0, v6);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v6);
  v12 = v4[16];
  OUTLINED_FUNCTION_44_4();
  v8(&v3[v12], v35, v6);
  OUTLINED_FUNCTION_19_3();
  v13 = v4[9];
  OUTLINED_FUNCTION_44_4();
  v8(&v3[v13], v36, v6);
  OUTLINED_FUNCTION_19_3();
  v14 = v4[13];
  OUTLINED_FUNCTION_44_4();
  v8(&v3[v14], v37, v6);
  OUTLINED_FUNCTION_19_3();
  v15 = v4[12];
  OUTLINED_FUNCTION_44_4();
  v8(&v3[v15], v38, v6);
  v16 = OUTLINED_FUNCTION_19_3();
  v24 = OUTLINED_FUNCTION_118_0(v16, v17, v18, v19, v20, v21, v22, v23, v35, v36, v37, v38, v39, v40, v41);
  v25(v24);
  OUTLINED_FUNCTION_124();
  sub_267EF8348();
  v26 = OUTLINED_FUNCTION_73();
  v27(v26);
  v28 = *(v1 + 128);
  v29 = *(v1 + 16);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v6);
  sub_267C26980(v28, v29 + v4[8], &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_1();

  return v33();
}

uint64_t sub_267C23D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_267EF2BA8();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v10 = sub_267EF83D8();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C23EE0, 0, 0);
}

uint64_t sub_267C23EE0()
{
  OUTLINED_FUNCTION_41_2();

  *v3 = v2;
  v4 = type metadata accessor for UnsendMessagesConfirmUnsendParameters(0);
  v5 = v4[10];
  sub_267B9F98C(&v3[v5], &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  OUTLINED_FUNCTION_22();
  v8 = *(v7 + 16);
  v8(&v3[v5], v0, v6);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v6);
  v12 = v4[16];
  OUTLINED_FUNCTION_44_4();
  v8(&v3[v12], v35, v6);
  OUTLINED_FUNCTION_19_3();
  v13 = v4[9];
  OUTLINED_FUNCTION_44_4();
  v8(&v3[v13], v36, v6);
  OUTLINED_FUNCTION_19_3();
  v14 = v4[13];
  OUTLINED_FUNCTION_44_4();
  v8(&v3[v14], v37, v6);
  OUTLINED_FUNCTION_19_3();
  v15 = v4[12];
  OUTLINED_FUNCTION_44_4();
  v8(&v3[v15], v38, v6);
  v16 = OUTLINED_FUNCTION_19_3();
  v24 = OUTLINED_FUNCTION_118_0(v16, v17, v18, v19, v20, v21, v22, v23, v35, v36, v37, v38, v39, v40, v41);
  v25(v24);
  OUTLINED_FUNCTION_124();
  sub_267EF8348();
  v26 = OUTLINED_FUNCTION_73();
  v27(v26);
  v28 = *(v1 + 128);
  v29 = *(v1 + 16);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v6);
  sub_267C26980(v28, v29 + v4[8], &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_1();

  return v33();
}

uint64_t sub_267C2412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = v12;
  v8[21] = v13;
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  sub_267EF81B8();
  v8[22] = swift_task_alloc();
  v9 = sub_267EF81D8();
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C24280, 0, 0);
}

uint64_t sub_267C2466C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = v12;
  v8[21] = v13;
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  sub_267EF81B8();
  v8[22] = swift_task_alloc();
  v9 = sub_267EF81D8();
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C247C0, 0, 0);
}

uint64_t sub_267C24BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  sub_267EF81B8();
  v8[11] = swift_task_alloc();
  v9 = sub_267EF81D8();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C24CE8, 0, 0);
}

uint64_t sub_267C24FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  sub_267EF81B8();
  v8[11] = swift_task_alloc();
  v9 = sub_267EF81D8();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C250F4, 0, 0);
}

uint64_t sub_267C253C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v2 = OUTLINED_FUNCTION_18(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v15[-1] - v3;
  v5 = sub_267EF3CF8();
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  sub_267EF3C98();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  sub_267C25550(v4);
  sub_267EF4158();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_267EF4818();
  v11 = v0[5];
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v11);
  (*(v12 + 8))(v15, v11, v12);
  __swift_project_boxed_opaque_existential_0(v15, v15[3]);
  OUTLINED_FUNCTION_108();
  sub_267BCF0D8();
  sub_267EF4898();
  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t sub_267C25550@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EF53D8();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v8 = (v6 - v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  sub_267EF4148();
  sub_267EF4098();
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v15 = swift_allocObject();
  v49 = xmmword_267EFC020;
  *(v15 + 16) = xmmword_267EFC020;
  if (qword_2802288C8 != -1)
  {
    swift_once();
  }

  *(v15 + 32) = sub_267BC9500();
  *(v15 + 40) = v16;
  sub_267EF4118();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_267EFCE30;
  *(v17 + 32) = sub_267BB90E4(0);
  *(v17 + 40) = v18;
  *(v17 + 48) = sub_267BB90E4(1);
  *(v17 + 56) = v19;
  *(v17 + 64) = sub_267BB90E4(2);
  *(v17 + 72) = v20;
  sub_267EF4108();
  v21 = sub_267EF6528();
  OUTLINED_FUNCTION_97(v21);
  sub_267EF6518();
  sub_267BBB050();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v22 = sub_267EF8A08();
  __swift_project_value_buffer(v22, qword_280240FB0);
  v23 = *(v4 + 16);
  v50 = v14;
  v23(v12, v14, v2);
  v24 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_48();
    v48 = a1;
    v27 = v26;
    v46 = v26;
    v47 = OUTLINED_FUNCTION_52();
    v52 = v47;
    *v27 = 136315138;
    v23(v8, v12, v2);
    sub_267EF5458();
    v51[3] = v2;
    v51[4] = sub_267BC410C(&qword_28022BAF0, MEMORY[0x277D5DC70], MEMORY[0x277D5DC50]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v51);
    v23(boxed_opaque_existential_0, v8, v2);
    v44 = sub_267EF5448();
    v29 = v12;
    v30 = v2;
    v32 = v31;
    v45 = v14;
    v33 = *(v4 + 8);
    v34 = v8;
    v35 = v4;
    v33(v34, v30);
    v33(v29, v30);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v36 = sub_267BA33E8(v44, v32, &v52);

    v37 = v46;
    *(v46 + 4) = v36;
    _os_log_impl(&dword_267B93000, v24, v45, "#UnsendMessagesConfirmIntentFlowStrategy sending system dialog act: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v33 = *(v4 + 8);
    v35 = v4;
    v33(v12, v2);
    v30 = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v49;
  v40 = v39 + v38;
  v41 = v50;
  v23(v40, v50, v30);
  sub_267EF4088();
  return (v33)(v41, v30);
}

uint64_t sub_267C25A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_267BE84FC(a1))
  {
    if (a2 && sub_267BAF0DC(a2))
    {
      sub_267BBD0EC(0, (a2 & 0xC000000000000001) == 0, a2);
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D609870](0, a2);
      }

      else
      {
        v5 = *(a2 + 32);
      }

      sub_267C26398(v5);
    }

    sub_267EF81A8();
  }

  else
  {
    v6 = *MEMORY[0x277D5D408];
    sub_267EF81B8();
    OUTLINED_FUNCTION_22();
    v9 = *(v8 + 104);

    return v9(a3, v6, v7);
  }
}

uint64_t sub_267C25B2C()
{
  OUTLINED_FUNCTION_53_2(OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_sentMessageContext);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_catProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_sharedContextService));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_featureFlags));
  return sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_confirmationResponse, &qword_280229310, &unk_267EFCF70);
}

uint64_t sub_267C25BAC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_53_2(OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_sentMessageContext);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_catProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_sharedContextService));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_featureFlags));
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_confirmationResponse, &qword_280229310, &unk_267EFCF70);
  return v0;
}

uint64_t sub_267C25C38()
{
  sub_267C25BAC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnsendMessagesConfirmIntentFlowStrategy(uint64_t a1)
{
  result = qword_2802292F8;
  if (!qword_2802292F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267C25CE4(uint64_t a1)
{
  type metadata accessor for TimedSentMessageContext(319);
  if (v1 <= 0x3F)
  {
    sub_267C25DD4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_267C25DD4(uint64_t a1)
{
  if (!qword_280229308)
  {
    sub_267EF44F8();
    v1 = sub_267EF9888();
    if (!v2)
    {
      atomic_store(v1, &qword_280229308);
    }
  }
}

uint64_t sub_267C25E50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267C1F068();
}

uint64_t sub_267C25EFC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BBD07C;

  return sub_267C1F318(a1, a2);
}

uint64_t sub_267C25FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for UnsendMessagesConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D08](a1, a2, v9, a4);
}

uint64_t sub_267C26070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for UnsendMessagesConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D10](a1, a2, v9, a4);
}

uint64_t sub_267C26138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for UnsendMessagesConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D18](a1, a2, v9, a4);
}

uint64_t sub_267C26200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for UnsendMessagesConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BAEBEC;

  return MEMORY[0x2821B9CF8](a1, a2, v9, a4);
}

uint64_t sub_267C262C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for UnsendMessagesConfirmIntentFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D00](a1, a2, a3, v11, a5);
}

uint64_t sub_267C26398(void *a1)
{
  v2 = [a1 serviceName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267C26408()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_28_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_75();

  return sub_267C24FB8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267C264B0()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_28_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_75();

  return sub_267C24BAC(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267C26558()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_28_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_75();

  return sub_267C2466C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267C26604()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_28_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_75();

  return sub_267C2412C(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_267C266B0()
{
  result = qword_28022AE00;
  if (!qword_28022AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AE00);
  }

  return result;
}

uint64_t sub_267C26704(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C26774()
{
  OUTLINED_FUNCTION_28_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_122();

  return sub_267C23D80(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267C26824()
{
  OUTLINED_FUNCTION_28_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267BAEBEC;
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_122();

  return sub_267C239D4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267C268D4()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_267BAEBEC;

  return sub_267C204A4(v3, v4, v5, v6);
}

uint64_t sub_267C26980(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_123(a1, a2, a3, a4);
  OUTLINED_FUNCTION_22();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_267C269D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_130_0()
{

  return sub_267EF92F8();
}

uint64_t sub_267C26A88@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D5BC40];
  sub_267EF4398();
  v3 = sub_267EF3D98();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_267C26B24()
{
  OUTLINED_FUNCTION_12();
  v1[28] = v2;
  v1[29] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v1[30] = OUTLINED_FUNCTION_2();
  v3 = sub_267EF4CC8();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = OUTLINED_FUNCTION_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v1[34] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF4228();
  v1[35] = v4;
  v1[36] = *(v4 - 8);
  v1[37] = OUTLINED_FUNCTION_2();

  return MEMORY[0x2822009F8](sub_267C26C8C, 0, 0);
}

uint64_t sub_267C26C8C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 272);
  v2 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 304) = v3;
  *v3 = v4;
  v3[1] = sub_267C26D50;

  return sub_267E4BE34();
}

uint64_t sub_267C26D50()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 272);
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 312) = v0;

  sub_267B9FF34(v3, &unk_28022AE30, &qword_267EFC0B0);
  if (v0)
  {
    v7 = sub_267C27290;
  }

  else
  {
    v7 = sub_267C26E80;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267C26E80()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 232);
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v6 = OUTLINED_FUNCTION_4_1();
  v7(v6);
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v8 = OUTLINED_FUNCTION_4_1();
  v9(v8);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v10 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;
  sub_267EF3F48();
  sub_267B9FF34(v0 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v11 = v5[5];
  v12 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v11);
  (*(v12 + 40))(v11, v12);
  v13 = *(v0 + 160);
  v14 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_0((v0 + 136), v13);
  v15 = MEMORY[0x277D5C1D8];
  *(v0 + 200) = v3;
  *(v0 + 208) = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
  (*(v2 + 16))(boxed_opaque_existential_0, v1, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 320) = v17;
  *v17 = v18;
  v17[1] = sub_267C270D4;

  return MEMORY[0x2821BB5D0](v0 + 176, v13, v14);
}

uint64_t sub_267C270D4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v3 + 328) = v0;

  if (v0)
  {
    v6 = sub_267C2744C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 176));
    v6 = sub_267C271E0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267C271E0()
{
  v4 = OUTLINED_FUNCTION_5_8();
  v5(v4);
  (*(v2 + 8))(v1, v0);
  __swift_destroy_boxed_opaque_existential_0((v3 + 136));
  OUTLINED_FUNCTION_3_10();

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267C27290()
{
  v17 = v0;
  v1 = *(v0 + 312);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    *(v0 + 216) = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v9 = sub_267EF9098();
    v11 = sub_267BA33E8(v9, v10, &v16);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v12, v13, "#LanguageUnsupportedFlow failed with error: %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_10();

  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_267C2744C()
{
  v22 = v3;
  v4 = OUTLINED_FUNCTION_5_8();
  v5(v4);
  (*(v2 + 8))(v1, v0);
  __swift_destroy_boxed_opaque_existential_0(v3 + 22);
  __swift_destroy_boxed_opaque_existential_0(v3 + 17);
  v6 = v3[41];
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v7 = sub_267EF8A08();
  __swift_project_value_buffer(v7, qword_280240FB0);
  v8 = v6;
  v9 = sub_267EF89F8();
  v10 = sub_267EF95E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v3[27] = v6;
    v13 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v14 = sub_267EF9098();
    v16 = sub_267BA33E8(v14, v15, &v21);

    *(v11 + 4) = v16;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v17, v18, "#LanguageUnsupportedFlow failed with error: %s");
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_10();

  OUTLINED_FUNCTION_17();

  return v19();
}

uint64_t sub_267C27640(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_267C27748(v2);
  v10 = v9;
  v11 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = v8;
  v12[7] = v10;

  sub_267E8FA18();
}

uint64_t sub_267C27788()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267C26B24();
}

uint64_t sub_267C27824()
{
}

uint64_t sub_267C27854()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v0;
}

uint64_t sub_267C27884()
{
  sub_267C27854();

  return swift_deallocClassInstance();
}

uint64_t sub_267C278F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267C26B24();
}

uint64_t sub_267C279D0()
{
  OUTLINED_FUNCTION_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;

  return sub_267C27788();
}

uint64_t sub_267C27A94(uint64_t a1, uint64_t a2)
{
  sub_267EF9028();
  OUTLINED_FUNCTION_116_1();
  sub_267EF9028();
  OUTLINED_FUNCTION_118_1();
  v5 = v5 && v2 == v4;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_15_5(v3);
  }

  return v6 & 1;
}

uint64_t sub_267C27B04(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE900000000000044;
  }

  OUTLINED_FUNCTION_112_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_5(v2);
  }

  return v8 & 1;
}

uint64_t sub_267C27C0C(uint64_t a1, char a2)
{
  ConversationEventStore.Hint.rawValue.getter();
  OUTLINED_FUNCTION_116_1();
  ConversationEventStore.Hint.rawValue.getter();
  OUTLINED_FUNCTION_118_1();
  v5 = v5 && v2 == v4;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_15_5(v3);
  }

  return v6 & 1;
}

uint64_t sub_267C27CA4(unsigned __int8 a1, char a2)
{
  v2 = 7562617;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7562617;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 28526;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6C65636E6163;
      break;
    case 3:
      v5 = 0x206D7269666E6F63;
      v3 = 0xEF746361746E6F63;
      break;
    case 4:
      v5 = 0x63207463656A6572;
      v3 = 0xEE00746361746E6FLL;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1953063287;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v5 = 0x65756E69746E6F63;
      break;
    case 7:
      v3 = 0xE400000000000000;
      v5 = 1819042147;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 28526;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6C65636E6163;
      break;
    case 3:
      v2 = 0x206D7269666E6F63;
      v6 = 0xEF746361746E6F63;
      break;
    case 4:
      v2 = 0x63207463656A6572;
      v6 = 0xEE00746361746E6FLL;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1953063287;
      break;
    case 6:
      v6 = 0xE800000000000000;
      OUTLINED_FUNCTION_105_1();
      v2 = v7 | 0x65756E6900000000;
      break;
    case 7:
      v6 = 0xE400000000000000;
      v2 = 1819042147;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_15_5(v5);
  }

  return v9 & 1;
}

uint64_t sub_267C27E8C(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 28532;
  switch(a1)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1836020326;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v4 = 0x6563616C706572;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v4 = 0x65766F6D6572;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v4 = 0x65726F6E6769;
      break;
    case 5:
      v3 = 0xE300000000000000;
      v4 = 7301239;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v4 = 1953391987;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 28532;
  switch(a2)
  {
    case 1:
      v5 = 0xE400000000000000;
      v6 = 1836020326;
      break;
    case 2:
      v5 = 0xE700000000000000;
      v6 = 0x6563616C706572;
      break;
    case 3:
      v5 = 0xE600000000000000;
      v6 = 0x65766F6D6572;
      break;
    case 4:
      v5 = 0xE600000000000000;
      v6 = 0x65726F6E6769;
      break;
    case 5:
      v5 = 0xE300000000000000;
      v6 = 7301239;
      break;
    case 6:
      v5 = 0xE400000000000000;
      v6 = 1953391987;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_5(v4);
  }

  return v8 & 1;
}

uint64_t sub_267C28014(unsigned __int8 a1, char a2)
{
  v2 = 0xEF74736575716552;
  v3 = 0x6E6F697461636F6CLL;
  v4 = a1;
  v5 = 0x6E6F697461636F6CLL;
  v6 = 0xEF74736575716552;
  switch(v4)
  {
    case 1:
      v5 = 0x6F4C646572616873;
      v6 = 0xEE006E6F69746163;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v5 = 0x794D646E6966;
      break;
    case 3:
      v6 = 0xEB000000004C5255;
      v5 = 0x6E6F697461636F6CLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6F4C646572616873;
      v2 = 0xEE006E6F69746163;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x794D646E6966;
      break;
    case 3:
      v2 = 0xEB000000004C5255;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_80_0(v5);
  }

  return v8 & 1;
}

uint64_t sub_267C28194(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_112_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_5(v2);
  }

  return v8 & 1;
}

uint64_t sub_267C2824C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x6F43646574696465;
  }

  if (v2)
  {
    v4 = 0xED0000746E65746ELL;
  }

  else
  {
    v4 = 0x8000000267F0FE60;
  }

  if (a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6F43646574696465;
  }

  if (a2)
  {
    v6 = 0x8000000267F0FE60;
  }

  else
  {
    v6 = 0xED0000746E65746ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_5(v3);
  }

  return v8 & 1;
}

uint64_t sub_267C28320()
{
  OUTLINED_FUNCTION_65_0();
  v2 = v1 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
  v3 = 0xE700000000000000;
  v5 = v4;
  v6 = v2;
  switch(v5)
  {
    case 1:
      v7 = 1768191329;
      goto LABEL_6;
    case 2:
      v8 = 0x5F6567616D69;
      goto LABEL_7;
    case 3:
      v7 = 1701079414;
LABEL_6:
      v8 = v7 & 0xFFFF0000FFFFFFFFLL | 0x5F6F00000000;
LABEL_7:
      v6 = v8 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      v3 = 0xED00006567617373;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v6 = 0x736567617373656DLL;
      break;
    case 5:
      v6 = 0x746361746E6F63;
      break;
    default:
      break;
  }

  v9 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v10 = 1768191329;
      goto LABEL_14;
    case 2:
      v12 = 0x5F6567616D69;
      goto LABEL_15;
    case 3:
      v10 = 1701079414;
LABEL_14:
      v12 = v10 & 0xFFFF0000FFFFFFFFLL | 0x5F6F00000000;
LABEL_15:
      v2 = v12 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      v9 = 0xED00006567617373;
      break;
    case 4:
      v9 = 0xE800000000000000;
      OUTLINED_FUNCTION_65_0();
      v2 = v11 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_105_1();
      v2 = v13 | 0x74636100000000;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v9)
  {
    v15 = 1;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_15_5(v6);
  }

  return v15 & 1;
}

uint64_t sub_267C28494(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 27954;
  switch(a1)
  {
    case 1:
      v3 = 0xE300000000000000;
      v4 = 7155761;
      break;
    case 2:
      v4 = 26673;
      break;
    case 3:
      v4 = 26678;
      break;
    case 4:
      v4 = 25649;
      break;
    case 5:
      v4 = 25655;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v4 = 6567986;
      break;
    case 7:
      v3 = 0xE300000000000000;
      v4 = 6712937;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 27954;
  switch(a2)
  {
    case 1:
      v5 = 0xE300000000000000;
      v6 = 7155761;
      break;
    case 2:
      v6 = 26673;
      break;
    case 3:
      v6 = 26678;
      break;
    case 4:
      v6 = 25649;
      break;
    case 5:
      v6 = 25655;
      break;
    case 6:
      v5 = 0xE300000000000000;
      v6 = 6567986;
      break;
    case 7:
      v5 = 0xE300000000000000;
      v6 = 6712937;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_5(v4);
  }

  return v8 & 1;
}

uint64_t sub_267C285DC()
{
  OUTLINED_FUNCTION_105_1();
  v2 = v1 | 0x6C6F7200000000;
  v3 = 0xE700000000000000;
  v5 = v4;
  v6 = v2;
  switch(v5)
  {
    case 1:
      v7 = 1701998445;
      goto LABEL_5;
    case 2:
      v6 = 0xD000000000000011;
      v3 = 0x8000000267F0F8F0;
      break;
    case 3:
      v7 = 1936942444;
LABEL_5:
      v6 = v7 | 0x746E694800000000;
      v3 = 0xE900000000000073;
      break;
    default:
      break;
  }

  v8 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v9 = 1701998445;
      goto LABEL_10;
    case 2:
      OUTLINED_FUNCTION_70_2();
      break;
    case 3:
      v9 = 1936942444;
LABEL_10:
      v2 = v9 | 0x746E694800000000;
      v8 = 0xE900000000000073;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_15_5(v6);
  }

  return v11 & 1;
}

uint64_t sub_267C28730(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x8000000267F11A00;
  }

  if (a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 1701667182;
  }

  if (a2)
  {
    v6 = 0x8000000267F11A00;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_5(v3);
  }

  return v8 & 1;
}

uint64_t sub_267C287F0(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000011;
  v3 = "pportedSpeakableGroupName";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0xD000000000000026;
    }

    if (v4 == 1)
    {
      v6 = "conversationCount";
    }

    else
    {
      v6 = "didReadRequestIntroduction";
    }
  }

  else
  {
    v5 = 0xD000000000000011;
    v6 = "pportedSpeakableGroupName";
  }

  if (a2)
  {
    v3 = "conversationCount";
    v2 = a2 == 1 ? 0xD00000000000001ALL : 0xD000000000000026;
    if (a2 != 1)
    {
      v3 = "didReadRequestIntroduction";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_5(v5);
  }

  return v8 & 1;
}

uint64_t sub_267C288C8(unsigned __int8 a1, char a2)
{
  v2 = 0x7265646E6573;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x7265646E6573;
  switch(v4)
  {
    case 1:
      v5 = 0x546567617373656DLL;
      v3 = 0xEB00000000657079;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x746E65746E6F63;
      break;
    case 3:
      v5 = 0xD000000000000015;
      v3 = 0x8000000267F0F870;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_65_0();
      v2 = v7 & 0xFFFFFFFFFFFFLL | 0x5465000000000000;
      v6 = 0xEB00000000657079;
      break;
    case 2:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_105_1();
      v2 = v8 | 0x746E6500000000;
      break;
    case 3:
      OUTLINED_FUNCTION_70_2();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_15_5(v5);
  }

  return v10 & 1;
}

uint64_t sub_267C28A30(char a1)
{
  if (a1)
  {
    v1 = 0xEE00747365757165;
  }

  else
  {
    v1 = 0xEC0000006E6F6974;
  }

  OUTLINED_FUNCTION_112_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_5(v2);
  }

  return v8 & 1;
}

uint64_t sub_267C28AEC(unsigned __int8 a1, char a2)
{
  v2 = 0xEB0000000064657ALL;
  v3 = 0x696C616974696E69;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x6169566572616873;
    }

    if (v4 == 1)
    {
      v6 = 0x8000000267F10550;
    }

    else
    {
      v6 = 0xEF6567617373654DLL;
    }
  }

  else
  {
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x6169566572616873;
    }

    if (a2 == 1)
    {
      v2 = 0x8000000267F10550;
    }

    else
    {
      v2 = 0xEF6567617373654DLL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_80_0(v5);
  }

  return v8 & 1;
}

uint64_t sub_267C28C10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a1);
  OUTLINED_FUNCTION_116_1();
  a3(a2);
  OUTLINED_FUNCTION_118_1();
  v8 = v8 && v3 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_15_5(v4);
  }

  return v9 & 1;
}

uint64_t sub_267C28C8C(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_112_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_5(v2);
  }

  return v8 & 1;
}

uint64_t sub_267C28D5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = OUTLINED_FUNCTION_101_1();
  v10(v9);
  sub_267BB4430(a4, 255, a5, a6);
  OUTLINED_FUNCTION_100_1();
  sub_267EF9298();
  OUTLINED_FUNCTION_100_1();
  sub_267EF9298();
  if (v16 == v14 && v17 == v15)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_80_0(v16);
  }

  return v12 & 1;
}

uint64_t sub_267C28E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ConversationEventStore.Event.rawValue.getter();
  OUTLINED_FUNCTION_116_1();
  ConversationEventStore.Event.rawValue.getter();
  OUTLINED_FUNCTION_118_1();
  v8 = v8 && v5 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_15_5(v6);
  }

  return v9 & 1;
}

uint64_t MessagesFlowPluginBase.__allocating_init()()
{
  v0 = swift_allocObject();
  MessagesFlowPluginBase.init()();
  return v0;
}

uint64_t MessagesFlowPluginBase.init()()
{
  v1 = v0;
  sub_267EF89E8();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  *(v0 + 296) = 0;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v3 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v3, qword_280240FB0);
  v4 = sub_267EF89F8();
  v5 = sub_267EF95F8();
  if (OUTLINED_FUNCTION_5_2(v5))
  {
    v6 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_31_5(v6);
    OUTLINED_FUNCTION_21_1(&dword_267B93000, v7, v5, "MessagesFlowDelegatePlugin is being initialized");
    OUTLINED_FUNCTION_18_2();
  }

  sub_267EF96A8();
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_280228820);
  }

  sub_267EF89D8();
  sub_267EF89B8();
  v8 = OUTLINED_FUNCTION_46_2();
  v9(v8);
  *(v1 + 256) = 0;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  if (qword_280228710 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = qword_280240640;
  *(v1 + 64) = &off_2878CF508;
  *(v1 + 40) = &type metadata for MessagesFeatureFlagsImpl;
  *(v1 + 48) = off_2878D1228;

  sub_267EF3838();
  sub_267B9A5E8(&v18, v1 + 72);
  v19 = sub_267EF68A8();
  v20 = &off_2878D54D8;
  __swift_allocate_boxed_opaque_existential_0(&v18);
  sub_267EF6898();
  sub_267B9A5E8(&v18, v1 + 112);
  v10 = sub_267EF8938();
  v11 = sub_267EF8928();
  v12 = MEMORY[0x277D5FDD8];
  *(v1 + 176) = v10;
  *(v1 + 184) = v12;
  *(v1 + 152) = v11;
  if (qword_280228730 != -1)
  {
    swift_once();
  }

  v13 = qword_280240A10;
  *(v1 + 328) = type metadata accessor for EligibleAppFinder();
  *(v1 + 336) = sub_267BB4430(&qword_2802293C0, 255, type metadata accessor for EligibleAppFinder, &unk_267F01504);
  *(v1 + 304) = v13;
  *(v1 + 192) = sub_267EF7BA8();
  *(v1 + 200) = &off_2878CECD0;
  *(v1 + 208) = &unk_267EFD160;
  *(v1 + 216) = 0;
  sub_267EF7978();
  type metadata accessor for MessagesFlowPluginBase();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();

  v16 = [v15 bundleForClass_];
  sub_267EF7968();

  return v1;
}

void sub_267C29410()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  OUTLINED_FUNCTION_101_1();
  v3 = sub_267EF2E38();
  OUTLINED_FUNCTION_58();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v10 = sub_267EF89E8();
  OUTLINED_FUNCTION_58();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v16 = v15 - v14;
  sub_267EF96A8();
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_280228820);
  }

  sub_267EF89D8();
  sub_267EF89B8();
  (*(v12 + 8))(v16, v10);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v17 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v17, qword_280240FB0);

  v18 = sub_267EF89F8();
  v19 = sub_267EF95C8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_48();
    v21 = OUTLINED_FUNCTION_52();
    v22 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_267BA33E8(v0, v2, &v22);
    _os_log_impl(&dword_267B93000, v18, v19, "MessagesFlowDelegatePlugin warming up for refId: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF6A68();
  sub_267EF2DE8();
  sub_267EF6A48();
  (*(v5 + 8))(v9, v3);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C29694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_267B9AB18(v27);
  v6 = v27[4];
  __swift_project_boxed_opaque_existential_0(v27, v27[3]);
  v7 = OUTLINED_FUNCTION_54_1();
  v8(v7, v6);
  __swift_destroy_boxed_opaque_existential_0(v27);
  v9 = v29;
  v10 = v30;
  __swift_project_boxed_opaque_existential_0(v28, v29);
  if (sub_267DBF838(v9, v10))
  {
    if ((*(v3 + 360) & 1) == 0)
    {
      v11 = *__swift_project_boxed_opaque_existential_0((v3 + 304), *(v3 + 328));
      v12 = OUTLINED_FUNCTION_46_2();
      sub_267CB93A4(v12, v13);
      v15 = v14;
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v26 = *(v11 + 16);
      sub_267E86DF4(v15, a1, a2);
      *(v11 + 16) = v26;
      swift_endAccess();
      *(v3 + 360) = 1;
    }
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v16 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
    v17 = sub_267EF89F8();
    v18 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v18))
    {
      v19 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v19);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_26();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v28);
}

void sub_267C29838()
{
  OUTLINED_FUNCTION_48_0();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_58();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_60();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_99_1();
  sub_267EF64C8();
  OUTLINED_FUNCTION_27_4();
  swift_allocObject();
  sub_267EF64B8();
  v14 = MEMORY[0x26D6059D0]();

  if (v14)
  {
    v15 = v0[22];
    v16 = v3[23];
    __swift_project_boxed_opaque_existential_0(v3 + 19, v3[22]);
    sub_267EBD060(v14, v15, v16);
    sub_267BBE6E0(v17, v2);

    if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
    {
      sub_267B9F98C(v2, &qword_2802294B0, &qword_267F001F0);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v29 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);
      v30 = sub_267EF89F8();
      v31 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v31))
      {
        v32 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v32);
        OUTLINED_FUNCTION_81(&dword_267B93000, v33, v31, "#MessagesFlowDelegatePlugin announcement is not present");
        OUTLINED_FUNCTION_26();
      }
    }

    else
    {
      v18 = OUTLINED_FUNCTION_50_3();
      v19(v18);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v20 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);
      (*(v8 + 16))(v12, v1, v6);
      v21 = sub_267EF89F8();
      v22 = sub_267EF95D8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = OUTLINED_FUNCTION_48();
        v36 = OUTLINED_FUNCTION_52();
        *v23 = 136315138;
        sub_267BB4430(&qword_2802294B8, 255, MEMORY[0x277D5FEB0], MEMORY[0x277D5FEB8]);
        v35 = v22;
        v24 = sub_267EF9E58();
        v25 = *(v8 + 8);
        v25(v12, v6);
        v26 = OUTLINED_FUNCTION_108();
        sub_267BA33E8(v26, v27, v28);
        OUTLINED_FUNCTION_54();

        *(v23 + 4) = v24;
        _os_log_impl(&dword_267B93000, v21, v35, "#MessagesFlowDelegatePlugin announcement is present: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();

        v25(v1, v6);
      }

      else
      {

        v34 = *(v8 + 8);
        v34(v12, v6);
        v34(v1, v6);
      }
    }

    OUTLINED_FUNCTION_47();
  }

  else
  {
    __break(1u);
  }
}

void sub_267C29C24()
{
  OUTLINED_FUNCTION_48_0();
  v3 = v2;
  v210 = v4;
  v221 = v5;
  v6 = sub_267EF7B88();
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v191[1] = v9 - v8;
  OUTLINED_FUNCTION_26_2();
  v217 = sub_267EF6868();
  OUTLINED_FUNCTION_58();
  v191[2] = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_0();
  v218 = v13 - v12;
  OUTLINED_FUNCTION_26_2();
  sub_267EF6A08();
  OUTLINED_FUNCTION_58();
  v219 = v14;
  v220 = v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v207 = v17 - v16;
  OUTLINED_FUNCTION_26_2();
  v200 = sub_267EF6A88();
  OUTLINED_FUNCTION_58();
  v205 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_0();
  v206 = v21 - v20;
  OUTLINED_FUNCTION_26_2();
  sub_267EF6B88();
  OUTLINED_FUNCTION_58();
  v203 = v23;
  v204 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_0();
  v202 = v25 - v24;
  OUTLINED_FUNCTION_26_2();
  v26 = sub_267EF6B38();
  v27 = OUTLINED_FUNCTION_18(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_0();
  v201 = v29 - v28;
  OUTLINED_FUNCTION_26_2();
  v30 = sub_267EF2E38();
  v31 = OUTLINED_FUNCTION_18(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_0_0();
  v215 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  v35 = OUTLINED_FUNCTION_18(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6();
  v213 = v36;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_66_2();
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6();
  v197 = v39;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77_0();
  v194 = v41;
  OUTLINED_FUNCTION_115();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = v191 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = v191 - v46;
  sub_267EF6B18();
  OUTLINED_FUNCTION_58();
  v192 = v49;
  v193 = v48;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_0_0();
  v212 = v51 - v50;
  __swift_project_boxed_opaque_existential_0((v0 + 112), *(v0 + 136));
  v208 = sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  v216 = v0;
  sub_267B9AB18(&v243);
  v52 = v244;
  v53 = v245;
  __swift_project_boxed_opaque_existential_0(&v243, v244);
  v54 = *(v53 + 8);
  v55 = v53;
  v56 = v47;
  v54(v240, v52, v55);
  sub_267EF2D28();
  OUTLINED_FUNCTION_78();
  v196 = v57;
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v57);
  sub_267EF6C28();
  v214 = v1;
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  v65 = OUTLINED_FUNCTION_28_3();
  v66 = sub_267EF6FF8();
  v67 = sub_267EF6FC8();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v68 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v68, qword_280240FB0);
  sub_267C2FB6C(v56, v45, &qword_280229430, &qword_267EFD2C0);

  v211 = v66;
  v69 = sub_267EF89F8();
  v70 = sub_267EF95D8();

  v71 = os_log_type_enabled(v69, v70);
  v209 = v3;
  v199 = v66;
  v198 = v65;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v191[0] = swift_slowAlloc();
    v234[0] = v191[0];
    *v72 = 136315394;
    v237[0] = v210;
    v237[1] = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v73 = sub_267EF9098();
    v75 = v56;
    v76 = sub_267BA33E8(v73, v74, v234);

    *(v72 + 4) = v76;
    *(v72 + 12) = 2080;
    sub_267C2FB6C(v45, v194, &qword_280229430, &qword_267EFD2C0);
    v77 = v70;
    v78 = sub_267EF9098();
    v80 = v79;
    v56 = v75;
    sub_267B9F98C(v45, &qword_280229430, &qword_267EFD2C0);
    v81 = sub_267BA33E8(v78, v80, v234);

    *(v72 + 14) = v81;
    _os_log_impl(&dword_267B93000, v69, v77, "#SiriKitContactResolving CRR config creation with appIdentifier:%s, crrCommsAppSelectionJointId:%s", v72, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    sub_267B9F98C(v45, &qword_280229430, &qword_267EFD2C0);
  }

  v82 = v207;
  v84 = v196;
  v83 = v197;
  if (v67 && (sub_267EF6F98(), v85 = sub_267EF37B8(), v87 = v86, , v87))
  {
    v197 = v85;
  }

  else
  {

    v197 = 0;
  }

  v207 = v67;
  v237[0] = v208;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229438, &unk_267F01FB0);
  v88 = sub_267EF9098();
  v194 = v89;
  v195 = v88;
  __swift_project_boxed_opaque_existential_0(v240, v241);
  OUTLINED_FUNCTION_54();
  sub_267EF3B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_267EFC020;
  v91 = v209;
  *(v90 + 32) = v210;
  *(v90 + 40) = v91;
  sub_267C2FB6C(v214, v213, &qword_280229428, &unk_267F00E50);
  sub_267C2FB6C(v56, v83, &qword_280229430, &qword_267EFD2C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83, 1, v84);

  v93 = v56;
  if (EnumTagSinglePayload == 1)
  {
    sub_267B9F98C(v83, &qword_280229430, &qword_267EFD2C0);
  }

  else
  {
    sub_267EF2CE8();
    (*(*(v84 - 8) + 8))(v83, v84);
  }

  sub_267EF6B28();
  (*(v203 + 104))(v202, *MEMORY[0x277D56148], v204);
  (*(v205 + 104))(v206, *MEMORY[0x277D560D0], v200);
  v94 = v212;
  sub_267EF6AF8();

  sub_267B9F98C(v214, &qword_280229428, &unk_267F00E50);
  sub_267B9F98C(v93, &qword_280229430, &qword_267EFD2C0);
  __swift_destroy_boxed_opaque_existential_0(v240);
  __swift_destroy_boxed_opaque_existential_0(&v243);
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    sub_267EF8678();
  }

  v95 = v216;
  OUTLINED_FUNCTION_108();
  sub_267EF6B08();
  v96 = sub_267BAF0DC(v221);
  v97 = MEMORY[0x277D84F90];
  if (v96)
  {
    v98 = v96;
    *&v243 = MEMORY[0x277D84F90];
    sub_267C72284(0, v96 & ~(v96 >> 63), 0);
    if (v98 < 0)
    {
      __break(1u);
LABEL_52:
      OUTLINED_FUNCTION_4_0(&qword_2802286F0);
      goto LABEL_39;
    }

    v99 = 0;
    v97 = v243;
    v100 = v221 & 0xC000000000000001;
    do
    {
      if (v100)
      {
        v101 = MEMORY[0x26D609870](v99, v221);
      }

      else
      {
        v101 = *(v221 + 8 * v99 + 32);
      }

      v102 = v101;
      sub_267EF97D8();

      *&v243 = v97;
      v103 = v82;
      v105 = *(v97 + 16);
      v104 = *(v97 + 24);
      if (v105 >= v104 >> 1)
      {
        sub_267C72284(v104 > 1, v105 + 1, 1);
        v97 = v243;
      }

      v99 = v99 + 1;
      *(v97 + 16) = v105 + 1;
      (*(v220 + 32))(v97 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v105, v103, v219);
      v82 = v103;
    }

    while (v98 != v99);
    v95 = v216;
  }

  v106 = sub_267EF89F8();
  v107 = sub_267EF95D8();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = OUTLINED_FUNCTION_48();
    v109 = OUTLINED_FUNCTION_52();
    *&v243 = v109;
    *v108 = 136315138;
    v110 = MEMORY[0x26D608FD0](v97, v219);
    v112 = sub_267BA33E8(v110, v111, &v243);

    *(v108 + 4) = v112;
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_91_4(v113, v114, v115, v116);
    __swift_destroy_boxed_opaque_existential_0(v109);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  __swift_project_boxed_opaque_existential_0((v95 + 112), *(v95 + 136));
  v117 = sub_267EF6878();

  v118 = *(v117 + 16);
  v119 = MEMORY[0x277D84F90];
  v215 = v117;
  if (v118)
  {
    *&v243 = MEMORY[0x277D84F90];
    sub_267EF9BF8();
    OUTLINED_FUNCTION_76_1();
    v121 = v117 + v120;
    v219 = *(v122 + 56);
    v220 = v123;
    v221 = v122;
    v124 = (v122 - 8);
    v125 = v118;
    v127 = v217;
    v126 = v218;
    do
    {
      v128 = OUTLINED_FUNCTION_46_2();
      (v220)(v128);
      sub_267EF6858();
      (*v124)(v126, v127);
      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
      v121 += v219;
      --v125;
    }

    while (v125);
    v117 = v215;
    v119 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_10_9();
  v137 = sub_267BB3BDC(v129, v130, v131, v132, v133, v134, v135, v136, 0, 0, 0);
  v138 = v137;
  if (v118)
  {
    *&v243 = v119;
    v219 = v137;
    v139 = v137;
    sub_267C72264(0, v118, 0);
    v140 = v243;
    OUTLINED_FUNCTION_76_1();
    v142 = v117 + v141;
    v220 = *(v143 + 56);
    v221 = v144;
    do
    {
      v145 = OUTLINED_FUNCTION_114_1();
      (v221)(v145);
      v146 = sub_267EF6828();
      v147 = OUTLINED_FUNCTION_108();
      v148(v147);
      *&v243 = v140;
      v150 = *(v140 + 16);
      v149 = *(v140 + 24);
      if (v150 >= v149 >> 1)
      {
        sub_267C72264((v149 > 1), v150 + 1, 1);
        v140 = v243;
      }

      *(v140 + 16) = v150 + 1;
      *(v140 + 4 * v150 + 32) = v146;
      v142 += v220;
      --v118;
    }

    while (v118);

    v138 = v219;
  }

  else
  {
    v151 = v137;

    v140 = MEMORY[0x277D84F90];
  }

  sub_267C7A414(v140);

  sub_267EF7C38();

  v221 = sub_267EF7C08();
  v152 = type metadata accessor for SendMessageState();
  OUTLINED_FUNCTION_89_1(v152);
  v93 = sub_267BC963C(2);
  sub_267B9AB18(&v243);
  v94 = type metadata accessor for SiriKitFlowFactoryImpl();
  v97 = OUTLINED_FUNCTION_49(v94);
  v98 = v138;
  if (qword_2802286F0 != -1)
  {
    goto LABEL_52;
  }

LABEL_39:
  v153 = type metadata accessor for SendMessageCATs(0);
  sub_267EF7B68();
  v220 = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
  v219 = sub_267BB4A3C();
  v154 = type metadata accessor for ShareSheetProvider();
  v155 = OUTLINED_FUNCTION_32_2(v154);
  v241 = v94;
  v242 = &off_2878CFE90;
  v240[0] = v97;
  v238 = v153;
  v239 = &off_2878D0D48;
  v237[0] = v155;
  v235 = &type metadata for MessagesFeatureFlagsImpl;
  v236 = off_2878D1228;
  type metadata accessor for SendMessageFlow(0);
  OUTLINED_FUNCTION_27_4();
  v156 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v240, v94);
  OUTLINED_FUNCTION_28_7();
  v218 = v157;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v158);
  OUTLINED_FUNCTION_0_0();
  v161 = (v160 - v159);
  (*(v162 + 16))(v160 - v159);
  __swift_mutable_project_boxed_opaque_existential_1(v237, v238);
  OUTLINED_FUNCTION_28_7();
  v217 = v163;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_0_0();
  v167 = (v166 - v165);
  (*(v168 + 16))(v166 - v165);
  __swift_mutable_project_boxed_opaque_existential_1(v234, v235);
  v169 = *v161;
  v170 = *v167;
  v232 = v94;
  v233 = &off_2878CFE90;
  *&v231 = v169;
  v229 = v153;
  v230 = &off_2878D0D48;
  *&v228 = v170;
  v226 = &type metadata for MessagesFeatureFlagsImpl;
  v227 = off_2878D1228;
  sub_267BCE788(v98);
  v171 = v93;
  if (![v98 outgoingMessageType])
  {
    v172 = sub_267EF89F8();
    v173 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v173))
    {
      v174 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v174);
      OUTLINED_FUNCTION_81(&dword_267B93000, v175, v173, "#SendMessageFlow outgoingMessageType is unknown, defaulting to text");
      OUTLINED_FUNCTION_26();
    }

    v224 = MEMORY[0x277D83B88];
    v223[0] = 1;
    sub_267ECE290();
    sub_267B9F98C(v223, &qword_28022AEF0, &qword_267EFCDE0);
  }

  if (*(v93 + 16) != 5)
  {
    v176 = sub_267EF89F8();
    v177 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v177))
    {
      v178 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v178);
      OUTLINED_FUNCTION_81(&dword_267B93000, v179, v177, "#SendMessageFlow non-shim intent request, marking as app selected by user");
      OUTLINED_FUNCTION_26();
    }

    *(v93 + 96) = 1;
  }

  v180 = v244;
  v181 = v245;
  __swift_project_boxed_opaque_existential_0(&v243, v244);
  v182 = *(v181 + 24);
  v183 = v98;
  v182(v223, v180, v181);
  __swift_project_boxed_opaque_existential_0(v223, v224);
  OUTLINED_FUNCTION_53_0();
  sub_267EF45B8();
  __swift_project_boxed_opaque_existential_0(v222, v222[3]);
  OUTLINED_FUNCTION_53_0();
  sub_267EF42B8();
  if (v184)
  {
    v185 = sub_267EF8FF8();
  }

  else
  {
    v185 = 0;
  }

  v186 = v212;
  __swift_destroy_boxed_opaque_existential_0(v222);
  v187 = __swift_destroy_boxed_opaque_existential_0(v223);
  OUTLINED_FUNCTION_92_1(v187, sel__setOriginatingDeviceIdsIdentifier_);

  v188 = v156 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
  *v188 = v221;
  *(v188 + 8) = v183;
  *(v188 + 16) = v171;
  *(v188 + 40) = 1;
  v189 = type metadata accessor for SendMessageFlow.State(0);
  OUTLINED_FUNCTION_47_2(v189);
  sub_267B9A5E8(&v231, v156 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory);
  v190 = v219;
  *(v156 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs) = v220;
  *(v156 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs) = v190;
  sub_267B9A5E8(&v225, v156 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags);
  sub_267B9A5E8(&v228, v156 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider);
  sub_267B9A5E8(&v243, v156 + 16);
  (*(v192 + 8))(v186, v193);
  __swift_destroy_boxed_opaque_existential_0(v234);
  __swift_destroy_boxed_opaque_existential_0(v237);
  __swift_destroy_boxed_opaque_existential_0(v240);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C2AF90()
{
  v21 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = *(v0 + 48);
  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_48();
    v9 = OUTLINED_FUNCTION_52();
    v20 = v9;
    *v8 = 136315138;
    *(v0 + 16) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v11 = sub_267EF9098();
    v13 = sub_267BA33E8(v11, v12, &v20);

    *(v8 + 4) = v13;
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_91_4(v14, v15, v16, v17, v20);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();

  return v18();
}

void sub_267C2B120()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  v27 = OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_58();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v11 = sub_267EF89E8();
  OUTLINED_FUNCTION_58();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v17 = v16 - v15;
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_280228820);
  }

  qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  OUTLINED_FUNCTION_95_2();
  sub_267EF89A8();
  sub_267EF5E68();
  OUTLINED_FUNCTION_27_4();
  swift_allocObject();
  sub_267EF5E58();
  v18 = MEMORY[0x26D6059D0]();

  if (v18)
  {
    v26 = v11;
    v19 = v0[22];
    v20 = v2[23];
    __swift_project_boxed_opaque_existential_0(v2 + 19, v2[22]);
    sub_267EBD060(v18, v19, v20);
    sub_267BBE6E0(v21, v1);

    if (__swift_getEnumTagSinglePayload(v1, 1, v27) == 1)
    {

      sub_267B9F98C(v1, &qword_2802294B0, &qword_267F001F0);
      v11 = v26;
    }

    else
    {
      (*(v6 + 32))(v10, v1, v27);
      v23 = sub_267EF8AA8() == 0xD000000000000014 && 0x8000000267F12580 == v22;
      v11 = v26;
      if (!v23)
      {
        sub_267EF9EA8();
      }

      v24 = OUTLINED_FUNCTION_50_3();
      v25(v24);
    }
  }

  sub_267EF9688();
  OUTLINED_FUNCTION_95_2();
  sub_267EF89B8();
  (*(v13 + 8))(v17, v11);
  OUTLINED_FUNCTION_47();
}

void *MessagesFlowPluginBase.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);

  sub_267B9F98C((v0 + 28), &qword_2802293E0, &qword_267EFD170);
  sub_267B9F98C((v0 + 33), &qword_2802293E0, &qword_267EFD170);
  __swift_destroy_boxed_opaque_existential_0(v0 + 38);

  return v0;
}

uint64_t MessagesFlowPluginBase.__deallocating_deinit()
{
  MessagesFlowPluginBase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_267C2B55C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 248))();
  *a1 = result;
  return result;
}

BOOL sub_267C2B5DC()
{
  v1 = 0;
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb);
  while (2)
  {
    if (v1 == 3)
    {
      return v1 != 3;
    }

    v3 = 1684957542;
    v4 = 0xE400000000000000;
    switch(byte_2878CA588[v1 + 32])
    {
      case 1:
        v3 = 2003789939;
        goto LABEL_35;
      case 2:
        v4 = 0xE600000000000000;
        v3 = 0x6567616E616DLL;
        goto LABEL_35;
      case 3:
        v3 = 1684104562;
        goto LABEL_35;
      case 4:
        v3 = 1684956531;
        goto LABEL_35;
      case 5:
        v4 = 0xE500000000000000;
        v3 = 0x796C706572;
        goto LABEL_35;
      case 6:
        v4 = 0xE700000000000000;
        v3 = 0x64726177726F66;
        goto LABEL_35;
      case 7:
        v4 = 0xE600000000000000;
        v3 = 0x796669646F6DLL;
        goto LABEL_35;
      case 8:
        v4 = 0xE600000000000000;
        v6 = 1701602660;
        goto LABEL_30;
      case 9:
        v4 = 0xE600000000000000;
        v7 = 1701867617;
        goto LABEL_26;
      case 0xA:
        v4 = 0xE700000000000000;
        v3 = 0x79666972616C63;
        goto LABEL_35;
      case 0xB:
        v3 = 0x65766E6F4377656ELL;
        v4 = 0xEF6E6F6974617372;
        goto LABEL_35;
      case 0xC:
        v4 = 0xE800000000000000;
        v3 = 0x65636E756F6E6E61;
        goto LABEL_35;
      case 0xD:
        v3 = 1886352499;
        goto LABEL_35;
      case 0xE:
        v4 = 0xE500000000000000;
        v3 = 0x6572616873;
        goto LABEL_35;
      case 0xF:
        v3 = 2036427888;
        goto LABEL_35;
      case 0x10:
        v4 = 0xE600000000000000;
        v3 = 0x627265566F6ELL;
        goto LABEL_35;
      case 0x11:
        v3 = 0x736972616D6D7573;
        v4 = 0xE900000000000065;
        goto LABEL_35;
      case 0x12:
        v4 = 0xE600000000000000;
        v6 = 1633972341;
LABEL_30:
        v3 = v6 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
        goto LABEL_35;
      case 0x13:
        v4 = 0xE700000000000000;
        v5 = 0x736575716572;
        goto LABEL_19;
      case 0x14:
        v3 = 0x6978456B63656863;
        v8 = 0x65636E657473;
        goto LABEL_33;
      case 0x15:
        v3 = 0x77726F4670696B73;
        v4 = 0xEB00000000647261;
        goto LABEL_35;
      case 0x16:
        v4 = 0xE700000000000000;
        v3 = 0x65726168736E75;
        goto LABEL_35;
      case 0x17:
        v4 = 0xE600000000000000;
        v7 = 1702063733;
LABEL_26:
        v3 = v7 & 0xFFFF0000FFFFFFFFLL | 0x646E00000000;
        goto LABEL_35;
      case 0x18:
        v4 = 0xE600000000000000;
        v3 = 0x746165706572;
        goto LABEL_35;
      case 0x19:
        v4 = 0xE500000000000000;
        v3 = 0x7463616572;
        goto LABEL_35;
      case 0x1A:
        v4 = 0xE700000000000000;
        v5 = 0x636165726E75;
LABEL_19:
        v3 = v5 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
        goto LABEL_35;
      case 0x1B:
        v3 = 0x6552657461647075;
        v8 = 0x6E6F69746361;
LABEL_33:
        v4 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        goto LABEL_35;
      case 0x1C:
        goto LABEL_72;
      default:
LABEL_35:
        v9 = 1684957542;
        v10 = 0xE400000000000000;
        switch(v2)
        {
          case 1:
            v9 = 2003789939;
            break;
          case 2:
            v10 = 0xE600000000000000;
            v9 = 0x6567616E616DLL;
            break;
          case 3:
            v9 = 1684104562;
            break;
          case 4:
            v9 = 1684956531;
            break;
          case 5:
            v10 = 0xE500000000000000;
            v9 = 0x796C706572;
            break;
          case 6:
            v10 = 0xE700000000000000;
            v9 = 0x64726177726F66;
            break;
          case 7:
            v10 = 0xE600000000000000;
            v9 = 0x796669646F6DLL;
            break;
          case 8:
            v10 = 0xE600000000000000;
            v13 = 1701602660;
            goto LABEL_60;
          case 9:
            v10 = 0xE600000000000000;
            v12 = 1701867617;
            goto LABEL_64;
          case 10:
            v10 = 0xE700000000000000;
            v9 = 0x79666972616C63;
            break;
          case 11:
            v9 = 0x65766E6F4377656ELL;
            v10 = 0xEF6E6F6974617372;
            break;
          case 12:
            v10 = 0xE800000000000000;
            v9 = 0x65636E756F6E6E61;
            break;
          case 13:
            v9 = 1886352499;
            break;
          case 14:
            v10 = 0xE500000000000000;
            v9 = 0x6572616873;
            break;
          case 15:
            v9 = 2036427888;
            break;
          case 16:
            v10 = 0xE600000000000000;
            v9 = 0x627265566F6ELL;
            break;
          case 17:
            v9 = 0x736972616D6D7573;
            v10 = 0xE900000000000065;
            break;
          case 18:
            v10 = 0xE600000000000000;
            v13 = 1633972341;
LABEL_60:
            v9 = v13 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
            break;
          case 19:
            v10 = 0xE700000000000000;
            v14 = 0x736575716572;
            goto LABEL_66;
          case 20:
            v9 = 0x6978456B63656863;
            v11 = 0x65636E657473;
            goto LABEL_52;
          case 21:
            v9 = 0x77726F4670696B73;
            v10 = 0xEB00000000647261;
            break;
          case 22:
            v10 = 0xE700000000000000;
            v9 = 0x65726168736E75;
            break;
          case 23:
            v10 = 0xE600000000000000;
            v12 = 1702063733;
LABEL_64:
            v9 = v12 & 0xFFFF0000FFFFFFFFLL | 0x646E00000000;
            break;
          case 24:
            v10 = 0xE600000000000000;
            v9 = 0x746165706572;
            break;
          case 25:
            v10 = 0xE500000000000000;
            v9 = 0x7463616572;
            break;
          case 26:
            v10 = 0xE700000000000000;
            v14 = 0x636165726E75;
LABEL_66:
            v9 = v14 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
            break;
          case 27:
            v9 = 0x6552657461647075;
            v11 = 0x6E6F69746361;
LABEL_52:
            v10 = v11 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          default:
            break;
        }

        if (v3 != v9 || v4 != v10)
        {
          v16 = sub_267EF9EA8();

          if (v16)
          {
            return v1 != 3;
          }

LABEL_72:
          ++v1;
          continue;
        }

        return v1 != 3;
    }
  }
}

BOOL sub_267C2BB60()
{
  v1 = 0;
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb);
  while (2)
  {
    if (v1 == 2)
    {
      return v1 != 2;
    }

    v3 = 1684957542;
    v4 = 0xE400000000000000;
    switch(byte_2878CA538[v1 + 32])
    {
      case 1:
        v3 = 2003789939;
        goto LABEL_35;
      case 2:
        v4 = 0xE600000000000000;
        v3 = 0x6567616E616DLL;
        goto LABEL_35;
      case 3:
        v3 = 1684104562;
        goto LABEL_35;
      case 4:
        v3 = 1684956531;
        goto LABEL_35;
      case 5:
        v4 = 0xE500000000000000;
        v3 = 0x796C706572;
        goto LABEL_35;
      case 6:
        v4 = 0xE700000000000000;
        v3 = 0x64726177726F66;
        goto LABEL_35;
      case 7:
        v4 = 0xE600000000000000;
        v3 = 0x796669646F6DLL;
        goto LABEL_35;
      case 8:
        v4 = 0xE600000000000000;
        v6 = 1701602660;
        goto LABEL_30;
      case 9:
        v4 = 0xE600000000000000;
        v7 = 1701867617;
        goto LABEL_26;
      case 0xA:
        v4 = 0xE700000000000000;
        v3 = 0x79666972616C63;
        goto LABEL_35;
      case 0xB:
        v3 = 0x65766E6F4377656ELL;
        v4 = 0xEF6E6F6974617372;
        goto LABEL_35;
      case 0xC:
        v4 = 0xE800000000000000;
        v3 = 0x65636E756F6E6E61;
        goto LABEL_35;
      case 0xD:
        v3 = 1886352499;
        goto LABEL_35;
      case 0xE:
        v4 = 0xE500000000000000;
        v3 = 0x6572616873;
        goto LABEL_35;
      case 0xF:
        v3 = 2036427888;
        goto LABEL_35;
      case 0x10:
        v4 = 0xE600000000000000;
        v3 = 0x627265566F6ELL;
        goto LABEL_35;
      case 0x11:
        v3 = 0x736972616D6D7573;
        v4 = 0xE900000000000065;
        goto LABEL_35;
      case 0x12:
        v4 = 0xE600000000000000;
        v6 = 1633972341;
LABEL_30:
        v3 = v6 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
        goto LABEL_35;
      case 0x13:
        v4 = 0xE700000000000000;
        v5 = 0x736575716572;
        goto LABEL_19;
      case 0x14:
        v3 = 0x6978456B63656863;
        v8 = 0x65636E657473;
        goto LABEL_33;
      case 0x15:
        v3 = 0x77726F4670696B73;
        v4 = 0xEB00000000647261;
        goto LABEL_35;
      case 0x16:
        v4 = 0xE700000000000000;
        v3 = 0x65726168736E75;
        goto LABEL_35;
      case 0x17:
        v4 = 0xE600000000000000;
        v7 = 1702063733;
LABEL_26:
        v3 = v7 & 0xFFFF0000FFFFFFFFLL | 0x646E00000000;
        goto LABEL_35;
      case 0x18:
        v4 = 0xE600000000000000;
        v3 = 0x746165706572;
        goto LABEL_35;
      case 0x19:
        v4 = 0xE500000000000000;
        v3 = 0x7463616572;
        goto LABEL_35;
      case 0x1A:
        v4 = 0xE700000000000000;
        v5 = 0x636165726E75;
LABEL_19:
        v3 = v5 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
        goto LABEL_35;
      case 0x1B:
        v3 = 0x6552657461647075;
        v8 = 0x6E6F69746361;
LABEL_33:
        v4 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        goto LABEL_35;
      case 0x1C:
        goto LABEL_72;
      default:
LABEL_35:
        v9 = 1684957542;
        v10 = 0xE400000000000000;
        switch(v2)
        {
          case 1:
            v9 = 2003789939;
            break;
          case 2:
            v10 = 0xE600000000000000;
            v9 = 0x6567616E616DLL;
            break;
          case 3:
            v9 = 1684104562;
            break;
          case 4:
            v9 = 1684956531;
            break;
          case 5:
            v10 = 0xE500000000000000;
            v9 = 0x796C706572;
            break;
          case 6:
            v10 = 0xE700000000000000;
            v9 = 0x64726177726F66;
            break;
          case 7:
            v10 = 0xE600000000000000;
            v9 = 0x796669646F6DLL;
            break;
          case 8:
            v10 = 0xE600000000000000;
            v13 = 1701602660;
            goto LABEL_60;
          case 9:
            v10 = 0xE600000000000000;
            v12 = 1701867617;
            goto LABEL_64;
          case 10:
            v10 = 0xE700000000000000;
            v9 = 0x79666972616C63;
            break;
          case 11:
            v9 = 0x65766E6F4377656ELL;
            v10 = 0xEF6E6F6974617372;
            break;
          case 12:
            v10 = 0xE800000000000000;
            v9 = 0x65636E756F6E6E61;
            break;
          case 13:
            v9 = 1886352499;
            break;
          case 14:
            v10 = 0xE500000000000000;
            v9 = 0x6572616873;
            break;
          case 15:
            v9 = 2036427888;
            break;
          case 16:
            v10 = 0xE600000000000000;
            v9 = 0x627265566F6ELL;
            break;
          case 17:
            v9 = 0x736972616D6D7573;
            v10 = 0xE900000000000065;
            break;
          case 18:
            v10 = 0xE600000000000000;
            v13 = 1633972341;
LABEL_60:
            v9 = v13 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
            break;
          case 19:
            v10 = 0xE700000000000000;
            v14 = 0x736575716572;
            goto LABEL_66;
          case 20:
            v9 = 0x6978456B63656863;
            v11 = 0x65636E657473;
            goto LABEL_52;
          case 21:
            v9 = 0x77726F4670696B73;
            v10 = 0xEB00000000647261;
            break;
          case 22:
            v10 = 0xE700000000000000;
            v9 = 0x65726168736E75;
            break;
          case 23:
            v10 = 0xE600000000000000;
            v12 = 1702063733;
LABEL_64:
            v9 = v12 & 0xFFFF0000FFFFFFFFLL | 0x646E00000000;
            break;
          case 24:
            v10 = 0xE600000000000000;
            v9 = 0x746165706572;
            break;
          case 25:
            v10 = 0xE500000000000000;
            v9 = 0x7463616572;
            break;
          case 26:
            v10 = 0xE700000000000000;
            v14 = 0x636165726E75;
LABEL_66:
            v9 = v14 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
            break;
          case 27:
            v9 = 0x6552657461647075;
            v11 = 0x6E6F69746361;
LABEL_52:
            v10 = v11 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          default:
            break;
        }

        if (v3 != v9 || v4 != v10)
        {
          v16 = sub_267EF9EA8();

          if (v16)
          {
            return v1 != 2;
          }

LABEL_72:
          ++v1;
          continue;
        }

        return v1 != 2;
    }
  }
}

void sub_267C2C108(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 _setExtensionBundleId_];
}

uint64_t sub_267C2C16C(uint64_t a1)
{
  v2 = sub_267EF7B88();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229440, &qword_267EFD2E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v143 - v4;
  v6 = type metadata accessor for TimedSpokenContext(0);
  MEMORY[0x28223BE20](v6);
  v8 = v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187[3] = type metadata accessor for SmsNLv3Intent(0);
  v187[4] = &off_2878D9000;
  v187[0] = a1;

  sub_267C4C48C(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_267B9F98C(v5, &qword_280229440, &qword_267EFD2E0);
LABEL_10:
    *(&v172 + 1) = &type metadata for Features;
    *&v173 = sub_267BAFCAC();
    LOBYTE(v171) = 2;
    v18 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0(&v171);
    if ((v18 & 1) != 0 && (v19 = sub_267EC4DE0(), sub_267E59030(v19, &unk_2878CA4C0)))
    {
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v20 = sub_267EF8A08();
      __swift_project_value_buffer(v20, qword_280240FB0);
      v21 = sub_267EF89F8();
      v22 = sub_267EF95D8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_267B93000, v21, v22, "MessagesFlowDelegatePlugin received a message edit request", v23, 2u);
        MEMORY[0x26D60A7B0](v23, -1, -1);
      }

      sub_267B9AFEC(v187, &v171);
      sub_267B9AB18(&v184);
      if (qword_280228710 != -1)
      {
        swift_once();
      }

      v24 = qword_280240640;
      v25 = type metadata accessor for SiriKitFlowFactoryImpl();
      v26 = swift_allocObject();
      *(&v182 + 1) = v25;
      v183 = &off_2878CFE90;
      *&v181 = v26;
      type metadata accessor for EditMessageFlow(0);
      v27 = swift_allocObject();
      v28 = __swift_mutable_project_boxed_opaque_existential_1(&v181, v25);
      MEMORY[0x28223BE20](v28);
      v30 = (v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v31 + 16))(v30);
      v32 = *v30;
      *(v27 + 120) = v25;
      *(v27 + 128) = &off_2878CFE90;
      *(v27 + 96) = v32;
      sub_267B9A5E8(&v171, v27 + 56);
      type metadata accessor for EditMessageFlow.State(0);
      swift_storeEnumTagMultiPayload();
      *(v27 + 136) = v24;
      *(v27 + 144) = &off_2878CF508;
      *(v27 + 152) = 0;
      sub_267B9A5E8(&v184, v27 + 16);

      __swift_destroy_boxed_opaque_existential_0(&v181);
      *&v171 = v27;
      v33 = &unk_280229480;
      v34 = type metadata accessor for EditMessageFlow;
      v35 = &unk_267F02860;
    }

    else
    {
      if (sub_267EC3084())
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v36 = sub_267EF8A08();
        __swift_project_value_buffer(v36, qword_280240FB0);
        v37 = sub_267EF89F8();
        v38 = sub_267EF95D8();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_267B93000, v37, v38, "MessagesFlowDelegatePlugin received a message sending request", v39, 2u);
          MEMORY[0x26D60A7B0](v39, -1, -1);
        }

        sub_267C29694(0xD000000000000013, 0x8000000267F0F820);
        sub_267B9AFEC(v187, &v171);
        sub_267B9AB18(&v184);
        v40 = type metadata accessor for SiriKitFlowFactoryImpl();
        v41 = swift_allocObject();
        if (qword_2802286F0 != -1)
        {
          swift_once();
        }

        type metadata accessor for SendMessageCATs(0);
        sub_267EF7B68();
        v148 = sub_267EF78E8();
        __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
        v147 = sub_267BB4A3C();
        v42 = type metadata accessor for ShareSheetProvider();
        v43 = swift_allocObject();
        *(&v182 + 1) = v40;
        v183 = &off_2878CFE90;
        *&v181 = v41;
        v180 = &off_2878D0D48;
        *(&v179 + 1) = v42;
        *&v178 = v43;
        v176 = &type metadata for MessagesFeatureFlagsImpl;
        v177 = off_2878D1228;
        type metadata accessor for SendMessageFlow(0);
        v44 = swift_allocObject();
        v45 = __swift_mutable_project_boxed_opaque_existential_1(&v181, v40);
        MEMORY[0x28223BE20](v45);
        v47 = (v143 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v48 + 16))(v47);
        v49 = __swift_mutable_project_boxed_opaque_existential_1(&v178, *(&v179 + 1));
        MEMORY[0x28223BE20](v49);
        v51 = (v143 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v52 + 16))(v51);
        __swift_mutable_project_boxed_opaque_existential_1(v175, v176);
        v53 = *v47;
        v54 = *v51;
        v55 = (v44 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory);
        v55[3] = v40;
        v55[4] = &off_2878CFE90;
        *v55 = v53;
        v56 = (v44 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider);
        v56[3] = v42;
        v56[4] = &off_2878D0D48;
        *v56 = v54;
        v57 = v44 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags;
        *(v57 + 24) = &type metadata for MessagesFeatureFlagsImpl;
        *(v57 + 32) = off_2878D1228;
        v58 = v44 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
        sub_267B9A5E8(&v171, v44 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state);
        *(v58 + 40) = 0;
        type metadata accessor for SendMessageFlow.State(0);
        swift_storeEnumTagMultiPayload();
        v59 = v147;
        *(v44 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs) = v148;
        *(v44 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs) = v59;
        sub_267B9A5E8(&v184, v44 + 16);
        __swift_destroy_boxed_opaque_existential_0(v175);
        __swift_destroy_boxed_opaque_existential_0(&v178);
        __swift_destroy_boxed_opaque_existential_0(&v181);
        *&v171 = v44;
        sub_267BB4430(&qword_280229478, 255, type metadata accessor for SendMessageFlow, &unk_267F0A980);
        v17 = sub_267EF36E8();
        goto LABEL_62;
      }

      if (sub_267EC30F4())
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v60 = sub_267EF8A08();
        __swift_project_value_buffer(v60, qword_280240FB0);
        v61 = sub_267EF89F8();
        v62 = sub_267EF95D8();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_267B93000, v61, v62, "MessagesFlowDelegatePlugin received a message reading request", v63, 2u);
          MEMORY[0x26D60A7B0](v63, -1, -1);
        }

        sub_267B9AFEC(v187, &v171);
        sub_267B9AB18(&v184);
        type metadata accessor for SiriKitFlowFactoryImpl();
        v64 = swift_allocObject();
        if (qword_2802286F0 != -1)
        {
          swift_once();
        }

        type metadata accessor for SearchForMessagesCATs(0);
        sub_267EF7B68();
        v65 = sub_267EF78E8();
        v66 = __swift_mutable_project_boxed_opaque_existential_1(&v171, *(&v172 + 1));
        MEMORY[0x28223BE20](v66);
        v68 = (v143 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v69 + 16))(v68);
        v70 = sub_267C2F848(*v68, &v184, v64, v65, type metadata accessor for SmsNLv3Intent, &off_2878D9000);
        __swift_destroy_boxed_opaque_existential_0(&v171);
        *&v171 = v70;
        type metadata accessor for SearchForMessagesFlow(0);
        v33 = &qword_280229470;
        v34 = type metadata accessor for SearchForMessagesFlow;
        v35 = &unk_267F0B7B0;
      }

      else
      {
        v71 = sub_267EC4DE0();
        if (sub_267E59030(v71, &unk_2878CA510))
        {
          if (qword_280228818 != -1)
          {
            swift_once();
          }

          v72 = sub_267EF8A08();
          __swift_project_value_buffer(v72, qword_280240FB0);
          v73 = sub_267EF89F8();
          v74 = sub_267EF95D8();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&dword_267B93000, v73, v74, "MessagesFlowDelegatePlugin received a message unsend request", v75, 2u);
            MEMORY[0x26D60A7B0](v75, -1, -1);
          }

          sub_267B9AFEC(v187, &v171);
          sub_267B9AB18(&v184);
          if (qword_280228710 != -1)
          {
            swift_once();
          }

          v76 = qword_280240640;
          v77 = type metadata accessor for SiriKitFlowFactoryImpl();
          v78 = swift_allocObject();
          *(&v182 + 1) = v77;
          v183 = &off_2878CFE90;
          *&v181 = v78;
          *(&v179 + 1) = &type metadata for CATProvider;
          v180 = &off_2878CE7A0;
          type metadata accessor for UnsendMessagesFlow(0);
          v79 = swift_allocObject();
          v80 = __swift_mutable_project_boxed_opaque_existential_1(&v181, v77);
          MEMORY[0x28223BE20](v80);
          v82 = (v143 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v83 + 16))(v82);
          __swift_mutable_project_boxed_opaque_existential_1(&v178, *(&v179 + 1));
          v84 = *v82;
          *(v79 + 120) = v77;
          *(v79 + 128) = &off_2878CFE90;
          *(v79 + 96) = v84;
          *(v79 + 184) = &type metadata for CATProvider;
          *(v79 + 192) = &off_2878CE7A0;
          sub_267B9A5E8(&v171, v79 + 56);
          type metadata accessor for UnsendMessagesFlow.State(0);
          swift_storeEnumTagMultiPayload();
          *(v79 + 136) = v76;
          *(v79 + 144) = &off_2878CF508;
          *(v79 + 152) = 0;
          sub_267B9A5E8(&v184, v79 + 16);

          __swift_destroy_boxed_opaque_existential_0(&v178);
          __swift_destroy_boxed_opaque_existential_0(&v181);
          *&v171 = v79;
          v33 = &unk_280229468;
          v34 = type metadata accessor for UnsendMessagesFlow;
          v35 = &unk_267EFCB08;
        }

        else
        {

          if (sub_267EC2BDC())
          {
            sub_267B9AB18(&v171);
            v85 = *(&v172 + 1);
            v86 = v173;
            __swift_project_boxed_opaque_existential_0(&v171, *(&v172 + 1));
            (*(v86 + 8))(&v184, v85, v86);
            __swift_project_boxed_opaque_existential_0(&v184, v185);
            v87 = sub_267EF3C48();
            __swift_destroy_boxed_opaque_existential_0(&v184);
            __swift_destroy_boxed_opaque_existential_0(&v171);
            if (v87)
            {
              sub_267EC4468();
              if (v89)
              {
                v90 = v88;
                v91 = v89;
                if (qword_280228818 != -1)
                {
                  swift_once();
                }

                v92 = sub_267EF8A08();
                __swift_project_value_buffer(v92, qword_280240FB0);

                v93 = sub_267EF89F8();
                v94 = sub_267EF95D8();

                if (os_log_type_enabled(v93, v94))
                {
                  v95 = swift_slowAlloc();
                  v148 = v90;
                  v96 = v95;
                  v97 = swift_slowAlloc();
                  *&v171 = v97;
                  *v96 = 136315138;
                  *(v96 + 4) = sub_267BA33E8(v148, v91, &v171);
                  _os_log_impl(&dword_267B93000, v93, v94, "MessagesFlowDelegatePlugin received a CarPlay clarification intent for %s", v96, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v97);
                  MEMORY[0x26D60A7B0](v97, -1, -1);
                  MEMORY[0x26D60A7B0](v96, -1, -1);
                }

                sub_267EF7C38();
                v144 = sub_267EF7C08();
                sub_267B9AB18(&v184);
                v183 = 0;
                v181 = 0u;
                v182 = 0u;
                v180 = 0;
                v178 = 0u;
                v179 = 0u;
                if (qword_2802286F0 != -1)
                {
                  swift_once();
                }

                sub_267B9AFEC(qword_2802405A0, v175);
                v172 = 0u;
                v173 = 0u;
                v171 = 0u;
                v174 = 5;
                v98 = sub_267EF6A68();
                swift_allocObject();
                v99 = sub_267EF6A58();
                v143[1] = v99;
                v100 = type metadata accessor for SiriKitFlowFactoryImpl();
                v143[0] = v100;
                v101 = swift_allocObject();
                v102 = type metadata accessor for CommonTemplateProvider();
                v103 = swift_allocObject();
                sub_267EF3838();
                __swift_mutable_project_boxed_opaque_existential_1(v175, v176);
                v169[3] = &type metadata for CATProvider;
                v169[4] = &off_2878CE7A0;
                v168[3] = v98;
                v168[4] = &off_2878D54F8;
                v168[0] = v99;
                v166 = v100;
                v167 = &off_2878CFE90;
                v165[0] = v101;
                v163 = v102;
                v164 = &off_2878D2530;
                v162[0] = v103;
                v160 = &type metadata for MessagesFeatureFlagsImpl;
                v161 = off_2878D1228;
                v148 = type metadata accessor for CarPlayClarificationFlow();
                v104 = swift_allocObject();
                __swift_mutable_project_boxed_opaque_existential_1(v169, &type metadata for CATProvider);
                v105 = __swift_mutable_project_boxed_opaque_existential_1(v168, v98);
                v147 = v143;
                MEMORY[0x28223BE20](v105);
                v107 = (v143 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
                (*(v108 + 16))(v107);
                v109 = __swift_mutable_project_boxed_opaque_existential_1(v165, v166);
                v146 = v143;
                MEMORY[0x28223BE20](v109);
                v111 = (v143 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0));
                (*(v112 + 16))(v111);
                v113 = __swift_mutable_project_boxed_opaque_existential_1(v162, v163);
                v145 = v143;
                MEMORY[0x28223BE20](v113);
                v115 = (v143 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0));
                (*(v116 + 16))(v115);
                __swift_mutable_project_boxed_opaque_existential_1(v159, v160);
                v117 = *v107;
                v118 = *v111;
                v119 = *v115;
                v158[3] = &type metadata for CATProvider;
                v158[4] = &off_2878CE7A0;
                v157[3] = v98;
                v157[4] = &off_2878D54F8;
                v157[0] = v117;
                v156[3] = v143[0];
                v156[4] = &off_2878CFE90;
                v156[0] = v118;
                v155[3] = v102;
                v155[4] = &off_2878D2530;
                v155[0] = v119;
                v154[3] = &type metadata for MessagesFeatureFlagsImpl;
                v154[4] = off_2878D1228;
                *(v104 + 112) = v144;
                __swift_project_boxed_opaque_existential_0(v158, &type metadata for CATProvider);

                *(v104 + 168) = sub_267BB4A3C();
                type metadata accessor for GatekeeperCATs(0);
                sub_267EF7B68();
                *(v104 + 176) = sub_267EF78E8();
                sub_267BB5E24(&v171, v104 + 56);
                v120 = v185;
                v121 = v186;
                __swift_project_boxed_opaque_existential_0(&v184, v185);
                (*(v121 + 8))(&v151, v120, v121);
                __swift_project_boxed_opaque_existential_0(&v151, v152);
                sub_267EF3BC8();
                sub_267EF3D68();
                swift_allocObject();
                v122 = sub_267EF3D58();
                __swift_destroy_boxed_opaque_existential_0(&v151);
                *(v104 + 184) = v122;
                sub_267B9AFEC(v157, v104 + 128);
                sub_267C2FB6C(&v181, &v149, &qword_280229450, &qword_267EFD2E8);
                if (v150)
                {
                  sub_267B9A5E8(&v149, &v151);
                }

                else
                {
                  v135 = v185;
                  v136 = v186;
                  __swift_project_boxed_opaque_existential_0(&v184, v185);
                  (*(v136 + 16))(&v151, v135, v136);
                  v137 = type metadata accessor for HandleIntentMessagesSearcher();
                  v138 = swift_allocObject();
                  sub_267B9A5E8(&v151, v138 + 16);
                  v152 = v137;
                  v153 = &off_2878D76E0;
                  *&v151 = v138;
                  if (v150)
                  {
                    sub_267B9F98C(&v149, &qword_280229450, &qword_267EFD2E8);
                  }
                }

                sub_267B9A5E8(&v151, v104 + 192);
                sub_267C2FB6C(&v178, &v149, &qword_280229458, &qword_267EFD2F0);
                if (v150)
                {
                  sub_267B9A5E8(&v149, &v151);
                }

                else
                {
                  v139 = type metadata accessor for FlowLocatorPhoneFlowFinder();
                  v140 = swift_allocObject();
                  v152 = v139;
                  v153 = &off_2878D76D0;
                  *&v151 = v140;
                }

                sub_267B9A5E8(&v151, v104 + 232);
                sub_267B9AFEC(v156, v104 + 272);
                sub_267B9AFEC(v155, v104 + 312);
                sub_267B9AFEC(v170, v104 + 352);
                v141 = type metadata accessor for GatekeeperCATPatternsExecutor(0);
                sub_267EF7B68();
                v142 = sub_267EF78E8();
                *(v104 + 416) = v141;
                *(v104 + 424) = &off_2878D8FE0;
                *(v104 + 392) = v142;
                sub_267B9AFEC(v154, v104 + 432);
                *(v104 + 120) = sub_267BB60E8();
                LOBYTE(v141) = sub_267BC2DD0();

                __swift_destroy_boxed_opaque_existential_0(v170);
                sub_267B9B9EC(&v171);
                sub_267B9F98C(&v178, &qword_280229458, &qword_267EFD2F0);
                sub_267B9F98C(&v181, &qword_280229450, &qword_267EFD2E8);
                __swift_destroy_boxed_opaque_existential_0(v154);
                __swift_destroy_boxed_opaque_existential_0(v155);
                __swift_destroy_boxed_opaque_existential_0(v156);
                __swift_destroy_boxed_opaque_existential_0(v157);
                *(v104 + 121) = v141 & 1;
                sub_267B9AFEC(&v184, v104 + 16);
                __swift_destroy_boxed_opaque_existential_0(v158);
                __swift_destroy_boxed_opaque_existential_0(&v184);
                __swift_destroy_boxed_opaque_existential_0(v159);
                __swift_destroy_boxed_opaque_existential_0(v162);
                __swift_destroy_boxed_opaque_existential_0(v165);
                __swift_destroy_boxed_opaque_existential_0(v168);
                __swift_destroy_boxed_opaque_existential_0(v169);
                __swift_destroy_boxed_opaque_existential_0(v175);
                *&v171 = v104;
                sub_267BB4430(&qword_280229460, 255, type metadata accessor for CarPlayClarificationFlow, &unk_267F0B018);
                v17 = sub_267EF36E8();

                goto LABEL_62;
              }
            }
          }

          if (qword_280228818 != -1)
          {
            swift_once();
          }

          v123 = sub_267EF8A08();
          __swift_project_value_buffer(v123, qword_280240FB0);
          v124 = sub_267EF89F8();
          v125 = sub_267EF95D8();
          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            *v126 = 0;
            _os_log_impl(&dword_267B93000, v124, v125, "MessagesFlowDelegatePlugin received an unsupported request", v126, 2u);
            MEMORY[0x26D60A7B0](v126, -1, -1);
          }

          sub_267B9AFEC(v187, &v171);
          sub_267B9AB18(&v184);
          if (qword_2802286F0 != -1)
          {
            swift_once();
          }

          type metadata accessor for MessagesCATs(0);
          sub_267EF7B68();
          v127 = sub_267EF78E8();
          type metadata accessor for CommonTemplateProvider();
          v128 = swift_allocObject();
          v129 = __swift_mutable_project_boxed_opaque_existential_1(&v171, *(&v172 + 1));
          MEMORY[0x28223BE20](v129);
          v131 = (v143 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v132 + 16))(v131);
          v133 = sub_267C2F9D0(*v131, &v184, v127, v128, type metadata accessor for SmsNLv3Intent, &off_2878D9000);
          __swift_destroy_boxed_opaque_existential_0(&v171);
          *&v171 = v133;
          type metadata accessor for UnsupportedRequestFlow();
          v33 = &unk_280229448;
          v34 = type metadata accessor for UnsupportedRequestFlow;
          v35 = &unk_267F04F08;
        }
      }
    }

    sub_267BB4430(v33, 255, v34, v35);
    v17 = sub_267EF36E8();
LABEL_62:

    goto LABEL_63;
  }

  sub_267C2FB08(v5, v8);
  if ((sub_267EC2D80() & 1) == 0)
  {
    sub_267BB3B80(v8, type metadata accessor for TimedSpokenContext);
    goto LABEL_10;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_267B93000, v10, v11, "MessagesFlowDelegatePlugin received a delayed spoken reply request", v12, 2u);
    MEMORY[0x26D60A7B0](v12, -1, -1);
  }

  sub_267B9AB18(&v171);
  v13 = *(v6 + 28);
  v14 = *&v8[*(v6 + 24)];
  v15 = *&v8[v13];
  v16 = *&v8[v13 + 8];
  type metadata accessor for DelayedSpokenFollowupFlow();
  swift_allocObject();

  *&v171 = sub_267EDD7F4(&v171, v14, v15, v16);
  sub_267BB4430(&qword_280229488, 255, type metadata accessor for DelayedSpokenFollowupFlow, &unk_267F0F190);
  v17 = sub_267EF36E8();

  sub_267BB3B80(v8, type metadata accessor for TimedSpokenContext);
LABEL_63:
  __swift_destroy_boxed_opaque_existential_0(v187);
  return v17;
}

uint64_t sub_267C2DD40(uint64_t a1)
{
  v2 = sub_267EF7B88();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229440, &qword_267EFD2E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v114 - v4;
  v6 = type metadata accessor for TimedSpokenContext(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130[3] = type metadata accessor for SmsNLv4Intent(0);
  v130[4] = &off_2878D5AD8;
  v130[0] = a1;

  sub_267C4C48C(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_267B9F98C(v5, &qword_280229440, &qword_267EFD2E0);
LABEL_10:
    v128 = &type metadata for Features;
    v129 = sub_267BAFCAC();
    LOBYTE(v127) = 2;
    v18 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0(&v127);
    if ((v18 & 1) != 0 && sub_267C2BB60())
    {
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v19 = sub_267EF8A08();
      __swift_project_value_buffer(v19, qword_280240FB0);
      v20 = sub_267EF89F8();
      v21 = sub_267EF95D8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_267B93000, v20, v21, "MessagesFlowDelegatePlugin received a message edit request", v22, 2u);
        MEMORY[0x26D60A7B0](v22, -1, -1);
      }

      sub_267B9AFEC(v130, &v127);
      sub_267B9AB18(v126);
      if (qword_280228710 != -1)
      {
        swift_once();
      }

      v23 = qword_280240640;
      v24 = type metadata accessor for SiriKitFlowFactoryImpl();
      v25 = swift_allocObject();
      v124 = v24;
      v125 = &off_2878CFE90;
      v123[0] = v25;
      type metadata accessor for EditMessageFlow(0);
      v26 = swift_allocObject();
      v27 = __swift_mutable_project_boxed_opaque_existential_1(v123, v24);
      MEMORY[0x28223BE20](v27);
      v29 = (&v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29);
      v31 = *v29;
      *(v26 + 120) = v24;
      *(v26 + 128) = &off_2878CFE90;
      *(v26 + 96) = v31;
      sub_267B9A5E8(&v127, v26 + 56);
      type metadata accessor for EditMessageFlow.State(0);
      swift_storeEnumTagMultiPayload();
      *(v26 + 136) = v23;
      *(v26 + 144) = &off_2878CF508;
      *(v26 + 152) = 0;
      sub_267B9A5E8(v126, v26 + 16);

      __swift_destroy_boxed_opaque_existential_0(v123);
      *&v127 = v26;
      v32 = &unk_280229480;
      v33 = type metadata accessor for EditMessageFlow;
      v34 = &unk_267F02860;
    }

    else
    {
      v35 = sub_267DD38A8();
      if (v35)
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v43 = sub_267EF8A08();
        __swift_project_value_buffer(v43, qword_280240FB0);
        v44 = sub_267EF89F8();
        v45 = sub_267EF95D8();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_267B93000, v44, v45, "MessagesFlowDelegatePlugin received a message sending request", v46, 2u);
          MEMORY[0x26D60A7B0](v46, -1, -1);
        }

        sub_267C29694(0xD000000000000013, 0x8000000267F0F820);
        sub_267B9AFEC(v130, &v127);
        sub_267B9AB18(v126);
        v47 = type metadata accessor for SiriKitFlowFactoryImpl();
        v48 = swift_allocObject();
        if (qword_2802286F0 != -1)
        {
          swift_once();
        }

        type metadata accessor for SendMessageCATs(0);
        sub_267EF7B68();
        v116 = sub_267EF78E8();
        __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
        v115 = sub_267BB4A3C();
        v49 = type metadata accessor for ShareSheetProvider();
        v50 = swift_allocObject();
        v124 = v47;
        v125 = &off_2878CFE90;
        v123[0] = v48;
        v122 = &off_2878D0D48;
        v121 = v49;
        v120[0] = v50;
        v118 = &type metadata for MessagesFeatureFlagsImpl;
        v119 = off_2878D1228;
        type metadata accessor for SendMessageFlow(0);
        v51 = swift_allocObject();
        v52 = __swift_mutable_project_boxed_opaque_existential_1(v123, v47);
        MEMORY[0x28223BE20](v52);
        v54 = (&v114 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v55 + 16))(v54);
        v56 = __swift_mutable_project_boxed_opaque_existential_1(v120, v121);
        MEMORY[0x28223BE20](v56);
        v58 = (&v114 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v59 + 16))(v58);
        __swift_mutable_project_boxed_opaque_existential_1(v117, v118);
        v60 = *v54;
        v61 = *v58;
        v62 = (v51 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory);
        v62[3] = v47;
        v62[4] = &off_2878CFE90;
        *v62 = v60;
        v63 = (v51 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider);
        v63[3] = v49;
        v63[4] = &off_2878D0D48;
        *v63 = v61;
        v64 = v51 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags;
        *(v64 + 24) = &type metadata for MessagesFeatureFlagsImpl;
        *(v64 + 32) = off_2878D1228;
        v65 = v51 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
        sub_267B9A5E8(&v127, v51 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state);
        *(v65 + 40) = 0;
        type metadata accessor for SendMessageFlow.State(0);
        swift_storeEnumTagMultiPayload();
        *(v51 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs) = v116;
        *(v51 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs) = v115;
        sub_267B9A5E8(v126, v51 + 16);
        __swift_destroy_boxed_opaque_existential_0(v117);
        __swift_destroy_boxed_opaque_existential_0(v120);
        __swift_destroy_boxed_opaque_existential_0(v123);
        *&v127 = v51;
        sub_267BB4430(&qword_280229478, 255, type metadata accessor for SendMessageFlow, &unk_267F0A980);
        v17 = sub_267EF36E8();
        goto LABEL_59;
      }

      sub_267DD3A4C(v35, v36, v37, v38, v39, v40, v41, v42, v114, v115, v116, v117[0]);
      if (v66)
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v67 = sub_267EF8A08();
        __swift_project_value_buffer(v67, qword_280240FB0);
        v68 = sub_267EF89F8();
        v69 = sub_267EF95D8();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_267B93000, v68, v69, "MessagesFlowDelegatePlugin received a message reading request", v70, 2u);
          MEMORY[0x26D60A7B0](v70, -1, -1);
        }

        sub_267B9AFEC(v130, &v127);
        sub_267B9AB18(v126);
        type metadata accessor for SiriKitFlowFactoryImpl();
        v71 = swift_allocObject();
        if (qword_2802286F0 != -1)
        {
          swift_once();
        }

        type metadata accessor for SearchForMessagesCATs(0);
        sub_267EF7B68();
        v72 = sub_267EF78E8();
        v73 = __swift_mutable_project_boxed_opaque_existential_1(&v127, v128);
        MEMORY[0x28223BE20](v73);
        v75 = (&v114 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v76 + 16))(v75);
        v77 = sub_267C2F848(*v75, v126, v71, v72, type metadata accessor for SmsNLv4Intent, &off_2878D5AD8);
        __swift_destroy_boxed_opaque_existential_0(&v127);
        *&v127 = v77;
        type metadata accessor for SearchForMessagesFlow(0);
        v32 = &qword_280229470;
        v33 = type metadata accessor for SearchForMessagesFlow;
        v34 = &unk_267F0B7B0;
      }

      else if (sub_267C2B5DC())
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v78 = sub_267EF8A08();
        __swift_project_value_buffer(v78, qword_280240FB0);
        v79 = sub_267EF89F8();
        v80 = sub_267EF95D8();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_267B93000, v79, v80, "MessagesFlowDelegatePlugin received a message unsend request", v81, 2u);
          MEMORY[0x26D60A7B0](v81, -1, -1);
        }

        sub_267B9AFEC(v130, &v127);
        sub_267B9AB18(v126);
        if (qword_280228710 != -1)
        {
          swift_once();
        }

        v82 = qword_280240640;
        v83 = type metadata accessor for SiriKitFlowFactoryImpl();
        v84 = swift_allocObject();
        v124 = v83;
        v125 = &off_2878CFE90;
        v123[0] = v84;
        v121 = &type metadata for CATProvider;
        v122 = &off_2878CE7A0;
        type metadata accessor for UnsendMessagesFlow(0);
        v85 = swift_allocObject();
        v86 = __swift_mutable_project_boxed_opaque_existential_1(v123, v83);
        MEMORY[0x28223BE20](v86);
        v88 = (&v114 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v89 + 16))(v88);
        __swift_mutable_project_boxed_opaque_existential_1(v120, v121);
        v90 = *v88;
        *(v85 + 120) = v83;
        *(v85 + 128) = &off_2878CFE90;
        *(v85 + 96) = v90;
        *(v85 + 184) = &type metadata for CATProvider;
        *(v85 + 192) = &off_2878CE7A0;
        sub_267B9A5E8(&v127, v85 + 56);
        type metadata accessor for UnsendMessagesFlow.State(0);
        swift_storeEnumTagMultiPayload();
        *(v85 + 136) = v82;
        *(v85 + 144) = &off_2878CF508;
        *(v85 + 152) = 0;
        sub_267B9A5E8(v126, v85 + 16);

        __swift_destroy_boxed_opaque_existential_0(v120);
        __swift_destroy_boxed_opaque_existential_0(v123);
        *&v127 = v85;
        v32 = &unk_280229468;
        v33 = type metadata accessor for UnsendMessagesFlow;
        v34 = &unk_267EFCB08;
      }

      else
      {

        if (sub_267DD3D30())
        {
          if (qword_280228818 != -1)
          {
            swift_once();
          }

          v91 = sub_267EF8A08();
          __swift_project_value_buffer(v91, qword_280240FB0);
          v92 = sub_267EF89F8();
          v93 = sub_267EF95D8();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            *v94 = 0;
            _os_log_impl(&dword_267B93000, v92, v93, "MessagesFlowDelegatePlugin received a request to report number of messages", v94, 2u);
            MEMORY[0x26D60A7B0](v94, -1, -1);
          }

          sub_267B9AFEC(v130, &v127);
          sub_267B9AB18(v126);
          type metadata accessor for SiriKitFlowFactoryImpl();
          v95 = swift_allocObject();
          if (qword_2802286F0 != -1)
          {
            swift_once();
          }

          type metadata accessor for SearchForMessagesCATs(0);
          sub_267EF7B68();
          v96 = sub_267EF78E8();
          v97 = __swift_mutable_project_boxed_opaque_existential_1(&v127, v128);
          MEMORY[0x28223BE20](v97);
          v99 = (&v114 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v100 + 16))(v99);
          v101 = sub_267C2F848(*v99, v126, v95, v96, type metadata accessor for SmsNLv4Intent, &off_2878D5AD8);
          __swift_destroy_boxed_opaque_existential_0(&v127);
          *&v127 = v101;
          type metadata accessor for SearchForMessagesFlow(0);
          sub_267BB4430(&qword_280229470, 255, type metadata accessor for SearchForMessagesFlow, &unk_267F0B7B0);
          v17 = sub_267EF36E8();

          goto LABEL_59;
        }

        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v102 = sub_267EF8A08();
        __swift_project_value_buffer(v102, qword_280240FB0);
        v103 = sub_267EF89F8();
        v104 = sub_267EF95D8();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          *v105 = 0;
          _os_log_impl(&dword_267B93000, v103, v104, "MessagesFlowDelegatePlugin received an unsupported request", v105, 2u);
          MEMORY[0x26D60A7B0](v105, -1, -1);
        }

        sub_267B9AFEC(v130, &v127);
        sub_267B9AB18(v126);
        if (qword_2802286F0 != -1)
        {
          swift_once();
        }

        type metadata accessor for MessagesCATs(0);
        sub_267EF7B68();
        v106 = sub_267EF78E8();
        type metadata accessor for CommonTemplateProvider();
        v107 = swift_allocObject();
        v108 = __swift_mutable_project_boxed_opaque_existential_1(&v127, v128);
        MEMORY[0x28223BE20](v108);
        v110 = (&v114 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v111 + 16))(v110);
        v112 = sub_267C2F9D0(*v110, v126, v106, v107, type metadata accessor for SmsNLv4Intent, &off_2878D5AD8);
        __swift_destroy_boxed_opaque_existential_0(&v127);
        *&v127 = v112;
        type metadata accessor for UnsupportedRequestFlow();
        v32 = &unk_280229448;
        v33 = type metadata accessor for UnsupportedRequestFlow;
        v34 = &unk_267F04F08;
      }
    }

    sub_267BB4430(v32, 255, v33, v34);
    v17 = sub_267EF36E8();
LABEL_59:

    goto LABEL_60;
  }

  sub_267C2FB08(v5, v8);
  if ((sub_267DD3068() & 1) == 0)
  {
    sub_267BB3B80(v8, type metadata accessor for TimedSpokenContext);
    goto LABEL_10;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_267B93000, v10, v11, "MessagesFlowDelegatePlugin received a delayed spoken reply request", v12, 2u);
    MEMORY[0x26D60A7B0](v12, -1, -1);
  }

  sub_267B9AB18(&v127);
  v13 = *(v6 + 28);
  v14 = *&v8[*(v6 + 24)];
  v15 = *&v8[v13];
  v16 = *&v8[v13 + 8];
  type metadata accessor for DelayedSpokenFollowupFlow();
  swift_allocObject();

  *&v127 = sub_267EDD7F4(&v127, v14, v15, v16);
  sub_267BB4430(&qword_280229488, 255, type metadata accessor for DelayedSpokenFollowupFlow, &unk_267F0F190);
  v17 = sub_267EF36E8();

  sub_267BB3B80(v8, type metadata accessor for TimedSpokenContext);
LABEL_60:
  __swift_destroy_boxed_opaque_existential_0(v130);
  return v17;
}

uint64_t sub_267C2F218(uint64_t a1)
{
  v27 = type metadata accessor for SmsNLv4Intent(0);
  v28 = &off_2878D5AD8;
  v26[0] = a1;
  __swift_project_boxed_opaque_existential_0(v26, v27);

  sub_267DD7D34(v2, v3);
  if (v4)
  {

    v7 = sub_267DD7D34(v5, v6);
    if (!v8)
    {
      return __swift_destroy_boxed_opaque_existential_0(v26);
    }

    if (v7 == 0xD000000000000013 && v8 == 0x8000000267F10280)
    {
    }

    else
    {
      v10 = sub_267EF9EA8();

      if ((v10 & 1) == 0)
      {
        return __swift_destroy_boxed_opaque_existential_0(v26);
      }
    }
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v11 = sub_267EF8A08();
  __swift_project_value_buffer(v11, qword_280240FB0);
  v12 = sub_267EF89F8();
  v13 = sub_267EF95D8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_267B93000, v12, v13, "MessagesFlowDelegatePlugin sending IntentSignal to pre-warm first party extension", v14, 2u);
    MEMORY[0x26D60A7B0](v14, -1, -1);
  }

  v15 = [objc_allocWithZone(MEMORY[0x277D473E8]) init];
  v16 = [objc_allocWithZone(MEMORY[0x277CD4078]) init];
  v17 = sub_267EF8FF8();
  [v16 _setLaunchId_];

  sub_267C2C108(0xD00000000000002ELL, 0x8000000267F125A0, v16);
  sub_267BA9F38(0, &qword_28022BCC0, 0x277D47418);
  v18 = sub_267EF9788();
  [v15 setIntent_];

  sub_267B9AB18(v23);
  v19 = v24;
  v20 = v25;
  __swift_project_boxed_opaque_existential_0(v23, v24);
  (*(v20 + 16))(v22, v19, v20);
  __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  sub_267EF4248();

  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return __swift_destroy_boxed_opaque_existential_0(v26);
}

char *sub_267C2F4F4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = sub_267EF68A8();
  v31 = v7;
  v32 = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
  v9 = *(*(v7 - 8) + 32);
  v9(boxed_opaque_existential_0, a3, v7);
  v10 = type metadata accessor for SiriKitFlowFactoryImpl();
  v29[3] = v10;
  v29[4] = &off_2878CFE90;
  v29[0] = a4;
  type metadata accessor for SendMessageShimFlow(0);
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v29, v10);
  MEMORY[0x28223BE20](v16);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v21 = &v11[OBJC_IVAR____TtC16SiriMessagesFlow19SendMessageShimFlow_contactResolver];
  v21[3] = v7;
  v21[4] = &off_2878D54D8;
  v22 = __swift_allocate_boxed_opaque_existential_0(v21);
  v9(v22, v14, v7);
  v23 = &v11[OBJC_IVAR____TtC16SiriMessagesFlow19SendMessageShimFlow_siriKitFlowFactory];
  *(v23 + 3) = v10;
  *(v23 + 4) = &off_2878CFE90;
  *v23 = v20;
  v24 = OBJC_IVAR____TtC16SiriMessagesFlow19SendMessageShimFlow_ifClientActionParse;
  v25 = sub_267EF4498();
  (*(*(v25 - 8) + 32))(&v11[v24], a1, v25);
  *(v11 + 7) = 0;
  *(v11 + 8) = 0;
  *(v11 + 9) = 0x8000000000000000;
  sub_267B9A5E8(v28, (v11 + 16));
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return v11;
}

uint64_t sub_267C2F848(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v23 = a5(0);
  v24 = a6;
  *&v22 = a1;
  v11 = type metadata accessor for SiriKitFlowFactoryImpl();
  v21[3] = v11;
  v21[4] = &off_2878CFE90;
  v21[0] = a3;
  type metadata accessor for SearchForMessagesFlow(0);
  OUTLINED_FUNCTION_27_4();
  v12 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v21, v11);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v15 = OUTLINED_FUNCTION_102_1(v14);
  v16(v15);
  v17 = *a3;
  v18 = (v12 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_siriKitFlowFactory);
  v18[3] = v11;
  v18[4] = &off_2878CFE90;
  *v18 = v17;
  v19 = v12 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  sub_267B9AFEC(&v22, v12 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state);
  *(v19 + 40) = 0;
  type metadata accessor for SearchForMessagesFlow.State(0);
  swift_storeEnumTagMultiPayload();
  sub_267B9A5E8(&v22, v12 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_smsIntent);
  *(v12 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_searchForMessagesCATs) = a4;
  sub_267B9A5E8(a2, v12 + 16);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v12;
}

void *sub_267C2F9D0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = OUTLINED_FUNCTION_101_1();
  v23 = v12(v11);
  v24 = a6;
  *&v22 = v6;
  v13 = type metadata accessor for CommonTemplateProvider();
  v21[3] = v13;
  v21[4] = &off_2878D2530;
  v21[0] = a4;
  type metadata accessor for UnsupportedRequestFlow();
  v14 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v21, v13);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_0();
  v17 = OUTLINED_FUNCTION_102_1(v16);
  v18(v17);
  v19 = *v6;
  v14[16] = v13;
  v14[17] = &off_2878D2530;
  v14[13] = v19;
  sub_267B9A5E8(&v22, (v14 + 7));
  v14[12] = a3;
  sub_267B9A5E8(a2, (v14 + 2));
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v14;
}

uint64_t sub_267C2FB08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimedSpokenContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C2FB6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_22();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267C2FBCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802293E0, &qword_267EFD170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C2FC44(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 200))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_267C2FC84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267C2FD14(uint64_t a1)
{
  v3 = sub_267EF4BA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v7 = sub_267EF8A08();
  __swift_project_value_buffer(v7, qword_280240FB0);
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_267EF89F8();
  v9 = sub_267EF95C8();
  if (os_log_type_enabled(v8, v9))
  {
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_55_0();
    v17 = v10;
    *v1 = 136315138;
    sub_267C31120();
    v11 = sub_267EF9E58();
    v13 = v12;
    (*(v4 + 8))(v6, v3);
    v14 = sub_267BA33E8(v11, v13, &v17);

    *(v1 + 4) = v14;
    _os_log_impl(&dword_267B93000, v8, v9, "#ReportMessageCountFlow received input %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return 1;
}

uint64_t sub_267C2FF2C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = &unk_267EFD520;
  v9[7] = v2;

  sub_267E8FA18();
}

uint64_t sub_267C3003C(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_267BBD07C;

  return sub_267C300D8();
}

uint64_t sub_267C300D8()
{
  OUTLINED_FUNCTION_12();
  v1[28] = v2;
  v1[29] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v1[30] = swift_task_alloc();
  v3 = sub_267EF4CC8();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v4 = sub_267EF4228();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C30228, 0, 0);
}

uint64_t sub_267C30228()
{
  v1 = v0[29];
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v0[37] = v3;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[38] = v4;
  *v4 = v5;
  v4[1] = sub_267C302F0;
  v6 = v0[36];

  return sub_267CEB7F0(v6, *&v2, 0, v3);
}

uint64_t sub_267C302F0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v3 + 312) = v0;

  if (v0)
  {
    v6 = sub_267C308C8;
  }

  else
  {

    v6 = sub_267C303FC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267C303FC()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 232);
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v6 = OUTLINED_FUNCTION_4_1();
  v7(v6);
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v8 = OUTLINED_FUNCTION_4_1();
  v9(v8);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v10 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;
  sub_267EF3F48();
  sub_267B9FF34(v0 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v11 = v5[5];
  v12 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v11);
  (*(v12 + 40))(v11, v12);
  v13 = *(v0 + 160);
  v14 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_0((v0 + 136), v13);
  v15 = MEMORY[0x277D5C1D8];
  *(v0 + 200) = v3;
  *(v0 + 208) = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
  (*(v2 + 16))(boxed_opaque_existential_0, v1, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 320) = v17;
  *v17 = v18;
  v17[1] = sub_267C30650;

  return MEMORY[0x2821BB5D0](v0 + 176, v13, v14);
}

uint64_t sub_267C30650()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v3 + 328) = v0;

  if (v0)
  {
    v6 = sub_267C30A78;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 176));
    v6 = sub_267C3075C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267C3075C()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[29];
  (*(v0[32] + 8))(v0[33], v0[31]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v5 = *(v4 + 136);
  v6 = *(v4 + 144);
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  sub_267C16E28(v5, v6);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v7 = sub_267EF8A08();
  __swift_project_value_buffer(v7, qword_280240FB0);
  v8 = sub_267EF89F8();
  v9 = sub_267EF95C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_267B93000, v8, v9, "#ReportMessageCountFlow Reporting message count", v10, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF4018();
  OUTLINED_FUNCTION_8_4();

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_267C308C8()
{
  v17 = v0;

  v2 = *(v0 + 312);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);
  v4 = v2;
  v5 = sub_267EF89F8();
  v6 = sub_267EF95E8();

  if (os_log_type_enabled(v5, v6))
  {
    swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_55_0();
    v16 = v7;
    *v1 = 136315138;
    *(v0 + 216) = v2;
    v8 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v9 = sub_267EF9098();
    v11 = sub_267BA33E8(v9, v10, &v16);

    *(v1 + 4) = v11;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v12, v13, "#ReportMessageCountFlow failed with error: %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_3_11();
  sub_267C16E28(v6, v1);
  sub_267EF4018();

  OUTLINED_FUNCTION_8_4();

  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_267C30A78()
{
  v20 = v0;
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[34];
  (*(v0[32] + 8))(v0[33], v0[31]);
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v5 = v0[41];
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);
  v7 = v5;
  v8 = sub_267EF89F8();
  v9 = sub_267EF95E8();

  if (os_log_type_enabled(v8, v9))
  {
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_55_0();
    v19 = v10;
    *v1 = 136315138;
    v0[27] = v5;
    v11 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v12 = sub_267EF9098();
    v14 = sub_267BA33E8(v12, v13, &v19);

    *(v1 + 4) = v14;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v15, v16, "#ReportMessageCountFlow failed with error: %s");
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_3_11();
  sub_267C16E28(v9, v1);
  sub_267EF4018();

  OUTLINED_FUNCTION_8_4();

  OUTLINED_FUNCTION_17();

  return v17();
}

void sub_267C30C64()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  sub_267C16E28(v1, v2);
}

uint64_t sub_267C30CB0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  sub_267C16E28(*(v0 + 136), *(v0 + 144));
  return v0;
}

uint64_t sub_267C30CFC()
{
  sub_267C30CB0();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for ReportMessageCountFlow.Status(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ReportMessageCountFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267C30EE0()
{
  result = qword_2802294C8;
  if (!qword_2802294C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802294C8);
  }

  return result;
}

unint64_t sub_267C30F38()
{
  result = qword_2802294D0;
  if (!qword_2802294D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802294D0);
  }

  return result;
}

uint64_t sub_267C30FCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267C300D8();
}

id sub_267C31068@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 144);
  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_267C31080(v2, v3);
}

id sub_267C31080(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_267C3108C()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_267BAEBEC;

  return sub_267C3003C(v2);
}

unint64_t sub_267C31120()
{
  result = qword_28022AF50;
  if (!qword_28022AF50)
  {
    sub_267EF4BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AF50);
  }

  return result;
}

uint64_t type metadata accessor for SearchForMessagesCATsSimple(uint64_t a1)
{
  result = qword_2802294D8;
  if (!qword_2802294D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267C31258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267EF7B88();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v11 - 8);
  sub_267BB3794(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_267EF79C8();
  (*(v7 + 8))(a2, v3);
  sub_267BB2D24(a1);
  return v13;
}

uint64_t sub_267C313B4(uint64_t a1, uint64_t a2)
{
  sub_267EF7B88();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_267EF79D8();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_267C314BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_267EF7BB8();
}

void sub_267C31594(int a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v43 = a2;
  OUTLINED_FUNCTION_23();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x28223BE20](v11);
  v47 = &v38 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v14 = OUTLINED_FUNCTION_18(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_13_6();
  v15 = sub_267EF2D28();
  OUTLINED_FUNCTION_23();
  v17 = v16;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  sub_267C31988(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v15) == 1)
  {
    sub_267C334FC(v3);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v25 = sub_267EF8A08();
    __swift_project_value_buffer(v25, qword_280240FB0);
    v26 = sub_267EF89F8();
    v27 = sub_267EF95E8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_267B93000, v26, v27, "#InstrumentedAppSelecting - skip the log for trigger reason", v28, 2u);
      OUTLINED_FUNCTION_32_0();
    }
  }

  else
  {
    v42 = a1;
    v29 = *(v17 + 32);
    v40 = v24;
    v41 = v29;
    v39 = v8;
    v29(v24, v3, v15);
    v30 = sub_267EF93F8();
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v30);
    v31 = v43;
    (*(v6 + 16))(v46, v44, v43);
    (*(v17 + 16))(v22, v24, v15);
    v32 = (*(v6 + 80) + 48) & ~*(v6 + 80);
    v33 = (v39 + *(v17 + 80) + v32) & ~*(v17 + 80);
    v34 = (v19 + v33 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = swift_allocObject();
    *(v35 + 2) = 0;
    *(v35 + 3) = 0;
    v37 = v45;
    v36 = v46;
    *(v35 + 4) = v31;
    *(v35 + 5) = v37;
    (*(v6 + 32))(&v35[v32], v36, v31);
    v41(&v35[v33], v22, v15);
    *&v35[v34] = v42;
    sub_267E8FA18();

    (*(v17 + 8))(v40, v15);
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C31988@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v4 = OUTLINED_FUNCTION_18(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13_6();
  sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    sub_267EF8678();
    v6 = v5;

    if (v6)
    {
      sub_267EF2CD8();

      v7 = sub_267EF2D28();
      OUTLINED_FUNCTION_2_5(v1);
      if (!v8)
      {
        (*(*(v7 - 8) + 32))(a1, v1, v7);
        OUTLINED_FUNCTION_9();
        v17 = v7;
        return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
      }

      sub_267C334FC(v1);
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_267B93000, v10, v11, "Failed to get the request id for the current execution.", v12, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v17 = sub_267EF2D28();
  v14 = a1;
  v15 = 1;
  v16 = 1;
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_267C31B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 80) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  *(v8 + 48) = swift_task_alloc();
  v9 = sub_267EF2D28();
  *(v8 + 56) = v9;
  *(v8 + 64) = *(v9 - 8);
  *(v8 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C31C70, 0, 0);
}

uint64_t sub_267C31C70()
{
  v36 = v0;
  v1 = *(v0 + 72);
  sub_267C31FF0(*(v0 + 24));
  v2 = sub_267C32280(v1);
  if (!v2)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277D581C0]) init];
  v5 = *(v0 + 72);
  if (!v4)
  {
    (*(*(v0 + 64) + 8))(v5, *(v0 + 56));
LABEL_12:

    goto LABEL_13;
  }

  v6 = sub_267C3249C(v5, *(v0 + 24));
  if (!v6)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    goto LABEL_12;
  }

  v33 = v6;
  [v4 setTriggerReason_];
  [v4 setProjectIntent_];
  [v3 setAbModelResultTriggered_];
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v7 = sub_267EF8A08();
  __swift_project_value_buffer(v7, qword_280240FB0);
  v8 = v4;
  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();

  v34 = v3;
  v32 = v8;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136315138;
    [v8 triggerReason];
    v13 = sub_267EF97A8();
    v15 = sub_267BA33E8(v13, v14, &v35);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_267B93000, v9, v10, "#InstrumentedAppSelecting - emitting message for SeAS execution result: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v16 = *(v0 + 72);
  v31 = *(v0 + 64);
  v18 = *(v0 + 48);
  v17 = *(v0 + 56);
  v19 = *(v0 + 32);
  v20 = *(v0 + 40);
  v30 = *(v31 + 16);
  v30(v18, v16, v17);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  v24 = *(v20 + 8);
  v24(v34, v18, v19, v20);
  sub_267C334FC(v18);
  v30(v18, v16, v17);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v17);
  v24(v33, v18, v19, v20);

  sub_267C334FC(v18);
  (*(v31 + 8))(v16, v17);
LABEL_13:

  OUTLINED_FUNCTION_17();

  return v28();
}

void sub_267C31FF0(uint64_t a1)
{
  v2 = sub_267EF2D28();
  OUTLINED_FUNCTION_23();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = sub_267EF2CF8();
  v21 = [v8 derivedIdentifierForComponentName:27 fromSourceIdentifier:v9];

  if (v21)
  {
    sub_267EF2D08();
    OUTLINED_FUNCTION_47();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v12 = sub_267EF8A08();
    __swift_project_value_buffer(v12, qword_280240FB0);
    (*(v4 + 16))(v7, a1, v2);
    v13 = sub_267EF89F8();
    v14 = sub_267EF95E8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      v17 = sub_267EF2CE8();
      v19 = v18;
      (*(v4 + 8))(v7, v2);
      v20 = sub_267BA33E8(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_267B93000, v13, v14, "Failed to create a derived identifier for SELF for request ID: %s. Will create a random UUID.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      (*(v4 + 8))(v7, v2);
    }

    sub_267EF2D18();
    OUTLINED_FUNCTION_47();
  }
}

void *sub_267C32280(uint64_t a1)
{
  v2 = sub_267EF2D28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D581F0]) init];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277D581F8]) init];
    if (v8)
    {
      v9 = v8;
      sub_267BBC84C();
      (*(v3 + 16))(v5, a1, v2);
      v10 = sub_267BBC890(v5);
      [v9 setInferenceId_];

      [v7 setEventMetadata_];
      return v7;
    }
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v11 = sub_267EF8A08();
  __swift_project_value_buffer(v11, qword_280240FB0);
  v12 = sub_267EF89F8();
  v13 = sub_267EF95E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_267B93000, v12, v13, "#InstrumentedAppSelecting - failed to generate top-level SELF message", v14, 2u);
    MEMORY[0x26D60A7B0](v14, -1, -1);
  }

  return 0;
}

void *sub_267C3249C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF2D28();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
    if (v10)
    {
      v11 = v10;
      v12 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
      if (v12)
      {
        v13 = v12;
        [v12 setComponent_];
        sub_267BBC84C();
        v14 = *(v5 + 16);
        v14(v7, a1, v4);
        v15 = sub_267BBC890(v7);
        [v13 setUuid_];

        [v11 setComponent_];
        v14(v7, a2, v4);
        v16 = sub_267BBC890(v7);
        [v11 setUuid_];

        [v9 setSource_];
        [v9 setTarget_];

        return v9;
      }
    }

    else
    {
      v11 = v9;
    }
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v17 = sub_267EF8A08();
  __swift_project_value_buffer(v17, qword_280240FB0);
  v18 = sub_267EF89F8();
  v19 = sub_267EF95E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_267B93000, v18, v19, "#InstrumentedAppSelecting: Failed to create RequestLink SELF message templates.", v20, 2u);
    MEMORY[0x26D60A7B0](v20, -1, -1);
  }

  return 0;
}

uint64_t sub_267C3275C()
{
  OUTLINED_FUNCTION_12();
  v1[10] = v17;
  v1[11] = v0;
  v1[8] = v2;
  v1[9] = v3;
  v1[6] = v4;
  v1[7] = v5;
  v1[4] = v6;
  v1[5] = v7;
  v1[2] = v8;
  v1[3] = v9;
  v10 = sub_267EF7D48();
  v1[12] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[13] = v11;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  OUTLINED_FUNCTION_18(v12);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v13 = sub_267EF2D28();
  v1[20] = v13;
  OUTLINED_FUNCTION_30_0(v13);
  v1[21] = v14;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C328EC, 0, 0);
}

uint64_t sub_267C328EC()
{
  v1 = v0[18];
  sub_267C3348C(v0[6], v1);
  OUTLINED_FUNCTION_2_5(v1);
  if (v16)
  {
    v2 = v0[18];
    sub_267C31988(v0[19]);
    OUTLINED_FUNCTION_2_5(v2);
    if (!v16)
    {
      sub_267C334FC(v0[18]);
    }
  }

  else
  {
    v3 = v0[20];
    (*(v0[21] + 32))(v0[19], v0[18], v3);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  }

  v7 = v0[19];
  v8 = v0[20];
  OUTLINED_FUNCTION_2_5(v7);
  if (v16)
  {
    sub_267C334FC(v7);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v9 = sub_267EF8A08();
    __swift_project_value_buffer(v9, qword_280240FB0);
    v10 = sub_267EF89F8();
    v11 = sub_267EF95E8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_267B93000, v10, v11, "#InstrumentedAppSelecting - skip the log for model evaluation", v12, 2u);
      OUTLINED_FUNCTION_32_0();
    }
  }

  else
  {
    v13 = v0[17];
    v14 = v0[7];
    v15 = *(v0[21] + 32);
    v15(v0[23], v7, v8);
    sub_267C3348C(v14, v13);
    OUTLINED_FUNCTION_2_5(v13);
    if (v16)
    {
      v17 = v0[17];
      sub_267C31FF0(v0[23]);
      OUTLINED_FUNCTION_2_5(v17);
      if (!v16)
      {
        sub_267C334FC(v0[17]);
      }
    }

    else
    {
      v15(v0[22], v0[17], v0[20]);
    }

    v18 = sub_267C32280(v0[22]);
    v0[24] = v18;
    if (v18)
    {
      v19 = v18;
      v20 = [objc_allocWithZone(MEMORY[0x277D581B8]) init];
      v0[25] = v20;
      if (v20)
      {
        v21 = v20;
        v22 = sub_267C3249C(v0[22], v0[23]);
        v0[26] = v22;
        if (v22)
        {
          v23 = v0[15];
          v24 = v0[12];
          v25 = v0[2];
          v26 = v0[13];
          v27 = *(v26 + 16);
          v0[27] = v27;
          v0[28] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v27(v23, v25, v24);
          v28 = OUTLINED_FUNCTION_108();
          v30 = v29(v28);
          if (v30 == *MEMORY[0x277D55418])
          {
            v31 = OUTLINED_FUNCTION_11_7();
            v32(v31);
            v33 = sel_setIsModelConfirmation_;
            v34 = v21;
            v35 = 1;
LABEL_21:
            [v34 v33];
            v36 = OUTLINED_FUNCTION_8_5();
            [v36 v37];
            v38 = sub_267EF7C18();
            v40 = v39;
            sub_267C70644();
            v42 = v41;
            v43 = v41[2];
            if (v43 >= v41[3] >> 1)
            {
              sub_267C70644();
              v42 = v79;
            }

            v42[2] = v43 + 1;
            v44 = &v42[2 * v43];
            v44[4] = v38;
            v44[5] = v40;
            goto LABEL_48;
          }

          if (v30 == *MEMORY[0x277D55420])
          {
            v50 = OUTLINED_FUNCTION_11_7();
            v51(v50);
            v52 = *v23;
            v53 = OUTLINED_FUNCTION_8_5();
            [v53 v54];
            [v21 setIsModelDisambiguation_];
            result = sub_267BAF0DC(v52);
            if (result)
            {
              v55 = result;
              v80 = v21;
              if (result < 1)
              {
                __break(1u);
                return result;
              }

              v56 = 0;
              v81 = v52 & 0xC000000000000001;
              v42 = MEMORY[0x277D84F90];
              v57 = v52;
              do
              {
                if (v81)
                {
                  MEMORY[0x26D609870](v56, v52);
                }

                else
                {
                }

                v58 = sub_267EF7C18();
                v60 = v59;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_267C70644();
                  v42 = v63;
                }

                v61 = v42[2];
                if (v61 >= v42[3] >> 1)
                {
                  sub_267C70644();
                  v42 = v64;
                }

                ++v56;

                v42[2] = v61 + 1;
                v62 = &v42[2 * v61];
                v62[4] = v58;
                v62[5] = v60;
                v52 = v57;
              }

              while (v55 != v56);

              v21 = v80;
              goto LABEL_48;
            }
          }

          else
          {
            if (v30 == *MEMORY[0x277D55428])
            {
              v65 = OUTLINED_FUNCTION_108();
              v66(v65);
              v34 = OUTLINED_FUNCTION_8_5();
              goto LABEL_21;
            }

            v67 = OUTLINED_FUNCTION_8_5();
            [v67 v68];
            v69 = OUTLINED_FUNCTION_8_5();
            [v69 v70];
            v71 = OUTLINED_FUNCTION_108();
            v72(v71);
          }

          v42 = MEMORY[0x277D84F90];
LABEL_48:
          v73 = v0[4];
          v74 = v42[2];
          for (i = v42 + 5; v74; i += 2)
          {
            if (*i)
            {
              v76 = *(i - 1) == v0[3] && *i == v73;
              if (v76 || (sub_267EF9EA8() & 1) != 0)
              {
                break;
              }
            }

            --v74;
          }

          v77 = v0[8];
          [v21 setIsDecisionCorrect_];
          __swift_project_boxed_opaque_existential_0(v77, v77[3]);
          v78 = swift_task_alloc();
          v0[29] = v78;
          *v78 = v0;
          v78[1] = sub_267C32FB8;

          return sub_267EDEFC8();
        }
      }
    }

    v45 = v0[23];
    v46 = v0[20];
    v47 = *(v0[21] + 8);
    v47(v0[22], v46);
    v47(v45, v46);
  }

  OUTLINED_FUNCTION_16_3();

  OUTLINED_FUNCTION_17();

  return v48();
}

uint64_t sub_267C32FB8()
{
  OUTLINED_FUNCTION_12();
  *(*v0 + 240) = v1;

  return MEMORY[0x2822009F8](sub_267C330B4, 0, 0);
}

uint64_t sub_267C330B4()
{
  v45 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 40);
  [v1 setUserPersona_];
  [v1 setProjectIntent_];
  if (*(v2 + 16) >> 31)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 192);
    v4 = *(v0 + 200);
    [v4 setNumCandidateApps_];
    [v3 setAbModelEvaluated_];
    if (qword_280228818 == -1)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_0(&qword_280228818);
LABEL_3:
  v5 = *(v0 + 216);
  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);
  v7 = OUTLINED_FUNCTION_108();
  v5(v7);

  v8 = sub_267EF89F8();
  v9 = sub_267EF95D8();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  v13 = *(v0 + 96);
  if (v10)
  {
    v40 = *(v0 + 24);
    v42 = *(v0 + 32);
    v14 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v14 = 136315394;
    sub_267C33564();
    v15 = sub_267EF9E58();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_267BA33E8(v15, v17, &v44);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_267BA33E8(v40, v42, &v44);
    _os_log_impl(&dword_267B93000, v8, v9, "#InstrumentedAppSelecting - emitting message for model evaluation:\nevaluationResult=%s\nfinalAppBundleId=%s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v39 = *(v0 + 208);
  v41 = *(v0 + 200);
  v19 = *(v0 + 192);
  v43 = *(v0 + 184);
  v20 = *(v0 + 168);
  v37 = *(v0 + 176);
  v21 = *(v0 + 160);
  v22 = *(v0 + 128);
  v23 = *(v0 + 80);
  v24 = *(v0 + 72);
  v38 = *(v20 + 16);
  v38(v22);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v21);
  v28 = v23;
  v36 = v23;
  v29 = *(v23 + 8);
  v29(v19, v22, v24, v28);
  sub_267C334FC(v22);
  (v38)(v22, v37, v21);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v21);
  v29(v39, v22, v24, v36);

  sub_267C334FC(v22);
  v33 = *(v20 + 8);
  v33(v37, v21);
  v33(v43, v21);
  OUTLINED_FUNCTION_16_3();

  OUTLINED_FUNCTION_17();

  return v34();
}

uint64_t sub_267C3348C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C334FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267C33564()
{
  result = qword_2802294E8;
  if (!qword_2802294E8)
  {
    sub_267EF7D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802294E8);
  }

  return result;
}

uint64_t sub_267C335BC(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  OUTLINED_FUNCTION_23();
  v9 = *(v8 + 64);
  v10 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v11 = sub_267EF2D28();
  OUTLINED_FUNCTION_30_0(v11);
  v13 = (v10 + v9 + *(v12 + 80)) & ~*(v12 + 80);
  v15 = v1[2];
  v16 = v1[3];
  v17 = *(v1 + ((*(v14 + 64) + v13 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_267C33740;

  return sub_267C31B70(a1, v15, v16, v1 + v10, v1 + v13, v17, v6, v5);
}

uint64_t sub_267C33740()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267C33850(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_267BDA4A0;
  v5[3] = &block_descriptor_40;
  v3 = _Block_copy(v5);

  [v2 getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion_];
  _Block_release(v3);
}

uint64_t sub_267C33924(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_267C33A58;
  v5[3] = &block_descriptor_1;
  v3 = _Block_copy(v5);

  [v2 getAnnounceNotificationsInCarPlayTypeWithCompletion_];
  _Block_release(v3);
}

uint64_t sub_267C339D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF9D38();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267C33A28(char a1)
{
  if (a1)
  {
    return 0x646E6F636573;
  }

  else
  {
    return 0x7473726966;
  }
}

uint64_t sub_267C33A58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_267C33AD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267C339D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_267C33B00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267C33A28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267C33B30(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = &unk_267EFD718;
  v9[7] = v2;

  sub_267E8FA18();
}

uint64_t sub_267C33C40(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_267BBD07C;

  return sub_267C33CDC();
}

uint64_t sub_267C33CDC()
{
  OUTLINED_FUNCTION_12();
  v1[17] = v2;
  v1[18] = v0;
  v3 = sub_267EF2E98();
  v1[19] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[20] = v4;
  v1[21] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF2778();
  v1[22] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[23] = v6;
  v1[24] = OUTLINED_FUNCTION_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v7 = sub_267EF2CC8();
  v1[27] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[28] = v8;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_267C33E70()
{
  OUTLINED_FUNCTION_62();
  __swift_project_boxed_opaque_existential_0((*(v0 + 144) + 16), *(*(v0 + 144) + 40));
  v1 = OUTLINED_FUNCTION_26_0();
  v2(v1);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_26_0();
  v3 = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v3)
  {
    sub_267B9AFEC(*(v0 + 144) + 192, v0 + 56);
    v4 = swift_allocObject();
    *(v0 + 248) = v4;
    sub_267B9A5E8((v0 + 56), v4 + 16);
    v5 = swift_task_alloc();
    *(v0 + 256) = v5;
    *(v5 + 16) = sub_267C364A0;
    *(v5 + 24) = v4;
    v6 = OUTLINED_FUNCTION_28_0();
    *(v0 + 264) = v6;
    *v6 = v0;
    v6[1] = sub_267C340AC;
    OUTLINED_FUNCTION_30_2();

    __asm { BR              X2 }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v9 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v11))
  {
    v12 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v12);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v13, v14, "#AnnounceCarPlayEnableTipsFlow Not in CarPlay, no need to read tip");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267C340AC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *(v6 + 272) = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_267C341CC()
{
  OUTLINED_FUNCTION_62();
  if (*(v0 + 272) == 3)
  {
    sub_267B9AFEC(*(v0 + 144) + 192, v0 + 96);
    v1 = swift_allocObject();
    *(v0 + 280) = v1;
    sub_267B9A5E8((v0 + 96), v1 + 16);
    v2 = swift_task_alloc();
    *(v0 + 288) = v2;
    *(v2 + 16) = sub_267C364E4;
    *(v2 + 24) = v1;
    v3 = OUTLINED_FUNCTION_28_0();
    *(v0 + 296) = v3;
    *v3 = v0;
    v3[1] = sub_267C343B4;
    OUTLINED_FUNCTION_30_2();

    __asm { BR              X2 }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v6 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);
  v7 = sub_267EF89F8();
  v8 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v8))
  {
    v9 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v9);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v10, v11, "#AnnounceCarPlayEnableTipsFlow No need for tip since announce is not in start muted mode");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267C343B4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *(v6 + 336) = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C344D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, __n128 a10, __n128 a11)
{
  if (*(v11 + 336) == 1)
  {
    v13 = *(v11 + 208);
    v12 = *(v11 + 216);
    OUTLINED_FUNCTION_23_4(xmmword_267EFD5B0, a1, a2, a3, a4, a5, a6, a7, a8, a10, v73, v76, v78, v81, v84, v87, a11, v90);
    if (__swift_getEnumTagSinglePayload(v13, 1, v12) == 1)
    {
      sub_267B9FF34(*(v11 + 208), &qword_28022BD90, &unk_267EFCDD0);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v14 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v14, qword_280240FB0);
      v15 = sub_267EF89F8();
      v16 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v16))
      {
        v17 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v17);
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v18, v19, "#AnnounceCarPlayEnableTipsFlow Reading first tip to enable announce in CarPlay");
        OUTLINED_FUNCTION_26();
      }

      v20 = swift_task_alloc();
      *(v11 + 328) = v20;
      *v20 = v11;
      v20[1] = sub_267C34C4C;
LABEL_8:

      return sub_267C355C8();
    }

    v28 = *(v11 + 216);
    v29 = *(v11 + 200);
    v30 = (*(*(v11 + 224) + 32))(*(v11 + 240), *(v11 + 208), v28);
    OUTLINED_FUNCTION_23_4(xmmword_267EFD5C0, v30, v31, v32, v33, v34, v35, v36, v37, v38, v74, v77, v79, v82, v85, v88, v39, v91);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v28);
    sub_267B9FF34(v29, &qword_28022BD90, &unk_267EFCDD0);
    if (EnumTagSinglePayload == 1)
    {
      v41 = *(v11 + 232);
      v42 = *(v11 + 224);
      v80 = *(v11 + 216);
      v75 = *(v11 + 192);
      v43 = *(v11 + 168);
      v86 = *(v11 + 184);
      v89 = *(v11 + 176);
      v44 = *(v11 + 160);
      v83 = *(v11 + 152);
      v45 = *(v11 + 144);
      sub_267EF2E78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294F8, &qword_267F038D0);
      v46 = sub_267EF2E88();
      OUTLINED_FUNCTION_58();
      v48 = v47;
      v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_267EFC020;
      (*(v48 + 104))(v50 + v49, *MEMORY[0x277CC9968], v46);
      sub_267E6EAA0();
      (*(v45 + 176))();
      sub_267EF2E48();

      v51 = *(v42 + 8);
      *(v11 + 304) = v51;
      *(v11 + 312) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v51(v41, v80);
      (*(v44 + 8))(v43, v83);
      v52 = sub_267EF2758();
      LOBYTE(v43) = v53;
      (*(v86 + 8))(v75, v89);
      if ((v43 & 1) == 0 && v52 >= 14)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v54 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v54, qword_280240FB0);
        v55 = sub_267EF89F8();
        v56 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_10_2(v56))
        {
          v57 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v57);
          OUTLINED_FUNCTION_3_0(&dword_267B93000, v58, v59, "#AnnounceCarPlayEnableTipsFlow Reading second tip");
          OUTLINED_FUNCTION_26();
        }

        v60 = swift_task_alloc();
        *(v11 + 320) = v60;
        *v60 = v11;
        v60[1] = sub_267C34AC0;
        goto LABEL_8;
      }
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v61 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v61, qword_280240FB0);
    v62 = sub_267EF89F8();
    v63 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v63))
    {
      v64 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v64);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v65, v66, "#AnnounceCarPlayEnableTipsFlow No need to read tip");
      OUTLINED_FUNCTION_26();
    }

    v67 = *(v11 + 144);

    v68 = *(v67 + 56);
    v69 = *(v67 + 64);
    *(v67 + 56) = 2;
    *(v67 + 64) = 0;
    sub_267C16E28(v68, v69);
    sub_267EF4018();
    v70 = OUTLINED_FUNCTION_26_0();
    v71(v70);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v22 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
    v23 = sub_267EF89F8();
    v24 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v24))
    {
      v25 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v25);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v26, v27, "#AnnounceCarPlayEnableTipsFlow No need for tip since announce is unmuted");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_14_9();
  }

  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_17();

  return v72();
}

uint64_t sub_267C34AC0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_267C34BA4()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[38];
  v2 = v0[30];
  v3 = v0[27];
  sub_267EF4018();
  v1(v2, v3);
  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267C34C4C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_267C34D30()
{
  OUTLINED_FUNCTION_62();
  sub_267EF4018();
  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267C34DC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_0(a3, v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

uint64_t sub_267C34E28(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_0(a3, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t sub_267C34E90(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  a3(a6, v10);
}

uint64_t sub_267C34F20(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C34FBC, 0, 0);
}

uint64_t sub_267C34FBC()
{
  OUTLINED_FUNCTION_12();
  sub_267EF90F8();
  v1 = sub_267EF79B8();
  OUTLINED_FUNCTION_27_3(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_25_6(v2);

  return sub_267CE85E4();
}

uint64_t sub_267C3506C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 48) = v0;

  sub_267B9FF34(v6, &unk_28022AE30, &qword_267EFC0B0);
  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v12();
  }
}

uint64_t sub_267C351C8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C35264, 0, 0);
}

uint64_t sub_267C35264()
{
  OUTLINED_FUNCTION_12();
  sub_267EF90F8();
  v1 = sub_267EF79B8();
  OUTLINED_FUNCTION_27_3(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_25_6(v2);

  return sub_267CE85E4();
}

uint64_t sub_267C35314()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 48) = v0;

  sub_267B9FF34(v6, &unk_28022AE30, &qword_267EFC0B0);
  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v12();
  }
}

uint64_t sub_267C35470()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267C354CC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v14 = a3;
  v5 = sub_267EF2CC8();
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  sub_267C16E28(v11, v12);
  v15 = v14;
  v16 = 0;
  sub_267EF2CB8();
  sub_267C5BD60(&v15, v10);
  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_267C355C8()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  v1[31] = v4;
  v1[32] = v0;
  v1[30] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v1[33] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4CC8();
  v1[34] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[35] = v7;
  v1[36] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF4228();
  v1[37] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[38] = v9;
  v10 = swift_task_alloc();
  v1[39] = v10;
  v1[40] = swift_task_alloc();
  v14 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[41] = v11;
  *v11 = v12;
  v11[1] = sub_267C357AC;

  return v14(v10);
}

uint64_t sub_267C357AC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 336) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C358A8()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 256);
  (*(*(v0 + 304) + 32))(*(v0 + 320), *(v0 + 312), *(v0 + 296));
  v6 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v6);
  (*(v7 + 8))(v6, v7);
  v8 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  sub_267EF3F48();
  sub_267B9FF34(v0 + 56, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v9 = v5[5];
  v10 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v9);
  (*(v10 + 40))(v9, v10);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_0((v0 + 96), v11);
  v13 = MEMORY[0x277D5C1D8];
  *(v0 + 160) = v3;
  *(v0 + 168) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
  (*(v2 + 16))(boxed_opaque_existential_0, v1, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 344) = v15;
  *v15 = v16;
  v15[1] = sub_267C35ACC;

  return MEMORY[0x2821BB5D0](v0 + 136, v11, v12);
}

uint64_t sub_267C35ACC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 352) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 136));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C35BD0()
{
  v1 = v0[30];
  v2 = __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1(v2);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v3 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v3, qword_280240FB0);
  v4 = sub_267EF89F8();
  v5 = sub_267EF95C8();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[34];
  if (v6)
  {
    v10 = OUTLINED_FUNCTION_32();
    *v10 = 0;
    _os_log_impl(&dword_267B93000, v4, v5, "#AnnounceCarPlayEnableTipsFlow Successfully submitted output", v10, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  (*(v8 + 8))(v7, v9);
  v11 = OUTLINED_FUNCTION_26_0();
  v12(v11);
  OUTLINED_FUNCTION_22_6();

  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_267C35D40()
{
  v16 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = *(v0 + 336);
  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 336);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_267EF9F68();
    v12 = sub_267BA33E8(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_267B93000, v4, v5, "#AnnounceCarPlayEnableTipsFlow Failed to generate templating result '%s'", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_22_6();

  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_267C35EF4()
{
  v25 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = v0[44];
  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[44];
  v8 = v0[40];
  v9 = v0[37];
  v10 = v0[38];
  v12 = v0[35];
  v11 = v0[36];
  v13 = v0[34];
  if (v6)
  {
    v23 = v0[34];
    v14 = swift_slowAlloc();
    v22 = v9;
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = sub_267EF9F68();
    v21 = v11;
    v18 = sub_267BA33E8(v16, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_267B93000, v4, v5, "#AnnounceCarPlayEnableTipsFlow Failed to submit output '%s'", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    (*(v12 + 8))(v21, v23);
    (*(v10 + 8))(v8, v22);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v10 + 8))(v8, v9);
  }

  OUTLINED_FUNCTION_22_6();

  OUTLINED_FUNCTION_17();

  return v19();
}

uint64_t sub_267C36130()
{
  sub_267C16E28(*(v0 + 56), *(v0 + 64));
  sub_267B9EF14(v0 + 72);

  return __swift_destroy_boxed_opaque_existential_0((v0 + 192));
}

uint64_t sub_267C36170()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267C16E28(*(v0 + 56), *(v0 + 64));
  sub_267B9EF14(v0 + 72);

  __swift_destroy_boxed_opaque_existential_0((v0 + 192));
  return v0;
}

uint64_t sub_267C361BC()
{
  sub_267C36170();

  return swift_deallocClassInstance();
}

unsigned __int8 *getEnumTagSinglePayload for AnnounceCarPlayEnableTipsFlow.TipReadingStatus(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = v6 - 2;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceCarPlayEnableTipsFlow.TipReadingStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_267C36394(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_267C363A8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_267C363EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267C33CDC();
}

id sub_267C36488@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_267C31080(v2, v3);
}

uint64_t sub_267C36528()
{
  OUTLINED_FUNCTION_12();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11(v2);

  return sub_267C34F20(v4, v0);
}

uint64_t sub_267C365D8()
{
  OUTLINED_FUNCTION_12();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11(v2);

  return sub_267C351C8(v4, v0);
}

uint64_t sub_267C36688(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_267C366C0()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return sub_267C33C40(v3);
}

_BYTE *storeEnumTagSinglePayload for AnnounceCarPlayEnableTipsFlow.AnnounceCarPlayTip(_BYTE *result, unsigned int a2, unsigned int a3)
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