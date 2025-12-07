uint64_t OUTLINED_FUNCTION_184_1(uint64_t a1)
{

  return sub_23E1FD7AC();
}

uint64_t OUTLINED_FUNCTION_185_1()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_186_1()
{
  v2 = *(v0 + 168);

  return v2;
}

uint64_t OUTLINED_FUNCTION_187_1()
{
  v4 = *(v1 + 344);
  *(v2 - 144) = v0;
  *(v2 - 136) = v4;
}

uint64_t OUTLINED_FUNCTION_188_1()
{

  return sub_23DE5733C(v0);
}

uint64_t OUTLINED_FUNCTION_189_1()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id OUTLINED_FUNCTION_190_1()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t OUTLINED_FUNCTION_191_1()
{
  v3 = *(v1 - 136);

  return static WFContentItem.toolkitTypeDefinition(context:)(v0, v3);
}

uint64_t OUTLINED_FUNCTION_192_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_193_0()
{
}

uint64_t OUTLINED_FUNCTION_194_1()
{
}

uint64_t OUTLINED_FUNCTION_195_1(uint64_t a1)
{

  return sub_23E1FDEBC();
}

uint64_t OUTLINED_FUNCTION_209()
{

  return sub_23E1FD93C();
}

uint64_t OUTLINED_FUNCTION_210()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_211(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_212(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_23E1FE0DC();
}

id OUTLINED_FUNCTION_213()
{
  v2 = *(v0 + 32);

  return v2;
}

id OUTLINED_FUNCTION_214()
{
  v2 = *(v0 + 32);

  return v2;
}

id OUTLINED_FUNCTION_215()
{
  v2 = *(v0 + 32);

  return v2;
}

void OUTLINED_FUNCTION_216()
{

  JUMPOUT(0x23EF044F0);
}

id OUTLINED_FUNCTION_217()
{
  v3 = *(v1 + 176);

  return [v3 (v0 + 1912)];
}

uint64_t OUTLINED_FUNCTION_218(uint64_t a1)
{

  return sub_23E1FDDEC();
}

uint64_t OUTLINED_FUNCTION_220(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_221()
{

  return objc_opt_self();
}

uint64_t OUTLINED_FUNCTION_222()
{

  return sub_23E1FDE6C();
}

uint64_t OUTLINED_FUNCTION_223(uint64_t a1)
{

  return sub_23E1FDEBC();
}

uint64_t sub_23DF07798()
{
  v1[5] = v0;
  v2 = sub_23E1FD03C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_23E1FDECC();
  v1[9] = sub_23E1FDEBC();
  v4 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DF0788C, v4, v3);
}

id sub_23DF0788C()
{
  if (!WiFiManagerClientCreate())
  {

    sub_23E1FCB9C();
    v6 = sub_23E1FD02C();
    v7 = sub_23E1FE1CC();
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 48);
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_23DE30000, v6, v7, "Cannot create WiFiManager", v12, 2u);
      MEMORY[0x23EF074C0](v12, -1, -1);
    }

    (*(v10 + 8))(v9, v11);
    goto LABEL_14;
  }

  result = WiFiManagerClientCopyMisPassword();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  *(v0 + 32) = result;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  v2 = *(v0 + 24);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    goto LABEL_14;
  }

  result = [*(v0 + 40) output];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v4 = result;

  v5 = sub_23E1FDBDC();

  [v4 addObject_];

LABEL_14:

  v13 = *(v0 + 8);

  return v13();
}

id sub_23DF07B1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for GetHotspotPasswordAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_23DF07C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DF07C9C, v5, v4);
}

uint64_t sub_23DF07C9C()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23DE7F680;

  return sub_23DF07798();
}

id sub_23DF07DF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetHotspotPasswordAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DF07E54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetHotspotPasswordAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DF07EB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE662F0;

  return sub_23DF07C00(v2, v3, v4);
}

id sub_23DF07F98()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v551 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v551 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v567 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  v577 = xmmword_23E222330;
  *(inited + 16) = xmmword_23E222330;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000013;
  v575 = 0xD000000000000013;
  *(inited + 48) = 0x800000023E256BD0;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v12 = sub_23E1FDCBC("create|add|calendar", 19);
  v14 = v13;
  sub_23E1FDCBC("create|add|calendar", 19);
  v15 = v5;
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v588 = qword_280DAE278;
  v16 = [qword_280DAE278 bundleURL];
  v586 = v2;
  sub_23E1FBF9C();

  v17 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v18 = v15;
  sub_23DE477A0(v12, v14);
  v20 = v19;
  v21 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v587 = v21;
  *(inited + 80) = v20;
  v22 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v21;
  *(inited + 112) = v22;
  v23 = v22;
  v24 = sub_23E1FDABC();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  v566 = v25;
  *(inited + 120) = v24;
  v26 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v25;
  *(inited + 152) = v26;
  v585 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v27 = swift_initStackObject();
  v565 = xmmword_23E222370;
  *(v27 + 16) = xmmword_23E222370;
  v28 = *MEMORY[0x277D7CC28];
  *(v27 + 32) = *MEMORY[0x277D7CC28];
  v29 = v26;
  v30 = v28;
  v31 = sub_23E1FDCBC("The new event", 13);
  v33 = v32;
  sub_23E1FDCBC("The new event", 13);
  v579 = inited;
  sub_23E1FC14C();
  v34 = v588;
  v35 = [v588 bundleURL];
  sub_23E1FBF9C();

  v36 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v31, v33);
  *(v27 + 40) = v37;
  v38 = *MEMORY[0x277D7CC30];
  v39 = v587;
  *(v27 + 64) = v587;
  *(v27 + 72) = v38;
  v40 = v38;
  v41 = sub_23E1FDCBC("Creates a new event and adds it to the selected calendar.", 57);
  v43 = v42;
  sub_23E1FDCBC("Creates a new event and adds it to the selected calendar.", 57);
  sub_23E1FC14C();
  v44 = [v34 bundleURL];
  sub_23E1FBF9C();

  v45 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v41, v43);
  *(v27 + 104) = v39;
  *(v27 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v47 = sub_23E1FDABC();
  v48 = v585;
  v49 = sub_23DF3BE54(v47);
  v50 = MEMORY[0x277D7CCC8];
  v51 = v579;
  v579[20] = v49;
  v52 = *v50;
  v51[23] = v48;
  v51[24] = v52;
  v53 = MEMORY[0x277D839B0];
  *(v51 + 200) = 0;
  v54 = *MEMORY[0x277D7CB90];
  v51[28] = v53;
  v51[29] = v54;
  v55 = v51;
  v56 = v52;
  v57 = v54;
  v58 = sub_23E1FDCBC("New Event (Action Name)", 23);
  v60 = v59;
  sub_23E1FDCBC("New Event", 9);
  sub_23E1FC14C();
  v61 = v588;
  v62 = [v588 bundleURL];
  sub_23E1FBF9C();

  v63 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v64 = v18;
  sub_23DE477A0(v58, v60);
  v55[30] = v65;
  v66 = *MEMORY[0x277D7CDD0];
  v67 = v587;
  v55[33] = v587;
  v55[34] = v66;
  v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v68 = swift_initStackObject();
  v576 = xmmword_23E222380;
  *(v68 + 16) = xmmword_23E222380;
  *(v68 + 32) = 0x656C7069746C754DLL;
  *(v68 + 40) = 0xE800000000000000;
  *(v68 + 48) = 0;
  *(v68 + 72) = MEMORY[0x277D839B0];
  *(v68 + 80) = 0x614E74757074754FLL;
  *(v68 + 88) = 0xEA0000000000656DLL;
  v69 = v66;
  v70 = sub_23E1FDCBC("New Event (Default Output Name)", 31);
  v72 = v71;
  sub_23E1FDCBC("New Event", 9);
  v73 = v64;
  sub_23E1FC14C();
  v74 = [v61 bundleURL];
  sub_23E1FBF9C();

  v75 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v76 = v73;
  sub_23DE477A0(v70, v72);
  *(v68 + 96) = v77;
  *(v68 + 120) = v67;
  *(v68 + 128) = 0x7365707954;
  *(v68 + 136) = 0xE500000000000000;
  v571 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v68 + 168) = v571;
  *(v68 + 144) = &unk_285024D00;
  v78 = MEMORY[0x277D837D0];
  v79 = sub_23E1FDABC();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v563 = v80;
  v81 = v579;
  v579[35] = v79;
  v82 = *MEMORY[0x277D7CBA0];
  v81[38] = v80;
  v81[39] = v82;
  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v585 = swift_allocObject();
  *(v585 + 16) = xmmword_23E229910;
  v584 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v583 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v83 = swift_allocObject();
  v580 = xmmword_23E224700;
  *(v83 + 16) = xmmword_23E224700;
  v84 = *MEMORY[0x277D7CDF8];
  v578 = 0x800000023E24EAF0;
  *(v83 + 32) = v84;
  *(v83 + 40) = 0xD000000000000014;
  *(v83 + 48) = 0x800000023E24EAF0;
  v85 = *MEMORY[0x277D7CE08];
  *(v83 + 64) = v78;
  *(v83 + 72) = v85;
  v86 = v82;
  v574 = v84;
  v569 = v85;
  v87 = sub_23E1FDCBC("The title of this event. (WFCalendarItemTitle)", 46);
  v89 = v88;
  sub_23E1FDCBC("The title of this event.", 24);
  v90 = v76;
  sub_23E1FC14C();
  v91 = [v588 bundleURL];
  sub_23E1FBF9C();

  v92 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v93 = v90;
  sub_23DE477A0(v87, v89);
  *(v83 + 80) = v94;
  v95 = *MEMORY[0x277D7CE70];
  v96 = v587;
  *(v83 + 104) = v587;
  *(v83 + 112) = v95;
  *(v83 + 120) = v575;
  *(v83 + 128) = 0x800000023E256D00;
  v97 = *MEMORY[0x277D7CE80];
  *(v83 + 144) = v78;
  *(v83 + 152) = v97;
  v561 = v95;
  v568 = v97;
  v98 = sub_23E1FDCBC("Title (WFCalendarItemTitle)", 27);
  v100 = v99;
  sub_23E1FDCBC("Title", 5);
  v101 = v93;
  sub_23E1FC14C();
  v102 = [v588 bundleURL];
  sub_23E1FBF9C();

  v103 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v98, v100);
  *(v83 + 160) = v104;
  v105 = *MEMORY[0x277D7CEA8];
  *(v83 + 184) = v96;
  *(v83 + 192) = v105;
  v573 = v105;
  v106 = sub_23E1FDCBC("Title (WFCalendarItemTitle)", 27);
  v108 = v107;
  sub_23E1FDCBC("Title", 5);
  sub_23E1FC14C();
  v109 = v588;
  v110 = [v588 bundleURL];
  sub_23E1FBF9C();

  v111 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v106, v108);
  *(v83 + 200) = v112;
  v113 = *MEMORY[0x277D7CEC8];
  v114 = v587;
  *(v83 + 224) = v587;
  *(v83 + 232) = v113;
  v562 = v113;
  v115 = sub_23E1FDCBC("What’s the title of the event? (WFCalendarItemTitle)", 54);
  v117 = v116;
  sub_23E1FDCBC("What’s the title of the event?", 32);
  sub_23E1FC14C();
  v118 = [v109 bundleURL];
  sub_23E1FBF9C();

  v119 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v115, v117);
  *(v83 + 240) = v120;
  v121 = *MEMORY[0x277D7CF10];
  *(v83 + 264) = v114;
  *(v83 + 272) = v121;
  v122 = MEMORY[0x277D837D0];
  *(v83 + 304) = MEMORY[0x277D837D0];
  *(v83 + 280) = 0x7468676952;
  *(v83 + 288) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v582 = v123;
  v581 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v558 = v121;
  v124 = sub_23E1FDABC();
  v125 = sub_23DF3BE9C(v124);
  *(v585 + 32) = v125;
  v126 = swift_allocObject();
  *(v126 + 16) = v580;
  v127 = v574;
  *(v126 + 32) = v574;
  *(v126 + 40) = 0xD000000000000014;
  *(v126 + 48) = v578;
  v128 = v561;
  *(v126 + 64) = v122;
  *(v126 + 72) = v128;
  v572 = 0xD000000000000016;
  *(v126 + 80) = 0xD000000000000016;
  *(v126 + 88) = 0x800000023E256DC0;
  v129 = v568;
  *(v126 + 104) = v122;
  *(v126 + 112) = v129;
  v559 = v127;
  v561 = v128;
  v568 = v129;
  v130 = sub_23E1FDCBC("Location (WFCalendarItemLocation)", 33);
  v132 = v131;
  sub_23E1FDCBC("Location", 8);
  sub_23E1FC14C();
  v133 = v588;
  v134 = [v588 bundleURL];
  sub_23E1FBF9C();

  v135 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v130, v132);
  *(v126 + 120) = v136;
  v137 = v587;
  v138 = v573;
  *(v126 + 144) = v587;
  *(v126 + 152) = v138;
  v573 = v138;
  v139 = sub_23E1FDCBC("optional (WFCalendarItemLocation)", 33);
  v574 = v140;
  sub_23E1FDCBC("optional", 8);
  v141 = v101;
  sub_23E1FC14C();
  v142 = v133;
  v143 = [v133 bundleURL];
  sub_23E1FBF9C();

  v144 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v139, v574);
  *(v126 + 160) = v145;
  v146 = v137;
  v147 = v562;
  *(v126 + 184) = v137;
  *(v126 + 192) = v147;
  v560 = v147;
  v148 = sub_23E1FDCBC("What’s the location of the event? (WFCalendarItemLocation)", 60);
  v150 = v149;
  sub_23E1FDCBC("What’s the location of the event?", 35);
  sub_23E1FC14C();
  v151 = [v142 bundleURL];
  sub_23E1FBF9C();

  v152 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v148, v150);
  *(v126 + 200) = v153;
  v154 = v558;
  *(v126 + 224) = v146;
  *(v126 + 232) = v154;
  *(v126 + 240) = 0x7468676952;
  *(v126 + 248) = 0xE500000000000000;
  v155 = *MEMORY[0x277D7CF18];
  v156 = MEMORY[0x277D837D0];
  *(v126 + 264) = MEMORY[0x277D837D0];
  *(v126 + 272) = v155;
  *(v126 + 304) = v156;
  v157 = v156;
  *(v126 + 280) = 0x6E6F697461636F4CLL;
  *(v126 + 288) = 0xE800000000000000;
  v574 = v154;
  v158 = v155;
  v159 = sub_23E1FDABC();
  v160 = sub_23DF3BE9C(v159);
  *(v585 + 40) = v160;
  v161 = swift_allocObject();
  *(v161 + 16) = v580;
  v562 = 0xD000000000000019;
  v162 = v559;
  *(v161 + 32) = v559;
  *(v161 + 40) = 0xD000000000000019;
  *(v161 + 48) = 0x800000023E256EB0;
  v163 = v569;
  *(v161 + 64) = v157;
  *(v161 + 72) = v163;
  v559 = v162;
  v558 = v163;
  v164 = sub_23E1FDCBC("The calendar to add this event to. (WFCalendarDescriptor)", 57);
  v166 = v165;
  sub_23E1FDCBC("The calendar to add this event to.", 34);
  sub_23E1FC14C();
  v167 = v588;
  v168 = [v588 bundleURL];
  sub_23E1FBF9C();

  v169 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v164, v166);
  *(v161 + 104) = v587;
  *(v161 + 80) = v170;
  v171 = v572;
  *(v161 + 112) = sub_23E1FDBDC();
  *(v161 + 120) = 1;
  v172 = v561;
  *(v161 + 144) = MEMORY[0x277D839B0];
  *(v161 + 152) = v172;
  *(v161 + 160) = 0xD000000000000014;
  *(v161 + 168) = 0x800000023E256F60;
  v173 = v568;
  *(v161 + 184) = MEMORY[0x277D837D0];
  *(v161 + 192) = v173;
  v554 = v172;
  v555 = v173;
  v174 = sub_23E1FDCBC("Calendar (WFCalendarDescriptor)", 31);
  v176 = v175;
  sub_23E1FDCBC("Calendar", 8);
  sub_23E1FC14C();
  v177 = [v167 bundleURL];
  sub_23E1FBF9C();

  v178 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v179 = v141;
  sub_23DE477A0(v174, v176);
  v180 = MEMORY[0x277D7CE88];
  *(v161 + 200) = v181;
  v182 = *v180;
  v183 = v587;
  *(v161 + 224) = v587;
  *(v161 + 232) = v182;
  *(v161 + 240) = v171;
  *(v161 + 248) = 0x800000023E256FB0;
  v184 = v560;
  *(v161 + 264) = MEMORY[0x277D837D0];
  *(v161 + 272) = v184;
  v556 = v184;
  v185 = v182;
  v186 = sub_23E1FDCBC("On which calendar? (WFCalendarDescriptor)", 41);
  v188 = v187;
  sub_23E1FDCBC("On which calendar?", 18);
  v551 = v179;
  sub_23E1FC14C();
  v189 = [v588 bundleURL];
  sub_23E1FBF9C();

  v190 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v186, v188);
  *(v161 + 304) = v183;
  *(v161 + 280) = v191;
  v192 = sub_23E1FDABC();
  v193 = sub_23DF3BE9C(v192);
  *(v585 + 48) = v193;
  v194 = swift_allocObject();
  *(v194 + 16) = xmmword_23E222360;
  v569 = 0x800000023E250150;
  v196 = v558;
  v195 = v559;
  *(v194 + 32) = v559;
  *(v194 + 40) = 0xD000000000000014;
  *(v194 + 48) = 0x800000023E250150;
  *(v194 + 64) = MEMORY[0x277D837D0];
  *(v194 + 72) = v196;
  v197 = v195;
  v198 = v196;
  v199 = v197;
  v200 = v198;
  v558 = v199;
  *&v557 = v200;
  v201 = sub_23E1FDCBC("Text representing the date this event begins. Examples: “tomorrow at 2”, “January 3”, “8:00pm” (WFCalendarItemStartDate)", 132);
  v203 = v202;
  sub_23E1FDCBC("Text representing the date this event begins. Examples: “tomorrow at 2”, “January 3”, “8:00pm”", 106);
  sub_23E1FC14C();
  v204 = [v588 bundleURL];
  sub_23E1FBF9C();

  v205 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v201, v203);
  *(v194 + 104) = v183;
  *(v194 + 80) = v206;
  v568 = "January 3”, “8:00pm”";
  v560 = 0xD000000000000012;
  *(v194 + 112) = sub_23E1FDBDC();
  v207 = MEMORY[0x277D839B0];
  *(v194 + 144) = MEMORY[0x277D839B0];
  *(v194 + 120) = 1;
  v559 = "DetectsAllDayDates";
  *(v194 + 152) = sub_23E1FDBDC();
  *(v194 + 184) = v207;
  *(v194 + 160) = 1;
  *(v194 + 192) = sub_23E1FDBDC();
  *(v194 + 200) = 0x6F7250656C696857;
  *(v194 + 208) = 0xEF676E6973736563;
  v208 = MEMORY[0x277D837D0];
  v209 = v554;
  v210 = v555;
  *(v194 + 224) = MEMORY[0x277D837D0];
  *(v194 + 232) = v209;
  v561 = 0xD000000000000017;
  *(v194 + 240) = 0xD000000000000017;
  *(v194 + 248) = 0x800000023E257160;
  *(v194 + 264) = v208;
  *(v194 + 272) = v210;
  v211 = v209;
  v212 = v210;
  v213 = v211;
  v214 = v212;
  v555 = v213;
  v554 = v214;
  v215 = sub_23E1FDCBC("Start Date (WFCalendarItemStartDate)", 36);
  v217 = v216;
  sub_23E1FDCBC("Start Date", 10);
  sub_23E1FC14C();
  v218 = v588;
  v219 = [v588 bundleURL];
  sub_23E1FBF9C();

  v220 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v215, v217);
  *(v194 + 280) = v221;
  v222 = v573;
  *(v194 + 304) = v587;
  *(v194 + 312) = v222;
  v573 = v222;
  v223 = sub_23E1FDCBC("Tomorrow at noon (WFCalendarItemStartDate)", 42);
  v225 = v224;
  sub_23E1FDCBC("Tomorrow at noon", 16);
  sub_23E1FC14C();
  v226 = [v218 bundleURL];
  sub_23E1FBF9C();

  v227 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v223, v225);
  *(v194 + 320) = v228;
  v229 = v587;
  v230 = v556;
  *(v194 + 344) = v587;
  *(v194 + 352) = v230;
  v556 = v230;
  v231 = sub_23E1FDCBC("When does the event start? (WFCalendarItemStartDate)", 52);
  v233 = v232;
  sub_23E1FDCBC("When does the event start?", 26);
  sub_23E1FC14C();
  v234 = [v588 bundleURL];
  sub_23E1FBF9C();

  v235 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v231, v233);
  *(v194 + 384) = v229;
  *(v194 + 360) = v236;
  v237 = sub_23E1FDBDC();
  v553 = 0x800000023E257280;
  v238 = MEMORY[0x277D837D0];
  *(v194 + 424) = MEMORY[0x277D837D0];
  v552 = 0xD000000000000015;
  *(v194 + 392) = v237;
  *(v194 + 400) = 0xD000000000000015;
  *(v194 + 408) = 0x800000023E257280;
  *(v194 + 432) = sub_23E1FDBDC();
  strcpy((v194 + 440), "WFDetectedDate");
  *(v194 + 455) = -18;
  v239 = v574;
  *(v194 + 464) = v238;
  *(v194 + 472) = v239;
  *(v194 + 504) = v238;
  v240 = v238;
  *(v194 + 480) = 0x7468676952;
  *(v194 + 488) = 0xE500000000000000;
  v574 = v239;
  v241 = sub_23E1FDABC();
  v242 = sub_23DF3BE9C(v241);
  *(v585 + 56) = v242;
  v243 = swift_allocObject();
  *(v243 + 16) = v577;
  v244 = v558;
  *(v243 + 32) = v558;
  *(v243 + 40) = 0xD000000000000014;
  *(v243 + 48) = v569;
  v245 = v557;
  *(v243 + 64) = v240;
  *(v243 + 72) = v245;
  v569 = v244;
  v558 = v245;
  v246 = sub_23E1FDCBC("Text representing the date this event finishes. (WFCalendarItemEndDate)", 71);
  v248 = v247;
  sub_23E1FDCBC("Text representing the date this event finishes.", 47);
  sub_23E1FC14C();
  v249 = [v588 bundleURL];
  sub_23E1FBF9C();

  v250 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v246, v248);
  *(v243 + 104) = v587;
  *(v243 + 80) = v251;
  *(v243 + 112) = sub_23E1FDBDC();
  v252 = MEMORY[0x277D839B0];
  *(v243 + 144) = MEMORY[0x277D839B0];
  *(v243 + 120) = 1;
  *(v243 + 152) = sub_23E1FDBDC();
  *(v243 + 184) = v252;
  *(v243 + 160) = 1;
  *(v243 + 192) = sub_23E1FDBDC();
  *(v243 + 200) = 0x6F7250656C696857;
  *(v243 + 208) = 0xEF676E6973736563;
  v253 = MEMORY[0x277D837D0];
  v255 = v554;
  v254 = v555;
  *(v243 + 224) = MEMORY[0x277D837D0];
  *(v243 + 232) = v254;
  v256 = v553;
  *(v243 + 240) = v552;
  *(v243 + 248) = v256;
  *(v243 + 264) = v253;
  *(v243 + 272) = v255;
  v559 = v254;
  v568 = v255;
  v257 = sub_23E1FDCBC("End Date (WFCalendarItemEndDate)", 32);
  v259 = v258;
  sub_23E1FDCBC("End Date", 8);
  sub_23E1FC14C();
  v260 = v588;
  v261 = [v588 bundleURL];
  sub_23E1FBF9C();

  v262 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v257, v259);
  *(v243 + 280) = v263;
  v264 = v573;
  *(v243 + 304) = v587;
  *(v243 + 312) = v264;
  v573 = v264;
  v265 = sub_23E1FDCBC("Tomorrow at 1pm (WFCalendarItemEndDate)", 39);
  *&v577 = v266;
  sub_23E1FDCBC("Tomorrow at 1pm", 15);
  sub_23E1FC14C();
  v267 = [v260 bundleURL];
  sub_23E1FBF9C();

  v268 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v265, v577);
  *(v243 + 320) = v269;
  v270 = v587;
  v271 = v556;
  *(v243 + 344) = v587;
  *(v243 + 352) = v271;
  *&v557 = v271;
  v272 = sub_23E1FDCBC("When does the event end? (WFCalendarItemEndDate)", 48);
  v274 = v273;
  sub_23E1FDCBC("When does the event end?", 24);
  sub_23E1FC14C();
  v275 = [v260 bundleURL];
  sub_23E1FBF9C();

  v276 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v272, v274);
  *(v243 + 384) = v270;
  *(v243 + 360) = v277;
  *(v243 + 392) = sub_23E1FDBDC();
  strcpy((v243 + 400), "WFDetectedDate");
  *(v243 + 415) = -18;
  v278 = MEMORY[0x277D837D0];
  v279 = v574;
  *(v243 + 424) = MEMORY[0x277D837D0];
  *(v243 + 432) = v279;
  *(v243 + 464) = v278;
  v280 = v278;
  *(v243 + 440) = 0x7468676952;
  *(v243 + 448) = 0xE500000000000000;
  v281 = sub_23E1FDABC();
  v282 = sub_23DF3BE9C(v281);
  *(v585 + 64) = v282;
  v283 = swift_initStackObject();
  *(v283 + 16) = xmmword_23E224710;
  v560 = 0x800000023E250E40;
  *&v577 = 0xD000000000000011;
  v284 = v569;
  *(v283 + 32) = v569;
  *(v283 + 40) = 0xD000000000000011;
  *(v283 + 48) = 0x800000023E250E40;
  v285 = v558;
  *(v283 + 64) = v280;
  *(v283 + 72) = v285;
  v556 = v284;
  v555 = v285;
  v286 = sub_23E1FDCBC("When enabled, the event takes place over an entire day and time is ignored. (WFCalendarItemAllDay)", 98);
  v288 = v287;
  sub_23E1FDCBC("When enabled, the event takes place over an entire day and time is ignored.", 75);
  sub_23E1FC14C();
  v289 = v588;
  v290 = [v588 bundleURL];
  sub_23E1FBF9C();

  v291 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v286, v288);
  *(v283 + 80) = v292;
  v293 = v559;
  *(v283 + 104) = v587;
  *(v283 + 112) = v293;
  *(v283 + 120) = 0xD000000000000014;
  *(v283 + 128) = 0x800000023E2574B0;
  v294 = v568;
  *(v283 + 144) = MEMORY[0x277D837D0];
  *(v283 + 152) = v294;
  v558 = v293;
  v568 = v294;
  v295 = sub_23E1FDCBC("All Day (WFCalendarItemAllDay)", 30);
  v297 = v296;
  sub_23E1FDCBC("All Day", 7);
  sub_23E1FC14C();
  v298 = [v289 bundleURL];
  sub_23E1FBF9C();

  v299 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v295, v297);
  *(v283 + 160) = v300;
  v301 = v587;
  v302 = v557;
  *(v283 + 184) = v587;
  *(v283 + 192) = v302;
  v569 = v302;
  v303 = sub_23E1FDCBC("Is this an All Day event? (WFCalendarItemAllDay)", 48);
  v305 = v304;
  sub_23E1FDCBC("Is this an All Day event?", 25);
  sub_23E1FC14C();
  v306 = [v289 bundleURL];
  sub_23E1FBF9C();

  v307 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v303, v305);
  *(v283 + 224) = v301;
  *(v283 + 200) = v308;
  v309 = sub_23E1FDABC();
  v310 = sub_23DF3BE9C(v309);
  *(v585 + 72) = v310;
  v311 = swift_allocObject();
  *(v311 + 16) = v580;
  v313 = v555;
  v312 = v556;
  v314 = v572;
  *(v311 + 32) = v556;
  *(v311 + 40) = v314;
  *(v311 + 48) = 0x800000023E24FDA0;
  *(v311 + 64) = MEMORY[0x277D837D0];
  *(v311 + 72) = v313;
  v559 = v312;
  v572 = v313;
  v315 = sub_23E1FDCBC("Optionally, when to show an alert to notify me of this event. (WFAlertTime)", 75);
  v317 = v316;
  sub_23E1FDCBC("Optionally, when to show an alert to notify me of this event.", 61);
  sub_23E1FC14C();
  v318 = v588;
  v319 = [v588 bundleURL];
  sub_23E1FBF9C();

  v320 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v315, v317);
  v321 = MEMORY[0x277D7CE20];
  *&v557 = v311;
  *(v311 + 80) = v322;
  v323 = *v321;
  *(v311 + 104) = v587;
  *(v311 + 112) = v323;
  *(v311 + 120) = &unk_285024D30;
  v324 = *MEMORY[0x277D7CE38];
  *(v311 + 144) = v571;
  *(v311 + 152) = v324;
  v325 = swift_allocObject();
  *(v325 + 16) = xmmword_23E229920;
  v326 = v323;
  v327 = v324;
  v328 = sub_23E1FDCBC("None (WFAlertTime)", 18);
  v330 = v329;
  sub_23E1FDCBC("None", 4);
  sub_23E1FC14C();
  v331 = v318;
  v332 = [v318 bundleURL];
  sub_23E1FBF9C();

  v333 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v328, v330);
  *(v325 + 32) = v334;
  v335 = sub_23E1FDCBC("At time of event (WFAlertTime)", 30);
  v337 = v336;
  sub_23E1FDCBC("At time of event", 16);
  sub_23E1FC14C();
  v338 = [v331 bundleURL];
  sub_23E1FBF9C();

  v339 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v335, v337);
  *(v325 + 40) = v340;
  v341 = v325;
  v571 = v325;
  v342 = sub_23E1FDCBC("5 minutes before (WFAlertTime)", 30);
  v344 = v343;
  sub_23E1FDCBC("5 minutes before", 16);
  sub_23E1FC14C();
  v345 = v588;
  v346 = [v588 bundleURL];
  sub_23E1FBF9C();

  v347 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v342, v344);
  *(v341 + 48) = v348;
  v349 = sub_23E1FDCBC("15 minutes before (WFAlertTime)", 31);
  v351 = v350;
  sub_23E1FDCBC("15 minutes before", 17);
  sub_23E1FC14C();
  v352 = v345;
  v353 = [v345 bundleURL];
  sub_23E1FBF9C();

  v354 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v349, v351);
  v355 = v571;
  *(v571 + 7) = v356;
  v357 = sub_23E1FDCBC("30 minutes before (WFAlertTime)", 31);
  v359 = v358;
  sub_23E1FDCBC("30 minutes before", 17);
  sub_23E1FC14C();
  v360 = [v352 bundleURL];
  sub_23E1FBF9C();

  v361 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v357, v359);
  *(v355 + 8) = v362;
  v363 = sub_23E1FDCBC("1 hour before (WFAlertTime)", 27);
  v365 = v364;
  sub_23E1FDCBC("1 hour before", 13);
  sub_23E1FC14C();
  v366 = v588;
  v367 = [v588 bundleURL];
  sub_23E1FBF9C();

  v368 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v363, v365);
  *(v355 + 9) = v369;
  v370 = sub_23E1FDCBC("2 hours before (WFAlertTime)", 28);
  v372 = v371;
  sub_23E1FDCBC("2 hours before", 14);
  sub_23E1FC14C();
  v373 = [v366 bundleURL];
  sub_23E1FBF9C();

  v374 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v370, v372);
  *(v355 + 10) = v375;
  v376 = sub_23E1FDCBC("1 day before (WFAlertTime)", 26);
  v378 = v377;
  sub_23E1FDCBC("1 day before", 12);
  sub_23E1FC14C();
  v379 = v588;
  v380 = [v588 bundleURL];
  sub_23E1FBF9C();

  v381 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v376, v378);
  *(v355 + 11) = v382;
  v383 = sub_23E1FDCBC("2 days before (WFAlertTime)", 27);
  v570 = v384;
  sub_23E1FDCBC("2 days before", 13);
  sub_23E1FC14C();
  v385 = v379;
  v386 = [v379 bundleURL];
  sub_23E1FBF9C();

  v387 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v383, v570);
  v388 = v571;
  *(v571 + 12) = v389;
  v390 = sub_23E1FDCBC("1 week before (WFAlertTime)", 27);
  v570 = v391;
  sub_23E1FDCBC("1 week before", 13);
  sub_23E1FC14C();
  v392 = [v385 bundleURL];
  sub_23E1FBF9C();

  v393 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v390, v570);
  *(v388 + 13) = v394;
  v395 = sub_23E1FDCBC("Custom (WFAlertTime)", 20);
  v397 = v396;
  sub_23E1FDCBC("Custom", 6);
  sub_23E1FC14C();
  v398 = v588;
  v399 = [v588 bundleURL];
  sub_23E1FBF9C();

  v400 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v395, v397);
  v401 = v388;
  *(v388 + 14) = v402;
  v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  v404 = v557;
  *(v557 + 160) = v401;
  v405 = v558;
  v404[23] = v403;
  v404[24] = v405;
  v404[25] = 0x547472656C414657;
  v404[26] = 0xEB00000000656D69;
  v406 = v568;
  v404[28] = MEMORY[0x277D837D0];
  v404[29] = v406;
  v556 = v405;
  v558 = v406;
  v407 = sub_23E1FDCBC("Alert (WFAlertTime)", 19);
  v409 = v408;
  sub_23E1FDCBC("Alert", 5);
  sub_23E1FC14C();
  v410 = v398;
  v411 = [v398 bundleURL];
  sub_23E1FBF9C();

  v412 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v407, v409);
  v404[30] = v413;
  v414 = v587;
  v415 = v569;
  v404[33] = v587;
  v404[34] = v415;
  v571 = v415;
  v416 = sub_23E1FDCBC("When do you want to be alerted about the event? (WFAlertTime)", 61);
  v418 = v417;
  sub_23E1FDCBC("When do you want to be alerted about the event?", 47);
  sub_23E1FC14C();
  v419 = [v410 bundleURL];
  sub_23E1FBF9C();

  v420 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v416, v418);
  v404[38] = v414;
  v404[35] = v421;
  v422 = sub_23E1FDABC();
  v423 = sub_23DF3BE9C(v422);
  *(v585 + 80) = v423;
  v424 = swift_allocObject();
  *(v424 + 16) = xmmword_23E224420;
  v425 = v559;
  *(v424 + 32) = v559;
  *(v424 + 40) = 0xD000000000000014;
  *(v424 + 48) = v578;
  v426 = v572;
  *(v424 + 64) = MEMORY[0x277D837D0];
  *(v424 + 72) = v426;
  v570 = v425;
  v427 = sub_23E1FDCBC("Text representing the date when the alert should occur. Examples: “tonight at 7”, “March 7” (WFAlertCustomTime)", 119);
  v429 = v428;
  sub_23E1FDCBC("Text representing the date when the alert should occur. Examples: “tonight at 7”, “March 7”", 99);
  sub_23E1FC14C();
  v430 = v588;
  v431 = [v588 bundleURL];
  sub_23E1FBF9C();

  v432 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v427, v429);
  *(v424 + 80) = v433;
  v434 = v587;
  v435 = v556;
  *(v424 + 104) = v587;
  *(v424 + 112) = v435;
  *(v424 + 120) = v577;
  *(v424 + 128) = 0x800000023E2579A0;
  v436 = v558;
  *(v424 + 144) = MEMORY[0x277D837D0];
  *(v424 + 152) = v436;
  v568 = v435;
  v569 = v436;
  v437 = sub_23E1FDCBC("Alert Time (WFAlertCustomTime)", 30);
  v559 = v438;
  sub_23E1FDCBC("Alert Time", 10);
  sub_23E1FC14C();
  v439 = v430;
  v440 = [v430 bundleURL];
  sub_23E1FBF9C();

  v441 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v437, v559);
  *(v424 + 160) = v442;
  v443 = v573;
  *(v424 + 184) = v434;
  *(v424 + 192) = v443;
  v444 = sub_23E1FDCBC("Tomorrow at 4pm (WFAlertCustomTime)", 35);
  v446 = v445;
  sub_23E1FDCBC("Tomorrow at 4pm", 15);
  sub_23E1FC14C();
  v447 = v439;
  v448 = [v439 bundleURL];
  sub_23E1FBF9C();

  v449 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v444, v446);
  *(v424 + 200) = v450;
  v451 = v587;
  v452 = v571;
  *(v424 + 224) = v587;
  *(v424 + 232) = v452;
  v453 = sub_23E1FDCBC("When should the alert happen? (WFAlertCustomTime)", 49);
  v455 = v454;
  sub_23E1FDCBC("When should the alert happen?", 29);
  sub_23E1FC14C();
  v456 = [v447 bundleURL];
  sub_23E1FBF9C();

  v457 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v453, v455);
  *(v424 + 240) = v458;
  v459 = *MEMORY[0x277D7CEE8];
  *(v424 + 264) = v451;
  *(v424 + 272) = v459;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E0, &qword_23E224C28);
  v460 = swift_allocObject();
  v557 = xmmword_23E222340;
  *(v460 + 16) = xmmword_23E222340;
  v558 = 0x800000023E24D710;
  v559 = 0x800000023E24D730;
  v461 = v459;
  v462 = MEMORY[0x277D837D0];
  *(v460 + 32) = sub_23E1FDABC();
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E8, &unk_23E224C30);
  *(v424 + 280) = v460;
  v464 = v574;
  *(v424 + 304) = v463;
  *(v424 + 312) = v464;
  *(v424 + 344) = v462;
  *(v424 + 320) = 0x7468676952;
  *(v424 + 328) = 0xE500000000000000;
  v465 = sub_23E1FDABC();
  v466 = sub_23DF3BE9C(v465);
  *(v585 + 88) = v466;
  v467 = swift_allocObject();
  *(v467 + 16) = v580;
  *(v467 + 32) = v570;
  *(v467 + 40) = 0xD000000000000014;
  *(v467 + 48) = v578;
  v468 = v572;
  *(v467 + 64) = v462;
  *(v467 + 72) = v468;
  v469 = sub_23E1FDCBC("Optionally, a description for this event. (WFCalendarItemNotes)", 63);
  v471 = v470;
  sub_23E1FDCBC("Optionally, a description for this event.", 41);
  sub_23E1FC14C();
  v472 = v588;
  v473 = [v588 bundleURL];
  sub_23E1FBF9C();

  v474 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v469, v471);
  *(v467 + 80) = v475;
  v476 = v587;
  v477 = v568;
  *(v467 + 104) = v587;
  *(v467 + 112) = v477;
  *(v467 + 120) = v575;
  *(v467 + 128) = 0x800000023E257B00;
  v478 = v569;
  *(v467 + 144) = MEMORY[0x277D837D0];
  *(v467 + 152) = v478;
  *&v580 = sub_23E1FDCBC("Notes (WFCalendarItemNotes)", 27);
  v480 = v479;
  sub_23E1FDCBC("Notes", 5);
  sub_23E1FC14C();
  v481 = [v472 bundleURL];
  sub_23E1FBF9C();

  v482 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v580, v480);
  *(v467 + 160) = v483;
  v484 = *MEMORY[0x277D7CE98];
  *(v467 + 184) = v476;
  *(v467 + 192) = v484;
  *(v467 + 200) = 1;
  v485 = v573;
  *(v467 + 224) = MEMORY[0x277D839B0];
  *(v467 + 232) = v485;
  v486 = v484;
  v487 = sub_23E1FDCBC("Notes (WFCalendarItemNotes)", 27);
  v489 = v488;
  sub_23E1FDCBC("Notes", 5);
  sub_23E1FC14C();
  v490 = v588;
  v491 = [v588 bundleURL];
  sub_23E1FBF9C();

  v492 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v487, v489);
  *(v467 + 240) = v493;
  v494 = v587;
  v495 = v571;
  *(v467 + 264) = v587;
  *(v467 + 272) = v495;
  v496 = sub_23E1FDCBC("What notes do you want to add to the event? (WFCalendarItemNotes)", 65);
  v498 = v497;
  sub_23E1FDCBC("What notes do you want to add to the event?", 43);
  sub_23E1FC14C();
  v499 = [v490 bundleURL];
  sub_23E1FBF9C();

  v500 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v496, v498);
  *(v467 + 304) = v494;
  *(v467 + 280) = v501;
  v502 = sub_23E1FDABC();
  v503 = sub_23DF3BE9C(v502);
  *(v585 + 96) = v503;
  v504 = swift_allocObject();
  *(v504 + 16) = xmmword_23E222350;
  v505 = v577;
  *(v504 + 32) = v570;
  *(v504 + 40) = v505;
  *(v504 + 48) = v560;
  v506 = *MEMORY[0x277D7CE00];
  v507 = MEMORY[0x277D837D0];
  *(v504 + 64) = MEMORY[0x277D837D0];
  *(v504 + 72) = v506;
  *(v504 + 80) = 1;
  v508 = v568;
  *(v504 + 104) = MEMORY[0x277D839B0];
  *(v504 + 112) = v508;
  *(v504 + 120) = 0x6E656857776F6853;
  *(v504 + 128) = 0xEB000000006E7552;
  v509 = v569;
  *(v504 + 144) = v507;
  *(v504 + 152) = v509;
  v510 = v506;
  v511 = sub_23E1FDCBC("Show Compose Sheet (ShowWhenRun)", 32);
  v513 = v512;
  sub_23E1FDCBC("Show Compose Sheet", 18);
  sub_23E1FC14C();
  v514 = v588;
  v515 = [v588 bundleURL];
  sub_23E1FBF9C();

  v516 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v511, v513);
  *(v504 + 184) = v587;
  *(v504 + 160) = v517;
  v518 = sub_23E1FDABC();
  v519 = sub_23DF3BE9C(v518);
  v520 = v585;
  *(v585 + 104) = v519;
  v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v522 = v579;
  v579[40] = v520;
  v523 = *MEMORY[0x277D7CB98];
  v522[43] = v521;
  v522[44] = v523;
  v524 = v523;
  v525 = sub_23E1FDCBC("Add ${WFCalendarItemTitle} from ${WFCalendarItemStartDate} to ${WFCalendarItemEndDate} (Parameter Summary)", 106);
  v527 = v526;
  sub_23E1FDCBC("Add ${WFCalendarItemTitle} from ${WFCalendarItemStartDate} to ${WFCalendarItemEndDate}", 86);
  sub_23E1FC14C();
  v528 = [v514 bundleURL];
  sub_23E1FBF9C();

  v529 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v525, v527);
  v531 = v530;
  v532 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v533 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v522[45] = v532;
  v534 = *MEMORY[0x277D7CF20];
  v522[48] = v533;
  v522[49] = v534;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
  v535 = swift_allocObject();
  *(v535 + 16) = v576;
  *(v535 + 32) = 0xD000000000000018;
  *(v535 + 40) = 0x800000023E257CA0;
  v536 = MEMORY[0x277D837D0];
  *(v535 + 88) = MEMORY[0x277D837D0];
  v537 = v561;
  *(v535 + 56) = v536;
  *(v535 + 64) = v537;
  *(v535 + 72) = 0x800000023E24DBE0;
  v538 = swift_allocObject();
  *(v538 + 16) = v565;
  *(v538 + 32) = v577;
  *(v538 + 40) = 0x800000023E254400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D8, &qword_23E225540);
  v539 = swift_allocObject();
  *(v539 + 16) = v557;
  v540 = swift_allocObject();
  *(v540 + 16) = v576;
  strcpy((v540 + 32), "WFParameterKey");
  *(v540 + 47) = -18;
  *(v540 + 48) = 0x6E656857776F6853;
  *(v540 + 56) = 0xEB000000006E7552;
  *(v540 + 72) = v536;
  *(v540 + 80) = 0xD000000000000010;
  *(v540 + 88) = v558;
  *(v540 + 96) = 1;
  *(v540 + 120) = MEMORY[0x277D839B0];
  *(v540 + 128) = 0x72756F7365524657;
  *(v540 + 168) = v536;
  *(v540 + 136) = 0xEF7373616C436563;
  *(v540 + 144) = 0xD00000000000001BLL;
  *(v540 + 152) = v559;
  v541 = v534;
  *(v539 + 32) = sub_23E1FDABC();
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  *(v538 + 48) = v539;
  *(v538 + 72) = v542;
  *(v538 + 80) = 0x72756F7365524657;
  *(v538 + 120) = v536;
  v543 = v562;
  *(v538 + 88) = 0xEF7373616C436563;
  *(v538 + 96) = v543;
  *(v538 + 104) = 0x800000023E24D560;
  v544 = sub_23E1FDABC();
  *(v535 + 120) = v563;
  *(v535 + 96) = v544;
  v545 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  v522[50] = v535;
  v546 = *MEMORY[0x277D7D028];
  v522[53] = v545;
  v522[54] = v546;
  v547 = v546;
  v548 = sub_23E1FDABC();
  v522[58] = v566;
  v522[55] = v548;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v549 = sub_23E1FDABC();
  return sub_23DF3BF9C(v549);
}

