uint64_t sub_238096CDC@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for NameDropView(0);
  type metadata accessor for NameDropSessionController(0);
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v16[8] = v13;
  v16[9] = v14;
  v17 = v15;
  v16[4] = v9;
  v16[5] = v10;
  v16[6] = v11;
  v16[7] = v12;
  v16[0] = v5;
  v16[1] = v6;
  v16[2] = v7;
  v16[3] = v8;
  v3 = *(&v10 + 1);
  sub_23809B34C(v16);
  if (*(&v10 + 1))
  {
  }

  else
  {
    sub_2381545CC();
    sub_23815462C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB590, &qword_238159CC8);
  sub_2380711D4(&qword_27DEEB598, &qword_27DEEB590, &qword_238159CC8, MEMORY[0x277CDF3A0]);
  result = sub_238153ECC();
  *a2 = v5;
  *(a2 + 8) = WORD4(v5);
  *(a2 + 10) = BYTE10(v5);
  return result;
}

double sub_238096F04(uint64_t a1)
{
  v2 = type metadata accessor for NameDropView(0);
  v28[0] = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v28[1] = v3;
  v29 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = v28 - v5;
  if (qword_27DEEA050 != -1)
  {
    swift_once();
  }

  v6 = sub_23815293C();
  __swift_project_value_buffer(v6, qword_27DEEB128);
  v7 = sub_23815291C();
  v8 = sub_2381550FC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = a1;
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_238060000, v7, v8, "NameDrop view appearing", v10, 2u);
    v11 = v10;
    a1 = v9;
    MEMORY[0x2383EA8A0](v11, -1, -1);
  }

  v12 = *(a1 + *(v2 + 24));
  type metadata accessor for NameDropSessionController(0);
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  v30 = v12;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v50 = v40;
  v51 = v41;
  v52 = v42;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v49 = v39;
  v43[0] = v32;
  v43[1] = v33;
  v44 = v34;
  v45 = v35;
  sub_23809B34C(v43);
  v13 = MEMORY[0x277D85700];
  if (BYTE8(v44) == 1)
  {
    v14 = sub_238154FBC();
    v15 = v31;
    (*(*(v14 - 8) + 56))(v31, 1, 1, v14);
    v16 = a1;
    v17 = v29;
    sub_23809BCF4(v16, v29);
    sub_238154F8C();
    v18 = sub_238154F7C();
    v19 = (*(v28[0] + 80) + 32) & ~*(v28[0] + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = MEMORY[0x277D85700];
    v21 = v20 + v19;
    v13 = MEMORY[0x277D85700];
    sub_23809BD60(v17, v21);
    sub_2381351C8(0, 0, v15, &unk_238159C90, v20);
  }

  v22 = sub_23815381C();
  v23 = sub_238154FBC();
  v24 = v31;
  (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
  sub_238154F8C();

  v25 = sub_238154F7C();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v13;
  v26[4] = v22;
  *(v22 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transferMonitoringTask) = sub_2380D2A4C(0, 0, v24, &unk_238159C80, v26);

  return result;
}

uint64_t sub_2380973C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2381554BC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_238154F8C();
  v4[6] = sub_238154F7C();
  v7 = sub_238154F3C();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_2380974B4, v7, v6);
}

uint64_t sub_2380974B4()
{
  sub_23815562C();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_238097580;

  return sub_23814A898(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_238097580()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_2380978D0;
  }

  else
  {
    v8 = sub_238097718;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_238097718()
{
  type metadata accessor for NameDropView(0);
  type metadata accessor for NameDropSessionController(0);
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  *(v0 + 88) = sub_23815381C();

  return MEMORY[0x2822009F8](sub_2380977F8, 0, 0);
}

uint64_t sub_2380977F8()
{
  sub_238119CDC();

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_238097864, v1, v2);
}

uint64_t sub_238097864()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380978D0()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_23809793C(uint64_t a1)
{
  if (qword_27DEEA050 != -1)
  {
    swift_once();
  }

  v1 = sub_23815293C();
  __swift_project_value_buffer(v1, qword_27DEEB128);
  v2 = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "NameDrop view disappearing", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  type metadata accessor for NameDropView(0);
  type metadata accessor for NameDropSessionController(0);
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  sub_23815381C();
  sub_238111C60();

  return result;
}

uint64_t sub_238097AA4@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v32 = a3;
  v4 = type metadata accessor for NameDropView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB1F8, &qword_2381596A0);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  type metadata accessor for NameDropSessionController(0);
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v15 = v33;
  sub_23809BCF4(a2, v10);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_23809BD60(v10, v17 + v16);
  sub_23809BCF4(a2, v8);
  v18 = swift_allocObject();
  sub_23809BD60(v8, v18 + v16);
  v19 = v29;
  v33 = v29;
  v34 = v15;
  v35 = sub_23809E18C;
  v36 = v17;
  v37 = sub_23809E1A4;
  v38 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB540, &qword_238159C68);
  sub_238153DCC();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_238158810;
  v21 = v19;
  sub_238153DBC();
  sub_238153DAC();
  sub_23809E240(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v22 = sub_23809B768();
  sub_23815449C();

  v33 = &type metadata for FieldPickerView;
  v34 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v32;
  v24 = v30;
  sub_2381544CC();
  (*(v31 + 8))(v14, v24);
  LOBYTE(v24) = sub_23815411C();
  v25 = sub_238153A4C();
  v26 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB1F0, &qword_238159698) + 36);
  *v26 = v25;
  *(v26 + 8) = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB1B0, &qword_238159680);
  v28 = (v23 + *(result + 36));
  *v28 = sub_238098208;
  v28[1] = 0;
  v28[2] = 0;
  v28[3] = 0;
  return result;
}

void sub_238097F50(void *a1, uint64_t a2)
{
  if (qword_27DEEA050 != -1)
  {
    swift_once();
  }

  v3 = sub_23815293C();
  __swift_project_value_buffer(v3, qword_27DEEB128);
  v4 = sub_23815291C();
  v5 = sub_2381550FC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_238060000, v4, v5, "NameDrop field picker saved", v6, 2u);
    MEMORY[0x2383EA8A0](v6, -1, -1);
  }

  type metadata accessor for NameDropView(0);
  type metadata accessor for NameDropSessionController(0);
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  sub_23815381C();
  v7 = a1;
  sub_23811D394(v7);
}

uint64_t sub_2380980DC(uint64_t a1, uint64_t a2)
{
  if (qword_27DEEA050 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEB128);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "NameDrop field picker dismissed", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  type metadata accessor for NameDropView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  return sub_23815471C();
}

uint64_t sub_238098214@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v162 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5A8, &qword_238159CD8);
  MEMORY[0x28223BE20](v3 - 8);
  v146 = &v142 - v4;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5B0, &qword_238159CE0);
  MEMORY[0x28223BE20](v145);
  v148 = &v142 - v5;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5B8, &qword_238159CE8);
  MEMORY[0x28223BE20](v147);
  v151 = &v142 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5C0, &qword_238159CF0);
  v159 = *(v7 - 8);
  v160 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v150 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v149 = &v142 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB750, &qword_238159FB8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v161 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v174 = &v142 - v14;
  v15 = sub_23815468C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for NameDropView(0) + 24);
  v144 = a1;
  v20 = (a1 + v19);
  v21 = *v20;
  v22 = v20[1];
  v23 = *(v20 + 16);
  v24 = type metadata accessor for NameDropSessionController(0);
  v25 = sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  v155 = v22;
  v156 = v21;
  v154 = v23;
  v152 = v25;
  v153 = v24;
  sub_23815381C();
  sub_238111EF4();

  sub_23815466C();
  (*(v16 + 104))(v18, *MEMORY[0x277CE0FE0], v15);
  v173 = sub_2381546CC();

  (*(v16 + 8))(v18, v15);
  sub_2381548DC();
  sub_2381538EC();
  LOBYTE(v211[0]) = 1;
  *(v229 + 6) = *(&v229[3] + 6);
  *(&v229[1] + 6) = *(&v229[4] + 6);
  *(&v229[2] + 6) = *(&v229[5] + 6);
  *&v211[0] = sub_23807CB28(91);
  *(&v211[0] + 1) = v26;
  v166 = sub_2380704A0();
  v27 = sub_23815438C();
  v29 = v28;
  LOBYTE(v23) = v30;
  sub_23815416C();
  sub_2381541DC();
  sub_23815425C();

  v31 = sub_23815435C();
  v33 = v32;
  LOBYTE(v21) = v34;

  sub_238070490(v27, v29, v23 & 1);

  *&v211[0] = sub_2381545DC();
  v35 = sub_23815432C();
  v170 = v36;
  v171 = v35;
  v38 = v37;
  v172 = v39;
  sub_238070490(v31, v33, v21 & 1);

  KeyPath = swift_getKeyPath();
  v169 = sub_2381540FC();
  v167 = v38 & 1;
  LOBYTE(v211[0]) = v38 & 1;
  LOBYTE(v206) = 1;
  *&v211[0] = sub_23807CB28(92);
  *(&v211[0] + 1) = v40;
  v41 = sub_23815438C();
  v43 = v42;
  v45 = v44;
  sub_23815424C();
  v46 = sub_23815435C();
  v48 = v47;
  LOBYTE(v29) = v49;

  sub_238070490(v41, v43, v45 & 1);

  *&v211[0] = sub_2381545DC();
  v165 = sub_23815432C();
  v166 = v50;
  v158 = v51;
  v53 = v52;
  sub_238070490(v46, v48, v29 & 1);

  v164 = swift_getKeyPath();
  LOBYTE(v48) = sub_2381540EC();
  v54 = sub_23815413C();
  sub_23815413C();
  if (sub_23815413C() != v48)
  {
    v54 = sub_23815413C();
  }

  v163 = v54;
  sub_23815377C();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v157 = v53 & 1;
  v225 = v53 & 1;
  v221 = 0;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v218 = v209[5];
  v219 = v209[6];
  v220 = v210;
  v214 = v209[1];
  v215 = v209[2];
  v216 = v209[3];
  v217 = v209[4];
  v211[0] = v206;
  v211[1] = v207;
  v212 = v208;
  v213 = v209[0];
  sub_23809B34C(v211);
  v63 = 1;
  v64 = v160;
  if ((BYTE8(v212) & 1) == 0)
  {
    v65 = v146;
    sub_23808F2F4(v146);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_238158810;
    v67 = sub_23815412C();
    *(v66 + 32) = v67;
    v68 = sub_23815414C();
    *(v66 + 33) = v68;
    v69 = sub_23815413C();
    sub_23815413C();
    if (sub_23815413C() != v67)
    {
      v69 = sub_23815413C();
    }

    sub_23815413C();
    v70 = sub_23815413C();
    v142 = v58;
    v143 = v56;
    if (v70 != v68)
    {
      v69 = sub_23815413C();
    }

    sub_23815377C();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v79 = v148;
    sub_23807121C(v65, v148, &qword_27DEEB5A8, &qword_238159CD8);
    v80 = v79 + *(v145 + 36);
    *v80 = v69;
    *(v80 + 8) = v72;
    *(v80 + 16) = v74;
    *(v80 + 24) = v76;
    *(v80 + 32) = v78;
    *(v80 + 40) = 0;
    v81 = sub_23815411C();
    v82 = objc_opt_self();
    v83 = [v82 mainScreen];
    [v83 bounds];
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;

    v230.origin.x = v85;
    v230.origin.y = v87;
    v230.size.width = v89;
    v230.size.height = v91;
    CGRectGetHeight(v230);
    sub_23815377C();
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v100 = v151;
    sub_23807121C(v79, v151, &qword_27DEEB5B0, &qword_238159CE0);
    v101 = v100 + *(v147 + 36);
    *v101 = v81;
    *(v101 + 8) = v93;
    *(v101 + 16) = v95;
    *(v101 + 24) = v97;
    *(v101 + 32) = v99;
    *(v101 + 40) = 0;
    v102 = sub_23815410C();
    v103 = [v82 mainScreen];
    [v103 bounds];
    v105 = v104;
    v107 = v106;
    v109 = v108;
    v111 = v110;

    v231.origin.x = v105;
    v231.origin.y = v107;
    v231.size.width = v109;
    v231.size.height = v111;
    CGRectGetHeight(v231);
    sub_23815377C();
    v113 = v112;
    v115 = v114;
    v117 = v116;
    v119 = v118;
    v120 = v150;
    sub_23807121C(v100, v150, &qword_27DEEB5B8, &qword_238159CE8);
    v121 = v120 + *(v64 + 36);
    *v121 = v102;
    *(v121 + 8) = v113;
    *(v121 + 16) = v115;
    *(v121 + 24) = v117;
    *(v121 + 32) = v119;
    *(v121 + 40) = 0;
    v122 = v149;
    sub_23807121C(v120, v149, &qword_27DEEB5C0, &qword_238159CF0);
    sub_23807121C(v122, v174, &qword_27DEEB5C0, &qword_238159CF0);
    v63 = 0;
    v58 = v142;
    v56 = v143;
  }

  v123 = v174;
  (*(v159 + 56))(v174, v63, 1, v64);
  v124 = v161;
  sub_2380712E4(v123, v161, &qword_27DEEB750, &qword_238159FB8);
  v125 = v162;
  *v162 = 0;
  *(v125 + 8) = 1;
  v175[0] = v173;
  v175[1] = 0;
  v176[0] = 1;
  v176[1] = 0;
  *&v176[2] = v229[0];
  *&v176[18] = v229[1];
  *&v176[34] = v229[2];
  *&v176[48] = *(&v229[2] + 14);
  v126 = v173;
  v127 = *v176;
  v128 = *&v176[16];
  v129 = *&v176[32];
  v125[10] = *(&v229[2] + 14);
  *(v125 + 3) = v128;
  *(v125 + 4) = v129;
  *(v125 + 1) = v126;
  *(v125 + 2) = v127;
  *&v177 = v171;
  *(&v177 + 1) = v170;
  LOBYTE(v178) = v167;
  DWORD1(v178) = *&v228[3];
  *(&v178 + 1) = *v228;
  *(&v178 + 1) = v172;
  *&v179 = KeyPath;
  BYTE8(v179) = 1;
  HIDWORD(v179) = *&v227[3];
  *(&v179 + 9) = *v227;
  LOBYTE(v180[0]) = v169;
  DWORD1(v180[0]) = *&v226[3];
  *(v180 + 1) = *v226;
  *(&v180[1] + 8) = 0u;
  *(v180 + 8) = 0u;
  BYTE8(v180[2]) = 1;
  v130 = v177;
  *(v125 + 13) = v178;
  *(v125 + 11) = v130;
  v131 = v179;
  v132 = v180[0];
  v133 = v180[1];
  *(v125 + 161) = *(&v180[1] + 9);
  *(v125 + 19) = v133;
  *(v125 + 17) = v132;
  *(v125 + 15) = v131;
  v134 = v158;
  *&v181 = v165;
  *(&v181 + 1) = v158;
  v135 = v157;
  LOBYTE(v182) = v157;
  DWORD1(v182) = *&v224[3];
  *(&v182 + 1) = *v224;
  *(&v182 + 1) = v166;
  *&v183 = v164;
  BYTE8(v183) = 1;
  HIDWORD(v183) = *&v223[3];
  *(&v183 + 9) = *v223;
  LOBYTE(v184) = v163;
  DWORD1(v184) = *&v222[3];
  *(&v184 + 1) = *v222;
  *(&v184 + 1) = v56;
  *&v185[0] = v58;
  *(&v185[0] + 1) = v60;
  *&v185[1] = v62;
  BYTE8(v185[1]) = 0;
  v136 = v181;
  *(v125 + 25) = v182;
  *(v125 + 23) = v136;
  v137 = v183;
  v138 = v184;
  v139 = v185[0];
  *(v125 + 257) = *(v185 + 9);
  *(v125 + 31) = v139;
  *(v125 + 29) = v138;
  *(v125 + 27) = v137;
  v125[35] = 0;
  *(v125 + 288) = 1;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB758, &unk_238159FC0);
  sub_2380712E4(v124, v125 + *(v140 + 112), &qword_27DEEB750, &qword_238159FB8);
  sub_2380712E4(v175, &v206, &qword_27DEEB760, &qword_23815F800);
  sub_2380712E4(&v177, &v206, &qword_27DEEB768, &qword_238159FD0);
  sub_2380712E4(&v181, &v206, &qword_27DEEB768, &qword_238159FD0);
  sub_238071284(v174, &qword_27DEEB750, &qword_238159FB8);
  sub_238071284(v124, &qword_27DEEB750, &qword_238159FB8);
  v186[0] = v165;
  v186[1] = v134;
  v187 = v135;
  *v188 = *v224;
  *&v188[3] = *&v224[3];
  v189 = v166;
  v190 = v164;
  v191 = 1;
  *v192 = *v223;
  *&v192[3] = *&v223[3];
  v193 = v163;
  *&v194[3] = *&v222[3];
  *v194 = *v222;
  v195 = v56;
  v196 = v58;
  v197 = v60;
  v198 = v62;
  v199 = 0;
  sub_238071284(v186, &qword_27DEEB768, &qword_238159FD0);
  *&v206 = v171;
  *(&v206 + 1) = v170;
  LOBYTE(v207) = v167;
  *(&v207 + 1) = *v228;
  DWORD1(v207) = *&v228[3];
  *(&v207 + 1) = v172;
  *&v208 = KeyPath;
  BYTE8(v208) = 1;
  *(&v208 + 9) = *v227;
  HIDWORD(v208) = *&v227[3];
  LOBYTE(v209[0]) = v169;
  *(v209 + 1) = *v226;
  DWORD1(v209[0]) = *&v226[3];
  *(v209 + 8) = 0u;
  *(&v209[1] + 8) = 0u;
  BYTE8(v209[2]) = 1;
  sub_238071284(&v206, &qword_27DEEB768, &qword_238159FD0);
  v200[0] = v173;
  v200[1] = 0;
  v201 = 1;
  v202 = 0;
  v203 = v229[0];
  v204 = v229[1];
  *v205 = v229[2];
  *&v205[14] = *(&v229[2] + 14);
  return sub_238071284(v200, &qword_27DEEB760, &qword_23815F800);
}

double sub_2380990CC(uint64_t a1)
{
  v2 = type metadata accessor for NameDropView(0);
  v28[0] = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v28[1] = v3;
  v29 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = v28 - v5;
  if (qword_27DEEA050 != -1)
  {
    swift_once();
  }

  v6 = sub_23815293C();
  __swift_project_value_buffer(v6, qword_27DEEB128);
  v7 = sub_23815291C();
  v8 = sub_2381550FC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_238060000, v7, v8, "NameDrop view appearing", v9, 2u);
    MEMORY[0x2383EA8A0](v9, -1, -1);
  }

  v10 = sub_23815291C();
  v11 = sub_2381550FC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_238060000, v10, v11, "NameDrop displayed no Me Card View", v12, 2u);
    MEMORY[0x2383EA8A0](v12, -1, -1);
  }

  v13 = *(a1 + *(v2 + 24));
  type metadata accessor for NameDropSessionController(0);
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  v30 = v13;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v50 = v40;
  v51 = v41;
  v52 = v42;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v49 = v39;
  v43[0] = v32;
  v43[1] = v33;
  v44 = v34;
  v45 = v35;
  sub_23809B34C(v43);
  v14 = MEMORY[0x277D85700];
  if (BYTE8(v44) == 1)
  {
    v15 = sub_238154FBC();
    v16 = v31;
    (*(*(v15 - 8) + 56))(v31, 1, 1, v15);
    v17 = v29;
    sub_23809BCF4(a1, v29);
    sub_238154F8C();
    v18 = sub_238154F7C();
    v19 = (*(v28[0] + 80) + 32) & ~*(v28[0] + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = MEMORY[0x277D85700];
    v21 = v20 + v19;
    v14 = MEMORY[0x277D85700];
    sub_23809BD60(v17, v21);
    sub_2381351C8(0, 0, v16, &unk_238159FB0, v20);
  }

  v22 = sub_23815381C();
  v23 = sub_238154FBC();
  v24 = v31;
  (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
  sub_238154F8C();

  v25 = sub_238154F7C();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v14;
  v26[4] = v22;
  *(v22 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transferMonitoringTask) = sub_2380D2A4C(0, 0, v24, &unk_238159FA0, v26);

  return result;
}

uint64_t sub_2380995F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2381554BC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_238154F8C();
  v4[6] = sub_238154F7C();
  v7 = sub_238154F3C();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_2380996E4, v7, v6);
}

uint64_t sub_2380996E4()
{
  sub_23815562C();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_2380997B0;

  return sub_23814A898(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_2380997B0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_23809F41C;
  }

  else
  {
    v8 = sub_238099948;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_238099948()
{
  type metadata accessor for NameDropView(0);
  type metadata accessor for NameDropSessionController(0);
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  *(v0 + 88) = sub_23815381C();

  return MEMORY[0x2822009F8](sub_238099A28, 0, 0);
}

uint64_t sub_238099A28()
{
  sub_238119CDC();

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_23809F418, v1, v2);
}

double sub_238099A94(uint64_t a1)
{
  if (qword_27DEEA050 != -1)
  {
    swift_once();
  }

  v1 = sub_23815293C();
  __swift_project_value_buffer(v1, qword_27DEEB128);
  v2 = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "NameDrop view disappearing", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v5 = sub_23815291C();
  v6 = sub_2381550FC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_238060000, v5, v6, "NameDrop no me card disappearing", v7, 2u);
    MEMORY[0x2383EA8A0](v7, -1, -1);
  }

  type metadata accessor for NameDropView(0);
  type metadata accessor for NameDropSessionController(0);
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
  sub_23815381C();
  sub_238111C60();

  return result;
}

void sub_238099C7C(const char *a1)
{
  if (qword_27DEEA050 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEB128);
  oslog = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, oslog, v3, a1, v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }
}

