void static SignpostLogger.end(_:_:)()
{
  sub_222E40044();
  v0 = OUTLINED_FUNCTION_0_6();
  v2 = v1(v0);
  OUTLINED_FUNCTION_1_4();
  sub_222E3FAC4();
}

void sub_222E13C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  v8(a4, a5);
  sub_222E3FAD4();
  sub_222E40054();
  v9 = (v8)(a4, a5);
  sub_222E3FAB4();
}

void static SignpostLogger.begin(_:enableTelemetry:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    sub_222E13C7C(a1, a2, a3, a5, a6);
  }

  else
  {
    (*(a6 + 24))(a1, a2, a3, 0, 0, 256, 0, 0, a5, a6);
  }
}

void static SignpostLogger.begin(name:parameterOverrideOptions:parameter:)(void x0_0, void x1_0, unsigned int a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a8, uint64_t a9)
{
  v11 = *(a9 + 8);
  v11(a8, a9);
  sub_222E3FAD4();
  if ((a4 & 0x100) != 0 || !a6)
  {
    sub_222E40054();
    v15 = (v11)(a8, a9);
    OUTLINED_FUNCTION_1_4();
    sub_222E3FAC4();
  }

  else
  {
    sub_222E3FC24();
    sub_222E40054();
    v12 = (v11)(a8, a9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D540, &unk_222E41960);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_222E41650;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_222E143F8();
    *(v13 + 32) = a5;
    *(v13 + 40) = a6;
    OUTLINED_FUNCTION_1_4();
    sub_222E3FAB4();
  }
}

void OUTLINED_FUNCTION_7()
{

  JUMPOUT(0x223DD12D0);
}

void OUTLINED_FUNCTION_9()
{

  JUMPOUT(0x223DD12D0);
}

void OUTLINED_FUNCTION_1_3()
{

  JUMPOUT(0x223DD12D0);
}

uint64_t OUTLINED_FUNCTION_1_5()
{
  __swift_destroy_boxed_opaque_existential_0(v2);
  __swift_destroy_boxed_opaque_existential_0(v0);
  return v1;
}

void sub_222E14108(_DWORD *a1)
{
  sub_222E3F924();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    LOBYTE(v4) = sub_222E1C51C(v4);

    if (v4)
    {
      return;
    }
  }

  v6 = sub_222E14578(a1);
  if ((*(*v6 + 128))())
  {
    v7 = a1;
    v8 = sub_222E3FB04();
    v9 = sub_222E3FF94();

    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_10();
      v10 = OUTLINED_FUNCTION_11_0();
      v23 = v10;
      *a1 = 136315138;
      v11 = [v7 debugDescription];
      v12 = sub_222E3FCB4();
      v14 = v13;

      v15 = sub_222E16068(v12, v14, &v23);

      *(a1 + 1) = v15;
      v16 = "Could not find a handler for message: %s";
LABEL_10:
      _os_log_impl(&dword_222E12000, v8, v9, v16, a1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_6();

      return;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (((*(*v6 + 120))(v1) & 1) == 0)
  {
    v17 = a1;
    v8 = sub_222E3FB04();
    v9 = sub_222E3FFC4();

    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_10();
      v10 = OUTLINED_FUNCTION_11_0();
      v23 = v10;
      *a1 = 136315138;
      v18 = [v17 debugDescription];
      v19 = sub_222E3FCB4();
      v21 = v20;

      v22 = sub_222E16068(v19, v21, &v23);

      *(a1 + 1) = v22;
      v16 = "This is usually not a problem. Could not find a handler for message: %s";
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  (*(*v6 + 104))(v1, a1);
LABEL_13:
}

unint64_t sub_222E143F8()
{
  result = qword_28131F1F8;
  if (!qword_28131F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131F1F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_222E14578(void *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D630, &unk_222E420B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D590, &unk_222E41C90);
  v7 = sub_222E3FCF4();
  v9 = v8;
  sub_222E15AB4();
  ObjectType = v7;
  v22 = v9;
  type metadata accessor for MessageDispatchingBridgeBase.MessageHandlerBase(0, *(v3 + 80), v10, v11);
  sub_222E3FC24();
  sub_222E3FC64();

  v12 = v18;
  if (v18)
  {
  }

  else
  {
    v23 = sub_222E3F984();
    ObjectType = a1;
    v13 = a1;
    sub_222E40374();
    v14 = sub_222E40394();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v14);
    sub_222E225C4();
    v12 = v15;
    sub_222E16CA0(v6, &unk_27D04D630, &unk_222E420B0);
    v19 = v9;
    v20 = v12;
    v18 = v7;
    swift_beginAccess();
    sub_222E3FC54();

    sub_222E3FC74();
    swift_endAccess();
  }

  return v12;
}

void sub_222E1479C(_DWORD *a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D4F8, &qword_222E41670);
  OUTLINED_FUNCTION_0();
  v160 = v5;
  v161 = v4;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  v159 = &v150 - v7;
  OUTLINED_FUNCTION_37_0();
  v9 = *(v8 + 80);
  v167 = v1;
  v10 = *(v3 + 88);
  v12 = type metadata accessor for ActorBridgeWrapper.LoopTaskContainer(255, v9, v10, v11);
  v13 = sub_222E400C4();
  OUTLINED_FUNCTION_0();
  v158 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_16();
  v152 = v16;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v17);
  v154 = &v150 - v18;
  OUTLINED_FUNCTION_29_0();
  v20 = MEMORY[0x28223BE20](v19);
  v162 = &v150 - v21;
  v163 = v12;
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_16();
  v151 = v22;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v23);
  v153 = &v150 - v24;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v25);
  v156 = &v150 - v26;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v150 - v28;
  v30 = sub_222E3F794();
  OUTLINED_FUNCTION_0();
  v164 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_55();
  v166 = v33;
  if (qword_28131FB48 != -1)
  {
    OUTLINED_FUNCTION_19_0(&qword_28131FB48);
  }

  v34 = sub_222E3FB14();
  v35 = __swift_project_value_buffer(v34, qword_281320008);
  v36 = a1;
  v155 = v35;
  v37 = sub_222E3FB04();
  v38 = sub_222E3FF94();

  v39 = os_log_type_enabled(v37, v38);
  v157 = v29;
  if (v39)
  {
    a1 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v150 = v13;
    v41 = v30;
    v42 = v40;
    v29 = swift_slowAlloc();
    v168[0] = v29;
    *a1 = 136315906;
    OUTLINED_FUNCTION_60();
    v44 = v43(v9, v10);
    v46 = sub_222E16068(v44, v45, v168);

    *(a1 + 1) = v46;
    *(a1 + 6) = 2082;
    swift_getObjectType();
    v47 = sub_222E403A4();
    v49 = sub_222E16068(v47, v48, v168);

    *(a1 + 14) = v49;
    *(a1 + 11) = 2082;
    v9 = v166;
    sub_222E3F974();
    OUTLINED_FUNCTION_0_4();
    sub_222E16AC8(v50, v51, MEMORY[0x277CC9628]);
    v52 = sub_222E40264();
    v54 = v53;
    v55 = OUTLINED_FUNCTION_59();
    v56(v55);
    v35 = sub_222E16068(v52, v54, v168);

    *(a1 + 3) = v35;
    *(a1 + 16) = 2112;
    *(a1 + 34) = v36;
    *v42 = v36;
    v57 = v36;
    _os_log_impl(&dword_222E12000, v37, v38, "%s received %{public}s with messageId: %{public}s: %@", a1, 0x2Au);
    sub_222E16CA0(v42, &qword_27D04D460, &qword_222E41680);
    v30 = v41;
    OUTLINED_FUNCTION_7();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  v58 = v165;
  v59 = sub_222E3F844();
  v60 = OUTLINED_FUNCTION_51(v59);
  v61 = v162;
  v62 = v163;
  if (v60)
  {
    OUTLINED_FUNCTION_34_0();
    sub_222E16BE4(v63, v64, v65, v66);
    OUTLINED_FUNCTION_40_0();
    if (v67)
    {
      v68 = OUTLINED_FUNCTION_17();
      v69(v68);
    }

    else
    {
      OUTLINED_FUNCTION_60();
      v77 = v157;
      v78 = OUTLINED_FUNCTION_30_0();
      v80 = v79(v78);
      OUTLINED_FUNCTION_44_0(v80);
      OUTLINED_FUNCTION_30_0();
      v81 = sub_222E3F764();
      v82 = *(v164 + 8);
      v82(v61, v30);
      if (v81)
      {
        v83 = v36;
        v84 = sub_222E3FB04();
        v85 = sub_222E3FFA4();

        if (os_log_type_enabled(v84, v85))
        {
          OUTLINED_FUNCTION_10();
          v168[0] = OUTLINED_FUNCTION_25_0();
          *v83 = 136315138;
          v86 = v166;
          sub_222E3F934();
          OUTLINED_FUNCTION_0_4();
          sub_222E16AC8(v87, v88, MEMORY[0x277CC9628]);
          OUTLINED_FUNCTION_31_1();
          v89 = sub_222E40264();
          v82(v86, v30);
          v90 = OUTLINED_FUNCTION_39_0();
          sub_222E16068(v90, v91, v92);
          OUTLINED_FUNCTION_65();
          *(v83 + 1) = v89;
          _os_log_impl(&dword_222E12000, v84, v85, "Received SessionStartedMessage for an existing session: %s, ignoring", v83, 0xCu);
          OUTLINED_FUNCTION_10_1();
          OUTLINED_FUNCTION_9();

          (*(v165 + 8))(v157, v163);
        }

        else
        {

          (*(v165 + 8))(v157, v62);
        }

        return;
      }

      (*(v58 + 8))(v77, v62);
    }

    v93 = v156;
    sub_222E16CF4(v29, v156);
    v169 = a1;
    v170 = sub_222E16AC8(&qword_28131FF70, MEMORY[0x277D5CB48], MEMORY[0x277D5CDA8]);
    v168[0] = v29;
    v94 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D500, &qword_222E41678);
    v95 = v159;
    sub_222E3FE94();
    (*(v160 + 8))(v95, v161);
    (*(v58 + 8))(v93, v62);
    return;
  }

  v70 = sub_222E3F824();
  if (OUTLINED_FUNCTION_51(v70))
  {
    OUTLINED_FUNCTION_34_0();
    sub_222E16BE4(v71, v72, v73, v74);
    OUTLINED_FUNCTION_40_0();
    if (v67)
    {
      v75 = OUTLINED_FUNCTION_17();
      v76(v75);
    }

    else
    {
      OUTLINED_FUNCTION_60();
      v103 = v153;
      v104 = OUTLINED_FUNCTION_30_0();
      v106 = v105(v104);
      OUTLINED_FUNCTION_44_0(v106);
      OUTLINED_FUNCTION_30_0();
      sub_222E3F764();
      v107 = OUTLINED_FUNCTION_38_0();
      v108(v107);
      if (v35)
      {
        v169 = a1;
        v109 = &unk_28131FF78;
        v110 = MEMORY[0x277D5CB18];
LABEL_33:
        v170 = sub_222E16AC8(v109, v110, MEMORY[0x277D5CDA8]);
        v168[0] = v29;
        v138 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D500, &qword_222E41678);
        v139 = v159;
        sub_222E3FE94();
        (*(v160 + 8))(v139, v161);
        (*(v58 + 8))(v103, v62);
        return;
      }

      (*(v58 + 8))(v103, v62);
    }

    v111 = v36;
    v112 = sub_222E3FB04();
    v113 = sub_222E3FFA4();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = OUTLINED_FUNCTION_29();
      v167 = swift_slowAlloc();
      v168[0] = v167;
      OUTLINED_FUNCTION_50(v167, 4.8151e-34);
      OUTLINED_FUNCTION_0_4();
      sub_222E16AC8(v115, v116, MEMORY[0x277CC9628]);
      OUTLINED_FUNCTION_33_0();
      v117 = OUTLINED_FUNCTION_28_0();
      v9(v117);
      OUTLINED_FUNCTION_48();

      OUTLINED_FUNCTION_47(v118);
      OUTLINED_FUNCTION_33_0();
      v119 = OUTLINED_FUNCTION_54();
      v9(v119);
      v120 = OUTLINED_FUNCTION_39_0();
      sub_222E16068(v120, v121, v122);
      OUTLINED_FUNCTION_65();
      *(v114 + 14) = v29;
      v123 = "Received SessionEndedMessage: %s for a non-existing session: %s, ignoring";
LABEL_37:
      _os_log_impl(&dword_222E12000, v112, v165, v123, v114, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
      goto LABEL_38;
    }

    goto LABEL_38;
  }

  v96 = sub_222E3F944();
  if (OUTLINED_FUNCTION_51(v96))
  {
    OUTLINED_FUNCTION_34_0();
    sub_222E16BE4(v97, v98, v99, v100);
    OUTLINED_FUNCTION_40_0();
    if (v67)
    {
      v101 = OUTLINED_FUNCTION_17();
      v102(v101);
    }

    else
    {
      OUTLINED_FUNCTION_60();
      v103 = v151;
      v133 = OUTLINED_FUNCTION_30_0();
      v135 = v134(v133);
      OUTLINED_FUNCTION_44_0(v135);
      OUTLINED_FUNCTION_30_0();
      sub_222E3F764();
      v136 = OUTLINED_FUNCTION_38_0();
      v137(v136);
      if (v35)
      {
        v169 = a1;
        v109 = &unk_28131FF68;
        v110 = MEMORY[0x277D5CD80];
        goto LABEL_33;
      }

      (*(v58 + 8))(v103, v62);
    }

    v140 = v36;
    v112 = sub_222E3FB04();
    v141 = sub_222E3FFA4();

    if (os_log_type_enabled(v112, v141))
    {
      v114 = OUTLINED_FUNCTION_29();
      v167 = swift_slowAlloc();
      v168[0] = v167;
      OUTLINED_FUNCTION_50(v167, 4.8151e-34);
      OUTLINED_FUNCTION_0_4();
      sub_222E16AC8(v142, v143, MEMORY[0x277CC9628]);
      OUTLINED_FUNCTION_33_0();
      v144 = OUTLINED_FUNCTION_28_0();
      v9(v144);
      OUTLINED_FUNCTION_48();

      OUTLINED_FUNCTION_47(v145);
      OUTLINED_FUNCTION_33_0();
      v146 = OUTLINED_FUNCTION_54();
      v9(v146);
      v147 = OUTLINED_FUNCTION_39_0();
      sub_222E16068(v147, v148, v149);
      OUTLINED_FUNCTION_65();
      *(v114 + 14) = v29;
      v123 = "Received SessionMessage: %s for a non-existing session: %s, ignoring";
      goto LABEL_37;
    }

LABEL_38:

    return;
  }

  v124 = v36;
  v125 = sub_222E3FB04();
  v126 = sub_222E3FFA4();

  if (OUTLINED_FUNCTION_43_0())
  {
    v127 = OUTLINED_FUNCTION_10();
    v128 = swift_slowAlloc();
    v168[0] = v128;
    *v127 = 136315138;
    v129 = v166;
    sub_222E3F974();
    OUTLINED_FUNCTION_0_4();
    sub_222E16AC8(v130, v131, MEMORY[0x277CC9628]);
    OUTLINED_FUNCTION_31_1();
    sub_222E40264();
    (*(v164 + 8))(v129, v30);
    v132 = OUTLINED_FUNCTION_48();

    *(v127 + 4) = v132;
    _os_log_impl(&dword_222E12000, v125, v126, "Received non-Session message %s, ignoring", v127, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v128);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_7();
  }
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = result;
  *(v2 - 136) = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_8_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_39(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void sub_222E15578(uint64_t a1, void *a2)
{
  v3 = v2;
  v40 = a1;
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    if (swift_dynamicCastClass())
    {
      v5 = *(v3 + 24);
      v6 = *(v3 + 40);
      v7 = a2;
      v8 = OUTLINED_FUNCTION_9_2();
      sub_222E15AC8(v8, v9);
      v5();
      v10 = OUTLINED_FUNCTION_16_0();
      v11(v10);
      if (v6 == 1)
      {
        v38 = OUTLINED_FUNCTION_9_2();
        sub_222E19234(v38, v39);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();

        v36 = OUTLINED_FUNCTION_9_2();
        sub_222E19234(v36, v37);
      }
    }

    else
    {
      v25 = a2;
      v26 = sub_222E3FB04();
      v27 = sub_222E3FFA4();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = OUTLINED_FUNCTION_29();
        v40 = OUTLINED_FUNCTION_45();
        *v28 = 136446466;
        swift_getObjectType();
        v29 = sub_222E403A4();
        sub_222E16068(v29, v30, &v40);

        v31 = OUTLINED_FUNCTION_24_1();
        v33 = sub_222E16068(v31, v32, &v40);

        *(v28 + 14) = v33;
        OUTLINED_FUNCTION_33_1(&dword_222E12000, v34, v35, "Input message type: %{public}s but expected type: %{public}s");
        OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_7_0();
        OUTLINED_FUNCTION_7();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v12 = sub_222E3FB04();
    v13 = sub_222E3FFA4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_29();
      v40 = OUTLINED_FUNCTION_45();
      *v14 = 136446466;
      swift_getObjectType();
      v15 = sub_222E403A4();
      v17 = v16;
      sub_222E16068(v15, v16, &v40);

      v18 = OUTLINED_FUNCTION_25_1();
      sub_222E16068(v18, v19, &v40);
      OUTLINED_FUNCTION_30_1();

      *(v14 + 14) = v17;
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_7();
    }
  }
}

uint64_t MessageDispatchingBridgeBase.name.getter()
{
  v1 = *(v0 + 16);
  sub_222E3FC24();
  return v1;
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_3_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_222E15AD0(uint64_t a1)
{
  v1 = swift_unknownObjectRetain();
  OUTLINED_FUNCTION_18_0(v1, v2, v3, v4, v5, v6, v7, v8, v11);
  v9 = swift_dynamicCast();
  if (v9)
  {
    swift_unknownObjectRelease();
  }

  return v9;
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return swift_slowAlloc();
}

uint64_t sub_222E15C70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_222E15CF4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_222E3FD44())
  {
    result = sub_222E15E0C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_222E40134();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_222E40174();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_222E15E0C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D448, &qword_222E41350);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_222E15E7C(uint64_t a1, unint64_t a2)
{
  v3 = sub_222E15CF4(a1, a2);
  sub_222E15EC8(&unk_283635378);
  return v3;
}

uint64_t sub_222E15EC8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_222E2656C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

unint64_t sub_222E16068(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_222E3FC24();
  v6 = sub_222E16274(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_222E16374(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t OUTLINED_FUNCTION_61_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void sub_222E1619C(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

void sub_222E16224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = a1;
  v4[4] = a2;
  sub_222E16690(sub_222E1671C, v4, a3, MEMORY[0x277D84F78] + 8, a4);
}

unint64_t sub_222E16274(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_222E15E7C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_222E40174();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_222E16374(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_222E163D0(void *a1)
{
  v2 = v1;

  v4 = a1;
  v5 = sub_222E3FB04();
  v6 = sub_222E3FF94();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_29();
    v8 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_9_0();
    v21 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_222E16068(*(v2 + 16), *(v2 + 24), &v21);
    *(v7 + 12) = 2114;
    *(v7 + 14) = v4;
    *v8 = v4;
    v10 = v4;
    _os_log_impl(&dword_222E12000, v5, v6, "Bridge %{public}s received message: %{public}@", v7, 0x16u);
    sub_222E16CA0(v8, &qword_27D04D460, &qword_222E41680);
    OUTLINED_FUNCTION_7();
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_7();
  }

  v11 = sub_222E14578(v4);
  if ((*(*v11 + 128))())
  {
    v12 = v4;
    v13 = sub_222E3FB04();
    v14 = sub_222E3FFA4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_10();
      v16 = OUTLINED_FUNCTION_9_0();
      v21 = v16;
      *v15 = 136446210;
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D590, &unk_222E41C90);
      v17 = sub_222E3FCF4();
      v19 = sub_222E16068(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_222E12000, v13, v14, "handleMessage got message type %{public}s which is not registered with the bridge", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }
  }

  else
  {
    (*(*v11 + 104))(v2, v4);
  }
}

uint64_t sub_222E16744@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 104);
  swift_beginAccess();
  type metadata accessor for ActorBridgeWrapper.LoopTaskContainer(255, *(v4 + 80), *(v4 + 88), v6);
  v7 = sub_222E400C4();
  return (*(*(v7 - 8) + 16))(a2, &a1[v5], v7);
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_19_1()
{
}

BOOL OUTLINED_FUNCTION_19_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_222E1690C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_222E3F794();
  OUTLINED_FUNCTION_58();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D508, &qword_222E41878);
    OUTLINED_FUNCTION_58();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[10];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D500, &qword_222E41678);
      v14 = a3[11];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[9]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return sub_222E40264();
}

void OUTLINED_FUNCTION_33_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_222E16AC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222E16B10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222E16B58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_222E16BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = OUTLINED_FUNCTION_32_0(a1, *(*v4 + 80), *(*v4 + 88), a4);
  sub_222E16224(sub_222E16180, v4, v5, v6);
}

