void sub_267669420()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v0;
  v42 = v3;
  v4 = sub_2676CB48C();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v43 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD210, &qword_2676D1D88);
  OUTLINED_FUNCTION_4_1(v8);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  v44 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD218, &unk_2676D1D90);
  OUTLINED_FUNCTION_3();
  v40 = v12;
  v41 = v11;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_50_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v14);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_1();
  v45 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3();
  v19 = v18;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - v21;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v23 = sub_2676CBE4C();
  __swift_project_value_buffer(v23, qword_2801CDC90);
  v24 = sub_2676CBE2C();
  v25 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v25))
  {
    v26 = OUTLINED_FUNCTION_17_3();
    *v26 = 0;
    _os_log_impl(&dword_2675D4000, v24, v25, "#ReplyMailSceneHostPlan making ConfirmationPrompt", v26, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  swift_getKeyPath();
  sub_2676632EC();
  OUTLINED_FUNCTION_0_21();
  sub_26766B3A8(v27, v28, MEMORY[0x277D5C810]);
  OUTLINED_FUNCTION_1_23();
  sub_26766B3A8(v29, v30, MEMORY[0x277D5C780]);
  sub_2676CA3EC();

  (*(v19 + 8))(v22, v17);
  sub_2676CBA6C();
  sub_2676C98BC();
  swift_getKeyPath();
  v31 = v41;
  sub_2676C988C();

  (*(v40 + 8))(v1, v31);
  v32 = *(v2 + OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan_confirmIntentOptions);
  v33 = type metadata accessor for ConfirmSendSceneHostProducer(0);
  v49[3] = v33;
  v49[4] = sub_26766B3A8(&qword_2801CD2D0, type metadata accessor for ConfirmSendSceneHostProducer, &unk_2676CD978);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  v35 = *(v33 + 24);
  sub_2676CB18C();
  OUTLINED_FUNCTION_2_6();
  (*(v36 + 16))(boxed_opaque_existential_1 + v35, v42);
  LOBYTE(v31) = sub_2676698D4();
  type metadata accessor for SendMailCATsSimple(0);
  sub_2676CB47C();
  v37 = sub_2676CB42C();
  boxed_opaque_existential_1[1] = v32;
  *(boxed_opaque_existential_1 + *(v33 + 28)) = v31 & 1;
  *boxed_opaque_existential_1 = v37;
  v38 = sub_2676C9B9C();
  swift_allocObject();
  v39 = sub_2676C9B8C();
  v47 = v38;
  v48 = MEMORY[0x277D5BD58];
  v46 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD228, &unk_2676D1DA0);
  swift_allocObject();
  sub_2676C9BEC();
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676698D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_54_5();
  sub_26761F970();
  sub_2676C97FC();
  v1 = OUTLINED_FUNCTION_58_1();
  v2(v1);
  return v4 & 1;
}

uint64_t sub_26766999C()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan__replyMessageTask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  OUTLINED_FUNCTION_8_2();
  (*(v2 + 8))(v0 + v1);
  return sub_267662EC4(v0 + OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan_inReplyTo, &qword_2801CC3D0, &qword_2676D1D80);
}

uint64_t sub_267669A18()
{
  v0 = MailSendingSceneHostPlan.deinit();
  v1 = OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan__replyMessageTask;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  OUTLINED_FUNCTION_8_2();
  (*(v2 + 8))(v0 + v1);
  sub_267662EC4(v0 + OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan_inReplyTo, &qword_2801CC3D0, &qword_2676D1D80);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for ReplyMailSceneHostPlan(uint64_t a1)
{
  result = qword_2801CD2A8;
  if (!qword_2801CD2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267669B3C(uint64_t a1)
{
  sub_267661A74(319);
  if (v1 <= 0x3F)
  {
    sub_267661AD8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_267669D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ReplyMailSceneHostPlan(0);

  return sub_2676C950C();
}

uint64_t sub_267669DCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821BA568](a1, WitnessTable);
}

void sub_267669E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  v168 = v22;
  v23 = type metadata accessor for MailSceneHostStateChangeEventHandler(0);
  v24 = *(v23 - 8);
  v162 = (v23 - 8);
  v167 = v24;
  v166 = *(v24 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  OUTLINED_FUNCTION_11_5(v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_74_1(v28);
  OUTLINED_FUNCTION_3();
  v163 = v29;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v31);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD200, &unk_2676D2120);
  OUTLINED_FUNCTION_3();
  v155 = v32;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v34);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3();
  v159 = v35;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v37);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_3();
  v157 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4();
  v171 = v40;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_24_1();
  v182 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
  OUTLINED_FUNCTION_3();
  v175 = v44;
  v176 = v43;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4();
  v169 = v45;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_24_1();
  v181 = v47;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3();
  v174 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_4();
  v187 = v50;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_10_4();
  v186 = v52;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_10_4();
  v180 = v54;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_24_1();
  v179 = v56;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_3();
  v173 = v57;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_4();
  v185 = v59;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_10_4();
  v184 = v61;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_10_4();
  v183 = v63;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_10_4();
  v178 = v65;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_10_4();
  v177 = v67;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v68);
  v153[12] = v153 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  OUTLINED_FUNCTION_3();
  v72 = v71;
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  v84 = MEMORY[0x28223BE20](v83);
  v86 = v153 - v85;
  v87 = MEMORY[0x28223BE20](v84);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_80_1();
  MEMORY[0x28223BE20](v88);
  v90 = v153 - v89;
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v91 = *(v72 + 8);
  v91(v90, v70);
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v91(v21, v70);
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v92 = OUTLINED_FUNCTION_53_0();
  (v91)(v92);
  sub_26761F9A8();
  KeyPath = swift_getKeyPath();
  sub_2676C97EC();

  v91(v86, v70);
  OUTLINED_FUNCTION_34_7();
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v91(KeyPath, v70);
  OUTLINED_FUNCTION_34_7();
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v91(KeyPath, v70);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  v94 = swift_getKeyPath();
  OUTLINED_FUNCTION_58_2(v94);

  v95 = OUTLINED_FUNCTION_85_0();
  (v91)(v95);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  v96 = swift_getKeyPath();
  OUTLINED_FUNCTION_58_2(v96);

  v97 = OUTLINED_FUNCTION_85_0();
  (v91)(v97);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  v98 = swift_getKeyPath();
  OUTLINED_FUNCTION_58_2(v98);

  v99 = OUTLINED_FUNCTION_85_0();
  (v91)(v99);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  v100 = swift_getKeyPath();
  OUTLINED_FUNCTION_58_2(v100);

  v101 = OUTLINED_FUNCTION_85_0();
  (v91)(v101);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  v102 = swift_getKeyPath();
  OUTLINED_FUNCTION_58_2(v102);

  v103 = OUTLINED_FUNCTION_85_0();
  (v91)(v103);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  v104 = swift_getKeyPath();
  OUTLINED_FUNCTION_58_2(v104);

  v105 = OUTLINED_FUNCTION_85_0();
  (v91)(v105);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  v106 = swift_getKeyPath();
  v107 = v169;
  OUTLINED_FUNCTION_58_2(v106);

  v108 = OUTLINED_FUNCTION_85_0();
  (v91)(v108);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  v109 = swift_getKeyPath();
  v110 = v171;
  OUTLINED_FUNCTION_58_2(v109);

  v111 = OUTLINED_FUNCTION_85_0();
  (v91)(v111);
  OUTLINED_FUNCTION_43_3();
  sub_26761F970();
  OUTLINED_FUNCTION_23_8();
  sub_2676633FC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_21();
  sub_26766B3A8(v112, v113, MEMORY[0x277D5C810]);
  OUTLINED_FUNCTION_1_23();
  sub_26766B3A8(v114, v115, MEMORY[0x277D5C780]);
  v116 = v156;
  v117 = v154;
  sub_2676C9A2C();

  OUTLINED_FUNCTION_27_5();
  v118(v20, v117);
  v119 = *(v173 + 16);
  v120 = v160;
  v121 = v170;
  v119(v160, v183, v170);
  v122 = v162;
  v119(v120 + v162[7], v184, v121);
  v119(v120 + v122[8], v185, v121);
  v123 = *(v174 + 16);
  v124 = v172;
  v123(v120 + v122[9], v186, v172);
  v123(v120 + v122[10], v187, v124);
  v125 = OUTLINED_FUNCTION_73_1(v122[11]);
  v126(v125, v107);
  v127 = v157;
  v128 = OUTLINED_FUNCTION_73_1(v122[12]);
  v129 = v158;
  v130(v128, v110, v158);
  v131 = v122[13];
  v132 = v122;
  v133 = v163;
  v134 = OUTLINED_FUNCTION_73_1(v131);
  v135 = v164;
  v136(v134, v116, v164);
  v137 = v159;
  v138 = OUTLINED_FUNCTION_73_1(v132[14]);
  v139 = v161;
  v140(v138, v91, v161);
  type metadata accessor for MetricsSnippetEventHandler(0);
  v141 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_2676C958C();
  (*(v133 + 8))(v116, v135);
  (*(v137 + 8))(v91, v139);
  (*(v127 + 8))(v171, v129);
  (*(v175 + 8))(v169, v176);
  v142 = *(v174 + 8);
  v143 = v172;
  v142(v187, v172);
  v142(v186, v143);
  v144 = *(v173 + 8);
  v145 = v170;
  v144(v185, v170);
  v144(v184, v145);
  v144(v183, v145);
  v146 = v165;
  sub_26766B0E4(v120, v165);
  v147 = (*(v167 + 80) + 16) & ~*(v167 + 80);
  v148 = (v166 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
  v149 = swift_allocObject();
  sub_26766B0E4(v146, v149 + v147);
  *(v149 + v148) = v141;
  v187 = sub_2676C916C();
  sub_2676CAFDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9A0, &unk_2676D22B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9C0, &unk_2676D22C0);
  sub_2676CB0DC();
  sub_2676CB18C();
  sub_26766B3A8(&qword_2801CD1E0, MEMORY[0x277D5C900], MEMORY[0x277D5C8F0]);
  v150 = MEMORY[0x277D5C970];
  sub_26766B3A8(&qword_2801CD1E8, MEMORY[0x277D5C970], MEMORY[0x277D5C980]);
  sub_26766B3A8(&qword_2801CD1F0, v150, MEMORY[0x277D5C978]);
  OUTLINED_FUNCTION_9_20();
  sub_26766B3A8(v151, v152, MEMORY[0x277D5CA90]);
  sub_2676C9BBC();
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_26766AE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_2676CB05C() + 16);

  if (v4 || (v5 = *(sub_2676CB02C() + 16), , v5) || (v6 = *(sub_2676CB07C() + 16), , v6) || (v7 = sub_2676CB16C(), v9 = sub_2676632C4(v7, v8), , !v9) || (v10 = sub_2676CB09C(), v12 = sub_2676632C4(v10, v11), , !v12))
  {
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v16 = sub_2676CBE4C();
    __swift_project_value_buffer(v16, qword_2801CDC90);
    v17 = sub_2676CBE2C();
    v18 = sub_2676CC23C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2675D4000, v17, v18, "#modelTransformer returning MailPluginModel", v19, 2u);
      MEMORY[0x26D5FEA80](v19, -1, -1);
    }

    v20 = sub_2676CB18C();
    (*(*(v20 - 8) + 16))(a2, a1, v20);
    v21 = sub_2676C916C();
    swift_storeEnumTagMultiPayload();
    v14 = a2;
    v15 = 0;
    v13 = v21;
  }

  else
  {
    v13 = sub_2676C916C();
    v14 = a2;
    v15 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
}

uint64_t sub_26766B0E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailSceneHostStateChangeEventHandler(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26766B148(uint64_t a1)
{
  v3 = *(type metadata accessor for MailSceneHostStateChangeEventHandler(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2676B2964(a1, v1 + v4, v5);
}

uint64_t sub_26766B21C(uint64_t a1)
{
  v2 = type metadata accessor for ResolveSiriMailMessageIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26766B278()
{
  OUTLINED_FUNCTION_12_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_63_4(v1);

  return sub_2676655C0(v3, v4, v5);
}

uint64_t sub_26766B314()
{
  OUTLINED_FUNCTION_12_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_63_4(v1);

  return sub_267665E68(v3, v4, v5);
}

uint64_t sub_26766B3A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_41_4(uint64_t a1)
{

  return sub_2676C97EC();
}

uint64_t OUTLINED_FUNCTION_44_4(uint64_t a1)
{

  return sub_2676C97EC();
}

uint64_t OUTLINED_FUNCTION_58_2(uint64_t a1)
{

  return sub_2676C97EC();
}

uint64_t OUTLINED_FUNCTION_65_4(uint64_t a1)
{

  return sub_2676C9E5C();
}

uint64_t OUTLINED_FUNCTION_66_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_67_2()
{
}

void OUTLINED_FUNCTION_69_2()
{

  sub_267667B18();
}

uint64_t sub_26766B674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  MEMORY[0x28223BE20](v2 - 8);
  sub_267671E30(a1, &v5 - v3, &qword_2801CC3D0, &qword_2676D1D80);
  return sub_2676C8D7C();
}

void sub_26766B75C()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v2 = sub_2676C9E6C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v8 = v7 - v6;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v9 = sub_2676CBE4C();
  __swift_project_value_buffer(v9, qword_2801CDC90);
  (*(v4 + 16))(v8, v1, v2);
  v10 = sub_2676CBE2C();
  v11 = sub_2676CC23C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = sub_2676C9E4C();
    v16 = v15;
    v17 = OUTLINED_FUNCTION_65_0();
    v18(v17);
    v19 = sub_2676B0B84(v14, v16, &v22);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_2675D4000, v10, v11, "#ReplyMessageFlow accept(input: Input) returning .yes() for input %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v20 = OUTLINED_FUNCTION_65_0();
    v21(v20);
  }

  sub_2676C974C();
  OUTLINED_FUNCTION_20_1();
}

void sub_26766B950()
{
  OUTLINED_FUNCTION_21_1();
  v303 = v0;
  v302 = v1;
  v294 = sub_2676C9E3C();
  OUTLINED_FUNCTION_3();
  v293 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v4);
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC660, &qword_2676CF578);
  OUTLINED_FUNCTION_3();
  v285 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v8);
  v292[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD378, &qword_2676D26D0);
  OUTLINED_FUNCTION_3();
  v291[2] = v9;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  v13 = OUTLINED_FUNCTION_4_1(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  OUTLINED_FUNCTION_4_1(v16);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v18);
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD380, &qword_2676D26D8);
  OUTLINED_FUNCTION_3();
  v289 = v19;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v21);
  v297 = sub_2676C8BFC();
  OUTLINED_FUNCTION_3();
  v296 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  OUTLINED_FUNCTION_4_1(v26);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v29);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCED8, &unk_2676D1390);
  OUTLINED_FUNCTION_4_1(v32);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v36 = OUTLINED_FUNCTION_4_1(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v38);
  v272 = sub_2676C9BFC();
  OUTLINED_FUNCTION_3();
  v271 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v41);
  Mail = type metadata accessor for GetMail(0);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v43);
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEE0, &qword_2676D13A0);
  OUTLINED_FUNCTION_3();
  v277 = v44;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v46);
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEE8, &qword_2676D13A8);
  OUTLINED_FUNCTION_3();
  v279 = v47;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF08, &unk_2676D26E0);
  OUTLINED_FUNCTION_3();
  v298 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v53);
  v55 = &v258 - v54;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF10, &unk_2676D13D0);
  OUTLINED_FUNCTION_3();
  v57 = v56;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v60);
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF18, &unk_2676D26F0);
  OUTLINED_FUNCTION_3();
  v269 = v61;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v63);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF20, &unk_2676D13E0);
  OUTLINED_FUNCTION_3();
  v264 = v64;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF28, &unk_2676D2700);
  OUTLINED_FUNCTION_3();
  v261 = v68;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v69);
  v71 = &v258 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF30, &unk_2676D13F0);
  OUTLINED_FUNCTION_3();
  v262 = v73;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v74);
  v76 = &v258 - v75;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF38, &unk_2676D2710);
  OUTLINED_FUNCTION_3();
  v267 = v77;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v79);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v80 = sub_2676CBE4C();
  __swift_project_value_buffer(v80, qword_2801CDC90);
  v81 = sub_2676CBE2C();
  v82 = sub_2676CC23C();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_2675D4000, v81, v82, "#ReplyMessageFlow executing action", v83, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  v84 = v303;
  OUTLINED_FUNCTION_17_13();
  swift_beginAccess();
  v85 = *(v84 + 16);
  switch(v85 >> 62)
  {
    case 1uLL:
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD370, &unk_2676D26C0);
      v115 = swift_projectBox();
      v116 = (v115 + *(v114 + 48));
      v117 = *v116;
      v118 = v116[1];
      v119 = v296;
      v120 = (v296 + 16);
      v121 = *(v296 + 16);
      v122 = v297;
      v121(v301, v115, v297);
      v123 = *(v84 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_replyOption);
      v294 = v85;
      sub_26766FF60(v85);

      v124 = v300;
      sub_267697B4C(v123, v300);
      sub_2676C919C();
      if (sub_2676C918C())
      {
        sub_2676149CC(v84 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_linkServicesProvider, &v312);
        v125 = v295;
        v121(v295, v124, v122);
        OUTLINED_FUNCTION_17_2();
        __swift_storeEnumTagSinglePayload(v126, v127, v128, v122);
        v129 = OUTLINED_FUNCTION_53_5();
        v306 = 0u;
        v307 = 0u;
        v308 = 0;
        v130 = OUTLINED_FUNCTION_7_13(v129);
        v131 = v120;
        sub_2676C9B8C();
        v132 = OUTLINED_FUNCTION_92_0();
        v133 = type metadata accessor for ReplyMailSceneHostPlan(v132);
        v134 = OUTLINED_FUNCTION_7_13(v133);
        sub_26766FFC0(&v312, v125, v117, v118, v131, &v309, v130, &v306, v134, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268);
        *&v312 = v135;
        v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCF60, &qword_2676D1410);
        OUTLINED_FUNCTION_7_13(v136);
        OUTLINED_FUNCTION_51_6();
        *&v312 = sub_2676C94CC();
        OUTLINED_FUNCTION_31_4();
        v139 = sub_2676148C4(v137, &qword_2801CCF60, &qword_2676D1410, v138);

        OUTLINED_FUNCTION_34_8();
        OUTLINED_FUNCTION_23_8();
        sub_2676C938C();

        v140 = v290;
        *(&v310 + 1) = v290;
        *&v312 = v136;
        *(&v312 + 1) = v139;
        OUTLINED_FUNCTION_1_20();
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        __swift_allocate_boxed_opaque_existential_1(&v309);
        OUTLINED_FUNCTION_9_21();
        v141();
        sub_2676C960C();
        __swift_destroy_boxed_opaque_existential_1(&v309);
        OUTLINED_FUNCTION_24_8();
        sub_2676C961C();
        __swift_destroy_boxed_opaque_existential_1(&v312);
        (*(v136 + 8))(&qword_2676D1410, v140);
      }

      else
      {
        if (v118)
        {
          v142 = v291[0];
          sub_2676C8EAC();
          v143 = 0;
        }

        else
        {
          v143 = 1;
          v142 = v291[0];
        }

        v144 = sub_2676C8EBC();
        __swift_storeEnumTagSinglePayload(v142, v143, 1, v144);
        sub_2676149CC(v84 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_linkServicesProvider, &v312);
        v121(v295, v124, v122);
        OUTLINED_FUNCTION_17_2();
        __swift_storeEnumTagSinglePayload(v145, v146, v147, v122);
        sub_267671E30(v142, v288, &qword_2801CBFE0, &qword_2676D1070);
        v148 = OUTLINED_FUNCTION_53_5();
        v306 = 0u;
        v307 = 0u;
        v308 = 0;
        OUTLINED_FUNCTION_7_13(v148);
        v149 = v120;
        sub_2676C9B8C();
        v150 = OUTLINED_FUNCTION_92_0();
        v151 = type metadata accessor for ReplyMailPlan(v150);
        OUTLINED_FUNCTION_7_13(v151);
        sub_267670F48();
        *&v312 = v152;
        v153 = OUTLINED_FUNCTION_8_10();
        v155 = __swift_instantiateConcreteTypeFromMangledNameV2(v153, v154);
        OUTLINED_FUNCTION_7_13(v155);
        OUTLINED_FUNCTION_51_6();
        *&v312 = sub_2676C94CC();
        OUTLINED_FUNCTION_31_4();
        v124 = v300;
        v158 = sub_2676148C4(v156, &qword_2801CCF50, &qword_2676D1408, v157);

        OUTLINED_FUNCTION_34_8();
        OUTLINED_FUNCTION_40_2();
        sub_2676C938C();

        *(&v310 + 1) = v292[0];
        *&v312 = v155;
        *(&v312 + 1) = v158;
        OUTLINED_FUNCTION_1_20();
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        __swift_allocate_boxed_opaque_existential_1(&v309);
        OUTLINED_FUNCTION_23_8();
        (*(v159 + 16))();
        sub_2676C960C();
        __swift_destroy_boxed_opaque_existential_1(&v309);
        OUTLINED_FUNCTION_24_8();
        sub_2676C961C();
        __swift_destroy_boxed_opaque_existential_1(&v312);
        v160 = OUTLINED_FUNCTION_28_3();
        v161(v160);
        sub_2675EB7EC(v142, &qword_2801CBFE0, &qword_2676D1070);
      }

      sub_2676C961C();
      sub_2676C961C();
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(v305);
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(&v312);
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(v305);
      OUTLINED_FUNCTION_36_9();
      v162 = *(v119 + 8);
      v162(v124, v122);
      v162(v301, v122);
      goto LABEL_17;
    case 2uLL:
      sub_26766FF60(*(v84 + 16));

      v98 = v292[2];
      OUTLINED_FUNCTION_28_3();
      sub_2676C9E2C();
      v99 = v294;
      *(&v313 + 1) = v294;
      v314 = MEMORY[0x277D5C0F0];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v312);
      v101 = v293;
      (*(v293 + 16))(boxed_opaque_existential_1, v98, v99);
      OUTLINED_FUNCTION_24_8();
      sub_2676C961C();
      OUTLINED_FUNCTION_7_20();
      sub_2676C961C();
      OUTLINED_FUNCTION_18_9();
      sub_2676C961C();
      OUTLINED_FUNCTION_36_9();
      (*(v101 + 8))(v98, v99);
      v102 = v85;
      goto LABEL_18;
    case 3uLL:
      switch(__ROR8__(v85 + 0x4000000000000000, 3))
      {
        case 1:
          v195 = sub_2676C9FCC();
          v196 = OUTLINED_FUNCTION_7_13(v195);

          *&v312 = sub_2676C9FDC();

          v197 = MEMORY[0x277D5C1C8];
          OUTLINED_FUNCTION_34_8();
          v198 = v263;
          sub_2676C938C();

          OUTLINED_FUNCTION_41_5(v291);
          *&v309 = v195;
          *(&v309 + 1) = v197;
          OUTLINED_FUNCTION_1_20();
          v199 = swift_getOpaqueTypeConformance2();
          OUTLINED_FUNCTION_43_4(v199);
          OUTLINED_FUNCTION_40_2();
          OUTLINED_FUNCTION_57_7();
          v200();
          OUTLINED_FUNCTION_24_8();
          sub_2676C960C();
          OUTLINED_FUNCTION_7_20();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          OUTLINED_FUNCTION_14_15();
          sub_2676C961C();
          goto LABEL_41;
        case 2:
          v168 = *(v84 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_senderInput);
          v169 = *(v84 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_globals);
          v314 = 0;
          v312 = 0u;
          v313 = 0u;
          OpaqueTypeConformance2 = 0;
          v309 = 0u;
          v310 = 0u;
          v67 = &unk_2676D27D0;
          v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD000, &unk_2676D27D0);
          v170 = OUTLINED_FUNCTION_7_13(v109);

          v171 = v169;
          v172 = v168;
          v110 = v170;
          sub_2676A2C54(v172, 0x7265646E6573, 0xE600000000000000, v171, &v312, &v309);
          *&v312 = v173;
          v174 = sub_2676148C4(&qword_2801CD008, &qword_2801CD000, &unk_2676D27D0, &unk_2676D3198);

          OUTLINED_FUNCTION_34_8();
          OUTLINED_FUNCTION_23_8();
          sub_2676C938C();

          OUTLINED_FUNCTION_41_5(&v293);
          *&v309 = v109;
          *(&v309 + 1) = v174;
          OUTLINED_FUNCTION_1_20();
          v175 = swift_getOpaqueTypeConformance2();
          OUTLINED_FUNCTION_43_4(v175);
          OUTLINED_FUNCTION_9_21();
          v176();
          OUTLINED_FUNCTION_24_8();
          sub_2676C960C();
          OUTLINED_FUNCTION_7_20();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          goto LABEL_23;
        case 3:
          v178 = *(v84 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_subjectInput);
          v177 = *(v84 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_subjectInput + 8);
          v179 = *(v84 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_isReadInput);
          v180 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_resolvedSender;
          OUTLINED_FUNCTION_17_13();
          swift_beginAccess();
          v181 = Mail;
          v182 = v273;
          sub_267671E30(v84 + v180, v273 + *(Mail + 24), &qword_2801CBFE8, &unk_2676CD9E0);
          v183 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_resolvedDateTimeRange;
          OUTLINED_FUNCTION_17_13();
          swift_beginAccess();
          sub_267671E30(v84 + v183, v182 + v181[7], &qword_2801CC380, &unk_2676CEF40);
          LOBYTE(v183) = *(v84 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_isNewInput);
          v184 = *(v84 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_isMostRecent);
          v185 = *(v84 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_shouldResolveOnscreenEntity);
          v186 = v182 + v181[11];
          *(v186 + 32) = 0;
          *v186 = 0u;
          *(v186 + 16) = 0u;
          v187 = v182 + v181[12];
          *(v187 + 24) = &type metadata for MailFeatureFlags;
          *(v187 + 32) = &off_2878ADBB0;
          sub_2676149CC(v84 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_linkServicesProvider, v182 + v181[14]);
          *v182 = v178;
          *(v182 + 8) = v177;
          *(v182 + 16) = v179;
          *(v182 + v181[8]) = v183;
          *(v182 + v181[9]) = v184;
          *(v182 + v181[10]) = v185;
          *(v182 + v181[13]) = 0;
          (*(v271 + 104))(v275, *MEMORY[0x277D5BDF0], v272);
          v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCFB0, &unk_2676D27C0);
          OUTLINED_FUNCTION_7_13(v188);
          sub_267671D9C(&qword_2801CCFB8, type metadata accessor for GetMail, &unk_2676CEBB8);

          *&v312 = sub_2676C9F5C();

          v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCFC0, &qword_2676D1500);
          v67 = sub_2676148C4(&qword_2801CCFC8, &qword_2801CCFB0, &unk_2676D27C0, MEMORY[0x277D5C1A8]);
          OUTLINED_FUNCTION_34_8();
          v189 = v276;
          sub_2676C942C();

          *&v312 = v188;
          *(&v312 + 1) = v109;
          *&v313 = v67;
          v190 = OUTLINED_FUNCTION_3_20();
          OUTLINED_FUNCTION_23_8();
          v191 = v278;
          v110 = v189;
          sub_2676C941C();

          OUTLINED_FUNCTION_27_5();
          v192(v189, v191);
          OUTLINED_FUNCTION_41_5(&v304);
          *&v309 = v191;
          *(&v309 + 1) = v109;
          *&v310 = v190;
          v193 = OUTLINED_FUNCTION_4_21();
          OUTLINED_FUNCTION_43_4(v193);
          OUTLINED_FUNCTION_9_21();
          v194();
          OUTLINED_FUNCTION_24_8();
          sub_2676C960C();
          OUTLINED_FUNCTION_7_20();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          OUTLINED_FUNCTION_14_15();
          sub_2676C961C();
          goto LABEL_25;
        case 4:
          v301 = v50;
          v163 = *(v84 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_subjectInput + 8);
          v300 = *(v84 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_subjectInput);
          v164 = *(v84 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_senderInput);
          OUTLINED_FUNCTION_40_2();
          sub_267698E74(v164);
          v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v165);
          v297 = v163;
          if (EnumTagSinglePayload == 1)
          {

            sub_2675EB7EC(v71, &qword_2801CC168, &unk_2676CF510);
            v167 = 0;
            v296 = 0;
            OUTLINED_FUNCTION_56_2();
          }

          else
          {
            swift_getKeyPath();
            OUTLINED_FUNCTION_21_9();
            sub_267671D9C(v215, v216, MEMORY[0x277D5C6A8]);

            OUTLINED_FUNCTION_57_7();
            v217 = sub_2676CA89C();
            v219 = v218;

            OUTLINED_FUNCTION_14_2();
            (*(v220 + 8))(v71, v165);
            OUTLINED_FUNCTION_56_2();
            if (v219)
            {
              *&v312 = v217;
              *(&v312 + 1) = v219;
              *&v309 = 39;
              *(&v309 + 1) = 0xE100000000000000;
              v221 = sub_2676C911C();
              v295 = v217;
              v222 = v260;
              __swift_storeEnumTagSinglePayload(v260, 1, 1, v221);
              sub_2675E69E4();
              OUTLINED_FUNCTION_17_13();
              sub_2676CC36C();
              v224 = v223;
              sub_2675EB7EC(v222, &qword_2801CCED8, &unk_2676D1390);
              if (v224)
              {
                v296 = v219;
                v167 = v295;
              }

              else
              {
                *&v312 = v295;
                *(&v312 + 1) = v219;
                v167 = sub_2676CC38C();
                v226 = v225;

                v296 = v226;
              }
            }

            else
            {
              v167 = 0;
              v296 = 0;
            }
          }

          sub_267698E74(v164);
          v227 = __swift_getEnumTagSinglePayload(v67, 1, v165);
          v259 = v57;
          if (v227 == 1)
          {
            v228 = v167;
            v229 = &qword_2801CC168;
            v230 = &unk_2676CF510;
            v231 = v67;
LABEL_38:
            sub_2675EB7EC(v231, v229, v230);
            v236 = 0;
            v237 = 0;
            goto LABEL_40;
          }

          swift_getKeyPath();
          OUTLINED_FUNCTION_21_9();
          sub_267671D9C(v232, v233, MEMORY[0x277D5C6A8]);
          sub_267671D9C(&qword_2801CC2D0, MEMORY[0x277D5C640], MEMORY[0x277D5C618]);
          OUTLINED_FUNCTION_57_7();
          sub_2676CA87C();

          OUTLINED_FUNCTION_14_2();
          (*(v234 + 8))(v67, v165);
          v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
          v228 = v167;
          if (__swift_getEnumTagSinglePayload(v71, 1, v235) == 1)
          {
            v229 = &qword_2801CC068;
            v230 = &unk_2676D4E00;
            v231 = v71;
            goto LABEL_38;
          }

          swift_getKeyPath();
          v236 = sub_2676CA89C();
          v237 = v238;

          OUTLINED_FUNCTION_14_2();
          (*(v239 + 8))(v71, v235);