uint64_t sub_23DF0B6FC()
{
  v0 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = sub_23E1FC1DC();
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v9 = sub_23E1FDBCC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v2 + 104))(v6, *MEMORY[0x277CC9110], v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FBF1C();
}

void sub_23DF0B878()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_6_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v7 = sub_23E1FC1DC();
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v9 = sub_23E1FDBCC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v11 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v5 + 104))(v0, *MEMORY[0x277CC9110], v3);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  sub_23E1FB69C();
  sub_23E1FB67C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DF0BAA4()
{
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D788, &qword_23E229DB0);
  v2 = sub_23DF0E250();
  v3 = sub_23DE66434(&qword_27E32D790, &qword_27E32D788, &qword_23E229DB0, MEMORY[0x277CBA4A8]);

  return MEMORY[0x28210C568](KeyPath, sub_23DF0BB70, 0, v1, v2, v3);
}

uint64_t sub_23DF0BB70@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D798, &qword_23E229DB8);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v24 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v25 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7A0, &qword_23E229DC0);
  v29 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v23 = &v19 - v10;
  v30 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7A8, &qword_23E229DC8);
  v21 = sub_23DF0E250();
  sub_23DF0D16C();
  sub_23DE66434(&qword_27E32D7B0, &qword_27E32D7A8, &qword_23E229DC8, MEMORY[0x277CBA2C0]);
  v22 = v11;
  sub_23E1FB9AC();
  sub_23DE66434(&qword_27E32D7B8, &qword_27E32D7A0, &qword_23E229DC0, MEMORY[0x277CBA488]);
  v12 = v6;
  sub_23E1FB91C();
  v20 = *(v29 + 8);
  v29 += 8;
  v20(v9, v6);
  v13 = v24;
  sub_23E1FB9EC();
  sub_23DE66434(&qword_27E32D7C0, &qword_27E32D798, &qword_23E229DB8, MEMORY[0x277CBA4C8]);
  v14 = v25;
  v15 = v26;
  sub_23E1FB91C();
  v16 = *(v27 + 8);
  v16(v13, v15);
  v17 = v23;
  sub_23E1FB90C();
  v16(v14, v15);
  return (v20)(v17, v12);
}

uint64_t sub_23DF0BF50@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7C8, &qword_23E229DD0);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7D0, &qword_23E229DD8);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7A8, &qword_23E229DC8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_23DF0E250();
  sub_23E1FB81C();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7D8, &qword_23E229DE0);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7E8, &unk_23E229E40);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7E0, &qword_23E229E10);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  sub_23E1FB7DC();
  v10 = sub_23DE66434(&qword_27E32D7B0, &qword_27E32D7A8, &qword_23E229DC8, MEMORY[0x277CBA2C0]);
  MEMORY[0x23EF02050](v7, &type metadata for SetDataRoamingAction, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x23EF02040](v9, &type metadata for SetDataRoamingAction, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_23DF0C2E8@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7C8, &qword_23E229DD0);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7D0, &qword_23E229DD8);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7A8, &qword_23E229DC8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_23DF0E250();
  sub_23E1FB81C();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7D8, &qword_23E229DE0);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7E0, &qword_23E229E10);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  sub_23E1FB7DC();
  v10 = sub_23DE66434(&qword_27E32D7B0, &qword_27E32D7A8, &qword_23E229DC8, MEMORY[0x277CBA2C0]);
  MEMORY[0x23EF02050](v7, &type metadata for SetDataRoamingAction, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x23EF02040](v9, &type metadata for SetDataRoamingAction, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_23DF0C624()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v1);
  v2 = sub_23E1FC7FC();
  OUTLINED_FUNCTION_6_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v8 = (v7 - v6);
  *v8 = sub_23E1FDC1C();
  v8[1] = v9;
  (*(v4 + 104))(v8, *MEMORY[0x277D7BF38], v2);
  sub_23E1FC82C();
  sub_23E1FC81C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  type metadata accessor for Key(0);
  sub_23DE664D0();
  sub_23E1FDABC();
  v14 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

void sub_23DF0C7DC()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_6_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v7 = sub_23E1FC1DC();
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v9 = sub_23E1FDBCC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v11 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_8();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v5 + 104))(v0, *MEMORY[0x277CC9110], v3);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  sub_23E1FB8EC();
  OUTLINED_FUNCTION_76();
}

void sub_23DF0C9DC()
{
  OUTLINED_FUNCTION_90();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v1);
  v45 = v36 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  v44 = v36 - v5;
  v39 = sub_23E1FBEEC();
  v6 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = sub_23E1FC1DC();
  v11 = OUTLINED_FUNCTION_25(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  v12 = sub_23E1FDBCC();
  v13 = OUTLINED_FUNCTION_25(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15();
  v42 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7F0, &qword_23E229E50);
  v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7F8, &qword_23E229E58) - 8);
  v16 = *v15;
  v41 = *(*v15 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v43 = v18;
  *(v18 + 16) = xmmword_23E222370;
  v19 = v18 + v17;
  v36[1] = v15[14];
  *(v18 + v17) = 0;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v37 = *MEMORY[0x277CC9110];
  v20 = *(v6 + 104);
  v38 = v6 + 104;
  v40 = v20;
  v20(v9);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  v21 = v42;
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v42);
  v25 = sub_23E1FB75C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  OUTLINED_FUNCTION_15_12();
  v29 = (v19 + v41);
  v41 = v15[14];
  *v29 = 1;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v40(v9, v37, v39);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v21);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v25);
  OUTLINED_FUNCTION_15_12();
  sub_23E1FB77C();
  sub_23DF0D3C0();
  sub_23E1FDABC();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DF0CE0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E1FE6EC();

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

