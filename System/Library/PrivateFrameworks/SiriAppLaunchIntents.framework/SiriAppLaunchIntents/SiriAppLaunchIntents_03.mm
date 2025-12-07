uint64_t sub_266104384()
{
  OUTLINED_FUNCTION_1_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_11(v1);

  return v3(v2);
}

uint64_t sub_26610441C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_11(v1);

  return v3(v2);
}

uint64_t objectdestroy_14Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2661044FC()
{
  OUTLINED_FUNCTION_1_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_11(v1);

  return v3(v2);
}

id sub_266104598(const void *a1, uint64_t a2, void *a3)
{
  v11[3] = type metadata accessor for InstalledAppProvider();
  v11[4] = &protocol witness table for InstalledAppProvider;
  v11[0] = a2;
  v10[3] = &type metadata for AppsSearcher;
  v10[4] = &off_2877CC0A0;
  v10[0] = swift_allocObject();
  memcpy((v10[0] + 16), a1, 0xA8uLL);
  v9[3] = &type metadata for AppTerminationProvider;
  v9[4] = &off_2877CC0D0;
  sub_2660C5864(v10, a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_appsSearcher);
  sub_2660C5864(v11, a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_installedApps);
  sub_2660C5864(v9, a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_terminationProvider);
  v8.receiver = a3;
  v8.super_class = type metadata accessor for CloseAppIntentHandler();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v6;
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_9()
{

  JUMPOUT(0x26677CC30);
}

uint64_t OUTLINED_FUNCTION_18_7()
{

  return MEMORY[0x2821FBB70](592428, 0xE300000000000000, v0);
}

uint64_t OUTLINED_FUNCTION_23_2()
{
}

void OUTLINED_FUNCTION_31_3()
{
}

char *OUTLINED_FUNCTION_34_3()
{

  return CloseAppIntentResponse.init(code:userActivity:)(4, 0);
}

char *OUTLINED_FUNCTION_35_1()
{

  return CloseAppIntentResponse.init(code:userActivity:)(5, 0);
}

void OUTLINED_FUNCTION_40_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_41_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_43_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_2661048E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v174 = a1;
  v175 = a2;
  sub_26618B790();
  OUTLINED_FUNCTION_2_2();
  v161 = v3;
  v162 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_6();
  v160 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  MEMORY[0x28223BE20](v5 - 8);
  v159 = &v149 - v6;
  OUTLINED_FUNCTION_18_2();
  sub_26618B8E0();
  OUTLINED_FUNCTION_2_2();
  v157 = v8;
  v158 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_6();
  v156 = v9;
  OUTLINED_FUNCTION_18_2();
  v163 = sub_26618B980();
  OUTLINED_FUNCTION_2_2();
  v152 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_6();
  v153 = v12;
  OUTLINED_FUNCTION_18_2();
  v164 = sub_26618B840();
  OUTLINED_FUNCTION_2_2();
  v166 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_6();
  v165 = v15;
  v16 = OUTLINED_FUNCTION_18_2();
  v155 = type metadata accessor for AppLaunchIntent(v16);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_6();
  v167 = v18;
  OUTLINED_FUNCTION_18_2();
  sub_26618C0E0();
  OUTLINED_FUNCTION_2_2();
  v168 = v20;
  v169 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_6();
  v170 = v21;
  OUTLINED_FUNCTION_18_2();
  v22 = sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v26);
  v28 = &v149 - v27;
  v29 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_24_1();
  v35 = (v33 - v34);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v41);
  v43 = &v149 - v42;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  OUTLINED_FUNCTION_37_0(v29, qword_2814B4A98);
  v44 = v31;
  v45 = *(v31 + 16);
  v154 = v46;
  v172 = v45;
  v173 = (v31 + 16);
  v45(v43);
  v47 = sub_26618C690();
  v48 = sub_26618CAA0();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_20_6(v49);
    OUTLINED_FUNCTION_28_5(&dword_2660B7000, v47, v48, "CloseAppNeedsValueStrategy.actionForInput() called");
    OUTLINED_FUNCTION_7_2();
  }

  v50 = v29;
  v171 = *(v44 + 8);
  v171(v43, v29);
  v51 = v174;
  sub_26618B770();
  v52 = OUTLINED_FUNCTION_33_1();
  v54 = v53(v52);
  if (v54 == *MEMORY[0x277D5C128])
  {
    v55 = OUTLINED_FUNCTION_33_1();
    v56(v55);
    v58 = v168;
    v57 = v169;
    v59 = v170;
    (*(v168 + 32))(v170, v28, v169);
    v60 = v167;
    (*(v58 + 16))(v167, v59, v57);
    if (sub_2660C97B4())
    {
      sub_26618B290();
LABEL_43:
      sub_2660DD7D0(v60);
      return (*(v58 + 8))(v59, v57);
    }

    if (qword_2814B3D30 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_7_10();
    sub_266107F48(v79, 255, v80, &unk_2661939B8);
    sub_26618BDA0();
    if (v176 != 11)
    {
      if (sub_266146C4C(v176) == 0x65736F6C63 && v81 == 0xE500000000000000)
      {
      }

      else
      {
        v83 = sub_26618D000();

        if ((v83 & 1) == 0)
        {
          if (qword_2814B2C38 != -1)
          {
            OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
          }

          OUTLINED_FUNCTION_37_0(v29, qword_2814B4A80);
          OUTLINED_FUNCTION_16_7();
          v84();
          v85 = sub_26618C690();
          v86 = sub_26618CA90();
          if (OUTLINED_FUNCTION_16_4(v86))
          {
            *OUTLINED_FUNCTION_6_2() = 0;
            OUTLINED_FUNCTION_7_7(&dword_2660B7000, v87, v88, "Incorrect verb in intent for flow, ignoring input");
            v59 = v170;
            OUTLINED_FUNCTION_7_2();
          }

          OUTLINED_FUNCTION_21_7();
          v89();
          sub_26618B2B0();
          goto LABEL_43;
        }
      }
    }

    OUTLINED_FUNCTION_16_7();
    v109();
    v110 = sub_26618C690();
    v111 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_16_4(v111))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_7_7(&dword_2660B7000, v112, v113, "CloseAppNeedsValueStrategy.actionForInput() handling");
      v59 = v170;
      OUTLINED_FUNCTION_7_2();
    }

    OUTLINED_FUNCTION_21_7();
    v114();
    sub_26618B2A0();
    goto LABEL_43;
  }

  if (v54 == *MEMORY[0x277D5C160])
  {
    v61 = OUTLINED_FUNCTION_33_1();
    v62(v61);
    v64 = v165;
    v63 = v166;
    v65 = v164;
    (*(v166 + 32))(v165, v28, v164);
    v66 = v156;
    sub_26618B820();
    v67 = sub_26618B8B0();
    (*(v157 + 8))(v66, v158);
    v68 = v159;
    sub_266139C58(v67, v159);

    v69 = v163;
    if (__swift_getEnumTagSinglePayload(v68, 1, v163) == 1)
    {
      sub_2660BF79C(v68, &qword_28005BF28, &qword_26618F960);
      if (qword_2814B2C38 != -1)
      {
        OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
      }

      OUTLINED_FUNCTION_37_0(v50, qword_2814B4A80);
      OUTLINED_FUNCTION_16_7();
      v70();
      v71 = sub_26618C690();
      v72 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_3(v72))
      {
        v73 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_20_6(v73);
        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_28_5(v74, v75, v76, v77);
        OUTLINED_FUNCTION_7_2();
      }

      OUTLINED_FUNCTION_21_7();
      v78();
      sub_26618B2B0();
      return (*(v63 + 8))(v64, v65);
    }

    OUTLINED_FUNCTION_22_2();
    v107 = v153;
    (*(v66 + 32))(v153, v68, v69);
    if (sub_26618B940() & 1) != 0 || (sub_26618B930())
    {
      sub_26618B290();
LABEL_35:
      (*(v66 + 8))(v107, v69);
      return (*(v63 + 8))(v64, v65);
    }

    v115 = sub_266144F30();
    if (!v115)
    {
      sub_26618B2B0();
      goto LABEL_35;
    }

    v116 = v115;
    sub_26613BA0C();
    v118 = v117;
    if (sub_266145BC4(v117) != 0x65736F6C63 || v119 != 0xE500000000000000)
    {
      v121 = sub_26618D000();

      if (v121)
      {
        goto LABEL_68;
      }

      v66 = 1953068401;
      if (sub_266145BC4(v118) == 1953068401 && v122 == 0xE400000000000000)
      {
        OUTLINED_FUNCTION_22_2();
      }

      else
      {
        v124 = sub_26618D000();

        OUTLINED_FUNCTION_22_2();
        if (v124)
        {
          goto LABEL_68;
        }

        if (sub_266145BC4(v118) != 0x627265566F6ELL || v125 != 0xE600000000000000)
        {
          v127 = sub_26618D000();

          if ((v127 & 1) == 0)
          {
            if (qword_2814B2C38 != -1)
            {
              OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
            }

            OUTLINED_FUNCTION_37_0(v50, qword_2814B4A80);
            OUTLINED_FUNCTION_16_7();
            v128();
            v129 = sub_26618C690();
            v130 = sub_26618CAB0();
            v131 = OUTLINED_FUNCTION_15_3(v130);
            v132 = v166;
            if (v131)
            {
              v66 = OUTLINED_FUNCTION_6_2();
              *v66 = 0;
              OUTLINED_FUNCTION_17_3();
              _os_log_impl(v133, v134, v135, v136, v66, 2u);
              OUTLINED_FUNCTION_22_2();
              OUTLINED_FUNCTION_7_2();
            }

            OUTLINED_FUNCTION_21_7();
            v137();
            goto LABEL_74;
          }

LABEL_68:
          v138 = __swift_project_boxed_opaque_existential_1((v150 + 152), *(v150 + 176));
          v139 = sub_2660FA19C(v138, v116);
          if (qword_28005BC80 != -1)
          {
            swift_once();
          }

          v140 = sub_26612EAB0(v139, qword_28005D1A0);

          v132 = v166;
          if (v140)
          {
            OUTLINED_FUNCTION_16_7();
            v141();
            v142 = sub_26618C690();
            v143 = sub_26618CAA0();
            if (OUTLINED_FUNCTION_15_3(v143))
            {
              v66 = OUTLINED_FUNCTION_6_2();
              *v66 = 0;
              OUTLINED_FUNCTION_17_3();
              _os_log_impl(v144, v145, v146, v147, v66, 2u);
              OUTLINED_FUNCTION_22_2();
              OUTLINED_FUNCTION_7_2();
            }

            OUTLINED_FUNCTION_21_7();
            v148();
            sub_26618B2A0();
            goto LABEL_75;
          }

LABEL_74:
          sub_26618B2B0();
LABEL_75:

          (*(v66 + 8))(v153, v69);
          return (*(v132 + 8))(v165, v65);
        }
      }
    }

    goto LABEL_68;
  }

  v170 = v44 + 8;
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  OUTLINED_FUNCTION_37_0(v29, qword_2814B4A80);
  OUTLINED_FUNCTION_16_7();
  v90();
  v91 = v160;
  v92 = v161;
  v93 = v162;
  (*(v161 + 16))(v160, v51, v162);
  v94 = sub_26618C690();
  v95 = sub_26618CAB0();
  if (OUTLINED_FUNCTION_16_4(v95))
  {
    v96 = OUTLINED_FUNCTION_49_0();
    v174 = v50;
    v97 = v96;
    v169 = v96;
    v173 = swift_slowAlloc();
    v177 = v173;
    *v97 = 136315138;
    v98 = v151;
    LODWORD(v172) = v35;
    sub_26618B770();
    v99 = sub_266145588(v98);
    v100 = v93;
    v102 = v101;
    (*(v92 + 8))(v91, v100);
    v103 = sub_266103A98(v99, v102, &v177);

    v104 = v169;
    *(v169 + 4) = v103;
    _os_log_impl(&dword_2660B7000, v94, v172, "Unable to handle parse: %s", v104, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v173);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v105 = v35;
    v106 = v174;
  }

  else
  {

    (*(v92 + 8))(v91, v93);
    v105 = v35;
    v106 = v50;
  }

  v171(v105, v106);
  sub_26618B2B0();
  return (*(v24 + 8))(v28, v22);
}

uint64_t sub_2661057D0()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_26618C6B0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x2822009F8](sub_26610587C, 0, 0);
}

uint64_t sub_26610587C()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v2 = v0[5];
  v1 = v0[6];
  OUTLINED_FUNCTION_37_0(v0[4], qword_2814B4A98);
  (*(v2 + 16))(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_1(v4))
  {
    v5 = OUTLINED_FUNCTION_6_2();
    *v5 = 0;
    _os_log_impl(&dword_2660B7000, v3, v4, "CloseAppNeedsValueStrategy.makePromptForValue() called", v5, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];

  (*(v7 + 8))(v6, v8);
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_2661059E8;

  return sub_26617B588();
}

uint64_t sub_2661059E8()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_5_3();

  return v0();
}

uint64_t sub_266105AF0()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_26618B790();
  v1[7] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B8E0();
  v1[10] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618B840();
  v1[13] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_8_2();
  type metadata accessor for AppLaunchIntent(0);
  v1[16] = OUTLINED_FUNCTION_8_2();
  v11 = sub_26618C6B0();
  v1[17] = v11;
  OUTLINED_FUNCTION_0_4(v11);
  v1[18] = v12;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v13 = sub_26618C0E0();
  v1[25] = v13;
  OUTLINED_FUNCTION_0_4(v13);
  v1[26] = v14;
  v1[27] = OUTLINED_FUNCTION_8_2();
  v15 = sub_26618B800();
  v1[28] = v15;
  OUTLINED_FUNCTION_0_4(v15);
  v1[29] = v16;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266105D98, 0, 0);
}

uint64_t sub_266105D98()
{
  v138 = v0;
  v1 = v0 + 31;
  v2 = v0 + 29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C370, &qword_2661912D0);
  v133 = sub_26618B6B0();
  sub_26618B770();
  v3 = OUTLINED_FUNCTION_11_2();
  v5 = v4(v3);
  if (v5 == *MEMORY[0x277D5C128])
  {
    v6 = v0[31];
    v7 = v0[26];
    v8 = v0[27];
    v9 = v0[25];
    (*(v0[29] + 96))(v6, v0[28]);
    (*(v7 + 32))(v8, v6, v9);
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    v10 = v0[24];
    v11 = v0[18];
    OUTLINED_FUNCTION_37_0(v0[17], qword_2814B4A98);
    v129 = v12;
    v127 = *(v11 + 16);
    v127(v10);
    v13 = sub_26618C690();
    v14 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_1(v14))
    {
      v15 = OUTLINED_FUNCTION_6_2();
      *v15 = 0;
      _os_log_impl(&dword_2660B7000, v13, v14, "CloseAppNeedsValueStrategy.parseValueResponse() Creating intent from NLv3IntentOnly parse", v15, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    v16 = v0[26];
    v17 = v0[27];
    v19 = v0[24];
    v18 = v0[25];
    v124 = v0[23];
    v21 = v0[17];
    v20 = v0[18];
    v22 = v0[16];
    v23 = v0[6];

    v24 = v19;
    v25 = *(v20 + 8);
    v25(v24, v21);
    (*(v16 + 16))(v22, v17, v18);
    v26 = __swift_project_boxed_opaque_existential_1((v23 + 152), *(v23 + 176));
    sub_266107968(v22, v26, v133);
    (v127)(v124, v129, v21);
    v27 = v133;
    v28 = sub_26618C690();
    LOBYTE(v16) = sub_26618CAD0();

    if (os_log_type_enabled(v28, v16))
    {
      v29 = OUTLINED_FUNCTION_49_0();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v27;
      *v30 = v27;
      v31 = v27;
      OUTLINED_FUNCTION_17_3();
      _os_log_impl(v32, v33, v34, v35, v29, 0xCu);
      sub_2660BF79C(v30, &qword_28005C1F8, &unk_266190550);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();
    }

    v36 = OUTLINED_FUNCTION_11_2();
    (v25)(v36);
    v37 = [v27 application];
    v38 = v37;
    if (v37)
    {
      v37 = type metadata accessor for Application();
    }

    else
    {
      v135 = 0;
      v136 = 0;
    }

    v91 = v0[26];
    v90 = v0[27];
    v92 = v0[25];
    v93 = v0[16];
    v94 = v0[3];
    v134 = v38;
    v137 = v37;
    type metadata accessor for CloseAppIntent();
    sub_26618B4A0();
    sub_2660DD7D0(v93);
    (*(v91 + 8))(v90, v92);
    goto LABEL_34;
  }

  if (v5 != *MEMORY[0x277D5C160])
  {
    v131 = v0 + 28;
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v73 = v0[18];
    v72 = v0[19];
    v75 = v0[8];
    v74 = v0[9];
    v76 = v0[7];
    v77 = v0[4];
    OUTLINED_FUNCTION_37_0(v0[17], qword_2814B4A80);
    v79 = *(v73 + 16);
    v78 = v73 + 16;
    v79(v72);
    (*(v75 + 16))(v74, v77, v76);
    v80 = sub_26618C690();
    v81 = sub_26618CAB0();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = v0[30];
      v126 = v0[17];
      v128 = v0[19];
      v84 = v0[8];
      v83 = v0[9];
      v121 = v0[7];
      v123 = v0[18];
      OUTLINED_FUNCTION_49_0();
      v85 = OUTLINED_FUNCTION_47_2();
      v134 = v85;
      *v78 = 136315138;
      sub_26618B770();
      v86 = sub_266145588(v82);
      v88 = v87;
      (*(v84 + 8))(v83, v121);
      v2 = v0 + 29;
      v89 = sub_266103A98(v86, v88, &v134);

      *(v78 + 4) = v89;
      _os_log_impl(&dword_2660B7000, v80, v81, "Unable to process parse: %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v85);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v123 + 8))(v128, v126);
    }

    else
    {
      v96 = v0[18];
      v95 = v0[19];
      v97 = v0[17];
      v99 = v0[8];
      v98 = v0[9];
      v100 = v0[7];

      (*(v99 + 8))(v98, v100);
      (*(v96 + 8))(v95, v97);
    }

    goto LABEL_28;
  }

  v39 = v0[15];
  v40 = v0[31];
  v41 = v0[14];
  v42 = v0[13];
  (*(v0[29] + 96))(v40, v0[28]);
  (*(v41 + 32))(v39, v40, v42);
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v131 = v0 + 13;
  v43 = v0[22];
  v44 = v0[18];
  OUTLINED_FUNCTION_37_0(v0[17], qword_2814B4A98);
  v122 = v45;
  v125 = *(v44 + 16);
  v125(v43);
  v46 = sub_26618C690();
  v47 = sub_26618CAA0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_6_2();
    *v48 = 0;
    _os_log_impl(&dword_2660B7000, v46, v47, "CloseAppNeedsValueStrategy.parseValueResponse() Creating intent from USO parse", v48, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v49 = v0[22];
  v51 = v0[17];
  v50 = v0[18];
  v53 = v0[11];
  v52 = v0[12];
  v54 = v0[10];

  v55 = *(v50 + 8);
  v55(v49, v51);
  sub_26618B820();
  v56 = sub_266144AE8();
  (*(v53 + 8))(v52, v54);
  v57 = v0[17];
  if (!v56)
  {
    (v125)(v0[20], v122, v0[17]);
    v101 = sub_26618C690();
    v102 = sub_26618CAB0();
    v2 = v0 + 14;
    if (OUTLINED_FUNCTION_15_3(v102))
    {
      v103 = OUTLINED_FUNCTION_6_2();
      *v103 = 0;
      OUTLINED_FUNCTION_17_3();
      _os_log_impl(v104, v105, v106, v107, v103, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    v108 = OUTLINED_FUNCTION_11_2();
    (v55)(v108);
    v1 = v0 + 15;
LABEL_28:
    sub_2660D3004();
    swift_allocError();
    *v109 = 0;
    v110 = *v1;
    v111 = *v131;
    v112 = *v2;
    swift_willThrow();

    (*(v112 + 8))(v110, v111);

    OUTLINED_FUNCTION_5_3();
    goto LABEL_35;
  }

  v132 = v55;
  v58 = v0[21];
  v59 = __swift_project_boxed_opaque_existential_1((v0[6] + 152), *(v0[6] + 176));
  v60 = v133;
  sub_266106FB4(v56, v59, v133);
  (v125)(v58, v122, v57);

  v61 = sub_26618C690();
  v62 = sub_26618CAD0();

  v63 = os_log_type_enabled(v61, v62);
  v64 = v0[21];
  v65 = v0[17];
  if (v63)
  {
    v130 = v0[17];
    OUTLINED_FUNCTION_49_0();
    v66 = OUTLINED_FUNCTION_47_2();
    v134 = v66;
    *v133 = 136315138;
    v0[2] = v56;
    sub_26618C0D0();

    v67 = sub_26618C8D0();
    v69 = sub_266103A98(v67, v68, &v134);

    *(v133 + 1) = v69;
    _os_log_impl(&dword_2660B7000, v61, v62, "CloseAppNeedsValueStrategy.parseValueResponse() Finished creating intent from parse: %s", v133, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    OUTLINED_FUNCTION_7_2();
    v60 = v133;
    OUTLINED_FUNCTION_7_2();

    v70 = v64;
    v71 = v130;
  }

  else
  {

    v70 = v64;
    v71 = v65;
  }

  v132(v70, v71);
  v114 = [v60 application];
  v115 = v114;
  if (v114)
  {
    v114 = type metadata accessor for Application();
  }

  else
  {
    v135 = 0;
    v136 = 0;
  }

  v116 = v0[14];
  v117 = v0[15];
  v118 = v0[13];
  v94 = v0[3];
  v134 = v115;
  v137 = v114;
  type metadata accessor for CloseAppIntent();
  sub_26618B4A0();

  (*(v116 + 8))(v117, v118);
LABEL_34:
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C360, &qword_266190D78);
  __swift_storeEnumTagSinglePayload(v94, 0, 1, v119);

  OUTLINED_FUNCTION_5_3();
LABEL_35:

  return v113();
}

void *sub_2661068C0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_2660D31B4((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  return v0;
}

uint64_t sub_2661068F8()
{
  sub_2661068C0();

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

uint64_t sub_266106974()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266107F90;

  return sub_266105AF0();
}

uint64_t sub_266106A28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266106AC4;

  return sub_2661057D0();
}

uint64_t sub_266106AC4()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_5_3();

  return v0();
}

uint64_t sub_266106BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CloseAppNeedsValueStrategy();
  *v8 = v4;
  v8[1] = sub_266107F90;

  return MEMORY[0x2821B9BF8](a1, a2, v9, a4);
}

uint64_t sub_266106C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CloseAppNeedsValueStrategy();
  *v8 = v4;
  v8[1] = sub_266107F90;

  return MEMORY[0x2821B9C00](a1, a2, v9, a4);
}

uint64_t sub_266106D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for CloseAppNeedsValueStrategy();
  *v12 = v6;
  v12[1] = sub_266107F90;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_266106E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for CloseAppNeedsValueStrategy();
  *v14 = v7;
  v14[1] = sub_266107F90;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v15, a7);
}

void sub_266106F40(uint64_t a1, void *a2)
{
  type metadata accessor for Application();
  v3 = sub_26618C990();

  [a2 setSuggestedApplications_];
}