LABEL_40:
          v240 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_resolvedDateTimeRange;
          v241 = v303;
          OUTLINED_FUNCTION_17_13();
          swift_beginAccess();
          v242 = v284;
          sub_267671E30(v241 + v240, v284, &qword_2801CC380, &unk_2676CEF40);
          v243 = *(v241 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_isNewInput);
          v244 = type metadata accessor for NoResults(0);
          *(&v313 + 1) = v244;
          v245 = sub_267671D9C(&qword_2801CCFA8, type metadata accessor for NoResults, &unk_2676D03C0);
          v246 = OUTLINED_FUNCTION_43_4(v245);
          v247 = v297;
          *v246 = v300;
          v246[1] = v247;
          v248 = v296;
          v246[2] = v228;
          v246[3] = v248;
          v246[4] = v236;
          v246[5] = v237;
          sub_267671D50(v242, v246 + v244[7], &qword_2801CC380, &unk_2676CEF40);
          *(v246 + v244[8]) = v243 & 1;
          *(v246 + v244[9]) = 0;
          v249 = sub_2676C9EFC();
          OUTLINED_FUNCTION_7_13(v249);
          OUTLINED_FUNCTION_51_6();
          *&v312 = sub_2676C9F0C();
          v195 = sub_2676C9EEC();

          v250 = MEMORY[0x277D5C188];
          OUTLINED_FUNCTION_34_8();
          v251 = v282;
          sub_2676C942C();

          *&v312 = v249;
          *(&v312 + 1) = v195;
          *&v313 = v250;
          v252 = OUTLINED_FUNCTION_3_20();
          v198 = v283;
          v253 = v301;
          v196 = v251;
          sub_2676C941C();

          OUTLINED_FUNCTION_27_5();
          v254(v251, v253);
          OUTLINED_FUNCTION_41_5(&v315);
          *&v309 = v253;
          *(&v309 + 1) = v195;
          *&v310 = v252;
          v255 = OUTLINED_FUNCTION_4_21();
          OUTLINED_FUNCTION_43_4(v255);
          OUTLINED_FUNCTION_40_2();
          OUTLINED_FUNCTION_57_7();
          v256();
          OUTLINED_FUNCTION_24_8();
          sub_2676C960C();
          OUTLINED_FUNCTION_7_20();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          OUTLINED_FUNCTION_14_15();
          sub_2676C961C();
LABEL_41:
          __swift_destroy_boxed_opaque_existential_1(&v312);
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          OUTLINED_FUNCTION_36_9();
          (*(v195 + 8))(v198, v196);
LABEL_19:
          sub_2676C961C();
          __swift_destroy_boxed_opaque_existential_1(&v312);
          OUTLINED_FUNCTION_20_1();
          return;
        case 5:
          v201 = v281;
          sub_2676C9F8C();
          *(&v313 + 1) = &type metadata for Cancelled;
          v314 = sub_26765170C();
          v202 = sub_2676C9EFC();
          OUTLINED_FUNCTION_7_13(v202);
          OUTLINED_FUNCTION_51_6();
          v203 = sub_2676C9F0C();
          *(&v313 + 1) = v202;
          v314 = MEMORY[0x277D5C188];
          *&v312 = v203;
          OUTLINED_FUNCTION_23_8();
          v204 = v287;
          sub_2676C9F6C();
          v205 = v285;
          v206 = *(v285 + 8);
          v206(v201, v204);
          __swift_destroy_boxed_opaque_existential_1(&v312);
          *(&v313 + 1) = v204;
          v207 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
          v208 = OUTLINED_FUNCTION_43_4(v207);
          (*(v205 + 16))(v208, v67, v204);
          OUTLINED_FUNCTION_24_8();
          sub_2676C961C();
          OUTLINED_FUNCTION_7_20();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          OUTLINED_FUNCTION_14_15();
          sub_2676C961C();
          __swift_destroy_boxed_opaque_existential_1(&v312);
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          OUTLINED_FUNCTION_36_9();
          v209 = OUTLINED_FUNCTION_65_0();
          (v206)(v209);
          goto LABEL_19;
        case 6:
          v210 = v286;
          sub_2676C9F8C();
          v211 = v287;
          *(&v313 + 1) = v287;
          v212 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
          v213 = OUTLINED_FUNCTION_43_4(v212);
          v214 = v285;
          (*(v285 + 16))(v213, v210, v211);
          OUTLINED_FUNCTION_24_8();
          sub_2676C961C();
          OUTLINED_FUNCTION_7_20();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          OUTLINED_FUNCTION_36_9();
          (*(v214 + 8))(v210, v211);
          goto LABEL_19;
        default:
          v103 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_responseFactory;
          *(&v313 + 1) = &unk_2878AFC00;
          v314 = sub_267651BE0();
          *&v312 = swift_allocObject();
          sub_2676149CC(v84 + v103, v312 + 16);
          v104 = sub_2676C9EFC();
          OUTLINED_FUNCTION_7_13(v104);
          OUTLINED_FUNCTION_51_6();
          *&v312 = sub_2676C9F0C();
          v105 = sub_2676C9EEC();
          v106 = MEMORY[0x277D5C188];
          sub_2676C937C();

          *&v312 = v104;
          *(&v312 + 1) = v105;
          *&v313 = v106;
          v107 = swift_getOpaqueTypeConformance2();
          sub_2676C942C();

          OUTLINED_FUNCTION_27_5();
          v108(v71, v67);

          *&v312 = v67;
          *(&v312 + 1) = v105;
          *&v313 = v107;
          v109 = OUTLINED_FUNCTION_3_20();
          OUTLINED_FUNCTION_23_8();
          v110 = v76;
          sub_2676C941C();

          OUTLINED_FUNCTION_27_5();
          v111(v76, v72);
          OUTLINED_FUNCTION_41_5(v292);
          *&v309 = v72;
          *(&v309 + 1) = v105;
          *&v310 = v109;
          v112 = OUTLINED_FUNCTION_4_21();
          OUTLINED_FUNCTION_43_4(v112);
          OUTLINED_FUNCTION_9_21();
          v113();
          OUTLINED_FUNCTION_24_8();
          sub_2676C960C();
          OUTLINED_FUNCTION_7_20();
          sub_2676C961C();
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
LABEL_23:
          OUTLINED_FUNCTION_14_15();
          sub_2676C961C();
LABEL_25:
          __swift_destroy_boxed_opaque_existential_1(&v312);
          OUTLINED_FUNCTION_18_9();
          sub_2676C961C();
          OUTLINED_FUNCTION_36_9();
          (*(v109 + 8))(v67, v110);
          goto LABEL_19;
      }

    default:
      v86 = *(v85 + 16);
      v87 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_responseFactory;
      *(&v313 + 1) = &unk_2878AFC80;
      v314 = sub_267651B74();
      v88 = swift_allocObject();
      *&v312 = v88;
      sub_2676149CC(v84 + v87, v88 + 24);
      *(v88 + 16) = v86;
      v89 = sub_2676C9EFC();
      OUTLINED_FUNCTION_7_13(v89);
      swift_retain_n();
      sub_26766FF60(v85);
      v90 = sub_2676C9F0C();
      v294 = v85;
      *&v312 = v90;
      v91 = sub_2676C9EEC();

      v92 = MEMORY[0x277D5C188];
      OUTLINED_FUNCTION_34_8();
      sub_2676C942C();

      *&v312 = v89;
      *(&v312 + 1) = v91;
      *&v313 = v92;
      v93 = OUTLINED_FUNCTION_3_20();
      v94 = v292[1];
      sub_2676C941C();

      OUTLINED_FUNCTION_27_5();
      v95(v55, v50);
      OUTLINED_FUNCTION_41_5(&v315);
      *&v309 = v50;
      *(&v309 + 1) = v91;
      *&v310 = v93;
      v96 = OUTLINED_FUNCTION_4_21();
      v97 = OUTLINED_FUNCTION_43_4(v96);
      (*(v57 + 16))(v97, v94, v55);
      OUTLINED_FUNCTION_24_8();
      sub_2676C960C();
      OUTLINED_FUNCTION_7_20();
      sub_2676C961C();
      OUTLINED_FUNCTION_18_9();
      sub_2676C961C();
      OUTLINED_FUNCTION_14_15();
      sub_2676C961C();
      __swift_destroy_boxed_opaque_existential_1(&v312);
      OUTLINED_FUNCTION_18_9();
      sub_2676C961C();

      OUTLINED_FUNCTION_36_9();
      (*(v57 + 8))(v94, v55);
LABEL_17:
      v102 = v294;
LABEL_18:
      sub_26766FF90(v102);
      goto LABEL_19;
  }
}

unint64_t sub_26766DBA0(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v5 = sub_2676CBE4C();
  __swift_project_value_buffer(v5, qword_2801CDC90);
  sub_26766FF60(v4);
  sub_26766FF60(a1);
  v6 = sub_2676CBE2C();
  v7 = sub_2676CC23C();
  sub_26766FF90(v4);
  sub_26766FF90(a1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    sub_26766FF60(v4);
    v9 = sub_26766F5FC();
    v11 = v10;
    sub_26766FF90(v4);
    v12 = sub_2676B0B84(v9, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_26766F5FC();
    v15 = sub_2676B0B84(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_2675D4000, v6, v7, "#ReplyMessageFlow change state from: %s to %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
    sub_26766FF90(v4);
  }

  else
  {

    sub_26766FF90(v4);
  }

  *v2 = a1;

  return sub_26766FF60(a1);
}

uint64_t sub_26766DD84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1E8, &qword_2676CF570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-1] - v3;
  sub_267671E30(a1 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_dateTimeInput, &v16[-1] - v3, &qword_2801CC1E8, &qword_2676CF570);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F0, &unk_2676CE100);
  __swift_getEnumTagSinglePayload(v4, 1, v5);
  v6 = sub_2676C9E0C();
  sub_2675EB7EC(v4, &qword_2801CC1E8, &qword_2676CF570);

  v7 = sub_2676C9E1C();
  v8 = MEMORY[0x277D5C060];
  v17 = v6;
  v18 = MEMORY[0x277D5C060];
  v16[0] = v7;
  v9 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v16);

  v10 = sub_2676C9E1C();
  v17 = v6;
  v18 = v8;
  v16[0] = v10;
  v11 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2676CDE10;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  v13 = MEMORY[0x26D5FB6C0]();

  return v13;
}

uint64_t sub_26766DF64(uint64_t a1)
{
  v2 = sub_2676C9BFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ResolveDateTime(0);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267671E30(a1 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_dateTimeInput, v8, &qword_2801CC1E8, &qword_2676CF570);
  sub_2676149CC(a1 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_dateTimeResolver, &v8[v6[5]]);
  v8[v6[6]] = *(a1 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_isNewInput);
  v8[v6[7]] = 0;
  (*(v3 + 104))(v5, *MEMORY[0x277D5BDF0], v2);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD040, &unk_2676D1530);
  swift_allocObject();
  sub_267671D9C(&qword_2801CD048, type metadata accessor for ResolveDateTime, &unk_2676D2E08);
  v16[4] = sub_2676C9F5C();
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD050, &qword_2676D2800);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC380, &unk_2676CEF40);
  v11 = sub_2676148C4(&qword_2801CD058, &qword_2801CD040, &unk_2676D1530, MEMORY[0x277D5C1A8]);
  v16[1] = v9;
  v16[2] = v10;
  v16[3] = v11;
  v17[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v17);

  sub_2676C942C();

  v12 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2676CDE20;
  *(v13 + 32) = v12;
  v14 = MEMORY[0x26D5FB6C0]();

  return v14;
}

void sub_26766E2A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC380, &unk_2676CEF40);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-1] - v5;
  v7 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_resolvedDateTimeRange;
  swift_beginAccess();
  sub_267671DE4(a1, a2 + v7, &qword_2801CC380, &unk_2676CEF40);
  swift_endAccess();
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v8 = sub_2676CBE4C();
  __swift_project_value_buffer(v8, qword_2801CDC90);

  v9 = sub_2676CBE2C();
  v10 = sub_2676CC23C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136315138;
    sub_267671E30(a2 + v7, v6, &qword_2801CC380, &unk_2676CEF40);
    v13 = sub_2676CBFBC();
    v15 = sub_2676B0B84(v13, v14, v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2675D4000, v9, v10, "#ReplyMessageFlow resolved dateTime %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D5FEA80](v12, -1, -1);
    MEMORY[0x26D5FEA80](v11, -1, -1);
  }
}

uint64_t sub_26766E4B4(uint64_t a1)
{
  v2 = sub_2676C9BFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ResolveSender(0);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267698E74(*(a1 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_senderInput));
  *v8 = 0;
  v8[*(v6 + 24)] = 0;
  (*(v3 + 104))(v5, *MEMORY[0x277D5BDF0], v2);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD020, &unk_2676D1520);
  swift_allocObject();
  sub_267671D9C(&qword_2801CD028, type metadata accessor for ResolveSender, &unk_2676D3620);
  v16[4] = sub_2676C9F5C();
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD030, &unk_2676D27F0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v11 = sub_2676148C4(&qword_2801CD038, &qword_2801CD020, &unk_2676D1520, MEMORY[0x277D5C1A8]);
  v16[1] = v9;
  v16[2] = v10;
  v16[3] = v11;
  v17[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v17);

  sub_2676C942C();

  v12 = sub_2676C9A0C();
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD018, &unk_2676D27E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2676CDE20;
  *(v13 + 32) = v12;
  v14 = MEMORY[0x26D5FB6C0]();

  return v14;
}

uint64_t sub_26766E7BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-1] - v8;
  v10 = sub_2676C8C8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267671E30(a1, v9, &qword_2801CBFE8, &unk_2676CD9E0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2675EB7EC(v9, &qword_2801CBFE8, &unk_2676CD9E0);
    swift_beginAccess();
    sub_26766DBA0(0xC000000000000010);
    return swift_endAccess();
  }

  else
  {
    v24 = v4;
    (*(v11 + 32))(v13, v9, v10);
    (*(v11 + 16))(v7, v13, v10);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
    v15 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_resolvedSender;
    swift_beginAccess();
    sub_267671E7C(v7, a2 + v15, &qword_2801CBFE8, &unk_2676CD9E0);
    swift_endAccess();
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v16 = sub_2676CBE4C();
    __swift_project_value_buffer(v16, qword_2801CDC90);

    v17 = sub_2676CBE2C();
    v18 = sub_2676CC23C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25[0] = v20;
      *v19 = 136380675;
      sub_267671E30(a2 + v15, v7, &qword_2801CBFE8, &unk_2676CD9E0);
      v21 = sub_2676CBFBC();
      v23 = sub_2676B0B84(v21, v22, v25);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2675D4000, v17, v18, "#ReplyMessageFlow resolved sender %{private}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x26D5FEA80](v20, -1, -1);
      MEMORY[0x26D5FEA80](v19, -1, -1);
    }

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_26766EB60(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  if (*(a2 + 16) != 0xC000000000000010)
  {
    swift_beginAccess();
    sub_26766DBA0(0xC000000000000018);
    return swift_endAccess();
  }

  return result;
}

void sub_26766EBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = sub_2676C8C8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (*(a1 + 8))
  {
    v41 = *a1;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
    if (swift_dynamicCast())
    {
      v17 = v38;
      v16 = v39;
      if (v40 == 1)
      {
        if (qword_2801CBAA0 != -1)
        {
          swift_once();
        }

        v18 = sub_2676CBE4C();
        __swift_project_value_buffer(v18, qword_2801CDC90);
        v19 = sub_2676CBE2C();
        v20 = sub_2676CC23C();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_2675D4000, v19, v20, "#ReplyMessageFlow requested sender does not have email handle", v21, 2u);
          MEMORY[0x26D5FEA80](v21, -1, -1);
        }

        v22 = swift_allocObject();
        *(v22 + 16) = v17;
        swift_beginAccess();
        sub_267651D60(v17, v16, 1);
        sub_26766DBA0(v22);
        swift_endAccess();

        sub_267651D40(v17, v16, 1);
        return;
      }

      sub_267651D40(v38, v39, v40);
    }

    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v28 = sub_2676CBE4C();
    __swift_project_value_buffer(v28, qword_2801CDC90);
    v29 = v14;
    v30 = sub_2676CBE2C();
    v31 = sub_2676CC26C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38 = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v34 = sub_2676CC5FC();
      v36 = v35;
      sub_267651D34(v14, 1);
      v37 = sub_2676B0B84(v34, v36, &v38);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_2675D4000, v30, v31, "#ReplyMessageFlow error from ResolveRecipientsFlow: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x26D5FEA80](v33, -1, -1);
      MEMORY[0x26D5FEA80](v32, -1, -1);
    }

    else
    {

      sub_267651D34(v14, 1);
    }
  }

  else
  {
    sub_267698E44(*a1);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_2675EB7EC(v9, &qword_2801CBFE8, &unk_2676CD9E0);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      (*(v11 + 16))(v7, v13, v10);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
      v23 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_resolvedSender;
      swift_beginAccess();
      sub_267671E7C(v7, a2 + v23, &qword_2801CBFE8, &unk_2676CD9E0);
      swift_endAccess();
      if (qword_2801CBAA0 != -1)
      {
        swift_once();
      }

      v24 = sub_2676CBE4C();
      __swift_project_value_buffer(v24, qword_2801CDC90);
      v25 = sub_2676CBE2C();
      v26 = sub_2676CC23C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_2675D4000, v25, v26, "#ReplyMessageFlow resolved sender", v27, 2u);
        MEMORY[0x26D5FEA80](v27, -1, -1);
      }

      (*(v11 + 8))(v13, v10);
    }

    swift_beginAccess();
    sub_26766DBA0(0xC000000000000018);
    swift_endAccess();
  }
}

uint64_t sub_26766F1B4(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCED0, &unk_2676D1380);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  sub_267698F3C();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2675EB7EC(v5, &qword_2801CCED0, &unk_2676D1380);
    swift_beginAccess();
    sub_26766DBA0(0xC000000000000020);
    return swift_endAccess();
  }

  else
  {
    sub_267671D50(v5, v11, &qword_2801CC3D8, &unk_2676CEC00);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD370, &unk_2676D26C0);
    v14 = swift_allocBox();
    v16 = v15;
    v17 = (v15 + *(v13 + 48));
    sub_267671E30(v11, v9, &qword_2801CC3D8, &unk_2676CEC00);

    v18 = sub_2676C8BFC();
    (*(*(v18 - 8) + 32))(v16, v9, v18);
    v19 = *(a2 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_messageBodyPayload + 8);
    *v17 = *(a2 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_messageBodyPayload);
    v17[1] = v19;
    swift_beginAccess();

    sub_26766DBA0(v14 | 0x4000000000000000);
    swift_endAccess();

    return sub_2675EB7EC(v11, &qword_2801CC3D8, &unk_2676CEC00);
  }
}

uint64_t sub_26766F43C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_70(a2 + 16, v3);
  sub_26766DBA0(0xC000000000000030);
  return swift_endAccess();
}

uint64_t sub_26766F488()
{
  OUTLINED_FUNCTION_92_0();
  sub_2676C9CCC();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_2();
  v8[0] = v0;
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
  if (swift_dynamicCast())
  {
    v3 = OUTLINED_FUNCTION_65_0();
    v4(v3);
    OUTLINED_FUNCTION_70(v0 + 16, v8);
    sub_26766DBA0(0xC000000000000028);
    return swift_endAccess();
  }

  else
  {
    v6 = swift_allocObject();
    swift_getErrorValue();
    *(v6 + 16) = sub_2676CC5FC();
    *(v6 + 24) = v7;
    OUTLINED_FUNCTION_70(v0 + 16, v8);
    sub_26766DBA0(v6 | 0x8000000000000000);
    swift_endAccess();
  }
}

unint64_t sub_26766F5FC()
{
  OUTLINED_FUNCTION_92_0();
  v1 = sub_2676C8BFC();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_2();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  switch(v0 >> 62)
  {
    case 1uLL:
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD370, &unk_2676D26C0);
      v18 = swift_projectBox();
      v19 = (v18 + *(v17 + 48));
      v21 = *v19;
      v20 = v19[1];
      (*(v3 + 16))(v7, v18, v1);
      v25 = 0;
      v26 = 0xE000000000000000;

      sub_2676CC3FC();
      MEMORY[0x26D5FDD00](0x4D6F54796C706572, 0xEF28656761737365);
      sub_2676CC49C();
      MEMORY[0x26D5FDD00](0xD000000000000010, 0x80000002676D74C0);
      v24[0] = v21;
      v24[1] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
      v22 = sub_2676CBFBC();
      MEMORY[0x26D5FDD00](v22);

      MEMORY[0x26D5FDD00](41, 0xE100000000000000);
      v16 = v25;
      (*(v3 + 8))(v7, v1);
      break;
    case 2uLL:
      v14 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v15 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v25 = 0x28726F727265;
      v26 = 0xE600000000000000;
      MEMORY[0x26D5FDD00](v14, v15);
      MEMORY[0x26D5FDD00](41, 0xE100000000000000);
      goto LABEL_4;
    case 3uLL:
      v16 = 0x6E4964656B636F6CLL;
      switch(__ROR8__(v0 + 0x4000000000000000, 3))
      {
        case 1:
          v16 = 0xD000000000000016;
          break;
        case 2:
          v16 = 0x4365766C6F736572;
          break;
        case 3:
          v16 = 0x6C69614D746567;
          break;
        case 4:
          v16 = 0x746C757365526F6ELL;
          break;
        case 5:
          v16 = 0x656C6C65636E6163;
          break;
        case 6:
          v16 = 1701736292;
          break;
        default:
          return v16;
      }

      break;
    default:
      v25 = 0;
      v26 = 0xE000000000000000;

      sub_2676CC3FC();

      v25 = 0xD00000000000001ELL;
      v26 = 0x80000002676D6490;
      sub_2676CB35C();
      v11 = sub_2676CC2EC();
      v13 = v12;
      sub_2675EB7EC(v10, &qword_2801CBFD0, &qword_2676CDEA0);
      MEMORY[0x26D5FDD00](v11, v13);

LABEL_4:
      v16 = v25;
      break;
  }

  return v16;
}

uint64_t sub_26766FA0C()
{
  sub_26766FF90(*(v0 + 16));
  v1 = OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow__replyMessageTask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD208, &qword_2676D1D78);
  OUTLINED_FUNCTION_2_6();
  (*(v2 + 8))(v0 + v1);

  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_resolvedSender, &qword_2801CBFE8, &unk_2676CD9E0);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_linkServicesProvider);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_responseFactory);

  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_resolvedDateTimeRange, &qword_2801CC380, &unk_2676CEF40);
  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_dateTimeInput, &qword_2801CC1E8, &qword_2676CF570);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal16ReplyMessageFlow_dateTimeResolver);

  return v0;
}