uint64_t sub_23DF0CE60(char a1)
{
  if (a1)
  {
    return 0x656C67676F74;
  }

  else
  {
    return 1852994932;
  }
}

unint64_t sub_23DF0CE9C()
{
  result = qword_280DAF320;
  if (!qword_280DAF320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF320);
  }

  return result;
}

uint64_t sub_23DF0CF08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23DF0CE0C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23DF0CF38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DF0CE60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23DF0CFBC()
{
  result = qword_280DAF360;
  if (!qword_280DAF360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF360);
  }

  return result;
}

unint64_t sub_23DF0D014()
{
  result = qword_280DAF338;
  if (!qword_280DAF338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF338);
  }

  return result;
}

unint64_t sub_23DF0D06C()
{
  result = qword_280DAF318;
  if (!qword_280DAF318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF318);
  }

  return result;
}

unint64_t sub_23DF0D0C4()
{
  result = qword_280DAF348;
  if (!qword_280DAF348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF348);
  }

  return result;
}

unint64_t sub_23DF0D118()
{
  result = qword_280DAF340;
  if (!qword_280DAF340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF340);
  }

  return result;
}

unint64_t sub_23DF0D16C()
{
  result = qword_280DAF358;
  if (!qword_280DAF358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF358);
  }

  return result;
}

unint64_t sub_23DF0D1C4()
{
  result = qword_280DAF350;
  if (!qword_280DAF350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF350);
  }

  return result;
}

unint64_t sub_23DF0D26C()
{
  result = qword_280DAE580;
  if (!qword_280DAE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE580);
  }

  return result;
}

uint64_t sub_23DF0D2C0(uint64_t a1)
{
  v2 = sub_23DF0D26C();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23DF0D310()
{
  result = qword_280DAF330;
  if (!qword_280DAF330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF330);
  }

  return result;
}

unint64_t sub_23DF0D368()
{
  result = qword_280DAF310;
  if (!qword_280DAF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF310);
  }

  return result;
}

unint64_t sub_23DF0D3C0()
{
  result = qword_280DAF328;
  if (!qword_280DAF328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF328);
  }

  return result;
}

uint64_t sub_23DF0D418(uint64_t a1)
{
  v2 = sub_23DF0D1C4();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_23DF0D468()
{
  result = qword_280DAF2F8;
  if (!qword_280DAF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF2F8);
  }

  return result;
}

unint64_t sub_23DF0D4C0()
{
  result = qword_280DAF308;
  if (!qword_280DAF308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF308);
  }

  return result;
}

uint64_t sub_23DF0D54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_23E1FD03C();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C028, &qword_23E2237A0);
  OUTLINED_FUNCTION_25(v6);
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DF0D644, 0, 0);
}

uint64_t sub_23DF0D644(uint64_t a1)
{
  sub_23E1FB5DC();
  v2 = *(v1 + 24);
  if (v2)
  {
    *(v1 + 88) = *(v1 + 16);
    *(v1 + 96) = v2;
    v3 = *(v1 + 48);
    *(v1 + 104) = *(v1 + 32);
    *(v1 + 120) = v3;
    *(v1 + 136) = *(v1 + 64);
    *(v1 + 152) = *(v1 + 80);
    sub_23DED4C08((v1 + 88));
    if (v4)
    {
      v5 = v4;
      v6 = [v4 subscriptionContextUUID];
      v7 = *(v1 + 216);
      if (v6)
      {
        v8 = v6;
        sub_23E1FC0CC();

        sub_23E1FC0EC();
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
        sub_23DE481FC(v7, &qword_27E32C028, &qword_23E2237A0);
        sub_23E1FB5DC();
        if (*(v1 + 224) == 1)
        {
          v13 = [v5 dataRoamingEnabled] ^ 1;
        }

        else
        {
          sub_23E1FB5DC();
          v13 = *(v1 + 225);
        }

        [v5 setDataRoamingEnabled_];
        sub_23E1FB54C();

        sub_23DE481FC(v1 + 16, &qword_27E32CA80, &qword_23E229D80);

        v27 = *(v1 + 8);
        goto LABEL_15;
      }

      sub_23E1FC0EC();
      OUTLINED_FUNCTION_18_0();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
      sub_23DE481FC(v7, &qword_27E32C028, &qword_23E2237A0);
      sub_23DE99EEC();
      swift_allocError();
      *v26 = 2;
      swift_willThrow();
    }

    else
    {
      sub_23E1FCB9C();
      v15 = sub_23E1FD02C();
      v16 = sub_23E1FE1BC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_23DE30000, v15, v16, "Could not find cellular plan matching UUID", v17, 2u);
        MEMORY[0x23EF074C0](v17, -1, -1);
      }

      v19 = *(v1 + 200);
      v18 = *(v1 + 208);
      v20 = *(v1 + 192);

      (*(v19 + 8))(v18, v20);
      sub_23DE99EEC();
      swift_allocError();
      *v21 = 0;
      swift_willThrow();
    }

    sub_23DE481FC(v1 + 16, &qword_27E32CA80, &qword_23E229D80);
  }

  else
  {
    sub_23DE99EEC();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
  }

  v27 = *(v1 + 8);
LABEL_15:

  return v27();
}

void sub_23DF0D97C()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA58, &unk_23E229D50);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  v70 = v65 - v3;
  sub_23E1FB84C();
  OUTLINED_FUNCTION_6_0();
  v78 = v4;
  v79 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v69 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v9 = OUTLINED_FUNCTION_25(v8);
  v10 = MEMORY[0x28223BE20](v9);
  v68 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v13);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_9_10();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  v20 = sub_23E1FC1DC();
  v21 = OUTLINED_FUNCTION_25(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  v22 = sub_23E1FDBCC();
  v23 = OUTLINED_FUNCTION_25(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15();
  v24 = sub_23E1FBF0C();
  v74 = v24;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  v65[2] = v26 - v25;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA68, &qword_23E22AE90);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v28 = *(v16 + 104);
  v76 = *MEMORY[0x277CC9110];
  v27 = v76;
  v77 = v15;
  v28(v19, v76, v15);
  v75 = v28;
  v73 = v16 + 104;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_3_11();
  sub_23E1FBF1C();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v28(v19, v27, v15);
  OUTLINED_FUNCTION_3_11();
  sub_23E1FBF1C();
  v65[0] = v0;
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v24);
  v32 = sub_23E1FB51C();
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0;
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v32);
  v72 = *MEMORY[0x277CBA308];
  v39 = v78;
  v40 = *(v79 + 104);
  v79 += 104;
  v71 = v40;
  v41 = v69;
  v40(v69);
  sub_23DE99E98();
  v66 = sub_23E1FB61C();
  v65[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D780, &unk_23E229D60);
  OUTLINED_FUNCTION_13_8();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v42 = OUTLINED_FUNCTION_11_11();
  v43(v42);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_3_11();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v74);
  LOBYTE(v80) = 0;
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v32);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v32);
  v71(v41, v72, v39);
  sub_23DF0D26C();
  v68 = sub_23E1FB60C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA70, &qword_23E226300);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v53 = OUTLINED_FUNCTION_11_11();
  v54(v53);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_3_11();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v74);
  LOBYTE(v80) = 1;
  sub_23E1FDE4C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v32);
  v71(v41, v72, v78);
  sub_23E1FB64C();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DF0E044(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23DE662F0;

  return sub_23DF0D54C(a1, v4, v5, v6);
}

void sub_23DF0E0F8(void *a1@<X8>)
{
  sub_23DF0D97C();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

uint64_t sub_23DF0E128(uint64_t a1)
{
  v2 = sub_23DF0E250();

  return MEMORY[0x28210B538](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for SetDataRoamingAction.SetDataRoamingOperation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DF0E250()
{
  result = qword_280DAF300;
  if (!qword_280DAF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF300);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return sub_23E1FBEEC();
}

uint64_t OUTLINED_FUNCTION_15_12()
{

  return sub_23E1FB76C();
}

uint64_t sub_23DF0E32C(char a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 idiom];

  if (a1)
  {
    switch(v3)
    {
      case 0uLL:
        sub_23E1FDCBC("Are you sure you want to restart this iPhone?", 45);
        break;
      case 1uLL:
        sub_23E1FDCBC("Are you sure you want to restart this iPad?", 43);
        break;
      case 2uLL:
        sub_23E1FDCBC("Are you sure you want to restart this Mac?", 42);
        break;
      case 3uLL:
        sub_23E1FDCBC("Are you sure you want to restart this Apple Watch?", 50);
        break;
      case 4uLL:
        sub_23E1FDCBC("Are you sure you want to restart this iPod touch?", 49);
        break;
      default:
        sub_23E1FDCBC("Are you sure you want to restart this device?", 45);
        break;
    }

    if (qword_280DAE1D8 != -1)
    {
      swift_once();
    }

    v4 = qword_280DAE278;
    v5 = sub_23E1FDBDC();
    v6 = sub_23E1FDBDC();

    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    sub_23E1FDC1C();
    sub_23E1FDCBC("Restart", 7);
    if (qword_280DAE1D8 == -1)
    {
      goto LABEL_23;
    }

LABEL_24:
    swift_once();
    goto LABEL_23;
  }

  switch(v3)
  {
    case 0uLL:
      sub_23E1FDCBC("Are you sure you want to shut down this iPhone?", 47);
      break;
    case 1uLL:
      sub_23E1FDCBC("Are you sure you want to shut down this iPad?", 45);
      break;
    case 2uLL:
      sub_23E1FDCBC("Are you sure you want to shut down this Mac?", 44);
      break;
    case 3uLL:
      sub_23E1FDCBC("Are you sure you want to shut down this Apple Watch?", 52);
      break;
    case 4uLL:
      sub_23E1FDCBC("Are you sure you want to shut down this iPod touch?", 51);
      break;
    default:
      sub_23E1FDCBC("Are you sure you want to shut down this device?", 47);
      break;
  }

  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v4 = qword_280DAE278;
  v8 = sub_23E1FDBDC();
  v9 = sub_23E1FDBDC();

  v10 = [v4 localizedStringForKey:v8 value:v9 table:0];

  sub_23E1FDC1C();
  sub_23E1FDCBC("Shut Down", 9);
  if (qword_280DAE1D8 != -1)
  {
    goto LABEL_24;
  }

LABEL_23:
  v11 = sub_23E1FDBDC();
  v12 = sub_23E1FDBDC();

  v13 = [v4 localizedStringForKey:v11 value:v12 table:0];

  v14 = sub_23E1FDC1C();
  return v14;
}

uint64_t sub_23DF0E734(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E1FE6EC();

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

uint64_t sub_23DF0E788(char a1)
{
  if (a1)
  {
    return 0x74726174736552;
  }

  else
  {
    return 0x776F442074756853;
  }
}

uint64_t sub_23DF0E7E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23DF0E734(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23DF0E818@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DF0E788(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23DF0E860(char a1)
{
  if (a1 == 2)
  {
    return 101;
  }

  else
  {
    return 100;
  }
}

uint64_t sub_23DF0E874(unsigned __int8 a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v3;
  if (v1 == 2)
  {
    sub_23E1FDCBC("Please provide a mode to the Shut Down Device action.", 53);
  }

  else
  {
    sub_23E1FDCBC("An error occurred.", 18);
  }

  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v4 = qword_280DAE278;
  v5 = sub_23E1FDBDC();
  v6 = sub_23E1FDBDC();

  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v8 = sub_23E1FDC1C();
  v10 = v9;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  return sub_23E1FDABC();
}

uint64_t sub_23DF0E9E8(uint64_t a1)
{
  v2 = sub_23DF0FD30();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23DF0EA24(uint64_t a1)
{
  v2 = sub_23DF0FD30();

  return MEMORY[0x28211F4A8](a1, v2);
}

void sub_23DF0EA74()
{
  v1 = v0;
  v2 = sub_23E1FD03C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v6 = sub_23E1FE3FC();
  if (v6 && (v7 = v6, v16 = 0, v17 = 0, sub_23E1FDC0C(), v7, v17) && (v8 = sub_23DF0E734(v16, v17), v8 != 2))
  {
    v15 = v8 & 1;

    sub_23DF0ED24(v15);
  }

  else
  {
    sub_23E1FCB9C();
    v9 = sub_23E1FD02C();
    v10 = sub_23E1FE1BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23DE30000, v9, v10, "Unexpected or null mode parameter value.", v11, 2u);
      MEMORY[0x23EF074C0](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_23DF0FB28();
    v12 = swift_allocError();
    *v13 = 2;
    v14 = sub_23E1FBEBC();

    [v1 finishRunningWithError_];
  }
}

void sub_23DF0ED24(char a1)
{
  v2 = sub_23DF0E32C(a1 & 1);
  if (v3)
  {
    sub_23DF0EDA8(v2, v3, v4, v5, a1 & 1);
  }

  else
  {

    sub_23DF0F274(a1 & 1);
  }
}

void sub_23DF0EDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v10 = sub_23E1FD03C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v6 userInterface];
  if (v14)
  {
    v15 = v14;
    v29 = [objc_opt_self() alertWithPreferredStyle_];
    v16 = [objc_opt_self() cancelButtonWithHandler_];
    [v29 addButton_];

    v17 = sub_23E1FDBDC();
    [v29 setMessage_];

    sub_23DE38DA8(0, &qword_27E32D820, 0x277CFC220);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = a5 & 1;
    sub_23E1FB7BC();
    v20 = sub_23DF0F178(a1, a2, 2, sub_23DF0FB04, v19);
    [v29 addButton_];

    [v15 presentAlert_];
    swift_unknownObjectRelease();
    v21 = v29;
  }

  else
  {
    sub_23E1FCB9C();
    v22 = sub_23E1FD02C();
    v23 = sub_23E1FE1CC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_23DE30000, v22, v23, "Attempted to show an alert without a user interface", v24, 2u);
      MEMORY[0x23EF074C0](v24, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    v25 = [objc_opt_self() wfUnsupportedUserInterfaceError];
    if (v25)
    {
      v26 = v25;
      v27 = sub_23E1FBEBC();
    }

    else
    {
      v27 = 0;
    }

    [v6 finishRunningWithError_];
  }
}

void sub_23DF0F11C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_23DF0F274(a2 & 1);
  }
}

id sub_23DF0F178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23E1FDBDC();

  if (a4)
  {
    v12[4] = a4;
    v12[5] = a5;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_23DEEAB60;
    v12[3] = &block_descriptor_17;
    v9 = _Block_copy(v12);
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() buttonWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

void sub_23DF0F274(char a1)
{
  sub_23DE38DA8(0, &qword_27E32D818, 0x277D0AE10);
  v3 = v1 + OBJC_IVAR___WFShutDownDeviceAction_shutdownReason;
  v4 = *(v1 + OBJC_IVAR___WFShutDownDeviceAction_shutdownReason);
  v5 = *(v3 + 8);
  sub_23E1FB7BC();
  v6 = sub_23DF0F35C(v4, v5);
  [v6 setSource_];
  [v6 setRebootType_];
  v7 = [objc_opt_self() sharedService];
  [v7 shutdownWithOptions_];
}

id sub_23DF0F35C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_23E1FDBDC();

  v4 = [v2 initWithReason_];

  return v4;
}

uint64_t sub_23DF0F448()
{
  v1 = v0;
  v2 = sub_23E1FD03C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E1FDBDC();
  v7 = [v1 parameterStateForKey_];

  if (v7)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 value];
      swift_unknownObjectRelease();
      if (v9)
      {
        v19 = 0;
        v20 = 0;
        sub_23E1FDC0C();

        if (v20)
        {
          v10 = sub_23DF0E734(v19, v20);
          if (v10 != 2)
          {
            if (v10)
            {
              return 0x74726174736572;
            }

            else
            {
              return 0x7265776F70;
            }
          }
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_23E1FCB9C();
  v12 = sub_23E1FD02C();
  v13 = sub_23E1FE1BC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_23DE30000, v12, v13, "Unexpected or null mode parameter value.", v14, 2u);
    MEMORY[0x23EF074C0](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v15 = type metadata accessor for ShutDownDeviceAction();
  v21.receiver = v1;
  v21.super_class = v15;
  v16 = objc_msgSendSuper2(&v21, sel_iconSymbolName);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v11 = sub_23E1FDC1C();

  return v11;
}

id sub_23DF0F6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23E1FDBDC();
  v8.receiver = v3;
  v8.super_class = type metadata accessor for ShutDownDeviceAction();
  v6 = objc_msgSendSuper2(&v8, sel_setParameterState_forKey_, a1, v5);

  [v3 iconUpdated];
  return v6;
}

id sub_23DF0F7CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = &v4[OBJC_IVAR___WFShutDownDeviceAction_shutdownReason];
  *v7 = 0xD000000000000010;
  *(v7 + 1) = 0x800000023E258260;
  v8 = &v4[OBJC_IVAR___WFShutDownDeviceAction_modeParameterKey];
  strcpy(&v4[OBJC_IVAR___WFShutDownDeviceAction_modeParameterKey], "WFShutdownMode");
  v8[15] = -18;
  v9 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v10 = sub_23E1FDA9C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for ShutDownDeviceAction();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_definition_serializedParameters_, v9, a3, v10);

  if (v11)
  {
  }

  return v11;
}

id sub_23DF0F9A0()
{
  v1 = &v0[OBJC_IVAR___WFShutDownDeviceAction_shutdownReason];
  *v1 = 0xD000000000000010;
  *(v1 + 1) = 0x800000023E258260;
  v2 = &v0[OBJC_IVAR___WFShutDownDeviceAction_modeParameterKey];
  strcpy(&v0[OBJC_IVAR___WFShutDownDeviceAction_modeParameterKey], "WFShutdownMode");
  v2[15] = -18;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ShutDownDeviceAction();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_23DF0FA54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShutDownDeviceAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

unint64_t sub_23DF0FB28()
{
  result = qword_27E32D828;
  if (!qword_27E32D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D828);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for ShutDownDeviceAction.ActionError(unsigned __int8 *result, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ShutDownDeviceAction.ActionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23DF0FCFC(unsigned __int8 *a1)
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

_BYTE *sub_23DF0FD10(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_23DF0FD30()
{
  result = qword_27E32D830;
  if (!qword_27E32D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D830);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShutDownDeviceAction.Mode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DF0FE64()
{
  result = qword_27E32D840;
  if (!qword_27E32D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D840);
  }

  return result;
}

id sub_23DF0FEF0()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v166 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v172 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x800000023E258320;
  v7 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v7;
  v10 = sub_23E1FDCBC("phone|number|call", 17);
  v12 = v11;
  sub_23E1FDCBC("phone|number|call", 17);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v184 = qword_280DAE278;
  v13 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v10, v12);
  v16 = v15;
  v17 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v183 = v17;
  *(inited + 80) = v16;
  v18 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  v19 = v18;
  v20 = sub_23E1FDABC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  v177 = v21;
  *(inited + 120) = v20;
  v22 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  v182 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_23E222340;
  v24 = *MEMORY[0x277D7CC30];
  *(v23 + 32) = *MEMORY[0x277D7CC30];
  v25 = v22;
  v26 = v24;
  v27 = sub_23E1FDCBC("Calls the contact passed in as input using FaceTime.", 52);
  v29 = v28;
  sub_23E1FDCBC("Calls the contact passed in as input using FaceTime.", 52);
  sub_23E1FC14C();
  v30 = [v184 bundleURL];
  v173 = v2;
  sub_23E1FBF9C();

  v31 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v27, v29);
  v32 = v183;
  *(v23 + 64) = v183;
  *(v23 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v34 = sub_23E1FDABC();
  v35 = v182;
  *(inited + 160) = sub_23DF3BE54(v34);
  v36 = *MEMORY[0x277D7CCC0];
  *(inited + 184) = v35;
  *(inited + 192) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_23E222350;
  v38 = MEMORY[0x277D839B0];
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  *(v37 + 48) = 1;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  v171 = 0x800000023E2583A0;
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0xD000000000000011;
  *(v37 + 104) = 0x800000023E2583A0;
  v39 = MEMORY[0x277D837D0];
  *(v37 + 120) = MEMORY[0x277D837D0];
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  v40 = v38;
  *(v37 + 184) = 0xE500000000000000;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v37 + 216) = v180;
  *(v37 + 192) = &unk_285024F70;
  v41 = v36;
  v42 = sub_23E1FDABC();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 200) = v42;
  v44 = *MEMORY[0x277D7CCC8];
  *(inited + 224) = v43;
  *(inited + 232) = v44;
  *(inited + 264) = v40;
  *(inited + 240) = 1;
  v45 = v44;
  *(inited + 272) = sub_23E1FDBDC();
  *(inited + 280) = 0xD000000000000023;
  *(inited + 288) = 0x800000023E2583C0;
  v46 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v39;
  *(inited + 312) = v46;
  v47 = v46;
  v48 = sub_23E1FDCBC("FaceTime (Action Name)", 22);
  v50 = v49;
  sub_23E1FDCBC("FaceTime", 8);
  sub_23E1FC14C();
  v51 = [v184 bundleURL];
  sub_23E1FBF9C();

  v52 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v48, v50);
  *(inited + 320) = v53;
  v54 = *MEMORY[0x277D7CBA0];
  *(inited + 344) = v32;
  *(inited + 352) = v54;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v181 = swift_allocObject();
  *(v181 + 16) = xmmword_23E224C00;
  v182 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v55 = swift_allocObject();
  v170 = xmmword_23E224C10;
  *(v55 + 16) = xmmword_23E224C10;
  v56 = *MEMORY[0x277D7CDF8];
  *(v55 + 32) = *MEMORY[0x277D7CDF8];
  *(v55 + 40) = 0xD00000000000001ALL;
  *(v55 + 48) = 0x800000023E258410;
  v57 = *MEMORY[0x277D7CE00];
  v58 = MEMORY[0x277D837D0];
  *(v55 + 64) = MEMORY[0x277D837D0];
  *(v55 + 72) = v57;
  v59 = v56;
  v60 = v57;
  v178 = v59;
  v168 = v60;
  v61 = v54;
  v62 = sub_23E1FDABC();
  v63 = MEMORY[0x277D7CE40];
  *(v55 + 80) = v62;
  v64 = *v63;
  *(v55 + 104) = v177;
  *(v55 + 112) = v64;
  *(v55 + 144) = MEMORY[0x277D839B0];
  *(v55 + 120) = 1;
  v65 = v64;
  *(v55 + 152) = sub_23E1FDBDC();
  *(v55 + 160) = 0xD000000000000011;
  *(v55 + 168) = 0x800000023E258430;
  v66 = *MEMORY[0x277D7CE70];
  *(v55 + 184) = v58;
  *(v55 + 192) = v66;
  *(v55 + 200) = 0xD000000000000013;
  *(v55 + 208) = 0x800000023E258450;
  v67 = *MEMORY[0x277D7CE80];
  *(v55 + 224) = v58;
  *(v55 + 232) = v67;
  v68 = v66;
  v69 = v67;
  v70 = v68;
  v71 = v69;
  v175 = v70;
  v174 = v71;
  v72 = sub_23E1FDCBC("App (IntentAppDefinition)", 25);
  v74 = v73;
  sub_23E1FDCBC("App", 3);
  sub_23E1FC14C();
  v75 = [v184 bundleURL];
  sub_23E1FBF9C();

  v76 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v72, v74);
  *(v55 + 264) = v183;
  *(v55 + 240) = v77;
  _s3__C3KeyVMa_0(0);
  v177 = v78;
  v176 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v79 = sub_23E1FDABC();
  v80 = sub_23DF3BE9C(v79);
  *(v181 + 32) = v80;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_23E224700;
  *(v81 + 32) = v178;
  *(v81 + 40) = 0xD000000000000016;
  *(v81 + 48) = 0x800000023E24FDA0;
  v82 = MEMORY[0x277D837D0];
  v83 = v168;
  *(v81 + 64) = MEMORY[0x277D837D0];
  *(v81 + 72) = v83;
  v84 = MEMORY[0x277D7CE38];
  *(v81 + 80) = 0x6F65646956;
  *(v81 + 88) = 0xE500000000000000;
  v85 = *v84;
  *(v81 + 104) = v82;
  *(v81 + 112) = v85;
  *(v81 + 120) = &unk_285025000;
  v86 = *MEMORY[0x277D7CE30];
  *(v81 + 144) = v180;
  *(v81 + 152) = v86;
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_23E2246F0;
  v168 = v87;
  v88 = v85;
  v89 = v86;
  v167 = sub_23E1FDCBC("FaceTime", 8);
  v91 = v90;
  sub_23E1FDCBC("FaceTime", 8);
  sub_23E1FC14C();
  v169 = inited;
  v92 = v184;
  v93 = [v184 bundleURL];
  sub_23E1FBF9C();

  v94 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v167, v91);
  *(v87 + 32) = v95;
  v96 = sub_23E1FDCBC("FaceTime Audio", 14);
  v98 = v97;
  sub_23E1FDCBC("FaceTime Audio", 14);
  sub_23E1FC14C();
  v99 = [v92 bundleURL];
  sub_23E1FBF9C();

  v100 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v96, v98);
  v101 = v168;
  v168[5] = v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v81 + 160) = v101;
  v104 = v175;
  *(v81 + 184) = v103;
  *(v81 + 192) = v104;
  strcpy((v81 + 200), "WFFaceTimeType");
  *(v81 + 215) = -18;
  v105 = v174;
  *(v81 + 224) = MEMORY[0x277D837D0];
  *(v81 + 232) = v105;
  v106 = sub_23E1FDCBC("Call Type (WFFaceTimeType)", 26);
  v108 = v107;
  sub_23E1FDCBC("Call Type", 9);
  sub_23E1FC14C();
  v109 = v184;
  v110 = [v184 bundleURL];
  sub_23E1FBF9C();

  v111 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v106, v108);
  *(v81 + 240) = v112;
  v113 = *MEMORY[0x277D7CEC8];
  v114 = v183;
  *(v81 + 264) = v183;
  *(v81 + 272) = v113;
  v168 = v113;
  v115 = sub_23E1FDCBC("What type of call? (WFFaceTimeType)", 35);
  v117 = v116;
  sub_23E1FDCBC("What type of call?", 18);
  sub_23E1FC14C();
  v118 = [v109 bundleURL];
  sub_23E1FBF9C();

  v119 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v115, v117);
  *(v81 + 304) = v114;
  *(v81 + 280) = v120;
  v121 = sub_23E1FDABC();
  v122 = sub_23DF3BE9C(v121);
  *(v181 + 40) = v122;
  v123 = swift_allocObject();
  *(v123 + 16) = v170;
  v124 = *MEMORY[0x277D7CDE0];
  *(v123 + 32) = *MEMORY[0x277D7CDE0];
  *(v123 + 40) = 1;
  v125 = v178;
  *(v123 + 64) = MEMORY[0x277D839B0];
  *(v123 + 72) = v125;
  v126 = MEMORY[0x277D837D0];
  *(v123 + 104) = MEMORY[0x277D837D0];
  *(v123 + 80) = 0xD000000000000017;
  *(v123 + 88) = 0x800000023E258530;
  v127 = v124;
  *(v123 + 112) = sub_23E1FDBDC();
  *(v123 + 120) = 0x73746361746E6F63;
  *(v123 + 128) = 0xE800000000000000;
  v128 = v175;
  *(v123 + 144) = v126;
  *(v123 + 152) = v128;
  v129 = v171;
  *(v123 + 160) = 0xD000000000000011;
  *(v123 + 168) = v129;
  v130 = v174;
  *(v123 + 184) = v126;
  *(v123 + 192) = v130;
  v131 = sub_23E1FDCBC("Contact (WFFaceTimeContact)", 27);
  v133 = v132;
  sub_23E1FDCBC("Contact", 7);
  sub_23E1FC14C();
  v134 = v184;
  v135 = [v184 bundleURL];
  sub_23E1FBF9C();

  v136 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v131, v133);
  *(v123 + 200) = v137;
  v138 = v183;
  v139 = v168;
  *(v123 + 224) = v183;
  *(v123 + 232) = v139;
  v179 = sub_23E1FDCBC("Who do you want to call? (WFFaceTimeContact)", 44);
  v141 = v140;
  sub_23E1FDCBC("Who do you want to call?", 24);
  sub_23E1FC14C();
  v142 = [v134 bundleURL];
  sub_23E1FBF9C();

  v143 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v179, v141);
  *(v123 + 264) = v138;
  *(v123 + 240) = v144;
  v145 = sub_23E1FDABC();
  v146 = sub_23DF3BE9C(v145);
  v147 = v181;
  *(v181 + 48) = v146;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v149 = v169;
  *(v169 + 360) = v147;
  v150 = *MEMORY[0x277D7CB98];
  v149[48] = v148;
  v149[49] = v150;
  v151 = v150;
  v152 = sub_23E1FDCBC("${WFFaceTimeType} Call ${WFFaceTimeContact} (Parameter Summary)", 63);
  v154 = v153;
  sub_23E1FDCBC("${WFFaceTimeType} Call ${WFFaceTimeContact}", 43);
  sub_23E1FC14C();
  v155 = [v184 bundleURL];
  sub_23E1FBF9C();

  v156 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v152, v154);
  v158 = v157;
  v159 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v160 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v149[50] = v159;
  v161 = *MEMORY[0x277D7CF20];
  v149[53] = v160;
  v149[54] = v161;
  v149[58] = v180;
  v149[55] = &unk_285025040;
  v162 = v161;
  v163 = sub_23E1FDBDC();
  v149[63] = MEMORY[0x277D837D0];
  v149[59] = v163;
  v149[60] = 0x656D695465636146;
  v149[61] = 0xE800000000000000;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v164 = sub_23E1FDABC();
  return sub_23DF3BF9C(v164);
}