uint64_t sub_266106FB4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C460, &unk_2661912D8);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_24_1();
  v121 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v122 = &v117 - v10;
  OUTLINED_FUNCTION_18_2();
  v11 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_1();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17_5();
  v123 = v19;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v117 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v117 - v24;
  v129[3] = &type metadata for ReferenceResolver;
  v129[4] = &off_2877CC6F0;
  v129[0] = swift_allocObject();
  sub_2660CFC00(a2, v129[0] + 16);
  v124 = a3;
  v26 = [a3 requestedApplication];
  if (!v26)
  {
    type metadata accessor for Application();
    v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v26 = OUTLINED_FUNCTION_14_6();
    [v124 setRequestedApplication_];
  }

  sub_266139FE4(v28, v29, v30, v31, v32, v33, v34, v35, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127[0], v127[1]);
  v120 = v13;
  if ((v36 & 1) == 0 && !sub_266139E9C())
  {
    v52 = [v124 requestedApplication];
    if (v52)
    {
      v53 = v52;
      v54 = sub_26613B704();
      sub_26614484C(v54, v55, 0, 0, 0, 0);
    }

    v56 = __swift_project_boxed_opaque_existential_1(v129, &type metadata for ReferenceResolver);
    v119 = a1;
    v57 = sub_2660FA19C(v56, a1);
    v58 = 0;
    v59 = MEMORY[0x277D84F90];
    v128[0] = MEMORY[0x277D84F90];
    v60 = *(v57 + 16);
    for (i = (v57 + 40); ; i += 2)
    {
      if (v60 == v58)
      {

        sub_266106F40(v59, v124);
        goto LABEL_38;
      }

      if (v58 >= *(v57 + 16))
      {
        break;
      }

      v63 = *(i - 1);
      v62 = *i;
      type metadata accessor for Application();
      v64 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v23 = OUTLINED_FUNCTION_14_6();
      sub_26614484C(0, 0xE000000000000000, v63, v62, 0, 0);

      MEMORY[0x26677BD40](v65);
      if (*((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26618C9D0();
      }

      sub_26618C9F0();
      v59 = v128[0];
      ++v58;
    }

    __break(1u);
    goto LABEL_51;
  }

  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  OUTLINED_FUNCTION_37_0(v11, qword_2814B4A98);
  v37 = *(v13 + 16);
  v119 = v38;
  v118 = v37;
  v37(v25);
  v39 = sub_26618C690();
  v40 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_1(v40))
  {
    v41 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_20_6(v41);
    OUTLINED_FUNCTION_28_5(&dword_2660B7000, v39, v40, "CloseAppConverter user referenced an app without name or verb only request");
    OUTLINED_FUNCTION_7_2();
  }

  v42 = *(v13 + 8);
  v43 = OUTLINED_FUNCTION_11_2();
  v42(v43);
  sub_266106F40(MEMORY[0x277D84F90], v124);
  sub_26618BDF0();
  if (v128[3])
  {
    sub_2660BF73C(v128, v127, &qword_28005C0A8, qword_26618FAE0);
    v44 = sub_26618BE00();
    if (OUTLINED_FUNCTION_8_12(v44, v45, v46, v44) || (v47 = sub_26618BDE0(), (OUTLINED_FUNCTION_8_12(v47, v48, v49, v47) & 1) != 0))
    {

      sub_26618BED0();

      if (v125)
      {
        v50 = sub_26618BB90();

        OUTLINED_FUNCTION_35_2();
        v51 = sub_266162360(v50);
        sub_266106F40(v51, v124);
      }

      __swift_destroy_boxed_opaque_existential_1(v127);
      goto LABEL_34;
    }

    v66 = sub_26618BE80();
    if (OUTLINED_FUNCTION_8_12(v66, v67, v68, v66))
    {

      OUTLINED_FUNCTION_35_2();
      v69 = sub_266162714();
      sub_266106F40(v69, v124);
LABEL_29:
      __swift_destroy_boxed_opaque_existential_1(v127);
      goto LABEL_34;
    }

    v70 = sub_26618BFA0();
    if (OUTLINED_FUNCTION_8_12(v70, v71, v72, v70))
    {

      sub_26618BFC0();
      swift_allocObject();
      sub_26618BFB0();
      v73 = MEMORY[0x26677B1D0]();

      if (v73)
      {
        OUTLINED_FUNCTION_35_2();
        v74 = sub_266162360(v73);
        sub_266106F40(v74, v124);
      }

      goto LABEL_29;
    }

    __swift_destroy_boxed_opaque_existential_1(v127);
  }

  OUTLINED_FUNCTION_31_4();
  v75();
  v76 = sub_26618C690();
  v77 = sub_26618CAB0();
  if (OUTLINED_FUNCTION_15_3(v77))
  {
    v78 = OUTLINED_FUNCTION_6_2();
    v117 = v17;
    OUTLINED_FUNCTION_20_6(v78);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_28_5(v79, v80, v81, v82);
    OUTLINED_FUNCTION_7_2();

    (v42)(v117, v11);
  }

  else
  {

    (v42)(v17, v11);
  }

LABEL_34:
  sub_2660BF79C(v128, &qword_28005C0A8, qword_26618FAE0);
  sub_2661040AC(v124);
  v83 = sub_2661046B8();

  if (!v83)
  {
    OUTLINED_FUNCTION_31_4();
    v84();
    v85 = sub_26618C690();
    v86 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_3(v86))
    {
      v87 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_20_6(v87);
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_28_5(v88, v89, v90, v91);
      OUTLINED_FUNCTION_7_2();
    }

    v92 = OUTLINED_FUNCTION_33_1();
    v42(v92);
  }

LABEL_38:
  if (qword_2814B2C40 != -1)
  {
LABEL_51:
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  OUTLINED_FUNCTION_37_0(v11, qword_2814B4A98);
  v93 = v120;
  v94 = v123;
  (*(v120 + 16))(v123);
  v95 = v124;
  v96 = sub_26618C690();
  v97 = sub_26618CAA0();

  if (os_log_type_enabled(v96, v97))
  {
    v124 = v11;
    v98 = v93;
    OUTLINED_FUNCTION_49_0();
    v99 = OUTLINED_FUNCTION_47_2();
    v128[0] = v99;
    *v23 = 136315138;
    v100 = sub_2661040AC(v95);
    if (v100)
    {
      sub_266100294(v100);
      v102 = v101;
      v104 = v103;
    }

    else
    {
      v104 = 0xE200000000000000;
      v102 = 23899;
    }

    v105 = sub_266103A98(v102, v104, v128);

    *(v23 + 4) = v105;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v106, v107, v108, v109, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v99);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    (*(v98 + 8))(v123, v124);
  }

  else
  {

    (*(v93 + 8))(v94, v11);
  }

  v111 = v121;
  v110 = v122;
  sub_26613E87C();
  v112 = sub_26618BF30();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v110, 1, v112);
  v114 = 0;
  if (EnumTagSinglePayload != 1)
  {
    sub_2660BF73C(v110, v111, &qword_28005C460, &unk_2661912D8);
    v115 = *(v112 - 8);
    if ((*(v115 + 88))(v111, v112) == *MEMORY[0x277D5EA28])
    {
      v114 = 2;
    }

    else
    {
      (*(v115 + 8))(v111, v112);
      v114 = 0;
    }
  }

  [v95 setAppReference_];
  sub_2660BF79C(v110, &qword_28005C460, &unk_2661912D8);
  return __swift_destroy_boxed_opaque_existential_1(v129);
}

uint64_t sub_266107968(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_1();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v43[-1] - v13;
  v44 = &type metadata for ReferenceResolver;
  v45 = &off_2877CC6F0;
  v43[0] = swift_allocObject();
  sub_2660CFC00(a2, v43[0] + 16);
  v15 = [a3 requestedApplication];
  if (!v15)
  {
    type metadata accessor for Application();
    v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v15 = OUTLINED_FUNCTION_14_6();
    [a3 setRequestedApplication_];
  }

  v17 = [a3 requestedApplication];
  if (v17)
  {
    v18 = v17;
    sub_266144578();
  }

  if (qword_2814B3DC8 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLaunchIntent(0);
  OUTLINED_FUNCTION_7_10();
  sub_266107F48(v19, 255, v20, &unk_2661939B8);
  sub_26618BDA0();
  if (v42 - 1 < 5)
  {
    v21 = (v42 - 1) + 1;
  }

  else
  {
    v21 = 0;
  }

  [a3 setAppReference_];
  if (qword_2814B3DE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_24_3();
  [a3 setAppNoun_];
  if (sub_26614E894())
  {
    OUTLINED_FUNCTION_24_3();
    switch(v42)
    {
      case 1:

        goto LABEL_16;
      case 4:
        goto LABEL_18;
      default:
        v22 = sub_26618D000();

        if (v22)
        {
LABEL_16:
          sub_26618BF10();
          swift_allocObject();
          sub_26618BF00();
          v23 = MEMORY[0x26677B1D0]();
          if (v23)
          {
            v24 = v23;
            __swift_project_boxed_opaque_existential_1(v43, v44);
            v25 = sub_266162360(v24);
            sub_266106F40(v25, a3);
          }

          else
          {
            if (qword_2814B2C40 != -1)
            {
              OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
            }

            OUTLINED_FUNCTION_37_0(v5, qword_2814B4A98);
            (*(v7 + 16))(v14);
            v27 = sub_26618C690();
            v28 = sub_26618CAB0();
            if (OUTLINED_FUNCTION_15_1(v28))
            {
              v29 = OUTLINED_FUNCTION_6_2();
              *v29 = 0;
              _os_log_impl(&dword_2660B7000, v27, v28, "Error building entity for reference resolution", v29, 2u);
              OUTLINED_FUNCTION_7_2();
            }

            else
            {
            }

            (*(v7 + 8))(v14, v5);
          }
        }

        else
        {
LABEL_18:
          __swift_project_boxed_opaque_existential_1(v43, v44);
          v26 = sub_266162714();
          sub_266106F40(v26, a3);
        }

        if (qword_2814B2C40 != -1)
        {
          OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
        }

        OUTLINED_FUNCTION_37_0(v5, qword_2814B4A98);
        (*(v7 + 16))(v11);
        v30 = a3;
        v31 = sub_26618C690();
        v32 = sub_26618CAA0();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = OUTLINED_FUNCTION_49_0();
          v34 = swift_slowAlloc();
          v42 = v34;
          *v33 = 136315138;
          v35 = sub_2661040AC(v30);
          if (v35)
          {
            sub_266100294(v35);
            v37 = v36;
            v39 = v38;
          }

          else
          {
            v39 = 0xE200000000000000;
            v37 = 23899;
          }

          v40 = sub_266103A98(v37, v39, &v42);

          *(v33 + 4) = v40;
          _os_log_impl(&dword_2660B7000, v31, v32, "CloseAppConverter suggestedApplications: %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v34);
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_7_2();
        }

        (*(v7 + 8))(v11, v5);
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_266107F48(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_8_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_14_6()
{

  return sub_2661038FC(0, 0, 0, 0xE000000000000000);
}

void *OUTLINED_FUNCTION_24_3()
{

  return sub_26618BDA0();
}

void OUTLINED_FUNCTION_28_5(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_2661080B4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2661080CC()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 40) = sub_26618C850();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_266108194;

  return sub_2660C7BDC();
}

uint64_t sub_266108194()
{
  OUTLINED_FUNCTION_32();
  v3 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2661082A8()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_26618B1E0();
  v1[5] = swift_task_alloc();
  v4 = sub_26618B6A0();
  v1[6] = v4;
  v1[7] = *(v4 - 8);
  v1[8] = swift_task_alloc();
  v5 = sub_26618C6B0();
  v1[9] = v5;
  v1[10] = *(v5 - 8);
  v1[11] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2661083E8()
{
  if (qword_2814B2C40 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v3, qword_2814B4A98);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2660B7000, v5, v6, "CloseApp.UnsupportedValueStrategy.makeUnsupportedValueOutput() called", v7, 2u);
    MEMORY[0x26677CC30](v7, -1, -1);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C370, &qword_2661912D0);
  v11 = sub_26618B6C0();
  v12 = [v11 unsupportedReason];

  v13 = CloseAppApplicationUnsupportedReason.init(rawValue:)(v12);
  if ((v14 & 1) != 0 || v13 != 2)
  {
    sub_2660D3004();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_5_3();

    return v18();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0[4] + 56), *(v0[4] + 80));
    v15 = swift_task_alloc();
    v0[12] = v15;
    *v15 = v0;
    v15[1] = sub_26610867C;

    return sub_2661080B4(0xD000000000000014, 0x8000000266199110);
  }
}

uint64_t sub_26610867C()
{
  OUTLINED_FUNCTION_32();
  v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  if (v1)
  {

    OUTLINED_FUNCTION_5_3();

    return v7();
  }

  else
  {
    *(v4 + 104) = v0;
    v9 = OUTLINED_FUNCTION_3_6();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_2661087C4(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[4];
  sub_26618B1B0();
  sub_26618B620();
  v4 = v3[15];
  v5 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v6 = swift_allocObject();
  v1[14] = v6;
  *(v6 + 16) = xmmword_26618F7E0;
  *(v6 + 32) = v2;
  v7 = v2;
  v8 = swift_task_alloc();
  v1[15] = v8;
  *v8 = v1;
  v8[1] = sub_266108908;
  v9 = v1[8];
  v10 = v1[2];

  return MEMORY[0x2821BB488](v10, v6, v9, v4, v5);
}

uint64_t sub_266108908()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266108A0C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_266108ACC()
{
  OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C370, &qword_2661912D0);
  v1 = sub_26618B6B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_266108B40()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2660D3208(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  return v0;
}

uint64_t sub_266108B70()
{
  sub_266108B40();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t sub_266108BC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266108F9C;

  return sub_2661082A8();
}

uint64_t sub_266108C74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266108D08;

  return sub_266108AB8(a1);
}

uint64_t sub_266108D08()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_32();
  v3 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_266108DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CloseAppUnsupportedValueStrategy();
  *v8 = v4;
  v8[1] = sub_266108EB8;

  return MEMORY[0x2821B9E00](a1, a2, v9, a4);
}

uint64_t sub_266108EB8()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_5_3();

  return v3();
}

id sub_266108FA0()
{
  result = [objc_allocWithZone(type metadata accessor for DeepLaunchIntentHandler()) init];
  qword_28005D190 = result;
  return result;
}

uint64_t sub_266108FD4@<X0>(uint64_t (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v79 = a1;
  v77 = a2;
  sub_26618B790();
  OUTLINED_FUNCTION_2_2();
  v74 = v3;
  v75 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_69_0();
  v71 = v4;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v5);
  v68 = &v67 - v6;
  v73 = sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_69_0();
  v70 = v10;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  v14 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_69_0();
  v78 = v18;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v19);
  v69 = &v67 - v20;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v67 - v22;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v24 = __swift_project_value_buffer(v14, qword_2814B4A98);
  v25 = v14;
  v72 = *(v16 + 16);
  v72(v23, v24, v14);
  v26 = sub_26618C690();
  v27 = sub_26618CAA0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2660B7000, v26, v27, "DeepLaunchFlowStrategy.actionForInput() called", v28, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v29 = *(v16 + 8);
  v30 = v25;
  v76 = v16 + 8;
  v29(v23, v25);
  sub_26618B770();
  sub_2660C87C0();
  (*(v8 + 8))(v13, v73);
  v31 = v81;
  if (v81)
  {
    v32 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    v33 = (*(v32 + 8))(v31, v32);
    __swift_destroy_boxed_opaque_existential_1(v80);
    v34 = v75;
    v35 = v78;
    if (v33)
    {
      sub_26613C14C();
      if (v36)
      {

        v37 = v69;
        v72(v69, v24, v30);
        v38 = v74;
        v39 = v68;
        (*(v74 + 16))(v68, v79, v34);
        v40 = sub_26618C690();
        v41 = sub_26618CAA0();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v79 = v30;
          v43 = v42;
          v44 = v39;
          v78 = swift_slowAlloc();
          v80[0] = v78;
          *v43 = 136315138;
          v45 = v70;
          sub_26618B770();
          v46 = sub_266145588(v45);
          v48 = v47;
          (*(v38 + 8))(v44, v34);
          v49 = sub_266103A98(v46, v48, v80);

          *(v43 + 4) = v49;
          _os_log_impl(&dword_2660B7000, v40, v41, "DeepLaunchFlowStrategy going to handle parse %s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v78);
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_7_2();

          v50 = v69;
          v51 = v79;
        }

        else
        {

          (*(v38 + 8))(v39, v34);
          v50 = v37;
          v51 = v30;
        }

        v29(v50, v51);
        sub_26618B2A0();
      }
    }
  }

  else
  {
    sub_2660DD714(v80);
    v34 = v75;
    v35 = v78;
  }

  v72(v35, v24, v30);
  v52 = v74;
  v53 = v71;
  (*(v74 + 16))(v71, v79, v34);
  v54 = sub_26618C690();
  v55 = sub_26618CAA0();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = v53;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v80[0] = v58;
    *v57 = 136315138;
    v59 = v70;
    sub_26618B770();
    v60 = sub_266145588(v59);
    v79 = v29;
    v61 = v60;
    v62 = v30;
    v64 = v63;
    (*(v52 + 8))(v56, v34);
    v65 = sub_266103A98(v61, v64, v80);

    *(v57 + 4) = v65;
    _os_log_impl(&dword_2660B7000, v54, v55, "DeepLaunchFlowStrategy unable to handle parse %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v79(v78, v62);
  }

  else
  {

    (*(v52 + 8))(v53, v34);
    v29(v35, v30);
  }

  return sub_26618B2B0();
}

uint64_t sub_266109670()
{
  OUTLINED_FUNCTION_18();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_26618B800();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_26618C6B0();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2661097A4, 0, 0);
}

uint64_t sub_2661097A4()
{
  v56 = v0;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = __swift_project_value_buffer(v2, qword_2814B4A98);
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_26618C690();
  v7 = sub_26618CAA0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2660B7000, v6, v7, "DeepLaunchFlowStrategy.makeIntentFromParse() called", v8, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v9 = v0[17];
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[8];

  v13 = *(v10 + 8);
  v13(v9, v11);
  v14 = v0[8];
  if (v12)
  {
    v54 = v0[8];
  }

  else
  {
    v54 = [objc_allocWithZone(type metadata accessor for DeepLaunchIntent()) init];
  }

  v15 = v14;
  sub_2660C87C0();
  v16 = v0[5];
  if (v16)
  {
    v17 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v18 = (*(v17 + 8))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v18)
    {
      sub_26613C14C();
      if (v19)
      {
        v20 = v0[9];

        v21 = __swift_project_boxed_opaque_existential_1((v20 + 16), *(v20 + 40));
        sub_26610A4C8(v18, v21, v54);

        v22 = v0[1];

        return v22(v54);
      }
    }
  }

  else
  {
    sub_2660DD714((v0 + 2));
  }

  v53 = v13;
  v24 = v0[13];
  v26 = v0[10];
  v25 = v0[11];
  v27 = v0[7];
  v5(v0[16], v4, v0[14]);
  v28 = *(v25 + 16);
  v28(v24, v27, v26);
  v29 = sub_26618C690();
  v30 = sub_26618CAB0();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[16];
  v34 = v0[13];
  v33 = v0[14];
  if (v31)
  {
    v52 = v0[16];
    v35 = v0[11];
    v36 = v0[12];
    v49 = v0[10];
    v51 = v0[14];
    v37 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v55 = v50;
    *v37 = 136315138;
    v28(v36, v34, v49);
    v38 = sub_266145588(v36);
    v39 = v30;
    v41 = v40;
    (*(v35 + 8))(v34, v49);
    v42 = sub_266103A98(v38, v41, &v55);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_2660B7000, v29, v39, "DeepLaunchFlowStrategy.makeIntentFromParse() unable to handle parse %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v43 = v51;
    v44 = v52;
  }

  else
  {
    v46 = v0[10];
    v45 = v0[11];

    (*(v45 + 8))(v34, v46);
    v44 = v32;
    v43 = v33;
  }

  v53(v44, v43);
  sub_2660D3004();
  swift_allocError();
  *v47 = 0;
  swift_willThrow();

  v48 = v0[1];

  return v48();
}

uint64_t sub_266109C84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266109D2C;

  return sub_266109670();
}

uint64_t sub_266109D2C()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_266109E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DeepLaunchFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_266109E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for DeepLaunchFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2660FDC04;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_266109F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for DeepLaunchFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2660F44FC;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_26610A004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for DeepLaunchFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2660FDC04;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_26610A0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for DeepLaunchFlowStrategy();
  *v12 = v6;
  v12[1] = sub_2660FDC04;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_26610A1AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2660F4320;

  return (sub_2660FFA5C)(a1, a2);
}

uint64_t sub_26610A260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for DeepLaunchFlowStrategy();
  *v12 = v6;
  v12[1] = sub_2660FDC04;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_26610A3A4(uint64_t a1)
{
  result = sub_26610A41C(&qword_28005C468, &unk_266191498);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26610A41C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DeepLaunchFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26610A45C(uint64_t a1, void *a2)
{
  v3 = sub_26618C990();

  [a2 setPageCanonicalNames_];
}

uint64_t sub_26610A4C8(uint64_t a1, uint64_t a2, void *a3)
{
  v21[3] = &type metadata for ReferenceResolver;
  v21[4] = &off_2877CC6F0;
  v21[0] = swift_allocObject();
  sub_2660CFC00(a2, v21[0] + 16);
  sub_26613C14C();
  if (v6)
  {
    v7 = sub_26618C8A0();
  }

  else
  {
    v7 = 0;
  }

  [a3 setPageName_];

  sub_26613C48C();
  sub_26610A45C(v8, a3);
  v9 = [a3 requestedApplication];
  if (!v9)
  {
    type metadata accessor for Application();
    v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v9 = sub_2661038FC(0, 0, 0, 0xE000000000000000);
    [a3 setRequestedApplication_];
  }

  v11 = [a3 requestedApplication];
  if (v11)
  {
    v12 = v11;
    v13 = sub_26613B704();
    v15 = v14;
    v16 = __swift_project_boxed_opaque_existential_1(v21, &type metadata for ReferenceResolver);
    v17 = sub_2660FA19C(v16, a1);
    if (v17[2])
    {
      v19 = v17[4];
      v18 = v17[5];
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    sub_26614484C(v13, v15, v19, v18, 0, 0);
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

id sub_26610A69C()
{
  result = [objc_allocWithZone(type metadata accessor for DeepLaunchIntentHandler()) init];
  qword_28005D198 = result;
  return result;
}

uint64_t sub_26610A6D0()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_26618C6B0();
  v1[5] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_8_2();
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26610A778()
{
  OUTLINED_FUNCTION_19();
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v1 = v0[6];
  __swift_project_value_buffer(v0[5], qword_2814B4A98);
  v2 = OUTLINED_FUNCTION_8_3();
  v3(v2);
  v4 = sub_26618C690();
  v5 = sub_26618CAA0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_30_0(v6);
    _os_log_impl(&dword_2660B7000, v4, v5, "DeepLaunchHandleIntentStrategy.makeIntentHandledResponse() called", v1, 2u);
    OUTLINED_FUNCTION_28_3();
  }

  v7 = OUTLINED_FUNCTION_12_1();
  v8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C488, qword_266191728);
  v9 = sub_26618B5F0();
  v10 = [v9 requestedApplication];

  if (v10 && (sub_26610410C(v10), v11))
  {
    v12 = v11;
  }

  else
  {

    v12 = 0xE000000000000000;
  }

  v0[8] = v12;
  v13 = sub_26618B5F0();
  sub_26610C848(v13);
  v0[9] = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[10] = v15;
  *v15 = v16;
  v15[1] = sub_26610A974;

  return sub_26610AABC();
}

uint64_t sub_26610A974()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_26610AABC()
{
  OUTLINED_FUNCTION_18();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v7);
  v1[8] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618B6A0();
  v1[9] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v1[10] = v9;
  v1[11] = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618C340();
  OUTLINED_FUNCTION_3_0(v10);
  v1[12] = OUTLINED_FUNCTION_8_2();
  v11 = sub_26618C6B0();
  v1[13] = v11;
  OUTLINED_FUNCTION_0_4(v11);
  v1[14] = v12;
  v1[15] = OUTLINED_FUNCTION_8_2();
  v13 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26610ABF4()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  __swift_project_value_buffer(v0[13], qword_2814B4A98);
  v1 = OUTLINED_FUNCTION_8_3();
  v2(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_2(v4))
  {
    v5 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_30_0(v5);
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v6, v7, "DeepLaunchHandleIntentStrategy.makeIntentHandledResponse() called");
    OUTLINED_FUNCTION_28_3();
  }

  v8 = OUTLINED_FUNCTION_12_1();
  v9(v8);
  type metadata accessor for DeepLaunchCATPatternsExecutor(0);
  sub_26618C330();
  v0[16] = sub_26618C2D0();

  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_26610AD90;
  v11 = OUTLINED_FUNCTION_20_7();

  return sub_2660BD174(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_26610AD90()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 144) = v5;
  *(v3 + 152) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26610AE9C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 56);
  sub_26618B1B0();
  OUTLINED_FUNCTION_23_3();
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 160) = v2;
  *v2 = v3;
  v2[1] = sub_26610AF70;
  v4 = OUTLINED_FUNCTION_17_6();

  return MEMORY[0x2821BB480](v4);
}

uint64_t sub_26610AF70()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26610B06C()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_26610B120()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_5_3();

  return v0();
}

uint64_t sub_26610B1AC()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_26610B258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  v7 = OUTLINED_FUNCTION_3_0(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  swift_bridgeObjectRetain_n();
  sub_26618C2F0();
  sub_26618C300();
  OUTLINED_FUNCTION_22_3();
  sub_2660BDBE8(v9, a1);
  swift_bridgeObjectRetain_n();
  sub_26618C2F0();
  OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for DeepLaunchLaunchingQuickActionParameters(0);
  return sub_2660BDBE8(v9, a1 + *(v10 + 24));
}