uint64_t sub_222E16CA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_222E16CF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v86 = a2;
  v3 = sub_222E3F794();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_55();
  v85 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D428, &qword_222E41900);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  v91 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D528, &qword_222E41908);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v72 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D500, &qword_222E41678);
  OUTLINED_FUNCTION_0();
  v83 = v14;
  v84 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16();
  v81 = v15;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x28223BE20](v16);
  v78 = &v72 - v17;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D508, &qword_222E41878);
  OUTLINED_FUNCTION_0();
  v94 = v18;
  v77 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v20);
  v90 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v72 - v23;
  OUTLINED_FUNCTION_37_0();
  v93 = *(v25 + 80);
  OUTLINED_FUNCTION_37_0();
  v92 = *(v26 + 88);
  v75 = v2;
  v80 = type metadata accessor for ActorBridgeWrapper.LoopTaskContainer(255, v27, v92, v28);
  v88 = sub_222E400C4();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  v32 = *(v31 + 64);
  v34 = MEMORY[0x28223BE20](v33);
  v72 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v72 - v36;
  v87 = *(v2 + 120);
  v79 = &v72 - v36;
  sub_222E16BE4(v35, v38, v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D510, &qword_222E428A0);
  (*(v9 + 104))(v12, *MEMORY[0x277D85778], v7);
  v73 = v24;
  sub_222E3FE84();
  (*(v9 + 8))(v12, v7);
  v41 = v91;
  sub_222E3FE54();
  v42 = sub_222E3FE74();
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v42);
  v43 = v30;
  v44 = v88;
  (*(v30 + 16))(&v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v88);
  v45 = v94;
  v74 = *(v94 + 16);
  v46 = v89;
  v74(v90, v24, v89);
  v47 = *(v30 + 80);
  v76 = v30;
  v48 = (v47 + 56) & ~v47;
  v49 = (v32 + *(v45 + 80) + v48) & ~*(v45 + 80);
  v50 = (v77 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 2) = 0;
  *(v51 + 3) = 0;
  v52 = v92;
  *(v51 + 4) = v93;
  *(v51 + 5) = v52;
  v53 = v82;
  *(v51 + 6) = v82;
  v54 = &v51[v48];
  v55 = v72;
  (*(v43 + 32))(v54, v72, v44);
  v56 = v90;
  (*(v94 + 32))(&v51[v49], v90, v46);
  *&v51[v50] = v75;
  *&v51[(v50 + 15) & 0xFFFFFFFFFFFFFFF8] = v87;
  v57 = v53;

  sub_222E25D9C();
  v59 = v58;
  v60 = v85;
  sub_222E3F934();
  v61 = v73;
  v74(v56, v73, v46);
  v63 = v83;
  v62 = v84;
  v64 = v81;
  v65 = v78;
  (*(v83 + 16))(v81, v78, v84);
  v66 = v86;
  sub_222E175FC(v60, v59, v56, v64, v93, v92, v86);
  OUTLINED_FUNCTION_14();
  v68 = v66;
  v70 = v69;
  (*(v67 + 16))(v55, v68);
  __swift_storeEnumTagSinglePayload(v55, 0, 1, v70);

  sub_222E17730(v55);

  (*(v63 + 8))(v65, v62);
  (*(v94 + 8))(v61, v89);
  return (*(v76 + 8))(v79, v88);
}

uint64_t sub_222E17378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ActorBridgeWrapper.LoopTaskContainer(255, *(v4 + 32), *(v4 + 40), a4);
  v6 = sub_222E400C4();
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 80);
  v9 = (v8 + 56) & ~v8;
  v11 = *(v10 + 64);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D508, &qword_222E41878);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v15 = *(v13 + 80);
  v25 = *(v16 + 64);
  swift_unknownObjectRelease();

  v17 = v4 + v9;
  if (__swift_getEnumTagSinglePayload(v4 + v9, 1, v5))
  {
    v18 = *(v14 + 8);
  }

  else
  {
    sub_222E3F794();
    OUTLINED_FUNCTION_4_0();
    (*(v19 + 8))(v4 + v9);

    v18 = *(v14 + 8);
    v18(v17 + *(v5 + 40), v12);
    v20 = *(v5 + 44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D500, &qword_222E41678);
    OUTLINED_FUNCTION_4_0();
    (*(v21 + 8))(v17 + v20);
  }

  v22 = (v9 + v11 + v15) & ~v15;
  v23 = (((v25 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v18(v4 + v22, v12);

  return MEMORY[0x2821FE8E8](v4, v23 + 8, v8 | v15 | 7);
}

uint64_t sub_222E175FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_222E3F794();
  OUTLINED_FUNCTION_4();
  (*(v14 + 32))(a7, a1);
  v16 = type metadata accessor for ActorBridgeWrapper.LoopTaskContainer(0, a5, a6, v15);
  *(a7 + v16[9]) = a2;
  v17 = v16[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D508, &qword_222E41878);
  OUTLINED_FUNCTION_4();
  (*(v18 + 32))(a7 + v17, a3);
  v19 = v16[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D500, &qword_222E41678);
  OUTLINED_FUNCTION_4();
  v21 = *(v20 + 32);

  return v21(a7 + v19, a4);
}

uint64_t sub_222E17730(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[2];
  os_unfair_lock_lock(v4 + 4);
  sub_222E17804();
  os_unfair_lock_unlock(v4 + 4);
  OUTLINED_FUNCTION_32_0(v5, *(v3 + 80), *(v3 + 88), v6);
  OUTLINED_FUNCTION_4_0();
  return (*(v7 + 8))(a1);
}

void sub_222E1784C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_222E3F794();
  OUTLINED_FUNCTION_58();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[9]) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D508, &qword_222E41878);
    OUTLINED_FUNCTION_58();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[10];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D500, &qword_222E41678);
      v14 = a4[11];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_222E17988(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 104);
  swift_beginAccess();
  type metadata accessor for ActorBridgeWrapper.LoopTaskContainer(255, *(v4 + 80), *(v4 + 88), v6);
  v7 = sub_222E400C4();
  (*(*(v7 - 8) + 24))(&a1[v5], a2, v7);
  return swift_endAccess();
}

uint64_t sub_222E17A70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5(v1);

  return v3(v2);
}

uint64_t sub_222E17B10(uint64_t a1)
{
  OUTLINED_FUNCTION_64();
  v5 = OUTLINED_FUNCTION_32_0(v3, *(v1 + 32), *(v1 + 40), v4);
  OUTLINED_FUNCTION_20_0(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D508, &qword_222E41878);
  OUTLINED_FUNCTION_20_0(v6);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222E1B99C;
  OUTLINED_FUNCTION_62();

  return sub_222E17E30(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_222E17CCC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222E1F2E0;

  return v6(a1);
}

uint64_t OUTLINED_FUNCTION_65()
{
}

unint64_t OUTLINED_FUNCTION_22_2(uint64_t a1, unint64_t a2)
{

  return sub_222E16068(a1, a2, (v2 - 88));
}

uint64_t sub_222E17E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  v9 = *a7;
  v10 = sub_222E3FB14();
  v8[25] = v10;
  v8[26] = *(v10 - 8);
  v8[27] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D530, &qword_222E41920);
  v8[28] = v11;
  v8[29] = *(v11 - 8);
  v8[30] = swift_task_alloc();
  v12 = sub_222E3FAF4();
  v8[31] = v12;
  v8[32] = *(v12 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v13 = *(v9 + 80);
  v8[35] = v13;
  v14 = *(v9 + 88);
  v8[36] = v14;
  v8[37] = type metadata accessor for ActorBridgeWrapper.LoopTaskContainer(255, v13, v14, v15);
  v16 = sub_222E400C4();
  v8[38] = v16;
  v8[39] = *(v16 - 8);
  v8[40] = swift_task_alloc();
  v17 = sub_222E3F794();
  v8[41] = v17;
  v8[42] = *(v17 - 8);
  v8[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222E180D0, 0, 0);
}

uint64_t sub_222E180D0()
{
  v46 = v0;
  if (qword_28131FB48 != -1)
  {
    OUTLINED_FUNCTION_19_0(&qword_28131FB48);
  }

  v1 = *(v0 + 160);
  v2 = __swift_project_value_buffer(*(v0 + 200), qword_281320008);
  *(v0 + 352) = v2;
  v3 = v1;
  v4 = sub_222E3FB04();
  sub_222E3FF84();

  if (OUTLINED_FUNCTION_43_0())
  {
    OUTLINED_FUNCTION_18();
    v45 = OUTLINED_FUNCTION_25_0();
    *v3 = 136315138;
    sub_222E3F934();
    OUTLINED_FUNCTION_0_4();
    sub_222E16AC8(v5, v6, MEMORY[0x277CC9628]);
    OUTLINED_FUNCTION_31_1();
    sub_222E40264();
    v7 = OUTLINED_FUNCTION_9_1();
    v9 = v8(v7);
    OUTLINED_FUNCTION_67(v9, v10, &v45);
    OUTLINED_FUNCTION_27_1();

    *(v3 + 1) = v2;
    OUTLINED_FUNCTION_7_1();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_9();
  }

  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  (*(*(v0 + 312) + 16))(v16, *(v0 + 168), *(v0 + 304));
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v17);
  v19 = *(v0 + 320);
  if (EnumTagSinglePayload == 1)
  {
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    v20 = *(v0 + 352);
    v21 = *(v0 + 160);
    v22 = sub_222E3FB04();
    sub_222E3FF94();

    if (OUTLINED_FUNCTION_43_0())
    {
      OUTLINED_FUNCTION_18();
      v45 = OUTLINED_FUNCTION_25_0();
      *v21 = 136315138;
      sub_222E3F934();
      OUTLINED_FUNCTION_0_4();
      sub_222E16AC8(v23, v24, MEMORY[0x277CC9628]);
      OUTLINED_FUNCTION_31_1();
      sub_222E40264();
      v25 = OUTLINED_FUNCTION_9_1();
      v27 = v26(v25);
      OUTLINED_FUNCTION_67(v27, v28, &v45);
      OUTLINED_FUNCTION_27_1();

      *(v21 + 1) = v20;
      OUTLINED_FUNCTION_7_1();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_9();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D508, &qword_222E41878);
    sub_222E3FEC4();
    v34 = swift_task_alloc();
    v35 = OUTLINED_FUNCTION_24_0(v34);
    *v35 = v36;
    v37 = OUTLINED_FUNCTION_1_1(v35);

    return MEMORY[0x2822003E8](v37);
  }

  else
  {
    v38 = *(v0 + 296);
    *(v0 + 360) = *(v19 + *(v38 + 36));
    OUTLINED_FUNCTION_14();
    v40 = *(v39 + 8);

    v40(v19, v38);
    if (qword_28131FB40 != -1)
    {
      OUTLINED_FUNCTION_2_1(&qword_28131FB40);
    }

    v41 = qword_281320000;
    *(v0 + 368) = qword_281320000;
    v42 = v41;
    sub_222E3FAD4();
    sub_222E40054();
    OUTLINED_FUNCTION_12_1();
    sub_222E3FAB4();
    v43 = swift_task_alloc();
    *(v0 + 376) = v43;
    *v43 = v0;
    v43[1] = sub_222E222C4;

    return MEMORY[0x282200830]();
  }
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_6()
{

  JUMPOUT(0x223DD12D0);
}

void OUTLINED_FUNCTION_7_0()
{

  JUMPOUT(0x223DD12D0);
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1)
{

  return sub_222E400F4();
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_26(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_26_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ActorBridgeWrapper.LoopTaskContainer(255, a2, a3, a4);

  return sub_222E400C4();
}

double OUTLINED_FUNCTION_32_2(uint64_t a1)
{
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v2;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v1;
  *(a1 + 88) = v3;
  return result;
}

void OUTLINED_FUNCTION_10_1()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x223DD12D0);
}

void OUTLINED_FUNCTION_10_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 160) = a8;
  *(v8 - 152) = a3;
  *(v8 - 144) = a6;
  *(v8 - 136) = a7;
}

unint64_t sub_222E18808(uint64_t a1, uint64_t a2)
{
  sub_222E40334();
  sub_222E3FD24();
  v4 = sub_222E40354();

  return sub_222E19374(a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_1()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2082;

  return sub_222E403A4();
}

uint64_t sub_222E188E4()
{
  v1 = (*(v0 + 24))(*(v0 + 40));
  *(v0 + 96) = v2;
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_222E1B5A4;
  v4 = *(v0 + 88);
  v5 = *(v0 + 16);

  return v7(v5, v4);
}

id sub_222E189EC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D730, qword_222E41B10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_222E3F794();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_222E3F734();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_222E2CF20(v4);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v13, v4, v5);
    sub_222E1BB7C();
    (*(v7 + 16))(v11, v13, v5);
    v14 = sub_222E1BBC0(v11);
    (*(v7 + 8))(v13, v5);
  }

  return v14;
}

void *sub_222E18BB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_222E189EC(a1, a2);
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D59618]) init];
    v8 = v7;
    if (v7)
    {
      [v7 setRequestId_];
      v9 = v8;
      if (a4)
      {
        a4 = sub_222E3FCA4();
      }

      [v8 setResultCandidateId_];
    }
  }

  else
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_28131F210);
    }

    v10 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v10, qword_28131FFA0);
    v6 = sub_222E3FB04();
    v11 = sub_222E3FFA4();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_222E12000, v6, v11, "The requestId is not a valid UUID. Will return a nil EventMetadata. We might still emit ORCHClientEvent for some events that are not in request grain", v12, 2u);
      OUTLINED_FUNCTION_7();
    }

    v8 = 0;
  }

  return v8;
}

id sub_222E18CFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = sub_222E18BB0(a1, a2, a3, a4);
  v8 = [objc_allocWithZone(MEMORY[0x277D59610]) init];
  [v8 setEventMetadata_];
  if ((a5 & 1) != 0 && v8)
  {
    v9 = objc_allocWithZone(MEMORY[0x277D597D8]);
    v10 = v8;
    v11 = [v9 init];
    if (v11)
    {
      v12 = objc_allocWithZone(MEMORY[0x277D596F0]);
      ru_maxrss = v11;
      v13 = [v12 init];
      [ru_maxrss setMemoryUsageMetadata_];
    }

    bzero(&v26, 0x90uLL);
    if (getrusage(0, &v26))
    {
      if (qword_28131F210 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_28131F210);
      }

      v14 = sub_222E3FB14();
      OUTLINED_FUNCTION_4_2(v14, qword_28131FFA0);
      v15 = sub_222E3FB04();
      v16 = sub_222E3FFA4();
      if (!OUTLINED_FUNCTION_3_2(v16))
      {
        goto LABEL_11;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Not logging maxRSS since getrusage() did not succeed";
      goto LABEL_10;
    }

    ru_maxrss = v26.ru_maxrss;
    if (v26.ru_maxrss < 0)
    {
      if (qword_28131F210 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_28131F210);
      }

      v24 = sub_222E3FB14();
      OUTLINED_FUNCTION_4_2(v24, qword_28131FFA0);
      v15 = sub_222E3FB04();
      v25 = sub_222E3FFA4();
      if (!OUTLINED_FUNCTION_3_2(v25))
      {
        goto LABEL_11;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Not logging maxRSS since it is negative";
LABEL_10:
      _os_log_impl(&dword_222E12000, v15, ru_maxrss, v18, v17, 2u);
      OUTLINED_FUNCTION_1_3();
LABEL_11:

LABEL_12:
      [v10 setResourceUtilizationMetadata_];

      goto LABEL_13;
    }

    if (!v11)
    {
      goto LABEL_12;
    }

    v20 = [v11 memoryUsageMetadata];
    if (!v20)
    {
      goto LABEL_12;
    }

    v15 = v20;
    v21 = ceil(log10(ru_maxrss));
    if (v21 <= 2.0)
    {
LABEL_22:
      [v15 setMaxRSS:ru_maxrss];
      goto LABEL_11;
    }

    v22 = __exp10(v21 + -2.0);
    v23 = v22 * rint(ru_maxrss / v22);
    if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v23 > -1.0)
    {
      if (v23 < 1.84467441e19)
      {
        ru_maxrss = v23;
        goto LABEL_22;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_13:

  return v8;
}

uint64_t sub_222E190B4()
{
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_22();

  return v0();
}

uint64_t sub_222E19128()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_222E19224(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_222E1923C(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{

  oslog = sub_222E3FB04();
  v5 = a3();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = a1();
    v9 = static InsightRequestSummaryLogger.constructLogJsonString(_:)(v8);
    v11 = v10;

    v12 = sub_222E16068(v9, v11, &v14);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_222E12000, oslog, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }
}

unint64_t sub_222E19374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_222E40294() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void *sub_222E19428(void *a1)
{
  v2 = sub_222E40394();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D630, &unk_222E420B0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = a1[3];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  v32[3] = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v16, v15);
  sub_222E40374();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
  v31 = (v3 + 16);
  v18 = (v3 + 8);
  while (1)
  {
    sub_222E19D10(v14, v12);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v2);
    sub_222E16CA0(v12, &unk_27D04D630, &unk_222E420B0);
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    if (!__swift_getEnumTagSinglePayload(v14, 1, v2))
    {
      (*v31)(v5, v14, v2);
      v20 = sub_222E40384();
      (*v18)(v5, v2);
      v32[0] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D518, &qword_222E418E0);
      v21 = sub_222E3FCF4();
      v23 = *(v30 + 120);
      if (*(v23 + 16))
      {
        v24 = sub_222E18808(v21, v22);
        v26 = v25;

        if (v26)
        {
          v28 = *(v23 + 56);
          *(swift_allocObject() + 16) = *(v28 + 16 * v24);

          v29 = &unk_222E418F0;
          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    if (__swift_getEnumTagSinglePayload(v14, 1, v2))
    {
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v2);
    }

    else
    {
      (*v31)(v5, v14, v2);
      sub_222E40364();
      (*v18)(v5, v2);
    }

    sub_222E23FE4(v9, v14);
  }

  v29 = 0;
LABEL_13:
  sub_222E16CA0(v14, &unk_27D04D630, &unk_222E420B0);
  return v29;
}

uint64_t sub_222E197DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t OUTLINED_FUNCTION_13(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_222E16068(v4, v3, va);
}

void OUTLINED_FUNCTION_13_3(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  *v3 = 0xD000000000000013;
  v3[1] = (v1 - 32) | 0x8000000000000000;
}

unint64_t OUTLINED_FUNCTION_13_4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0;
  v3[1] = 0xE000000000000000;

  return sub_222E1DC7C();
}

uint64_t OUTLINED_FUNCTION_24(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_1()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2082;

  return sub_222E403A4();
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return sub_222E40034();
}