uint64_t sub_26766FB50()
{
  sub_26766FA0C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ReplyMessageFlow(uint64_t a1)
{
  result = qword_2801CD360;
  if (!qword_2801CD360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26766FBFC(uint64_t a1)
{
  sub_267651360(319, &qword_2801CD1C8, &qword_2801CC628, &unk_2676CF530, MEMORY[0x277D5B9C8]);
  if (v1 <= 0x3F)
  {
    sub_2675F9EB0(319);
    if (v2 <= 0x3F)
    {
      sub_267651360(319, &qword_2801CC3B0, &qword_2801CC1F8, &qword_2676CEBA0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_267651360(319, &qword_2801CCE68, &qword_2801CC1F0, &unk_2676CE100, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal16ReplyMessageFlowC5StateO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_26766FE38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_26766FE8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_26766FEEC(unint64_t *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  *result = v2;
  return result;
}

unint64_t sub_26766FF60(unint64_t result)
{
  switch(result >> 62)
  {
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

unint64_t sub_26766FF90(unint64_t result)
{
  switch(result >> 62)
  {
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

void sub_26766FFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (**a21)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_21_1();
  v23 = v22;
  v146 = v25;
  v148 = v24;
  v27 = v26;
  v134 = v28;
  v129 = v29;
  v144 = v30;
  v32 = v31;
  v33 = a21;
  v152 = sub_2676C8C8C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_5();
  v150 = v35;
  v151 = sub_2676CB14C();
  OUTLINED_FUNCTION_3();
  v153 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4();
  v124 = v38;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_24_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_3();
  v130 = v42;
  v131 = v41;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_4();
  v128 = v43;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10_4();
  v127 = v45;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_24_1();
  v126 = v47;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3();
  v138 = v48;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_9_1();
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  OUTLINED_FUNCTION_3();
  v137 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_24_1();
  v141 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  v57 = OUTLINED_FUNCTION_4_1(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_4();
  v145 = v58;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v59);
  v60 = OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_3();
  v132 = v61;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_1_5();
  v143 = v63;
  sub_2676CBA6C();
  OUTLINED_FUNCTION_25_11();
  sub_267671D9C(v64, v65, MEMORY[0x277D5C810]);
  sub_2676C97BC();
  *(a21 + OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan_confirmIntentOptions) = 1;
  v139 = v60;
  __swift_storeEnumTagSinglePayload(a21 + OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan_inReplyTo, 1, 1, v60);
  v135 = v27;
  sub_267671E30(v27, v162, &qword_2801CC6A8, &unk_2676CF5F0);
  v136 = v32;
  sub_2676149CC(v32, v161);
  v160 = 0;
  memset(v159, 0, sizeof(v159));
  v133 = v23;
  sub_267671E30(v23, v158, &off_2801CC6B8, &unk_2676CF600);
  v157[3] = sub_2676C9B9C();
  v157[4] = &protocol witness table for ResponseFactory;
  v157[0] = v146;
  v66 = v148;
  sub_2676C981C();
  sub_2676C981C();
  v67 = OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan__message;
  sub_2676CB18C();
  sub_2676C981C();
  v68 = a21 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride;
  *(v68 + 4) = 0;
  *v68 = 0u;
  *(v68 + 1) = 0u;
  *(a21 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_globals) = v66;
  OUTLINED_FUNCTION_70(v68, v156);
  v69 = v66;
  sub_267671DE4(v162, v68, &qword_2801CC6A8, &unk_2676CF5F0);
  swift_endAccess();
  sub_2676149CC(v161, a21 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_linkServicesProvider);
  sub_267671E30(v159, a21 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_skContactManagerOverride, &qword_2801CC6B0, &qword_2676CFC80);
  sub_2676149CC(v157, a21 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_responseFactory);
  sub_267671E30(v158, &v154, &off_2801CC6B8, &unk_2676CF600);
  if (v155)
  {

    sub_2675EB7EC(v158, &off_2801CC6B8, &unk_2676CF600);
    sub_2675EB7EC(v159, &qword_2801CC6B0, &qword_2676CFC80);
    __swift_destroy_boxed_opaque_existential_1(v161);
    sub_2675EB7EC(v162, &qword_2801CC6A8, &unk_2676CF5F0);
    __swift_destroy_boxed_opaque_existential_1(v157);
    sub_267614E14(&v154, v156);
  }

  else
  {
    sub_2676C964C();

    sub_2675EB7EC(v158, &off_2801CC6B8, &unk_2676CF600);
    sub_2675EB7EC(v159, &qword_2801CC6B0, &qword_2676CFC80);
    __swift_destroy_boxed_opaque_existential_1(v161);
    sub_2675EB7EC(v162, &qword_2801CC6A8, &unk_2676CF5F0);
    __swift_destroy_boxed_opaque_existential_1(v157);
    if (v155)
    {
      sub_2675EB7EC(&v154, &off_2801CC6B8, &unk_2676CF600);
    }
  }

  sub_267614E14(v156, a21 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_eventSender);
  sub_267671E30(v144, v21, &qword_2801CC3D0, &qword_2676D1D80);
  v70 = v140;
  v71 = v143;
  if (__swift_getEnumTagSinglePayload(v21, 1, v139) == 1)
  {
    sub_2675EB7EC(v21, &qword_2801CC3D0, &qword_2676D1D80);
  }

  else
  {
    (*(v132 + 32))(v143, v21, v139);
    (*(v132 + 16))(v145, v143, v139);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v139);
    v75 = OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan_inReplyTo;
    OUTLINED_FUNCTION_70(a21 + OBJC_IVAR____TtC16SiriMailInternal22ReplyMailSceneHostPlan_inReplyTo, v162);
    sub_267671E7C(v145, a21 + v75, &qword_2801CC3D0, &qword_2676D1D80);
    swift_endAccess();
    OUTLINED_FUNCTION_54_6();
    swift_getKeyPath();
    OUTLINED_FUNCTION_30_9();
    sub_2676C97EC();

    (*(v137 + 8))(v141, v140);
    v76 = sub_2676C8BAC();
    OUTLINED_FUNCTION_47_3(v76, v77);

    v123 = *(v138 + 8);
    v123(v67, v141);
    v78 = *(sub_2676C8B8C() + 16);

    v67 = MEMORY[0x277D84F90];
    v125 = v69;
    if (v78)
    {
      OUTLINED_FUNCTION_54_6();
      swift_getKeyPath();
      sub_2676C97EC();

      v79 = OUTLINED_FUNCTION_29_10();
      v80(v79);
      v81 = sub_2676C8B8C();
      v82 = *(v81 + 16);
      if (v82)
      {
        v83 = OUTLINED_FUNCTION_44_5();
        sub_2676C27D0(v83, v82, 0);
        v84 = v162[0];
        OUTLINED_FUNCTION_17_16();
        v86 = v81 + v85;
        OUTLINED_FUNCTION_35_6();
        v87 = v124;
        do
        {
          v146(v150, v86, v152);
          sub_2676C8C1C();
          sub_2676C8C4C();
          OUTLINED_FUNCTION_45_5();
          sub_2676CB11C();
          (*a21)(v150, v152);
          v162[0] = v84;
          v89 = *(v84 + 16);
          v88 = *(v84 + 24);
          if (v89 >= v88 >> 1)
          {
            v90 = OUTLINED_FUNCTION_46_4(v88);
            sub_2676C27D0(v90, v89 + 1, 1);
            v87 = v124;
            v84 = v162[0];
          }

          *(v84 + 16) = v89 + 1;
          (*(v153 + 32))(v84 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v89, v87, v151);
          v86 += v145;
          --v82;
        }

        while (v82);

        v33 = a21;
        v70 = v140;
        v69 = v125;
        v91 = v126;
        v67 = MEMORY[0x277D84F90];
      }

      else
      {

        v84 = MEMORY[0x277D84F90];
        v91 = v126;
      }

      v162[0] = v84;
      sub_2676C984C();

      (*(v130 + 8))(v91, v131);
      v71 = v143;
    }

    v92 = *(sub_2676C8A9C() + 16);

    if (v92)
    {
      OUTLINED_FUNCTION_54_6();
      swift_getKeyPath();
      sub_2676C97EC();

      v93 = OUTLINED_FUNCTION_29_10();
      v94(v93);
      v95 = sub_2676C8A9C();
      v96 = *(v95 + 16);
      if (v96)
      {
        v97 = OUTLINED_FUNCTION_44_5();
        sub_2676C27D0(v97, v96, 0);
        OUTLINED_FUNCTION_17_16();
        v99 = v95 + v98;
        OUTLINED_FUNCTION_35_6();
        do
        {
          v146(v150, v99, v152);
          v95 = sub_2676C8C1C();
          sub_2676C8C4C();
          OUTLINED_FUNCTION_45_5();
          sub_2676CB11C();
          (*v33)(v150, v152);
          OUTLINED_FUNCTION_60_2();
          if (v101)
          {
            v104 = OUTLINED_FUNCTION_46_4(v100);
            sub_2676C27D0(v104, v95, 1);
          }

          v102 = OUTLINED_FUNCTION_22_8();
          v103(v102);
          v99 += v145;
          --v96;
        }

        while (v96);

        v70 = v140;
        v71 = v143;
        v67 = MEMORY[0x277D84F90];
      }

      else
      {
      }

      OUTLINED_FUNCTION_61_4();
      sub_2676C984C();

      (*(v130 + 8))(v127, v95);
      v69 = v125;
    }

    v105 = *(sub_2676C8ADC() + 16);

    if (v105)
    {
      OUTLINED_FUNCTION_54_6();
      swift_getKeyPath();
      sub_2676C97EC();

      v106 = OUTLINED_FUNCTION_29_10();
      v107(v106);
      v108 = sub_2676C8ADC();
      v109 = *(v108 + 16);
      if (v109)
      {
        v110 = OUTLINED_FUNCTION_44_5();
        sub_2676C27D0(v110, v109, 0);
        OUTLINED_FUNCTION_17_16();
        v112 = v108 + v111;
        v147 = *(v113 + 56);
        v149 = v114;
        v67 = (v113 - 8);
        do
        {
          v149(v150, v112, v152);
          v108 = sub_2676C8C1C();
          sub_2676C8C4C();
          OUTLINED_FUNCTION_45_5();
          sub_2676CB11C();
          (*v67)(v150, v152);
          OUTLINED_FUNCTION_60_2();
          if (v101)
          {
            v118 = OUTLINED_FUNCTION_46_4(v115);
            sub_2676C27D0(v118, v108, 1);
          }

          v116 = OUTLINED_FUNCTION_22_8();
          v117(v116);
          v112 += v147;
          --v109;
        }

        while (v109);

        v70 = v140;
        v71 = v143;
      }

      else
      {
      }

      OUTLINED_FUNCTION_61_4();
      sub_2676C984C();

      (*(v130 + 8))(v128, v108);
      v69 = v125;
    }

    OUTLINED_FUNCTION_54_6();
    swift_getKeyPath();
    OUTLINED_FUNCTION_30_9();
    sub_2676C97EC();

    v119 = OUTLINED_FUNCTION_29_10();
    v120(v119);
    v121 = sub_2676C8ABC();
    OUTLINED_FUNCTION_47_3(v121, v122);

    v123(v67, v141);
    (*(v132 + 8))(v71, v139);
  }

  if (v134)
  {
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_30_9();
    sub_2676C97EC();

    (*(v137 + 8))(v141, v70);
    v162[0] = v129;
    v162[1] = v134;
    sub_2676C984C();

    sub_2675EB7EC(v133, &off_2801CC6B8, &unk_2676CF600);
    sub_2675EB7EC(v135, &qword_2801CC6A8, &unk_2676CF5F0);
    sub_2675EB7EC(v144, &qword_2801CC3D0, &qword_2676D1D80);
    __swift_destroy_boxed_opaque_existential_1(v136);

    (*(v138 + 8))(v67, v142);
  }

  else
  {

    sub_2675EB7EC(v133, &off_2801CC6B8, &unk_2676CF600);
    sub_2675EB7EC(v135, &qword_2801CC6A8, &unk_2676CF5F0);
    sub_2675EB7EC(v144, &qword_2801CC3D0, &qword_2676D1D80);
    __swift_destroy_boxed_opaque_existential_1(v136);
  }

  OUTLINED_FUNCTION_20_1();
}

void sub_267670F48()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v4 = v3;
  v145 = v5;
  v7 = v6;
  v157 = v8;
  v155 = v9;
  v160 = v10;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_3();
  v140 = v14;
  v141 = v13;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_1();
  v139 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  v18 = OUTLINED_FUNCTION_4_1(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4();
  v138 = v19;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_24_1();
  v150 = v21;
  v152 = sub_2676C8EBC();
  OUTLINED_FUNCTION_3();
  v137 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_5();
  v151 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD388, &qword_2676D2930);
  OUTLINED_FUNCTION_3();
  v135 = v26;
  v136 = v25;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_1();
  v134 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_3();
  v143 = v30;
  v144 = v29;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9_1();
  v142 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3();
  v132 = v34;
  v133 = v33;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_1();
  v131 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_3();
  v148 = v38;
  v149 = v37;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v39);
  v41 = &v128 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  v43 = OUTLINED_FUNCTION_4_1(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4();
  v147 = v44;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v45);
  v46 = OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_3();
  v146 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_5();
  v159 = v49;
  sub_2676CBA6C();
  OUTLINED_FUNCTION_25_11();
  sub_267671D9C(v50, v51, MEMORY[0x277D5C810]);
  sub_2676C97BC();
  *(v2 + OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan_confirmIntentOptions) = 1;
  v158 = v46;
  __swift_storeEnumTagSinglePayload(v2 + OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan_inReplyTo, 1, 1, v46);
  v154 = v7;
  sub_267671E30(v7, v170, &qword_2801CC6A8, &unk_2676CF5F0);
  v156 = v12;
  sub_2676149CC(v12, v169);
  v168 = 0;
  memset(v167, 0, sizeof(v167));
  v153 = v4;
  sub_267671E30(v4, v166, &off_2801CC6B8, &unk_2676CF600);
  v165[3] = sub_2676C9B9C();
  v165[4] = &protocol witness table for ResponseFactory;
  v165[0] = v145;
  sub_2676C8D8C();
  v52 = v157;
  sub_2676C981C();
  sub_2676CB0DC();
  sub_2676C981C();
  sub_2676C981C();
  sub_2676C981C();
  v53 = v2 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride;
  *(v53 + 32) = 0;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  *(v2 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals) = v52;
  OUTLINED_FUNCTION_70(v53, v164);
  v54 = v52;
  sub_267671DE4(v170, v53, &qword_2801CC6A8, &unk_2676CF5F0);
  swift_endAccess();
  sub_2676149CC(v169, v2 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_linkServicesProvider);
  sub_267671E30(v167, v2 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_skContactManagerOverride, &qword_2801CC6B0, &qword_2676CFC80);
  v161 = v2;
  sub_2676149CC(v165, v2 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_responseFactory);
  sub_267671E30(v166, &v162, &off_2801CC6B8, &unk_2676CF600);
  if (v163)
  {

    sub_2675EB7EC(v166, &off_2801CC6B8, &unk_2676CF600);
    sub_2675EB7EC(v167, &qword_2801CC6B0, &qword_2676CFC80);
    __swift_destroy_boxed_opaque_existential_1(v169);
    sub_2675EB7EC(v170, &qword_2801CC6A8, &unk_2676CF5F0);
    __swift_destroy_boxed_opaque_existential_1(v165);
    sub_267614E14(&v162, v164);
  }

  else
  {
    sub_2676C964C();

    sub_2675EB7EC(v166, &off_2801CC6B8, &unk_2676CF600);
    sub_2675EB7EC(v167, &qword_2801CC6B0, &qword_2676CFC80);
    __swift_destroy_boxed_opaque_existential_1(v169);
    sub_2675EB7EC(v170, &qword_2801CC6A8, &unk_2676CF5F0);
    __swift_destroy_boxed_opaque_existential_1(v165);
    if (v163)
    {
      sub_2675EB7EC(&v162, &off_2801CC6B8, &unk_2676CF600);
    }
  }

  v145 = v54;
  v55 = v161;
  sub_267614E14(v164, v161 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_eventSender);
  sub_267671E30(v160, v0, &qword_2801CC3D0, &qword_2676D1D80);
  v56 = v158;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v158);
  v58 = v149;
  v59 = v159;
  v157 = v41;
  if (EnumTagSinglePayload == 1)
  {
    v60 = v149;
    sub_2675EB7EC(v0, &qword_2801CC3D0, &qword_2676D1D80);
    v61 = v152;
    v62 = v150;
  }

  else
  {
    OUTLINED_FUNCTION_46_0();
    v63();
    v64 = v147;
    v65 = OUTLINED_FUNCTION_8_10();
    v129 = v67;
    v130 = v66;
    (v67)(v65);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v56);
    v71 = OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan_inReplyTo;
    OUTLINED_FUNCTION_70(v55 + OBJC_IVAR____TtC16SiriMailInternal13ReplyMailPlan_inReplyTo, v170);
    sub_267671E7C(v64, v55 + v71, &qword_2801CC3D0, &qword_2676D1D80);
    swift_endAccess();
    sub_26761D288();
    swift_getKeyPath();
    v72 = v131;
    sub_2676C97EC();

    v73 = *(v148 + 8);
    v73(v157, v58);
    v170[0] = sub_2676C8BAC();
    v170[1] = v74;
    v75 = v133;
    sub_2676C984C();

    v76 = v72;
    v77 = v73;
    v78 = v157;
    (*(v132 + 8))(v76, v75);
    v79 = *(sub_2676C8B8C() + 16);

    if (v79)
    {
      sub_26761D288();
      KeyPath = swift_getKeyPath();
      OUTLINED_FUNCTION_28_7(KeyPath);

      v77(v78, v58);
      v81 = sub_2676C8B8C();
      OUTLINED_FUNCTION_19_5(v81);

      v82 = OUTLINED_FUNCTION_8_10();
      v59 = v159;
      v83(v82);
    }

    v84 = *(sub_2676C8A9C() + 16);

    if (v84)
    {
      sub_26761D288();
      v85 = swift_getKeyPath();
      OUTLINED_FUNCTION_28_7(v85);

      v77(v78, v58);
      v86 = sub_2676C8A9C();
      OUTLINED_FUNCTION_19_5(v86);

      v87 = OUTLINED_FUNCTION_8_10();
      v59 = v159;
      v88(v87);
    }

    v89 = *(sub_2676C8ADC() + 16);

    v90 = v77;
    v91 = v59;
    if (v89)
    {
      sub_26761D288();
      v92 = swift_getKeyPath();
      OUTLINED_FUNCTION_28_7(v92);

      v90(v78, v58);
      v93 = sub_2676C8ADC();
      OUTLINED_FUNCTION_19_5(v93);

      v94 = OUTLINED_FUNCTION_8_10();
      v95(v94);
    }

    sub_26761D288();
    swift_getKeyPath();
    v96 = v134;
    sub_2676C97EC();

    v97 = v78;
    v60 = v58;
    v90(v97, v58);
    v98 = v147;
    v99 = v158;
    v129(v147, v91, v158);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v99);
    v103 = v136;
    sub_2676C984C();
    sub_2675EB7EC(v98, &qword_2801CC3D0, &qword_2676D1D80);
    (*(v135 + 8))(v96, v103);
    (*(v146 + 8))(v91, v99);
    v61 = v152;
    v62 = v150;
  }

  v104 = OUTLINED_FUNCTION_8_10();
  sub_267671E30(v104, v105, v106, v107);
  if (__swift_getEnumTagSinglePayload(v62, 1, v61) == 1)
  {

    sub_2675EB7EC(v153, &off_2801CC6B8, &unk_2676CF600);
    sub_2675EB7EC(v154, &qword_2801CC6A8, &unk_2676CF5F0);
    OUTLINED_FUNCTION_46_0();
    sub_2675EB7EC(v108, v109, v110);
    sub_2675EB7EC(v160, &qword_2801CC3D0, &qword_2676D1D80);
    __swift_destroy_boxed_opaque_existential_1(v156);
    OUTLINED_FUNCTION_46_0();
    sub_2675EB7EC(v111, v112, v113);
  }

  else
  {
    v114 = v137;
    (*(v137 + 32))(v151, v62, v61);
    v115 = v157;
    sub_26761D288();
    swift_getKeyPath();
    v116 = v139;
    sub_2676C97EC();

    (*(v148 + 8))(v115, v60);
    v117 = v151;
    (*(v114 + 16))(v138, v151, v61);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v61);
    v121 = v141;
    sub_2676C984C();

    sub_2675EB7EC(v153, &off_2801CC6B8, &unk_2676CF600);
    sub_2675EB7EC(v154, &qword_2801CC6A8, &unk_2676CF5F0);
    OUTLINED_FUNCTION_46_0();
    sub_2675EB7EC(v122, v123, v124);
    sub_2675EB7EC(v160, &qword_2801CC3D0, &qword_2676D1D80);
    __swift_destroy_boxed_opaque_existential_1(v156);
    OUTLINED_FUNCTION_46_0();
    sub_2675EB7EC(v125, v126, v127);
    (*(v140 + 8))(v116, v121);
    (*(v114 + 8))(v117, v61);
  }

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_267671D50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_13_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_6();
  v5 = OUTLINED_FUNCTION_28_3();
  v6(v5);
  return v4;
}

uint64_t sub_267671D9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267671DE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_13_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_6();
  v5 = OUTLINED_FUNCTION_28_3();
  v6(v5);
  return v4;
}

uint64_t sub_267671E30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_13_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_6();
  v5 = OUTLINED_FUNCTION_28_3();
  v6(v5);
  return v4;
}

uint64_t sub_267671E7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_13_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_6();
  v5 = OUTLINED_FUNCTION_28_3();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_3_20()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_4_21()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_19_5(uint64_t a1)
{
  *(v1 - 128) = a1;

  return sub_2676C984C();
}

uint64_t OUTLINED_FUNCTION_28_7(uint64_t a1)
{

  return sub_2676C97EC();
}

void OUTLINED_FUNCTION_35_6()
{
  v2[34] = *(v0 + 56);
  v2[35] = v1;
  v2[36] = v0;
  v2[33] = v2[41] + 32;
}

uint64_t OUTLINED_FUNCTION_36_9()
{
  __swift_destroy_boxed_opaque_existential_1(v0 - 240);

  return __swift_destroy_boxed_opaque_existential_1(v0 - 192);
}

uint64_t *OUTLINED_FUNCTION_43_4(uint64_t a1)
{
  *(v1 - 96) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 128));
}

uint64_t OUTLINED_FUNCTION_47_3(uint64_t a1, uint64_t a2)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = a2;

  return sub_2676C984C();
}

uint64_t OUTLINED_FUNCTION_53_5()
{
  *(v0 - 160) = 0;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;

  return sub_2676C9B9C();
}

uint64_t OUTLINED_FUNCTION_54_6()
{

  return sub_26761F9A8();
}

uint64_t OUTLINED_FUNCTION_64_3()
{

  return sub_2676C8BFC();
}

uint64_t sub_26767229C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_1(v11);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_2676754CC(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_267672340@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB96C();
  *a1 = result;
  return result;
}