uint64_t sub_26610B364()
{
  OUTLINED_FUNCTION_18();
  v0[7] = v1;
  v2 = sub_26618C6B0();
  v0[8] = v2;
  OUTLINED_FUNCTION_0_4(v2);
  v0[9] = v3;
  v0[10] = OUTLINED_FUNCTION_8_2();
  v4 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26610B408()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  __swift_project_value_buffer(v0[8], qword_2814B4A98);
  v1 = OUTLINED_FUNCTION_8_3();
  v2(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_2(v4))
  {
    v5 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_30_0(v5);
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v6, v7, "DeepLaunchHandleIntentStrategy.makeIntentHandledResponse() called");
    OUTLINED_FUNCTION_28_3();
  }

  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[7];
  v11 = v0[8];

  (*(v9 + 8))(v8, v11);
  sub_26618B040();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_26618B0D0();
  sub_26618B0C0();
  sub_26618B050();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v12 = sub_26618B870();
  v13 = MEMORY[0x277D5C1D8];
  v10[3] = v12;
  v10[4] = v13;
  __swift_allocate_boxed_opaque_existential_0(v10);
  sub_26618B860();

  OUTLINED_FUNCTION_5_3();

  return v14();
}

uint64_t sub_26610B5B0()
{
  OUTLINED_FUNCTION_18();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v4 = sub_26618C6B0();
  v1[9] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[10] = v5;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26610B66C()
{
  v39 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C488, qword_266191728);
  v1 = sub_26618B5E0();
  v2 = OBJC_IVAR___DeepLaunchIntentResponse_code;
  swift_beginAccess();
  v3 = *&v1[v2];

  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = __swift_project_value_buffer(v5, qword_2814B4A98);
  v8 = *(v6 + 16);
  v8(v4, v7, v5);
  v9 = sub_26618C690();
  v10 = sub_26618CAA0();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[12];
  v13 = v0[10];
  v36 = v3;
  v37 = v0[9];
  if (v11)
  {
    v14 = swift_slowAlloc();
    v35 = v7;
    v15 = swift_slowAlloc();
    v38 = v15;
    *v14 = 136315138;
    v0[5] = v3;
    v16 = sub_26618C8D0();
    v18 = sub_266103A98(v16, v17, &v38);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2660B7000, v9, v10, "DeepLaunchHandleIntentStrategy.makeFailureHandlingIntentResponse() called with code %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v19 = v15;
    v7 = v35;
    MEMORY[0x26677CC30](v19, -1, -1);
    MEMORY[0x26677CC30](v14, -1, -1);

    v20 = *(v13 + 8);
    v20(v12, v37);
  }

  else
  {

    v20 = *(v13 + 8);
    v20(v12, v37);
  }

  v21 = sub_26618B5F0();
  v22 = [v21 requestedApplication];

  if (v22 && (sub_26610410C(v22), (v0[13] = v23) != 0))
  {
    if (v36 == 100)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_28_0();
      v0[14] = v24;
      *v24 = v25;
      v24[1] = sub_26610BA34;

      return sub_26610BB84();
    }
  }

  else
  {
    v8(v0[11], v7, v0[9]);
    v27 = sub_26618C690();
    v28 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_2(v28))
    {
      v29 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_30_0(v29);
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v30, v31, "DeepLaunchHandleIntentStrategy.makeFailureHandlingIntentResponse no app name or action name");
      OUTLINED_FUNCTION_28_3();
    }

    v32 = OUTLINED_FUNCTION_12_1();
    (v20)(v32);
  }

  sub_2660D3004();
  swift_allocError();
  *v33 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_5_3();

  return v34();
}

uint64_t sub_26610BA34()
{
  OUTLINED_FUNCTION_19();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_26610BB84()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v5);
  v1[6] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618B6A0();
  v1[7] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618C340();
  OUTLINED_FUNCTION_3_0(v8);
  v1[10] = OUTLINED_FUNCTION_8_2();
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26610BC6C()
{
  OUTLINED_FUNCTION_1_0();
  type metadata accessor for DeepLaunchCATPatternsExecutor(0);
  sub_26618C330();
  *(v0 + 88) = sub_26618C2D0();

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_26610BD50;
  v2 = OUTLINED_FUNCTION_20_7();

  return sub_2660BD58C(v2, v3, v4, v5);
}

uint64_t sub_26610BD50()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26610BE5C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 40);
  sub_26618B1B0();
  OUTLINED_FUNCTION_23_3();
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 120) = v2;
  *v2 = v3;
  v2[1] = sub_26610BF30;
  v4 = OUTLINED_FUNCTION_17_6();

  return MEMORY[0x2821BB480](v4);
}

uint64_t sub_26610BF30()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26610C02C()
{
  OUTLINED_FUNCTION_19();

  v1 = OUTLINED_FUNCTION_12_1();
  v2(v1);

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_26610C0D0()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_5_3();

  return v0();
}

uint64_t sub_26610C150()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_26610C214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeepLaunchHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_26610C2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeepLaunchHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_26610C39C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_26610A6D0();
}

uint64_t sub_26610C448()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_26610B364();
}

uint64_t sub_26610C4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeepLaunchHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2660D2E00;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_26610C5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeepLaunchHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_26610C668()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_26610B5B0();
}

uint64_t sub_26610C714(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2660DA1C4;

  return (sub_2660FFC04)(a1, a2);
}

unint64_t sub_26610C7C8(uint64_t a1)
{
  result = sub_26610C7F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26610C7F0()
{
  result = qword_28005C480;
  if (!qword_28005C480)
  {
    type metadata accessor for DeepLaunchHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C480);
  }

  return result;
}

uint64_t sub_26610C848(void *a1)
{
  v2 = [a1 pageName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26618C8B0();

  return v3;
}

uint64_t OUTLINED_FUNCTION_22_3()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_23_3()
{

  return sub_26618B620();
}

id sub_26610C924()
{
  sub_26618B0E0();
  if (qword_2814B4A70 != -1)
  {
    swift_once();
  }

  v0 = static InstalledAppProvider.shared;
  v21 = type metadata accessor for InstalledAppProvider();
  v22 = &protocol witness table for InstalledAppProvider;
  *&v20 = v0;
  v18 = &type metadata for CoreDuetAppSelectionResolver;
  v19 = &off_2877CC198;
  v1 = swift_allocObject();
  *&v17 = v1;
  *(v1 + 40) = &type metadata for CoreDuetKnowledgeStore;
  *(v1 + 48) = &off_2877CC1C8;
  v26 = &type metadata for AppsSearcher;
  v27 = &off_2877CC0A0;
  v2 = swift_allocObject();
  v25[0] = v2;
  v16[20] = 1;
  sub_2660C5864(&v20, v16);
  sub_2660C5864(&v20, v15);
  v3 = objc_opt_self();

  sub_266104118([v3 sharedPreferences]);
  v16[8] = type metadata accessor for RegexAppsResolver(0);
  v16[9] = &off_2877CC718;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v16[5]);
  sub_2660C5864(v15, boxed_opaque_existential_0);
  sub_26618A600();
  __swift_destroy_boxed_opaque_existential_1(v15);
  if (v24)
  {
    v16[13] = &type metadata for AceAppResolver;
    v16[14] = &off_2877CC000;
    v5 = swift_allocObject();
    v16[10] = v5;
    sub_2660B9EB8(&v23, v5 + 56);
    sub_2660B9EB8(&v20, v5 + 16);
    *(v5 + 96) = 1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v20);
    sub_2660C8040(&v23, &qword_28005C3C0, &qword_266191100);
    memset(&v16[10], 0, 40);
  }

  sub_2660B9EB8(&v17, &v16[15]);
  memcpy((v2 + 16), v16, 0xA8uLL);
  v6 = type metadata accessor for AppShortcutItemRunner();
  v7 = sub_2660CB854();
  if (v7)
  {
    v8 = &off_2877CAB08;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  v16[0] = v7;
  v16[3] = v6;
  v16[4] = v8;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  MEMORY[0x28223BE20](v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_26610ECE8(v11, v16);
  __swift_destroy_boxed_opaque_existential_1(v25);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t sub_26610CCDC()
{
  OUTLINED_FUNCTION_18();
  v1[32] = v2;
  v1[33] = v0;
  v3 = sub_26618C6B0();
  v1[34] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[35] = v4;
  v1[36] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26610CD88(uint64_t a1)
{
  if (qword_2814B2C48 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
  }

  v2 = *(v1 + 256);
  OUTLINED_FUNCTION_14_3(a1, qword_2814B4AB0);
  v3 = OUTLINED_FUNCTION_13_2();
  v4(v3);
  v5 = v2;
  v6 = sub_26618C690();
  v7 = sub_26618CAD0();

  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_49_0();
    v8 = OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_15_6(v8, 5.7779e-34);
    OUTLINED_FUNCTION_27_1();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_2660C8040(v8, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_28_3();
  }

  v14 = *(v1 + 256);

  v15 = OUTLINED_FUNCTION_12_1();
  v16(v15);
  sub_26610E7B0(v14);
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = [*(v1 + 256) requestedApplication];
  if (!v18 || (v19 = sub_266104124(v18), !v20))
  {

    goto LABEL_14;
  }

  v21 = v19;
  v22 = v20;
  sub_26610E814(*(v1 + 264) + OBJC_IVAR____TtC20SiriAppLaunchIntents23DeepLaunchIntentHandler_hsqaRunner, v1 + 56);
  if (!*(v1 + 80))
  {

    sub_2660C8040(v1 + 56, &qword_28005C4A0, &qword_266191788);
    goto LABEL_14;
  }

  sub_2660B9EB8((v1 + 56), v1 + 16);
  OUTLINED_FUNCTION_3_12();
  sub_2660CCB54(v21, v22, v1 + 136);
  if (!*(v1 + 160))
  {
    v32 = *(v1 + 256);
    sub_2660C8040(v1 + 136, &qword_28005BFF0, &qword_266191790);
    result = sub_26610E884(v32);
    if (result)
    {
      v33 = result;
      v34 = 0;
      v41 = *(result + 16);
      for (i = result + 40; ; i += 16)
      {
        if (v41 == v34)
        {

          goto LABEL_26;
        }

        if (v34 >= *(v33 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_3_12();

        sub_2660CCB54(v21, v22, v1 + 216);
        if (*(v1 + 240))
        {
          break;
        }

        ++v34;
        result = sub_2660C8040(v1 + 216, &qword_28005BFF0, &qword_266191790);
      }

      sub_2660B9EB8((v1 + 216), v1 + 176);
      v36 = *(v1 + 200);
      v37 = *(v1 + 208);
      __swift_project_boxed_opaque_existential_1((v1 + 176), v36);
      result = (*(v37 + 8))(v36, v37);
      if (!v38)
      {
        goto LABEL_31;
      }

      type metadata accessor for DeepLaunchPageNameResolutionResult();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v40 = sub_26618C8A0();

      [ObjCClassFromMetadata successWithResolvedString_];

      v29 = (v1 + 176);
      goto LABEL_12;
    }

LABEL_26:

    __swift_destroy_boxed_opaque_existential_1((v1 + 16));
LABEL_14:
    type metadata accessor for DeepLaunchPageNameResolutionResult();
    static DeepLaunchPageNameResolutionResult.unsupported(forReason:)(1);
    goto LABEL_15;
  }

  sub_2660B9EB8((v1 + 136), v1 + 96);
  v23 = *(v1 + 120);
  v24 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1((v1 + 96), v23);
  result = (*(v24 + 8))(v23, v24);
  if (v26)
  {

    type metadata accessor for DeepLaunchPageNameResolutionResult();
    v27 = swift_getObjCClassFromMetadata();
    v28 = sub_26618C8A0();

    [v27 successWithResolvedString_];

    v29 = (v1 + 96);
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1((v1 + 16));
LABEL_15:

    v30 = OUTLINED_FUNCTION_5_7();

    return v31(v30);
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26610D254(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26610D318;

  return sub_26610CCDC();
}

uint64_t sub_26610D318()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  (v3)[2](v3, v2);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_26610D478()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_26618C6B0();
  v1[5] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[6] = v4;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26610D530(uint64_t a1)
{
  if (qword_2814B2C48 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
  }

  v2 = v1[6];
  v3 = v1[3];
  v1[9] = OUTLINED_FUNCTION_14_3(a1, qword_2814B4AB0);
  v1[10] = *(v2 + 16);
  v1[11] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = OUTLINED_FUNCTION_13_2();
  v5(v4);
  v6 = v3;
  v7 = sub_26618C690();
  v8 = sub_26618CAD0();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_49_0();
    v9 = OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_15_6(v9, 5.7779e-34);
    OUTLINED_FUNCTION_27_1();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_2660C8040(v9, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_28_3();
  }

  v15 = v1[6];
  v16 = v1[3];

  v1[12] = *(v15 + 8);
  v1[13] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17 = OUTLINED_FUNCTION_12_1();
  v18(v17);
  v19 = [v16 requestedApplication];
  v1[14] = v19;
  if (v19)
  {
    v20 = v19;
    __swift_project_boxed_opaque_existential_1((v1[4] + OBJC_IVAR____TtC20SiriAppLaunchIntents23DeepLaunchIntentHandler_appsSearcher), *(v1[4] + OBJC_IVAR____TtC20SiriAppLaunchIntents23DeepLaunchIntentHandler_appsSearcher + 24));
    v21 = sub_2660C9D24(v20);
    v23 = v22;
    v1[15] = v22;
    v24 = sub_2660C9D30(v20);
    v26 = v25;
    v1[16] = v25;
    v27 = swift_task_alloc();
    v1[17] = v27;
    *v27 = v1;
    v27[1] = sub_26610D7B8;

    return sub_2661515C4(v21, v23, v24, v26, 0);
  }

  else
  {
    type metadata accessor for DeepLaunchRequestedApplicationResolutionResult();
    static DeepLaunchRequestedApplicationResolutionResult.unsupported(forReason:)(2);

    v29 = OUTLINED_FUNCTION_5_7();

    return v30(v29);
  }
}

uint64_t sub_26610D7B8()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  *(v2 + 144) = v3;
  *(v2 + 152) = v0;

  if (v0)
  {
    v4 = sub_26610D9E8;
  }

  else
  {

    v4 = sub_26610D8D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26610D8D8()
{
  OUTLINED_FUNCTION_1_0();
  if (sub_2661046B8() < 1)
  {
    v4 = *(v0 + 112);

    type metadata accessor for DeepLaunchRequestedApplicationResolutionResult();
    static DeepLaunchRequestedApplicationResolutionResult.unsupported(forReason:)(2);
  }

  else
  {
    v1 = *(v0 + 144) & 0xC000000000000001;
    sub_2661046C8();
    if (v1)
    {
      v2 = MEMORY[0x26677C150](0, *(v0 + 144));
    }

    else
    {
      v2 = *(*(v0 + 144) + 32);
    }

    v3 = *(v0 + 112);

    type metadata accessor for DeepLaunchRequestedApplicationResolutionResult();
    static ApplicationResolutionResult.success(with:)(v2);
  }

  v5 = OUTLINED_FUNCTION_5_7();

  return v6(v5);
}

uint64_t sub_26610D9E8()
{
  v26 = v0;
  v1 = v0[19];
  v2 = v0[10];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[5];

  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_26618C690();
  v8 = sub_26618CAA0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[19];
    v10 = v0[12];
    v11 = OUTLINED_FUNCTION_49_0();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    v0[2] = v9;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v14 = sub_26618C8D0();
    v16 = sub_266103A98(v14, v15, &v25);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2660B7000, v7, v8, "An error occurred trying to find apps: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v17 = OUTLINED_FUNCTION_12_1();
    v10(v17);
  }

  else
  {
    v18 = v0[12];

    v19 = OUTLINED_FUNCTION_12_1();
    v18(v19);
  }

  v20 = v0[19];
  v21 = v0[14];
  type metadata accessor for DeepLaunchRequestedApplicationResolutionResult();
  static DeepLaunchRequestedApplicationResolutionResult.unsupported(forReason:)(1);

  v22 = OUTLINED_FUNCTION_5_7();

  return v23(v22);
}

uint64_t sub_26610DC10(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26610EE18;

  return sub_26610D478();
}

uint64_t sub_26610DCD4()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_26618C6B0();
  v0[2] = v1;
  OUTLINED_FUNCTION_0_4(v1);
  v0[3] = v2;
  v0[4] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26610DD7C()
{
  OUTLINED_FUNCTION_1_0();
  if (qword_2814B2C48 != -1)
  {
    v0 = OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
  }

  OUTLINED_FUNCTION_14_3(v0, qword_2814B4AB0);
  v1 = OUTLINED_FUNCTION_13_2();
  v2(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_27_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_28_3();
  }

  v10 = OUTLINED_FUNCTION_12_1();
  v11(v10);
  v12 = objc_allocWithZone(type metadata accessor for DeepLaunchIntentResponse());
  DeepLaunchIntentResponse.init(code:userActivity:)(1, 0);

  v13 = OUTLINED_FUNCTION_5_7();

  return v14(v13);
}

uint64_t sub_26610DED8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26610EE18;

  return sub_26610DCD4();
}

uint64_t sub_26610DF90()
{
  OUTLINED_FUNCTION_18();
  v1[26] = v2;
  v1[27] = v0;
  v3 = sub_26618C6B0();
  v1[28] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[29] = v4;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26610E048(uint64_t a1)
{
  v90 = v1;
  if (qword_2814B2C48 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
  }

  v2 = *(v1 + 208);
  OUTLINED_FUNCTION_14_3(a1, qword_2814B4AB0);
  v3 = OUTLINED_FUNCTION_13_2();
  v88 = v4;
  v4(v3);
  v5 = v2;
  v6 = sub_26618C690();
  v7 = sub_26618CAA0();

  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_49_0();
    v8 = OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_15_6(v8, 5.7779e-34);
    OUTLINED_FUNCTION_27_1();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_2660C8040(v8, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_28_3();
  }

  v14 = *(v1 + 232);
  v15 = *(v1 + 208);

  v16 = *(v14 + 8);
  v17 = OUTLINED_FUNCTION_12_1();
  v16(v17);
  v18 = [v15 requestedApplication];
  if (v18)
  {
    v19 = sub_266104124(v18);
    if (v20)
    {
      v21 = v19;
      sub_26610E7B0(*(v1 + 208));
      if (v22)
      {
        sub_26610E814(*(v1 + 216) + OBJC_IVAR____TtC20SiriAppLaunchIntents23DeepLaunchIntentHandler_hsqaRunner, v1 + 56);
        if (!*(v1 + 80))
        {
          sub_2660C8040(v1 + 56, &qword_28005C4A0, &qword_266191788);
          return sub_26618CE80();
        }

        sub_2660B9EB8((v1 + 56), v1 + 16);
        OUTLINED_FUNCTION_3_12();
        v23 = OUTLINED_FUNCTION_19_6();
        sub_2660CCB54(v23, v24, v25);
        if (*(v1 + 120))
        {
          sub_2660C8040(v1 + 96, &qword_28005BFF0, &qword_266191790);
          OUTLINED_FUNCTION_3_12();
          v26 = OUTLINED_FUNCTION_19_6();
          sub_2660CCA78(v26, v27, v28, v29);

LABEL_25:

          v64 = objc_allocWithZone(type metadata accessor for DeepLaunchIntentResponse());
          v65 = 4;
        }

        else
        {
          v48 = *(v1 + 208);

          sub_2660C8040(v1 + 96, &qword_28005BFF0, &qword_266191790);
          v49 = sub_26610E884(v48);
          if (v49)
          {
            v50 = v49;
            v84 = v16;
            v85 = v21;
            v51 = 0;
            v87 = *(v49 + 16);
            for (i = (v49 + 40); ; i += 16)
            {
              if (v87 == v51)
              {

                goto LABEL_29;
              }

              if (v51 >= *(v50 + 16))
              {
                break;
              }

              OUTLINED_FUNCTION_3_12();

              v61 = OUTLINED_FUNCTION_20_8(v53, v54, v55, v56, v57, v58, v59, v60, v81, v82, v83, v84, v85);
              sub_2660CCB54(v61, v62, v63);
              if (*(v1 + 160))
              {

                sub_2660C8040(v1 + 136, &qword_28005BFF0, &qword_266191790);
                v68 = OUTLINED_FUNCTION_3_12();
                v76 = OUTLINED_FUNCTION_20_8(v68, v69, v70, v71, v72, v73, v74, v75, v81, v82, v83, v84, v85);
                sub_2660CCA78(v76, v77, v78, v79);

                goto LABEL_25;
              }

              ++v51;
              sub_2660C8040(v1 + 136, &qword_28005BFF0, &qword_266191790);
            }

            __break(1u);
            v80 = swift_once();
            OUTLINED_FUNCTION_14_3(v80, qword_2814B4A98);
            v30 = OUTLINED_FUNCTION_13_2();
            v88(v30);
            v31 = i;
            v32 = sub_26618C690();
            v33 = sub_26618CAB0();

            v34 = os_log_type_enabled(v32, v33);
            v35 = *(v1 + 240);
            v36 = *(v1 + 224);
            if (v34)
            {
              v37 = OUTLINED_FUNCTION_49_0();
              v38 = swift_slowAlloc();
              v89 = v38;
              *v37 = 136315138;
              swift_getErrorValue();
              v39 = sub_26618D040();
              v86 = v36;
              v41 = sub_266103A98(v39, v40, &v89);

              *(v37 + 4) = v41;
              _os_log_impl(&dword_2660B7000, v32, v33, "Eror running shortcut item %s", v37, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v38);
              OUTLINED_FUNCTION_7_2();
              OUTLINED_FUNCTION_7_2();

              v43 = v86;
              v42 = v35;
            }

            else
            {

              v42 = v35;
              v43 = v36;
            }

            (v51)(v42, v43);
            v66 = objc_allocWithZone(type metadata accessor for DeepLaunchIntentResponse());
            DeepLaunchIntentResponse.init(code:userActivity:)(100, 0);

            goto LABEL_31;
          }

LABEL_29:

          v67 = objc_allocWithZone(type metadata accessor for DeepLaunchIntentResponse());
          v65 = 5;
        }

        DeepLaunchIntentResponse.init(code:userActivity:)(v65, 0);
LABEL_31:
        __swift_destroy_boxed_opaque_existential_1((v1 + 16));
        goto LABEL_15;
      }
    }
  }

  v44 = objc_allocWithZone(type metadata accessor for DeepLaunchIntentResponse());
  DeepLaunchIntentResponse.init(code:userActivity:)(5, 0);
LABEL_15:

  v45 = OUTLINED_FUNCTION_5_7();

  return v46(v45);
}

uint64_t sub_26610E644(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26610EE18;

  return sub_26610DF90();
}

id sub_26610E708(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeepLaunchIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26610E7B0(void *a1)
{
  v1 = [a1 pageName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26618C8B0();

  return v3;
}

uint64_t sub_26610E814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4A0, &qword_266191788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26610E884(void *a1)
{
  v1 = [a1 pageCanonicalNames];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26618C9B0();

  return v3;
}

uint64_t sub_26610E8DC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_18_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_11(v1);

  return v4(v3);
}

uint64_t sub_26610E96C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_18_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_11(v1);

  return v4(v3);
}

uint64_t sub_26610E9FC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_18_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_11(v1);

  return v4(v3);
}

uint64_t sub_26610EA8C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_18_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_11(v1);

  return v4(v3);
}

uint64_t sub_26610EB1C()
{
  OUTLINED_FUNCTION_18();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_26610EC0C(const void *a1, uint64_t a2, void *a3)
{
  v9[3] = &type metadata for AppsSearcher;
  v9[4] = &off_2877CC0A0;
  v9[0] = swift_allocObject();
  memcpy((v9[0] + 16), a1, 0xA8uLL);
  sub_2660C5864(v9, a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents23DeepLaunchIntentHandler_appsSearcher);
  sub_26610E814(a2, a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents23DeepLaunchIntentHandler_hsqaRunner);
  v8.receiver = a3;
  v8.super_class = type metadata accessor for DeepLaunchIntentHandler();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_2660C8040(a2, &qword_28005C4A0, &qword_266191788);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

id sub_26610ECE8(const void *a1, uint64_t a2)
{
  v12[3] = &type metadata for AppsSearcher;
  v12[4] = &off_2877CC0A0;
  v12[0] = swift_allocObject();
  memcpy((v12[0] + 16), a1, 0xA8uLL);
  v4 = objc_allocWithZone(type metadata accessor for DeepLaunchIntentHandler());
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, &type metadata for AppsSearcher);
  MEMORY[0x28223BE20](v5);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_26610EC0C(v7, a2, v4);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_15_6(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

void *sub_26610EEB8(uint64_t a1)
{
  sub_26618B810();
  sub_26618B810();
  type metadata accessor for LocUtil();
  v1 = swift_allocObject();
  sub_2660B9EB8(&v12, v1 + 16);
  v2 = sub_26618B470();
  swift_allocObject();
  v3 = sub_26618B460();
  v4 = type metadata accessor for BaseDialogProvider();
  v5 = swift_allocObject();
  v13 = v2;
  v14 = MEMORY[0x277D5BD58];
  *&v12 = v3;
  v11[3] = v4;
  v11[4] = &off_2877CAA90;
  v11[0] = v5;
  type metadata accessor for DeepLaunchUnsupportedValueStrategy();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v11, v4);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23_4();
  (*(v8 + 16))(v3);
  v9 = *v3;
  v6[16] = v4;
  v6[17] = &off_2877CAA90;
  v6[13] = v9;
  sub_2660B9EB8(&v15, (v6 + 2));
  v6[7] = v1;
  sub_2660B9EB8(&v12, (v6 + 8));
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v6;
}

uint64_t sub_26610F048()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_26618B530();
  v1[5] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_25_0();
  v1[8] = swift_task_alloc();
  v6 = sub_26618C6B0();
  v1[9] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_25_0();
  v1[12] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26610F154()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v1 = v0[12];
  v2 = v0[10];
  v3 = __swift_project_value_buffer(v0[9], qword_2814B4A98);
  v53 = *(v2 + 16);
  v54 = v3;
  v53(v1);
  v4 = sub_26618C690();
  v5 = sub_26618CAA0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_6_2();
    *v6 = 0;
    _os_log_impl(&dword_2660B7000, v4, v5, "DeepLaunchUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v6, 2u);
    OUTLINED_FUNCTION_7_3();
  }

  v7 = v0[12];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];

  v13 = *(v8 + 8);
  v13(v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4A8, &qword_2661918D8);
  sub_26618B6D0();
  v14 = sub_26618B520();
  v16 = v15;
  v17 = *(v12 + 8);
  v17(v10, v11);
  if (v14 == 0xD000000000000014 && 0x8000000266199420 == v16)
  {
  }

  else
  {
    v19 = sub_26618D000();

    if ((v19 & 1) == 0)
    {
      v20 = v0[7];
      v21 = v0[5];
      sub_26618B6D0();
      v22 = sub_26618B520();
      v24 = v23;
      v17(v20, v21);
      if (v22 == 0x656D614E65676170 && v24 == 0xE800000000000000)
      {
      }

      else
      {
        v26 = sub_26618D000();

        if ((v26 & 1) == 0)
        {
          (v53)(v0[11], v54, v0[9]);
          v27 = sub_26618C690();
          v28 = sub_26618CAA0();
          if (OUTLINED_FUNCTION_15_2(v28))
          {
            v29 = OUTLINED_FUNCTION_6_2();
            OUTLINED_FUNCTION_30_0(v29);
            OUTLINED_FUNCTION_14_0(&dword_2660B7000, v30, v31, "DeepLaunchUnsupportedValueStrategy.makeUnsupportedValueOutput() got unknown parameter");
            OUTLINED_FUNCTION_28_3();
          }

          v32 = OUTLINED_FUNCTION_12_1();
          (v13)(v32);
          v33 = sub_2660D3004();
          v34 = OUTLINED_FUNCTION_31_5(&type metadata for AppLaunchError, v33);
          OUTLINED_FUNCTION_13_7(v34, v35, v36, v37, v38, v39, v40, v41);

          OUTLINED_FUNCTION_5_3();
          OUTLINED_FUNCTION_22_0();

          __asm { BRAA            X1, X16 }
        }
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_28_0();
      v0[14] = v50;
      *v50 = v51;
      OUTLINED_FUNCTION_10_7(v50);
      OUTLINED_FUNCTION_22_0();

      return sub_266110E04();
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[13] = v44;
  *v44 = v45;
  OUTLINED_FUNCTION_10_7(v44);
  OUTLINED_FUNCTION_22_0();

  return sub_26610F8A8(v46, v47);
}

uint64_t sub_26610F534()
{
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_26610F6A0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_26610F80C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_3_6();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26610F834()
{
  OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4A8, &qword_2661918D8);
  v1 = sub_26618B6B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26610F8A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_3_6();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26610F8D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4A8, &qword_2661918D8);
  v1 = sub_26618B6C0();
  v2 = [v1 unsupportedReason];

  v3 = DeepLaunchRequestedApplicationUnsupportedReason.init(rawValue:)(v2);
  if (v4)
  {
    v5 = sub_2660D3004();
    v6 = OUTLINED_FUNCTION_31_5(&type metadata for AppLaunchError, v5);
    OUTLINED_FUNCTION_13_7(v6, v7, v8, v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_5_3();

    return v14();
  }

  else if (v3 == 2)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    *(v0 + 48) = v16;
    *v16 = v17;
    OUTLINED_FUNCTION_10_7(v16);

    return sub_26610FB40();
  }

  else
  {
    v18 = swift_task_alloc();
    *(v0 + 40) = v18;
    *v18 = v0;
    v18[1] = sub_26610FA60;

    return sub_2661108F0();
  }
}

uint64_t sub_26610FA60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_26610FB40()
{
  OUTLINED_FUNCTION_18();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = sub_26618AB50();
  OUTLINED_FUNCTION_3_0(v4);
  v1[17] = OUTLINED_FUNCTION_8_2();
  v5 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  OUTLINED_FUNCTION_3_0(v5);
  v1[18] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v6);
  v1[19] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B6A0();
  v1[20] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[21] = v8;
  v1[22] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618C6B0();
  v1[23] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[24] = v10;
  v1[25] = OUTLINED_FUNCTION_25_0();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26610FCAC()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v1 = *(v0 + 192);
  *(v0 + 224) = __swift_project_value_buffer(*(v0 + 184), qword_2814B4A98);
  v2 = *(v1 + 16);
  *(v0 + 232) = v2;
  *(v0 + 240) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3 = OUTLINED_FUNCTION_11_0();
  v2(v3);
  v4 = sub_26618C690();
  v5 = sub_26618CAA0();
  if (os_log_type_enabled(v4, v5))
  {
    *OUTLINED_FUNCTION_6_2() = 0;
    OUTLINED_FUNCTION_34_4(&dword_2660B7000, v6, v7, "DeepLaunchUnsupportedValueStrategy.templateDialogForUnsupportedApp() called");
    OUTLINED_FUNCTION_7_3();
  }

  v8 = *(v0 + 216);
  v9 = *(v0 + 184);
  v10 = *(v0 + 192);

  v11 = *(v10 + 8);
  *(v0 + 248) = v11;
  v11(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4A8, &qword_2661918D8);
  v12 = sub_26618B6C0();
  v13 = [v12 unsupportedReason];

  v14 = DeepLaunchRequestedApplicationUnsupportedReason.init(rawValue:)(v13);
  if ((v15 & 1) == 0 && v14 == 2)
  {
    v16 = sub_26618B6B0();
    v17 = [v16 requestedApplication];

    if (v17)
    {
      v18 = sub_26610410C(v17);
      *(v0 + 256) = v18;
      *(v0 + 264) = v19;
      if (v19)
      {
        *(v0 + 16) = v18;
        *(v0 + 24) = v19;
        *(v0 + 32) = 0u;
        *(v0 + 48) = 0u;
        *(v0 + 64) = 1;

        swift_task_alloc();
        OUTLINED_FUNCTION_28_0();
        *(v0 + 272) = v20;
        *v20 = v21;
        v20[1] = sub_26610FFDC;

        return sub_2660C1068();
      }
    }

    v23 = OUTLINED_FUNCTION_11_0();
    v2(v23);
    v24 = sub_26618C690();
    v25 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_2(v25))
    {
      v26 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_30_0(v26);
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v27, v28, "Unable to get app name, skipping button punchout for app store");
      OUTLINED_FUNCTION_28_3();
    }

    v29 = OUTLINED_FUNCTION_12_1();
    (v11)(v29);
  }

  v30 = sub_2660D3004();
  v31 = OUTLINED_FUNCTION_31_5(&type metadata for AppLaunchError, v30);
  OUTLINED_FUNCTION_13_7(v31, v32, v33, v34, v35, v36, v37, v38);
  OUTLINED_FUNCTION_25_5();

  OUTLINED_FUNCTION_5_3();

  return v39();
}

uint64_t sub_26610FFDC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 280) = v5;
  *(v3 + 288) = v0;

  if (v0)
  {
    v6 = sub_266110800;
  }

  else
  {
    sub_2661121B0(v3 + 16);
    v6 = sub_2661100EC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2661100EC(uint64_t a1)
{
  sub_26618B1B0();
  OUTLINED_FUNCTION_23_3();
  sub_26617CA00(0xD000000000000010, 0x80000002661993E0);
  if (v2)
  {
    v4 = v1[32];
    v3 = v1[33];
    v48 = v1[18];
    v49 = v1[35];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26618E190;
    v6 = sub_26618AB80();
    v7 = MEMORY[0x277D63778];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v5 + 32));
    v9 = sub_266110B14(v4, v3);

    *boxed_opaque_existential_0 = v9;
    *(boxed_opaque_existential_0 + 8) = 0;
    (*(*(v6 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D63720], v6);
    sub_26618AB60();
    OUTLINED_FUNCTION_12_1();
    AppLaunchDataModels.ButtonFallbackModel.init(buttonLabel:actionProperty:)();
    v1[12] = OUTLINED_FUNCTION_37_1();
    v1[13] = sub_266112158();
    v10 = __swift_allocate_boxed_opaque_existential_0(v1 + 9);
    sub_2660F113C(v48, v10);
    swift_storeEnumTagMultiPayload();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v12 = OUTLINED_FUNCTION_35_3(v11);
    v1[37] = v12;
    *(v12 + 16) = xmmword_26618F7E0;
    *(v12 + 32) = v49;
    v13 = v49;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v1[38] = v14;
    *v14 = v15;
    v14[1] = sub_266110498;
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2821BB478](v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v23 = v1[29];
    v24 = v1[28];
    v25 = v1[26];
    v26 = v1[23];

    v23(v25, v24, v26);
    v27 = sub_26618C690();
    v28 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_2(v28))
    {
      v29 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_30_0(v29);
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v30, v31, "Unable to get buttonLabel, skipping button punchout for app store");
      OUTLINED_FUNCTION_28_3();
    }

    v32 = v1[35];
    v33 = v1[31];
    v34 = v1[16];

    v35 = OUTLINED_FUNCTION_12_1();
    v33(v35);
    __swift_project_boxed_opaque_existential_1((v34 + 64), *(v34 + 88));
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v37 = OUTLINED_FUNCTION_35_3(v36);
    v1[39] = v37;
    *(v37 + 16) = xmmword_26618F7E0;
    *(v37 + 32) = v32;
    v38 = v32;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v1[40] = v39;
    *v39 = v40;
    v39[1] = sub_266110654;
    OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2821BB488](v41, v42, v43, v44, v45);
  }
}