uint64_t sub_238099D70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v79 = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB398, &qword_2381599F0);
  MEMORY[0x28223BE20](v80);
  v4 = &v73 - v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3A0, &qword_2381599F8);
  MEMORY[0x28223BE20](v75);
  v6 = &v73 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3A8, &qword_238159A00);
  MEMORY[0x28223BE20](v77);
  v78 = &v73 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3B0, &qword_238159A08);
  MEMORY[0x28223BE20](v74);
  v9 = &v73 - v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3B8, &unk_238159A10);
  MEMORY[0x28223BE20](v76);
  v11 = &v73 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF38, &qword_238159008);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v73 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3C0, &qword_238159A20);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v73 - v18;
  v20 = v2[3];
  if (v20 == 2)
  {
    *v6 = sub_238153D1C();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB510, &qword_238159B68);
    sub_23809A754(&v6[*(v41 + 44)]);
    v42 = sub_2381545AC();
    KeyPath = swift_getKeyPath();
    v44 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB4C0, &qword_238159B50) + 36)];
    *v44 = KeyPath;
    v44[1] = v42;
    v45 = v2[7];
    LOBYTE(v42) = sub_2381540FC();
    v46 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB4B0, &qword_238159B48) + 36)];
    *v46 = v42;
    *(v46 + 1) = v45;
    *(v46 + 2) = 0;
    *(v46 + 3) = 0;
    *(v46 + 4) = 0;
    v46[40] = 0;
    v47 = swift_getKeyPath();
    v48 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB4A0, &qword_238159B40) + 36)];
    *v48 = v47;
    *(v48 + 1) = 1;
    v48[16] = 0;
    v49 = swift_getKeyPath();
    v50 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB490, &qword_238159B38) + 36)];
    *v50 = v49;
    v50[8] = 1;
    v51 = swift_getKeyPath();
    v52 = &v6[*(v75 + 36)];
    *v52 = v51;
    v52[1] = 0x3FE0000000000000;
    v53 = &qword_27DEEB3A0;
    v54 = &qword_2381599F8;
    sub_2380712E4(v6, v9, &qword_27DEEB3A0, &qword_2381599F8);
    swift_storeEnumTagMultiPayload();
    sub_23809D3E0();
    sub_23809D804();
    sub_238153ECC();
    sub_2380712E4(v11, v78, &qword_27DEEB3B8, &unk_238159A10);
    swift_storeEnumTagMultiPayload();
    sub_23809D354();
    sub_23809DB9C();
    sub_238153ECC();
    sub_238071284(v11, &qword_27DEEB3B8, &unk_238159A10);
    v55 = v6;
  }

  else
  {
    if (v20 == 1)
    {
      v21 = v17;
      v81 = sub_23807CB28(82);
      v82 = v22;
      sub_2380704A0();
      sub_23815389C();
      sub_2380711D4(&qword_27DEEB008, &qword_27DEEAF38, &qword_238159008, MEMORY[0x277CDD7F8]);
      sub_238088600();
      sub_2381543BC();
      (*(v13 + 8))(v15, v12);
      v23 = v2[5];
      v24 = swift_getKeyPath();
      v25 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB000, &qword_238159078) + 36)];
      *v25 = v24;
      v25[1] = v23;
      v26 = swift_getKeyPath();
      v81 = v23;
      swift_retain_n();
      v27 = sub_2381538FC();
      v28 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB448, &unk_238159B00) + 36)];
      *v28 = v26;
      v28[1] = v27;
      sub_23815423C();
      sub_2381541FC();
      v29 = sub_23815425C();

      v30 = swift_getKeyPath();
      v31 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB438, &qword_238159AF8) + 36)];
      *v31 = v30;
      v31[1] = v29;
      v32 = v2[7];
      LOBYTE(v30) = sub_2381540FC();
      v33 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB428, &qword_238159AF0) + 36)];
      *v33 = v30;
      *(v33 + 1) = v32;
      *(v33 + 2) = 0;
      *(v33 + 3) = 0;
      *(v33 + 4) = 0;
      v33[40] = 0;
      v34 = swift_getKeyPath();
      v35 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB418, &qword_238159AE8) + 36)];
      *v35 = v34;
      *(v35 + 1) = 1;
      v35[16] = 0;
      v36 = swift_getKeyPath();
      v37 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB408, &qword_238159AE0) + 36)];
      *v37 = v36;
      v37[8] = 1;
      v38 = swift_getKeyPath();
      v39 = &v19[*(v21 + 36)];
      *v39 = v38;
      v39[1] = 0x3FE0000000000000;
      sub_2380712E4(v19, v9, &qword_27DEEB3C0, &qword_238159A20);
      swift_storeEnumTagMultiPayload();
      sub_23809D3E0();
      sub_23809D804();
      sub_238153ECC();
      sub_2380712E4(v11, v78, &qword_27DEEB3B8, &unk_238159A10);
      swift_storeEnumTagMultiPayload();
      sub_23809D354();
      sub_23809DB9C();
      sub_238153ECC();
      sub_238071284(v11, &qword_27DEEB3B8, &unk_238159A10);
      return sub_238071284(v19, &qword_27DEEB3C0, &qword_238159A20);
    }

    v56 = v2[4];
    v58 = v2[1];
    v59 = *v2;
    v60 = *v2;
    v75 = v2[2];
    v57 = v75;
    sub_23807BD3C(v60, v58, v75, v20);

    *v4 = sub_238153D1C();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3C8, &qword_238159A28);
    sub_23809AA0C(v56, v2, v59, v58, v57, v20, &v4[*(v61 + 44)]);
    v62 = v2[5];
    v63 = swift_getKeyPath();
    v64 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3D0, &qword_238159A60) + 36)];
    *v64 = v63;
    v64[1] = v62;
    v65 = v2[7];

    LOBYTE(v62) = sub_2381540FC();
    v66 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3D8, &qword_238159A68) + 36)];
    *v66 = v62;
    *(v66 + 1) = v65;
    *(v66 + 2) = 0;
    *(v66 + 3) = 0;
    *(v66 + 4) = 0;
    v66[40] = 0;
    v67 = swift_getKeyPath();
    v68 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3E0, &qword_238159A70) + 36)];
    *v68 = v67;
    *(v68 + 1) = 1;
    v68[16] = 0;
    v69 = swift_getKeyPath();
    v70 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB3E8, &qword_238159AA8) + 36)];
    *v70 = v69;
    v70[8] = 1;
    v71 = swift_getKeyPath();
    v72 = &v4[*(v80 + 36)];
    *v72 = v71;
    v72[1] = 0x3FE0000000000000;
    v53 = &qword_27DEEB398;
    v54 = &qword_2381599F0;
    sub_2380712E4(v4, v78, &qword_27DEEB398, &qword_2381599F0);
    swift_storeEnumTagMultiPayload();
    sub_23809D354();
    sub_23809DB9C();
    sub_238153ECC();

    sub_23807BE0C(v59, v58, v75, v20);
    v55 = v4;
  }

  return sub_238071284(v55, v53, v54);
}

uint64_t sub_23809A754@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB030, &qword_2381590C0);
  v2 = v1 - 8;
  v3 = MEMORY[0x28223BE20](v1);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = (&v28 - v5);
  v7 = sub_23815467C();
  v8 = (v6 + *(v2 + 44));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEA0, &unk_238158EE8) + 28);
  v10 = *MEMORY[0x277CE1058];
  v11 = sub_2381546BC();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = swift_getKeyPath();
  *v6 = v7;
  v31 = sub_23807CB28(83);
  v32 = v12;
  sub_2380704A0();
  v13 = sub_23815438C();
  v15 = v14;
  LOBYTE(v8) = v16;
  sub_23815423C();
  sub_2381541FC();
  sub_23815425C();

  v17 = sub_23815435C();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_238070490(v13, v15, v8 & 1);

  v24 = v29;
  sub_2380712E4(v6, v29, &qword_27DEEB030, &qword_2381590C0);
  v25 = v30;
  sub_2380712E4(v24, v30, &qword_27DEEB030, &qword_2381590C0);
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB518, &qword_238159C00) + 48);
  *v26 = v17;
  *(v26 + 8) = v19;
  *(v26 + 16) = v21 & 1;
  *(v26 + 24) = v23;
  sub_238070430(v17, v19, v21 & 1);

  sub_238071284(v6, &qword_27DEEB030, &qword_2381590C0);
  sub_238070490(v17, v19, v21 & 1);

  return sub_238071284(v24, &qword_27DEEB030, &qword_2381590C0);
}

uint64_t sub_23809AA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v60 = a5;
  *&v61 = a3;
  *&v62 = a4;
  v64 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB030, &qword_2381590C0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v59 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB520, &qword_238159C08);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v63 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - v17;
  if (a1)
  {
    v19 = (v13 + *(v10 + 36));
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEA0, &unk_238158EE8) + 28);
    v21 = a6;
    v22 = *MEMORY[0x277CE1058];
    v23 = sub_2381546BC();
    v24 = v22;
    a6 = v21;
    (*(*(v23 - 8) + 104))(v19 + v20, v24, v23);
    *v19 = swift_getKeyPath();
    *v13 = a1;
    sub_23809E114(v13, v18);
    (*(v11 + 56))(v18, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(&v59 - v17, 1, 1, v10);
  }

  if (*(a2 + 48))
  {

    *&v70 = sub_23807CB28(93);
    *(&v70 + 1) = v25;
    sub_2380704A0();
    v26 = sub_23815438C();
    v28 = v27;
    v30 = v29;
    sub_23815423C();
    sub_2381541FC();
    sub_23815425C();

    v31 = sub_23815435C();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    sub_238070490(v26, v28, v30 & 1);

    v65 = v31;
    v66 = v33;
    v67 = v35 & 1;
    v68 = v37;
    v69 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB528, &qword_238159C10);
    sub_23809DFF8();
    sub_238153ECC();
  }

  else
  {

    if (a6)
    {
      v39 = v60;
      v38 = v61;
      v40 = v62;
      sub_23807BD3C(v61, v62, v60, a6);
      sub_23815423C();
      sub_2381541FC();
      sub_23815425C();

      v39 &= 1u;
      LOBYTE(v70) = v39;
      v41 = sub_23815435C();
      v43 = v42;
      v45 = v44;
      v47 = v46;
      sub_238070490(v38, v40, v39);

      v48 = v45 & 1;
      sub_238070430(v41, v43, v45 & 1);
    }

    else
    {
      v47 = 0;
      v43 = v62;
      v48 = v60;
      v41 = v61;
    }

    v65 = v41;
    v66 = v43;
    v67 = v48;
    v68 = v47;
    v69 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB528, &qword_238159C10);
    sub_23809DFF8();
    sub_238153ECC();
    sub_23807BE0C(v41, v43, v48, v47);
  }

  v61 = v70;
  v62 = v71;
  v49 = v72;
  v50 = v63;
  sub_2380712E4(v18, v63, &qword_27DEEB520, &qword_238159C08);
  v51 = v64;
  sub_2380712E4(v50, v64, &qword_27DEEB520, &qword_238159C08);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB538, &qword_238159C18) + 48);
  v54 = v61;
  v53 = v62;
  *v52 = v61;
  *(v52 + 16) = v53;
  *(v52 + 32) = v49;
  v55 = v54;
  v56 = v53;
  v57 = *(&v53 + 1);
  sub_23809E074(v54, *(&v54 + 1), v53, *(&v53 + 1), v49);
  sub_238071284(v18, &qword_27DEEB520, &qword_238159C08);
  sub_23809E0C4(v55, *(&v55 + 1), v56, v57, v49);
  return sub_238071284(v50, &qword_27DEEB520, &qword_238159C08);
}

double sub_23809AF60@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *(a2 + 128) = v12;
  *(a2 + 144) = v13;
  *(a2 + 160) = v14;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 96) = v10;
  *(a2 + 112) = v11;
  *a2 = v4;
  *(a2 + 16) = v5;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_23809B058(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 144);
  v17[8] = *(a1 + 128);
  v17[9] = v3;
  v18 = *(a1 + 160);
  v4 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v4;
  v5 = *(a1 + 112);
  v17[6] = *(a1 + 96);
  v17[7] = v5;
  v6 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v6;
  v7 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = *(a1 + 144);
  v15[8] = *(a1 + 128);
  v15[9] = v8;
  v16 = *(a1 + 160);
  v9 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v9;
  v10 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v10;
  v11 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v11;
  v12 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v12;

  sub_23809F2E8(v17, v14);
  return sub_238152A9C();
}

uint64_t sub_23809B214()
{
  v1 = sub_2381527EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7, v6);
}

uint64_t sub_23809B2B4()
{
  v1 = *(sub_2381527EC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_23808F1EC(v0 + v2, v4, v5);
}

id sub_23809B3A0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_23809B3B0()
{
  result = qword_27DEEB1A8;
  if (!qword_27DEEB1A8)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB170, &qword_238159608);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB178, &qword_238159610);
    v4[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB1B0, &qword_238159680);
    v4[4] = sub_23809B4A4();
    v4[5] = sub_23809B5E8();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_23809B7BC();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEB1A8);
  }

  return result;
}

unint64_t sub_23809B4A4()
{
  result = qword_27DEEB1B8;
  if (!qword_27DEEB1B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB178, &qword_238159610);
    v4[0] = sub_23809B530();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB1B8);
  }

  return result;
}

unint64_t sub_23809B530()
{
  result = qword_27DEEB1C0;
  if (!qword_27DEEB1C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB1C8, &qword_238159688);
    v4[0] = sub_2380711D4(&qword_27DEEB1D0, &qword_27DEEB1D8, &qword_238159690, MEMORY[0x277CE11A8]);
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB1C0);
  }

  return result;
}

unint64_t sub_23809B5E8()
{
  result = qword_27DEEB1E0;
  if (!qword_27DEEB1E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB1B0, &qword_238159680);
    v4[0] = sub_23809B674();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB1E0);
  }

  return result;
}

unint64_t sub_23809B674()
{
  result = qword_27DEEB1E8;
  if (!qword_27DEEB1E8)
  {
    v5[6] = v0;
    v5[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB1F0, &qword_238159698);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB1F8, &qword_2381596A0);
    sub_23809B768();
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = MEMORY[0x277CE0880];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27DEEB1E8);
  }

  return result;
}

unint64_t sub_23809B768()
{
  result = qword_27DEEE2E0;
  if (!qword_27DEEE2E0)
  {
    result = swift_getWitnessTable(aI_2, &type metadata for FieldPickerView, v0, v1);
    atomic_store(result, &qword_27DEEE2E0);
  }

  return result;
}

unint64_t sub_23809B7BC()
{
  result = qword_27DEEB200;
  if (!qword_27DEEB200)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB158, &qword_2381595F0);
    v4[0] = sub_23809B848();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB200);
  }

  return result;
}

unint64_t sub_23809B848()
{
  result = qword_27DEEB208;
  if (!qword_27DEEB208)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB150, &qword_2381595E8);
    v4[0] = sub_23809B8D4();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB208);
  }

  return result;
}

unint64_t sub_23809B8D4()
{
  result = qword_27DEEB210;
  if (!qword_27DEEB210)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB148, &qword_2381595E0);
    v4[0] = sub_23809B960();
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB210);
  }

  return result;
}

unint64_t sub_23809B960()
{
  result = qword_27DEEB218;
  if (!qword_27DEEB218)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB140, &qword_2381595D8);
    v4[0] = sub_2380711D4(&qword_27DEEB220, &qword_27DEEB228, &qword_2381596A8, MEMORY[0x277CE1198]);
    v4[1] = sub_2380711D4(&qword_27DEEB230, &qword_27DEEB238, &qword_2381596B0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB218);
  }

  return result;
}

unint64_t sub_23809BA44()
{
  result = qword_27DEEB240;
  if (!qword_27DEEB240)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB1A0, &qword_238159678);
    v4[0] = sub_23809BAD0();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB240);
  }

  return result;
}

unint64_t sub_23809BAD0()
{
  result = qword_27DEEB248;
  if (!qword_27DEEB248)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB250, &qword_2381596B8);
    v4[0] = sub_23809BB5C();
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB248);
  }

  return result;
}

unint64_t sub_23809BB5C()
{
  result = qword_27DEEB258;
  if (!qword_27DEEB258)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB260, &unk_2381596C0);
    v4[0] = sub_23809BC14();
    v4[1] = sub_2380711D4(&qword_27DEEB270, &qword_27DEEB278, &qword_23815E2E0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB258);
  }

  return result;
}

unint64_t sub_23809BC14()
{
  result = qword_27DEEB268;
  if (!qword_27DEEB268)
  {
    result = swift_getWitnessTable(MEMORY[0x277CE1490], MEMORY[0x277CE14A8], v0, v1);
    atomic_store(result, &qword_27DEEB268);
  }

  return result;
}

unint64_t sub_23809BC68()
{
  result = qword_27DEEB280;
  if (!qword_27DEEB280)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB188, &qword_238159620);
    v4[0] = sub_23809B3B0();
    v4[1] = sub_23809BA44();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEB280);
  }

  return result;
}

uint64_t sub_23809BCF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NameDropView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23809BD60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NameDropView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for NameDropView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_238153A2C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7.n128_f64[0] = sub_23809BD58(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));
  if (*(v5 + *(v1 + 28)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7, v7);
}

void sub_23809BF44(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_23809BF84()
{
  v1 = type metadata accessor for NameDropView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_238153A2C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7.n128_f64[0] = sub_23809BD58(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));
  if (*(v5 + *(v1 + 28)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7, v7);
}

uint64_t sub_23809C0DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NameDropView(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_238097AA4(v4, v5, a1);
}

uint64_t sub_23809C150()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7, v1);
}

uint64_t sub_23809C1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA320, &unk_238157920);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23809C2AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA320, &unk_238157920);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_23809C374(uint64_t a1)
{
  sub_23809CC10(319, &qword_27DEEA358, MEMORY[0x277CDFAA0]);
  if (v1 <= 0x3F)
  {
    sub_23809CBC0(319, &qword_27DEEA350, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_23809C468(319);
      if (v3 <= 0x3F)
      {
        sub_23809C4FC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23809C468(uint64_t a1)
{
  if (!qword_27DEEB2A8)
  {
    type metadata accessor for NameDropSessionController(255);
    sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController, byte_23815E4F8);
    v1 = sub_23815382C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEB2A8);
    }
  }
}

void sub_23809C4FC(uint64_t a1)
{
  if (!qword_27DEEB2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DEED750, &qword_238159750);
    v1 = sub_23815530C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEB2B0);
    }
  }
}

unint64_t sub_23809C564()
{
  result = qword_27DEEB2B8;
  if (!qword_27DEEB2B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB2C0, &qword_238159758);
    v4[0] = sub_238085CF4();
    v4[1] = sub_23809BC68();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEB2B8);
  }

  return result;
}

uint64_t sub_23809C5F0(int *a1, unsigned int a2)
{
  v4 = *(sub_238153A0C() - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(v4 + 64);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB2C8, &unk_238159760);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v4 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = *(v7 + 80) & 0xF8 | 7;
  v13 = v5 + v12 + 1;
  if (v9 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v13 + ((v10 + 32) & ~v11)) & ~v12) + 32;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v9 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v9 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v8 & 0x80000000) != 0)
  {
    v24 = *(v7 + 48);

    return v24((v13 + ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 17) & ~v11)) & ~v12);
  }

  else
  {
    v23 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }
}

void sub_23809C81C(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(sub_238153A0C() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB2C8, &unk_238159760) - 8);
  v9 = *(v6 + 80);
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v9 & 0xF8 | 7;
  v13 = ((v9 & 0xF8) + 32) & ~v12;
  v14 = *(v8 + 80) & 0xF8 | 7;
  v15 = v7 + v14 + 1;
  v16 = ((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v17 = ((v15 + v13) & ~v14) + v16;
  if (v11 >= a3)
  {
    v20 = 0;
    v21 = a2 - v11;
    if (a2 <= v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = a3 - v11 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v11;
    if (a2 <= v11)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v10 & 0x80000000) != 0)
        {
          v25 = ((v15 + ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 17) & ~v12)) & ~v14);
          if (v10 >= a2)
          {
            v28 = *(v8 + 56);

            v28(v25, a2);
          }

          else if (v16)
          {
            v26 = ~v10 + a2;
            v27 = ((v15 + ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 17) & ~v12)) & ~v14);
            bzero(v25, v16);
            *v27 = v26;
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = (a2 - 1);
          }

          *a1 = v24;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (v17)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v17)
  {
    v23 = ~v11 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

void sub_23809CAD0(uint64_t a1)
{
  sub_23809CBC0(319, &qword_27DEEB2E0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23809CC10(319, &qword_27DEEA360, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_23809CC64(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23809CBC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23809CC10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23815380C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23809CC64(uint64_t a1)
{
  if (!qword_27DEEB2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB2C8, &unk_238159760);
    v1 = sub_238153A3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEB2E8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_17DeviceDiscoveryUI17NameDropViewModelV11HeaderStateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23809CD18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23809CD60(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_23809CDF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NameDropView.fieldSummaryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23809CE5C()
{
  v1 = type metadata accessor for NameDropView.fieldSummaryView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_238153A0C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB2C8, &unk_238159760);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7, v10);
}

uint64_t sub_23809CFD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NameDropView.fieldSummaryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23809D038@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for NameDropView.fieldSummaryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_238093AC4(a1, v6, a2);
}

uint64_t sub_23809D0B8@<X0>(uint64_t a1@<X8>)
{
  result = sub_238153CAC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23809D0EC@<X0>(uint64_t a1@<X8>)
{
  result = sub_238153CAC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23809D188@<X0>(uint64_t *a1@<X8>)
{

  result = sub_23815469C();
  *a1 = result;
  return result;
}

uint64_t sub_23809D224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_23809D2F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_238153B7C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_23809D354()
{
  result = qword_27DEEB3F0;
  if (!qword_27DEEB3F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB3B8, &unk_238159A10);
    v4[0] = sub_23809D3E0();
    v4[1] = sub_23809D804();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEB3F0);
  }

  return result;
}

unint64_t sub_23809D3E0()
{
  result = qword_27DEEB3F8;
  if (!qword_27DEEB3F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB3C0, &qword_238159A20);
    v4[0] = sub_23809D498();
    v4[1] = sub_2380711D4(&qword_27DEEB470, &qword_27DEEB478, &qword_238159B30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB3F8);
  }

  return result;
}

unint64_t sub_23809D498()
{
  result = qword_27DEEB400;
  if (!qword_27DEEB400)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB408, &qword_238159AE0);
    v4[0] = sub_23809D550();
    v4[1] = sub_2380711D4(&qword_27DEEB460, &qword_27DEEB468, &qword_238159B28, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB400);
  }

  return result;
}

unint64_t sub_23809D550()
{
  result = qword_27DEEB410;
  if (!qword_27DEEB410)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB418, &qword_238159AE8);
    v4[0] = sub_23809D608();
    v4[1] = sub_2380711D4(&qword_27DEEA588, &qword_27DEEA590, &qword_238157C90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB410);
  }

  return result;
}