uint64_t sub_267672430@<X0>(void (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCC88, &qword_2676D0BD0);
  OUTLINED_FUNCTION_4_1(v5);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCC90, &qword_2676D0BD8);
  OUTLINED_FUNCTION_4_1(v8);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCC98, &qword_2676D0BE0);
  OUTLINED_FUNCTION_4_1(v11);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCA8, &unk_2676D0BF0);
  OUTLINED_FUNCTION_4_1(v14);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCB0, &unk_2676D2A70);
  OUTLINED_FUNCTION_4_1(v17);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v19);
  v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCB8, &unk_2676D0C00);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCC0, &unk_2676D2A80);
  OUTLINED_FUNCTION_4_1(v22);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v24);
  sub_2676CB5AC();
  OUTLINED_FUNCTION_3();
  v497 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11_5(v28 - v27);
  v495 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC610, &unk_2676D0C10);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v33 = OUTLINED_FUNCTION_4_1(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  v37 = OUTLINED_FUNCTION_4_1(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC618, &qword_2676CF520);
  v41 = OUTLINED_FUNCTION_4_1(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC620, &unk_2676D0C30);
  OUTLINED_FUNCTION_4_1(v48);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v53);
  v477 = sub_2676CB6CC();
  OUTLINED_FUNCTION_3();
  v486 = v54;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11_5(v57 - v56);
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB78, &qword_2676D05D8);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB80, &unk_2676D2A90);
  v61 = OUTLINED_FUNCTION_4_1(v60);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v65);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  OUTLINED_FUNCTION_3();
  v492 = v68;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v72 = OUTLINED_FUNCTION_4_1(v71);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v77);
  v504[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_3();
  v500 = v78;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCD0, &unk_2676D0C60);
  OUTLINED_FUNCTION_4_1(v81);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v83);
  v505 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC430, &unk_2676D0440);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v86);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_9_1();
  v510 = v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  OUTLINED_FUNCTION_3();
  v91 = v90;
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_24_1();
  v506 = v94;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCD8, &unk_2676D0C70);
  OUTLINED_FUNCTION_4_1(v95);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_9_1();
  v520 = v97;
  OUTLINED_FUNCTION_7_3();
  v521 = sub_2676C9C5C();
  OUTLINED_FUNCTION_3();
  v511 = v98;
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_4();
  v508 = v100;
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_24_1();
  v509 = v102;
  OUTLINED_FUNCTION_7_3();
  sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v523 = v104;
  v524 = v103;
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_4();
  v507 = v105;
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_10_4();
  v513 = v107;
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_24_1();
  v516 = v109;
  OUTLINED_FUNCTION_7_3();
  sub_2676C9EAC();
  OUTLINED_FUNCTION_3();
  v518 = v111;
  v519 = v110;
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_3_2();
  v517 = v113 - v112;
  OUTLINED_FUNCTION_7_3();
  v114 = sub_2676C9E6C();
  OUTLINED_FUNCTION_3();
  v116 = v115;
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_3_2();
  v120 = v119 - v118;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v121 = sub_2676CBE4C();
  v122 = __swift_project_value_buffer(v121, qword_2801CDC90);
  v123 = *(v116 + 16);
  v522 = a1;
  v123(v120, a1, v114);
  v514 = v122;
  v124 = sub_2676CBE2C();
  v125 = sub_2676CC23C();
  v501 = v51;
  v515 = v89;
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v504[0] = v91;
    v127 = swift_slowAlloc();
    v525 = v127;
    *v126 = 136315138;
    sub_267675484(&qword_2801CC160, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v128 = sub_2676CC56C();
    v129 = a3;
    v131 = v130;
    (*(v116 + 8))(v120, v114);
    v132 = sub_2676B0B84(v128, v131, &v525);
    a3 = v129;

    *(v126 + 4) = v132;
    _os_log_impl(&dword_2675D4000, v124, v125, "#ReplyPromptInterpreter user input: %s", v126, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v127);
    v91 = v504[0];
    OUTLINED_FUNCTION_2_5();
    v89 = v515;
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    (*(v116 + 8))(v120, v114);
  }

  v133 = v524;
  sub_2676C9E5C();
  if ((*(v523 + 88))(v516, v524) == *MEMORY[0x277D5C150])
  {
    (*(v523 + 96))(v516, v524);
    (*(v518 + 32))(v517, v516, v519);
    v135 = sub_2676C9E8C();
    v136 = v134;
    v137 = v135 == 0xD00000000000001ALL && 0x80000002676D5FF0 == v134;
    if (v137 || (sub_2676CC59C() & 1) != 0)
    {
      v138 = OUTLINED_FUNCTION_44_6();
      v139(v138);

      v140 = xmmword_2676D2A60;
LABEL_13:
      *a3 = v140;
LABEL_14:
      *(a3 + 16) = 2;
LABEL_15:
      v141 = MEMORY[0x277D5BC88];
LABEL_54:
      v204 = *v141;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD120, &unk_2676D2AB0);
      OUTLINED_FUNCTION_4_22();
      return (*(v205 + 104))(a3, v204);
    }

    v512 = a3;
    if (v135 == 0xD000000000000019 && 0x80000002676D6010 == v136)
    {

      v206 = OUTLINED_FUNCTION_44_6();
      v207(v206);
LABEL_56:
      v208 = v512;
      *v512 = 0;
      v208[1] = 0;
      *(v208 + 16) = 0;
      v209 = *MEMORY[0x277D5BC88];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD120, &unk_2676D2AB0);
      OUTLINED_FUNCTION_4_22();
      return (*(v210 + 104))(v208, v209);
    }

    v142 = v91;
    v193 = sub_2676CC59C();

    v194 = OUTLINED_FUNCTION_44_6();
    v195(v194);
    v143 = v523;
    v133 = v524;
    v89 = v515;
    if (v193)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v512 = a3;
    v142 = v91;
    (*(v523 + 8))(v516, v524);
    v143 = v523;
  }

  sub_2676C9E5C();
  sub_267637F04();
  v144 = *(v143 + 8);
  v144(v513, v133);
  OUTLINED_FUNCTION_21_3(v520, 1, v521);
  if (v137)
  {
    sub_2675EB7EC(v520, &qword_2801CCCD8, &unk_2676D0C70);
    sub_2676C9E5C();
    sub_2676371E0();
    if (v145)
    {
      v146 = v133;
      v147 = sub_2676CA77C();

      v148 = v510;
      sub_267698EA0(v147);

      v144(v507, v146);
      v149 = OUTLINED_FUNCTION_33_4();
      OUTLINED_FUNCTION_21_3(v149, v150, v89);
      if (!v137)
      {
        v151 = OUTLINED_FUNCTION_88_0();
        v152(v151);
        v153 = *(v142 + 16);
        v154 = v503;
        v153(v503, v506, v89);
        sub_2676CB9FC();
        sub_267675484(&qword_2801CC738, MEMORY[0x277D5C7E8], MEMORY[0x277D5C7D0]);
        OUTLINED_FUNCTION_34_9();
        sub_2676CA3FC();
        OUTLINED_FUNCTION_21_3(v502, 1, v505);
        if (!v137)
        {
          OUTLINED_FUNCTION_52_1();
          v211();
          swift_getKeyPath();
          OUTLINED_FUNCTION_25_12();
          sub_267675484(v212, v213, MEMORY[0x277D5C780]);
          OUTLINED_FUNCTION_51_2();
          sub_2676CA3EC();

          OUTLINED_FUNCTION_45_6();
          OUTLINED_FUNCTION_21_3(v215, v216, *(v214 - 256));
          v218 = v512;
          if (v217)
          {
            sub_2675EB7EC(v153, &qword_2801CC428, &unk_2676CEDD0);
            v219 = sub_2676CBE2C();
            v220 = sub_2676CC23C();
            v221 = OUTLINED_FUNCTION_5_5(v220);
            if (a2)
            {
              if (v221)
              {
                v222 = OUTLINED_FUNCTION_17_3();
                OUTLINED_FUNCTION_9_4(v222);
                OUTLINED_FUNCTION_4_18(&dword_2675D4000, v223, v224, "#ReplyPromptInterpreter read -> .readBodyOfSummarizedEmail");
                OUTLINED_FUNCTION_4_6();
              }

              v225 = OUTLINED_FUNCTION_7_21();
              v226(v225);
              v227 = *(v142 + 8);
              v228 = v506;
              v229 = v89;
              goto LABEL_63;
            }

            if (v221)
            {
              v253 = OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_9_4(v253);
              OUTLINED_FUNCTION_4_18(&dword_2675D4000, v254, v255, "#ReplyPromptInterpreter read -> .repeat");
              OUTLINED_FUNCTION_4_6();
            }

            v256 = OUTLINED_FUNCTION_7_21();
            v257(v256);
            v258 = *(v142 + 8);
            v259 = v506;
            v260 = v89;
LABEL_76:
            v258(v259, v260);
            *v512 = xmmword_2676D0B90;
            goto LABEL_77;
          }

          OUTLINED_FUNCTION_75();
          v241();
          KeyPath = swift_getKeyPath();
          sub_267675484(&qword_2801CCBA0, MEMORY[0x277D5C5A0], MEMORY[0x277D5C570]);
          OUTLINED_FUNCTION_51_2();
          OUTLINED_FUNCTION_52_1();
          sub_2676CA87C();

          OUTLINED_FUNCTION_53_6();
          OUTLINED_FUNCTION_21_3(v243, v244, KeyPath);
          if (v245)
          {
            sub_2675EB7EC(v153, &qword_2801CC048, &qword_2676CDAB0);
LABEL_133:
            v336 = sub_2676CBE2C();
            v337 = sub_2676CC23C();
            if (OUTLINED_FUNCTION_5_5(v337))
            {
              v338 = OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_9_4(v338);
              OUTLINED_FUNCTION_4_18(&dword_2675D4000, v339, v340, "#ReadingInputInterpreter got an off topic read parse, returning .no");
              OUTLINED_FUNCTION_9_22();
            }

            v341 = OUTLINED_FUNCTION_11_21();
            v342(v341);
            v343 = OUTLINED_FUNCTION_7_21();
            v344(v343);
            v345 = OUTLINED_FUNCTION_42_4();
            v346(v345);
            v261 = MEMORY[0x277D5BC80];
            goto LABEL_136;
          }

          (*(v492 + 32))(v490, v153, KeyPath);
          swift_getKeyPath();
          sub_2676CA84C();

          (*(v486 + 104))(v484, *MEMORY[0x277D5C578], v477);
          __swift_storeEnumTagSinglePayload(v484, 0, 1, v477);
          v270 = *(v476 + 48);
          sub_2676754CC(v485, v488, &qword_2801CCB80, &unk_2676D2A90);
          sub_2676754CC(v484, v488 + v270, &qword_2801CCB80, &unk_2676D2A90);
          OUTLINED_FUNCTION_21_3(v488, 1, v477);
          if (v271)
          {
            sub_2675EB7EC(v484, &qword_2801CCB80, &unk_2676D2A90);
            OUTLINED_FUNCTION_58_3(v485);
            OUTLINED_FUNCTION_21_3(&qword_2801CCB80 + v270, 1, v477);
            if (v137)
            {
              sub_2675EB7EC(&qword_2801CCB80, &qword_2801CCB80, &unk_2676D2A90);
              OUTLINED_FUNCTION_53_6();
LABEL_158:
              v422 = sub_2676CBE2C();
              v423 = sub_2676CC23C();
              v424 = OUTLINED_FUNCTION_5_5(v423);
              if (a2)
              {
                if (v424)
                {
                  v425 = OUTLINED_FUNCTION_17_3();
                  OUTLINED_FUNCTION_9_4(v425);
                  OUTLINED_FUNCTION_4_18(&dword_2675D4000, v426, v427, "#ReplyPromptInterpreter read -> .readBodyOfSummarizedEmail");
                  OUTLINED_FUNCTION_9_22();
                }

                v428 = OUTLINED_FUNCTION_10_15();
                v429(v428);
                v430 = OUTLINED_FUNCTION_11_21();
                v431(v430);
                v432 = OUTLINED_FUNCTION_7_21();
                v433(v432);
                v228 = OUTLINED_FUNCTION_42_4();
LABEL_63:
                v227(v228, v229);
                *v512 = 0;
                v218[1] = 0;
LABEL_77:
                *(v218 + 16) = 2;
                v261 = MEMORY[0x277D5BC88];
LABEL_136:
                v347 = *v261;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD120, &unk_2676D2AB0);
                OUTLINED_FUNCTION_4_22();
                return (*(v348 + 104))(v218, v347);
              }

              if (v424)
              {
                v434 = OUTLINED_FUNCTION_17_3();
                OUTLINED_FUNCTION_9_4(v434);
                OUTLINED_FUNCTION_4_18(&dword_2675D4000, v435, v436, "#ReplyPromptInterpreter read -> .repeat");
                OUTLINED_FUNCTION_9_22();
              }

              v437 = OUTLINED_FUNCTION_10_15();
              v438(v437);
              v439 = OUTLINED_FUNCTION_11_21();
              v440(v439);
              v441 = OUTLINED_FUNCTION_7_21();
              v442(v441);
              v259 = OUTLINED_FUNCTION_42_4();
              goto LABEL_76;
            }
          }

          else
          {
            sub_2676754CC(v488, v469, &qword_2801CCB80, &unk_2676D2A90);
            OUTLINED_FUNCTION_21_3(v488 + v270, 1, v477);
            if (!v332)
            {
              OUTLINED_FUNCTION_36_5();
              (*(v419 + 32))(v467, v488 + v270, v477);
              sub_267675484(&qword_2801CCBA8, MEMORY[0x277D5C580], MEMORY[0x277D5C588]);
              LODWORD(v524) = sub_2676CBF1C();
              v420 = off_2801CCB88;
              v421 = OUTLINED_FUNCTION_88_0();
              v420(v421);
              sub_2675EB7EC(v484, &qword_2801CCB80, &unk_2676D2A90);
              sub_2675EB7EC(v485, &qword_2801CCB80, &unk_2676D2A90);
              (v420)(v469, v477);
              OUTLINED_FUNCTION_53_6();
              sub_2675EB7EC(v488, &qword_2801CCB80, &unk_2676D2A90);
              if (v524)
              {
                goto LABEL_158;
              }

              goto LABEL_132;
            }

            sub_2675EB7EC(v484, &qword_2801CCB80, &unk_2676D2A90);
            OUTLINED_FUNCTION_58_3(v485);
            OUTLINED_FUNCTION_27_5();
            v333(v469, v477);
          }

          sub_2675EB7EC(&qword_2801CCB80, &qword_2801CCB78, &qword_2676D05D8);
          OUTLINED_FUNCTION_53_6();
LABEL_132:
          v334 = OUTLINED_FUNCTION_10_15();
          v335(v334);
          goto LABEL_133;
        }

        v504[0] = v142;
        sub_2675EB7EC(v502, &qword_2801CCCD0, &unk_2676D0C60);
        v155 = v89;
        v153(v503, v506, v89);
        sub_2676CBA6C();
        v156 = sub_267675484(&qword_2801CC680, MEMORY[0x277D5C828], MEMORY[0x277D5C810]);
        OUTLINED_FUNCTION_34_9();
        sub_2676CA3FC();
        OUTLINED_FUNCTION_21_3(v498, 1, v501);
        a3 = v512;
        if (!v137)
        {
          OUTLINED_FUNCTION_52_1();
          v230();
          swift_getKeyPath();
          OUTLINED_FUNCTION_25_12();
          v233 = sub_267675484(v231, v232, MEMORY[0x277D5C780]);
          OUTLINED_FUNCTION_36_5();
          v524 = v156;
          sub_2676CA3EC();

          OUTLINED_FUNCTION_45_6();
          v235 = *(v234 - 256);
          OUTLINED_FUNCTION_21_3(v236, v237, v235);
          v523 = v233;
          if (v238)
          {
            sub_2675EB7EC(v503, &qword_2801CC428, &unk_2676CEDD0);
            OUTLINED_FUNCTION_46_5();
            v239 = v495;
            v240 = v493;
          }

          else
          {
            swift_getKeyPath();
            OUTLINED_FUNCTION_26_8();
            sub_267675484(v262, v263, MEMORY[0x277D5C6A8]);
            OUTLINED_FUNCTION_52_1();
            v264 = sub_2676CA8CC();

            (*(v500 + 8))(v503, v235);
            sub_267698E74(v264);

            v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
            OUTLINED_FUNCTION_21_3(v478, 1, v265);
            v239 = v495;
            v240 = v493;
            if (v266)
            {
              v267 = &qword_2801CC168;
              v268 = &unk_2676CF510;
              v269 = v478;
            }

            else
            {
              v154 = swift_getKeyPath();
              OUTLINED_FUNCTION_23_9();
              sub_267675484(v285, v286, MEMORY[0x277D5C470]);
              sub_2676CA87C();

              OUTLINED_FUNCTION_14_2();
              (*(v287 + 8))(v478, v265);
              v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
              OUTLINED_FUNCTION_21_3(v470, 1, v288);
              if (!v289)
              {
                swift_getKeyPath();
                v155 = v494;
                sub_2676CA84C();

                OUTLINED_FUNCTION_14_2();
                (*(v418 + 8))(v470, v288);
                OUTLINED_FUNCTION_46_5();
                goto LABEL_96;
              }

              v267 = &qword_2801CC050;
              v268 = &unk_2676D0C20;
              v269 = v470;
            }

            sub_2675EB7EC(v269, v267, v268);
            OUTLINED_FUNCTION_46_5();
          }

          v290 = OUTLINED_FUNCTION_50_4(&v517);
          __swift_storeEnumTagSinglePayload(v290, v291, v292, v154);
LABEL_96:
          v293 = *MEMORY[0x277D5C478];
          v294 = *MEMORY[0x277D5C478];
          v522 = *(v497 + 104);
          v522(v240, v294, v154);
          __swift_storeEnumTagSinglePayload(v240, 0, 1, v154);
          v295 = *(v239 + 48);
          sub_2676754CC(v155, v499, &qword_2801CC618, &qword_2676CF520);
          sub_2676754CC(v240, v499 + v295, &qword_2801CC618, &qword_2676CF520);
          OUTLINED_FUNCTION_15_11(v499);
          if (v137)
          {
            v296 = &qword_2801CC618;
            v297 = OUTLINED_FUNCTION_88_0();
            sub_2675EB7EC(v297, v298, &qword_2676CF520);
            OUTLINED_FUNCTION_49_3();
            OUTLINED_FUNCTION_15_11(&qword_2801CC618 + v295);
            if (v137)
            {
              goto LABEL_118;
            }
          }

          else
          {
            sub_2676754CC(v499, v480, &qword_2801CC618, &qword_2676CF520);
            OUTLINED_FUNCTION_15_11(v499 + v295);
            if (!v299)
            {
              LODWORD(v521) = v293;
              OUTLINED_FUNCTION_51_2();
              (*(v349 + 32))(v475, v499 + v295, v154);
              OUTLINED_FUNCTION_24_9();
              sub_267675484(v350, v351, MEMORY[0x277D5C490]);
              v352 = sub_2676CBF1C();
              MEMORY[0](v475, v154);
              OUTLINED_FUNCTION_75();
              sub_2675EB7EC(v353, v354, v355);
              OUTLINED_FUNCTION_75();
              sub_2675EB7EC(v356, v357, v358);
              v239 = v495;
              MEMORY[0](v480, v154);
              OUTLINED_FUNCTION_75();
              sub_2675EB7EC(v359, v360, v361);
              if (v352)
              {
                goto LABEL_144;
              }

LABEL_105:
              swift_getKeyPath();
              sub_2676CA3EC();

              OUTLINED_FUNCTION_45_6();
              v303 = *(v302 - 256);
              OUTLINED_FUNCTION_21_3(v304, v305, v303);
              if (v137)
              {
                sub_2675EB7EC(v481, &qword_2801CC428, &unk_2676CEDD0);
              }

              else
              {
                swift_getKeyPath();
                OUTLINED_FUNCTION_26_8();
                sub_267675484(v306, v307, MEMORY[0x277D5C6A8]);
                v308 = sub_2676CA8CC();

                (*(v500 + 8))(v481, v303);
                OUTLINED_FUNCTION_36_5();
                sub_267698E74(v308);

                v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
                OUTLINED_FUNCTION_21_3(v303, 1, v309);
                if (!v310)
                {
                  swift_getKeyPath();
                  OUTLINED_FUNCTION_23_9();
                  sub_267675484(v371, v372, MEMORY[0x277D5C470]);
                  OUTLINED_FUNCTION_36_5();
                  sub_2676CA87C();

                  OUTLINED_FUNCTION_14_2();
                  (*(v373 + 8))(v303, v309);
                  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
                  OUTLINED_FUNCTION_21_3(v303, 1, v374);
                  v311 = v521;
                  if (!v375)
                  {
                    swift_getKeyPath();
                    v155 = v482;
                    sub_2676CA84C();

                    OUTLINED_FUNCTION_14_2();
                    (*(v443 + 8))(v303, v374);
                    OUTLINED_FUNCTION_46_5();
                    goto LABEL_113;
                  }

                  sub_2675EB7EC(v303, &qword_2801CC050, &unk_2676D0C20);
LABEL_112:
                  OUTLINED_FUNCTION_50_4(v504);
                  OUTLINED_FUNCTION_46_5();
                  __swift_storeEnumTagSinglePayload(v312, v313, v314, v303);
LABEL_113:
                  v522(v489, v311, v303);
                  __swift_storeEnumTagSinglePayload(v489, 0, 1, v303);
                  v315 = *(v239 + 48);
                  sub_2676754CC(v155, v483, &qword_2801CC618, &qword_2676CF520);
                  sub_2676754CC(v489, v483 + v315, &qword_2801CC618, &qword_2676CF520);
                  OUTLINED_FUNCTION_15_11(v483);
                  if (!v137)
                  {
                    sub_2676754CC(v483, v474, &qword_2801CC618, &qword_2676CF520);
                    OUTLINED_FUNCTION_15_11(v483 + v315);
                    if (!v316)
                    {
                      (*(v497 + 32))(v475, v483 + v315, v303);
                      OUTLINED_FUNCTION_24_9();
                      sub_267675484(v376, v377, MEMORY[0x277D5C490]);
                      v378 = sub_2676CBF1C();
                      v379 = *(v497 + 8);
                      v379(v475, v303);
                      sub_2675EB7EC(v489, &qword_2801CC618, &qword_2676CF520);
                      sub_2675EB7EC(v155, &qword_2801CC618, &qword_2676CF520);
                      v379(v474, v303);
                      sub_2675EB7EC(v483, &qword_2801CC618, &qword_2676CF520);
                      if (v378)
                      {
                        goto LABEL_144;
                      }

LABEL_123:
                      v318 = sub_2676CBE2C();
                      v319 = sub_2676CC23C();
                      if (os_log_type_enabled(v318, v319))
                      {
                        *OUTLINED_FUNCTION_17_3() = 0;
                        OUTLINED_FUNCTION_62_0(&dword_2675D4000, v320, v321, "#ReplyPromptInterpreter received reply parse");
                        OUTLINED_FUNCTION_2_5();
                      }

                      v322 = swift_getKeyPath();
                      OUTLINED_FUNCTION_33_7(v322);

                      OUTLINED_FUNCTION_45_6();
                      v324 = *(v323 - 256);
                      OUTLINED_FUNCTION_21_3(v325, v326, v324);
                      v327 = v512;
                      if (v137)
                      {
                        v328 = OUTLINED_FUNCTION_8_22();
                        v329(v328);
                        v330 = OUTLINED_FUNCTION_29_11();
                        v331(v330);
                        sub_2675EB7EC(v155, &qword_2801CC428, &unk_2676CEDD0);
                        v363 = 0;
                        v365 = 0;
                      }

                      else
                      {
                        v362 = swift_getKeyPath();
                        v363 = OUTLINED_FUNCTION_57_8(v362);
                        v365 = v364;

                        v366 = OUTLINED_FUNCTION_8_22();
                        v367(v366);
                        v368 = OUTLINED_FUNCTION_29_11();
                        v369(v368);
                        OUTLINED_FUNCTION_27_5();
                        v370(v155, v324);
                      }

                      *v327 = v363;
                      v327[1] = v365;
                      *(v327 + 16) = 0;
                      goto LABEL_150;
                    }

                    OUTLINED_FUNCTION_29_3(v489);
                    OUTLINED_FUNCTION_29_3(v155);
                    OUTLINED_FUNCTION_27_5();
                    v317(v474, v303);
LABEL_122:
                    sub_2675EB7EC(v483, &qword_2801CC610, &unk_2676D0C10);
                    goto LABEL_123;
                  }

                  OUTLINED_FUNCTION_29_3(v489);
                  OUTLINED_FUNCTION_29_3(v155);
                  OUTLINED_FUNCTION_15_11(v483 + v315);
                  if (!v137)
                  {
                    goto LABEL_122;
                  }

                  v296 = v483;
LABEL_118:
                  sub_2675EB7EC(v296, &qword_2801CC618, &qword_2676CF520);
LABEL_144:
                  v380 = sub_2676CBE2C();
                  v381 = sub_2676CC23C();
                  if (os_log_type_enabled(v380, v381))
                  {
                    *OUTLINED_FUNCTION_17_3() = 0;
                    OUTLINED_FUNCTION_62_0(&dword_2675D4000, v382, v383, "#ReplyPromptInterpreter received reply all parse");
                    OUTLINED_FUNCTION_2_5();
                  }

                  v384 = swift_getKeyPath();
                  OUTLINED_FUNCTION_33_7(v384);

                  OUTLINED_FUNCTION_45_6();
                  v386 = *(v385 - 256);
                  OUTLINED_FUNCTION_21_3(v387, v388, v386);
                  v327 = v512;
                  if (v137)
                  {
                    v389 = OUTLINED_FUNCTION_8_22();
                    v390(v389);
                    v391 = OUTLINED_FUNCTION_29_11();
                    v392(v391);
                    sub_2675EB7EC(v155, &qword_2801CC428, &unk_2676CEDD0);
                    v394 = 0;
                    v396 = 0;
                  }

                  else
                  {
                    v393 = swift_getKeyPath();
                    v394 = OUTLINED_FUNCTION_57_8(v393);
                    v396 = v395;

                    v397 = OUTLINED_FUNCTION_8_22();
                    v398(v397);
                    v399 = OUTLINED_FUNCTION_29_11();
                    v400(v399);
                    OUTLINED_FUNCTION_27_5();
                    v401(v155, v386);
                  }

                  *v327 = v394;
                  v327[1] = v396;
                  *(v327 + 16) = 1;
LABEL_150:
                  v402 = *MEMORY[0x277D5BC88];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD120, &unk_2676D2AB0);
                  OUTLINED_FUNCTION_4_22();
                  return (*(v403 + 104))(v327, v402);
                }

                sub_2675EB7EC(v303, &qword_2801CC168, &unk_2676CF510);
              }

              v311 = v521;
              goto LABEL_112;
            }

            v300 = OUTLINED_FUNCTION_88_0();
            sub_2675EB7EC(v300, v301, &qword_2676CF520);
            OUTLINED_FUNCTION_49_3();
            (*(v497 + 8))(v480, v154);
          }

          LODWORD(v521) = v293;
          sub_2675EB7EC(&qword_2801CC618, &qword_2801CC610, &unk_2676D0C10);
          goto LABEL_105;
        }

        sub_2675EB7EC(v498, &qword_2801CC620, &unk_2676D0C30);
        v153(v503, v506, v89);
        sub_2676CB4EC();
        sub_267675484(&qword_2801CCA70, MEMORY[0x277D5C3A0], MEMORY[0x277D5C398]);
        OUTLINED_FUNCTION_34_9();
        sub_2676CA3FC();
        v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCE8, &unk_2676D0C80);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v491, 1, v157);
        sub_2675EB7EC(v491, &qword_2801CCCC0, &unk_2676D2A80);
        if (EnumTagSinglePayload != 1)
        {
          v246 = sub_2676CBE2C();
          v247 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v247))
          {
            v248 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v248);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v249, v250, "#ReplyPromptInterpreter received reply parse");
            OUTLINED_FUNCTION_9_22();
          }

          v251 = OUTLINED_FUNCTION_3_21();
          v252(v251);
          *v512 = 0;
          a3[1] = 0;
          *(a3 + 16) = 0;
          goto LABEL_15;
        }

        v159 = OUTLINED_FUNCTION_32_6();
        (v153)(v159);
        sub_2676CB4CC();
        sub_267675484(&qword_2801CCA60, MEMORY[0x277D5C380], MEMORY[0x277D5C368]);
        sub_2676CA3FC();
        OUTLINED_FUNCTION_21_3(v479, 1, v487);
        if (!v137)
        {
          OUTLINED_FUNCTION_51_2();
          (*(v272 + 32))(v473, v479, v487);
          swift_getKeyPath();
          sub_267675484(&qword_2801CCD28, MEMORY[0x277D5C3C8], MEMORY[0x277D5C340]);
          OUTLINED_FUNCTION_88_0();
          sub_2676CA3EC();

          v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCA0, &qword_2676D0BE8);
          v274 = __swift_getEnumTagSinglePayload(v471, 1, v273);
          sub_2675EB7EC(v471, &qword_2801CCCA8, &unk_2676D0BF0);
          v275 = sub_2676CBE2C();
          v276 = sub_2676CC23C();
          v277 = OUTLINED_FUNCTION_5_5(v276);
          if (v274 == 1)
          {
            if (a2)
            {
              if (v277)
              {
                v278 = OUTLINED_FUNCTION_17_3();
                OUTLINED_FUNCTION_9_4(v278);
                OUTLINED_FUNCTION_4_18(&dword_2675D4000, v279, v280, "#ReplyPromptInterpreter read -> .readBodyOfSummarizedEmail");
                OUTLINED_FUNCTION_4_6();
              }

              v281 = OUTLINED_FUNCTION_28_8();
              v282(v281);
              v283 = OUTLINED_FUNCTION_43_5();
              v284(v283);
              *v512 = 0;
              a3[1] = 0;
              goto LABEL_14;
            }

            if (v277)
            {
              v451 = OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_9_4(v451);
              OUTLINED_FUNCTION_4_18(&dword_2675D4000, v452, v453, "#ReplyPromptInterpreter received read -> repeat parse");
              OUTLINED_FUNCTION_4_6();
            }

            v454 = OUTLINED_FUNCTION_28_8();
            v455(v454);
            v456 = OUTLINED_FUNCTION_43_5();
            v457(v456);
            goto LABEL_171;
          }

          if (v277)
          {
            v411 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v411);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v412, v413, "#ReadingInputInterpreter got an off topic read parse, returning .no");
            OUTLINED_FUNCTION_4_6();
          }

          v414 = OUTLINED_FUNCTION_28_8();
          v415(v414);
          v416 = OUTLINED_FUNCTION_43_5();
          v417(v416);
LABEL_53:
          v141 = MEMORY[0x277D5BC80];
          goto LABEL_54;
        }

        sub_2675EB7EC(v479, &qword_2801CCCB0, &unk_2676D2A70);
        v160 = OUTLINED_FUNCTION_32_6();
        (v153)(v160);
        sub_2676CB50C();
        sub_267675484(&qword_2801CCA68, MEMORY[0x277D5C3C0], MEMORY[0x277D5C3B8]);
        OUTLINED_FUNCTION_34_9();
        sub_2676CA3FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCF0, &unk_2676D2AC0);
        v161 = OUTLINED_FUNCTION_33_4();
        v164 = __swift_getEnumTagSinglePayload(v161, v162, v163);
        sub_2675EB7EC(v472, &qword_2801CCC98, &qword_2676D0BE0);
        if (v164 != 1)
        {
          v404 = sub_2676CBE2C();
          v405 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v405))
          {
            v406 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v406);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v407, v408, "#ReplyPromptInterpreter received repeat parse");
            OUTLINED_FUNCTION_9_22();
          }

          v409 = OUTLINED_FUNCTION_3_21();
          v410(v409);
LABEL_171:
          v140 = xmmword_2676D0B90;
          goto LABEL_13;
        }

        v165 = OUTLINED_FUNCTION_32_6();
        (v153)(v165);
        sub_2676CB49C();
        sub_267675484(&qword_2801CCA78, MEMORY[0x277D5C350], MEMORY[0x277D5C348]);
        OUTLINED_FUNCTION_34_9();
        sub_2676CA3FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCF8, &unk_2676D0C90);
        v166 = OUTLINED_FUNCTION_33_4();
        v169 = __swift_getEnumTagSinglePayload(v166, v167, v168);
        sub_2675EB7EC(v468, &qword_2801CCC90, &qword_2676D0BD8);
        if (v169 != 1)
        {
          v444 = sub_2676CBE2C();
          v445 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v445))
          {
            v446 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v446);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v447, v448, "#ReplyPromptInterpreter received skip parse");
            OUTLINED_FUNCTION_9_22();
          }

          v449 = OUTLINED_FUNCTION_3_21();
          v450(v449);
          v140 = xmmword_2676D0BB0;
          goto LABEL_13;
        }

        v170 = OUTLINED_FUNCTION_32_6();
        (v153)(v170);
        sub_2676CB4DC();
        sub_267675484(&qword_2801CCA80, MEMORY[0x277D5C390], MEMORY[0x277D5C388]);
        OUTLINED_FUNCTION_34_9();
        sub_2676CA3FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCD00, &qword_2676D2AD0);
        v171 = OUTLINED_FUNCTION_33_4();
        OUTLINED_FUNCTION_21_3(v171, v172, v173);
        if (!v137)
        {
          sub_2675EB7EC(v466, &qword_2801CCC88, &qword_2676D0BD0);
          v458 = sub_2676CBE2C();
          v459 = sub_2676CC23C();
          if (OUTLINED_FUNCTION_5_5(v459))
          {
            v461 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v461);
            OUTLINED_FUNCTION_4_18(&dword_2675D4000, v462, v463, "#ReplyPromptInterpreter received stop parse");
            OUTLINED_FUNCTION_9_22();
          }

          v464 = OUTLINED_FUNCTION_3_21();
          v465(v464);
          v140 = xmmword_2676D0B80;
          goto LABEL_13;
        }

        v174 = OUTLINED_FUNCTION_3_21();
        v175(v174);
        sub_2675EB7EC(v466, &qword_2801CCC88, &qword_2676D0BD0);
LABEL_50:
        v199 = sub_2676CBE2C();
        v200 = sub_2676CC23C();
        if (OUTLINED_FUNCTION_5_5(v200))
        {
          v201 = OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_9_4(v201);
          OUTLINED_FUNCTION_4_18(&dword_2675D4000, v202, v203, "#ReplyPromptInterpreter got an invalid parse or no response, returning .no");
          OUTLINED_FUNCTION_4_6();
        }

        goto LABEL_53;
      }
    }

    else
    {
      v196 = OUTLINED_FUNCTION_34_9();
      (v144)(v196);
      v148 = v510;
      v197 = OUTLINED_FUNCTION_33_4();
      __swift_storeEnumTagSinglePayload(v197, v198, 1, v89);
    }

    sub_2675EB7EC(v148, &qword_2801CC640, &unk_2676CF550);
    a3 = v512;
    goto LABEL_50;
  }

  (*(v511 + 32))(v509, v520, v521);
  (*(v511 + 16))(v508, v509, v521);
  v176 = (*(v511 + 88))(v508, v521);
  if (v176 == *MEMORY[0x277D5BED8])
  {
    v177 = sub_2676CBE2C();
    v178 = sub_2676CC23C();
    v179 = v512;
    if (OUTLINED_FUNCTION_5_5(v178))
    {
      v180 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v180);
      OUTLINED_FUNCTION_4_18(&dword_2675D4000, v181, v182, "#ReplyPromptInterpreter confirmed confirmation -> .yes");
      OUTLINED_FUNCTION_4_6();
    }

    (*(v511 + 8))(v509, v521);
    v183 = xmmword_2676D0BA0;
LABEL_41:
    *v179 = v183;
    *(v179 + 16) = 2;
    v189 = *MEMORY[0x277D5BC88];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD120, &unk_2676D2AB0);
    OUTLINED_FUNCTION_4_22();
    return (*(v190 + 104))(v179, v189);
  }

  v179 = v512;
  if (v176 == *MEMORY[0x277D5BED0])
  {
    v184 = sub_2676CBE2C();
    v185 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v185))
    {
      v186 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v186);
      OUTLINED_FUNCTION_4_18(&dword_2675D4000, v187, v188, "#ReplyPromptInterpreter rejected confirmation -> .no");
      OUTLINED_FUNCTION_4_6();
    }

    (*(v511 + 8))(v509, v521);
    v183 = xmmword_2676CF3C0;
    goto LABEL_41;
  }

  result = sub_2676CC58C();
  __break(1u);
  return result;
}

uint64_t sub_267675484(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2676754CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_22();
  (*(v6 + 16))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ReplyPromptInterpreter(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal17ReplyPromptOptionO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void OUTLINED_FUNCTION_9_22()
{

  JUMPOUT(0x26D5FEA80);
}

uint64_t OUTLINED_FUNCTION_33_7(uint64_t a1)
{

  return sub_2676CA3EC();
}

uint64_t OUTLINED_FUNCTION_49_3()
{

  return sub_2675EB7EC(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_57_8(uint64_t a1)
{

  return sub_2676CA89C();
}

uint64_t OUTLINED_FUNCTION_58_3(uint64_t a1)
{

  return sub_2675EB7EC(a1, v1, v2);
}

uint64_t type metadata accessor for ResolveDateTime(uint64_t a1)
{
  result = qword_2801CD3A0;
  if (!qword_2801CD3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267675964(uint64_t a1)
{
  sub_267675A08(319);
  if (v1 <= 0x3F)
  {
    sub_267675A6C();
    if (v2 <= 0x3F)
    {
      sub_267675AC8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_267675A08(uint64_t a1)
{
  if (!qword_2801CCE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC1F0, &unk_2676CE100);
    v1 = sub_2676CC2FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2801CCE68);
    }
  }
}

unint64_t sub_267675A6C()
{
  result = qword_2801CD3B0;
  if (!qword_2801CD3B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2801CD3B0);
  }

  return result;
}

void sub_267675AC8()
{
  if (!qword_2801CC3A0)
  {
    v0 = sub_2676CC2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2801CC3A0);
    }
  }
}

uint64_t sub_267675B18(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_267675B38, 0, 0);
}

uint64_t sub_267675B38()
{
  v1 = v0[3];
  v2 = type metadata accessor for ResolveDateTime(0);
  v3 = *(v1 + *(v2 + 24));
  if (v3 == 2 || (v3 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 24));
    v14 = swift_task_alloc();
    v0[4] = v14;
    *v14 = v0;
    v14[1] = sub_267675D74;

    return sub_2675F14B4();
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v4 = sub_2676CBE4C();
    __swift_project_value_buffer(v4, qword_2801CDC90);
    v5 = sub_2676CBE2C();
    v6 = sub_2676CC23C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2675D4000, v5, v6, "#ResolveDateTime: new emails -> one week interval", v7, 2u);
      MEMORY[0x26D5FEA80](v7, -1, -1);
    }

    v8 = v0[2];

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1F8, &qword_2676CEBA0);
    v10 = *(v9 + 48);
    sub_2676C907C();
    v11 = sub_2676C90CC();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
    sub_2676C90AC();
    __swift_storeEnumTagSinglePayload(v8 + v10, 0, 1, v11);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_267675D74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_267675E78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26762C5D8;

  return sub_267675B18(a1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_267675F24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_267675F64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267675FE4()
{
  v1 = v0[2];
  v3 = v1[1];
  v2 = v1[2];
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
    v5 = swift_task_alloc();
    v0[3] = v5;
    *v5 = v0;
    v5[1] = sub_2676760EC;

    return sub_2675ED8D0(v3, v2);
  }

  else
  {
    v7 = v0[1];
    v8 = MEMORY[0x277D84F90];

    return v7(v8);
  }
}

uint64_t sub_2676760EC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2676761EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2675F9B40;

  return sub_267675FC4();
}

uint64_t sub_26767627C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2676CABFC();
  OUTLINED_FUNCTION_5_11();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_267676644(a1);
  v24 = v10;
  if (*(v10 + 16))
  {
    v12 = sub_2675EEF84(v10);
    if (v11 == 1)
    {
    }

    else
    {
      v13 = v11;
      v14 = qword_2801D3EB0;
      swift_beginAccess();
      sub_267678824(v2 + v14, &v21);
      if (v22)
      {
        sub_2675DD73C(&v21, v23);
      }

      else
      {
        v15 = sub_2676CAB5C();
        swift_allocObject();
        v16 = sub_2676CAB4C();
        v23[3] = v15;
        v23[4] = &off_2878AD3E8;
        v23[0] = v16;
        if (v22)
        {
          sub_2675E35CC(&v21, &qword_2801CC6A8, &unk_2676CF5F0);
        }
      }

      (*(v6 + 16))(v9, v2 + qword_2801D3EA0, v4);
      v17 = sub_2675EF208(v23, v9);
      (*(v6 + 8))(v9, v4);
      if (v17 < 1)
      {
        sub_267678894(v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v23);
        return v24;
      }

      else
      {
        v18 = sub_26767627C(v24);
        sub_267678894(v12, v13);

        __swift_destroy_boxed_opaque_existential_1(v23);
        return v18;
      }
    }
  }

  else
  {

    return 1;
  }

  return v12;
}