uint64_t sub_266110498()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 72));
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26611059C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_68();
  v11 = *(v10 + 144);

  sub_2660F11A0(v11);
  v12 = OUTLINED_FUNCTION_14_8();
  v13(v12);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_29_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_266110654()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266110754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_68();

  v11 = OUTLINED_FUNCTION_14_8();
  v12(v11);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_29_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_266110800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_68();
  sub_2661121B0(v10 + 16);

  OUTLINED_FUNCTION_25_5();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_29_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_2661108A4()
{
  sub_26618B650();
  sub_26618B680();
  return sub_26618B640();
}

uint64_t sub_2661108F0()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v2 = sub_26618C6B0();
  v0[3] = v2;
  OUTLINED_FUNCTION_0_4(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_8_2();
  v4 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266110994()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = __swift_project_value_buffer(v3, qword_2814B4A98);
  v6 = *(v2 + 16);
  v5 = (v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_26618C690();
  v8 = sub_26618CAA0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_30_0(v9);
    _os_log_impl(&dword_2660B7000, v7, v8, "DeepLaunchUnsupportedValueStrategy.patternDialogForUnsupportedApp() called", v5, 2u);
    OUTLINED_FUNCTION_28_3();
  }

  v10 = OUTLINED_FUNCTION_12_1();
  v11(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4A8, &qword_2661918D8);
  v12 = sub_26618B6C0();
  v13 = [v12 unsupportedReason];

  DeepLaunchRequestedApplicationUnsupportedReason.init(rawValue:)(v13);
  v14 = sub_2660D3004();
  v15 = OUTLINED_FUNCTION_31_5(&type metadata for AppLaunchError, v14);
  OUTLINED_FUNCTION_13_7(v15, v16, v17, v18, v19, v20, v21, v22);

  OUTLINED_FUNCTION_5_3();

  return v23();
}

id sub_266110B14(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  v4 = OUTLINED_FUNCTION_3_0(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = sub_26618A460();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23_4();
  sub_26618A450();
  sub_26618A440();
  MEMORY[0x2667797F0](0, 0xE000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4C0, qword_2661918E0);
  v9 = sub_26618A400();
  OUTLINED_FUNCTION_0_4(v9);
  *(swift_allocObject() + 16) = xmmword_26618E250;
  sub_26618A3F0();
  sub_26618A3F0();
  sub_26618A3F0();
  sub_26618A410();
  v10 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_26618A420();
  v11 = sub_26618A500();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) != 1)
  {
    v12 = sub_26618A4D0();
    (*(*(v11 - 8) + 8))(v6, v11);
  }

  [v10 setPunchOutUri_];

  (*(v8 + 8))(v2, v7);
  return v10;
}

uint64_t sub_266110E04()
{
  OUTLINED_FUNCTION_18();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_26618AB50();
  OUTLINED_FUNCTION_3_0(v4);
  v1[10] = OUTLINED_FUNCTION_8_2();
  v5 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  OUTLINED_FUNCTION_3_0(v5);
  v1[11] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v6);
  v1[12] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B6A0();
  v1[13] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[14] = v8;
  v1[15] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618C6B0();
  v1[16] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[17] = v10;
  v1[18] = OUTLINED_FUNCTION_25_0();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266110F7C()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v1 = v0[17];
  v0[22] = __swift_project_value_buffer(v0[16], qword_2814B4A98);
  v2 = *(v1 + 16);
  v0[23] = v2;
  v0[24] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3 = OUTLINED_FUNCTION_11_0();
  v2(v3);
  v4 = sub_26618C690();
  v5 = sub_26618CAA0();
  if (os_log_type_enabled(v4, v5))
  {
    *OUTLINED_FUNCTION_6_2() = 0;
    OUTLINED_FUNCTION_34_4(&dword_2660B7000, v6, v7, "DeepLaunchUnsupportedValueStrategy.templateDialogForUnsupportedQuickAction() called");
    OUTLINED_FUNCTION_7_3();
  }

  v8 = v0[21];
  v9 = v0[16];
  v10 = v0[17];

  v11 = *(v10 + 8);
  v0[25] = v11;
  v11(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4A8, &qword_2661918D8);
  v12 = sub_26618B6C0();
  v13 = [v12 unsupportedReason];

  v14 = DeepLaunchPageNameUnsupportedReason.init(rawValue:)(v13);
  if ((v15 & 1) == 0 && v14 == 1)
  {
    v16 = sub_26618B6B0();
    v17 = [v16 requestedApplication];

    if (v17 && (v18 = sub_26610410C(v17), v0[26] = v18, (v0[27] = v19) != 0))
    {
      v20 = v18;
      v21 = v19;
      v22 = sub_26618B6B0();
      v23 = [v22 requestedApplication];

      if (v23)
      {
        v0[28] = sub_266104124(v23);
        v0[29] = v24;
        if (v24)
        {
          v25 = swift_task_alloc();
          v0[30] = v25;
          *v25 = v0;
          v25[1] = sub_266111334;

          return sub_2660C5428(v20, v21);
        }
      }

      v33 = OUTLINED_FUNCTION_11_0();
      v2(v33);
      v28 = sub_26618C690();
      v34 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_2(v34))
      {
        v35 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_30_0(v35);
        OUTLINED_FUNCTION_14_0(&dword_2660B7000, v36, v37, "Unable to get appId, skipping button punchout for app launch");
        OUTLINED_FUNCTION_28_3();
      }
    }

    else
    {
      v27 = OUTLINED_FUNCTION_11_0();
      v2(v27);
      v28 = sub_26618C690();
      v29 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_2(v29))
      {
        v30 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_30_0(v30);
        OUTLINED_FUNCTION_14_0(&dword_2660B7000, v31, v32, "Unable to get app name, skipping button punchout for app launch");
        OUTLINED_FUNCTION_28_3();
      }
    }

    v38 = OUTLINED_FUNCTION_12_1();
    (v11)(v38);
  }

  v39 = sub_2660D3004();
  v40 = OUTLINED_FUNCTION_31_5(&type metadata for AppLaunchError, v39);
  OUTLINED_FUNCTION_13_7(v40, v41, v42, v43, v44, v45, v46, v47);
  OUTLINED_FUNCTION_28_6();

  OUTLINED_FUNCTION_5_3();

  return v48();
}

uint64_t sub_266111334()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 248) = v4;
  *(v2 + 256) = v0;

  if (v0)
  {
    v5 = sub_266111C20;
  }

  else
  {
    v5 = sub_26611143C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26611143C(uint64_t a1)
{
  sub_26618B1B0();
  OUTLINED_FUNCTION_23_3();
  sub_26617CA00(0x5050415F4E45504FLL, 0xE800000000000000);
  if (v2)
  {
    v3 = v1[29];
    v48 = v1[28];
    v5 = v1[26];
    v4 = v1[27];
    v49 = v1[11];
    v50 = v1[31];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4B0, &qword_266196770);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26618E190;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_2661120AC();
    *(v6 + 32) = v5;
    *(v6 + 40) = v4;
    sub_26618C8C0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26618E190;
    v8 = sub_26618AB80();
    v9 = MEMORY[0x277D63778];
    *(v7 + 56) = v8;
    *(v7 + 64) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + 32));
    v11 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
    sub_266112100(v48, v3, v11);

    *boxed_opaque_existential_0 = v11;
    *(boxed_opaque_existential_0 + 8) = 0;
    (*(*(v8 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D63720], v8);
    sub_26618AB60();
    AppLaunchDataModels.ButtonFallbackModel.init(buttonLabel:actionProperty:)();
    v1[5] = OUTLINED_FUNCTION_37_1();
    v1[6] = sub_266112158();
    v12 = __swift_allocate_boxed_opaque_existential_0(v1 + 2);
    sub_2660F113C(v49, v12);
    swift_storeEnumTagMultiPayload();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v14 = OUTLINED_FUNCTION_35_3(v13);
    v1[33] = v14;
    *(v14 + 16) = xmmword_26618F7E0;
    *(v14 + 32) = v50;
    v15 = v50;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v1[34] = v16;
    *v16 = v17;
    v16[1] = sub_266111898;
    OUTLINED_FUNCTION_24_4();

    return MEMORY[0x2821BB478](v18, v19, v20, v21, v22, v23);
  }

  else
  {
    v24 = v1[23];
    v25 = v1[22];
    v26 = v1[20];
    v27 = v1[16];

    v24(v26, v25, v27);
    v28 = sub_26618C690();
    v29 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_2(v29))
    {
      v30 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_30_0(v30);
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v31, v32, "Unable to get buttonLabel, skipping button punchout for app store");
      OUTLINED_FUNCTION_28_3();
    }

    v33 = v1[31];
    v34 = v1[25];
    v35 = v1[9];

    v36 = OUTLINED_FUNCTION_12_1();
    v34(v36);
    __swift_project_boxed_opaque_existential_1((v35 + 64), *(v35 + 88));
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v38 = OUTLINED_FUNCTION_35_3(v37);
    v1[35] = v38;
    *(v38 + 16) = xmmword_26618F7E0;
    *(v38 + 32) = v33;
    v39 = v33;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v1[36] = v40;
    *v40 = v41;
    v40[1] = sub_266111A64;
    OUTLINED_FUNCTION_13_6();

    return MEMORY[0x2821BB488](v42, v43, v44, v45, v46);
  }
}

uint64_t sub_266111898()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26611199C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_68();
  v11 = *(v10 + 88);

  sub_2660F11A0(v11);
  v12 = OUTLINED_FUNCTION_11_0();
  v13(v12);
  OUTLINED_FUNCTION_26_4();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_29_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_266111A64()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266111B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_68();

  v11 = OUTLINED_FUNCTION_11_0();
  v12(v11);
  OUTLINED_FUNCTION_26_4();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_29_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_266111C20()
{
  OUTLINED_FUNCTION_68();

  OUTLINED_FUNCTION_28_6();

  OUTLINED_FUNCTION_5_3();

  return v0();
}

uint64_t sub_266111CDC()
{
  sub_26618B650();
  sub_26618B680();
  return sub_26618B640();
}

void *sub_266111D28()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  sub_2660D3208(v0 + 104);
  return v0;
}

uint64_t sub_266111D60()
{
  sub_266111D28();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_266111DB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_26610F048();
}

uint64_t sub_266111E64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266111EF8;

  return sub_26610F80C(a1);
}

uint64_t sub_266111EF8()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_266111FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeepLaunchUnsupportedValueStrategy();
  *v8 = v4;
  v8[1] = sub_2660D2E00;

  return MEMORY[0x2821B9E00](a1, a2, v9, a4);
}

unint64_t sub_2661120AC()
{
  result = qword_28005C4B8;
  if (!qword_28005C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C4B8);
  }

  return result;
}

void sub_266112100(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();
  [a3 setBundleId_];
}