unint64_t sub_23809D608()
{
  result = qword_27DEEB420;
  if (!qword_27DEEB420)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB428, &qword_238159AF0);
    v4[0] = sub_23809D694();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB420);
  }

  return result;
}

unint64_t sub_23809D694()
{
  result = qword_27DEEB430;
  if (!qword_27DEEB430)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB438, &qword_238159AF8);
    v4[0] = sub_23809D74C();
    v4[1] = sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB430);
  }

  return result;
}

unint64_t sub_23809D74C()
{
  result = qword_27DEEB440;
  if (!qword_27DEEB440)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB448, &unk_238159B00);
    v4[0] = sub_2380884C4();
    v4[1] = sub_2380711D4(&qword_27DEEB450, &qword_27DEEB458, &unk_238159B18, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB440);
  }

  return result;
}

unint64_t sub_23809D804()
{
  result = qword_27DEEB480;
  if (!qword_27DEEB480)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB3A0, &qword_2381599F8);
    v4[0] = sub_23809D8BC();
    v4[1] = sub_2380711D4(&qword_27DEEB470, &qword_27DEEB478, &qword_238159B30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB480);
  }

  return result;
}

unint64_t sub_23809D8BC()
{
  result = qword_27DEEB488;
  if (!qword_27DEEB488)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB490, &qword_238159B38);
    v4[0] = sub_23809D974();
    v4[1] = sub_2380711D4(&qword_27DEEB460, &qword_27DEEB468, &qword_238159B28, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB488);
  }

  return result;
}

unint64_t sub_23809D974()
{
  result = qword_27DEEB498;
  if (!qword_27DEEB498)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB4A0, &qword_238159B40);
    v4[0] = sub_23809DA2C();
    v4[1] = sub_2380711D4(&qword_27DEEA588, &qword_27DEEA590, &qword_238157C90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB498);
  }

  return result;
}

unint64_t sub_23809DA2C()
{
  result = qword_27DEEB4A8;
  if (!qword_27DEEB4A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB4B0, &qword_238159B48);
    v4[0] = sub_23809DAB8();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB4A8);
  }

  return result;
}

unint64_t sub_23809DAB8()
{
  result = qword_27DEEB4B8;
  if (!qword_27DEEB4B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB4C0, &qword_238159B50);
    v4[0] = sub_2380711D4(&qword_27DEEB4C8, &qword_27DEEB4D0, &qword_238159B58, MEMORY[0x277CE1138]);
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB4B8);
  }

  return result;
}

unint64_t sub_23809DB9C()
{
  result = qword_27DEEB4D8;
  if (!qword_27DEEB4D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB398, &qword_2381599F0);
    v4[0] = sub_23809DC54();
    v4[1] = sub_2380711D4(&qword_27DEEB470, &qword_27DEEB478, &qword_238159B30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB4D8);
  }

  return result;
}

unint64_t sub_23809DC54()
{
  result = qword_27DEEB4E0;
  if (!qword_27DEEB4E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB3E8, &qword_238159AA8);
    v4[0] = sub_23809DD0C();
    v4[1] = sub_2380711D4(&qword_27DEEB460, &qword_27DEEB468, &qword_238159B28, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB4E0);
  }

  return result;
}

unint64_t sub_23809DD0C()
{
  result = qword_27DEEB4E8;
  if (!qword_27DEEB4E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB3E0, &qword_238159A70);
    v4[0] = sub_23809DDC4();
    v4[1] = sub_2380711D4(&qword_27DEEA588, &qword_27DEEA590, &qword_238157C90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB4E8);
  }

  return result;
}

unint64_t sub_23809DDC4()
{
  result = qword_27DEEB4F0;
  if (!qword_27DEEB4F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB3D8, &qword_238159A68);
    v4[0] = sub_23809DE50();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB4F0);
  }

  return result;
}

unint64_t sub_23809DE50()
{
  result = qword_27DEEB4F8;
  if (!qword_27DEEB4F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB3D0, &qword_238159A60);
    v4[0] = sub_2380711D4(&qword_27DEEB500, &qword_27DEEB508, &qword_238159B60, MEMORY[0x277CE1138]);
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB4F8);
  }

  return result;
}

uint64_t sub_23809DF34@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x2383E82A0]();
  *a1 = result;
  return result;
}

unint64_t sub_23809DFF8()
{
  result = qword_27DEEB530;
  if (!qword_27DEEB530)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB528, &qword_238159C10);
    v4[0] = MEMORY[0x277CE0BC8];
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27DEEB530);
  }

  return result;
}

double sub_23809E074(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {

    sub_23807BD3C(a1, a2, a3, a4);
  }

  else
  {
    sub_238070430(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23809E0C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return sub_23807BE0C(a1, a2, a3, a4);
  }

  else
  {
    sub_238070490(a1, a2, a3 & 1);
  }
}

uint64_t sub_23809E114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB030, &qword_2381590C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23809E1BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for NameDropView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_23809E240(uint64_t a1)
{
  v2 = sub_238153DCC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB548, &unk_238159C70);
    v9 = sub_2381553FC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_23809E560(&qword_27DEEB550, MEMORY[0x277CDDE90], MEMORY[0x277CDDE98]);
      v16 = sub_238154C3C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_23809E560(&qword_27DEEB558, MEMORY[0x277CDDE90], MEMORY[0x277CDDEA0]);
          v23 = sub_238154C7C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_23809E560(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23809E5A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238088780;

  return sub_238114840(a1, v4, v5, v6);
}

uint64_t sub_23809E65C(uint64_t a1)
{
  v4 = *(type metadata accessor for NameDropView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238087150;

  return sub_2380973C0(a1, v6, v7, v1 + v5);
}

uint64_t sub_23809E74C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 != 3)
  {
    return sub_23809E75C(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_23809E75C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a4 - 1) >= 2)
  {
    sub_23807BD3C(result, a2, a3, a4);
  }

  return result;
}

double sub_23809E7A4(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_23809E8BC()
{
  v1 = type metadata accessor for NameDropView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 36) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

double sub_23809E938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_23809E9A4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NameDropView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_23809EA18@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = *(v1 + 56);
  v6[0] = *(v1 + 24);
  v6[1] = v3;
  v7 = v4;
  return sub_238091D98(v2, v6, a1);
}

unint64_t sub_23809EA58()
{
  result = qword_27DEEB698;
  if (!qword_27DEEB698)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB690, &qword_238159E98);
    v4[0] = sub_23809EB10();
    v4[1] = sub_2380711D4(&qword_27DEEB710, &qword_27DEEB718, &qword_238159EF0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB698);
  }

  return result;
}

unint64_t sub_23809EB10()
{
  result = qword_27DEEB6A0;
  if (!qword_27DEEB6A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB6A8, &qword_238159EA0);
    v4[0] = sub_23809EB9C();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB6A0);
  }

  return result;
}

unint64_t sub_23809EB9C()
{
  result = qword_27DEEB6B0;
  if (!qword_27DEEB6B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB6B8, &qword_238159EA8);
    v4[0] = sub_23809EC28();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB6B0);
  }

  return result;
}

unint64_t sub_23809EC28()
{
  result = qword_27DEEB6C0;
  if (!qword_27DEEB6C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB6C8, &qword_238159EB0);
    v4[0] = sub_23809ECB4();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB6C0);
  }

  return result;
}

unint64_t sub_23809ECB4()
{
  result = qword_27DEEB6D0;
  if (!qword_27DEEB6D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB6D8, &qword_238159EB8);
    v4[0] = sub_23809ED6C();
    v4[1] = sub_2380711D4(&qword_27DEEB470, &qword_27DEEB478, &qword_238159B30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB6D0);
  }

  return result;
}

unint64_t sub_23809ED6C()
{
  result = qword_27DEEB6E0;
  if (!qword_27DEEB6E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB6E8, &qword_238159EC0);
    v4[0] = sub_23809EE24();
    v4[1] = sub_2380711D4(&qword_27DEEB460, &qword_27DEEB468, &qword_238159B28, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB6E0);
  }

  return result;
}

unint64_t sub_23809EE24()
{
  result = qword_27DEEB6F0;
  if (!qword_27DEEB6F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB6F8, &qword_238159EC8);
    v4[0] = sub_23809EEDC();
    v4[1] = sub_2380711D4(&qword_27DEEA588, &qword_27DEEA590, &qword_238157C90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB6F0);
  }

  return result;
}

unint64_t sub_23809EEDC()
{
  result = qword_27DEEB700;
  if (!qword_27DEEB700)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB708, &unk_238159ED0);
    v4[0] = sub_238087878();
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEB700);
  }

  return result;
}

uint64_t objectdestroy_90Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7, v1);
}

uint64_t sub_23809EFE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238087150;

  return sub_238114840(a1, v4, v5, v6);
}

uint64_t objectdestroy_94Tm()
{
  v1 = type metadata accessor for NameDropView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_238153A2C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7.n128_f64[0] = sub_23809BD58(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));
  if (*(v5 + *(v1 + 28)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7, v7);
}

uint64_t sub_23809F1F8(uint64_t a1)
{
  v4 = *(type metadata accessor for NameDropView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238088780;

  return sub_2380995F0(a1, v6, v7, v1 + v5);
}

unint64_t sub_23809F38C()
{
  result = qword_27DEEB780;
  if (!qword_27DEEB780)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB788, &unk_238159FE0);
    v4[0] = sub_23809D354();
    v4[1] = sub_23809DB9C();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEB780);
  }

  return result;
}

uint64_t sub_23809F458(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA10, &qword_23815D910);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_238152EBC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_238071284(a1, &qword_27DEEBA10, &qword_23815D910);
    sub_2380F1B10(a2);
    v12 = sub_2381527EC();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_238071284(v7, &qword_27DEEBA10, &qword_23815D910);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_2380C755C(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_2381527EC();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_23809F684(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for _DDNodeDecoration(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_238071284(a1, &qword_27DEEBA48, &qword_23815BF00);
    sub_2380F1B0C();
    sub_2380AF04C(a2, type metadata accessor for DecorationIdentifier);
    return sub_238071284(v7, &qword_27DEEBA48, &qword_23815BF00);
  }

  else
  {
    sub_2380AF410(a1, v10, type metadata accessor for _DDNodeDecoration);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_2380C7798(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_2380AF04C(a2, type metadata accessor for DecorationIdentifier);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_23809F86C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 107)
  {
    v5 = sub_2380E6AE8(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v20 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2380E9A3C();
        v9 = v20;
      }

      v10 = *(v9 + 48);
      v11 = sub_2381527EC();
      v12 = *(v11 - 8);
      v13 = *(v12 + 8);
      v13(v10 + *(v12 + 72) * v7, v11);
      sub_2380E87A4(v7, v9);
      result = (v13)(a2, v11);
      *v3 = v9;
    }

    else
    {
      v18 = sub_2381527EC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_2380C7958(a1, a2, v16);
    v17 = sub_2381527EC();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_23809FA28(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBA8, &unk_23815A800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_23815364C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_238071284(a1, &qword_27DEEBBA8, &unk_23815A800);
    sub_2380E7EBC(a2, v7);
    v12 = sub_2381527EC();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_238071284(v7, &qword_27DEEBBA8, &unk_23815A800);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_2380C7AF4(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_2381527EC();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_23809FC54()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEB790);
  __swift_project_value_buffer(v0, qword_27DEEB790);
  v1 = _DDUICoreLog();
  return sub_23815294C();
}

uint64_t sub_23809FCB0()
{
  v1 = v0;
  v2 = sub_2381536AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TransferIDStatus(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23815568C();
  sub_2380AF0AC(v1, v8, type metadata accessor for TransferIDStatus);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x2383E9CD0](1);
    sub_2380ABF30(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
    sub_238154C4C();
    (*(v3 + 8))(v5, v2);
  }

  return sub_2381556BC();
}

uint64_t sub_23809FEC4()
{
  v1 = v0;
  v2 = sub_2381536AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TransferIDStatus(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23815568C();
  sub_2380AF0AC(v1, v8, type metadata accessor for TransferIDStatus);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x2383E9CD0](1);
    sub_2380ABF30(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
    sub_238154C4C();
    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for DecorationIdentifier(0);
  sub_2381527EC();
  sub_2380ABF30(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_238154C4C();
  return sub_2381556BC();
}

uint64_t sub_2380A0140(uint64_t a1)
{
  v2 = sub_2381536AC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2380AF0AC(v1, v8, type metadata accessor for TransferIDStatus);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    return MEMORY[0x2383E9CD0](0);
  }

  (*(v3 + 32))(v6, v8, v2);
  MEMORY[0x2383E9CD0](1);
  sub_2380ABF30(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
  sub_238154C4C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2380A0334(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2381536AC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23815568C();
  sub_2380AF0AC(v2, v9, type metadata accessor for TransferIDStatus);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    MEMORY[0x2383E9CD0](1);
    sub_2380ABF30(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
    sub_238154C4C();
    (*(v4 + 8))(v7, v3);
  }

  return sub_2381556BC();
}

uint64_t sub_2380A0554(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2381536AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TransferIDStatus(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2380AF0AC(v2, v9, type metadata accessor for TransferIDStatus);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x2383E9CD0](1);
    sub_2380ABF30(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
    sub_238154C4C();
    (*(v4 + 8))(v6, v3);
  }

  sub_2381527EC();
  sub_2380ABF30(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_238154C4C();
}

uint64_t sub_2380A07B8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2381536AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TransferIDStatus(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23815568C();
  sub_2380AF0AC(v2, v9, type metadata accessor for TransferIDStatus);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x2383E9CD0](1);
    sub_2380ABF30(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
    sub_238154C4C();
    (*(v4 + 8))(v6, v3);
  }

  sub_2381527EC();
  sub_2380ABF30(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_238154C4C();
  return sub_2381556BC();
}

uint64_t sub_2380A0B00(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v3;
}

uint64_t sub_2380A0B94(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v3;
}

double sub_2380A0C14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return result;
}

uint64_t sub_2380A0C84()
{
  v1 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel____lazy_storage___dropDelegate;
  if (*(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel____lazy_storage___dropDelegate))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel____lazy_storage___dropDelegate);
  }

  else
  {
    v3 = swift_allocObject();
    v4 = swift_weakInit();
    type metadata accessor for DevicePickerViewDropDelegate(v4, v5);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_238159FF0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    *(v2 + 32) = 0;
    *(v2 + 56) = 1;
    *(v2 + 64) = sub_2380AC0A0;
    *(v2 + 72) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2380A0D48(char a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_238152A9C();
  }

  return result;
}

uint64_t sub_2380A0DD8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v119 = a3;
  v120 = a4;
  v108 = a2;
  v116 = a1;
  v122 = sub_238152E1C();
  v100 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v115 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9F8, &unk_23815A5E0);
  v113 = *(v7 - 8);
  v114 = v7;
  MEMORY[0x28223BE20](v7);
  v112 = &v89 - v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v9 = MEMORY[0x28223BE20](v111);
  v110 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v109 = &v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9F0, &unk_23815EA80);
  v106 = *(v12 - 8);
  v107 = v12;
  MEMORY[0x28223BE20](v12);
  v105 = &v89 - v13;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED890, &qword_2381593F0);
  v14 = MEMORY[0x28223BE20](v104);
  v103 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v102 = &v89 - v16;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E8, &unk_23815A5D0);
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v18 = &v89 - v17;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v121 = *(v118 - 1);
  MEMORY[0x28223BE20](v118);
  v117 = &v89 - v19;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9D8, &unk_23815A5C0);
  v97 = *(v98 - 1);
  MEMORY[0x28223BE20](v98);
  v96 = &v89 - v20;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9D0, &qword_23815A5B8);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v89 - v21;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9C8, &qword_23815A5B0);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v89 - v22;
  v23 = sub_23815513C();
  MEMORY[0x28223BE20](v23);
  v24 = sub_238154A2C();
  MEMORY[0x28223BE20](v24 - 8);
  v25 = sub_23815516C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_23807A3F8(0, &qword_27DEEBA50, 0x277D85C78);
  (*(v26 + 104))(v28, *MEMORY[0x277D85268], v25);
  sub_238154A0C();
  v123 = MEMORY[0x277D84F90];
  sub_2380ABF30(&unk_27DEECFA0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEBA60, &qword_23815A710);
  sub_2380711D4(&unk_27DEECFB0, &unk_27DEEBA60, &qword_23815A710, MEMORY[0x277D83970]);
  sub_23815537C();
  *(v4 + 16) = sub_23815519C();
  v29 = MEMORY[0x277D84F90];
  v123 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA70, &qword_23815A718);
  swift_allocObject();
  *(v4 + 24) = sub_238152A3C();
  sub_23815277C();
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browser) = 0;
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_subscriptions) = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_boopBrowser) = 0;
  v30 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__decorations;
  v123 = sub_2380EE5CC(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB870, &qword_23815A068);
  v31 = v90;
  sub_238152A5C();
  (*(v91 + 32))(v5 + v30, v31, v92);
  v32 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__hints;
  v123 = sub_2380EE7E4(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB880, &qword_23815A070);
  v33 = v93;
  sub_238152A5C();
  (*(v94 + 32))(v5 + v32, v33, v95);
  v34 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__endpoints;
  v123 = v29;
  v35 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB890, &qword_23815A078);
  v36 = v96;
  sub_238152A5C();
  (*(v97 + 32))(v5 + v34, v36, v98);
  v37 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__shouldPauseUpdate;
  LOBYTE(v123) = 0;
  v38 = v117;
  sub_238152A5C();
  v39 = *(v121 + 32);
  v121 += 32;
  v98 = v39;
  v39(v5 + v37, v38, v118);
  v40 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodes;
  v123 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB8A8, &unk_23815A080);
  sub_238152A5C();
  v41 = *(v99 + 32);
  v42 = v101;
  v41(v5 + v40, v18, v101);
  v43 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfSameAccount;
  v123 = v35;
  sub_238152A5C();
  v41(v5 + v43, v18, v42);
  v44 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfPeople;
  v123 = v35;
  sub_238152A5C();
  v41(v5 + v44, v18, v42);
  v45 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfOthers;
  v123 = v35;
  sub_238152A5C();
  v41(v5 + v45, v18, v42);
  v46 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfUnpaired;
  v123 = v35;
  sub_238152A5C();
  v41(v5 + v46, v18, v42);
  v47 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfPaired;
  v123 = v35;
  sub_238152A5C();
  v41(v5 + v47, v18, v42);
  v48 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfAll;
  v123 = v35;
  sub_238152A5C();
  v49 = v5 + v48;
  v50 = v116;
  v51 = v18;
  v52 = v108;
  v41(v49, v51, v42);
  v53 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__boopEndpoint;
  v54 = sub_238152BAC();
  v55 = v102;
  (*(*(v54 - 8) + 56))(v102, 1, 1, v54);
  sub_2380712E4(v55, v103, &unk_27DEED890, &qword_2381593F0);
  v56 = v105;
  sub_238152A5C();
  sub_238071284(v55, &unk_27DEED890, &qword_2381593F0);
  (*(v106 + 32))(v5 + v53, v56, v107);
  v57 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__isPreviewVisible;
  LOBYTE(v123) = 1;
  v58 = v117;
  sub_238152A5C();
  v98(v5 + v57, v58, v118);
  v59 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__scrollTarget;
  v60 = sub_2381527EC();
  v61 = v109;
  (*(*(v60 - 8) + 56))(v109, 1, 1, v60);
  sub_2380712E4(v61, v110, &qword_27DEEC9F0, &qword_23815A090);
  v62 = v112;
  sub_238152A5C();
  sub_238071284(v61, &qword_27DEEC9F0, &qword_23815A090);
  (*(v113 + 32))(v5 + v59, v62, v114);
  v63 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserResults;
  *(v5 + v63) = sub_2380EE9CC(MEMORY[0x277D84F90]);
  *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel____lazy_storage___dropDelegate) = 0;
  v64 = v100;
  v65 = *(v100 + 16);
  v65(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browseDescriptor, v50, v122);
  *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_parameters) = v52;
  v66 = v120;
  *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_contactInfoCache) = v119;
  *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_airDropMetadataCache) = v66;

  v67 = DDUINearFieldIdentity();
  *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_identity) = v67;
  *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType) = sub_2380ADF54(v50);
  sub_2380A1E28();
  if (qword_27DEEA058 != -1)
  {
    swift_once();
  }

  v68 = sub_23815293C();
  __swift_project_value_buffer(v68, qword_27DEEB790);
  v69 = v115;
  v65(v115, v50, v122);

  v70 = sub_23815291C();
  v71 = sub_2381550BC();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v123 = v121;
    *v72 = 136315394;
    v73 = [sub_238152D6C() description];
    swift_unknownObjectRelease();
    v74 = sub_238154CCC();
    v75 = v69;
    v77 = v76;

    v118 = *(v64 + 8);
    v78 = v75;
    v79 = v122;
    v118(v78, v122);
    v80 = sub_238085EAC(v74, v77, &v123);

    *(v72 + 4) = v80;
    *(v72 + 12) = 2080;
    v82 = MEMORY[0x2383E72D0](v81);
    v84 = sub_238085EAC(v82, v83, &v123);

    *(v72 + 14) = v84;
    _os_log_impl(&dword_238060000, v70, v71, "Created BrowserViewModel with descriptor: %s and parameters: %s", v72, 0x16u);
    v85 = v121;
    swift_arrayDestroy();
    MEMORY[0x2383EA8A0](v85, -1, -1);
    MEMORY[0x2383EA8A0](v72, -1, -1);

    v118(v116, v79);
  }

  else
  {

    v86 = *(v64 + 8);
    v87 = v122;
    v86(v50, v122);
    v86(v69, v87);
  }

  return v5;
}