uint64_t sub_267676644(uint64_t a1)
{
  if (*(v1 + 48) == 255)
  {

    return a1;
  }

  else
  {
    v3 = v1;
    v4 = OUTLINED_FUNCTION_2_24();
    sub_2676788B8(v4, v5, v6);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v7 = sub_2676CBE4C();
    __swift_project_value_buffer(v7, qword_2801CDC90);
    v8 = sub_2676CBE2C();
    v9 = sub_2676CC23C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2675D4000, v8, v9, "#ResolveRecipientsFlow merging disambiguation response into ContactState", v10, 2u);
      OUTLINED_FUNCTION_5_12();
      MEMORY[0x26D5FEA80]();
    }

    for (i = 4; ; ++i)
    {
      if (i - *(a1 + 16) == 4)
      {
        v13 = OUTLINED_FUNCTION_6_18(0xF000000000000007);
        v14 = OUTLINED_FUNCTION_2_24();
        sub_2676788D0(v14, v15, v16);
        if ((~v13 & 0xF000000000000007) == 0)
        {
          goto LABEL_15;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC510, &qword_2676CF268);
        a1 = swift_allocObject();
        *(a1 + 16) = xmmword_2676CDE20;
        *(a1 + 32) = v13;
LABEL_20:
        sub_267677180(v3);
        return a1;
      }

      v12 = *(a1 + 8 * i);
      if (v12 >> 62 == 2)
      {
        break;
      }
    }

    v17 = OUTLINED_FUNCTION_6_18(v12);
    v18 = OUTLINED_FUNCTION_2_24();
    sub_2676788D0(v18, v19, v20);
    if ((~v17 & 0xF000000000000007) == 0)
    {

LABEL_15:

      goto LABEL_20;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2675E096C(a1);
      a1 = v22;
    }

    if ((i - 4) < *(a1 + 16))
    {
      *(a1 + 8 * i) = v17;

      goto LABEL_20;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_267676864(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2676C2AC8(0, v1, 0);
    v2 = v12;
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00) - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      sub_26767699C(v5, &v11);
      v7 = v11;
      v12 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2676C2AC8((v8 > 1), v9 + 1, 1);
        v2 = v12;
      }

      *(v2 + 16) = v9 + 1;
      *(v2 + 8 * v9 + 32) = v7;
      v5 += v6;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26767699C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v78 = a2;
  v3 = sub_2676C8C8C();
  OUTLINED_FUNCTION_5_11();
  v72 = v4;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v71 = &v68 - v10;
  MEMORY[0x28223BE20](v9);
  v73 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v68 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC360, &unk_2676D3660);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v68 - v19;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC368, &unk_2676CEB00);
  OUTLINED_FUNCTION_5_11();
  v75 = v21;
  MEMORY[0x28223BE20](v22);
  v74 = &v68 - v23;
  swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v25 = sub_2676787DC(&qword_2801CBF70, MEMORY[0x277D5C6D0], MEMORY[0x277D5C6A8]);
  sub_2676787DC(&qword_2801CC2D0, MEMORY[0x277D5C640], MEMORY[0x277D5C618]);
  v70 = v25;
  v76 = a1;
  sub_2676CA87C();

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  if (__swift_getEnumTagSinglePayload(v17, 1, v26) == 1)
  {
    sub_2675E35CC(v17, &qword_2801CC068, &unk_2676D4E00);
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v77);
    v27 = v78;
LABEL_4:
    sub_2675E35CC(v20, &qword_2801CC360, &unk_2676D3660);
LABEL_5:
    v32 = swift_allocBox();
    result = (*(*(v24 - 8) + 16))(v33, v76, v24);
    v35 = 0x4000000000000000;
    goto LABEL_6;
  }

  v68 = v8;
  v69 = v3;
  OUTLINED_FUNCTION_5_11();
  v29 = v28;
  (*(v30 + 16))(v15, v17, v26);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v26);
  sub_2676CB61C();
  sub_2676CB78C();
  sub_2676787DC(&qword_2801CC378, MEMORY[0x277D5C4C8], MEMORY[0x277D5C4B0]);
  v27 = v78;
  sub_2676CA8EC();
  (*(v29 + 8))(v17, v26);
  v31 = v77;
  if (__swift_getEnumTagSinglePayload(v20, 1, v77) == 1)
  {
    goto LABEL_4;
  }

  v36 = v74;
  v37 = v75;
  (*(v75 + 32))(v74, v20, v31);
  swift_getKeyPath();
  v38 = sub_2676CA89C();
  v40 = v39;

  if (!v40)
  {
    (*(v37 + 8))(v36, v31);
    goto LABEL_5;
  }

  swift_getKeyPath();
  sub_2676CA89C();
  v42 = v41;

  if (!v42)
  {
  }

  v44 = v72;
  v43 = v73;
  v45 = v68;
  static MailAddresseePrototype.from(name:email:)(v38, v73);

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v46 = sub_2676CBE4C();
  __swift_project_value_buffer(v46, qword_2801CDC90);
  v47 = *(v44 + 16);
  v48 = v71;
  v49 = v69;
  v47(v71, v43, v69);
  v50 = sub_2676CBE2C();
  v51 = sub_2676CC23C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v79 = v76;
    *v52 = 136315138;
    v47(v45, v48, v49);
    v53 = sub_2676CBFBC();
    v55 = v54;
    v56 = OUTLINED_FUNCTION_5_19();
    v57(v56);
    v58 = sub_2676B0B84(v53, v55, &v79);

    *(v52 + 4) = v58;
    OUTLINED_FUNCTION_4_23();
    _os_log_impl(v59, v60, v61, v62, v63, v64);
    __swift_destroy_boxed_opaque_existential_1(v76);
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
    v43 = v73;
    OUTLINED_FUNCTION_5_12();
    MEMORY[0x26D5FEA80]();
  }

  else
  {

    v65 = OUTLINED_FUNCTION_5_19();
    v66(v65);
  }

  (*(v75 + 8))(v74, v77);
  v27 = v78;
  v32 = swift_allocBox();
  result = (*(v44 + 32))(v67, v43, v49);
  v35 = 0xC000000000000000;
LABEL_6:
  *v27 = v35 | v32;
  return result;
}

uint64_t sub_267677114@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2676CB5FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_267677180(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v3 = *(a1 + 48);
  *(a1 + 48) = -1;
  return sub_2676788D0(v2, v1, v3);
}

uint64_t sub_26767719C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v187 = a4;
  v193 = a2;
  v185 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCED8, &unk_2676D1390);
  MEMORY[0x28223BE20](v5 - 8);
  v186 = &v173 - v6;
  v190 = sub_2676CAB1C();
  v7 = *(v190 - 8);
  v8 = MEMORY[0x28223BE20](v190);
  v10 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v173 - v12;
  MEMORY[0x28223BE20](v11);
  v188 = &v173 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  MEMORY[0x28223BE20](v15 - 8);
  v177 = &v173 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v173 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  MEMORY[0x28223BE20](v20 - 8);
  v184 = &v173 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  MEMORY[0x28223BE20](v22 - 8);
  v181 = (&v173 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  MEMORY[0x28223BE20](v24 - 8);
  v180 = &v173 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  MEMORY[0x28223BE20](v26 - 8);
  v179 = &v173 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  MEMORY[0x28223BE20](v28 - 8);
  v178 = &v173 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v173 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB50, &qword_2676D05A8);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v173 - v34;
  v176 = sub_2676CAA9C();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v174 = &v173 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_2676CAECC();
  v191 = *(v189 - 8);
  v37 = MEMORY[0x28223BE20](v189);
  v38 = MEMORY[0x28223BE20](v37);
  v183 = &v173 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v41 = MEMORY[0x28223BE20](v40);
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v173 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v173 - v46;
  MEMORY[0x28223BE20](v45);
  v52 = &v173 - v51;
  v53 = v187;
  v192 = a3;
  v187 = v7;
  switch(v53)
  {
    case 1:
      if ((~v185 & 0xF000000000000007) == 0 || (v185 & 0xE000000000000000) != 0x8000000000000000)
      {
        v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
        v123 = swift_allocBox();
        v190 = v124;
        v191 = v123;
        v125 = sub_2676CB80C();
        __swift_storeEnumTagSinglePayload(v35, 1, 1, v125);
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
        __swift_storeEnumTagSinglePayload(v32, 1, 1, v126);
        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
        __swift_storeEnumTagSinglePayload(v178, 1, 1, v127);
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
        __swift_storeEnumTagSinglePayload(v179, 1, 1, v128);
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
        __swift_storeEnumTagSinglePayload(v180, 1, 1, v129);
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
        __swift_storeEnumTagSinglePayload(v181, 1, 1, v130);
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
        __swift_storeEnumTagSinglePayload(v184, 1, 1, v131);
        __swift_storeEnumTagSinglePayload(v19, 1, 1, v122);
        v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
        __swift_storeEnumTagSinglePayload(v177, 1, 1, v132);

        sub_2676CA7DC();
        return v191 | 0x4000000000000000;
      }

      v186 = v50;
      v184 = v49;
      v108 = *((v185 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v190 = *(v108 + 16);
      sub_2676788B8(v193, a3, 1u);
      v188 = (v191 + 16);
      v109 = (v191 + 8);
      v185 = v191 + 32;

      v110 = 0;
      v187 = MEMORY[0x277D84F90];
      v111 = v189;
      while (v190 != v110)
      {
        if (v110 >= *(v108 + 16))
        {
          __break(1u);
          goto LABEL_84;
        }

        v112 = (*(v191 + 80) + 32) & ~*(v191 + 80);
        a3 = *(v191 + 72);
        (*(v191 + 16))(v44, v108 + v112 + a3 * v110, v111);
        v197 = sub_2676CAD6C();
        v198 = v113;
        v195 = v193;
        v196 = v192;
        sub_2675E69E4();
        v114 = sub_2676CC37C();

        if (v114)
        {
          v115 = *v185;
          (*v185)(v186, v44, v111);
          v116 = v187;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v194 = v116;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2676C2A30(0, *(v116 + 16) + 1, 1);
            v116 = v194;
          }

          v119 = *(v116 + 16);
          v118 = *(v116 + 24);
          v120 = v119 + 1;
          if (v119 >= v118 >> 1)
          {
            v187 = v119 + 1;
            sub_2676C2A30((v118 > 1), v119 + 1, 1);
            v120 = v187;
            v116 = v194;
          }

          ++v110;
          *(v116 + 16) = v120;
          v187 = v116;
          v121 = v116 + v112 + v119 * a3;
          v111 = v189;
          v115(v121, v186, v189);
        }

        else
        {
          (*v109)(v44, v111);
          ++v110;
        }
      }

      v133 = v187;
      if (*(v187 + 16))
      {
        sub_2676788E4(v193, v192, 1u);
        if (*(v133 + 16) == 1)
        {
          v134 = v191;
          v135 = v184;
          (*(v191 + 16))(v184, v133 + ((*(v134 + 80) + 32) & ~*(v134 + 80)), v111);

          v54 = sub_2675EDF8C();
          (*(v134 + 8))(v135, v111);
        }

        else
        {
          v172 = swift_allocObject();
          *(v172 + 16) = v133;
          return v172 | 0x8000000000000000;
        }
      }

      else
      {

        v156 = v174;
        sub_2676CAA8C();
        sub_2676CAA3C();
        v157 = v176;
        v158 = swift_allocBox();
        (*(v175 + 32))(v159, v156, v157);
        return v158 | 0x2000000000000000;
      }

      return v54;
    case 2:
      if ((~v185 & 0xF000000000000007) == 0 || (v185 & 0xE000000000000000) != 0xA000000000000000)
      {
        goto LABEL_58;
      }

      v70 = swift_projectBox();
      v71 = v183;
      (*(v191 + 16))(v183, v70, v189);
      v72 = sub_2676CAE5C();
      v73 = *(v72 + 16);
      if (v73)
      {
        v197 = MEMORY[0x277D84F90];
        sub_2676C2AE8(0, v73, 0);
        v74 = v197;
        v75 = objc_opt_self();
        v185 = *(v7 + 16);
        v186 = v75;
        v76 = *(v7 + 80);
        v182 = v72;
        v77 = v72 + ((v76 + 32) & ~v76);
        v184 = *(v7 + 72);
        v78 = (v7 + 8);
        do
        {
          v79 = v188;
          v80 = v190;
          (v185)(v188, v77, v190);
          sub_2676CAAFC();
          v81 = sub_2676CBF3C();

          v82 = [v186 localizedStringForLabel_];

          v83 = sub_2676CBF6C();
          v85 = v84;

          (*v78)(v79, v80);
          v197 = v74;
          v87 = *(v74 + 16);
          v86 = *(v74 + 24);
          if (v87 >= v86 >> 1)
          {
            sub_2676C2AE8((v86 > 1), v87 + 1, 1);
            v74 = v197;
          }

          *(v74 + 16) = v87 + 1;
          v88 = v74 + 16 * v87;
          *(v88 + 32) = v83;
          *(v88 + 40) = v85;
          v77 += v184;
          --v73;
        }

        while (v73);

        a3 = v192;
        v7 = v187;
        v71 = v183;
      }

      else
      {

        v74 = MEMORY[0x277D84F90];
      }

      v136 = 0;
      v137 = *(v74 + 16);
      v138 = (v74 + 40);
      v139 = v189;
      while (2)
      {
        if (v137 == v136)
        {
          (*(v191 + 8))(v71, v139);

LABEL_58:
          if (qword_2801CBAA0 != -1)
          {
            swift_once();
          }

          v141 = sub_2676CBE4C();
          __swift_project_value_buffer(v141, qword_2801CDC90);
          v142 = v193;
          sub_2676788B8(v193, a3, 2u);
          v62 = sub_2676CBE2C();
          v143 = sub_2676CC24C();
          sub_2676788E4(v142, a3, 2u);
          if (os_log_type_enabled(v62, v143))
          {
            v144 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            v197 = v145;
            *v144 = 136315138;
            *(v144 + 4) = sub_2676B0B84(v142, a3, &v197);
            v146 = "#ResolveRecipientsFlow contact handle resolver got label response but did not find a matching handle. label=%s";
            goto LABEL_70;
          }

          goto LABEL_72;
        }

        if (v136 >= *(v74 + 16))
        {
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v140 = *v138;
        v197 = *(v138 - 1);
        v198 = v140;
        v195 = v193;
        v196 = a3;
        sub_2675E69E4();
        if ((sub_2676CC35C() & 1) == 0)
        {
          ++v136;
          v138 += 2;
          continue;
        }

        break;
      }

      result = sub_2676CAE5C();
      if (v136 < *(result + 16))
      {
        v148 = v71;
        v149 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v150 = *(v7 + 16);
        v151 = v188;
        v152 = v190;
        v150(v188, result + v149 + *(v7 + 72) * v136, v190);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC580, &qword_2676CF270);
        v153 = swift_allocObject();
        *(v153 + 16) = xmmword_2676CDE20;
        v150((v153 + v149), v151, v152);
        sub_2676CAE6C();
        sub_2676C8C8C();
        v154 = swift_allocBox();
        sub_2675E38E4(v155);
        (*(v7 + 8))(v151, v152);
        (*(v191 + 8))(v148, v189);
        return v154 | 0xC000000000000000;
      }

      __break(1u);
      return result;
    case 3:
      if ((~v185 & 0xF000000000000007) == 0 || (v185 & 0xE000000000000000) != 0xA000000000000000)
      {
        goto LABEL_66;
      }

      v178 = v13;
      v89 = v48;
      v90 = swift_projectBox();
      v91 = v189;
      (*(v191 + 16))(v89, v90, v189);
      v179 = v89;
      v92 = sub_2676CAE5C();
      v93 = 0;
      v94 = *(v92 + 16);
      v188 = (v7 + 16);
      v184 = v7 + 8;
      v185 = v94;
      v182 = v10;
      while (2)
      {
        if (v185 != v93)
        {
          if (v93 >= *(v92 + 16))
          {
LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

          v95 = *(v7 + 72);
          v96 = v92;
          v183 = ((*(v7 + 80) + 32) & ~*(v7 + 80));
          v180 = v95;
          v181 = *(v7 + 16);
          v181(v10, &v183[v92 + v95 * v93], v190);
          v197 = sub_2676CAB0C();
          v198 = v97;
          v98 = v186;
          sub_2676C910C();
          v99 = sub_2676C911C();
          __swift_storeEnumTagSinglePayload(v98, 0, 1, v99);
          sub_2675E69E4();
          v100 = sub_2676CC31C();
          v102 = v101;
          sub_2675E35CC(v98, &qword_2801CCED8, &unk_2676D1390);

          v197 = v193;
          v198 = v192;
          sub_2676C910C();
          __swift_storeEnumTagSinglePayload(v98, 0, 1, v99);
          v103 = sub_2676CC31C();
          v105 = v104;
          sub_2675E35CC(v98, &qword_2801CCED8, &unk_2676D1390);
          if (v100 == v103 && v102 == v105)
          {

            v91 = v189;
          }

          else
          {
            v107 = sub_2676CC59C();

            v91 = v189;
            if ((v107 & 1) == 0)
            {
              v10 = v182;
              (*v184)(v182, v190);
              ++v93;
              a3 = v192;
              v7 = v187;
              v92 = v96;
              continue;
            }
          }

          v162 = v187 + 32;
          v163 = v178;
          v164 = v190;
          (*(v187 + 32))(v178, v182, v190);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC580, &qword_2676CF270);
          v165 = v183;
          v166 = swift_allocObject();
          *(v166 + 16) = xmmword_2676CDE20;
          v181(&v165[v166], v163, v164);
          v167 = v179;
          sub_2676CAE6C();
          sub_2676C8C8C();
          v154 = swift_allocBox();
          sub_2675E38E4(v168);
          (*(v162 - 24))(v163, v164);
          (*(v191 + 8))(v167, v91);
          return v154 | 0xC000000000000000;
        }

        break;
      }

      (*(v191 + 8))(v179, v91);

LABEL_66:
      if (qword_2801CBAA0 != -1)
      {
        swift_once();
      }

      v160 = sub_2676CBE4C();
      __swift_project_value_buffer(v160, qword_2801CDC90);
      v161 = v193;
      sub_2676788B8(v193, a3, 3u);
      v62 = sub_2676CBE2C();
      v143 = sub_2676CC24C();
      sub_2676788E4(v161, a3, 3u);
      if (!os_log_type_enabled(v62, v143))
      {
        goto LABEL_72;
      }

      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v197 = v145;
      *v144 = 136315138;
      *(v144 + 4) = sub_2676B0B84(v161, a3, &v197);
      v146 = "#ResolveRecipientsFlow contact handle resolver got value response but did not find a matching handle. value=%s";
LABEL_70:
      _os_log_impl(&dword_2675D4000, v62, v143, v146, v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v145);
      MEMORY[0x26D5FEA80](v145, -1, -1);
      v69 = v144;
      goto LABEL_71;
    case 4:
      if (qword_2801CBAA0 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_87;
    default:
      v54 = 0xF000000000000007;
      if ((~v185 & 0xF000000000000007) == 0 || (v185 & 0xE000000000000000) != 0x8000000000000000)
      {
        return v54;
      }

      v55 = *((v185 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v56 = *(v55 + 16);
      v57 = (v191 + 8);

      a3 = 0;
      break;
  }

  while (1)
  {
    if (v56 == a3)
    {

      return 0xF000000000000007;
    }

    if (a3 >= *(v55 + 16))
    {
LABEL_86:
      __break(1u);
LABEL_87:
      swift_once();
LABEL_14:
      v61 = sub_2676CBE4C();
      __swift_project_value_buffer(v61, qword_2801CDC90);
      v62 = sub_2676CBE2C();
      v63 = sub_2676CC24C();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v195 = v65;
        *v64 = 136315138;
        v197 = v193;
        v198 = a3;
        v199 = 4;
        v66 = sub_2676CBFBC();
        v68 = sub_2676B0B84(v66, v67, &v195);

        *(v64 + 4) = v68;
        _os_log_impl(&dword_2675D4000, v62, v63, "#ResolveRecipientsFlow contact handle resolver got unexpected prompt response %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x26D5FEA80](v65, -1, -1);
        v69 = v64;
LABEL_71:
        MEMORY[0x26D5FEA80](v69, -1, -1);
      }

LABEL_72:

      return 0xF000000000000007;
    }

    (*(v191 + 16))(v47, v55 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * a3, v189);
    if (sub_2676CADFC() == v193 && v58 == v192)
    {
      break;
    }

    v60 = sub_2676CC59C();

    if (v60)
    {
      goto LABEL_81;
    }

    (*v57)(v47, v189);
    ++a3;
  }

LABEL_81:

  v169 = v191 + 32;
  v170 = v47;
  v171 = v189;
  (*(v191 + 32))(v52, v170, v189);
  v54 = sub_2675EDF8C();
  (*(v169 - 24))(v52, v171);
  return v54;
}

uint64_t sub_2676787DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267678824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6A8, &unk_2676CF5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_267678894(void *a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

uint64_t sub_2676788B8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_2676788D0(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_2676788E4(result, a2, a3);
  }

  return result;
}

uint64_t sub_2676788E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_18(uint64_t a1)
{

  return sub_26767719C(a1, v2, v3, v1);
}

uint64_t sub_2676789A0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3B8, &unk_2676D3E60);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3C0, &unk_2676D4DF0);
  OUTLINED_FUNCTION_3();
  v13 = v12;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_20();

  sub_267625A2C(a1, a2);
  sub_2676CBA1C();
  v15 = sub_2676790DC(&qword_2801CC670, MEMORY[0x277D5C808], MEMORY[0x277D5C7F0]);
  OUTLINED_FUNCTION_8_23(v15);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  v18 = sub_2676790DC(v16, v17, MEMORY[0x277D5C780]);
  OUTLINED_FUNCTION_7_22(v18);

  (*(v13 + 8))(v2, v11);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_24();
  v21 = sub_2676790DC(v19, v20, MEMORY[0x277D5C6A8]);
  OUTLINED_FUNCTION_6_19(v21);

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_267678BF0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD210, &qword_2676D1D88);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD218, &unk_2676D1D90);
  OUTLINED_FUNCTION_3();
  v13 = v12;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_20();

  sub_267625A2C(a1, a2);
  sub_2676CBA6C();
  v15 = sub_2676790DC(&qword_2801CC680, MEMORY[0x277D5C828], MEMORY[0x277D5C810]);
  OUTLINED_FUNCTION_8_23(v15);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  v18 = sub_2676790DC(v16, v17, MEMORY[0x277D5C780]);
  OUTLINED_FUNCTION_7_22(v18);

  (*(v13 + 8))(v2, v11);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_24();
  v21 = sub_2676790DC(v19, v20, MEMORY[0x277D5C6A8]);
  OUTLINED_FUNCTION_6_19(v21);

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_267678E80(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEA0, &qword_2676D1348);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCEA8, &unk_2676D1350);
  OUTLINED_FUNCTION_3();
  v11 = v10;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_20();
  sub_2676CB9FC();
  sub_2676790DC(&qword_2801CC738, MEMORY[0x277D5C7E8], MEMORY[0x277D5C7D0]);
  sub_2676C98BC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  v15 = sub_2676790DC(v13, v14, MEMORY[0x277D5C780]);
  sub_2676C988C();

  (*(v11 + 8))(v2, v9);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_1_24();
  v19 = sub_2676790DC(v17, v18, MEMORY[0x277D5C6A8]);
  v22(KeyPath, v3, v15, v19);

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_2676790DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267679124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  sub_267607B28(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t OUTLINED_FUNCTION_6_19(uint64_t a1)
{

  return sub_2676C98AC();
}

uint64_t OUTLINED_FUNCTION_7_22(uint64_t a1)
{

  return sub_2676C988C();
}

uint64_t OUTLINED_FUNCTION_8_23(uint64_t a1)
{

  return sub_2676C98BC();
}

uint64_t sub_267679294(uint64_t a1)
{
  result = sub_2676CABFC();
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

uint64_t sub_267679368(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = sub_2676C8C8C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = 0;
  v28 = *(a1 + 16);
  v25 = (v4 + 8);
  v26 = v4 + 16;
  v22 = (v4 + 32);
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v28 == v10)
    {

      return v24;
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v12 = *(v4 + 72);
    v13 = a1;
    (*(v4 + 16))(v9, a1 + v11 + v12 * v10, v3);
    sub_2676C8C4C();
    v14 = sub_2676ACEBC(v29);

    if (v14)
    {
      v21 = *v22;
      v21(v23, v9, v3);
      v15 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v15;
      v30 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2676C2778(0, *(v15 + 16) + 1, 1);
        v17 = v30;
      }

      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      if (v19 >= v18 >> 1)
      {
        v24 = v3;
        sub_2676C2778((v18 > 1), v19 + 1, 1);
        v3 = v24;
        v17 = v30;
      }

      ++v10;
      *(v17 + 16) = v19 + 1;
      v24 = v17;
      result = (v21)(v17 + v11 + v19 * v12, v23, v3);
      a1 = v13;
    }

    else
    {
      result = (*v25)(v9, v3);
      ++v10;
      a1 = v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_267679614(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  sub_267679694(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t sub_267679694(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = sub_2676CAB6C();
  OUTLINED_FUNCTION_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_2();
  v51 = v14 - v13;
  v60 = sub_2676CAC6C();
  OUTLINED_FUNCTION_3();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_2();
  v61 = v19 - v18;
  v20 = sub_2676CAC1C();
  v21 = OUTLINED_FUNCTION_4_1(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_2();
  v22 = sub_2676C911C();
  v23 = OUTLINED_FUNCTION_4_1(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4F0, &qword_2676D3250);
  OUTLINED_FUNCTION_4_1(v24);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_1();
  v53 = v26;
  v56 = sub_2676CABFC();
  OUTLINED_FUNCTION_3();
  v54 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_2();
  v52 = v30 - v29;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = -1;
  v31 = v6 + qword_2801D3EB0;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  v55 = v31;
  *(v31 + 32) = 0;
  v32 = (v6 + qword_2801CD3D0);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v6 + qword_2801CD3D8);
  *v33 = 0;
  v33[1] = 0;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v34 = sub_2676CBE4C();
  __swift_project_value_buffer(v34, qword_2801CDC90);

  v35 = sub_2676CBE2C();
  v36 = sub_2676CC23C();

  if (os_log_type_enabled(v35, v36))
  {
    v50 = v11;
    v37 = swift_slowAlloc();
    v64[0] = swift_slowAlloc();
    *v37 = 136315394;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
    v39 = MEMORY[0x26D5FDDD0](a1, v38);
    v41 = v16;
    v42 = a1;
    v43 = sub_2676B0B84(v39, v40, v64);

    *(v37 + 4) = v43;
    a1 = v42;
    v16 = v41;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_2676B0B84(a2, a3, v64);
    _os_log_impl(&dword_2675D4000, v35, v36, "#ResolveRecipientsFlow init with %s and parameter %s", v37, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_6();
    v11 = v50;
    OUTLINED_FUNCTION_2_5();
  }

  v44 = sub_267676864(a1);

  *(v7 + 16) = v44;
  *(v7 + 24) = 0;
  sub_2676CACCC();
  v45 = sub_2676CACDC();
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v45);
  sub_2676C910C();
  sub_2676CAC0C();
  (*(v16 + 104))(v61, *MEMORY[0x277D56148], v60);
  (*(v11 + 104))(v51, *MEMORY[0x277D560D0], v9);
  sub_2676CABEC();
  (*(v54 + 32))(v7 + qword_2801D3EA0, v52, v56);
  v46 = (v7 + qword_2801D3EA8);
  *v46 = a2;
  v46[1] = a3;
  swift_beginAccess();
  sub_26767D854(a5, v55);
  swift_endAccess();
  v47 = v7 + qword_2801D3EB8;
  v48 = *(a6 + 16);
  *v47 = *a6;
  *(v47 + 16) = v48;
  *(v47 + 32) = *(a6 + 32);
  *(v7 + qword_2801D3EC0) = a4;
  return v7;
}

uint64_t sub_267679C54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD488, &qword_2676D31F8);
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  v6 = &v32[-v5];
  v7 = *(v0 + 16);
  switch(*(v0 + 24))
  {
    case 1:
      v35 = *(v0 + 16);
      v36 = 0;

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD498, &unk_2676D3200);
      OUTLINED_FUNCTION_19_6(v16);
      v37 = v1;
      OUTLINED_FUNCTION_0_23();
      v38 = sub_2676148C4(v17, v18, v19, v20);
      __swift_allocate_boxed_opaque_existential_1(&v35);
      OUTLINED_FUNCTION_6_20();
      v21();
      sub_2676C961C();
      OUTLINED_FUNCTION_9_23();
      sub_2676C961C();
      sub_2676C961C();
      OUTLINED_FUNCTION_9_23();
      sub_2676C961C();
      goto LABEL_8;
    case 2:
      v35 = *(v0 + 16);
      v36 = 1;
      sub_26767D63C(v7, 2u);
      v9 = v7;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD498, &unk_2676D3200);
      OUTLINED_FUNCTION_19_6(v10);
      v37 = v1;
      OUTLINED_FUNCTION_0_23();
      v38 = sub_2676148C4(v11, v12, v13, v14);
      __swift_allocate_boxed_opaque_existential_1(&v35);
      OUTLINED_FUNCTION_6_20();
      v15();
      sub_2676C961C();
      OUTLINED_FUNCTION_9_23();
      sub_2676C961C();
      sub_2676C961C();
      OUTLINED_FUNCTION_9_23();
      sub_2676C961C();
      sub_267678894(v7, 2u);
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1(v33);
      goto LABEL_9;
    case 3:
      if (v7)
      {
        sub_267679FF0(MEMORY[0x277D84F90], v34);
        sub_2676C961C();
        sub_2676C961C();
LABEL_6:
        sub_2676C961C();
        OUTLINED_FUNCTION_9_23();
        sub_2676C961C();
        __swift_destroy_boxed_opaque_existential_1(v32);
        __swift_destroy_boxed_opaque_existential_1(v33);
        __swift_destroy_boxed_opaque_existential_1(v34);
      }

      else
      {
        v23 = sub_2676C9CCC();
        v24 = sub_26767D660();
        v25 = OUTLINED_FUNCTION_20_10(v23, v24);
        sub_2676C9CBC();
        v35 = v25;
        v36 = 1;
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD498, &unk_2676D3200);
        OUTLINED_FUNCTION_19_6(v26);
        v37 = v1;
        OUTLINED_FUNCTION_0_23();
        v38 = sub_2676148C4(v27, v28, v29, v30);
        __swift_allocate_boxed_opaque_existential_1(&v35);
        OUTLINED_FUNCTION_6_20();
        v31();
        sub_2676C961C();
        OUTLINED_FUNCTION_9_23();
        sub_2676C961C();
LABEL_9:
        __swift_destroy_boxed_opaque_existential_1(v34);
        (*(v3 + 8))(v6, v1);
      }

      sub_2676C961C();
      return __swift_destroy_boxed_opaque_existential_1(&v35);
    default:

      sub_267679FF0(v8, v34);
      sub_267678894(v7, 0);
      sub_2676C961C();
      sub_2676C961C();
      goto LABEL_6;
  }
}