unint64_t sub_266112158()
{
  result = qword_2814B3FF0[0];
  if (!qword_2814B3FF0[0])
  {
    type metadata accessor for AppLaunchDataModels(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814B3FF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_25_5()
{
}

uint64_t OUTLINED_FUNCTION_26_4()
{
}

uint64_t OUTLINED_FUNCTION_28_6()
{
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_34_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_35_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_37_1()
{
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));

  return type metadata accessor for AppLaunchDataModels(0);
}

uint64_t sub_2661123A8(uint64_t a1)
{
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v100 = v3;
  v101 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_69_0();
  v98 = v4;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v5);
  v96 = &v93 - v6;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v7);
  v93 = &v93 - v8;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v9);
  v94 = &v93 - v10;
  v99 = type metadata accessor for AppLaunchIntent(0);
  MEMORY[0x28223BE20](v99);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26618C0E0();
  OUTLINED_FUNCTION_2_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_69_0();
  v95 = v23;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v24);
  v97 = &v93 - v25;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v93 - v27;
  v29 = *(v21 + 16);
  v29(&v93 - v27, a1, v19);
  if ((*(v21 + 88))(v28, v19) != *MEMORY[0x277D5C128])
  {
    v99 = v28;
    v44 = a1;
    sub_2660C87C0();
    if (!v103)
    {
      sub_2660DD714(&v102);
      v69 = v100;
      v70 = v101;
      v71 = v19;
      if (qword_2814B2C38 != -1)
      {
        OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
      }

      v72 = __swift_project_value_buffer(v70, qword_2814B4A80);
      (*(v69 + 16))(v98, v72, v70);
      v73 = v97;
      v29(v97, v44, v19);
      v74 = sub_26618C690();
      v75 = sub_26618CAB0();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v94 = v76;
        v77 = swift_slowAlloc();
        v104[0] = v77;
        *v76 = 136315138;
        LODWORD(v96) = v75;
        v75 = v95;
        v29(v95, v73, v19);
        v78 = sub_266145588(v75);
        v80 = v79;
        v81 = OUTLINED_FUNCTION_4_12();
        v75(v81, v19);
        v82 = sub_266103A98(v78, v80, v104);
        v71 = v19;

        v83 = v94;
        *(v94 + 4) = v82;
        _os_log_impl(&dword_2660B7000, v74, v96, "Unable to handle parse: %s", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();

        (*(v100 + 8))(v98, v101);
      }

      else
      {

        v92 = OUTLINED_FUNCTION_4_12();
        v75(v92, v19);
        (*(v100 + 8))(v98, v70);
      }

      v75(v99, v71);
      return 0;
    }

    sub_2660B9EB8(&v102, v104);
    v45 = v105;
    v46 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    v47 = (*(v46 + 8))(v45, v46);
    v48 = v101;
    v49 = v21;
    if (!v47)
    {
      v85 = v99;
      if (qword_2814B2C38 != -1)
      {
        OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
      }

      v86 = __swift_project_value_buffer(v48, qword_2814B4A80);
      v87 = v100;
      v88 = v96;
      (*(v100 + 16))(v96, v86, v48);
      v89 = sub_26618C690();
      v90 = sub_26618CAB0();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_2660B7000, v89, v90, "Unable to extract verb from UserDialogAct, ignoring input", v91, 2u);
        OUTLINED_FUNCTION_7_2();
      }

      (*(v87 + 8))(v88, v48);
      __swift_destroy_boxed_opaque_existential_1(v104);
      (*(v49 + 8))(v85, v19);
      return 0;
    }

    sub_26613BA0C();
    v51 = v50;

    v52 = sub_266145BC4(v51);
    v54 = v52 == 1852141679 && v53 == 0xE400000000000000;
    v55 = v99;
    if (!v54)
    {
      v56 = OUTLINED_FUNCTION_6_9(v52);

      if (v56)
      {
        goto LABEL_42;
      }

      if (sub_266145BC4(v51) != 0x736972616D6D7573 || v57 != 0xE900000000000065)
      {
        v59 = sub_26618D000();

        if ((v59 & 1) == 0)
        {
          if (sub_266145BC4(v51) != 0x627265566F6ELL || v60 != 0xE600000000000000)
          {
            v62 = sub_26618D000();

            if ((v62 & 1) == 0)
            {
              if (qword_2814B2C38 != -1)
              {
                OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
              }

              v63 = __swift_project_value_buffer(v48, qword_2814B4A80);
              v64 = v100;
              v65 = v93;
              (*(v100 + 16))(v93, v63, v48);
              v66 = sub_26618C690();
              v67 = sub_26618CA90();
              if (os_log_type_enabled(v66, v67))
              {
                v68 = swift_slowAlloc();
                *v68 = 0;
                _os_log_impl(&dword_2660B7000, v66, v67, "Incorrect verb in userDialogAct for flow, ignoring input", v68, 2u);
                OUTLINED_FUNCTION_7_2();
              }

              (*(v64 + 8))(v65, v48);
              __swift_destroy_boxed_opaque_existential_1(v104);
              (*(v49 + 8))(v55, v19);
              return 0;
            }

            goto LABEL_42;
          }

          goto LABEL_41;
        }

LABEL_42:
        __swift_destroy_boxed_opaque_existential_1(v104);
        (*(v21 + 8))(v55, v19);
        return 1;
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  (*(v21 + 96))(v28, v19);
  (*(v15 + 32))(v18, v28, v13);
  (*(v15 + 16))(v12, v18, v13);
  v30 = v15;
  v31 = v12;
  v32 = v18;
  if (qword_2814B3D30 != -1)
  {
    swift_once();
  }

  sub_2660C98B4();
  sub_26618BDA0();
  if (LOBYTE(v104[0]) == 11)
  {
    goto LABEL_44;
  }

  v33 = sub_266146C4C(v104[0]);
  if (v33 == 1852141679 && v34 == 0xE400000000000000)
  {

    goto LABEL_44;
  }

  v36 = OUTLINED_FUNCTION_6_9(v33);

  if (v36)
  {
LABEL_44:
    sub_2660DD7D0(v12);
    (*(v30 + 8))(v18, v13);
    return 1;
  }

  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  v37 = v101;
  v38 = __swift_project_value_buffer(v101, qword_2814B4A80);
  v39 = v100;
  v40 = v94;
  (*(v100 + 16))(v94, v38, v37);
  v41 = sub_26618C690();
  v42 = sub_26618CA90();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_2660B7000, v41, v42, "Incorrect verb in intent for flow, ignoring input", v43, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  (*(v39 + 8))(v40, v37);
  sub_2660DD7D0(v31);
  (*(v30 + 8))(v32, v13);
  return 0;
}

uint64_t OUTLINED_FUNCTION_6_9(uint64_t a1)
{

  return sub_26618D000();
}

BOOL sub_266112E0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4C8, &unk_266191AB0);
  v0 = sub_26618B5E0();
  v1 = OBJC_IVAR___LaunchAppIntentResponse_code;
  swift_beginAccess();
  v2 = *&v0[v1];

  return v2 == 102;
}

uint64_t sub_266112E80()
{
  type metadata accessor for BaseDialogProvider();
  swift_allocObject();
  sub_26618B470();
  swift_allocObject();

  sub_26618B460();

  sub_26618B810();
  v0 = OUTLINED_FUNCTION_19_7();
  v3 = sub_266115714(v0, v1, v2);

  return v3;
}

uint64_t sub_266112F1C()
{
  OUTLINED_FUNCTION_18();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0A0, &unk_266191AC0);
  OUTLINED_FUNCTION_3_0(v4);
  v0[11] = OUTLINED_FUNCTION_8_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  OUTLINED_FUNCTION_3_0(v5);
  v0[12] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618B980();
  v0[13] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v0[14] = v7;
  v0[15] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618B8E0();
  v0[16] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v0[17] = v9;
  v0[18] = OUTLINED_FUNCTION_25_0();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v10 = sub_26618B840();
  v0[21] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v0[22] = v11;
  v0[23] = OUTLINED_FUNCTION_25_0();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v12 = sub_26618C6B0();
  v0[26] = v12;
  OUTLINED_FUNCTION_0_4(v12);
  v0[27] = v13;
  v0[28] = OUTLINED_FUNCTION_25_0();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v14 = sub_26618B7F0();
  v0[33] = v14;
  OUTLINED_FUNCTION_0_4(v14);
  v0[34] = v15;
  v0[35] = OUTLINED_FUNCTION_8_2();
  v16 = sub_26618B800();
  v0[36] = v16;
  OUTLINED_FUNCTION_0_4(v16);
  v0[37] = v17;
  v0[38] = OUTLINED_FUNCTION_8_2();
  v18 = sub_26618B540();
  v0[39] = v18;
  OUTLINED_FUNCTION_0_4(v18);
  v0[40] = v19;
  v0[41] = OUTLINED_FUNCTION_25_0();
  v0[42] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_266113250(uint64_t a1)
{
  v160 = v1;
  sub_26618B770();
  v2 = OUTLINED_FUNCTION_12_1();
  v4 = v3(v2);
  if (v4 != *MEMORY[0x277D5C150])
  {
    if (v4 != *MEMORY[0x277D5C160])
    {
      if (qword_2814B2C40 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
      }

      __swift_project_value_buffer(*(v1 + 208), qword_2814B4A98);
      v41 = OUTLINED_FUNCTION_8_3();
      v42(v41);
      v43 = sub_26618C690();
      v44 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_2(v44))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_14_0(&dword_2660B7000, v45, v46, "LaunchAppConfirmationStrategy.parseConfirmationResponse unsupported parse type");
        OUTLINED_FUNCTION_28_3();
      }

      v48 = *(v1 + 296);
      v47 = *(v1 + 304);
      v49 = *(v1 + 288);
      v50 = *(v1 + 224);
      goto LABEL_34;
    }

    (*(*(v1 + 296) + 96))(*(v1 + 304), *(v1 + 288));
    v10 = OUTLINED_FUNCTION_19_7();
    v11(v10);
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    v12 = *(v1 + 248);
    v13 = *(v1 + 216);
    v15 = *(v1 + 192);
    v14 = *(v1 + 200);
    v16 = *(v1 + 168);
    v17 = *(v1 + 176);
    v152 = __swift_project_value_buffer(*(v1 + 208), qword_2814B4A98);
    v154 = *(v13 + 16);
    v154(v12);
    v149 = *(v17 + 16);
    v149(v15, v14, v16);
    v18 = sub_26618C690();
    v19 = sub_26618CAA0();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v1 + 216);
    v22 = *(v1 + 168);
    if (v20)
    {
      v157 = *(v1 + 248);
      log = v18;
      v148 = *(v1 + 208);
      v24 = *(v1 + 152);
      v23 = *(v1 + 160);
      v25 = *(v1 + 136);
      v142 = *(v1 + 128);
      buf = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v159[0] = v144;
      *buf = 136315138;
      sub_26618B820();
      (*(v25 + 16))(v24, v23, v142);
      v26 = sub_2661458C0(v24);
      v28 = v27;
      v29 = OUTLINED_FUNCTION_20_9();
      v30(v29);
      (*(v25 + 8))(v23, v142);
      v31 = sub_266103A98(v26, v28, v159);

      *(buf + 4) = v31;
      _os_log_impl(&dword_2660B7000, log, v19, "LaunchAppConfirmationStrategy.parseConfirmationResponse using follow up USO parse:  %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v144);
      MEMORY[0x26677CC30](v144, -1, -1);
      OUTLINED_FUNCTION_28_3();

      v32 = *(v21 + 8);
      v33 = v157;
      v34 = v148;
    }

    else
    {

      v69 = OUTLINED_FUNCTION_20_9();
      v70(v69);
      v33 = OUTLINED_FUNCTION_12_1();
    }

    v158 = v32;
    v32(v33, v34);
    v72 = *(v1 + 136);
    v71 = *(v1 + 144);
    v73 = *(v1 + 128);
    v75 = *(v1 + 96);
    v74 = *(v1 + 104);
    sub_26618B820();
    v76 = sub_26618B8B0();
    v77 = *(v72 + 8);
    v78 = OUTLINED_FUNCTION_12_1();
    v77(v78);
    sub_266139C58(v76, v75);

    if (__swift_getEnumTagSinglePayload(v75, 1, v74) == 1)
    {
      v79 = *(v1 + 232);
      v81 = *(v1 + 200);
      v80 = *(v1 + 208);
      v82 = *(v1 + 184);
      v83 = *(v1 + 168);
      sub_2660C8040(*(v1 + 96), &qword_28005BF28, &qword_26618F960);
      (v154)(v79, v152, v80);
      v149(v82, v81, v83);
      v84 = sub_26618C690();
      v155 = sub_26618CAB0();
      if (os_log_type_enabled(v84, v155))
      {
        v151 = v22;
        v153 = *(v1 + 232);
        v85 = *(v1 + 152);
        v86 = *(v1 + 160);
        v150 = *(v1 + 208);
        v145 = v84;
        v88 = *(v1 + 128);
        v87 = *(v1 + 136);
        v89 = swift_slowAlloc();
        loga = swift_slowAlloc();
        v159[0] = loga;
        *v89 = 136315138;
        sub_26618B820();
        (*(v87 + 16))(v85, v86, v88);
        sub_2661458C0(v85);
        v90 = OUTLINED_FUNCTION_14_9();
        v151(v90);
        v91 = v86;
        v22 = v151;
        (v77)(v91, v88);
        v92 = OUTLINED_FUNCTION_12_1();
        v95 = sub_266103A98(v92, v93, v94);

        *(v89 + 4) = v95;
        _os_log_impl(&dword_2660B7000, v145, v155, "LaunchAppConfirmationStrategy.parseConfirmationResponse missing required userDialogActs from parse: %s", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(loga);
        MEMORY[0x26677CC30](loga, -1, -1);
        MEMORY[0x26677CC30](v89, -1, -1);

        v96 = v150;
        v97 = v153;
      }

      else
      {

        v102 = OUTLINED_FUNCTION_14_9();
        v22(v102);
        v97 = OUTLINED_FUNCTION_12_1();
      }

      v158(v97, v96);
      v103 = *(v1 + 200);
      v104 = *(v1 + 168);
      v105 = sub_2660D3004();
      v106 = OUTLINED_FUNCTION_31_5(&type metadata for AppLaunchError, v105);
      OUTLINED_FUNCTION_16_8(v106, v107, v108, v109, v110, v111, v112, v113);
      (v22)(v103, v104);
      goto LABEL_35;
    }

    v98 = *(v1 + 120);
    (*(*(v1 + 112) + 32))(v98, *(v1 + 96), *(v1 + 104));
    if (sub_26618B920())
    {
      v99 = OUTLINED_FUNCTION_6_10();
      v100(v99);
      (v22)(v73, v74);
      v101 = MEMORY[0x277D5BED8];
    }

    else
    {
      v98 = *(v1 + 120);
      if ((sub_26618B930() & 1) == 0)
      {
        (v154)(*(v1 + 240), v152, *(v1 + 208));
        v116 = sub_26618C690();
        v117 = sub_26618CAB0();
        if (OUTLINED_FUNCTION_15_2(v117))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_14_0(&dword_2660B7000, v118, v119, "LaunchAppConfirmationStrategy.parseConfirmationResponse unexpected UDA");
          OUTLINED_FUNCTION_28_3();
        }

        v156 = *(v1 + 200);
        v120 = *(v1 + 168);
        v121 = *(v1 + 112);
        v122 = *(v1 + 120);
        v123 = *(v1 + 104);

        v124 = OUTLINED_FUNCTION_12_1();
        (v158)(v124);
        v125 = sub_2660D3004();
        v126 = OUTLINED_FUNCTION_31_5(&type metadata for AppLaunchError, v125);
        OUTLINED_FUNCTION_16_8(v126, v127, v128, v129, v130, v131, v132, v133);
        (*(v121 + 8))(v122, v123);
        (v22)(v156, v120);
        goto LABEL_35;
      }

      v114 = OUTLINED_FUNCTION_6_10();
      v115(v114);
      (v22)(v73, v74);
      v101 = MEMORY[0x277D5BED0];
    }

    (*(v75 + 104))(v98, *v101, v71);
    goto LABEL_55;
  }

  (*(*(v1 + 296) + 96))(*(v1 + 304), *(v1 + 288));
  v5 = OUTLINED_FUNCTION_19_7();
  v6(v5);
  if (sub_26618B7D0() == 0xD00000000000002ELL && 0x8000000266198300 == v7)
  {
  }

  else
  {
    v9 = sub_26618D000();

    if ((v9 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v35 = sub_26618B7E0();
  if (!v35)
  {
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    goto LABEL_28;
  }

  sub_266158220(0xD000000000000011, 0x8000000266198330, v35, (v1 + 16));

  if (!*(v1 + 40))
  {
LABEL_28:
    sub_2660C8040(v1 + 16, &qword_28005C0A8, qword_26618FAE0);
LABEL_29:
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    __swift_project_value_buffer(*(v1 + 208), qword_2814B4A98);
    v51 = OUTLINED_FUNCTION_8_3();
    v52(v51);
    v43 = sub_26618C690();
    v53 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_2(v53))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v54, v55, "LaunchAppConfirmationStrategy.parseConfirmationResponse received misformatted directInvocation");
      OUTLINED_FUNCTION_28_3();
    }

    v48 = *(v1 + 272);
    v47 = *(v1 + 280);
    v50 = *(v1 + 256);
    v49 = *(v1 + 264);
LABEL_34:
    v56 = *(v1 + 208);
    v57 = *(v1 + 216);

    (*(v57 + 8))(v50, v56);
    v58 = sub_2660D3004();
    v59 = OUTLINED_FUNCTION_31_5(&type metadata for AppLaunchError, v58);
    OUTLINED_FUNCTION_16_8(v59, v60, v61, v62, v63, v64, v65, v66);
    (*(v48 + 8))(v47, v49);
LABEL_35:

    OUTLINED_FUNCTION_5_3();
    goto LABEL_36;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_29;
  }

  v36 = sub_26617C1B4(*(v1 + 48), *(v1 + 56));
  if (v36 == 2)
  {
    goto LABEL_29;
  }

  if (v36)
  {
    v37 = sub_26618D000();

    v38 = OUTLINED_FUNCTION_11_0();
    v39(v38);
    v40 = MEMORY[0x277D5BED0];
    if (v37)
    {
      v40 = MEMORY[0x277D5BED8];
    }
  }

  else
  {

    v134 = OUTLINED_FUNCTION_11_0();
    v135(v134);
    v40 = MEMORY[0x277D5BED8];
  }

  (*(*(v1 + 320) + 104))(*(v1 + 328), *v40, *(v1 + 312));
  v136 = OUTLINED_FUNCTION_11_0();
  v137(v136);
LABEL_55:
  v138 = *(v1 + 336);
  v139 = *(v1 + 312);
  v140 = *(v1 + 320);
  v141 = *(v1 + 88);
  (*(v140 + 16))(v141, v138, v139);
  __swift_storeEnumTagSinglePayload(v141, 0, 1, v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4C8, &unk_266191AB0);
  sub_26618B5F0();
  type metadata accessor for LaunchAppIntent();
  OUTLINED_FUNCTION_19_7();
  sub_26618B510();
  (*(v140 + 8))(v138, v139);

  OUTLINED_FUNCTION_5_3();
LABEL_36:

  return v67();
}

uint64_t sub_266113F50()
{
  OUTLINED_FUNCTION_18();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4D0, &qword_266191AA8);
  OUTLINED_FUNCTION_3_0(v4);
  v1[25] = OUTLINED_FUNCTION_8_2();
  v5 = type metadata accessor for AppLaunchDataModels.AppOffloadedModel(0);
  OUTLINED_FUNCTION_3_0(v5);
  v1[26] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618AB50();
  v1[27] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[28] = v7;
  v1[29] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v8);
  v1[30] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618B6A0();
  v1[31] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[32] = v10;
  v1[33] = OUTLINED_FUNCTION_8_2();
  v11 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2661140B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4C8, &unk_266191AB0);
  v1 = sub_26618B5F0();
  v2 = [v1 application];
  v0[34] = v2;

  if (v2)
  {
    v0[35] = sub_2660C9D24(v2);
    v0[36] = v3;
    if (v3)
    {
      v0[37] = sub_2660C9D30(v2);
      v0[38] = v4;
      if (v4)
      {

        v5 = swift_task_alloc();
        v0[39] = v5;
        *v5 = v0;
        v5[1] = sub_266114268;

        return sub_2660C2880();
      }
    }
  }

  v7 = sub_2660D3004();
  OUTLINED_FUNCTION_31_5(&type metadata for AppLaunchError, v7);
  *v8 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_5_3();

  return v9();
}

uint64_t sub_266114268()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 320) = v5;
  *(v3 + 328) = v0;

  if (v0)
  {
    v6 = sub_2661149F0;
  }

  else
  {

    v6 = sub_266114374;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_266114374(uint64_t a1)
{
  v3 = *(v1 + 296);
  v2 = *(v1 + 304);
  v41 = *(v1 + 288);
  v42 = *(v1 + 328);
  v37 = v3;
  v38 = *(v1 + 272);
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);
  v36 = *(v1 + 216);
  v6 = *(v1 + 200);
  v39 = *(v1 + 208);
  v40 = *(v1 + 280);
  sub_26618B1C0();
  sub_26618B620();

  MEMORY[0x26677BCF0](v3, v2);
  MEMORY[0x26677BCF0](47, 0xE100000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26618E190;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C088, &unk_26618F940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618E190;
  *(v1 + 160) = 0xD000000000000011;
  *(v1 + 168) = 0x8000000266198330;
  v9 = MEMORY[0x277D837D0];
  sub_26618CD20();
  *(inited + 96) = v9;
  *(inited + 72) = 0x6D7269666E6F63;
  *(inited + 80) = 0xE700000000000000;
  sub_26618C850();
  v10 = sub_26618AB80();
  v11 = MEMORY[0x277D63778];
  *(v7 + 56) = v10;
  *(v7 + 64) = v11;
  __swift_allocate_boxed_opaque_existential_0((v7 + 32));
  sub_26618AB70();

  sub_26618AB60();
  v12 = sub_2661247D4(v38);
  v14 = v13;
  (*(v5 + 16))(v6, v4, v36);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v36);
  sub_26616694C(v40, v41, v37, v2, v12, v14, 0xD000000000000024, 0x8000000266199480, v6, v34, 1, 2, v35, v36, 0x8000000266199480, 0xD000000000000024, v37, v38, v39, v40, v41);
  if (v42)
  {
    v15 = *(v1 + 320);
    v17 = *(v1 + 224);
    v16 = *(v1 + 232);
    v18 = *(v1 + 216);

    (*(v17 + 8))(v16, v18);
    v19 = OUTLINED_FUNCTION_11_0();
    v20(v19);

    OUTLINED_FUNCTION_5_3();

    return v21();
  }

  else
  {
    v23 = *(v1 + 320);
    v24 = *(v1 + 208);
    v25 = *(v1 + 192);
    v26 = v25[5];
    v27 = v25[6];
    __swift_project_boxed_opaque_existential_1(v25 + 2, v26);
    *(v1 + 144) = type metadata accessor for AppLaunchDataModels(0);
    *(v1 + 152) = sub_266112158();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 120));
    sub_266115654(v24, boxed_opaque_existential_0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v29 = swift_allocObject();
    *(v1 + 336) = v29;
    *(v29 + 16) = xmmword_26618F7E0;
    *(v29 + 32) = v23;
    v30 = v23;
    v31 = swift_task_alloc();
    *(v1 + 344) = v31;
    *v31 = v1;
    v31[1] = sub_2661147F8;
    v32 = *(v1 + 264);
    v33 = *(v1 + 176);

    return MEMORY[0x2821BB468](v33, v1 + 120, v29, v32, v26, v27);
  }
}

uint64_t sub_2661147F8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 120));
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2661148F8()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);

  sub_2661156B8(v5);
  (*(v4 + 8))(v2, v3);
  v6 = OUTLINED_FUNCTION_11_0();
  v7(v6);

  OUTLINED_FUNCTION_5_3();

  return v8();
}

uint64_t sub_2661149F0()
{

  swift_bridgeObjectRelease_n();

  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_266114AAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_26618B650();
  v3 = sub_26618B680();
  sub_2661484FC(v3);
  v4 = sub_26618B440();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  sub_26618B660();
  return sub_26618B640();
}

uint64_t sub_266114B74()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v3);
  v1[4] = OUTLINED_FUNCTION_8_2();
  v4 = sub_26618B6A0();
  v1[5] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_8_2();
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v1;
  v6[1] = sub_266114C70;

  return sub_2660C452C();
}

uint64_t sub_266114C70(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  if (v1)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 72) = a1;

    return MEMORY[0x2822009F8](sub_266114DBC, 0, 0);
  }
}

uint64_t sub_266114DBC()
{
  v1 = v0[9];
  v2 = v0[3];
  sub_26618B1D0();
  sub_26618B620();
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = xmmword_26618F7E0;
  *(v5 + 32) = v1;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_266114F00;
  v8 = v0[7];
  v9 = v0[2];

  return MEMORY[0x2821BB488](v9, v5, v8, v3, v4);
}

uint64_t sub_266114F00()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266115000()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2(v1);

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_2661150BC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2660D3208(v0 + 56);
  sub_2660D31B4(v0 + 96);
  return v0;
}

uint64_t sub_2661150EC()
{
  sub_2661150BC();

  return MEMORY[0x2821FE8D8](v0, 185, 7);
}

uint64_t sub_266115144()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_266112F1C();
}

uint64_t sub_2661151F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D2E00;

  return sub_266113F50();
}

uint64_t sub_2661152A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LaunchAppConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821B9D08](a1, a2, v9, a4);
}

uint64_t sub_266115364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LaunchAppConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821B9D10](a1, a2, v9, a4);
}

uint64_t sub_266115428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LaunchAppConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821B9D18](a1, a2, v9, a4);
}

uint64_t sub_2661154EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_266114B74();
}

uint64_t sub_266115588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for LaunchAppConfirmationStrategy();
  *v10 = v5;
  v10[1] = sub_2660D3260;

  return MEMORY[0x2821B9D00](a1, a2, a3, v11, a5);
}