double sub_2380A1E28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA78, &qword_23815A720);
  MEMORY[0x28223BE20](v0 - 8);
  v65 = v43 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA80, &qword_23815A728);
  v3 = *(v2 - 8);
  v60 = v2;
  v61 = v3;
  MEMORY[0x28223BE20](v2);
  v56 = v43 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA88, &qword_23815A730);
  MEMORY[0x28223BE20](v64);
  v55 = v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA90, &qword_23815A738);
  v7 = *(v6 - 8);
  v49 = v6;
  v50 = v7;
  MEMORY[0x28223BE20](v6);
  v45 = v43 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA98, &qword_23815A740);
  MEMORY[0x28223BE20](v58);
  v46 = v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBAA0, &qword_23815A748);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v43 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBAA8, &qword_23815A750);
  MEMORY[0x28223BE20](v53);
  v43[1] = v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBAB0, &qword_23815A758);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v43 - v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBAB8, &qword_23815A760);
  MEMORY[0x28223BE20](v48);
  v43[0] = v43 - v19;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBAC0, &qword_23815A768);
  v54 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v44 = v43 - v20;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBAC8, &qword_23815A770);
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v47 = v43 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBAD0, &qword_23815A778);
  v23 = *(v22 - 8);
  v62 = v22;
  v63 = v23;
  MEMORY[0x28223BE20](v22);
  v52 = v43 - v24;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9D8, &unk_23815A5C0);
  sub_238152A6C();
  swift_endAccess();
  v25 = MEMORY[0x277CBCEC8];
  sub_2380711D4(&qword_27DEEBAD8, &qword_27DEEBAB0, &qword_23815A758, MEMORY[0x277CBCEC8]);
  sub_2380AF134();
  sub_238152AEC();
  (*(v16 + 8))(v18, v15);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9C8, &qword_23815A5B0);
  sub_238152A6C();
  swift_endAccess();
  sub_2380711D4(&qword_27DEEBAF0, &qword_27DEEBAA0, &qword_23815A748, v25);
  sub_2380AF1E8();
  sub_238152AEC();
  (*(v11 + 8))(v13, v10);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9D0, &qword_23815A5B8);
  v26 = v45;
  sub_238152A6C();
  swift_endAccess();
  sub_2380711D4(&qword_27DEEBB08, &qword_27DEEBA90, &qword_23815A738, v25);
  sub_2380AF29C();
  v27 = v49;
  sub_238152AEC();
  (*(v50 + 8))(v26, v27);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v28 = v56;
  sub_238152A6C();
  swift_endAccess();
  sub_2380711D4(&qword_27DEEBB20, &qword_27DEEBA80, &qword_23815A728, v25);
  v29 = v60;
  sub_238152AEC();
  (*(v61 + 8))(v28, v29);
  v30 = MEMORY[0x277CBCBE0];
  sub_2380711D4(&qword_27DEEBB28, &qword_27DEEBAB8, &qword_23815A760, MEMORY[0x277CBCBE0]);
  sub_2380711D4(&qword_27DEEBB30, &qword_27DEEBAA8, &qword_23815A750, v30);
  sub_2380711D4(&qword_27DEEBB38, &qword_27DEEBA98, &qword_23815A740, v30);
  sub_2380711D4(&qword_27DEEBB40, &qword_27DEEBA88, &qword_23815A730, v30);
  v31 = v44;
  sub_23815299C();
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_2380AF320;
  *(v33 + 24) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB8A8, &unk_23815A080);
  sub_2380711D4(&qword_27DEEBB48, &qword_27DEEBAC0, &qword_23815A768, MEMORY[0x277CBCB00]);
  v34 = v47;
  v35 = v51;
  sub_238152ABC();

  (*(v54 + 8))(v31, v35);
  sub_23807A3F8(0, &qword_27DEEBA50, 0x277D85C78);
  v36 = sub_23815517C();
  v66 = v36;
  v37 = sub_23815515C();
  v38 = v65;
  (*(*(v37 - 8) + 56))(v65, 1, 1, v37);
  sub_2380711D4(&qword_27DEEBB50, &qword_27DEEBAC8, &qword_23815A770, MEMORY[0x277CBCB10]);
  sub_2380AF3A0();
  v39 = v52;
  v40 = v57;
  sub_238152ADC();
  sub_238071284(v38, &qword_27DEEBA78, &qword_23815A720);

  (*(v59 + 8))(v34, v40);
  swift_allocObject();
  swift_weakInit();
  sub_2380711D4(&qword_27DEEBB60, &qword_27DEEBAD0, &qword_23815A778, MEMORY[0x277CBCD60]);
  v41 = v62;
  sub_238152AFC();

  (*(v63 + 8))(v39, v41);
  swift_beginAccess();
  sub_2381529AC();
  swift_endAccess();

  return result;
}

void *sub_2380A2A30(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v76 = a2;
  v77 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB68, &unk_23815A780);
  MEMORY[0x28223BE20](v7 - 8);
  v72 = &v67 - v8;
  v75 = type metadata accessor for _DDNodeViewModel(0);
  v71 = *(v75 - 8);
  v9 = MEMORY[0x28223BE20](v75);
  v74 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v70 = &v67 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v13 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v14 = *(v78 + 16);

  if (v14 && (a4 & 1) != 0)
  {
    if (qword_27DEEA058 != -1)
    {
      swift_once();
    }

    v15 = sub_23815293C();
    __swift_project_value_buffer(v15, qword_27DEEB790);
    v16 = sub_23815291C();
    v17 = sub_2381550FC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_238060000, v16, v17, "Browser update Paused", v18, 2u);
      MEMORY[0x2383EA8A0](v18, -1, -1);
    }

    return 0;
  }

  if (qword_27DEEA058 != -1)
  {
    swift_once();
  }

  v21 = sub_23815293C();
  v69 = __swift_project_value_buffer(v21, qword_27DEEB790);
  v22 = sub_23815291C();
  v23 = sub_2381550FC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_238060000, v22, v23, "Browser will update", v24, 2u);
    MEMORY[0x2383EA8A0](v24, -1, -1);
  }

  v25 = *(a1 + 16);
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v68 = v13;
    v80 = MEMORY[0x277D84F90];
    sub_2380FDAF8(0, v25, 0);
    v26 = v80;
    v27 = *(sub_238152BAC() - 8);
    v28 = *(v27 + 80);
    v67 = a1;
    v29 = a1 + ((v28 + 32) & ~v28);
    v73 = 0x8000000238161B90;
    v30 = *(v27 + 72);
    v31 = v25;
    while (1)
    {
      v78 = 91;
      v79 = 0xE100000000000000;
      v32 = sub_238152B0C();
      if (v33)
      {
        v34 = v33;
      }

      else
      {
        v32 = 0x206E776F6E6B6E55;
        v34 = 0xEC000000656D614ELL;
      }

      MEMORY[0x2383E9410](v32, v34);

      MEMORY[0x2383E9410](2108704, 0xE300000000000000);
      v35 = sub_2381310F8(v29);
      if (v36)
      {
        v37 = v35;
        v38 = v36;
        if ((v35 != 63 || v36 != 0xE100000000000000) && (sub_2381555CC() & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v37 = 0x206E776F6E6B6E55;
      v38 = 0xED00006C65646F4DLL;
LABEL_26:
      MEMORY[0x2383E9410](v37, v38);

      MEMORY[0x2383E9410](2108704, 0xE300000000000000);
      v39 = sub_238131110(v29);
      if (v40)
      {
        v41 = v40;
      }

      else
      {
        v39 = 0xD000000000000012;
        v41 = v73;
      }

      MEMORY[0x2383E9410](v39, v41);

      MEMORY[0x2383E9410](23840, 0xE200000000000000);
      v42 = v78;
      v43 = v79;
      v80 = v26;
      v45 = *(v26 + 16);
      v44 = *(v26 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_2380FDAF8((v44 > 1), v45 + 1, 1);
        v26 = v80;
      }

      *(v26 + 16) = v45 + 1;
      v46 = v26 + 16 * v45;
      *(v46 + 32) = v42;
      *(v46 + 40) = v43;
      v29 += v30;
      if (!--v31)
      {
        a1 = v67;
        v13 = v68;
        break;
      }
    }
  }

  v47 = sub_23815291C();
  v48 = sub_2381550CC();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v78 = v50;
    *v49 = 134218242;
    *(v49 + 4) = v25;

    *(v49 + 12) = 2080;
    v80 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB70, &qword_238159970);
    sub_2380711D4(&qword_27DEEBB78, &qword_27DEEBB70, &qword_238159970, MEMORY[0x277D83958]);
    v51 = sub_238154C6C();
    v53 = sub_238085EAC(v51, v52, &v78);

    *(v49 + 14) = v53;
    _os_log_impl(&dword_238060000, v47, v48, "Creating NodeViewModels for %ld endpoints: %s", v49, 0x16u);
    v54 = __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x2383EA8A0](v50, -1, -1, v54);
    MEMORY[0x2383EA8A0](v49, -1, -1);

    v55 = v72;
    if (v25)
    {
      goto LABEL_35;
    }
  }

  else
  {

    v55 = v72;
    if (v25)
    {
LABEL_35:
      v56 = *(sub_238152BAC() - 8);
      v57 = a1;
      v58 = (v71 + 48);
      v59 = v57 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v60 = *(v56 + 72);
      v19 = MEMORY[0x277D84F90];
      do
      {
        sub_2380A3368(v59, v13, v76, v77, v55);
        if ((*v58)(v55, 1, v75) == 1)
        {
          sub_238071284(v55, &qword_27DEEBB68, &unk_23815A780);
        }

        else
        {
          v61 = v70;
          sub_2380AF410(v55, v70, type metadata accessor for _DDNodeViewModel);
          sub_2380AF410(v61, v74, type metadata accessor for _DDNodeViewModel);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_2380BB664(0, v19[2] + 1, 1, v19);
          }

          v63 = v19[2];
          v62 = v19[3];
          if (v63 >= v62 >> 1)
          {
            v19 = sub_2380BB664((v62 > 1), v63 + 1, 1, v19);
          }

          v19[2] = v63 + 1;
          sub_2380AF410(v74, v19 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v63, type metadata accessor for _DDNodeViewModel);
          v55 = v72;
        }

        v59 += v60;
        --v25;
      }

      while (v25);
      goto LABEL_46;
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_46:

  v64 = sub_23815291C();
  v65 = sub_2381550FC();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 134217984;
    *(v66 + 4) = v19[2];

    _os_log_impl(&dword_238060000, v64, v65, "Created %ld", v66, 0xCu);
    MEMORY[0x2383EA8A0](v66, -1, -1);
  }

  else
  {
  }

  return v19;
}

uint64_t sub_2380A3368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v147 = a2;
  v134 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  MEMORY[0x28223BE20](v9 - 8);
  v137 = &v120 - v10;
  v11 = sub_2381527EC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v122 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v124 = &v120 - v16;
  MEMORY[0x28223BE20](v15);
  v121 = &v120 - v17;
  v135 = type metadata accessor for _DDNodeViewModel(0);
  v142 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v125 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB80, &qword_23815A790);
  MEMORY[0x28223BE20](v19 - 8);
  v132 = &v120 - v20;
  v144 = sub_23815278C();
  v138 = *(v144 - 8);
  v21 = MEMORY[0x28223BE20](v144);
  v140 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v139 = &v120 - v23;
  v24 = sub_238152BAC();
  v141 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v123 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v131 = &v120 - v28;
  MEMORY[0x28223BE20](v27);
  v145 = &v120 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB68, &unk_23815A780);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v146 = &v120 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB88, &qword_23815A798);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v120 - v36;
  v150 = a1;
  v38 = sub_2380AC7D0(sub_2380AF478, v149, a3);
  v148 = a1;
  sub_2380D1F78(sub_2380AF480, a4, v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEBB90, &unk_23815A7A0);
  v40 = (*(*(v39 - 8) + 48))(v37, 1, v39);
  v127 = v11;
  v128 = v12;
  if (v40 == 1)
  {
    sub_238071284(v37, &qword_27DEEBB88, &qword_23815A798);
    v126 = 107;
  }

  else
  {
    v126 = v37[*(v39 + 48)];
    (*(v12 + 8))(v37, v11);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v42 = *&v151[0];
  MEMORY[0x28223BE20](v41);
  *(&v120 - 2) = a1;
  sub_2380D222C(sub_2380AF4A0, v42, v146);
  v133 = v5;

  v43 = *(v141 + 16);
  v43(v145, a1, v24);
  v44 = *(v38 + 2);
  v143 = v24;
  if (v44)
  {
    v45 = sub_2380782EC(v44, 0);
    v46 = *(type metadata accessor for _DDNodeDecoration(0) - 8);
    v47 = sub_2380790B8(v151, v45 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v44, v38);
    v48.n128_f64[0] = sub_23807A314(*&v151[0]);
    v49 = v47 == v44;
    v50 = v142;
    if (!v49)
    {
      __break(1u);
      goto LABEL_29;
    }

    v130 = v45;
  }

  else
  {

    v130 = MEMORY[0x277D84F90];
    v50 = v142;
  }

  v136 = v43;
  v51 = v138;
  v52 = *(v138 + 16);
  v53 = v144;
  v52(v139, v147 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_airdropOpenedAt, v144, v48);
  sub_2380712E4(v146, v33, &qword_27DEEBB68, &unk_23815A780);
  v54 = *(v50 + 48);
  v50 = v135;
  if (v54(v33, 1, v135) == 1)
  {
    sub_238071284(v33, &qword_27DEEBB68, &unk_23815A780);
    v55 = v132;
    (*(v51 + 56))(v132, 1, 1, v53);
    sub_23815277C();
    v56 = (*(v51 + 48))(v55, 1, v53);
    v57 = v137;
    if (v56 != 1)
    {
      sub_238071284(v55, &qword_27DEEBB80, &qword_23815A790);
    }
  }

  else
  {
    v58 = v132;
    (v52)(v132, &v33[*(v50 + 32)], v53);
    sub_2380AF04C(v33, type metadata accessor for _DDNodeViewModel);
    (*(v51 + 56))(v58, 0, 1, v53);
    (*(v51 + 32))(v140, v58, v53);
    v57 = v137;
  }

  v59 = *(v147 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_contactInfoCache);
  v60 = *(v147 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_airDropMetadataCache);
  v61 = v131;
  v38 = v145;
  v136(v131, v145, v143);
  v129 = v59;

  v132 = v60;

  sub_2380B2660(v61, v151);
  v62 = v152;
  if (v152 == 255)
  {

    if (qword_27DEEA060 == -1)
    {
LABEL_20:
      v83 = sub_23815293C();
      __swift_project_value_buffer(v83, qword_27DEEBBB0);
      v84 = v123;
      v85 = v143;
      v136(v123, v38, v143);
      v86 = v38;
      v87 = sub_23815291C();
      v88 = sub_2381550DC();
      v89 = os_log_type_enabled(v87, v88);
      v90 = v144;
      if (v89)
      {
        v91 = swift_slowAlloc();
        v92 = v84;
        v93 = swift_slowAlloc();
        *&v153 = v93;
        *v91 = 136315138;
        v94 = sub_238152B3C();
        v95 = v85;
        v97 = v96;
        v98 = *(v141 + 8);
        v98(v92, v95);
        v99 = sub_238085EAC(v94, v97, &v153);

        *(v91 + 4) = v99;
        _os_log_impl(&dword_238060000, v87, v88, "Endpoint is missing kind. Skipping {endpoint: %s}", v91, 0xCu);
        v100 = __swift_destroy_boxed_opaque_existential_1(v93);
        MEMORY[0x2383EA8A0](v93, -1, -1, v100);
        v101 = v91;
        v50 = v135;
        MEMORY[0x2383EA8A0](v101, -1, -1);

        v102 = *(v138 + 8);
        v103 = v144;
        v102(v140, v144);
        v102(v139, v103);
        v98(v145, v143);
      }

      else
      {

        v109 = *(v141 + 8);
        v109(v84, v85);
        v110 = *(v138 + 8);
        v110(v140, v90);
        v110(v139, v90);
        v109(v86, v85);
      }

      sub_238071284(v146, &qword_27DEEBB68, &unk_23815A780);
      v111 = 1;
      v112 = v134;
      return (*(v142 + 56))(v112, v111, 1, v50);
    }

LABEL_29:
    swift_once();
    goto LABEL_20;
  }

  v153 = v151[0];
  v154 = v151[1];
  sub_238130414(v57);
  v63 = v137;
  v64 = v128;
  v65 = v127;
  if ((*(v128 + 48))(v137, 1, v127) == 1)
  {
    sub_238071284(v63, &qword_27DEEC9F0, &qword_23815A090);
    v66 = v124;
    sub_2381527DC();
    v67 = *(v64 + 16);
    v68 = v125;
    v67(v125, v66, v65);
    if (qword_27DEEA060 != -1)
    {
      swift_once();
    }

    v69 = sub_23815293C();
    __swift_project_value_buffer(v69, qword_27DEEBBB0);
    v70 = v122;
    v67(v122, v66, v65);
    v71 = sub_23815291C();
    v72 = sub_2381550DC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v155 = v74;
      *v73 = 136315138;
      LODWORD(v136) = v72;
      v75 = sub_23815279C();
      v77 = v76;
      v137 = *(v128 + 8);
      v78 = v70;
      v79 = v127;
      (v137)(v78, v127);
      v80 = sub_238085EAC(v75, v77, &v155);

      *(v73 + 4) = v80;
      _os_log_impl(&dword_238060000, v71, v136, "Created UUID for endpoint: %s", v73, 0xCu);
      v81 = __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x2383EA8A0](v74, -1, -1, v81);
      v82 = v73;
      v50 = v135;
      MEMORY[0x2383EA8A0](v82, -1, -1);

      (v137)(v124, v79);
    }

    else
    {

      v113 = *(v128 + 8);
      v113(v70, v65);
      v113(v66, v65);
    }

    sub_238071284(v146, &qword_27DEEBB68, &unk_23815A780);
    v108 = v144;
    v38 = v145;
    v51 = v138;
  }

  else
  {
    sub_238071284(v146, &qword_27DEEBB68, &unk_23815A780);
    v104 = *(v64 + 32);
    v105 = v62;
    v106 = v121;
    v104(v121, v63, v65);
    v68 = v125;
    v107 = v106;
    v62 = v105;
    v104(v125, v107, v65);
    v108 = v144;
  }

  v114 = v68 + *(v50 + 20);
  v115 = v154;
  *v114 = v153;
  *(v114 + 16) = v115;
  *(v114 + 32) = v62;
  *(v68 + *(v50 + 24)) = v130;
  v116 = *(v51 + 32);
  v116(v68 + *(v50 + 28), v139, v108);
  v116(v68 + *(v50 + 32), v140, v108);
  *(v68 + *(v50 + 44)) = v129;
  *(v68 + *(v50 + 48)) = v132;
  v117 = (v68 + *(v50 + 52));
  v118 = v147;
  *v117 = sub_2380AF4C0;
  v117[1] = v118;
  (*(v141 + 32))(v68 + *(v50 + 36), v38, v143);
  *(v68 + *(v50 + 40)) = v126;
  v112 = v134;
  sub_2380AF410(v68, v134, type metadata accessor for _DDNodeViewModel);
  v111 = 0;
  return (*(v142 + 56))(v112, v111, 1, v50);
}