uint64_t static WFContentItem.toolkitTypeDefinition(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFE0, &unk_23E22A000);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v5);
  v45 = &v39 - v6;
  sub_23E1FD41C();
  OUTLINED_FUNCTION_6_0();
  v43 = v8;
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = _s8CacheKeyVMa(0);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  v16 = sub_23E1FD46C();
  OUTLINED_FUNCTION_6_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  v23 = a1;
  v24 = v47;
  result = sub_23E1FE15C();
  if (!v24)
  {
    v39 = v11;
    v41 = 0;
    v42 = v18;
    v27 = v44;
    v26 = v45;
    v47 = v2;
    (*(v18 + 16))(v15, v22, v16);
    v40 = v23;
    *(v15 + *(v12 + 20)) = sub_23E1FE0BC();
    if (qword_27E32B978 != -1)
    {
      swift_once();
    }

    v28 = v26;
    sub_23E1FDA4C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v27);
    v30 = v47;
    if (EnumTagSinglePayload == 1)
    {
      v31 = sub_23DE5CB68(v28, &qword_27E32BFE0, &unk_23E22A000);
      MEMORY[0x28223BE20](v31);
      v32 = v40;
      *(&v39 - 2) = v30;
      *(&v39 - 1) = v32;
      sub_23E1FDA2C();
      sub_23DF1230C(v15);
      v33 = OUTLINED_FUNCTION_4_15();
      return v34(v33);
    }

    else
    {
      sub_23DF1230C(v15);
      v35 = OUTLINED_FUNCTION_4_15();
      v36(v35);
      v37 = *(v43 + 32);
      v38 = v39;
      v37(v39, v28, v27);
      return (v37)(v46, v38, v27);
    }
  }

  return result;
}

uint64_t _s8CacheKeyVMa(uint64_t a1)
{
  result = qword_27E32D890;
  if (!qword_27E32D890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_23DF114B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_23E1FE84C();
  sub_23E1FDCCC();
  v6 = sub_23E1FE87C();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_23E1FE75C();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

BOOL sub_23DF115A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_23E1FBBDC();
  OUTLINED_FUNCTION_6_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  if (!*(a2 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_18();
  sub_23DF17560(v10, v11, MEMORY[0x277CFC120]);
  v12 = sub_23E1FDADC();
  v13 = a2 + 56;
  v21 = a2;
  v14 = ~(-1 << *(a2 + 32));
  do
  {
    v15 = v12 & v14;
    v16 = (1 << (v12 & v14)) & *(v13 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8));
    v17 = v16 != 0;
    if (!v16)
    {
      break;
    }

    (*(v5 + 16))(v9, *(v21 + 48) + *(v5 + 72) * v15, v3);
    OUTLINED_FUNCTION_2_18();
    sub_23DF17560(&qword_27E32D8D0, v18, MEMORY[0x277CFC128]);
    v19 = sub_23E1FDB2C();
    (*(v5 + 8))(v9, v3);
    v12 = v15 + 1;
  }

  while ((v19 & 1) == 0);
  return v17;
}

uint64_t static WFContentItem.toolkitPredicateTemplates(usage:seen:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D650, &qword_23E2296C8);
  OUTLINED_FUNCTION_25(v7);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D658, &unk_23E2296D0);
  OUTLINED_FUNCTION_25(v11);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D860, &qword_23E224060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v16 = sub_23DF12368();
  *(inited + 32) = v4;
  *(inited + 40) = v16;
  v21 = a2;
  sub_23E1FB7BC();
  sub_23DE57274(inited);
  sub_23DF15C60(a1, v21);

  if (!v3)
  {
    v18 = sub_23E1FD77C();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v18);
    v19 = sub_23E1FD49C();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v19);
    return sub_23E1FD4AC();
  }

  return result;
}

uint64_t sub_23DF11924()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D930, &unk_23E22A190);
  result = sub_23E1FDA3C();
  qword_27E32D850 = result;
  return result;
}