uint64_t sub_222E199B0()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_222E19A98()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 184);
    sub_222E19C30((v0 + 16), v0 + 56);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    DynamicType = swift_getDynamicType();
    v3 = *(v0 + 88);
    *(v0 + 136) = DynamicType;
    *(v0 + 144) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D538, &qword_222E41928);
    *(v0 + 392) = sub_222E3FCF4();
    *(v0 + 400) = v4;
    v5 = *(v1 + 112);
    *(v0 + 408) = v5;

    return MEMORY[0x2822009F8](sub_222E19C48, v5, 0);
  }

  else
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    OUTLINED_FUNCTION_46();

    OUTLINED_FUNCTION_22();

    return v6();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_222E19C30(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_222E19C48()
{
  OUTLINED_FUNCTION_3_0();
  v0[52] = sub_222E19428(v0 + 7);
  v0[53] = v1;
  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_222E19D10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D630, &unk_222E420B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222E19D80()
{
  OUTLINED_FUNCTION_57();
  v30 = v0;
  v1 = v0[52];
  if (v1)
  {
    v2 = v0[53];
    (*(v0[26] + 16))(v0[27], v0[44], v0[25]);
    if (qword_28131FB40 != -1)
    {
      OUTLINED_FUNCTION_2_1(&qword_28131FB40);
    }

    v3 = qword_281320000;
    v0[54] = qword_281320000;
    v4 = v3;
    sub_222E3FAD4();
    sub_222E40054();
    OUTLINED_FUNCTION_12_1();
    sub_222E3FAB4();
    v5 = swift_task_alloc();
    v0[55] = v5;
    *v5 = v0;
    v5[1] = sub_222E19128;
    v6 = v0[49];
    v7 = v0[50];
    v8 = v0[35];
    v9 = v0[27];
    v32 = v0[36];

    return sub_222E1A044(v5, v9, (v0 + 7), v1, v2, v6, v7, v8);
  }

  else
  {
    v11 = v0[50];
    sub_222E3FC24();
    v12 = sub_222E3FB04();
    sub_222E3FF84();

    v13 = OUTLINED_FUNCTION_43_0();
    v14 = v0[50];
    if (v13)
    {
      v15 = v0[49];
      OUTLINED_FUNCTION_29();
      v29 = OUTLINED_FUNCTION_49();
      *v11 = 136446466;
      sub_222E16068(v15, v14, &v29);
      OUTLINED_FUNCTION_41_0();

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v16 = OUTLINED_FUNCTION_59();
      v18 = v17(v16);
      sub_222E16068(v18, v19, &v29);
      OUTLINED_FUNCTION_41_0();

      *(v11 + 14) = v15;
      OUTLINED_FUNCTION_7_1();
      _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_9();
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v25 = swift_task_alloc();
    v26 = OUTLINED_FUNCTION_24_0(v25);
    *v26 = v27;
    v28 = OUTLINED_FUNCTION_1_1(v26);

    return MEMORY[0x2822003E8](v28);
  }
}

uint64_t sub_222E1A044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a8;
  v8[20] = v15;
  v8[17] = a6;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a5;
  v8[13] = a2;
  v8[14] = a3;
  v9 = sub_222E3F7C4();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v10 = sub_222E3FE44();
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  v11 = sub_222E3FB14();
  v8[27] = v11;
  v12 = *(v11 - 8);
  v8[28] = v12;
  v8[29] = *(v12 + 64);
  v8[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222E1A2F8, 0, 0);
}

uint64_t sub_222E1A1D8(uint64_t a1)
{
  v4 = sub_222E3FB14();
  OUTLINED_FUNCTION_20_0(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_222E2BA2C;

  return sub_222E1A724(a1, v1 + v6, v1 + v8, v10, v11);
}

uint64_t sub_222E1A2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_64();
  v14 = *(v12 + 232);
  v13 = *(v12 + 240);
  v15 = *(v12 + 216);
  v16 = *(v12 + 224);
  v18 = *(v12 + 120);
  v17 = *(v12 + 128);
  v19 = *(v12 + 112);
  (*(v16 + 16))(v13, *(v12 + 104), v15);
  sub_222E15C70(v19, v12 + 16);
  v20 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v12 + 248) = v22;
  (*(v16 + 32))(v22 + v20, v13, v15);
  sub_222E19C30((v12 + 16), v22 + v21);
  v23 = (v22 + ((v21 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v18;
  v23[1] = v17;

  v24 = swift_task_alloc();
  *(v12 + 256) = v24;
  *v24 = v12;
  v24[1] = sub_222E1AC88;
  OUTLINED_FUNCTION_62();

  return MEMORY[0x2821C8618](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_222E1A46C()
{
  sub_222E3FB14();
  OUTLINED_FUNCTION_4_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + v4));

  return MEMORY[0x2821FE8E8](v0, ((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_222E1A510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_63();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_57();
  a20 = v22;
  sub_222E15C70(v22[8], (v22 + 2));
  v26 = sub_222E3FB04();
  v27 = sub_222E3FF94();
  if (os_log_type_enabled(v26, v27))
  {
    v29 = v22[12];
    v28 = v22[13];
    v50 = v22[11];
    OUTLINED_FUNCTION_10();
    a11 = OUTLINED_FUNCTION_25_0();
    *v23 = 136315138;
    __swift_project_boxed_opaque_existential_1(v22 + 2, v22[5]);
    OUTLINED_FUNCTION_27_1();
    sub_222E3F9A4();
    OUTLINED_FUNCTION_0_4();
    sub_222E16AC8(v30, v31, MEMORY[0x277CC9628]);
    OUTLINED_FUNCTION_31_1();
    v32 = sub_222E40264();
    (*(v29 + 8))(v28, v50);
    v33 = __swift_destroy_boxed_opaque_existential_0(v22 + 2);
    OUTLINED_FUNCTION_67(v33, v34, &a11);
    OUTLINED_FUNCTION_27_1();

    *(v23 + 4) = v32;
    OUTLINED_FUNCTION_7_1();
    _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_9();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v22 + 2);
  }

  v51 = v22[9] + *v22[9];
  v40 = swift_task_alloc();
  v22[14] = v40;
  *v40 = v22;
  v40[1] = sub_222E1BA7C;
  OUTLINED_FUNCTION_36_0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, v51, a11, a12, a13, a14);
}

uint64_t sub_222E1A724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v6 = sub_222E3F794();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222E1A510, 0, 0);
}

uint64_t sub_222E1A7E8()
{
  sub_222E15C70(v0[7], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D510, &qword_222E428A0);
  if (swift_dynamicCast())
  {
    v2 = v0[20];
    v1 = v0[21];
    v3 = v0[19];
    v4 = v0[10];
    v5 = v0[8];
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    (*(v2 + 32))(v1, v3, v4);
    v20 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[22] = v6;
    *v6 = v0;
    v6[1] = sub_222E1B7EC;
    v7 = v0[21];
    v8 = v0[16];

    return v20(v7, v8);
  }

  else
  {
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[17];
    v13 = v0[12];
    v14 = v0[10];
    v15 = v0[7];
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
    (*(v11 + 8))(v10, v12);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    DynamicType = swift_getDynamicType();
    v17 = v15[4];
    sub_222E3DB48();
    swift_allocError();
    *v18 = v14;
    v18[1] = v13;
    v18[2] = DynamicType;
    v18[3] = v17;
    swift_willThrow();

    OUTLINED_FUNCTION_22();

    return v19();
  }
}

uint64_t sub_222E1AA70(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222E1B704;

  return sub_222E1AB6C(a1, v6, v7, v8, v13, v11, v4, v5);
}

uint64_t sub_222E1AB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v13;
  v8[8] = v14;
  v8[5] = a4;
  v8[6] = a7;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v8[9] = *(a7 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v10 = sub_222E3FE34();

  return MEMORY[0x2822009F8](sub_222E188E4, v10, v9);
}

uint64_t sub_222E1AC88()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v3 + 264) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_222E1ADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_63();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_57();
  a20 = v22;
  v26 = *(v22 + 256);
  v25 = *(v22 + 264);
  v27 = *(v22 + 248);
  sub_222E40044();
  sub_222E3FAC4();

  (*(v26 + 8))(v25, v27);
  sub_222E15C70(v22 + 56, v22 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D510, &qword_222E428A0);
  sub_222E3F824();
  if (swift_dynamicCast())
  {
    v28 = *(v22 + 152);
    v29 = sub_222E3FB04();
    v30 = sub_222E3FF94();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v22 + 336);
      v32 = *(v22 + 344);
      v33 = *(v22 + 328);
      v34 = OUTLINED_FUNCTION_10();
      a10 = swift_slowAlloc();
      a11 = a10;
      *v34 = 136315138;
      sub_222E3F934();
      OUTLINED_FUNCTION_0_4();
      sub_222E16AC8(v35, v36, MEMORY[0x277CC9628]);
      v37 = sub_222E40264();
      v38 = v28;
      v40 = v39;
      (*(v31 + 8))(v32, v33);
      v41 = sub_222E16068(v37, v40, &a11);
      v28 = v38;

      *(v34 + 4) = v41;
      _os_log_impl(&dword_222E12000, v29, v30, "Ending session %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a10);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7_0();
    }

    v42 = swift_task_alloc();
    *(v42 + 16) = *(v22 + 280);
    *(v42 + 32) = v28;
    sub_222E1ED9C();

    v43 = sub_222E3FB04();
    v44 = sub_222E3FF94();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_222E12000, v43, v44, "Ending the message event loop", v45, 2u);
      OUTLINED_FUNCTION_9();
      v46 = v28;
    }

    else
    {
      v46 = v43;
      v43 = v28;
    }

    v56 = *(v22 + 232);
    v55 = *(v22 + 240);
    v58 = *(v22 + 216);
    v57 = *(v22 + 224);
    v59 = *(v22 + 200);
    v60 = *(v22 + 208);
    sub_222E19224(*(v22 + 416), *(v22 + 424));

    (*(v56 + 8))(v55, v57);
    (*(v60 + 8))(v58, v59);
    __swift_destroy_boxed_opaque_existential_0((v22 + 56));
    OUTLINED_FUNCTION_46();

    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_36_0();

    return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v48 = *(v22 + 208);
    v47 = *(v22 + 216);
    v49 = *(v22 + 200);
    sub_222E19224(*(v22 + 416), *(v22 + 424));
    (*(v48 + 8))(v47, v49);
    __swift_destroy_boxed_opaque_existential_0((v22 + 56));
    v50 = swift_task_alloc();
    v51 = OUTLINED_FUNCTION_24_0(v50);
    *v51 = v52;
    OUTLINED_FUNCTION_1_1(v51);
    OUTLINED_FUNCTION_36_0();

    return MEMORY[0x2822003E8](v53);
  }
}

uint64_t sub_222E1B1A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222E1B99C;

  return sub_222E1B254(a1, v4);
}

uint64_t sub_222E1B254(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_222E1B99C;

  return v5();
}

uint64_t sub_222E1B348(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_222E1B998;

  return sub_222E1B424(a1, a2, v11, v10, v6, v7, v8, v9);
}

uint64_t sub_222E1B424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[7] = a2;
  v8[14] = *(a6 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v10 = sub_222E400C4();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = *(a5 - 8);
  v8[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222E1A7E8, 0, 0);
}

uint64_t sub_222E1B5A4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222E3D458, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_22();

    return v4();
  }
}

uint64_t sub_222E1B704()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_22();

  return v3();
}

uint64_t sub_222E1B7EC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  if (v0)
  {
    v4 = sub_222E3D224;
  }

  else
  {
    v4 = sub_222E1B8F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_222E1B8F4()
{
  (*(v0[20] + 8))(v0[21], v0[10]);

  OUTLINED_FUNCTION_22();

  return v1();
}

uint64_t sub_222E1B99C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_22();

  return v3();
}

uint64_t sub_222E1BA7C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_22();

  return v3();
}

unint64_t sub_222E1BB7C()
{
  result = qword_28131F1C0;
  if (!qword_28131F1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131F1C0);
  }

  return result;
}

id sub_222E1BBC0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_222E3F754();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_222E3F794();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void *OUTLINED_FUNCTION_31_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a2 + 328);
  v6 = *(v3 - 216);
  v5 = *(v3 - 208);
  result[2] = v4;
  result[3] = v6;
  result[4] = v2;
  result[5] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_46()
{
}

uint64_t OUTLINED_FUNCTION_46_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_222E1BD80(uint64_t a1)
{
  v3 = qword_281320058;
  OUTLINED_FUNCTION_40(a1);
  *(v1 + v3) = a1;
}

uint64_t type metadata accessor for InsightRequestSummaryLogger(uint64_t a1)
{
  result = qword_28131FF30;
  if (!qword_28131FF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_6(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void *static InsightRequestSummaryLogger.constructLogJsonString(_:)(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = sub_222E3FCE4();
  MEMORY[0x28223BE20](v2 - 8);
  v44 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_222E3FC04();
  v5 = *(a1 + 16);
  v43 = a1;
  if (v5)
  {
    v6 = (a1 + 56);
    do
    {
      v8 = *(v6 - 3);
      v7 = *(v6 - 2);
      v9 = *v6;
      v45 = *(v6 - 1);
      sub_222E3FC24();
      sub_222E3FC24();
      swift_isUniquelyReferenced_nonNull_native();
      v46 = v4;
      v10 = sub_222E18808(v8, v7);
      if (__OFADD__(v4[2], (v11 & 1) == 0))
      {
        __break(1u);
LABEL_19:
        __break(1u);
      }

      v12 = v10;
      v13 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D558, &unk_222E41990);
      if (sub_222E40224())
      {
        v14 = sub_222E18808(v8, v7);
        if ((v13 & 1) != (v15 & 1))
        {
          result = sub_222E402C4();
          __break(1u);
          return result;
        }

        v12 = v14;
      }

      if (v13)
      {

        v4 = v46;
        v16 = (v46[7] + 16 * v12);
        *v16 = v45;
        v16[1] = v9;
      }

      else
      {
        v4 = v46;
        v46[(v12 >> 6) + 8] |= 1 << v12;
        v17 = (v4[6] + 16 * v12);
        *v17 = v8;
        v17[1] = v7;
        v18 = (v4[7] + 16 * v12);
        *v18 = v45;
        v18[1] = v9;
        v19 = v4[2];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_19;
        }

        v4[2] = v21;
      }

      v6 += 4;
      --v5;
    }

    while (v5);
  }

  v22 = objc_opt_self();
  v23 = sub_222E3FBD4();
  v46 = 0;
  v24 = [v22 dataWithJSONObject:v23 options:0 error:&v46];

  v25 = v46;
  if (v24)
  {

    v26 = sub_222E3F724();
    v28 = v27;

    sub_222E3FCD4();
    v29 = sub_222E3FCC4();
    if (v30)
    {
      v31 = v29;
      sub_222E1C420(v26, v28);
    }

    else
    {
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_222E40144();
      MEMORY[0x223DD0550](0xD00000000000003BLL, 0x8000000222E42E70);
      v40 = MEMORY[0x223DD0980](v43, &type metadata for InsightRequestSummaryKey, MEMORY[0x277D837D0]);
      MEMORY[0x223DD0550](v40);

      MEMORY[0x223DD0550](32034, 0xE200000000000000);
      sub_222E1C420(v26, v28);
      return v46;
    }
  }

  else
  {
    v32 = v25;
    v33 = sub_222E3F714();

    swift_willThrow();
    v49 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D4F0, &unk_222E415A0);
    sub_222E2C6B8(0, &qword_27D04D560, 0x277CCA9B8);
    swift_dynamicCast();

    v34 = v48;
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_222E40144();
    MEMORY[0x223DD0550](0xD000000000000024, 0x8000000222E42E40);
    v35 = [v34 description];
    v36 = sub_222E3FCB4();
    v38 = v37;

    MEMORY[0x223DD0550](v36, v38);

    MEMORY[0x223DD0550](0x72617020726F6620, 0xEC00000020736D61);
    v39 = MEMORY[0x223DD0980](v43, &type metadata for InsightRequestSummaryKey, MEMORY[0x277D837D0]);
    MEMORY[0x223DD0550](v39);

    MEMORY[0x223DD0550](32034, 0xE200000000000000);

    v31 = v46;
  }

  return v31;
}

uint64_t sub_222E1C420(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t OUTLINED_FUNCTION_5_1(uint64_t a1)
{

  return swift_getWitnessTable();
}

BOOL OUTLINED_FUNCTION_5_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_222E1C51C(void *a1)
{
  v2 = sub_222E14578(a1);
  v3 = a1;
  v4 = sub_222E3FB04();
  v5 = sub_222E3FF94();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_29();
    v7 = swift_slowAlloc();
    v66 = OUTLINED_FUNCTION_9_0();
    *v6 = 138543618;
    *(v6 + 4) = v3;
    *v7 = v3;
    *(v6 + 12) = 2082;
    v8 = 0xE700000000000000;
    v9 = 0x636972656E6567;
    switch(*(v2 + 16))
    {
      case 1:
        v9 = 0xD000000000000014;
        v8 = 0x8000000222E429C0;
        break;
      case 2:
        OUTLINED_FUNCTION_12_0();
        v9 = v11 | 1;
        break;
      case 3:
        OUTLINED_FUNCTION_12_0();
        v9 = v12 | 3;
        break;
      case 4:
        OUTLINED_FUNCTION_12_0();
        v9 = v10 + 4;
        break;
      case 5:
        v8 = 0xEF72656873696E69;
        v9 = 0x4674736575716572;
        break;
      default:
        break;
    }

    v13 = v3;
    v14 = sub_222E16068(v9, v8, &v66);

    *(v6 + 14) = v14;
    OUTLINED_FUNCTION_25();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    sub_222E1D890(v7, &qword_27D04D460, &qword_222E41680);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_9();
  }

  switch(*(v2 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_5_0();
      sub_222E1CDD0();
      goto LABEL_34;
    case 2:
      OUTLINED_FUNCTION_5_0();
      sub_222E22990();
      goto LABEL_34;
    case 3:
      OUTLINED_FUNCTION_5_0();
      sub_222E28C2C();
      goto LABEL_34;
    case 4:
      v45 = OUTLINED_FUNCTION_5_0();
      v46 = sub_222E230AC(v45);
      goto LABEL_34;
    case 5:
      v47 = OUTLINED_FUNCTION_5_0();
      v46 = sub_222E22F6C(v47);
LABEL_34:
      v48 = v46;
      goto LABEL_35;
    default:
      v22 = sub_222E1F59C(v20, v21);
      if (!v22)
      {
        goto LABEL_18;
      }

      v23 = v22;
      v25 = *(v22 + 64);
      v24 = *(v22 + 72);
      sub_222E3FC24();
      if (v25 == sub_222E3F914() && v24 == v26)
      {

LABEL_38:
        sub_222E21160();
        v48 = v50;

LABEL_35:

        return v48 & 1;
      }

      v28 = sub_222E40294();

      if (v28 & 1) != 0 || ((*(*v23 + 224))(v3))
      {
        goto LABEL_38;
      }

LABEL_18:
      v29 = sub_222E3F914();
      v31 = sub_222E1BC88(v29, v30);
      v32 = OUTLINED_FUNCTION_34();
      v34 = sub_222E1F444(v32, v33, v31);

      if (v34)
      {
        goto LABEL_38;
      }

      v37 = sub_222E1BC88(v35, v36);
      v38 = v37 + 64;
      v39 = 1 << *(v37 + 32);
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      v41 = v40 & *(v37 + 64);
      v42 = (v39 + 63) >> 6;
      v64 = v37;
      sub_222E3FC24();
      v43 = 0;
      if (v41)
      {
        while (1)
        {
          v44 = v43;
LABEL_26:
          v65 = *(**(*(v64 + 56) + 8 * (__clz(__rbit64(v41)) | (v44 << 6))) + 224);
          sub_222E3FC24();

          if (v65(v3))
          {
            break;
          }

          v41 &= v41 - 1;

          v43 = v44;
          if (!v41)
          {
            goto LABEL_23;
          }
        }

        sub_222E21160();
        v48 = v63;

        return v48 & 1;
      }

      while (1)
      {
LABEL_23:
        v44 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          __break(1u);
          JUMPOUT(0x222E1CADCLL);
        }

        if (v44 >= v42)
        {
          break;
        }

        v41 = *(v38 + 8 * v44);
        ++v43;
        if (v41)
        {
          goto LABEL_26;
        }
      }

      v51 = v3;
      v52 = sub_222E3FB04();
      v53 = sub_222E3FF94();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = OUTLINED_FUNCTION_29();
        v66 = OUTLINED_FUNCTION_45();
        *v54 = 136446466;
        swift_getObjectType();
        v55 = sub_222E403A4();
        v57 = sub_222E16068(v55, v56, &v66);

        *(v54 + 4) = v57;
        *(v54 + 12) = 2082;
        v58 = sub_222E3F914();
        v60 = sub_222E16068(v58, v59, &v66);

        *(v54 + 14) = v60;
        OUTLINED_FUNCTION_39(&dword_222E12000, v61, v62, "Not handling message: %{public}s with requestId: %{public}s since no handlers were found");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_0();
        OUTLINED_FUNCTION_6();
      }

      return 0;
  }
}

uint64_t sub_222E1CB0C(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v24 = a2;
  if (a5)
  {
    v8 = a4;
  }

  else
  {
    v8 = 0;
  }

  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  LODWORD(v10) = *(v5 + 16);
  if (v10 == 2)
  {
    v10 = objc_opt_self();
    sub_222E3FC24();
    v11 = sub_222E3FCA4();
    LOBYTE(v10) = [v10 isNLServerFallbackDisabledForLocale_];
  }

  else
  {
    sub_222E3FC24();
  }

  LODWORD(v12) = *(v5 + 17);
  if (v12 == 2)
  {
    v12 = objc_opt_self();
    v13 = sub_222E3FCA4();
    LOBYTE(v12) = [v12 isDomainServerFallbackDisabledForLocale_];
  }

  if (a1)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  v15 = &selRef_shouldDisableServerFallbackDomain;
  if ((a1 & 1) == 0)
  {
    v15 = &selRef_shouldDisableServerFallbackNL;
  }

  v16 = [*(v5 + 24) *v15];
  if (qword_28131F210 != -1)
  {
    swift_once();
  }

  v17 = sub_222E3FB14();
  __swift_project_value_buffer(v17, qword_28131FFA0);
  sub_222E3FC24();
  sub_222E3FC24();
  v18 = sub_222E3FB04();
  v19 = sub_222E3FFC4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 67110146;
    *(v20 + 4) = v14 & v16 & 1;
    *(v20 + 8) = 1024;
    *(v20 + 10) = v14 & 1;
    *(v20 + 14) = 1024;
    *(v20 + 16) = v16 & 1;
    *(v20 + 20) = 2080;
    *(v20 + 22) = sub_222E16068(v25, a3, &v26);
    *(v20 + 30) = 2082;
    v22 = sub_222E16068(v8, v9, &v26);

    *(v20 + 32) = v22;
    _os_log_impl(&dword_222E12000, v18, v19, "[ServerFallbackUtils] shouldDisableServerFallback returns %{BOOL}d with disabledByFeatureFlag = %{BOOL}d and disabledByABExperiment = %{BOOL}d for requestId: %s and locale %{public}s", v20, 0x28u);
    swift_arrayDestroy();
    MEMORY[0x223DD12D0](v21, -1, -1);
    MEMORY[0x223DD12D0](v20, -1, -1);
  }

  else
  {
  }

  return v14 & v16 & 1;
}