uint64_t sub_2380A43F4(uint64_t a1)
{
  v1 = sub_2381527EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DecorationIdentifier(0);
  sub_238152B7C();
  v5 = sub_2381527AC();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

uint64_t sub_2380A44E4(uint64_t a1)
{
  v1 = sub_2381527EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238152B7C();
  v5 = sub_2381527AC();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

uint64_t sub_2380A45D0(uint64_t a1)
{
  v2 = sub_2381527EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA28, &qword_23815A668);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v25 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  (*(v3 + 16))(&v24 - v15, a1, v2);
  (*(v3 + 56))(v16, 0, 1, v2);
  sub_238130414(v14);
  v17 = *(v6 + 56);
  sub_2380712E4(v16, v8, &qword_27DEEC9F0, &qword_23815A090);
  sub_2380712E4(v14, &v8[v17], &qword_27DEEC9F0, &qword_23815A090);
  v18 = *(v3 + 48);
  if (v18(v8, 1, v2) != 1)
  {
    sub_2380712E4(v8, v25, &qword_27DEEC9F0, &qword_23815A090);
    if (v18(&v8[v17], 1, v2) != 1)
    {
      v20 = &v8[v17];
      v21 = v24;
      (*(v3 + 32))(v24, v20, v2);
      sub_2380ABF30(&qword_27DEEBA30, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v19 = sub_238154C7C();
      v22 = *(v3 + 8);
      v22(v21, v2);
      sub_238071284(v14, &qword_27DEEC9F0, &qword_23815A090);
      sub_238071284(v16, &qword_27DEEC9F0, &qword_23815A090);
      v22(v25, v2);
      sub_238071284(v8, &qword_27DEEC9F0, &qword_23815A090);
      return v19 & 1;
    }

    sub_238071284(v14, &qword_27DEEC9F0, &qword_23815A090);
    sub_238071284(v16, &qword_27DEEC9F0, &qword_23815A090);
    (*(v3 + 8))(v25, v2);
    goto LABEL_6;
  }

  sub_238071284(v14, &qword_27DEEC9F0, &qword_23815A090);
  sub_238071284(v16, &qword_27DEEC9F0, &qword_23815A090);
  if (v18(&v8[v17], 1, v2) != 1)
  {
LABEL_6:
    sub_238071284(v8, &qword_27DEEBA28, &qword_23815A668);
    v19 = 0;
    return v19 & 1;
  }

  sub_238071284(v8, &qword_27DEEC9F0, &qword_23815A090);
  v19 = 1;
  return v19 & 1;
}

double sub_2380A4A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DecorationIdentifier(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18[-v10];
  v12 = sub_2381536AC();
  (*(*(v12 - 8) + 16))(v8, a2, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  v14 = *(v6 + 28);
  v15 = sub_2381527EC();
  (*(*(v15 - 8) + 16))(&v8[v14], a1, v15);
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = sub_238152A7C();
  sub_2380F1B0C();
  sub_2380AF04C(v8, type metadata accessor for DecorationIdentifier);
  sub_238071284(v11, &qword_27DEEBA48, &qword_23815BF00);
  v16(v18, 0);

  return result;
}

uint64_t sub_2380A4C7C(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = &v44 - v7;
  v8 = type metadata accessor for _DDNodeDecoration.Kind(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _DDNodeDecoration(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for _DDNodeViewModel(0);
  v16 = *(v15 - 8);
  v52 = v15;
  v53 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB68, &unk_23815A780);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v46 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v47 = &v44 - v22;
  v23 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v44 = v18;
    v45 = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    v54[0] = v23;

    sub_238152A9C();
    sub_2380AE5C0(v23, v54);
    v26 = v54[0];
    v25 = v54[1];
    v27 = v54[2];
    v49 = v54[3];
    v50 = v54[4];
    swift_getKeyPath();
    v51 = v23;
    swift_getKeyPath();
    v54[0] = v26;

    sub_238152A9C();
    swift_getKeyPath();
    swift_getKeyPath();
    v54[0] = v25;

    sub_238152A9C();
    swift_getKeyPath();
    swift_getKeyPath();
    v54[0] = v27;

    sub_238152A9C();
    swift_getKeyPath();
    swift_getKeyPath();
    v54[0] = v49;

    sub_238152A9C();

    swift_getKeyPath();
    swift_getKeyPath();
    v54[0] = v50;

    v28 = v51;
    result = sub_238152A9C();
    v49 = *(v28 + 16);
    if (v49)
    {
      v29 = 0;
      v50 = v28 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v30 = v44;
      while (v29 < *(v28 + 16))
      {
        result = sub_2380AF0AC(v50 + *(v53 + 72) * v29, v30, type metadata accessor for _DDNodeViewModel);
        v31 = *(v30 + *(v52 + 24));
        v32 = *(v31 + 16);
        if (v32)
        {
          v33 = 0;
          while (v33 < *(v31 + 16))
          {
            sub_2380AF0AC(v31 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v33, v14, type metadata accessor for _DDNodeDecoration);
            sub_2380AF0AC(v14, v10, type metadata accessor for _DDNodeDecoration.Kind);
            sub_2380AF04C(v14, type metadata accessor for _DDNodeDecoration);
            result = swift_getEnumCaseMultiPayload();
            if (result > 3)
            {
              if ((result - 5) >= 3)
              {
                v37 = type metadata accessor for _DDNodeDecoration.Kind;
LABEL_17:
                sub_2380AF04C(v10, v37);
                v36 = v47;
                sub_2380AF410(v30, v47, type metadata accessor for _DDNodeViewModel);
                v34 = 0;
                v35 = v48;
                goto LABEL_18;
              }
            }

            else
            {
              if (result >= 3)
              {
                v37 = type metadata accessor for _DDNodeAskRequestDecorationViewModel;
                goto LABEL_17;
              }

              result = sub_2380AF04C(v10, type metadata accessor for _DDNodeDecoration.Kind);
            }

            if (v32 == ++v33)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
          break;
        }

LABEL_4:
        ++v29;
        result = sub_2380AF04C(v30, type metadata accessor for _DDNodeViewModel);
        v28 = v51;
        if (v29 == v49)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_14:
      v34 = 1;
      v36 = v47;
      v35 = v48;
LABEL_18:
      v38 = v46;
      v39 = v52;
      v40 = v53;
      (*(v53 + 56))(v36, v34, 1, v52);
      sub_2380712E4(v36, v38, &qword_27DEEBB68, &unk_23815A780);
      if ((*(v40 + 48))(v38, 1, v39) == 1)
      {
        sub_238071284(v38, &qword_27DEEBB68, &unk_23815A780);
        v41 = sub_2381527EC();
        (*(*(v41 - 8) + 56))(v35, 1, 1, v41);
      }

      else
      {
        v42 = sub_2381527EC();
        v43 = *(v42 - 8);
        (*(v43 + 16))(v35, v38, v42);
        sub_2380AF04C(v38, type metadata accessor for _DDNodeViewModel);
        (*(v43 + 56))(v35, 0, 1, v42);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_2380712E4(v35, v45, &qword_27DEEC9F0, &qword_23815A090);
      sub_238152A9C();
      sub_238071284(v35, &qword_27DEEC9F0, &qword_23815A090);
      return sub_238071284(v36, &qword_27DEEBB68, &unk_23815A780);
    }
  }

  return result;
}

double sub_2380A54D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v51 - v3;
  v5 = sub_23815313C();
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238152DEC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v15 = sub_238152E1C();
  v16 = MEMORY[0x28223BE20](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browser;
  if (*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browser))
  {
    if (qword_27DEEA058 != -1)
    {
      swift_once();
    }

    v21 = sub_23815293C();
    __swift_project_value_buffer(v21, qword_27DEEB790);
    v62 = sub_23815291C();
    v22 = sub_2381550FC();
    if (os_log_type_enabled(v62, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_238060000, v62, v22, "Attempting to start browser that is already active", v23, 2u);
      MEMORY[0x2383EA8A0](v23, -1, -1);
    }

    v24 = v62;
  }

  else
  {
    v61 = v17;
    v62 = v16;
    v57 = v14;
    v58 = v12;
    v59 = v9;
    v53 = v7;
    v54 = v5;
    v52 = v4;
    if (qword_27DEEA058 != -1)
    {
      swift_once();
    }

    v26 = sub_23815293C();
    __swift_project_value_buffer(v26, qword_27DEEB790);
    v27 = sub_23815291C();
    v28 = sub_2381550FC();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v8;
    v31 = v58;
    v32 = v1;
    if (v29)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_238060000, v27, v28, "Starting browser", v33, 2u);
      MEMORY[0x2383EA8A0](v33, -1, -1);
    }

    v34 = *(v61 + 16);
    v55 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browseDescriptor;
    v56 = v34;
    v34(v19, v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browseDescriptor, v62);
    sub_238152EDC();
    swift_allocObject();

    *(v1 + v20) = sub_238152E5C();

    v35 = *(v1 + v20);
    v36 = v59;
    v37 = v57;
    if (v35)
    {
      swift_allocObject();
      swift_weakInit();

      sub_238152E4C();

      if (*(v32 + v20))
      {

        sub_238152E7C();
      }
    }

    v38 = v62;
    v56(v19, v32 + v55, v62);
    sub_238152D6C();
    (*(v61 + 8))(v19, v38);
    nw_browse_descriptor_get_browse_scope();
    swift_unknownObjectRelease();
    sub_238152DDC();
    sub_238152D8C();
    sub_2380ABF30(&qword_27DEEBA08, MEMORY[0x277CD90C8], MEMORY[0x277CD90D0]);
    v39 = sub_23815535C();
    v40 = *(v36 + 8);
    v40(v31, v30);
    v40(v37, v30);
    if ((v39 & 1) != 0 && *(v32 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType) != 2)
    {
      v41 = *(v32 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_identity);
      type metadata accessor for BoopBrowser(0);
      v42 = swift_allocObject();
      *(v42 + 3) = 0;
      swift_unknownObjectWeakInit();
      *(v42 + 6) = 0;
      v43 = OBJC_IVAR____TtC17DeviceDiscoveryUI11BoopBrowser_currentNearbySharingInteraction;
      v44 = sub_2381534EC();
      (*(*(v44 - 8) + 56))(&v42[v43], 1, 1, v44);
      *(v42 + 4) = v41;
      sub_2381531EC();
      (*(v60 + 104))(v53, *MEMORY[0x277D54980], v54);
      swift_unknownObjectRetain();
      *(v42 + 5) = sub_23815314C();
      v45 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_boopBrowser;
      *(v32 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_boopBrowser) = v42;

      v46 = *(v32 + v45);
      if (v46)
      {
        *(v46 + 24) = &off_284AEFDF0;
        swift_unknownObjectWeakAssign();
        v47 = *(v32 + v45);
        if (v47)
        {
          v48 = sub_238154FBC();
          v49 = v52;
          (*(*(v48 - 8) + 56))(v52, 1, 1, v48);
          v50 = swift_allocObject();
          v50[2] = 0;
          v50[3] = 0;
          v50[4] = v47;

          sub_2380D2A4C(0, 0, v49, &unk_23815A640, v50);
        }
      }
    }
  }

  return result;
}

double sub_2380A5C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_238154FBC();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_238154F8C();

    v12 = sub_238154F7C();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v10;
    v13[5] = a1;
    v13[6] = a2;
    sub_2380D2A4C(0, 0, v7, &unk_23815A650, v13);
  }

  return result;
}

uint64_t sub_2380A5DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_238154F8C();
  v6[5] = sub_238154F7C();
  v8 = sub_238154F3C();

  return MEMORY[0x2822009F8](sub_2380A5E68, v8, v7);
}

uint64_t sub_2380A5E68()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_2380A5EE0(v2, v1);
  v3 = v0[1];

  return v3();
}