uint64_t sub_23DF11964(uint64_t a1, uint64_t a2)
{
  if (sub_23E1FD45C())
  {
    v4 = *(_s8CacheKeyVMa(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5)
    {
      if (v6)
      {
        sub_23DE38DA8(0, &unk_27E32D8A8, 0x277D7A048);
        v7 = v6;
        v8 = v5;
        v9 = sub_23E1FE3BC();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

void sub_23DF11A08(uint64_t a1)
{
  sub_23E1FD46C();
  sub_23DF17560(&unk_27E32D8C0, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
  sub_23E1FDAEC();
  v2 = *(v1 + *(_s8CacheKeyVMa(0) + 20));
  if (v2)
  {
    sub_23E1FE86C();
    v3 = v2;
    sub_23E1FE3CC();
  }

  else
  {
    sub_23E1FE86C();
  }
}

uint64_t sub_23DF11AF4()
{
  sub_23E1FE84C();
  sub_23DF11A08(v1);
  return sub_23E1FE87C();
}

uint64_t sub_23DF11B3C(uint64_t a1)
{
  sub_23E1FE84C();
  sub_23DF11A08(v2);
  return sub_23E1FE87C();
}

uint64_t static WFContentItem.toolkitTypeDisplayRepresentation(localizationContext:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6E0, &qword_23E224920);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - v4;
  v6 = sub_23E1FC1DC();
  OUTLINED_FUNCTION_6_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  sub_23DE38DA8(0, &qword_280DAE2F0, 0x277D7C5C8);
  if (swift_dynamicCastMetatype())
  {
    v13 = [swift_getObjCClassFromMetadata() enumMetadata];
    v14 = [v13 displayRepresentation];

    v15 = [a1 locale];
LABEL_9:
    v24 = v15;
    sub_23E1FC15C();

    sub_23E1FC0FC();
    (*(v8 + 8))(v12, v6);
    return sub_23E1FD96C();
  }

  sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
  if (swift_dynamicCastMetatype())
  {
    v16 = [swift_getObjCClassFromMetadata() entityMetadata];
    v17 = [v16 displayRepresentation];

    v15 = [a1 locale];
    goto LABEL_9;
  }

  sub_23DE38DA8(0, &unk_27E32D870, 0x277D7C5A0);
  if (swift_dynamicCastMetatype())
  {
    v18 = [swift_getObjCClassFromMetadata() valueType];
    v19 = [v18 wf_displayRepresentation];

    if (!v19)
    {
      v20 = sub_23E1FBFBC();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v20);
      v21 = objc_allocWithZone(MEMORY[0x277D23910]);
      v22 = sub_23DF17088(0x206E776F6E6B6E55, 0xEC00000065707954, 0, 0, v5);
      v23 = objc_allocWithZone(MEMORY[0x277D23948]);
      sub_23DF1718C(v22, 0, 0);
    }

    v15 = [a1 locale];
    goto LABEL_9;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [ObjCClassFromMetadata localizedTypeDescriptionWithContext_];
  sub_23E1FDC1C();

  v28 = [ObjCClassFromMetadata countDescription];
  sub_23E1FDC1C();

  return sub_23E1FD97C();
}

id sub_23DF11F4C(uint64_t a1)
{
  v3 = v1;
  v33 = a1;
  v32 = sub_23E1FD99C();
  OUTLINED_FUNCTION_6_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = sub_23E1FD8FC();
  OUTLINED_FUNCTION_6_0();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v39 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v28 - v16;
  v34 = v3;
  v18 = [swift_getObjCClassFromMetadata() allProperties];
  sub_23DE38DA8(0, &qword_280DAE730, 0x277CFC330);
  v19 = sub_23E1FDDEC();

  result = sub_23DE4D8B0();
  v21 = 0;
  v36 = v19 & 0xC000000000000001;
  v37 = result;
  v38 = v19;
  v35 = v19 & 0xFFFFFFFFFFFFFF8;
  v31 = (v5 + 8);
  v28[1] = v12 + 8;
  v29 = (v12 + 16);
  v28[0] = v12 + 32;
  v22 = MEMORY[0x277D84F90];
  for (i = v9; ; v9 = i)
  {
    if (v37 == v21)
    {

      return v22;
    }

    if (v36)
    {
      result = MEMORY[0x23EF04DD0](v21, v38);
    }

    else
    {
      if (v21 >= *(v35 + 16))
      {
        goto LABEL_18;
      }

      result = *(v38 + 8 * v21 + 32);
    }

    v23 = result;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    sub_23E1FE13C();
    sub_23E1FE25C();
    if (v2)
    {
      (*v31)(v9, v32);

      return v22;
    }

    (*v31)(v9, v32);
    (*v29)(v39, v17, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23DE4D558(0, *(v22 + 16) + 1, 1, v22);
      v22 = v26;
    }

    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_23DE4D558(v24 > 1, v25 + 1, 1, v22);
      v22 = v27;
    }

    (*(v12 + 8))(v17, v10);
    *(v22 + 16) = v25 + 1;
    result = (*(v12 + 32))(v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v25, v39, v10);
    ++v21;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23DF1230C(uint64_t a1)
{
  v2 = _s8CacheKeyVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23DF12368()
{
  result = qword_27E32D740;
  if (!qword_27E32D740)
  {
    sub_23DE38DA8(255, &unk_280DAE750, 0x277CFC2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D740);
  }

  return result;
}

uint64_t sub_23DF123D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v439 = a2;
  v438 = sub_23E1FD03C();
  v411 = *(v438 - 8);
  v4 = MEMORY[0x28223BE20](v438);
  v444 = v387 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v427 = v387 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFE0, &unk_23E22A000);
  MEMORY[0x28223BE20](v7 - 8);
  v410 = (v387 - v8);
  v447 = sub_23E1FD6CC();
  v431 = *(v447 - 8);
  MEMORY[0x28223BE20](v447);
  v405 = v387 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v420 = sub_23E1FD55C();
  v419 = *(v420 - 8);
  MEMORY[0x28223BE20](v420);
  v418 = v387 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v417 = sub_23E1FD3DC();
  v415 = *(v417 - 8);
  MEMORY[0x28223BE20](v417);
  v416 = (v387 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v422 = sub_23E1FD56C();
  v421 = *(v422 - 8);
  v12 = MEMORY[0x28223BE20](v422);
  v414 = v387 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v404 = v387 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v408 = v387 - v17;
  MEMORY[0x28223BE20](v16);
  v407 = v387 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D8E8, qword_23E22A160);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v443 = v387 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v445 = v387 - v22;
  v449 = sub_23E1FCC8C();
  v423 = *(v449 - 1);
  v23 = MEMORY[0x28223BE20](v449);
  v412 = v387 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v413 = v387 - v25;
  v26 = sub_23E1FD87C();
  MEMORY[0x28223BE20](v26 - 8);
  v448 = v387 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v441 = sub_23E1FD6EC();
  v437 = *(v441 - 1);
  v28 = MEMORY[0x28223BE20](v441);
  v409 = v387 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v440 = v387 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v432 = v387 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v406 = v387 - v35;
  MEMORY[0x28223BE20](v34);
  v428 = v387 - v36;
  v442 = sub_23E1FDA1C();
  v426 = *(v442 - 8);
  MEMORY[0x28223BE20](v442);
  v425 = (v387 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_23E1FD98C();
  MEMORY[0x28223BE20](v38 - 8);
  v424 = v387 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_23E1FD52C();
  v41 = *(v40 - 8);
  v435 = v40;
  v436 = v41;
  v42 = MEMORY[0x28223BE20](v40);
  v402 = v387 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v403 = v387 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v430 = v387 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v429 = v387 - v49;
  MEMORY[0x28223BE20](v48);
  v434 = v387 - v50;
  v51 = sub_23E1FD46C();
  v446 = *(v51 - 8);
  v52 = MEMORY[0x28223BE20](v51);
  v54 = v387 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v52);
  v57 = v387 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = v387 - v59;
  v61 = MEMORY[0x28223BE20](v58);
  v63 = v387 - v62;
  v64 = MEMORY[0x28223BE20](v61);
  v66 = v387 - v65;
  MEMORY[0x28223BE20](v64);
  v68 = v387 - v67;
  v433 = a1;
  v69 = v2;
  v70 = v450;
  result = sub_23E1FE15C();
  v450 = v70;
  if (v70)
  {
    return result;
  }

  v398 = v63;
  *&v395 = v54;
  v396 = v57;
  v72 = v442;
  v397 = v60;
  v400 = v69;
  v73 = v446;
  v75 = v446 + 16;
  v74 = *(v446 + 16);
  v74(v66, v68, v51);
  v76 = (*(v73 + 88))(v66, v51);
  v77 = *MEMORY[0x277D72D50];
  if (v76 == *MEMORY[0x277D72D50])
  {
    (*(v73 + 8))(v68, v51);
    (*(v73 + 96))(v66, v51);
    v78 = sub_23E1FD43C();
    v79 = swift_projectBox();
    v80 = v439;
    (*(*(v78 - 8) + 16))(v439, v79, v78);
    v81 = *MEMORY[0x277D72B88];
    v82 = sub_23E1FD41C();
    (*(*(v82 - 8) + 104))(v80, v81, v82);
  }

  v399 = v68;
  v401 = v51;
  v83 = MEMORY[0x277D84F90];
  if (v76 == *MEMORY[0x277D72D30])
  {
    v84 = v401;
    v449 = *(v73 + 8);
    v449(v66, v401);
    v451 = v83;
    sub_23DF17560(&qword_280DAE5B0, MEMORY[0x277D72DC8], MEMORY[0x277D72DD0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D6E0, &qword_23E223788);
    sub_23DF175A8();
    v85 = v435;
    sub_23E1FE4EC();
    v86 = v398;
    v74(v398, v399, v84);
    v87 = sub_23E1FE0BC();
    v88 = v450;
    v89 = sub_23DF11F4C(v87);
    if (v88)
    {
      v450 = v88;

      v90 = v86;
      v91 = v401;
      v92 = v449;
      v449(v90, v401);
      (*(v436 + 8))(v434, v85);
      return v92(v399, v91);
    }

    else
    {
      v450 = v89;

      v104 = sub_23E1FE0BC();
      static WFContentItem.toolkitTypeDisplayRepresentation(localizationContext:)(v104);

      v105 = v436;
      v106 = v434;
      (*(v436 + 16))(v429, v434, v85);
      v107 = v439;
      sub_23E1FD50C();
      (*(v105 + 8))(v106, v85);
      v449(v399, v401);
      v108 = *MEMORY[0x277D72B68];
      v109 = sub_23E1FD41C();
      return (*(*(v109 - 8) + 104))(v107, v108, v109);
    }
  }

  v394 = v77;
  v391 = v74;
  v393 = v75;
  if (v76 != *MEMORY[0x277D72D28] && v76 != *MEMORY[0x277D72D18] && v76 != *MEMORY[0x277D72D38])
  {
    result = sub_23E1FE74C();
    __break(1u);
    return result;
  }

  v398 = *(v73 + 8);
  (v398)(v66, v401);
  sub_23DE38DA8(0, &qword_280DAE2F0, 0x277D7C5C8);
  v95 = swift_dynamicCastMetatype();
  v96 = v435;
  v97 = v429;
  if (v95)
  {
    v98 = [swift_getObjCClassFromMetadata() enumMetadata];
    v99 = v425;
    sub_23E1FE11C();
    v100 = sub_23E1FE0BC();
    v101 = v439;
    v102 = v399;
    v103 = v450;
    sub_23E1FE1EC();
    if (v103)
    {
      v450 = v103;

      (*(v426 + 8))(v99, v72);
      return (v398)(v102, v401);
    }

    else
    {

      (*(v426 + 8))(v99, v72);
      (v398)(v102, v401);
      v111 = *MEMORY[0x277D72B48];
      v112 = sub_23E1FD41C();
      return (*(*(v112 - 8) + 104))(v101, v111, v112);
    }
  }

  v389 = v73 + 8;
  sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
  if (!swift_dynamicCastMetatype())
  {
    sub_23DE38DA8(0, &unk_27E32D8F0, 0x277CFC4C8);
    v113 = swift_dynamicCastMetatype();
    v114 = v439;
    v115 = v433;
    if (v113)
    {
      [swift_getObjCClassFromMetadata() entityContentItemClass];
      swift_getObjCClassMetadata();
      if (!swift_dynamicCastMetatype())
      {
        v449 = sub_23E1FD41C();
        __swift_storeEnumTagSinglePayload(v410, 1, 1, v449);
        v451 = v83;
        sub_23DF17560(&qword_280DAE5B0, MEMORY[0x277D72DC8], MEMORY[0x277D72DD0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D6E0, &qword_23E223788);
        sub_23DF175A8();
        v338 = v403;
        sub_23E1FE4EC();
        v339 = v396;
        v340 = v401;
        v391(v396, v399, v401);
        v341 = sub_23E1FE0BC();
        v342 = v450;
        v343 = sub_23DF11F4C(v341);
        if (v342)
        {
          v450 = v342;

          v344 = v339;
          v345 = v398;
          (v398)(v344, v340);
          (*(v436 + 8))(v338, v96);
          v345(v399, v340);
          v346 = v410;
          result = __swift_getEnumTagSinglePayload(v410, 1, v449);
          if (result == 1)
          {
            return result;
          }
        }

        else
        {
          v450 = v343;

          v368 = sub_23E1FE0BC();
          static WFContentItem.toolkitTypeDisplayRepresentation(localizationContext:)(v368);

          v369 = v436;
          (*(v436 + 16))(v429, v338, v96);
          v370 = v439;
          sub_23E1FD50C();
          (*(v369 + 8))(v338, v96);
          (v398)(v399, v340);
          v371 = v449;
          (*(*(v449 - 1) + 104))(v370, *MEMORY[0x277D72B68], v449);
          v346 = v410;
          result = __swift_getEnumTagSinglePayload(v410, 1, v371);
          if (result == 1)
          {
            return result;
          }
        }

        return sub_23DE5CB68(v346, &qword_27E32BFE0, &unk_23E22A000);
      }

      v116 = v410;
      v117 = v450;
      sub_23DF123D0(v115, v410);
      if (v117)
      {
        v450 = v117;
        return (v398)(v399, v401);
      }

      else
      {
        (v398)(v399, v401);
        v359 = sub_23E1FD41C();
        __swift_storeEnumTagSinglePayload(v116, 0, 1, v359);
        return (*(*(v359 - 8) + 32))(v114, v116, v359);
      }
    }

    else
    {
      sub_23DE38DA8(0, &unk_27E32D870, 0x277D7C5A0);
      if (swift_dynamicCastMetatype())
      {
        v264 = [swift_getObjCClassFromMetadata() valueType];
        v265 = [v264 identifier];

        sub_23E1FDC1C();
        v266 = sub_23E1FE0BC();
        static WFContentItem.toolkitTypeDisplayRepresentation(localizationContext:)(v266);

        sub_23E1FD53C();
        (v398)(v399, v401);
        v267 = *MEMORY[0x277D72B70];
        v268 = sub_23E1FD41C();
        return (*(*(v268 - 8) + 104))(v114, v267, v268);
      }

      else
      {
        v451 = v83;
        sub_23DF17560(&qword_280DAE5B0, MEMORY[0x277D72DC8], MEMORY[0x277D72DD0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D6E0, &qword_23E223788);
        sub_23DF175A8();
        v360 = v402;
        sub_23E1FE4EC();
        v361 = v395;
        v362 = v399;
        v363 = v401;
        v391(v395, v399, v401);
        v364 = sub_23E1FE0BC();
        v365 = v450;
        v366 = sub_23DF11F4C(v364);
        v450 = v365;
        if (v365)
        {

          v367 = v398;
          (v398)(v361, v363);
          (*(v436 + 8))(v360, v435);
          return v367(v362, v363);
        }

        else
        {
          v449 = v366;

          v372 = sub_23E1FE0BC();
          static WFContentItem.toolkitTypeDisplayRepresentation(localizationContext:)(v372);

          v374 = v435;
          v373 = v436;
          (*(v436 + 16))(v97, v360, v435);
          v375 = v439;
          sub_23E1FD50C();
          (*(v373 + 8))(v360, v374);
          (v398)(v362, v363);
          v376 = *MEMORY[0x277D72B68];
          v377 = sub_23E1FD41C();
          return (*(*(v377 - 8) + 104))(v375, v376, v377);
        }
      }
    }
  }

  v387[0] = swift_getObjCClassFromMetadata();
  v396 = [v387[0] entityMetadata];
  if ([v396 isTransient])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D920, &qword_23E22A188);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_23E222340;
    sub_23E1FD51C();
    v451 = v110;
  }

  else
  {
    v451 = v83;
  }

  sub_23DF17560(&qword_280DAE5B0, MEMORY[0x277D72DC8], MEMORY[0x277D72DD0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D6E0, &qword_23E223788);
  sub_23DF175A8();
  sub_23E1FE4EC();
  v118 = v450;
  v119 = [v396 systemProtocolMetadata];
  type metadata accessor for LNSystemEntityProtocolIdentifier(0);
  v121 = v120;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D900, &unk_23E22A178);
  v123 = sub_23DF17560(&unk_280DAE2C0, type metadata accessor for LNSystemEntityProtocolIdentifier, &unk_23E223394);
  v387[3] = v121;
  v387[2] = v122;
  v387[1] = v123;
  v124 = sub_23E1FDAAC();

  v126 = 0;
  v128 = v124 + 64;
  v127 = *(v124 + 64);
  v402 = v124;
  v129 = 1 << *(v124 + 32);
  v130 = -1;
  if (v129 < 64)
  {
    v130 = ~(-1 << v129);
  }

  v131 = v130 & v127;
  v132 = (v129 + 63) >> 6;
  v426 = *MEMORY[0x277D7A4E0];
  v425 = (v411 + 8);
  v410 = (v437 + 16);
  v403 = (v437 + 8);
  v411 = v437 + 32;
  *&v125 = 136315394;
  v388 = v125;
  v442 = MEMORY[0x277D84F90];
  v133 = v427;
  v392 = v132;
  *&v395 = v124 + 64;
LABEL_31:
  v134 = v126;
  v135 = v438;
  while (v131)
  {
    v126 = v134;
LABEL_37:
    v136 = __clz(__rbit64(v131));
    v131 &= v131 - 1;
    v137 = *(*(v402 + 6) + ((v126 << 9) | (8 * v136)));
    swift_unknownObjectRetain_n();
    v138 = v137;
    sub_23E1FD6DC();
    if (!v118)
    {
      (*v410)(v406, v428, v441);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23DE4D618(0, *(v442 + 16) + 1, 1, v442);
        v442 = v165;
      }

      v161 = *(v442 + 16);
      v160 = *(v442 + 24);
      if (v161 >= v160 >> 1)
      {
        sub_23DE4D618(v160 > 1, v161 + 1, 1, v442);
        v442 = v166;
      }

      swift_unknownObjectRelease();
      v162 = v437;
      v163 = v441;
      (*(v437 + 8))(v428, v441);
      v164 = v442;
      *(v442 + 16) = v161 + 1;
      (*(v162 + 32))(v164 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v161, v406, v163);
      v128 = v395;
      v132 = v392;
      goto LABEL_31;
    }

    sub_23E1FCB9C();
    v139 = v138;
    v140 = v133;
    v141 = v139;
    v142 = v118;
    v143 = sub_23E1FD02C();
    v144 = sub_23E1FE1BC();
    v145 = v141;

    v434 = v143;
    if (os_log_type_enabled(v143, v144))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v450 = v118;
      v148 = v147;
      v149 = swift_slowAlloc();
      v451 = v149;
      *v146 = v388;
      v390 = v145;
      v150 = sub_23E1FDC1C();
      v152 = sub_23DE56B40(v150, v151, &v451);

      *(v146 + 4) = v152;
      v153 = v427;
      *(v146 + 12) = 2112;
      v154 = v450;
      v155 = v450;
      v156 = _swift_stdlib_bridgeErrorToNSError();
      *(v146 + 14) = v156;
      *v148 = v156;
      v157 = v144;
      v158 = v434;
      _os_log_impl(&dword_23DE30000, v434, v157, "Failed to construct system protocol: %s due to %@", v146, 0x16u);
      sub_23DE5CB68(v148, &unk_27E32C190, &qword_23E224B70);
      MEMORY[0x23EF074C0](v148, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v149);
      MEMORY[0x23EF074C0](v149, -1, -1);
      v159 = v146;
      v133 = v153;
      MEMORY[0x23EF074C0](v159, -1, -1);

      swift_unknownObjectRelease();
      v135 = v438;
      (*v425)(v153, v438);
      v118 = 0;
      v134 = v126;
      v128 = v395;
      v132 = v392;
    }

    else
    {
      swift_unknownObjectRelease();

      v135 = v438;
      (*v425)(v140, v438);
      v118 = 0;
      v134 = v126;
      v128 = v395;
      v132 = v392;
      v133 = v140;
    }
  }

  while (1)
  {
    v126 = v134 + 1;
    if (__OFADD__(v134, 1))
    {
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    if (v126 >= v132)
    {
      break;
    }

    v131 = *(v128 + 8 * v126);
    ++v134;
    if (v131)
    {
      goto LABEL_37;
    }
  }

  v167 = sub_23DF17234(v396);
  if (!v167)
  {
    v167 = MEMORY[0x277D84F90];
  }

  v434 = v167;
  v168 = sub_23DE4D8B0();
  if (v168)
  {
    if (v168 >= 1)
    {
      v170 = 0;
      v427 = (v434 & 0xC000000000000001);
      LODWORD(v406) = *MEMORY[0x277D73010];
      v402 = (v437 + 104);
      *&v169 = 138412546;
      v395 = v169;
      v428 = v168;
      while (1)
      {
        v171 = v427 ? MEMORY[0x23EF04DD0](v170, v434) : *(v434 + v170 + 4);
        v172 = v171;
        v173 = [v171 name];
        sub_23E1FDC1C();

        v174 = [v172 version];
        sub_23E1FDC1C();

        sub_23E1FD88C();
        if (!v118)
        {
          break;
        }

        v175 = v444;
        sub_23E1FCB9C();
        v176 = v172;
        v177 = v118;
        v178 = sub_23E1FD02C();
        v179 = sub_23E1FE1BC();

        if (os_log_type_enabled(v178, v179))
        {
          v180 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          *v180 = v395;
          *(v180 + 4) = v176;
          *v181 = v176;
          *(v180 + 12) = 2112;
          v182 = v176;
          v183 = v118;
          v184 = _swift_stdlib_bridgeErrorToNSError();
          *(v180 + 14) = v184;
          v181[1] = v184;
          _os_log_impl(&dword_23DE30000, v178, v179, "Failed to construct assistant schema conformance protocol: %@ due to %@", v180, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C190, &qword_23E224B70);
          swift_arrayDestroy();
          MEMORY[0x23EF074C0](v181, -1, -1);
          v185 = v180;
          v175 = v444;
          MEMORY[0x23EF074C0](v185, -1, -1);
        }

        else
        {
        }

        v131 = v447;
        v188 = v428;

        (*v425)(v175, v135);
        v118 = 0;
LABEL_71:
        if (v188 == ++v170)
        {
          goto LABEL_74;
        }
      }

      v450 = 0;
      sub_23DE5C91C(v172, &selRef_domain);
      if (v186)
      {
LABEL_58:
        v187 = v440;
      }

      else
      {
        v189 = sub_23E1FCA5C();
        v190 = [v172 name];
        v191 = sub_23E1FDC1C();
        v193 = v192;

        if (*(v189 + 16))
        {
          sub_23DF1E154(v191, v193);
          v195 = v194;

          if (v195)
          {
            sub_23E1FB7BC();

            goto LABEL_58;
          }
        }

        else
        {
        }

        v187 = v440;
        sub_23E1FD90C();
      }

      v196 = v432;
      sub_23E1FD91C();
      v197 = v441;
      (*v402)(v196, v406, v441);
      (*v410)(v187, v196, v197);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23DE4D618(0, *(v442 + 16) + 1, 1, v442);
        v442 = v204;
      }

      v118 = v450;
      v131 = v447;
      v199 = *(v442 + 16);
      v198 = *(v442 + 24);
      v135 = v438;
      if (v199 >= v198 >> 1)
      {
        sub_23DE4D618(v198 > 1, v199 + 1, 1, v442);
        v442 = v205;
      }

      v200 = v437;
      v201 = v196;
      v202 = v441;
      (*(v437 + 8))(v201, v441);
      v203 = v442;
      *(v442 + 16) = v199 + 1;
      (*(v200 + 32))(v203 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v199, v440, v202);
      v188 = v428;
      goto LABEL_71;
    }

LABEL_167:
    __break(1u);
LABEL_168:
    sub_23DE4D598(0, *(v443 + 16) + 1, 1, v443);
    v443 = v378;
    goto LABEL_136;
  }

  v131 = v447;
LABEL_74:

  if ([v396 isTransient])
  {
    v206 = v409;
    (*(v437 + 104))(v409, *MEMORY[0x277D73018], v441);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23DE4D618(0, *(v442 + 16) + 1, 1, v442);
      v442 = v380;
    }

    v208 = *(v442 + 16);
    v207 = *(v442 + 24);
    if (v208 >= v207 >> 1)
    {
      sub_23DE4D618(v207 > 1, v208 + 1, 1, v442);
      v442 = v381;
    }

    v209 = v441;
    v210 = v442;
    *(v442 + 16) = v208 + 1;
    (*(v437 + 32))(v210 + ((*(v437 + 80) + 32) & ~*(v437 + 80)) + *(v437 + 72) * v208, v206, v209);
  }

  v440 = [v396 transferableContentTypes];
  if (v440)
  {
    v450 = v118;
    v211 = [v440 importableTypes];
    v438 = sub_23DE38DA8(0, &qword_280DAE3D8, 0x277D237C8);
    v212 = sub_23E1FDDEC();

    v131 = sub_23DE4D8B0();
    v213 = 0;
    v448 = (v212 & 0xC000000000000001);
    v118 = v212 & 0xFFFFFFFFFFFFFF8;
    v444 = MEMORY[0x277D84F90];
    v441 = (v423 + 32);
    while (v131 != v213)
    {
      if (v448)
      {
        v214 = MEMORY[0x23EF04DD0](v213, v212);
      }

      else
      {
        if (v213 >= *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_164;
        }

        v214 = *(v212 + 8 * v213 + 32);
      }

      v215 = v214;
      if (__OFADD__(v213, 1))
      {
        goto LABEL_163;
      }

      v216 = [v214 contentType];
      sub_23E1FDC1C();

      v217 = v445;
      sub_23E1FCBFC();

      v218 = v217;
      v219 = v217;
      v220 = v449;
      if (__swift_getEnumTagSinglePayload(v219, 1, v449) == 1)
      {
        sub_23DE5CB68(v218, &qword_27E32D8E8, qword_23E22A160);
        ++v213;
      }

      else
      {
        v221 = *v441;
        (*v441)(v413, v218, v220);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23DE4D5D8(0, *(v444 + 16) + 1, 1, v444);
          v444 = v225;
        }

        v223 = *(v444 + 16);
        v222 = *(v444 + 24);
        if (v223 >= v222 >> 1)
        {
          sub_23DE4D5D8(v222 > 1, v223 + 1, 1, v444);
          v444 = v226;
        }

        v224 = v444;
        *(v444 + 16) = v223 + 1;
        v221(v224 + ((*(v423 + 80) + 32) & ~*(v423 + 80)) + *(v423 + 72) * v223, v413, v449);
        ++v213;
      }
    }

    v227 = [v440 exportableTypes];
    v228 = sub_23E1FDDEC();

    v131 = sub_23DE4D8B0();
    v118 = 0;
    v448 = (v228 & 0xC000000000000001);
    v445 = MEMORY[0x277D84F90];
    while (v131 != v118)
    {
      if (v448)
      {
        v229 = MEMORY[0x23EF04DD0](v118, v228);
      }

      else
      {
        if (v118 >= *((v228 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_166;
        }

        v229 = *(v228 + 8 * v118 + 32);
      }

      v230 = v229;
      if (__OFADD__(v118, 1))
      {
        goto LABEL_165;
      }

      v231 = [v229 contentType];
      sub_23E1FDC1C();

      v232 = v443;
      sub_23E1FCBFC();

      v233 = v449;
      if (__swift_getEnumTagSinglePayload(v232, 1, v449) == 1)
      {
        sub_23DE5CB68(v232, &qword_27E32D8E8, qword_23E22A160);
        ++v118;
      }

      else
      {
        v234 = v232;
        v235 = *v441;
        (*v441)(v412, v234, v233);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23DE4D5D8(0, *(v445 + 16) + 1, 1, v445);
          v445 = v239;
        }

        v237 = *(v445 + 16);
        v236 = *(v445 + 24);
        if (v237 >= v236 >> 1)
        {
          sub_23DE4D5D8(v236 > 1, v237 + 1, 1, v445);
          v445 = v240;
        }

        v238 = v445;
        *(v445 + 16) = v237 + 1;
        v235(v238 + ((*(v423 + 80) + 32) & ~*(v423 + 80)) + *(v423 + 72) * v237, v412, v449);
        ++v118;
      }
    }

    v241 = v444;
    v242 = MEMORY[0x277D72CC0];
    v243 = MEMORY[0x277D72E68];
    v244 = MEMORY[0x277D72AB8];
    if (*(v444 + 16))
    {
      v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D910, &qword_23E2298B0);
      v246 = swift_allocBox();
      v248 = v247;
      v249 = *(v245 + 48);
      v250 = sub_23E1FD43C();
      v251 = swift_allocBox();
      (*(*(v250 - 8) + 104))(v252, *v242, v250);
      *v248 = v251;
      (*(v446 + 104))(v248, v394, v401);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v253 = sub_23E1FD6BC();
      v254 = *(v253 - 8);
      v255 = (*(v254 + 80) + 32) & ~*(v254 + 80);
      v256 = swift_allocObject();
      *(v256 + 16) = xmmword_23E222340;
      *(v256 + v255) = v241;
      (*(v254 + 104))(v256 + v255, *v243, v253);
      *(v248 + v249) = v256;
      v244 = MEMORY[0x277D72AB8];
      v257 = v416;
      *v416 = v246;
      (*(v415 + 104))(v257, *v244, v417);
      (*(v419 + 104))(v418, *MEMORY[0x277D72E10], v420);
      v258 = v407;
      sub_23E1FD54C();
      sub_23DE4D598(0, 1, 1, MEMORY[0x277D84F90]);
      v261 = *(v259 + 16);
      v260 = *(v259 + 24);
      v443 = v259;
      if (v261 >= v260 >> 1)
      {
        sub_23DE4D598(v260 > 1, v261 + 1, 1, v443);
        v443 = v382;
      }

      v131 = v447;
      v262 = v445;
      v263 = v443;
      *(v443 + 16) = v261 + 1;
      (*(v421 + 32))(v263 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v261, v258, v422);
    }

    else
    {

      v443 = MEMORY[0x277D84F90];
      v131 = v447;
      v262 = v445;
    }

    if (*(v262 + 16))
    {
      v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D910, &qword_23E2298B0);
      v449 = swift_allocBox();
      v270 = v244;
      v272 = v271;
      v273 = v243;
      v274 = *(v269 + 48);
      v275 = sub_23E1FD43C();
      v276 = swift_allocBox();
      (*(*(v275 - 8) + 104))(v277, *MEMORY[0x277D72CC0], v275);
      *v272 = v276;
      (*(v446 + 104))(v272, v394, v401);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v278 = sub_23E1FD6BC();
      v279 = *(v278 - 8);
      v280 = (*(v279 + 80) + 32) & ~*(v279 + 80);
      v281 = swift_allocObject();
      *(v281 + 16) = xmmword_23E222340;
      *(v281 + v280) = v262;
      (*(v279 + 104))(v281 + v280, *v273, v278);
      *(v272 + v274) = v281;
      v282 = v416;
      *v416 = v449;
      (*(v415 + 104))(v282, *v270, v417);
      (*(v419 + 104))(v418, *MEMORY[0x277D72E08], v420);
      v283 = v408;
      sub_23E1FD54C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23DE4D598(0, *(v443 + 16) + 1, 1, v443);
        v443 = v383;
      }

      v285 = *(v443 + 16);
      v284 = *(v443 + 24);
      v118 = v450;
      v131 = v447;
      v286 = v430;
      v287 = v422;
      v288 = v421;
      if (v285 >= v284 >> 1)
      {
        sub_23DE4D598(v284 > 1, v285 + 1, 1, v443);
        v443 = v384;
      }

      v289 = v443;
      *(v443 + 16) = v285 + 1;
      (*(v288 + 32))(v289 + ((*(v288 + 80) + 32) & ~*(v288 + 80)) + *(v288 + 72) * v285, v283, v287);
      goto LABEL_125;
    }

    v118 = v450;
  }

  else
  {
    v443 = MEMORY[0x277D84F90];
  }

  v286 = v430;
LABEL_125:
  v290 = [v396 systemProtocolMetadata];
  v291 = sub_23E1FDAAC();

  v292 = sub_23DE4693C(*MEMORY[0x277D236F8], v291);

  v293 = MEMORY[0x277D72AD0];
  if (v292)
  {
    objc_opt_self();
    v294 = swift_dynamicCastObjCClass();
    if (v294 && ([v294 structuredDataRepresentations] & 0x200) != 0)
    {
      v295 = v401;
      v296 = swift_allocBox();
      v298 = v297;
      v299 = sub_23E1FD43C();
      v300 = swift_allocBox();
      (*(*(v299 - 8) + 104))(v301, *MEMORY[0x277D72CD8], v299);
      *v298 = v300;
      (*(v446 + 104))(v298, v394, v295);
      v302 = v416;
      *v416 = v296;
      (*(v415 + 104))(v302, *v293, v417);
      (*(v419 + 104))(v418, *MEMORY[0x277D72E08], v420);
      v303 = v404;
      sub_23E1FD54C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23DE4D598(0, *(v443 + 16) + 1, 1, v443);
        v443 = v385;
      }

      v305 = *(v443 + 16);
      v304 = *(v443 + 24);
      v131 = v447;
      v286 = v430;
      if (v305 >= v304 >> 1)
      {
        sub_23DE4D598(v304 > 1, v305 + 1, 1, v443);
        v443 = v386;
      }

      swift_unknownObjectRelease();
      v306 = v443;
      *(v443 + 16) = v305 + 1;
      (*(v421 + 32))(v306 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v305, v303, v422);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v307 = [v396 systemProtocolMetadata];
  v308 = sub_23E1FDAAC();

  v309 = sub_23DE4693C(*MEMORY[0x277D23700], v308);

  if (!v309)
  {
    v321 = v435;
    v320 = v436;
    goto LABEL_140;
  }

  swift_unknownObjectRelease();
  v310 = v401;
  v311 = swift_allocBox();
  v313 = v312;
  v314 = sub_23E1FD43C();
  v315 = swift_allocBox();
  (*(*(v314 - 8) + 104))(v316, *MEMORY[0x277D72CA8], v314);
  *v313 = v315;
  (*(v446 + 104))(v313, v394, v310);
  v317 = v416;
  *v416 = v311;
  (*(v415 + 104))(v317, *v293, v417);
  (*(v419 + 104))(v418, *MEMORY[0x277D72E08], v420);
  sub_23E1FD54C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_168;
  }

LABEL_136:
  v319 = *(v443 + 16);
  v318 = *(v443 + 24);
  v321 = v435;
  v320 = v436;
  v286 = v430;
  if (v319 >= v318 >> 1)
  {
    sub_23DE4D598(v318 > 1, v319 + 1, 1, v443);
    v443 = v379;
  }

  v322 = v443;
  *(v443 + 16) = v319 + 1;
  (*(v421 + 32))(v322 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v319, v414, v422);
LABEL_140:
  sub_23DF172A4([v387[0] entityMetadata]);
  v323 = sub_23E1FD9CC();
  v324 = v118;
  if (v118)
  {
    v450 = v118;

    (*(v320 + 8))(v286, v321);
    (v398)(v399, v401);
  }

  else
  {
    v325 = v323;

    v326 = *(v325 + 16);
    if (v326)
    {
      v450 = 0;
      v451 = MEMORY[0x277D84F90];
      sub_23DE640D4(0, v326, 0);
      v327 = v451;
      v449 = sub_23E1FD9DC();
      v328 = *(v449 - 1);
      v329 = *(v328 + 16);
      v447 = v328 + 16;
      v448 = v329;
      v330 = *(v328 + 80);
      v441 = v325;
      v331 = v325 + ((v330 + 32) & ~v330);
      v446 = *(v328 + 72);
      LODWORD(v445) = *MEMORY[0x277D72FE0];
      v332 = (v431 + 104);
      v444 = v431 + 32;
      v333 = v401;
      v334 = v405;
      do
      {
        (v448)(v334, v331, v449);
        (*v332)(v334, v445, v131);
        v451 = v327;
        v335 = v131;
        v337 = *(v327 + 16);
        v336 = *(v327 + 24);
        if (v337 >= v336 >> 1)
        {
          sub_23DE640D4(v336 > 1, v337 + 1, 1);
          v333 = v401;
          v327 = v451;
        }

        *(v327 + 16) = v337 + 1;
        (*(v431 + 32))(v327 + ((*(v431 + 80) + 32) & ~*(v431 + 80)) + *(v431 + 72) * v337, v334, v335);
        v331 += v446;
        --v326;
        v131 = v335;
      }

      while (v326);

      v324 = v450;
    }

    else
    {

      v333 = v401;
    }

    v347 = v397;
    v348 = v399;
    v391(v397, v399, v333);
    v349 = sub_23E1FE0BC();
    v350 = sub_23DF11F4C(v349);
    if (v324)
    {
      v450 = v324;

      v351 = v401;
      v352 = v398;
      (v398)(v347, v401);
      (*(v436 + 8))(v430, v435);
      return v352(v348, v351);
    }

    else
    {
      v450 = v350;

      v353 = sub_23E1FE0BC();
      static WFContentItem.toolkitTypeDisplayRepresentation(localizationContext:)(v353);

      v355 = v435;
      v354 = v436;
      v356 = v430;
      (*(v436 + 16))(v429, v430, v435);
      sub_23E1FD50C();

      (*(v354 + 8))(v356, v355);
      (v398)(v348, v401);
      v357 = *MEMORY[0x277D72B68];
      v358 = sub_23E1FD41C();
      return (*(*(v358 - 8) + 104))(v439, v357, v358);
    }
  }
}