void sub_222E1CDD0()
{
  OUTLINED_FUNCTION_11();
  v2 = v0;
  v109 = v3;
  v5 = v4;
  v100 = sub_222E3FBA4();
  OUTLINED_FUNCTION_0();
  v99 = v6;
  v8 = MEMORY[0x28223BE20](v7);
  v97 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v98 = &v94 - v10;
  v11 = sub_222E3FB34();
  OUTLINED_FUNCTION_0();
  v96 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v108 = sub_222E3F794();
  OUTLINED_FUNCTION_0();
  v103 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v102 = v20 - v19;
  sub_222E3FB54();
  OUTLINED_FUNCTION_0();
  v106 = v22;
  v107 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  sub_222E3FB84();
  OUTLINED_FUNCTION_0();
  v104 = v27;
  v105 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32();
  v28 = qword_28131FFC0;
  v29 = v5;
  v111 = v28;
  v30 = sub_222E3FB04();
  v31 = sub_222E3FF94();

  v32 = OUTLINED_FUNCTION_44();
  v101 = v11;
  v95 = v16;
  if (v32)
  {
    v33 = OUTLINED_FUNCTION_10();
    *&v112 = OUTLINED_FUNCTION_9_0();
    *v33 = 136446210;
    swift_getObjectType();
    v34 = sub_222E403A4();
    v36 = v29;
    v37 = sub_222E16068(v34, v35, &v112);

    *(v33 + 4) = v37;
    v29 = v36;
    _os_log_impl(&dword_222E12000, v30, v31, "Starting active request with message: %{public}s", v33, 0xCu);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7_0();
  }

  v38 = sub_222E3F914();
  v40 = v39;
  sub_222E1BC88(v38, v39);
  v41 = OUTLINED_FUNCTION_30();
  v42 = sub_222E1F444(v41, v40, v2);

  v110 = v38;
  if (v42)
  {
    v108 = v29;
    v43 = sub_222E3FC24();
    v103 = v2;
    v44 = OUTLINED_FUNCTION_43(v43);
    v45 = sub_222E3FF94();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_10();
      *&v112 = OUTLINED_FUNCTION_9_0();
      *v46 = 136446210;
      *(v46 + 4) = sub_222E16068(v38, v40, &v112);
      _os_log_impl(&dword_222E12000, v44, v45, "Found an existing candidate RequestProcessor for requestId: %{public}s", v46, 0xCu);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }

    v114 = sub_222E29A48;
    v115 = v42;
    *&v112 = MEMORY[0x277D85DD0];
    *(&v112 + 1) = 1107296256;
    OUTLINED_FUNCTION_0_2();
    *&v113 = v47;
    *(&v113 + 1) = &block_descriptor_41;
    v48 = _Block_copy(&v112);

    sub_222E3FB64();
    v116 = MEMORY[0x277D84F90];
    sub_222E1F670();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
    sub_222E1F60C();
    v49 = v107;
    sub_222E400F4();
    v50 = OUTLINED_FUNCTION_35();
    MEMORY[0x223DD0840](v50);
    _Block_release(v48);
    (*(v106 + 8))(v25, v49);
    (*(v104 + 8))(v1, v105);

    v2 = v103;
    OUTLINED_FUNCTION_24(v103 + qword_281320058, &v112);
    sub_222E2996C(v110, v40);
    swift_endAccess();

    v29 = v108;
  }

  else
  {
    v116 = v29;
    sub_222E3F924();
    v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D4E0, &qword_222E41590);
    if (swift_dynamicCast())
    {
      __swift_project_boxed_opaque_existential_1(&v112, *(&v113 + 1));
      OUTLINED_FUNCTION_30();
      v107 = sub_222E3F9D4();
      v66 = v65;
      __swift_destroy_boxed_opaque_existential_0(&v112);
    }

    else
    {
      v114 = 0;
      v112 = 0u;
      v113 = 0u;
      sub_222E1D890(&v112, &qword_27D04D4E8, &qword_222E41598);
      v107 = sub_222E3F914();
      v66 = v67;
    }

    v68 = sub_222E3F954();
    v70 = v69;
    v71 = v102;
    sub_222E3F934();
    (*(*v2 + 472))(v110, v40, v68, v70, v71, 0, v107, v66);
    v72 = OUTLINED_FUNCTION_37();
    v73(v72);
  }

  if (sub_222E1F59C(v51, v52))
  {
    v53 = *(v2 + qword_28131FED0);

    if (v53 & 1) != 0 && ((v108 = v29, v54 = , v55 = OUTLINED_FUNCTION_43(v54), v56 = sub_222E3FF94(), , !os_log_type_enabled(v55, v56)) ? (v55, v64 = v101, v59 = v95) : (v57 = OUTLINED_FUNCTION_10(), v58 = OUTLINED_FUNCTION_9_0(), *&v112 = v58, *v57 = 136315138, v59 = v95, sub_222E27690(v60, v95), v61 = sub_222E3FCF4(), v63 = sub_222E16068(v61, v62, &v112), , *(v57 + 4) = v63, _os_log_impl(&dword_222E12000, v55, v56, "Will wait up to %s for the current active request to finish", v57, 0xCu), __swift_destroy_boxed_opaque_existential_0(v58), OUTLINED_FUNCTION_7(), OUTLINED_FUNCTION_7_0(), v55, v64 = v101), v74 = v97, sub_222E3FB94(), sub_222E27690(v75, v59), v76 = v98, MEMORY[0x223DD03D0](v74, v59), (*(v96 + 8))(v59, v64), v77 = *(v99 + 8), v78 = v74, v79 = v100, v77(v78, v100), sub_222E3FFE4(), v77(v76, v79), (sub_222E3FB44()))
    {

      v81 = OUTLINED_FUNCTION_43(v80);
      sub_222E3FFA4();

      if (OUTLINED_FUNCTION_44())
      {
        v82 = OUTLINED_FUNCTION_10();
        v83 = OUTLINED_FUNCTION_9_0();
        *&v112 = v83;
        *v82 = 136315138;
        sub_222E3FC24();
        v84 = OUTLINED_FUNCTION_22_0();
        v87 = sub_222E16068(v84, v85, v86);

        *(v82 + 4) = v87;
        OUTLINED_FUNCTION_25();
        _os_log_impl(v88, v89, v90, v91, v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v83);
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_9();
      }
    }

    else
    {
    }
  }

  else
  {
  }

  sub_222E21118(v93);
  sub_222E21160();

  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E1D890(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_222E1D92C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D428, &qword_222E41900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RequestProcessorBase.init(assistantId:sessionId:requestId:name:messagePublisher:serviceHelper:rootLevelRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_10_4(a1, a2, a3, a4, a5, a6, a7, a8);
  v15 = v14;
  v17 = v16;
  v35 = v18;
  sub_222E40004();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_42_0();
  v38 = sub_222E40014();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  v26 = sub_222E3FB84();
  MEMORY[0x28223BE20](v26 - 8);
  OUTLINED_FUNCTION_3();
  v11[11] = dispatch_group_create();
  v27 = (v11 + OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_rootRequestId);
  *v27 = 0;
  v27[1] = 0;
  v11[12] = v17;
  v11[13] = v15;
  sub_222E3F794();
  OUTLINED_FUNCTION_8_4();
  v29 = v28;
  v30 = OUTLINED_FUNCTION_11_3();
  v31(v30);
  v11[8] = v35;
  v11[9] = v13;
  sub_222E15C70(v12, (v11 + 3));
  v11[2] = a9;
  v32 = (v11 + OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_rootLevelRequestId);
  *v32 = a10;
  v32[1] = a11;
  sub_222E1DC7C();
  sub_222E3FC24();
  swift_unknownObjectRetain();
  sub_222E40144();

  OUTLINED_FUNCTION_2_4();
  MEMORY[0x223DD0550]();

  MEMORY[0x223DD0550](46, 0xE100000000000000);
  MEMORY[0x223DD0550](v35, v13);

  sub_222E3FB74();
  (*(v21 + 104))(v25, *MEMORY[0x277D85268], v38);
  sub_222E200C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D800, &qword_222E426C0);
  v33 = sub_222E20140();
  OUTLINED_FUNCTION_7_4(v33);
  OUTLINED_FUNCTION_6_1();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v36);
  (*(v29 + 8))(v37, v17);
  return OUTLINED_FUNCTION_9_4();
}

unint64_t sub_222E1DC7C()
{
  result = qword_28131F1A0;
  if (!qword_28131F1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131F1A0);
  }

  return result;
}

uint64_t AsyncSequentialExecutor.__allocating_init(label:priority:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_222E3FB14();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D428, &qword_222E41900);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  sub_222E1DE5C(a3, &v15 - v11);
  if (qword_28131F208 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_28131FF88);
  (*(v6 + 16))(v9, v12, v4);
  type metadata accessor for AsyncSequentialExecutor(0);
  v13 = swift_allocObject();
  AsyncSequentialExecutor.init(label:priority:logger:)();
  sub_222E1D92C(a3);
  return v13;
}

uint64_t sub_222E1DE5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D428, &qword_222E41900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_222E1DEF8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = [a1 groupIdentifier];
  if (v11)
  {
    v12 = v11;
    v86 = a2;
    v13 = sub_222E3FCB4();
    v15 = v14;

    v16 = sub_222E1E620();
    v87 = v13;
    v88 = v15;
    v17 = *(v10 + 80);
    type metadata accessor for MessageDispatchingBridgeBase.CommandHandlerBase(255, v17, v18, v19);
    sub_222E3FC54();
    sub_222E3FC64();

    if (v89)
    {
      v20 = [a1 encodedClassName];
      if (v20)
      {
        v21 = v20;
        v22 = sub_222E3FCB4();
        v24 = v23;

        v87 = v22;
        v88 = v24;
        sub_222E3FC64();

        v25 = v89;
        v26 = a1;
        v27 = sub_222E3FB04();
        v28 = sub_222E3FF94();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = OUTLINED_FUNCTION_10();
          v81 = OUTLINED_FUNCTION_9_0();
          v87 = v81;
          *v29 = 136446210;
          v84 = v26;
          v30 = [v26 debugDescription];
          v31 = a4;
          v32 = sub_222E3FCB4();
          v33 = a3;
          v35 = v34;

          v36 = v32;
          a4 = v31;
          sub_222E16068(v36, v35, &v87);
          OUTLINED_FUNCTION_13_1();
          a3 = v33;

          *(v29 + 4) = v30;
          v26 = v84;
          OUTLINED_FUNCTION_26_0(&dword_222E12000, v37, v28, "Dispatching command %{public}s to the handle method");
          __swift_destroy_boxed_opaque_existential_0(v81);
          OUTLINED_FUNCTION_7_0();
          OUTLINED_FUNCTION_7();
        }

        (*(*v25 + 88))(v5, v26, v86, a3, a4);

        return;
      }

      v64 = a1;
      v58 = sub_222E3FB04();
      v65 = sub_222E3FFA4();

      if (os_log_type_enabled(v58, v65))
      {
        v66 = OUTLINED_FUNCTION_10();
        v83 = OUTLINED_FUNCTION_9_0();
        v87 = v83;
        *v66 = 136446210;
        v67 = [v64 debugDescription];
        v68 = sub_222E3FCB4();
        v70 = v69;

        sub_222E16068(v68, v70, &v87);
        OUTLINED_FUNCTION_13_1();

        *(v66 + 4) = v67;
        OUTLINED_FUNCTION_26_0(&dword_222E12000, v71, v65, "Command %{public}s does not have encodedClassName");
        __swift_destroy_boxed_opaque_existential_0(v83);
        goto LABEL_16;
      }
    }

    else
    {
      v57 = a1;

      v58 = sub_222E3FB04();
      v59 = sub_222E3FFA4();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = OUTLINED_FUNCTION_29();
        v87 = OUTLINED_FUNCTION_45();
        *v60 = 136446466;
        *(v60 + 4) = sub_222E16068(v5[2], v5[3], &v87);
        *(v60 + 12) = 2082;
        v82 = v59;
        v61 = [v57 debugDescription];
        sub_222E3FCB4();
        OUTLINED_FUNCTION_19_1();
        v62 = OUTLINED_FUNCTION_14_0();
        v17 = v16;
        sub_222E16068(v62, a3, v63);
        OUTLINED_FUNCTION_13_1();

        *(v60 + 14) = v61;
        _os_log_impl(&dword_222E12000, v58, v82, "%{public}s was not able to handle: %{public}s: Command group is not registered with bridge", v60, 0x16u);
        swift_arrayDestroy();
LABEL_16:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_7();
      }
    }

    v74 = type metadata accessor for MessageDispatchingBridgeBase(0, v17, v72, v73);
    OUTLINED_FUNCTION_5_1(v74);
    v75 = OUTLINED_FUNCTION_10_2();
    Bridge.defaultHandle(_:executionContextInfo:reply:)(v75, v76, v77, v78, v79, v80);
    return;
  }

  v38 = a1;
  v39 = sub_222E3FB04();
  v40 = sub_222E3FFA4();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_10();
    v85 = OUTLINED_FUNCTION_9_0();
    v87 = v85;
    *v41 = 136446210;
    v42 = [v38 debugDescription];
    sub_222E3FCB4();
    v44 = v43;

    v45 = OUTLINED_FUNCTION_14_0();
    sub_222E16068(v45, v44, v46);
    OUTLINED_FUNCTION_13_1();

    *(v41 + 4) = v42;
    OUTLINED_FUNCTION_26_0(&dword_222E12000, v47, v40, "Command %{public}s does not have group identifier");
    __swift_destroy_boxed_opaque_existential_0(v85);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  v50 = type metadata accessor for MessageDispatchingBridgeBase(0, *(v10 + 80), v48, v49);
  OUTLINED_FUNCTION_5_1(v50);
  v51 = OUTLINED_FUNCTION_10_2();

  Bridge.defaultHandle(_:executionContextInfo:reply:)(v51, v52, v53, v54, v55, v56);
}

void sub_222E1E644(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a1;
  v10 = swift_unknownObjectRetain();
  OUTLINED_FUNCTION_18_0(v10, v11, v12, v13, v14, v15, v16, v17, v46);
  if (swift_dynamicCast())
  {
    if (swift_dynamicCastUnknownClass())
    {
      v18 = *(v5 + 16);
      v19 = a2;
      v18(v47);
      v20 = OUTLINED_FUNCTION_16_0();
      v21(v20, a3, a4, a5);
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = a2;
      v36 = sub_222E3FB04();
      v37 = sub_222E3FFA4();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = OUTLINED_FUNCTION_29();
        v48 = OUTLINED_FUNCTION_45();
        *v38 = 136446466;
        swift_getObjectType();
        v39 = sub_222E403A4();
        sub_222E16068(v39, v40, &v48);

        v41 = OUTLINED_FUNCTION_24_1();
        v43 = sub_222E16068(v41, v42, &v48);

        *(v38 + 14) = v43;
        OUTLINED_FUNCTION_33_1(&dword_222E12000, v44, v45, "Input command type: %{public}s but expected type: %{public}s");
        OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_7_0();
        OUTLINED_FUNCTION_7();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v22 = sub_222E3FB04();
    v23 = sub_222E3FF94();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_29();
      v48 = OUTLINED_FUNCTION_45();
      *v24 = 136446466;
      swift_getObjectType();
      v25 = sub_222E403A4();
      v27 = v26;
      sub_222E16068(v25, v26, &v48);

      v28 = OUTLINED_FUNCTION_25_1();
      sub_222E16068(v28, v29, &v48);
      OUTLINED_FUNCTION_30_1();

      *(v24 + 14) = v27;
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v30, v31, v32, v33, v34, 0x16u);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_7();
    }
  }
}

void sub_222E1E918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_11();
  v63 = v24;
  v64 = v23;
  v66 = v26;
  v67 = v25;
  v68 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = *v21;
  v35 = sub_222E3FB54();
  OUTLINED_FUNCTION_0();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3();
  v41 = v40 - v39;
  v69 = sub_222E3FB84();
  OUTLINED_FUNCTION_0();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32();
  v45 = [v33 refId];
  if (v45)
  {

    v62 = *(v31 + 88);
    OUTLINED_FUNCTION_33();
    v46 = swift_allocObject();
    v46[2] = *(v34 + 328);
    v46[3] = v63;
    v46[4] = a21;
    v46[5] = v64;
    v46[6] = v66;
    v46[7] = v31;
    v46[8] = v33;
    v46[9] = v29;
    v65 = v43;
    v46[10] = v67;
    v46[11] = v68;
    OUTLINED_FUNCTION_2_0(v46);
    v71[1] = 1107296256;
    OUTLINED_FUNCTION_0_2();
    v71[2] = v47;
    v71[3] = &block_descriptor_18;
    v48 = _Block_copy(v71);

    v49 = v33;
    v50 = v29;
    sub_222E1F6C8(v67, v68);
    sub_222E3FB64();
    sub_222E1F670();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
    sub_222E1F60C();
    sub_222E400F4();
    MEMORY[0x223DD0840](v62, v22, v41, v48);
    _Block_release(v48);
    (*(v37 + 8))(v41, v35);
    (*(v65 + 8))(v22, v69);

LABEL_5:
    OUTLINED_FUNCTION_12();
    return;
  }

  v51 = v33;
  v70 = sub_222E3FB04();
  v52 = sub_222E3FFA4();

  if (os_log_type_enabled(v70, v52))
  {
    v53 = OUTLINED_FUNCTION_10();
    v54 = OUTLINED_FUNCTION_9_0();
    v71[0] = v54;
    *v53 = 136315138;
    v55 = [v51 debugDescription];
    sub_222E3FCB4();

    v56 = OUTLINED_FUNCTION_34();
    v59 = sub_222E16068(v56, v57, v58);

    *(v53 + 4) = v59;
    _os_log_impl(&dword_222E12000, v70, v52, "Could not find a refId on this command: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();

    goto LABEL_5;
  }

  OUTLINED_FUNCTION_12();
}

void sub_222E1ED9C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_222E2BA34();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_222E1EE08(char *a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v5 = *a1;
  v6 = type metadata accessor for ActorBridgeWrapper.LoopTaskContainer(255, *(*a1 + 80), *(*a1 + 88), a4);
  v7 = sub_222E400C4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v21 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = *(v6 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v21 - v15;
  v17 = *(v5 + 104);
  swift_beginAccess();
  (*(v8 + 16))(v13, &a1[v17], v7);
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    return (*(v8 + 8))(v13, v7);
  }

  (*(v14 + 32))(v16, v13, v6);
  v19 = v22(v16);
  result = (*(v14 + 8))(v16, v6);
  if (v19)
  {
    v20 = v21;
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v6);
    swift_beginAccess();
    (*(v8 + 40))(&a1[v17], v20, v7);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_222E1F0DC(uint64_t a1)
{
  v1 = sub_222E3F794();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222E3F934();
  v5 = sub_222E3F764();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

unint64_t OUTLINED_FUNCTION_48()
{

  return sub_222E16068(v0, v1, (v2 - 128));
}

uint64_t sub_222E1F1FC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_22();

  return v3();
}

uint64_t sub_222E1F2E0()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1)
{

  return sub_222E3FB04();
}

BOOL OUTLINED_FUNCTION_43_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return swift_slowAlloc();
}

uint64_t sub_222E1F444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_222E18808(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222E1F4D8()
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_222E2BA2C;

  return sub_222E1F70C(v3, v0);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_222E1F60C()
{
  result = qword_28131F1F0;
  if (!qword_28131F1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D04D7E0, &qword_222E41418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131F1F0);
  }

  return result;
}

unint64_t sub_222E1F670()
{
  result = qword_28131F200;
  if (!qword_28131F200)
  {
    sub_222E3FB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131F200);
  }

  return result;
}

uint64_t sub_222E1F6C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_222E1F70C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222E1F1FC;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200460](a1, a2, v6);
}

uint64_t dispatch thunk of InstrumentationUtil.buildRequestLinkEvent(sourceComponent:sourceUUID:targetComponent:targetUUID:)()
{
  return (*(*v0 + 128))();
}

{
  return (*(*v0 + 120))();
}

NSObject *sub_222E1F7E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (!v12)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_28131F210);
    }

    v22 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v22, qword_28131FFA0);
    v13 = sub_222E3FB04();
    v23 = sub_222E3FFA4();
    if (os_log_type_enabled(v13, v23))
    {
      v24 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v24 = 136315394;
      v25 = sub_222E40074();
      v27 = sub_222E16068(v25, v26, &v60);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v28 = sub_222E40074();
      v30 = sub_222E16068(v28, v29, &v60);

      *(v24 + 14) = v30;
      _os_log_impl(&dword_222E12000, v13, v23, "Failed to create RequestLink event for source component: %s and target component: %s during buildRequestLinkEvent", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }

    goto LABEL_16;
  }

  v13 = v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v14)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_28131F210);
    }

    v31 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v31, qword_28131FFA0);
    v32 = sub_222E3FB04();
    v33 = sub_222E3FFA4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_10();
      v35 = OUTLINED_FUNCTION_9_0();
      v60 = v35;
      *v34 = 136315138;
      v36 = sub_222E40074();
      v38 = sub_222E16068(v36, v37, &v60);

      *(v34 + 4) = v38;
      OUTLINED_FUNCTION_8_2(&dword_222E12000, v39, v40, "Failed to create source link event for source component: %s during buildRequestLinkEvent");
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }

LABEL_16:
    return 0;
  }

  v15 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v16)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_28131F210);
    }

    v41 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v41, qword_28131FFA0);
    v42 = sub_222E3FB04();
    v43 = sub_222E3FFA4();
    if (OUTLINED_FUNCTION_3_2(v43))
    {
      v44 = OUTLINED_FUNCTION_10();
      v45 = OUTLINED_FUNCTION_9_0();
      v60 = v45;
      *v44 = 136315138;
      v46 = sub_222E40074();
      v48 = sub_222E16068(v46, v47, &v60);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_222E12000, v42, a2, "Failed to create target link event for target component: %s during buildRequestLinkEvent", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      OUTLINED_FUNCTION_1_3();
      OUTLINED_FUNCTION_7();
    }

    goto LABEL_27;
  }

  v17 = v16;
  v18 = sub_222E189EC(a2, a3);
  if (!v18)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_28131F210);
    }

    v49 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v49, qword_28131FFA0);
    sub_222E3FC24();
    v50 = sub_222E3FB04();
    v51 = sub_222E3FFA4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_10();
      v53 = OUTLINED_FUNCTION_9_0();
      v60 = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_222E16068(a2, a3, &v60);
      _os_log_impl(&dword_222E12000, v50, v51, "Invaid sourceUUID = %s during buildRequestLinkEvent ", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_1_3();
    }

LABEL_27:
    return 0;
  }

  v19 = v18;
  v20 = sub_222E189EC(a5, a6);
  if (!v20)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_28131F210);
    }

    v55 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v55, qword_28131FFA0);
    sub_222E3FC24();
    v56 = sub_222E3FB04();
    v57 = sub_222E3FFA4();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = OUTLINED_FUNCTION_10();
      v59 = OUTLINED_FUNCTION_9_0();
      v60 = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_222E16068(a5, a6, &v60);
      _os_log_impl(&dword_222E12000, v56, v57, "Invaid targetUUID = %s during buildRequestLinkEvent ", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      OUTLINED_FUNCTION_1_3();
      OUTLINED_FUNCTION_7();
    }

    return 0;
  }

  v21 = v20;
  [v15 setComponent_];
  [v15 setUuid_];
  [v17 setComponent_];
  [v17 setUuid_];
  [v13 setSource:v15];
  [v13 setTarget:v17];

  return v13;
}

char *OUTLINED_FUNCTION_12_3(uint64_t a1)
{
  v6 = *(v3 - 176);
  v7 = *(v3 - 168);

  return MessageDispatchingBridgeBase.init(_:_:_:_:_:_:)(v6, v7, (v3 - 120), v1, a1, (v3 - 160), v2);
}

uint64_t sub_222E1FE44()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = (*(v0 + 40))(*(v0 + 56));
  v5(v1, v2, v3, v4);
}

void sub_222E1FEC4()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D440, &unk_222E41270);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  swift_bridgeObjectRetain_n();

  v16 = sub_222E3FB04();
  v17 = sub_222E3FF94();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_10();
    v24[0] = v5;
    v19 = v18;
    v20 = OUTLINED_FUNCTION_9_0();
    v24[1] = v1;
    v25[0] = v20;
    v21 = v10;
    v22 = v9;
    v23 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_222E16068(v22, v7, v25);
    _os_log_impl(&dword_222E12000, v16, v17, "#AsyncSequentialExecutor Submitting async task: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v9 = v22;
    v10 = v21;
    OUTLINED_FUNCTION_7();
    v5 = v24[0];
    OUTLINED_FUNCTION_7();
  }

  v25[0] = v5;
  v25[1] = v3;
  v25[2] = v9;
  v25[3] = v7;
  sub_222E3FC24();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D420, &unk_222E41240);
  sub_222E3FE94();

  (*(v12 + 8))(v15, v10);
  OUTLINED_FUNCTION_12();
}