void sub_2380A5EE0(int64_t a1, uint64_t a2)
{
  v389 = a2;
  v397[3] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA10, &qword_23815D910);
  MEMORY[0x28223BE20](v4 - 8);
  v337 = &v322 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v322 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v343 = &v322 - v11;
  MEMORY[0x28223BE20](v10);
  v334 = &v322 - v12;
  v354 = sub_2381527EC();
  v365 = *(v354 - 8);
  v13 = MEMORY[0x28223BE20](v354);
  v331 = &v322 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v332 = &v322 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v336 = &v322 - v18;
  MEMORY[0x28223BE20](v17);
  v335 = &v322 - v19;
  v370 = sub_238152BAC();
  v376 = *(v370 - 8);
  v20 = MEMORY[0x28223BE20](v370);
  v340 = &v322 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v351 = &v322 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v330 = &v322 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v342 = &v322 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v333 = &v322 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v345 = &v322 - v31;
  MEMORY[0x28223BE20](v30);
  v349 = &v322 - v32;
  v371 = sub_238152EBC();
  v374 = *(v371 - 8);
  v33 = MEMORY[0x28223BE20](v371);
  v339 = &v322 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v367 = &v322 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v322 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v358 = (&v322 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v344 = &v322 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v361 = &v322 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v352 = &v322 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v346 = &v322 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v355 = &v322 - v51;
  MEMORY[0x28223BE20](v50);
  v359 = &v322 - v52;
  v53 = sub_238152E9C();
  v393 = *(v53 - 8);
  v394 = v53;
  v54 = MEMORY[0x28223BE20](v53);
  v56 = &v322 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v54);
  v377 = &v322 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v379 = (&v322 - v60);
  v61 = MEMORY[0x28223BE20](v59);
  v378 = (&v322 - v62);
  v63 = MEMORY[0x28223BE20](v61);
  v375 = (&v322 - v64);
  v65 = MEMORY[0x28223BE20](v63);
  v380 = &v322 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v382 = (&v322 - v68);
  v69 = MEMORY[0x28223BE20](v67);
  v381 = (&v322 - v70);
  v71 = MEMORY[0x28223BE20](v69);
  v73 = (&v322 - v72);
  v74 = MEMORY[0x28223BE20](v71);
  v383 = &v322 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v391 = &v322 - v77;
  MEMORY[0x28223BE20](v76);
  v79 = &v322 - v78;
  swift_getKeyPath();
  swift_getKeyPath();
  v366 = v2;
  sub_238152A8C();

  v373 = v397[0];
  v396 = v397[0];
  if (qword_27DEEA058 != -1)
  {
    goto LABEL_153;
  }

  while (1)
  {
    v80 = sub_23815293C();
    v81 = __swift_project_value_buffer(v80, qword_27DEEB790);

    v372 = v81;
    v82 = sub_23815291C();
    v83 = sub_2381550FC();

    v84 = os_log_type_enabled(v82, v83);
    v341 = v9;
    v350 = v39;
    v388 = v56;
    if (v84)
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v397[0] = v86;
      *v85 = 136315138;
      sub_2380ABF30(&qword_27DEEBA20, MEMORY[0x277CD9168], MEMORY[0x277CD9178]);
      v87 = sub_23815501C();
      v89 = sub_238085EAC(v87, v88, v397);

      *(v85 + 4) = v89;
      _os_log_impl(&dword_238060000, v82, v83, "Got New Results: %s", v85, 0xCu);
      v90 = __swift_destroy_boxed_opaque_existential_1(v86);
      MEMORY[0x2383EA8A0](v86, -1, -1, v90);
      MEMORY[0x2383EA8A0](v85, -1, -1);
    }

    v91 = sub_23815291C();
    v92 = sub_2381550FC();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v397[0] = v94;
      *v93 = 136315138;

      v96 = MEMORY[0x2383E9520](v95, v370);
      v98 = v97;

      v99 = sub_238085EAC(v96, v98, v397);

      *(v93 + 4) = v99;
      _os_log_impl(&dword_238060000, v91, v92, "discovered devices changed:%s", v93, 0xCu);
      v100 = __swift_destroy_boxed_opaque_existential_1(v94);
      MEMORY[0x2383EA8A0](v94, -1, -1, v100);
      MEMORY[0x2383EA8A0](v93, -1, -1);
    }

    v56 = v388;
    v101 = v389;
    v102 = *(v389 + 32);
    v103 = v102 & 0x3F;
    v39 = ((1 << v102) + 63) >> 6;
    v104 = 8 * v39;

    v106 = MEMORY[0x277CD9138];
    *&v385 = v73;
    v362 = a1;
    if (v103 > 0xD)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        break;
      }
    }

    v364 = v39;
    v363 = &v322;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v368 = &v322 - ((v104 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v368, v104);
    v369 = 0;
    v39 = 0;
    v107 = v101 + 56;
    v108 = 1 << *(v101 + 32);
    v109 = -1;
    if (v108 < 64)
    {
      v109 = ~(-1 << v108);
    }

    v110 = v109 & *(v101 + 56);
    v9 = (v108 + 63) >> 6;
    v390 = (v393 + 2);
    v387 = v393 + 11;
    v386 = *v106;
    v384 = v393 + 1;
    v360 = (v393 + 12);
    v357 = (v374 + 8);
    v111 = v79;
    while (v110)
    {
      v112 = __clz(__rbit64(v110));
      v392 = (v110 - 1) & v110;
LABEL_17:
      v116 = v393;
      v115 = v394;
      a1 = v112 | (v39 << 6);
      v117 = *(v101 + 48) + v393[9] * a1;
      v118 = v393[2];
      v118(v111, v117, v394);
      v119 = v391;
      v118(v391, v111, v115);
      v120 = (v116[11])(v119, v115);
      if (v120 == v386)
      {
        v79 = v394;
        (*v360)(v119, v394);
        v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA18, &qword_23815A660);
        v356 = *(v122 + 48);
        v123 = *(v122 + 64);
        v124 = sub_238152E8C();
        (*(*(v124 - 8) + 8))(&v119[v123], v124);
        v125 = *v357;
        v126 = v371;
        (*v357)(v356 + v119, v371);
        v125(v119, v126);
        (*v384)(v111, v79);
        *&v368[(a1 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a1;
        v127 = __OFADD__(v369++, 1);
        v56 = v388;
        v101 = v389;
        v73 = v385;
        v110 = v392;
        if (v127)
        {
          __break(1u);
LABEL_22:
          v128 = sub_2380AD5DC(v368, v364, v369, v101);
          v363 = 0;
          goto LABEL_23;
        }
      }

      else
      {
        v121 = *v384;
        v79 = v394;
        (*v384)(v119, v394);
        v121(v111, v79);
        v56 = v388;
        v101 = v389;
        v73 = v385;
        v110 = v392;
      }
    }

    v113 = v39;
    while (1)
    {
      v39 = v113 + 1;
      if (__OFADD__(v113, 1))
      {
        break;
      }

      if (v39 >= v9)
      {
        goto LABEL_22;
      }

      v114 = *(v107 + 8 * v39);
      ++v113;
      if (v114)
      {
        v112 = __clz(__rbit64(v114));
        v392 = (v114 - 1) & v114;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    swift_once();
  }

  v314 = swift_slowAlloc();
  v315 = sub_2380ACC48(v314, v39, v101, sub_2380A9CBC, 0, sub_2380AD37C);
  v363 = 0;
  v101 = v389;
  MEMORY[0x2383EA8A0](v314, -1, -1);
  v128 = v315;
  v386 = *v106;
LABEL_23:
  v130 = 0;
  a1 = (v128 + 7);
  v131 = 1 << *(v128 + 32);
  v132 = -1;
  if (v131 < 64)
  {
    v132 = ~(-1 << v131);
  }

  v133 = v132 & v128[7];
  v348 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserResults;
  v134 = (v131 + 63) >> 6;
  v387 = v393 + 4;
  v391 = (v393 + 11);
  v392 = (v393 + 2);
  v390 = (v393 + 1);
  v357 = (v393 + 12);
  v356 = (v374 + 32);
  v360 = (v374 + 16);
  v368 = v374 + 8;
  v364 = (v376 + 8);
  v369 = v376 + 40;
  v353 = (v365 + 6);
  v347 = (v365 + 4);
  v329 = (v365 + 2);
  v374 += 56;
  ++v365;
  *&v129 = 136315394;
  v338 = v129;
  v384 = v128;
  while (v133)
  {
    v39 = v56;
    v135 = v73;
    v9 = v130;
LABEL_32:
    v136 = __clz(__rbit64(v133));
    v133 &= v133 - 1;
    v137 = v393;
    v79 = v394;
    v138 = v383;
    (v393[2])(v383, v128[6] + v393[9] * (v136 | (v9 << 6)), v394);
    v139 = v138;
    v73 = v135;
    (v137[4])(v135, v139, v79);
    v140 = (v137[11])(v135, v79);
    if (v140 == v386)
    {
      (*v357)(v135, v394);
      v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA18, &qword_23815A660);
      v141 = *(v328 + 48);
      v142 = *v356;
      v143 = v359;
      v144 = v135;
      v145 = v371;
      (*v356)(v359, v144, v371);
      v146 = (v73 + v141);
      v147 = v355;
      v142(v355, v146, v145);
      v148 = *v360;
      v149 = v346;
      (*v360)(v346, v143, v145);
      v325 = v148;
      (v148)(v352, v147, v145);
      v150 = sub_23815291C();
      LODWORD(v327) = sub_2381550FC();
      if (os_log_type_enabled(v150, v327))
      {
        v151 = swift_slowAlloc();
        v326 = v151;
        v324 = swift_slowAlloc();
        v397[0] = v324;
        *v151 = v338;
        v152 = v149;
        v153 = v349;
        v323 = v150;
        sub_238152EAC();
        v154 = sub_238152B3C();
        v156 = v155;
        v322 = *v364;
        v322(v153, v370);
        v157 = *v368;
        (*v368)(v152, v145);
        v158 = sub_238085EAC(v154, v156, v397);
        v159 = v352;
        v160 = v158;

        v161 = v326;
        *(v326 + 1) = v160;
        *(v161 + 6) = 2080;
        sub_238152EAC();
        v162 = sub_238152B3C();
        v164 = v163;
        v322(v153, v370);
        v165 = v159;
        v79 = v157;
        v157(v165, v145);
        v166 = sub_238085EAC(v162, v164, v397);

        v167 = v326;
        *(v326 + 14) = v166;
        v168 = v323;
        _os_log_impl(&dword_238060000, v323, v327, "Changing: %s -> %s", v167, 0x16u);
        v169 = v324;
        swift_arrayDestroy();
        MEMORY[0x2383EA8A0](v169, -1, -1);
        MEMORY[0x2383EA8A0](v167, -1, -1);
      }

      else
      {

        v79 = *v368;
        (*v368)(v352, v145);
        v170 = (v79)(v149, v145);
      }

      MEMORY[0x28223BE20](v170);
      *(&v322 - 2) = v359;
      v171 = v373;

      v172 = v363;
      v327 = sub_2380A9EAC(sub_2380AF01C, (&v322 - 4), v171);
      v174 = v173;
      v363 = v172;

      v56 = v388;
      v73 = v385;
      if (v174)
      {
        v175 = v355;
        v39 = v371;
        v176 = v371;
      }

      else
      {
        sub_238152EAC();
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v373 = sub_23811D2A4(v373);
        }

        if ((v327 & 0x8000000000000000) != 0)
        {
          goto LABEL_163;
        }

        v326 = v79;
        v177 = v373;
        if (v327 >= *(v373 + 2))
        {
          goto LABEL_164;
        }

        v178 = v376;
        (*(v376 + 40))(&v373[((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v327], v345, v370);
        v396 = v177;
        swift_endAccess();
        v179 = v333;
        sub_238152EAC();
        v180 = v334;
        sub_238130414(v334);
        (*(v178 + 8))(v179, v370);
        v181 = v354;
        if ((*v353)(v180, 1, v354) == 1)
        {
          v39 = v371;
          v79 = v326;
          (v326)(v355, v371);
          sub_238071284(v180, &qword_27DEEC9F0, &qword_23815A090);
          goto LABEL_47;
        }

        v182 = v335;
        (*v347)(v335, v180, v181);
        (*v329)(v336, v182, v181);
        v183 = v337;
        v39 = v371;
        (v325)(v337, v355, v371);
        (*v374)(v183, 0, 1, v39);
        swift_beginAccess();
        sub_23809F458(v183, v336);
        swift_endAccess();
        (*v365)(v335, v354);
        v175 = v355;
        v176 = v39;
        v79 = v326;
      }

      (v79)(v175, v176);
LABEL_47:
      v184 = *(v328 + 64);
      (v79)(v359, v39);
      v185 = sub_238152E8C();
      (*(*(v185 - 8) + 8))(v73 + v184, v185);
      v130 = v9;
      v101 = v389;
      v128 = v384;
    }

    else
    {
      (*v390)(v135, v394);
      v130 = v9;
      v56 = v39;
      v128 = v384;
    }
  }

  while (1)
  {
    v9 = v130 + 1;
    if (__OFADD__(v130, 1))
    {
      goto LABEL_148;
    }

    if (v9 >= v134)
    {
      break;
    }

    v133 = *(a1 + 8 * v9);
    ++v130;
    if (v133)
    {
      v39 = v56;
      v135 = v73;
      goto LABEL_32;
    }
  }

  v186 = *(v101 + 32);
  v187 = v186 & 0x3F;
  v9 = ((1 << v186) + 63) >> 6;
  v188 = 8 * v9;

  v79 = MEMORY[0x277CD9140];
  if (v187 <= 0xD || (v189 = swift_stdlib_isStackAllocationSafe(), (v189 & 1) != 0))
  {
    v374 = v9;
    v369 = &v322;
    MEMORY[0x28223BE20](v189);
    v383 = &v322 - ((v188 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v383, v188);
    v384 = 0;
    v190 = v101;
    v191 = 0;
    v193 = *(v190 + 56);
    a1 = v190 + 56;
    v192 = v193;
    v194 = 1 << *(a1 - 24);
    v195 = -1;
    if (v194 < 64)
    {
      v195 = ~(-1 << v194);
    }

    v196 = v195 & v192;
    v197 = (v194 + 63) >> 6;
    v386 = *v79;
    while (v196)
    {
      v198 = __clz(__rbit64(v196));
      *&v385 = (v196 - 1) & v196;
LABEL_59:
      v79 = v393;
      v9 = v394;
      v39 = v198 | (v191 << 6);
      v201 = v393[2];
      v73 = v381;
      v201(v381, *(v389 + 48) + v393[9] * v39, v394);
      v202 = v382;
      v201(v382, v73, v9);
      LODWORD(v201) = (*(v79 + 88))(v202, v9);
      v203 = *(v79 + 8);
      v203(v202, v9);
      v203(v73, v9);
      v56 = v388;
      v196 = v385;
      if (v201 == v386)
      {
        *&v383[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
        v127 = __OFADD__(v384, 1);
        v384 = (v384 + 1);
        if (v127)
        {
          __break(1u);
LABEL_63:
          v39 = sub_2380AD5DC(v383, v374, v384, v389);
          goto LABEL_64;
        }
      }
    }

    v199 = v191;
    v73 = v375;
    while (1)
    {
      v191 = v199 + 1;
      if (__OFADD__(v199, 1))
      {
        goto LABEL_149;
      }

      if (v191 >= v197)
      {
        goto LABEL_63;
      }

      v200 = *(a1 + 8 * v191);
      ++v199;
      if (v200)
      {
        v198 = __clz(__rbit64(v200));
        *&v385 = (v200 - 1) & v200;
        goto LABEL_59;
      }
    }
  }

  v316 = swift_slowAlloc();
  v317 = v101;
  v318 = v363;
  v39 = sub_2380ACC48(v316, v9, v317, sub_2380A9F98, 0, sub_2380AD37C);
  v363 = v318;
  MEMORY[0x2383EA8A0](v316, -1, -1);
  v386 = *v79;
  v73 = v375;
LABEL_64:
  v205 = 0;
  v206 = v39 + 56;
  v207 = 1 << *(v39 + 32);
  v208 = -1;
  if (v207 < 64)
  {
    v208 = ~(-1 << v207);
  }

  v9 = v208 & *(v39 + 56);
  v209 = (v207 + 63) >> 6;
  *&v204 = 136315138;
  v385 = v204;
LABEL_67:
  if (v9)
  {
    v210 = v73;
    a1 = v205;
    goto LABEL_73;
  }

  while (1)
  {
    a1 = v205 + 1;
    if (__OFADD__(v205, 1))
    {
      goto LABEL_150;
    }

    if (a1 >= v209)
    {
      break;
    }

    v9 = *(v206 + 8 * a1);
    ++v205;
    if (v9)
    {
      v210 = v73;
LABEL_73:
      v211 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v212 = v393;
      v79 = v394;
      v213 = v380;
      (v393[2])(v380, *(v39 + 48) + v393[9] * (v211 | (a1 << 6)), v394);
      (v212[4])(v210, v213, v79);
      v214 = v212[11];
      v73 = v210;
      v215 = v214(v210, v79);
      if (v215 == v386)
      {
        (*v357)(v210, v394);
        v216 = v361;
        v217 = v371;
        (*v356)(v361, v73, v371);
        v218 = v344;
        (*v360)(v344, v216, v217);
        v219 = sub_23815291C();
        v220 = sub_2381550FC();
        v221 = os_log_type_enabled(v219, v220);
        v383 = v39;
        if (v221)
        {
          v222 = swift_slowAlloc();
          v384 = swift_slowAlloc();
          v397[0] = v384;
          *v222 = v385;
          v223 = v349;
          LODWORD(v381) = v220;
          sub_238152EAC();
          v374 = sub_238152B3C();
          v224 = v218;
          v226 = v225;
          (*v364)(v223, v370);
          v382 = *v368;
          (v382)(v224, v217);
          v227 = sub_238085EAC(v374, v226, v397);

          *(v222 + 4) = v227;
          _os_log_impl(&dword_238060000, v219, v381, "Lost device %s", v222, 0xCu);
          v228 = v384;
          v229 = __swift_destroy_boxed_opaque_existential_1(v384);
          MEMORY[0x2383EA8A0](v228, -1, -1, v229);
          MEMORY[0x2383EA8A0](v222, -1, -1);
        }

        else
        {

          v382 = *v368;
          v230 = (v382)(v218, v217);
        }

        v384 = &v322;
        MEMORY[0x28223BE20](v230);
        *(&v322 - 2) = v361;
        swift_beginAccess();
        v231 = v363;
        v232 = sub_2380ACFD8(sub_2380AF4D4, (&v322 - 4));
        v56 = v388;
        if (v231)
        {
          swift_endAccess();

          __break(1u);
          return;
        }

        v233 = v396;
        v234 = *(v396 + 16);
        if (v234 < v232)
        {
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
        }

        if (v232 < 0)
        {
          goto LABEL_161;
        }

        v363 = 0;
        v381 = (v234 - v232);
        v374 = (v232 - v234);
        v235 = v232;
        if (__OFADD__(v234, v232 - v234))
        {
          goto LABEL_162;
        }

        v236 = v232;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v235 > *(v233 + 3) >> 1)
        {
          if (v234 <= v235)
          {
            v238 = v235;
          }

          else
          {
            v238 = v234;
          }

          v233 = sub_2380BB68C(isUniquelyReferenced_nonNull_native, v238, 1, v233);
        }

        v239 = &v233[(*(v376 + 80) + 32) & ~*(v376 + 80)];
        v369 = *(v376 + 72);
        v79 = v369 * v236;
        v373 = &v239[v369 * v236];
        swift_arrayDestroy();
        if (v234 != v236)
        {
          if (v79 < v369 * v234 || v373 >= &v239[v369 * v234 + (*(v233 + 2) - v234) * v369])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v79 != v369 * v234)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v240 = *(v233 + 2);
          v127 = __OFADD__(v240, v374);
          v241 = &v374[v240];
          if (v127)
          {
            goto LABEL_165;
          }

          *(v233 + 2) = v241;
        }

        v373 = v233;
        v396 = v233;
        swift_endAccess();
        v242 = v342;
        sub_238152EAC();
        v243 = v343;
        sub_238130414(v343);
        (*v364)(v242, v370);
        v244 = v354;
        if ((*v353)(v243, 1, v354) == 1)
        {
          sub_238071284(v243, &qword_27DEEC9F0, &qword_23815A090);
        }

        else
        {
          v79 = v332;
          (*v347)(v332, v243, v244);
          swift_beginAccess();
          v245 = v337;
          sub_2380F1B10(v79);
          swift_endAccess();
          sub_238071284(v245, &qword_27DEEBA10, &qword_23815D910);
          (*v365)(v79, v244);
        }

        (v382)(v361, v371);
        v205 = a1;
        v73 = v375;
        v39 = v383;
      }

      else
      {
        (*v390)(v210, v394);
        v205 = a1;
      }

      goto LABEL_67;
    }
  }

  v246 = v389;
  v247 = *(v389 + 32);
  v248 = v247 & 0x3F;
  v249 = ((1 << v247) + 63) >> 6;
  v250 = 8 * v249;

  v79 = MEMORY[0x277CD9130];
  if (v248 <= 0xD || (v251 = swift_stdlib_isStackAllocationSafe(), (v251 & 1) != 0))
  {
    v382 = v249;
    v381 = &v322;
    MEMORY[0x28223BE20](v251);
    v383 = &v322 - ((v250 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v383, v250);
    v384 = 0;
    v252 = 0;
    v254 = *(v246 + 56);
    a1 = v246 + 56;
    v253 = v254;
    v255 = 1 << *(a1 - 24);
    v256 = -1;
    if (v255 < 64)
    {
      v256 = ~(-1 << v255);
    }

    v257 = v256 & v253;
    v9 = (v255 + 63) >> 6;
    v386 = *v79;
    while (1)
    {
      if (v257)
      {
        v79 = v394;
        *&v385 = (v257 - 1) & v257;
        v258 = __clz(__rbit64(v257)) | (v252 << 6);
        v259 = v389;
      }

      else
      {
        v260 = v252;
        v259 = v389;
        do
        {
          v252 = v260 + 1;
          if (__OFADD__(v260, 1))
          {
            goto LABEL_151;
          }

          if (v252 >= v9)
          {
            goto LABEL_115;
          }

          v261 = *(a1 + 8 * v252);
          ++v260;
        }

        while (!v261);
        v79 = v394;
        *&v385 = (v261 - 1) & v261;
        v258 = __clz(__rbit64(v261)) | (v252 << 6);
      }

      v262 = v393;
      v39 = v258;
      v263 = v393[2];
      v73 = v378;
      v263(v378, *(v259 + 48) + v393[9] * v258, v79);
      v264 = v379;
      v263(v379, v73, v79);
      LODWORD(v263) = (v262[11])(v264, v79);
      v265 = v262[1];
      v265(v264, v79);
      v265(v73, v79);
      v56 = v388;
      v257 = v385;
      if (v263 == v386)
      {
        *&v383[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
        v127 = __OFADD__(v384, 1);
        v384 = (v384 + 1);
        if (v127)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_115:
    v266 = sub_2380AD5DC(v383, v382, v384, v259);
  }

  else
  {
    v319 = swift_slowAlloc();
    v320 = v363;
    v321 = sub_2380ACC48(v319, v249, v246, sub_2380AA480, 0, sub_2380AD37C);
    v363 = v320;
    MEMORY[0x2383EA8A0](v319, -1, -1);
    v266 = v321;
    v386 = *v79;
  }

  v267 = 0;
  v268 = v266 + 7;
  v269 = 1 << *(v266 + 32);
  v270 = -1;
  if (v269 < 64)
  {
    v270 = ~(-1 << v269);
  }

  a1 = v270 & v266[7];
  v271 = (v269 + 63) >> 6;
  v389 = v376 + 32;
  v272 = v367;
  while (a1)
  {
    v273 = v267;
LABEL_124:
    v274 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v9 = v266;
    v73 = v393;
    v79 = v394;
    v39 = v377;
    (v393[2])(v377, v266[6] + v393[9] * (v274 | (v273 << 6)), v394);
    (v73[4].isa)(v56, v39, v79);
    v275 = (v73[11].isa)(v56, v79);
    if (v275 == v386)
    {
      (*v357)(v56, v394);
      v276 = v358;
      v277 = v56;
      v278 = v371;
      (*v356)(v358, v277, v371);
      v279 = *v360;
      (*v360)(v350, v276, v278);
      v383 = v279;
      (v279)(v272, v276, v278);
      v280 = v272;
      v281 = sub_23815291C();
      v282 = sub_2381550FC();
      if (os_log_type_enabled(v281, v282))
      {
        v283 = swift_slowAlloc();
        v384 = v283;
        v382 = swift_slowAlloc();
        v397[0] = v382;
        *v283 = v338;
        v284 = v350;
        v285 = v349;
        v381 = v281;
        sub_238152EAC();
        v379 = sub_238152B3C();
        v287 = v286;
        LODWORD(v380) = v282;
        *&v385 = *v364;
        (v385)(v285, v370);
        v288 = *v368;
        (*v368)(v284, v371);
        v289 = sub_238085EAC(v379, v287, v397);

        v290 = v384;
        *(v384 + 4) = v289;
        *(v290 + 6) = 2080;
        v291 = v330;
        v292 = v367;
        sub_238152EAC();
        v379 = sub_238152B8C();
        v294 = v293;
        (v385)(v291, v370);
        if (v294)
        {
          v295 = v379;
        }

        else
        {
          v295 = 0;
        }

        if (!v294)
        {
          v294 = 0xE000000000000000;
        }

        *&v385 = v288;
        v288(v292, v371);
        v296 = sub_238085EAC(v295, v294, v397);

        v297 = v384;
        *(v384 + 14) = v296;
        v298 = v381;
        _os_log_impl(&dword_238060000, v381, v380, "Found new device %s - deviceID: %s", v297, 0x16u);
        v299 = v382;
        swift_arrayDestroy();
        MEMORY[0x2383EA8A0](v299, -1, -1);
        MEMORY[0x2383EA8A0](v297, -1, -1);
      }

      else
      {

        v300 = *v368;
        (*v368)(v280, v278);
        *&v385 = v300;
        v300(v350, v278);
      }

      v301 = v373;
      sub_238152EAC();
      swift_beginAccess();
      v302 = swift_isUniquelyReferenced_nonNull_native();
      v384 = v9;
      if ((v302 & 1) == 0)
      {
        v301 = sub_2380BB68C(0, *(v301 + 2) + 1, 1, v301);
      }

      v304 = *(v301 + 2);
      v303 = *(v301 + 3);
      if (v304 >= v303 >> 1)
      {
        v301 = sub_2380BB68C((v303 > 1), v304 + 1, 1, v301);
      }

      *(v301 + 2) = v304 + 1;
      v305 = v376;
      v79 = v370;
      (*(v376 + 32))(&v301[((*(v305 + 80) + 32) & ~*(v305 + 80)) + *(v305 + 72) * v304], v351, v370);
      v373 = v301;
      v396 = v301;
      swift_endAccess();
      v306 = v340;
      v73 = v358;
      sub_238152EAC();
      v9 = v341;
      sub_238130414(v341);
      (*(v305 + 8))(v306, v79);
      v39 = v354;
      if ((*v353)(v9, 1, v354) == 1)
      {
        (v385)(v73, v371);
        sub_238071284(v9, &qword_27DEEC9F0, &qword_23815A090);
      }

      else
      {
        v79 = v331;
        (*v347)(v331, v9, v39);
        (v383)(v339, v73, v371);
        v9 = v366;
        v307 = v348;
        swift_beginAccess();
        v308 = swift_isUniquelyReferenced_nonNull_native();
        v395 = *(v9 + v307);
        *(v9 + v307) = 0x8000000000000000;
        sub_2380C755C(v339, v79, v308);
        *(v9 + v307) = v395;
        swift_endAccess();
        (*v365)(v79, v39);
        (v385)(v73, v371);
      }

      v267 = v273;
      v272 = v367;
      v56 = v388;
      v266 = v384;
    }

    else
    {
      (*v390)(v56, v394);
      v267 = v273;
      v266 = v9;
    }
  }

  while (1)
  {
    v273 = v267 + 1;
    if (__OFADD__(v267, 1))
    {
      goto LABEL_152;
    }

    if (v273 >= v271)
    {
      break;
    }

    a1 = v268[v273];
    ++v267;
    if (a1)
    {
      goto LABEL_124;
    }
  }

  v309 = v362;
  v310 = v373;
  if (*(v362 + 16) != *(v373 + 2))
  {

    v311 = sub_23815291C();
    v312 = sub_2381550DC();
    if (os_log_type_enabled(v311, v312))
    {
      v313 = swift_slowAlloc();
      *v313 = 134218240;
      *(v313 + 4) = *(v309 + 16);

      *(v313 + 12) = 2048;
      *(v313 + 14) = *(v310 + 2);
      _os_log_impl(&dword_238060000, v311, v312, "Network endpoints count (%ld) does not match updated endpoints count (%ld)", v313, 0x16u);
      MEMORY[0x2383EA8A0](v313, -1, -1);
    }

    else
    {
    }
  }

  v397[0] = v310;

  sub_238152A1C();

  swift_getKeyPath();
  swift_getKeyPath();
  v397[0] = v310;

  sub_238152A9C();
}

uint64_t sub_2380A8BA4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v18 - v3;
  if (qword_27DEEA058 != -1)
  {
    swift_once();
  }

  v5 = sub_23815293C();
  __swift_project_value_buffer(v5, qword_27DEEB790);
  v6 = sub_23815291C();
  v7 = sub_2381550FC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_238060000, v6, v7, "Stopping browser", v8, 2u);
    MEMORY[0x2383EA8A0](v8, -1, -1);
  }

  v9 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browser;
  if (*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browser))
  {

    sub_238152ECC();
  }

  *(v1 + v9) = 0;

  v10 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_boopBrowser;
  v11 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_boopBrowser);
  if (v11)
  {
    v12 = sub_238154FBC();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v11;

    sub_2380D2A4C(0, 0, v4, &unk_23815A5F0, v13);
  }

  *(v1 + v10) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = sub_238152A7C();
  v15 = MEMORY[0x277D84F90];
  *v16 = MEMORY[0x277D84F90];

  v14(v18, 0);

  v18[0] = v15;
  return sub_238152A1C();
}

uint64_t sub_2380A8E50(uint64_t a1, uint64_t a2)
{
  v3 = sub_2381527EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA28, &qword_23815A668);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  sub_238130414(&v25 - v16);
  (*(v4 + 16))(v15, a2, v3);
  (*(v4 + 56))(v15, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_2380712E4(v17, v9, &qword_27DEEC9F0, &qword_23815A090);
  sub_2380712E4(v15, &v9[v18], &qword_27DEEC9F0, &qword_23815A090);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) != 1)
  {
    sub_2380712E4(v9, v26, &qword_27DEEC9F0, &qword_23815A090);
    if (v19(&v9[v18], 1, v3) != 1)
    {
      v21 = &v9[v18];
      v22 = v25;
      (*(v4 + 32))(v25, v21, v3);
      sub_2380ABF30(&qword_27DEEBA30, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v20 = sub_238154C7C();
      v23 = *(v4 + 8);
      v23(v22, v3);
      sub_238071284(v15, &qword_27DEEC9F0, &qword_23815A090);
      sub_238071284(v17, &qword_27DEEC9F0, &qword_23815A090);
      v23(v26, v3);
      sub_238071284(v9, &qword_27DEEC9F0, &qword_23815A090);
      return v20 & 1;
    }

    sub_238071284(v15, &qword_27DEEC9F0, &qword_23815A090);
    sub_238071284(v17, &qword_27DEEC9F0, &qword_23815A090);
    (*(v4 + 8))(v26, v3);
    goto LABEL_6;
  }

  sub_238071284(v15, &qword_27DEEC9F0, &qword_23815A090);
  sub_238071284(v17, &qword_27DEEC9F0, &qword_23815A090);
  if (v19(&v9[v18], 1, v3) != 1)
  {
LABEL_6:
    sub_238071284(v9, &qword_27DEEBA28, &qword_23815A668);
    v20 = 0;
    return v20 & 1;
  }

  sub_238071284(v9, &qword_27DEEC9F0, &qword_23815A090);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_2380A92A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserResults;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_2380E6AE8(a1), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = sub_238152EBC();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a2, v10 + *(v12 + 72) * v9, v11);
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  else
  {
    v13 = sub_238152EBC();
    (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  return swift_endAccess();
}

double sub_2380A940C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18[-v5];
  v7 = type metadata accessor for DecorationIdentifier(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v19 = a1;
  sub_2380A9774(sub_2380AF114, v18, v20[0]);
  v11 = v10;

  if (v11)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = *(v7 + 20);
    v15 = sub_2381527EC();
    (*(*(v15 - 8) + 16))(&v9[v14], a1, v15);
    sub_2380AF0AC(a2, v6, type metadata accessor for _DDNodeDecoration);
    v16 = type metadata accessor for _DDNodeDecoration(0);
    (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = sub_238152A7C();
    sub_23809F684(v6, v9);
    v17(v20, 0);
  }

  return result;
}

BOOL sub_2380A96CC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DecorationIdentifier(0);
  sub_2381527EC();
  sub_2380ABF30(&qword_27DEEBA30, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return (sub_238154C7C() & 1) == 0;
}

void sub_2380A9774(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v5 = type metadata accessor for DecorationIdentifier(0);
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
LABEL_9:
    sub_2380AF0AC(*(a3 + 48) + *(v16 + 72) * (__clz(__rbit64(v10)) | (v12 << 6)), v7, type metadata accessor for DecorationIdentifier);
    v14 = v17(v7);
    sub_2380AF04C(v7, type metadata accessor for DecorationIdentifier);
    if (!v3)
    {
      v10 &= v10 - 1;
      if (v14)
      {
        continue;
      }
    }

LABEL_11:

    return;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_11;
    }

    v10 = *(a3 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_2380A9944(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v22 = a1;
  v3 = type metadata accessor for DecorationIdentifier(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  v11 = *(v10 - 8);
  v23 = *(v11 + 56);
  v24 = v11 + 56;
  v23(v6, 1, 1, v10);
  v12 = *(v4 + 28);
  v13 = sub_2381527EC();
  v21 = *(*(v13 - 8) + 16);
  v21(&v6[v12], a1, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = sub_238152A7C();
  sub_2380F1B0C();
  sub_2380AF04C(v6, type metadata accessor for DecorationIdentifier);
  sub_238071284(v9, &qword_27DEEBA48, &qword_23815BF00);
  v14(v26, 0);

  v15 = type metadata accessor for _DDNodeDecoration(0);
  v16 = *(v15 + 24);
  v17 = sub_2381536AC();
  v18 = v25;
  (*(*(v17 - 8) + 16))(v6, v25 + v16, v17);
  v23(v6, 0, 1, v10);
  v21(&v6[*(v4 + 28)], v22, v13);
  sub_2380AF0AC(v18, v9, type metadata accessor for _DDNodeDecoration);
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = sub_238152A7C();
  sub_23809F684(v9, v6);
  v19(v26, 0);

  return result;
}

BOOL sub_2380A9CBC(uint64_t a1)
{
  v2 = sub_238152E9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  v7 = *MEMORY[0x277CD9138];
  if (v6 == *MEMORY[0x277CD9138])
  {
    (*(v3 + 96))(v5, v2);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA18, &qword_23815A660);
    v9 = *(v8 + 48);
    v10 = *(v8 + 64);
    v11 = sub_238152E8C();
    (*(*(v11 - 8) + 8))(&v5[v10], v11);
    v12 = sub_238152EBC();
    v13 = *(*(v12 - 8) + 8);
    v13(&v5[v9], v12);
    v13(v5, v12);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }

  return v6 == v7;
}

uint64_t sub_2380A9EAC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_238152BAC() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2380A9FBC(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v2 = sub_2381527EC();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA28, &qword_23815A668);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = sub_238152BAC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v35 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  sub_238130414(&v30 - v18);
  sub_238152EAC();
  sub_238130414(v17);
  (*(v9 + 8))(v11, v8);
  v20 = *(v5 + 56);
  sub_2380712E4(v19, v7, &qword_27DEEC9F0, &qword_23815A090);
  v21 = v34;
  sub_2380712E4(v17, &v7[v20], &qword_27DEEC9F0, &qword_23815A090);
  v22 = v33;
  v23 = *(v33 + 48);
  if (v23(v7, 1, v21) != 1)
  {
    sub_2380712E4(v7, v35, &qword_27DEEC9F0, &qword_23815A090);
    if (v23(&v7[v20], 1, v21) != 1)
    {
      v25 = v22;
      v26 = &v7[v20];
      v27 = v31;
      (*(v22 + 32))(v31, v26, v21);
      sub_2380ABF30(&qword_27DEEBA30, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v24 = sub_238154C7C();
      v28 = *(v25 + 8);
      v28(v27, v21);
      sub_238071284(v17, &qword_27DEEC9F0, &qword_23815A090);
      sub_238071284(v19, &qword_27DEEC9F0, &qword_23815A090);
      v28(v35, v21);
      sub_238071284(v7, &qword_27DEEC9F0, &qword_23815A090);
      return v24 & 1;
    }

    sub_238071284(v17, &qword_27DEEC9F0, &qword_23815A090);
    sub_238071284(v19, &qword_27DEEC9F0, &qword_23815A090);
    (*(v22 + 8))(v35, v21);
    goto LABEL_6;
  }

  sub_238071284(v17, &qword_27DEEC9F0, &qword_23815A090);
  sub_238071284(v19, &qword_27DEEC9F0, &qword_23815A090);
  if (v23(&v7[v20], 1, v21) != 1)
  {
LABEL_6:
    sub_238071284(v7, &qword_27DEEBA28, &qword_23815A668);
    v24 = 0;
    return v24 & 1;
  }

  sub_238071284(v7, &qword_27DEEC9F0, &qword_23815A090);
  v24 = 1;
  return v24 & 1;
}

BOOL sub_2380AA4A4(uint64_t a1, _DWORD *a2)
{
  v4 = sub_238152E9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4) == *a2;
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_2380AA5C0()
{

  v1 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_airdropOpenedAt;
  v2 = sub_23815278C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browseDescriptor;
  v4 = sub_238152E1C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__decorations;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9C8, &qword_23815A5B0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__hints;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9D0, &qword_23815A5B8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__endpoints;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9D8, &unk_23815A5C0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__shouldPauseUpdate;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v11, v12);
  v14 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodes;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E8, &unk_23815A5D0);
  v16 = *(*(v15 - 8) + 8);
  v16(v0 + v14, v15);
  v16(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfSameAccount, v15);
  v16(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfPeople, v15);
  v16(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfOthers, v15);
  v16(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfUnpaired, v15);
  v16(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfPaired, v15);
  v16(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__nodesOfAll, v15);
  v17 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__boopEndpoint;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9F0, &unk_23815EA80);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v13(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__isPreviewVisible, v12);
  v19 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel__scrollTarget;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9F8, &unk_23815A5E0);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2380AA9F8()
{
  sub_2380AA5C0();

  return swift_deallocClassInstance();
}