BOOL static WFContentItem.isEffectiveBundleId(in:)(uint64_t a1)
{
  sub_23DE38DA8(0, &qword_280DAE2F0, 0x277D7C5C8);
  if (swift_dynamicCastMetatype())
  {
    v2 = [swift_getObjCClassFromMetadata() enumMetadata];
    v3 = [v2 effectiveBundleIdentifiers];

    v4 = [v3 firstObject];
    if (v4)
    {
      sub_23E1FE49C();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v19 = v17;
    v20 = v18;
    if (*(&v18 + 1))
    {
      v8 = sub_23DE38DA8(0, &unk_27E32D880, 0x277D237E0);
      if (OUTLINED_FUNCTION_6_11(v8))
      {
        goto LABEL_14;
      }

      return 0;
    }

    goto LABEL_15;
  }

  sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
  if (!swift_dynamicCastMetatype())
  {
    return 0;
  }

  v5 = [swift_getObjCClassFromMetadata() entityMetadata];
  v6 = [v5 effectiveBundleIdentifiers];

  v7 = [v6 firstObject];
  if (v7)
  {
    sub_23E1FE49C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
LABEL_15:
    sub_23DE5CB68(&v19, &qword_27E32C320, &unk_23E224B40);
    return 0;
  }

  v9 = sub_23DE38DA8(0, &unk_27E32D880, 0x277D237E0);
  if ((OUTLINED_FUNCTION_6_11(v9) & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v10 = [v16 bundleIdentifier];
  v11 = sub_23E1FDC1C();
  v13 = v12;

  v14 = sub_23DF114B4(v11, v13, a1);

  return v14;
}

void sub_23DF15C60(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D660, &qword_23E224C60);
  MEMORY[0x28223BE20](v4 - 8);
  v101 = &v75 - v5;
  v6 = sub_23E1FD6FC();
  MEMORY[0x28223BE20](v6 - 8);
  v100 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_23E1FD71C();
  v103 = *(v118 - 8);
  v8 = MEMORY[0x28223BE20](v118);
  v116 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v115 = &v75 - v10;
  v114 = sub_23E1FD8FC();
  v11 = *(v114 - 8);
  v12 = MEMORY[0x28223BE20](v114);
  v99 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v113 = &v75 - v14;
  v82 = sub_23E1FD99C();
  v15 = *(v82 - 8);
  v16 = MEMORY[0x28223BE20](v82);
  v98 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v75 - v18;
  v107 = sub_23E1FD3DC();
  v19 = *(v107 - 8);
  v20 = MEMORY[0x28223BE20](v107);
  v97 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v108 = &v75 - v22;
  v102 = sub_23E1FC0EC();
  v76 = *(v102 - 8);
  v23 = MEMORY[0x28223BE20](v102);
  v96 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v104 = &v75 - v25;
  sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
  v26 = swift_dynamicCastMetatype();
  v106 = v2;
  v88 = v3;
  v111 = v15;
  v112 = v11;
  v110 = v19;
  if (v26)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = [ObjCClassFromMetadata queryMetadata];
    v29 = [ObjCClassFromMetadata propertyBuildersForFilteringUsingQuery_];
    v30 = MEMORY[0x277D84F90];
    if (v29)
    {
      v31 = v29;
      sub_23DE38DA8(0, &unk_280DAE690, 0x277CFC338);
      v32 = sub_23E1FDDEC();
    }

    else
    {
      v32 = MEMORY[0x277D84F90];
    }

    v35 = sub_23DE4D8B0();
    if (v35)
    {
      v36 = v35;
      v117[0] = v30;
      sub_23E1FE63C();
      if (v36 < 0)
      {
LABEL_52:
        __break(1u);
        return;
      }

      v37 = 0;
      do
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x23EF04DD0](v37, v32);
        }

        else
        {
          v38 = *(v32 + 8 * v37 + 32);
        }

        v39 = v38;
        ++v37;
        v40 = [v38 build];

        sub_23E1FE61C();
        sub_23E1FE64C();
        sub_23E1FE65C();
        sub_23E1FE62C();
      }

      while (v36 != v37);

      v34 = v117[0];
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v33 = [swift_getObjCClassFromMetadata() properties];
    sub_23DE38DA8(0, &qword_280DAE730, 0x277CFC330);
    v34 = sub_23E1FDDEC();
  }

  v41 = MEMORY[0x277D84F90];
  sub_23E1FC0DC();
  v117[0] = v41;
  v42 = sub_23DE4D8B0();
  for (i = 0; v42 != i; ++i)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x23EF04DD0](i, v34);
    }

    else
    {
      if (i >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v44 = *(v34 + 8 * i + 32);
    }

    v45 = v44;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if ([v44 isFilterable])
    {
      sub_23E1FE61C();
      sub_23E1FE64C();
      sub_23E1FE65C();
      sub_23E1FE62C();
    }

    else
    {
    }
  }

  v46 = v117[0];
  v84 = sub_23DE4D8B0();
  v47 = 0;
  v81 = v46 & 0xC000000000000001;
  v85 = v46;
  v79 = v46 + 32;
  v80 = (v111 + 8);
  v95 = (v110 + 16);
  v94 = (v112 + 16);
  v93 = (v76 + 16);
  v92 = (v103 + 16);
  v91 = v103 + 8;
  v90 = (v112 + 8);
  v89 = v103 + 32;
  v78 = (v110 + 8);
  v48 = MEMORY[0x277D84F90];
  v49 = &selRef_kilocalorieUnit;
  v50 = v88;
  v51 = v77;
  v52 = v113;
  while (1)
  {
    if (v47 == v84)
    {
      (*(v76 + 8))(v104, v102);

      return;
    }

    if (v81)
    {
      v53 = MEMORY[0x23EF04DD0](v47, v85);
    }

    else
    {
      if (v47 >= *(v85 + 16))
      {
        goto LABEL_51;
      }

      v53 = *(v79 + 8 * v47);
    }

    v54 = v53;
    if (__OFADD__(v47++, 1))
    {
      goto LABEL_50;
    }

    sub_23E1FE13C();
    sub_23E1FE27C();
    sub_23E1FE26C();
    if (v50)
    {
      break;
    }

    (*v80)(v51, v82);
    v56 = sub_23E1FC8CC();
    v57 = *(v56 + 16);
    if (v57)
    {
      v87 = v47;
      v88 = 0;
      v86 = v56;
      v58 = v56 + 32;
      v105 = v54;
      do
      {
        v110 = v58;
        v111 = v57;
        sub_23DE5DA0C(v58, v117);
        v59 = [v54 v49[295]];
        sub_23E1FDC1C();
        v109 = v60;

        sub_23DE5C91C(v54, &selRef_displayName);
        v112 = v48;
        if (!v61)
        {
          v62 = [v54 v49[295]];
          sub_23E1FDC1C();
        }

        v63 = *v95;
        v64 = v107;
        v65 = v108;
        (*v95)(v97, v108, v107);
        sub_23E1FD8EC();
        sub_23E1FE13C();
        (*v94)(v99, v52, v114);
        __swift_project_boxed_opaque_existential_0(v117, v117[3]);
        v66 = sub_23E1FC89C();
        v67 = v101;
        v63(v101, v65, v64);
        __swift_storeEnumTagSinglePayload(v67, 0, 1, v64);
        sub_23DE83F48(v67, v66, v100);
        sub_23DE5CB68(v67, &qword_27E32D660, &qword_23E224C60);
        (*v93)(v96, v104, v102);
        v68 = v115;
        sub_23E1FD70C();
        (*v92)(v116, v68, v118);
        v48 = v112;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23DE4D38C(0, *(v48 + 16) + 1, 1, v48);
          v48 = v73;
        }

        v70 = *(v48 + 16);
        v69 = *(v48 + 24);
        v49 = &selRef_kilocalorieUnit;
        v54 = v105;
        if (v70 >= v69 >> 1)
        {
          sub_23DE4D38C(v69 > 1, v70 + 1, 1, v48);
          v48 = v74;
        }

        v71 = v103;
        v72 = v118;
        (*(v103 + 8))(v115, v118);
        (*v90)(v113, v114);
        *(v48 + 16) = v70 + 1;
        (*(v71 + 32))(v48 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v70, v116, v72);
        __swift_destroy_boxed_opaque_existential_0(v117);
        v58 = v110 + 40;
        v57 = v111 - 1;
      }

      while (v111 != 1);

      v50 = v88;
      v51 = v77;
      v47 = v87;
    }

    else
    {
    }

    (*v78)(v108, v107);
  }

  (*v80)(v51, v82);
  (*(v76 + 8))(v104, v102);
}

uint64_t sub_23DF16900(uint64_t a1, uint64_t a2)
{
  static WFContentItem.toolkitTypeDefinition(context:)(a2, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t WFShazamMediaContentItem.resolveContentItem(with:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C020, &unk_23E229720);
  OUTLINED_FUNCTION_25(v3);
  v2[6] = OUTLINED_FUNCTION_42();
  v4 = sub_23E1FD46C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = OUTLINED_FUNCTION_42();
  v5 = sub_23E1FDA1C();
  OUTLINED_FUNCTION_25(v5);
  v2[10] = OUTLINED_FUNCTION_42();
  v6 = sub_23E1FD82C();
  v2[11] = v6;
  v2[12] = *(v6 - 8);
  v2[13] = OUTLINED_FUNCTION_42();

  return MEMORY[0x2822009F8](sub_23DF16AFC, 0, 0);
}

uint64_t sub_23DF16AFC(uint64_t a1)
{
  v2 = v1[4];
  sub_23E1FD9FC();
  sub_23E1FD79C();
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v8 = swift_task_alloc();
  v1[14] = v8;
  *v8 = v1;
  v8[1] = sub_23DF16BCC;
  v9 = v1[13];
  v10 = v1[10];
  v11 = v1[4];
  v12.n128_u64[0] = v4;
  v13.n128_u64[0] = v6;

  return MEMORY[0x2821E47F0](v9, v11, v10, v12, v13);
}

uint64_t sub_23DF16BCC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_23DF16F60;
  }

  else
  {
    v2 = sub_23DF16CE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23DF16CE0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_allocObject();
  v6[2] = sub_23E1FDC1C();
  v6[3] = v7;
  *(v0 + 16) = v4;
  swift_getMetatypeMetadata();
  v6[4] = sub_23E1FDC7C();
  v6[5] = v8;
  *v1 = v6;
  (*(v2 + 104))(v1, *MEMORY[0x277D72D28], v3);
  sub_23DF17370([v5 media]);
  if (!v9)
  {
    v10 = [*(v0 + 32) name];
    sub_23E1FDC1C();
  }

  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v13 = *(v0 + 88);
  v14 = *(v0 + 48);
  v19 = *(v0 + 24);
  sub_23E1FD31C();
  v18 = swift_allocBox();
  v15 = sub_23E1FD3AC();
  sub_23E1FDABC();
  (*(v11 + 16))(v14, v12, v13);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v13);
  sub_23E1FD30C();
  (*(v11 + 8))(v12, v13);
  *v19 = v18;
  (*(*(v15 - 8) + 104))();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_23DF16F60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23DF16FEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE662F0;

  return WFShazamMediaContentItem.resolveContentItem(with:)(a1);
}

id sub_23DF17088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_23E1FDBDC();

  if (a4)
  {
    v10 = sub_23E1FDBDC();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_23E1FBFBC();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(a5, 1, v11) != 1)
  {
    v12 = sub_23E1FBF6C();
    (*(*(v11 - 8) + 8))(a5, v11);
  }

  v13 = [v6 initWithKey:v9 table:v10 bundleURL:v12];

  return v13;
}

id sub_23DF1718C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    sub_23DE38DA8(0, &unk_27E32D8D8, 0x277D23910);
    v7 = sub_23E1FDDCC();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithName:a1 numericFormat:a2 synonyms:v7];

  return v8;
}

uint64_t sub_23DF17234(void *a1)
{
  v1 = [a1 assistantDefinedSchemas];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_23DE38DA8(0, &unk_280DAE298, 0x277D23768);
  v3 = sub_23E1FDDEC();

  return v3;
}

uint64_t sub_23DF172A4(void *a1)
{
  v2 = [a1 availabilityAnnotations];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for LNPlatformName(0);
  sub_23DE38DA8(0, &unk_280DAE338, 0x277D23790);
  sub_23DF17560(qword_280DAE3A0, type metadata accessor for LNPlatformName, &unk_23E223350);
  v3 = sub_23E1FDAAC();

  return v3;
}

uint64_t sub_23DF17370(void *a1)
{
  v2 = [a1 shazamID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23E1FDC1C();

  return v3;
}

void sub_23DF1742C(uint64_t a1)
{
  sub_23E1FD46C();
  if (v1 <= 0x3F)
  {
    sub_23DF174B0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23DF174B0(uint64_t a1)
{
  if (!qword_27E32D8A0)
  {
    sub_23DE38DA8(255, &unk_27E32D8A8, 0x277D7A048);
    v1 = sub_23E1FE42C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E32D8A0);
    }
  }
}

uint64_t sub_23DF17560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23DF175A8()
{
  result = qword_280DAE420;
  if (!qword_280DAE420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32D6E0, &qword_23E223788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE420);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_11(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

id sub_23DF17658(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for SleepDeviceAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_23DF177D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepDeviceAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DF1782C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepDeviceAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23DF17888(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for DisplaySleepAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_23DF17A00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplaySleepAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DF17A5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplaySleepAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WFAskLLMAction.populateSuccessfulRunEventProperties(_:)(void *a1)
{
  v103 = a1;
  v100 = sub_23E1FBBDC();
  OUTLINED_FUNCTION_6_0();
  v99 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v98 = v5 - v4;
  v6 = sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  v106 = v7;
  v9 = MEMORY[0x28223BE20](v8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v93 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v93[0] = v93 - v14;
  MEMORY[0x28223BE20](v13);
  v95 = v93 - v15;
  v104 = sub_23E1FBC1C();
  OUTLINED_FUNCTION_6_0();
  v97 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v102 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v93 - v20;
  v22 = sub_23E1FCA9C();
  OUTLINED_FUNCTION_6_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15();
  v28 = v27 - v26;
  v29 = sub_23E1FBA7C();
  OUTLINED_FUNCTION_6_0();
  v101 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_15();
  v34 = v33 - v32;
  sub_23DE9E2E4();
  if (v110)
  {
    v93[1] = v29;
    v94 = v1;
    v96 = v6;
    sub_23DE36C8C(&v109, &v111);
    v105 = v34;
    sub_23E1FBA8C();
    __swift_project_boxed_opaque_existential_0(&v111, v112);
    sub_23E1FBA0C();
    v39 = sub_23E1FCA8C();
    v41 = v40;
    (*(v24 + 8))(v28, v22);
    v42 = v103;
    sub_23DF189D8(v39, v41, v103, &selRef_setBaseModel_);
    v43 = v96;
    v44 = sub_23E1FBA6C();
    __swift_project_boxed_opaque_existential_0(&v111, v112);
    sub_23E1FBA4C();
    v45 = sub_23DE4698C(v21, v44);
    v47 = v46;

    v48 = *(v97 + 8);
    v49 = v104;
    v48(v21, v104);
    if (v47)
    {
      sub_23DF189D8(v45, v47, v42, &selRef_setAdapterModel_);
    }

    else
    {
      v50 = v95;
      sub_23E1FCB9C();
      sub_23DE5DA0C(&v111, &v109);
      v51 = sub_23E1FD02C();
      v52 = sub_23E1FE1BC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v107 = v54;
        *v53 = 136315138;
        __swift_project_boxed_opaque_existential_0(&v109, v110);
        v55 = v102;
        sub_23E1FBA4C();
        v56 = sub_23E1FBC0C();
        v58 = v57;
        v48(v55, v104);
        __swift_destroy_boxed_opaque_existential_0(&v109);
        v59 = sub_23DE56B40(v56, v58, &v107);
        v42 = v103;
        v43 = v96;

        *(v53 + 4) = v59;
        _os_log_impl(&dword_23DE30000, v51, v52, "Failed to populate adapterVersion, as no version is set for model %s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        v49 = v104;
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_56();

        OUTLINED_FUNCTION_1_20();
        v60(v95, v43);
      }

      else
      {

        OUTLINED_FUNCTION_1_20();
        v61(v50, v43);
        __swift_destroy_boxed_opaque_existential_0(&v109);
      }
    }

    __swift_project_boxed_opaque_existential_0(&v111, v112);
    v62 = v102;
    OUTLINED_FUNCTION_2_19();
    sub_23E1FBA4C();
    v63 = sub_23E1FBC0C();
    v65 = v64;
    v48(v62, v49);
    sub_23DF189D8(v63, v65, v42, &selRef_setModelDestination_);
    v66 = OBJC_IVAR___WFAskLLMAction_runLatencies;
    v67 = v94;
    swift_beginAccess();
    v68 = *(v67 + v66);
    v69 = *(v68 + 16);
    if (v69)
    {
      v70 = 0;
      v71 = v68 + 32;
      v72 = 0.0;
      do
      {
        v73 = *(v71 + 8 * v70++);
        v72 = v72 + v73;
      }

      while (v69 != v70);
      v74 = sub_23E1FDF4C();
    }

    else
    {
      sub_23DEE37DC();
      v74 = sub_23E1FE3AC();
    }

    [v42 setRunLatency_];

    v75 = v98;
    sub_23DE9E5DC();
    v76 = sub_23DF18630();
    (*(v99 + 8))(v75, v100);
    [v42 setResultType_];
    v77 = [objc_opt_self() currentDevice];
    v78 = [v77 isChineseRegionDevice];

    [v42 setRegionEligibility_];
    v79 = OBJC_IVAR___WFAskLLMAction_sessionForMetrics;
    swift_beginAccess();
    sub_23DE7E098(v67 + v79, &v107);
    if (v108)
    {
      sub_23DE36C8C(&v107, &v109);
      if (sub_23DEABCF0())
      {
        __swift_project_boxed_opaque_existential_0(&v109, v110);
        OUTLINED_FUNCTION_2_19();
        v80 = sub_23E1FBD6C();
        sub_23E1FBB1C();

        v81 = sub_23E1FDF7C();
      }

      else
      {
        sub_23DEE37DC();
        v81 = sub_23E1FE3AC();
      }

      v88 = v81;
      [v42 setNumFollowUp_];

      __swift_project_boxed_opaque_existential_0(&v109, v110);
      OUTLINED_FUNCTION_2_19();
      v89 = sub_23E1FBD6C();
      v90 = sub_23DF18828();

      [v42 setRequestType_];
      v91 = OUTLINED_FUNCTION_5_12();
      v92(v91);
      __swift_destroy_boxed_opaque_existential_0(&v109);
    }

    else
    {
      sub_23DE5CB68(&v107, &qword_27E32C730, &qword_23E224A80);
      v82 = v93[0];
      sub_23E1FCB9C();
      v83 = sub_23E1FD02C();
      v84 = sub_23E1FE1BC();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_23DE30000, v83, v84, "Failed to fully populate WFRunActionEvent because the session was nil.", v85, 2u);
        OUTLINED_FUNCTION_56();
      }

      (*(v106 + 8))(v82, v43);
      v86 = OUTLINED_FUNCTION_5_12();
      v87(v86);
    }

    return __swift_destroy_boxed_opaque_existential_0(&v111);
  }

  else
  {
    sub_23DE5CB68(&v109, &unk_27E32CC40, &qword_23E2265E0);
    sub_23E1FCB9C();
    v35 = sub_23E1FD02C();
    v36 = sub_23E1FE1BC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_23DE30000, v35, v36, "Failed to populate WFRunActionEvent because the model was nil.", v37, 2u);
      OUTLINED_FUNCTION_56();
    }

    return (*(v106 + 8))(v12, v6);
  }
}

uint64_t sub_23DF18630()
{
  v1 = v0;
  v2 = sub_23E1FBBDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CFC0D8])
  {
    (*(v3 + 8))(v5, v2);
    return 7;
  }

  if (v6 == *MEMORY[0x277CFC110])
  {
    return 0;
  }

  if (v6 == *MEMORY[0x277CFC0F8])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x277CFC100])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x277CFC108])
  {
    return 4;
  }

  if (v6 == *MEMORY[0x277CFC0F0])
  {
    return 5;
  }

  if (v6 == *MEMORY[0x277CFC0D0])
  {
    return 6;
  }

  if (v6 == *MEMORY[0x277CFC0E0])
  {
    return 7;
  }

  if (v6 == *MEMORY[0x277CFC0E8])
  {
    return 3;
  }

  result = sub_23E1FE74C();
  __break(1u);
  return result;
}

uint64_t sub_23DF18828()
{
  v0 = *(sub_23E1FBB5C() + 16);

  v1 = *(sub_23E1FBB6C() + 16);

  if (v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  if (v0)
  {
    return v2;
  }

  else
  {
    return 2 * (v1 != 0);
  }
}

id WFAskLLMAction.populateFailedRunEventProperties(_:withRunError:)(void *a1, uint64_t a2)
{
  [v2 populateSuccessfulRunEventProperties_];
  v4 = sub_23E1FBEBC();
  v5 = [v4 wf_isUserCancelledError];

  return [a1 setCompleted_];
}

void sub_23DF189D8(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_23E1FDBDC();

  [a3 *a4];
}

id sub_23DF18AAC()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v1 - 8);
  sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  v3 = MEMORY[0x277D7CB18];
  *(inited + 16) = xmmword_23E224700;
  v4 = *v3;
  v5 = MEMORY[0x277D837D0];
  *(inited + 32) = v4;
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E2536A0;
  v6 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = v4;
  v8 = v6;
  v9 = sub_23E1FDCBC("text|spell|spelling|correct|autocorrect", 39);
  v11 = v10;
  sub_23E1FDCBC("text|spell|spelling|correct|autocorrect", 39);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v9, v11);
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CB50];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  *(inited + 144) = v5;
  *(inited + 120) = 1954047316;
  *(inited + 128) = 0xE400000000000000;
  v18 = v17;
  *(inited + 152) = sub_23E1FDBDC();
  v19 = MEMORY[0x277D839B0];
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 160) = 1;
  *(inited + 192) = sub_23E1FDBDC();
  *(inited + 200) = 0xD000000000000055;
  *(inited + 208) = 0x800000023E258710;
  v20 = *MEMORY[0x277D7CDD0];
  *(inited + 224) = v5;
  *(inited + 232) = v20;
  v21 = v20;
  v22 = sub_23E1FDABC();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  v24 = MEMORY[0x277D7CB78];
  *(inited + 240) = v22;
  v25 = *v24;
  *(inited + 264) = v23;
  *(inited + 272) = v25;
  *(inited + 304) = v19;
  *(inited + 280) = 1;
  type metadata accessor for Key(0);
  sub_23DE664D0();
  v26 = v25;
  v27 = sub_23E1FDABC();
  return sub_23DF3BF9C(v27);
}

uint64_t sub_23DF18E8C(uint64_t a1)
{
  v1 = a1;
  sub_23E1FE84C();
  sub_23DF18FC8(v3, v1);
  return sub_23E1FE87C();
}

uint64_t sub_23DF18EE0(uint64_t a1)
{
  sub_23E1FE84C();
  MEMORY[0x23EF05040](a1);
  return sub_23E1FE87C();
}

uint64_t sub_23DF18F28(uint64_t a1, unsigned __int8 a2)
{
  sub_23E1FDCCC();
}

uint64_t sub_23DF18FC8(uint64_t a1, char a2)
{
  sub_23E1FDCCC();
}

uint64_t sub_23DF190D0(uint64_t a1, char a2)
{
  sub_23E1FDCCC();
}

uint64_t sub_23DF19130(uint64_t a1, char a2)
{
  sub_23E1FDCCC();
}

uint64_t sub_23DF191A0(uint64_t a1, char a2)
{
  sub_23E1FDCCC();
}

uint64_t sub_23DF19200(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_43_4(a1, a2);
  if (v2)
  {
    v5 = 1886352499;
  }

  else
  {
    v5 = 0x7472617473;
  }

  OUTLINED_FUNCTION_46_4(v3, v5, v4);

  return sub_23E1FE87C();
}

uint64_t sub_23DF19264(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_43_4(a1, a2);
  if (v2)
  {
    v5 = 0x74726174736552;
  }

  else
  {
    v5 = 0x776F442074756853;
  }

  OUTLINED_FUNCTION_46_4(v3, v5, v4);

  return sub_23E1FE87C();
}

uint64_t sub_23DF192D8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_43_4(a1, a2);
  if (v2)
  {
    v5 = 0x656C67676F74;
  }

  else
  {
    v5 = 1852994932;
  }

  OUTLINED_FUNCTION_46_4(v3, v5, v4);

  return sub_23E1FE87C();
}

uint64_t sub_23DF1933C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_43_4(a1, a2);
  if (v2)
  {
    v5 = 1635017060;
  }

  else
  {
    v5 = 0x6563696F76;
  }

  OUTLINED_FUNCTION_46_4(v3, v5, v4);

  return sub_23E1FE87C();
}

uint64_t sub_23DF193A0(uint64_t a1, unsigned __int8 a2)
{
  sub_23E1FE84C();
  MEMORY[0x23EF05040](a2);
  return sub_23E1FE87C();
}

uint64_t sub_23DF193E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_43_4(a1, a2);
  sub_23DF18FC8(v4, v2);
  return sub_23E1FE87C();
}

uint64_t sub_23DF19420(uint64_t a1, uint64_t a2)
{
  sub_23E1FE84C();
  MEMORY[0x23EF05040](a2);
  return sub_23E1FE87C();
}

uint64_t sub_23DF19464(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_43_4(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 1701079400;
    }

    else
    {
      v5 = 0x656C67676F74;
    }
  }

  else
  {
    v5 = 2003789939;
  }

  OUTLINED_FUNCTION_46_4(v3, v5, v4);

  return sub_23E1FE87C();
}

uint64_t sub_23DF19598@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>, void (*a4)(void)@<X1>)
{
  result = sub_23DF21B74(a1);
  if (v10)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v9)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v11 = 1;
  }

  else
  {
    sub_23DF21BB4(result, v9, a1, a4, a3);
    v11 = 0;
  }

  v12 = a2(0);

  return __swift_storeEnumTagSinglePayload(a3, v11, 1, v12);
}

uint64_t sub_23DF19648@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    OUTLINED_FUNCTION_21();
    (*(v7 + 16))(a3, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v6);
}

uint64_t sub_23DF196F0(uint64_t *a1)
{
  v2 = *(sub_23E1FC08C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23DF218B0();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_23DF1EEAC(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_23DF19798(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23DF21910(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_23DF1EFDC(v6);
  *a1 = v2;
  return result;
}

char *sub_23DF19804(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_23DF1DFE8(*(a1 + 16), 0, &unk_27E32DB60, &qword_23E224230, MEMORY[0x277CFC118]);
  v4 = sub_23E1FBBDC();
  OUTLINED_FUNCTION_25(v4);
  v6 = sub_23DF214E0(&v8, &v3[(*(v5 + 80) + 32) & ~*(v5 + 80)], v2, a1);
  sub_23DF2195C(v8);
  if (v6 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_23DF198EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_23DF1DDA0(*(a1 + 16), 0);
  v4 = sub_23DF21778(&v6, v3 + 4, v2, a1);
  sub_23DF2195C(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

unint64_t sub_23DF199A4(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_23DF199D8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23DF199A4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_23DF19A64()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ActionKit13WFPublicEvent_name);
  sub_23E1FB7BC();
  return v1;
}

id sub_23DF19AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC9ActionKit13WFPublicEvent_name];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC9ActionKit13WFPublicEvent_type] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for WFPublicEvent();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_23DF19BB4()
{
  result = [objc_allocWithZone(type metadata accessor for WFPublicEventsHelper(0)) init];
  qword_27E33E180 = result;
  return result;
}

id sub_23DF19BE8()
{
  if (qword_27E32B980 != -1)
  {
    swift_once();
  }

  v1 = qword_27E33E180;

  return v1;
}

id sub_23DF19C6C()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_rawSqlConnection] = 0;
  v2 = OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_sqlConnectionCreatedAt;
  v3 = sub_23E1FC08C();
  __swift_storeEnumTagSinglePayload(&v1[v2], 1, 1, v3);
  v4 = &v1[OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_viewName];
  strcpy(&v1[OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_viewName], "holidayEvent");
  v4[13] = 0;
  *(v4 + 7) = -5120;
  v5 = OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_useCase;
  *&v1[v5] = sub_23E1FDBDC();
  v6 = OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_viewService;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D1F4B8]) init];
  v7 = OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_dateFormatter;
  v8 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_23DF2147C(0x2D4D4D2D79797979, 0xEA00000000006464, v8);
  *&v1[v7] = v8;
  sub_23E1FCD5C();
  sub_23DF21C74(&qword_27E32DA08, MEMORY[0x277D20478]);
  sub_23E1FCA3C();
  sub_23DF21B00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23E222340;
  v10 = *(v4 + 1);
  *(v9 + 32) = *v4;
  *(v9 + 40) = v10;
  sub_23E1FB7BC();
  *&v1[OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_viewQuery] = sub_23DF19E54(v9, 0);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for WFPublicEventsHelper(0);
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_23DF19E54(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_23E1FDDCC();

  v5 = [v3 initWithNames:v4 includeDependencies:a2 & 1];

  return v5;
}