uint64_t sub_267679FF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD460, &qword_2676D31D0);
  OUTLINED_FUNCTION_3();
  v232 = v6;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v8);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD468, &qword_2676D31D8);
  OUTLINED_FUNCTION_3();
  v235 = v9;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v11);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD470, &qword_2676D31E0);
  OUTLINED_FUNCTION_3();
  v241 = v12;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v14);
  v230 = sub_2676C9BFC();
  OUTLINED_FUNCTION_3();
  v229 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_2();
  v19 = v18 - v17;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD478, &unk_2676D31E8);
  OUTLINED_FUNCTION_3();
  v239 = v20;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v22);
  v23 = sub_2676CAECC();
  OUTLINED_FUNCTION_3();
  v243 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4();
  v227 = v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v222 - v28;
  v30 = sub_2676CAA9C();
  OUTLINED_FUNCTION_3();
  v246 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4();
  v244 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_11_5(&v222 - v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC300, &unk_2676D09B0);
  OUTLINED_FUNCTION_4_1(v36);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v38);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v39 = sub_2676CBE4C();
  v40 = __swift_project_value_buffer(v39, qword_2801CDC90);

  v41 = sub_2676CBE2C();
  v42 = sub_2676CC23C();

  v43 = os_log_type_enabled(v41, v42);
  v225 = v19;
  v228 = v29;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v224 = v40;
    *&v248 = v45;
    *v44 = 136315394;
    v46 = MEMORY[0x26D5FDDD0](a1, &type metadata for ContactState);
    v245 = v30;
    v48 = a1;
    v49 = a2;
    v50 = sub_2676B0B84(v46, v47, &v248);

    *(v44 + 4) = v50;
    *(v44 + 12) = 2080;
    v51 = *(v3 + 40);
    v52 = *(v3 + 48);
    v252 = *(v3 + 32);
    v253 = v51;
    LOBYTE(v254) = v52;
    sub_26767D820(v252, v51, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4D8, &qword_2676D3238);
    v53 = sub_2676CBFBC();
    v55 = sub_2676B0B84(v53, v54, &v248);
    v30 = v245;

    *(v44 + 14) = v55;
    a2 = v49;
    a1 = v48;
    _os_log_impl(&dword_2675D4000, v41, v42, "#ResolveRecipientsFlow resolving contact states: %s. disambiguationResponse: %s", v44, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  v56 = sub_26767627C(a1);
  v58 = v57;
  v59 = *(v3 + 16);
  *(v3 + 16) = v56;
  v60 = *(v3 + 24);
  *(v3 + 24) = v57;
  sub_26767D63C(v56, v57);
  sub_267678894(v59, v60);
  switch(v58)
  {
    case 1u:

      v94 = sub_2676CBE2C();
      v95 = sub_2676CC23C();
      sub_267678894(v56, 1u);
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v252 = v97;
        *v96 = 136315138;
        v98 = sub_2676C8C8C();
        v99 = MEMORY[0x26D5FDDD0](v56, v98);
        v101 = sub_2676B0B84(v99, v100, &v252);

        *(v96 + 4) = v101;
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v102, v103, v104, v105, v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v97);
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_4_6();
      }

      v252 = v56;
      LOBYTE(v253) = 0;
      goto LABEL_24;
    case 2u:
      v252 = v56;
      goto LABEL_23;
    case 3u:
      if (v56)
      {
        v87 = v247;
        __swift_storeEnumTagSinglePayload(v247, 1, 1, v30);
        v88 = *(v3 + qword_2801D3EA8);
        v89 = *(v3 + qword_2801D3EA8 + 8);

        sub_267680CDC(v87, v88, v89, &v252);

        sub_2675EB7EC(v87, &qword_2801CC300, &unk_2676D09B0);
        v90 = OUTLINED_FUNCTION_15_16();
        sub_2675E5D38(v90, v91);
        v92 = sub_2676C9FBC();
        OUTLINED_FUNCTION_27_9(v92, MEMORY[0x277D5C1C0]);
        OUTLINED_FUNCTION_26_9();
        return __swift_destroy_boxed_opaque_existential_1(&v252);
      }

      v107 = sub_2676C9CCC();
      v108 = sub_26767D660();
      v109 = OUTLINED_FUNCTION_20_10(v107, v108);
      sub_2676C9CBC();
      v252 = v109;
      goto LABEL_23;
    default:
      v224 = swift_allocObject();
      *(v224 + 16) = v56;
      v61 = sub_2676CBE2C();
      v62 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_5(v62))
      {
        v63 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v63);
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v64, v65, v66, v67, v68, 2u);
        OUTLINED_FUNCTION_4_6();
      }

      v69 = 0;
      v70 = v56[2];
      v71 = v56 + 4;
      while (2)
      {
        if (v70 == v69)
        {

          v110 = sub_2676CBE2C();
          v111 = sub_2676CC24C();
          if (OUTLINED_FUNCTION_5_5(v111))
          {
            v112 = OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_9_4(v112);
            OUTLINED_FUNCTION_3_7();
            _os_log_impl(v113, v114, v115, v116, v117, 2u);
            OUTLINED_FUNCTION_4_6();
          }

          v118 = sub_2675F05C8();
          v119 = OUTLINED_FUNCTION_20_10(&type metadata for RecipientResolutionError, v118);
          *v120 = 0xD00000000000002BLL;
          *(v120 + 8) = 0x80000002676D7A60;
          *(v120 + 16) = 0;
          v252 = v119;
LABEL_23:
          LOBYTE(v253) = 1;
LABEL_24:
          v121 = OUTLINED_FUNCTION_28_3();
          a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v121, v122);
          OUTLINED_FUNCTION_0_23();
          a2[4] = sub_2676148C4(v123, &qword_2801CD488, &qword_2676D31F8, v124);
          __swift_allocate_boxed_opaque_existential_1(a2);
          v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD498, &unk_2676D3200);
          return OUTLINED_FUNCTION_18_10(v125);
        }

        else
        {
          v72 = v69++;
          v73 = v71[v72];
          switch(v73 >> 61)
          {
            case 1uLL:
              v168 = swift_projectBox();
              v169 = v246;
              v170 = *(v246 + 16);
              v171 = v226;
              v170(v226, v168, v30);
              v172 = v247;
              v170(v247, v171, v30);
              __swift_storeEnumTagSinglePayload(v172, 0, 1, v30);
              v173 = *(v3 + qword_2801D3EA8);
              v174 = *(v3 + qword_2801D3EA8 + 8);

              sub_267680CDC(v172, v173, v174, &v252);

              sub_2675EB7EC(v172, &qword_2801CC300, &unk_2676D09B0);
              v175 = OUTLINED_FUNCTION_15_16();
              sub_2675E5D38(v175, v176);
              v177 = sub_2676C9FBC();
              OUTLINED_FUNCTION_27_9(v177, MEMORY[0x277D5C1C0]);
              OUTLINED_FUNCTION_26_9();
              __swift_destroy_boxed_opaque_existential_1(&v252);
              (*(v169 + 8))(v171, v30);
              goto LABEL_35;
            case 2uLL:

              v194 = sub_2676CBE2C();
              v195 = sub_2676CC24C();
              if (OUTLINED_FUNCTION_5_5(v195))
              {
                v196 = OUTLINED_FUNCTION_17_3();
                OUTLINED_FUNCTION_9_4(v196);
                OUTLINED_FUNCTION_3_7();
                _os_log_impl(v197, v198, v199, v200, v201, 2u);
                OUTLINED_FUNCTION_4_6();
              }

              v202 = sub_2675F05C8();
              v203 = OUTLINED_FUNCTION_20_10(&type metadata for RecipientResolutionError, v202);
              *v204 = 0xD000000000000050;
              *(v204 + 8) = 0x80000002676D7A00;
              *(v204 + 16) = 0;
              v252 = v203;
              LOBYTE(v253) = 1;
              v205 = OUTLINED_FUNCTION_28_3();
              a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v205, v206);
              OUTLINED_FUNCTION_0_23();
              a2[4] = sub_2676148C4(v207, &qword_2801CD488, &qword_2676D31F8, v208);
              __swift_allocate_boxed_opaque_existential_1(a2);
              v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD498, &unk_2676D3200);
              OUTLINED_FUNCTION_18_10(v209);
              goto LABEL_35;
            case 3uLL:
              v126 = swift_projectBox();
              v127 = v243;
              v128 = v228;
              (*(v243 + 16))(v228, v126, v23);

              v129 = sub_2676CBE2C();
              v130 = sub_2676CC24C();
              if (OUTLINED_FUNCTION_5_5(v130))
              {
                v131 = OUTLINED_FUNCTION_17_3();
                OUTLINED_FUNCTION_9_4(v131);
                OUTLINED_FUNCTION_3_7();
                _os_log_impl(v132, v133, v134, v135, v136, 2u);
                OUTLINED_FUNCTION_4_6();
              }

              v137 = sub_2675E3A44();
              v138 = sub_2675F05C8();
              v139 = OUTLINED_FUNCTION_20_10(&type metadata for RecipientResolutionError, v138);
              *v140 = v137;
              *(v140 + 8) = 0;
              *(v140 + 16) = 1;
              v252 = v139;
              LOBYTE(v253) = 1;
              v141 = OUTLINED_FUNCTION_28_3();
              a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v141, v142);
              OUTLINED_FUNCTION_0_23();
              a2[4] = sub_2676148C4(v143, &qword_2801CD488, &qword_2676D31F8, v144);
              __swift_allocate_boxed_opaque_existential_1(a2);
              v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD498, &unk_2676D3200);
              OUTLINED_FUNCTION_18_10(v145);
              (*(v127 + 8))(v128, v23);
              goto LABEL_35;
            case 4uLL:
              v187 = *((v73 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v188 = *(v3 + qword_2801D3EA8);
              v189 = *(v3 + qword_2801D3EA8 + 8);
              v190 = *(v3 + qword_2801D3EC0);

              sub_26767DA20(v187, v188, v189, v190, &v252);

              v191 = OUTLINED_FUNCTION_15_16();
              sub_2675E5D38(v191, v192);
              v193 = sub_2676C9FBC();
              OUTLINED_FUNCTION_27_9(v193, MEMORY[0x277D5C1C0]);
              OUTLINED_FUNCTION_26_9();
              __swift_destroy_boxed_opaque_existential_1(&v252);

              goto LABEL_36;
            case 5uLL:
              v178 = swift_projectBox();
              v179 = v243;
              v180 = v227;
              (*(v243 + 16))(v227, v178, v23);
              v181 = *(v3 + qword_2801D3EA8);
              v182 = *(v3 + qword_2801D3EA8 + 8);
              v183 = *(v3 + qword_2801D3EC0);

              sub_26767EB60(v180, v181, v182, v183, &v252);

              v184 = OUTLINED_FUNCTION_15_16();
              sub_2675E5D38(v184, v185);
              v186 = sub_2676C9FBC();
              OUTLINED_FUNCTION_27_9(v186, MEMORY[0x277D5C1C0]);
              OUTLINED_FUNCTION_26_9();
              __swift_destroy_boxed_opaque_existential_1(&v252);
              (*(v179 + 8))(v180, v23);
              goto LABEL_35;
            case 6uLL:
              continue;
            case 7uLL:
              v246 = v23;
              v247 = v73 & 0x1FFFFFFFFFFFFFFFLL;
              sub_26767D764(v3 + qword_2801D3EB8, &v248, &qword_2801CC6B0, &qword_2676CFC80);

              sub_2676B366C(&v248, &v252);
              v146 = v231;
              sub_2676B377C();
              sub_26767D6B8(&v252);
              v147 = swift_allocObject();
              v148 = v224;
              v149 = v69 - 1;
              v147[2] = v224;
              v147[3] = v69 - 1;
              v147[4] = v3;

              v150 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD4A0, &unk_2676D3210);
              v151 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD4A8, &qword_2676D51C0);
              v152 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD4B0, &qword_2676D3220);
              v223 = a2;
              v153 = v152;
              v154 = sub_2676148C4(&qword_2801CD4B8, &qword_2801CD4B0, &qword_2676D3220, MEMORY[0x277D5B570]);
              v252 = v153;
              v253 = v154;
              OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
              v252 = v150;
              v253 = v151;
              v254 = OpaqueTypeConformance2;
              v156 = swift_getOpaqueTypeConformance2();
              v157 = v233;
              v158 = v234;
              v159 = v246;
              sub_2676C942C();

              (*(v232 + 8))(v146, v158);
              v160 = swift_allocObject();
              v160[2] = v148;
              v160[3] = v149;
              v160[4] = v3;

              v252 = v158;
              v253 = v159;
              v254 = v156;
              OUTLINED_FUNCTION_5_21();
              v161 = swift_getOpaqueTypeConformance2();
              v162 = v238;
              v163 = v236;
              sub_2676C941C();

              (*(v235 + 8))(v157, v163);
              v164 = v242;
              v255 = v242;
              *&v248 = v163;
              *(&v248 + 1) = v159;
              v249 = v161;
              v256 = swift_getOpaqueTypeConformance2();
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v252);
              v166 = v241;
              (*(v241 + 16))(boxed_opaque_existential_1, v162, v164);
              v167 = sub_2676C9FBC();
              OUTLINED_FUNCTION_25_13(v167, MEMORY[0x277D5C1C0]);
              sub_2676C9FAC();
              (*(v166 + 8))(v162, v164);

              goto LABEL_36;
            default:
              v74 = v30;
              v75 = v224;
              v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC1A8, &qword_2676CDF38);
              v77 = swift_projectBox();
              v78 = *(v77 + *(v76 + 48));
              v79 = *(v246 + 16);
              v245 = v74;
              v79(v244, v77, v74);

              v80 = sub_2675EC018();
              v82 = v81;
              v83 = qword_2801D3EB0;
              swift_beginAccess();
              sub_26767D764(v3 + v83, &v252, &qword_2801CC6A8, &unk_2676CF5F0);
              v247 = v69 - 1;
              v223 = a2;
              if (v255)
              {
                v84 = OUTLINED_FUNCTION_15_16();
                sub_2675DD73C(v84, v85);
                v86 = v225;
              }

              else
              {
                v210 = sub_2676CAB5C();
                swift_allocObject();
                v211 = sub_2676CAB4C();
                v250 = v210;
                v251 = &off_2878AD3E8;
                *&v248 = v211;
                v86 = v225;
                if (v255)
                {
                  sub_2675EB7EC(&v252, &qword_2801CC6A8, &unk_2676CF5F0);
                }
              }

              LOBYTE(v252) = 0;
              v253 = v80;
              v254 = v82;
              sub_2675DD73C(&v248, &v255);
              (*(v229 + 104))(v86, *MEMORY[0x277D5BDF0], v230);
              v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4C0, &unk_2676D3228);
              swift_allocObject();
              sub_26767D7C0();
              v252 = sub_2676C9F5C();
              v213 = swift_allocObject();
              v214 = v247;
              v213[2] = v75;
              v213[3] = v214;
              v213[4] = v78;
              v213[5] = v3;

              v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9F8, &unk_2676CFE90);
              v216 = sub_2676148C4(&qword_2801CD4D0, &qword_2801CD4C0, &unk_2676D3228, MEMORY[0x277D5C1A8]);
              v217 = v237;
              sub_2676C942C();

              v218 = v240;
              v255 = v240;
              *&v248 = v212;
              *(&v248 + 1) = v215;
              v249 = v216;
              OUTLINED_FUNCTION_5_21();
              v256 = swift_getOpaqueTypeConformance2();
              v219 = __swift_allocate_boxed_opaque_existential_1(&v252);
              v220 = v239;
              (*(v239 + 16))(v219, v217, v218);
              v221 = sub_2676C9FBC();
              OUTLINED_FUNCTION_25_13(v221, MEMORY[0x277D5C1C0]);
              sub_2676C9FAC();

              (*(v220 + 8))(v217, v218);
              (*(v246 + 8))(v244, v245);
LABEL_35:

LABEL_36:

              break;
          }
        }

        return result;
      }
  }
}

void sub_26767B4C4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v192 = a5;
  v193 = a3;
  v203 = a2;
  v6 = sub_2676CAECC();
  v200 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v198 = &v185 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v185 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v185 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v185 - v16;
  MEMORY[0x28223BE20](v15);
  v197 = &v185 - v18;
  v210 = sub_2676CAB1C();
  v205 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v209 = &v185 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2676C8C8C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v206 = &v185 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212[0] = MEMORY[0x277D84FA0];

  v24 = sub_267679368(v23, v212);
  v202 = 0;

  v25 = sub_26760A9D0(v24);

  if (v25[2])
  {
    v194 = v20;
    v191 = v14;
    if (qword_2801CBAA0 != -1)
    {
LABEL_99:
      swift_once();
    }

    v26 = sub_2676CBE4C();
    v27 = __swift_project_value_buffer(v26, qword_2801CDC90);
    v28 = a4 & 0x1FFFFFFFFFFFFFFFLL;

    v195 = v27;
    v29 = sub_2676CBE2C();
    v20 = a4;
    v30 = sub_2676CC23C();

    v31 = os_log_type_enabled(v29, v30);
    v199 = v6;
    v201 = v11;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v196 = v17;
      v34 = v33;
      v211 = v20;
      v212[0] = v33;
      *v32 = 136315138;
      v17 = v28;

      v35 = sub_2676CBFBC();
      v37 = v21;
      v38 = sub_2676B0B84(v35, v36, v212);

      *(v32 + 4) = v38;
      v21 = v37;
      _os_log_impl(&dword_2675D4000, v29, v30, "#ResolveRecipientsFlow alternateState: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v39 = v34;
      a4 = v196;
      v11 = v201;
      MEMORY[0x26D5FEA80](v39, -1, -1);
      v40 = v32;
      v6 = v199;
      MEMORY[0x26D5FEA80](v40, -1, -1);
    }

    else
    {
      a4 = v17;
      v17 = v28;
    }

    switch(v20 >> 61)
    {
      case 1uLL:
      case 2uLL:
      case 3uLL:
        goto LABEL_17;
      case 4uLL:
        v49 = *(v17 + 16);
        v191 = *(v49 + 16);
        if (!v191)
        {
          goto LABEL_17;
        }

        v187 = (*(v200 + 80) + 32) & ~*(v200 + 80);
        v188 = v49 + v187;
        v197 = (v200 + 16);
        v207 = (v205 + 8);
        v208 = (v205 + 16);
        v189 = (v200 + 8);
        v186 = (v200 + 32);

        v51 = 0;
        v190 = v50;
        break;
      case 5uLL:
        v109 = swift_projectBox();
        v110 = *(v200 + 16);
        v20 = a4;
        v206 = v200 + 16;
        v202 = v110;
        (v110)(a4, v109, v6);
        v204 = v25;
        sub_2675E3FBC(v25);
        v112 = v111;
        v113 = *(v111 + 2);
        v196 = a4;
        if (v113)
        {
          v212[0] = MEMORY[0x277D84F90];
          sub_2676C2AE8(0, v113, 0);
          v114 = v212[0];
          v115 = *(v205 + 16);
          v116 = *(v205 + 80);
          v201 = v112;
          v117 = &v112[(v116 + 32) & ~v116];
          v207 = *(v205 + 72);
          v208 = v115;
          v118 = (v205 + 8);
          do
          {
            v119 = v209;
            v120 = v210;
            v208(v209, v117, v210);
            v121 = sub_2676CAB0C();
            v123 = v122;
            (*v118)(v119, v120);
            v212[0] = v114;
            v125 = *(v114 + 16);
            v124 = *(v114 + 24);
            if (v125 >= v124 >> 1)
            {
              sub_2676C2AE8((v124 > 1), v125 + 1, 1);
              v114 = v212[0];
            }

            *(v114 + 16) = v125 + 1;
            v126 = v114 + 16 * v125;
            *(v126 + 32) = v121;
            *(v126 + 40) = v123;
            v117 = v207 + v117;
            --v113;
          }

          while (v113);

          v20 = v196;
        }

        else
        {

          v114 = MEMORY[0x277D84F90];
        }

        v212[0] = v114;
        v142 = sub_2676CAE5C();
        v143 = *(v142 + 16);
        if (v143)
        {
          v211 = MEMORY[0x277D84F90];
          sub_2676C2AE8(0, v143, 0);
          v144 = v211;
          v145 = *(v205 + 16);
          v146 = *(v205 + 80);
          v201 = v142;
          v147 = v142 + ((v146 + 32) & ~v146);
          v207 = *(v205 + 72);
          v208 = v145;
          v205 += 16;
          v148 = (v205 - 8);
          do
          {
            v149 = v209;
            v150 = v210;
            v208(v209, v147, v210);
            v151 = sub_2676CAB0C();
            v153 = v152;
            (*v148)(v149, v150);
            v211 = v144;
            v155 = *(v144 + 16);
            v154 = *(v144 + 24);
            if (v155 >= v154 >> 1)
            {
              sub_2676C2AE8((v154 > 1), v155 + 1, 1);
              v144 = v211;
            }

            *(v144 + 16) = v155 + 1;
            v156 = v144 + 16 * v155;
            *(v156 + 32) = v151;
            *(v156 + 40) = v153;
            v147 += v207;
            --v143;
          }

          while (v143);

          v20 = v196;
        }

        else
        {

          v144 = MEMORY[0x277D84F90];
        }

        v211 = v144;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4E0, &unk_2676D3240);
        sub_2676148C4(&qword_2801CD4E8, &qword_2801CD4E0, &unk_2676D3240, MEMORY[0x277D83988]);
        v157 = sub_2676CC21C();

        v21 = v199;
        if (v157)
        {
          v158 = v203;
          swift_beginAccess();
          sub_26767CFE8(v204, (v158 + 16), v193);
          swift_endAccess();

          goto LABEL_96;
        }

        a4 = v191;
        v202(v191, v20, v199);
        v159 = v204;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_87;
        }

        goto LABEL_107;
      case 6uLL:
        v84 = swift_projectBox();
        v201 = v21;
        v20 = v206;
        (*(v21 + 16))(v206, v84, v194);
        v204 = v25;
        sub_2675E3FBC(v25);
        v86 = v85;
        a4 = *(v85 + 16);
        if (a4)
        {
          v212[0] = MEMORY[0x277D84F90];
          sub_2676C2AE8(0, a4, 0);
          v87 = v212[0];
          v88 = v205 + 16;
          v89 = *(v205 + 16);
          v90 = *(v205 + 80);
          v205 = v86;
          v91 = (v86 + ((v90 + 32) & ~v90));
          v207 = *(v88 + 56);
          v208 = v89;
          v92 = (v88 - 8);
          do
          {
            v93 = v209;
            v94 = v210;
            v208(v209, v91, v210);
            v95 = sub_2676CAB0C();
            v97 = v96;
            (*v92)(v93, v94);
            v212[0] = v87;
            v99 = *(v87 + 16);
            v98 = *(v87 + 24);
            if (v99 >= v98 >> 1)
            {
              sub_2676C2AE8((v98 > 1), v99 + 1, 1);
              v87 = v212[0];
            }

            *(v87 + 16) = v99 + 1;
            v100 = v87 + 16 * v99;
            *(v100 + 32) = v95;
            *(v100 + 40) = v97;
            v91 = v207 + v91;
            --a4;
          }

          while (a4);

          v6 = v199;
          v20 = v206;
        }

        else
        {

          v87 = MEMORY[0x277D84F90];
        }

        MEMORY[0x28223BE20](v127);
        *(&v185 - 2) = v20;
        v128 = sub_2676A25A0(sub_26767D834, (&v185 - 4), v87);

        if (v128)
        {
          v129 = v203;
          swift_beginAccess();
          sub_26767CFE8(v204, (v129 + 16), v193);
          swift_endAccess();

          v21 = v201;
          goto LABEL_75;
        }

        sub_26760A76C(0xD00000000000001BLL, 0x80000002676D60A0);
        v130 = v204;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v201;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_66;
        }

        goto LABEL_105;
      default:

        v101 = sub_2676CBE2C();
        v102 = sub_2676CC23C();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = v20;
          a4 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v212[0] = v21;
          *a4 = 136315138;
          v104 = sub_2675EECE4(v20);
          v6 = v105;
          v106 = sub_2676B0B84(v104, v105, v212);

          *(a4 + 4) = v106;
          _os_log_impl(&dword_2675D4000, v101, v102, "#ResolveRecipientsFlow restoring alternate contact state %s", a4, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          MEMORY[0x26D5FEA80](v21, -1, -1);
          v20 = v103;
          MEMORY[0x26D5FEA80](a4, -1, -1);
        }

        v107 = v203;
        swift_beginAccess();
        v45 = *(v107 + 16);

        v108 = swift_isUniquelyReferenced_nonNull_native();
        *(v107 + 16) = v45;
        if (v108)
        {
          goto LABEL_53;
        }

        goto LABEL_102;
    }

    do
    {
      if (v51 >= *(v50 + 16))
      {
        __break(1u);
        goto LABEL_99;
      }

      v52 = *(v200 + 72);
      v202 = v51;
      v195 = *(v200 + 16);
      v196 = v52;
      v195(v11, v188 + v52 * v51, v6);
      v204 = v25;
      sub_2675E3FBC(v25);
      v54 = v53;
      v55 = *(v53 + 16);
      if (v55)
      {
        v212[0] = MEMORY[0x277D84F90];
        sub_2676C2AE8(0, v55, 0);
        v56 = v212[0];
        v57 = *(v205 + 80);
        v206 = v54;
        v58 = v54 + ((v57 + 32) & ~v57);
        v59 = *(v205 + 72);
        v17 = *(v205 + 16);
        do
        {
          v60 = v209;
          v61 = v210;
          (v17)(v209, v58, v210);
          v62 = sub_2676CAB0C();
          v64 = v63;
          (*v207)(v60, v61);
          v212[0] = v56;
          v66 = *(v56 + 16);
          v65 = *(v56 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_2676C2AE8((v65 > 1), v66 + 1, 1);
            v56 = v212[0];
          }

          *(v56 + 16) = v66 + 1;
          v67 = v56 + 16 * v66;
          *(v67 + 32) = v62;
          *(v67 + 40) = v64;
          v58 += v59;
          --v55;
        }

        while (v55);

        v11 = v201;
      }

      else
      {

        v56 = MEMORY[0x277D84F90];
      }

      v212[0] = v56;
      v68 = sub_2676CAE5C();
      v69 = *(v68 + 16);
      if (v69)
      {
        v211 = MEMORY[0x277D84F90];
        sub_2676C2AE8(0, v69, 0);
        v21 = v211;
        v70 = (*(v205 + 80) + 32) & ~*(v205 + 80);
        v194 = v68;
        v71 = v68 + v70;
        v206 = *(v205 + 72);
        v72 = *(v205 + 16);
        do
        {
          v74 = v209;
          v73 = v210;
          v72(v209, v71, v210);
          v75 = sub_2676CAB0C();
          v77 = v76;
          (*v207)(v74, v73);
          v211 = v21;
          v17 = *(v21 + 16);
          v78 = *(v21 + 24);
          if (v17 >= v78 >> 1)
          {
            sub_2676C2AE8((v78 > 1), v17 + 1, 1);
            v21 = v211;
          }

          *(v21 + 16) = v17 + 1;
          v79 = v21 + 16 * v17;
          *(v79 + 32) = v75;
          *(v79 + 40) = v77;
          v71 += v206;
          --v69;
        }

        while (v69);

        v11 = v201;
      }

      else
      {

        v21 = MEMORY[0x277D84F90];
      }

      v211 = v21;
      a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4E0, &unk_2676D3240);
      sub_2676148C4(&qword_2801CD4E8, &qword_2801CD4E0, &unk_2676D3240, MEMORY[0x277D83988]);
      v80 = sub_2676CC21C();

      v6 = v199;
      if (v80)
      {
        (*v189)(v11, v199);
        v25 = v204;
      }

      else
      {
        v195(v198, v11, v199);
        v25 = v204;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2676076F0();
          v25 = v82;
        }

        v81 = v25[2];
        if (v81 >= v25[3] >> 1)
        {
          sub_2676076F0();
          v25 = v83;
        }

        (*v189)(v11, v6);
        v25[2] = v81 + 1;
        (*v186)(v25 + v187 + v81 * v196, v198, v6);
      }

      v50 = v190;
      v51 = v202 + 1;
    }

    while ((v202 + 1) != v191);