uint64_t sub_266115654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.AppOffloadedModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2661156B8(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchDataModels.AppOffloadedModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266115714(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = type metadata accessor for BaseDialogProvider();
  v16 = &off_2877CAA90;
  v14[0] = a1;
  type metadata accessor for LaunchAppConfirmationStrategy();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  MEMORY[0x28223BE20](v7);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_26611583C(*v9, a2, a3, v6);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t sub_26611583C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v14[3] = sub_26618B470();
  v14[4] = MEMORY[0x277D5BD58];
  v14[0] = a2;
  v13[3] = type metadata accessor for BaseDialogProvider();
  v13[4] = &off_2877CAA90;
  v13[0] = a1;
  sub_2660C5864(v14, a4 + 16);
  sub_2660C5864(v13, a4 + 56);
  sub_2660C5864(a3, __src);
  sub_2660C5864(a4 + 16, &__src[5]);
  v8 = sub_26618C8A0();
  LODWORD(a1) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  LOBYTE(__src[11]) = a1 == 1;
  sub_2660C5864(__src, v11);
  type metadata accessor for LocUtil();
  v9 = swift_allocObject();
  sub_2660CD484(v11, v9 + 16);
  __src[10] = v9;
  memcpy((a4 + 96), __src, 0x59uLL);
  return a4;
}

uint64_t OUTLINED_FUNCTION_16_8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_2661159F4(uint64_t a1)
{
  sub_26618B810();
  type metadata accessor for BaseDialogProvider();
  v1 = swift_allocObject();
  sub_26618B470();
  swift_allocObject();

  v2 = sub_26618B460();
  v3 = sub_26618C460();

  v8[3] = v3;
  v8[4] = &off_2877CC660;
  v8[0] = sub_26618C450();
  sub_26618B810();
  type metadata accessor for LocUtil();
  v4 = swift_allocObject();
  sub_2660CD484(v7, (v4 + 2));
  sub_2660CFC00(v8, v7);
  v5 = sub_266118B14(v9, v1, v2, v7, v4);

  sub_2660CFC5C(v8);
  return v5;
}

uint64_t sub_266115B00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v95 = a1;
  v113 = a2;
  sub_26618B840();
  OUTLINED_FUNCTION_2_2();
  v99 = v3;
  v100 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_6();
  v98 = v4;
  v5 = OUTLINED_FUNCTION_18_2();
  v6 = type metadata accessor for AppLaunchIntent(v5);
  v7 = OUTLINED_FUNCTION_3_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_6();
  v103 = v8;
  OUTLINED_FUNCTION_18_2();
  sub_26618C0E0();
  OUTLINED_FUNCTION_2_2();
  v104 = v10;
  v105 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_6();
  v102 = v11;
  OUTLINED_FUNCTION_18_2();
  sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v114 = v12;
  v115 = v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24_1();
  v101 = v14 - v15;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17_5();
  v106 = v17;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v94 - v19;
  sub_26618B7F0();
  OUTLINED_FUNCTION_2_2();
  v110 = v21;
  v111 = v22;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_6();
  v112 = v23;
  OUTLINED_FUNCTION_18_2();
  v24 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_24_1();
  v97 = (v28 - v29);
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17_5();
  v96 = v31;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_5();
  v34 = v33;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v35);
  v37 = &v94 - v36;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v38 = __swift_project_value_buffer(v24, qword_2814B4A98);
  v39 = *(v26 + 16);
  v107 = v38;
  v108 = v39;
  v109 = v26 + 16;
  (v39)(v37);
  v40 = sub_26618C690();
  v41 = sub_26618CAA0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_6_2();
    *v42 = 0;
    _os_log_impl(&dword_2660B7000, v40, v41, "LaunchAppDisambiguationStrategy.actionForInput() called", v42, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v44 = v26 + 8;
  v43 = *(v26 + 8);
  v45 = v24;
  v43(v37, v24);
  sub_26618B770();
  v46 = v114;
  v47 = v115;
  v48 = *(v115 + 88);
  if (v48(v20, v114) != *MEMORY[0x277D5C150])
  {
    (*(v47 + 8))(v20, v46);
    v53 = v46;
    goto LABEL_13;
  }

  v94 = v44;
  (*(v47 + 96))(v20, v46);
  v49 = v110;
  (*(v111 + 32))(v112, v20, v110);
  if (sub_26618B7D0() == 0xD000000000000030 && 0x80000002661983D0 == v50)
  {

    goto LABEL_19;
  }

  v52 = sub_26618D000();

  if (v52)
  {
LABEL_19:
    v108(v34, v107, v45);
    v71 = sub_26618C690();
    v72 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_16_4(v72))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_26_2(&dword_2660B7000, v73, v74, "LaunchAppDisambiguationStrategy.actionForInput() directInvocation handling");
      v49 = v110;
      OUTLINED_FUNCTION_7_2();
    }

    v43(v34, v45);
    sub_26618B2A0();
    return (*(v111 + 8))(v112, v49);
  }

  (*(v111 + 8))(v112, v49);
  v53 = v114;
LABEL_13:
  v54 = v106;
  sub_26618B770();
  v55 = OUTLINED_FUNCTION_20_10();
  v56 = (v48)(v55);
  if (v56 == *MEMORY[0x277D5C128])
  {
    v57 = v115;
    v58 = OUTLINED_FUNCTION_20_10();
    v59(v58);
    v60 = v54;
    v62 = v104;
    v61 = v105;
    v63 = v102;
    (*(v104 + 32))(v102, v60, v105);
    (*(v62 + 16))(v103, v63, v61);
    if (sub_2660C97B4())
    {
      sub_26618B290();
      OUTLINED_FUNCTION_6_11();
      return (*(v62 + 8))(v63, v61);
    }

    OUTLINED_FUNCTION_6_11();
    (*(v62 + 8))(v63, v61);
    v75 = v114;
  }

  else
  {
    if (v56 == *MEMORY[0x277D5C160])
    {
      v65 = OUTLINED_FUNCTION_20_10();
      v66(v65);
      v67 = v54;
      v68 = v98;
      (*(v99 + 32))(v98, v67, v100);
      sub_2661177A0(v68, v95, v113);
      v69 = OUTLINED_FUNCTION_20_10();
      return v70(v69);
    }

    v57 = v115;
    v76 = OUTLINED_FUNCTION_20_10();
    v77(v76);
    v75 = v53;
  }

  v78 = v101;
  sub_26618B770();
  v79 = sub_2661123A8(v78);
  (*(v57 + 8))(v78, v75);
  if (v79)
  {
    v80 = v96;
    v81 = OUTLINED_FUNCTION_25_6();
    v82(v81);
    v83 = sub_26618C690();
    v84 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_16_4(v84))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_26_2(&dword_2660B7000, v85, v86, "LaunchAppDisambiguationStrategy.actionForInput() handling");
      OUTLINED_FUNCTION_7_2();
    }

    v43(v80, v45);
    return sub_26618B2A0();
  }

  else
  {
    v87 = v97;
    v88 = OUTLINED_FUNCTION_25_6();
    v89(v88);
    v90 = sub_26618C690();
    v91 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_16_4(v91))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_26_2(&dword_2660B7000, v92, v93, "LaunchAppDisambiguationStrategy.actionForInput() ignoring");
      OUTLINED_FUNCTION_7_2();
    }

    v43(v87, v45);
    return sub_26618B2B0();
  }
}

uint64_t sub_26611635C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0);
  v3[13] = v4;
  OUTLINED_FUNCTION_3_0(v4);
  v3[14] = OUTLINED_FUNCTION_8_2();
  v5 = type metadata accessor for AppLaunchDataModels.App(0);
  OUTLINED_FUNCTION_0_4(v5);
  v3[15] = v6;
  v3[16] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v7);
  v3[17] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618B6A0();
  v3[18] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v3[19] = v9;
  v3[20] = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618B440();
  v3[21] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v3[22] = v11;
  v3[23] = OUTLINED_FUNCTION_8_2();
  v12 = sub_26618C6B0();
  v3[24] = v12;
  OUTLINED_FUNCTION_0_4(v12);
  v3[25] = v13;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266116548, 0, 0);
}

void sub_266116548()
{
  v70 = v0;
  if (qword_2814B2C40 != -1)
  {
LABEL_45:
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v62 = __swift_project_value_buffer(*(v0 + 192), qword_2814B4A98);
  v61 = *(v2 + 16);
  v61(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  v67 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_6_2();
    *v5 = 0;
    _os_log_impl(&dword_2660B7000, v3, v4, "LaunchAppDisambiguationStrategy.makePromptForDisambiguation() called", v5, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v6 = *(v0 + 216);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);

  v60 = *(v7 + 8);
  v60(v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C368, &unk_266190D80);
  v9 = sub_26618B610();
  v10 = sub_2661046B8();
  v11 = 0;
  v12 = (v9 & 0xFFFFFFFFFFFFFF8);
  v13 = MEMORY[0x277D84F90];
LABEL_5:
  v63 = v13;
  *(v0 + 224) = v13;
  v14 = v0;
  while (v10 != v11)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26677C150](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v15 = *(v9 + 8 * v11 + 32);
    }

    v16 = v15;
    v0 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v17 = sub_2660C9D24(v15);
    v19 = v18;

    ++v11;
    if (v19)
    {
      v20 = v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_266129600();
        v20 = v26;
      }

      v22 = v20;
      v23 = *(v20 + 16);
      v24 = v22;
      if (v23 >= *(v22 + 24) >> 1)
      {
        sub_266129600();
        v24 = v27;
      }

      v13 = v24;
      *(v24 + 16) = v23 + 1;
      v25 = v24 + 16 * v23;
      *(v25 + 32) = v17;
      *(v25 + 40) = v19;
      v11 = v0;
      v0 = v67;
      goto LABEL_5;
    }
  }

  v28 = v14[23];

  v0 = sub_26618B610();
  sub_2661490E0();
  sub_26618B1C0();
  *(swift_task_alloc() + 16) = v28;
  sub_26618B620();

  v29 = sub_2661046B8();
  if (v29)
  {
    v30 = v29;
    v68 = MEMORY[0x277D84F90];
    sub_26612A648(0, v29 & ~(v29 >> 63), 0);
    if ((v30 & 0x8000000000000000) == 0)
    {
      v31 = 0;
      v12 = 0;
      v32 = v14[15];
      v33 = v68;
      v65 = v0;
      v66 = v0 & 0xC000000000000001;
      v64 = v0 & 0xFFFFFFFFFFFFFF8;
      v34 = v30;
      while (1)
      {
        v35 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_43;
        }

        if (v66)
        {
          v36 = MEMORY[0x26677C150](v31, v0);
        }

        else
        {
          if (v31 >= *(v64 + 16))
          {
            goto LABEL_44;
          }

          v36 = *(v0 + 8 * v31 + 32);
        }

        v37 = v36;
        v38 = v67[16];
        v69[0] = v36;
        sub_266117370(v69, v38);

        v40 = *(v68 + 16);
        v39 = *(v68 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_26612A648(v39 > 1, v40 + 1, 1);
        }

        v41 = v67[16];
        *(v68 + 16) = v40 + 1;
        sub_2660FA7AC(v41, v68 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v40);
        ++v31;
        v0 = v65;
        if (v35 == v34)
        {

          v14 = v67;
          goto LABEL_32;
        }
      }
    }

    __break(1u);
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
LABEL_32:
    v42 = sub_26617CA00(0x50415F4843494857, 0xE900000000000050);
    if (v43)
    {
      v14[7] = v42;
      v14[8] = v43;
      sub_26618AB90();
      v14[9] = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C390, "Fi");
      sub_26618AB90();
      v44 = swift_task_alloc();
      v14[29] = v44;
      *v44 = v14;
      v44[1] = sub_266116BD4;

      sub_2660C43FC(v63);
    }

    else
    {
      v45 = v14[26];
      v46 = v14[24];

      (v61)(v45, v62, v46);
      v47 = sub_26618C690();
      v48 = sub_26618CAB0();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_30_0(v49);
        _os_log_impl(&dword_2660B7000, v47, v48, "Unable to get localized system text for snippet", v12, 2u);
        OUTLINED_FUNCTION_28_3();
      }

      v50 = v14[26];
      v51 = v14[24];
      v52 = v14;
      v53 = v14[20];
      v54 = v52[18];
      v55 = v52[19];

      v60(v50, v51);
      sub_2660D3004();
      swift_allocError();
      *v56 = 7;
      swift_willThrow();
      (*(v55 + 8))(v53, v54);
      v57 = OUTLINED_FUNCTION_14_10();
      v58(v57);

      OUTLINED_FUNCTION_5_3();

      v59();
    }
  }
}

uint64_t sub_266116BD4(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 240) = v1;

  if (v1)
  {
    v6 = sub_2661170F0;
  }

  else
  {
    *(v4 + 248) = a1;
    v6 = sub_266116D10;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_266116D10()
{
  v1 = v0[31];
  v2 = v0[14];
  v3 = v0[12];
  sub_26618B640();
  v4 = v3[15];
  v5 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v4);
  v0[5] = type metadata accessor for AppLaunchDataModels(0);
  v0[6] = sub_266118A6C(qword_2814B3FF0, 255, type metadata accessor for AppLaunchDataModels, &protocol conformance descriptor for AppLaunchDataModels);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_2660FA8AC(v2, boxed_opaque_existential_0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v7 = swift_allocObject();
  v0[32] = v7;
  *(v7 + 16) = xmmword_26618F7E0;
  *(v7 + 32) = v1;
  v8 = v1;
  v9 = swift_task_alloc();
  v0[33] = v9;
  *v9 = v0;
  v9[1] = sub_266116EC8;
  v10 = v0[20];
  v11 = v0[10];

  return MEMORY[0x2821BB468](v11, v0 + 2, v7, v10, v4, v5);
}

uint64_t sub_266116EC8()
{
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v1 = v3;

  __swift_destroy_boxed_opaque_existential_1((v3 + 16));

  return MEMORY[0x2822009F8](sub_266116FE0, 0, 0);
}

uint64_t sub_266116FE0()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 112);

  OUTLINED_FUNCTION_3_13();
  sub_266118AB4(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_5_3();

  return v9();
}

uint64_t sub_2661170F0()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  OUTLINED_FUNCTION_3_13();
  sub_266118AB4(v4, v5);
  (*(v2 + 8))(v1, v3);
  v6 = OUTLINED_FUNCTION_14_10();
  v7(v6);

  OUTLINED_FUNCTION_5_3();

  return v8();
}

uint64_t sub_2661171D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_26618B230();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  sub_26618B650();
  sub_26618B680();
  v10 = sub_26618B440();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  sub_26618B660();
  (*(v4 + 104))(v6, *MEMORY[0x277D5BC50], v3);
  return sub_26618B630();
}

uint64_t sub_266117370@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v45 = sub_26618AB50();
  v49 = *(v45 - 8);
  v3 = MEMORY[0x28223BE20](v45);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v46 = &v41 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
  v13 = swift_allocObject();
  v43 = xmmword_26618E190;
  *(v13 + 16) = xmmword_26618E190;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C088, &unk_26618F940);
  inited = swift_initStackObject();
  *(inited + 16) = v43;
  v50 = 0x696669746E656469;
  v51 = 0xEA00000000007265;
  v15 = MEMORY[0x277D837D0];
  sub_26618CD20();
  v16 = sub_2660C9D30(v12);
  *(inited + 96) = v15;
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  *(inited + 72) = v18;
  *(inited + 80) = v19;
  sub_26618C850();
  v20 = sub_26618AB80();
  v21 = MEMORY[0x277D63778];
  *(v13 + 56) = v20;
  *(v13 + 64) = v21;
  __swift_allocate_boxed_opaque_existential_0((v13 + 32));
  sub_26618AB70();

  v22 = v11;
  sub_26618AB60();
  v23 = sub_2660C9D24(v12);
  v25 = v24;
  v26 = sub_2660C9D30(v12);
  v28 = v27;
  v29 = [v12 isOffloaded];
  if (v29)
  {
    v30 = v29;
    LODWORD(v43) = [v29 BOOLValue];
  }

  else
  {
    LODWORD(v43) = 0;
  }

  if (v28)
  {
    v31 = v28;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  v42 = v31;
  if (v28)
  {
    v32 = v26;
  }

  else
  {
    v32 = 0;
  }

  if (v25)
  {
    v33 = v23;
  }

  else
  {
    v25 = 0xE000000000000000;
    v33 = 0;
  }

  v34 = v49;
  v35 = *(v49 + 16);
  v44 = v22;
  v36 = v22;
  v37 = v45;
  v35(v9, v36, v45);
  v50 = v33;
  v51 = v25;
  sub_26618AB90();
  type metadata accessor for AppLaunchDataModels.App(0);
  v50 = v32;
  v51 = v42;
  sub_26618AB90();
  LOBYTE(v50) = v43;
  sub_26618AB90();
  v38 = v46;
  v35(v46, v9, v37);
  v35(v47, v38, v37);
  sub_26618AB90();
  v39 = *(v34 + 8);
  v39(v38, v37);
  v39(v9, v37);
  return (v39)(v44, v37);
}

uint64_t sub_2661177A0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a2;
  v109 = a3;
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v107 = v4;
  v108 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_1();
  v106 = v6 - v7;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_5();
  v102 = v9;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_5();
  v100 = v11;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v12);
  v101 = &v98 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  v15 = OUTLINED_FUNCTION_3_0(v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v98 - v16;
  v18 = sub_26618B8E0();
  OUTLINED_FUNCTION_2_2();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_24_1();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v98 - v26;
  v28 = sub_26618B980();
  OUTLINED_FUNCTION_2_2();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a1;
  sub_26618B820();
  v34 = sub_26618B8B0();
  v37 = *(v20 + 8);
  v35 = v20 + 8;
  v36 = v37;
  v37(v27, v18);
  sub_266139C58(v34, v17);

  if (__swift_getEnumTagSinglePayload(v17, 1, v28) == 1)
  {
    v38 = sub_2661189FC(v17);
    if (qword_2814B2C38 == -1)
    {
LABEL_3:
      OUTLINED_FUNCTION_7_11(v38, qword_2814B4A80);
      v39 = v106;
      v40(v106);
      v41 = sub_26618C690();
      v42 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_16_4(v42))
      {
        v43 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_30_0(v43);
        OUTLINED_FUNCTION_7_7(&dword_2660B7000, v44, v45, "LaunchAppDisambiguationStrategy.actionForInputNLv4Uso() No user dialog act found in userParse");
        OUTLINED_FUNCTION_28_3();
      }

      (*(v27 + 8))(v39, v35);
      return sub_26618B2B0();
    }

LABEL_51:
    v38 = OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    goto LABEL_3;
  }

  v106 = v30;
  (*(v30 + 32))(v33, v17, v28);
  if (sub_26618B940() & 1) != 0 || (sub_26618B930())
  {
    sub_26618B290();
    return (*(v106 + 8))(v33, v28);
  }

  sub_26618B820();
  v47 = sub_266144AE8();
  v36(v24, v18);
  if (v47)
  {
    v105 = v28;
    v48 = v104;
    v49 = __swift_project_boxed_opaque_existential_1((v104 + 56), *(v104 + 80));
    v50 = sub_2660FA19C(v49, v47);
    v51 = __swift_project_boxed_opaque_existential_1((v48 + 56), *(v48 + 80));
    v52 = *(sub_2660FA19C(v51, v47) + 16);

    if (v52)
    {
      v101 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C388, qword_2661925C0);
      v53 = sub_26618B6C0();
      v54 = sub_2660F474C();

      v55 = 0;
      v56 = *(v50 + 16);
      v57 = v50 + 32;
      v28 = v54 & 0xC000000000000001;
      v35 = v54 & 0xFFFFFFFFFFFFFF8;
      v98 = v50 + 32;
      v99 = v33;
      v102 = v50;
      v103 = v56;
LABEL_12:
      if (v55 != v56)
      {
        if (v55 < *(v50 + 16))
        {
          v58 = (v57 + 16 * v55);
          v60 = *v58;
          v59 = v58[1];
          v104 = v55 + 1;
          v61 = sub_2661046B8();

          for (i = 0; ; ++i)
          {
            if (v61 == i)
            {

              v57 = v98;
              v33 = v99;
              v50 = v102;
              v56 = v103;
              v55 = v104;
              goto LABEL_12;
            }

            if (v28)
            {
              v63 = MEMORY[0x26677C150](i, v54);
            }

            else
            {
              if (i >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_50;
              }

              v63 = *(v54 + 8 * i + 32);
            }

            v64 = v63;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v65 = sub_2660C9D30(v63);
            if (v66)
            {
              if (v65 == v60 && v66 == v59)
              {

LABEL_43:
                v88 = v99;
                swift_bridgeObjectRelease_n();
                sub_26618B2A0();

                return (*(v106 + 8))(v88, v105);
              }

              v27 = sub_26618D000();

              if (v27)
              {

                goto LABEL_43;
              }
            }

            else
            {
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        __break(1u);
        goto LABEL_53;
      }

      if (qword_2814B2C38 != -1)
      {
        v89 = OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
      }

      OUTLINED_FUNCTION_7_11(v89, qword_2814B4A80);
      v90 = v100;
      v91(v100);
      v92 = sub_26618C690();
      v93 = sub_26618CAB0();
      v94 = OUTLINED_FUNCTION_16_4(v93);
      v84 = v106;
      if (v94)
      {
        v95 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_30_0(v95);
        OUTLINED_FUNCTION_7_7(&dword_2660B7000, v96, v97, "LaunchAppDisambiguationStrategy.actionForInputNLv4Uso() User provided appId that is not present in the disambiguation list");
        OUTLINED_FUNCTION_28_3();
      }

      (*(v27 + 8))(v90, v35);
      sub_26618B2B0();
    }

    else
    {

      if (qword_2814B2C38 != -1)
      {
        v78 = OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
      }

      OUTLINED_FUNCTION_7_11(v78, qword_2814B4A80);
      v79 = v101;
      v80(v101);
      v81 = sub_26618C690();
      v82 = sub_26618CAB0();
      v83 = OUTLINED_FUNCTION_16_4(v82);
      v84 = v106;
      if (v83)
      {
        v85 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_30_0(v85);
        OUTLINED_FUNCTION_7_7(&dword_2660B7000, v86, v87, "LaunchAppDisambiguationStrategy.actionForInputNLv4Uso() Unable to resolve the appId");
        OUTLINED_FUNCTION_28_3();
      }

      (*(v27 + 8))(v79, v35);
      sub_26618B2B0();
    }

    return (*(v84 + 8))(v33, v105);
  }

  if (qword_2814B2C38 != -1)
  {
LABEL_53:
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  v68 = v107;
  v69 = __swift_project_value_buffer(v107, qword_2814B4A80);
  v70 = v102;
  (*(v108 + 16))(v102, v69, v68);
  v71 = sub_26618C690();
  v72 = sub_26618CAB0();
  v73 = OUTLINED_FUNCTION_16_4(v72);
  v74 = v106;
  if (v73)
  {
    v75 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_30_0(v75);
    OUTLINED_FUNCTION_7_7(&dword_2660B7000, v76, v77, "LaunchAppDisambiguationStrategy.actionForInputNLv4Uso() No usoTask was found in the parse");
    OUTLINED_FUNCTION_28_3();
  }

  (*(v108 + 8))(v70, v68);
  sub_26618B2B0();
  return (*(v74 + 8))(v33, v28);
}

void *sub_266117FCC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_2660D31B4((v0 + 17));

  __swift_destroy_boxed_opaque_existential_1(v0 + 30);
  sub_2660D3208((v0 + 35));
  return v0;
}

uint64_t sub_26611801C()
{
  sub_266117FCC();

  return MEMORY[0x2821FE8D8](v0, 320, 7);
}

void sub_266118074()
{
  type metadata accessor for LaunchAppDisambiguationStrategy();

  JUMPOUT(0x26677A120);
}

uint64_t sub_2661180EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_266118198;

  return sub_2660F73F0();
}

uint64_t sub_266118198(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_2661182A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266118EB4;

  return sub_2660F881C();
}

uint64_t sub_266118378(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2660CF900;

  return sub_26611635C(a1, a2);
}

uint64_t sub_266118424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for LaunchAppDisambiguationStrategy();
  *v10 = v5;
  v10[1] = sub_266118EB4;

  return MEMORY[0x2821B9F38](a1, a2, a3, v11, a5);
}

uint64_t sub_2661184F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for LaunchAppDisambiguationStrategy();
  *v10 = v5;
  v10[1] = sub_266118EB4;

  return MEMORY[0x2821B9F48](a1, a2, a3, v11, a5);
}

uint64_t sub_2661185BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LaunchAppDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_266118EB4;

  return MEMORY[0x2821B9F40](a1, a2, v9, a4);
}

uint64_t sub_266118680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LaunchAppDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_266118EB4;

  return MEMORY[0x2821B9F58](a1, a2, v9, a4);
}

uint64_t sub_266118744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LaunchAppDisambiguationStrategy();

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

uint64_t sub_266118790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for LaunchAppDisambiguationStrategy();
  *v12 = v6;
  v12[1] = sub_266118EB4;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_26611886C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for LaunchAppDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_266118EB4;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_2661189A4(uint64_t a1, uint64_t a2)
{
  result = sub_266118A6C(&qword_28005C4E0, a2, type metadata accessor for LaunchAppDisambiguationStrategy, &unk_266191BE0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2661189FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266118A6C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_266118AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_266118B14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v28 = *a5;
  v10 = type metadata accessor for BaseDialogProvider();
  v38[3] = v10;
  v38[4] = &off_2877CAA90;
  v38[0] = a2;
  v36 = &type metadata for AppLaunchFeatureFlagsImpl;
  v37 = &off_2877CD168;
  v34[3] = sub_26618B470();
  v34[4] = MEMORY[0x277D5BD58];
  v34[0] = a3;
  v32 = &type metadata for ReferenceResolver;
  v33 = &off_2877CC6F0;
  v11 = swift_allocObject();
  v31[0] = v11;
  v12 = *(a4 + 16);
  *(v11 + 16) = *a4;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a4 + 32);
  type metadata accessor for LaunchAppDisambiguationStrategy();
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v38, v10);
  MEMORY[0x28223BE20](v14);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = *v16;
  *(v13 + 304) = v10;
  *(v13 + 312) = &off_2877CAA90;
  *(v13 + 280) = v22;
  *(v13 + 264) = &type metadata for AppLaunchFeatureFlagsImpl;
  *(v13 + 272) = &off_2877CD168;
  v30[3] = &type metadata for ReferenceResolver;
  v30[4] = &off_2877CC6F0;
  v23 = swift_allocObject();
  v30[0] = v23;
  v24 = *(v20 + 1);
  *(v23 + 16) = *v20;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(v20 + 4);
  sub_2660C5864(a1, v13 + 16);
  sub_2660C5864(v34, v13 + 96);
  sub_2660C5864(v30, v13 + 56);
  sub_2660C5864(v13 + 16, v13 + 136);
  sub_2660C5864(v13 + 96, v13 + 176);
  v25 = sub_26618C8A0();
  LODWORD(a3) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v30);
  *(v13 + 224) = a3 == 1;
  sub_2660C5864(v13 + 136, v29);
  v26 = swift_allocObject();
  sub_2660CD484(v29, v26 + 16);
  *(v13 + 216) = v26;
  *(v13 + 232) = a5;
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v13;
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return sub_266118AB4(v0, type metadata accessor for AppLaunchIntent);
}