void sub_23DF19EF4()
{
  OUTLINED_FUNCTION_90();
  v88 = *MEMORY[0x277D85DE8];
  v83 = sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_59();
  v82 = (v4 - v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_94_0();
  v81 = v7;
  OUTLINED_FUNCTION_15_6();
  v8 = sub_23E1FDC6C();
  OUTLINED_FUNCTION_6_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  OUTLINED_FUNCTION_25(v15);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v16);
  v18 = v75 - v17;
  v19 = sub_23E1FC08C();
  OUTLINED_FUNCTION_6_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_59();
  v79 = v23 - v24;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v25);
  v27 = v75 - v26;
  v28 = OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_sqlConnectionCreatedAt;
  swift_beginAccess();
  sub_23DF219F0(v0 + v28, v18);
  OUTLINED_FUNCTION_0_6(v18);
  if (v51)
  {
    sub_23DE58BD0(v18, &qword_27E32C180, &unk_23E224340);
    goto LABEL_36;
  }

  v78 = v2;
  v80 = v21;
  (*(v21 + 32))(v27, v18, v19);
  v29 = *(v0 + OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_viewService);
  v30 = *(v0 + OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_viewQuery);
  *&v86 = 0;
  v31 = [v29 viewValidateWithViewQuery:v30 applyFixes:1 verbose:5 error:&v86];
  v32 = v86;
  if (!v31)
  {
    v53 = v86;
    v54 = sub_23E1FBECC();

    swift_willThrow();
    v42 = v82;
    v35 = v83;
LABEL_27:
    sub_23E1FCB9C();
    v57 = v54;
    v58 = sub_23E1FD02C();
    v59 = sub_23E1FE1BC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = OUTLINED_FUNCTION_38_0();
      v61 = v27;
      v62 = OUTLINED_FUNCTION_48_0();
      *v60 = 138412290;
      v63 = v54;
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 4) = v64;
      *v62 = v64;
      _os_log_impl(&dword_23DE30000, v58, v59, "WFPublicEventsHelper: error reading view state: %@. Will assume connection needs refresh", v60, 0xCu);
      sub_23DE58BD0(v62, &unk_27E32C190, &qword_23E224B70);
      v27 = v61;
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_56();
    }

    (*(v78 + 8))(v42, v35);
    (*(v80 + 8))(v27, v19);
    goto LABEL_36;
  }

  v33 = v31;
  v77 = v27;
  sub_23E1FDC1C();
  v34 = v32;

  sub_23E1FDC5C();
  v35 = v83;
  v36 = sub_23E1FDC2C();
  v38 = v37;

  (*(v10 + 8))(v14, v8);
  if (v38 >> 60 == 15)
  {
    goto LABEL_33;
  }

  v39 = objc_opt_self();
  v40 = sub_23E1FBFCC();
  *&v86 = 0;
  v41 = [v39 JSONObjectWithData:v40 options:0 error:&v86];

  v42 = v82;
  if (!v41)
  {
    v56 = v86;
    v54 = sub_23E1FBECC();

    swift_willThrow();
    sub_23DF21AEC(v36, v38);
    v27 = v77;
    goto LABEL_27;
  }

  v43 = v86;
  sub_23E1FE49C();
  swift_unknownObjectRelease();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  OUTLINED_FUNCTION_36_6();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_23DE4682C(v84, &v86, 0x7377656956, 0xE500000000000000);

  if (!v87)
  {
    v65 = v36;
LABEL_31:
    sub_23DF21AEC(v65, v38);
    sub_23DE58BD0(&v86, &qword_27E32C320, &unk_23E224B40);
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  OUTLINED_FUNCTION_36_6();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v55 = v36;
    goto LABEL_25;
  }

  v75[1] = v44;
  v76 = v36;
  v45 = 0;
  v46 = v84;
  v47 = *(v84 + 16);
  v82 = (v0 + OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_viewName);
  while (1)
  {
    if (v47 == v45)
    {

      sub_23DF21AEC(v76, v38);
      v35 = v83;
      goto LABEL_33;
    }

    if (v45 >= *(v46 + 16))
    {
      __break(1u);
    }

    v48 = *(v46 + 8 * v45 + 32);
    if (*(v48 + 16))
    {
      break;
    }

LABEL_22:
    ++v45;
  }

  sub_23E1FB7BC();
  v49 = sub_23DF1E154(0x656D614E77656976, 0xE800000000000000);
  if ((v50 & 1) == 0 || (sub_23DE48110(*(v48 + 56) + 32 * v49, &v86), OUTLINED_FUNCTION_36_6(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v51 = v84 == *v82 && v85 == v82[1];
  if (!v51)
  {
    v52 = sub_23E1FE75C();

    if (v52)
    {
      goto LABEL_38;
    }

    goto LABEL_21;
  }

LABEL_38:

  sub_23DE4682C(v48, &v86, 0xD000000000000012, 0x800000023E258D70);

  v35 = v83;
  v70 = v76;
  if (!v87)
  {
    v65 = v76;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_36_6();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v55 = v70;
    goto LABEL_25;
  }

  sub_23DE4682C(v84, &v86, 0xD000000000000014, 0x800000023E258D90);

  v71 = v80;
  if (!v87)
  {
    v65 = v76;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_36_6();
  if (swift_dynamicCast())
  {
    v72 = v79;
    sub_23E1FBFFC();
    sub_23E1FC03C();
    sub_23DF21AEC(v76, v38);
    v73 = *(v71 + 8);
    v73(v72, v19);
    v74 = OUTLINED_FUNCTION_6_2();
    (v73)(v74);
    goto LABEL_36;
  }

  v55 = v76;
LABEL_25:
  sub_23DF21AEC(v55, v38);
LABEL_33:
  v66 = v81;
  sub_23E1FCB9C();
  v67 = sub_23E1FD02C();
  v68 = sub_23E1FE1BC();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = OUTLINED_FUNCTION_74_0();
    *v69 = 0;
    _os_log_impl(&dword_23DE30000, v67, v68, "WFPublicEventsHelper: Couldn't read view state. Will assume connection needs refresh", v69, 2u);
    OUTLINED_FUNCTION_56();
  }

  (*(v78 + 8))(v66, v35);
  (*(v80 + 8))(v77, v19);
LABEL_36:
  OUTLINED_FUNCTION_76();
}

void sub_23DF1A7F4()
{
  OUTLINED_FUNCTION_90();
  v1 = v0;
  sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  sub_23DF19EF4();
  if (v7)
  {
    sub_23E1FC07C();
    v8 = sub_23E1FC08C();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
    v9 = OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_sqlConnectionCreatedAt;
    swift_beginAccess();
    sub_23DF21A7C(v6, v1 + v9);
    swift_endAccess();
    sub_23E1FCCDC();
    v10 = *(v1 + OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_useCase);
    *(v1 + OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_rawSqlConnection) = sub_23E1FCCCC();
  }

  sub_23E1FB7CC();
  OUTLINED_FUNCTION_76();
}

void sub_23DF1AA7C()
{
  OUTLINED_FUNCTION_90();
  v0 = sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  v45 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_59();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v42 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - v7;
  sub_23DF1D260();
  v13 = MEMORY[0x277D84F90];
  if (v10)
  {
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v12;
    v44 = v8;
    sub_23DF1A7F4();
    if (v18)
    {
      v43 = v0;
      v48 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9C8, &unk_23E22A340);
      v19 = swift_allocObject();
      OUTLINED_FUNCTION_33_6(v19, xmmword_23E222370);
      v46 = v20;
      v47 = v21;
      MEMORY[0x23EF044F0](v16, v17);

      v22 = v46;
      v23 = v47;
      v24 = MEMORY[0x277D837D0];
      v25 = MEMORY[0x277D21228];
      v19[3].n128_u64[1] = MEMORY[0x277D837D0];
      v19[4].n128_u64[0] = v25;
      v19[2].n128_u64[0] = v22;
      v19[2].n128_u64[1] = v23;
      OUTLINED_FUNCTION_15_13();
      v46 = v26;
      v47 = v27;
      MEMORY[0x23EF044F0](v14, v15);

      v29 = v46;
      v30 = v47;
      v19[6].n128_u64[0] = v24;
      v19[6].n128_u64[1] = v25;
      v19[4].n128_u64[1] = v29;
      v19[5].n128_u64[0] = v30;
      MEMORY[0x28223BE20](v28);
      *(&v42 - 2) = &v48;
      sub_23E1FCCBC();

      v37 = v43;
      v36 = v44;
      if (sub_23DE4D8B0())
      {
      }

      else
      {
        sub_23E1FB7BC();
        sub_23E1FCB9C();
        v38 = sub_23E1FD02C();
        v39 = sub_23E1FE1BC();
        if (OUTLINED_FUNCTION_20_6(v39))
        {
          v40 = OUTLINED_FUNCTION_74_0();
          *v40 = 0;
          _os_log_impl(&dword_23DE30000, v38, v36, "WFPublicEventsHelper: No events found", v40, 2u);
          OUTLINED_FUNCTION_56();
        }

        OUTLINED_FUNCTION_37_4();
        v41(v36, v37);
      }
    }

    else
    {

      sub_23E1FCB9C();
      v31 = sub_23E1FD02C();
      v32 = sub_23E1FE1BC();
      if (OUTLINED_FUNCTION_20_6(v32))
      {
        *OUTLINED_FUNCTION_74_0() = 0;
        OUTLINED_FUNCTION_27_8(&dword_23DE30000, v33, v34, "WFPublicEventsHelper: Error configuring IPSQL");
        OUTLINED_FUNCTION_56();
      }

      OUTLINED_FUNCTION_37_4();
      v35(v6, v0);
    }
  }

  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DF1AF0C(uint64_t a1, void *a2)
{
  v4 = sub_23E1FCCAC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  result = sub_23E1FCCFC();
  if (!v2)
  {
    sub_23E1FCCFC();
    v28 = v5;
    v29 = v4;
    while ((sub_23E1FCCEC() & 1) != 0)
    {
      v12 = sub_23E1FCC9C();
      if (v13)
      {
        v14 = v12;
        v15 = v13;
        v16 = sub_23E1FCC9C();
        if (v17)
        {
          v18 = v16;
          v19 = v17;
          v20 = v16 == 926368339 && v17 == 0xE400000000000000;
          if (v20 || (sub_23E1FE75C() & 1) != 0)
          {

            v21 = 0;
          }

          else if (v18 == 892748371 && v19 == 0xE400000000000000)
          {

            v21 = 1;
          }

          else
          {
            v24 = sub_23E1FE75C();

            if (v24)
            {
              v21 = 1;
            }

            else
            {
              v21 = 2;
            }
          }

          v22 = objc_allocWithZone(type metadata accessor for WFPublicEvent());
          sub_23DF19AD4(v14, v15, v21);
          MEMORY[0x23EF045A0]();
          if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23E1FDE0C();
          }

          sub_23E1FDE3C();
        }

        else
        {
        }
      }
    }

    v25 = *(v28 + 8);
    v26 = v29;
    v25(v8, v29);
    return (v25)(v10, v26);
  }

  return result;
}

void sub_23DF1B254()
{
  OUTLINED_FUNCTION_90();
  v169 = v0;
  v153 = v2;
  v164 = v3;
  v155 = v4;
  v152 = v5;
  v7 = v6;
  v8 = sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_59();
  v160 = (v12 - v13);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_68_0();
  v162 = v15;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v138 - v17;
  v166 = sub_23E1FC21C();
  OUTLINED_FUNCTION_6_0();
  v150 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  v163 = v22 - v21;
  OUTLINED_FUNCTION_15_6();
  v167 = sub_23E1FC23C();
  OUTLINED_FUNCTION_6_0();
  v151 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  v165 = v26 - v25;
  OUTLINED_FUNCTION_15_6();
  v27 = sub_23E1FC08C();
  OUTLINED_FUNCTION_6_0();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_59();
  v144 = v31 - v32;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_68_0();
  v161 = v34;
  OUTLINED_FUNCTION_14_0();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v138 - v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_32_4();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_68_0();
  v147 = v40;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_94_0();
  v168 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  v44 = OUTLINED_FUNCTION_25(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_59();
  v149 = v45 - v46;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_68_0();
  v148 = v48;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_94_0();
  v156 = v50;
  sub_23DF1D260();
  if (v52)
  {
    v55 = v52;
    v56 = v7;
    v57 = v53;
    v58 = v54;
    v145 = v56;
    v159 = v51;
    v146 = v8;
    sub_23DF1A7F4();
    if (v59)
    {
      v162 = v29;
      v141 = v18;
      v143 = v10;
      v172 = MEMORY[0x277D84F90];
      v158 = "tes.name = ?;\n    ";
      v60 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9C8, &unk_23E22A340);
      v61 = swift_allocObject();
      v140 = xmmword_23E222380;
      OUTLINED_FUNCTION_33_6(v61, xmmword_23E222380);
      v170 = v62;
      v171 = v63;
      MEMORY[0x23EF044F0](v57, v58);

      v64 = v170;
      v65 = v171;
      v66 = MEMORY[0x277D837D0];
      v67 = MEMORY[0x277D21228];
      v61[3].n128_u64[1] = MEMORY[0x277D837D0];
      v61[4].n128_u64[0] = v67;
      v61[2].n128_u64[0] = v64;
      v61[2].n128_u64[1] = v65;
      OUTLINED_FUNCTION_15_13();
      v170 = v68;
      v171 = v69;
      MEMORY[0x23EF044F0](v159, v55);

      v70 = v170;
      v71 = v171;
      v61[6].n128_u64[0] = v66;
      v61[6].n128_u64[1] = v67;
      v61[4].n128_u64[1] = v70;
      v61[5].n128_u64[0] = v71;
      v61[8].n128_u64[1] = v66;
      v61[9].n128_u64[0] = v67;
      v72 = v155;
      v61[7].n128_u64[0] = v152;
      v61[7].n128_u64[1] = v72;
      MEMORY[0x28223BE20](v72);
      *(&v138 - 2) = v169;
      *(&v138 - 1) = &v172;
      sub_23E1FB7BC();
      v142 = v60;
      v73 = 0;
      sub_23E1FCCBC();

      v85 = v162;
      v86 = v168;
      v170 = v172;
      sub_23E1FB7BC();
      sub_23DF196F0(&v170);

      v87 = v170;
      __swift_storeEnumTagSinglePayload(v156, 1, 1, v27);
      v168 = (v85 + 16);
      v169 = v87;
      if (v153)
      {
        v88 = 0;
        v89 = *(v87 + 16);
        v162 = v85 + 32;
        v163 = v89;
        v154 = MEMORY[0x277D84F90];
        while (v163 != v88)
        {
          if (v88 >= *(v87 + 16))
          {
            __break(1u);
            goto LABEL_41;
          }

          v90 = (v85[80] + 32) & ~v85[80];
          v73 = *(v85 + 9);
          (*(v85 + 2))(v1, v87 + v90 + v73 * v88, v27);
          sub_23E1FC07C();
          sub_23DF21C74(&qword_27E32D9F8, MEMORY[0x277CC9578]);
          v91 = sub_23E1FDB1C();
          v92 = *(v85 + 1);
          v92(v38, v27);
          if (v91)
          {
            v92(v1, v27);
            ++v88;
            v87 = v169;
          }

          else
          {
            v160 = *v162;
            v160(v161, v1, v27);
            v93 = v154;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v170 = v93;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_42_4();
              v93 = v170;
            }

            v87 = v169;
            v96 = *(v93 + 16);
            v95 = *(v93 + 24);
            v97 = (v96 + 1);
            if (v96 >= v95 >> 1)
            {
              v158 = *(v93 + 16);
              v159 = (v96 + 1);
              sub_23DE640F4(v95 > 1, v96 + 1, 1);
              v96 = v158;
              v97 = v159;
              v93 = v170;
            }

            ++v88;
            *(v93 + 16) = v97;
            v154 = v93;
            v160(v93 + v90 + v96 * v73, v161, v27);
          }
        }
      }

      else
      {
        v98 = 0;
        v161 = *(v87 + 16);
        LODWORD(v160) = *MEMORY[0x277CC9988];
        v158 = (v150 + 8);
        v159 = (v150 + 104);
        v99 = (v151 + 8);
        v157 = (v85 + 8);
        v139 = (v85 + 32);
        v154 = MEMORY[0x277D84F90];
        while (v161 != v98)
        {
          if (v98 >= *(v87 + 16))
          {
LABEL_41:
            __break(1u);

            __break(1u);
            return;
          }

          v73 = (v85[80] + 32) & ~v85[80];
          v100 = v87 + v73;
          v101 = *(v85 + 9);
          (*(v85 + 2))(v86, v100 + v101 * v98, v27);
          v102 = v165;
          sub_23E1FC20C();
          v103 = v163;
          v104 = v166;
          (*v159)(v163, v160, v166);
          v105 = sub_23E1FC22C();
          (*v158)(v103, v104);
          (*v99)(v102, v167);
          if (v105 == v164)
          {
            v106 = *v139;
            (*v139)(v147, v86, v27);
            v107 = v154;
            v108 = swift_isUniquelyReferenced_nonNull_native();
            v170 = v107;
            if ((v108 & 1) == 0)
            {
              OUTLINED_FUNCTION_42_4();
              v107 = v170;
            }

            v85 = v162;
            v110 = *(v107 + 16);
            v109 = *(v107 + 24);
            v111 = v110 + 1;
            if (v110 >= v109 >> 1)
            {
              v154 = v110 + 1;
              sub_23DE640F4(v109 > 1, v110 + 1, 1);
              v111 = v154;
              v107 = v170;
            }

            ++v98;
            *(v107 + 16) = v111;
            v154 = v107;
            v106(v107 + v73 + v110 * v101, v147, v27);
            v87 = v169;
          }

          else
          {
            (*v157)(v86, v27);
            ++v98;
            v85 = v162;
            v87 = v169;
          }
        }
      }

      v112 = v148;
      sub_23DF19648(v154, MEMORY[0x277CC9578], v148);

      v113 = v156;
      sub_23DE58BD0(v156, &qword_27E32C180, &unk_23E224340);
      sub_23DF21980(v112, v113);
      v114 = v149;
      sub_23DF219F0(v113, v149);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v114, 1, v27);
      v116 = v143;
      v117 = v141;
      if (EnumTagSinglePayload == 1)
      {
        sub_23DE58BD0(v114, &qword_27E32C180, &unk_23E224340);
        sub_23E1FCB9C();
        v118 = v155;
        sub_23E1FB7BC();
        v119 = sub_23E1FD02C();
        v120 = sub_23E1FE1BC();

        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v170 = v122;
          *v121 = 136380931;
          *(v121 + 4) = sub_23DE56B40(v152, v118, &v170);
          *(v121 + 12) = 2049;
          v123 = v164;
          if (v153)
          {
            v123 = -1;
          }

          *(v121 + 14) = v123;
          _os_log_impl(&dword_23DE30000, v119, v120, "WFPublicEventsHelper: No date found for event: %{private}s year: %{private}ld", v121, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v122);
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_56();
        }

        (*(v116 + 8))(v117, v146);
        sub_23DE58BD0(v113, &qword_27E32C180, &unk_23E224340);
        v124 = v145;
        v125 = sub_23E1FBE0C();
        v126 = v124;
        v127 = 1;
      }

      else
      {
        v128 = v144;
        (*(v85 + 4))(v144, v114, v27);
        v129 = v165;
        sub_23E1FC20C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9D0, &qword_23E22A350);
        v130 = v150;
        v131 = *(v150 + 72);
        v132 = (*(v150 + 80) + 32) & ~*(v150 + 80);
        v133 = swift_allocObject();
        *(v133 + 16) = v140;
        v134 = v133 + v132;
        v135 = *(v130 + 104);
        v136 = v166;
        v135(v134, *MEMORY[0x277CC9988], v166);
        v135(v134 + v131, *MEMORY[0x277CC9998], v136);
        v135(v134 + 2 * v131, *MEMORY[0x277CC9968], v136);
        sub_23DF21138(v133);
        v137 = v145;
        sub_23E1FC1EC();

        (*(v151 + 8))(v129, v167);
        (*(v85 + 1))(v128, v27);
        sub_23DE58BD0(v156, &qword_27E32C180, &unk_23E224340);
        v125 = sub_23E1FBE0C();
        v126 = v137;
        v127 = 0;
      }

      __swift_storeEnumTagSinglePayload(v126, v127, 1, v125);
    }

    else
    {

      v79 = v162;
      sub_23E1FCB9C();
      v80 = sub_23E1FD02C();
      v81 = sub_23E1FE1BC();
      if (OUTLINED_FUNCTION_20_6(v81))
      {
        *OUTLINED_FUNCTION_74_0() = 0;
        OUTLINED_FUNCTION_27_8(&dword_23DE30000, v82, v83, "WFPublicEventsHelper: Error configuring IPSQL");
        OUTLINED_FUNCTION_56();
      }

      (*(v10 + 8))(v79, v146);
      v84 = sub_23E1FBE0C();
      __swift_storeEnumTagSinglePayload(v145, 1, 1, v84);
    }

    OUTLINED_FUNCTION_76();
  }

  else
  {
    sub_23E1FBE0C();
    OUTLINED_FUNCTION_76();

    __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  }
}

uint64_t sub_23DF1C114(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v46 = a2;
  v6 = sub_23E1FC08C();
  v44 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v48 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = sub_23E1FCCAC();
  v39 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23E1FCCFC();
  if (!v3)
  {
    v47 = v13;
    v38 = v14;
    v45 = OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_dateFormatter;
    v18 = (v44 + 32);
    v41 = (v44 + 16);
    v42 = v11;
    v40 = v44 + 8;
    v43 = a3;
    while ((sub_23E1FCCEC() & 1) != 0)
    {
      sub_23E1FCC9C();
      if (v19)
      {
        v20 = a1;
        v21 = *(v46 + v45);
        v22 = sub_23E1FDBDC();

        v23 = v21;
        a1 = v20;
        v24 = [v23 dateFromString_];

        if (v24)
        {
          v25 = v42;
          sub_23E1FC05C();

          v26 = *v18;
          v27 = v47;
          (*v18)(v47, v25, v6);
          (*v41)(v48, v27, v6);
          v28 = *a3;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a3 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_23DE4D658(0, *(v28 + 16) + 1, 1, v28);
            v28 = v36;
            *a3 = v36;
          }

          v31 = *(v28 + 16);
          v30 = *(v28 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_23DE4D658(v30 > 1, v31 + 1, 1, v28);
            *v43 = v37;
          }

          v32 = v44;
          (*(v44 + 8))();
          v33 = v43;
          v34 = *v43;
          *(v34 + 16) = v31 + 1;
          v35 = v34 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31;
          a3 = v33;
          v26(v35, v48, v6);
          a1 = v20;
        }
      }
    }

    return (*(v39 + 8))(v16, v38);
  }

  return result;
}

uint64_t sub_23DF1C4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9F0, &unk_23E22A360);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_6_2();
  sub_23DF1B254();
  v8 = sub_23E1FBE0C();
  OUTLINED_FUNCTION_55_4(v8);
  if (!v9)
  {
    v4 = sub_23E1FBDEC();
    OUTLINED_FUNCTION_21();
    (*(v10 + 8))(v3, a3);
  }

  return v4;
}

uint64_t sub_23DF1C5F0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9F0, &unk_23E22A360);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_49_5();
  sub_23DF1B254();
  v7 = sub_23E1FBE0C();
  OUTLINED_FUNCTION_55_4(v7);
  if (!v8)
  {
    v3 = sub_23E1FBDEC();
    OUTLINED_FUNCTION_21();
    (*(v9 + 8))(v2, a2);
  }

  return v3;
}