unint64_t sub_222E200C4()
{
  result = qword_28131F1A8;
  if (!qword_28131F1A8)
  {
    sub_222E40004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131F1A8);
  }

  return result;
}

unint64_t sub_222E20140()
{
  result = qword_28131F1E8;
  if (!qword_28131F1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D04D800, &qword_222E426C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131F1E8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_222E201B4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t storeEnumTagSinglePayload for SimpleSubscriptionRegistrar.Error(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t objectdestroyTm()
{

  if (*(v0 + 80))
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void sub_222E202B0()
{
  OUTLINED_FUNCTION_11();
  v2 = v0;
  v62 = v3;
  sub_222E3F794();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  sub_222E3F924();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    if ((*(v0 + qword_28131FCF0) & 1) == 0)
    {
      v63 = v62;

      v9 = sub_222E3FB04();
      sub_222E3FFA4();

      if (!OUTLINED_FUNCTION_28_3())
      {

        goto LABEL_36;
      }

      v10 = OUTLINED_FUNCTION_10();
      v11 = OUTLINED_FUNCTION_9_0();
      v65 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_222E16068(*(v2 + 16), *(v2 + 24), &v65);
      OUTLINED_FUNCTION_8_3();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_6();

LABEL_10:
      OUTLINED_FUNCTION_12();
      return;
    }

    v6 = v5;
    sub_222E3F834();
    if (swift_dynamicCastClass())
    {
      v62;
      sub_222E2091C();
LABEL_36:
      OUTLINED_FUNCTION_12();

      return;
    }

    sub_222E3F804();
    if (swift_dynamicCastClass())
    {
      v62;
      sub_222E23868();
      goto LABEL_36;
    }

    v17 = sub_222E210A0();
    if (v17)
    {
      v19 = *(v17 + 64);
      v18 = *(v17 + 72);
      v20 = v62;
      sub_222E3FC24();
    }

    else
    {
      v21 = v62;
      v19 = 0;
      v18 = 0;
    }

    v22 = sub_222E3F914();
    if (v18)
    {
      if (v19 == v22 && v18 == v23)
      {

LABEL_32:
        sub_222E21784();
        goto LABEL_36;
      }

      v25 = sub_222E40294();

      if (v25)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    if ((*(v0 + qword_28131FCF8) & 1) == 0)
    {
      if (!sub_222E210A0())
      {
        v26 = v62;
        v64 = sub_222E3FB04();
        v44 = sub_222E3FF94();

        if (os_log_type_enabled(v64, v44))
        {
          v45 = OUTLINED_FUNCTION_9_0();
          v65 = OUTLINED_FUNCTION_27_2();
          *v45 = 136315650;
          sub_222E3F974();
          OUTLINED_FUNCTION_0_8();
          sub_222E16B58(v46, v47, MEMORY[0x277CC9628]);
          sub_222E40264();
          v48 = OUTLINED_FUNCTION_17_1();
          v49(v48);
          v50 = OUTLINED_FUNCTION_23_0();
          v52 = sub_222E16068(v50, v1, v51);

          *(v45 + 4) = v52;
          *(v45 + 12) = 2080;
          swift_getObjectType();
          v53 = sub_222E403A4();
          v55 = OUTLINED_FUNCTION_22_2(v53, v54);

          *(v45 + 14) = v55;
          *(v45 + 22) = 2080;
          v56 = sub_222E3F914();
          OUTLINED_FUNCTION_22_2(v56, v57);
          OUTLINED_FUNCTION_25_3();

          *(v45 + 24) = v6;
          _os_log_impl(&dword_222E12000, v64, v44, "Receiving message id: %s of type: %s for request Id: %s but current request id not set", v45, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_7();
LABEL_41:
          OUTLINED_FUNCTION_7();

          goto LABEL_10;
        }

LABEL_35:

        goto LABEL_36;
      }
    }

    v26 = v62;

    v64 = sub_222E3FB04();
    v27 = sub_222E3FFA4();

    if (os_log_type_enabled(v64, v27))
    {
      v28 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v28 = 136315906;
      sub_222E3F974();
      OUTLINED_FUNCTION_0_8();
      sub_222E16B58(v29, v30, MEMORY[0x277CC9628]);
      sub_222E40264();
      v31 = OUTLINED_FUNCTION_17_1();
      v32(v31);
      v33 = OUTLINED_FUNCTION_23_0();
      v35 = sub_222E16068(v33, v1, v34);

      *(v28 + 4) = v35;
      *(v28 + 12) = 2080;
      swift_getObjectType();
      v36 = sub_222E403A4();
      v38 = OUTLINED_FUNCTION_22_2(v36, v37);

      *(v28 + 14) = v38;
      *(v28 + 22) = 2080;
      v39 = sub_222E3F914();
      OUTLINED_FUNCTION_22_2(v39, v40);
      OUTLINED_FUNCTION_25_3();

      *(v28 + 24) = v6;
      *(v28 + 32) = 2080;
      v41 = sub_222E210A0();
      if (v41)
      {
        v43 = *(v41 + 64);
        v42 = *(v41 + 72);
        sub_222E3FC24();
      }

      else
      {
        v42 = 0xE700000000000000;
        v43 = 0x74657320746F4ELL;
      }

      v60 = OUTLINED_FUNCTION_23_0();
      sub_222E16068(v60, v42, v61);
      OUTLINED_FUNCTION_21_2();
      *(v28 + 34) = v43;
      _os_log_impl(&dword_222E12000, v64, v27, "Receiving message id: %s of type: %s for request Id: %s but current request id: %s", v28, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  OUTLINED_FUNCTION_12();

  sub_222E163D0(v7);
}

void sub_222E2091C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  sub_222E3FB34();
  OUTLINED_FUNCTION_0();
  v81 = v5;
  v82 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = sub_222E3FBA4();
  OUTLINED_FUNCTION_0();
  v80 = v10;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v78 - v15;
  sub_222E3F794();
  OUTLINED_FUNCTION_0();
  v85 = v18;
  v86 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v84 = v20 - v19;
  v21 = sub_222E3F914();
  v23 = v22;
  v88 = v3;
  v83 = sub_222E3F954();
  v87 = v24;
  v25 = sub_222E210A0();
  if (!v25)
  {
LABEL_7:
    v79 = v21;
    v30 = sub_222E210A0();
    v31 = v23;
    if (!v30)
    {
      goto LABEL_22;
    }

    v32 = v30;
    v78 = qword_28131FFC0;
    v33 = sub_222E3FB04();
    v34 = sub_222E3FFA4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_222E12000, v33, v34, "We still have previous processor checking waiting for it to finish", v35, 2u);
      v31 = v23;
      OUTLINED_FUNCTION_7();
    }

    v36 = *(v32 + 88);
    sub_222E3FB94();
    sub_222E39EEC(v8);
    MEMORY[0x223DD03D0](v14, v8);
    (*(v81 + 8))(v8, v82);
    v37 = *(v80 + 8);
    v37(v14, v9);
    sub_222E3FFE4();

    v37(v16, v9);
    v38 = sub_222E3FB44();

    v39 = sub_222E3FB04();
    if (v38)
    {
      sub_222E3FFA4();

      if (OUTLINED_FUNCTION_28_3())
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_222E3FF94();

      if (OUTLINED_FUNCTION_28_3())
      {
LABEL_20:
        v58 = OUTLINED_FUNCTION_10();
        v59 = OUTLINED_FUNCTION_9_0();
        v89 = v59;
        *v58 = 136315138;
        v60 = *(v32 + 64);
        v61 = *(v32 + 72);
        sub_222E3FC24();
        v62 = sub_222E16068(v60, v61, &v89);

        *(v58 + 4) = v62;
        OUTLINED_FUNCTION_8_3();
        _os_log_impl(v63, v64, v65, v66, v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_6();

        goto LABEL_22;
      }
    }

LABEL_22:
    v68 = v84;
    sub_222E3F934();
    v69 = (*(*v1 + 496))(v83, v87, v68, v79, v31);

    (*(v85 + 8))(v68, v86);
    if (v69)
    {

      sub_222E2172C(v70);
      sub_222E21784();
    }

    else
    {
      v71 = sub_222E3FB04();
      v72 = sub_222E3FFA4();
      if (os_log_type_enabled(v71, v72))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_8_3();
        _os_log_impl(v73, v74, v75, v76, v77, 2u);
        OUTLINED_FUNCTION_6();
      }

      sub_222E2172C(0);
    }

    goto LABEL_27;
  }

  v27 = *(v25 + 64);
  v26 = *(v25 + 72);
  sub_222E3FC24();

  if (v27 == v21 && v26 == v23)
  {
  }

  else
  {
    v29 = sub_222E40294();

    if ((v29 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v40 = v88;
  sub_222E3FC24();
  v88 = sub_222E3FB04();
  v41 = sub_222E3FFA4();

  if (os_log_type_enabled(v88, v41))
  {
    v42 = OUTLINED_FUNCTION_9_0();
    v89 = OUTLINED_FUNCTION_27_2();
    *v42 = 136315650;
    v43 = sub_222E16068(v21, v23, &v89);

    *(v42 + 4) = v43;
    *(v42 + 12) = 2080;
    v44 = v84;
    sub_222E3F974();
    OUTLINED_FUNCTION_0_8();
    sub_222E16B58(v45, v46, MEMORY[0x277CC9628]);
    v47 = v86;
    sub_222E40264();
    v49 = v48;
    (*(v85 + 8))(v44, v47);
    v50 = OUTLINED_FUNCTION_23_0();
    v52 = sub_222E16068(v50, v49, v51);

    *(v42 + 14) = v52;
    *(v42 + 22) = 2080;
    swift_getObjectType();
    v53 = sub_222E403A4();
    v55 = OUTLINED_FUNCTION_22_2(v53, v54);

    *(v42 + 24) = v55;
    _os_log_impl(&dword_222E12000, v88, v41, "Got a duplicate start request message to requestId: %s messageId: %s type: %s ignoring the new start", v42, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7();

LABEL_27:
    OUTLINED_FUNCTION_12();
    return;
  }

  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E21118(uint64_t a1)
{
  v3 = qword_281320050;
  OUTLINED_FUNCTION_40(a1);
  *(v1 + v3) = a1;
}

void sub_222E21160()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_222E3FB54();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = sub_222E3FB84();
  OUTLINED_FUNCTION_0();
  v38 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32();
  swift_getObjectType();
  if ((*(*v6 + 128))())
  {
    v17 = sub_222E3FB04();
    sub_222E3FFA4();
    OUTLINED_FUNCTION_20();
    if (os_log_type_enabled(v17, v18))
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v19 = OUTLINED_FUNCTION_22_0();
  if ((v20(v19) & 1) == 0)
  {
    v17 = sub_222E3FB04();
    sub_222E3FF94();
    OUTLINED_FUNCTION_20();
    if (os_log_type_enabled(v17, v27))
    {
LABEL_7:
      v28 = OUTLINED_FUNCTION_10();
      v29 = OUTLINED_FUNCTION_9_0();
      v39[0] = v29;
      *v28 = 136446210;
      v30 = sub_222E403A4();
      v32 = sub_222E16068(v30, v31, v39);

      *(v28 + 4) = v32;
      OUTLINED_FUNCTION_23();
      _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7();
    }

LABEL_8:

    goto LABEL_9;
  }

  v21 = swift_allocObject();
  v21[2] = v6;
  v21[3] = v4;
  v21[4] = v2;
  OUTLINED_FUNCTION_2_0(v21);
  v39[1] = 1107296256;
  OUTLINED_FUNCTION_0_2();
  v39[2] = v22;
  v39[3] = &block_descriptor_32;
  v23 = _Block_copy(v39);

  v24 = v2;
  sub_222E3FB64();
  sub_222E1F670();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
  v25 = sub_222E1F60C();
  OUTLINED_FUNCTION_21(v25);
  v26 = OUTLINED_FUNCTION_35();
  MEMORY[0x223DD0840](v26);
  _Block_release(v23);
  (*(v9 + 8))(v13, v7);
  (*(v38 + 8))(v0, v14);

LABEL_9:
  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E2150C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222E21554(uint64_t a1, uint64_t a2)
{
  v2 = swift_unknownObjectRetain();
  OUTLINED_FUNCTION_18_0(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  result = swift_dynamicCast();
  if (result)
  {
    swift_unknownObjectRelease();
    return swift_dynamicCastClass() != 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1)
{

  return sub_222E400F4();
}

uint64_t OUTLINED_FUNCTION_21_2()
{
}

uint64_t sub_222E2172C(uint64_t a1)
{
  v3 = qword_281320028;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_222E21784()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v64 = *v0;
  v4 = sub_222E3F794();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v63 = v9 - v8;
  v10 = sub_222E3FB54();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v67 = v15 - v14;
  v16 = sub_222E3FB84();
  OUTLINED_FUNCTION_0();
  v66 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  v22 = sub_222E210A0();
  if (!v22)
  {
    goto LABEL_9;
  }

  v23 = v22;
  v58 = v6;
  v62 = v12;
  v24 = qword_28131FFC0;

  v25 = v3;
  v60 = v24;
  v26 = sub_222E3FB04();
  v27 = sub_222E3FF94();

  v59 = v4;
  v61 = v16;
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v57 = v10;
    v29 = v23;
    v30 = swift_slowAlloc();
    v31 = OUTLINED_FUNCTION_9_0();
    v68[0] = v31;
    *v28 = 136315394;
    *(v28 + 4) = sub_222E16068(v1[2], v1[3], v68);
    *(v28 + 12) = 2112;
    *(v28 + 14) = v25;
    *v30 = v25;
    v32 = v25;
    _os_log_impl(&dword_222E12000, v26, v27, "Bridge %s received message: %@", v28, 0x16u);
    sub_222E21E14(v30);
    v23 = v29;
    v10 = v57;
    OUTLINED_FUNCTION_7();
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  v33 = sub_222E14578(v25);
  if (((*(*v33 + 128))() & 1) == 0)
  {
    v46 = v23;
    v47 = *(v23 + 80);
    v48 = *(v23 + 88);
    OUTLINED_FUNCTION_18_2();
    v49 = swift_allocObject();
    v49[2] = *(v64 + 336);
    v49[3] = v33;
    v49[4] = v46;
    v49[5] = v25;
    OUTLINED_FUNCTION_2_0(v49);
    v68[1] = 1107296256;
    OUTLINED_FUNCTION_0_2();
    v68[2] = v50;
    v68[3] = &block_descriptor_16;
    v51 = _Block_copy(v68);
    v52 = v25;
    v53 = v47;
    v65 = v48;

    sub_222E3FB64();
    OUTLINED_FUNCTION_3_4();
    sub_222E16B58(v54, v55, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
    sub_222E1F60C();
    sub_222E400F4();
    MEMORY[0x223DD0840](v48, v21, v67, v51);
    _Block_release(v51);

    (*(v62 + 8))(v67, v10);
    (*(v66 + 8))(v21, v61);
    goto LABEL_8;
  }

  v34 = v25;
  v35 = sub_222E3FB04();
  v36 = sub_222E3FFA4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v68[0] = swift_slowAlloc();
    *v37 = 136315394;
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7F0, &unk_222E426B0);
    v38 = sub_222E3FCF4();
    sub_222E16068(v38, v39, v68);
    OUTLINED_FUNCTION_21_2();
    *(v37 + 4) = v1 + v60;
    *(v37 + 12) = 2080;
    sub_222E3F974();
    OUTLINED_FUNCTION_0_8();
    sub_222E16B58(v40, v41, MEMORY[0x277CC9628]);
    v42 = sub_222E40264();
    v44 = v43;
    (*(v58 + 8))(v63, v59);
    v45 = sub_222E16068(v42, v44, v68);

    *(v37 + 14) = v45;
    _os_log_impl(&dword_222E12000, v35, v36, "handleMessage got message type %s with message id: %s that is not registered in the bridge", v37, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();

LABEL_8:

LABEL_9:
    OUTLINED_FUNCTION_12();
    return;
  }

  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E21DD0()
{

  OUTLINED_FUNCTION_18_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_222E21E14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D460, &qword_222E41680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RequestProcessorBase.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_sessionId;
  sub_222E3F794();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t RequestProcessorBase.init(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_10_4(a1, a2, a3, a4, a5, a6, a7, a8);
  v32 = v12;
  v14 = v13;
  v16 = v15;
  sub_222E40004();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_42_0();
  v35 = sub_222E40014();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  v24 = sub_222E3FB84();
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_3();
  v9[11] = dispatch_group_create();
  v25 = (v9 + OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_rootRequestId);
  *v25 = 0;
  v25[1] = 0;
  v9[12] = v16;
  v9[13] = v14;
  sub_222E3F794();
  OUTLINED_FUNCTION_8_4();
  v27 = v26;
  v28 = OUTLINED_FUNCTION_11_3();
  v29(v28);
  v9[8] = v32;
  v9[9] = v11;
  sub_222E15C70(v10, (v9 + 3));
  v9[2] = a9;
  OUTLINED_FUNCTION_13_4(OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_rootLevelRequestId);
  sub_222E3FC24();
  swift_unknownObjectRetain();
  sub_222E40144();

  OUTLINED_FUNCTION_2_4();
  MEMORY[0x223DD0550]();

  MEMORY[0x223DD0550](46, 0xE100000000000000);
  MEMORY[0x223DD0550](v32, v11);

  sub_222E3FB74();
  (*(v19 + 104))(v23, *MEMORY[0x277D85268], v35);
  sub_222E200C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D800, &qword_222E426C0);
  v30 = sub_222E20140();
  OUTLINED_FUNCTION_7_4(v30);
  OUTLINED_FUNCTION_6_1();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v33);
  (*(v27 + 8))(v34, v16);
  return OUTLINED_FUNCTION_9_4();
}

uint64_t RequestProcessorBase.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  v1 = OBJC_IVAR____TtC21SiriRequestDispatcher20RequestProcessorBase_sessionId;
  sub_222E3F794();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

void sub_222E222C4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_21_0();

    MEMORY[0x2822009F8](v4, v5, v6);
  }
}

uint64_t sub_222E223D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  v23 = *(v20 + 272);
  v24 = *(v20 + 248);
  v25 = *(v20 + 256);
  sub_222E40044();
  sub_222E3FAC4();
  (*(v25 + 8))(v23, v24);

  v26 = *(v20 + 352);
  v27 = *(v20 + 160);
  v28 = sub_222E3FB04();
  sub_222E3FF94();

  if (OUTLINED_FUNCTION_43_0())
  {
    OUTLINED_FUNCTION_18();
    a9 = OUTLINED_FUNCTION_25_0();
    *v27 = 136315138;
    sub_222E3F934();
    OUTLINED_FUNCTION_0_4();
    sub_222E16AC8(v29, v30, MEMORY[0x277CC9628]);
    OUTLINED_FUNCTION_31_1();
    sub_222E40264();
    v31 = OUTLINED_FUNCTION_9_1();
    v33 = v32(v31);
    OUTLINED_FUNCTION_67(v33, v34, &a9);
    OUTLINED_FUNCTION_27_1();

    *(v27 + 1) = v26;
    OUTLINED_FUNCTION_7_1();
    _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_9();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D508, &qword_222E41878);
  sub_222E3FEC4();
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_24_0(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_1_1(v41);
  OUTLINED_FUNCTION_62();

  return MEMORY[0x2822003E8](v43);
}

uint64_t RequestProcessorBase.requestId.getter()
{
  v1 = *(v0 + 64);
  sub_222E3FC24();
  return v1;
}

void sub_222E225C4()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D630, &unk_222E420B0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26[-1] - v9;
  v11 = sub_222E40394();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  sub_222E19D10(v3, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_222E16CA0(v10, &unk_27D04D630, &unk_222E420B0);
    type metadata accessor for MessageDispatchingBridgeBase.MessageHandlerBase(0, *(v4 + 80), v18, v19);
    LOBYTE(v26[0]) = 0;
    sub_222E2EC40(v26);
  }

  else
  {
    (*(v13 + 32))(v17, v10, v11);
    v26[0] = sub_222E40384();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D518, &qword_222E418E0);
    v20 = sub_222E3FCF4();
    v22 = v21;
    sub_222E22984();
    v26[0] = v20;
    v26[1] = v22;
    type metadata accessor for MessageDispatchingBridgeBase.MessageHandlerBase(0, *(v4 + 80), v23, v24);
    sub_222E3FC64();

    if (!v26[2])
    {
      sub_222E40364();
      sub_222E225C4();
      sub_222E16CA0(v8, &unk_27D04D630, &unk_222E420B0);
    }

    (*(v13 + 8))(v17, v11);
  }

  OUTLINED_FUNCTION_12();
}

uint64_t static SignpostLogger.event(_:)()
{
  v0 = sub_222E3FAF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222E40064();
  v4 = OUTLINED_FUNCTION_0_6();
  v6 = v5(v4);
  sub_222E3FAE4();
  OUTLINED_FUNCTION_1_4();
  sub_222E3FAC4();

  return (*(v1 + 8))(v3, v0);
}

void sub_222E22990()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  sub_222E3FB54();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v5 = sub_222E3FB84();
  OUTLINED_FUNCTION_0();
  v50 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v49 = v9 - v8;
  v10 = v3;
  v11 = sub_222E3FB04();
  v12 = sub_222E3FF94();

  if (OUTLINED_FUNCTION_44())
  {
    v51 = v10;
    v13 = OUTLINED_FUNCTION_10();
    v14 = OUTLINED_FUNCTION_9_0();
    v52[0] = v14;
    *v13 = 136446210;
    swift_getObjectType();
    v15 = sub_222E403A4();
    v17 = sub_222E16068(v15, v16, v52);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_222E12000, v11, v12, "Ending active request with message: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_7();
    v10 = v51;
    OUTLINED_FUNCTION_7();
  }

  v20 = sub_222E1F59C(v18, v19);
  if (!v20)
  {
    goto LABEL_10;
  }

  v12 = v20;
  if (sub_222E3F914() == *(v20 + 64) && v21 == *(v12 + 72))
  {
  }

  else
  {
    v23 = sub_222E40294();

    if ((v23 & 1) == 0)
    {

LABEL_10:
      v24 = v10;
      v25 = sub_222E3FB04();
      v26 = sub_222E3FF94();

      if (os_log_type_enabled(v25, v26))
      {
        OUTLINED_FUNCTION_10();
        v27 = OUTLINED_FUNCTION_11_0();
        v52[0] = v27;
        *v12 = 136315138;
        v28 = sub_222E3F914();
        v30 = sub_222E16068(v28, v29, v52);

        *(v12 + 4) = v30;
        OUTLINED_FUNCTION_26(&dword_222E12000, v31, v26, "Active RequestProcessor for requestId: %s could not be found");
        __swift_destroy_boxed_opaque_existential_0(v27);
        OUTLINED_FUNCTION_7_0();
        OUTLINED_FUNCTION_6();
      }

      goto LABEL_20;
    }
  }

  sub_222E21160();
  v32 = sub_222E3F914();
  v33 = v10;
  v35 = v34;
  if (*(v1 + qword_28131FED0) == 1)
  {
    v36 = v32;
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = v35;
    v37[4] = v1;
    v37[5] = v33;
    OUTLINED_FUNCTION_2_0(v37);
    v52[1] = 1107296256;
    v52[2] = sub_222E21700;
    v52[3] = &block_descriptor_38;
    v38 = _Block_copy(v52);
    v39 = v33;

    sub_222E3FB64();
    sub_222E1F670();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
    sub_222E1F60C();
    sub_222E400F4();
    sub_222E3FFF4();
    _Block_release(v38);
    v40 = OUTLINED_FUNCTION_35();
    v41(v40);
    (*(v50 + 8))(v49, v5);
  }

  else
  {

    v42 = v10;

    v43 = sub_222E3FB04();
    v44 = sub_222E3FF94();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_29();
      v52[0] = OUTLINED_FUNCTION_45();
      *v45 = 136315394;
      v46 = sub_222E3F914();
      v48 = sub_222E16068(v46, v47, v52);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_222E16068(*(v1 + 16), *(v1 + 24), v52);
      _os_log_impl(&dword_222E12000, v43, v44, "Deiniting RequestProcessor with requestId %s for bridge %s", v45, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7_0();
    }

    sub_222E21118(0);
  }

LABEL_20:
  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E22F24()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222E22F6C(void *a1)
{
  sub_222E22990();
  if (v2)
  {
    v3 = sub_222E3FB04();
    sub_222E3FF94();
    OUTLINED_FUNCTION_20();
    if (os_log_type_enabled(v3, v4))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = sub_222E230AC(a1);
    v3 = sub_222E3FB04();
    sub_222E3FF94();
    OUTLINED_FUNCTION_20();
    v7 = os_log_type_enabled(v3, v6);
    if ((v5 & 1) == 0)
    {
      if (!v7)
      {
        v13 = 0;
        goto LABEL_11;
      }

      *OUTLINED_FUNCTION_28() = 0;
      OUTLINED_FUNCTION_23();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      v13 = 0;
      goto LABEL_10;
    }

    if (v7)
    {
LABEL_6:
      *OUTLINED_FUNCTION_28() = 0;
      OUTLINED_FUNCTION_23();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      v13 = 1;
LABEL_10:
      OUTLINED_FUNCTION_7();
      goto LABEL_11;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

uint64_t sub_222E230AC(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = qword_28131FFC0;
  v5 = sub_222E3FB04();
  v6 = sub_222E3FF94();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_10();
    v8 = OUTLINED_FUNCTION_9_0();
    v35[0] = v8;
    *v7 = 136446210;
    v9 = sub_222E403A4();
    v11 = sub_222E16068(v9, v10, v35);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_222E12000, v5, v6, "Ending candidate request with message: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7_0();
  }

  v12 = sub_222E3F914();
  v14 = sub_222E1BC88(v12, v13);
  v15 = OUTLINED_FUNCTION_22_0();
  v17 = sub_222E1F444(v15, v16, v14);

  if (v17)
  {
    OUTLINED_FUNCTION_34();
    sub_222E21160();
    v19 = v18;
    v20 = sub_222E3F914();
    v22 = v21;
    OUTLINED_FUNCTION_24(v2 + qword_281320058, v35);
    sub_222E2996C(v20, v22);
    swift_endAccess();

    return v19 & 1;
  }

  else
  {
    v24 = a1;
    v25 = v2 + v4;
    v26 = sub_222E3FB04();
    v27 = sub_222E3FFA4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_29();
      v35[0] = OUTLINED_FUNCTION_45();
      *v28 = 136446466;
      v29 = sub_222E403A4();
      sub_222E16068(v29, v30, v35);
      OUTLINED_FUNCTION_30();

      *(v28 + 4) = v25;
      *(v28 + 12) = 2080;
      v31 = sub_222E3F914();
      sub_222E16068(v31, v32, v35);
      OUTLINED_FUNCTION_30();

      *(v28 + 14) = v24;
      OUTLINED_FUNCTION_39(&dword_222E12000, v33, v34, "Received finisher message: %{public}s while there is no CandidateRequestProcessor for requestId: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_6();
    }

    return 0;
  }
}

BOOL OUTLINED_FUNCTION_44()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_44_0(uint64_t a1)
{

  return sub_222E3F934();
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_28_3()
{

  return os_log_type_enabled(v0, v1);
}

void sub_222E23404(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_222E1F59C(a1, a2);
  if (!v8)
  {
    goto LABEL_7;
  }

  v10 = *(v8 + 64);
  v9 = *(v8 + 72);
  sub_222E3FC24();

  if (v10 == a1 && v9 == a2)
  {
  }

  else
  {
    v12 = sub_222E40294();

    if ((v12 & 1) == 0)
    {
LABEL_7:
      sub_222E3FC24();
      oslog = sub_222E3FB04();
      v13 = sub_222E3FF94();

      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v25 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_222E16068(a1, a2, &v25);
        _os_log_impl(&dword_222E12000, oslog, v13, "RequestProcessor with requestId:%s has already been replaced or deinited", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x223DD12D0](v15, -1, -1);
        MEMORY[0x223DD12D0](v14, -1, -1);
      }

      return;
    }
  }

  v16 = a4;

  v17 = sub_222E3FB04();
  v18 = sub_222E3FF94();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315394;
    v21 = sub_222E3F914();
    v23 = sub_222E16068(v21, v22, &v25);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_222E16068(*(a3 + 16), *(a3 + 24), &v25);
    _os_log_impl(&dword_222E12000, v17, v18, "Deiniting RequestProcessor with requestId %s for bridge %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD12D0](v20, -1, -1);
    MEMORY[0x223DD12D0](v19, -1, -1);
  }

  sub_222E21118(0);
}

uint64_t AsyncSequentialExecutor.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D420, &unk_222E41240);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC21SiriRequestDispatcher23AsyncSequentialExecutor_streamContinuation;
  (*(v4 + 16))(&v13 - v6, v1 + OBJC_IVAR____TtC21SiriRequestDispatcher23AsyncSequentialExecutor_streamContinuation, v2);
  sub_222E3FEA4();
  v9 = *(v4 + 8);
  v9(v7, v2);
  v9((v1 + v8), v2);

  v10 = OBJC_IVAR____TtC21SiriRequestDispatcher23AsyncSequentialExecutor_logger;
  v11 = sub_222E3FB14();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t AsyncSequentialExecutor.__deallocating_deinit()
{
  AsyncSequentialExecutor.deinit();

  return MEMORY[0x282200960](v0);
}

void sub_222E23868()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v4 = sub_222E3FB54();
  OUTLINED_FUNCTION_0();
  v67 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  sub_222E3FB84();
  OUTLINED_FUNCTION_0();
  v65 = v11;
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  sub_222E3F794();
  OUTLINED_FUNCTION_0();
  v64 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v69 = sub_222E3F914();
  v17 = v16;
  v18 = sub_222E210A0();
  if (!v18)
  {
LABEL_7:
    if ((*(v1 + qword_28131FCF8) & 1) == 0)
    {
      if (!sub_222E210A0())
      {
        v47 = v3;
        sub_222E3FC24();
        v68 = sub_222E3FB04();
        v48 = sub_222E3FFC4();

        if (os_log_type_enabled(v68, v48))
        {
          v49 = OUTLINED_FUNCTION_9_0();
          v70[0] = OUTLINED_FUNCTION_27_2();
          *v49 = 136315650;
          sub_222E3F974();
          OUTLINED_FUNCTION_0_8();
          sub_222E16B58(v50, v51, MEMORY[0x277CC9628]);
          sub_222E40264();
          v52 = OUTLINED_FUNCTION_16_2();
          v53(v52, v64);
          v54 = OUTLINED_FUNCTION_14_2();
          v57 = sub_222E16068(v54, v55, v56);

          *(v49 + 4) = v57;
          *(v49 + 12) = 2080;
          swift_getObjectType();
          v58 = sub_222E403A4();
          v60 = v59;
          v61 = sub_222E16068(v58, v59, v70);

          *(v49 + 14) = v61;
          *(v49 + 22) = 2080;
          sub_222E16068(v69, v17, v70);
          OUTLINED_FUNCTION_21_2();
          *(v49 + 24) = v60;
          _os_log_impl(&dword_222E12000, v68, v48, "Got end request message for non-existing request, messageId: %s type: %s requestId: %s, current requestId is not set. Dropping the message", v49, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_7();
LABEL_26:
          OUTLINED_FUNCTION_7();

          goto LABEL_27;
        }

        goto LABEL_21;
      }
    }

    v23 = v3;
    sub_222E3FC24();

    v68 = sub_222E3FB04();
    v24 = sub_222E3FFA4();

    if (os_log_type_enabled(v68, v24))
    {
      v25 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      *v25 = 136315906;
      sub_222E3F974();
      OUTLINED_FUNCTION_0_8();
      sub_222E16B58(v26, v27, MEMORY[0x277CC9628]);
      sub_222E40264();
      v28 = OUTLINED_FUNCTION_16_2();
      v29(v28, v64);
      v30 = OUTLINED_FUNCTION_14_2();
      v33 = sub_222E16068(v30, v31, v32);

      *(v25 + 4) = v33;
      *(v25 + 12) = 2080;
      swift_getObjectType();
      v34 = sub_222E403A4();
      v36 = v35;
      sub_222E16068(v34, v35, v70);
      OUTLINED_FUNCTION_25_3();

      *(v25 + 14) = v23;
      *(v25 + 22) = 2080;
      sub_222E16068(v69, v17, v70);
      OUTLINED_FUNCTION_21_2();
      *(v25 + 24) = v36;
      *(v25 + 32) = 2080;
      v37 = sub_222E210A0();
      if (v37)
      {
        v39 = *(v37 + 64);
        v38 = *(v37 + 72);
        sub_222E3FC24();
      }

      else
      {
        v38 = 0xE700000000000000;
        v39 = 0x74657320746F6ELL;
      }

      sub_222E16068(v39, v38, v70);
      OUTLINED_FUNCTION_21_2();
      *(v25 + 34) = v39;
      _os_log_impl(&dword_222E12000, v68, v24, "Got end request message to non exists request, messageId: %s type: %s requestId: %s, current requestId: %s dropping the message", v25, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      goto LABEL_26;
    }

LABEL_21:

    OUTLINED_FUNCTION_12();

    return;
  }

  v20 = *(v18 + 64);
  v19 = *(v18 + 72);
  sub_222E3FC24();

  if (v20 == v69 && v19 == v17)
  {
  }

  else
  {
    v22 = sub_222E40294();

    if ((v22 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_222E21784();
  v40 = sub_222E210A0();
  if (v40)
  {
    v41 = *(v40 + 88);
    OUTLINED_FUNCTION_25_3();

    v42 = swift_allocObject();
    v42[2] = v69;
    v42[3] = v17;
    v42[4] = v1;
    OUTLINED_FUNCTION_2_0(v42);
    v70[1] = 1107296256;
    v70[2] = sub_222E21700;
    v70[3] = &block_descriptor_10;
    v43 = _Block_copy(v70);

    sub_222E3FB64();
    OUTLINED_FUNCTION_3_4();
    sub_222E16B58(v44, v45, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
    sub_222E1F60C();
    sub_222E400F4();
    sub_222E3FFF4();
    _Block_release(v43);

    (*(v67 + 8))(v9, v4);
    (*(v65 + 8))(v14, v66);

LABEL_27:
    OUTLINED_FUNCTION_12();
    return;
  }

  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E23FA4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222E23FE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D630, &unk_222E420B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_222E24058(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_222E210A0();
  if (!v6)
  {
    goto LABEL_7;
  }

  v8 = *(v6 + 64);
  v7 = *(v6 + 72);
  sub_222E3FC24();

  if (v8 == a1 && v7 == a2)
  {
  }

  else
  {
    v10 = sub_222E40294();

    if ((v10 & 1) == 0)
    {
LABEL_7:
      sub_222E3FC24();

      oslog = sub_222E3FB04();
      v11 = sub_222E3FF94();

      if (os_log_type_enabled(oslog, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v19 = v13;
        *v12 = 136315394;
        *(v12 + 4) = sub_222E16068(a1, a2, &v19);
        *(v12 + 12) = 2080;
        *(v12 + 14) = sub_222E16068(*(a3 + 16), *(a3 + 24), &v19);
        _os_log_impl(&dword_222E12000, oslog, v11, "Request %s for bridge %s was already changed, not setting processor to 'nil'", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DD12D0](v13, -1, -1);
        MEMORY[0x223DD12D0](v12, -1, -1);
      }

      return;
    }
  }

  sub_222E3FC24();

  v14 = sub_222E3FB04();
  v15 = sub_222E3FF94();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_222E16068(a1, a2, &v19);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_222E16068(*(a3 + 16), *(a3 + 24), &v19);
    _os_log_impl(&dword_222E12000, v14, v15, "Setting request processor of requestId %s for bridge %s to 'nil'", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD12D0](v17, -1, -1);
    MEMORY[0x223DD12D0](v16, -1, -1);
  }

  sub_222E2172C(0);
}

uint64_t OUTLINED_FUNCTION_34_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t sub_222E243C8(uint64_t a1)
{
  if (sub_222E3F914() == *(v1 + 64) && v2 == *(v1 + 72))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_222E40294();
  }

  return v4 & 1;
}

uint64_t sub_222E24480()
{
  OUTLINED_FUNCTION_11();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D438, &qword_222E41258);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_222E3FB14();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  OUTLINED_FUNCTION_12();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_222E245CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222E24638()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_222E246B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_222E1F59C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222E246EC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222E1BC88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222E2472C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222E24764(uint64_t a1, uint64_t a2)
{
  v4 = sub_222E3FB14();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_222E247AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_222E3FB14();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_222E2495C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222E249D0()
{

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_222E24A38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222E210A0();
  *a1 = result;
  return result;
}

__n128 sub_222E24A6C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_222E24AB4()
{

  OUTLINED_FUNCTION_18_2();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_222E24AE8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222E24B30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222E3C09C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_222E24B88()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_222E24BC8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_222E24C90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222E1BE18();
  *a1 = result;
  return result;
}

void sub_222E24CD0(uint64_t a2@<X8>)
{
  sub_222E24D04();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_222E24D48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222E24D68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_222E24DA4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t AsyncSequentialExecutor.__allocating_init(label:priority:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_allocObject();
  AsyncSequentialExecutor.init(label:priority:logger:)();
  return v4;
}

void AsyncSequentialExecutor.init(label:priority:logger:)()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v61 = v2;
  v63 = v3;
  v57 = v4;
  v58 = v5;
  v55 = sub_222E3FB14();
  OUTLINED_FUNCTION_0();
  v53 = v6;
  v56 = *(v7 + 64);
  MEMORY[0x28223BE20](v8);
  v54 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D428, &qword_222E41900);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  v62 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D430, &qword_222E41250);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D420, &unk_222E41240);
  OUTLINED_FUNCTION_0();
  v19 = v18;
  v51 = v18;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v20);
  v59 = &v48 - v21;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D438, &qword_222E41258);
  OUTLINED_FUNCTION_0();
  v23 = v22;
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v26);
  v48 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v48 - v28;
  v52 = v1;
  swift_defaultActor_initialize();
  (*(v14 + 104))(v17, *MEMORY[0x277D85778], v12);
  v50 = v29;
  v30 = v59;
  sub_222E3FE84();
  (*(v14 + 8))(v17, v12);
  (*(v19 + 16))(v1 + OBJC_IVAR____TtC21SiriRequestDispatcher23AsyncSequentialExecutor_streamContinuation, v30, v60);
  v31 = v53;
  v32 = *(v53 + 16);
  v33 = v1 + OBJC_IVAR____TtC21SiriRequestDispatcher23AsyncSequentialExecutor_logger;
  v34 = v61;
  v35 = v55;
  v32(v33, v61, v55);
  sub_222E1DE5C(v63, v62);
  v36 = v49;
  (*(v23 + 16))(&v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v49);
  v37 = v54;
  v32(v54, v34, v35);
  v38 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v39 = v31;
  v40 = (v25 + *(v31 + 80) + v38) & ~*(v31 + 80);
  v41 = (v56 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  v43 = v36;
  (*(v23 + 32))(v42 + v38, v48, v36);
  (*(v39 + 32))(v42 + v40, v37, v35);
  v44 = (v42 + v41);
  v45 = v58;
  *v44 = v57;
  v44[1] = v45;
  sub_222E25D9C();
  v47 = v46;
  (*(v39 + 8))(v61, v35);
  sub_222E1D92C(v63);
  (*(v51 + 8))(v59, v60);
  (*(v23 + 8))(v50, v43);
  *(v52 + OBJC_IVAR____TtC21SiriRequestDispatcher23AsyncSequentialExecutor_task) = v47;
  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E25364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D450, &qword_222E41370);
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222E25434, 0, 0);
}

uint64_t sub_222E25434()
{
  OUTLINED_FUNCTION_3_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D438, &qword_222E41258);
  sub_222E3FEC4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1(v1);

  return MEMORY[0x2822003E8](v3);
}

uint64_t sub_222E254C4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_222E255B0, 0, 0);
}

uint64_t sub_222E255B0()
{
  v23 = v0;
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  v0[18] = v0[3];
  v0[19] = v3;
  v0[20] = v2;
  if (v1)
  {

    sub_222E3FC24();
    v4 = sub_222E3FB04();
    v5 = sub_222E3FF94();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_10();
      v7 = OUTLINED_FUNCTION_9_0();
      v22 = v7;
      *v6 = 136315138;
      sub_222E3FC24();
      v8 = sub_222E16068(v3, v2, &v22);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_222E12000, v4, v5, "#AsyncSequentialExecutor Starting async task: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }

    v21 = (v1 + *v1);
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = sub_222E258E0;

    return v21();
  }

  (*(v0[15] + 8))(v0[16], v0[14]);
  v11 = sub_222E3FF14();
  sub_222E3FC24();
  v12 = sub_222E3FB04();
  v13 = sub_222E3FF94();

  v14 = os_log_type_enabled(v12, v13);
  if (v11)
  {
    if (v14)
    {
      v15 = OUTLINED_FUNCTION_10();
      v16 = OUTLINED_FUNCTION_9_0();
      v22 = v16;
      *(v15 + 4) = OUTLINED_FUNCTION_13(4.8149e-34, v16, v17);
      v18 = "#AsyncSequentialExecutor main loop was canceled for %s";
LABEL_12:
      _os_log_impl(&dword_222E12000, v12, v13, v18, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }
  }

  else if (v14)
  {
    v15 = OUTLINED_FUNCTION_10();
    v16 = OUTLINED_FUNCTION_9_0();
    v22 = v16;
    *(v15 + 4) = OUTLINED_FUNCTION_13(4.8149e-34, v16, v19);
    v18 = "#AsyncSequentialExecutor main loop ended cleanly for %s";
    goto LABEL_12;
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_222E258E0()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *(v4 + 176) = v0;

  if (v0)
  {
    v5 = sub_222E25B74;
  }

  else
  {
    v5 = sub_222E259E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222E259E4()
{
  v15 = v0;

  sub_222E3FC24();
  v1 = sub_222E3FB04();
  v2 = sub_222E3FF94();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 160);
  if (v3)
  {
    v5 = *(v0 + 152);
    v6 = OUTLINED_FUNCTION_10();
    v7 = OUTLINED_FUNCTION_9_0();
    v14 = v7;
    *v6 = 136315138;
    sub_222E3FC24();
    v8 = sub_222E16068(v5, v4, &v14);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_222E12000, v1, v2, "#AsyncSequentialExecutor Ending async task: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  else
  {
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_8(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_1(v10);

  return MEMORY[0x2822003E8](v12);
}

uint64_t sub_222E25B74()
{
  v20 = v0;
  v1 = v0[22];

  sub_222E3FC24();
  v2 = v1;
  v3 = sub_222E3FB04();
  v4 = sub_222E3FFA4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = v0[19];
    v7 = v0[20];
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 136315394;
    sub_222E3FC24();
    v9 = sub_222E16068(v6, v7, &v19);

    *(v8 + 4) = v9;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v10 = sub_222E402D4();
    v12 = sub_222E16068(v10, v11, &v19);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_222E12000, v3, v4, "#AsyncSequentialExecutor async task %s threw an exception: %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  else
  {
    v13 = v0[22];
  }

  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_8(v14);
  *v15 = v16;
  v17 = OUTLINED_FUNCTION_1(v15);

  return MEMORY[0x2822003E8](v17);
}

void sub_222E25D9C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D428, &qword_222E41900);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  sub_222E1DE5C(v5, v21 - v9);
  v11 = sub_222E3FE74();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_222E1D92C(v10);
  }

  else
  {
    sub_222E3FE64();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_222E3FE34();
    v16 = v15;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v17 = sub_222E3FD04() + 32;
      v18 = swift_allocObject();
      *(v18 + 16) = v3;
      *(v18 + 24) = v1;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v19 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v19 = 0;
      }

      v21[1] = 7;
      v21[2] = v19;
      v21[3] = v17;
      swift_task_create();

      sub_222E1D92C(v5);

      goto LABEL_14;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_222E1D92C(v5);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = v1;
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E260E0()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC21SiriRequestDispatcher23AsyncSequentialExecutor_task);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_222E2618C;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200460](v2, v1, v3);
}

uint64_t sub_222E2618C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_222E26278, 0, 0);
}

uint64_t type metadata accessor for AsyncSequentialExecutor(uint64_t a1)
{
  result = qword_28131F7A8;
  if (!qword_28131F7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222E26300(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D438, &qword_222E41258) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_222E3FB14() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_222E1BB78;

  return sub_222E25364(a1, v10, v11, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_222E2649C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_222E26510(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_222E16068(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_222E2656C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D448, &qword_222E41350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_222E26660(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_222E26678(uint64_t a1)
{
  sub_222E26A30();
  if (v1 <= 0x3F)
  {
    sub_222E3FB14();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of AsyncSequentialExecutor.awaitMainLoopExit()()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_222E2694C;

  return v4();
}

uint64_t sub_222E2694C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void sub_222E26A30()
{
  if (!qword_28131F1D8)
  {
    v0 = sub_222E3FEB4();
    if (!v1)
    {
      atomic_store(v0, &qword_28131F1D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for SimpleSubscriptionRegistrar.Error(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_222E26AD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5(v1);

  return v3(v2);
}

uint64_t static AutoBugCapture.generateSnapshot(type:subType:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = AFIsInternalInstall();
  if (result)
  {
    sub_222E3F7F4();
    swift_allocObject();
    sub_222E3F7E4();
    sub_222E3F7D4();
  }

  return result;
}

void sub_222E26CBC(char a1)
{
  if (qword_28131F210 != -1)
  {
    swift_once();
  }

  v2 = sub_222E3FB14();
  __swift_project_value_buffer(v2, qword_28131FFA0);
  oslog = sub_222E3FB04();
  v3 = sub_222E3FFC4();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_222E12000, oslog, v3, "AutoBugCapture#generateSnapshot ABC result: %{BOOL}d", v4, 8u);
    MEMORY[0x223DD12D0](v4, -1, -1);
  }
}

uint64_t getEnumTagSinglePayload for InsightRequestSummaryMessageDescription(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_222E26E3C(_BYTE *result, int a2, int a3)
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

void Bridge.defaultHandle(_:executionContextInfo:reply:)(void *a1, uint64_t a2, void (*a3)(id, id), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a3;
  v48 = a5;
  v9 = sub_222E3F794();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131F210 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_28131F210);
  }

  v12 = sub_222E3FB14();
  __swift_project_value_buffer(v12, qword_28131FFA0);
  swift_unknownObjectRetain();
  v13 = a1;
  v14 = sub_222E3FB04();
  v15 = sub_222E3FF94();

  swift_unknownObjectRelease();
  v16 = os_log_type_enabled(v14, v15);
  v46 = a6;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v43 = a4;
    v20 = v19;
    v51 = v19;
    *v17 = 136315394;
    v21 = sub_222E3FA64();
    v23 = sub_222E16068(v21, v22, &v51);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v13;
    *v18 = v13;
    v24 = v13;
    _os_log_impl(&dword_222E12000, v14, v15, "Bridge:%s received %@", v17, 0x16u);
    sub_222E21E14(v18);
    OUTLINED_FUNCTION_7();
    __swift_destroy_boxed_opaque_existential_0(v20);
    a4 = v43;
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  v25 = v47;
  if (v47)
  {
    v26 = objc_allocWithZone(MEMORY[0x277D47210]);

    v27 = [v26 init];
    sub_222E3F784();
    sub_222E3F744();
    (*(v44 + 8))(v11, v45);
    v28 = sub_222E3FCA4();

    [v27 setAceId_];

    v29 = v27;
    v30 = [v13 aceId];
    [v29 setRefId_];

    v51 = 0;
    v52 = 0xE000000000000000;
    sub_222E40144();

    v51 = 0x20656764697242;
    v52 = 0xE700000000000000;
    v31 = sub_222E3FA64();
    MEMORY[0x223DD0550](v31);

    MEMORY[0x223DD0550](0xD00000000000001ALL, 0x8000000222E42AE0);
    v32 = [v13 encodedClassName];
    if (v32)
    {
      v33 = v32;
      v34 = sub_222E3FCB4();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v37 = objc_opt_self();
    v49 = v34;
    v50 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D458, "T&");
    v38 = sub_222E3FCF4();
    MEMORY[0x223DD0550](v38);

    v39 = sub_222E3FCA4();

    v40 = [v37 errorWithCode:2000 description:v39];

    v41 = v29;
    v42 = v40;
    v25(v29, v40);

    sub_222E19224(v25, a4);
  }
}

uint64_t XPCListeningBridge.init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (qword_28131F210 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_28131F210);
  }

  v10 = sub_222E3FB14();
  __swift_project_value_buffer(v10, qword_28131FFA0);
  v11 = sub_222E3FB04();
  v12 = sub_222E3FFA4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_222E12000, v11, v12, "Attempting to initialize an XPCListeningBridge without an XPCListener, this is not supported. Please use a different implementation if an XPCListener is not required. ", v13, 2u);
    OUTLINED_FUNCTION_7();
  }

  sub_222E15C70(a3, v17);
  sub_222E15C70(a6, v16);
  type metadata accessor for EmptyBridgeConnectionListener();
  [objc_allocWithZone(MEMORY[0x277CCAE90]) init];
  [objc_allocWithZone(MEMORY[0x277CCAE90]) init];
  sub_222E29BDC();
  v14 = sub_222E3FA24();
  __swift_destroy_boxed_opaque_existential_0(a6);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v14;
}

void sub_222E27550(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_222E275C4(uint64_t a1)
{
  v2 = sub_222E3FB34();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_222E27704(v4);
}

uint64_t sub_222E27690@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = qword_281320048;
  OUTLINED_FUNCTION_27_0(v2 + qword_281320048, a1);
  sub_222E3FB34();
  OUTLINED_FUNCTION_4();
  return (*(v5 + 16))(a2, v2 + v4);
}

uint64_t sub_222E27704(uint64_t a1)
{
  v3 = qword_281320048;
  OUTLINED_FUNCTION_24(v1 + qword_281320048, v6);
  sub_222E3FB34();
  OUTLINED_FUNCTION_4();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

void CandidateRequestAwareBridgeBase.__allocating_init(_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_222E3FB14();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  sub_222E15C70(v8, v22);
  sub_222E15C70(v2, v21);
  if (qword_28131F210 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v13, qword_28131FFA0);
  (*(v15 + 16))(v19, v20, v13);
  (*(v0 + 440))(v12, v10, v22, v6, v4, v21, v19, 1);
  __swift_destroy_boxed_opaque_existential_0(v2);
  __swift_destroy_boxed_opaque_existential_0(v8);
  OUTLINED_FUNCTION_12();
}

void CandidateRequestAwareBridgeBase.__allocating_init(name:messagePublisher:serviceHelper:queue:conversationSessionsManager:logger:waitBeforeReplacingActiveRequest:)()
{
  OUTLINED_FUNCTION_11();
  swift_allocObject();
  CandidateRequestAwareBridgeBase.init(name:messagePublisher:serviceHelper:queue:conversationSessionsManager:logger:waitBeforeReplacingActiveRequest:)();
  OUTLINED_FUNCTION_12();
}

void CandidateRequestAwareBridgeBase.init(name:messagePublisher:serviceHelper:queue:conversationSessionsManager:logger:waitBeforeReplacingActiveRequest:)()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v25 = v7;
  v26 = v8;
  v10 = v9;
  v23 = v11;
  v24 = v12;
  v13 = sub_222E3FB14();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v20 = qword_281320048;
  *(v0 + qword_281320048) = 500;
  v21 = *MEMORY[0x277D85178];
  sub_222E3FB34();
  OUTLINED_FUNCTION_4();
  (*(v22 + 104))(v0 + v20, v21);
  *(v0 + qword_281320050) = 0;
  *(v0 + qword_281320058) = MEMORY[0x277D84F98];
  *(v0 + qword_28131FED0) = v2;
  sub_222E15C70(v10, v28);
  sub_222E15C70(v6, v27);
  (*(v15 + 16))(v19, v4, v13);
  MessageDispatchingBridgeBase.init(_:_:_:_:_:_:)(v23, v24, v28, v25, v26, v27, v19);
  (*(v15 + 8))(v4, v13);
  __swift_destroy_boxed_opaque_existential_0(v6);
  __swift_destroy_boxed_opaque_existential_0(v10);
  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E27C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_222E18808(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 16 * v4);
  }

  else
  {
    return 0;
  }
}

void sub_222E27CA4()
{
  OUTLINED_FUNCTION_11();
  v33 = v1;
  v34 = v2;
  v3 = v0;
  v31 = v5;
  v32 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v3;
  v11 = sub_222E3FB14();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v30 = *v9;
  swift_getMetatypeMetadata();
  v18 = sub_222E3FCF4();
  v20 = v19;
  sub_222E22984();
  v35[0] = v18;
  v35[1] = v20;
  v21 = *(v10 + 328);
  type metadata accessor for MessageDispatchingBridgeBase.MessageHandlerBase(0, v21, v22, v23);
  sub_222E3FC24();
  sub_222E3FC64();

  if (v36)
  {

    sub_222E3FC24();
    v24 = sub_222E3FB04();
    v25 = sub_222E3FFA4();

    if (OUTLINED_FUNCTION_41())
    {
      v26 = OUTLINED_FUNCTION_10();
      v27 = OUTLINED_FUNCTION_9_0();
      v35[0] = v27;
      *v26 = 136315138;
      v28 = sub_222E16068(v18, v20, v35);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_222E12000, v24, v25, "Message type: %s is already registered. Ignoring this request", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_9();
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for MessageDispatchingBridgeBase.MessageHandler(0, v21, v31, v7);
    (*(v13 + 16))(v17, v3 + qword_28131FFC0, v11);
    LOBYTE(v35[0]) = v30;

    v29 = v34(v32, v33, v17, v35);
    v37 = v20;
    v38 = v29;
    v36 = v18;
    OUTLINED_FUNCTION_24(v3 + qword_28131FFC8, v35);
    sub_222E3FC54();
    sub_222E3FC74();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_12();
}

uint64_t sub_222E27F7C(uint64_t a1, uint64_t a2)
{
  sub_222E29498();
  swift_allocError();
  *v4 = a1;
  v4[1] = a2;
  swift_willThrow();
  return sub_222E3FC24();
}

void sub_222E27FE0()
{
  OUTLINED_FUNCTION_11();
  v105 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v113 = *v0;
  v10 = sub_222E3FB54();
  OUTLINED_FUNCTION_0();
  v108 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  sub_222E3FB84();
  OUTLINED_FUNCTION_0();
  v106 = v17;
  v107 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = [v9 refId];
  if (v21)
  {
    v22 = v21;
    v103 = v10;
    v104 = v7;
    v109 = v5;
    v111 = v3;
    v23 = sub_222E3FCB4();
    v25 = v24;

    v28 = sub_222E1F59C(v26, v27);
    if (v28)
    {
      v30 = swift_dynamicCastClass();
      if (v30)
      {
        v31 = v30;
        v32 = *(v30 + 64) == v23 && *(v30 + 72) == v25;
        if (v32 || (sub_222E40294() & 1) != 0)
        {

          v33 = sub_222E3FB04();
          sub_222E3FF94();
          OUTLINED_FUNCTION_20();
          if (os_log_type_enabled(v33, v34))
          {
            *OUTLINED_FUNCTION_28() = 0;
            OUTLINED_FUNCTION_25();
            _os_log_impl(v35, v36, v37, v38, v39, 2u);
            OUTLINED_FUNCTION_9();
          }

          v40 = *(v31 + 88);
          v101 = *(v31 + 80);
          v41 = v40;

          OUTLINED_FUNCTION_33();
          v42 = swift_allocObject();
          v43 = OUTLINED_FUNCTION_31_0(v42, v113);
          v43[6] = v105;
          v43[7] = v31;
          v43[8] = v9;
          v43[9] = v7;
          v43[10] = v109;
          v43[11] = v111;
          OUTLINED_FUNCTION_8_0(v43);
          v115 = 1107296256;
          OUTLINED_FUNCTION_0_2();
          v116 = v44;
          v117 = &block_descriptor_6;
          v45 = _Block_copy(&v114);

          v46 = v9;
          v47 = v7;
          sub_222E1F6C8(v109, v111);
          sub_222E3FB64();
          sub_222E1F670();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
          sub_222E1F60C();
          OUTLINED_FUNCTION_38();
          sub_222E400F4();
          v48 = OUTLINED_FUNCTION_36();
          MEMORY[0x223DD0840](v48);
          _Block_release(v45);

          (*(v108 + 8))(v15, v103);
LABEL_21:
          (*(v106 + 8))(v20, v107);

          goto LABEL_27;
        }
      }
    }

    v68 = sub_222E1BC88(v28, v29);
    v69 = OUTLINED_FUNCTION_34();
    v71 = sub_222E1F444(v69, v70, v68);

    if (v71)
    {
      v72 = swift_dynamicCastClass();
      if (v72)
      {
        v73 = v72;
        v74 = sub_222E3FB04();
        sub_222E3FF94();
        OUTLINED_FUNCTION_20();
        if (os_log_type_enabled(v74, v75))
        {
          *OUTLINED_FUNCTION_28() = 0;
          OUTLINED_FUNCTION_25();
          _os_log_impl(v76, v77, v78, v79, v80, 2u);
          OUTLINED_FUNCTION_9();
        }

        v81 = *(v73 + 88);
        v102 = *(v73 + 80);
        OUTLINED_FUNCTION_33();
        v82 = swift_allocObject();
        v83 = OUTLINED_FUNCTION_31_0(v82, v113);
        v83[6] = v105;
        v83[7] = v73;
        v83[8] = v9;
        v83[9] = v104;
        v83[10] = v109;
        v83[11] = v111;
        OUTLINED_FUNCTION_8_0(v83);
        v115 = 1107296256;
        OUTLINED_FUNCTION_0_2();
        v116 = v84;
        v117 = &block_descriptor;
        v85 = _Block_copy(&v114);

        v86 = v9;
        v87 = v104;
        sub_222E1F6C8(v109, v111);
        v88 = v102;
        v89 = v81;

        sub_222E3FB64();
        sub_222E1F670();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
        sub_222E1F60C();
        OUTLINED_FUNCTION_38();
        sub_222E400F4();
        v90 = OUTLINED_FUNCTION_36();
        MEMORY[0x223DD0840](v90);
        _Block_release(v85);

        (*(v108 + 8))(v15, v103);
        goto LABEL_21;
      }
    }

    v91 = v9;
    v92 = sub_222E3FB04();
    v93 = sub_222E3FF94();

    if (OUTLINED_FUNCTION_41())
    {
      v94 = OUTLINED_FUNCTION_10();
      v95 = OUTLINED_FUNCTION_9_0();
      v114 = v95;
      *v94 = 136315138;
      v96 = [v91 debugDescription];
      sub_222E3FCB4();

      v97 = OUTLINED_FUNCTION_22_0();
      v100 = sub_222E16068(v97, v98, v99);

      *(v94 + 4) = v100;
      _os_log_impl(&dword_222E12000, v92, v93, "Could not find a RequestProcessor for this command: %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v95);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7();
    }
  }

  else
  {
    v49 = v9;
    v50 = sub_222E3FB04();
    sub_222E3FFA4();

    if (OUTLINED_FUNCTION_44())
    {
      v112 = v3;
      v51 = OUTLINED_FUNCTION_10();
      v110 = v5;
      v52 = OUTLINED_FUNCTION_9_0();
      v114 = v52;
      *v51 = 136446210;
      v53 = [v49 debugDescription];
      v54 = sub_222E3FCB4();
      v55 = v7;
      v57 = v56;

      v58 = sub_222E16068(v54, v57, &v114);
      v7 = v55;

      *(v51 + 4) = v58;
      OUTLINED_FUNCTION_25();
      _os_log_impl(v59, v60, v61, v62, v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      v5 = v110;
      OUTLINED_FUNCTION_7();
      v3 = v112;
      OUTLINED_FUNCTION_7();
    }

    v66 = type metadata accessor for CandidateRequestAwareBridgeBase(0, *(v113 + 328), v64, v65);
    OUTLINED_FUNCTION_10_0();
    WitnessTable = swift_getWitnessTable();
    Bridge.defaultHandle(_:executionContextInfo:reply:)(v49, v7, v5, v3, v66, WitnessTable);
  }

LABEL_27:
  OUTLINED_FUNCTION_12();
}

void sub_222E28770(void *a1, uint64_t a2, void (*a3)(id, id), uint64_t a4)
{
  v9 = *v4;
  sub_222E27FE0();
  if ((v12 & 1) == 0)
  {
    v13 = type metadata accessor for CandidateRequestAwareBridgeBase(0, *(v9 + 328), v10, v11);
    OUTLINED_FUNCTION_10_0();
    WitnessTable = swift_getWitnessTable();

    Bridge.defaultHandle(_:executionContextInfo:reply:)(a1, a2, a3, a4, v13, WitnessTable);
  }
}

void sub_222E28834()
{
  OUTLINED_FUNCTION_11();
  v27 = v2;
  v28 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_222E3FB54();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v30 = sub_222E3FB84();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32();
  v29 = *(v9 + 88);
  v22 = swift_allocObject();
  v22[2] = v5;
  v22[3] = v28;
  v22[4] = v27;
  v22[5] = v7;
  v22[6] = v11;
  v22[7] = v0;
  OUTLINED_FUNCTION_2_0(v22);
  v31[1] = 1107296256;
  OUTLINED_FUNCTION_0_2();
  v31[2] = v23;
  v31[3] = &block_descriptor_12;
  v24 = _Block_copy(v31);

  v25 = v11;

  sub_222E3FB64();
  sub_222E1F670();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D7E0, &qword_222E41418);
  v26 = sub_222E1F60C();
  OUTLINED_FUNCTION_21(v26);
  MEMORY[0x223DD0840](v29, v1, v18, v24);
  _Block_release(v24);
  (*(v14 + 8))(v18, v12);
  (*(v20 + 8))(v1, v30);

  OUTLINED_FUNCTION_12();
}

void sub_222E28C2C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  sub_222E3F794();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  swift_getObjectType();
  v8 = qword_28131FFC0;
  v9 = sub_222E3FB04();
  v10 = sub_222E3FF94();
  v41 = v7;
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_10();
    *&v43 = OUTLINED_FUNCTION_11_0();
    *v8 = 136446210;
    v11 = sub_222E403A4();
    v13 = sub_222E16068(v11, v12, &v43);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_222E12000, v9, v10, "Starting candidate request with message: %{public}s", v8, 0xCu);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  v14 = sub_222E3F914();
  v16 = v15;
  v17 = sub_222E1BC88(v14, v15);
  v18 = OUTLINED_FUNCTION_35();
  v20 = sub_222E1F444(v18, v19, v17);

  if (v20)
  {
    sub_222E3FC24();
    v21 = sub_222E3FB04();
    v22 = sub_222E3FFA4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_29();
      *&v43 = OUTLINED_FUNCTION_45();
      *v23 = 136315394;
      v24 = sub_222E403A4();
      v26 = sub_222E16068(v24, v25, &v43);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = sub_222E16068(v14, v16, &v43);

      *(v23 + 14) = v27;
      _os_log_impl(&dword_222E12000, v21, v22, "Not creating a CandidateRequestProcessor for message: %s because there is already a candidate request started with requestId: %s", v23, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7_0();
    }

    else
    {
    }

    sub_222E21160();
  }

  else
  {
    sub_222E3F924();
    v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D4E0, &qword_222E41590);
    v40 = v14;
    if (swift_dynamicCast())
    {
      __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
      v28 = sub_222E3F9D4();
      v30 = v29;
      __swift_destroy_boxed_opaque_existential_0(&v43);
    }

    else
    {
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      sub_222E1D890(&v43, &qword_27D04D4E8, &qword_222E41598);
      v28 = sub_222E3F914();
      v30 = v31;
    }

    v32 = sub_222E3F954();
    v34 = v33;
    sub_222E3F934();
    v35 = (*(*v1 + 472))(v40, v16, v32, v34, v41, 1, v28, v30);
    v36 = OUTLINED_FUNCTION_22_0();
    v37(v36);

    v38 = qword_281320058;
    OUTLINED_FUNCTION_24(v1 + qword_281320058, &v43);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v1 + v38);
    sub_222E3D6DC(v35, v40, v16, isUniquelyReferenced_nonNull_native);
    *(v1 + v38) = v42;

    swift_endAccess();
    sub_222E21160();
  }

  OUTLINED_FUNCTION_12();
}

void CandidateRequestAwareBridgeBase.__allocating_init(_:_:_:_:_:_:)()
{
  swift_allocObject();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_222E29268()
{
  v1 = qword_281320048;
  sub_222E3FB34();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);
}

uint64_t CandidateRequestAwareBridgeBase.deinit()
{
  v0 = MessageDispatchingBridgeBase.deinit();
  v1 = qword_281320048;
  sub_222E3FB34();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t CandidateRequestAwareBridgeBase.__deallocating_deinit()
{
  v0 = CandidateRequestAwareBridgeBase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t static RequestProcessorCreationError.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_222E40294();
  }
}

unint64_t sub_222E29498()
{
  result = qword_27D04D468;
  if (!qword_27D04D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D04D468);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_222E2955C(uint64_t a1)
{
  result = sub_222E3FB34();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)()
{
  return (*(*v0 + 448))();
}

{
  return (*(*v0 + 456))();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_222E29880(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_222E298C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222E2996C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_222E18808(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D4D8, &unk_222E428B0);
  sub_222E40224();

  v7 = *(*(v9 + 56) + 8 * v6);
  type metadata accessor for RequestProcessorBase(0);
  sub_222E40234();
  *v3 = v9;
  return v7;
}

BOOL OUTLINED_FUNCTION_41()
{

  return os_log_type_enabled(v0, v1);
}

void sub_222E29AB8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_222E3F754();
  v4 = [v2 derivedIdentifierForComponent:a1 fromSourceIdentifier:v3];

  sub_222E3F774();
}

id sub_222E29BDC()
{
  OUTLINED_FUNCTION_0_3();
  v3 = objc_allocWithZone(v1);
  v4 = sub_222E3FCA4();

  v5 = sub_222E3FCA4();

  OUTLINED_FUNCTION_1_0();
  v8 = [v6 v7];

  return v8;
}

id sub_222E29C80()
{
  OUTLINED_FUNCTION_0_3();
  v3 = sub_222E3FCA4();

  v4 = sub_222E3FCA4();

  v9 = type metadata accessor for EmptyBridgeConnectionListener();
  OUTLINED_FUNCTION_1_0();
  v7 = objc_msgSendSuper2(v5, v6, v1, v9);

  return v7;
}

id sub_222E29E98(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EmptyBridgeConnectionListener();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_222E29EF0()
{
  sub_222E2B954();
  result = sub_222E400A4();
  qword_281320000 = result;
  return result;
}

uint64_t sub_222E29F58()
{
  v0 = sub_222E3FB14();
  __swift_allocate_value_buffer(v0, qword_281320008);
  __swift_project_value_buffer(v0, qword_281320008);
  if (qword_28131FB40 != -1)
  {
    swift_once();
  }

  v1 = qword_281320000;
  return sub_222E3FB24();
}

uint64_t sub_222E29FE4()
{
  OUTLINED_FUNCTION_61();
  if (v0)
  {
    if (qword_28131FB40 != -1)
    {
      OUTLINED_FUNCTION_2_1(&qword_28131FB40);
    }

    v1 = qword_281320000;
    sub_222E3FAD4();
    sub_222E40054();
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_8_1();
    return sub_222E3FAB4();
  }

  else
  {
    if (qword_28131FB40 != -1)
    {
      OUTLINED_FUNCTION_2_1(&qword_28131FB40);
    }

    v3 = qword_281320000;
    sub_222E3FAD4();
    sub_222E40054();
    OUTLINED_FUNCTION_8_1();

    return sub_222E3FAC4();
  }
}

uint64_t sub_222E2A0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_61();
  if (qword_28131FB40 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_28131FB40);
  }

  v11 = qword_281320000;
  sub_222E3FAD4();
  if ((a6 & 0x100) != 0 || !a8)
  {
    sub_222E40054();
    OUTLINED_FUNCTION_8_1();

    return sub_222E3FAC4();
  }

  else
  {
    sub_222E3FC24();
    sub_222E40054();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D540, &unk_222E41960);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_222E41650;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_222E143F8();
    *(v12 + 32) = a7;
    *(v12 + 40) = a8;
    sub_222E3FAB4();
  }
}

uint64_t sub_222E2A278()
{
  sub_222E40044();
  if (qword_28131FB40 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_28131FB40);
  }

  OUTLINED_FUNCTION_8_1();

  return sub_222E3FAC4();
}

char *sub_222E2A304()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 2);

  os_unfair_lock_lock(v3 + 4);
  sub_222E2B930(v4, &v10);
  os_unfair_lock_unlock(v3 + 4);

  v6 = *(*v0 + 104);
  OUTLINED_FUNCTION_32_0(v5, *(v2 + 80), *(v2 + 88), v7);
  OUTLINED_FUNCTION_4_0();
  (*(v8 + 8))(&v1[v6]);
  return v1;
}

uint64_t sub_222E2A408@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1 + *(*a1 + 104);
  swift_beginAccess();
  v6 = type metadata accessor for ActorBridgeWrapper.LoopTaskContainer(0, *(v3 + 80), *(v3 + 88), v5);
  result = __swift_getEnumTagSinglePayload(v4, 1, v6);
  v8 = result;
  if (!result)
  {

    sub_222E3FEE4();
  }

  *a2 = v8 != 0;
  return result;
}

uint64_t sub_222E2A50C()
{
  sub_222E2A304();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222E2A564()
{
  v0 = swift_allocObject();
  sub_222E2A59C();
  return v0;
}

uint64_t sub_222E2A59C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D520, &qword_222E418F8);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_37_0();
  v3 = *(v2 + 104);
  OUTLINED_FUNCTION_37_0();
  v7 = type metadata accessor for ActorBridgeWrapper.LoopTaskContainer(0, v5, *(v4 + 88), v6);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v7);
  return v0;
}