uint64_t sub_266118F64(uint64_t a1, void *a2)
{
  v41 = a2;
  v3 = sub_26618B070();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26618C6B0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = *(v2 + 256);
  if (v14)
  {
    v15 = qword_2814B2C40;
    v16 = v14;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v7, qword_2814B4A98);
    (*(v8 + 16))(v13, v17, v7);
    v18 = v16;
    v19 = sub_26618C690();
    v20 = sub_26618CAA0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v14;
      v23 = v18;
      _os_log_impl(&dword_2660B7000, v19, v20, "makeIntentExecutionBehavior: Handle on target device: %@", v21, 0xCu);
      sub_2660C8040(v22, &qword_28005C1F8, &unk_266190550);
      MEMORY[0x26677CC30](v22, -1, -1);
      MEMORY[0x26677CC30](v21, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    sub_26618B0A0();
    v24 = sub_26618B080();
  }

  else
  {
    v39 = v6;
    v40 = v4;
    v25 = v41;
    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v7, qword_2814B4A98);
    (*(v8 + 16))(v11, v26, v7);
    v27 = sub_26618C690();
    v28 = sub_26618CAA0();
    v29 = v3;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2660B7000, v27, v28, "IntentExecutionBehaviorStrategy.makeIntentExecutionBehavior: No eligible devices for remote execution found. Continuing local execution.", v30, 2u);
      MEMORY[0x26677CC30](v30, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    sub_26618B0A0();
    v31 = qword_2814B3AA0;

    v32 = v39;
    v33 = v40;
    if (v31 != -1)
    {
      swift_once();
    }

    v34 = qword_2814B4AD0;
    type metadata accessor for LaunchAppIntent();
    v35 = v34;
    v36 = v25;
    sub_26618B060();
    v24 = sub_26618B090();
    (*(v33 + 8))(v32, v29);
  }

  return v24;
}

uint64_t sub_2661193CC(uint64_t a1, void *a2)
{
  v47 = a2;
  v3 = sub_26618B070();
  OUTLINED_FUNCTION_2_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  v10 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_1();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = *(v2 + 520);
  if (v20)
  {
    v21 = qword_2814B2C40;
    v22 = v20;
    if (v21 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    __swift_project_value_buffer(v10, qword_2814B4A98);
    OUTLINED_FUNCTION_28_1();
    v23(v19);
    v24 = v22;
    v25 = sub_26618C690();
    v26 = sub_26618CAA0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v20;
      v29 = v24;
      _os_log_impl(&dword_2660B7000, v25, v26, "makeIntentExecutionBehavior: Handle on target device: %@", v27, 0xCu);
      sub_2660C8040(v28, &qword_28005C1F8, &unk_266190550);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    (*(v12 + 8))(v19, v10);
    sub_26618B0A0();
    v30 = sub_26618B080();
  }

  else
  {
    v45 = v9;
    v46 = v5;
    v31 = v47;
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    __swift_project_value_buffer(v10, qword_2814B4A98);
    OUTLINED_FUNCTION_28_1();
    v32(v16);
    v33 = sub_26618C690();
    v34 = sub_26618CAA0();
    v35 = v3;
    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_24_0();
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2660B7000, v33, v34, "IntentExecutionBehaviorStrategy.makeIntentExecutionBehavior: No eligible devices for remote execution found. Continuing local execution.", v36, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    (*(v12 + 8))(v16, v10);
    sub_26618B0A0();
    v37 = qword_2814B3AA0;

    v38 = v45;
    v39 = v46;
    if (v37 != -1)
    {
      swift_once();
    }

    v40 = qword_2814B4AD0;
    type metadata accessor for LaunchAppIntent();
    v41 = v40;
    v42 = v31;
    sub_26618B060();
    v30 = sub_26618B090();
    (*(v39 + 8))(v38, v35);
  }

  return v30;
}

id sub_2661197D4()
{
  result = [objc_allocWithZone(type metadata accessor for LaunchAppIntentHandler()) init];
  qword_2814B4AD0 = result;
  return result;
}

uint64_t sub_266119808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v64 = a1;
  v65 = sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_1();
  v57 = (v5 - v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v55 - v8;
  v10 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_1();
  v58 = (v14 - v15);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v55 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v62 = v3;
  v22 = __swift_project_value_buffer(v10, qword_2814B4A98);
  v23 = *(v12 + 16);
  v60 = v22;
  v61 = v23;
  (v23)(v21);
  v24 = sub_26618C690();
  v25 = sub_26618CAA0();
  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_24_0();
    v26 = swift_slowAlloc();
    v59 = (v12 + 16);
    *v26 = 0;
    _os_log_impl(&dword_2660B7000, v24, v25, "LaunchApp.FlowStrategy.actionForInput() called", v26, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v59 = *(v12 + 8);
  v59(v21, v10);
  sub_26618B770();
  v27 = sub_2661123A8(v9);
  v28 = *(v62 + 8);
  v29 = v9;
  v30 = v65;
  v28(v29, v65);
  if ((v27 & 1) == 0)
  {
    v39 = v58;
    v61(v58, v60, v10);
    v40 = sub_26618C690();
    sub_26618CAA0();
    v41 = OUTLINED_FUNCTION_25_1();
    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_24_0();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_43_0(v43);
      OUTLINED_FUNCTION_26_2(&dword_2660B7000, v44, v45, "LaunchApp.FlowStrategy.actionForInput() ignoring");
      v46 = OUTLINED_FUNCTION_8_13();
      MEMORY[0x26677CC30](v46);
    }

    v59(v39, v10);
    return sub_26618B2B0();
  }

  v31 = v57;
  sub_26618B770();
  sub_2660C87C0();
  v28(v31, v30);
  v32 = v67;
  if (v67)
  {
    v33 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v34 = (*(v33 + 8))(v32, v33);
    if (v34)
    {
      v35 = v34;
      v36 = __swift_project_boxed_opaque_existential_1((v56 + 136), *(v56 + 160));
      v37 = sub_2660FA19C(v36, v35);

      __swift_destroy_boxed_opaque_existential_1(v66);
      if (qword_28005BC80 != -1)
      {
        swift_once();
      }

      v38 = sub_26612EAB0(v37, qword_28005D1A0);

      if (v38)
      {
        goto LABEL_18;
      }

      return sub_26618B2B0();
    }

    __swift_destroy_boxed_opaque_existential_1(v66);
  }

  else
  {
    sub_2660C8040(v66, &qword_28005C148, &unk_26618FF00);
  }

LABEL_18:
  v61(v19, v60, v10);
  v48 = sub_26618C690();
  sub_26618CAA0();
  v49 = OUTLINED_FUNCTION_25_1();
  if (os_log_type_enabled(v49, v50))
  {
    OUTLINED_FUNCTION_24_0();
    v51 = swift_slowAlloc();
    OUTLINED_FUNCTION_43_0(v51);
    OUTLINED_FUNCTION_26_2(&dword_2660B7000, v52, v53, "LaunchApp.FlowStrategy.actionForInput() handling");
    v54 = OUTLINED_FUNCTION_8_13();
    MEMORY[0x26677CC30](v54);
  }

  v59(v19, v10);
  return sub_26618B2A0();
}

id sub_266119CCC(uint64_t a1, void *a2)
{
  v3 = v2;
  v219 = a1;
  v200 = sub_26618B7B0();
  OUTLINED_FUNCTION_2_2();
  v199 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_9_4(v7);
  v205 = sub_26618B7F0();
  OUTLINED_FUNCTION_2_2();
  v204 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_9_4(v10);
  v197 = sub_26618B840();
  OUTLINED_FUNCTION_2_2();
  v196 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_6();
  v14 = OUTLINED_FUNCTION_9_4(v13);
  v15 = type metadata accessor for AppLaunchIntent(v14);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_9_4(v16);
  sub_26618C0E0();
  OUTLINED_FUNCTION_2_2();
  v217 = v18;
  v218 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_6();
  v216 = v19;
  v224 = sub_26618AA00();
  OUTLINED_FUNCTION_2_2();
  v228 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_4();
  v24 = (v23 - v22);
  v209 = sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v207 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17_5();
  v225 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_4(&v194 - v30);
  v31 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_24_1();
  v37 = (v35 - v36);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v43);
  v45 = &v194 - v44;
  if (qword_2814B2C40 != -1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    v46 = __swift_project_value_buffer(v31, qword_2814B4A98);
    v47 = v33[2];
    v210 = v46;
    v212 = v33 + 2;
    v211 = v47;
    v47(v45);
    v48 = sub_26618C690();
    v49 = sub_26618CAA0();
    v50 = os_log_type_enabled(v48, v49);
    v232 = v24;
    if (v50)
    {
      OUTLINED_FUNCTION_24_0();
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2660B7000, v48, v49, "LaunchApp.FlowStrategy.makeIntentFromParse() called", v51, 2u);
      v24 = v232;
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v53 = v33[1];
    v52 = v33 + 1;
    v213 = v53;
    v53(v45, v31);
    if (a2)
    {
      v54 = a2;
    }

    else
    {
      v54 = [objc_allocWithZone(type metadata accessor for LaunchAppIntent()) init];
    }

    v214 = v52;
    v55 = a2;
    v56 = v220;
    sub_26611B72C();
    v57 = sub_26618CA00();
    OUTLINED_FUNCTION_22_4(v57, sel_setCanReinstallOffloadedApps_);

    v58 = v56[32];
    v227 = v37;
    if (v58)
    {
      v226 = v3;
      sub_26611C10C();
      v59 = v58;
      v60 = v54;
      v61 = sub_26618CB70();
      [v60 setIsRemoteExecution_];

      __swift_project_boxed_opaque_existential_1(v56 + 2, v56[5]);
      if (sub_26618B1A0())
      {
        v62 = v60;
        v63 = sub_26618CB70();
        [v62 setSmartSelectApps_];
      }

      __swift_project_boxed_opaque_existential_1(v220 + 27, v220[30]);
      v64 = v60;
      sub_26614FD14();
      if (v65)
      {
        v66 = sub_26618C8A0();
      }

      else
      {
        v66 = 0;
      }

      v3 = v226;
      v37 = v227;
      v24 = v232;
      [v64 setCrossDeviceRequestInitiator_];

      v56 = v220;
      sub_26611B2FC(v59);
    }

    __swift_project_boxed_opaque_existential_1(v56 + 2, v56[5]);
    if (sub_26618B190())
    {
      sub_26611C10C();
      v67 = v54;
      v68 = sub_26618CB70();
      [v67 setIsInCarPlay_];
    }

    v215 = v31;
    v69 = v54;
    sub_2660C8AA8();
    v71 = v70;
    v72 = v70[2];
    if (!v72)
    {
      break;
    }

    v202 = v69;
    a2 = v3;
    *&v229 = MEMORY[0x277D84F90];
    v45 = &v229;
    v221 = v72;
    sub_26612A628(0, v72, 0);
    v3 = 0;
    v33 = v229;
    v73 = *(v228 + 80);
    v226 = v71;
    v223 = v71 + ((v73 + 32) & ~v73);
    v222 = v228 + 16;
    v31 = (v228 + 8);
    while (v3 < v226[2])
    {
      v74 = v224;
      (*(v228 + 16))(v24, v223 + *(v228 + 72) * v3, v224);
      sub_26611C0C4(&qword_28005C500, 255, MEMORY[0x277D390F0], MEMORY[0x277D390E8]);
      v45 = v24;
      v2 = a2;
      v75 = sub_26618C3E0();
      if (a2)
      {
        (*v31)(v24, v74);

        v83 = v202;

        return v83;
      }

      v77 = v75;
      v78 = v76;
      (*v31)(v24, v74);
      *&v229 = v33;
      v80 = v33[2];
      v79 = v33[3];
      if (v80 >= v79 >> 1)
      {
        v45 = &v229;
        sub_26612A628((v79 > 1), v80 + 1, 1);
        v33 = v229;
      }

      ++v3;
      v33[2] = v80 + 1;
      v81 = &v33[2 * v80];
      v81[4] = v77;
      v81[5] = v78;
      v37 = v227;
      v82 = v225;
      v24 = v232;
      if (v221 == v3)
      {

        v69 = v202;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_77:
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v33 = MEMORY[0x277D84F90];
  v82 = v225;
LABEL_26:
  sub_26611C058(v33, v69);
  v84 = v69;

  v85 = v207;
  v86 = *(v207 + 16);
  v87 = v208;
  v88 = v209;
  v86(v208, v219, v209);
  v89 = (*(v85 + 88))(v87, v88);
  if (v89 == *MEMORY[0x277D5C128])
  {
    v90 = OUTLINED_FUNCTION_11_6();
    v91(v90);
    (*(v217 + 32))(v216, v87, v218);
    OUTLINED_FUNCTION_4_13();
    v92();
    v93 = sub_26618C690();
    v94 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_2(v94))
    {
      OUTLINED_FUNCTION_24_0();
      v95 = swift_slowAlloc();
      OUTLINED_FUNCTION_43_0(v95);
      OUTLINED_FUNCTION_40_2(&dword_2660B7000, v96, v97, "LaunchAppFlowStrategy.makeIntentFromParse() Creating intent from NLv3IntentOnly parse");
      v98 = OUTLINED_FUNCTION_8_13();
      MEMORY[0x26677CC30](v98);
    }

    OUTLINED_FUNCTION_2_13();
    v99();
    v100 = v206;
    (*(v217 + 16))(v206, v216, v218);
    v101 = __swift_project_boxed_opaque_existential_1(v220 + 17, v220[20]);
    v83 = v84;
    v102 = v84;
    sub_26612F47C(v100, v101, v102);

    OUTLINED_FUNCTION_15_7(&v230 + 8);
    OUTLINED_FUNCTION_4_13();
    v103();
    v104 = sub_26618C690();
    v105 = sub_26618CAD0();
    if (OUTLINED_FUNCTION_15_2(v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *v106 = 138412290;
      *(v106 + 4) = v102;
      *v107 = v102;
      v108 = v102;
      _os_log_impl(&dword_2660B7000, v104, v101, "Finished creating intent from parse: %@", v106, 0xCu);
      sub_2660C8040(v107, &qword_28005C1F8, &unk_266190550);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    OUTLINED_FUNCTION_2_13();
    v109();
    sub_2660DD7D0(v206);
    (*(v217 + 8))(v216, v218);
    return v83;
  }

  if (v89 == *MEMORY[0x277D5C150])
  {
    v110 = OUTLINED_FUNCTION_11_6();
    v111(v110);
    (*(v204 + 32))(v203, v87, v205);
    v83 = v84;
    v112 = [v84 application];
    if (!v112)
    {
      type metadata accessor for Application();
      v113 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v114 = v84;
      v112 = sub_2661038FC(0, 0, 0, 0xE000000000000000);
      OUTLINED_FUNCTION_22_4(v112, sel_setApplication_);
    }

    v115 = [v84 application];
    v116 = v203;
    if (!v115)
    {
LABEL_58:
      v167 = [v84 application];
      if (!v167)
      {
LABEL_67:
        (*(v204 + 8))(v116, v205);
        return v83;
      }

      v168 = v167;
      v169 = sub_26618B7E0();
      if (v169)
      {
        sub_266158220(0x656D614E707061, 0xE700000000000000, v169, &v229);

        if (*(&v230 + 1))
        {
          v173 = OUTLINED_FUNCTION_25_7(v170, v171, v172, MEMORY[0x277D837D0]);
          if (v173)
          {
            v174 = sub_26618C8A0();

LABEL_66:
            OUTLINED_FUNCTION_22_4(v173, sel_setName_);

            goto LABEL_67;
          }

LABEL_65:
          v174 = 0;
          goto LABEL_66;
        }
      }

      else
      {
        v229 = 0u;
        v230 = 0u;
      }

      v173 = sub_2660C8040(&v229, &qword_28005C0A8, qword_26618FAE0);
      goto LABEL_65;
    }

    v117 = v115;
    v118 = sub_26618B7E0();
    if (v118)
    {
      sub_266158220(0x746E656449707061, 0xED00007265696669, v118, &v229);

      if (*(&v230 + 1))
      {
        v122 = OUTLINED_FUNCTION_25_7(v119, v120, v121, MEMORY[0x277D837D0]);
        if (v122)
        {
          v123 = sub_26618C8A0();

LABEL_57:
          OUTLINED_FUNCTION_22_4(v122, sel_setAppId_);

          goto LABEL_58;
        }

LABEL_56:
        v123 = 0;
        goto LABEL_57;
      }
    }

    else
    {
      v229 = 0u;
      v230 = 0u;
    }

    v122 = sub_2660C8040(&v229, &qword_28005C0A8, qword_26618FAE0);
    goto LABEL_56;
  }

  if (v89 == *MEMORY[0x277D5C140])
  {
    v124 = OUTLINED_FUNCTION_11_6();
    v125(v124);
    v126 = v199;
    v127 = v200;
    (*(v199 + 32))(v201, v87, v200);
    OUTLINED_FUNCTION_15_7(&v228);
    OUTLINED_FUNCTION_4_13();
    v128();
    v129 = sub_26618C690();
    v130 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_2(v130))
    {
      OUTLINED_FUNCTION_24_0();
      v131 = swift_slowAlloc();
      OUTLINED_FUNCTION_43_0(v131);
      OUTLINED_FUNCTION_40_2(&dword_2660B7000, v132, v133, "LaunchAppFlowStrategy.makeIntentFromParse() Creating intent from Pegasus Result parse");
      v134 = OUTLINED_FUNCTION_8_13();
      MEMORY[0x26677CC30](v134);
    }

    OUTLINED_FUNCTION_2_13();
    v135();
    *(&v230 + 1) = v127;
    v231 = &off_2877CAAC8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v229);
    v137 = v201;
    (*(v126 + 16))(boxed_opaque_existential_0, v201, v127);
    v138 = v126;
    v83 = v84;
    OUTLINED_FUNCTION_21_8(v84);
    (*(v138 + 8))(v137, v127);
LABEL_44:

    __swift_destroy_boxed_opaque_existential_1(&v229);
    return v83;
  }

  if (v89 == *MEMORY[0x277D5C148])
  {
    v139 = OUTLINED_FUNCTION_11_6();
    v140(v139);
    v141 = *v87;
    OUTLINED_FUNCTION_4_13();
    v142();
    v143 = sub_26618C690();
    v144 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_2(v144))
    {
      OUTLINED_FUNCTION_24_0();
      v145 = swift_slowAlloc();
      OUTLINED_FUNCTION_43_0(v145);
      OUTLINED_FUNCTION_40_2(&dword_2660B7000, v146, v147, "LaunchAppFlowStrategy.makeIntentFromParse() Creating intent from Pommes Response parse");
      v148 = OUTLINED_FUNCTION_8_13();
      MEMORY[0x26677CC30](v148);
    }

    OUTLINED_FUNCTION_2_13();
    v149();
    *(&v230 + 1) = sub_26618C430();
    v231 = &off_2877CAAD8;
    *&v229 = v141;
    v83 = v84;
    v150 = v84;
    v151 = v141;
    sub_26611B0E8(&v229, v150);

    __swift_destroy_boxed_opaque_existential_1(&v229);
  }

  else
  {
    if (v89 == *MEMORY[0x277D5C160])
    {
      v152 = OUTLINED_FUNCTION_11_6();
      v153(v152);
      v154 = v196;
      v155 = v197;
      (*(v196 + 32))(v198, v87, v197);
      OUTLINED_FUNCTION_15_7(&v223);
      OUTLINED_FUNCTION_4_13();
      v156();
      v157 = sub_26618C690();
      v158 = sub_26618CAA0();
      if (OUTLINED_FUNCTION_15_2(v158))
      {
        OUTLINED_FUNCTION_24_0();
        v159 = swift_slowAlloc();
        OUTLINED_FUNCTION_43_0(v159);
        OUTLINED_FUNCTION_40_2(&dword_2660B7000, v160, v161, "LaunchAppFlowStrategy.makeIntentFromParse(): got .uso parse");
        v162 = OUTLINED_FUNCTION_8_13();
        MEMORY[0x26677CC30](v162);
      }

      OUTLINED_FUNCTION_2_13();
      v163();
      *(&v230 + 1) = v155;
      v231 = &off_2877CAAB8;
      v164 = __swift_allocate_boxed_opaque_existential_0(&v229);
      v165 = v198;
      (*(v154 + 16))(v164, v198, v155);
      v166 = v154;
      v83 = v84;
      OUTLINED_FUNCTION_21_8(v84);
      if (!v2)
      {

        __swift_destroy_boxed_opaque_existential_1(&v229);
        sub_26611C10C();
        v192 = v165;
        v193 = sub_26618CB70();
        OUTLINED_FUNCTION_22_4(v193, sel_setIsNLv4Parse_);

        (*(v166 + 8))(v192, v155);
        return v83;
      }

      (*(v166 + 8))(v165, v155);
      goto LABEL_44;
    }

    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    __swift_project_value_buffer(v215, qword_2814B4A80);
    OUTLINED_FUNCTION_4_13();
    v176();
    v86(v82, v219, v88);
    v177 = v37;
    v178 = sub_26618C690();
    sub_26618CAB0();
    v179 = OUTLINED_FUNCTION_25_1();
    if (os_log_type_enabled(v179, v180))
    {
      v181 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      *&v229 = v182;
      *v181 = 136315138;
      v183 = v195;
      v86(v195, v82, v209);
      v184 = sub_266145588(v183);
      v186 = v185;
      LODWORD(v232) = v177;
      v187 = OUTLINED_FUNCTION_23_5();
      v177(v187, v209);
      v188 = sub_266103A98(v184, v186, &v229);

      *(v181 + 4) = v188;
      _os_log_impl(&dword_2660B7000, v178, v232, "Unable to process parse: %s", v181, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v182);
      v88 = v209;
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    else
    {

      v189 = OUTLINED_FUNCTION_23_5();
      v37(v189, v88);
    }

    OUTLINED_FUNCTION_2_13();
    v190();
    sub_2660D3004();
    swift_allocError();
    *v191 = 0;
    swift_willThrow();
    v177(v208, v88);
    v83 = v84;
  }

  return v83;
}

void *sub_26611B0E8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 8))(v13, v14);
  if (v15)
  {
    v16 = v15;
    v17 = __swift_project_boxed_opaque_existential_1((v3 + 136), *(v3 + 160));
    sub_26612EBE8(v16, v17, a2);
    v18 = a2;
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    __swift_project_value_buffer(v6, qword_2814B4A80);
    OUTLINED_FUNCTION_28_1();
    v19(v12);
    v20 = sub_26618C690();
    v21 = sub_26618CAB0();
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_24_0();
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2660B7000, v20, v21, "LaunchAppFlowStrategy.makeIntentFromUserParse() No tasks found in input", v22, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    (*(v8 + 8))(v12, v6);
    sub_2660D3004();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_26611B2FC(void *a1)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4E8, &unk_266191E70);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = v34 - v3;
  sub_26618C580();
  OUTLINED_FUNCTION_2_2();
  v35 = v5;
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_6();
  v37 = v6;
  sub_26618C490();
  OUTLINED_FUNCTION_2_2();
  v38 = v8;
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4F0, &qword_2661921C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v34 - v13;
  v15 = sub_26618A5F0();
  OUTLINED_FUNCTION_2_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_24_1();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v34 - v23;
  sub_26618A5E0();
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  sub_26618B5A0();
  if (v25)
  {
    sub_26618A5C0();

    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_2660C8040(v14, &qword_28005C4F0, &qword_2661921C0);
    }

    else
    {
      (*(v17 + 8))(v24, v15);
      (*(v17 + 32))(v24, v14, v15);
    }
  }

  v26 = v1[15];
  v34[2] = v1[16];
  v34[1] = __swift_project_boxed_opaque_existential_1(v1 + 12, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4F8, &unk_266191E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26618F7E0;
  v28 = v41;
  *(v27 + 32) = v41;
  *v11 = v27;
  v11[1] = 0;
  (*(v17 + 16))(v21, v24, v15);
  (*(v35 + 104))(v37, *MEMORY[0x277D61F50], v36);
  v29 = sub_26618C570();
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v29);
  v30 = v28;
  sub_26618C560();
  v32 = v38;
  v31 = v39;
  (*(v38 + 104))(v11, *MEMORY[0x277D61ED0], v39);
  sub_26618C540();
  (*(v32 + 8))(v11, v31);
  return (*(v17 + 8))(v24, v15);
}