void sub_23DF1C730()
{
  OUTLINED_FUNCTION_90();
  v1 = v0;
  v3 = v2;
  v50 = v4;
  v5 = sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  v51 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_59();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v46 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  sub_23DF1D260();
  if (v15)
  {
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = v17;
    v47 = v13;
    v49 = v5;
    sub_23DF1A7F4();
    if (v22)
    {
      v54 = MEMORY[0x277D84FA0];
      v48 = "ice";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9C8, &unk_23E22A340);
      v23 = swift_allocObject();
      OUTLINED_FUNCTION_33_6(v23, xmmword_23E222380);
      v52 = v24;
      v53 = v25;
      MEMORY[0x23EF044F0](v20, v21);

      v26 = v52;
      v27 = v53;
      v28 = MEMORY[0x277D837D0];
      v29 = MEMORY[0x277D21228];
      v23[3].n128_u64[1] = MEMORY[0x277D837D0];
      v23[4].n128_u64[0] = v29;
      v23[2].n128_u64[0] = v26;
      v23[2].n128_u64[1] = v27;
      OUTLINED_FUNCTION_15_13();
      v52 = v30;
      v53 = v31;
      MEMORY[0x23EF044F0](v18, v19);

      v33 = v52;
      v34 = v53;
      v23[6].n128_u64[0] = v28;
      v23[6].n128_u64[1] = v29;
      v23[4].n128_u64[1] = v33;
      v23[5].n128_u64[0] = v34;
      v23[8].n128_u64[1] = v28;
      v23[9].n128_u64[0] = v29;
      v23[7].n128_u64[0] = v50;
      v23[7].n128_u64[1] = v3;
      MEMORY[0x28223BE20](v32);
      *(&v46 - 2) = v1;
      *(&v46 - 1) = &v54;
      sub_23E1FB7BC();
      sub_23E1FCCBC();

      v40 = v54;
      if (*(v54 + 16))
      {
        sub_23E1FB7BC();
      }

      else
      {
        sub_23E1FB7BC();
        v41 = v47;
        sub_23E1FCB9C();
        v42 = sub_23E1FD02C();
        v43 = sub_23E1FE1BC();
        if (OUTLINED_FUNCTION_20_6(v43))
        {
          v44 = OUTLINED_FUNCTION_74_0();
          *v44 = 0;
          _os_log_impl(&dword_23DE30000, v42, v41, "WFPublicEventsHelper: No years found", v44, 2u);
          OUTLINED_FUNCTION_56();
        }

        OUTLINED_FUNCTION_37_4();
        v45(v41, v49);
      }

      v52 = sub_23DF198EC(v40);
      sub_23E1FB7BC();
      sub_23DF19798(&v52);
    }

    else
    {

      sub_23E1FCB9C();
      v35 = sub_23E1FD02C();
      v36 = sub_23E1FE1BC();
      if (OUTLINED_FUNCTION_20_6(v36))
      {
        *OUTLINED_FUNCTION_74_0() = 0;
        OUTLINED_FUNCTION_27_8(&dword_23DE30000, v37, v38, "WFPublicEventsHelper: Error configuring IPSQL");
        OUTLINED_FUNCTION_56();
      }

      OUTLINED_FUNCTION_37_4();
      v39(v11, v49);
    }
  }

  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DF1CC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v52 = sub_23E1FC23C();
  v44 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_23E1FBE0C();
  v43 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_23E1FC08C();
  v42 = *(v39 - 8);
  v9 = MEMORY[0x28223BE20](v39);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = sub_23E1FCCAC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23E1FCCFC();
  if (!v3)
  {
    v47 = v12;
    v36 = v14;
    v37 = v13;
    v53 = OBJC_IVAR____TtC9ActionKit20WFPublicEventsHelper_dateFormatter;
    v54 = v16;
    v46 = (v42 + 4);
    v45 = *MEMORY[0x277CC9988];
    ++v43;
    ++v44;
    ++v42;
    v41 = xmmword_23E222340;
    v18 = v38;
    v19 = v39;
    v48 = a2;
    v49 = a1;
    while ((sub_23E1FCCEC() & 1) != 0)
    {
      sub_23E1FCC9C();
      if (v20)
      {
        v21 = v7;
        v22 = *(a2 + v53);
        v23 = v18;
        v24 = sub_23E1FDBDC();

        v25 = v22;
        v7 = v21;
        v26 = [v25 dateFromString_];

        v18 = v23;
        if (v26)
        {
          sub_23E1FC05C();

          v27 = v47;
          (*v46)(v47, v23, v19);
          sub_23E1FC20C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9D0, &qword_23E22A350);
          v28 = sub_23E1FC21C();
          v29 = *(v28 - 8);
          v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
          v31 = swift_allocObject();
          *(v31 + 16) = v41;
          (*(v29 + 104))(v31 + v30, v45, v28);
          v7 = v21;
          sub_23DF21138(v31);
          v32 = v50;
          sub_23E1FC1EC();

          (*v44)(v21, v52);
          v33 = sub_23E1FBDFC();
          LOBYTE(v31) = v34;
          (*v43)(v32, v51);
          if ((v31 & 1) == 0)
          {
            sub_23DF03AD4(&v55, v33);
          }

          (*v42)(v27, v19);
          a2 = v48;
          v18 = v23;
        }
      }
    }

    return (*(v36 + 8))(v54, v37);
  }

  return result;
}

BOOL sub_23DF1D1B4()
{
  v3[3] = &type metadata for IntelligencePlatformDataActionsFlags;
  v3[4] = sub_23DF1E0E4();
  v0 = sub_23E1FCA4C();
  __swift_destroy_boxed_opaque_existential_0(v3);
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  sub_23DF1AA7C();
  v1 = sub_23DE4D8B0();

  return v1 != 0;
}

void sub_23DF1D260()
{
  OUTLINED_FUNCTION_90();
  v0 = sub_23E1FC1DC();
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v80 = (v5 - v4);
  OUTLINED_FUNCTION_15_6();
  v6 = sub_23E1FD03C();
  OUTLINED_FUNCTION_6_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_59();
  v82 = (v10 - v11);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_94_0();
  v79 = v13;
  OUTLINED_FUNCTION_15_6();
  sub_23E1FC1BC();
  OUTLINED_FUNCTION_6_0();
  v77 = v15;
  v78 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9A8, &qword_23E22A328);
  OUTLINED_FUNCTION_25(v19);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v20);
  v22 = &v76 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9B0, &qword_23E22A330);
  v24 = OUTLINED_FUNCTION_25(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_59();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v76 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D9B8, &qword_23E22A338);
  OUTLINED_FUNCTION_25(v31);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v32);
  v34 = &v76 - v33;
  sub_23E1FC12C();
  OUTLINED_FUNCTION_12_14();
  sub_23DF19648(v35, v36, v30);

  if (__swift_getEnumTagSinglePayload(v30, 1, v0) == 1)
  {
    v37 = v0;
    sub_23DE58BD0(v30, &qword_27E32D9B0, &qword_23E22A330);
    goto LABEL_6;
  }

  v76 = v8;
  v81 = v6;
  sub_23E1FC18C();
  v38 = *(v2 + 8);
  v38(v30, v0);
  sub_23E1FC17C();
  OUTLINED_FUNCTION_0_6(v34);
  if (v39)
  {
    v37 = v0;
    sub_23DE58BD0(v34, &qword_27E32D9B8, &qword_23E22A338);
    v6 = v81;
    v8 = v76;
LABEL_6:
    v40 = v82;
    sub_23E1FCB9C();
    v41 = sub_23E1FD02C();
    v42 = sub_23E1FE1BC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_38_0();
      v44 = v8;
      v45 = swift_slowAlloc();
      v83 = v45;
      *v43 = 136380675;
      v46 = v80;
      sub_23E1FC19C();
      OUTLINED_FUNCTION_10_10();
      sub_23DF21C74(v47, v48);
      v49 = sub_23E1FE71C();
      v81 = v6;
      v51 = v50;
      (*(v2 + 8))(v46, v37);
      v52 = sub_23DE56B40(v49, v51, &v83);

      *(v43 + 4) = v52;
      _os_log_impl(&dword_23DE30000, v41, v42, "WFPublicEventsHelper: Error getting region: %{private}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_56();

      (*(v44 + 8))(v82, v81);
    }

    else
    {

      (*(v8 + 8))(v40, v6);
    }

    goto LABEL_17;
  }

  v82 = v38;
  sub_23E1FC10C();
  OUTLINED_FUNCTION_21();
  v53 = OUTLINED_FUNCTION_6_2();
  v54(v53);
  sub_23E1FC12C();
  OUTLINED_FUNCTION_12_14();
  sub_23DF19648(v55, v56, v27);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v0);
  if (EnumTagSinglePayload == 1)
  {
    v58 = v0;

    v59 = &qword_27E32D9B0;
    v60 = &qword_23E22A330;
    v61 = v27;
  }

  else
  {
    sub_23E1FC1CC();
    v82(v27, v0);
    sub_23E1FC1AC();
    (*(v77 + 8))(v18, v78);
    sub_23E1FC11C();
    OUTLINED_FUNCTION_0_6(v22);
    if (!v39)
    {
      sub_23E1FC10C();
      OUTLINED_FUNCTION_21();
      v74 = OUTLINED_FUNCTION_6_2();
      v75(v74);
      goto LABEL_17;
    }

    v58 = v0;

    v59 = &qword_27E32D9A8;
    v60 = &qword_23E22A328;
    v61 = v22;
  }

  sub_23DE58BD0(v61, v59, v60);
  v62 = v79;
  sub_23E1FCB9C();
  v63 = sub_23E1FD02C();
  v64 = sub_23E1FE1BC();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = OUTLINED_FUNCTION_38_0();
    v66 = swift_slowAlloc();
    v83 = v66;
    *v65 = 136380675;
    v67 = v80;
    sub_23E1FC19C();
    OUTLINED_FUNCTION_10_10();
    sub_23DF21C74(v68, v69);
    v70 = sub_23E1FE71C();
    v72 = v71;
    v82(v67, v58);
    v73 = sub_23DE56B40(v70, v72, &v83);

    *(v65 + 4) = v73;
    _os_log_impl(&dword_23DE30000, v63, v64, "WFPublicEventsHelper: Error getting language: %{private}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_56();
  }

  (*(v76 + 8))(v62, v81);
LABEL_17:
  OUTLINED_FUNCTION_76();
}

id sub_23DF1D9B4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for WFPublicEventsHelper(uint64_t a1)
{
  result = qword_27E32D988;
  if (!qword_27E32D988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DF1DAF0(uint64_t a1)
{
  sub_23DF1DBB0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23DF1DBB0(uint64_t a1)
{
  if (!qword_27E32D998)
  {
    sub_23E1FC08C();
    v1 = sub_23E1FE42C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E32D998);
    }
  }
}

unint64_t sub_23DF1DC1C()
{
  result = qword_27E32D9A0;
  if (!qword_27E32D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D9A0);
  }

  return result;
}

uint64_t sub_23DF1DC70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C368, &qword_23E224158);
  if (dynamic_cast_existential_0_class_conditional(v0, v0))
  {
    v1 = &unk_27E32D180;
    v2 = &qword_23E223780;
  }

  else
  {
    v1 = &unk_27E32DA18;
    v2 = &unk_23E22A380;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

void *sub_23DF1DDA0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2B8, &qword_23E224040);
  v4 = OUTLINED_FUNCTION_25_0();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_7_0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_23DF1DFE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23DF1E0E4()
{
  result = qword_280DAE438;
  if (!qword_280DAE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE438);
  }

  return result;
}

unint64_t sub_23DF1E154(uint64_t a1, uint64_t a2)
{
  sub_23E1FE84C();
  sub_23E1FDCCC();
  v4 = sub_23E1FE87C();

  return sub_23DF1E330(a1, a2, v4);
}

unint64_t sub_23DF1E1CC()
{
  sub_23E1FE53C();
  v0 = OUTLINED_FUNCTION_20();

  return sub_23DF1E3E4(v0, v1);
}

void sub_23DF1E20C(uint64_t a1)
{
  sub_23E1FDC1C();
  sub_23E1FE84C();
  sub_23E1FDCCC();
  sub_23E1FE87C();

  sub_23DF1E4A8();
}

unint64_t sub_23DF1E29C()
{
  sub_23E1FBC1C();
  sub_23DF21C74(&qword_27E32DA38, MEMORY[0x277CFC148]);
  sub_23E1FDADC();
  v0 = OUTLINED_FUNCTION_20();

  return sub_23DF1E590(v0, v1);
}

unint64_t sub_23DF1E330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_23E1FE75C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_23DF1E3E4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_23DE7E2AC(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x23EF04D30](v8, a1);
    sub_23DE7E308(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

void sub_23DF1E4A8()
{
  OUTLINED_FUNCTION_90();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = sub_23E1FDC1C();
    v6 = v5;
    if (v4 == sub_23E1FDC1C() && v6 == v7)
    {

      break;
    }

    v9 = sub_23E1FE75C();

    if (v9)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_76();
}

unint64_t sub_23DF1E590(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_23E1FBC1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_23DF21C74(&qword_27E32CE08, MEMORY[0x277CFC148]);
    v9 = sub_23E1FDB2C();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

void sub_23DF1E74C()
{
  OUTLINED_FUNCTION_15_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_3_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
      v10 = OUTLINED_FUNCTION_25_0();
      v7 = _swift_stdlib_malloc_size(v10);
      v10[2] = v2;
      v10[3] = 2 * ((v7 - 32) / 16);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_4_1();
        sub_23DF3175C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_13_0(v7, v8, v9, MEMORY[0x277D837D0]);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_23DF1E888()
{
  OUTLINED_FUNCTION_15_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_3_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E8, qword_23E224070);
      v7 = OUTLINED_FUNCTION_25_0();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_7_0();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_4_1();
        sub_23DE36A28(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2F0, &qword_23E22A420);
    OUTLINED_FUNCTION_13_0(v12, v13, v14, v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_23DF1E978()
{
  OUTLINED_FUNCTION_15_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_3_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v3)
    {
      sub_23DF1DC70();
      v7 = swift_allocObject();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_7_0();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_4_1();
        sub_23DF31CF0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v7 + 4, (v0 + 32), 8 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_23DF1EA38()
{
  OUTLINED_FUNCTION_15_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C2D0, &unk_23E22A390);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v6 = OUTLINED_FUNCTION_52_4(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_4_1();
        sub_23DF318CC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_13_0(v6, v7, v8, &unk_285027F08);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_23DF1EB00()
{
  OUTLINED_FUNCTION_15_0();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_3_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_1();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DA50, &qword_23E22A3C0);
      v10 = OUTLINED_FUNCTION_25_0();
      _swift_stdlib_malloc_size(v10);
      OUTLINED_FUNCTION_7_0();
      v10[2] = v2;
      v10[3] = v11;
      if (v1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_4_1();
        sub_23DF31CF0(v12, v13, v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_13_0(v7, v8, v9, &type metadata for AppShortcutEntity);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_23DF1EC30()
{
  OUTLINED_FUNCTION_90();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_3_1();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_8_0();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = *(v6(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(v6(0) - 8);
  if (v10)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v4(v8 + v24, v15, v20 + v24);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_76();
}

void sub_23DF1EDD4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = OUTLINED_FUNCTION_25_0();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_7_0();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v11)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_23DF1EEAC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_23E1FE70C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23E1FC08C();
        v6 = sub_23E1FDE2C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_23E1FC08C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23DF1F3E8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23DF1F0D0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23DF1EFDC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23E1FE70C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_23E1FDE2C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_23DF1FE24(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23DF1F38C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23DF1F0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_23E1FC08C();
  v9 = MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v31 - v12;
  result = MEMORY[0x28223BE20](v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v36 = v19;
      v37 = a3;
      v34 = v21;
      v35 = v20;
      v22 = v19;
      do
      {
        v23 = v44;
        v24 = v42;
        v42(v44, v21, v8);
        v25 = v45;
        v24(v45, v22, v8);
        sub_23DF21C74(&qword_27E32D9F8, MEMORY[0x277CC9578]);
        v26 = sub_23E1FDB1C();
        v27 = *v18;
        (*v18)(v25, v8);
        result = v27(v23, v8);
        if ((v26 & 1) == 0)
        {
          break;
        }

        if (!v40)
        {
          __break(1u);
          return result;
        }

        v28 = *v39;
        v29 = v41;
        (*v39)(v41, v21, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v28)(v22, v29, v8);
        v22 += v38;
        v21 += v38;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v37 + 1;
      v19 = v36 + v32;
      v20 = v35 - 1;
      v21 = v34 + v32;
      if (v37 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_23DF1F38C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23DF1F3E8(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4)
{
  v5 = v4;
  v119 = a1;
  v8 = sub_23E1FC08C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v132 = &v116 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v138 = &v116 - v14;
  MEMORY[0x28223BE20](v13);
  v137 = &v116 - v16;
  v129 = v9;
  v130 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_99:
    v139 = *v119;
    if (!v139)
    {
      goto LABEL_141;
    }

    a4 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v109 = (v19 + 16);
      v110 = *(v19 + 16);
      while (v110 >= 2)
      {
        if (!*v130)
        {
          goto LABEL_138;
        }

        v111 = a4;
        v112 = v19;
        v113 = (v19 + 16 * v110);
        v19 = *v113;
        a4 = &v109[2 * v110];
        v114 = *(a4 + 8);
        sub_23DF203F0(&(*v130)[v9[9] * *v113], &(*v130)[v9[9] * *a4], &(*v130)[v9[9] * v114], v139);
        v9 = v111;
        if (v111)
        {
          break;
        }

        if (v114 < v19)
        {
          goto LABEL_126;
        }

        if (v110 - 2 >= *v109)
        {
          goto LABEL_127;
        }

        *v113 = v19;
        v113[1] = v114;
        v115 = *v109 - v110;
        if (*v109 < v110)
        {
          goto LABEL_128;
        }

        v110 = *v109 - 1;
        memmove(a4, (a4 + 16), 16 * v115);
        *v109 = v110;
        a4 = 0;
        v9 = v129;
        v19 = v112;
      }

LABEL_109:

      return;
    }

LABEL_135:
    v19 = sub_23DF20AE8(v19);
    goto LABEL_101;
  }

  v117 = a4;
  v18 = 0;
  v135 = (v9 + 1);
  v136 = v9 + 2;
  v134 = (v9 + 4);
  v19 = MEMORY[0x277D84F90];
  v122 = v15;
  v139 = v8;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v121 = v18;
    if (v18 + 1 < v17)
    {
      v123 = v5;
      v118 = v19;
      v22 = v18;
      v23 = *v130;
      v24 = v9[9];
      a4 = &(*v130)[v24 * v21];
      v25 = v9[2];
      v128 = v18 + 1;
      v26 = v137;
      v131 = v17;
      v25(v137, a4, v8);
      v27 = &v23[v24 * v22];
      v28 = v8;
      v29 = v138;
      v126 = v25;
      v25(v138, v27, v28);
      v125 = sub_23DF21C74(&qword_27E32D9F8, MEMORY[0x277CC9578]);
      LODWORD(v127) = sub_23E1FDB1C();
      v19 = v9[1];
      (v19)(v29, v28);
      v30 = v26;
      v21 = v128;
      v124 = v19;
      (v19)(v30, v28);
      v31 = v131;
      v32 = (v121 + 2);
      v133 = v24;
      v33 = &v23[v24 * (v121 + 2)];
      while (1)
      {
        v9 = v32;
        v34 = v21 + 1;
        if (v34 >= v31)
        {
          break;
        }

        v35 = v137;
        v36 = v139;
        v37 = v126;
        (v126)(v137, v33, v139);
        v38 = v34;
        v39 = v138;
        v37(v138, a4, v36);
        v40 = sub_23E1FDB1C() & 1;
        v41 = v39;
        v21 = v38;
        v19 = v124;
        v124(v41, v36);
        (v19)(v35, v36);
        v31 = v131;
        v33 += v133;
        a4 += v133;
        v32 = (v9 + 1);
        if ((v127 & 1) != v40)
        {
          goto LABEL_9;
        }
      }

      v21 = v31;
LABEL_9:
      if (v127)
      {
        v20 = v121;
        if (v21 < v121)
        {
          goto LABEL_132;
        }

        if (v121 >= v21)
        {
          v9 = v129;
          v19 = v118;
          v8 = v139;
          v5 = v123;
        }

        else
        {
          if (v31 >= v9)
          {
            v42 = v9;
          }

          else
          {
            v42 = v31;
          }

          v43 = v133 * (v42 - 1);
          v44 = v133 * v42;
          v45 = v121 * v133;
          v46 = v21;
          v47 = v121;
          v5 = v123;
          do
          {
            if (v47 != --v46)
            {
              v123 = v5;
              v48 = *v130;
              if (!*v130)
              {
                goto LABEL_139;
              }

              a4 = &v48[v45];
              v49 = v139;
              v131 = *v134;
              (v131)(v122, &v48[v45], v139);
              v50 = v45 < v43 || a4 >= &v48[v44];
              if (v50)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v131)(&v48[v43], v122, v49);
              v5 = v123;
              v20 = v121;
            }

            ++v47;
            v43 -= v133;
            v44 -= v133;
            v45 += v133;
          }

          while (v47 < v46);
          v9 = v129;
          v19 = v118;
          v8 = v139;
        }
      }

      else
      {
        v9 = v129;
        v19 = v118;
        v8 = v139;
        v5 = v123;
        v20 = v121;
      }
    }

    v51 = v130[1];
    if (v21 < v51)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_131;
      }

      if (v21 - v20 < v117)
      {
        break;
      }
    }

LABEL_47:
    if (v21 < v20)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23DE4CE18(0, *(v19 + 16) + 1, 1, v19);
      v19 = v107;
    }

    v68 = *(v19 + 16);
    v67 = *(v19 + 24);
    a4 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      sub_23DE4CE18(v67 > 1, v68 + 1, 1, v19);
      v19 = v108;
    }

    *(v19 + 16) = a4;
    v69 = v19 + 32;
    v70 = (v19 + 32 + 16 * v68);
    *v70 = v20;
    v70[1] = v21;
    v133 = *v119;
    if (!v133)
    {
      goto LABEL_140;
    }

    v128 = v21;
    if (v68)
    {
      while (1)
      {
        v71 = a4 - 1;
        v72 = (v69 + 16 * (a4 - 1));
        v73 = (v19 + 16 * a4);
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v74 = *(v19 + 32);
          v75 = *(v19 + 40);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_67:
          if (v77)
          {
            goto LABEL_117;
          }

          v89 = *v73;
          v88 = v73[1];
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_120;
          }

          v93 = v72[1];
          v94 = v93 - *v72;
          if (__OFSUB__(v93, *v72))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v91, v94))
          {
            goto LABEL_125;
          }

          if (v91 + v94 >= v76)
          {
            if (v76 < v94)
            {
              v71 = a4 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (a4 < 2)
        {
          goto LABEL_119;
        }

        v96 = *v73;
        v95 = v73[1];
        v84 = __OFSUB__(v95, v96);
        v91 = v95 - v96;
        v92 = v84;
LABEL_82:
        if (v92)
        {
          goto LABEL_122;
        }

        v98 = *v72;
        v97 = v72[1];
        v84 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v84)
        {
          goto LABEL_124;
        }

        if (v99 < v91)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v71 - 1 >= a4)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v130)
        {
          goto LABEL_137;
        }

        v103 = v19;
        v104 = (v69 + 16 * (v71 - 1));
        a4 = *v104;
        v105 = (v69 + 16 * v71);
        v19 = v105[1];
        sub_23DF203F0(&(*v130)[v9[9] * *v104], &(*v130)[v9[9] * *v105], &(*v130)[v9[9] * v19], v133);
        if (v5)
        {
          goto LABEL_109;
        }

        if (v19 < a4)
        {
          goto LABEL_112;
        }

        v9 = *(v103 + 16);
        if (v71 > v9)
        {
          goto LABEL_113;
        }

        *v104 = a4;
        v104[1] = v19;
        if (v71 >= v9)
        {
          goto LABEL_114;
        }

        a4 = v9 - 1;
        memmove((v69 + 16 * v71), v105 + 2, 16 * (v9 - v71 - 1));
        v19 = v103;
        *(v103 + 16) = v9 - 1;
        v106 = v9 > 2;
        v9 = v129;
        if (!v106)
        {
          goto LABEL_96;
        }
      }

      v78 = v69 + 16 * a4;
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_115;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_116;
      }

      v85 = v73[1];
      v86 = v85 - *v73;
      if (__OFSUB__(v85, *v73))
      {
        goto LABEL_118;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_121;
      }

      if (v87 >= v81)
      {
        v101 = *v72;
        v100 = v72[1];
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_129;
        }

        if (v76 < v102)
        {
          v71 = a4 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v17 = v130[1];
    v18 = v128;
    v8 = v139;
    if (v128 >= v17)
    {
      goto LABEL_99;
    }
  }

  v52 = (v20 + v117);
  if (__OFADD__(v20, v117))
  {
    goto LABEL_133;
  }

  if (v52 >= v51)
  {
    v52 = v130[1];
  }

  if (v52 < v20)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v21 == v52)
  {
    goto LABEL_47;
  }

  v118 = v19;
  v123 = v5;
  v124 = v52;
  v53 = *v130;
  v54 = v9[9];
  v133 = v9[2];
  v55 = &v53[v54 * (v21 - 1)];
  v56 = -v54;
  v57 = (v20 - v21);
  v131 = v53;
  v120 = v54;
  a4 = &v53[v21 * v54];
LABEL_40:
  v127 = v55;
  v128 = v21;
  v125 = a4;
  v126 = v57;
  v58 = v55;
  while (1)
  {
    v59 = v137;
    v60 = v133;
    (v133)(v137, a4, v8);
    v61 = v138;
    v60(v138, v58, v139);
    sub_23DF21C74(&qword_27E32D9F8, MEMORY[0x277CC9578]);
    v62 = sub_23E1FDB1C();
    v63 = *v135;
    v64 = v61;
    v8 = v139;
    (*v135)(v64, v139);
    v63(v59, v8);
    if ((v62 & 1) == 0)
    {
LABEL_45:
      v21 = v128 + 1;
      v55 = &v127[v120];
      v57 = v126 - 1;
      a4 = v125 + v120;
      if ((v128 + 1) == v124)
      {
        v21 = v124;
        v5 = v123;
        v9 = v129;
        v19 = v118;
        v20 = v121;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v131)
    {
      break;
    }

    v65 = *v134;
    v66 = v132;
    (*v134)(v132, a4, v8);
    swift_arrayInitWithTakeFrontToBack();
    v65(v58, v66, v8);
    v58 += v56;
    a4 += v56;
    v50 = __CFADD__(v57++, 1);
    if (v50)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}