uint64_t sub_222E2A67C(uint64_t a1)
{
  swift_defaultActor_initialize();
  swift_beginAccess();
  *(v1 + 112) = *(a1 + 16);
  swift_beginAccess();
  v3 = *(a1 + 24);
  sub_222E3FC24();
  sub_222E3FC24();

  *(v1 + 120) = v3;
  return v1;
}

uint64_t sub_222E2A708()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_222E2A738()
{
  v0 = sub_222E2A708();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_222E2A79C()
{
  v1 = *(*(v0 + 112) + 112);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(*(v0 + 112) + 112) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v7)
  {
LABEL_9:
    v7 &= v7 - 1;
    sub_222E3F984();
    result = swift_dynamicCastMetatype();
    if (result)
    {
      v13 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_222E2B378(0, *(v11 + 16) + 1, 1, v11);
        v11 = result;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      v16 = v14 + 1;
      if (v14 >= v15 >> 1)
      {
        v19 = v14 + 1;
        v17 = v11;
        v18 = *(v11 + 16);
        result = sub_222E2B378((v15 > 1), v14 + 1, 1, v17);
        v14 = v18;
        v16 = v19;
        v11 = result;
      }

      *(v11 + 16) = v16;
      *(v11 + 8 * v14 + 32) = v13;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return v11;
    }

    v7 = *(v3 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222E2A91C()
{
  v1 = v0[33];
  v5 = v0[32];
  v2 = v0[31];
  sub_222E40044();
  sub_222E3FAC4();
  v3 = *(v5 + 8);

  return v3(v1, v2);
}

uint64_t sub_222E2A9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_63();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_57();
  a20 = v22;
  v25 = *(v22 + 264);

  *(v22 + 80) = v25;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D4F0, &unk_222E415A0);
  v27 = swift_dynamicCast();
  v28 = *(v22 + 264);
  if (v27)
  {
    v29 = *(v22 + 144);

    sub_222E3FC24();
    v30 = sub_222E3FB04();
    sub_222E3FFA4();

    if (OUTLINED_FUNCTION_43_0())
    {
      v31 = *(v22 + 160);
      OUTLINED_FUNCTION_29();
      a11 = OUTLINED_FUNCTION_49();
      *v29 = 136446466;
      v32 = OUTLINED_FUNCTION_53();
      v34 = v33(v32);
      OUTLINED_FUNCTION_66(v34, v35, v36, v37, v38, v39);
      OUTLINED_FUNCTION_41_0();

      *(v29 + 4) = v31;
      *(v29 + 12) = 2082;
      v40 = OUTLINED_FUNCTION_59();
      *(v29 + 14) = sub_222E16068(v40, v41, v42);
      OUTLINED_FUNCTION_7_1();
      _os_log_impl(v43, v44, v45, v46, v47, 0x16u);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_9();
    }

    (*(*(v22 + 176) + 8))(*(v22 + 184), *(v22 + 168));
    v48 = *(v22 + 80);
  }

  else
  {

    *(v22 + 88) = v28;
    v49 = v28;
    v50 = swift_dynamicCast();
    v51 = *(v22 + 264);
    v52 = *(v22 + 144);
    if (v50)
    {

      sub_222E3FC24();
      v53 = sub_222E3FB04();
      sub_222E3FF94();

      if (OUTLINED_FUNCTION_43_0())
      {
        v54 = *(v22 + 160);
        OUTLINED_FUNCTION_29();
        a11 = OUTLINED_FUNCTION_49();
        *v52 = 136446466;
        v55 = OUTLINED_FUNCTION_59();
        *(v52 + 4) = sub_222E16068(v55, v56, v57);
        *(v52 + 12) = 2082;
        v58 = OUTLINED_FUNCTION_53();
        v60 = v59(v58);
        OUTLINED_FUNCTION_66(v60, v61, v62, v63, v64, v65);
        OUTLINED_FUNCTION_41_0();

        *(v52 + 14) = v54;
        OUTLINED_FUNCTION_7_1();
        _os_log_impl(v66, v67, v68, v69, v70, 0x16u);
        OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_7_0();
        OUTLINED_FUNCTION_9();
      }

      (*(*(v22 + 200) + 8))(*(v22 + 208), *(v22 + 192));
      v48 = *(v22 + 88);
    }

    else
    {

      sub_222E3FC24();
      v71 = v51;
      v72 = sub_222E3FB04();
      v73 = sub_222E3FFA4();

      v74 = os_log_type_enabled(v72, v73);
      v75 = *(v22 + 264);
      if (v74)
      {
        v76 = *(v22 + 152);
        v77 = *(v22 + 160);
        v78 = *(v22 + 136);
        a9 = *(v22 + 144);
        a10 = v22 + 56;
        v79 = swift_slowAlloc();
        a11 = swift_slowAlloc();
        *v79 = 136446722;
        v80 = (*(v77 + 32))(v76, v77);
        v86 = OUTLINED_FUNCTION_66(v80, v81, v82, v83, v84, v85);

        *(v79 + 4) = v86;
        *(v79 + 12) = 2082;
        *(v79 + 14) = sub_222E16068(v78, a9, &a11);
        *(v79 + 22) = 2082;
        swift_getErrorValue();
        v87 = sub_222E402D4();
        OUTLINED_FUNCTION_66(v87, v88, v89, v90, v91, v92);
        OUTLINED_FUNCTION_65();
        *(v79 + 24) = v22 + 80;
        _os_log_impl(&dword_222E12000, v72, v73, "Unknown error happened while %{public}s was processing %{public}s: %{public}s.", v79, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_7();

        goto LABEL_13;
      }

      v48 = v75;
    }
  }

LABEL_13:

  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_36_0();

  return v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14);
}

uint64_t _s21SiriRequestDispatcher18ActorBridgeWrapperC12setupContextACyxGqd___t5ErrorQzYKcAA0e5SetupH0Rd__lufC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_41_0();
  v8 = swift_allocObject();
  _s21SiriRequestDispatcher18ActorBridgeWrapperC12setupContextACyxGqd___t5ErrorQzYKcAA0e5SetupH0Rd__lufc(v4, a2, a3, a4);
  return v8;
}