LABEL_17:
    v48 = v203;
    swift_beginAccess();
    sub_26767CFE8(v25, (v48 + 16), v193);
    swift_endAccess();

    goto LABEL_97;
  }

  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v41 = sub_2676CBE4C();
  __swift_project_value_buffer(v41, qword_2801CDC90);
  v42 = sub_2676CBE2C();
  v43 = sub_2676CC23C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2675D4000, v42, v43, "#ResolveRecipientsFlow no results from Mail app, restoring alternate contact state", v44, 2u);
    MEMORY[0x26D5FEA80](v44, -1, -1);
  }

  v45 = v203;
  swift_beginAccess();
  v46 = *(v45 + 16);

  v47 = swift_isUniquelyReferenced_nonNull_native();
  *(v45 + 16) = v46;
  if ((v47 & 1) == 0)
  {
    sub_2675E096C(v46);
    v46 = v177;
    *(v203 + 16) = v177;
  }

  if ((v193 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v46 + 16) > v193)
  {
    *(v46 + 8 * v193 + 32) = a4;
    *(v203 + 16) = v46;
    swift_endAccess();
LABEL_14:

LABEL_97:
    swift_beginAccess();

    v171 = v192;
    v172 = sub_26767627C(v170);
    v174 = v173;

    v175 = *(v171 + 16);
    *(v171 + 16) = v172;
    v176 = *(v171 + 24);
    *(v171 + 24) = v174;
    sub_267678894(v175, v176);
    return;
  }

  __break(1u);
LABEL_102:
  sub_2675E096C(v45);
  v45 = v178;
  *(v203 + 16) = v178;
LABEL_53:
  if ((v193 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v45 + 16) > v193)
  {
    *(v45 + 8 * v193 + 32) = v20;
    *(v203 + 16) = v45;
    swift_endAccess();
    goto LABEL_14;
  }

  __break(1u);
LABEL_105:
  sub_2676076F0();
  v130 = v179;
LABEL_66:
  v132 = *(v130 + 16);
  if (v132 >= *(v130 + 24) >> 1)
  {
    sub_2676076F0();
    v130 = v180;
  }

  *(v130 + 16) = v132 + 1;
  (*(v200 + 32))(v130 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v132, v197, v6);
  v133 = sub_2676CBE2C();
  v134 = sub_2676CC23C();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = v130;
    v136 = swift_slowAlloc();
    *v136 = 0;
    _os_log_impl(&dword_2675D4000, v133, v134, "#ResolveRecipientsFlow one exact match from Contacts and at least one match from Mail, disambiguating together", v136, 2u);
    v137 = v136;
    v130 = v135;
    v21 = v201;
    MEMORY[0x26D5FEA80](v137, -1, -1);
  }

  v138 = swift_allocObject();
  *(v138 + 16) = v130;
  v139 = v203;
  swift_beginAccess();
  v140 = *(v139 + 16);
  v141 = swift_isUniquelyReferenced_nonNull_native();
  *(v139 + 16) = v140;
  if ((v141 & 1) == 0)
  {
    sub_2675E096C(v140);
    v140 = v181;
    *(v203 + 16) = v181;
  }

  if ((v193 & 0x8000000000000000) == 0)
  {
    if (*(v140 + 16) > v193)
    {
      *(v140 + 8 * v193 + 32) = v138 | 0x8000000000000000;
      *(v203 + 16) = v140;
      swift_endAccess();

LABEL_75:
      (*(v21 + 8))(v20, v194);
      goto LABEL_97;
    }

    goto LABEL_109;
  }

  __break(1u);
LABEL_107:
  sub_2676076F0();
  v159 = v182;
LABEL_87:
  v160 = *(v159 + 16);
  if (v160 >= *(v159 + 24) >> 1)
  {
    sub_2676076F0();
    v159 = v183;
  }

  *(v159 + 16) = v160 + 1;
  (*(v200 + 32))(v159 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v160, a4, v21);
  v161 = sub_2676CBE2C();
  v162 = sub_2676CC23C();
  if (os_log_type_enabled(v161, v162))
  {
    v163 = v159;
    v164 = swift_slowAlloc();
    *v164 = 0;
    _os_log_impl(&dword_2675D4000, v161, v162, "#ResolveRecipientsFlow one contact match from Contacts and at least one match from Mail, disambiguating together", v164, 2u);
    v165 = v164;
    v159 = v163;
    MEMORY[0x26D5FEA80](v165, -1, -1);
  }

  v166 = swift_allocObject();
  *(v166 + 16) = v159;
  v167 = v203;
  swift_beginAccess();
  v168 = *(v167 + 16);
  v169 = swift_isUniquelyReferenced_nonNull_native();
  *(v167 + 16) = v168;
  if ((v169 & 1) == 0)
  {
    sub_2675E096C(v168);
    v168 = v184;
    *(v203 + 16) = v184;
  }

  if ((v193 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  if (*(v168 + 16) > v193)
  {
    *(v168 + 8 * v193 + 32) = v166 | 0x8000000000000000;
    *(v203 + 16) = v168;
    swift_endAccess();

LABEL_96:
    (*(v200 + 8))(v20, v21);
    goto LABEL_97;
  }

LABEL_110:
  __break(1u);
}

uint64_t sub_26767CA58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 == sub_2676C8C4C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2676CC59C();
  }

  return v5 & 1;
}

void sub_26767CAD0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a2 + 16);

  v8 = sub_2675EDF8C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_2675E096C(v7);
  v7 = v11;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v7 + 16) > a3)
  {
    *(v7 + 8 * a3 + 32) = v8;

    v9 = *(a4 + 16);
    *(a4 + 16) = v7;
    v10 = *(a4 + 24);
    *(a4 + 24) = 0;
    sub_267678894(v9, v10);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_26767CB94(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_2676C9CCC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
  if (!swift_dynamicCast())
  {
    v18 = *(a4 + 16);
    *(a4 + 16) = a1;
    v19 = *(a4 + 24);
    *(a4 + 24) = 2;
    v20 = a1;
    v16 = v18;
    v17 = v19;
    goto LABEL_7;
  }

  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  v13 = *(a2 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2675E096C(v13);
    v13 = v21;
  }

  v14 = *(v13 + 16);
  if (v14 > a3)
  {
    v15 = v14 - 1;
    sub_2676C24CC((v13 + 8 * a3 + 40), v14 - 1 - a3, (v13 + 8 * a3 + 32));
    *(v13 + 16) = v15;

    v16 = *(a4 + 16);
    *(a4 + 16) = v13;
    v17 = *(a4 + 24);
    *(a4 + 24) = 0;
LABEL_7:
    sub_267678894(v16, v17);
    return;
  }

  __break(1u);
}

void (*sub_26767CD54())(void *a1)
{
  v1 = (v0 + qword_2801CD3D0);
  v2 = *(v0 + qword_2801CD3D0);
  v3 = *(v0 + qword_2801CD3D0 + 8);
  if (v2)
  {
    v4 = *(v0 + qword_2801CD3D0);
  }

  else
  {
    v4 = sub_26767D618;
    *v1 = sub_26767D618;
    v1[1] = v0;
    swift_retain_n();
    sub_26767D5F8(0);
  }

  sub_26767D608(v2, v3);
  return v4;
}

void (*sub_26767CDDC())(void *a1)
{
  v1 = (v0 + qword_2801CD3D8);
  v2 = *(v0 + qword_2801CD3D8);
  v3 = *(v0 + qword_2801CD3D8 + 8);
  if (v2)
  {
    v4 = *(v0 + qword_2801CD3D8);
  }

  else
  {
    v4 = sub_26767D5D4;
    *v1 = sub_26767D5D4;
    v1[1] = v0;
    swift_retain_n();
    sub_26767D5F8(0);
  }

  sub_26767D608(v2, v3);
  return v4;
}

void sub_26767CE64(void *a1, uint64_t a2, const char *a3)
{
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v6 = sub_2676CBE4C();
  __swift_project_value_buffer(v6, qword_2801CDC90);
  v7 = a1;
  v8 = sub_2676CBE2C();
  v9 = sub_2676CC24C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_2676CC5FC();
    v14 = sub_2676B0B84(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2675D4000, v8, v9, a3, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  v15 = *(a2 + 16);
  *(a2 + 16) = a1;
  v16 = *(a2 + 24);
  *(a2 + 24) = 2;
  v17 = a1;
  sub_267678894(v15, v16);
}

uint64_t sub_26767CFE8(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC590, &qword_2676CF308);
  OUTLINED_FUNCTION_4_1(v6);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = sub_2676CAECC();
  OUTLINED_FUNCTION_3();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_2();
  v16 = (v15 - v14);
  if (*(a1 + 16) == 1)
  {
    sub_267699004(a1);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      (*(v12 + 32))(v16, v9, v10);
      v23 = *(sub_2676CAE5C() + 16);

      v24 = qword_2801CBAA0;
      if (v23 != 1)
      {
        goto LABEL_22;
      }

      if (qword_2801CBAA0 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }

    sub_2675EB7EC(v9, &qword_2801CC590, &qword_2676CF308);
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v17 = sub_2676CBE4C();
  __swift_project_value_buffer(v17, qword_2801CDC90);
  v18 = sub_2676CBE2C();
  v19 = sub_2676CC23C();
  if (os_log_type_enabled(v18, v19))
  {
    v16 = OUTLINED_FUNCTION_17_3();
    *v16 = 0;
    _os_log_impl(&dword_2675D4000, v18, v19, "#ResolveRecipientsFlow found multiple contact matches", v16, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v20 = *a2;

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_2675E096C(v20);
    v20 = v38;
    if ((a3 & 0x8000000000000000) == 0)
    {
LABEL_10:
      if (*(v20 + 16) > a3)
      {
        v21 = v10 | 0x8000000000000000;
LABEL_12:
        *(v20 + 8 * a3 + 32) = v21;

        *a2 = v20;
        return result;
      }

      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  OUTLINED_FUNCTION_0(&qword_2801CBAA0);
LABEL_15:
  v25 = sub_2676CBE4C();
  __swift_project_value_buffer(v25, qword_2801CDC90);
  v26 = sub_2676CBE2C();
  v27 = sub_2676CC23C();
  if (os_log_type_enabled(v26, v27))
  {
    *OUTLINED_FUNCTION_17_3() = 0;
    OUTLINED_FUNCTION_24_10(&dword_2675D4000, v28, v29, "#ResolveRecipientsFlow found 1 handle match");
    OUTLINED_FUNCTION_2_5();
  }

  v21 = sub_2675EDF8C();
  v20 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2675E096C(v20);
    v20 = v39;
  }

  v30 = *(v12 + 8);
  v12 += 8;
  v30(v16, v10);
  if ((a3 & 0x8000000000000000) == 0)
  {
    v24 = *(v20 + 16);
    if (v24 > a3)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_22:
    if (v24 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  __break(1u);
LABEL_35:
  OUTLINED_FUNCTION_0(&qword_2801CBAA0);
LABEL_23:
  v31 = sub_2676CBE4C();
  __swift_project_value_buffer(v31, qword_2801CDC90);
  v32 = sub_2676CBE2C();
  v33 = sub_2676CC23C();
  if (os_log_type_enabled(v32, v33))
  {
    *OUTLINED_FUNCTION_17_3() = 0;
    OUTLINED_FUNCTION_24_10(&dword_2675D4000, v34, v35, "#ResolveRecipientsFlow found multiple handle matches");
    OUTLINED_FUNCTION_2_5();
  }

  v36 = swift_allocBox();
  (*(v12 + 16))(v37, v16, v10);
  v20 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2675E096C(v20);
    v20 = v40;
  }

  result = (*(v12 + 8))(v16, v10);
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v20 + 16) > a3)
  {
    v21 = v36 | 0xA000000000000000;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_26767D444()
{
  sub_267678894(*(v0 + 16), *(v0 + 24));
  sub_2676788D0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = qword_2801D3EA0;
  sub_2676CABFC();
  OUTLINED_FUNCTION_2_6();
  (*(v2 + 8))(v0 + v1);

  sub_2675EB7EC(v0 + qword_2801D3EB0, &qword_2801CC6A8, &unk_2676CF5F0);
  sub_2675EB7EC(v0 + qword_2801D3EB8, &qword_2801CC6B0, &qword_2676CFC80);

  sub_26767D5F8(*(v0 + qword_2801CD3D0));
  sub_26767D5F8(*(v0 + qword_2801CD3D8));
  return v0;
}

uint64_t sub_26767D540()
{
  sub_26767D444();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26767D5F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26767D608(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_26767D63C(id result, unsigned __int8 a2)
{
  if (a2 == 2)
  {
    return result;
  }

  if (a2 <= 1u)
  {
  }

  return result;
}

unint64_t sub_26767D660()
{
  result = qword_2801CD480;
  if (!qword_2801CD480)
  {
    sub_2676C9CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD480);
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26767D764(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_6();
  v5 = OUTLINED_FUNCTION_28_3();
  v6(v5);
  return a2;
}

unint64_t sub_26767D7C0()
{
  result = qword_2801CD4C8;
  if (!qword_2801CD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD4C8);
  }

  return result;
}

uint64_t sub_26767D820(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_2676788B8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_26767D854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6A8, &unk_2676CF5F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_10(uint64_t a1)
{

  return MEMORY[0x2821BBCD0](v1 - 208, a1);
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t a1)
{

  return MEMORY[0x2821BBCD0](v1 - 88, a1);
}

uint64_t OUTLINED_FUNCTION_20_10(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_24_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t *OUTLINED_FUNCTION_25_13@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 - 472);
  v4[3] = a1;
  v4[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1(v4);
}

uint64_t OUTLINED_FUNCTION_26_9()
{

  return sub_2676C9FAC();
}

uint64_t *OUTLINED_FUNCTION_27_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1(v2);
}

uint64_t sub_26767DA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v90 = a2;
  v91 = a4;
  v88 = a1;
  v89 = a3;
  v92 = a5;
  v87 = *v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4F8, &qword_2676D3258);
  OUTLINED_FUNCTION_4_1(v6);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD500, &qword_2676D3260);
  OUTLINED_FUNCTION_3();
  v82 = v9;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v82 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD280, &qword_2676D1EB8);
  OUTLINED_FUNCTION_4_1(v13);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD508, &qword_2676D3268);
  OUTLINED_FUNCTION_3();
  v17 = v16;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD510, &unk_2676D4970);
  OUTLINED_FUNCTION_4_1(v21);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD518, &qword_2676D3270);
  OUTLINED_FUNCTION_3();
  v84 = v23;
  v85 = v24;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_1();
  v83 = v26;
  v86 = v5;
  sub_2676CBA1C();
  if (swift_dynamicCastMetatype())
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v27 = sub_2676CBE4C();
    __swift_project_value_buffer(v27, qword_2801CDC90);
    v28 = sub_2676CBE2C();
    v29 = sub_2676CC23C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2675D4000, v28, v29, "#makeContactDisambiguation Send", v30, 2u);
      MEMORY[0x26D5FEA80](v30, -1, -1);
    }

    v31 = v88;

    v32 = v89;
    v33 = v90;
    sub_2676789A0(v90, v89);
    v99 = &type metadata for ContactDisambiguationProducer;
    v100 = sub_26767E3F4();
    OUTLINED_FUNCTION_11_22();
    v34 = swift_allocObject();
    v96 = v34;
    v34[2] = v33;
    v34[3] = v32;
    v35 = v91;
    v34[4] = v31;
    v34[5] = v35;
    v36 = sub_2676C9B9C();
    OUTLINED_FUNCTION_7_13(v36);

    v37 = v35;
    v38 = sub_2676C9B8C();
    v94 = v36;
    v95 = MEMORY[0x277D5BD58];
    v93 = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD558, &qword_2676D3298);
    OUTLINED_FUNCTION_7_13(v39);
    OUTLINED_FUNCTION_4_25();
    v96 = sub_2676C9C8C();

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2A8, &qword_2676CE508);
    v41 = sub_26767EA54(&qword_2801CD560, &qword_2801CD558, &qword_2676D3298);
    v42 = v83;
    sub_2676C942C();

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD568, &qword_2676D32A0);
    v44 = v92;
    v92[3] = v43;
    v96 = v39;
    v97 = v40;
    v98 = v41;
    v45 = OUTLINED_FUNCTION_3_20();
    v46 = v84;
    v96 = v84;
    v97 = v40;
    v44[4] = OUTLINED_FUNCTION_0_24(v45);
    __swift_allocate_boxed_opaque_existential_1(v44);

    sub_2676C941C();

    return (*(v85 + 8))(v42, v46);
  }

  else
  {
    v84 = v20;
    v85 = v17;
    sub_2676CBA6C();
    if (swift_dynamicCastMetatype())
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v48 = sub_2676CBE4C();
      __swift_project_value_buffer(v48, qword_2801CDC90);
      v49 = sub_2676CBE2C();
      v50 = sub_2676CC23C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_2675D4000, v49, v50, "#makeContactDisambiguation Reply", v51, 2u);
        MEMORY[0x26D5FEA80](v51, -1, -1);
      }

      v52 = v88;

      v54 = v89;
      v53 = v90;
      sub_267678BF0(v90, v89);
      v99 = &type metadata for ContactDisambiguationProducer;
      v100 = sub_26767E3F4();
      OUTLINED_FUNCTION_11_22();
      v55 = swift_allocObject();
      v96 = v55;
      v55[2] = v53;
      v55[3] = v54;
      v56 = v91;
      v55[4] = v52;
      v55[5] = v56;
      v57 = sub_2676C9B9C();
      OUTLINED_FUNCTION_7_13(v57);

      v58 = v56;
      v59 = sub_2676C9B8C();
      v94 = v57;
      v95 = MEMORY[0x277D5BD58];
      v93 = v59;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD540, &qword_2676D3288);
      OUTLINED_FUNCTION_7_13(v60);
      OUTLINED_FUNCTION_4_25();
      v61 = sub_2676C9C8C();
      OUTLINED_FUNCTION_12_13(v61);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2B8, &qword_2676CE540);
      v63 = sub_26767EA54(&qword_2801CD548, &qword_2801CD540, &qword_2676D3288);
      v64 = v84;
      OUTLINED_FUNCTION_10_16(sub_26767E9F4);

      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD550, &qword_2676D3290);
      v66 = v92;
      v92[3] = v65;
      v96 = v60;
      v97 = v62;
      v98 = v63;
      v67 = OUTLINED_FUNCTION_3_20();
      v96 = v15;
      v97 = v62;
      v66[4] = OUTLINED_FUNCTION_0_24(v67);
      __swift_allocate_boxed_opaque_existential_1(v66);

      sub_2676C941C();

      return (*(v85 + 8))(v64, v15);
    }

    else
    {
      v68 = v88;

      sub_267678E40();
      v99 = &type metadata for ContactDisambiguationProducer;
      v100 = sub_26767E3F4();
      OUTLINED_FUNCTION_11_22();
      v69 = swift_allocObject();
      v96 = v69;
      v70 = v89;
      v69[2] = v90;
      v69[3] = v70;
      v71 = v91;
      v69[4] = v68;
      v69[5] = v71;
      v72 = sub_2676C9B9C();
      OUTLINED_FUNCTION_7_13(v72);

      v73 = v71;
      v74 = sub_2676C9B8C();
      v94 = v72;
      v95 = MEMORY[0x277D5BD58];
      v93 = v74;
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD528, &qword_2676D3278);
      OUTLINED_FUNCTION_7_13(v75);
      OUTLINED_FUNCTION_4_25();
      v76 = sub_2676C9C8C();
      OUTLINED_FUNCTION_12_13(v76);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2C0, &qword_2676CE548);
      v78 = sub_26767EA54(&qword_2801CD530, &qword_2801CD528, &qword_2676D3278);
      OUTLINED_FUNCTION_10_16(sub_26767E974);

      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD538, &qword_2676D3280);
      v80 = v92;
      v92[3] = v79;
      v96 = v75;
      v97 = v77;
      v98 = v78;
      v81 = OUTLINED_FUNCTION_3_20();
      v96 = v8;
      v97 = v77;
      v80[4] = OUTLINED_FUNCTION_0_24(v81);
      __swift_allocate_boxed_opaque_existential_1(v80);

      sub_2676C941C();

      return (*(v82 + 8))(v12, v8);
    }
  }
}

unint64_t sub_26767E3F4()
{
  result = qword_2801CD520;
  if (!qword_2801CD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD520);
  }

  return result;
}

uint64_t sub_26767E448@<X0>(uint64_t *a1@<X8>)
{
  v64 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  OUTLINED_FUNCTION_4_1(v1);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_9_1();
  v63[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_4_1(v4);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_1();
  v63[5] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  OUTLINED_FUNCTION_4_1(v7);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_1();
  v63[4] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v10);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  OUTLINED_FUNCTION_4_1(v12);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  OUTLINED_FUNCTION_4_1(v14);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  OUTLINED_FUNCTION_4_1(v16);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v17);
  v63[1] = v63 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v19);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB50, &qword_2676D05A8);
  OUTLINED_FUNCTION_4_1(v21);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC4F8, &unk_2676CF250);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2676CDE20;
  sub_2676CB80C();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  v29 = sub_2676CAD6C();
  v63[2] = v30;
  v63[3] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  result = sub_2676CA7DC();
  *v64 = v24;
  return result;
}

uint64_t sub_26767E920(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = a3(a1);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  *(a2 + 32) = v4;
  *(a2 + 40) = v7;
  v8 = *(a2 + 48);
  *(a2 + 48) = v9;

  return sub_2676788D0(v5, v6, v8);
}

uint64_t sub_26767E9A4(void *a1)
{
  v2 = sub_26767CD54();
  v2(a1);
}

uint64_t sub_26767EA54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{
  *(v1 - 112) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_10_16(uint64_t a1)
{

  return sub_2676C942C();
}

uint64_t OUTLINED_FUNCTION_12_13(uint64_t a1)
{
  *(v1 - 128) = a1;
}

uint64_t sub_26767EB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v175 = a5;
  v176 = a4;
  v172 = a2;
  v173 = a3;
  v174 = a1;
  v171 = *v5;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD570, &qword_2676D32A8);
  OUTLINED_FUNCTION_3();
  v151 = v6;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v8);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4F8, &qword_2676D3258);
  OUTLINED_FUNCTION_3();
  v147 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_7();
  v148 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v14);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD578, &qword_2676D32B0);
  OUTLINED_FUNCTION_3();
  v156 = v15;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v17);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD580, &qword_2676D32B8);
  OUTLINED_FUNCTION_3();
  v153 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_7();
  v154 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_24_1();
  v167 = v23;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD588, &qword_2676D32C0);
  OUTLINED_FUNCTION_3();
  v160 = v24;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD280, &qword_2676D1EB8);
  OUTLINED_FUNCTION_3();
  v166 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_7();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v144 - v34;
  v36 = sub_2676CB48C();
  v37 = OUTLINED_FUNCTION_4_1(v36);
  MEMORY[0x28223BE20](v37);
  v39 = &v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD590, &qword_2676D32C8);
  OUTLINED_FUNCTION_3();
  v169 = v41;
  v170 = v40;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9_1();
  v168 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD510, &unk_2676D4970);
  OUTLINED_FUNCTION_3();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_1_7();
  v50 = v48 - v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_24_1();
  v53 = v52;
  sub_2676CBA1C();
  if (swift_dynamicCastMetatype())
  {
    v163 = v53;
    sub_2676789A0(v172, v173);
    v54 = v174;
    v55 = sub_2676CAE5C();
    v173 = sub_2675E6418(v55);

    v164 = v46;
    v56 = *(v46 + 16);
    v162 = v44;
    v56(v50, v53, v44);
    v57 = type metadata accessor for HandleDisambiguationProducer(0);
    v179 = v57;
    v58 = sub_26767FB04();
    v59 = OUTLINED_FUNCTION_43_4(v58);
    v60 = *(v57 + 20);
    sub_2676CAECC();
    OUTLINED_FUNCTION_4_22();
    (*(v61 + 16))(v59 + v60, v54);
    type metadata accessor for ContactResolutionCATsSimple(0);
    sub_2676CB47C();
    v62 = sub_2676CB42C();
    *v59 = v62;
    v63 = v176;
    *(v59 + *(v57 + 24)) = v176;
    MEMORY[0x28223BE20](v62);
    *(&v144 - 2) = v54;
    v64 = sub_2676C9B9C();
    OUTLINED_FUNCTION_11_23(v64);
    v65 = v63;
    v66 = sub_2676C9B8C();
    OUTLINED_FUNCTION_18_11(v66, MEMORY[0x277D5BD58]);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD5E8, &qword_2676D3300);
    OUTLINED_FUNCTION_7_13(v67);
    OUTLINED_FUNCTION_4_26();
    v177 = sub_2676C9C8C();

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2C8, &qword_2676CE550);
    sub_26767EA54(&qword_2801CD5F0, &qword_2801CD5E8, &qword_2676D3300);
    OUTLINED_FUNCTION_34_8();
    v69 = v168;
    OUTLINED_FUNCTION_9_24();
    sub_2676C942C();

    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD5F8, &qword_2676D3308);
    OUTLINED_FUNCTION_17_17(v70);
    v177 = v67;
    v178 = v68;
    v71 = OUTLINED_FUNCTION_0_25();
    v72 = v170;
    v177 = v170;
    v178 = v68;
    v73 = OUTLINED_FUNCTION_0_24(v71);
    OUTLINED_FUNCTION_95(v73);

    OUTLINED_FUNCTION_20_11();
    OUTLINED_FUNCTION_9_24();
    sub_2676C941C();

    (*(v169 + 1))(v69, v72);
    return (*(v164 + 8))(v163, v162);
  }

  else
  {
    v168 = v32;
    v169 = v39;
    v75 = v172;
    v76 = v173;
    v170 = v5;
    v77 = v174;
    v78 = v35;
    v79 = v176;
    v80 = v167;
    v81 = v165;
    sub_2676CBA6C();
    if (swift_dynamicCastMetatype())
    {
      v146 = v78;
      sub_267678BF0(v75, v76);
      v82 = sub_2676CAE5C();
      v173 = sub_2675E6418(v82);

      v83 = *(v166 + 16);
      v145 = v27;
      v83(v168, v78, v27);
      v84 = type metadata accessor for HandleDisambiguationProducer(0);
      v179 = v84;
      v85 = sub_26767FB04();
      v86 = OUTLINED_FUNCTION_43_4(v85);
      v87 = *(v84 + 20);
      sub_2676CAECC();
      OUTLINED_FUNCTION_4_22();
      (*(v88 + 16))(v86 + v87, v77);
      v89 = type metadata accessor for ContactResolutionCATsSimple(0);
      OUTLINED_FUNCTION_16_10(v89);
      v90 = sub_2676CB42C();
      *v86 = v90;
      *(v86 + *(v84 + 24)) = v79;
      MEMORY[0x28223BE20](v90);
      *(&v144 - 2) = v77;
      v91 = sub_2676C9B9C();
      OUTLINED_FUNCTION_11_23(v91);
      v92 = v79;
      v93 = sub_2676C9B8C();
      OUTLINED_FUNCTION_18_11(v93, MEMORY[0x277D5BD58]);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD5D0, &qword_2676D32F0);
      OUTLINED_FUNCTION_7_13(v94);
      OUTLINED_FUNCTION_4_26();
      v177 = sub_2676C9C8C();

      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2E0, &qword_2676CE5E8);
      sub_26767EA54(&qword_2801CD5D8, &qword_2801CD5D0, &qword_2676D32F0);
      OUTLINED_FUNCTION_34_8();
      v96 = v159;
      sub_2676C942C();

      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD5E0, &qword_2676D32F8);
      OUTLINED_FUNCTION_17_17(v97);
      v177 = v94;
      v178 = v95;
      v98 = OUTLINED_FUNCTION_0_25();
      v99 = v161;
      v177 = v161;
      v178 = v95;
      v100 = OUTLINED_FUNCTION_0_24(v98);
      OUTLINED_FUNCTION_95(v100);

      OUTLINED_FUNCTION_20_11();
      sub_2676C941C();

      (*(v160 + 8))(v96, v99);
      return (*(v166 + 8))(v146, v145);
    }

    else
    {
      v101 = v75 == 0x7265646E6573 && v76 == 0xE600000000000000;
      if (v101 || (sub_2676CC59C() & 1) != 0)
      {
        sub_267678E60();
        v102 = sub_2676CAE5C();
        v173 = sub_2675E6418(v102);

        v103 = v153;
        (*(v153 + 16))(v154, v80, v158);
        v104 = type metadata accessor for HandleDisambiguationProducer(0);
        v179 = v104;
        v105 = sub_26767FB04();
        v106 = OUTLINED_FUNCTION_43_4(v105);
        v107 = *(v104 + 20);
        sub_2676CAECC();
        OUTLINED_FUNCTION_4_22();
        (*(v108 + 16))(v106 + v107, v77);
        v109 = type metadata accessor for ContactResolutionCATsSimple(0);
        OUTLINED_FUNCTION_16_10(v109);
        v110 = sub_2676CB42C();
        v111 = OUTLINED_FUNCTION_12_14(v110);
        MEMORY[0x28223BE20](v111);
        v112 = OUTLINED_FUNCTION_14_16();
        OUTLINED_FUNCTION_11_23(v112);
        v113 = v27;
        v114 = sub_2676C9B8C();
        OUTLINED_FUNCTION_18_11(v114, MEMORY[0x277D5BD58]);
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD5B8, &qword_2676D32E0);
        OUTLINED_FUNCTION_7_13(v115);
        OUTLINED_FUNCTION_4_26();
        v116 = sub_2676C9C8C();
        OUTLINED_FUNCTION_15_17(v116);
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2E8, &qword_2676CE5F0);
        sub_26767EA54(&qword_2801CD5C0, &qword_2801CD5B8, &qword_2676D32E0);
        OUTLINED_FUNCTION_34_8();
        v118 = v155;
        OUTLINED_FUNCTION_9_24();
        sub_2676C942C();

        v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD5C8, &qword_2676D32E8);
        OUTLINED_FUNCTION_17_17(v119);
        v177 = v115;
        v178 = v117;
        v120 = OUTLINED_FUNCTION_0_25();
        v121 = v157;
        v177 = v157;
        v178 = v117;
        v122 = OUTLINED_FUNCTION_0_24(v120);
        OUTLINED_FUNCTION_95(v122);

        OUTLINED_FUNCTION_20_11();
        OUTLINED_FUNCTION_9_24();
        sub_2676C941C();

        (*(v156 + 8))(v118, v121);
        return (*(v103 + 8))(v167, v158);
      }

      else
      {
        sub_267678E40();
        v123 = sub_2676CAE5C();
        v173 = sub_2675E6418(v123);

        v124 = v147;
        (*(v147 + 16))(v148, v81, v152);
        v125 = type metadata accessor for HandleDisambiguationProducer(0);
        v179 = v125;
        v126 = sub_26767FB04();
        v127 = OUTLINED_FUNCTION_43_4(v126);
        v128 = *(v125 + 20);
        sub_2676CAECC();
        OUTLINED_FUNCTION_4_22();
        (*(v129 + 16))(v127 + v128, v77);
        v130 = type metadata accessor for ContactResolutionCATsSimple(0);
        OUTLINED_FUNCTION_16_10(v130);
        v131 = sub_2676CB42C();
        v132 = OUTLINED_FUNCTION_12_14(v131);
        MEMORY[0x28223BE20](v132);
        v133 = OUTLINED_FUNCTION_14_16();
        OUTLINED_FUNCTION_11_23(v133);
        v134 = v27;
        v135 = sub_2676C9B8C();
        OUTLINED_FUNCTION_18_11(v135, MEMORY[0x277D5BD58]);
        v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD5A0, &qword_2676D32D0);
        OUTLINED_FUNCTION_7_13(v136);
        OUTLINED_FUNCTION_4_26();
        v137 = sub_2676C9C8C();
        OUTLINED_FUNCTION_15_17(v137);
        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2F0, &qword_2676CE5F8);
        sub_26767EA54(&qword_2801CD5A8, &qword_2801CD5A0, &qword_2676D32D0);
        OUTLINED_FUNCTION_34_8();
        v139 = v149;
        OUTLINED_FUNCTION_23_10();
        sub_2676C942C();

        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD5B0, &qword_2676D32D8);
        OUTLINED_FUNCTION_17_17(v140);
        v177 = v136;
        v178 = v138;
        v141 = OUTLINED_FUNCTION_0_25();
        v142 = v150;
        v177 = v150;
        v178 = v138;
        v143 = OUTLINED_FUNCTION_0_24(v141);
        OUTLINED_FUNCTION_95(v143);

        OUTLINED_FUNCTION_20_11();
        OUTLINED_FUNCTION_23_10();
        sub_2676C941C();

        (*(v151 + 8))(v139, v142);
        return (*(v124 + 8))(v165, v152);
      }
    }
  }
}