uint64_t sub_26611B72C()
{
  if (v0[32] || (v1 = v0, v2 = v0[5], v3 = v1[6], __swift_project_boxed_opaque_existential_1(v1 + 2, v2), (sub_2660C8128(v2, v3) & 1) == 0))
  {
    v4 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v4 = sub_26618B190() ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26611B7B8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));

  return v0;
}

uint64_t sub_26611B808()
{
  sub_26611B7B8();

  return MEMORY[0x2821FE8D8](v0, 264, 7);
}

uint64_t sub_26611B884(uint64_t a1, void *a2)
{
  v3 = sub_266119CCC(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_26611B900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LaunchAppFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_26611B94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26611C150;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_26611BA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for LaunchAppFlowStrategy();
  *v10 = v5;
  v10[1] = sub_26611C150;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_26611BADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for LaunchAppFlowStrategy();
  *v10 = v5;
  v10[1] = sub_26611BBA8;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_26611BBA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26611BC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for LaunchAppFlowStrategy();
  *v10 = v5;
  v10[1] = sub_26611C150;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_26611BD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for LaunchAppFlowStrategy();
  *v12 = v6;
  v12[1] = sub_26611C150;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_26611BE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for LaunchAppFlowStrategy();
  *v12 = v6;
  v12[1] = sub_26611C150;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_26611BF20(uint64_t a1, void *a2)
{
  v3 = sub_266118F64(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

void sub_26611C058(uint64_t a1, void *a2)
{
  v3 = sub_26618C990();

  [a2 setPegasusAppResults_];
}

uint64_t sub_26611C0C4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_26611C10C()
{
  result = qword_2814B2BF8;
  if (!qword_2814B2BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814B2BF8);
  }

  return result;
}

void *OUTLINED_FUNCTION_21_8(void *a1)
{

  return sub_26611B0E8((v1 - 128), a1);
}

id OUTLINED_FUNCTION_22_4(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_26611C244(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_26618B500();
  v2[5] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v2[6] = v4;
  v2[7] = swift_task_alloc();
  v5 = sub_26618C6B0();
  v2[8] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v2[9] = v6;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26611C368, 0, 0);
}

uint64_t sub_26611C368()
{
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v34 = __swift_project_value_buffer(v0[8], qword_2814B4A80);
  v35 = *(v2 + 16);
  v35(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2660B7000, v3, v4, "LaunchAppHandleIntentFlow.execute() called", v5, 2u);
    MEMORY[0x26677CC30](v5, -1, -1);
  }

  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];

  v36 = *(v8 + 8);
  v36(v6, v7);
  OUTLINED_FUNCTION_3_14();
  sub_26618B4F0();
  v12 = sub_26618B110();
  v13 = *(v10 + 8);
  v13(v9, v11);
  if (v12 & 1) != 0 || (OUTLINED_FUNCTION_3_14(), (sub_26618B190()) || (OUTLINED_FUNCTION_3_14(), (sub_26618B1A0()))
  {
    (v35)(v0[10], v34, v0[8]);
    v14 = sub_26618C690();
    v15 = sub_26618CAA0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2660B7000, v14, v15, "LaunchAppHandleIntentFlow.wrappedFlow.execute() called", v16, 2u);
      MEMORY[0x26677CC30](v16, -1, -1);
    }

    v17 = v0[10];
    v18 = v0[8];

    v36(v17, v18);
    v37 = (*MEMORY[0x277D5B4A0] + MEMORY[0x277D5B4A0]);
    v19 = swift_task_alloc();
    v0[13] = v19;
    *v19 = v0;
    v19[1] = sub_26611C858;
    v20 = v0[3];

    return v37(v20);
  }

  else
  {
    v22 = v0[11];
    v23 = v0[7];
    v24 = v0[8];
    v25 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C068, &unk_26618F7D0);
    v26 = sub_26618AE80();
    OUTLINED_FUNCTION_0_4(v26);
    *(swift_allocObject() + 16) = xmmword_26618E190;
    sub_26618B4F0();
    sub_26618AE70();
    v13(v23, v25);
    v27 = sub_26618AC10();

    (v35)(v22, v34, v24);
    v28 = sub_26618C690();
    v29 = sub_26618CAA0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2660B7000, v28, v29, "Device is not authenticated - pushing an unlock flow", v30, 2u);
      MEMORY[0x26677CC30](v30, -1, -1);
    }

    v31 = v0[11];
    v32 = v0[8];

    v36(v31, v32);
    v0[2] = v27;
    sub_26618AE60();
    sub_26618B330();

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_26611C858()
{
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_26611C9BC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LaunchAppHandleIntentFlow();
  OUTLINED_FUNCTION_0_11();
  sub_26611CEDC(v2, v3, v4, &unk_266191F08);
  return sub_26618AFB0();
}

uint64_t sub_26611CA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for LaunchAppHandleIntentStrategy();
  sub_26611CEDC(&qword_2814B36D0, 255, type metadata accessor for LaunchAppHandleIntentStrategy, &unk_266192120);
  v9 = sub_26618AEB0();
  v10 = v9(a1, a2);

  *&v20[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C508, &qword_266191FA0);
  swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C510, &qword_266191FA8);
  sub_26611CF24();
  v11 = sub_26618AD30();
  sub_2660C5864(a4, v20);
  sub_2660C5864(a5, v19);
  __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  v18[3] = &type metadata for AppLaunchFlowFactoryImpl;
  v18[4] = &off_2877CD5D8;
  type metadata accessor for LaunchAppHandleIntentFlow();
  v12 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v18, &type metadata for AppLaunchFlowFactoryImpl);
  v12[11] = &type metadata for AppLaunchFlowFactoryImpl;
  v12[12] = &off_2877CD5D8;
  v12[2] = v11;
  sub_2660CD484(v20, (v12 + 3));

  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
  *&v20[0] = v12;
  OUTLINED_FUNCTION_0_11();
  sub_26611CEDC(v13, v14, v15, &unk_266191F08);
  v16 = sub_26618AFA0();

  return v16;
}

void *sub_26611CC3C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  return v0;
}

uint64_t sub_26611CC6C()
{
  sub_26611CC3C();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_26611CCE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26611CD84;

  return sub_26611C244(a1);
}

uint64_t sub_26611CD84()
{
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_26611CEDC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_26611CF24()
{
  result = qword_2814B4838;
  if (!qword_2814B4838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C510, &qword_266191FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B4838);
  }

  return result;
}

uint64_t sub_26611CFC4(uint64_t a1)
{
  sub_26618B0E0();
  sub_26618B810();
  v1 = type metadata accessor for BaseDialogProvider();
  v2 = swift_allocObject();
  v3 = type metadata accessor for CoreAnalyticsService();
  v4 = swift_allocObject();
  sub_26618C370();
  sub_26618C530();
  v32 = sub_26618C520();
  v5 = sub_26618B470();
  swift_allocObject();
  v6 = sub_26618B460();
  sub_26618B040();
  v7 = type metadata accessor for MPCEncoder();
  v8 = swift_allocObject();
  v42[3] = v1;
  v42[4] = &off_2877CAA90;
  v42[0] = v2;
  v41[3] = v3;
  v41[4] = &off_2877CD310;
  v41[0] = v4;
  v40[3] = sub_26618C500();
  v40[4] = MEMORY[0x277D61F08];
  v40[0] = v32;
  v39[3] = v5;
  v39[4] = MEMORY[0x277D5BD58];
  v39[0] = v6;
  v38[3] = &type metadata for AppLaunchFeatureFlagsImpl;
  v38[4] = &off_2877CD168;
  v37[3] = v7;
  v37[4] = &off_2877CC3A8;
  v37[0] = v8;
  type metadata accessor for LaunchAppHandleIntentStrategy();
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v42, v1);
  OUTLINED_FUNCTION_3_5();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = (v12 - v11);
  (*(v14 + 16))(v12 - v11);
  __swift_mutable_project_boxed_opaque_existential_1(v41, v3);
  OUTLINED_FUNCTION_3_5();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  v18 = (v17 - v16);
  (*(v19 + 16))(v17 - v16);
  __swift_mutable_project_boxed_opaque_existential_1(v38, &type metadata for AppLaunchFeatureFlagsImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v37, v7);
  OUTLINED_FUNCTION_3_5();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_4();
  v23 = (v22 - v21);
  (*(v24 + 16))(v22 - v21);
  v25 = *v13;
  v26 = *v18;
  v27 = *v23;
  v36[3] = v1;
  v36[4] = &off_2877CAA90;
  v36[0] = v25;
  v35[3] = v3;
  v35[4] = &off_2877CD310;
  v35[0] = v26;
  *(v9 + 456) = &type metadata for AppLaunchFeatureFlagsImpl;
  *(v9 + 464) = &off_2877CD168;
  *(v9 + 504) = v7;
  *(v9 + 512) = &off_2877CC3A8;
  *(v9 + 480) = v27;
  sub_2660C5864(v46, v9 + 16);
  sub_2660C5864(v45, v9 + 56);
  *(v9 + 520) = a1;
  sub_2660C5864(v36, v9 + 96);
  sub_2660C5864(v35, v9 + 136);
  sub_2660C5864(v44, v9 + 176);
  sub_2660C5864(v40, v9 + 216);
  sub_2660C5864(v39, v9 + 256);
  sub_2660C5864(v9 + 56, v9 + 296);
  sub_2660C5864(v9 + 256, v9 + 336);

  v28 = sub_26618C8A0();
  LODWORD(v5) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v36);
  *(v9 + 384) = v5 == 1;
  sub_2660C5864(v9 + 296, v34);
  type metadata accessor for LocUtil();
  v29 = swift_allocObject();
  sub_2660B9EB8(v34, v29 + 16);
  *(v9 + 376) = v29;
  sub_2660B9EB8(&v43, v9 + 392);
  sub_2660C5864(v9 + 56, v34);
  v30 = swift_allocObject();
  sub_2660B9EB8(v34, v30 + 16);
  *(v9 + 472) = v30;
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v9;
}

uint64_t sub_26611D4DC()
{
  OUTLINED_FUNCTION_18();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v4);
  v1[20] = OUTLINED_FUNCTION_8_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4D0, &qword_266191AA8);
  OUTLINED_FUNCTION_3_0(v5);
  v1[21] = OUTLINED_FUNCTION_8_2();
  v6 = type metadata accessor for AppLaunchDataModels.AppOffloadedModel(0);
  OUTLINED_FUNCTION_3_0(v6);
  v1[22] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v7);
  v1[23] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618B6A0();
  v1[24] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v1[25] = v9;
  v1[26] = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618C6B0();
  v1[27] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v1[28] = v11;
  v1[29] = OUTLINED_FUNCTION_25_0();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26611D6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_60_1();
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v17 = v16[35];
  v18 = v16[27];
  v19 = v16[28];
  v20 = __swift_project_value_buffer(v18, qword_2814B4A98);
  v16[36] = v20;
  v21 = *(v19 + 16);
  v16[37] = v21;
  v16[38] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v17, v20, v18);
  v22 = sub_26618C690();
  v23 = sub_26618CAA0();
  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_24_0();
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2660B7000, v22, v23, "LaunchApp.HandleIntentFlowStrategy.makeIntentHandledResponse() called", v24, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v25 = v16[35];
  v26 = v16[27];
  v27 = v16[28];

  v28 = *(v27 + 8);
  v16[39] = v28;
  v28(v25, v26);
  v16[40] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4C8, &unk_266191AB0);
  v29 = sub_26618B5F0();
  v30 = [v29 application];
  v16[41] = v30;

  if (v30)
  {
    v31 = sub_2660C9D24(v30);
    v16[42] = v31;
    v16[43] = v32;
    if (v32)
    {
      v33 = v31;
      v16[44] = sub_2660C9D30(v30);
      v16[45] = v34;
      if (v34)
      {
        v102 = v33;
        v35 = sub_26618B5E0();
        v36 = sub_266124938(v35);
        if (v37)
        {
          v38 = v37;
          v104 = v16[19];
          v39 = v36;
          v40 = [objc_allocWithZone(MEMORY[0x277D47190]) init];
          v16[46] = v40;
          v107 = v40;
          sub_2661249A8(v39, v38, v40);

          v41 = *(v104 + 520);
          v16[47] = v41;
          if (v41)
          {
            v42 = v16[34];
            v43 = v16[27];
            v105 = v41;

            v21(v42, v20, v43);
            v44 = sub_26618C690();
            v45 = sub_26618CAA0();
            v46 = OUTLINED_FUNCTION_21_6();
            if (os_log_type_enabled(v46, v47))
            {
              OUTLINED_FUNCTION_24_0();
              v48 = swift_slowAlloc();
              *v48 = 0;
              _os_log_impl(&dword_2660B7000, v44, v45, "LaunchApp.HandleIntentFlowStrategy.makeIntentHandledResponse submiting the appPunchout command to the remote device", v48, 2u);
              OUTLINED_FUNCTION_10_2();
              MEMORY[0x26677CC30]();
            }

            v49 = v16[19];

            v50 = OUTLINED_FUNCTION_11_2();
            (v28)(v50);
            __swift_project_boxed_opaque_existential_1((v49 + 16), *(v49 + 40));
            sub_26618C4A0();
            v16[48] = v51;
            v52 = swift_task_alloc();
            v16[49] = v52;
            sub_2660DF8A0();
            *v52 = v16;
            v52[1] = sub_26611DD44;
            OUTLINED_FUNCTION_36();

            return MEMORY[0x2821BB680](v53, v54, v55, v56, v57, v58, v59, v60, a9, v102, v105, v107, a13, a14, a15, a16);
          }

          else
          {
            __swift_project_boxed_opaque_existential_1((v16[19] + 56), *(v16[19] + 80));
            if (sub_26618B190())
            {
              v87 = sub_26618C8B0();
              sub_266124AC0(v87, v88, v107, &selRef_setExecutionEnvironment_);
            }

            v89 = sub_26618B5E0();
            v90 = OBJC_IVAR___LaunchAppIntentResponse_code;
            swift_beginAccess();
            v91 = *&v89[v90];

            v92 = v16[19];
            if (v91 == 101)
            {

              v93 = swift_task_alloc();
              v16[55] = v93;
              *v93 = v16;
              v93[1] = sub_26611E270;
              OUTLINED_FUNCTION_36();

              return sub_2660C2F20();
            }

            else
            {

              __swift_project_boxed_opaque_existential_1((v92 + 16), *(v92 + 40));
              v95 = swift_task_alloc();
              v16[60] = v95;
              sub_2660DF8A0();
              *v95 = v16;
              v95[1] = sub_26611E918;
              OUTLINED_FUNCTION_36();

              return MEMORY[0x2821BB6A0](v96, v97, v98, v99);
            }
          }
        }
      }
    }
  }

  v61 = OUTLINED_FUNCTION_42_3();
  (v21)(v61, v20);
  v62 = sub_26618C690();
  sub_26618CAA0();
  v63 = OUTLINED_FUNCTION_21_6();
  if (os_log_type_enabled(v63, v64))
  {
    OUTLINED_FUNCTION_24_0();
    v65 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_0(v65);
    OUTLINED_FUNCTION_27_1();
    _os_log_impl(v66, v67, v68, v69, v70, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v71 = OUTLINED_FUNCTION_12_1();
  (v28)(v71);
  sub_2660D3004();
  OUTLINED_FUNCTION_18_1();
  v108 = swift_allocError();
  OUTLINED_FUNCTION_57_1(v108, v72, v73, v74, v75, v76, v77, v78);
  OUTLINED_FUNCTION_12_8();
  v103 = v16[21];
  v106 = v16[20];

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_36();

  return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, v103, v106, v108, a13, a14, a15, a16);
}

uint64_t sub_26611DD44()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 400) = v5;
  *(v3 + 408) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26611DE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_47_3();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_60_1();
  a22 = v24;
  v27 = v24[50];
  OUTLINED_FUNCTION_51_0();
  v28 = OUTLINED_FUNCTION_42_3();
  v29(v28);
  v30 = v27;
  v31 = sub_26618C690();
  v32 = sub_26618CAA0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = v24[50];
    v55 = v24[33];
    v56 = v24[39];
    v54 = v24[27];
    v34 = swift_slowAlloc();
    v35 = OUTLINED_FUNCTION_45_1();
    a13 = v35;
    *v34 = 136315138;
    v36 = v33;
    v37 = [v36 description];
    v38 = sub_26618C8B0();
    v40 = v39;

    v41 = sub_266103A98(v38, v40, &a13);

    *(v34 + 4) = v41;
    OUTLINED_FUNCTION_14_11();
    _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    v47 = OUTLINED_FUNCTION_15_8();
    MEMORY[0x26677CC30](v47);

    v56(v55, v54);
  }

  else
  {
    v48 = v24[39];

    v49 = OUTLINED_FUNCTION_12_1();
    v48(v49);
  }

  __swift_project_boxed_opaque_existential_1((v24[19] + 136), *(v24[19] + 160));
  sub_266178F28(1);
  v24[52] = sub_26618B5F0();
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v24[53] = v50;
  *v50 = v51;
  v50[1] = sub_26611E074;
  OUTLINED_FUNCTION_36();

  return sub_2661210E4();
}

uint64_t sub_26611E074()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 432) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26611E198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  v15 = *(v14 + 368);
  v16 = *(v14 + 376);
  v17 = *(v14 + 328);

  OUTLINED_FUNCTION_2_14();
  v29 = v19;
  v30 = v18;

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_22_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, v30, a12, a13, a14);
}

uint64_t sub_26611E270()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 448) = v5;
  *(v3 + 456) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26611E378(uint64_t a1)
{
  v3 = v1[44];
  v2 = v1[45];
  v4 = v1[42];
  v36 = v1[43];
  v37 = v1[57];
  v5 = v1[41];
  v6 = v1[21];
  sub_26618B1B0();
  *(swift_task_alloc() + 16) = v5;
  sub_26618B620();

  MEMORY[0x26677BCF0](v3, v2);
  MEMORY[0x26677BCF0](47, 0xE100000000000000);

  v7 = sub_2660C9D48(v5, &selRef_adamId);
  v9 = v8;
  v10 = sub_26618AB50();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
  v11 = v37;
  sub_26616694C(v4, v36, v3, v2, v7, v9, 0xD000000000000024, 0x8000000266199480, v6, v35, v36, v37, 0xD000000000000024, 0x8000000266199480, 47, 0xE100000000000000, v38, v39, v40, v41, v42);
  if (v11)
  {
    v12 = v1[56];
    v13 = v1[46];
    v14 = v1[41];
    (*(v1[25] + 8))(v1[26], v1[24]);

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_20_2();

    __asm { BRAA            X1, X16 }
  }

  v17 = v1[56];
  v18 = v1[22];
  __swift_project_boxed_opaque_existential_1((v1[19] + 256), *(v1[19] + 280));
  v1[10] = type metadata accessor for AppLaunchDataModels(0);
  OUTLINED_FUNCTION_7_12();
  v1[11] = sub_266124B2C(v19, 255, v20, &protocol conformance descriptor for AppLaunchDataModels);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 7);
  sub_266124A08(v18, boxed_opaque_existential_0, type metadata accessor for AppLaunchDataModels.AppOffloadedModel);
  swift_storeEnumTagMultiPayload();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v23 = OUTLINED_FUNCTION_35_3(v22);
  v1[58] = v23;
  *(v23 + 16) = xmmword_26618F7E0;
  *(v23 + 32) = v17;
  v24 = v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v1[59] = v25;
  *v25 = v26;
  v25[1] = sub_26611E708;
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_20_2();

  return MEMORY[0x2821BB468](v27, v28, v29, v30, v31, v32);
}

uint64_t sub_26611E708()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26611E808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  v15 = *(v14 + 448);
  v16 = *(v14 + 328);
  v17 = *(v14 + 176);

  sub_266124A68(v17, type metadata accessor for AppLaunchDataModels.AppOffloadedModel);
  v18 = OUTLINED_FUNCTION_11_0();
  v19(v18);
  OUTLINED_FUNCTION_2_14();
  v31 = v21;
  v32 = v20;

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_22_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, a12, a13, a14);
}

uint64_t sub_26611E918()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 488) = v4;
  *(v2 + 496) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_26611EA1C(uint64_t a1)
{
  v2 = v1[61];
  OUTLINED_FUNCTION_51_0();
  v3 = OUTLINED_FUNCTION_42_3();
  v4(v3);
  v5 = v2;
  v6 = sub_26618C690();
  LOBYTE(v2) = sub_26618CAA0();

  if (os_log_type_enabled(v6, v2))
  {
    v7 = v1[61];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    OUTLINED_FUNCTION_27_1();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_2660BF79C(v9, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v30 = v1[61];
  v31 = v1[46];
  v29 = v1[41];
  v16 = v1[39];
  v17 = v1[32];
  v18 = v1[27];
  v20 = v1[19];
  v19 = v1[20];
  v21 = v1[17];

  v16(v17, v18);
  __swift_project_boxed_opaque_existential_1((v20 + 392), *(v20 + 416));
  sub_26618B0D0();
  sub_26618B0C0();
  sub_26618B050();

  __swift_project_boxed_opaque_existential_1((v20 + 392), *(v20 + 416));
  sub_26618B0B0();
  sub_26618B050();

  sub_26618B430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618F7E0;
  *(inited + 32) = v29;
  v23 = v29;
  sub_26614AC6C();
  swift_setDeallocating();
  sub_2661242E4();
  sub_26618B390();
  v24 = sub_26618B440();
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v24);
  v25 = sub_26618B870();
  v26 = MEMORY[0x277D5C1D8];
  v21[3] = v25;
  v21[4] = v26;
  __swift_allocate_boxed_opaque_existential_0(v21);
  sub_26618B850();

  OUTLINED_FUNCTION_2_14();

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_20_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_26611ED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, void *), uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_47_3();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_60_1();
  a22 = v25;

  v29 = v25[51];
  OUTLINED_FUNCTION_51_0();
  v30 = OUTLINED_FUNCTION_42_3();
  v31(v30);
  v32 = v29;
  v33 = sub_26618C690();
  v34 = sub_26618CAA0();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_46_2();
    v36 = OUTLINED_FUNCTION_45_1();
    a12 = v36;
    OUTLINED_FUNCTION_65_1(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v37 = sub_26618C8D0();
    v39 = v29;
    v40 = sub_266103A98(v37, v38, &a12);

    *(v35 + 4) = v40;
    v29 = v39;
    OUTLINED_FUNCTION_64_0(&dword_2660B7000, v41, v42, "LaunchApp.HandleIntentFlowStrategy.makeIntentHandledResponse submitToRemote failed with error: %s");
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();

    a10(a9, v26);
  }

  else
  {
    v24 = v25[39];
    v26 = v25[27];
    v34 = v25[28];

    v43 = OUTLINED_FUNCTION_11_2();
    v24(v43);
  }

  OUTLINED_FUNCTION_50_1();
  v44 = v29;
  sub_266120A04(0);

  swift_willThrow();
  OUTLINED_FUNCTION_12_8();
  v54 = v25[21];
  v55 = v25[20];

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_36();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, v54, v55, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_26611EFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, void *), uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_47_3();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_60_1();
  a22 = v25;

  v29 = *(v25 + 432);
  OUTLINED_FUNCTION_51_0();
  v30 = OUTLINED_FUNCTION_42_3();
  v31(v30);
  v32 = v29;
  v33 = sub_26618C690();
  v34 = sub_26618CAA0();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_46_2();
    v36 = OUTLINED_FUNCTION_45_1();
    a12 = v36;
    OUTLINED_FUNCTION_65_1(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v37 = sub_26618C8D0();
    v39 = v29;
    v40 = sub_266103A98(v37, v38, &a12);

    *(v35 + 4) = v40;
    v29 = v39;
    OUTLINED_FUNCTION_64_0(&dword_2660B7000, v41, v42, "LaunchApp.HandleIntentFlowStrategy.makeIntentHandledResponse submitToRemote failed with error: %s");
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();

    a10(a9, v26);
  }

  else
  {
    v24 = *(v25 + 312);
    v26 = *(v25 + 216);
    v34 = *(v25 + 224);

    v43 = OUTLINED_FUNCTION_11_2();
    v24(v43);
  }

  OUTLINED_FUNCTION_50_1();
  v44 = v29;
  sub_266120A04(0);

  swift_willThrow();
  OUTLINED_FUNCTION_12_8();
  v54 = *(v25 + 168);
  v55 = *(v25 + 160);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_36();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, v54, v55, a11, a12, a13, a14, a15, a16);
}