void sub_2380AAA78(uint64_t a1)
{
  sub_23815278C();
  if (v1 <= 0x3F)
  {
    sub_238152E1C();
    if (v2 <= 0x3F)
    {
      sub_2380AAE3C(319, &qword_27DEEB868, &qword_27DEEB870, &qword_23815A068);
      if (v3 <= 0x3F)
      {
        sub_2380AAE3C(319, &qword_27DEEB878, &qword_27DEEB880, &qword_23815A070);
        if (v4 <= 0x3F)
        {
          sub_2380AAE3C(319, &qword_27DEEB888, &qword_27DEEB890, &qword_23815A078);
          if (v5 <= 0x3F)
          {
            sub_2380AADEC();
            if (v6 <= 0x3F)
            {
              sub_2380AAE3C(319, &qword_27DEEB8A0, &qword_27DEEB8A8, &unk_23815A080);
              if (v7 <= 0x3F)
              {
                sub_2380AAE3C(319, &unk_27DEEB8B0, &unk_27DEED890, &qword_2381593F0);
                if (v8 <= 0x3F)
                {
                  sub_2380AAE3C(319, &unk_27DEEB8C0, &qword_27DEEC9F0, &qword_23815A090);
                  if (v9 <= 0x3F)
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
  }
}

void sub_2380AADEC()
{
  if (!qword_27DEEB898)
  {
    v0 = sub_238152AAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEB898);
    }
  }
}

void sub_2380AAE3C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_238152AAC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2380AAE90@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2381529DC();
  *a2 = result;
  return result;
}

double sub_2380AAEE0()
{
  v1 = v0;
  if (qword_27DEEA058 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEB790);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "Drop Entered: shouldPauseUpdate = true", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  sub_2380AB424();
  sub_23815484C();
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 56) = 0;
  v8 = *(v1 + 64);

  v8(1);

  return result;
}

uint64_t sub_2380AB00C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23815391C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 56) & 1) == 0)
  {
    v9 = *(v1 + 40);
    v8 = *(v1 + 48);
    sub_23815484C();
    if (sqrt((v9 - v10) * (v9 - v10) + (v8 - v11) * (v8 - v11)) > 5.0)
    {
      if (qword_27DEEA058 != -1)
      {
        swift_once();
      }

      v12 = sub_23815293C();
      __swift_project_value_buffer(v12, qword_27DEEB790);
      v13 = sub_23815291C();
      v14 = sub_2381550FC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_238060000, v13, v14, "Significant movement detected, reset timer", v15, 2u);
        MEMORY[0x2383EA8A0](v15, -1, -1);
      }

      sub_2380AB424();
      sub_23815484C();
      *(v2 + 40) = v16;
      *(v2 + 48) = v17;
      *(v2 + 56) = 0;
    }
  }

  (*(v5 + 104))(v7, *MEMORY[0x277CDD860], v4);
  sub_23815386C();
  v18 = sub_23815387C();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_2380AB24C()
{
  if (*(v0 + 32))
  {

    sub_2381529BC();
  }

  *(v0 + 32) = 0;

  v1 = *(v0 + 64);

  v1(0);

  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  return 0;
}

void sub_2380AB2D4()
{
  if (*(v0 + 32))
  {

    sub_2381529BC();
  }

  *(v0 + 32) = 0;

  v1 = *(v0 + 64);

  v1(0);

  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  if (qword_27DEEA058 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEB790);
  oslog = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, oslog, v3, "Drop Exited: shouldPauseUpdate = false", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }
}

double sub_2380AB424()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9A0, &qword_23815A5A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  if (*(v0 + 32))
  {

    sub_2381529BC();
  }

  *(v0 + 32) = 0;

  sub_23807A3F8(0, &qword_27DEEB9A8, 0x277CBEBB8);
  v5 = [objc_opt_self() mainRunLoop];
  v6 = sub_2381552EC();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_23815520C();

  sub_238071284(v4, &qword_27DEEB9A0, &qword_23815A5A0);
  v12 = v7;
  sub_2381551FC();
  sub_2380ABF30(&qword_27DEEB9B0, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
  v8 = sub_238152A4C();

  v12 = v8;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9B8, &qword_23815A5A8);
  sub_2380711D4(&qword_27DEEB9C0, &qword_27DEEB9B8, &qword_23815A5A8, MEMORY[0x277CBCB30]);
  v9 = sub_238152AFC();

  *(v1 + 32) = v9;

  return result;
}

void sub_2380AB6B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 64);

    v3(0);
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    if (*(v4 + 32))
    {
      v5 = v4;

      sub_2381529BC();

      v4 = v5;
    }

    *(v4 + 32) = 0;
  }

  if (qword_27DEEA058 != -1)
  {
    swift_once();
  }

  v6 = sub_23815293C();
  __swift_project_value_buffer(v6, qword_27DEEB790);
  v7 = sub_23815291C();
  v8 = sub_2381550FC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_238060000, v7, v8, "Timer expired: shouldPauseUpdate = false", v9, 2u);
    MEMORY[0x2383EA8A0](v9, -1, -1);
  }
}

uint64_t sub_2380AB848()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for BrowserType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrowserType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2380ABA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TransferIDStatus(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2381527EC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2380ABB34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TransferIDStatus(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2381527EC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2380ABC50(uint64_t a1)
{
  result = type metadata accessor for TransferIDStatus(319);
  if (v2 <= 0x3F)
  {
    result = sub_2381527EC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2380ABCE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2380ABD74(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2380ABE00(uint64_t a1)
{
  sub_2380ABE58();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_2380ABE58()
{
  if (!qword_27DEEB968)
  {
    v0 = sub_2381536AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEB968);
    }
  }
}

uint64_t sub_2380ABF30(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2380ABF7C()
{
  result = qword_27DEEB980;
  if (!qword_27DEEB980)
  {
    result = swift_getWitnessTable(aU_0, &type metadata for BrowserType, v0, v1);
    atomic_store(result, &qword_27DEEB980);
  }

  return result;
}

uint64_t sub_2380AC068()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7, v1);
}

void sub_2380AC0A8(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
}

uint64_t sub_2380AC12C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

void sub_2380AC1DC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
}

uint64_t sub_2380AC25C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

double sub_2380AC2D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return result;
}

uint64_t sub_2380AC354(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED890, &qword_2381593F0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_2380712E4(a1, &v10 - v7, &unk_27DEED890, &qword_2381593F0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2380712E4(v8, v6, &unk_27DEED890, &qword_2381593F0);

  sub_238152A9C();
  return sub_238071284(v8, &unk_27DEED890, &qword_2381593F0);
}

uint64_t sub_2380AC484(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_2381536AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TransferIDStatus(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23815568C();
  sub_2380AF0AC(a1, v12, type metadata accessor for TransferIDStatus);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    MEMORY[0x2383E9CD0](1);
    sub_2380ABF30(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
    sub_238154C4C();
    (*(v7 + 8))(v9, v6);
  }

  v14 = type metadata accessor for DecorationIdentifier(0);
  sub_2381527EC();
  sub_2380ABF30(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_238154C4C();
  sub_2381556BC();
  v15 = sub_2381553AC();
  *(a3 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
  sub_2380AF410(a1, a3[6] + *(*(v14 - 8) + 72) * v15, type metadata accessor for DecorationIdentifier);
  v16 = a3[7];
  v17 = type metadata accessor for _DDNodeDecoration(0);
  result = sub_2380AF410(a2, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for _DDNodeDecoration);
  ++a3[2];
  return result;
}

void *sub_2380AC7D0(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v10 = v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_2380AC964(v10, v8, a3, v6);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_2380ACC48(v12, v8, a3, v6, a2, sub_2380AC964);
  result = MEMORY[0x2383EA8A0](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

void *sub_2380AC964(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *))
{
  v37 = a4;
  v30 = a2;
  v31 = a1;
  v5 = type metadata accessor for _DDNodeDecoration(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DecorationIdentifier(0);
  v34 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7 - 8);
  v32 = 0;
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v38 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v39 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v38;
    v23 = v33;
    sub_2380AF0AC(v38[6] + *(v34 + 72) * v21, v33, type metadata accessor for DecorationIdentifier);
    v24 = v21;
    v25 = v22[7] + *(v36 + 72) * v21;
    v26 = v35;
    sub_2380AF0AC(v25, v35, type metadata accessor for _DDNodeDecoration);
    v27 = v40;
    v28 = v37(v23, v26);
    sub_2380AF04C(v26, type metadata accessor for _DDNodeDecoration);
    result = sub_2380AF04C(v23, type metadata accessor for DecorationIdentifier);
    v40 = v27;
    if (v27)
    {
      return result;
    }

    v16 = v39;
    if (v28)
    {
      *(v31 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
        return sub_2380ACCE8(v31, v30, v32, v38);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_2380ACCE8(v31, v30, v32, v38);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v39 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_2380ACC48(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

void *sub_2380ACCE8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for _DDNodeDecoration(0);
  v31 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = type metadata accessor for DecorationIdentifier(0);
  v29 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC0B0, &unk_23815B5F0);
  result = sub_23815552C();
  v28 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
LABEL_16:
    v25 = v22 | (v21 << 6);
    sub_2380AF0AC(a4[6] + *(v29 + 72) * v25, v18, type metadata accessor for DecorationIdentifier);
    sub_2380AF0AC(a4[7] + *(v31 + 72) * v25, v12, type metadata accessor for _DDNodeDecoration);
    sub_2380AF410(v18, v16, type metadata accessor for DecorationIdentifier);
    v26 = v30;
    sub_2380AF410(v12, v30, type metadata accessor for _DDNodeDecoration);
    result = sub_2380AC484(v16, v26, v28);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    if (!a3)
    {
      return v28;
    }
  }

  v23 = v21;
  while (1)
  {
    v21 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v28;
    }

    v24 = a1[v21];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v20 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2380ACFD8(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_238152BAC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = *v2;
  v16 = v53;
  result = sub_2380A9EAC(a1, a2, *v2);
  if (!v16)
  {
    v49 = v14;
    v53 = 0;
    if (v18)
    {
      return *(v15 + 16);
    }

    v19 = v5;
    v41 = v9;
    v42 = v12;
    v46 = a1;
    v40 = v2;
    v51 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v15;
      v23 = (v15 + 16);
      v22 = *(v15 + 16);
      v24 = v49;
      if (v20 == v22)
      {
        return v51;
      }

      v25 = v19;
      v48 = v6 + 16;
      v44 = v6;
      v45 = (v6 + 8);
      v39 = (v6 + 40);
      v43 = a2;
      while (v20 < v22)
      {
        v26 = *(v6 + 80);
        v52 = v21;
        v47 = (v26 + 32) & ~v26;
        v27 = v21 + v47;
        v28 = *(v6 + 72);
        v29 = *(v6 + 16);
        v50 = v28 * v20;
        v29(v24, &v27[v28 * v20], v25);
        v30 = v53;
        v31 = v46(v24);
        v53 = v30;
        if (v30)
        {
          return (*v45)(v24, v25);
        }

        v32 = v31;
        result = (*v45)(v24, v25);
        if (v32)
        {
          v6 = v44;
          v24 = v49;
          v21 = v52;
        }

        else
        {
          v33 = v51;
          if (v20 == v51)
          {
            v6 = v44;
            v24 = v49;
            v21 = v52;
          }

          else
          {
            if ((v51 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v34 = *v23;
            if (v51 >= v34)
            {
              goto LABEL_27;
            }

            v35 = v28 * v51;
            result = (v29)(v42, &v27[v35], v25);
            if (v20 >= v34)
            {
              goto LABEL_28;
            }

            v36 = v41;
            v29(v41, &v27[v50], v25);
            v21 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_23811D2A4(v21);
            }

            v37 = v21 + v47;
            v38 = *v39;
            result = (*v39)(v21 + v47 + v35, v36, v25);
            v6 = v44;
            if (v20 >= v21[2])
            {
              goto LABEL_29;
            }

            result = v38(&v37[v50], v42, v25);
            *v40 = v21;
            v33 = v51;
            v24 = v49;
          }

          v51 = v33 + 1;
        }

        ++v20;
        v23 = v21 + 2;
        v22 = v21[2];
        if (v20 == v22)
        {
          return v51;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2380AD37C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_238152E9C();
  result = MEMORY[0x28223BE20](v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v7 + 16;
  v34 = v7;
  v31 = 0;
  v32 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      return (*v32)(v20, v19);
    }

    v25 = v23;
    result = (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;

        return sub_2380AD5DC(v30, v29, v31, v27);
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2380AD5DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_238152E9C();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA38, &qword_23815A670);
  result = sub_2381553FC();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_2380ABF30(&qword_27DEEBA40, MEMORY[0x277CD9150], MEMORY[0x277CD9158]);
    result = sub_238154C3C();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2380AD904(uint64_t a1, uint64_t a2)
{
  v4 = sub_2381536AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TransferIDStatus(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB998, &qword_23815A550);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_2380AF0AC(a1, &v21 - v13, type metadata accessor for TransferIDStatus);
  sub_2380AF0AC(a2, &v14[v15], type metadata accessor for TransferIDStatus);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v14, 1, v16) != 1)
  {
    sub_2380AF0AC(v14, v10, type metadata accessor for TransferIDStatus);
    if (v17(&v14[v15], 1, v16) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = sub_2381527AC();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_2380AF04C(v14, type metadata accessor for TransferIDStatus);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v15], 1, v16) != 1)
  {
LABEL_6:
    sub_238071284(v14, &qword_27DEEB998, &qword_23815A550);
    v18 = 0;
    return v18 & 1;
  }

  sub_2380AF04C(v14, type metadata accessor for TransferIDStatus);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_2380ADC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_2381536AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TransferIDStatus(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB998, &qword_23815A550);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v22 - v13;
  v15 = *(v12 + 56);
  sub_2380AF0AC(a1, v22 - v13, type metadata accessor for TransferIDStatus);
  v22[1] = a2;
  sub_2380AF0AC(a2, &v14[v15], type metadata accessor for TransferIDStatus);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v14, 1, v16) == 1)
  {
    if (v17(&v14[v15], 1, v16) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_2380AF0AC(v14, v10, type metadata accessor for TransferIDStatus);
  if (v17(&v14[v15], 1, v16) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_238071284(v14, &qword_27DEEB998, &qword_23815A550);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, &v14[v15], v4);
  v19 = sub_2381527AC();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  if (v19)
  {
LABEL_9:
    sub_2380AF04C(v14, type metadata accessor for TransferIDStatus);
    type metadata accessor for DecorationIdentifier(0);
    v18 = sub_2381527AC();
    return v18 & 1;
  }

  sub_2380AF04C(v14, type metadata accessor for TransferIDStatus);
LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_2380ADF54(uint64_t a1)
{
  v2 = sub_238152E1C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - v7;
  if (qword_27DEEA058 != -1)
  {
    swift_once();
  }

  v9 = sub_23815293C();
  v10 = __swift_project_value_buffer(v9, qword_27DEEB790);
  v55 = *(v3 + 16);
  v56 = v3 + 16;
  v55(v8, a1, v2);
  v57 = v10;
  v11 = sub_23815291C();
  v12 = sub_2381550FC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v6;
    v58 = v52;
    *v13 = 136315138;
    v14 = [sub_238152D6C() description];
    swift_unknownObjectRelease();
    v15 = sub_238154CCC();
    v16 = a1;
    v17 = v2;
    v18 = v3;
    v20 = v19;

    v54 = *(v18 + 8);
    v54(v8, v17);
    v21 = sub_238085EAC(v15, v20, &v58);
    v3 = v18;
    v2 = v17;
    a1 = v16;

    *(v13 + 4) = v21;
    _os_log_impl(&dword_238060000, v11, v12, "Getting browserType for descriptor: %s", v13, 0xCu);
    v22 = v52;
    v23 = __swift_destroy_boxed_opaque_existential_1(v52);
    v6 = v53;
    MEMORY[0x2383EA8A0](v22, -1, -1, v23);
    MEMORY[0x2383EA8A0](v13, -1, -1);
  }

  else
  {

    v54 = *(v3 + 8);
    v54(v8, v2);
  }

  v24 = sub_238152D6C();
  application_service_name = nw_browse_descriptor_get_application_service_name(v24);
  swift_unknownObjectRelease();
  if (application_service_name)
  {
    v26 = sub_238152D6C();
    result = nw_browse_descriptor_get_application_service_name(v26);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v28 = sub_238154DEC();
    v30 = v29;
    v31 = sub_23815291C();
    v32 = sub_2381550FC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v53 = v26;
      v35 = v3;
      v36 = v34;
      v58 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_238085EAC(v28, v30, &v58);
      _os_log_impl(&dword_238060000, v31, v32, "Got serviceName: %s", v33, 0xCu);
      v37 = __swift_destroy_boxed_opaque_existential_1(v36);
      v38 = v36;
      v3 = v35;
      MEMORY[0x2383EA8A0](v38, -1, -1, v37);
      MEMORY[0x2383EA8A0](v33, -1, -1);
    }

    if (v28 == 0x706F7264726961 && v30 == 0xE700000000000000)
    {

LABEL_14:
      v40 = sub_23815291C();
      v41 = sub_2381550FC();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_238060000, v40, v41, "Got .airdrop", v42, 2u);
        MEMORY[0x2383EA8A0](v42, -1, -1);
      }

      swift_unknownObjectRelease();
      return 0;
    }

    v39 = sub_2381555CC();

    if (v39)
    {
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

  v55(v6, a1, v2);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x277CD90A0])
  {
    (*(v3 + 96))(v6, v2);

    sub_238085CA0(*(v6 + 2), *(v6 + 3));
    v43 = sub_23815291C();
    v44 = sub_2381550FC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_238060000, v43, v44, "Got .wifiAware", v45, 2u);
      MEMORY[0x2383EA8A0](v45, -1, -1);
    }

    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBA0, &qword_23815A7B0) + 64);
    v47 = sub_238152E0C();
    (*(*(v47 - 8) + 8))(&v6[v46], v47);
    return 2;
  }

  else
  {
    v48 = sub_23815291C();
    v49 = sub_2381550FC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_238060000, v48, v49, "Got .appService", v50, 2u);
      MEMORY[0x2383EA8A0](v50, -1, -1);
    }

    v54(v6, v2);
    return 1;
  }
}

uint64_t sub_2380AE5C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for _DDNodeViewModel(0);
  v4 = MEMORY[0x28223BE20](v3);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v40 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v44 = &v40 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v49 = &v40 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v42 = &v40 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = MEMORY[0x277D84F90];
    v21 = a1 + v19;
    v22 = *(v15 + 72);
    v23 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
    v48 = MEMORY[0x277D84F90];
    v43 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_2380AF0AC(v21, v17, type metadata accessor for _DDNodeViewModel);
      v24 = &v17[*(v3 + 20)];
      v25 = v24[32];
      if (v25 > 1)
      {
        break;
      }

      if (v24[32])
      {
        goto LABEL_16;
      }

      if ((sub_238154E5C() & 1) == 0)
      {
        sub_2380AF0AC(v17, v42, type metadata accessor for _DDNodeViewModel);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v32 = v43;
        }

        else
        {
          v32 = sub_2380BB664(0, v43[2] + 1, 1, v43);
        }

        v28 = v32[2];
        v33 = v32[3];
        v29 = v28 + 1;
        if (v28 >= v33 >> 1)
        {
          v30 = sub_2380BB664((v33 > 1), v28 + 1, 1, v32);
          v31 = v42;
          v43 = v30;
        }

        else
        {
          v43 = v32;
          v30 = v32;
          v31 = v42;
        }

        goto LABEL_29;
      }