unint64_t sub_26767FB04()
{
  result = qword_2801CD598;
  if (!qword_2801CD598)
  {
    type metadata accessor for HandleDisambiguationProducer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD598);
  }

  return result;
}

uint64_t sub_26767FB5C@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  MEMORY[0x28223BE20](v1 - 8);
  v61 = v46 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v46 - v11;
  v47 = v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v46 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB50, &qword_2676D05A8);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v46 - v26;
  v58 = v46 - v26;
  v28 = sub_2676CB80C();
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v28);
  v29 = sub_2676CAD6C();
  v56 = v30;
  v57 = v29;
  v31 = sub_2676CAAFC();
  v53 = v32;
  v54 = v31;
  v33 = sub_2676CAB0C();
  v51 = v34;
  v52 = v33;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v55);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  v35 = v15;
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v50);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v49);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  v36 = v9;
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v48);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  v38 = v59;
  __swift_storeEnumTagSinglePayload(v59, 1, 1, v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
  v41 = v60;
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v40);
  v46[0] = v18;
  v46[1] = v24;
  v42 = v47;
  sub_2676CA7BC();
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v39);
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v55);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v50);
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v49);
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v48);
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v37);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v43);
  __swift_storeEnumTagSinglePayload(v41, 1, 1, v40);
  v44 = v62;
  sub_2676CA7DC();
  return __swift_storeEnumTagSinglePayload(v44, 0, 1, v43);
}

uint64_t sub_267680158@<X0>(uint64_t *a1@<X8>)
{
  v102 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_4_1(v1);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_9_1();
  v101 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  OUTLINED_FUNCTION_4_1(v4);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_1();
  v100 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  OUTLINED_FUNCTION_4_1(v7);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v9);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  OUTLINED_FUNCTION_4_1(v11);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  OUTLINED_FUNCTION_4_1(v13);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  OUTLINED_FUNCTION_4_1(v15);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v18 = OUTLINED_FUNCTION_4_1(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_24_1();
  v103 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB50, &qword_2676D05A8);
  OUTLINED_FUNCTION_4_1(v21);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v22);
  v96 = &v86 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC4F8, &unk_2676CF250);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v99 = (*(*(v98 - 8) + 80) + 32) & ~*(*(v98 - 8) + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_2676CDE20;
  sub_2676CB80C();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v28 = sub_2676CAD6C();
  v94 = v29;
  v95 = v28;
  v30 = sub_2676CAAFC();
  v91 = v31;
  v92 = v30;
  v32 = sub_2676CAB0C();
  v89 = v33;
  v90 = v32;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v50);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v54);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v58);
  v62 = v103;
  sub_2676CA7BC();
  __swift_storeEnumTagSinglePayload(v62, 0, 1, v54);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v93);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v88);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v87);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v86);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v50);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v98);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v58);
  v84 = v97;
  result = sub_2676CA7DC();
  *v102 = v84;
  return result;
}

uint64_t sub_267680728(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = a3(a1);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  *(a2 + 32) = v4;
  *(a2 + 40) = v7;
  v8 = *(a2 + 48);
  *(a2 + 48) = v9;

  return sub_2676788D0(v5, v6, v8);
}

uint64_t sub_2676807AC(void *a1)
{
  v2 = sub_26767CDDC();
  v2(a1);
}

uint64_t OUTLINED_FUNCTION_0_25()
{
  *(v1 - 112) = v0;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_11_23(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_14(uint64_t result)
{
  *v2 = result;
  *(v2 + *(v1 + 24)) = *(v3 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_16()
{

  return sub_2676C9B9C();
}

uint64_t OUTLINED_FUNCTION_15_17(uint64_t a1)
{
  *(v1 - 128) = a1;
}

uint64_t OUTLINED_FUNCTION_16_10(uint64_t a1)
{

  return sub_2676CB47C();
}

uint64_t OUTLINED_FUNCTION_18_11@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 144) = v2;
  *(v3 - 136) = a2;
  *(v3 - 168) = result;
  return result;
}

uint64_t sub_2676809FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v38 = a1;
  v39 = a4;
  v36 = a5;
  v37 = sub_2676CA1EC();
  OUTLINED_FUNCTION_3();
  v35 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_7();
  v34 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v20 = sub_2676CA07C();
  OUTLINED_FUNCTION_3();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_7();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v34 - v28;
  sub_2676CA78C();
  (*(v16 + 16))(v19, v38, v14);
  v39(0);
  sub_2676CA75C();
  v30 = v40;
  sub_2676CA30C();

  if (!v30)
  {
    sub_2676CA1DC();
    (*(v22 + 16))(v26, v29, v20);
    sub_2676CA1CC();
    sub_2676CA26C();
    v32 = v35;
    v33 = v37;
    (*(v35 + 16))(v34, v13, v37);
    sub_2676CA25C();
    (*(v32 + 8))(v13, v33);
    return (*(v22 + 8))(v29, v20);
  }

  return result;
}

uint64_t sub_267680CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v202 = a4;
  v203 = a3;
  v199 = a1;
  v200 = a2;
  v204 = *v4;
  v198 = v204;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4F8, &qword_2676D3258);
  OUTLINED_FUNCTION_3();
  v181 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_11_5(v8);
  v178 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v11);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD580, &qword_2676D32B8);
  OUTLINED_FUNCTION_3();
  v192 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_11_5(v14);
  v184 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD280, &qword_2676D1EB8);
  OUTLINED_FUNCTION_3();
  v193 = v18;
  v194 = v19;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v189 = &v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_24_1();
  v195 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC300, &unk_2676D09B0);
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_13();
  v27 = MEMORY[0x28223BE20](v26);
  v191 = &v175 - v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_24_1();
  v197 = v29;
  v201 = type metadata accessor for NeedsValuePromptProvider(0);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4_13();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v175 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v175 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v175 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v175 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v175 - v46;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_24_1();
  v206 = v48;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD510, &unk_2676D4970);
  OUTLINED_FUNCTION_3();
  v196 = v49;
  v51 = MEMORY[0x28223BE20](v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_24_1();
  v53 = v52;
  v204 = v5;
  sub_2676CBA1C();
  if (swift_dynamicCastMetatype())
  {
    v190 = v53;
    v54 = v200;
    v55 = v203;
    sub_2676789A0(v200, v203);
    v56 = v197;
    sub_26763B360(v199, v197);
    v57 = v196;
    v58 = OUTLINED_FUNCTION_58_1();
    v59(v58);
    OUTLINED_FUNCTION_16_11();
    v60 = swift_allocObject();
    v61 = OUTLINED_FUNCTION_12_15(v60);
    v62(v61);
    v63 = v201;
    v64 = *(v201 + 28);
    v65 = sub_2676C9B9C();
    OUTLINED_FUNCTION_7_13(v65);
    *&v47[v64] = sub_2676C9B8C();
    v66 = sub_2676CAA9C();
    *v47 = __swift_getEnumTagSinglePayload(v56, 1, v66) != 1;
    *(v47 + 1) = v54;
    *(v47 + 2) = v55;
    v67 = &v47[*(v63 + 32)];
    *v67 = sub_267682F1C;
    v67[1] = v60;
    v68 = &v47[*(v63 + 24)];
    v69 = type metadata accessor for PromptForContactProducer(0);
    sub_26763B360(v56, v68 + *(v69 + 20));
    *v68 = v54;
    v68[1] = v55;
    swift_bridgeObjectRetain_n();
    sub_2675EB7EC(v56, &qword_2801CC300, &unk_2676D09B0);
    sub_267682B28(v47, v206);
    OUTLINED_FUNCTION_79();
    v70 = swift_allocObject();
    *(v70 + 16) = v54;
    *(v70 + 24) = v55;
    type metadata accessor for ContactPromptResponseHandler();
    OUTLINED_FUNCTION_79();
    v71 = swift_allocObject();
    *(v71 + 16) = sub_267682FD0;
    *(v71 + 24) = v70;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD600, &qword_2676D3310);
    v73 = v202;
    v202[3] = v72;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD608, &qword_2676D3318);
    v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD610, &qword_2676D3320);
    v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD618, &qword_2676D3328);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD620, &qword_2676D3330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD628, &qword_2676D3338);
    v76 = sub_267682D24();
    v77 = OUTLINED_FUNCTION_2_25(v76);
    v78 = OUTLINED_FUNCTION_1_25(v77);
    v207 = v75;
    v208 = v78;
    v79 = OUTLINED_FUNCTION_4_27();
    v207 = v74;
    v208 = &type metadata for DisambiguationResponse;
    v80 = OUTLINED_FUNCTION_3_22(v79);
    v73[4] = OUTLINED_FUNCTION_0_26(v80);
    __swift_allocate_boxed_opaque_existential_1(v73);

    v81 = v206;
    v82 = OUTLINED_FUNCTION_58_1();
    sub_267681D50(v82, v83, v84);

    sub_267682D88(v81);
    return (*(v57 + 8))(v190, v205);
  }

  else
  {
    v196 = v38;
    v197 = v41;
    v205 = v21;
    v206 = v44;
    v190 = v35;
    v86 = v191;
    v87 = v192;
    v88 = v198;
    v89 = v194;
    v90 = v195;
    v91 = v193;
    v92 = v200;
    v93 = v203;
    sub_2676CBA6C();
    if (swift_dynamicCastMetatype())
    {
      sub_267678BF0(v92, v93);
      v94 = v86;
      sub_26763B360(v199, v86);
      v95 = v189;
      v96 = v90;
      v97 = v91;
      (*(v89 + 16))(v189, v96, v91);
      OUTLINED_FUNCTION_16_11();
      v98 = swift_allocObject();
      (*(v89 + 32))(&v98[v88], v95, v97);
      v99 = OUTLINED_FUNCTION_14_17();
      OUTLINED_FUNCTION_7_13(v99);
      v100 = sub_2676C9B8C();
      v101 = v197;
      *&v197[v89 + 32] = v100;
      v102 = sub_2676CAA9C();
      *v101 = __swift_getEnumTagSinglePayload(v94, 1, v102) != 1;
      *(v101 + 8) = v92;
      *(v101 + 16) = v93;
      v103 = (v101 + *(v95 + 8));
      *v103 = sub_267682E20;
      v103[1] = v98;
      v104 = OUTLINED_FUNCTION_13_17();
      sub_26763B360(v94, &v98[*(v104 + 20)]);
      *v98 = v92;
      *(v98 + 1) = v93;
      swift_bridgeObjectRetain_n();
      sub_2675EB7EC(v94, &qword_2801CC300, &unk_2676D09B0);
      v105 = v206;
      sub_267682B28(v101, v206);
      OUTLINED_FUNCTION_79();
      v106 = swift_allocObject();
      *(v106 + 16) = v92;
      *(v106 + 24) = v93;
      type metadata accessor for ContactPromptResponseHandler();
      OUTLINED_FUNCTION_79();
      v107 = swift_allocObject();
      *(v107 + 16) = sub_267682E5C;
      *(v107 + 24) = v106;
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD600, &qword_2676D3310);
      v109 = v202;
      v202[3] = v108;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD608, &qword_2676D3318);
      v110 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD610, &qword_2676D3320);
      v111 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD618, &qword_2676D3328);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD620, &qword_2676D3330);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD628, &qword_2676D3338);
      v112 = sub_267682D24();
      v113 = OUTLINED_FUNCTION_2_25(v112);
      v114 = OUTLINED_FUNCTION_1_25(v113);
      v207 = v111;
      v208 = v114;
      v115 = OUTLINED_FUNCTION_4_27();
      v207 = v110;
      v208 = &type metadata for DisambiguationResponse;
      v116 = OUTLINED_FUNCTION_3_22(v115);
      v109[4] = OUTLINED_FUNCTION_0_26(v116);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v109);

      sub_267681D50(v105, v107, boxed_opaque_existential_1);

      sub_267682D88(v105);
      return (*(v194 + 8))(v195, v193);
    }

    else
    {
      v118 = v92;
      v120 = v92 == 0x7265646E6573;
      v119 = v93;
      v120 = v120 && v93 == 0xE600000000000000;
      if (v120 || (sub_2676CC59C() & 1) != 0)
      {
        sub_267678E60();
        v121 = v186;
        sub_26763B360(v199, v186);
        v122 = v87;
        v123 = v185;
        v124 = OUTLINED_FUNCTION_58_1();
        v125(v124);
        OUTLINED_FUNCTION_16_11();
        v126 = swift_allocObject();
        v127 = OUTLINED_FUNCTION_12_15(v126);
        v128(v127);
        v129 = OUTLINED_FUNCTION_14_17();
        OUTLINED_FUNCTION_7_13(v129);
        v130 = sub_2676C9B8C();
        v131 = v190;
        *&v190[v123] = v130;
        v132 = sub_2676CAA9C();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v121, 1, v132);
        OUTLINED_FUNCTION_11_24(EnumTagSinglePayload);
        *v134 = sub_267682DE4;
        v134[1] = v126;
        v135 = OUTLINED_FUNCTION_13_17();
        sub_26763B360(v121, v126 + *(v135 + 20));
        *v126 = v118;
        *(v126 + 1) = v119;
        swift_bridgeObjectRetain_n();
        sub_2675EB7EC(v121, &qword_2801CC300, &unk_2676D09B0);
        v136 = v196;
        sub_267682B28(v131, v196);
        type metadata accessor for ContactPromptResponseHandler();
        OUTLINED_FUNCTION_79();
        v137 = swift_allocObject();
        *(v137 + 16) = sub_2676828A0;
        *(v137 + 24) = 0;
        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD600, &qword_2676D3310);
        v139 = v202;
        v202[3] = v138;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD608, &qword_2676D3318);
        v140 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD610, &qword_2676D3320);
        v141 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD618, &qword_2676D3328);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD620, &qword_2676D3330);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD628, &qword_2676D3338);
        v142 = sub_267682D24();
        v143 = OUTLINED_FUNCTION_2_25(v142);
        v144 = OUTLINED_FUNCTION_1_25(v143);
        v207 = v141;
        v208 = v144;
        v145 = OUTLINED_FUNCTION_4_27();
        v207 = v140;
        v208 = &type metadata for DisambiguationResponse;
        v146 = OUTLINED_FUNCTION_3_22(v145);
        v139[4] = OUTLINED_FUNCTION_0_26(v146);
        v147 = __swift_allocate_boxed_opaque_existential_1(v139);
        sub_267681D50(v136, v137, v147);

        sub_267682D88(v136);
        return (*(v122 + 8))(v187, v188);
      }

      else
      {
        sub_267678E40();
        v148 = v177;
        sub_26763B360(v199, v177);
        v149 = v181;
        v150 = v179;
        v151 = OUTLINED_FUNCTION_58_1();
        v152(v151);
        OUTLINED_FUNCTION_16_11();
        v153 = swift_allocObject();
        v154 = OUTLINED_FUNCTION_12_15(v153);
        v155(v154);
        v156 = OUTLINED_FUNCTION_14_17();
        OUTLINED_FUNCTION_7_13(v156);
        v157 = sub_2676C9B8C();
        v158 = v176;
        *(v176 + v150) = v157;
        v159 = sub_2676CAA9C();
        v160 = __swift_getEnumTagSinglePayload(v148, 1, v159);
        OUTLINED_FUNCTION_11_24(v160);
        *v161 = sub_267682AEC;
        v161[1] = v153;
        v162 = OUTLINED_FUNCTION_13_17();
        sub_26763B360(v148, v153 + *(v162 + 20));
        *v153 = v118;
        *(v153 + 1) = v93;
        swift_bridgeObjectRetain_n();
        sub_2675EB7EC(v148, &qword_2801CC300, &unk_2676D09B0);
        v163 = v180;
        sub_267682B28(v158, v180);
        type metadata accessor for ContactPromptResponseHandler();
        OUTLINED_FUNCTION_79();
        v164 = swift_allocObject();
        *(v164 + 16) = sub_267682B8C;
        *(v164 + 24) = 0;
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD600, &qword_2676D3310);
        v166 = v202;
        v202[3] = v165;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD608, &qword_2676D3318);
        v167 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD610, &qword_2676D3320);
        v168 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD618, &qword_2676D3328);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD620, &qword_2676D3330);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD628, &qword_2676D3338);
        v169 = sub_267682D24();
        v170 = OUTLINED_FUNCTION_2_25(v169);
        v171 = OUTLINED_FUNCTION_1_25(v170);
        v207 = v168;
        v208 = v171;
        v172 = OUTLINED_FUNCTION_4_27();
        v207 = v167;
        v208 = &type metadata for DisambiguationResponse;
        v173 = OUTLINED_FUNCTION_3_22(v172);
        v166[4] = OUTLINED_FUNCTION_0_26(v173);
        v174 = __swift_allocate_boxed_opaque_existential_1(v166);
        sub_267681D50(v163, v164, v174);

        sub_267682D88(v163);
        return (*(v149 + 8))(v182, v183);
      }
    }
  }
}

uint64_t sub_267681C0C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - v4;
  v7[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD510, &unk_2676D4970);
  sub_2676C986C();
  sub_2676809FC(v5, &qword_2801CC658, &qword_2676D45A0, MEMORY[0x277D5C808], a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_267681D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD620, &qword_2676D3330);
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD618, &qword_2676D3328);
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD610, &qword_2676D3320);
  v13 = *(v12 - 8);
  v35 = v12;
  v36 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD608, &qword_2676D3318);
  v17 = *(v16 - 8);
  v37 = v16;
  v38 = v17;
  MEMORY[0x28223BE20](v16);
  v31 = &v31 - v18;
  v46 = type metadata accessor for NeedsValuePromptProvider(0);
  v47 = sub_267683BE0(&qword_2801CD640, type metadata accessor for NeedsValuePromptProvider, &unk_2676D0330);
  v19 = __swift_allocate_boxed_opaque_existential_1(&v43);
  sub_267683B7C(a1, v19);
  v41 = type metadata accessor for ContactPromptResponseHandler();
  v42 = sub_267683BE0(&qword_2801CD648, type metadata accessor for ContactPromptResponseHandler, &unk_2676CDD60);
  v40 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD628, &qword_2676D3338);
  swift_allocObject();

  sub_2676C9F2C();

  v21 = sub_2676C9F1C();

  v43 = v21;
  v22 = sub_267682D24();

  sub_2676C942C();

  v43 = v20;
  v44 = &type metadata for DisambiguationResponse;
  v45 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2676C941C();

  (*(v32 + 8))(v7, v5);

  v43 = v5;
  v44 = &type metadata for DisambiguationResponse;
  v45 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v33;
  sub_2676C93BC();

  (*(v34 + 8))(v11, v25);

  v43 = v25;
  v44 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v31;
  v28 = v35;
  sub_2676C93AC();

  (*(v36 + 8))(v15, v28);

  v43 = v28;
  v44 = &type metadata for DisambiguationResponse;
  v45 = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v37;
  sub_2676C939C();

  return (*(v38 + 8))(v27, v29);
}

uint64_t sub_267682338@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - v4;
  v7[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD280, &qword_2676D1EB8);
  sub_2676C986C();
  sub_2676809FC(v5, &qword_2801CC628, &unk_2676CF530, MEMORY[0x277D5C828], a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26768247C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void *__return_ptr, uint64_t))
{
  sub_2676CA56C();
  if (v18[3])
  {
    a4(0);
    if (swift_dynamicCast())
    {
      v9 = v17;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_2675EB7EC(v18, &qword_2801CC158, &qword_2676CDDA0);
    v9 = 0;
  }

  v10 = sub_267625A2C(a2, a3);
  if (v10 == 3)
  {
    if (!v9)
    {
      return 0;
    }

    a5(v18, v13);

    if (!v18[0])
    {
      goto LABEL_23;
    }

    v12 = sub_2676CA54C();
  }

  else
  {
    if (v10 == 2)
    {
      if (v9)
      {

        a5(v18, v11);

        if (v18[0])
        {
          v12 = sub_2676CA53C();
          goto LABEL_17;
        }

LABEL_23:

        return 0;
      }

      return 0;
    }

    if (!v9)
    {
      return 0;
    }

    a5(v18, v14);

    if (!v18[0])
    {
      goto LABEL_23;
    }

    v12 = sub_2676CA51C();
  }

LABEL_17:
  v15 = v12;

  if (!v15)
  {

    return v15;
  }

  if (!sub_267630B8C())
  {

    return 0;
  }

  sub_267692C1C();
  if ((v15 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5FE0E0](0, v15);
  }

  else
  {
  }

  sub_2676CA48C();

  if (!v17)
  {

    return 0;
  }

  v15 = sub_2676CA4EC();

  return v15;
}

uint64_t sub_2676826D0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD638, &unk_2676D3340);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC430, &unk_2676D0440);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD580, &qword_2676D32B8);
  sub_2676C986C();
  sub_2675EB7EC(v4, &qword_2801CD638, &unk_2676D3340);
  sub_2676809FC(v8, &qword_2801CC430, &unk_2676D0440, MEMORY[0x277D5C7E8], a1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2676828A0(uint64_t a1)
{
  sub_2676CA56C();
  if (!v4[3])
  {
    sub_2675EB7EC(v4, &qword_2801CC158, &qword_2676CDDA0);
    return 0;
  }

  sub_2676CA5EC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_2676CA5CC();

  v1 = v4[0];
  if (!v4[0])
  {

    return v1;
  }

  v2 = sub_2676CA55C();

  if (!v2)
  {

    return 0;
  }

  v1 = sub_2676CA4EC();

  return v1;
}

uint64_t sub_2676829A8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC430, &unk_2676D0440);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - v4;
  v7[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4F8, &qword_2676D3258);
  sub_2676C986C();
  sub_2676809FC(v5, &qword_2801CC430, &unk_2676D0440, MEMORY[0x277D5C7E8], a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_267682B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeedsValuePromptProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267682B8C(uint64_t a1)
{
  sub_2676CA56C();
  if (!v4[3])
  {
    sub_2675EB7EC(v4, &qword_2801CC158, &qword_2676CDDA0);
    return 0;
  }

  sub_2676CA5EC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_2676CA5CC();

  if (!v4[0])
  {

    return 0;
  }

  v1 = sub_2676CA51C();

  if (!v1)
  {

    return v1;
  }

  if (!sub_267630B8C())
  {

    return 0;
  }

  sub_267692C1C();
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5FE0E0](0, v1);
  }

  else
  {
  }

  sub_2676CA48C();

  if (!v3)
  {

    return 0;
  }

  v1 = sub_2676CA4EC();

  return v1;
}

unint64_t sub_267682D24()
{
  result = qword_2801CD630;
  if (!qword_2801CD630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD628, &qword_2676D3338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD630);
  }

  return result;
}

uint64_t sub_267682D88(uint64_t a1)
{
  v2 = type metadata accessor for NeedsValuePromptProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_2_6();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return MEMORY[0x2821FE8E8](v2, v5 + v6, v4 | 7);
}

uint64_t sub_267683014(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a2 + 32) = *a1;
  *(a2 + 40) = v3;
  v6 = *(a1 + 16);
  v7 = *(a2 + 48);
  *(a2 + 48) = v6;
  sub_2676788B8(v2, v3, v6);

  return sub_2676788D0(v4, v5, v7);
}

void sub_267683078(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a2 + 16) = 0;
  v3 = *(a2 + 24);
  *(a2 + 24) = 3;
  sub_267678894(v2, v3);
}

uint64_t sub_267683094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v33 = sub_2676C966C();
  OUTLINED_FUNCTION_3();
  v31 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2676C970C();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
  v8 = &v6[v7[12]];
  v9 = v7[16];
  v10 = &v6[v7[20]];
  v11 = &v6[v7[24]];
  v12 = v7[28];
  v25 = v7[32];
  v26 = v12;
  v13 = &v6[v7[36]];
  v14 = &v6[v7[40]];
  v15 = &v6[v7[44]];
  v16 = &v6[v7[48]];
  v27 = v7[52];
  v17 = *MEMORY[0x277D5BBD8];
  sub_2676C99EC();
  OUTLINED_FUNCTION_2_6();
  (*(v18 + 104))(v6, v17);
  v19 = v29;
  *v8 = v28;
  v8[1] = v19;
  *&v6[v9] = 0;
  *v10 = 0;
  *(v10 + 1) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v20 = v25;
  *&v6[v26] = 0;
  *&v6[v20] = 0;
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v21 = *(v30 + qword_2801D3EA8 + 8);
  *v14 = *(v30 + qword_2801D3EA8);
  *(v14 + 1) = v21;
  *v15 = 0;
  *(v15 + 1) = 0;
  v22 = sub_2676C968C();
  *v16 = 0;
  *(v16 + 1) = 0;
  __swift_storeEnumTagSinglePayload(&v6[v27], 1, 1, v22);
  (*(v31 + 104))(v6, *MEMORY[0x277D5B8B8], v33);

  return sub_2676C971C();
}

uint64_t sub_2676832B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v29 = a4;
  v27 = a1;
  v32 = sub_2676C966C();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2676C970C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
  v7 = &v5[v6[12]];
  v8 = v6[16];
  v9 = &v5[v6[20]];
  v10 = &v5[v6[24]];
  v11 = v6[28];
  v24 = v6[32];
  v25 = v11;
  v12 = &v5[v6[36]];
  v13 = &v5[v6[40]];
  v14 = &v5[v6[44]];
  v15 = &v5[v6[48]];
  v26 = v6[52];
  v16 = *MEMORY[0x277D5BBB0];
  v17 = sub_2676C99EC();
  (*(*(v17 - 8) + 104))(v5, v16, v17);
  v18 = v28;
  *v7 = v27;
  v7[1] = v18;
  *&v5[v8] = 0;
  *v9 = 0;
  *(v9 + 1) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v19 = v24;
  *&v5[v25] = 0;
  *&v5[v19] = 0;
  *(v12 + 4) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v20 = *(v29 + qword_2801D3EA8 + 8);
  *v13 = *(v29 + qword_2801D3EA8);
  *(v13 + 1) = v20;
  *v14 = 0;
  *(v14 + 1) = 0;
  v21 = sub_2676C968C();
  *v15 = 0;
  *(v15 + 1) = 0;
  __swift_storeEnumTagSinglePayload(&v5[v26], 1, 1, v21);
  (*(v30 + 104))(v5, *MEMORY[0x277D5B8B8], v32);

  return sub_2676C971C();
}