void *_s21SiriRequestDispatcher18ActorBridgeWrapperC12setupContextACyxGqd___t5ErrorQzYKcAA0e5SetupH0Rd__lufc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v41 = a3;
  v5 = v4;
  v8 = *(*v4 + 88);
  v9 = *(*v4 + 80);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v38 = v11;
  v39 = v10;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  swift_defaultActor_initialize();
  v15 = OUTLINED_FUNCTION_35_0();
  type metadata accessor for ActorBridgeWrapper.TasksStorage(v15, v16, v17, v18);
  v4[15] = sub_222E2A564();
  v4[17] = (*(v8 + 32))(v9, v8);
  v4[18] = v19;
  v20 = type metadata accessor for SimpleSubscriptionRegistrar();
  swift_allocObject();
  v45 = sub_222E3D5DC();
  v21 = *(v8 + 40);
  v43 = a1;
  v44 = a2;
  v22 = v42;
  v23 = v21(a1, &v45, a2, v20, v41, &off_283636CC8, v14, v9, v8);
  if (v22)
  {
    (*(v38 + 32))(v40, v14, v39);

    v24 = OUTLINED_FUNCTION_35_0();
    type metadata accessor for ActorBridgeWrapper(v24, v25, v26, v27);
    swift_defaultActor_destroy();
    OUTLINED_FUNCTION_14();
    (*(v28 + 8))();
    OUTLINED_FUNCTION_39_0();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v4[16] = v23;
    v29 = OUTLINED_FUNCTION_35_0();
    type metadata accessor for ActorBridgeWrapper.MessageHandlersContainer(v29, v30, v31, v32);
    v33 = OUTLINED_FUNCTION_27_1();
    v34 = sub_222E2A640(v33);
    OUTLINED_FUNCTION_14();
    (*(v35 + 8))();
    v5[14] = v34;
  }

  return v5;
}