LABEL_30:
      result = sub_2380AF04C(v17, type metadata accessor for _DDNodeViewModel);
      v21 += v22;
      if (!--v18)
      {
        goto LABEL_41;
      }
    }

    if (v25 - 2 >= 2)
    {
      if (v25 == 4)
      {
        sub_2380AF0AC(v17, v46, type metadata accessor for _DDNodeViewModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2380BB664(0, v20[2] + 1, 1, v20);
        }

        v28 = v20[2];
        v35 = v20[3];
        v29 = v28 + 1;
        if (v28 >= v35 >> 1)
        {
          v30 = sub_2380BB664((v35 > 1), v28 + 1, 1, v20);
          v31 = v46;
          v20 = v30;
        }

        else
        {
          v30 = v20;
          v31 = v46;
        }
      }

      else
      {
        sub_2380AF0AC(v17, v45, type metadata accessor for _DDNodeViewModel);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v36 = v47;
        }

        else
        {
          v36 = sub_2380BB664(0, v47[2] + 1, 1, v47);
        }

        v28 = v36[2];
        v37 = v36[3];
        v29 = v28 + 1;
        if (v28 >= v37 >> 1)
        {
          v30 = sub_2380BB664((v37 > 1), v28 + 1, 1, v36);
          v31 = v45;
          v47 = v30;
        }

        else
        {
          v47 = v36;
          v30 = v36;
          v31 = v45;
        }
      }
    }

    else if (*(v24 + 4))
    {
LABEL_16:
      sub_2380AF0AC(v17, v49, type metadata accessor for _DDNodeViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_2380BB664(0, v23[2] + 1, 1, v23);
      }

      v28 = v23[2];
      v34 = v23[3];
      v29 = v28 + 1;
      if (v28 >= v34 >> 1)
      {
        v30 = sub_2380BB664((v34 > 1), v28 + 1, 1, v23);
        v31 = v49;
        v23 = v30;
      }

      else
      {
        v30 = v23;
        v31 = v49;
      }
    }

    else
    {
      sub_2380AF0AC(v17, v44, type metadata accessor for _DDNodeViewModel);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v26 = v48;
      }

      else
      {
        v26 = sub_2380BB664(0, v48[2] + 1, 1, v48);
      }

      v28 = v26[2];
      v27 = v26[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v30 = sub_2380BB664((v27 > 1), v28 + 1, 1, v26);
        v31 = v44;
        v48 = v30;
      }

      else
      {
        v48 = v26;
        v30 = v26;
        v31 = v44;
      }
    }

LABEL_29:
    v30[2] = v29;
    sub_2380AF410(v31, v30 + v19 + v28 * v22, type metadata accessor for _DDNodeViewModel);
    goto LABEL_30;
  }

  v20 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
LABEL_41:
  v38 = v41;
  *v41 = v43;
  v38[1] = v23;
  v39 = v47;
  v38[2] = v48;
  v38[3] = v39;
  v38[4] = v20;
  return result;
}

uint64_t sub_2380AEB18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED890, &qword_2381593F0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = sub_238152BAC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a1;
  (*(v9 + 104))(v11, *MEMORY[0x277CD8AF8], v8);
  swift_unknownObjectRetain();
  v12 = nw_endpoint_copy_public_keys();
  if (v12)
  {
    v13 = v12;
    sub_238154EDC();
  }

  sub_238152B1C();
  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2380712E4(v7, v5, &unk_27DEED890, &qword_2381593F0);

  sub_238152A9C();
  sub_238071284(v7, &unk_27DEED890, &qword_2381593F0);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2380AED8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238088780;

  return sub_2380FA430(a1, v4, v5, v6);
}

uint64_t sub_2380AEE50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238088780;

  return sub_2380F9DB8(a1, v4, v5, v6);
}

uint64_t sub_2380AEF04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7, v1);
}

uint64_t sub_2380AEF54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238087150;

  return sub_2380A5DCC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2380AF04C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2380AF0AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2380AF134()
{
  result = qword_27DEEBAE0;
  if (!qword_27DEEBAE0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB890, &qword_23815A078);
    v4[0] = sub_2380ABF30(&qword_27DEEBAE8, MEMORY[0x277CD8B10], MEMORY[0x277CD8B20]);
    result = swift_getWitnessTable(MEMORY[0x277D83968], v3, v4);
    atomic_store(result, &qword_27DEEBAE0);
  }

  return result;
}

unint64_t sub_2380AF1E8()
{
  result = qword_27DEEBAF8;
  if (!qword_27DEEBAF8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB870, &qword_23815A068);
    v4[0] = sub_2380ABF30(&qword_27DEEBB00, type metadata accessor for _DDNodeDecoration, protocol conformance descriptor for _DDNodeDecoration);
    result = swift_getWitnessTable(MEMORY[0x277D83518], v3, v4);
    atomic_store(result, &qword_27DEEBAF8);
  }

  return result;
}

unint64_t sub_2380AF29C()
{
  result = qword_27DEEBB10;
  if (!qword_27DEEBB10)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB880, &qword_23815A070);
    v4[0] = sub_23807D834();
    result = swift_getWitnessTable(MEMORY[0x277D83518], v3, v4);
    atomic_store(result, &qword_27DEEBB10);
  }

  return result;
}

uint64_t sub_2380AF328()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7, v1);
}

uint64_t sub_2380AF360@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

unint64_t sub_2380AF3A0()
{
  result = qword_27DEEBB58;
  if (!qword_27DEEBB58)
  {
    v3 = sub_23807A3F8(255, &qword_27DEEBA50, 0x277D85C78);
    result = swift_getWitnessTable(MEMORY[0x277D85228], v3, v0, v1);
    atomic_store(result, &qword_27DEEBB58);
  }

  return result;
}

uint64_t sub_2380AF410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2380AF508(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2381527EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_23815278C();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = sub_238152BAC();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2380AF690(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2381527EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_23815278C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_238152BAC();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for _DDNodeViewModel(uint64_t a1)
{
  result = qword_27DEEBBC8;
  if (!qword_27DEEBBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2380AF850(uint64_t a1)
{
  sub_2381527EC();
  if (v1 <= 0x3F)
  {
    sub_2380AF96C(319);
    if (v2 <= 0x3F)
    {
      sub_23815278C();
      if (v3 <= 0x3F)
      {
        sub_238152BAC();
        if (v4 <= 0x3F)
        {
          sub_2380AF9C4();
          if (v5 <= 0x3F)
          {
            type metadata accessor for _DDContactInfoCache(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for _DDAirDropMetadataCache(319);
              if (v7 <= 0x3F)
              {
                sub_238067930();
                if (v8 <= 0x3F)
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

void sub_2380AF96C(uint64_t a1)
{
  if (!qword_27DEEA788)
  {
    type metadata accessor for _DDNodeDecoration(255);
    v1 = sub_238154F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEA788);
    }
  }
}

void sub_2380AF9C4()
{
  if (!qword_27DEEBBD8)
  {
    v0 = sub_23815530C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEBBD8);
    }
  }
}

uint64_t sub_2380AFA20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2380AFA68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_2380AFAC8()
{
  v1 = type metadata accessor for _DDNodeDecoration.Kind(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for _DDNodeDecoration(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _DDNodeDecorationCombination(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + *(type metadata accessor for _DDNodeViewModel(0) + 24));
  v12 = *(v11 + 16);
  if (v12 != 1)
  {
    if (!v12)
    {
      swift_storeEnumTagMultiPayload();
      return 107;
    }

    *v10 = v11;
    swift_storeEnumTagMultiPayload();

    v15 = type metadata accessor for _DDNodeDecorationCombination;
    v16 = v10;
LABEL_22:
    sub_2380B3EB0(v16, v15);
    return 107;
  }

  sub_2380B3DB0(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v10, type metadata accessor for _DDNodeDecoration);
  swift_storeEnumTagMultiPayload();
  sub_2380B25FC(v10, v7);
  sub_2380B3DB0(v7, v3, type metadata accessor for _DDNodeDecoration.Kind);
  sub_2380B3EB0(v7, type metadata accessor for _DDNodeDecoration);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return 51;
      }

      return 107;
    }

    if (EnumCaseMultiPayload != 4)
    {
      return 53;
    }

    v17 = type metadata accessor for _DDNodeDecoration.Kind;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2380B3EB0(v3, type metadata accessor for _DDNodeDecoration.Kind);
      return 52;
    }

    else
    {
      sub_2380B3EB0(v3, type metadata accessor for _DDNodeDecoration.Kind);
      return 48;
    }
  }

  if (EnumCaseMultiPayload != 2)
  {
    v17 = type metadata accessor for _DDNodeAskRequestDecorationViewModel;
LABEL_21:
    v15 = v17;
    v16 = v3;
    goto LABEL_22;
  }

  v18 = *v3;

  if (v18)
  {
    return 49;
  }

  else
  {
    return 50;
  }
}

uint64_t sub_2380AFDEC()
{
  v1 = type metadata accessor for _DDNodeDecoration.Kind(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for _DDNodeDecoration(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _DDNodeDecorationCombination(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + *(type metadata accessor for _DDNodeViewModel(0) + 24));
  v12 = *(v11 + 16);
  if (!v12)
  {
    swift_storeEnumTagMultiPayload();
    return sub_23815463C();
  }

  if (v12 != 1)
  {
    *v10 = v11;
    swift_storeEnumTagMultiPayload();

    sub_2380B3EB0(v10, type metadata accessor for _DDNodeDecorationCombination);
    return sub_23815463C();
  }

  sub_2380B3DB0(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v10, type metadata accessor for _DDNodeDecoration);
  swift_storeEnumTagMultiPayload();
  sub_2380B25FC(v10, v7);
  sub_2380B3DB0(v7, v3, type metadata accessor for _DDNodeDecoration.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v14 = sub_2381545BC();
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (EnumCaseMultiPayload != 4)
    {
      v14 = sub_2381545AC();
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v16 = sub_23815463C();
      sub_2380B3EB0(v7, type metadata accessor for _DDNodeDecoration);
      v17 = type metadata accessor for _DDNodeAskRequestDecorationViewModel;
      v18 = v3;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_14:
    sub_2380B3EB0(v3, type metadata accessor for _DDNodeDecoration.Kind);
LABEL_16:
    v14 = sub_23815463C();
    goto LABEL_17;
  }

  sub_2380B3EB0(v3, type metadata accessor for _DDNodeDecoration.Kind);
  v14 = sub_2381545AC();
LABEL_17:
  v16 = v14;
  v17 = type metadata accessor for _DDNodeDecoration;
  v18 = v7;
LABEL_18:
  sub_2380B3EB0(v18, v17);
  return v16;
}

id sub_2380B0104(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v78 = a1;
  v79 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBA8, &unk_23815A800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v76 - v7;
  v9 = sub_23815364C();
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x28223BE20](v9);
  v77 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBF8, &unk_23815A9B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v76 - v15;
  v17 = sub_23815281C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v4[*(type metadata accessor for _DDNodeViewModel(0) + 20)];
  LODWORD(v22) = v21[32];
  if (v22 > 2)
  {
    v45 = *(v21 + 2);
    v46 = *(v21 + 3);
    v47 = *v21;
    if (v22 == 3)
    {
      v49 = *(v21 + 1);

      v79 = v4;
      sub_2380BE980(v4, v8);
      v50 = v80;
      v51 = v81;
      if ((*(v80 + 48))(v8, 1, v81) == 1)
      {
        sub_238071284(v8, &qword_27DEEBBA8, &unk_23815A800);
      }

      else
      {
        v62 = v77;
        (*(v50 + 32))();
        v63 = sub_23815363C();
        if (v64 >> 60 == 15)
        {
          (*(v50 + 8))(v62, v51);
        }

        else
        {
          v66 = v63;
          v67 = v64;
          v68 = objc_allocWithZone(MEMORY[0x277D755B8]);
          sub_238085D80(v66, v67);
          v69 = v66;
          v70 = sub_23815274C();
          v71 = [v68 initWithData_];

          v72 = sub_238087244(v69, v67);
          if (v71)
          {
            v73 = sub_23815466C();
            v74 = sub_238087244(v69, v67);
            (*(v80 + 8))(v77, v81, v74);
            return v73;
          }

          (*(v80 + 8))(v77, v81, v72);
          sub_238087244(v69, v67);
        }
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (!v21[32])
    {

      sub_23815282C();
      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {
        sub_238071284(v16, &qword_27DEEBBF8, &unk_23815A9B0);
        return sub_23815467C();
      }

      else
      {
        (*(v18 + 32))(v20, v16, v17);
        v61 = sub_23815280C();
        (*(v18 + 8))(v20, v17);
        return v61;
      }
    }

    if (v22 == 1)
    {
      if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (a3 > -9.22337204e18)
      {
        if (a3 < 9.22337204e18)
        {
          v22 = *(v21 + 2);
          v23 = *(v21 + 3);
          v24 = *(v21 + 1);
          v25 = *v21;
          v26 = *(v11 + 32);
          v27 = sub_238153A2C();
          (*(*(v27 - 8) + 16))(&v13->i8[v26], v78, v27);
          v28 = *(v11 + 36);
          v29 = sub_2381537EC();
          (*(*(v29 - 8) + 16))(&v13->i8[v28], v79, v29);
          v13->i64[0] = v25;
          v13->i64[1] = v24;
          v30 = v24;
          v13[1] = vdupq_n_s64(0x40uLL);
          v13[2].i64[0] = a3;
          v31 = v22;
          sub_2380B3E48(v25, v24, v22, v23, 1u);

          v4 = sub_2380C3CE8(v13->i64);
          v16 = v32;
          v81 = v33;
          LOBYTE(v22) = v34;
          v35 = ~v34;
          sub_238070070(v25, v30, v31, v23, 1u);
          sub_2380B3EB0(v13, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
          if (v35)
          {
            if ((v22 & 1) == 0)
            {

              v65 = v81;

              sub_2380B3F60(v4, v16, v65, v22);
              return v65;
            }

            if (qword_27DEEA060 == -1)
            {
              goto LABEL_10;
            }

            goto LABEL_43;
          }

          return 0;
        }

LABEL_42:
        __break(1u);
LABEL_43:
        swift_once();
LABEL_10:
        v36 = sub_23815293C();
        __swift_project_value_buffer(v36, qword_27DEEBBB0);
        sub_2380B3F10(v4, v16, v81, 1);
        v37 = sub_23815291C();
        v38 = sub_2381550DC();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *v39 = 138412290;
          v41 = _swift_stdlib_bridgeErrorToNSError();
          *(v39 + 4) = v41;
          *v40 = v41;
          _os_log_impl(&dword_238060000, v37, v38, "Failed to load contactInfo: %@", v39, 0xCu);
          sub_238071284(v40, &unk_27DEECA10, &qword_2381588F0);
          MEMORY[0x2383EA8A0](v40, -1, -1);
          MEMORY[0x2383EA8A0](v39, -1, -1);

          v42 = v4;
          v43 = v16;
          v44 = v81;
        }

        else
        {

          v75 = v81;
          sub_2380B3F60(v4, v16, v81, v22);
          v42 = v4;
          v43 = v16;
          v44 = v75;
        }

        sub_2380B3F60(v42, v43, v44, v22);
        return 0;
      }

      __break(1u);
      goto LABEL_42;
    }

    v45 = *(v21 + 2);
    v46 = *(v21 + 3);
    v47 = *v21;
  }

  v49 = *(v21 + 1);

LABEL_20:
  result = sub_2380BECE0(64, 64, a3);
  if (v52 == -1)
  {
    sub_238070070(v47, v49, v45, v46, v22);
    return 0;
  }

  if (v52)
  {
    v53 = v52;
    v54 = result;
    sub_238070070(v47, v49, v45, v46, v22);
    if (qword_27DEEA060 != -1)
    {
      swift_once();
    }

    v55 = sub_23815293C();
    __swift_project_value_buffer(v55, qword_27DEEBBB0);
    sub_2380B3E18(v54, 1);
    v56 = sub_23815291C();
    v57 = sub_2381550DC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 4) = v60;
      *v59 = v60;
      _os_log_impl(&dword_238060000, v56, v57, "Failed to generate placeholder: %@", v58, 0xCu);
      sub_238071284(v59, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v59, -1, -1);
      MEMORY[0x2383EA8A0](v58, -1, -1);
    }

    else
    {

      sub_2380B3E24(v54, v53);
    }

    sub_2380B3E24(v54, v53);
    return 0;
  }

  return result;
}

uint64_t sub_2380B0AC4()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEBBB0);
  __swift_project_value_buffer(v0, qword_27DEEBBB0);
  sub_238154DEC();
  return sub_23815292C();
}

uint64_t sub_2380B0B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DDNodeDecoration(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBE0, &unk_23815A990);
  MEMORY[0x28223BE20](v39);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v43 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v19 = 0;
  v20 = 0;
  v35 = a1;
  v36 = a2;
  v21 = *(a2 + 16);
  v22 = *(a1 + 16);
  v40 = v5;
  v41 = v22;
  v44 = (v5 + 56);
  v37 = v21;
  v38 = (v5 + 48);
  v42 = &v35 - v17;
  v23 = v21 == 0;
  if (v21)
  {
    goto LABEL_3;
  }

LABEL_2:
  v24 = 1;
  v20 = v21;
  v25 = v44;
  while (1)
  {
    v27 = *v25;
    v28 = 1;
    result = (*v25)(v18, v24, 1, v4);
    v29 = v41;
    if (v19 != v41)
    {
      if (v19 >= v41)
      {
        goto LABEL_25;
      }

      result = sub_2380B3DB0(v35 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v19, v43, type metadata accessor for _DDNodeDecoration);
      v29 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_27;
      }

      v28 = 0;
      v18 = v42;
    }

    v30 = v43;
    v27(v43, v28, 1, v4);
    v31 = *(v39 + 48);
    sub_2380B258C(v18, v12);
    sub_2380B258C(v30, &v12[v31]);
    v32 = *v38;
    v33 = (*v38)(v12, 1, v4);
    result = v32(&v12[v31], 1, v4);
    if (v33 == 1)
    {
      if (result == 1)
      {
        return result;
      }

      sub_238071284(&v12[v31], &qword_27DEEBA48, &qword_23815BF00);
      return 0;
    }

    if (result == 1)
    {
      v34 = v12;
      goto LABEL_21;
    }

    sub_2380B25FC(v12, v10);
    sub_2380B25FC(&v12[v31], v8);
    if ((_s17DeviceDiscoveryUI17_DDNodeDecorationV4KindO2eeoiySbAE_AEtFZ_0(v10, v8) & 1) == 0 || (sub_2381546AC() & 1) == 0 || (sub_2381527AC() & 1) == 0)
    {
      sub_2380B3EB0(v8, type metadata accessor for _DDNodeDecoration);
      v34 = v10;
LABEL_21:
      sub_2380B3EB0(v34, type metadata accessor for _DDNodeDecoration);
      return 0;
    }

    sub_2380B3EB0(v8, type metadata accessor for _DDNodeDecoration);
    result = sub_2380B3EB0(v10, type metadata accessor for _DDNodeDecoration);
    v19 = v29;
    v18 = v42;
    v21 = v37;
    v23 = v20 >= v37;
    if (v20 == v37)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v23)
    {
      break;
    }

    result = sub_2380B3DB0(v36 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v20, v18, type metadata accessor for _DDNodeDecoration);
    v26 = __OFADD__(v20++, 1);
    v25 = v44;
    if (v26)
    {
      goto LABEL_26;
    }

    v24 = 0;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2380B0F98(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_23815544C();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_2380B1398(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}