void *ActorBridgeWrapper.deinit()
{

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ActorBridgeWrapper.__deallocating_deinit()
{
  ActorBridgeWrapper.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_222E2B1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ActorBridgeWrapper(0, *(a1 + 80), *(a1 + 88), a4);

  return Bridge.aceCommandsGroups()();
}

uint64_t sub_222E2B208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ActorBridgeWrapper(0, *(a3 + 80), *(a3 + 88), a4);

  return Bridge.aceCommands(forGroup:)();
}

uint64_t sub_222E2B264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ActorBridgeWrapper(0, *(a5 + 80), *(a5 + 88), a4);

  return Bridge.handle(_:executionContextInfo:reply:)(a1);
}

void *sub_222E2B2D8(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&var1, a1);
  if (!v2)
  {
    return var1;
  }

  return result;
}

uint64_t sub_222E2B310()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D590, &unk_222E41C90);
  if (dynamic_cast_existential_0_class_conditional(v0, v0))
  {
    v1 = &qword_27D04D550;
    v2 = &qword_222E42600;
  }

  else
  {
    v1 = &unk_27D04D548;
    v2 = &unk_222E41970;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

void *sub_222E2B378(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_222E2B310();
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_222E38330(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_222E2B46C(uint64_t (*a1)(void))
{
  a1();

  return sub_222E403A4();
}

uint64_t sub_222E2B4F0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222E2B61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ActorBridgeWrapper.LoopTaskContainer(255, *(a1 + 80), *(a1 + 88), a4);
  result = sub_222E400C4();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_222E2B728(uint64_t a1)
{
  sub_222E3F794();
  if (v1 <= 0x3F)
  {
    sub_222E2B814();
    if (v2 <= 0x3F)
    {
      sub_222E2B878(319, &qword_28131F1D0, MEMORY[0x277D857B8]);
      if (v3 <= 0x3F)
      {
        sub_222E2B878(319, &qword_28131F1E0, MEMORY[0x277D85788]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_222E2B814()
{
  if (!qword_28131F1C8)
  {
    v0 = sub_222E3FEF4();
    if (!v1)
    {
      atomic_store(v0, &qword_28131F1C8);
    }
  }
}

void sub_222E2B878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D04D510, &qword_222E428A0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void *sub_222E2B900@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222E2B2D8(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

unint64_t sub_222E2B954()
{
  result = qword_28131F190;
  if (!qword_28131F190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131F190);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1)
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2080;

  return sub_222E3F934();
}

uint64_t OUTLINED_FUNCTION_49()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1, float a2)
{
  *v3 = a2;
  *(v4 - 152) = v2;

  return sub_222E3F974();
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1)
{

  return swift_dynamicCastClass();
}

unint64_t OUTLINED_FUNCTION_66(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_222E16068(a1, a2, va);
}

unint64_t OUTLINED_FUNCTION_67(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_222E16068(v3, v4, a3);
}

uint64_t InsightRequestSummaryLogger.init()()
{
  sub_222E2C6B8(0, &qword_28131F190, 0x277D86200);
  sub_222E400A4();

  return sub_222E3FB24();
}

uint64_t InsightRequestSummaryLogger.emitMarker(assistantId:sessionId:requestId:component:marker:)(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8)
{
  v39 = a4;
  v37 = a1;
  v14 = sub_222E3F794();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a8;
  (*(v15 + 16))(v17, a3, v14);
  sub_222E3FC24();
  sub_222E3FC24();
  sub_222E3FC24();
  v18 = sub_222E3FB04();
  v19 = sub_222E3FFC4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = v20;
    v36 = swift_slowAlloc();
    v43 = v36;
    *v20 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D568, &qword_222E419A0);
    v21 = swift_allocObject();
    v33 = a6;
    v22 = v21;
    *(v21 + 16) = xmmword_222E41980;
    *(v21 + 32) = 0x6E61747369737361;
    *(v21 + 40) = 0xEB00000000644974;
    *(v21 + 48) = v37;
    *(v21 + 56) = a2;
    v34 = a2;
    v37 = v18;
    *(v21 + 64) = 0x496E6F6973736573;
    *(v21 + 72) = 0xE900000000000064;
    sub_222E16B10(&qword_28131FF80, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    sub_222E3FC24();
    v23 = v19;
    v22[10] = sub_222E40264();
    v22[11] = v24;
    v22[12] = 0x4974736575716572;
    v22[13] = 0xE900000000000064;
    v22[14] = v39;
    v22[15] = a5;
    v22[16] = 0x6E656E6F706D6F63;
    v22[17] = 0xE900000000000074;
    v22[18] = v33;
    v22[19] = a7;
    v22[20] = 0x72656B72616DLL;
    v22[21] = 0xE600000000000000;
    v41 = 0;
    v42 = 0xE000000000000000;
    v40 = v38;
    sub_222E3FC24();
    sub_222E3FC24();
    sub_222E40214();
    v25 = v42;
    v22[22] = v41;
    v22[23] = v25;
    v26 = static InsightRequestSummaryLogger.constructLogJsonString(_:)(v22);
    v28 = v27;

    v29 = sub_222E16068(v26, v28, &v43);

    v30 = v35;
    *(v35 + 1) = v29;
    v18 = v37;
    _os_log_impl(&dword_222E12000, v37, v23, "%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_7();
  }

  return (*(v15 + 8))(v17, v14);
}

uint64_t InsightRequestSummaryKey.rawValue.getter()
{
  v1 = *v0;
  sub_222E3FC24();
  return v1;
}

uint64_t sub_222E2C1E8@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = InsightRequestSummaryKey.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_222E2C228@<X0>(uint64_t *a1@<X8>)
{
  result = InsightRequestSummaryKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Marker.hashValue.getter()
{
  v1 = *v0;
  sub_222E40334();
  MEMORY[0x223DD0B60](v1);
  return sub_222E40354();
}

uint64_t sub_222E2C420(uint64_t a1)
{
  v2 = *v1;
  sub_222E40334();
  MEMORY[0x223DD0B60](v2);
  return sub_222E40354();
}

unint64_t sub_222E2C464(uint64_t a1)
{
  sub_222E3FAA4();
  sub_222E16B10(&qword_27D04D578, MEMORY[0x277D5D298], MEMORY[0x277D5D2A8]);
  v2 = sub_222E3FC84();

  return sub_222E2C4FC(a1, v2);
}

unint64_t sub_222E2C4FC(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_222E3FAA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_222E16B10(&qword_27D04D7C0, MEMORY[0x277D5D298], MEMORY[0x277D5D2B0]);
    v9 = sub_222E3FC94();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_222E2C6B8(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_222E2C6FC()
{
  result = qword_27D04D570;
  if (!qword_27D04D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D04D570);
  }

  return result;
}

uint64_t sub_222E2C778(uint64_t a1)
{
  result = sub_222E3FB14();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InsightRequestSummaryMessageDescription(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Marker(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Marker(_BYTE *result, unsigned int a2, unsigned int a3)
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

NSObject *sub_222E2CA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = sub_222E3F794();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (!v14)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_28131F210);
    }

    v23 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v23, qword_28131FFA0);
    v15 = sub_222E3FB04();
    v24 = sub_222E3FFA4();
    if (os_log_type_enabled(v15, v24))
    {
      v25 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = sub_222E40074();
      v28 = sub_222E16068(v26, v27, &v54);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v29 = sub_222E40074();
      v31 = sub_222E16068(v29, v30, &v54);

      *(v25 + 14) = v31;
      _os_log_impl(&dword_222E12000, v15, v24, "Failed to create RequestLink event for source component: %s and target component: %s", v25, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }

    goto LABEL_14;
  }

  v15 = v14;
  v53 = v5;
  v16 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v16)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_28131F210);
    }

    v32 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v32, qword_28131FFA0);
    v33 = sub_222E3FB04();
    v34 = sub_222E3FFA4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_10();
      v36 = OUTLINED_FUNCTION_9_0();
      v54 = v36;
      *v35 = 136315138;
      v37 = sub_222E40074();
      v39 = sub_222E16068(v37, v38, &v54);

      *(v35 + 4) = v39;
      OUTLINED_FUNCTION_8_2(&dword_222E12000, v40, v41, "Failed to create source link event for source component: %s");
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_7();
    }

LABEL_14:
    return 0;
  }

  v17 = v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v18)
  {
    if (qword_28131F210 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_28131F210);
    }

    v43 = sub_222E3FB14();
    OUTLINED_FUNCTION_4_2(v43, qword_28131FFA0);
    v44 = sub_222E3FB04();
    v45 = sub_222E3FFA4();
    if (OUTLINED_FUNCTION_3_2(v45))
    {
      v46 = OUTLINED_FUNCTION_10();
      v47 = OUTLINED_FUNCTION_9_0();
      v54 = v47;
      *v46 = 136315138;
      v48 = sub_222E40074();
      v50 = sub_222E16068(v48, v49, &v54);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_222E12000, v44, a4, "Failed to create target link event for target component: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      OUTLINED_FUNCTION_1_3();
      OUTLINED_FUNCTION_7();
    }

    return 0;
  }

  v19 = v18;
  [v17 setComponent_];
  sub_222E1BB7C();
  v52 = a4;
  v20 = *(v10 + 16);
  v20(v13, a2, v8);
  v21 = sub_222E1BBC0(v13);
  [v17 setUuid_];

  [v19 setComponent_];
  v20(v13, v52, v8);
  v22 = sub_222E1BBC0(v13);
  [v19 setUuid_];

  [v15 setSource:v17];
  [v15 setTarget:v19];

  return v15;
}

uint64_t sub_222E2CF20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D730, qword_222E41B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

const char *IntelligenceFlowFeatureFlags.feature.getter()
{
  if (*v0)
  {
    return "IFOrchestration";
  }

  else
  {
    return "IntelligenceFlow";
  }
}

uint64_t IntelligenceFlowFeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for IntelligenceFlowFeatureFlags;
  v4[4] = sub_222E2D094();
  LOBYTE(v4[0]) = v1;
  v2 = sub_222E3F7A4();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}